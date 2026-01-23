; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349802 () Bool)

(assert start!349802)

(declare-fun b!3709773 () Bool)

(declare-fun e!2297613 () Bool)

(declare-fun tp!1128927 () Bool)

(declare-fun tp!1128929 () Bool)

(assert (=> b!3709773 (= e!2297613 (and tp!1128927 tp!1128929))))

(declare-fun b!3709774 () Bool)

(declare-fun res!1508825 () Bool)

(declare-fun e!2297614 () Bool)

(assert (=> b!3709774 (=> (not res!1508825) (not e!2297614))))

(declare-datatypes ((C!21864 0))(
  ( (C!21865 (val!12980 Int)) )
))
(declare-datatypes ((List!39720 0))(
  ( (Nil!39596) (Cons!39596 (h!45016 C!21864) (t!302403 List!39720)) )
))
(declare-fun s!14932 () List!39720)

(declare-fun c!13437 () C!21864)

(declare-fun head!8017 (List!39720) C!21864)

(assert (=> b!3709774 (= res!1508825 (= (head!8017 s!14932) c!13437))))

(declare-fun b!3709775 () Bool)

(declare-fun res!1508823 () Bool)

(assert (=> b!3709775 (=> (not res!1508823) (not e!2297614))))

(declare-datatypes ((Regex!10839 0))(
  ( (ElementMatch!10839 (c!640761 C!21864)) (Concat!17110 (regOne!22190 Regex!10839) (regTwo!22190 Regex!10839)) (EmptyExpr!10839) (Star!10839 (reg!11168 Regex!10839)) (EmptyLang!10839) (Union!10839 (regOne!22191 Regex!10839) (regTwo!22191 Regex!10839)) )
))
(declare-fun r!26030 () Regex!10839)

(declare-fun matchR!5296 (Regex!10839 List!39720) Bool)

(assert (=> b!3709775 (= res!1508823 (matchR!5296 r!26030 s!14932))))

(declare-fun b!3709777 () Bool)

(declare-fun tp!1128931 () Bool)

(declare-fun tp!1128928 () Bool)

(assert (=> b!3709777 (= e!2297613 (and tp!1128931 tp!1128928))))

(declare-fun b!3709778 () Bool)

(declare-fun res!1508824 () Bool)

(assert (=> b!3709778 (=> (not res!1508824) (not e!2297614))))

(declare-fun contains!7932 (List!39720 C!21864) Bool)

(declare-fun usedCharacters!1102 (Regex!10839) List!39720)

(assert (=> b!3709778 (= res!1508824 (not (contains!7932 (usedCharacters!1102 r!26030) c!13437)))))

(declare-fun b!3709779 () Bool)

(declare-fun res!1508826 () Bool)

(assert (=> b!3709779 (=> (not res!1508826) (not e!2297614))))

(assert (=> b!3709779 (= res!1508826 (contains!7932 s!14932 c!13437))))

(declare-fun b!3709780 () Bool)

(declare-fun tp_is_empty!18693 () Bool)

(assert (=> b!3709780 (= e!2297613 tp_is_empty!18693)))

(declare-fun b!3709781 () Bool)

(declare-fun e!2297612 () Bool)

(declare-fun tp!1128932 () Bool)

(assert (=> b!3709781 (= e!2297612 (and tp_is_empty!18693 tp!1128932))))

(declare-fun b!3709782 () Bool)

(declare-fun nullable!3762 (Regex!10839) Bool)

(declare-fun derivative!353 (Regex!10839 List!39720) Regex!10839)

(declare-fun derivativeStep!3304 (Regex!10839 C!21864) Regex!10839)

(declare-fun tail!5744 (List!39720) List!39720)

(assert (=> b!3709782 (= e!2297614 (not (nullable!3762 (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932)))))))

(assert (=> b!3709782 (matchR!5296 (derivative!353 r!26030 s!14932) Nil!39596)))

(declare-datatypes ((Unit!57488 0))(
  ( (Unit!57489) )
))
(declare-fun lt!1296752 () Unit!57488)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!242 (Regex!10839 List!39720) Unit!57488)

(assert (=> b!3709782 (= lt!1296752 (lemmaMatchRIsSameAsWholeDerivativeAndNil!242 r!26030 s!14932))))

(declare-fun b!3709776 () Bool)

(declare-fun tp!1128930 () Bool)

(assert (=> b!3709776 (= e!2297613 tp!1128930)))

(declare-fun res!1508822 () Bool)

(assert (=> start!349802 (=> (not res!1508822) (not e!2297614))))

(declare-fun validRegex!4946 (Regex!10839) Bool)

(assert (=> start!349802 (= res!1508822 (validRegex!4946 r!26030))))

(assert (=> start!349802 e!2297614))

(assert (=> start!349802 e!2297613))

(assert (=> start!349802 e!2297612))

(assert (=> start!349802 tp_is_empty!18693))

(assert (= (and start!349802 res!1508822) b!3709779))

(assert (= (and b!3709779 res!1508826) b!3709774))

(assert (= (and b!3709774 res!1508825) b!3709778))

(assert (= (and b!3709778 res!1508824) b!3709775))

(assert (= (and b!3709775 res!1508823) b!3709782))

(get-info :version)

(assert (= (and start!349802 ((_ is ElementMatch!10839) r!26030)) b!3709780))

(assert (= (and start!349802 ((_ is Concat!17110) r!26030)) b!3709777))

(assert (= (and start!349802 ((_ is Star!10839) r!26030)) b!3709776))

(assert (= (and start!349802 ((_ is Union!10839) r!26030)) b!3709773))

(assert (= (and start!349802 ((_ is Cons!39596) s!14932)) b!3709781))

(declare-fun m!4217891 () Bool)

(assert (=> b!3709779 m!4217891))

(declare-fun m!4217893 () Bool)

(assert (=> b!3709774 m!4217893))

(declare-fun m!4217895 () Bool)

(assert (=> start!349802 m!4217895))

(declare-fun m!4217897 () Bool)

(assert (=> b!3709778 m!4217897))

(assert (=> b!3709778 m!4217897))

(declare-fun m!4217899 () Bool)

(assert (=> b!3709778 m!4217899))

(declare-fun m!4217901 () Bool)

(assert (=> b!3709782 m!4217901))

(declare-fun m!4217903 () Bool)

(assert (=> b!3709782 m!4217903))

(declare-fun m!4217905 () Bool)

(assert (=> b!3709782 m!4217905))

(declare-fun m!4217907 () Bool)

(assert (=> b!3709782 m!4217907))

(declare-fun m!4217909 () Bool)

(assert (=> b!3709782 m!4217909))

(assert (=> b!3709782 m!4217905))

(declare-fun m!4217911 () Bool)

(assert (=> b!3709782 m!4217911))

(assert (=> b!3709782 m!4217901))

(assert (=> b!3709782 m!4217903))

(declare-fun m!4217913 () Bool)

(assert (=> b!3709782 m!4217913))

(assert (=> b!3709782 m!4217907))

(declare-fun m!4217915 () Bool)

(assert (=> b!3709775 m!4217915))

(check-sat (not b!3709776) (not b!3709775) (not b!3709782) (not b!3709773) (not b!3709781) (not b!3709777) (not b!3709778) (not start!349802) tp_is_empty!18693 (not b!3709779) (not b!3709774))
(check-sat)
(get-model)

(declare-fun d!1086903 () Bool)

(assert (=> d!1086903 (= (matchR!5296 r!26030 s!14932) (matchR!5296 (derivative!353 r!26030 s!14932) Nil!39596))))

(declare-fun lt!1296758 () Unit!57488)

(declare-fun choose!22172 (Regex!10839 List!39720) Unit!57488)

(assert (=> d!1086903 (= lt!1296758 (choose!22172 r!26030 s!14932))))

(assert (=> d!1086903 (validRegex!4946 r!26030)))

(assert (=> d!1086903 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!242 r!26030 s!14932) lt!1296758)))

(declare-fun bs!574723 () Bool)

(assert (= bs!574723 d!1086903))

(assert (=> bs!574723 m!4217895))

(declare-fun m!4217919 () Bool)

(assert (=> bs!574723 m!4217919))

(assert (=> bs!574723 m!4217907))

(assert (=> bs!574723 m!4217907))

(assert (=> bs!574723 m!4217909))

(assert (=> bs!574723 m!4217915))

(assert (=> b!3709782 d!1086903))

(declare-fun d!1086907 () Bool)

(declare-fun lt!1296764 () Regex!10839)

(assert (=> d!1086907 (validRegex!4946 lt!1296764)))

(declare-fun e!2297620 () Regex!10839)

(assert (=> d!1086907 (= lt!1296764 e!2297620)))

(declare-fun c!640767 () Bool)

(assert (=> d!1086907 (= c!640767 ((_ is Cons!39596) s!14932))))

(assert (=> d!1086907 (validRegex!4946 r!26030)))

(assert (=> d!1086907 (= (derivative!353 r!26030 s!14932) lt!1296764)))

(declare-fun b!3709793 () Bool)

(assert (=> b!3709793 (= e!2297620 (derivative!353 (derivativeStep!3304 r!26030 (h!45016 s!14932)) (t!302403 s!14932)))))

(declare-fun b!3709794 () Bool)

(assert (=> b!3709794 (= e!2297620 r!26030)))

(assert (= (and d!1086907 c!640767) b!3709793))

(assert (= (and d!1086907 (not c!640767)) b!3709794))

(declare-fun m!4217927 () Bool)

(assert (=> d!1086907 m!4217927))

(assert (=> d!1086907 m!4217895))

(declare-fun m!4217929 () Bool)

(assert (=> b!3709793 m!4217929))

(assert (=> b!3709793 m!4217929))

(declare-fun m!4217931 () Bool)

(assert (=> b!3709793 m!4217931))

(assert (=> b!3709782 d!1086907))

(declare-fun b!3709865 () Bool)

(declare-fun res!1508870 () Bool)

(declare-fun e!2297658 () Bool)

(assert (=> b!3709865 (=> res!1508870 e!2297658)))

(declare-fun e!2297662 () Bool)

(assert (=> b!3709865 (= res!1508870 e!2297662)))

(declare-fun res!1508874 () Bool)

(assert (=> b!3709865 (=> (not res!1508874) (not e!2297662))))

(declare-fun lt!1296770 () Bool)

(assert (=> b!3709865 (= res!1508874 lt!1296770)))

(declare-fun b!3709866 () Bool)

(declare-fun e!2297659 () Bool)

(declare-fun e!2297656 () Bool)

(assert (=> b!3709866 (= e!2297659 e!2297656)))

(declare-fun c!640783 () Bool)

(assert (=> b!3709866 (= c!640783 ((_ is EmptyLang!10839) (derivative!353 r!26030 s!14932)))))

(declare-fun b!3709867 () Bool)

(declare-fun e!2297660 () Bool)

(assert (=> b!3709867 (= e!2297658 e!2297660)))

(declare-fun res!1508873 () Bool)

(assert (=> b!3709867 (=> (not res!1508873) (not e!2297660))))

(assert (=> b!3709867 (= res!1508873 (not lt!1296770))))

(declare-fun d!1086911 () Bool)

(assert (=> d!1086911 e!2297659))

(declare-fun c!640785 () Bool)

(assert (=> d!1086911 (= c!640785 ((_ is EmptyExpr!10839) (derivative!353 r!26030 s!14932)))))

(declare-fun e!2297657 () Bool)

(assert (=> d!1086911 (= lt!1296770 e!2297657)))

(declare-fun c!640784 () Bool)

(declare-fun isEmpty!23494 (List!39720) Bool)

(assert (=> d!1086911 (= c!640784 (isEmpty!23494 Nil!39596))))

(assert (=> d!1086911 (validRegex!4946 (derivative!353 r!26030 s!14932))))

(assert (=> d!1086911 (= (matchR!5296 (derivative!353 r!26030 s!14932) Nil!39596) lt!1296770)))

(declare-fun b!3709868 () Bool)

(declare-fun call!268132 () Bool)

(assert (=> b!3709868 (= e!2297659 (= lt!1296770 call!268132))))

(declare-fun b!3709869 () Bool)

(assert (=> b!3709869 (= e!2297656 (not lt!1296770))))

(declare-fun b!3709870 () Bool)

(declare-fun res!1508868 () Bool)

(assert (=> b!3709870 (=> (not res!1508868) (not e!2297662))))

(assert (=> b!3709870 (= res!1508868 (isEmpty!23494 (tail!5744 Nil!39596)))))

(declare-fun b!3709871 () Bool)

(declare-fun e!2297661 () Bool)

(assert (=> b!3709871 (= e!2297661 (not (= (head!8017 Nil!39596) (c!640761 (derivative!353 r!26030 s!14932)))))))

(declare-fun b!3709872 () Bool)

(assert (=> b!3709872 (= e!2297660 e!2297661)))

(declare-fun res!1508869 () Bool)

(assert (=> b!3709872 (=> res!1508869 e!2297661)))

(assert (=> b!3709872 (= res!1508869 call!268132)))

(declare-fun b!3709873 () Bool)

(assert (=> b!3709873 (= e!2297662 (= (head!8017 Nil!39596) (c!640761 (derivative!353 r!26030 s!14932))))))

(declare-fun bm!268127 () Bool)

(assert (=> bm!268127 (= call!268132 (isEmpty!23494 Nil!39596))))

(declare-fun b!3709874 () Bool)

(assert (=> b!3709874 (= e!2297657 (nullable!3762 (derivative!353 r!26030 s!14932)))))

(declare-fun b!3709875 () Bool)

(declare-fun res!1508867 () Bool)

(assert (=> b!3709875 (=> res!1508867 e!2297661)))

(assert (=> b!3709875 (= res!1508867 (not (isEmpty!23494 (tail!5744 Nil!39596))))))

(declare-fun b!3709876 () Bool)

(declare-fun res!1508872 () Bool)

(assert (=> b!3709876 (=> (not res!1508872) (not e!2297662))))

(assert (=> b!3709876 (= res!1508872 (not call!268132))))

(declare-fun b!3709877 () Bool)

(assert (=> b!3709877 (= e!2297657 (matchR!5296 (derivativeStep!3304 (derivative!353 r!26030 s!14932) (head!8017 Nil!39596)) (tail!5744 Nil!39596)))))

(declare-fun b!3709878 () Bool)

(declare-fun res!1508871 () Bool)

(assert (=> b!3709878 (=> res!1508871 e!2297658)))

(assert (=> b!3709878 (= res!1508871 (not ((_ is ElementMatch!10839) (derivative!353 r!26030 s!14932))))))

(assert (=> b!3709878 (= e!2297656 e!2297658)))

(assert (= (and d!1086911 c!640784) b!3709874))

(assert (= (and d!1086911 (not c!640784)) b!3709877))

(assert (= (and d!1086911 c!640785) b!3709868))

(assert (= (and d!1086911 (not c!640785)) b!3709866))

(assert (= (and b!3709866 c!640783) b!3709869))

(assert (= (and b!3709866 (not c!640783)) b!3709878))

(assert (= (and b!3709878 (not res!1508871)) b!3709865))

(assert (= (and b!3709865 res!1508874) b!3709876))

(assert (= (and b!3709876 res!1508872) b!3709870))

(assert (= (and b!3709870 res!1508868) b!3709873))

(assert (= (and b!3709865 (not res!1508870)) b!3709867))

(assert (= (and b!3709867 res!1508873) b!3709872))

(assert (= (and b!3709872 (not res!1508869)) b!3709875))

(assert (= (and b!3709875 (not res!1508867)) b!3709871))

(assert (= (or b!3709868 b!3709872 b!3709876) bm!268127))

(declare-fun m!4217949 () Bool)

(assert (=> b!3709871 m!4217949))

(assert (=> b!3709873 m!4217949))

(declare-fun m!4217951 () Bool)

(assert (=> d!1086911 m!4217951))

(assert (=> d!1086911 m!4217907))

(declare-fun m!4217953 () Bool)

(assert (=> d!1086911 m!4217953))

(assert (=> b!3709874 m!4217907))

(declare-fun m!4217955 () Bool)

(assert (=> b!3709874 m!4217955))

(declare-fun m!4217957 () Bool)

(assert (=> b!3709870 m!4217957))

(assert (=> b!3709870 m!4217957))

(declare-fun m!4217959 () Bool)

(assert (=> b!3709870 m!4217959))

(assert (=> b!3709875 m!4217957))

(assert (=> b!3709875 m!4217957))

(assert (=> b!3709875 m!4217959))

(assert (=> b!3709877 m!4217949))

(assert (=> b!3709877 m!4217907))

(assert (=> b!3709877 m!4217949))

(declare-fun m!4217961 () Bool)

(assert (=> b!3709877 m!4217961))

(assert (=> b!3709877 m!4217957))

(assert (=> b!3709877 m!4217961))

(assert (=> b!3709877 m!4217957))

(declare-fun m!4217963 () Bool)

(assert (=> b!3709877 m!4217963))

(assert (=> bm!268127 m!4217951))

(assert (=> b!3709782 d!1086911))

(declare-fun d!1086917 () Bool)

(assert (=> d!1086917 (= (tail!5744 s!14932) (t!302403 s!14932))))

(assert (=> b!3709782 d!1086917))

(declare-fun call!268154 () Regex!10839)

(declare-fun call!268155 () Regex!10839)

(declare-fun b!3709931 () Bool)

(declare-fun e!2297693 () Regex!10839)

(assert (=> b!3709931 (= e!2297693 (Union!10839 (Concat!17110 call!268154 (regTwo!22190 r!26030)) call!268155))))

(declare-fun bm!268148 () Bool)

(declare-fun call!268156 () Regex!10839)

(declare-fun call!268153 () Regex!10839)

(assert (=> bm!268148 (= call!268156 call!268153)))

(declare-fun c!640815 () Bool)

(declare-fun bm!268149 () Bool)

(declare-fun c!640816 () Bool)

(assert (=> bm!268149 (= call!268153 (derivativeStep!3304 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))) c!13437))))

(declare-fun bm!268150 () Bool)

(assert (=> bm!268150 (= call!268154 call!268156)))

(declare-fun b!3709932 () Bool)

(assert (=> b!3709932 (= e!2297693 (Union!10839 (Concat!17110 call!268154 (regTwo!22190 r!26030)) EmptyLang!10839))))

(declare-fun b!3709933 () Bool)

(declare-fun e!2297691 () Regex!10839)

(assert (=> b!3709933 (= e!2297691 (ite (= c!13437 (c!640761 r!26030)) EmptyExpr!10839 EmptyLang!10839))))

(declare-fun b!3709934 () Bool)

(declare-fun c!640813 () Bool)

(assert (=> b!3709934 (= c!640813 (nullable!3762 (regOne!22190 r!26030)))))

(declare-fun e!2297689 () Regex!10839)

(assert (=> b!3709934 (= e!2297689 e!2297693)))

(declare-fun b!3709935 () Bool)

(declare-fun e!2297690 () Regex!10839)

(assert (=> b!3709935 (= e!2297690 e!2297689)))

(assert (=> b!3709935 (= c!640816 ((_ is Star!10839) r!26030))))

(declare-fun d!1086919 () Bool)

(declare-fun lt!1296777 () Regex!10839)

(assert (=> d!1086919 (validRegex!4946 lt!1296777)))

(declare-fun e!2297692 () Regex!10839)

(assert (=> d!1086919 (= lt!1296777 e!2297692)))

(declare-fun c!640812 () Bool)

(assert (=> d!1086919 (= c!640812 (or ((_ is EmptyExpr!10839) r!26030) ((_ is EmptyLang!10839) r!26030)))))

(assert (=> d!1086919 (validRegex!4946 r!26030)))

(assert (=> d!1086919 (= (derivativeStep!3304 r!26030 c!13437) lt!1296777)))

(declare-fun bm!268151 () Bool)

(assert (=> bm!268151 (= call!268155 (derivativeStep!3304 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)) c!13437))))

(declare-fun b!3709936 () Bool)

(assert (=> b!3709936 (= c!640815 ((_ is Union!10839) r!26030))))

(assert (=> b!3709936 (= e!2297691 e!2297690)))

(declare-fun b!3709937 () Bool)

(assert (=> b!3709937 (= e!2297689 (Concat!17110 call!268156 r!26030))))

(declare-fun b!3709938 () Bool)

(assert (=> b!3709938 (= e!2297692 EmptyLang!10839)))

(declare-fun b!3709939 () Bool)

(assert (=> b!3709939 (= e!2297692 e!2297691)))

(declare-fun c!640814 () Bool)

(assert (=> b!3709939 (= c!640814 ((_ is ElementMatch!10839) r!26030))))

(declare-fun b!3709940 () Bool)

(assert (=> b!3709940 (= e!2297690 (Union!10839 call!268155 call!268153))))

(assert (= (and d!1086919 c!640812) b!3709938))

(assert (= (and d!1086919 (not c!640812)) b!3709939))

(assert (= (and b!3709939 c!640814) b!3709933))

(assert (= (and b!3709939 (not c!640814)) b!3709936))

(assert (= (and b!3709936 c!640815) b!3709940))

(assert (= (and b!3709936 (not c!640815)) b!3709935))

(assert (= (and b!3709935 c!640816) b!3709937))

(assert (= (and b!3709935 (not c!640816)) b!3709934))

(assert (= (and b!3709934 c!640813) b!3709931))

(assert (= (and b!3709934 (not c!640813)) b!3709932))

(assert (= (or b!3709931 b!3709932) bm!268150))

(assert (= (or b!3709937 bm!268150) bm!268148))

(assert (= (or b!3709940 bm!268148) bm!268149))

(assert (= (or b!3709940 b!3709931) bm!268151))

(declare-fun m!4217983 () Bool)

(assert (=> bm!268149 m!4217983))

(declare-fun m!4217985 () Bool)

(assert (=> b!3709934 m!4217985))

(declare-fun m!4217987 () Bool)

(assert (=> d!1086919 m!4217987))

(assert (=> d!1086919 m!4217895))

(declare-fun m!4217989 () Bool)

(assert (=> bm!268151 m!4217989))

(assert (=> b!3709782 d!1086919))

(declare-fun d!1086927 () Bool)

(declare-fun lt!1296779 () Regex!10839)

(assert (=> d!1086927 (validRegex!4946 lt!1296779)))

(declare-fun e!2297701 () Regex!10839)

(assert (=> d!1086927 (= lt!1296779 e!2297701)))

(declare-fun c!640820 () Bool)

(assert (=> d!1086927 (= c!640820 ((_ is Cons!39596) (tail!5744 s!14932)))))

(assert (=> d!1086927 (validRegex!4946 (derivativeStep!3304 r!26030 c!13437))))

(assert (=> d!1086927 (= (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932)) lt!1296779)))

(declare-fun b!3709955 () Bool)

(assert (=> b!3709955 (= e!2297701 (derivative!353 (derivativeStep!3304 (derivativeStep!3304 r!26030 c!13437) (h!45016 (tail!5744 s!14932))) (t!302403 (tail!5744 s!14932))))))

(declare-fun b!3709956 () Bool)

(assert (=> b!3709956 (= e!2297701 (derivativeStep!3304 r!26030 c!13437))))

(assert (= (and d!1086927 c!640820) b!3709955))

(assert (= (and d!1086927 (not c!640820)) b!3709956))

(declare-fun m!4217991 () Bool)

(assert (=> d!1086927 m!4217991))

(assert (=> d!1086927 m!4217901))

(declare-fun m!4217993 () Bool)

(assert (=> d!1086927 m!4217993))

(assert (=> b!3709955 m!4217901))

(declare-fun m!4217995 () Bool)

(assert (=> b!3709955 m!4217995))

(assert (=> b!3709955 m!4217995))

(declare-fun m!4217997 () Bool)

(assert (=> b!3709955 m!4217997))

(assert (=> b!3709782 d!1086927))

(declare-fun d!1086929 () Bool)

(declare-fun nullableFct!1054 (Regex!10839) Bool)

(assert (=> d!1086929 (= (nullable!3762 (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))) (nullableFct!1054 (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))))))

(declare-fun bs!574725 () Bool)

(assert (= bs!574725 d!1086929))

(assert (=> bs!574725 m!4217905))

(declare-fun m!4218009 () Bool)

(assert (=> bs!574725 m!4218009))

(assert (=> b!3709782 d!1086929))

(declare-fun d!1086933 () Bool)

(declare-fun lt!1296785 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5724 (List!39720) (InoxSet C!21864))

(assert (=> d!1086933 (= lt!1296785 (select (content!5724 (usedCharacters!1102 r!26030)) c!13437))))

(declare-fun e!2297712 () Bool)

(assert (=> d!1086933 (= lt!1296785 e!2297712)))

(declare-fun res!1508893 () Bool)

(assert (=> d!1086933 (=> (not res!1508893) (not e!2297712))))

(assert (=> d!1086933 (= res!1508893 ((_ is Cons!39596) (usedCharacters!1102 r!26030)))))

(assert (=> d!1086933 (= (contains!7932 (usedCharacters!1102 r!26030) c!13437) lt!1296785)))

(declare-fun b!3709967 () Bool)

(declare-fun e!2297713 () Bool)

(assert (=> b!3709967 (= e!2297712 e!2297713)))

(declare-fun res!1508894 () Bool)

(assert (=> b!3709967 (=> res!1508894 e!2297713)))

(assert (=> b!3709967 (= res!1508894 (= (h!45016 (usedCharacters!1102 r!26030)) c!13437))))

(declare-fun b!3709968 () Bool)

(assert (=> b!3709968 (= e!2297713 (contains!7932 (t!302403 (usedCharacters!1102 r!26030)) c!13437))))

(assert (= (and d!1086933 res!1508893) b!3709967))

(assert (= (and b!3709967 (not res!1508894)) b!3709968))

(assert (=> d!1086933 m!4217897))

(declare-fun m!4218017 () Bool)

(assert (=> d!1086933 m!4218017))

(declare-fun m!4218019 () Bool)

(assert (=> d!1086933 m!4218019))

(declare-fun m!4218021 () Bool)

(assert (=> b!3709968 m!4218021))

(assert (=> b!3709778 d!1086933))

(declare-fun b!3710014 () Bool)

(declare-fun e!2297745 () List!39720)

(declare-fun e!2297748 () List!39720)

(assert (=> b!3710014 (= e!2297745 e!2297748)))

(declare-fun c!640836 () Bool)

(assert (=> b!3710014 (= c!640836 ((_ is ElementMatch!10839) r!26030))))

(declare-fun bm!268170 () Bool)

(declare-fun call!268178 () List!39720)

(declare-fun call!268175 () List!39720)

(assert (=> bm!268170 (= call!268178 call!268175)))

(declare-fun c!640835 () Bool)

(declare-fun c!640837 () Bool)

(declare-fun bm!268171 () Bool)

(assert (=> bm!268171 (= call!268175 (usedCharacters!1102 (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))))))

(declare-fun bm!268172 () Bool)

(declare-fun call!268177 () List!39720)

(declare-fun call!268176 () List!39720)

(declare-fun ++!9787 (List!39720 List!39720) List!39720)

(assert (=> bm!268172 (= call!268177 (++!9787 call!268176 call!268178))))

(declare-fun b!3710015 () Bool)

(declare-fun e!2297747 () List!39720)

(declare-fun e!2297746 () List!39720)

(assert (=> b!3710015 (= e!2297747 e!2297746)))

(assert (=> b!3710015 (= c!640837 ((_ is Union!10839) r!26030))))

(declare-fun b!3710016 () Bool)

(assert (=> b!3710016 (= e!2297748 (Cons!39596 (c!640761 r!26030) Nil!39596))))

(declare-fun b!3710017 () Bool)

(assert (=> b!3710017 (= c!640835 ((_ is Star!10839) r!26030))))

(assert (=> b!3710017 (= e!2297748 e!2297747)))

(declare-fun d!1086937 () Bool)

(declare-fun c!640838 () Bool)

(assert (=> d!1086937 (= c!640838 (or ((_ is EmptyExpr!10839) r!26030) ((_ is EmptyLang!10839) r!26030)))))

(assert (=> d!1086937 (= (usedCharacters!1102 r!26030) e!2297745)))

(declare-fun b!3710018 () Bool)

(assert (=> b!3710018 (= e!2297745 Nil!39596)))

(declare-fun b!3710019 () Bool)

(assert (=> b!3710019 (= e!2297746 call!268177)))

(declare-fun b!3710020 () Bool)

(assert (=> b!3710020 (= e!2297746 call!268177)))

(declare-fun b!3710021 () Bool)

(assert (=> b!3710021 (= e!2297747 call!268175)))

(declare-fun bm!268173 () Bool)

(assert (=> bm!268173 (= call!268176 (usedCharacters!1102 (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))))))

(assert (= (and d!1086937 c!640838) b!3710018))

(assert (= (and d!1086937 (not c!640838)) b!3710014))

(assert (= (and b!3710014 c!640836) b!3710016))

(assert (= (and b!3710014 (not c!640836)) b!3710017))

(assert (= (and b!3710017 c!640835) b!3710021))

(assert (= (and b!3710017 (not c!640835)) b!3710015))

(assert (= (and b!3710015 c!640837) b!3710019))

(assert (= (and b!3710015 (not c!640837)) b!3710020))

(assert (= (or b!3710019 b!3710020) bm!268170))

(assert (= (or b!3710019 b!3710020) bm!268173))

(assert (= (or b!3710019 b!3710020) bm!268172))

(assert (= (or b!3710021 bm!268170) bm!268171))

(declare-fun m!4218035 () Bool)

(assert (=> bm!268171 m!4218035))

(declare-fun m!4218037 () Bool)

(assert (=> bm!268172 m!4218037))

(declare-fun m!4218039 () Bool)

(assert (=> bm!268173 m!4218039))

(assert (=> b!3709778 d!1086937))

(declare-fun d!1086943 () Bool)

(assert (=> d!1086943 (= (head!8017 s!14932) (h!45016 s!14932))))

(assert (=> b!3709774 d!1086943))

(declare-fun d!1086945 () Bool)

(declare-fun lt!1296787 () Bool)

(assert (=> d!1086945 (= lt!1296787 (select (content!5724 s!14932) c!13437))))

(declare-fun e!2297757 () Bool)

(assert (=> d!1086945 (= lt!1296787 e!2297757)))

(declare-fun res!1508912 () Bool)

(assert (=> d!1086945 (=> (not res!1508912) (not e!2297757))))

(assert (=> d!1086945 (= res!1508912 ((_ is Cons!39596) s!14932))))

(assert (=> d!1086945 (= (contains!7932 s!14932 c!13437) lt!1296787)))

(declare-fun b!3710038 () Bool)

(declare-fun e!2297758 () Bool)

(assert (=> b!3710038 (= e!2297757 e!2297758)))

(declare-fun res!1508913 () Bool)

(assert (=> b!3710038 (=> res!1508913 e!2297758)))

(assert (=> b!3710038 (= res!1508913 (= (h!45016 s!14932) c!13437))))

(declare-fun b!3710039 () Bool)

(assert (=> b!3710039 (= e!2297758 (contains!7932 (t!302403 s!14932) c!13437))))

(assert (= (and d!1086945 res!1508912) b!3710038))

(assert (= (and b!3710038 (not res!1508913)) b!3710039))

(declare-fun m!4218041 () Bool)

(assert (=> d!1086945 m!4218041))

(declare-fun m!4218043 () Bool)

(assert (=> d!1086945 m!4218043))

(declare-fun m!4218045 () Bool)

(assert (=> b!3710039 m!4218045))

(assert (=> b!3709779 d!1086945))

(declare-fun d!1086947 () Bool)

(declare-fun res!1508928 () Bool)

(declare-fun e!2297791 () Bool)

(assert (=> d!1086947 (=> res!1508928 e!2297791)))

(assert (=> d!1086947 (= res!1508928 ((_ is ElementMatch!10839) r!26030))))

(assert (=> d!1086947 (= (validRegex!4946 r!26030) e!2297791)))

(declare-fun b!3710101 () Bool)

(declare-fun e!2297787 () Bool)

(assert (=> b!3710101 (= e!2297791 e!2297787)))

(declare-fun c!640855 () Bool)

(assert (=> b!3710101 (= c!640855 ((_ is Star!10839) r!26030))))

(declare-fun b!3710102 () Bool)

(declare-fun res!1508927 () Bool)

(declare-fun e!2297789 () Bool)

(assert (=> b!3710102 (=> (not res!1508927) (not e!2297789))))

(declare-fun call!268199 () Bool)

(assert (=> b!3710102 (= res!1508927 call!268199)))

(declare-fun e!2297790 () Bool)

(assert (=> b!3710102 (= e!2297790 e!2297789)))

(declare-fun call!268197 () Bool)

(declare-fun c!640856 () Bool)

(declare-fun bm!268192 () Bool)

(assert (=> bm!268192 (= call!268197 (validRegex!4946 (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))))))

(declare-fun b!3710103 () Bool)

(declare-fun e!2297788 () Bool)

(assert (=> b!3710103 (= e!2297788 call!268199)))

(declare-fun b!3710104 () Bool)

(assert (=> b!3710104 (= e!2297787 e!2297790)))

(assert (=> b!3710104 (= c!640856 ((_ is Union!10839) r!26030))))

(declare-fun b!3710105 () Bool)

(declare-fun res!1508926 () Bool)

(declare-fun e!2297793 () Bool)

(assert (=> b!3710105 (=> res!1508926 e!2297793)))

(assert (=> b!3710105 (= res!1508926 (not ((_ is Concat!17110) r!26030)))))

(assert (=> b!3710105 (= e!2297790 e!2297793)))

(declare-fun bm!268193 () Bool)

(assert (=> bm!268193 (= call!268199 (validRegex!4946 (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))

(declare-fun b!3710106 () Bool)

(assert (=> b!3710106 (= e!2297793 e!2297788)))

(declare-fun res!1508925 () Bool)

(assert (=> b!3710106 (=> (not res!1508925) (not e!2297788))))

(declare-fun call!268198 () Bool)

(assert (=> b!3710106 (= res!1508925 call!268198)))

(declare-fun b!3710107 () Bool)

(declare-fun e!2297792 () Bool)

(assert (=> b!3710107 (= e!2297787 e!2297792)))

(declare-fun res!1508924 () Bool)

(assert (=> b!3710107 (= res!1508924 (not (nullable!3762 (reg!11168 r!26030))))))

(assert (=> b!3710107 (=> (not res!1508924) (not e!2297792))))

(declare-fun bm!268194 () Bool)

(assert (=> bm!268194 (= call!268198 call!268197)))

(declare-fun b!3710108 () Bool)

(assert (=> b!3710108 (= e!2297792 call!268197)))

(declare-fun b!3710109 () Bool)

(assert (=> b!3710109 (= e!2297789 call!268198)))

(assert (= (and d!1086947 (not res!1508928)) b!3710101))

(assert (= (and b!3710101 c!640855) b!3710107))

(assert (= (and b!3710101 (not c!640855)) b!3710104))

(assert (= (and b!3710107 res!1508924) b!3710108))

(assert (= (and b!3710104 c!640856) b!3710102))

(assert (= (and b!3710104 (not c!640856)) b!3710105))

(assert (= (and b!3710102 res!1508927) b!3710109))

(assert (= (and b!3710105 (not res!1508926)) b!3710106))

(assert (= (and b!3710106 res!1508925) b!3710103))

(assert (= (or b!3710109 b!3710106) bm!268194))

(assert (= (or b!3710102 b!3710103) bm!268193))

(assert (= (or b!3710108 bm!268194) bm!268192))

(declare-fun m!4218053 () Bool)

(assert (=> bm!268192 m!4218053))

(declare-fun m!4218055 () Bool)

(assert (=> bm!268193 m!4218055))

(declare-fun m!4218057 () Bool)

(assert (=> b!3710107 m!4218057))

(assert (=> start!349802 d!1086947))

(declare-fun b!3710110 () Bool)

(declare-fun res!1508932 () Bool)

(declare-fun e!2297796 () Bool)

(assert (=> b!3710110 (=> res!1508932 e!2297796)))

(declare-fun e!2297800 () Bool)

(assert (=> b!3710110 (= res!1508932 e!2297800)))

(declare-fun res!1508936 () Bool)

(assert (=> b!3710110 (=> (not res!1508936) (not e!2297800))))

(declare-fun lt!1296788 () Bool)

(assert (=> b!3710110 (= res!1508936 lt!1296788)))

(declare-fun b!3710111 () Bool)

(declare-fun e!2297797 () Bool)

(declare-fun e!2297794 () Bool)

(assert (=> b!3710111 (= e!2297797 e!2297794)))

(declare-fun c!640857 () Bool)

(assert (=> b!3710111 (= c!640857 ((_ is EmptyLang!10839) r!26030))))

(declare-fun b!3710112 () Bool)

(declare-fun e!2297798 () Bool)

(assert (=> b!3710112 (= e!2297796 e!2297798)))

(declare-fun res!1508935 () Bool)

(assert (=> b!3710112 (=> (not res!1508935) (not e!2297798))))

(assert (=> b!3710112 (= res!1508935 (not lt!1296788))))

(declare-fun d!1086951 () Bool)

(assert (=> d!1086951 e!2297797))

(declare-fun c!640859 () Bool)

(assert (=> d!1086951 (= c!640859 ((_ is EmptyExpr!10839) r!26030))))

(declare-fun e!2297795 () Bool)

(assert (=> d!1086951 (= lt!1296788 e!2297795)))

(declare-fun c!640858 () Bool)

(assert (=> d!1086951 (= c!640858 (isEmpty!23494 s!14932))))

(assert (=> d!1086951 (validRegex!4946 r!26030)))

(assert (=> d!1086951 (= (matchR!5296 r!26030 s!14932) lt!1296788)))

(declare-fun b!3710113 () Bool)

(declare-fun call!268200 () Bool)

(assert (=> b!3710113 (= e!2297797 (= lt!1296788 call!268200))))

(declare-fun b!3710114 () Bool)

(assert (=> b!3710114 (= e!2297794 (not lt!1296788))))

(declare-fun b!3710115 () Bool)

(declare-fun res!1508930 () Bool)

(assert (=> b!3710115 (=> (not res!1508930) (not e!2297800))))

(assert (=> b!3710115 (= res!1508930 (isEmpty!23494 (tail!5744 s!14932)))))

(declare-fun b!3710116 () Bool)

(declare-fun e!2297799 () Bool)

(assert (=> b!3710116 (= e!2297799 (not (= (head!8017 s!14932) (c!640761 r!26030))))))

(declare-fun b!3710117 () Bool)

(assert (=> b!3710117 (= e!2297798 e!2297799)))

(declare-fun res!1508931 () Bool)

(assert (=> b!3710117 (=> res!1508931 e!2297799)))

(assert (=> b!3710117 (= res!1508931 call!268200)))

(declare-fun b!3710118 () Bool)

(assert (=> b!3710118 (= e!2297800 (= (head!8017 s!14932) (c!640761 r!26030)))))

(declare-fun bm!268195 () Bool)

(assert (=> bm!268195 (= call!268200 (isEmpty!23494 s!14932))))

(declare-fun b!3710119 () Bool)

(assert (=> b!3710119 (= e!2297795 (nullable!3762 r!26030))))

(declare-fun b!3710120 () Bool)

(declare-fun res!1508929 () Bool)

(assert (=> b!3710120 (=> res!1508929 e!2297799)))

(assert (=> b!3710120 (= res!1508929 (not (isEmpty!23494 (tail!5744 s!14932))))))

(declare-fun b!3710121 () Bool)

(declare-fun res!1508934 () Bool)

(assert (=> b!3710121 (=> (not res!1508934) (not e!2297800))))

(assert (=> b!3710121 (= res!1508934 (not call!268200))))

(declare-fun b!3710122 () Bool)

(assert (=> b!3710122 (= e!2297795 (matchR!5296 (derivativeStep!3304 r!26030 (head!8017 s!14932)) (tail!5744 s!14932)))))

(declare-fun b!3710123 () Bool)

(declare-fun res!1508933 () Bool)

(assert (=> b!3710123 (=> res!1508933 e!2297796)))

(assert (=> b!3710123 (= res!1508933 (not ((_ is ElementMatch!10839) r!26030)))))

(assert (=> b!3710123 (= e!2297794 e!2297796)))

(assert (= (and d!1086951 c!640858) b!3710119))

(assert (= (and d!1086951 (not c!640858)) b!3710122))

(assert (= (and d!1086951 c!640859) b!3710113))

(assert (= (and d!1086951 (not c!640859)) b!3710111))

(assert (= (and b!3710111 c!640857) b!3710114))

(assert (= (and b!3710111 (not c!640857)) b!3710123))

(assert (= (and b!3710123 (not res!1508933)) b!3710110))

(assert (= (and b!3710110 res!1508936) b!3710121))

(assert (= (and b!3710121 res!1508934) b!3710115))

(assert (= (and b!3710115 res!1508930) b!3710118))

(assert (= (and b!3710110 (not res!1508932)) b!3710112))

(assert (= (and b!3710112 res!1508935) b!3710117))

(assert (= (and b!3710117 (not res!1508931)) b!3710120))

(assert (= (and b!3710120 (not res!1508929)) b!3710116))

(assert (= (or b!3710113 b!3710117 b!3710121) bm!268195))

(assert (=> b!3710116 m!4217893))

(assert (=> b!3710118 m!4217893))

(declare-fun m!4218059 () Bool)

(assert (=> d!1086951 m!4218059))

(assert (=> d!1086951 m!4217895))

(declare-fun m!4218061 () Bool)

(assert (=> b!3710119 m!4218061))

(assert (=> b!3710115 m!4217903))

(assert (=> b!3710115 m!4217903))

(declare-fun m!4218063 () Bool)

(assert (=> b!3710115 m!4218063))

(assert (=> b!3710120 m!4217903))

(assert (=> b!3710120 m!4217903))

(assert (=> b!3710120 m!4218063))

(assert (=> b!3710122 m!4217893))

(assert (=> b!3710122 m!4217893))

(declare-fun m!4218065 () Bool)

(assert (=> b!3710122 m!4218065))

(assert (=> b!3710122 m!4217903))

(assert (=> b!3710122 m!4218065))

(assert (=> b!3710122 m!4217903))

(declare-fun m!4218067 () Bool)

(assert (=> b!3710122 m!4218067))

(assert (=> bm!268195 m!4218059))

(assert (=> b!3709775 d!1086951))

(declare-fun b!3710136 () Bool)

(declare-fun e!2297803 () Bool)

(declare-fun tp!1128982 () Bool)

(assert (=> b!3710136 (= e!2297803 tp!1128982)))

(declare-fun b!3710135 () Bool)

(declare-fun tp!1128983 () Bool)

(declare-fun tp!1128981 () Bool)

(assert (=> b!3710135 (= e!2297803 (and tp!1128983 tp!1128981))))

(declare-fun b!3710137 () Bool)

(declare-fun tp!1128984 () Bool)

(declare-fun tp!1128985 () Bool)

(assert (=> b!3710137 (= e!2297803 (and tp!1128984 tp!1128985))))

(assert (=> b!3709776 (= tp!1128930 e!2297803)))

(declare-fun b!3710134 () Bool)

(assert (=> b!3710134 (= e!2297803 tp_is_empty!18693)))

(assert (= (and b!3709776 ((_ is ElementMatch!10839) (reg!11168 r!26030))) b!3710134))

(assert (= (and b!3709776 ((_ is Concat!17110) (reg!11168 r!26030))) b!3710135))

(assert (= (and b!3709776 ((_ is Star!10839) (reg!11168 r!26030))) b!3710136))

(assert (= (and b!3709776 ((_ is Union!10839) (reg!11168 r!26030))) b!3710137))

(declare-fun b!3710142 () Bool)

(declare-fun e!2297806 () Bool)

(declare-fun tp!1128988 () Bool)

(assert (=> b!3710142 (= e!2297806 (and tp_is_empty!18693 tp!1128988))))

(assert (=> b!3709781 (= tp!1128932 e!2297806)))

(assert (= (and b!3709781 ((_ is Cons!39596) (t!302403 s!14932))) b!3710142))

(declare-fun b!3710145 () Bool)

(declare-fun e!2297807 () Bool)

(declare-fun tp!1128990 () Bool)

(assert (=> b!3710145 (= e!2297807 tp!1128990)))

(declare-fun b!3710144 () Bool)

(declare-fun tp!1128991 () Bool)

(declare-fun tp!1128989 () Bool)

(assert (=> b!3710144 (= e!2297807 (and tp!1128991 tp!1128989))))

(declare-fun b!3710146 () Bool)

(declare-fun tp!1128992 () Bool)

(declare-fun tp!1128993 () Bool)

(assert (=> b!3710146 (= e!2297807 (and tp!1128992 tp!1128993))))

(assert (=> b!3709777 (= tp!1128931 e!2297807)))

(declare-fun b!3710143 () Bool)

(assert (=> b!3710143 (= e!2297807 tp_is_empty!18693)))

(assert (= (and b!3709777 ((_ is ElementMatch!10839) (regOne!22190 r!26030))) b!3710143))

(assert (= (and b!3709777 ((_ is Concat!17110) (regOne!22190 r!26030))) b!3710144))

(assert (= (and b!3709777 ((_ is Star!10839) (regOne!22190 r!26030))) b!3710145))

(assert (= (and b!3709777 ((_ is Union!10839) (regOne!22190 r!26030))) b!3710146))

(declare-fun b!3710149 () Bool)

(declare-fun e!2297808 () Bool)

(declare-fun tp!1128995 () Bool)

(assert (=> b!3710149 (= e!2297808 tp!1128995)))

(declare-fun b!3710148 () Bool)

(declare-fun tp!1128996 () Bool)

(declare-fun tp!1128994 () Bool)

(assert (=> b!3710148 (= e!2297808 (and tp!1128996 tp!1128994))))

(declare-fun b!3710150 () Bool)

(declare-fun tp!1128997 () Bool)

(declare-fun tp!1128998 () Bool)

(assert (=> b!3710150 (= e!2297808 (and tp!1128997 tp!1128998))))

(assert (=> b!3709777 (= tp!1128928 e!2297808)))

(declare-fun b!3710147 () Bool)

(assert (=> b!3710147 (= e!2297808 tp_is_empty!18693)))

(assert (= (and b!3709777 ((_ is ElementMatch!10839) (regTwo!22190 r!26030))) b!3710147))

(assert (= (and b!3709777 ((_ is Concat!17110) (regTwo!22190 r!26030))) b!3710148))

(assert (= (and b!3709777 ((_ is Star!10839) (regTwo!22190 r!26030))) b!3710149))

(assert (= (and b!3709777 ((_ is Union!10839) (regTwo!22190 r!26030))) b!3710150))

(declare-fun b!3710153 () Bool)

(declare-fun e!2297809 () Bool)

(declare-fun tp!1129000 () Bool)

(assert (=> b!3710153 (= e!2297809 tp!1129000)))

(declare-fun b!3710152 () Bool)

(declare-fun tp!1129001 () Bool)

(declare-fun tp!1128999 () Bool)

(assert (=> b!3710152 (= e!2297809 (and tp!1129001 tp!1128999))))

(declare-fun b!3710154 () Bool)

(declare-fun tp!1129002 () Bool)

(declare-fun tp!1129003 () Bool)

(assert (=> b!3710154 (= e!2297809 (and tp!1129002 tp!1129003))))

(assert (=> b!3709773 (= tp!1128927 e!2297809)))

(declare-fun b!3710151 () Bool)

(assert (=> b!3710151 (= e!2297809 tp_is_empty!18693)))

(assert (= (and b!3709773 ((_ is ElementMatch!10839) (regOne!22191 r!26030))) b!3710151))

(assert (= (and b!3709773 ((_ is Concat!17110) (regOne!22191 r!26030))) b!3710152))

(assert (= (and b!3709773 ((_ is Star!10839) (regOne!22191 r!26030))) b!3710153))

(assert (= (and b!3709773 ((_ is Union!10839) (regOne!22191 r!26030))) b!3710154))

(declare-fun b!3710157 () Bool)

(declare-fun e!2297810 () Bool)

(declare-fun tp!1129005 () Bool)

(assert (=> b!3710157 (= e!2297810 tp!1129005)))

(declare-fun b!3710156 () Bool)

(declare-fun tp!1129006 () Bool)

(declare-fun tp!1129004 () Bool)

(assert (=> b!3710156 (= e!2297810 (and tp!1129006 tp!1129004))))

(declare-fun b!3710158 () Bool)

(declare-fun tp!1129007 () Bool)

(declare-fun tp!1129008 () Bool)

(assert (=> b!3710158 (= e!2297810 (and tp!1129007 tp!1129008))))

(assert (=> b!3709773 (= tp!1128929 e!2297810)))

(declare-fun b!3710155 () Bool)

(assert (=> b!3710155 (= e!2297810 tp_is_empty!18693)))

(assert (= (and b!3709773 ((_ is ElementMatch!10839) (regTwo!22191 r!26030))) b!3710155))

(assert (= (and b!3709773 ((_ is Concat!17110) (regTwo!22191 r!26030))) b!3710156))

(assert (= (and b!3709773 ((_ is Star!10839) (regTwo!22191 r!26030))) b!3710157))

(assert (= (and b!3709773 ((_ is Union!10839) (regTwo!22191 r!26030))) b!3710158))

(check-sat (not b!3709870) (not b!3710142) (not b!3709873) (not d!1086919) (not bm!268192) (not b!3709875) (not b!3710115) tp_is_empty!18693 (not b!3710135) (not d!1086951) (not bm!268173) (not d!1086907) (not b!3709874) (not b!3710137) (not b!3709968) (not d!1086929) (not d!1086933) (not bm!268171) (not b!3709934) (not bm!268193) (not b!3709871) (not bm!268172) (not bm!268195) (not bm!268127) (not b!3710154) (not d!1086903) (not b!3709955) (not b!3710039) (not b!3710116) (not b!3709793) (not b!3710152) (not b!3710146) (not b!3710149) (not b!3710158) (not d!1086911) (not b!3710150) (not b!3710144) (not bm!268149) (not bm!268151) (not b!3710120) (not b!3710122) (not b!3710145) (not b!3710107) (not b!3710157) (not b!3710148) (not b!3710153) (not b!3710156) (not b!3710119) (not b!3710118) (not d!1086945) (not b!3709877) (not b!3710136) (not d!1086927))
(check-sat)
(get-model)

(declare-fun d!1086953 () Bool)

(assert (=> d!1086953 (= (nullable!3762 (reg!11168 r!26030)) (nullableFct!1054 (reg!11168 r!26030)))))

(declare-fun bs!574726 () Bool)

(assert (= bs!574726 d!1086953))

(declare-fun m!4218069 () Bool)

(assert (=> bs!574726 m!4218069))

(assert (=> b!3710107 d!1086953))

(declare-fun d!1086955 () Bool)

(assert (=> d!1086955 (= (isEmpty!23494 (tail!5744 s!14932)) ((_ is Nil!39596) (tail!5744 s!14932)))))

(assert (=> b!3710120 d!1086955))

(assert (=> b!3710120 d!1086917))

(declare-fun d!1086957 () Bool)

(declare-fun lt!1296789 () Bool)

(assert (=> d!1086957 (= lt!1296789 (select (content!5724 (t!302403 (usedCharacters!1102 r!26030))) c!13437))))

(declare-fun e!2297811 () Bool)

(assert (=> d!1086957 (= lt!1296789 e!2297811)))

(declare-fun res!1508937 () Bool)

(assert (=> d!1086957 (=> (not res!1508937) (not e!2297811))))

(assert (=> d!1086957 (= res!1508937 ((_ is Cons!39596) (t!302403 (usedCharacters!1102 r!26030))))))

(assert (=> d!1086957 (= (contains!7932 (t!302403 (usedCharacters!1102 r!26030)) c!13437) lt!1296789)))

(declare-fun b!3710159 () Bool)

(declare-fun e!2297812 () Bool)

(assert (=> b!3710159 (= e!2297811 e!2297812)))

(declare-fun res!1508938 () Bool)

(assert (=> b!3710159 (=> res!1508938 e!2297812)))

(assert (=> b!3710159 (= res!1508938 (= (h!45016 (t!302403 (usedCharacters!1102 r!26030))) c!13437))))

(declare-fun b!3710160 () Bool)

(assert (=> b!3710160 (= e!2297812 (contains!7932 (t!302403 (t!302403 (usedCharacters!1102 r!26030))) c!13437))))

(assert (= (and d!1086957 res!1508937) b!3710159))

(assert (= (and b!3710159 (not res!1508938)) b!3710160))

(declare-fun m!4218071 () Bool)

(assert (=> d!1086957 m!4218071))

(declare-fun m!4218073 () Bool)

(assert (=> d!1086957 m!4218073))

(declare-fun m!4218075 () Bool)

(assert (=> b!3710160 m!4218075))

(assert (=> b!3709968 d!1086957))

(declare-fun d!1086959 () Bool)

(declare-fun c!640862 () Bool)

(assert (=> d!1086959 (= c!640862 ((_ is Nil!39596) s!14932))))

(declare-fun e!2297815 () (InoxSet C!21864))

(assert (=> d!1086959 (= (content!5724 s!14932) e!2297815)))

(declare-fun b!3710165 () Bool)

(assert (=> b!3710165 (= e!2297815 ((as const (Array C!21864 Bool)) false))))

(declare-fun b!3710166 () Bool)

(assert (=> b!3710166 (= e!2297815 ((_ map or) (store ((as const (Array C!21864 Bool)) false) (h!45016 s!14932) true) (content!5724 (t!302403 s!14932))))))

(assert (= (and d!1086959 c!640862) b!3710165))

(assert (= (and d!1086959 (not c!640862)) b!3710166))

(declare-fun m!4218077 () Bool)

(assert (=> b!3710166 m!4218077))

(declare-fun m!4218079 () Bool)

(assert (=> b!3710166 m!4218079))

(assert (=> d!1086945 d!1086959))

(declare-fun b!3710167 () Bool)

(declare-fun res!1508942 () Bool)

(declare-fun e!2297818 () Bool)

(assert (=> b!3710167 (=> res!1508942 e!2297818)))

(declare-fun e!2297822 () Bool)

(assert (=> b!3710167 (= res!1508942 e!2297822)))

(declare-fun res!1508946 () Bool)

(assert (=> b!3710167 (=> (not res!1508946) (not e!2297822))))

(declare-fun lt!1296790 () Bool)

(assert (=> b!3710167 (= res!1508946 lt!1296790)))

(declare-fun b!3710168 () Bool)

(declare-fun e!2297819 () Bool)

(declare-fun e!2297816 () Bool)

(assert (=> b!3710168 (= e!2297819 e!2297816)))

(declare-fun c!640863 () Bool)

(assert (=> b!3710168 (= c!640863 ((_ is EmptyLang!10839) (derivativeStep!3304 r!26030 (head!8017 s!14932))))))

(declare-fun b!3710169 () Bool)

(declare-fun e!2297820 () Bool)

(assert (=> b!3710169 (= e!2297818 e!2297820)))

(declare-fun res!1508945 () Bool)

(assert (=> b!3710169 (=> (not res!1508945) (not e!2297820))))

(assert (=> b!3710169 (= res!1508945 (not lt!1296790))))

(declare-fun d!1086961 () Bool)

(assert (=> d!1086961 e!2297819))

(declare-fun c!640865 () Bool)

(assert (=> d!1086961 (= c!640865 ((_ is EmptyExpr!10839) (derivativeStep!3304 r!26030 (head!8017 s!14932))))))

(declare-fun e!2297817 () Bool)

(assert (=> d!1086961 (= lt!1296790 e!2297817)))

(declare-fun c!640864 () Bool)

(assert (=> d!1086961 (= c!640864 (isEmpty!23494 (tail!5744 s!14932)))))

(assert (=> d!1086961 (validRegex!4946 (derivativeStep!3304 r!26030 (head!8017 s!14932)))))

(assert (=> d!1086961 (= (matchR!5296 (derivativeStep!3304 r!26030 (head!8017 s!14932)) (tail!5744 s!14932)) lt!1296790)))

(declare-fun b!3710170 () Bool)

(declare-fun call!268201 () Bool)

(assert (=> b!3710170 (= e!2297819 (= lt!1296790 call!268201))))

(declare-fun b!3710171 () Bool)

(assert (=> b!3710171 (= e!2297816 (not lt!1296790))))

(declare-fun b!3710172 () Bool)

(declare-fun res!1508940 () Bool)

(assert (=> b!3710172 (=> (not res!1508940) (not e!2297822))))

(assert (=> b!3710172 (= res!1508940 (isEmpty!23494 (tail!5744 (tail!5744 s!14932))))))

(declare-fun b!3710173 () Bool)

(declare-fun e!2297821 () Bool)

(assert (=> b!3710173 (= e!2297821 (not (= (head!8017 (tail!5744 s!14932)) (c!640761 (derivativeStep!3304 r!26030 (head!8017 s!14932))))))))

(declare-fun b!3710174 () Bool)

(assert (=> b!3710174 (= e!2297820 e!2297821)))

(declare-fun res!1508941 () Bool)

(assert (=> b!3710174 (=> res!1508941 e!2297821)))

(assert (=> b!3710174 (= res!1508941 call!268201)))

(declare-fun b!3710175 () Bool)

(assert (=> b!3710175 (= e!2297822 (= (head!8017 (tail!5744 s!14932)) (c!640761 (derivativeStep!3304 r!26030 (head!8017 s!14932)))))))

(declare-fun bm!268196 () Bool)

(assert (=> bm!268196 (= call!268201 (isEmpty!23494 (tail!5744 s!14932)))))

(declare-fun b!3710176 () Bool)

(assert (=> b!3710176 (= e!2297817 (nullable!3762 (derivativeStep!3304 r!26030 (head!8017 s!14932))))))

(declare-fun b!3710177 () Bool)

(declare-fun res!1508939 () Bool)

(assert (=> b!3710177 (=> res!1508939 e!2297821)))

(assert (=> b!3710177 (= res!1508939 (not (isEmpty!23494 (tail!5744 (tail!5744 s!14932)))))))

(declare-fun b!3710178 () Bool)

(declare-fun res!1508944 () Bool)

(assert (=> b!3710178 (=> (not res!1508944) (not e!2297822))))

(assert (=> b!3710178 (= res!1508944 (not call!268201))))

(declare-fun b!3710179 () Bool)

(assert (=> b!3710179 (= e!2297817 (matchR!5296 (derivativeStep!3304 (derivativeStep!3304 r!26030 (head!8017 s!14932)) (head!8017 (tail!5744 s!14932))) (tail!5744 (tail!5744 s!14932))))))

(declare-fun b!3710180 () Bool)

(declare-fun res!1508943 () Bool)

(assert (=> b!3710180 (=> res!1508943 e!2297818)))

(assert (=> b!3710180 (= res!1508943 (not ((_ is ElementMatch!10839) (derivativeStep!3304 r!26030 (head!8017 s!14932)))))))

(assert (=> b!3710180 (= e!2297816 e!2297818)))

(assert (= (and d!1086961 c!640864) b!3710176))

(assert (= (and d!1086961 (not c!640864)) b!3710179))

(assert (= (and d!1086961 c!640865) b!3710170))

(assert (= (and d!1086961 (not c!640865)) b!3710168))

(assert (= (and b!3710168 c!640863) b!3710171))

(assert (= (and b!3710168 (not c!640863)) b!3710180))

(assert (= (and b!3710180 (not res!1508943)) b!3710167))

(assert (= (and b!3710167 res!1508946) b!3710178))

(assert (= (and b!3710178 res!1508944) b!3710172))

(assert (= (and b!3710172 res!1508940) b!3710175))

(assert (= (and b!3710167 (not res!1508942)) b!3710169))

(assert (= (and b!3710169 res!1508945) b!3710174))

(assert (= (and b!3710174 (not res!1508941)) b!3710177))

(assert (= (and b!3710177 (not res!1508939)) b!3710173))

(assert (= (or b!3710170 b!3710174 b!3710178) bm!268196))

(assert (=> b!3710173 m!4217903))

(declare-fun m!4218081 () Bool)

(assert (=> b!3710173 m!4218081))

(assert (=> b!3710175 m!4217903))

(assert (=> b!3710175 m!4218081))

(assert (=> d!1086961 m!4217903))

(assert (=> d!1086961 m!4218063))

(assert (=> d!1086961 m!4218065))

(declare-fun m!4218083 () Bool)

(assert (=> d!1086961 m!4218083))

(assert (=> b!3710176 m!4218065))

(declare-fun m!4218085 () Bool)

(assert (=> b!3710176 m!4218085))

(assert (=> b!3710172 m!4217903))

(declare-fun m!4218087 () Bool)

(assert (=> b!3710172 m!4218087))

(assert (=> b!3710172 m!4218087))

(declare-fun m!4218089 () Bool)

(assert (=> b!3710172 m!4218089))

(assert (=> b!3710177 m!4217903))

(assert (=> b!3710177 m!4218087))

(assert (=> b!3710177 m!4218087))

(assert (=> b!3710177 m!4218089))

(assert (=> b!3710179 m!4217903))

(assert (=> b!3710179 m!4218081))

(assert (=> b!3710179 m!4218065))

(assert (=> b!3710179 m!4218081))

(declare-fun m!4218091 () Bool)

(assert (=> b!3710179 m!4218091))

(assert (=> b!3710179 m!4217903))

(assert (=> b!3710179 m!4218087))

(assert (=> b!3710179 m!4218091))

(assert (=> b!3710179 m!4218087))

(declare-fun m!4218093 () Bool)

(assert (=> b!3710179 m!4218093))

(assert (=> bm!268196 m!4217903))

(assert (=> bm!268196 m!4218063))

(assert (=> b!3710122 d!1086961))

(declare-fun e!2297827 () Regex!10839)

(declare-fun b!3710181 () Bool)

(declare-fun call!268204 () Regex!10839)

(declare-fun call!268203 () Regex!10839)

(assert (=> b!3710181 (= e!2297827 (Union!10839 (Concat!17110 call!268203 (regTwo!22190 r!26030)) call!268204))))

(declare-fun bm!268197 () Bool)

(declare-fun call!268205 () Regex!10839)

(declare-fun call!268202 () Regex!10839)

(assert (=> bm!268197 (= call!268205 call!268202)))

(declare-fun c!640869 () Bool)

(declare-fun bm!268198 () Bool)

(declare-fun c!640870 () Bool)

(assert (=> bm!268198 (= call!268202 (derivativeStep!3304 (ite c!640869 (regTwo!22191 r!26030) (ite c!640870 (reg!11168 r!26030) (regOne!22190 r!26030))) (head!8017 s!14932)))))

(declare-fun bm!268199 () Bool)

(assert (=> bm!268199 (= call!268203 call!268205)))

(declare-fun b!3710182 () Bool)

(assert (=> b!3710182 (= e!2297827 (Union!10839 (Concat!17110 call!268203 (regTwo!22190 r!26030)) EmptyLang!10839))))

(declare-fun b!3710183 () Bool)

(declare-fun e!2297825 () Regex!10839)

(assert (=> b!3710183 (= e!2297825 (ite (= (head!8017 s!14932) (c!640761 r!26030)) EmptyExpr!10839 EmptyLang!10839))))

(declare-fun b!3710184 () Bool)

(declare-fun c!640867 () Bool)

(assert (=> b!3710184 (= c!640867 (nullable!3762 (regOne!22190 r!26030)))))

(declare-fun e!2297823 () Regex!10839)

(assert (=> b!3710184 (= e!2297823 e!2297827)))

(declare-fun b!3710185 () Bool)

(declare-fun e!2297824 () Regex!10839)

(assert (=> b!3710185 (= e!2297824 e!2297823)))

(assert (=> b!3710185 (= c!640870 ((_ is Star!10839) r!26030))))

(declare-fun d!1086963 () Bool)

(declare-fun lt!1296791 () Regex!10839)

(assert (=> d!1086963 (validRegex!4946 lt!1296791)))

(declare-fun e!2297826 () Regex!10839)

(assert (=> d!1086963 (= lt!1296791 e!2297826)))

(declare-fun c!640866 () Bool)

(assert (=> d!1086963 (= c!640866 (or ((_ is EmptyExpr!10839) r!26030) ((_ is EmptyLang!10839) r!26030)))))

(assert (=> d!1086963 (validRegex!4946 r!26030)))

(assert (=> d!1086963 (= (derivativeStep!3304 r!26030 (head!8017 s!14932)) lt!1296791)))

(declare-fun bm!268200 () Bool)

(assert (=> bm!268200 (= call!268204 (derivativeStep!3304 (ite c!640869 (regOne!22191 r!26030) (regTwo!22190 r!26030)) (head!8017 s!14932)))))

(declare-fun b!3710186 () Bool)

(assert (=> b!3710186 (= c!640869 ((_ is Union!10839) r!26030))))

(assert (=> b!3710186 (= e!2297825 e!2297824)))

(declare-fun b!3710187 () Bool)

(assert (=> b!3710187 (= e!2297823 (Concat!17110 call!268205 r!26030))))

(declare-fun b!3710188 () Bool)

(assert (=> b!3710188 (= e!2297826 EmptyLang!10839)))

(declare-fun b!3710189 () Bool)

(assert (=> b!3710189 (= e!2297826 e!2297825)))

(declare-fun c!640868 () Bool)

(assert (=> b!3710189 (= c!640868 ((_ is ElementMatch!10839) r!26030))))

(declare-fun b!3710190 () Bool)

(assert (=> b!3710190 (= e!2297824 (Union!10839 call!268204 call!268202))))

(assert (= (and d!1086963 c!640866) b!3710188))

(assert (= (and d!1086963 (not c!640866)) b!3710189))

(assert (= (and b!3710189 c!640868) b!3710183))

(assert (= (and b!3710189 (not c!640868)) b!3710186))

(assert (= (and b!3710186 c!640869) b!3710190))

(assert (= (and b!3710186 (not c!640869)) b!3710185))

(assert (= (and b!3710185 c!640870) b!3710187))

(assert (= (and b!3710185 (not c!640870)) b!3710184))

(assert (= (and b!3710184 c!640867) b!3710181))

(assert (= (and b!3710184 (not c!640867)) b!3710182))

(assert (= (or b!3710181 b!3710182) bm!268199))

(assert (= (or b!3710187 bm!268199) bm!268197))

(assert (= (or b!3710190 bm!268197) bm!268198))

(assert (= (or b!3710190 b!3710181) bm!268200))

(assert (=> bm!268198 m!4217893))

(declare-fun m!4218095 () Bool)

(assert (=> bm!268198 m!4218095))

(assert (=> b!3710184 m!4217985))

(declare-fun m!4218097 () Bool)

(assert (=> d!1086963 m!4218097))

(assert (=> d!1086963 m!4217895))

(assert (=> bm!268200 m!4217893))

(declare-fun m!4218099 () Bool)

(assert (=> bm!268200 m!4218099))

(assert (=> b!3710122 d!1086963))

(assert (=> b!3710122 d!1086943))

(assert (=> b!3710122 d!1086917))

(assert (=> b!3710118 d!1086943))

(declare-fun e!2297832 () Bool)

(declare-fun b!3710202 () Bool)

(declare-fun lt!1296794 () List!39720)

(assert (=> b!3710202 (= e!2297832 (or (not (= call!268178 Nil!39596)) (= lt!1296794 call!268176)))))

(declare-fun b!3710201 () Bool)

(declare-fun res!1508951 () Bool)

(assert (=> b!3710201 (=> (not res!1508951) (not e!2297832))))

(declare-fun size!30012 (List!39720) Int)

(assert (=> b!3710201 (= res!1508951 (= (size!30012 lt!1296794) (+ (size!30012 call!268176) (size!30012 call!268178))))))

(declare-fun b!3710199 () Bool)

(declare-fun e!2297833 () List!39720)

(assert (=> b!3710199 (= e!2297833 call!268178)))

(declare-fun d!1086965 () Bool)

(assert (=> d!1086965 e!2297832))

(declare-fun res!1508952 () Bool)

(assert (=> d!1086965 (=> (not res!1508952) (not e!2297832))))

(assert (=> d!1086965 (= res!1508952 (= (content!5724 lt!1296794) ((_ map or) (content!5724 call!268176) (content!5724 call!268178))))))

(assert (=> d!1086965 (= lt!1296794 e!2297833)))

(declare-fun c!640873 () Bool)

(assert (=> d!1086965 (= c!640873 ((_ is Nil!39596) call!268176))))

(assert (=> d!1086965 (= (++!9787 call!268176 call!268178) lt!1296794)))

(declare-fun b!3710200 () Bool)

(assert (=> b!3710200 (= e!2297833 (Cons!39596 (h!45016 call!268176) (++!9787 (t!302403 call!268176) call!268178)))))

(assert (= (and d!1086965 c!640873) b!3710199))

(assert (= (and d!1086965 (not c!640873)) b!3710200))

(assert (= (and d!1086965 res!1508952) b!3710201))

(assert (= (and b!3710201 res!1508951) b!3710202))

(declare-fun m!4218101 () Bool)

(assert (=> b!3710201 m!4218101))

(declare-fun m!4218103 () Bool)

(assert (=> b!3710201 m!4218103))

(declare-fun m!4218105 () Bool)

(assert (=> b!3710201 m!4218105))

(declare-fun m!4218107 () Bool)

(assert (=> d!1086965 m!4218107))

(declare-fun m!4218109 () Bool)

(assert (=> d!1086965 m!4218109))

(declare-fun m!4218111 () Bool)

(assert (=> d!1086965 m!4218111))

(declare-fun m!4218113 () Bool)

(assert (=> b!3710200 m!4218113))

(assert (=> bm!268172 d!1086965))

(declare-fun d!1086967 () Bool)

(declare-fun res!1508957 () Bool)

(declare-fun e!2297838 () Bool)

(assert (=> d!1086967 (=> res!1508957 e!2297838)))

(assert (=> d!1086967 (= res!1508957 ((_ is ElementMatch!10839) (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))

(assert (=> d!1086967 (= (validRegex!4946 (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))) e!2297838)))

(declare-fun b!3710203 () Bool)

(declare-fun e!2297834 () Bool)

(assert (=> b!3710203 (= e!2297838 e!2297834)))

(declare-fun c!640874 () Bool)

(assert (=> b!3710203 (= c!640874 ((_ is Star!10839) (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))

(declare-fun b!3710204 () Bool)

(declare-fun res!1508956 () Bool)

(declare-fun e!2297836 () Bool)

(assert (=> b!3710204 (=> (not res!1508956) (not e!2297836))))

(declare-fun call!268208 () Bool)

(assert (=> b!3710204 (= res!1508956 call!268208)))

(declare-fun e!2297837 () Bool)

(assert (=> b!3710204 (= e!2297837 e!2297836)))

(declare-fun call!268206 () Bool)

(declare-fun c!640875 () Bool)

(declare-fun bm!268201 () Bool)

(assert (=> bm!268201 (= call!268206 (validRegex!4946 (ite c!640874 (reg!11168 (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))) (ite c!640875 (regTwo!22191 (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))) (regOne!22190 (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030)))))))))

(declare-fun b!3710205 () Bool)

(declare-fun e!2297835 () Bool)

(assert (=> b!3710205 (= e!2297835 call!268208)))

(declare-fun b!3710206 () Bool)

(assert (=> b!3710206 (= e!2297834 e!2297837)))

(assert (=> b!3710206 (= c!640875 ((_ is Union!10839) (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))

(declare-fun b!3710207 () Bool)

(declare-fun res!1508955 () Bool)

(declare-fun e!2297840 () Bool)

(assert (=> b!3710207 (=> res!1508955 e!2297840)))

(assert (=> b!3710207 (= res!1508955 (not ((_ is Concat!17110) (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030)))))))

(assert (=> b!3710207 (= e!2297837 e!2297840)))

(declare-fun bm!268202 () Bool)

(assert (=> bm!268202 (= call!268208 (validRegex!4946 (ite c!640875 (regOne!22191 (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))) (regTwo!22190 (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))))

(declare-fun b!3710208 () Bool)

(assert (=> b!3710208 (= e!2297840 e!2297835)))

(declare-fun res!1508954 () Bool)

(assert (=> b!3710208 (=> (not res!1508954) (not e!2297835))))

(declare-fun call!268207 () Bool)

(assert (=> b!3710208 (= res!1508954 call!268207)))

(declare-fun b!3710209 () Bool)

(declare-fun e!2297839 () Bool)

(assert (=> b!3710209 (= e!2297834 e!2297839)))

(declare-fun res!1508953 () Bool)

(assert (=> b!3710209 (= res!1508953 (not (nullable!3762 (reg!11168 (ite c!640856 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))))

(assert (=> b!3710209 (=> (not res!1508953) (not e!2297839))))

(declare-fun bm!268203 () Bool)

(assert (=> bm!268203 (= call!268207 call!268206)))

(declare-fun b!3710210 () Bool)

(assert (=> b!3710210 (= e!2297839 call!268206)))

(declare-fun b!3710211 () Bool)

(assert (=> b!3710211 (= e!2297836 call!268207)))

(assert (= (and d!1086967 (not res!1508957)) b!3710203))

(assert (= (and b!3710203 c!640874) b!3710209))

(assert (= (and b!3710203 (not c!640874)) b!3710206))

(assert (= (and b!3710209 res!1508953) b!3710210))

(assert (= (and b!3710206 c!640875) b!3710204))

(assert (= (and b!3710206 (not c!640875)) b!3710207))

(assert (= (and b!3710204 res!1508956) b!3710211))

(assert (= (and b!3710207 (not res!1508955)) b!3710208))

(assert (= (and b!3710208 res!1508954) b!3710205))

(assert (= (or b!3710211 b!3710208) bm!268203))

(assert (= (or b!3710204 b!3710205) bm!268202))

(assert (= (or b!3710210 bm!268203) bm!268201))

(declare-fun m!4218115 () Bool)

(assert (=> bm!268201 m!4218115))

(declare-fun m!4218117 () Bool)

(assert (=> bm!268202 m!4218117))

(declare-fun m!4218119 () Bool)

(assert (=> b!3710209 m!4218119))

(assert (=> bm!268193 d!1086967))

(declare-fun d!1086971 () Bool)

(declare-fun lt!1296795 () Regex!10839)

(assert (=> d!1086971 (validRegex!4946 lt!1296795)))

(declare-fun e!2297841 () Regex!10839)

(assert (=> d!1086971 (= lt!1296795 e!2297841)))

(declare-fun c!640876 () Bool)

(assert (=> d!1086971 (= c!640876 ((_ is Cons!39596) (t!302403 (tail!5744 s!14932))))))

(assert (=> d!1086971 (validRegex!4946 (derivativeStep!3304 (derivativeStep!3304 r!26030 c!13437) (h!45016 (tail!5744 s!14932))))))

(assert (=> d!1086971 (= (derivative!353 (derivativeStep!3304 (derivativeStep!3304 r!26030 c!13437) (h!45016 (tail!5744 s!14932))) (t!302403 (tail!5744 s!14932))) lt!1296795)))

(declare-fun b!3710212 () Bool)

(assert (=> b!3710212 (= e!2297841 (derivative!353 (derivativeStep!3304 (derivativeStep!3304 (derivativeStep!3304 r!26030 c!13437) (h!45016 (tail!5744 s!14932))) (h!45016 (t!302403 (tail!5744 s!14932)))) (t!302403 (t!302403 (tail!5744 s!14932)))))))

(declare-fun b!3710213 () Bool)

(assert (=> b!3710213 (= e!2297841 (derivativeStep!3304 (derivativeStep!3304 r!26030 c!13437) (h!45016 (tail!5744 s!14932))))))

(assert (= (and d!1086971 c!640876) b!3710212))

(assert (= (and d!1086971 (not c!640876)) b!3710213))

(declare-fun m!4218121 () Bool)

(assert (=> d!1086971 m!4218121))

(assert (=> d!1086971 m!4217995))

(declare-fun m!4218123 () Bool)

(assert (=> d!1086971 m!4218123))

(assert (=> b!3710212 m!4217995))

(declare-fun m!4218125 () Bool)

(assert (=> b!3710212 m!4218125))

(assert (=> b!3710212 m!4218125))

(declare-fun m!4218127 () Bool)

(assert (=> b!3710212 m!4218127))

(assert (=> b!3709955 d!1086971))

(declare-fun call!268211 () Regex!10839)

(declare-fun b!3710214 () Bool)

(declare-fun e!2297846 () Regex!10839)

(declare-fun call!268210 () Regex!10839)

(assert (=> b!3710214 (= e!2297846 (Union!10839 (Concat!17110 call!268210 (regTwo!22190 (derivativeStep!3304 r!26030 c!13437))) call!268211))))

(declare-fun bm!268204 () Bool)

(declare-fun call!268212 () Regex!10839)

(declare-fun call!268209 () Regex!10839)

(assert (=> bm!268204 (= call!268212 call!268209)))

(declare-fun c!640880 () Bool)

(declare-fun bm!268205 () Bool)

(declare-fun c!640881 () Bool)

(assert (=> bm!268205 (= call!268209 (derivativeStep!3304 (ite c!640880 (regTwo!22191 (derivativeStep!3304 r!26030 c!13437)) (ite c!640881 (reg!11168 (derivativeStep!3304 r!26030 c!13437)) (regOne!22190 (derivativeStep!3304 r!26030 c!13437)))) (h!45016 (tail!5744 s!14932))))))

(declare-fun bm!268206 () Bool)

(assert (=> bm!268206 (= call!268210 call!268212)))

(declare-fun b!3710215 () Bool)

(assert (=> b!3710215 (= e!2297846 (Union!10839 (Concat!17110 call!268210 (regTwo!22190 (derivativeStep!3304 r!26030 c!13437))) EmptyLang!10839))))

(declare-fun e!2297844 () Regex!10839)

(declare-fun b!3710216 () Bool)

(assert (=> b!3710216 (= e!2297844 (ite (= (h!45016 (tail!5744 s!14932)) (c!640761 (derivativeStep!3304 r!26030 c!13437))) EmptyExpr!10839 EmptyLang!10839))))

(declare-fun b!3710217 () Bool)

(declare-fun c!640878 () Bool)

(assert (=> b!3710217 (= c!640878 (nullable!3762 (regOne!22190 (derivativeStep!3304 r!26030 c!13437))))))

(declare-fun e!2297842 () Regex!10839)

(assert (=> b!3710217 (= e!2297842 e!2297846)))

(declare-fun b!3710218 () Bool)

(declare-fun e!2297843 () Regex!10839)

(assert (=> b!3710218 (= e!2297843 e!2297842)))

(assert (=> b!3710218 (= c!640881 ((_ is Star!10839) (derivativeStep!3304 r!26030 c!13437)))))

(declare-fun d!1086977 () Bool)

(declare-fun lt!1296796 () Regex!10839)

(assert (=> d!1086977 (validRegex!4946 lt!1296796)))

(declare-fun e!2297845 () Regex!10839)

(assert (=> d!1086977 (= lt!1296796 e!2297845)))

(declare-fun c!640877 () Bool)

(assert (=> d!1086977 (= c!640877 (or ((_ is EmptyExpr!10839) (derivativeStep!3304 r!26030 c!13437)) ((_ is EmptyLang!10839) (derivativeStep!3304 r!26030 c!13437))))))

(assert (=> d!1086977 (validRegex!4946 (derivativeStep!3304 r!26030 c!13437))))

(assert (=> d!1086977 (= (derivativeStep!3304 (derivativeStep!3304 r!26030 c!13437) (h!45016 (tail!5744 s!14932))) lt!1296796)))

(declare-fun bm!268207 () Bool)

(assert (=> bm!268207 (= call!268211 (derivativeStep!3304 (ite c!640880 (regOne!22191 (derivativeStep!3304 r!26030 c!13437)) (regTwo!22190 (derivativeStep!3304 r!26030 c!13437))) (h!45016 (tail!5744 s!14932))))))

(declare-fun b!3710219 () Bool)

(assert (=> b!3710219 (= c!640880 ((_ is Union!10839) (derivativeStep!3304 r!26030 c!13437)))))

(assert (=> b!3710219 (= e!2297844 e!2297843)))

(declare-fun b!3710220 () Bool)

(assert (=> b!3710220 (= e!2297842 (Concat!17110 call!268212 (derivativeStep!3304 r!26030 c!13437)))))

(declare-fun b!3710221 () Bool)

(assert (=> b!3710221 (= e!2297845 EmptyLang!10839)))

(declare-fun b!3710222 () Bool)

(assert (=> b!3710222 (= e!2297845 e!2297844)))

(declare-fun c!640879 () Bool)

(assert (=> b!3710222 (= c!640879 ((_ is ElementMatch!10839) (derivativeStep!3304 r!26030 c!13437)))))

(declare-fun b!3710223 () Bool)

(assert (=> b!3710223 (= e!2297843 (Union!10839 call!268211 call!268209))))

(assert (= (and d!1086977 c!640877) b!3710221))

(assert (= (and d!1086977 (not c!640877)) b!3710222))

(assert (= (and b!3710222 c!640879) b!3710216))

(assert (= (and b!3710222 (not c!640879)) b!3710219))

(assert (= (and b!3710219 c!640880) b!3710223))

(assert (= (and b!3710219 (not c!640880)) b!3710218))

(assert (= (and b!3710218 c!640881) b!3710220))

(assert (= (and b!3710218 (not c!640881)) b!3710217))

(assert (= (and b!3710217 c!640878) b!3710214))

(assert (= (and b!3710217 (not c!640878)) b!3710215))

(assert (= (or b!3710214 b!3710215) bm!268206))

(assert (= (or b!3710220 bm!268206) bm!268204))

(assert (= (or b!3710223 bm!268204) bm!268205))

(assert (= (or b!3710223 b!3710214) bm!268207))

(declare-fun m!4218129 () Bool)

(assert (=> bm!268205 m!4218129))

(declare-fun m!4218131 () Bool)

(assert (=> b!3710217 m!4218131))

(declare-fun m!4218133 () Bool)

(assert (=> d!1086977 m!4218133))

(assert (=> d!1086977 m!4217901))

(assert (=> d!1086977 m!4217993))

(declare-fun m!4218135 () Bool)

(assert (=> bm!268207 m!4218135))

(assert (=> b!3709955 d!1086977))

(declare-fun d!1086979 () Bool)

(assert (=> d!1086979 (= (isEmpty!23494 s!14932) ((_ is Nil!39596) s!14932))))

(assert (=> bm!268195 d!1086979))

(declare-fun d!1086981 () Bool)

(assert (=> d!1086981 (= (nullable!3762 r!26030) (nullableFct!1054 r!26030))))

(declare-fun bs!574727 () Bool)

(assert (= bs!574727 d!1086981))

(declare-fun m!4218137 () Bool)

(assert (=> bs!574727 m!4218137))

(assert (=> b!3710119 d!1086981))

(declare-fun call!268214 () Regex!10839)

(declare-fun call!268215 () Regex!10839)

(declare-fun e!2297851 () Regex!10839)

(declare-fun b!3710224 () Bool)

(assert (=> b!3710224 (= e!2297851 (Union!10839 (Concat!17110 call!268214 (regTwo!22190 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))))) call!268215))))

(declare-fun bm!268208 () Bool)

(declare-fun call!268216 () Regex!10839)

(declare-fun call!268213 () Regex!10839)

(assert (=> bm!268208 (= call!268216 call!268213)))

(declare-fun c!640886 () Bool)

(declare-fun bm!268209 () Bool)

(declare-fun c!640885 () Bool)

(assert (=> bm!268209 (= call!268213 (derivativeStep!3304 (ite c!640885 (regTwo!22191 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))) (ite c!640886 (reg!11168 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))) (regOne!22190 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))))) c!13437))))

(declare-fun bm!268210 () Bool)

(assert (=> bm!268210 (= call!268214 call!268216)))

(declare-fun b!3710225 () Bool)

(assert (=> b!3710225 (= e!2297851 (Union!10839 (Concat!17110 call!268214 (regTwo!22190 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))))) EmptyLang!10839))))

(declare-fun b!3710226 () Bool)

(declare-fun e!2297849 () Regex!10839)

(assert (=> b!3710226 (= e!2297849 (ite (= c!13437 (c!640761 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))))) EmptyExpr!10839 EmptyLang!10839))))

(declare-fun c!640883 () Bool)

(declare-fun b!3710227 () Bool)

(assert (=> b!3710227 (= c!640883 (nullable!3762 (regOne!22190 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))))))))

(declare-fun e!2297847 () Regex!10839)

(assert (=> b!3710227 (= e!2297847 e!2297851)))

(declare-fun b!3710228 () Bool)

(declare-fun e!2297848 () Regex!10839)

(assert (=> b!3710228 (= e!2297848 e!2297847)))

(assert (=> b!3710228 (= c!640886 ((_ is Star!10839) (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))))))

(declare-fun d!1086983 () Bool)

(declare-fun lt!1296797 () Regex!10839)

(assert (=> d!1086983 (validRegex!4946 lt!1296797)))

(declare-fun e!2297850 () Regex!10839)

(assert (=> d!1086983 (= lt!1296797 e!2297850)))

(declare-fun c!640882 () Bool)

(assert (=> d!1086983 (= c!640882 (or ((_ is EmptyExpr!10839) (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))) ((_ is EmptyLang!10839) (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))))))))

(assert (=> d!1086983 (validRegex!4946 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))))))

(assert (=> d!1086983 (= (derivativeStep!3304 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))) c!13437) lt!1296797)))

(declare-fun bm!268211 () Bool)

(assert (=> bm!268211 (= call!268215 (derivativeStep!3304 (ite c!640885 (regOne!22191 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))) (regTwo!22190 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030))))) c!13437))))

(declare-fun b!3710229 () Bool)

(assert (=> b!3710229 (= c!640885 ((_ is Union!10839) (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))))))

(assert (=> b!3710229 (= e!2297849 e!2297848)))

(declare-fun b!3710230 () Bool)

(assert (=> b!3710230 (= e!2297847 (Concat!17110 call!268216 (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))))))

(declare-fun b!3710231 () Bool)

(assert (=> b!3710231 (= e!2297850 EmptyLang!10839)))

(declare-fun b!3710232 () Bool)

(assert (=> b!3710232 (= e!2297850 e!2297849)))

(declare-fun c!640884 () Bool)

(assert (=> b!3710232 (= c!640884 ((_ is ElementMatch!10839) (ite c!640815 (regTwo!22191 r!26030) (ite c!640816 (reg!11168 r!26030) (regOne!22190 r!26030)))))))

(declare-fun b!3710233 () Bool)

(assert (=> b!3710233 (= e!2297848 (Union!10839 call!268215 call!268213))))

(assert (= (and d!1086983 c!640882) b!3710231))

(assert (= (and d!1086983 (not c!640882)) b!3710232))

(assert (= (and b!3710232 c!640884) b!3710226))

(assert (= (and b!3710232 (not c!640884)) b!3710229))

(assert (= (and b!3710229 c!640885) b!3710233))

(assert (= (and b!3710229 (not c!640885)) b!3710228))

(assert (= (and b!3710228 c!640886) b!3710230))

(assert (= (and b!3710228 (not c!640886)) b!3710227))

(assert (= (and b!3710227 c!640883) b!3710224))

(assert (= (and b!3710227 (not c!640883)) b!3710225))

(assert (= (or b!3710224 b!3710225) bm!268210))

(assert (= (or b!3710230 bm!268210) bm!268208))

(assert (= (or b!3710233 bm!268208) bm!268209))

(assert (= (or b!3710233 b!3710224) bm!268211))

(declare-fun m!4218139 () Bool)

(assert (=> bm!268209 m!4218139))

(declare-fun m!4218141 () Bool)

(assert (=> b!3710227 m!4218141))

(declare-fun m!4218143 () Bool)

(assert (=> d!1086983 m!4218143))

(declare-fun m!4218145 () Bool)

(assert (=> d!1086983 m!4218145))

(declare-fun m!4218147 () Bool)

(assert (=> bm!268211 m!4218147))

(assert (=> bm!268149 d!1086983))

(declare-fun b!3710234 () Bool)

(declare-fun e!2297852 () List!39720)

(declare-fun e!2297855 () List!39720)

(assert (=> b!3710234 (= e!2297852 e!2297855)))

(declare-fun c!640888 () Bool)

(assert (=> b!3710234 (= c!640888 ((_ is ElementMatch!10839) (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))))))

(declare-fun bm!268212 () Bool)

(declare-fun call!268220 () List!39720)

(declare-fun call!268217 () List!39720)

(assert (=> bm!268212 (= call!268220 call!268217)))

(declare-fun bm!268213 () Bool)

(declare-fun c!640887 () Bool)

(declare-fun c!640889 () Bool)

(assert (=> bm!268213 (= call!268217 (usedCharacters!1102 (ite c!640887 (reg!11168 (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))) (ite c!640889 (regTwo!22191 (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))) (regTwo!22190 (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030)))))))))

(declare-fun bm!268214 () Bool)

(declare-fun call!268219 () List!39720)

(declare-fun call!268218 () List!39720)

(assert (=> bm!268214 (= call!268219 (++!9787 call!268218 call!268220))))

(declare-fun b!3710235 () Bool)

(declare-fun e!2297854 () List!39720)

(declare-fun e!2297853 () List!39720)

(assert (=> b!3710235 (= e!2297854 e!2297853)))

(assert (=> b!3710235 (= c!640889 ((_ is Union!10839) (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))))))

(declare-fun b!3710236 () Bool)

(assert (=> b!3710236 (= e!2297855 (Cons!39596 (c!640761 (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))) Nil!39596))))

(declare-fun b!3710237 () Bool)

(assert (=> b!3710237 (= c!640887 ((_ is Star!10839) (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))))))

(assert (=> b!3710237 (= e!2297855 e!2297854)))

(declare-fun d!1086985 () Bool)

(declare-fun c!640890 () Bool)

(assert (=> d!1086985 (= c!640890 (or ((_ is EmptyExpr!10839) (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))) ((_ is EmptyLang!10839) (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030)))))))

(assert (=> d!1086985 (= (usedCharacters!1102 (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))) e!2297852)))

(declare-fun b!3710238 () Bool)

(assert (=> b!3710238 (= e!2297852 Nil!39596)))

(declare-fun b!3710239 () Bool)

(assert (=> b!3710239 (= e!2297853 call!268219)))

(declare-fun b!3710240 () Bool)

(assert (=> b!3710240 (= e!2297853 call!268219)))

(declare-fun b!3710241 () Bool)

(assert (=> b!3710241 (= e!2297854 call!268217)))

(declare-fun bm!268215 () Bool)

(assert (=> bm!268215 (= call!268218 (usedCharacters!1102 (ite c!640889 (regOne!22191 (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))) (regOne!22190 (ite c!640837 (regOne!22191 r!26030) (regOne!22190 r!26030))))))))

(assert (= (and d!1086985 c!640890) b!3710238))

(assert (= (and d!1086985 (not c!640890)) b!3710234))

(assert (= (and b!3710234 c!640888) b!3710236))

(assert (= (and b!3710234 (not c!640888)) b!3710237))

(assert (= (and b!3710237 c!640887) b!3710241))

(assert (= (and b!3710237 (not c!640887)) b!3710235))

(assert (= (and b!3710235 c!640889) b!3710239))

(assert (= (and b!3710235 (not c!640889)) b!3710240))

(assert (= (or b!3710239 b!3710240) bm!268212))

(assert (= (or b!3710239 b!3710240) bm!268215))

(assert (= (or b!3710239 b!3710240) bm!268214))

(assert (= (or b!3710241 bm!268212) bm!268213))

(declare-fun m!4218149 () Bool)

(assert (=> bm!268213 m!4218149))

(declare-fun m!4218151 () Bool)

(assert (=> bm!268214 m!4218151))

(declare-fun m!4218153 () Bool)

(assert (=> bm!268215 m!4218153))

(assert (=> bm!268173 d!1086985))

(declare-fun d!1086987 () Bool)

(assert (not d!1086987))

(assert (=> b!3709873 d!1086987))

(declare-fun d!1086989 () Bool)

(assert (=> d!1086989 (= (isEmpty!23494 Nil!39596) true)))

(assert (=> bm!268127 d!1086989))

(declare-fun d!1086991 () Bool)

(declare-fun c!640893 () Bool)

(assert (=> d!1086991 (= c!640893 ((_ is Nil!39596) (usedCharacters!1102 r!26030)))))

(declare-fun e!2297860 () (InoxSet C!21864))

(assert (=> d!1086991 (= (content!5724 (usedCharacters!1102 r!26030)) e!2297860)))

(declare-fun b!3710250 () Bool)

(assert (=> b!3710250 (= e!2297860 ((as const (Array C!21864 Bool)) false))))

(declare-fun b!3710251 () Bool)

(assert (=> b!3710251 (= e!2297860 ((_ map or) (store ((as const (Array C!21864 Bool)) false) (h!45016 (usedCharacters!1102 r!26030)) true) (content!5724 (t!302403 (usedCharacters!1102 r!26030)))))))

(assert (= (and d!1086991 c!640893) b!3710250))

(assert (= (and d!1086991 (not c!640893)) b!3710251))

(declare-fun m!4218155 () Bool)

(assert (=> b!3710251 m!4218155))

(assert (=> b!3710251 m!4218071))

(assert (=> d!1086933 d!1086991))

(declare-fun d!1086993 () Bool)

(assert (not d!1086993))

(assert (=> b!3709870 d!1086993))

(declare-fun d!1086995 () Bool)

(assert (not d!1086995))

(assert (=> b!3709870 d!1086995))

(assert (=> d!1086911 d!1086989))

(declare-fun d!1086997 () Bool)

(declare-fun res!1508966 () Bool)

(declare-fun e!2297865 () Bool)

(assert (=> d!1086997 (=> res!1508966 e!2297865)))

(assert (=> d!1086997 (= res!1508966 ((_ is ElementMatch!10839) (derivative!353 r!26030 s!14932)))))

(assert (=> d!1086997 (= (validRegex!4946 (derivative!353 r!26030 s!14932)) e!2297865)))

(declare-fun b!3710252 () Bool)

(declare-fun e!2297861 () Bool)

(assert (=> b!3710252 (= e!2297865 e!2297861)))

(declare-fun c!640894 () Bool)

(assert (=> b!3710252 (= c!640894 ((_ is Star!10839) (derivative!353 r!26030 s!14932)))))

(declare-fun b!3710253 () Bool)

(declare-fun res!1508965 () Bool)

(declare-fun e!2297863 () Bool)

(assert (=> b!3710253 (=> (not res!1508965) (not e!2297863))))

(declare-fun call!268223 () Bool)

(assert (=> b!3710253 (= res!1508965 call!268223)))

(declare-fun e!2297864 () Bool)

(assert (=> b!3710253 (= e!2297864 e!2297863)))

(declare-fun c!640895 () Bool)

(declare-fun bm!268216 () Bool)

(declare-fun call!268221 () Bool)

(assert (=> bm!268216 (= call!268221 (validRegex!4946 (ite c!640894 (reg!11168 (derivative!353 r!26030 s!14932)) (ite c!640895 (regTwo!22191 (derivative!353 r!26030 s!14932)) (regOne!22190 (derivative!353 r!26030 s!14932))))))))

(declare-fun b!3710254 () Bool)

(declare-fun e!2297862 () Bool)

(assert (=> b!3710254 (= e!2297862 call!268223)))

(declare-fun b!3710255 () Bool)

(assert (=> b!3710255 (= e!2297861 e!2297864)))

(assert (=> b!3710255 (= c!640895 ((_ is Union!10839) (derivative!353 r!26030 s!14932)))))

(declare-fun b!3710256 () Bool)

(declare-fun res!1508964 () Bool)

(declare-fun e!2297867 () Bool)

(assert (=> b!3710256 (=> res!1508964 e!2297867)))

(assert (=> b!3710256 (= res!1508964 (not ((_ is Concat!17110) (derivative!353 r!26030 s!14932))))))

(assert (=> b!3710256 (= e!2297864 e!2297867)))

(declare-fun bm!268217 () Bool)

(assert (=> bm!268217 (= call!268223 (validRegex!4946 (ite c!640895 (regOne!22191 (derivative!353 r!26030 s!14932)) (regTwo!22190 (derivative!353 r!26030 s!14932)))))))

(declare-fun b!3710257 () Bool)

(assert (=> b!3710257 (= e!2297867 e!2297862)))

(declare-fun res!1508963 () Bool)

(assert (=> b!3710257 (=> (not res!1508963) (not e!2297862))))

(declare-fun call!268222 () Bool)

(assert (=> b!3710257 (= res!1508963 call!268222)))

(declare-fun b!3710258 () Bool)

(declare-fun e!2297866 () Bool)

(assert (=> b!3710258 (= e!2297861 e!2297866)))

(declare-fun res!1508962 () Bool)

(assert (=> b!3710258 (= res!1508962 (not (nullable!3762 (reg!11168 (derivative!353 r!26030 s!14932)))))))

(assert (=> b!3710258 (=> (not res!1508962) (not e!2297866))))

(declare-fun bm!268218 () Bool)

(assert (=> bm!268218 (= call!268222 call!268221)))

(declare-fun b!3710259 () Bool)

(assert (=> b!3710259 (= e!2297866 call!268221)))

(declare-fun b!3710260 () Bool)

(assert (=> b!3710260 (= e!2297863 call!268222)))

(assert (= (and d!1086997 (not res!1508966)) b!3710252))

(assert (= (and b!3710252 c!640894) b!3710258))

(assert (= (and b!3710252 (not c!640894)) b!3710255))

(assert (= (and b!3710258 res!1508962) b!3710259))

(assert (= (and b!3710255 c!640895) b!3710253))

(assert (= (and b!3710255 (not c!640895)) b!3710256))

(assert (= (and b!3710253 res!1508965) b!3710260))

(assert (= (and b!3710256 (not res!1508964)) b!3710257))

(assert (= (and b!3710257 res!1508963) b!3710254))

(assert (= (or b!3710260 b!3710257) bm!268218))

(assert (= (or b!3710253 b!3710254) bm!268217))

(assert (= (or b!3710259 bm!268218) bm!268216))

(declare-fun m!4218157 () Bool)

(assert (=> bm!268216 m!4218157))

(declare-fun m!4218159 () Bool)

(assert (=> bm!268217 m!4218159))

(declare-fun m!4218161 () Bool)

(assert (=> b!3710258 m!4218161))

(assert (=> d!1086911 d!1086997))

(assert (=> b!3709871 d!1086987))

(declare-fun d!1086999 () Bool)

(assert (not d!1086999))

(assert (=> b!3709877 d!1086999))

(declare-fun d!1087001 () Bool)

(assert (not d!1087001))

(assert (=> b!3709877 d!1087001))

(assert (=> b!3709877 d!1086987))

(assert (=> b!3709877 d!1086995))

(assert (=> d!1086903 d!1086951))

(assert (=> d!1086903 d!1086907))

(assert (=> d!1086903 d!1086911))

(assert (=> d!1086903 d!1086947))

(declare-fun d!1087003 () Bool)

(assert (=> d!1087003 (= (matchR!5296 r!26030 s!14932) (matchR!5296 (derivative!353 r!26030 s!14932) Nil!39596))))

(assert (=> d!1087003 true))

(declare-fun _$108!418 () Unit!57488)

(assert (=> d!1087003 (= (choose!22172 r!26030 s!14932) _$108!418)))

(declare-fun bs!574728 () Bool)

(assert (= bs!574728 d!1087003))

(assert (=> bs!574728 m!4217915))

(assert (=> bs!574728 m!4217907))

(assert (=> bs!574728 m!4217907))

(assert (=> bs!574728 m!4217909))

(assert (=> d!1086903 d!1087003))

(assert (=> d!1086951 d!1086979))

(assert (=> d!1086951 d!1086947))

(declare-fun call!268229 () Regex!10839)

(declare-fun e!2297881 () Regex!10839)

(declare-fun b!3710274 () Bool)

(declare-fun call!268228 () Regex!10839)

(assert (=> b!3710274 (= e!2297881 (Union!10839 (Concat!17110 call!268228 (regTwo!22190 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)))) call!268229))))

(declare-fun bm!268222 () Bool)

(declare-fun call!268230 () Regex!10839)

(declare-fun call!268227 () Regex!10839)

(assert (=> bm!268222 (= call!268230 call!268227)))

(declare-fun c!640902 () Bool)

(declare-fun bm!268223 () Bool)

(declare-fun c!640903 () Bool)

(assert (=> bm!268223 (= call!268227 (derivativeStep!3304 (ite c!640902 (regTwo!22191 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))) (ite c!640903 (reg!11168 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))) (regOne!22190 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))))) c!13437))))

(declare-fun bm!268224 () Bool)

(assert (=> bm!268224 (= call!268228 call!268230)))

(declare-fun b!3710275 () Bool)

(assert (=> b!3710275 (= e!2297881 (Union!10839 (Concat!17110 call!268228 (regTwo!22190 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)))) EmptyLang!10839))))

(declare-fun e!2297879 () Regex!10839)

(declare-fun b!3710276 () Bool)

(assert (=> b!3710276 (= e!2297879 (ite (= c!13437 (c!640761 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)))) EmptyExpr!10839 EmptyLang!10839))))

(declare-fun b!3710277 () Bool)

(declare-fun c!640900 () Bool)

(assert (=> b!3710277 (= c!640900 (nullable!3762 (regOne!22190 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)))))))

(declare-fun e!2297877 () Regex!10839)

(assert (=> b!3710277 (= e!2297877 e!2297881)))

(declare-fun b!3710278 () Bool)

(declare-fun e!2297878 () Regex!10839)

(assert (=> b!3710278 (= e!2297878 e!2297877)))

(assert (=> b!3710278 (= c!640903 ((_ is Star!10839) (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))

(declare-fun d!1087009 () Bool)

(declare-fun lt!1296801 () Regex!10839)

(assert (=> d!1087009 (validRegex!4946 lt!1296801)))

(declare-fun e!2297880 () Regex!10839)

(assert (=> d!1087009 (= lt!1296801 e!2297880)))

(declare-fun c!640899 () Bool)

(assert (=> d!1087009 (= c!640899 (or ((_ is EmptyExpr!10839) (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))) ((_ is EmptyLang!10839) (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)))))))

(assert (=> d!1087009 (validRegex!4946 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)))))

(assert (=> d!1087009 (= (derivativeStep!3304 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)) c!13437) lt!1296801)))

(declare-fun bm!268225 () Bool)

(assert (=> bm!268225 (= call!268229 (derivativeStep!3304 (ite c!640902 (regOne!22191 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))) (regTwo!22190 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030)))) c!13437))))

(declare-fun b!3710279 () Bool)

(assert (=> b!3710279 (= c!640902 ((_ is Union!10839) (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))

(assert (=> b!3710279 (= e!2297879 e!2297878)))

(declare-fun b!3710280 () Bool)

(assert (=> b!3710280 (= e!2297877 (Concat!17110 call!268230 (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))

(declare-fun b!3710281 () Bool)

(assert (=> b!3710281 (= e!2297880 EmptyLang!10839)))

(declare-fun b!3710282 () Bool)

(assert (=> b!3710282 (= e!2297880 e!2297879)))

(declare-fun c!640901 () Bool)

(assert (=> b!3710282 (= c!640901 ((_ is ElementMatch!10839) (ite c!640815 (regOne!22191 r!26030) (regTwo!22190 r!26030))))))

(declare-fun b!3710283 () Bool)

(assert (=> b!3710283 (= e!2297878 (Union!10839 call!268229 call!268227))))

(assert (= (and d!1087009 c!640899) b!3710281))

(assert (= (and d!1087009 (not c!640899)) b!3710282))

(assert (= (and b!3710282 c!640901) b!3710276))

(assert (= (and b!3710282 (not c!640901)) b!3710279))

(assert (= (and b!3710279 c!640902) b!3710283))

(assert (= (and b!3710279 (not c!640902)) b!3710278))

(assert (= (and b!3710278 c!640903) b!3710280))

(assert (= (and b!3710278 (not c!640903)) b!3710277))

(assert (= (and b!3710277 c!640900) b!3710274))

(assert (= (and b!3710277 (not c!640900)) b!3710275))

(assert (= (or b!3710274 b!3710275) bm!268224))

(assert (= (or b!3710280 bm!268224) bm!268222))

(assert (= (or b!3710283 bm!268222) bm!268223))

(assert (= (or b!3710283 b!3710274) bm!268225))

(declare-fun m!4218185 () Bool)

(assert (=> bm!268223 m!4218185))

(declare-fun m!4218187 () Bool)

(assert (=> b!3710277 m!4218187))

(declare-fun m!4218189 () Bool)

(assert (=> d!1087009 m!4218189))

(declare-fun m!4218191 () Bool)

(assert (=> d!1087009 m!4218191))

(declare-fun m!4218193 () Bool)

(assert (=> bm!268225 m!4218193))

(assert (=> bm!268151 d!1087009))

(declare-fun d!1087013 () Bool)

(declare-fun res!1508978 () Bool)

(declare-fun e!2297891 () Bool)

(assert (=> d!1087013 (=> res!1508978 e!2297891)))

(assert (=> d!1087013 (= res!1508978 ((_ is ElementMatch!10839) lt!1296777))))

(assert (=> d!1087013 (= (validRegex!4946 lt!1296777) e!2297891)))

(declare-fun b!3710294 () Bool)

(declare-fun e!2297887 () Bool)

(assert (=> b!3710294 (= e!2297891 e!2297887)))

(declare-fun c!640909 () Bool)

(assert (=> b!3710294 (= c!640909 ((_ is Star!10839) lt!1296777))))

(declare-fun b!3710295 () Bool)

(declare-fun res!1508977 () Bool)

(declare-fun e!2297889 () Bool)

(assert (=> b!3710295 (=> (not res!1508977) (not e!2297889))))

(declare-fun call!268237 () Bool)

(assert (=> b!3710295 (= res!1508977 call!268237)))

(declare-fun e!2297890 () Bool)

(assert (=> b!3710295 (= e!2297890 e!2297889)))

(declare-fun bm!268230 () Bool)

(declare-fun c!640910 () Bool)

(declare-fun call!268235 () Bool)

(assert (=> bm!268230 (= call!268235 (validRegex!4946 (ite c!640909 (reg!11168 lt!1296777) (ite c!640910 (regTwo!22191 lt!1296777) (regOne!22190 lt!1296777)))))))

(declare-fun b!3710296 () Bool)

(declare-fun e!2297888 () Bool)

(assert (=> b!3710296 (= e!2297888 call!268237)))

(declare-fun b!3710297 () Bool)

(assert (=> b!3710297 (= e!2297887 e!2297890)))

(assert (=> b!3710297 (= c!640910 ((_ is Union!10839) lt!1296777))))

(declare-fun b!3710298 () Bool)

(declare-fun res!1508976 () Bool)

(declare-fun e!2297893 () Bool)

(assert (=> b!3710298 (=> res!1508976 e!2297893)))

(assert (=> b!3710298 (= res!1508976 (not ((_ is Concat!17110) lt!1296777)))))

(assert (=> b!3710298 (= e!2297890 e!2297893)))

(declare-fun bm!268231 () Bool)

(assert (=> bm!268231 (= call!268237 (validRegex!4946 (ite c!640910 (regOne!22191 lt!1296777) (regTwo!22190 lt!1296777))))))

(declare-fun b!3710299 () Bool)

(assert (=> b!3710299 (= e!2297893 e!2297888)))

(declare-fun res!1508975 () Bool)

(assert (=> b!3710299 (=> (not res!1508975) (not e!2297888))))

(declare-fun call!268236 () Bool)

(assert (=> b!3710299 (= res!1508975 call!268236)))

(declare-fun b!3710300 () Bool)

(declare-fun e!2297892 () Bool)

(assert (=> b!3710300 (= e!2297887 e!2297892)))

(declare-fun res!1508974 () Bool)

(assert (=> b!3710300 (= res!1508974 (not (nullable!3762 (reg!11168 lt!1296777))))))

(assert (=> b!3710300 (=> (not res!1508974) (not e!2297892))))

(declare-fun bm!268232 () Bool)

(assert (=> bm!268232 (= call!268236 call!268235)))

(declare-fun b!3710301 () Bool)

(assert (=> b!3710301 (= e!2297892 call!268235)))

(declare-fun b!3710302 () Bool)

(assert (=> b!3710302 (= e!2297889 call!268236)))

(assert (= (and d!1087013 (not res!1508978)) b!3710294))

(assert (= (and b!3710294 c!640909) b!3710300))

(assert (= (and b!3710294 (not c!640909)) b!3710297))

(assert (= (and b!3710300 res!1508974) b!3710301))

(assert (= (and b!3710297 c!640910) b!3710295))

(assert (= (and b!3710297 (not c!640910)) b!3710298))

(assert (= (and b!3710295 res!1508977) b!3710302))

(assert (= (and b!3710298 (not res!1508976)) b!3710299))

(assert (= (and b!3710299 res!1508975) b!3710296))

(assert (= (or b!3710302 b!3710299) bm!268232))

(assert (= (or b!3710295 b!3710296) bm!268231))

(assert (= (or b!3710301 bm!268232) bm!268230))

(declare-fun m!4218205 () Bool)

(assert (=> bm!268230 m!4218205))

(declare-fun m!4218207 () Bool)

(assert (=> bm!268231 m!4218207))

(declare-fun m!4218209 () Bool)

(assert (=> b!3710300 m!4218209))

(assert (=> d!1086919 d!1087013))

(assert (=> d!1086919 d!1086947))

(declare-fun d!1087017 () Bool)

(assert (=> d!1087017 (= (nullable!3762 (derivative!353 r!26030 s!14932)) (nullableFct!1054 (derivative!353 r!26030 s!14932)))))

(declare-fun bs!574730 () Bool)

(assert (= bs!574730 d!1087017))

(assert (=> bs!574730 m!4217907))

(declare-fun m!4218211 () Bool)

(assert (=> bs!574730 m!4218211))

(assert (=> b!3709874 d!1087017))

(assert (=> b!3709875 d!1086993))

(assert (=> b!3709875 d!1086995))

(declare-fun bm!268252 () Bool)

(declare-fun c!640929 () Bool)

(declare-fun call!268258 () Bool)

(assert (=> bm!268252 (= call!268258 (nullable!3762 (ite c!640929 (regTwo!22191 (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))) (regOne!22190 (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))))))))

(declare-fun b!3710354 () Bool)

(declare-fun e!2297932 () Bool)

(declare-fun call!268257 () Bool)

(assert (=> b!3710354 (= e!2297932 call!268257)))

(declare-fun b!3710355 () Bool)

(declare-fun e!2297927 () Bool)

(declare-fun e!2297931 () Bool)

(assert (=> b!3710355 (= e!2297927 e!2297931)))

(assert (=> b!3710355 (= c!640929 ((_ is Union!10839) (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))))))

(declare-fun bm!268253 () Bool)

(assert (=> bm!268253 (= call!268257 (nullable!3762 (ite c!640929 (regOne!22191 (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))) (regTwo!22190 (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))))))))

(declare-fun b!3710356 () Bool)

(declare-fun e!2297930 () Bool)

(assert (=> b!3710356 (= e!2297931 e!2297930)))

(declare-fun res!1508998 () Bool)

(assert (=> b!3710356 (= res!1508998 call!268257)))

(assert (=> b!3710356 (=> res!1508998 e!2297930)))

(declare-fun b!3710358 () Bool)

(assert (=> b!3710358 (= e!2297931 e!2297932)))

(declare-fun res!1508996 () Bool)

(assert (=> b!3710358 (= res!1508996 call!268258)))

(assert (=> b!3710358 (=> (not res!1508996) (not e!2297932))))

(declare-fun b!3710359 () Bool)

(declare-fun e!2297929 () Bool)

(assert (=> b!3710359 (= e!2297929 e!2297927)))

(declare-fun res!1508997 () Bool)

(assert (=> b!3710359 (=> res!1508997 e!2297927)))

(assert (=> b!3710359 (= res!1508997 ((_ is Star!10839) (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))))))

(declare-fun b!3710360 () Bool)

(assert (=> b!3710360 (= e!2297930 call!268258)))

(declare-fun b!3710357 () Bool)

(declare-fun e!2297928 () Bool)

(assert (=> b!3710357 (= e!2297928 e!2297929)))

(declare-fun res!1508994 () Bool)

(assert (=> b!3710357 (=> (not res!1508994) (not e!2297929))))

(assert (=> b!3710357 (= res!1508994 (and (not ((_ is EmptyLang!10839) (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932)))) (not ((_ is ElementMatch!10839) (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))))))))

(declare-fun d!1087019 () Bool)

(declare-fun res!1508995 () Bool)

(assert (=> d!1087019 (=> res!1508995 e!2297928)))

(assert (=> d!1087019 (= res!1508995 ((_ is EmptyExpr!10839) (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))))))

(assert (=> d!1087019 (= (nullableFct!1054 (derivative!353 (derivativeStep!3304 r!26030 c!13437) (tail!5744 s!14932))) e!2297928)))

(assert (= (and d!1087019 (not res!1508995)) b!3710357))

(assert (= (and b!3710357 res!1508994) b!3710359))

(assert (= (and b!3710359 (not res!1508997)) b!3710355))

(assert (= (and b!3710355 c!640929) b!3710356))

(assert (= (and b!3710355 (not c!640929)) b!3710358))

(assert (= (and b!3710356 (not res!1508998)) b!3710360))

(assert (= (and b!3710358 res!1508996) b!3710354))

(assert (= (or b!3710356 b!3710354) bm!268253))

(assert (= (or b!3710360 b!3710358) bm!268252))

(declare-fun m!4218243 () Bool)

(assert (=> bm!268252 m!4218243))

(declare-fun m!4218245 () Bool)

(assert (=> bm!268253 m!4218245))

(assert (=> d!1086929 d!1087019))

(declare-fun d!1087035 () Bool)

(declare-fun lt!1296805 () Bool)

(assert (=> d!1087035 (= lt!1296805 (select (content!5724 (t!302403 s!14932)) c!13437))))

(declare-fun e!2297933 () Bool)

(assert (=> d!1087035 (= lt!1296805 e!2297933)))

(declare-fun res!1508999 () Bool)

(assert (=> d!1087035 (=> (not res!1508999) (not e!2297933))))

(assert (=> d!1087035 (= res!1508999 ((_ is Cons!39596) (t!302403 s!14932)))))

(assert (=> d!1087035 (= (contains!7932 (t!302403 s!14932) c!13437) lt!1296805)))

(declare-fun b!3710361 () Bool)

(declare-fun e!2297934 () Bool)

(assert (=> b!3710361 (= e!2297933 e!2297934)))

(declare-fun res!1509000 () Bool)

(assert (=> b!3710361 (=> res!1509000 e!2297934)))

(assert (=> b!3710361 (= res!1509000 (= (h!45016 (t!302403 s!14932)) c!13437))))

(declare-fun b!3710362 () Bool)

(assert (=> b!3710362 (= e!2297934 (contains!7932 (t!302403 (t!302403 s!14932)) c!13437))))

(assert (= (and d!1087035 res!1508999) b!3710361))

(assert (= (and b!3710361 (not res!1509000)) b!3710362))

(assert (=> d!1087035 m!4218079))

(declare-fun m!4218253 () Bool)

(assert (=> d!1087035 m!4218253))

(declare-fun m!4218255 () Bool)

(assert (=> b!3710362 m!4218255))

(assert (=> b!3710039 d!1087035))

(declare-fun d!1087039 () Bool)

(assert (=> d!1087039 (= (nullable!3762 (regOne!22190 r!26030)) (nullableFct!1054 (regOne!22190 r!26030)))))

(declare-fun bs!574732 () Bool)

(assert (= bs!574732 d!1087039))

(declare-fun m!4218257 () Bool)

(assert (=> bs!574732 m!4218257))

(assert (=> b!3709934 d!1087039))

(assert (=> b!3710116 d!1086943))

(declare-fun b!3710372 () Bool)

(declare-fun e!2297942 () List!39720)

(declare-fun e!2297945 () List!39720)

(assert (=> b!3710372 (= e!2297942 e!2297945)))

(declare-fun c!640933 () Bool)

(assert (=> b!3710372 (= c!640933 ((_ is ElementMatch!10839) (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))))))

(declare-fun bm!268257 () Bool)

(declare-fun call!268265 () List!39720)

(declare-fun call!268262 () List!39720)

(assert (=> bm!268257 (= call!268265 call!268262)))

(declare-fun c!640934 () Bool)

(declare-fun bm!268258 () Bool)

(declare-fun c!640932 () Bool)

(assert (=> bm!268258 (= call!268262 (usedCharacters!1102 (ite c!640932 (reg!11168 (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))) (ite c!640934 (regTwo!22191 (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))) (regTwo!22190 (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030))))))))))

(declare-fun bm!268259 () Bool)

(declare-fun call!268264 () List!39720)

(declare-fun call!268263 () List!39720)

(assert (=> bm!268259 (= call!268264 (++!9787 call!268263 call!268265))))

(declare-fun b!3710373 () Bool)

(declare-fun e!2297944 () List!39720)

(declare-fun e!2297943 () List!39720)

(assert (=> b!3710373 (= e!2297944 e!2297943)))

(assert (=> b!3710373 (= c!640934 ((_ is Union!10839) (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))))))

(declare-fun b!3710374 () Bool)

(assert (=> b!3710374 (= e!2297945 (Cons!39596 (c!640761 (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))) Nil!39596))))

(declare-fun b!3710375 () Bool)

(assert (=> b!3710375 (= c!640932 ((_ is Star!10839) (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))))))

(assert (=> b!3710375 (= e!2297945 e!2297944)))

(declare-fun d!1087041 () Bool)

(declare-fun c!640935 () Bool)

(assert (=> d!1087041 (= c!640935 (or ((_ is EmptyExpr!10839) (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))) ((_ is EmptyLang!10839) (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030))))))))

(assert (=> d!1087041 (= (usedCharacters!1102 (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))) e!2297942)))

(declare-fun b!3710376 () Bool)

(assert (=> b!3710376 (= e!2297942 Nil!39596)))

(declare-fun b!3710377 () Bool)

(assert (=> b!3710377 (= e!2297943 call!268264)))

(declare-fun b!3710378 () Bool)

(assert (=> b!3710378 (= e!2297943 call!268264)))

(declare-fun b!3710379 () Bool)

(assert (=> b!3710379 (= e!2297944 call!268262)))

(declare-fun bm!268260 () Bool)

(assert (=> bm!268260 (= call!268263 (usedCharacters!1102 (ite c!640934 (regOne!22191 (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))) (regOne!22190 (ite c!640835 (reg!11168 r!26030) (ite c!640837 (regTwo!22191 r!26030) (regTwo!22190 r!26030)))))))))

(assert (= (and d!1087041 c!640935) b!3710376))

(assert (= (and d!1087041 (not c!640935)) b!3710372))

(assert (= (and b!3710372 c!640933) b!3710374))

(assert (= (and b!3710372 (not c!640933)) b!3710375))

(assert (= (and b!3710375 c!640932) b!3710379))

(assert (= (and b!3710375 (not c!640932)) b!3710373))

(assert (= (and b!3710373 c!640934) b!3710377))

(assert (= (and b!3710373 (not c!640934)) b!3710378))

(assert (= (or b!3710377 b!3710378) bm!268257))

(assert (= (or b!3710377 b!3710378) bm!268260))

(assert (= (or b!3710377 b!3710378) bm!268259))

(assert (= (or b!3710379 bm!268257) bm!268258))

(declare-fun m!4218265 () Bool)

(assert (=> bm!268258 m!4218265))

(declare-fun m!4218267 () Bool)

(assert (=> bm!268259 m!4218267))

(declare-fun m!4218269 () Bool)

(assert (=> bm!268260 m!4218269))

(assert (=> bm!268171 d!1087041))

(declare-fun d!1087045 () Bool)

(declare-fun res!1509018 () Bool)

(declare-fun e!2297957 () Bool)

(assert (=> d!1087045 (=> res!1509018 e!2297957)))

(assert (=> d!1087045 (= res!1509018 ((_ is ElementMatch!10839) lt!1296764))))

(assert (=> d!1087045 (= (validRegex!4946 lt!1296764) e!2297957)))

(declare-fun b!3710394 () Bool)

(declare-fun e!2297953 () Bool)

(assert (=> b!3710394 (= e!2297957 e!2297953)))

(declare-fun c!640939 () Bool)

(assert (=> b!3710394 (= c!640939 ((_ is Star!10839) lt!1296764))))

(declare-fun b!3710395 () Bool)

(declare-fun res!1509017 () Bool)

(declare-fun e!2297955 () Bool)

(assert (=> b!3710395 (=> (not res!1509017) (not e!2297955))))

(declare-fun call!268269 () Bool)

(assert (=> b!3710395 (= res!1509017 call!268269)))

(declare-fun e!2297956 () Bool)

(assert (=> b!3710395 (= e!2297956 e!2297955)))

(declare-fun bm!268262 () Bool)

(declare-fun c!640940 () Bool)

(declare-fun call!268267 () Bool)

(assert (=> bm!268262 (= call!268267 (validRegex!4946 (ite c!640939 (reg!11168 lt!1296764) (ite c!640940 (regTwo!22191 lt!1296764) (regOne!22190 lt!1296764)))))))

(declare-fun b!3710396 () Bool)

(declare-fun e!2297954 () Bool)

(assert (=> b!3710396 (= e!2297954 call!268269)))

(declare-fun b!3710397 () Bool)

(assert (=> b!3710397 (= e!2297953 e!2297956)))

(assert (=> b!3710397 (= c!640940 ((_ is Union!10839) lt!1296764))))

(declare-fun b!3710398 () Bool)

(declare-fun res!1509016 () Bool)

(declare-fun e!2297959 () Bool)

(assert (=> b!3710398 (=> res!1509016 e!2297959)))

(assert (=> b!3710398 (= res!1509016 (not ((_ is Concat!17110) lt!1296764)))))

(assert (=> b!3710398 (= e!2297956 e!2297959)))

(declare-fun bm!268263 () Bool)

(assert (=> bm!268263 (= call!268269 (validRegex!4946 (ite c!640940 (regOne!22191 lt!1296764) (regTwo!22190 lt!1296764))))))

(declare-fun b!3710399 () Bool)

(assert (=> b!3710399 (= e!2297959 e!2297954)))

(declare-fun res!1509015 () Bool)

(assert (=> b!3710399 (=> (not res!1509015) (not e!2297954))))

(declare-fun call!268268 () Bool)

(assert (=> b!3710399 (= res!1509015 call!268268)))

(declare-fun b!3710400 () Bool)

(declare-fun e!2297958 () Bool)

(assert (=> b!3710400 (= e!2297953 e!2297958)))

(declare-fun res!1509014 () Bool)

(assert (=> b!3710400 (= res!1509014 (not (nullable!3762 (reg!11168 lt!1296764))))))

(assert (=> b!3710400 (=> (not res!1509014) (not e!2297958))))

(declare-fun bm!268264 () Bool)

(assert (=> bm!268264 (= call!268268 call!268267)))

(declare-fun b!3710401 () Bool)

(assert (=> b!3710401 (= e!2297958 call!268267)))

(declare-fun b!3710402 () Bool)

(assert (=> b!3710402 (= e!2297955 call!268268)))

(assert (= (and d!1087045 (not res!1509018)) b!3710394))

(assert (= (and b!3710394 c!640939) b!3710400))

(assert (= (and b!3710394 (not c!640939)) b!3710397))

(assert (= (and b!3710400 res!1509014) b!3710401))

(assert (= (and b!3710397 c!640940) b!3710395))

(assert (= (and b!3710397 (not c!640940)) b!3710398))

(assert (= (and b!3710395 res!1509017) b!3710402))

(assert (= (and b!3710398 (not res!1509016)) b!3710399))

(assert (= (and b!3710399 res!1509015) b!3710396))

(assert (= (or b!3710402 b!3710399) bm!268264))

(assert (= (or b!3710395 b!3710396) bm!268263))

(assert (= (or b!3710401 bm!268264) bm!268262))

(declare-fun m!4218271 () Bool)

(assert (=> bm!268262 m!4218271))

(declare-fun m!4218273 () Bool)

(assert (=> bm!268263 m!4218273))

(declare-fun m!4218275 () Bool)

(assert (=> b!3710400 m!4218275))

(assert (=> d!1086907 d!1087045))

(assert (=> d!1086907 d!1086947))

(declare-fun d!1087047 () Bool)

(declare-fun lt!1296807 () Regex!10839)

(assert (=> d!1087047 (validRegex!4946 lt!1296807)))

(declare-fun e!2297960 () Regex!10839)

(assert (=> d!1087047 (= lt!1296807 e!2297960)))

(declare-fun c!640941 () Bool)

(assert (=> d!1087047 (= c!640941 ((_ is Cons!39596) (t!302403 s!14932)))))

(assert (=> d!1087047 (validRegex!4946 (derivativeStep!3304 r!26030 (h!45016 s!14932)))))

(assert (=> d!1087047 (= (derivative!353 (derivativeStep!3304 r!26030 (h!45016 s!14932)) (t!302403 s!14932)) lt!1296807)))

(declare-fun b!3710403 () Bool)

(assert (=> b!3710403 (= e!2297960 (derivative!353 (derivativeStep!3304 (derivativeStep!3304 r!26030 (h!45016 s!14932)) (h!45016 (t!302403 s!14932))) (t!302403 (t!302403 s!14932))))))

(declare-fun b!3710404 () Bool)

(assert (=> b!3710404 (= e!2297960 (derivativeStep!3304 r!26030 (h!45016 s!14932)))))

(assert (= (and d!1087047 c!640941) b!3710403))

(assert (= (and d!1087047 (not c!640941)) b!3710404))

(declare-fun m!4218277 () Bool)

(assert (=> d!1087047 m!4218277))

(assert (=> d!1087047 m!4217929))

(declare-fun m!4218281 () Bool)

(assert (=> d!1087047 m!4218281))

(assert (=> b!3710403 m!4217929))

(declare-fun m!4218283 () Bool)

(assert (=> b!3710403 m!4218283))

(assert (=> b!3710403 m!4218283))

(declare-fun m!4218287 () Bool)

(assert (=> b!3710403 m!4218287))

(assert (=> b!3709793 d!1087047))

(declare-fun b!3710405 () Bool)

(declare-fun call!268272 () Regex!10839)

(declare-fun call!268271 () Regex!10839)

(declare-fun e!2297965 () Regex!10839)

(assert (=> b!3710405 (= e!2297965 (Union!10839 (Concat!17110 call!268271 (regTwo!22190 r!26030)) call!268272))))

(declare-fun bm!268265 () Bool)

(declare-fun call!268273 () Regex!10839)

(declare-fun call!268270 () Regex!10839)

(assert (=> bm!268265 (= call!268273 call!268270)))

(declare-fun bm!268266 () Bool)

(declare-fun c!640946 () Bool)

(declare-fun c!640945 () Bool)

(assert (=> bm!268266 (= call!268270 (derivativeStep!3304 (ite c!640945 (regTwo!22191 r!26030) (ite c!640946 (reg!11168 r!26030) (regOne!22190 r!26030))) (h!45016 s!14932)))))

(declare-fun bm!268267 () Bool)

(assert (=> bm!268267 (= call!268271 call!268273)))

(declare-fun b!3710406 () Bool)

(assert (=> b!3710406 (= e!2297965 (Union!10839 (Concat!17110 call!268271 (regTwo!22190 r!26030)) EmptyLang!10839))))

(declare-fun b!3710407 () Bool)

(declare-fun e!2297963 () Regex!10839)

(assert (=> b!3710407 (= e!2297963 (ite (= (h!45016 s!14932) (c!640761 r!26030)) EmptyExpr!10839 EmptyLang!10839))))

(declare-fun b!3710408 () Bool)

(declare-fun c!640943 () Bool)

(assert (=> b!3710408 (= c!640943 (nullable!3762 (regOne!22190 r!26030)))))

(declare-fun e!2297961 () Regex!10839)

(assert (=> b!3710408 (= e!2297961 e!2297965)))

(declare-fun b!3710409 () Bool)

(declare-fun e!2297962 () Regex!10839)

(assert (=> b!3710409 (= e!2297962 e!2297961)))

(assert (=> b!3710409 (= c!640946 ((_ is Star!10839) r!26030))))

(declare-fun d!1087049 () Bool)

(declare-fun lt!1296808 () Regex!10839)

(assert (=> d!1087049 (validRegex!4946 lt!1296808)))

(declare-fun e!2297964 () Regex!10839)

(assert (=> d!1087049 (= lt!1296808 e!2297964)))

(declare-fun c!640942 () Bool)

(assert (=> d!1087049 (= c!640942 (or ((_ is EmptyExpr!10839) r!26030) ((_ is EmptyLang!10839) r!26030)))))

(assert (=> d!1087049 (validRegex!4946 r!26030)))

(assert (=> d!1087049 (= (derivativeStep!3304 r!26030 (h!45016 s!14932)) lt!1296808)))

(declare-fun bm!268268 () Bool)

(assert (=> bm!268268 (= call!268272 (derivativeStep!3304 (ite c!640945 (regOne!22191 r!26030) (regTwo!22190 r!26030)) (h!45016 s!14932)))))

(declare-fun b!3710410 () Bool)

(assert (=> b!3710410 (= c!640945 ((_ is Union!10839) r!26030))))

(assert (=> b!3710410 (= e!2297963 e!2297962)))

(declare-fun b!3710411 () Bool)

(assert (=> b!3710411 (= e!2297961 (Concat!17110 call!268273 r!26030))))

(declare-fun b!3710412 () Bool)

(assert (=> b!3710412 (= e!2297964 EmptyLang!10839)))

(declare-fun b!3710413 () Bool)

(assert (=> b!3710413 (= e!2297964 e!2297963)))

(declare-fun c!640944 () Bool)

(assert (=> b!3710413 (= c!640944 ((_ is ElementMatch!10839) r!26030))))

(declare-fun b!3710414 () Bool)

(assert (=> b!3710414 (= e!2297962 (Union!10839 call!268272 call!268270))))

(assert (= (and d!1087049 c!640942) b!3710412))

(assert (= (and d!1087049 (not c!640942)) b!3710413))

(assert (= (and b!3710413 c!640944) b!3710407))

(assert (= (and b!3710413 (not c!640944)) b!3710410))

(assert (= (and b!3710410 c!640945) b!3710414))

(assert (= (and b!3710410 (not c!640945)) b!3710409))

(assert (= (and b!3710409 c!640946) b!3710411))

(assert (= (and b!3710409 (not c!640946)) b!3710408))

(assert (= (and b!3710408 c!640943) b!3710405))

(assert (= (and b!3710408 (not c!640943)) b!3710406))

(assert (= (or b!3710405 b!3710406) bm!268267))

(assert (= (or b!3710411 bm!268267) bm!268265))

(assert (= (or b!3710414 bm!268265) bm!268266))

(assert (= (or b!3710414 b!3710405) bm!268268))

(declare-fun m!4218299 () Bool)

(assert (=> bm!268266 m!4218299))

(assert (=> b!3710408 m!4217985))

(declare-fun m!4218301 () Bool)

(assert (=> d!1087049 m!4218301))

(assert (=> d!1087049 m!4217895))

(declare-fun m!4218303 () Bool)

(assert (=> bm!268268 m!4218303))

(assert (=> b!3709793 d!1087049))

(declare-fun d!1087053 () Bool)

(declare-fun res!1509023 () Bool)

(declare-fun e!2297975 () Bool)

(assert (=> d!1087053 (=> res!1509023 e!2297975)))

(assert (=> d!1087053 (= res!1509023 ((_ is ElementMatch!10839) (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))))))

(assert (=> d!1087053 (= (validRegex!4946 (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))) e!2297975)))

(declare-fun b!3710425 () Bool)

(declare-fun e!2297971 () Bool)

(assert (=> b!3710425 (= e!2297975 e!2297971)))

(declare-fun c!640952 () Bool)

(assert (=> b!3710425 (= c!640952 ((_ is Star!10839) (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))))))

(declare-fun b!3710426 () Bool)

(declare-fun res!1509022 () Bool)

(declare-fun e!2297973 () Bool)

(assert (=> b!3710426 (=> (not res!1509022) (not e!2297973))))

(declare-fun call!268280 () Bool)

(assert (=> b!3710426 (= res!1509022 call!268280)))

(declare-fun e!2297974 () Bool)

(assert (=> b!3710426 (= e!2297974 e!2297973)))

(declare-fun bm!268273 () Bool)

(declare-fun c!640953 () Bool)

(declare-fun call!268278 () Bool)

(assert (=> bm!268273 (= call!268278 (validRegex!4946 (ite c!640952 (reg!11168 (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))) (ite c!640953 (regTwo!22191 (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))) (regOne!22190 (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030))))))))))

(declare-fun b!3710427 () Bool)

(declare-fun e!2297972 () Bool)

(assert (=> b!3710427 (= e!2297972 call!268280)))

(declare-fun b!3710428 () Bool)

(assert (=> b!3710428 (= e!2297971 e!2297974)))

(assert (=> b!3710428 (= c!640953 ((_ is Union!10839) (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))))))

(declare-fun b!3710429 () Bool)

(declare-fun res!1509021 () Bool)

(declare-fun e!2297977 () Bool)

(assert (=> b!3710429 (=> res!1509021 e!2297977)))

(assert (=> b!3710429 (= res!1509021 (not ((_ is Concat!17110) (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030))))))))

(assert (=> b!3710429 (= e!2297974 e!2297977)))

(declare-fun bm!268274 () Bool)

(assert (=> bm!268274 (= call!268280 (validRegex!4946 (ite c!640953 (regOne!22191 (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))) (regTwo!22190 (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))))))))

(declare-fun b!3710430 () Bool)

(assert (=> b!3710430 (= e!2297977 e!2297972)))

(declare-fun res!1509020 () Bool)

(assert (=> b!3710430 (=> (not res!1509020) (not e!2297972))))

(declare-fun call!268279 () Bool)

(assert (=> b!3710430 (= res!1509020 call!268279)))

(declare-fun b!3710431 () Bool)

(declare-fun e!2297976 () Bool)

(assert (=> b!3710431 (= e!2297971 e!2297976)))

(declare-fun res!1509019 () Bool)

(assert (=> b!3710431 (= res!1509019 (not (nullable!3762 (reg!11168 (ite c!640855 (reg!11168 r!26030) (ite c!640856 (regTwo!22191 r!26030) (regOne!22190 r!26030)))))))))

(assert (=> b!3710431 (=> (not res!1509019) (not e!2297976))))

(declare-fun bm!268275 () Bool)

(assert (=> bm!268275 (= call!268279 call!268278)))

(declare-fun b!3710432 () Bool)

(assert (=> b!3710432 (= e!2297976 call!268278)))

(declare-fun b!3710433 () Bool)

(assert (=> b!3710433 (= e!2297973 call!268279)))

(assert (= (and d!1087053 (not res!1509023)) b!3710425))

(assert (= (and b!3710425 c!640952) b!3710431))

(assert (= (and b!3710425 (not c!640952)) b!3710428))

(assert (= (and b!3710431 res!1509019) b!3710432))

(assert (= (and b!3710428 c!640953) b!3710426))

(assert (= (and b!3710428 (not c!640953)) b!3710429))

(assert (= (and b!3710426 res!1509022) b!3710433))

(assert (= (and b!3710429 (not res!1509021)) b!3710430))

(assert (= (and b!3710430 res!1509020) b!3710427))

(assert (= (or b!3710433 b!3710430) bm!268275))

(assert (= (or b!3710426 b!3710427) bm!268274))

(assert (= (or b!3710432 bm!268275) bm!268273))

(declare-fun m!4218311 () Bool)

(assert (=> bm!268273 m!4218311))

(declare-fun m!4218315 () Bool)

(assert (=> bm!268274 m!4218315))

(declare-fun m!4218317 () Bool)

(assert (=> b!3710431 m!4218317))

(assert (=> bm!268192 d!1087053))

(declare-fun d!1087059 () Bool)

(declare-fun res!1509028 () Bool)

(declare-fun e!2297983 () Bool)

(assert (=> d!1087059 (=> res!1509028 e!2297983)))

(assert (=> d!1087059 (= res!1509028 ((_ is ElementMatch!10839) lt!1296779))))

(assert (=> d!1087059 (= (validRegex!4946 lt!1296779) e!2297983)))

(declare-fun b!3710436 () Bool)

(declare-fun e!2297979 () Bool)

(assert (=> b!3710436 (= e!2297983 e!2297979)))

(declare-fun c!640955 () Bool)

(assert (=> b!3710436 (= c!640955 ((_ is Star!10839) lt!1296779))))

(declare-fun b!3710437 () Bool)

(declare-fun res!1509027 () Bool)

(declare-fun e!2297981 () Bool)

(assert (=> b!3710437 (=> (not res!1509027) (not e!2297981))))

(declare-fun call!268283 () Bool)

(assert (=> b!3710437 (= res!1509027 call!268283)))

(declare-fun e!2297982 () Bool)

(assert (=> b!3710437 (= e!2297982 e!2297981)))

(declare-fun call!268281 () Bool)

(declare-fun c!640956 () Bool)

(declare-fun bm!268276 () Bool)

(assert (=> bm!268276 (= call!268281 (validRegex!4946 (ite c!640955 (reg!11168 lt!1296779) (ite c!640956 (regTwo!22191 lt!1296779) (regOne!22190 lt!1296779)))))))

(declare-fun b!3710438 () Bool)

(declare-fun e!2297980 () Bool)

(assert (=> b!3710438 (= e!2297980 call!268283)))

(declare-fun b!3710439 () Bool)

(assert (=> b!3710439 (= e!2297979 e!2297982)))

(assert (=> b!3710439 (= c!640956 ((_ is Union!10839) lt!1296779))))

(declare-fun b!3710440 () Bool)

(declare-fun res!1509026 () Bool)

(declare-fun e!2297985 () Bool)

(assert (=> b!3710440 (=> res!1509026 e!2297985)))

(assert (=> b!3710440 (= res!1509026 (not ((_ is Concat!17110) lt!1296779)))))

(assert (=> b!3710440 (= e!2297982 e!2297985)))

(declare-fun bm!268277 () Bool)

(assert (=> bm!268277 (= call!268283 (validRegex!4946 (ite c!640956 (regOne!22191 lt!1296779) (regTwo!22190 lt!1296779))))))

(declare-fun b!3710441 () Bool)

(assert (=> b!3710441 (= e!2297985 e!2297980)))

(declare-fun res!1509025 () Bool)

(assert (=> b!3710441 (=> (not res!1509025) (not e!2297980))))

(declare-fun call!268282 () Bool)

(assert (=> b!3710441 (= res!1509025 call!268282)))

(declare-fun b!3710442 () Bool)

(declare-fun e!2297984 () Bool)

(assert (=> b!3710442 (= e!2297979 e!2297984)))

(declare-fun res!1509024 () Bool)

(assert (=> b!3710442 (= res!1509024 (not (nullable!3762 (reg!11168 lt!1296779))))))

(assert (=> b!3710442 (=> (not res!1509024) (not e!2297984))))

(declare-fun bm!268278 () Bool)

(assert (=> bm!268278 (= call!268282 call!268281)))

(declare-fun b!3710443 () Bool)

(assert (=> b!3710443 (= e!2297984 call!268281)))

(declare-fun b!3710444 () Bool)

(assert (=> b!3710444 (= e!2297981 call!268282)))

(assert (= (and d!1087059 (not res!1509028)) b!3710436))

(assert (= (and b!3710436 c!640955) b!3710442))

(assert (= (and b!3710436 (not c!640955)) b!3710439))

(assert (= (and b!3710442 res!1509024) b!3710443))

(assert (= (and b!3710439 c!640956) b!3710437))

(assert (= (and b!3710439 (not c!640956)) b!3710440))

(assert (= (and b!3710437 res!1509027) b!3710444))

(assert (= (and b!3710440 (not res!1509026)) b!3710441))

(assert (= (and b!3710441 res!1509025) b!3710438))

(assert (= (or b!3710444 b!3710441) bm!268278))

(assert (= (or b!3710437 b!3710438) bm!268277))

(assert (= (or b!3710443 bm!268278) bm!268276))

(declare-fun m!4218327 () Bool)

(assert (=> bm!268276 m!4218327))

(declare-fun m!4218329 () Bool)

(assert (=> bm!268277 m!4218329))

(declare-fun m!4218331 () Bool)

(assert (=> b!3710442 m!4218331))

(assert (=> d!1086927 d!1087059))

(declare-fun d!1087063 () Bool)

(declare-fun res!1509033 () Bool)

(declare-fun e!2297995 () Bool)

(assert (=> d!1087063 (=> res!1509033 e!2297995)))

(assert (=> d!1087063 (= res!1509033 ((_ is ElementMatch!10839) (derivativeStep!3304 r!26030 c!13437)))))

(assert (=> d!1087063 (= (validRegex!4946 (derivativeStep!3304 r!26030 c!13437)) e!2297995)))

(declare-fun b!3710455 () Bool)

(declare-fun e!2297991 () Bool)

(assert (=> b!3710455 (= e!2297995 e!2297991)))

(declare-fun c!640962 () Bool)

(assert (=> b!3710455 (= c!640962 ((_ is Star!10839) (derivativeStep!3304 r!26030 c!13437)))))

(declare-fun b!3710456 () Bool)

(declare-fun res!1509032 () Bool)

(declare-fun e!2297993 () Bool)

(assert (=> b!3710456 (=> (not res!1509032) (not e!2297993))))

(declare-fun call!268290 () Bool)

(assert (=> b!3710456 (= res!1509032 call!268290)))

(declare-fun e!2297994 () Bool)

(assert (=> b!3710456 (= e!2297994 e!2297993)))

(declare-fun bm!268283 () Bool)

(declare-fun call!268288 () Bool)

(declare-fun c!640963 () Bool)

(assert (=> bm!268283 (= call!268288 (validRegex!4946 (ite c!640962 (reg!11168 (derivativeStep!3304 r!26030 c!13437)) (ite c!640963 (regTwo!22191 (derivativeStep!3304 r!26030 c!13437)) (regOne!22190 (derivativeStep!3304 r!26030 c!13437))))))))

(declare-fun b!3710457 () Bool)

(declare-fun e!2297992 () Bool)

(assert (=> b!3710457 (= e!2297992 call!268290)))

(declare-fun b!3710458 () Bool)

(assert (=> b!3710458 (= e!2297991 e!2297994)))

(assert (=> b!3710458 (= c!640963 ((_ is Union!10839) (derivativeStep!3304 r!26030 c!13437)))))

(declare-fun b!3710459 () Bool)

(declare-fun res!1509031 () Bool)

(declare-fun e!2297997 () Bool)

(assert (=> b!3710459 (=> res!1509031 e!2297997)))

(assert (=> b!3710459 (= res!1509031 (not ((_ is Concat!17110) (derivativeStep!3304 r!26030 c!13437))))))

(assert (=> b!3710459 (= e!2297994 e!2297997)))

(declare-fun bm!268284 () Bool)

(assert (=> bm!268284 (= call!268290 (validRegex!4946 (ite c!640963 (regOne!22191 (derivativeStep!3304 r!26030 c!13437)) (regTwo!22190 (derivativeStep!3304 r!26030 c!13437)))))))

(declare-fun b!3710460 () Bool)

(assert (=> b!3710460 (= e!2297997 e!2297992)))

(declare-fun res!1509030 () Bool)

(assert (=> b!3710460 (=> (not res!1509030) (not e!2297992))))

(declare-fun call!268289 () Bool)

(assert (=> b!3710460 (= res!1509030 call!268289)))

(declare-fun b!3710461 () Bool)

(declare-fun e!2297996 () Bool)

(assert (=> b!3710461 (= e!2297991 e!2297996)))

(declare-fun res!1509029 () Bool)

(assert (=> b!3710461 (= res!1509029 (not (nullable!3762 (reg!11168 (derivativeStep!3304 r!26030 c!13437)))))))

(assert (=> b!3710461 (=> (not res!1509029) (not e!2297996))))

(declare-fun bm!268285 () Bool)

(assert (=> bm!268285 (= call!268289 call!268288)))

(declare-fun b!3710462 () Bool)

(assert (=> b!3710462 (= e!2297996 call!268288)))

(declare-fun b!3710463 () Bool)

(assert (=> b!3710463 (= e!2297993 call!268289)))

(assert (= (and d!1087063 (not res!1509033)) b!3710455))

(assert (= (and b!3710455 c!640962) b!3710461))

(assert (= (and b!3710455 (not c!640962)) b!3710458))

(assert (= (and b!3710461 res!1509029) b!3710462))

(assert (= (and b!3710458 c!640963) b!3710456))

(assert (= (and b!3710458 (not c!640963)) b!3710459))

(assert (= (and b!3710456 res!1509032) b!3710463))

(assert (= (and b!3710459 (not res!1509031)) b!3710460))

(assert (= (and b!3710460 res!1509030) b!3710457))

(assert (= (or b!3710463 b!3710460) bm!268285))

(assert (= (or b!3710456 b!3710457) bm!268284))

(assert (= (or b!3710462 bm!268285) bm!268283))

(declare-fun m!4218339 () Bool)

(assert (=> bm!268283 m!4218339))

(declare-fun m!4218341 () Bool)

(assert (=> bm!268284 m!4218341))

(declare-fun m!4218343 () Bool)

(assert (=> b!3710461 m!4218343))

(assert (=> d!1086927 d!1087063))

(assert (=> b!3710115 d!1086955))

(assert (=> b!3710115 d!1086917))

(declare-fun b!3710466 () Bool)

(declare-fun e!2297998 () Bool)

(declare-fun tp!1129010 () Bool)

(assert (=> b!3710466 (= e!2297998 tp!1129010)))

(declare-fun b!3710465 () Bool)

(declare-fun tp!1129011 () Bool)

(declare-fun tp!1129009 () Bool)

(assert (=> b!3710465 (= e!2297998 (and tp!1129011 tp!1129009))))

(declare-fun b!3710467 () Bool)

(declare-fun tp!1129012 () Bool)

(declare-fun tp!1129013 () Bool)

(assert (=> b!3710467 (= e!2297998 (and tp!1129012 tp!1129013))))

(assert (=> b!3710150 (= tp!1128997 e!2297998)))

(declare-fun b!3710464 () Bool)

(assert (=> b!3710464 (= e!2297998 tp_is_empty!18693)))

(assert (= (and b!3710150 ((_ is ElementMatch!10839) (regOne!22191 (regTwo!22190 r!26030)))) b!3710464))

(assert (= (and b!3710150 ((_ is Concat!17110) (regOne!22191 (regTwo!22190 r!26030)))) b!3710465))

(assert (= (and b!3710150 ((_ is Star!10839) (regOne!22191 (regTwo!22190 r!26030)))) b!3710466))

(assert (= (and b!3710150 ((_ is Union!10839) (regOne!22191 (regTwo!22190 r!26030)))) b!3710467))

(declare-fun b!3710470 () Bool)

(declare-fun e!2297999 () Bool)

(declare-fun tp!1129015 () Bool)

(assert (=> b!3710470 (= e!2297999 tp!1129015)))

(declare-fun b!3710469 () Bool)

(declare-fun tp!1129016 () Bool)

(declare-fun tp!1129014 () Bool)

(assert (=> b!3710469 (= e!2297999 (and tp!1129016 tp!1129014))))

(declare-fun b!3710471 () Bool)

(declare-fun tp!1129017 () Bool)

(declare-fun tp!1129018 () Bool)

(assert (=> b!3710471 (= e!2297999 (and tp!1129017 tp!1129018))))

(assert (=> b!3710150 (= tp!1128998 e!2297999)))

(declare-fun b!3710468 () Bool)

(assert (=> b!3710468 (= e!2297999 tp_is_empty!18693)))

(assert (= (and b!3710150 ((_ is ElementMatch!10839) (regTwo!22191 (regTwo!22190 r!26030)))) b!3710468))

(assert (= (and b!3710150 ((_ is Concat!17110) (regTwo!22191 (regTwo!22190 r!26030)))) b!3710469))

(assert (= (and b!3710150 ((_ is Star!10839) (regTwo!22191 (regTwo!22190 r!26030)))) b!3710470))

(assert (= (and b!3710150 ((_ is Union!10839) (regTwo!22191 (regTwo!22190 r!26030)))) b!3710471))

(declare-fun b!3710474 () Bool)

(declare-fun e!2298000 () Bool)

(declare-fun tp!1129020 () Bool)

(assert (=> b!3710474 (= e!2298000 tp!1129020)))

(declare-fun b!3710473 () Bool)

(declare-fun tp!1129021 () Bool)

(declare-fun tp!1129019 () Bool)

(assert (=> b!3710473 (= e!2298000 (and tp!1129021 tp!1129019))))

(declare-fun b!3710475 () Bool)

(declare-fun tp!1129022 () Bool)

(declare-fun tp!1129023 () Bool)

(assert (=> b!3710475 (= e!2298000 (and tp!1129022 tp!1129023))))

(assert (=> b!3710146 (= tp!1128992 e!2298000)))

(declare-fun b!3710472 () Bool)

(assert (=> b!3710472 (= e!2298000 tp_is_empty!18693)))

(assert (= (and b!3710146 ((_ is ElementMatch!10839) (regOne!22191 (regOne!22190 r!26030)))) b!3710472))

(assert (= (and b!3710146 ((_ is Concat!17110) (regOne!22191 (regOne!22190 r!26030)))) b!3710473))

(assert (= (and b!3710146 ((_ is Star!10839) (regOne!22191 (regOne!22190 r!26030)))) b!3710474))

(assert (= (and b!3710146 ((_ is Union!10839) (regOne!22191 (regOne!22190 r!26030)))) b!3710475))

(declare-fun b!3710482 () Bool)

(declare-fun e!2298003 () Bool)

(declare-fun tp!1129025 () Bool)

(assert (=> b!3710482 (= e!2298003 tp!1129025)))

(declare-fun b!3710481 () Bool)

(declare-fun tp!1129026 () Bool)

(declare-fun tp!1129024 () Bool)

(assert (=> b!3710481 (= e!2298003 (and tp!1129026 tp!1129024))))

(declare-fun b!3710483 () Bool)

(declare-fun tp!1129027 () Bool)

(declare-fun tp!1129028 () Bool)

(assert (=> b!3710483 (= e!2298003 (and tp!1129027 tp!1129028))))

(assert (=> b!3710146 (= tp!1128993 e!2298003)))

(declare-fun b!3710480 () Bool)

(assert (=> b!3710480 (= e!2298003 tp_is_empty!18693)))

(assert (= (and b!3710146 ((_ is ElementMatch!10839) (regTwo!22191 (regOne!22190 r!26030)))) b!3710480))

(assert (= (and b!3710146 ((_ is Concat!17110) (regTwo!22191 (regOne!22190 r!26030)))) b!3710481))

(assert (= (and b!3710146 ((_ is Star!10839) (regTwo!22191 (regOne!22190 r!26030)))) b!3710482))

(assert (= (and b!3710146 ((_ is Union!10839) (regTwo!22191 (regOne!22190 r!26030)))) b!3710483))

(declare-fun b!3710484 () Bool)

(declare-fun e!2298004 () Bool)

(declare-fun tp!1129029 () Bool)

(assert (=> b!3710484 (= e!2298004 (and tp_is_empty!18693 tp!1129029))))

(assert (=> b!3710142 (= tp!1128988 e!2298004)))

(assert (= (and b!3710142 ((_ is Cons!39596) (t!302403 (t!302403 s!14932)))) b!3710484))

(declare-fun b!3710487 () Bool)

(declare-fun e!2298005 () Bool)

(declare-fun tp!1129031 () Bool)

(assert (=> b!3710487 (= e!2298005 tp!1129031)))

(declare-fun b!3710486 () Bool)

(declare-fun tp!1129032 () Bool)

(declare-fun tp!1129030 () Bool)

(assert (=> b!3710486 (= e!2298005 (and tp!1129032 tp!1129030))))

(declare-fun b!3710488 () Bool)

(declare-fun tp!1129033 () Bool)

(declare-fun tp!1129034 () Bool)

(assert (=> b!3710488 (= e!2298005 (and tp!1129033 tp!1129034))))

(assert (=> b!3710152 (= tp!1129001 e!2298005)))

(declare-fun b!3710485 () Bool)

(assert (=> b!3710485 (= e!2298005 tp_is_empty!18693)))

(assert (= (and b!3710152 ((_ is ElementMatch!10839) (regOne!22190 (regOne!22191 r!26030)))) b!3710485))

(assert (= (and b!3710152 ((_ is Concat!17110) (regOne!22190 (regOne!22191 r!26030)))) b!3710486))

(assert (= (and b!3710152 ((_ is Star!10839) (regOne!22190 (regOne!22191 r!26030)))) b!3710487))

(assert (= (and b!3710152 ((_ is Union!10839) (regOne!22190 (regOne!22191 r!26030)))) b!3710488))

(declare-fun b!3710491 () Bool)

(declare-fun e!2298006 () Bool)

(declare-fun tp!1129036 () Bool)

(assert (=> b!3710491 (= e!2298006 tp!1129036)))

(declare-fun b!3710490 () Bool)

(declare-fun tp!1129037 () Bool)

(declare-fun tp!1129035 () Bool)

(assert (=> b!3710490 (= e!2298006 (and tp!1129037 tp!1129035))))

(declare-fun b!3710492 () Bool)

(declare-fun tp!1129038 () Bool)

(declare-fun tp!1129039 () Bool)

(assert (=> b!3710492 (= e!2298006 (and tp!1129038 tp!1129039))))

(assert (=> b!3710152 (= tp!1128999 e!2298006)))

(declare-fun b!3710489 () Bool)

(assert (=> b!3710489 (= e!2298006 tp_is_empty!18693)))

(assert (= (and b!3710152 ((_ is ElementMatch!10839) (regTwo!22190 (regOne!22191 r!26030)))) b!3710489))

(assert (= (and b!3710152 ((_ is Concat!17110) (regTwo!22190 (regOne!22191 r!26030)))) b!3710490))

(assert (= (and b!3710152 ((_ is Star!10839) (regTwo!22190 (regOne!22191 r!26030)))) b!3710491))

(assert (= (and b!3710152 ((_ is Union!10839) (regTwo!22190 (regOne!22191 r!26030)))) b!3710492))

(declare-fun b!3710495 () Bool)

(declare-fun e!2298007 () Bool)

(declare-fun tp!1129041 () Bool)

(assert (=> b!3710495 (= e!2298007 tp!1129041)))

(declare-fun b!3710494 () Bool)

(declare-fun tp!1129042 () Bool)

(declare-fun tp!1129040 () Bool)

(assert (=> b!3710494 (= e!2298007 (and tp!1129042 tp!1129040))))

(declare-fun b!3710496 () Bool)

(declare-fun tp!1129043 () Bool)

(declare-fun tp!1129044 () Bool)

(assert (=> b!3710496 (= e!2298007 (and tp!1129043 tp!1129044))))

(assert (=> b!3710157 (= tp!1129005 e!2298007)))

(declare-fun b!3710493 () Bool)

(assert (=> b!3710493 (= e!2298007 tp_is_empty!18693)))

(assert (= (and b!3710157 ((_ is ElementMatch!10839) (reg!11168 (regTwo!22191 r!26030)))) b!3710493))

(assert (= (and b!3710157 ((_ is Concat!17110) (reg!11168 (regTwo!22191 r!26030)))) b!3710494))

(assert (= (and b!3710157 ((_ is Star!10839) (reg!11168 (regTwo!22191 r!26030)))) b!3710495))

(assert (= (and b!3710157 ((_ is Union!10839) (reg!11168 (regTwo!22191 r!26030)))) b!3710496))

(declare-fun b!3710499 () Bool)

(declare-fun e!2298008 () Bool)

(declare-fun tp!1129046 () Bool)

(assert (=> b!3710499 (= e!2298008 tp!1129046)))

(declare-fun b!3710498 () Bool)

(declare-fun tp!1129047 () Bool)

(declare-fun tp!1129045 () Bool)

(assert (=> b!3710498 (= e!2298008 (and tp!1129047 tp!1129045))))

(declare-fun b!3710500 () Bool)

(declare-fun tp!1129048 () Bool)

(declare-fun tp!1129049 () Bool)

(assert (=> b!3710500 (= e!2298008 (and tp!1129048 tp!1129049))))

(assert (=> b!3710148 (= tp!1128996 e!2298008)))

(declare-fun b!3710497 () Bool)

(assert (=> b!3710497 (= e!2298008 tp_is_empty!18693)))

(assert (= (and b!3710148 ((_ is ElementMatch!10839) (regOne!22190 (regTwo!22190 r!26030)))) b!3710497))

(assert (= (and b!3710148 ((_ is Concat!17110) (regOne!22190 (regTwo!22190 r!26030)))) b!3710498))

(assert (= (and b!3710148 ((_ is Star!10839) (regOne!22190 (regTwo!22190 r!26030)))) b!3710499))

(assert (= (and b!3710148 ((_ is Union!10839) (regOne!22190 (regTwo!22190 r!26030)))) b!3710500))

(declare-fun b!3710505 () Bool)

(declare-fun e!2298010 () Bool)

(declare-fun tp!1129051 () Bool)

(assert (=> b!3710505 (= e!2298010 tp!1129051)))

(declare-fun b!3710504 () Bool)

(declare-fun tp!1129052 () Bool)

(declare-fun tp!1129050 () Bool)

(assert (=> b!3710504 (= e!2298010 (and tp!1129052 tp!1129050))))

(declare-fun b!3710506 () Bool)

(declare-fun tp!1129053 () Bool)

(declare-fun tp!1129054 () Bool)

(assert (=> b!3710506 (= e!2298010 (and tp!1129053 tp!1129054))))

(assert (=> b!3710148 (= tp!1128994 e!2298010)))

(declare-fun b!3710503 () Bool)

(assert (=> b!3710503 (= e!2298010 tp_is_empty!18693)))

(assert (= (and b!3710148 ((_ is ElementMatch!10839) (regTwo!22190 (regTwo!22190 r!26030)))) b!3710503))

(assert (= (and b!3710148 ((_ is Concat!17110) (regTwo!22190 (regTwo!22190 r!26030)))) b!3710504))

(assert (= (and b!3710148 ((_ is Star!10839) (regTwo!22190 (regTwo!22190 r!26030)))) b!3710505))

(assert (= (and b!3710148 ((_ is Union!10839) (regTwo!22190 (regTwo!22190 r!26030)))) b!3710506))

(declare-fun b!3710518 () Bool)

(declare-fun e!2298018 () Bool)

(declare-fun tp!1129056 () Bool)

(assert (=> b!3710518 (= e!2298018 tp!1129056)))

(declare-fun b!3710517 () Bool)

(declare-fun tp!1129057 () Bool)

(declare-fun tp!1129055 () Bool)

(assert (=> b!3710517 (= e!2298018 (and tp!1129057 tp!1129055))))

(declare-fun b!3710519 () Bool)

(declare-fun tp!1129058 () Bool)

(declare-fun tp!1129059 () Bool)

(assert (=> b!3710519 (= e!2298018 (and tp!1129058 tp!1129059))))

(assert (=> b!3710153 (= tp!1129000 e!2298018)))

(declare-fun b!3710516 () Bool)

(assert (=> b!3710516 (= e!2298018 tp_is_empty!18693)))

(assert (= (and b!3710153 ((_ is ElementMatch!10839) (reg!11168 (regOne!22191 r!26030)))) b!3710516))

(assert (= (and b!3710153 ((_ is Concat!17110) (reg!11168 (regOne!22191 r!26030)))) b!3710517))

(assert (= (and b!3710153 ((_ is Star!10839) (reg!11168 (regOne!22191 r!26030)))) b!3710518))

(assert (= (and b!3710153 ((_ is Union!10839) (reg!11168 (regOne!22191 r!26030)))) b!3710519))

(declare-fun b!3710522 () Bool)

(declare-fun e!2298019 () Bool)

(declare-fun tp!1129061 () Bool)

(assert (=> b!3710522 (= e!2298019 tp!1129061)))

(declare-fun b!3710521 () Bool)

(declare-fun tp!1129062 () Bool)

(declare-fun tp!1129060 () Bool)

(assert (=> b!3710521 (= e!2298019 (and tp!1129062 tp!1129060))))

(declare-fun b!3710523 () Bool)

(declare-fun tp!1129063 () Bool)

(declare-fun tp!1129064 () Bool)

(assert (=> b!3710523 (= e!2298019 (and tp!1129063 tp!1129064))))

(assert (=> b!3710158 (= tp!1129007 e!2298019)))

(declare-fun b!3710520 () Bool)

(assert (=> b!3710520 (= e!2298019 tp_is_empty!18693)))

(assert (= (and b!3710158 ((_ is ElementMatch!10839) (regOne!22191 (regTwo!22191 r!26030)))) b!3710520))

(assert (= (and b!3710158 ((_ is Concat!17110) (regOne!22191 (regTwo!22191 r!26030)))) b!3710521))

(assert (= (and b!3710158 ((_ is Star!10839) (regOne!22191 (regTwo!22191 r!26030)))) b!3710522))

(assert (= (and b!3710158 ((_ is Union!10839) (regOne!22191 (regTwo!22191 r!26030)))) b!3710523))

(declare-fun b!3710526 () Bool)

(declare-fun e!2298020 () Bool)

(declare-fun tp!1129066 () Bool)

(assert (=> b!3710526 (= e!2298020 tp!1129066)))

(declare-fun b!3710525 () Bool)

(declare-fun tp!1129067 () Bool)

(declare-fun tp!1129065 () Bool)

(assert (=> b!3710525 (= e!2298020 (and tp!1129067 tp!1129065))))

(declare-fun b!3710527 () Bool)

(declare-fun tp!1129068 () Bool)

(declare-fun tp!1129069 () Bool)

(assert (=> b!3710527 (= e!2298020 (and tp!1129068 tp!1129069))))

(assert (=> b!3710158 (= tp!1129008 e!2298020)))

(declare-fun b!3710524 () Bool)

(assert (=> b!3710524 (= e!2298020 tp_is_empty!18693)))

(assert (= (and b!3710158 ((_ is ElementMatch!10839) (regTwo!22191 (regTwo!22191 r!26030)))) b!3710524))

(assert (= (and b!3710158 ((_ is Concat!17110) (regTwo!22191 (regTwo!22191 r!26030)))) b!3710525))

(assert (= (and b!3710158 ((_ is Star!10839) (regTwo!22191 (regTwo!22191 r!26030)))) b!3710526))

(assert (= (and b!3710158 ((_ is Union!10839) (regTwo!22191 (regTwo!22191 r!26030)))) b!3710527))

(declare-fun b!3710530 () Bool)

(declare-fun e!2298021 () Bool)

(declare-fun tp!1129071 () Bool)

(assert (=> b!3710530 (= e!2298021 tp!1129071)))

(declare-fun b!3710529 () Bool)

(declare-fun tp!1129072 () Bool)

(declare-fun tp!1129070 () Bool)

(assert (=> b!3710529 (= e!2298021 (and tp!1129072 tp!1129070))))

(declare-fun b!3710531 () Bool)

(declare-fun tp!1129073 () Bool)

(declare-fun tp!1129074 () Bool)

(assert (=> b!3710531 (= e!2298021 (and tp!1129073 tp!1129074))))

(assert (=> b!3710144 (= tp!1128991 e!2298021)))

(declare-fun b!3710528 () Bool)

(assert (=> b!3710528 (= e!2298021 tp_is_empty!18693)))

(assert (= (and b!3710144 ((_ is ElementMatch!10839) (regOne!22190 (regOne!22190 r!26030)))) b!3710528))

(assert (= (and b!3710144 ((_ is Concat!17110) (regOne!22190 (regOne!22190 r!26030)))) b!3710529))

(assert (= (and b!3710144 ((_ is Star!10839) (regOne!22190 (regOne!22190 r!26030)))) b!3710530))

(assert (= (and b!3710144 ((_ is Union!10839) (regOne!22190 (regOne!22190 r!26030)))) b!3710531))

(declare-fun b!3710539 () Bool)

(declare-fun e!2298029 () Bool)

(declare-fun tp!1129076 () Bool)

(assert (=> b!3710539 (= e!2298029 tp!1129076)))

(declare-fun b!3710537 () Bool)

(declare-fun tp!1129077 () Bool)

(declare-fun tp!1129075 () Bool)

(assert (=> b!3710537 (= e!2298029 (and tp!1129077 tp!1129075))))

(declare-fun b!3710540 () Bool)

(declare-fun tp!1129078 () Bool)

(declare-fun tp!1129079 () Bool)

(assert (=> b!3710540 (= e!2298029 (and tp!1129078 tp!1129079))))

(assert (=> b!3710144 (= tp!1128989 e!2298029)))

(declare-fun b!3710535 () Bool)

(assert (=> b!3710535 (= e!2298029 tp_is_empty!18693)))

(assert (= (and b!3710144 ((_ is ElementMatch!10839) (regTwo!22190 (regOne!22190 r!26030)))) b!3710535))

(assert (= (and b!3710144 ((_ is Concat!17110) (regTwo!22190 (regOne!22190 r!26030)))) b!3710537))

(assert (= (and b!3710144 ((_ is Star!10839) (regTwo!22190 (regOne!22190 r!26030)))) b!3710539))

(assert (= (and b!3710144 ((_ is Union!10839) (regTwo!22190 (regOne!22190 r!26030)))) b!3710540))

(declare-fun b!3710547 () Bool)

(declare-fun e!2298030 () Bool)

(declare-fun tp!1129081 () Bool)

(assert (=> b!3710547 (= e!2298030 tp!1129081)))

(declare-fun b!3710546 () Bool)

(declare-fun tp!1129082 () Bool)

(declare-fun tp!1129080 () Bool)

(assert (=> b!3710546 (= e!2298030 (and tp!1129082 tp!1129080))))

(declare-fun b!3710548 () Bool)

(declare-fun tp!1129083 () Bool)

(declare-fun tp!1129084 () Bool)

(assert (=> b!3710548 (= e!2298030 (and tp!1129083 tp!1129084))))

(assert (=> b!3710149 (= tp!1128995 e!2298030)))

(declare-fun b!3710545 () Bool)

(assert (=> b!3710545 (= e!2298030 tp_is_empty!18693)))

(assert (= (and b!3710149 ((_ is ElementMatch!10839) (reg!11168 (regTwo!22190 r!26030)))) b!3710545))

(assert (= (and b!3710149 ((_ is Concat!17110) (reg!11168 (regTwo!22190 r!26030)))) b!3710546))

(assert (= (and b!3710149 ((_ is Star!10839) (reg!11168 (regTwo!22190 r!26030)))) b!3710547))

(assert (= (and b!3710149 ((_ is Union!10839) (reg!11168 (regTwo!22190 r!26030)))) b!3710548))

(declare-fun b!3710551 () Bool)

(declare-fun e!2298031 () Bool)

(declare-fun tp!1129086 () Bool)

(assert (=> b!3710551 (= e!2298031 tp!1129086)))

(declare-fun b!3710550 () Bool)

(declare-fun tp!1129087 () Bool)

(declare-fun tp!1129085 () Bool)

(assert (=> b!3710550 (= e!2298031 (and tp!1129087 tp!1129085))))

(declare-fun b!3710552 () Bool)

(declare-fun tp!1129088 () Bool)

(declare-fun tp!1129089 () Bool)

(assert (=> b!3710552 (= e!2298031 (and tp!1129088 tp!1129089))))

(assert (=> b!3710154 (= tp!1129002 e!2298031)))

(declare-fun b!3710549 () Bool)

(assert (=> b!3710549 (= e!2298031 tp_is_empty!18693)))

(assert (= (and b!3710154 ((_ is ElementMatch!10839) (regOne!22191 (regOne!22191 r!26030)))) b!3710549))

(assert (= (and b!3710154 ((_ is Concat!17110) (regOne!22191 (regOne!22191 r!26030)))) b!3710550))

(assert (= (and b!3710154 ((_ is Star!10839) (regOne!22191 (regOne!22191 r!26030)))) b!3710551))

(assert (= (and b!3710154 ((_ is Union!10839) (regOne!22191 (regOne!22191 r!26030)))) b!3710552))

(declare-fun b!3710555 () Bool)

(declare-fun e!2298032 () Bool)

(declare-fun tp!1129091 () Bool)

(assert (=> b!3710555 (= e!2298032 tp!1129091)))

(declare-fun b!3710554 () Bool)

(declare-fun tp!1129092 () Bool)

(declare-fun tp!1129090 () Bool)

(assert (=> b!3710554 (= e!2298032 (and tp!1129092 tp!1129090))))

(declare-fun b!3710556 () Bool)

(declare-fun tp!1129093 () Bool)

(declare-fun tp!1129094 () Bool)

(assert (=> b!3710556 (= e!2298032 (and tp!1129093 tp!1129094))))

(assert (=> b!3710154 (= tp!1129003 e!2298032)))

(declare-fun b!3710553 () Bool)

(assert (=> b!3710553 (= e!2298032 tp_is_empty!18693)))

(assert (= (and b!3710154 ((_ is ElementMatch!10839) (regTwo!22191 (regOne!22191 r!26030)))) b!3710553))

(assert (= (and b!3710154 ((_ is Concat!17110) (regTwo!22191 (regOne!22191 r!26030)))) b!3710554))

(assert (= (and b!3710154 ((_ is Star!10839) (regTwo!22191 (regOne!22191 r!26030)))) b!3710555))

(assert (= (and b!3710154 ((_ is Union!10839) (regTwo!22191 (regOne!22191 r!26030)))) b!3710556))

(declare-fun b!3710559 () Bool)

(declare-fun e!2298033 () Bool)

(declare-fun tp!1129096 () Bool)

(assert (=> b!3710559 (= e!2298033 tp!1129096)))

(declare-fun b!3710558 () Bool)

(declare-fun tp!1129097 () Bool)

(declare-fun tp!1129095 () Bool)

(assert (=> b!3710558 (= e!2298033 (and tp!1129097 tp!1129095))))

(declare-fun b!3710560 () Bool)

(declare-fun tp!1129098 () Bool)

(declare-fun tp!1129099 () Bool)

(assert (=> b!3710560 (= e!2298033 (and tp!1129098 tp!1129099))))

(assert (=> b!3710145 (= tp!1128990 e!2298033)))

(declare-fun b!3710557 () Bool)

(assert (=> b!3710557 (= e!2298033 tp_is_empty!18693)))

(assert (= (and b!3710145 ((_ is ElementMatch!10839) (reg!11168 (regOne!22190 r!26030)))) b!3710557))

(assert (= (and b!3710145 ((_ is Concat!17110) (reg!11168 (regOne!22190 r!26030)))) b!3710558))

(assert (= (and b!3710145 ((_ is Star!10839) (reg!11168 (regOne!22190 r!26030)))) b!3710559))

(assert (= (and b!3710145 ((_ is Union!10839) (reg!11168 (regOne!22190 r!26030)))) b!3710560))

(declare-fun b!3710563 () Bool)

(declare-fun e!2298034 () Bool)

(declare-fun tp!1129101 () Bool)

(assert (=> b!3710563 (= e!2298034 tp!1129101)))

(declare-fun b!3710562 () Bool)

(declare-fun tp!1129102 () Bool)

(declare-fun tp!1129100 () Bool)

(assert (=> b!3710562 (= e!2298034 (and tp!1129102 tp!1129100))))

(declare-fun b!3710564 () Bool)

(declare-fun tp!1129103 () Bool)

(declare-fun tp!1129104 () Bool)

(assert (=> b!3710564 (= e!2298034 (and tp!1129103 tp!1129104))))

(assert (=> b!3710136 (= tp!1128982 e!2298034)))

(declare-fun b!3710561 () Bool)

(assert (=> b!3710561 (= e!2298034 tp_is_empty!18693)))

(assert (= (and b!3710136 ((_ is ElementMatch!10839) (reg!11168 (reg!11168 r!26030)))) b!3710561))

(assert (= (and b!3710136 ((_ is Concat!17110) (reg!11168 (reg!11168 r!26030)))) b!3710562))

(assert (= (and b!3710136 ((_ is Star!10839) (reg!11168 (reg!11168 r!26030)))) b!3710563))

(assert (= (and b!3710136 ((_ is Union!10839) (reg!11168 (reg!11168 r!26030)))) b!3710564))

(declare-fun b!3710567 () Bool)

(declare-fun e!2298035 () Bool)

(declare-fun tp!1129106 () Bool)

(assert (=> b!3710567 (= e!2298035 tp!1129106)))

(declare-fun b!3710566 () Bool)

(declare-fun tp!1129107 () Bool)

(declare-fun tp!1129105 () Bool)

(assert (=> b!3710566 (= e!2298035 (and tp!1129107 tp!1129105))))

(declare-fun b!3710568 () Bool)

(declare-fun tp!1129108 () Bool)

(declare-fun tp!1129109 () Bool)

(assert (=> b!3710568 (= e!2298035 (and tp!1129108 tp!1129109))))

(assert (=> b!3710137 (= tp!1128984 e!2298035)))

(declare-fun b!3710565 () Bool)

(assert (=> b!3710565 (= e!2298035 tp_is_empty!18693)))

(assert (= (and b!3710137 ((_ is ElementMatch!10839) (regOne!22191 (reg!11168 r!26030)))) b!3710565))

(assert (= (and b!3710137 ((_ is Concat!17110) (regOne!22191 (reg!11168 r!26030)))) b!3710566))

(assert (= (and b!3710137 ((_ is Star!10839) (regOne!22191 (reg!11168 r!26030)))) b!3710567))

(assert (= (and b!3710137 ((_ is Union!10839) (regOne!22191 (reg!11168 r!26030)))) b!3710568))

(declare-fun b!3710571 () Bool)

(declare-fun e!2298036 () Bool)

(declare-fun tp!1129111 () Bool)

(assert (=> b!3710571 (= e!2298036 tp!1129111)))

(declare-fun b!3710570 () Bool)

(declare-fun tp!1129112 () Bool)

(declare-fun tp!1129110 () Bool)

(assert (=> b!3710570 (= e!2298036 (and tp!1129112 tp!1129110))))

(declare-fun b!3710572 () Bool)

(declare-fun tp!1129113 () Bool)

(declare-fun tp!1129114 () Bool)

(assert (=> b!3710572 (= e!2298036 (and tp!1129113 tp!1129114))))

(assert (=> b!3710137 (= tp!1128985 e!2298036)))

(declare-fun b!3710569 () Bool)

(assert (=> b!3710569 (= e!2298036 tp_is_empty!18693)))

(assert (= (and b!3710137 ((_ is ElementMatch!10839) (regTwo!22191 (reg!11168 r!26030)))) b!3710569))

(assert (= (and b!3710137 ((_ is Concat!17110) (regTwo!22191 (reg!11168 r!26030)))) b!3710570))

(assert (= (and b!3710137 ((_ is Star!10839) (regTwo!22191 (reg!11168 r!26030)))) b!3710571))

(assert (= (and b!3710137 ((_ is Union!10839) (regTwo!22191 (reg!11168 r!26030)))) b!3710572))

(declare-fun b!3710575 () Bool)

(declare-fun e!2298037 () Bool)

(declare-fun tp!1129116 () Bool)

(assert (=> b!3710575 (= e!2298037 tp!1129116)))

(declare-fun b!3710574 () Bool)

(declare-fun tp!1129117 () Bool)

(declare-fun tp!1129115 () Bool)

(assert (=> b!3710574 (= e!2298037 (and tp!1129117 tp!1129115))))

(declare-fun b!3710576 () Bool)

(declare-fun tp!1129118 () Bool)

(declare-fun tp!1129119 () Bool)

(assert (=> b!3710576 (= e!2298037 (and tp!1129118 tp!1129119))))

(assert (=> b!3710156 (= tp!1129006 e!2298037)))

(declare-fun b!3710573 () Bool)

(assert (=> b!3710573 (= e!2298037 tp_is_empty!18693)))

(assert (= (and b!3710156 ((_ is ElementMatch!10839) (regOne!22190 (regTwo!22191 r!26030)))) b!3710573))

(assert (= (and b!3710156 ((_ is Concat!17110) (regOne!22190 (regTwo!22191 r!26030)))) b!3710574))

(assert (= (and b!3710156 ((_ is Star!10839) (regOne!22190 (regTwo!22191 r!26030)))) b!3710575))

(assert (= (and b!3710156 ((_ is Union!10839) (regOne!22190 (regTwo!22191 r!26030)))) b!3710576))

(declare-fun b!3710579 () Bool)

(declare-fun e!2298038 () Bool)

(declare-fun tp!1129121 () Bool)

(assert (=> b!3710579 (= e!2298038 tp!1129121)))

(declare-fun b!3710578 () Bool)

(declare-fun tp!1129122 () Bool)

(declare-fun tp!1129120 () Bool)

(assert (=> b!3710578 (= e!2298038 (and tp!1129122 tp!1129120))))

(declare-fun b!3710580 () Bool)

(declare-fun tp!1129123 () Bool)

(declare-fun tp!1129124 () Bool)

(assert (=> b!3710580 (= e!2298038 (and tp!1129123 tp!1129124))))

(assert (=> b!3710156 (= tp!1129004 e!2298038)))

(declare-fun b!3710577 () Bool)

(assert (=> b!3710577 (= e!2298038 tp_is_empty!18693)))

(assert (= (and b!3710156 ((_ is ElementMatch!10839) (regTwo!22190 (regTwo!22191 r!26030)))) b!3710577))

(assert (= (and b!3710156 ((_ is Concat!17110) (regTwo!22190 (regTwo!22191 r!26030)))) b!3710578))

(assert (= (and b!3710156 ((_ is Star!10839) (regTwo!22190 (regTwo!22191 r!26030)))) b!3710579))

(assert (= (and b!3710156 ((_ is Union!10839) (regTwo!22190 (regTwo!22191 r!26030)))) b!3710580))

(declare-fun b!3710583 () Bool)

(declare-fun e!2298039 () Bool)

(declare-fun tp!1129126 () Bool)

(assert (=> b!3710583 (= e!2298039 tp!1129126)))

(declare-fun b!3710582 () Bool)

(declare-fun tp!1129127 () Bool)

(declare-fun tp!1129125 () Bool)

(assert (=> b!3710582 (= e!2298039 (and tp!1129127 tp!1129125))))

(declare-fun b!3710584 () Bool)

(declare-fun tp!1129128 () Bool)

(declare-fun tp!1129129 () Bool)

(assert (=> b!3710584 (= e!2298039 (and tp!1129128 tp!1129129))))

(assert (=> b!3710135 (= tp!1128983 e!2298039)))

(declare-fun b!3710581 () Bool)

(assert (=> b!3710581 (= e!2298039 tp_is_empty!18693)))

(assert (= (and b!3710135 ((_ is ElementMatch!10839) (regOne!22190 (reg!11168 r!26030)))) b!3710581))

(assert (= (and b!3710135 ((_ is Concat!17110) (regOne!22190 (reg!11168 r!26030)))) b!3710582))

(assert (= (and b!3710135 ((_ is Star!10839) (regOne!22190 (reg!11168 r!26030)))) b!3710583))

(assert (= (and b!3710135 ((_ is Union!10839) (regOne!22190 (reg!11168 r!26030)))) b!3710584))

(declare-fun b!3710587 () Bool)

(declare-fun e!2298040 () Bool)

(declare-fun tp!1129131 () Bool)

(assert (=> b!3710587 (= e!2298040 tp!1129131)))

(declare-fun b!3710586 () Bool)

(declare-fun tp!1129132 () Bool)

(declare-fun tp!1129130 () Bool)

(assert (=> b!3710586 (= e!2298040 (and tp!1129132 tp!1129130))))

(declare-fun b!3710588 () Bool)

(declare-fun tp!1129133 () Bool)

(declare-fun tp!1129134 () Bool)

(assert (=> b!3710588 (= e!2298040 (and tp!1129133 tp!1129134))))

(assert (=> b!3710135 (= tp!1128981 e!2298040)))

(declare-fun b!3710585 () Bool)

(assert (=> b!3710585 (= e!2298040 tp_is_empty!18693)))

(assert (= (and b!3710135 ((_ is ElementMatch!10839) (regTwo!22190 (reg!11168 r!26030)))) b!3710585))

(assert (= (and b!3710135 ((_ is Concat!17110) (regTwo!22190 (reg!11168 r!26030)))) b!3710586))

(assert (= (and b!3710135 ((_ is Star!10839) (regTwo!22190 (reg!11168 r!26030)))) b!3710587))

(assert (= (and b!3710135 ((_ is Union!10839) (regTwo!22190 (reg!11168 r!26030)))) b!3710588))

(check-sat (not b!3710571) (not b!3710474) (not b!3710488) (not bm!268268) (not b!3710498) (not b!3710586) (not bm!268260) (not bm!268277) (not b!3710518) (not b!3710580) (not bm!268200) (not b!3710587) (not bm!268214) (not b!3710521) (not b!3710583) (not b!3710184) (not b!3710537) (not d!1086983) (not b!3710499) (not b!3710473) (not b!3710466) (not d!1087035) (not b!3710496) (not bm!268262) (not b!3710578) (not b!3710560) (not b!3710408) (not b!3710552) (not b!3710559) (not d!1087039) (not b!3710523) (not b!3710469) (not b!3710176) (not bm!268231) (not b!3710258) (not d!1087049) (not b!3710227) (not b!3710475) (not b!3710579) (not b!3710588) (not b!3710431) (not d!1086965) (not b!3710547) (not b!3710403) (not b!3710486) (not bm!268266) (not b!3710558) (not b!3710519) (not b!3710555) (not b!3710172) (not b!3710550) (not b!3710575) (not b!3710362) (not b!3710491) (not b!3710572) (not bm!268273) (not b!3710527) (not bm!268225) (not b!3710551) (not d!1086953) (not b!3710277) (not b!3710400) (not b!3710175) (not b!3710584) (not d!1086963) (not b!3710554) (not b!3710470) (not b!3710201) (not b!3710517) (not b!3710467) (not b!3710582) (not b!3710481) (not b!3710500) (not b!3710471) (not b!3710506) (not b!3710495) (not b!3710442) (not bm!268201) (not b!3710564) (not b!3710574) (not b!3710526) (not b!3710217) (not bm!268207) (not bm!268196) (not b!3710487) (not b!3710482) (not bm!268274) (not bm!268263) (not b!3710484) (not b!3710562) (not d!1086961) (not bm!268253) (not d!1086971) (not b!3710160) (not b!3710567) (not b!3710166) (not b!3710568) (not b!3710530) (not b!3710300) (not b!3710504) (not bm!268252) (not bm!268259) (not bm!268211) (not b!3710483) (not bm!268217) (not b!3710200) tp_is_empty!18693 (not d!1087009) (not bm!268258) (not bm!268213) (not b!3710505) (not b!3710525) (not b!3710177) (not b!3710529) (not b!3710556) (not b!3710576) (not bm!268276) (not bm!268209) (not b!3710531) (not d!1086977) (not b!3710490) (not b!3710539) (not d!1087003) (not b!3710570) (not d!1086981) (not bm!268215) (not bm!268198) (not bm!268223) (not bm!268230) (not b!3710492) (not b!3710546) (not b!3710540) (not b!3710461) (not b!3710566) (not d!1087017) (not b!3710209) (not b!3710563) (not bm!268283) (not b!3710494) (not b!3710179) (not d!1086957) (not b!3710465) (not b!3710548) (not bm!268205) (not b!3710212) (not bm!268202) (not b!3710251) (not bm!268216) (not d!1087047) (not b!3710173) (not bm!268284) (not b!3710522))
(check-sat)

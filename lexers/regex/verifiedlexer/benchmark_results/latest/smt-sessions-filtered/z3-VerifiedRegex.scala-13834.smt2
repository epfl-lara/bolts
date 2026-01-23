; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735736 () Bool)

(assert start!735736)

(declare-fun b!7644818 () Bool)

(declare-fun e!4543855 () Bool)

(declare-fun tp_is_empty!51281 () Bool)

(assert (=> b!7644818 (= e!4543855 tp_is_empty!51281)))

(declare-fun b!7644819 () Bool)

(declare-fun tp!2231597 () Bool)

(declare-fun tp!2231593 () Bool)

(assert (=> b!7644819 (= e!4543855 (and tp!2231597 tp!2231593))))

(declare-fun b!7644820 () Bool)

(declare-datatypes ((Unit!167914 0))(
  ( (Unit!167915) )
))
(declare-fun e!4543857 () Unit!167914)

(declare-fun Unit!167916 () Unit!167914)

(assert (=> b!7644820 (= e!4543857 Unit!167916)))

(declare-fun b!7644821 () Bool)

(declare-fun e!4543854 () Bool)

(assert (=> b!7644821 (= e!4543854 false)))

(declare-fun b!7644822 () Bool)

(declare-fun e!4543853 () Bool)

(assert (=> b!7644822 (= e!4543853 false)))

(declare-fun res!3062053 () Bool)

(declare-fun e!4543858 () Bool)

(assert (=> start!735736 (=> (not res!3062053) (not e!4543858))))

(declare-datatypes ((C!41252 0))(
  ( (C!41253 (val!31066 Int)) )
))
(declare-datatypes ((Regex!20463 0))(
  ( (ElementMatch!20463 (c!1408098 C!41252)) (Concat!29308 (regOne!41438 Regex!20463) (regTwo!41438 Regex!20463)) (EmptyExpr!20463) (Star!20463 (reg!20792 Regex!20463)) (EmptyLang!20463) (Union!20463 (regOne!41439 Regex!20463) (regTwo!41439 Regex!20463)) )
))
(declare-fun r!14126 () Regex!20463)

(declare-fun validRegex!10881 (Regex!20463) Bool)

(assert (=> start!735736 (= res!3062053 (validRegex!10881 r!14126))))

(assert (=> start!735736 e!4543858))

(assert (=> start!735736 e!4543855))

(declare-fun e!4543859 () Bool)

(assert (=> start!735736 e!4543859))

(declare-fun b!7644823 () Bool)

(declare-fun tp!2231595 () Bool)

(assert (=> b!7644823 (= e!4543855 tp!2231595)))

(declare-fun b!7644824 () Bool)

(declare-fun res!3062052 () Bool)

(assert (=> b!7644824 (=> (not res!3062052) (not e!4543858))))

(declare-datatypes ((List!73314 0))(
  ( (Nil!73190) (Cons!73190 (h!79638 C!41252) (t!388049 List!73314)) )
))
(declare-fun s!9605 () List!73314)

(declare-fun matchR!9964 (Regex!20463 List!73314) Bool)

(assert (=> b!7644824 (= res!3062052 (not (matchR!9964 r!14126 s!9605)))))

(declare-fun b!7644825 () Bool)

(declare-fun Unit!167917 () Unit!167914)

(assert (=> b!7644825 (= e!4543857 Unit!167917)))

(declare-fun lt!2660856 () Unit!167914)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!110 (Regex!20463 Regex!20463 List!73314) Unit!167914)

(assert (=> b!7644825 (= lt!2660856 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!110 (regTwo!41439 r!14126) (regOne!41439 r!14126) s!9605))))

(assert (=> b!7644825 (matchR!9964 (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126)) s!9605)))

(declare-fun lt!2660858 () Unit!167914)

(declare-fun lemmaReversedUnionAcceptsSameString!38 (Regex!20463 Regex!20463 List!73314) Unit!167914)

(assert (=> b!7644825 (= lt!2660858 (lemmaReversedUnionAcceptsSameString!38 (regTwo!41439 r!14126) (regOne!41439 r!14126) s!9605))))

(declare-fun res!3062051 () Bool)

(assert (=> b!7644825 (= res!3062051 (matchR!9964 r!14126 s!9605))))

(assert (=> b!7644825 (=> (not res!3062051) (not e!4543854))))

(assert (=> b!7644825 e!4543854))

(declare-fun b!7644826 () Bool)

(declare-fun tp!2231594 () Bool)

(assert (=> b!7644826 (= e!4543859 (and tp_is_empty!51281 tp!2231594))))

(declare-fun b!7644827 () Bool)

(declare-fun tp!2231596 () Bool)

(declare-fun tp!2231592 () Bool)

(assert (=> b!7644827 (= e!4543855 (and tp!2231596 tp!2231592))))

(declare-fun b!7644828 () Bool)

(declare-fun res!3062054 () Bool)

(assert (=> b!7644828 (=> (not res!3062054) (not e!4543858))))

(get-info :version)

(assert (=> b!7644828 (= res!3062054 (and (not ((_ is EmptyExpr!20463) r!14126)) (not ((_ is EmptyLang!20463) r!14126)) (not ((_ is ElementMatch!20463) r!14126)) ((_ is Union!20463) r!14126)))))

(declare-fun b!7644829 () Bool)

(assert (=> b!7644829 (= e!4543858 (not (validRegex!10881 (regOne!41439 r!14126))))))

(declare-fun lt!2660857 () Unit!167914)

(assert (=> b!7644829 (= lt!2660857 e!4543857)))

(declare-fun c!1408097 () Bool)

(assert (=> b!7644829 (= c!1408097 (matchR!9964 (regTwo!41439 r!14126) s!9605))))

(declare-fun lt!2660855 () Unit!167914)

(declare-fun e!4543856 () Unit!167914)

(assert (=> b!7644829 (= lt!2660855 e!4543856)))

(declare-fun c!1408096 () Bool)

(assert (=> b!7644829 (= c!1408096 (matchR!9964 (regOne!41439 r!14126) s!9605))))

(declare-fun b!7644830 () Bool)

(declare-fun Unit!167918 () Unit!167914)

(assert (=> b!7644830 (= e!4543856 Unit!167918)))

(declare-fun b!7644831 () Bool)

(declare-fun Unit!167919 () Unit!167914)

(assert (=> b!7644831 (= e!4543856 Unit!167919)))

(declare-fun lt!2660854 () Unit!167914)

(assert (=> b!7644831 (= lt!2660854 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!110 (regOne!41439 r!14126) (regTwo!41439 r!14126) s!9605))))

(declare-fun res!3062050 () Bool)

(assert (=> b!7644831 (= res!3062050 (matchR!9964 r!14126 s!9605))))

(assert (=> b!7644831 (=> (not res!3062050) (not e!4543853))))

(assert (=> b!7644831 e!4543853))

(assert (= (and start!735736 res!3062053) b!7644828))

(assert (= (and b!7644828 res!3062054) b!7644824))

(assert (= (and b!7644824 res!3062052) b!7644829))

(assert (= (and b!7644829 c!1408096) b!7644831))

(assert (= (and b!7644829 (not c!1408096)) b!7644830))

(assert (= (and b!7644831 res!3062050) b!7644822))

(assert (= (and b!7644829 c!1408097) b!7644825))

(assert (= (and b!7644829 (not c!1408097)) b!7644820))

(assert (= (and b!7644825 res!3062051) b!7644821))

(assert (= (and start!735736 ((_ is ElementMatch!20463) r!14126)) b!7644818))

(assert (= (and start!735736 ((_ is Concat!29308) r!14126)) b!7644827))

(assert (= (and start!735736 ((_ is Star!20463) r!14126)) b!7644823))

(assert (= (and start!735736 ((_ is Union!20463) r!14126)) b!7644819))

(assert (= (and start!735736 ((_ is Cons!73190) s!9605)) b!7644826))

(declare-fun m!8164180 () Bool)

(assert (=> start!735736 m!8164180))

(declare-fun m!8164182 () Bool)

(assert (=> b!7644825 m!8164182))

(declare-fun m!8164184 () Bool)

(assert (=> b!7644825 m!8164184))

(declare-fun m!8164186 () Bool)

(assert (=> b!7644825 m!8164186))

(declare-fun m!8164188 () Bool)

(assert (=> b!7644825 m!8164188))

(declare-fun m!8164190 () Bool)

(assert (=> b!7644829 m!8164190))

(declare-fun m!8164192 () Bool)

(assert (=> b!7644829 m!8164192))

(declare-fun m!8164194 () Bool)

(assert (=> b!7644829 m!8164194))

(assert (=> b!7644824 m!8164188))

(declare-fun m!8164196 () Bool)

(assert (=> b!7644831 m!8164196))

(assert (=> b!7644831 m!8164188))

(check-sat (not b!7644827) (not b!7644824) (not start!735736) (not b!7644825) (not b!7644829) (not b!7644823) (not b!7644826) (not b!7644831) tp_is_empty!51281 (not b!7644819))
(check-sat)
(get-model)

(declare-fun d!2325453 () Bool)

(assert (=> d!2325453 (matchR!9964 (Union!20463 (regOne!41439 r!14126) (regTwo!41439 r!14126)) s!9605)))

(declare-fun lt!2660861 () Unit!167914)

(declare-fun choose!59027 (Regex!20463 Regex!20463 List!73314) Unit!167914)

(assert (=> d!2325453 (= lt!2660861 (choose!59027 (regOne!41439 r!14126) (regTwo!41439 r!14126) s!9605))))

(declare-fun e!4543862 () Bool)

(assert (=> d!2325453 e!4543862))

(declare-fun res!3062057 () Bool)

(assert (=> d!2325453 (=> (not res!3062057) (not e!4543862))))

(assert (=> d!2325453 (= res!3062057 (validRegex!10881 (regOne!41439 r!14126)))))

(assert (=> d!2325453 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!110 (regOne!41439 r!14126) (regTwo!41439 r!14126) s!9605) lt!2660861)))

(declare-fun b!7644834 () Bool)

(assert (=> b!7644834 (= e!4543862 (validRegex!10881 (regTwo!41439 r!14126)))))

(assert (= (and d!2325453 res!3062057) b!7644834))

(declare-fun m!8164198 () Bool)

(assert (=> d!2325453 m!8164198))

(declare-fun m!8164200 () Bool)

(assert (=> d!2325453 m!8164200))

(assert (=> d!2325453 m!8164190))

(declare-fun m!8164202 () Bool)

(assert (=> b!7644834 m!8164202))

(assert (=> b!7644831 d!2325453))

(declare-fun b!7644866 () Bool)

(declare-fun e!4543883 () Bool)

(declare-fun nullable!8963 (Regex!20463) Bool)

(assert (=> b!7644866 (= e!4543883 (nullable!8963 r!14126))))

(declare-fun bm!701784 () Bool)

(declare-fun call!701789 () Bool)

(declare-fun isEmpty!41814 (List!73314) Bool)

(assert (=> bm!701784 (= call!701789 (isEmpty!41814 s!9605))))

(declare-fun b!7644867 () Bool)

(declare-fun e!4543884 () Bool)

(declare-fun e!4543885 () Bool)

(assert (=> b!7644867 (= e!4543884 e!4543885)))

(declare-fun res!3062081 () Bool)

(assert (=> b!7644867 (=> (not res!3062081) (not e!4543885))))

(declare-fun lt!2660867 () Bool)

(assert (=> b!7644867 (= res!3062081 (not lt!2660867))))

(declare-fun d!2325455 () Bool)

(declare-fun e!4543880 () Bool)

(assert (=> d!2325455 e!4543880))

(declare-fun c!1408105 () Bool)

(assert (=> d!2325455 (= c!1408105 ((_ is EmptyExpr!20463) r!14126))))

(assert (=> d!2325455 (= lt!2660867 e!4543883)))

(declare-fun c!1408107 () Bool)

(assert (=> d!2325455 (= c!1408107 (isEmpty!41814 s!9605))))

(assert (=> d!2325455 (validRegex!10881 r!14126)))

(assert (=> d!2325455 (= (matchR!9964 r!14126 s!9605) lt!2660867)))

(declare-fun b!7644868 () Bool)

(declare-fun e!4543881 () Bool)

(assert (=> b!7644868 (= e!4543885 e!4543881)))

(declare-fun res!3062084 () Bool)

(assert (=> b!7644868 (=> res!3062084 e!4543881)))

(assert (=> b!7644868 (= res!3062084 call!701789)))

(declare-fun b!7644869 () Bool)

(declare-fun res!3062078 () Bool)

(declare-fun e!4543882 () Bool)

(assert (=> b!7644869 (=> (not res!3062078) (not e!4543882))))

(assert (=> b!7644869 (= res!3062078 (not call!701789))))

(declare-fun b!7644870 () Bool)

(declare-fun res!3062080 () Bool)

(assert (=> b!7644870 (=> res!3062080 e!4543881)))

(declare-fun tail!15273 (List!73314) List!73314)

(assert (=> b!7644870 (= res!3062080 (not (isEmpty!41814 (tail!15273 s!9605))))))

(declare-fun b!7644871 () Bool)

(declare-fun res!3062082 () Bool)

(assert (=> b!7644871 (=> (not res!3062082) (not e!4543882))))

(assert (=> b!7644871 (= res!3062082 (isEmpty!41814 (tail!15273 s!9605)))))

(declare-fun b!7644872 () Bool)

(assert (=> b!7644872 (= e!4543880 (= lt!2660867 call!701789))))

(declare-fun b!7644873 () Bool)

(declare-fun res!3062083 () Bool)

(assert (=> b!7644873 (=> res!3062083 e!4543884)))

(assert (=> b!7644873 (= res!3062083 (not ((_ is ElementMatch!20463) r!14126)))))

(declare-fun e!4543886 () Bool)

(assert (=> b!7644873 (= e!4543886 e!4543884)))

(declare-fun b!7644874 () Bool)

(assert (=> b!7644874 (= e!4543886 (not lt!2660867))))

(declare-fun b!7644875 () Bool)

(declare-fun head!15733 (List!73314) C!41252)

(assert (=> b!7644875 (= e!4543882 (= (head!15733 s!9605) (c!1408098 r!14126)))))

(declare-fun b!7644876 () Bool)

(assert (=> b!7644876 (= e!4543880 e!4543886)))

(declare-fun c!1408106 () Bool)

(assert (=> b!7644876 (= c!1408106 ((_ is EmptyLang!20463) r!14126))))

(declare-fun b!7644877 () Bool)

(declare-fun res!3062079 () Bool)

(assert (=> b!7644877 (=> res!3062079 e!4543884)))

(assert (=> b!7644877 (= res!3062079 e!4543882)))

(declare-fun res!3062077 () Bool)

(assert (=> b!7644877 (=> (not res!3062077) (not e!4543882))))

(assert (=> b!7644877 (= res!3062077 lt!2660867)))

(declare-fun b!7644878 () Bool)

(assert (=> b!7644878 (= e!4543881 (not (= (head!15733 s!9605) (c!1408098 r!14126))))))

(declare-fun b!7644879 () Bool)

(declare-fun derivativeStep!5933 (Regex!20463 C!41252) Regex!20463)

(assert (=> b!7644879 (= e!4543883 (matchR!9964 (derivativeStep!5933 r!14126 (head!15733 s!9605)) (tail!15273 s!9605)))))

(assert (= (and d!2325455 c!1408107) b!7644866))

(assert (= (and d!2325455 (not c!1408107)) b!7644879))

(assert (= (and d!2325455 c!1408105) b!7644872))

(assert (= (and d!2325455 (not c!1408105)) b!7644876))

(assert (= (and b!7644876 c!1408106) b!7644874))

(assert (= (and b!7644876 (not c!1408106)) b!7644873))

(assert (= (and b!7644873 (not res!3062083)) b!7644877))

(assert (= (and b!7644877 res!3062077) b!7644869))

(assert (= (and b!7644869 res!3062078) b!7644871))

(assert (= (and b!7644871 res!3062082) b!7644875))

(assert (= (and b!7644877 (not res!3062079)) b!7644867))

(assert (= (and b!7644867 res!3062081) b!7644868))

(assert (= (and b!7644868 (not res!3062084)) b!7644870))

(assert (= (and b!7644870 (not res!3062080)) b!7644878))

(assert (= (or b!7644872 b!7644868 b!7644869) bm!701784))

(declare-fun m!8164210 () Bool)

(assert (=> b!7644871 m!8164210))

(assert (=> b!7644871 m!8164210))

(declare-fun m!8164212 () Bool)

(assert (=> b!7644871 m!8164212))

(declare-fun m!8164214 () Bool)

(assert (=> b!7644875 m!8164214))

(declare-fun m!8164216 () Bool)

(assert (=> b!7644866 m!8164216))

(assert (=> b!7644870 m!8164210))

(assert (=> b!7644870 m!8164210))

(assert (=> b!7644870 m!8164212))

(declare-fun m!8164218 () Bool)

(assert (=> d!2325455 m!8164218))

(assert (=> d!2325455 m!8164180))

(assert (=> b!7644878 m!8164214))

(assert (=> bm!701784 m!8164218))

(assert (=> b!7644879 m!8164214))

(assert (=> b!7644879 m!8164214))

(declare-fun m!8164220 () Bool)

(assert (=> b!7644879 m!8164220))

(assert (=> b!7644879 m!8164210))

(assert (=> b!7644879 m!8164220))

(assert (=> b!7644879 m!8164210))

(declare-fun m!8164222 () Bool)

(assert (=> b!7644879 m!8164222))

(assert (=> b!7644831 d!2325455))

(declare-fun d!2325459 () Bool)

(assert (=> d!2325459 (matchR!9964 (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126)) s!9605)))

(declare-fun lt!2660868 () Unit!167914)

(assert (=> d!2325459 (= lt!2660868 (choose!59027 (regTwo!41439 r!14126) (regOne!41439 r!14126) s!9605))))

(declare-fun e!4543887 () Bool)

(assert (=> d!2325459 e!4543887))

(declare-fun res!3062085 () Bool)

(assert (=> d!2325459 (=> (not res!3062085) (not e!4543887))))

(assert (=> d!2325459 (= res!3062085 (validRegex!10881 (regTwo!41439 r!14126)))))

(assert (=> d!2325459 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!110 (regTwo!41439 r!14126) (regOne!41439 r!14126) s!9605) lt!2660868)))

(declare-fun b!7644880 () Bool)

(assert (=> b!7644880 (= e!4543887 (validRegex!10881 (regOne!41439 r!14126)))))

(assert (= (and d!2325459 res!3062085) b!7644880))

(assert (=> d!2325459 m!8164184))

(declare-fun m!8164224 () Bool)

(assert (=> d!2325459 m!8164224))

(assert (=> d!2325459 m!8164202))

(assert (=> b!7644880 m!8164190))

(assert (=> b!7644825 d!2325459))

(declare-fun b!7644881 () Bool)

(declare-fun e!4543891 () Bool)

(assert (=> b!7644881 (= e!4543891 (nullable!8963 (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126))))))

(declare-fun bm!701785 () Bool)

(declare-fun call!701790 () Bool)

(assert (=> bm!701785 (= call!701790 (isEmpty!41814 s!9605))))

(declare-fun b!7644882 () Bool)

(declare-fun e!4543892 () Bool)

(declare-fun e!4543893 () Bool)

(assert (=> b!7644882 (= e!4543892 e!4543893)))

(declare-fun res!3062090 () Bool)

(assert (=> b!7644882 (=> (not res!3062090) (not e!4543893))))

(declare-fun lt!2660869 () Bool)

(assert (=> b!7644882 (= res!3062090 (not lt!2660869))))

(declare-fun d!2325461 () Bool)

(declare-fun e!4543888 () Bool)

(assert (=> d!2325461 e!4543888))

(declare-fun c!1408108 () Bool)

(assert (=> d!2325461 (= c!1408108 ((_ is EmptyExpr!20463) (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126))))))

(assert (=> d!2325461 (= lt!2660869 e!4543891)))

(declare-fun c!1408110 () Bool)

(assert (=> d!2325461 (= c!1408110 (isEmpty!41814 s!9605))))

(assert (=> d!2325461 (validRegex!10881 (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126)))))

(assert (=> d!2325461 (= (matchR!9964 (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126)) s!9605) lt!2660869)))

(declare-fun b!7644883 () Bool)

(declare-fun e!4543889 () Bool)

(assert (=> b!7644883 (= e!4543893 e!4543889)))

(declare-fun res!3062093 () Bool)

(assert (=> b!7644883 (=> res!3062093 e!4543889)))

(assert (=> b!7644883 (= res!3062093 call!701790)))

(declare-fun b!7644884 () Bool)

(declare-fun res!3062087 () Bool)

(declare-fun e!4543890 () Bool)

(assert (=> b!7644884 (=> (not res!3062087) (not e!4543890))))

(assert (=> b!7644884 (= res!3062087 (not call!701790))))

(declare-fun b!7644885 () Bool)

(declare-fun res!3062089 () Bool)

(assert (=> b!7644885 (=> res!3062089 e!4543889)))

(assert (=> b!7644885 (= res!3062089 (not (isEmpty!41814 (tail!15273 s!9605))))))

(declare-fun b!7644886 () Bool)

(declare-fun res!3062091 () Bool)

(assert (=> b!7644886 (=> (not res!3062091) (not e!4543890))))

(assert (=> b!7644886 (= res!3062091 (isEmpty!41814 (tail!15273 s!9605)))))

(declare-fun b!7644887 () Bool)

(assert (=> b!7644887 (= e!4543888 (= lt!2660869 call!701790))))

(declare-fun b!7644888 () Bool)

(declare-fun res!3062092 () Bool)

(assert (=> b!7644888 (=> res!3062092 e!4543892)))

(assert (=> b!7644888 (= res!3062092 (not ((_ is ElementMatch!20463) (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126)))))))

(declare-fun e!4543894 () Bool)

(assert (=> b!7644888 (= e!4543894 e!4543892)))

(declare-fun b!7644889 () Bool)

(assert (=> b!7644889 (= e!4543894 (not lt!2660869))))

(declare-fun b!7644890 () Bool)

(assert (=> b!7644890 (= e!4543890 (= (head!15733 s!9605) (c!1408098 (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126)))))))

(declare-fun b!7644891 () Bool)

(assert (=> b!7644891 (= e!4543888 e!4543894)))

(declare-fun c!1408109 () Bool)

(assert (=> b!7644891 (= c!1408109 ((_ is EmptyLang!20463) (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126))))))

(declare-fun b!7644892 () Bool)

(declare-fun res!3062088 () Bool)

(assert (=> b!7644892 (=> res!3062088 e!4543892)))

(assert (=> b!7644892 (= res!3062088 e!4543890)))

(declare-fun res!3062086 () Bool)

(assert (=> b!7644892 (=> (not res!3062086) (not e!4543890))))

(assert (=> b!7644892 (= res!3062086 lt!2660869)))

(declare-fun b!7644893 () Bool)

(assert (=> b!7644893 (= e!4543889 (not (= (head!15733 s!9605) (c!1408098 (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126))))))))

(declare-fun b!7644894 () Bool)

(assert (=> b!7644894 (= e!4543891 (matchR!9964 (derivativeStep!5933 (Union!20463 (regTwo!41439 r!14126) (regOne!41439 r!14126)) (head!15733 s!9605)) (tail!15273 s!9605)))))

(assert (= (and d!2325461 c!1408110) b!7644881))

(assert (= (and d!2325461 (not c!1408110)) b!7644894))

(assert (= (and d!2325461 c!1408108) b!7644887))

(assert (= (and d!2325461 (not c!1408108)) b!7644891))

(assert (= (and b!7644891 c!1408109) b!7644889))

(assert (= (and b!7644891 (not c!1408109)) b!7644888))

(assert (= (and b!7644888 (not res!3062092)) b!7644892))

(assert (= (and b!7644892 res!3062086) b!7644884))

(assert (= (and b!7644884 res!3062087) b!7644886))

(assert (= (and b!7644886 res!3062091) b!7644890))

(assert (= (and b!7644892 (not res!3062088)) b!7644882))

(assert (= (and b!7644882 res!3062090) b!7644883))

(assert (= (and b!7644883 (not res!3062093)) b!7644885))

(assert (= (and b!7644885 (not res!3062089)) b!7644893))

(assert (= (or b!7644887 b!7644883 b!7644884) bm!701785))

(assert (=> b!7644886 m!8164210))

(assert (=> b!7644886 m!8164210))

(assert (=> b!7644886 m!8164212))

(assert (=> b!7644890 m!8164214))

(declare-fun m!8164226 () Bool)

(assert (=> b!7644881 m!8164226))

(assert (=> b!7644885 m!8164210))

(assert (=> b!7644885 m!8164210))

(assert (=> b!7644885 m!8164212))

(assert (=> d!2325461 m!8164218))

(declare-fun m!8164228 () Bool)

(assert (=> d!2325461 m!8164228))

(assert (=> b!7644893 m!8164214))

(assert (=> bm!701785 m!8164218))

(assert (=> b!7644894 m!8164214))

(assert (=> b!7644894 m!8164214))

(declare-fun m!8164230 () Bool)

(assert (=> b!7644894 m!8164230))

(assert (=> b!7644894 m!8164210))

(assert (=> b!7644894 m!8164230))

(assert (=> b!7644894 m!8164210))

(declare-fun m!8164232 () Bool)

(assert (=> b!7644894 m!8164232))

(assert (=> b!7644825 d!2325461))

(declare-fun d!2325463 () Bool)

(assert (=> d!2325463 (matchR!9964 (Union!20463 (regOne!41439 r!14126) (regTwo!41439 r!14126)) s!9605)))

(declare-fun lt!2660874 () Unit!167914)

(declare-fun choose!59028 (Regex!20463 Regex!20463 List!73314) Unit!167914)

(assert (=> d!2325463 (= lt!2660874 (choose!59028 (regTwo!41439 r!14126) (regOne!41439 r!14126) s!9605))))

(declare-fun e!4543911 () Bool)

(assert (=> d!2325463 e!4543911))

(declare-fun res!3062112 () Bool)

(assert (=> d!2325463 (=> (not res!3062112) (not e!4543911))))

(assert (=> d!2325463 (= res!3062112 (validRegex!10881 (regTwo!41439 r!14126)))))

(assert (=> d!2325463 (= (lemmaReversedUnionAcceptsSameString!38 (regTwo!41439 r!14126) (regOne!41439 r!14126) s!9605) lt!2660874)))

(declare-fun b!7644925 () Bool)

(assert (=> b!7644925 (= e!4543911 (validRegex!10881 (regOne!41439 r!14126)))))

(assert (= (and d!2325463 res!3062112) b!7644925))

(assert (=> d!2325463 m!8164198))

(declare-fun m!8164234 () Bool)

(assert (=> d!2325463 m!8164234))

(assert (=> d!2325463 m!8164202))

(assert (=> b!7644925 m!8164190))

(assert (=> b!7644825 d!2325463))

(assert (=> b!7644825 d!2325455))

(declare-fun b!7644944 () Bool)

(declare-fun res!3062126 () Bool)

(declare-fun e!4543930 () Bool)

(assert (=> b!7644944 (=> (not res!3062126) (not e!4543930))))

(declare-fun call!701800 () Bool)

(assert (=> b!7644944 (= res!3062126 call!701800)))

(declare-fun e!4543927 () Bool)

(assert (=> b!7644944 (= e!4543927 e!4543930)))

(declare-fun bm!701794 () Bool)

(declare-fun c!1408121 () Bool)

(assert (=> bm!701794 (= call!701800 (validRegex!10881 (ite c!1408121 (regOne!41439 r!14126) (regOne!41438 r!14126))))))

(declare-fun b!7644945 () Bool)

(declare-fun e!4543928 () Bool)

(declare-fun e!4543926 () Bool)

(assert (=> b!7644945 (= e!4543928 e!4543926)))

(declare-fun res!3062124 () Bool)

(assert (=> b!7644945 (= res!3062124 (not (nullable!8963 (reg!20792 r!14126))))))

(assert (=> b!7644945 (=> (not res!3062124) (not e!4543926))))

(declare-fun d!2325465 () Bool)

(declare-fun res!3062125 () Bool)

(declare-fun e!4543929 () Bool)

(assert (=> d!2325465 (=> res!3062125 e!4543929)))

(assert (=> d!2325465 (= res!3062125 ((_ is ElementMatch!20463) r!14126))))

(assert (=> d!2325465 (= (validRegex!10881 r!14126) e!4543929)))

(declare-fun b!7644946 () Bool)

(assert (=> b!7644946 (= e!4543929 e!4543928)))

(declare-fun c!1408122 () Bool)

(assert (=> b!7644946 (= c!1408122 ((_ is Star!20463) r!14126))))

(declare-fun b!7644947 () Bool)

(declare-fun call!701799 () Bool)

(assert (=> b!7644947 (= e!4543926 call!701799)))

(declare-fun b!7644948 () Bool)

(assert (=> b!7644948 (= e!4543928 e!4543927)))

(assert (=> b!7644948 (= c!1408121 ((_ is Union!20463) r!14126))))

(declare-fun b!7644949 () Bool)

(declare-fun e!4543932 () Bool)

(declare-fun call!701801 () Bool)

(assert (=> b!7644949 (= e!4543932 call!701801)))

(declare-fun b!7644950 () Bool)

(declare-fun e!4543931 () Bool)

(assert (=> b!7644950 (= e!4543931 e!4543932)))

(declare-fun res!3062123 () Bool)

(assert (=> b!7644950 (=> (not res!3062123) (not e!4543932))))

(assert (=> b!7644950 (= res!3062123 call!701800)))

(declare-fun bm!701795 () Bool)

(assert (=> bm!701795 (= call!701801 call!701799)))

(declare-fun b!7644951 () Bool)

(declare-fun res!3062127 () Bool)

(assert (=> b!7644951 (=> res!3062127 e!4543931)))

(assert (=> b!7644951 (= res!3062127 (not ((_ is Concat!29308) r!14126)))))

(assert (=> b!7644951 (= e!4543927 e!4543931)))

(declare-fun b!7644952 () Bool)

(assert (=> b!7644952 (= e!4543930 call!701801)))

(declare-fun bm!701796 () Bool)

(assert (=> bm!701796 (= call!701799 (validRegex!10881 (ite c!1408122 (reg!20792 r!14126) (ite c!1408121 (regTwo!41439 r!14126) (regTwo!41438 r!14126)))))))

(assert (= (and d!2325465 (not res!3062125)) b!7644946))

(assert (= (and b!7644946 c!1408122) b!7644945))

(assert (= (and b!7644946 (not c!1408122)) b!7644948))

(assert (= (and b!7644945 res!3062124) b!7644947))

(assert (= (and b!7644948 c!1408121) b!7644944))

(assert (= (and b!7644948 (not c!1408121)) b!7644951))

(assert (= (and b!7644944 res!3062126) b!7644952))

(assert (= (and b!7644951 (not res!3062127)) b!7644950))

(assert (= (and b!7644950 res!3062123) b!7644949))

(assert (= (or b!7644944 b!7644950) bm!701794))

(assert (= (or b!7644952 b!7644949) bm!701795))

(assert (= (or b!7644947 bm!701795) bm!701796))

(declare-fun m!8164236 () Bool)

(assert (=> bm!701794 m!8164236))

(declare-fun m!8164238 () Bool)

(assert (=> b!7644945 m!8164238))

(declare-fun m!8164240 () Bool)

(assert (=> bm!701796 m!8164240))

(assert (=> start!735736 d!2325465))

(assert (=> b!7644824 d!2325455))

(declare-fun b!7644953 () Bool)

(declare-fun res!3062131 () Bool)

(declare-fun e!4543937 () Bool)

(assert (=> b!7644953 (=> (not res!3062131) (not e!4543937))))

(declare-fun call!701803 () Bool)

(assert (=> b!7644953 (= res!3062131 call!701803)))

(declare-fun e!4543934 () Bool)

(assert (=> b!7644953 (= e!4543934 e!4543937)))

(declare-fun bm!701797 () Bool)

(declare-fun c!1408123 () Bool)

(assert (=> bm!701797 (= call!701803 (validRegex!10881 (ite c!1408123 (regOne!41439 (regOne!41439 r!14126)) (regOne!41438 (regOne!41439 r!14126)))))))

(declare-fun b!7644954 () Bool)

(declare-fun e!4543935 () Bool)

(declare-fun e!4543933 () Bool)

(assert (=> b!7644954 (= e!4543935 e!4543933)))

(declare-fun res!3062129 () Bool)

(assert (=> b!7644954 (= res!3062129 (not (nullable!8963 (reg!20792 (regOne!41439 r!14126)))))))

(assert (=> b!7644954 (=> (not res!3062129) (not e!4543933))))

(declare-fun d!2325467 () Bool)

(declare-fun res!3062130 () Bool)

(declare-fun e!4543936 () Bool)

(assert (=> d!2325467 (=> res!3062130 e!4543936)))

(assert (=> d!2325467 (= res!3062130 ((_ is ElementMatch!20463) (regOne!41439 r!14126)))))

(assert (=> d!2325467 (= (validRegex!10881 (regOne!41439 r!14126)) e!4543936)))

(declare-fun b!7644955 () Bool)

(assert (=> b!7644955 (= e!4543936 e!4543935)))

(declare-fun c!1408124 () Bool)

(assert (=> b!7644955 (= c!1408124 ((_ is Star!20463) (regOne!41439 r!14126)))))

(declare-fun b!7644956 () Bool)

(declare-fun call!701802 () Bool)

(assert (=> b!7644956 (= e!4543933 call!701802)))

(declare-fun b!7644957 () Bool)

(assert (=> b!7644957 (= e!4543935 e!4543934)))

(assert (=> b!7644957 (= c!1408123 ((_ is Union!20463) (regOne!41439 r!14126)))))

(declare-fun b!7644958 () Bool)

(declare-fun e!4543939 () Bool)

(declare-fun call!701804 () Bool)

(assert (=> b!7644958 (= e!4543939 call!701804)))

(declare-fun b!7644959 () Bool)

(declare-fun e!4543938 () Bool)

(assert (=> b!7644959 (= e!4543938 e!4543939)))

(declare-fun res!3062128 () Bool)

(assert (=> b!7644959 (=> (not res!3062128) (not e!4543939))))

(assert (=> b!7644959 (= res!3062128 call!701803)))

(declare-fun bm!701798 () Bool)

(assert (=> bm!701798 (= call!701804 call!701802)))

(declare-fun b!7644960 () Bool)

(declare-fun res!3062132 () Bool)

(assert (=> b!7644960 (=> res!3062132 e!4543938)))

(assert (=> b!7644960 (= res!3062132 (not ((_ is Concat!29308) (regOne!41439 r!14126))))))

(assert (=> b!7644960 (= e!4543934 e!4543938)))

(declare-fun b!7644961 () Bool)

(assert (=> b!7644961 (= e!4543937 call!701804)))

(declare-fun bm!701799 () Bool)

(assert (=> bm!701799 (= call!701802 (validRegex!10881 (ite c!1408124 (reg!20792 (regOne!41439 r!14126)) (ite c!1408123 (regTwo!41439 (regOne!41439 r!14126)) (regTwo!41438 (regOne!41439 r!14126))))))))

(assert (= (and d!2325467 (not res!3062130)) b!7644955))

(assert (= (and b!7644955 c!1408124) b!7644954))

(assert (= (and b!7644955 (not c!1408124)) b!7644957))

(assert (= (and b!7644954 res!3062129) b!7644956))

(assert (= (and b!7644957 c!1408123) b!7644953))

(assert (= (and b!7644957 (not c!1408123)) b!7644960))

(assert (= (and b!7644953 res!3062131) b!7644961))

(assert (= (and b!7644960 (not res!3062132)) b!7644959))

(assert (= (and b!7644959 res!3062128) b!7644958))

(assert (= (or b!7644953 b!7644959) bm!701797))

(assert (= (or b!7644961 b!7644958) bm!701798))

(assert (= (or b!7644956 bm!701798) bm!701799))

(declare-fun m!8164242 () Bool)

(assert (=> bm!701797 m!8164242))

(declare-fun m!8164244 () Bool)

(assert (=> b!7644954 m!8164244))

(declare-fun m!8164246 () Bool)

(assert (=> bm!701799 m!8164246))

(assert (=> b!7644829 d!2325467))

(declare-fun b!7644962 () Bool)

(declare-fun e!4543943 () Bool)

(assert (=> b!7644962 (= e!4543943 (nullable!8963 (regTwo!41439 r!14126)))))

(declare-fun bm!701800 () Bool)

(declare-fun call!701805 () Bool)

(assert (=> bm!701800 (= call!701805 (isEmpty!41814 s!9605))))

(declare-fun b!7644963 () Bool)

(declare-fun e!4543944 () Bool)

(declare-fun e!4543945 () Bool)

(assert (=> b!7644963 (= e!4543944 e!4543945)))

(declare-fun res!3062137 () Bool)

(assert (=> b!7644963 (=> (not res!3062137) (not e!4543945))))

(declare-fun lt!2660875 () Bool)

(assert (=> b!7644963 (= res!3062137 (not lt!2660875))))

(declare-fun d!2325469 () Bool)

(declare-fun e!4543940 () Bool)

(assert (=> d!2325469 e!4543940))

(declare-fun c!1408125 () Bool)

(assert (=> d!2325469 (= c!1408125 ((_ is EmptyExpr!20463) (regTwo!41439 r!14126)))))

(assert (=> d!2325469 (= lt!2660875 e!4543943)))

(declare-fun c!1408127 () Bool)

(assert (=> d!2325469 (= c!1408127 (isEmpty!41814 s!9605))))

(assert (=> d!2325469 (validRegex!10881 (regTwo!41439 r!14126))))

(assert (=> d!2325469 (= (matchR!9964 (regTwo!41439 r!14126) s!9605) lt!2660875)))

(declare-fun b!7644964 () Bool)

(declare-fun e!4543941 () Bool)

(assert (=> b!7644964 (= e!4543945 e!4543941)))

(declare-fun res!3062140 () Bool)

(assert (=> b!7644964 (=> res!3062140 e!4543941)))

(assert (=> b!7644964 (= res!3062140 call!701805)))

(declare-fun b!7644965 () Bool)

(declare-fun res!3062134 () Bool)

(declare-fun e!4543942 () Bool)

(assert (=> b!7644965 (=> (not res!3062134) (not e!4543942))))

(assert (=> b!7644965 (= res!3062134 (not call!701805))))

(declare-fun b!7644966 () Bool)

(declare-fun res!3062136 () Bool)

(assert (=> b!7644966 (=> res!3062136 e!4543941)))

(assert (=> b!7644966 (= res!3062136 (not (isEmpty!41814 (tail!15273 s!9605))))))

(declare-fun b!7644967 () Bool)

(declare-fun res!3062138 () Bool)

(assert (=> b!7644967 (=> (not res!3062138) (not e!4543942))))

(assert (=> b!7644967 (= res!3062138 (isEmpty!41814 (tail!15273 s!9605)))))

(declare-fun b!7644968 () Bool)

(assert (=> b!7644968 (= e!4543940 (= lt!2660875 call!701805))))

(declare-fun b!7644969 () Bool)

(declare-fun res!3062139 () Bool)

(assert (=> b!7644969 (=> res!3062139 e!4543944)))

(assert (=> b!7644969 (= res!3062139 (not ((_ is ElementMatch!20463) (regTwo!41439 r!14126))))))

(declare-fun e!4543946 () Bool)

(assert (=> b!7644969 (= e!4543946 e!4543944)))

(declare-fun b!7644970 () Bool)

(assert (=> b!7644970 (= e!4543946 (not lt!2660875))))

(declare-fun b!7644971 () Bool)

(assert (=> b!7644971 (= e!4543942 (= (head!15733 s!9605) (c!1408098 (regTwo!41439 r!14126))))))

(declare-fun b!7644972 () Bool)

(assert (=> b!7644972 (= e!4543940 e!4543946)))

(declare-fun c!1408126 () Bool)

(assert (=> b!7644972 (= c!1408126 ((_ is EmptyLang!20463) (regTwo!41439 r!14126)))))

(declare-fun b!7644973 () Bool)

(declare-fun res!3062135 () Bool)

(assert (=> b!7644973 (=> res!3062135 e!4543944)))

(assert (=> b!7644973 (= res!3062135 e!4543942)))

(declare-fun res!3062133 () Bool)

(assert (=> b!7644973 (=> (not res!3062133) (not e!4543942))))

(assert (=> b!7644973 (= res!3062133 lt!2660875)))

(declare-fun b!7644974 () Bool)

(assert (=> b!7644974 (= e!4543941 (not (= (head!15733 s!9605) (c!1408098 (regTwo!41439 r!14126)))))))

(declare-fun b!7644975 () Bool)

(assert (=> b!7644975 (= e!4543943 (matchR!9964 (derivativeStep!5933 (regTwo!41439 r!14126) (head!15733 s!9605)) (tail!15273 s!9605)))))

(assert (= (and d!2325469 c!1408127) b!7644962))

(assert (= (and d!2325469 (not c!1408127)) b!7644975))

(assert (= (and d!2325469 c!1408125) b!7644968))

(assert (= (and d!2325469 (not c!1408125)) b!7644972))

(assert (= (and b!7644972 c!1408126) b!7644970))

(assert (= (and b!7644972 (not c!1408126)) b!7644969))

(assert (= (and b!7644969 (not res!3062139)) b!7644973))

(assert (= (and b!7644973 res!3062133) b!7644965))

(assert (= (and b!7644965 res!3062134) b!7644967))

(assert (= (and b!7644967 res!3062138) b!7644971))

(assert (= (and b!7644973 (not res!3062135)) b!7644963))

(assert (= (and b!7644963 res!3062137) b!7644964))

(assert (= (and b!7644964 (not res!3062140)) b!7644966))

(assert (= (and b!7644966 (not res!3062136)) b!7644974))

(assert (= (or b!7644968 b!7644964 b!7644965) bm!701800))

(assert (=> b!7644967 m!8164210))

(assert (=> b!7644967 m!8164210))

(assert (=> b!7644967 m!8164212))

(assert (=> b!7644971 m!8164214))

(declare-fun m!8164248 () Bool)

(assert (=> b!7644962 m!8164248))

(assert (=> b!7644966 m!8164210))

(assert (=> b!7644966 m!8164210))

(assert (=> b!7644966 m!8164212))

(assert (=> d!2325469 m!8164218))

(assert (=> d!2325469 m!8164202))

(assert (=> b!7644974 m!8164214))

(assert (=> bm!701800 m!8164218))

(assert (=> b!7644975 m!8164214))

(assert (=> b!7644975 m!8164214))

(declare-fun m!8164250 () Bool)

(assert (=> b!7644975 m!8164250))

(assert (=> b!7644975 m!8164210))

(assert (=> b!7644975 m!8164250))

(assert (=> b!7644975 m!8164210))

(declare-fun m!8164252 () Bool)

(assert (=> b!7644975 m!8164252))

(assert (=> b!7644829 d!2325469))

(declare-fun b!7644976 () Bool)

(declare-fun e!4543950 () Bool)

(assert (=> b!7644976 (= e!4543950 (nullable!8963 (regOne!41439 r!14126)))))

(declare-fun bm!701801 () Bool)

(declare-fun call!701806 () Bool)

(assert (=> bm!701801 (= call!701806 (isEmpty!41814 s!9605))))

(declare-fun b!7644977 () Bool)

(declare-fun e!4543951 () Bool)

(declare-fun e!4543952 () Bool)

(assert (=> b!7644977 (= e!4543951 e!4543952)))

(declare-fun res!3062145 () Bool)

(assert (=> b!7644977 (=> (not res!3062145) (not e!4543952))))

(declare-fun lt!2660876 () Bool)

(assert (=> b!7644977 (= res!3062145 (not lt!2660876))))

(declare-fun d!2325471 () Bool)

(declare-fun e!4543947 () Bool)

(assert (=> d!2325471 e!4543947))

(declare-fun c!1408128 () Bool)

(assert (=> d!2325471 (= c!1408128 ((_ is EmptyExpr!20463) (regOne!41439 r!14126)))))

(assert (=> d!2325471 (= lt!2660876 e!4543950)))

(declare-fun c!1408130 () Bool)

(assert (=> d!2325471 (= c!1408130 (isEmpty!41814 s!9605))))

(assert (=> d!2325471 (validRegex!10881 (regOne!41439 r!14126))))

(assert (=> d!2325471 (= (matchR!9964 (regOne!41439 r!14126) s!9605) lt!2660876)))

(declare-fun b!7644978 () Bool)

(declare-fun e!4543948 () Bool)

(assert (=> b!7644978 (= e!4543952 e!4543948)))

(declare-fun res!3062148 () Bool)

(assert (=> b!7644978 (=> res!3062148 e!4543948)))

(assert (=> b!7644978 (= res!3062148 call!701806)))

(declare-fun b!7644979 () Bool)

(declare-fun res!3062142 () Bool)

(declare-fun e!4543949 () Bool)

(assert (=> b!7644979 (=> (not res!3062142) (not e!4543949))))

(assert (=> b!7644979 (= res!3062142 (not call!701806))))

(declare-fun b!7644980 () Bool)

(declare-fun res!3062144 () Bool)

(assert (=> b!7644980 (=> res!3062144 e!4543948)))

(assert (=> b!7644980 (= res!3062144 (not (isEmpty!41814 (tail!15273 s!9605))))))

(declare-fun b!7644981 () Bool)

(declare-fun res!3062146 () Bool)

(assert (=> b!7644981 (=> (not res!3062146) (not e!4543949))))

(assert (=> b!7644981 (= res!3062146 (isEmpty!41814 (tail!15273 s!9605)))))

(declare-fun b!7644982 () Bool)

(assert (=> b!7644982 (= e!4543947 (= lt!2660876 call!701806))))

(declare-fun b!7644983 () Bool)

(declare-fun res!3062147 () Bool)

(assert (=> b!7644983 (=> res!3062147 e!4543951)))

(assert (=> b!7644983 (= res!3062147 (not ((_ is ElementMatch!20463) (regOne!41439 r!14126))))))

(declare-fun e!4543953 () Bool)

(assert (=> b!7644983 (= e!4543953 e!4543951)))

(declare-fun b!7644984 () Bool)

(assert (=> b!7644984 (= e!4543953 (not lt!2660876))))

(declare-fun b!7644985 () Bool)

(assert (=> b!7644985 (= e!4543949 (= (head!15733 s!9605) (c!1408098 (regOne!41439 r!14126))))))

(declare-fun b!7644986 () Bool)

(assert (=> b!7644986 (= e!4543947 e!4543953)))

(declare-fun c!1408129 () Bool)

(assert (=> b!7644986 (= c!1408129 ((_ is EmptyLang!20463) (regOne!41439 r!14126)))))

(declare-fun b!7644987 () Bool)

(declare-fun res!3062143 () Bool)

(assert (=> b!7644987 (=> res!3062143 e!4543951)))

(assert (=> b!7644987 (= res!3062143 e!4543949)))

(declare-fun res!3062141 () Bool)

(assert (=> b!7644987 (=> (not res!3062141) (not e!4543949))))

(assert (=> b!7644987 (= res!3062141 lt!2660876)))

(declare-fun b!7644988 () Bool)

(assert (=> b!7644988 (= e!4543948 (not (= (head!15733 s!9605) (c!1408098 (regOne!41439 r!14126)))))))

(declare-fun b!7644989 () Bool)

(assert (=> b!7644989 (= e!4543950 (matchR!9964 (derivativeStep!5933 (regOne!41439 r!14126) (head!15733 s!9605)) (tail!15273 s!9605)))))

(assert (= (and d!2325471 c!1408130) b!7644976))

(assert (= (and d!2325471 (not c!1408130)) b!7644989))

(assert (= (and d!2325471 c!1408128) b!7644982))

(assert (= (and d!2325471 (not c!1408128)) b!7644986))

(assert (= (and b!7644986 c!1408129) b!7644984))

(assert (= (and b!7644986 (not c!1408129)) b!7644983))

(assert (= (and b!7644983 (not res!3062147)) b!7644987))

(assert (= (and b!7644987 res!3062141) b!7644979))

(assert (= (and b!7644979 res!3062142) b!7644981))

(assert (= (and b!7644981 res!3062146) b!7644985))

(assert (= (and b!7644987 (not res!3062143)) b!7644977))

(assert (= (and b!7644977 res!3062145) b!7644978))

(assert (= (and b!7644978 (not res!3062148)) b!7644980))

(assert (= (and b!7644980 (not res!3062144)) b!7644988))

(assert (= (or b!7644982 b!7644978 b!7644979) bm!701801))

(assert (=> b!7644981 m!8164210))

(assert (=> b!7644981 m!8164210))

(assert (=> b!7644981 m!8164212))

(assert (=> b!7644985 m!8164214))

(declare-fun m!8164254 () Bool)

(assert (=> b!7644976 m!8164254))

(assert (=> b!7644980 m!8164210))

(assert (=> b!7644980 m!8164210))

(assert (=> b!7644980 m!8164212))

(assert (=> d!2325471 m!8164218))

(assert (=> d!2325471 m!8164190))

(assert (=> b!7644988 m!8164214))

(assert (=> bm!701801 m!8164218))

(assert (=> b!7644989 m!8164214))

(assert (=> b!7644989 m!8164214))

(declare-fun m!8164256 () Bool)

(assert (=> b!7644989 m!8164256))

(assert (=> b!7644989 m!8164210))

(assert (=> b!7644989 m!8164256))

(assert (=> b!7644989 m!8164210))

(declare-fun m!8164258 () Bool)

(assert (=> b!7644989 m!8164258))

(assert (=> b!7644829 d!2325471))

(declare-fun b!7645016 () Bool)

(declare-fun e!4543963 () Bool)

(declare-fun tp!2231610 () Bool)

(assert (=> b!7645016 (= e!4543963 tp!2231610)))

(declare-fun b!7645015 () Bool)

(declare-fun tp!2231609 () Bool)

(declare-fun tp!2231612 () Bool)

(assert (=> b!7645015 (= e!4543963 (and tp!2231609 tp!2231612))))

(declare-fun b!7645017 () Bool)

(declare-fun tp!2231608 () Bool)

(declare-fun tp!2231611 () Bool)

(assert (=> b!7645017 (= e!4543963 (and tp!2231608 tp!2231611))))

(assert (=> b!7644823 (= tp!2231595 e!4543963)))

(declare-fun b!7645014 () Bool)

(assert (=> b!7645014 (= e!4543963 tp_is_empty!51281)))

(assert (= (and b!7644823 ((_ is ElementMatch!20463) (reg!20792 r!14126))) b!7645014))

(assert (= (and b!7644823 ((_ is Concat!29308) (reg!20792 r!14126))) b!7645015))

(assert (= (and b!7644823 ((_ is Star!20463) (reg!20792 r!14126))) b!7645016))

(assert (= (and b!7644823 ((_ is Union!20463) (reg!20792 r!14126))) b!7645017))

(declare-fun b!7645020 () Bool)

(declare-fun e!4543964 () Bool)

(declare-fun tp!2231615 () Bool)

(assert (=> b!7645020 (= e!4543964 tp!2231615)))

(declare-fun b!7645019 () Bool)

(declare-fun tp!2231614 () Bool)

(declare-fun tp!2231617 () Bool)

(assert (=> b!7645019 (= e!4543964 (and tp!2231614 tp!2231617))))

(declare-fun b!7645021 () Bool)

(declare-fun tp!2231613 () Bool)

(declare-fun tp!2231616 () Bool)

(assert (=> b!7645021 (= e!4543964 (and tp!2231613 tp!2231616))))

(assert (=> b!7644827 (= tp!2231596 e!4543964)))

(declare-fun b!7645018 () Bool)

(assert (=> b!7645018 (= e!4543964 tp_is_empty!51281)))

(assert (= (and b!7644827 ((_ is ElementMatch!20463) (regOne!41438 r!14126))) b!7645018))

(assert (= (and b!7644827 ((_ is Concat!29308) (regOne!41438 r!14126))) b!7645019))

(assert (= (and b!7644827 ((_ is Star!20463) (regOne!41438 r!14126))) b!7645020))

(assert (= (and b!7644827 ((_ is Union!20463) (regOne!41438 r!14126))) b!7645021))

(declare-fun b!7645024 () Bool)

(declare-fun e!4543965 () Bool)

(declare-fun tp!2231620 () Bool)

(assert (=> b!7645024 (= e!4543965 tp!2231620)))

(declare-fun b!7645023 () Bool)

(declare-fun tp!2231619 () Bool)

(declare-fun tp!2231622 () Bool)

(assert (=> b!7645023 (= e!4543965 (and tp!2231619 tp!2231622))))

(declare-fun b!7645025 () Bool)

(declare-fun tp!2231618 () Bool)

(declare-fun tp!2231621 () Bool)

(assert (=> b!7645025 (= e!4543965 (and tp!2231618 tp!2231621))))

(assert (=> b!7644827 (= tp!2231592 e!4543965)))

(declare-fun b!7645022 () Bool)

(assert (=> b!7645022 (= e!4543965 tp_is_empty!51281)))

(assert (= (and b!7644827 ((_ is ElementMatch!20463) (regTwo!41438 r!14126))) b!7645022))

(assert (= (and b!7644827 ((_ is Concat!29308) (regTwo!41438 r!14126))) b!7645023))

(assert (= (and b!7644827 ((_ is Star!20463) (regTwo!41438 r!14126))) b!7645024))

(assert (= (and b!7644827 ((_ is Union!20463) (regTwo!41438 r!14126))) b!7645025))

(declare-fun b!7645030 () Bool)

(declare-fun e!4543968 () Bool)

(declare-fun tp!2231625 () Bool)

(assert (=> b!7645030 (= e!4543968 (and tp_is_empty!51281 tp!2231625))))

(assert (=> b!7644826 (= tp!2231594 e!4543968)))

(assert (= (and b!7644826 ((_ is Cons!73190) (t!388049 s!9605))) b!7645030))

(declare-fun b!7645033 () Bool)

(declare-fun e!4543969 () Bool)

(declare-fun tp!2231628 () Bool)

(assert (=> b!7645033 (= e!4543969 tp!2231628)))

(declare-fun b!7645032 () Bool)

(declare-fun tp!2231627 () Bool)

(declare-fun tp!2231630 () Bool)

(assert (=> b!7645032 (= e!4543969 (and tp!2231627 tp!2231630))))

(declare-fun b!7645034 () Bool)

(declare-fun tp!2231626 () Bool)

(declare-fun tp!2231629 () Bool)

(assert (=> b!7645034 (= e!4543969 (and tp!2231626 tp!2231629))))

(assert (=> b!7644819 (= tp!2231597 e!4543969)))

(declare-fun b!7645031 () Bool)

(assert (=> b!7645031 (= e!4543969 tp_is_empty!51281)))

(assert (= (and b!7644819 ((_ is ElementMatch!20463) (regOne!41439 r!14126))) b!7645031))

(assert (= (and b!7644819 ((_ is Concat!29308) (regOne!41439 r!14126))) b!7645032))

(assert (= (and b!7644819 ((_ is Star!20463) (regOne!41439 r!14126))) b!7645033))

(assert (= (and b!7644819 ((_ is Union!20463) (regOne!41439 r!14126))) b!7645034))

(declare-fun b!7645037 () Bool)

(declare-fun e!4543970 () Bool)

(declare-fun tp!2231633 () Bool)

(assert (=> b!7645037 (= e!4543970 tp!2231633)))

(declare-fun b!7645036 () Bool)

(declare-fun tp!2231632 () Bool)

(declare-fun tp!2231635 () Bool)

(assert (=> b!7645036 (= e!4543970 (and tp!2231632 tp!2231635))))

(declare-fun b!7645038 () Bool)

(declare-fun tp!2231631 () Bool)

(declare-fun tp!2231634 () Bool)

(assert (=> b!7645038 (= e!4543970 (and tp!2231631 tp!2231634))))

(assert (=> b!7644819 (= tp!2231593 e!4543970)))

(declare-fun b!7645035 () Bool)

(assert (=> b!7645035 (= e!4543970 tp_is_empty!51281)))

(assert (= (and b!7644819 ((_ is ElementMatch!20463) (regTwo!41439 r!14126))) b!7645035))

(assert (= (and b!7644819 ((_ is Concat!29308) (regTwo!41439 r!14126))) b!7645036))

(assert (= (and b!7644819 ((_ is Star!20463) (regTwo!41439 r!14126))) b!7645037))

(assert (= (and b!7644819 ((_ is Union!20463) (regTwo!41439 r!14126))) b!7645038))

(check-sat (not b!7645023) (not b!7644954) (not b!7644866) (not b!7645021) (not b!7645019) (not b!7644894) (not b!7645038) (not bm!701800) (not d!2325461) (not b!7644885) (not b!7644945) (not b!7644976) (not b!7644985) (not bm!701785) (not b!7644881) (not b!7645033) (not bm!701784) (not b!7644886) (not b!7645016) (not b!7644879) (not b!7645036) (not b!7645030) (not b!7644890) (not b!7644974) (not d!2325463) (not b!7645017) (not b!7644925) (not b!7644871) (not b!7645037) (not bm!701801) (not b!7644962) (not b!7645025) (not b!7644971) (not b!7644870) (not b!7645034) (not d!2325471) (not b!7645024) (not bm!701797) (not d!2325459) (not bm!701796) (not b!7644893) (not d!2325455) (not b!7645032) (not b!7644975) (not b!7644988) (not b!7644834) (not b!7644980) (not bm!701799) (not b!7644981) (not b!7644878) (not d!2325469) (not b!7644966) (not b!7645015) (not d!2325453) (not b!7644989) (not b!7644967) (not b!7644875) tp_is_empty!51281 (not bm!701794) (not b!7644880) (not b!7645020))
(check-sat)

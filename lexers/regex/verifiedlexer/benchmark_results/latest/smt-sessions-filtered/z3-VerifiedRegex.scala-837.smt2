; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45800 () Bool)

(assert start!45800)

(declare-fun b!479851 () Bool)

(declare-fun res!211997 () Bool)

(declare-fun e!292477 () Bool)

(assert (=> b!479851 (=> (not res!211997) (not e!292477))))

(declare-datatypes ((C!3264 0))(
  ( (C!3265 (val!1618 Int)) )
))
(declare-datatypes ((Regex!1171 0))(
  ( (ElementMatch!1171 (c!95936 C!3264)) (Concat!2071 (regOne!2854 Regex!1171) (regTwo!2854 Regex!1171)) (EmptyExpr!1171) (Star!1171 (reg!1500 Regex!1171)) (EmptyLang!1171) (Union!1171 (regOne!2855 Regex!1171) (regTwo!2855 Regex!1171)) )
))
(declare-fun r!20230 () Regex!1171)

(get-info :version)

(assert (=> b!479851 (= res!211997 (and (not ((_ is EmptyLang!1171) r!20230)) (not ((_ is EmptyExpr!1171) r!20230)) (not ((_ is ElementMatch!1171) r!20230)) (not ((_ is Union!1171) r!20230)) (not ((_ is Star!1171) r!20230))))))

(declare-fun b!479852 () Bool)

(declare-fun e!292475 () Bool)

(declare-fun e!292473 () Bool)

(assert (=> b!479852 (= e!292475 (not e!292473))))

(declare-fun res!211996 () Bool)

(assert (=> b!479852 (=> res!211996 e!292473)))

(declare-fun validRegex!399 (Regex!1171) Bool)

(assert (=> b!479852 (= res!211996 (not (validRegex!399 (regTwo!2854 r!20230))))))

(declare-fun lt!210936 () Bool)

(assert (=> b!479852 (not lt!210936)))

(declare-datatypes ((Unit!8376 0))(
  ( (Unit!8377) )
))
(declare-fun lt!210935 () Unit!8376)

(declare-fun lemmaNullableThenNotLostCause!12 (Regex!1171) Unit!8376)

(assert (=> b!479852 (= lt!210935 (lemmaNullableThenNotLostCause!12 (regOne!2854 r!20230)))))

(declare-fun b!479853 () Bool)

(declare-fun e!292474 () Bool)

(declare-fun lostCause!165 (Regex!1171) Bool)

(assert (=> b!479853 (= e!292474 (lostCause!165 (regTwo!2854 r!20230)))))

(declare-fun b!479854 () Bool)

(declare-fun e!292476 () Bool)

(declare-fun tp!134701 () Bool)

(assert (=> b!479854 (= e!292476 tp!134701)))

(declare-fun b!479855 () Bool)

(declare-fun res!211999 () Bool)

(assert (=> b!479855 (=> (not res!211999) (not e!292477))))

(assert (=> b!479855 (= res!211999 (lostCause!165 r!20230))))

(declare-fun b!479856 () Bool)

(declare-fun regexDepth!8 (Regex!1171) Int)

(assert (=> b!479856 (= e!292473 (< (regexDepth!8 (regTwo!2854 r!20230)) (regexDepth!8 r!20230)))))

(declare-fun b!479857 () Bool)

(declare-fun res!212001 () Bool)

(assert (=> b!479857 (=> (not res!212001) (not e!292475))))

(declare-fun nullable!306 (Regex!1171) Bool)

(assert (=> b!479857 (= res!212001 (nullable!306 (regOne!2854 r!20230)))))

(declare-fun res!212003 () Bool)

(assert (=> start!45800 (=> (not res!212003) (not e!292477))))

(assert (=> start!45800 (= res!212003 (validRegex!399 r!20230))))

(assert (=> start!45800 e!292477))

(assert (=> start!45800 e!292476))

(declare-fun b!479858 () Bool)

(declare-fun tp!134697 () Bool)

(declare-fun tp!134700 () Bool)

(assert (=> b!479858 (= e!292476 (and tp!134697 tp!134700))))

(declare-fun b!479859 () Bool)

(assert (=> b!479859 (= e!292477 e!292475)))

(declare-fun res!211998 () Bool)

(assert (=> b!479859 (=> (not res!211998) (not e!292475))))

(assert (=> b!479859 (= res!211998 e!292474)))

(declare-fun res!212002 () Bool)

(assert (=> b!479859 (=> res!212002 e!292474)))

(assert (=> b!479859 (= res!212002 lt!210936)))

(assert (=> b!479859 (= lt!210936 (lostCause!165 (regOne!2854 r!20230)))))

(declare-fun b!479860 () Bool)

(declare-fun tp_is_empty!2339 () Bool)

(assert (=> b!479860 (= e!292476 tp_is_empty!2339)))

(declare-fun b!479861 () Bool)

(declare-fun tp!134698 () Bool)

(declare-fun tp!134699 () Bool)

(assert (=> b!479861 (= e!292476 (and tp!134698 tp!134699))))

(declare-fun b!479862 () Bool)

(declare-fun res!212000 () Bool)

(assert (=> b!479862 (=> res!212000 e!292473)))

(assert (=> b!479862 (= res!212000 (not (lostCause!165 (regTwo!2854 r!20230))))))

(assert (= (and start!45800 res!212003) b!479855))

(assert (= (and b!479855 res!211999) b!479851))

(assert (= (and b!479851 res!211997) b!479859))

(assert (= (and b!479859 (not res!212002)) b!479853))

(assert (= (and b!479859 res!211998) b!479857))

(assert (= (and b!479857 res!212001) b!479852))

(assert (= (and b!479852 (not res!211996)) b!479862))

(assert (= (and b!479862 (not res!212000)) b!479856))

(assert (= (and start!45800 ((_ is ElementMatch!1171) r!20230)) b!479860))

(assert (= (and start!45800 ((_ is Concat!2071) r!20230)) b!479858))

(assert (= (and start!45800 ((_ is Star!1171) r!20230)) b!479854))

(assert (= (and start!45800 ((_ is Union!1171) r!20230)) b!479861))

(declare-fun m!748829 () Bool)

(assert (=> b!479852 m!748829))

(declare-fun m!748831 () Bool)

(assert (=> b!479852 m!748831))

(declare-fun m!748833 () Bool)

(assert (=> b!479853 m!748833))

(declare-fun m!748835 () Bool)

(assert (=> b!479859 m!748835))

(assert (=> b!479862 m!748833))

(declare-fun m!748837 () Bool)

(assert (=> b!479856 m!748837))

(declare-fun m!748839 () Bool)

(assert (=> b!479856 m!748839))

(declare-fun m!748841 () Bool)

(assert (=> b!479857 m!748841))

(declare-fun m!748843 () Bool)

(assert (=> start!45800 m!748843))

(declare-fun m!748845 () Bool)

(assert (=> b!479855 m!748845))

(check-sat (not b!479858) (not b!479855) (not b!479859) tp_is_empty!2339 (not b!479862) (not b!479853) (not start!45800) (not b!479857) (not b!479852) (not b!479861) (not b!479856) (not b!479854))
(check-sat)
(get-model)

(declare-fun d!180414 () Bool)

(declare-fun lostCauseFct!73 (Regex!1171) Bool)

(assert (=> d!180414 (= (lostCause!165 r!20230) (lostCauseFct!73 r!20230))))

(declare-fun bs!58822 () Bool)

(assert (= bs!58822 d!180414))

(declare-fun m!748851 () Bool)

(assert (=> bs!58822 m!748851))

(assert (=> b!479855 d!180414))

(declare-fun b!479908 () Bool)

(declare-fun e!292519 () Bool)

(declare-fun call!33937 () Bool)

(assert (=> b!479908 (= e!292519 call!33937)))

(declare-fun b!479909 () Bool)

(declare-fun e!292515 () Bool)

(declare-fun call!33938 () Bool)

(assert (=> b!479909 (= e!292515 call!33938)))

(declare-fun b!479910 () Bool)

(declare-fun e!292513 () Bool)

(declare-fun e!292516 () Bool)

(assert (=> b!479910 (= e!292513 e!292516)))

(declare-fun res!212029 () Bool)

(assert (=> b!479910 (=> (not res!212029) (not e!292516))))

(assert (=> b!479910 (= res!212029 call!33938)))

(declare-fun b!479911 () Bool)

(declare-fun e!292514 () Bool)

(declare-fun e!292518 () Bool)

(assert (=> b!479911 (= e!292514 e!292518)))

(declare-fun c!95948 () Bool)

(assert (=> b!479911 (= c!95948 ((_ is Union!1171) r!20230))))

(declare-fun b!479912 () Bool)

(declare-fun res!212031 () Bool)

(assert (=> b!479912 (=> (not res!212031) (not e!292515))))

(declare-fun call!33939 () Bool)

(assert (=> b!479912 (= res!212031 call!33939)))

(assert (=> b!479912 (= e!292518 e!292515)))

(declare-fun b!479913 () Bool)

(declare-fun res!212033 () Bool)

(assert (=> b!479913 (=> res!212033 e!292513)))

(assert (=> b!479913 (= res!212033 (not ((_ is Concat!2071) r!20230)))))

(assert (=> b!479913 (= e!292518 e!292513)))

(declare-fun bm!33932 () Bool)

(assert (=> bm!33932 (= call!33938 call!33937)))

(declare-fun d!180422 () Bool)

(declare-fun res!212030 () Bool)

(declare-fun e!292517 () Bool)

(assert (=> d!180422 (=> res!212030 e!292517)))

(assert (=> d!180422 (= res!212030 ((_ is ElementMatch!1171) r!20230))))

(assert (=> d!180422 (= (validRegex!399 r!20230) e!292517)))

(declare-fun bm!33933 () Bool)

(assert (=> bm!33933 (= call!33939 (validRegex!399 (ite c!95948 (regOne!2855 r!20230) (regTwo!2854 r!20230))))))

(declare-fun b!479914 () Bool)

(assert (=> b!479914 (= e!292517 e!292514)))

(declare-fun c!95947 () Bool)

(assert (=> b!479914 (= c!95947 ((_ is Star!1171) r!20230))))

(declare-fun b!479915 () Bool)

(assert (=> b!479915 (= e!292514 e!292519)))

(declare-fun res!212032 () Bool)

(assert (=> b!479915 (= res!212032 (not (nullable!306 (reg!1500 r!20230))))))

(assert (=> b!479915 (=> (not res!212032) (not e!292519))))

(declare-fun b!479916 () Bool)

(assert (=> b!479916 (= e!292516 call!33939)))

(declare-fun bm!33934 () Bool)

(assert (=> bm!33934 (= call!33937 (validRegex!399 (ite c!95947 (reg!1500 r!20230) (ite c!95948 (regTwo!2855 r!20230) (regOne!2854 r!20230)))))))

(assert (= (and d!180422 (not res!212030)) b!479914))

(assert (= (and b!479914 c!95947) b!479915))

(assert (= (and b!479914 (not c!95947)) b!479911))

(assert (= (and b!479915 res!212032) b!479908))

(assert (= (and b!479911 c!95948) b!479912))

(assert (= (and b!479911 (not c!95948)) b!479913))

(assert (= (and b!479912 res!212031) b!479909))

(assert (= (and b!479913 (not res!212033)) b!479910))

(assert (= (and b!479910 res!212029) b!479916))

(assert (= (or b!479909 b!479910) bm!33932))

(assert (= (or b!479912 b!479916) bm!33933))

(assert (= (or b!479908 bm!33932) bm!33934))

(declare-fun m!748859 () Bool)

(assert (=> bm!33933 m!748859))

(declare-fun m!748861 () Bool)

(assert (=> b!479915 m!748861))

(declare-fun m!748863 () Bool)

(assert (=> bm!33934 m!748863))

(assert (=> start!45800 d!180422))

(declare-fun b!479985 () Bool)

(declare-fun e!292564 () Int)

(declare-fun e!292560 () Int)

(assert (=> b!479985 (= e!292564 e!292560)))

(declare-fun c!95981 () Bool)

(assert (=> b!479985 (= c!95981 ((_ is Concat!2071) (regTwo!2854 r!20230)))))

(declare-fun b!479986 () Bool)

(declare-fun c!95979 () Bool)

(assert (=> b!479986 (= c!95979 ((_ is Union!1171) (regTwo!2854 r!20230)))))

(declare-fun e!292569 () Int)

(assert (=> b!479986 (= e!292569 e!292564)))

(declare-fun bm!33963 () Bool)

(declare-fun call!33971 () Int)

(declare-fun call!33970 () Int)

(assert (=> bm!33963 (= call!33971 call!33970)))

(declare-fun d!180426 () Bool)

(declare-fun e!292561 () Bool)

(assert (=> d!180426 e!292561))

(declare-fun res!212047 () Bool)

(assert (=> d!180426 (=> (not res!212047) (not e!292561))))

(declare-fun lt!210944 () Int)

(assert (=> d!180426 (= res!212047 (> lt!210944 0))))

(declare-fun e!292568 () Int)

(assert (=> d!180426 (= lt!210944 e!292568)))

(declare-fun c!95978 () Bool)

(assert (=> d!180426 (= c!95978 ((_ is ElementMatch!1171) (regTwo!2854 r!20230)))))

(assert (=> d!180426 (= (regexDepth!8 (regTwo!2854 r!20230)) lt!210944)))

(declare-fun call!33968 () Int)

(declare-fun call!33974 () Int)

(declare-fun bm!33964 () Bool)

(declare-fun call!33972 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!33964 (= call!33968 (maxBigInt!0 (ite c!95979 call!33972 call!33974) (ite c!95979 call!33974 call!33972)))))

(declare-fun b!479987 () Bool)

(declare-fun e!292566 () Bool)

(assert (=> b!479987 (= e!292566 (= lt!210944 1))))

(declare-fun b!479988 () Bool)

(assert (=> b!479988 (= e!292560 1)))

(declare-fun b!479989 () Bool)

(assert (=> b!479989 (= e!292568 e!292569)))

(declare-fun c!95977 () Bool)

(assert (=> b!479989 (= c!95977 ((_ is Star!1171) (regTwo!2854 r!20230)))))

(declare-fun b!479990 () Bool)

(assert (=> b!479990 (= e!292568 1)))

(declare-fun b!479991 () Bool)

(assert (=> b!479991 (= e!292566 (> lt!210944 call!33971))))

(declare-fun b!479992 () Bool)

(declare-fun c!95983 () Bool)

(assert (=> b!479992 (= c!95983 ((_ is Star!1171) (regTwo!2854 r!20230)))))

(declare-fun e!292563 () Bool)

(assert (=> b!479992 (= e!292563 e!292566)))

(declare-fun b!479993 () Bool)

(declare-fun e!292565 () Bool)

(assert (=> b!479993 (= e!292565 e!292563)))

(declare-fun c!95980 () Bool)

(assert (=> b!479993 (= c!95980 ((_ is Concat!2071) (regTwo!2854 r!20230)))))

(declare-fun c!95982 () Bool)

(declare-fun bm!33965 () Bool)

(assert (=> bm!33965 (= call!33970 (regexDepth!8 (ite c!95982 (regTwo!2855 (regTwo!2854 r!20230)) (ite c!95980 (regOne!2854 (regTwo!2854 r!20230)) (reg!1500 (regTwo!2854 r!20230))))))))

(declare-fun b!479994 () Bool)

(declare-fun e!292567 () Bool)

(declare-fun call!33969 () Int)

(assert (=> b!479994 (= e!292567 (> lt!210944 call!33969))))

(declare-fun bm!33966 () Bool)

(declare-fun call!33973 () Int)

(assert (=> bm!33966 (= call!33972 call!33973)))

(declare-fun b!479995 () Bool)

(assert (=> b!479995 (= e!292560 (+ 1 call!33968))))

(declare-fun b!479996 () Bool)

(assert (=> b!479996 (= e!292561 e!292565)))

(assert (=> b!479996 (= c!95982 ((_ is Union!1171) (regTwo!2854 r!20230)))))

(declare-fun b!479997 () Bool)

(declare-fun e!292562 () Bool)

(assert (=> b!479997 (= e!292565 e!292562)))

(declare-fun res!212048 () Bool)

(assert (=> b!479997 (= res!212048 (> lt!210944 call!33969))))

(assert (=> b!479997 (=> (not res!212048) (not e!292562))))

(declare-fun bm!33967 () Bool)

(assert (=> bm!33967 (= call!33973 (regexDepth!8 (ite c!95977 (reg!1500 (regTwo!2854 r!20230)) (ite c!95979 (regOne!2855 (regTwo!2854 r!20230)) (regTwo!2854 (regTwo!2854 r!20230))))))))

(declare-fun bm!33968 () Bool)

(assert (=> bm!33968 (= call!33969 (regexDepth!8 (ite c!95982 (regOne!2855 (regTwo!2854 r!20230)) (regTwo!2854 (regTwo!2854 r!20230)))))))

(declare-fun b!479998 () Bool)

(assert (=> b!479998 (= e!292569 (+ 1 call!33973))))

(declare-fun b!479999 () Bool)

(declare-fun res!212046 () Bool)

(assert (=> b!479999 (=> (not res!212046) (not e!292567))))

(assert (=> b!479999 (= res!212046 (> lt!210944 call!33971))))

(assert (=> b!479999 (= e!292563 e!292567)))

(declare-fun b!480000 () Bool)

(assert (=> b!480000 (= e!292562 (> lt!210944 call!33970))))

(declare-fun bm!33969 () Bool)

(assert (=> bm!33969 (= call!33974 (regexDepth!8 (ite c!95979 (regTwo!2855 (regTwo!2854 r!20230)) (regOne!2854 (regTwo!2854 r!20230)))))))

(declare-fun b!480001 () Bool)

(assert (=> b!480001 (= e!292564 (+ 1 call!33968))))

(assert (= (and d!180426 c!95978) b!479990))

(assert (= (and d!180426 (not c!95978)) b!479989))

(assert (= (and b!479989 c!95977) b!479998))

(assert (= (and b!479989 (not c!95977)) b!479986))

(assert (= (and b!479986 c!95979) b!480001))

(assert (= (and b!479986 (not c!95979)) b!479985))

(assert (= (and b!479985 c!95981) b!479995))

(assert (= (and b!479985 (not c!95981)) b!479988))

(assert (= (or b!480001 b!479995) bm!33969))

(assert (= (or b!480001 b!479995) bm!33966))

(assert (= (or b!480001 b!479995) bm!33964))

(assert (= (or b!479998 bm!33966) bm!33967))

(assert (= (and d!180426 res!212047) b!479996))

(assert (= (and b!479996 c!95982) b!479997))

(assert (= (and b!479996 (not c!95982)) b!479993))

(assert (= (and b!479997 res!212048) b!480000))

(assert (= (and b!479993 c!95980) b!479999))

(assert (= (and b!479993 (not c!95980)) b!479992))

(assert (= (and b!479999 res!212046) b!479994))

(assert (= (and b!479992 c!95983) b!479991))

(assert (= (and b!479992 (not c!95983)) b!479987))

(assert (= (or b!479999 b!479991) bm!33963))

(assert (= (or b!480000 bm!33963) bm!33965))

(assert (= (or b!479997 b!479994) bm!33968))

(declare-fun m!748869 () Bool)

(assert (=> bm!33967 m!748869))

(declare-fun m!748871 () Bool)

(assert (=> bm!33964 m!748871))

(declare-fun m!748873 () Bool)

(assert (=> bm!33968 m!748873))

(declare-fun m!748875 () Bool)

(assert (=> bm!33965 m!748875))

(declare-fun m!748877 () Bool)

(assert (=> bm!33969 m!748877))

(assert (=> b!479856 d!180426))

(declare-fun b!480002 () Bool)

(declare-fun e!292574 () Int)

(declare-fun e!292570 () Int)

(assert (=> b!480002 (= e!292574 e!292570)))

(declare-fun c!95988 () Bool)

(assert (=> b!480002 (= c!95988 ((_ is Concat!2071) r!20230))))

(declare-fun b!480003 () Bool)

(declare-fun c!95986 () Bool)

(assert (=> b!480003 (= c!95986 ((_ is Union!1171) r!20230))))

(declare-fun e!292579 () Int)

(assert (=> b!480003 (= e!292579 e!292574)))

(declare-fun bm!33970 () Bool)

(declare-fun call!33978 () Int)

(declare-fun call!33977 () Int)

(assert (=> bm!33970 (= call!33978 call!33977)))

(declare-fun d!180430 () Bool)

(declare-fun e!292571 () Bool)

(assert (=> d!180430 e!292571))

(declare-fun res!212050 () Bool)

(assert (=> d!180430 (=> (not res!212050) (not e!292571))))

(declare-fun lt!210945 () Int)

(assert (=> d!180430 (= res!212050 (> lt!210945 0))))

(declare-fun e!292578 () Int)

(assert (=> d!180430 (= lt!210945 e!292578)))

(declare-fun c!95985 () Bool)

(assert (=> d!180430 (= c!95985 ((_ is ElementMatch!1171) r!20230))))

(assert (=> d!180430 (= (regexDepth!8 r!20230) lt!210945)))

(declare-fun bm!33971 () Bool)

(declare-fun call!33981 () Int)

(declare-fun call!33979 () Int)

(declare-fun call!33975 () Int)

(assert (=> bm!33971 (= call!33975 (maxBigInt!0 (ite c!95986 call!33979 call!33981) (ite c!95986 call!33981 call!33979)))))

(declare-fun b!480004 () Bool)

(declare-fun e!292576 () Bool)

(assert (=> b!480004 (= e!292576 (= lt!210945 1))))

(declare-fun b!480005 () Bool)

(assert (=> b!480005 (= e!292570 1)))

(declare-fun b!480006 () Bool)

(assert (=> b!480006 (= e!292578 e!292579)))

(declare-fun c!95984 () Bool)

(assert (=> b!480006 (= c!95984 ((_ is Star!1171) r!20230))))

(declare-fun b!480007 () Bool)

(assert (=> b!480007 (= e!292578 1)))

(declare-fun b!480008 () Bool)

(assert (=> b!480008 (= e!292576 (> lt!210945 call!33978))))

(declare-fun b!480009 () Bool)

(declare-fun c!95990 () Bool)

(assert (=> b!480009 (= c!95990 ((_ is Star!1171) r!20230))))

(declare-fun e!292573 () Bool)

(assert (=> b!480009 (= e!292573 e!292576)))

(declare-fun b!480010 () Bool)

(declare-fun e!292575 () Bool)

(assert (=> b!480010 (= e!292575 e!292573)))

(declare-fun c!95987 () Bool)

(assert (=> b!480010 (= c!95987 ((_ is Concat!2071) r!20230))))

(declare-fun bm!33972 () Bool)

(declare-fun c!95989 () Bool)

(assert (=> bm!33972 (= call!33977 (regexDepth!8 (ite c!95989 (regTwo!2855 r!20230) (ite c!95987 (regOne!2854 r!20230) (reg!1500 r!20230)))))))

(declare-fun b!480011 () Bool)

(declare-fun e!292577 () Bool)

(declare-fun call!33976 () Int)

(assert (=> b!480011 (= e!292577 (> lt!210945 call!33976))))

(declare-fun bm!33973 () Bool)

(declare-fun call!33980 () Int)

(assert (=> bm!33973 (= call!33979 call!33980)))

(declare-fun b!480012 () Bool)

(assert (=> b!480012 (= e!292570 (+ 1 call!33975))))

(declare-fun b!480013 () Bool)

(assert (=> b!480013 (= e!292571 e!292575)))

(assert (=> b!480013 (= c!95989 ((_ is Union!1171) r!20230))))

(declare-fun b!480014 () Bool)

(declare-fun e!292572 () Bool)

(assert (=> b!480014 (= e!292575 e!292572)))

(declare-fun res!212051 () Bool)

(assert (=> b!480014 (= res!212051 (> lt!210945 call!33976))))

(assert (=> b!480014 (=> (not res!212051) (not e!292572))))

(declare-fun bm!33974 () Bool)

(assert (=> bm!33974 (= call!33980 (regexDepth!8 (ite c!95984 (reg!1500 r!20230) (ite c!95986 (regOne!2855 r!20230) (regTwo!2854 r!20230)))))))

(declare-fun bm!33975 () Bool)

(assert (=> bm!33975 (= call!33976 (regexDepth!8 (ite c!95989 (regOne!2855 r!20230) (regTwo!2854 r!20230))))))

(declare-fun b!480015 () Bool)

(assert (=> b!480015 (= e!292579 (+ 1 call!33980))))

(declare-fun b!480016 () Bool)

(declare-fun res!212049 () Bool)

(assert (=> b!480016 (=> (not res!212049) (not e!292577))))

(assert (=> b!480016 (= res!212049 (> lt!210945 call!33978))))

(assert (=> b!480016 (= e!292573 e!292577)))

(declare-fun b!480017 () Bool)

(assert (=> b!480017 (= e!292572 (> lt!210945 call!33977))))

(declare-fun bm!33976 () Bool)

(assert (=> bm!33976 (= call!33981 (regexDepth!8 (ite c!95986 (regTwo!2855 r!20230) (regOne!2854 r!20230))))))

(declare-fun b!480018 () Bool)

(assert (=> b!480018 (= e!292574 (+ 1 call!33975))))

(assert (= (and d!180430 c!95985) b!480007))

(assert (= (and d!180430 (not c!95985)) b!480006))

(assert (= (and b!480006 c!95984) b!480015))

(assert (= (and b!480006 (not c!95984)) b!480003))

(assert (= (and b!480003 c!95986) b!480018))

(assert (= (and b!480003 (not c!95986)) b!480002))

(assert (= (and b!480002 c!95988) b!480012))

(assert (= (and b!480002 (not c!95988)) b!480005))

(assert (= (or b!480018 b!480012) bm!33976))

(assert (= (or b!480018 b!480012) bm!33973))

(assert (= (or b!480018 b!480012) bm!33971))

(assert (= (or b!480015 bm!33973) bm!33974))

(assert (= (and d!180430 res!212050) b!480013))

(assert (= (and b!480013 c!95989) b!480014))

(assert (= (and b!480013 (not c!95989)) b!480010))

(assert (= (and b!480014 res!212051) b!480017))

(assert (= (and b!480010 c!95987) b!480016))

(assert (= (and b!480010 (not c!95987)) b!480009))

(assert (= (and b!480016 res!212049) b!480011))

(assert (= (and b!480009 c!95990) b!480008))

(assert (= (and b!480009 (not c!95990)) b!480004))

(assert (= (or b!480016 b!480008) bm!33970))

(assert (= (or b!480017 bm!33970) bm!33972))

(assert (= (or b!480014 b!480011) bm!33975))

(declare-fun m!748879 () Bool)

(assert (=> bm!33974 m!748879))

(declare-fun m!748881 () Bool)

(assert (=> bm!33971 m!748881))

(declare-fun m!748883 () Bool)

(assert (=> bm!33975 m!748883))

(declare-fun m!748885 () Bool)

(assert (=> bm!33972 m!748885))

(declare-fun m!748887 () Bool)

(assert (=> bm!33976 m!748887))

(assert (=> b!479856 d!180430))

(declare-fun d!180432 () Bool)

(declare-fun nullableFct!110 (Regex!1171) Bool)

(assert (=> d!180432 (= (nullable!306 (regOne!2854 r!20230)) (nullableFct!110 (regOne!2854 r!20230)))))

(declare-fun bs!58824 () Bool)

(assert (= bs!58824 d!180432))

(declare-fun m!748889 () Bool)

(assert (=> bs!58824 m!748889))

(assert (=> b!479857 d!180432))

(declare-fun d!180434 () Bool)

(assert (=> d!180434 (= (lostCause!165 (regTwo!2854 r!20230)) (lostCauseFct!73 (regTwo!2854 r!20230)))))

(declare-fun bs!58825 () Bool)

(assert (= bs!58825 d!180434))

(declare-fun m!748891 () Bool)

(assert (=> bs!58825 m!748891))

(assert (=> b!479862 d!180434))

(declare-fun b!480036 () Bool)

(declare-fun e!292596 () Bool)

(declare-fun call!33989 () Bool)

(assert (=> b!480036 (= e!292596 call!33989)))

(declare-fun b!480037 () Bool)

(declare-fun e!292592 () Bool)

(declare-fun call!33990 () Bool)

(assert (=> b!480037 (= e!292592 call!33990)))

(declare-fun b!480038 () Bool)

(declare-fun e!292590 () Bool)

(declare-fun e!292593 () Bool)

(assert (=> b!480038 (= e!292590 e!292593)))

(declare-fun res!212055 () Bool)

(assert (=> b!480038 (=> (not res!212055) (not e!292593))))

(assert (=> b!480038 (= res!212055 call!33990)))

(declare-fun b!480039 () Bool)

(declare-fun e!292591 () Bool)

(declare-fun e!292595 () Bool)

(assert (=> b!480039 (= e!292591 e!292595)))

(declare-fun c!95999 () Bool)

(assert (=> b!480039 (= c!95999 ((_ is Union!1171) (regTwo!2854 r!20230)))))

(declare-fun b!480040 () Bool)

(declare-fun res!212057 () Bool)

(assert (=> b!480040 (=> (not res!212057) (not e!292592))))

(declare-fun call!33991 () Bool)

(assert (=> b!480040 (= res!212057 call!33991)))

(assert (=> b!480040 (= e!292595 e!292592)))

(declare-fun b!480041 () Bool)

(declare-fun res!212059 () Bool)

(assert (=> b!480041 (=> res!212059 e!292590)))

(assert (=> b!480041 (= res!212059 (not ((_ is Concat!2071) (regTwo!2854 r!20230))))))

(assert (=> b!480041 (= e!292595 e!292590)))

(declare-fun bm!33984 () Bool)

(assert (=> bm!33984 (= call!33990 call!33989)))

(declare-fun d!180436 () Bool)

(declare-fun res!212056 () Bool)

(declare-fun e!292594 () Bool)

(assert (=> d!180436 (=> res!212056 e!292594)))

(assert (=> d!180436 (= res!212056 ((_ is ElementMatch!1171) (regTwo!2854 r!20230)))))

(assert (=> d!180436 (= (validRegex!399 (regTwo!2854 r!20230)) e!292594)))

(declare-fun bm!33985 () Bool)

(assert (=> bm!33985 (= call!33991 (validRegex!399 (ite c!95999 (regOne!2855 (regTwo!2854 r!20230)) (regTwo!2854 (regTwo!2854 r!20230)))))))

(declare-fun b!480042 () Bool)

(assert (=> b!480042 (= e!292594 e!292591)))

(declare-fun c!95998 () Bool)

(assert (=> b!480042 (= c!95998 ((_ is Star!1171) (regTwo!2854 r!20230)))))

(declare-fun b!480043 () Bool)

(assert (=> b!480043 (= e!292591 e!292596)))

(declare-fun res!212058 () Bool)

(assert (=> b!480043 (= res!212058 (not (nullable!306 (reg!1500 (regTwo!2854 r!20230)))))))

(assert (=> b!480043 (=> (not res!212058) (not e!292596))))

(declare-fun b!480044 () Bool)

(assert (=> b!480044 (= e!292593 call!33991)))

(declare-fun bm!33986 () Bool)

(assert (=> bm!33986 (= call!33989 (validRegex!399 (ite c!95998 (reg!1500 (regTwo!2854 r!20230)) (ite c!95999 (regTwo!2855 (regTwo!2854 r!20230)) (regOne!2854 (regTwo!2854 r!20230))))))))

(assert (= (and d!180436 (not res!212056)) b!480042))

(assert (= (and b!480042 c!95998) b!480043))

(assert (= (and b!480042 (not c!95998)) b!480039))

(assert (= (and b!480043 res!212058) b!480036))

(assert (= (and b!480039 c!95999) b!480040))

(assert (= (and b!480039 (not c!95999)) b!480041))

(assert (= (and b!480040 res!212057) b!480037))

(assert (= (and b!480041 (not res!212059)) b!480038))

(assert (= (and b!480038 res!212055) b!480044))

(assert (= (or b!480037 b!480038) bm!33984))

(assert (= (or b!480040 b!480044) bm!33985))

(assert (= (or b!480036 bm!33984) bm!33986))

(declare-fun m!748903 () Bool)

(assert (=> bm!33985 m!748903))

(declare-fun m!748905 () Bool)

(assert (=> b!480043 m!748905))

(declare-fun m!748907 () Bool)

(assert (=> bm!33986 m!748907))

(assert (=> b!479852 d!180436))

(declare-fun d!180440 () Bool)

(assert (=> d!180440 (not (lostCause!165 (regOne!2854 r!20230)))))

(declare-fun lt!210950 () Unit!8376)

(declare-fun choose!3634 (Regex!1171) Unit!8376)

(assert (=> d!180440 (= lt!210950 (choose!3634 (regOne!2854 r!20230)))))

(assert (=> d!180440 (validRegex!399 (regOne!2854 r!20230))))

(assert (=> d!180440 (= (lemmaNullableThenNotLostCause!12 (regOne!2854 r!20230)) lt!210950)))

(declare-fun bs!58828 () Bool)

(assert (= bs!58828 d!180440))

(assert (=> bs!58828 m!748835))

(declare-fun m!748929 () Bool)

(assert (=> bs!58828 m!748929))

(declare-fun m!748931 () Bool)

(assert (=> bs!58828 m!748931))

(assert (=> b!479852 d!180440))

(assert (=> b!479853 d!180434))

(declare-fun d!180448 () Bool)

(assert (=> d!180448 (= (lostCause!165 (regOne!2854 r!20230)) (lostCauseFct!73 (regOne!2854 r!20230)))))

(declare-fun bs!58829 () Bool)

(assert (= bs!58829 d!180448))

(declare-fun m!748933 () Bool)

(assert (=> bs!58829 m!748933))

(assert (=> b!479859 d!180448))

(declare-fun b!480104 () Bool)

(declare-fun e!292621 () Bool)

(declare-fun tp!134741 () Bool)

(declare-fun tp!134738 () Bool)

(assert (=> b!480104 (= e!292621 (and tp!134741 tp!134738))))

(declare-fun b!480103 () Bool)

(assert (=> b!480103 (= e!292621 tp_is_empty!2339)))

(assert (=> b!479854 (= tp!134701 e!292621)))

(declare-fun b!480105 () Bool)

(declare-fun tp!134739 () Bool)

(assert (=> b!480105 (= e!292621 tp!134739)))

(declare-fun b!480106 () Bool)

(declare-fun tp!134737 () Bool)

(declare-fun tp!134740 () Bool)

(assert (=> b!480106 (= e!292621 (and tp!134737 tp!134740))))

(assert (= (and b!479854 ((_ is ElementMatch!1171) (reg!1500 r!20230))) b!480103))

(assert (= (and b!479854 ((_ is Concat!2071) (reg!1500 r!20230))) b!480104))

(assert (= (and b!479854 ((_ is Star!1171) (reg!1500 r!20230))) b!480105))

(assert (= (and b!479854 ((_ is Union!1171) (reg!1500 r!20230))) b!480106))

(declare-fun b!480116 () Bool)

(declare-fun e!292624 () Bool)

(declare-fun tp!134756 () Bool)

(declare-fun tp!134753 () Bool)

(assert (=> b!480116 (= e!292624 (and tp!134756 tp!134753))))

(declare-fun b!480115 () Bool)

(assert (=> b!480115 (= e!292624 tp_is_empty!2339)))

(assert (=> b!479861 (= tp!134698 e!292624)))

(declare-fun b!480117 () Bool)

(declare-fun tp!134754 () Bool)

(assert (=> b!480117 (= e!292624 tp!134754)))

(declare-fun b!480118 () Bool)

(declare-fun tp!134752 () Bool)

(declare-fun tp!134755 () Bool)

(assert (=> b!480118 (= e!292624 (and tp!134752 tp!134755))))

(assert (= (and b!479861 ((_ is ElementMatch!1171) (regOne!2855 r!20230))) b!480115))

(assert (= (and b!479861 ((_ is Concat!2071) (regOne!2855 r!20230))) b!480116))

(assert (= (and b!479861 ((_ is Star!1171) (regOne!2855 r!20230))) b!480117))

(assert (= (and b!479861 ((_ is Union!1171) (regOne!2855 r!20230))) b!480118))

(declare-fun b!480120 () Bool)

(declare-fun e!292625 () Bool)

(declare-fun tp!134761 () Bool)

(declare-fun tp!134758 () Bool)

(assert (=> b!480120 (= e!292625 (and tp!134761 tp!134758))))

(declare-fun b!480119 () Bool)

(assert (=> b!480119 (= e!292625 tp_is_empty!2339)))

(assert (=> b!479861 (= tp!134699 e!292625)))

(declare-fun b!480121 () Bool)

(declare-fun tp!134759 () Bool)

(assert (=> b!480121 (= e!292625 tp!134759)))

(declare-fun b!480122 () Bool)

(declare-fun tp!134757 () Bool)

(declare-fun tp!134760 () Bool)

(assert (=> b!480122 (= e!292625 (and tp!134757 tp!134760))))

(assert (= (and b!479861 ((_ is ElementMatch!1171) (regTwo!2855 r!20230))) b!480119))

(assert (= (and b!479861 ((_ is Concat!2071) (regTwo!2855 r!20230))) b!480120))

(assert (= (and b!479861 ((_ is Star!1171) (regTwo!2855 r!20230))) b!480121))

(assert (= (and b!479861 ((_ is Union!1171) (regTwo!2855 r!20230))) b!480122))

(declare-fun b!480124 () Bool)

(declare-fun e!292626 () Bool)

(declare-fun tp!134766 () Bool)

(declare-fun tp!134763 () Bool)

(assert (=> b!480124 (= e!292626 (and tp!134766 tp!134763))))

(declare-fun b!480123 () Bool)

(assert (=> b!480123 (= e!292626 tp_is_empty!2339)))

(assert (=> b!479858 (= tp!134697 e!292626)))

(declare-fun b!480125 () Bool)

(declare-fun tp!134764 () Bool)

(assert (=> b!480125 (= e!292626 tp!134764)))

(declare-fun b!480126 () Bool)

(declare-fun tp!134762 () Bool)

(declare-fun tp!134765 () Bool)

(assert (=> b!480126 (= e!292626 (and tp!134762 tp!134765))))

(assert (= (and b!479858 ((_ is ElementMatch!1171) (regOne!2854 r!20230))) b!480123))

(assert (= (and b!479858 ((_ is Concat!2071) (regOne!2854 r!20230))) b!480124))

(assert (= (and b!479858 ((_ is Star!1171) (regOne!2854 r!20230))) b!480125))

(assert (= (and b!479858 ((_ is Union!1171) (regOne!2854 r!20230))) b!480126))

(declare-fun b!480128 () Bool)

(declare-fun e!292627 () Bool)

(declare-fun tp!134771 () Bool)

(declare-fun tp!134768 () Bool)

(assert (=> b!480128 (= e!292627 (and tp!134771 tp!134768))))

(declare-fun b!480127 () Bool)

(assert (=> b!480127 (= e!292627 tp_is_empty!2339)))

(assert (=> b!479858 (= tp!134700 e!292627)))

(declare-fun b!480129 () Bool)

(declare-fun tp!134769 () Bool)

(assert (=> b!480129 (= e!292627 tp!134769)))

(declare-fun b!480130 () Bool)

(declare-fun tp!134767 () Bool)

(declare-fun tp!134770 () Bool)

(assert (=> b!480130 (= e!292627 (and tp!134767 tp!134770))))

(assert (= (and b!479858 ((_ is ElementMatch!1171) (regTwo!2854 r!20230))) b!480127))

(assert (= (and b!479858 ((_ is Concat!2071) (regTwo!2854 r!20230))) b!480128))

(assert (= (and b!479858 ((_ is Star!1171) (regTwo!2854 r!20230))) b!480129))

(assert (= (and b!479858 ((_ is Union!1171) (regTwo!2854 r!20230))) b!480130))

(check-sat (not b!480120) (not bm!33986) (not d!180414) (not b!480043) (not b!480130) (not bm!33965) (not bm!33985) (not d!180434) (not b!480117) (not b!480125) (not bm!33967) (not d!180448) (not b!480126) (not bm!33964) (not bm!33972) tp_is_empty!2339 (not b!480124) (not bm!33976) (not bm!33975) (not bm!33968) (not b!480106) (not b!480128) (not b!480116) (not b!480118) (not d!180432) (not b!480104) (not b!480122) (not bm!33969) (not b!480121) (not b!479915) (not bm!33934) (not bm!33971) (not bm!33933) (not d!180440) (not b!480129) (not b!480105) (not bm!33974))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735846 () Bool)

(assert start!735846)

(declare-fun res!3062896 () Bool)

(declare-fun e!4544989 () Bool)

(assert (=> start!735846 (=> (not res!3062896) (not e!4544989))))

(declare-datatypes ((C!41266 0))(
  ( (C!41267 (val!31073 Int)) )
))
(declare-datatypes ((Regex!20470 0))(
  ( (ElementMatch!20470 (c!1408527 C!41266)) (Concat!29315 (regOne!41452 Regex!20470) (regTwo!41452 Regex!20470)) (EmptyExpr!20470) (Star!20470 (reg!20799 Regex!20470)) (EmptyLang!20470) (Union!20470 (regOne!41453 Regex!20470) (regTwo!41453 Regex!20470)) )
))
(declare-fun r!14126 () Regex!20470)

(declare-fun validRegex!10888 (Regex!20470) Bool)

(assert (=> start!735846 (= res!3062896 (validRegex!10888 r!14126))))

(assert (=> start!735846 e!4544989))

(declare-fun e!4544987 () Bool)

(assert (=> start!735846 e!4544987))

(declare-fun e!4544985 () Bool)

(assert (=> start!735846 e!4544985))

(declare-fun b!7646906 () Bool)

(declare-fun tp_is_empty!51295 () Bool)

(assert (=> b!7646906 (= e!4544987 tp_is_empty!51295)))

(declare-fun b!7646907 () Bool)

(declare-datatypes ((Unit!167956 0))(
  ( (Unit!167957) )
))
(declare-fun e!4544982 () Unit!167956)

(declare-fun Unit!167958 () Unit!167956)

(assert (=> b!7646907 (= e!4544982 Unit!167958)))

(declare-fun b!7646908 () Bool)

(declare-fun tp!2232023 () Bool)

(declare-fun tp!2232025 () Bool)

(assert (=> b!7646908 (= e!4544987 (and tp!2232023 tp!2232025))))

(declare-fun b!7646909 () Bool)

(declare-fun tp!2232026 () Bool)

(declare-fun tp!2232022 () Bool)

(assert (=> b!7646909 (= e!4544987 (and tp!2232026 tp!2232022))))

(declare-fun b!7646910 () Bool)

(declare-fun tp!2232024 () Bool)

(assert (=> b!7646910 (= e!4544985 (and tp_is_empty!51295 tp!2232024))))

(declare-fun b!7646911 () Bool)

(declare-fun res!3062893 () Bool)

(assert (=> b!7646911 (=> (not res!3062893) (not e!4544989))))

(assert (=> b!7646911 (= res!3062893 (and (not (is-EmptyExpr!20470 r!14126)) (not (is-EmptyLang!20470 r!14126)) (not (is-ElementMatch!20470 r!14126)) (is-Union!20470 r!14126)))))

(declare-fun b!7646912 () Bool)

(declare-fun res!3062895 () Bool)

(assert (=> b!7646912 (=> (not res!3062895) (not e!4544989))))

(declare-datatypes ((List!73321 0))(
  ( (Nil!73197) (Cons!73197 (h!79645 C!41266) (t!388056 List!73321)) )
))
(declare-fun s!9605 () List!73321)

(declare-fun matchR!9971 (Regex!20470 List!73321) Bool)

(assert (=> b!7646912 (= res!3062895 (not (matchR!9971 r!14126 s!9605)))))

(declare-fun b!7646913 () Bool)

(declare-fun e!4544984 () Bool)

(assert (=> b!7646913 (= e!4544989 (not e!4544984))))

(declare-fun res!3062897 () Bool)

(assert (=> b!7646913 (=> res!3062897 e!4544984)))

(assert (=> b!7646913 (= res!3062897 (not (validRegex!10888 (regTwo!41453 r!14126))))))

(declare-fun lt!2661154 () Bool)

(declare-fun matchRSpec!4579 (Regex!20470 List!73321) Bool)

(assert (=> b!7646913 (= lt!2661154 (matchRSpec!4579 (regOne!41453 r!14126) s!9605))))

(declare-fun lt!2661147 () Unit!167956)

(declare-fun mainMatchTheorem!4559 (Regex!20470 List!73321) Unit!167956)

(assert (=> b!7646913 (= lt!2661147 (mainMatchTheorem!4559 (regOne!41453 r!14126) s!9605))))

(declare-fun lt!2661153 () Unit!167956)

(assert (=> b!7646913 (= lt!2661153 e!4544982)))

(declare-fun c!1408525 () Bool)

(declare-fun lt!2661152 () Bool)

(assert (=> b!7646913 (= c!1408525 lt!2661152)))

(assert (=> b!7646913 (= lt!2661152 (matchR!9971 (regTwo!41453 r!14126) s!9605))))

(declare-fun lt!2661149 () Unit!167956)

(declare-fun e!4544988 () Unit!167956)

(assert (=> b!7646913 (= lt!2661149 e!4544988)))

(declare-fun c!1408526 () Bool)

(assert (=> b!7646913 (= c!1408526 lt!2661154)))

(assert (=> b!7646913 (= lt!2661154 (matchR!9971 (regOne!41453 r!14126) s!9605))))

(declare-fun b!7646914 () Bool)

(declare-fun tp!2232027 () Bool)

(assert (=> b!7646914 (= e!4544987 tp!2232027)))

(declare-fun b!7646915 () Bool)

(declare-fun Unit!167959 () Unit!167956)

(assert (=> b!7646915 (= e!4544982 Unit!167959)))

(declare-fun lt!2661155 () Unit!167956)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!117 (Regex!20470 Regex!20470 List!73321) Unit!167956)

(assert (=> b!7646915 (= lt!2661155 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!117 (regTwo!41453 r!14126) (regOne!41453 r!14126) s!9605))))

(assert (=> b!7646915 (matchR!9971 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126)) s!9605)))

(declare-fun lt!2661148 () Unit!167956)

(declare-fun lemmaReversedUnionAcceptsSameString!45 (Regex!20470 Regex!20470 List!73321) Unit!167956)

(assert (=> b!7646915 (= lt!2661148 (lemmaReversedUnionAcceptsSameString!45 (regTwo!41453 r!14126) (regOne!41453 r!14126) s!9605))))

(declare-fun res!3062898 () Bool)

(assert (=> b!7646915 (= res!3062898 (matchR!9971 r!14126 s!9605))))

(declare-fun e!4544983 () Bool)

(assert (=> b!7646915 (=> (not res!3062898) (not e!4544983))))

(assert (=> b!7646915 e!4544983))

(declare-fun b!7646916 () Bool)

(assert (=> b!7646916 (= e!4544983 false)))

(declare-fun b!7646917 () Bool)

(declare-fun Unit!167960 () Unit!167956)

(assert (=> b!7646917 (= e!4544988 Unit!167960)))

(declare-fun b!7646918 () Bool)

(assert (=> b!7646918 (= e!4544984 (not (matchRSpec!4579 r!14126 s!9605)))))

(assert (=> b!7646918 (= lt!2661152 (matchRSpec!4579 (regTwo!41453 r!14126) s!9605))))

(declare-fun lt!2661150 () Unit!167956)

(assert (=> b!7646918 (= lt!2661150 (mainMatchTheorem!4559 (regTwo!41453 r!14126) s!9605))))

(declare-fun b!7646919 () Bool)

(declare-fun Unit!167961 () Unit!167956)

(assert (=> b!7646919 (= e!4544988 Unit!167961)))

(declare-fun lt!2661151 () Unit!167956)

(assert (=> b!7646919 (= lt!2661151 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!117 (regOne!41453 r!14126) (regTwo!41453 r!14126) s!9605))))

(declare-fun res!3062894 () Bool)

(assert (=> b!7646919 (= res!3062894 (matchR!9971 r!14126 s!9605))))

(declare-fun e!4544986 () Bool)

(assert (=> b!7646919 (=> (not res!3062894) (not e!4544986))))

(assert (=> b!7646919 e!4544986))

(declare-fun b!7646920 () Bool)

(assert (=> b!7646920 (= e!4544986 false)))

(assert (= (and start!735846 res!3062896) b!7646911))

(assert (= (and b!7646911 res!3062893) b!7646912))

(assert (= (and b!7646912 res!3062895) b!7646913))

(assert (= (and b!7646913 c!1408526) b!7646919))

(assert (= (and b!7646913 (not c!1408526)) b!7646917))

(assert (= (and b!7646919 res!3062894) b!7646920))

(assert (= (and b!7646913 c!1408525) b!7646915))

(assert (= (and b!7646913 (not c!1408525)) b!7646907))

(assert (= (and b!7646915 res!3062898) b!7646916))

(assert (= (and b!7646913 (not res!3062897)) b!7646918))

(assert (= (and start!735846 (is-ElementMatch!20470 r!14126)) b!7646906))

(assert (= (and start!735846 (is-Concat!29315 r!14126)) b!7646908))

(assert (= (and start!735846 (is-Star!20470 r!14126)) b!7646914))

(assert (= (and start!735846 (is-Union!20470 r!14126)) b!7646909))

(assert (= (and start!735846 (is-Cons!73197 s!9605)) b!7646910))

(declare-fun m!8164914 () Bool)

(assert (=> b!7646913 m!8164914))

(declare-fun m!8164916 () Bool)

(assert (=> b!7646913 m!8164916))

(declare-fun m!8164918 () Bool)

(assert (=> b!7646913 m!8164918))

(declare-fun m!8164920 () Bool)

(assert (=> b!7646913 m!8164920))

(declare-fun m!8164922 () Bool)

(assert (=> b!7646913 m!8164922))

(declare-fun m!8164924 () Bool)

(assert (=> start!735846 m!8164924))

(declare-fun m!8164926 () Bool)

(assert (=> b!7646918 m!8164926))

(declare-fun m!8164928 () Bool)

(assert (=> b!7646918 m!8164928))

(declare-fun m!8164930 () Bool)

(assert (=> b!7646918 m!8164930))

(declare-fun m!8164932 () Bool)

(assert (=> b!7646912 m!8164932))

(declare-fun m!8164934 () Bool)

(assert (=> b!7646919 m!8164934))

(assert (=> b!7646919 m!8164932))

(declare-fun m!8164936 () Bool)

(assert (=> b!7646915 m!8164936))

(declare-fun m!8164938 () Bool)

(assert (=> b!7646915 m!8164938))

(declare-fun m!8164940 () Bool)

(assert (=> b!7646915 m!8164940))

(assert (=> b!7646915 m!8164932))

(push 1)

(assert (not b!7646919))

(assert (not b!7646918))

(assert (not start!735846))

(assert (not b!7646913))

(assert (not b!7646908))

(assert (not b!7646909))

(assert (not b!7646915))

(assert (not b!7646914))

(assert (not b!7646912))

(assert (not b!7646910))

(assert tp_is_empty!51295)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7646994 () Bool)

(declare-fun e!4545032 () Bool)

(declare-fun e!4545033 () Bool)

(assert (=> b!7646994 (= e!4545032 e!4545033)))

(declare-fun c!1408541 () Bool)

(assert (=> b!7646994 (= c!1408541 (is-EmptyLang!20470 r!14126))))

(declare-fun b!7646995 () Bool)

(declare-fun res!3062935 () Bool)

(declare-fun e!4545031 () Bool)

(assert (=> b!7646995 (=> res!3062935 e!4545031)))

(declare-fun isEmpty!41822 (List!73321) Bool)

(declare-fun tail!15281 (List!73321) List!73321)

(assert (=> b!7646995 (= res!3062935 (not (isEmpty!41822 (tail!15281 s!9605))))))

(declare-fun b!7646996 () Bool)

(declare-fun e!4545034 () Bool)

(assert (=> b!7646996 (= e!4545034 e!4545031)))

(declare-fun res!3062936 () Bool)

(assert (=> b!7646996 (=> res!3062936 e!4545031)))

(declare-fun call!702069 () Bool)

(assert (=> b!7646996 (= res!3062936 call!702069)))

(declare-fun b!7646997 () Bool)

(declare-fun e!4545029 () Bool)

(assert (=> b!7646997 (= e!4545029 e!4545034)))

(declare-fun res!3062934 () Bool)

(assert (=> b!7646997 (=> (not res!3062934) (not e!4545034))))

(declare-fun lt!2661185 () Bool)

(assert (=> b!7646997 (= res!3062934 (not lt!2661185))))

(declare-fun b!7646998 () Bool)

(declare-fun e!4545028 () Bool)

(declare-fun nullable!8971 (Regex!20470) Bool)

(assert (=> b!7646998 (= e!4545028 (nullable!8971 r!14126))))

(declare-fun b!7646999 () Bool)

(assert (=> b!7646999 (= e!4545033 (not lt!2661185))))

(declare-fun b!7647000 () Bool)

(declare-fun e!4545030 () Bool)

(declare-fun head!15741 (List!73321) C!41266)

(assert (=> b!7647000 (= e!4545030 (= (head!15741 s!9605) (c!1408527 r!14126)))))

(declare-fun b!7647001 () Bool)

(assert (=> b!7647001 (= e!4545031 (not (= (head!15741 s!9605) (c!1408527 r!14126))))))

(declare-fun d!2325639 () Bool)

(assert (=> d!2325639 e!4545032))

(declare-fun c!1408542 () Bool)

(assert (=> d!2325639 (= c!1408542 (is-EmptyExpr!20470 r!14126))))

(assert (=> d!2325639 (= lt!2661185 e!4545028)))

(declare-fun c!1408543 () Bool)

(assert (=> d!2325639 (= c!1408543 (isEmpty!41822 s!9605))))

(assert (=> d!2325639 (validRegex!10888 r!14126)))

(assert (=> d!2325639 (= (matchR!9971 r!14126 s!9605) lt!2661185)))

(declare-fun bm!702064 () Bool)

(assert (=> bm!702064 (= call!702069 (isEmpty!41822 s!9605))))

(declare-fun b!7647002 () Bool)

(declare-fun derivativeStep!5941 (Regex!20470 C!41266) Regex!20470)

(assert (=> b!7647002 (= e!4545028 (matchR!9971 (derivativeStep!5941 r!14126 (head!15741 s!9605)) (tail!15281 s!9605)))))

(declare-fun b!7647003 () Bool)

(declare-fun res!3062939 () Bool)

(assert (=> b!7647003 (=> res!3062939 e!4545029)))

(assert (=> b!7647003 (= res!3062939 (not (is-ElementMatch!20470 r!14126)))))

(assert (=> b!7647003 (= e!4545033 e!4545029)))

(declare-fun b!7647004 () Bool)

(declare-fun res!3062937 () Bool)

(assert (=> b!7647004 (=> (not res!3062937) (not e!4545030))))

(assert (=> b!7647004 (= res!3062937 (not call!702069))))

(declare-fun b!7647005 () Bool)

(assert (=> b!7647005 (= e!4545032 (= lt!2661185 call!702069))))

(declare-fun b!7647006 () Bool)

(declare-fun res!3062933 () Bool)

(assert (=> b!7647006 (=> (not res!3062933) (not e!4545030))))

(assert (=> b!7647006 (= res!3062933 (isEmpty!41822 (tail!15281 s!9605)))))

(declare-fun b!7647007 () Bool)

(declare-fun res!3062940 () Bool)

(assert (=> b!7647007 (=> res!3062940 e!4545029)))

(assert (=> b!7647007 (= res!3062940 e!4545030)))

(declare-fun res!3062938 () Bool)

(assert (=> b!7647007 (=> (not res!3062938) (not e!4545030))))

(assert (=> b!7647007 (= res!3062938 lt!2661185)))

(assert (= (and d!2325639 c!1408543) b!7646998))

(assert (= (and d!2325639 (not c!1408543)) b!7647002))

(assert (= (and d!2325639 c!1408542) b!7647005))

(assert (= (and d!2325639 (not c!1408542)) b!7646994))

(assert (= (and b!7646994 c!1408541) b!7646999))

(assert (= (and b!7646994 (not c!1408541)) b!7647003))

(assert (= (and b!7647003 (not res!3062939)) b!7647007))

(assert (= (and b!7647007 res!3062938) b!7647004))

(assert (= (and b!7647004 res!3062937) b!7647006))

(assert (= (and b!7647006 res!3062933) b!7647000))

(assert (= (and b!7647007 (not res!3062940)) b!7646997))

(assert (= (and b!7646997 res!3062934) b!7646996))

(assert (= (and b!7646996 (not res!3062936)) b!7646995))

(assert (= (and b!7646995 (not res!3062935)) b!7647001))

(assert (= (or b!7647005 b!7647004 b!7646996) bm!702064))

(declare-fun m!8164970 () Bool)

(assert (=> b!7647001 m!8164970))

(declare-fun m!8164972 () Bool)

(assert (=> b!7647006 m!8164972))

(assert (=> b!7647006 m!8164972))

(declare-fun m!8164974 () Bool)

(assert (=> b!7647006 m!8164974))

(declare-fun m!8164976 () Bool)

(assert (=> d!2325639 m!8164976))

(assert (=> d!2325639 m!8164924))

(assert (=> bm!702064 m!8164976))

(assert (=> b!7647002 m!8164970))

(assert (=> b!7647002 m!8164970))

(declare-fun m!8164978 () Bool)

(assert (=> b!7647002 m!8164978))

(assert (=> b!7647002 m!8164972))

(assert (=> b!7647002 m!8164978))

(assert (=> b!7647002 m!8164972))

(declare-fun m!8164980 () Bool)

(assert (=> b!7647002 m!8164980))

(assert (=> b!7646995 m!8164972))

(assert (=> b!7646995 m!8164972))

(assert (=> b!7646995 m!8164974))

(declare-fun m!8164982 () Bool)

(assert (=> b!7646998 m!8164982))

(assert (=> b!7647000 m!8164970))

(assert (=> b!7646912 d!2325639))

(declare-fun b!7647112 () Bool)

(assert (=> b!7647112 true))

(assert (=> b!7647112 true))

(declare-fun bs!1944809 () Bool)

(declare-fun b!7647114 () Bool)

(assert (= bs!1944809 (and b!7647114 b!7647112)))

(declare-fun lambda!469721 () Int)

(declare-fun lambda!469720 () Int)

(assert (=> bs!1944809 (not (= lambda!469721 lambda!469720))))

(assert (=> b!7647114 true))

(assert (=> b!7647114 true))

(declare-fun b!7647104 () Bool)

(declare-fun e!4545088 () Bool)

(declare-fun call!702077 () Bool)

(assert (=> b!7647104 (= e!4545088 call!702077)))

(declare-fun b!7647105 () Bool)

(declare-fun e!4545093 () Bool)

(assert (=> b!7647105 (= e!4545093 (= s!9605 (Cons!73197 (c!1408527 r!14126) Nil!73197)))))

(declare-fun c!1408569 () Bool)

(declare-fun call!702078 () Bool)

(declare-fun bm!702072 () Bool)

(declare-fun Exists!4599 (Int) Bool)

(assert (=> bm!702072 (= call!702078 (Exists!4599 (ite c!1408569 lambda!469720 lambda!469721)))))

(declare-fun b!7647106 () Bool)

(declare-fun e!4545091 () Bool)

(declare-fun e!4545090 () Bool)

(assert (=> b!7647106 (= e!4545091 e!4545090)))

(assert (=> b!7647106 (= c!1408569 (is-Star!20470 r!14126))))

(declare-fun b!7647107 () Bool)

(declare-fun e!4545089 () Bool)

(assert (=> b!7647107 (= e!4545091 e!4545089)))

(declare-fun res!3062989 () Bool)

(assert (=> b!7647107 (= res!3062989 (matchRSpec!4579 (regOne!41453 r!14126) s!9605))))

(assert (=> b!7647107 (=> res!3062989 e!4545089)))

(declare-fun bm!702073 () Bool)

(assert (=> bm!702073 (= call!702077 (isEmpty!41822 s!9605))))

(declare-fun b!7647109 () Bool)

(declare-fun c!1408571 () Bool)

(assert (=> b!7647109 (= c!1408571 (is-Union!20470 r!14126))))

(assert (=> b!7647109 (= e!4545093 e!4545091)))

(declare-fun b!7647110 () Bool)

(declare-fun res!3062987 () Bool)

(declare-fun e!4545092 () Bool)

(assert (=> b!7647110 (=> res!3062987 e!4545092)))

(assert (=> b!7647110 (= res!3062987 call!702077)))

(assert (=> b!7647110 (= e!4545090 e!4545092)))

(declare-fun b!7647111 () Bool)

(declare-fun e!4545094 () Bool)

(assert (=> b!7647111 (= e!4545088 e!4545094)))

(declare-fun res!3062988 () Bool)

(assert (=> b!7647111 (= res!3062988 (not (is-EmptyLang!20470 r!14126)))))

(assert (=> b!7647111 (=> (not res!3062988) (not e!4545094))))

(assert (=> b!7647112 (= e!4545092 call!702078)))

(declare-fun b!7647113 () Bool)

(declare-fun c!1408572 () Bool)

(assert (=> b!7647113 (= c!1408572 (is-ElementMatch!20470 r!14126))))

(assert (=> b!7647113 (= e!4545094 e!4545093)))

(assert (=> b!7647114 (= e!4545090 call!702078)))

(declare-fun b!7647108 () Bool)

(assert (=> b!7647108 (= e!4545089 (matchRSpec!4579 (regTwo!41453 r!14126) s!9605))))

(declare-fun d!2325643 () Bool)

(declare-fun c!1408570 () Bool)

(assert (=> d!2325643 (= c!1408570 (is-EmptyExpr!20470 r!14126))))

(assert (=> d!2325643 (= (matchRSpec!4579 r!14126 s!9605) e!4545088)))

(assert (= (and d!2325643 c!1408570) b!7647104))

(assert (= (and d!2325643 (not c!1408570)) b!7647111))

(assert (= (and b!7647111 res!3062988) b!7647113))

(assert (= (and b!7647113 c!1408572) b!7647105))

(assert (= (and b!7647113 (not c!1408572)) b!7647109))

(assert (= (and b!7647109 c!1408571) b!7647107))

(assert (= (and b!7647109 (not c!1408571)) b!7647106))

(assert (= (and b!7647107 (not res!3062989)) b!7647108))

(assert (= (and b!7647106 c!1408569) b!7647110))

(assert (= (and b!7647106 (not c!1408569)) b!7647114))

(assert (= (and b!7647110 (not res!3062987)) b!7647112))

(assert (= (or b!7647112 b!7647114) bm!702072))

(assert (= (or b!7647104 b!7647110) bm!702073))

(declare-fun m!8164998 () Bool)

(assert (=> bm!702072 m!8164998))

(assert (=> b!7647107 m!8164914))

(assert (=> bm!702073 m!8164976))

(assert (=> b!7647108 m!8164928))

(assert (=> b!7646918 d!2325643))

(declare-fun bs!1944810 () Bool)

(declare-fun b!7647127 () Bool)

(assert (= bs!1944810 (and b!7647127 b!7647112)))

(declare-fun lambda!469722 () Int)

(assert (=> bs!1944810 (= (and (= (reg!20799 (regTwo!41453 r!14126)) (reg!20799 r!14126)) (= (regTwo!41453 r!14126) r!14126)) (= lambda!469722 lambda!469720))))

(declare-fun bs!1944811 () Bool)

(assert (= bs!1944811 (and b!7647127 b!7647114)))

(assert (=> bs!1944811 (not (= lambda!469722 lambda!469721))))

(assert (=> b!7647127 true))

(assert (=> b!7647127 true))

(declare-fun bs!1944812 () Bool)

(declare-fun b!7647129 () Bool)

(assert (= bs!1944812 (and b!7647129 b!7647112)))

(declare-fun lambda!469723 () Int)

(assert (=> bs!1944812 (not (= lambda!469723 lambda!469720))))

(declare-fun bs!1944813 () Bool)

(assert (= bs!1944813 (and b!7647129 b!7647114)))

(assert (=> bs!1944813 (= (and (= (regOne!41452 (regTwo!41453 r!14126)) (regOne!41452 r!14126)) (= (regTwo!41452 (regTwo!41453 r!14126)) (regTwo!41452 r!14126))) (= lambda!469723 lambda!469721))))

(declare-fun bs!1944814 () Bool)

(assert (= bs!1944814 (and b!7647129 b!7647127)))

(assert (=> bs!1944814 (not (= lambda!469723 lambda!469722))))

(assert (=> b!7647129 true))

(assert (=> b!7647129 true))

(declare-fun b!7647119 () Bool)

(declare-fun e!4545095 () Bool)

(declare-fun call!702079 () Bool)

(assert (=> b!7647119 (= e!4545095 call!702079)))

(declare-fun b!7647120 () Bool)

(declare-fun e!4545100 () Bool)

(assert (=> b!7647120 (= e!4545100 (= s!9605 (Cons!73197 (c!1408527 (regTwo!41453 r!14126)) Nil!73197)))))

(declare-fun c!1408573 () Bool)

(declare-fun call!702080 () Bool)

(declare-fun bm!702074 () Bool)

(assert (=> bm!702074 (= call!702080 (Exists!4599 (ite c!1408573 lambda!469722 lambda!469723)))))

(declare-fun b!7647121 () Bool)

(declare-fun e!4545098 () Bool)

(declare-fun e!4545097 () Bool)

(assert (=> b!7647121 (= e!4545098 e!4545097)))

(assert (=> b!7647121 (= c!1408573 (is-Star!20470 (regTwo!41453 r!14126)))))

(declare-fun b!7647122 () Bool)

(declare-fun e!4545096 () Bool)

(assert (=> b!7647122 (= e!4545098 e!4545096)))

(declare-fun res!3062992 () Bool)

(assert (=> b!7647122 (= res!3062992 (matchRSpec!4579 (regOne!41453 (regTwo!41453 r!14126)) s!9605))))

(assert (=> b!7647122 (=> res!3062992 e!4545096)))

(declare-fun bm!702075 () Bool)

(assert (=> bm!702075 (= call!702079 (isEmpty!41822 s!9605))))

(declare-fun b!7647124 () Bool)

(declare-fun c!1408575 () Bool)

(assert (=> b!7647124 (= c!1408575 (is-Union!20470 (regTwo!41453 r!14126)))))

(assert (=> b!7647124 (= e!4545100 e!4545098)))

(declare-fun b!7647125 () Bool)

(declare-fun res!3062990 () Bool)

(declare-fun e!4545099 () Bool)

(assert (=> b!7647125 (=> res!3062990 e!4545099)))

(assert (=> b!7647125 (= res!3062990 call!702079)))

(assert (=> b!7647125 (= e!4545097 e!4545099)))

(declare-fun b!7647126 () Bool)

(declare-fun e!4545101 () Bool)

(assert (=> b!7647126 (= e!4545095 e!4545101)))

(declare-fun res!3062991 () Bool)

(assert (=> b!7647126 (= res!3062991 (not (is-EmptyLang!20470 (regTwo!41453 r!14126))))))

(assert (=> b!7647126 (=> (not res!3062991) (not e!4545101))))

(assert (=> b!7647127 (= e!4545099 call!702080)))

(declare-fun b!7647128 () Bool)

(declare-fun c!1408576 () Bool)

(assert (=> b!7647128 (= c!1408576 (is-ElementMatch!20470 (regTwo!41453 r!14126)))))

(assert (=> b!7647128 (= e!4545101 e!4545100)))

(assert (=> b!7647129 (= e!4545097 call!702080)))

(declare-fun b!7647123 () Bool)

(assert (=> b!7647123 (= e!4545096 (matchRSpec!4579 (regTwo!41453 (regTwo!41453 r!14126)) s!9605))))

(declare-fun d!2325647 () Bool)

(declare-fun c!1408574 () Bool)

(assert (=> d!2325647 (= c!1408574 (is-EmptyExpr!20470 (regTwo!41453 r!14126)))))

(assert (=> d!2325647 (= (matchRSpec!4579 (regTwo!41453 r!14126) s!9605) e!4545095)))

(assert (= (and d!2325647 c!1408574) b!7647119))

(assert (= (and d!2325647 (not c!1408574)) b!7647126))

(assert (= (and b!7647126 res!3062991) b!7647128))

(assert (= (and b!7647128 c!1408576) b!7647120))

(assert (= (and b!7647128 (not c!1408576)) b!7647124))

(assert (= (and b!7647124 c!1408575) b!7647122))

(assert (= (and b!7647124 (not c!1408575)) b!7647121))

(assert (= (and b!7647122 (not res!3062992)) b!7647123))

(assert (= (and b!7647121 c!1408573) b!7647125))

(assert (= (and b!7647121 (not c!1408573)) b!7647129))

(assert (= (and b!7647125 (not res!3062990)) b!7647127))

(assert (= (or b!7647127 b!7647129) bm!702074))

(assert (= (or b!7647119 b!7647125) bm!702075))

(declare-fun m!8165000 () Bool)

(assert (=> bm!702074 m!8165000))

(declare-fun m!8165002 () Bool)

(assert (=> b!7647122 m!8165002))

(assert (=> bm!702075 m!8164976))

(declare-fun m!8165004 () Bool)

(assert (=> b!7647123 m!8165004))

(assert (=> b!7646918 d!2325647))

(declare-fun d!2325649 () Bool)

(assert (=> d!2325649 (= (matchR!9971 (regTwo!41453 r!14126) s!9605) (matchRSpec!4579 (regTwo!41453 r!14126) s!9605))))

(declare-fun lt!2661191 () Unit!167956)

(declare-fun choose!59044 (Regex!20470 List!73321) Unit!167956)

(assert (=> d!2325649 (= lt!2661191 (choose!59044 (regTwo!41453 r!14126) s!9605))))

(assert (=> d!2325649 (validRegex!10888 (regTwo!41453 r!14126))))

(assert (=> d!2325649 (= (mainMatchTheorem!4559 (regTwo!41453 r!14126) s!9605) lt!2661191)))

(declare-fun bs!1944815 () Bool)

(assert (= bs!1944815 d!2325649))

(assert (=> bs!1944815 m!8164920))

(assert (=> bs!1944815 m!8164928))

(declare-fun m!8165006 () Bool)

(assert (=> bs!1944815 m!8165006))

(assert (=> bs!1944815 m!8164916))

(assert (=> b!7646918 d!2325649))

(declare-fun b!7647130 () Bool)

(declare-fun e!4545106 () Bool)

(declare-fun e!4545107 () Bool)

(assert (=> b!7647130 (= e!4545106 e!4545107)))

(declare-fun c!1408577 () Bool)

(assert (=> b!7647130 (= c!1408577 (is-EmptyLang!20470 (regTwo!41453 r!14126)))))

(declare-fun b!7647131 () Bool)

(declare-fun res!3062995 () Bool)

(declare-fun e!4545105 () Bool)

(assert (=> b!7647131 (=> res!3062995 e!4545105)))

(assert (=> b!7647131 (= res!3062995 (not (isEmpty!41822 (tail!15281 s!9605))))))

(declare-fun b!7647132 () Bool)

(declare-fun e!4545108 () Bool)

(assert (=> b!7647132 (= e!4545108 e!4545105)))

(declare-fun res!3062996 () Bool)

(assert (=> b!7647132 (=> res!3062996 e!4545105)))

(declare-fun call!702081 () Bool)

(assert (=> b!7647132 (= res!3062996 call!702081)))

(declare-fun b!7647133 () Bool)

(declare-fun e!4545103 () Bool)

(assert (=> b!7647133 (= e!4545103 e!4545108)))

(declare-fun res!3062994 () Bool)

(assert (=> b!7647133 (=> (not res!3062994) (not e!4545108))))

(declare-fun lt!2661192 () Bool)

(assert (=> b!7647133 (= res!3062994 (not lt!2661192))))

(declare-fun b!7647134 () Bool)

(declare-fun e!4545102 () Bool)

(assert (=> b!7647134 (= e!4545102 (nullable!8971 (regTwo!41453 r!14126)))))

(declare-fun b!7647135 () Bool)

(assert (=> b!7647135 (= e!4545107 (not lt!2661192))))

(declare-fun b!7647136 () Bool)

(declare-fun e!4545104 () Bool)

(assert (=> b!7647136 (= e!4545104 (= (head!15741 s!9605) (c!1408527 (regTwo!41453 r!14126))))))

(declare-fun b!7647137 () Bool)

(assert (=> b!7647137 (= e!4545105 (not (= (head!15741 s!9605) (c!1408527 (regTwo!41453 r!14126)))))))

(declare-fun d!2325651 () Bool)

(assert (=> d!2325651 e!4545106))

(declare-fun c!1408578 () Bool)

(assert (=> d!2325651 (= c!1408578 (is-EmptyExpr!20470 (regTwo!41453 r!14126)))))

(assert (=> d!2325651 (= lt!2661192 e!4545102)))

(declare-fun c!1408579 () Bool)

(assert (=> d!2325651 (= c!1408579 (isEmpty!41822 s!9605))))

(assert (=> d!2325651 (validRegex!10888 (regTwo!41453 r!14126))))

(assert (=> d!2325651 (= (matchR!9971 (regTwo!41453 r!14126) s!9605) lt!2661192)))

(declare-fun bm!702076 () Bool)

(assert (=> bm!702076 (= call!702081 (isEmpty!41822 s!9605))))

(declare-fun b!7647138 () Bool)

(assert (=> b!7647138 (= e!4545102 (matchR!9971 (derivativeStep!5941 (regTwo!41453 r!14126) (head!15741 s!9605)) (tail!15281 s!9605)))))

(declare-fun b!7647139 () Bool)

(declare-fun res!3062999 () Bool)

(assert (=> b!7647139 (=> res!3062999 e!4545103)))

(assert (=> b!7647139 (= res!3062999 (not (is-ElementMatch!20470 (regTwo!41453 r!14126))))))

(assert (=> b!7647139 (= e!4545107 e!4545103)))

(declare-fun b!7647140 () Bool)

(declare-fun res!3062997 () Bool)

(assert (=> b!7647140 (=> (not res!3062997) (not e!4545104))))

(assert (=> b!7647140 (= res!3062997 (not call!702081))))

(declare-fun b!7647141 () Bool)

(assert (=> b!7647141 (= e!4545106 (= lt!2661192 call!702081))))

(declare-fun b!7647142 () Bool)

(declare-fun res!3062993 () Bool)

(assert (=> b!7647142 (=> (not res!3062993) (not e!4545104))))

(assert (=> b!7647142 (= res!3062993 (isEmpty!41822 (tail!15281 s!9605)))))

(declare-fun b!7647143 () Bool)

(declare-fun res!3063000 () Bool)

(assert (=> b!7647143 (=> res!3063000 e!4545103)))

(assert (=> b!7647143 (= res!3063000 e!4545104)))

(declare-fun res!3062998 () Bool)

(assert (=> b!7647143 (=> (not res!3062998) (not e!4545104))))

(assert (=> b!7647143 (= res!3062998 lt!2661192)))

(assert (= (and d!2325651 c!1408579) b!7647134))

(assert (= (and d!2325651 (not c!1408579)) b!7647138))

(assert (= (and d!2325651 c!1408578) b!7647141))

(assert (= (and d!2325651 (not c!1408578)) b!7647130))

(assert (= (and b!7647130 c!1408577) b!7647135))

(assert (= (and b!7647130 (not c!1408577)) b!7647139))

(assert (= (and b!7647139 (not res!3062999)) b!7647143))

(assert (= (and b!7647143 res!3062998) b!7647140))

(assert (= (and b!7647140 res!3062997) b!7647142))

(assert (= (and b!7647142 res!3062993) b!7647136))

(assert (= (and b!7647143 (not res!3063000)) b!7647133))

(assert (= (and b!7647133 res!3062994) b!7647132))

(assert (= (and b!7647132 (not res!3062996)) b!7647131))

(assert (= (and b!7647131 (not res!3062995)) b!7647137))

(assert (= (or b!7647141 b!7647140 b!7647132) bm!702076))

(assert (=> b!7647137 m!8164970))

(assert (=> b!7647142 m!8164972))

(assert (=> b!7647142 m!8164972))

(assert (=> b!7647142 m!8164974))

(assert (=> d!2325651 m!8164976))

(assert (=> d!2325651 m!8164916))

(assert (=> bm!702076 m!8164976))

(assert (=> b!7647138 m!8164970))

(assert (=> b!7647138 m!8164970))

(declare-fun m!8165008 () Bool)

(assert (=> b!7647138 m!8165008))

(assert (=> b!7647138 m!8164972))

(assert (=> b!7647138 m!8165008))

(assert (=> b!7647138 m!8164972))

(declare-fun m!8165010 () Bool)

(assert (=> b!7647138 m!8165010))

(assert (=> b!7647131 m!8164972))

(assert (=> b!7647131 m!8164972))

(assert (=> b!7647131 m!8164974))

(declare-fun m!8165012 () Bool)

(assert (=> b!7647134 m!8165012))

(assert (=> b!7647136 m!8164970))

(assert (=> b!7646913 d!2325651))

(declare-fun bs!1944816 () Bool)

(declare-fun b!7647152 () Bool)

(assert (= bs!1944816 (and b!7647152 b!7647112)))

(declare-fun lambda!469724 () Int)

(assert (=> bs!1944816 (= (and (= (reg!20799 (regOne!41453 r!14126)) (reg!20799 r!14126)) (= (regOne!41453 r!14126) r!14126)) (= lambda!469724 lambda!469720))))

(declare-fun bs!1944817 () Bool)

(assert (= bs!1944817 (and b!7647152 b!7647114)))

(assert (=> bs!1944817 (not (= lambda!469724 lambda!469721))))

(declare-fun bs!1944818 () Bool)

(assert (= bs!1944818 (and b!7647152 b!7647127)))

(assert (=> bs!1944818 (= (and (= (reg!20799 (regOne!41453 r!14126)) (reg!20799 (regTwo!41453 r!14126))) (= (regOne!41453 r!14126) (regTwo!41453 r!14126))) (= lambda!469724 lambda!469722))))

(declare-fun bs!1944819 () Bool)

(assert (= bs!1944819 (and b!7647152 b!7647129)))

(assert (=> bs!1944819 (not (= lambda!469724 lambda!469723))))

(assert (=> b!7647152 true))

(assert (=> b!7647152 true))

(declare-fun bs!1944820 () Bool)

(declare-fun b!7647154 () Bool)

(assert (= bs!1944820 (and b!7647154 b!7647112)))

(declare-fun lambda!469725 () Int)

(assert (=> bs!1944820 (not (= lambda!469725 lambda!469720))))

(declare-fun bs!1944821 () Bool)

(assert (= bs!1944821 (and b!7647154 b!7647129)))

(assert (=> bs!1944821 (= (and (= (regOne!41452 (regOne!41453 r!14126)) (regOne!41452 (regTwo!41453 r!14126))) (= (regTwo!41452 (regOne!41453 r!14126)) (regTwo!41452 (regTwo!41453 r!14126)))) (= lambda!469725 lambda!469723))))

(declare-fun bs!1944822 () Bool)

(assert (= bs!1944822 (and b!7647154 b!7647114)))

(assert (=> bs!1944822 (= (and (= (regOne!41452 (regOne!41453 r!14126)) (regOne!41452 r!14126)) (= (regTwo!41452 (regOne!41453 r!14126)) (regTwo!41452 r!14126))) (= lambda!469725 lambda!469721))))

(declare-fun bs!1944823 () Bool)

(assert (= bs!1944823 (and b!7647154 b!7647127)))

(assert (=> bs!1944823 (not (= lambda!469725 lambda!469722))))

(declare-fun bs!1944824 () Bool)

(assert (= bs!1944824 (and b!7647154 b!7647152)))

(assert (=> bs!1944824 (not (= lambda!469725 lambda!469724))))

(assert (=> b!7647154 true))

(assert (=> b!7647154 true))

(declare-fun b!7647144 () Bool)

(declare-fun e!4545109 () Bool)

(declare-fun call!702082 () Bool)

(assert (=> b!7647144 (= e!4545109 call!702082)))

(declare-fun b!7647145 () Bool)

(declare-fun e!4545114 () Bool)

(assert (=> b!7647145 (= e!4545114 (= s!9605 (Cons!73197 (c!1408527 (regOne!41453 r!14126)) Nil!73197)))))

(declare-fun call!702083 () Bool)

(declare-fun c!1408580 () Bool)

(declare-fun bm!702077 () Bool)

(assert (=> bm!702077 (= call!702083 (Exists!4599 (ite c!1408580 lambda!469724 lambda!469725)))))

(declare-fun b!7647146 () Bool)

(declare-fun e!4545112 () Bool)

(declare-fun e!4545111 () Bool)

(assert (=> b!7647146 (= e!4545112 e!4545111)))

(assert (=> b!7647146 (= c!1408580 (is-Star!20470 (regOne!41453 r!14126)))))

(declare-fun b!7647147 () Bool)

(declare-fun e!4545110 () Bool)

(assert (=> b!7647147 (= e!4545112 e!4545110)))

(declare-fun res!3063003 () Bool)

(assert (=> b!7647147 (= res!3063003 (matchRSpec!4579 (regOne!41453 (regOne!41453 r!14126)) s!9605))))

(assert (=> b!7647147 (=> res!3063003 e!4545110)))

(declare-fun bm!702078 () Bool)

(assert (=> bm!702078 (= call!702082 (isEmpty!41822 s!9605))))

(declare-fun b!7647149 () Bool)

(declare-fun c!1408582 () Bool)

(assert (=> b!7647149 (= c!1408582 (is-Union!20470 (regOne!41453 r!14126)))))

(assert (=> b!7647149 (= e!4545114 e!4545112)))

(declare-fun b!7647150 () Bool)

(declare-fun res!3063001 () Bool)

(declare-fun e!4545113 () Bool)

(assert (=> b!7647150 (=> res!3063001 e!4545113)))

(assert (=> b!7647150 (= res!3063001 call!702082)))

(assert (=> b!7647150 (= e!4545111 e!4545113)))

(declare-fun b!7647151 () Bool)

(declare-fun e!4545115 () Bool)

(assert (=> b!7647151 (= e!4545109 e!4545115)))

(declare-fun res!3063002 () Bool)

(assert (=> b!7647151 (= res!3063002 (not (is-EmptyLang!20470 (regOne!41453 r!14126))))))

(assert (=> b!7647151 (=> (not res!3063002) (not e!4545115))))

(assert (=> b!7647152 (= e!4545113 call!702083)))

(declare-fun b!7647153 () Bool)

(declare-fun c!1408583 () Bool)

(assert (=> b!7647153 (= c!1408583 (is-ElementMatch!20470 (regOne!41453 r!14126)))))

(assert (=> b!7647153 (= e!4545115 e!4545114)))

(assert (=> b!7647154 (= e!4545111 call!702083)))

(declare-fun b!7647148 () Bool)

(assert (=> b!7647148 (= e!4545110 (matchRSpec!4579 (regTwo!41453 (regOne!41453 r!14126)) s!9605))))

(declare-fun d!2325653 () Bool)

(declare-fun c!1408581 () Bool)

(assert (=> d!2325653 (= c!1408581 (is-EmptyExpr!20470 (regOne!41453 r!14126)))))

(assert (=> d!2325653 (= (matchRSpec!4579 (regOne!41453 r!14126) s!9605) e!4545109)))

(assert (= (and d!2325653 c!1408581) b!7647144))

(assert (= (and d!2325653 (not c!1408581)) b!7647151))

(assert (= (and b!7647151 res!3063002) b!7647153))

(assert (= (and b!7647153 c!1408583) b!7647145))

(assert (= (and b!7647153 (not c!1408583)) b!7647149))

(assert (= (and b!7647149 c!1408582) b!7647147))

(assert (= (and b!7647149 (not c!1408582)) b!7647146))

(assert (= (and b!7647147 (not res!3063003)) b!7647148))

(assert (= (and b!7647146 c!1408580) b!7647150))

(assert (= (and b!7647146 (not c!1408580)) b!7647154))

(assert (= (and b!7647150 (not res!3063001)) b!7647152))

(assert (= (or b!7647152 b!7647154) bm!702077))

(assert (= (or b!7647144 b!7647150) bm!702078))

(declare-fun m!8165014 () Bool)

(assert (=> bm!702077 m!8165014))

(declare-fun m!8165016 () Bool)

(assert (=> b!7647147 m!8165016))

(assert (=> bm!702078 m!8164976))

(declare-fun m!8165018 () Bool)

(assert (=> b!7647148 m!8165018))

(assert (=> b!7646913 d!2325653))

(declare-fun bm!702085 () Bool)

(declare-fun call!702092 () Bool)

(declare-fun c!1408589 () Bool)

(assert (=> bm!702085 (= call!702092 (validRegex!10888 (ite c!1408589 (regTwo!41453 (regTwo!41453 r!14126)) (regTwo!41452 (regTwo!41453 r!14126)))))))

(declare-fun b!7647173 () Bool)

(declare-fun e!4545133 () Bool)

(declare-fun e!4545131 () Bool)

(assert (=> b!7647173 (= e!4545133 e!4545131)))

(declare-fun c!1408588 () Bool)

(assert (=> b!7647173 (= c!1408588 (is-Star!20470 (regTwo!41453 r!14126)))))

(declare-fun b!7647174 () Bool)

(declare-fun res!3063018 () Bool)

(declare-fun e!4545135 () Bool)

(assert (=> b!7647174 (=> res!3063018 e!4545135)))

(assert (=> b!7647174 (= res!3063018 (not (is-Concat!29315 (regTwo!41453 r!14126))))))

(declare-fun e!4545130 () Bool)

(assert (=> b!7647174 (= e!4545130 e!4545135)))

(declare-fun b!7647175 () Bool)

(declare-fun res!3063017 () Bool)

(declare-fun e!4545132 () Bool)

(assert (=> b!7647175 (=> (not res!3063017) (not e!4545132))))

(declare-fun call!702090 () Bool)

(assert (=> b!7647175 (= res!3063017 call!702090)))

(assert (=> b!7647175 (= e!4545130 e!4545132)))

(declare-fun b!7647176 () Bool)

(assert (=> b!7647176 (= e!4545132 call!702092)))

(declare-fun b!7647177 () Bool)

(declare-fun e!4545134 () Bool)

(declare-fun call!702091 () Bool)

(assert (=> b!7647177 (= e!4545134 call!702091)))

(declare-fun bm!702086 () Bool)

(assert (=> bm!702086 (= call!702091 (validRegex!10888 (ite c!1408588 (reg!20799 (regTwo!41453 r!14126)) (ite c!1408589 (regOne!41453 (regTwo!41453 r!14126)) (regOne!41452 (regTwo!41453 r!14126))))))))

(declare-fun bm!702087 () Bool)

(assert (=> bm!702087 (= call!702090 call!702091)))

(declare-fun d!2325655 () Bool)

(declare-fun res!3063015 () Bool)

(assert (=> d!2325655 (=> res!3063015 e!4545133)))

(assert (=> d!2325655 (= res!3063015 (is-ElementMatch!20470 (regTwo!41453 r!14126)))))

(assert (=> d!2325655 (= (validRegex!10888 (regTwo!41453 r!14126)) e!4545133)))

(declare-fun b!7647178 () Bool)

(assert (=> b!7647178 (= e!4545131 e!4545134)))

(declare-fun res!3063014 () Bool)

(assert (=> b!7647178 (= res!3063014 (not (nullable!8971 (reg!20799 (regTwo!41453 r!14126)))))))

(assert (=> b!7647178 (=> (not res!3063014) (not e!4545134))))

(declare-fun b!7647179 () Bool)

(declare-fun e!4545136 () Bool)

(assert (=> b!7647179 (= e!4545135 e!4545136)))

(declare-fun res!3063016 () Bool)

(assert (=> b!7647179 (=> (not res!3063016) (not e!4545136))))

(assert (=> b!7647179 (= res!3063016 call!702090)))

(declare-fun b!7647180 () Bool)

(assert (=> b!7647180 (= e!4545136 call!702092)))

(declare-fun b!7647181 () Bool)

(assert (=> b!7647181 (= e!4545131 e!4545130)))

(assert (=> b!7647181 (= c!1408589 (is-Union!20470 (regTwo!41453 r!14126)))))

(assert (= (and d!2325655 (not res!3063015)) b!7647173))

(assert (= (and b!7647173 c!1408588) b!7647178))

(assert (= (and b!7647173 (not c!1408588)) b!7647181))

(assert (= (and b!7647178 res!3063014) b!7647177))

(assert (= (and b!7647181 c!1408589) b!7647175))

(assert (= (and b!7647181 (not c!1408589)) b!7647174))

(assert (= (and b!7647175 res!3063017) b!7647176))

(assert (= (and b!7647174 (not res!3063018)) b!7647179))

(assert (= (and b!7647179 res!3063016) b!7647180))

(assert (= (or b!7647175 b!7647179) bm!702087))

(assert (= (or b!7647176 b!7647180) bm!702085))

(assert (= (or b!7647177 bm!702087) bm!702086))

(declare-fun m!8165020 () Bool)

(assert (=> bm!702085 m!8165020))

(declare-fun m!8165022 () Bool)

(assert (=> bm!702086 m!8165022))

(declare-fun m!8165024 () Bool)

(assert (=> b!7647178 m!8165024))

(assert (=> b!7646913 d!2325655))

(declare-fun d!2325657 () Bool)

(assert (=> d!2325657 (= (matchR!9971 (regOne!41453 r!14126) s!9605) (matchRSpec!4579 (regOne!41453 r!14126) s!9605))))

(declare-fun lt!2661193 () Unit!167956)

(assert (=> d!2325657 (= lt!2661193 (choose!59044 (regOne!41453 r!14126) s!9605))))

(assert (=> d!2325657 (validRegex!10888 (regOne!41453 r!14126))))

(assert (=> d!2325657 (= (mainMatchTheorem!4559 (regOne!41453 r!14126) s!9605) lt!2661193)))

(declare-fun bs!1944825 () Bool)

(assert (= bs!1944825 d!2325657))

(assert (=> bs!1944825 m!8164922))

(assert (=> bs!1944825 m!8164914))

(declare-fun m!8165026 () Bool)

(assert (=> bs!1944825 m!8165026))

(declare-fun m!8165028 () Bool)

(assert (=> bs!1944825 m!8165028))

(assert (=> b!7646913 d!2325657))

(declare-fun b!7647182 () Bool)

(declare-fun e!4545141 () Bool)

(declare-fun e!4545142 () Bool)

(assert (=> b!7647182 (= e!4545141 e!4545142)))

(declare-fun c!1408590 () Bool)

(assert (=> b!7647182 (= c!1408590 (is-EmptyLang!20470 (regOne!41453 r!14126)))))

(declare-fun b!7647183 () Bool)

(declare-fun res!3063021 () Bool)

(declare-fun e!4545140 () Bool)

(assert (=> b!7647183 (=> res!3063021 e!4545140)))

(assert (=> b!7647183 (= res!3063021 (not (isEmpty!41822 (tail!15281 s!9605))))))

(declare-fun b!7647184 () Bool)

(declare-fun e!4545143 () Bool)

(assert (=> b!7647184 (= e!4545143 e!4545140)))

(declare-fun res!3063022 () Bool)

(assert (=> b!7647184 (=> res!3063022 e!4545140)))

(declare-fun call!702093 () Bool)

(assert (=> b!7647184 (= res!3063022 call!702093)))

(declare-fun b!7647185 () Bool)

(declare-fun e!4545138 () Bool)

(assert (=> b!7647185 (= e!4545138 e!4545143)))

(declare-fun res!3063020 () Bool)

(assert (=> b!7647185 (=> (not res!3063020) (not e!4545143))))

(declare-fun lt!2661194 () Bool)

(assert (=> b!7647185 (= res!3063020 (not lt!2661194))))

(declare-fun b!7647186 () Bool)

(declare-fun e!4545137 () Bool)

(assert (=> b!7647186 (= e!4545137 (nullable!8971 (regOne!41453 r!14126)))))

(declare-fun b!7647187 () Bool)

(assert (=> b!7647187 (= e!4545142 (not lt!2661194))))

(declare-fun b!7647188 () Bool)

(declare-fun e!4545139 () Bool)

(assert (=> b!7647188 (= e!4545139 (= (head!15741 s!9605) (c!1408527 (regOne!41453 r!14126))))))

(declare-fun b!7647189 () Bool)

(assert (=> b!7647189 (= e!4545140 (not (= (head!15741 s!9605) (c!1408527 (regOne!41453 r!14126)))))))

(declare-fun d!2325659 () Bool)

(assert (=> d!2325659 e!4545141))

(declare-fun c!1408591 () Bool)

(assert (=> d!2325659 (= c!1408591 (is-EmptyExpr!20470 (regOne!41453 r!14126)))))

(assert (=> d!2325659 (= lt!2661194 e!4545137)))

(declare-fun c!1408592 () Bool)

(assert (=> d!2325659 (= c!1408592 (isEmpty!41822 s!9605))))

(assert (=> d!2325659 (validRegex!10888 (regOne!41453 r!14126))))

(assert (=> d!2325659 (= (matchR!9971 (regOne!41453 r!14126) s!9605) lt!2661194)))

(declare-fun bm!702088 () Bool)

(assert (=> bm!702088 (= call!702093 (isEmpty!41822 s!9605))))

(declare-fun b!7647190 () Bool)

(assert (=> b!7647190 (= e!4545137 (matchR!9971 (derivativeStep!5941 (regOne!41453 r!14126) (head!15741 s!9605)) (tail!15281 s!9605)))))

(declare-fun b!7647191 () Bool)

(declare-fun res!3063025 () Bool)

(assert (=> b!7647191 (=> res!3063025 e!4545138)))

(assert (=> b!7647191 (= res!3063025 (not (is-ElementMatch!20470 (regOne!41453 r!14126))))))

(assert (=> b!7647191 (= e!4545142 e!4545138)))

(declare-fun b!7647192 () Bool)

(declare-fun res!3063023 () Bool)

(assert (=> b!7647192 (=> (not res!3063023) (not e!4545139))))

(assert (=> b!7647192 (= res!3063023 (not call!702093))))

(declare-fun b!7647193 () Bool)

(assert (=> b!7647193 (= e!4545141 (= lt!2661194 call!702093))))

(declare-fun b!7647194 () Bool)

(declare-fun res!3063019 () Bool)

(assert (=> b!7647194 (=> (not res!3063019) (not e!4545139))))

(assert (=> b!7647194 (= res!3063019 (isEmpty!41822 (tail!15281 s!9605)))))

(declare-fun b!7647195 () Bool)

(declare-fun res!3063026 () Bool)

(assert (=> b!7647195 (=> res!3063026 e!4545138)))

(assert (=> b!7647195 (= res!3063026 e!4545139)))

(declare-fun res!3063024 () Bool)

(assert (=> b!7647195 (=> (not res!3063024) (not e!4545139))))

(assert (=> b!7647195 (= res!3063024 lt!2661194)))

(assert (= (and d!2325659 c!1408592) b!7647186))

(assert (= (and d!2325659 (not c!1408592)) b!7647190))

(assert (= (and d!2325659 c!1408591) b!7647193))

(assert (= (and d!2325659 (not c!1408591)) b!7647182))

(assert (= (and b!7647182 c!1408590) b!7647187))

(assert (= (and b!7647182 (not c!1408590)) b!7647191))

(assert (= (and b!7647191 (not res!3063025)) b!7647195))

(assert (= (and b!7647195 res!3063024) b!7647192))

(assert (= (and b!7647192 res!3063023) b!7647194))

(assert (= (and b!7647194 res!3063019) b!7647188))

(assert (= (and b!7647195 (not res!3063026)) b!7647185))

(assert (= (and b!7647185 res!3063020) b!7647184))

(assert (= (and b!7647184 (not res!3063022)) b!7647183))

(assert (= (and b!7647183 (not res!3063021)) b!7647189))

(assert (= (or b!7647193 b!7647192 b!7647184) bm!702088))

(assert (=> b!7647189 m!8164970))

(assert (=> b!7647194 m!8164972))

(assert (=> b!7647194 m!8164972))

(assert (=> b!7647194 m!8164974))

(assert (=> d!2325659 m!8164976))

(assert (=> d!2325659 m!8165028))

(assert (=> bm!702088 m!8164976))

(assert (=> b!7647190 m!8164970))

(assert (=> b!7647190 m!8164970))

(declare-fun m!8165030 () Bool)

(assert (=> b!7647190 m!8165030))

(assert (=> b!7647190 m!8164972))

(assert (=> b!7647190 m!8165030))

(assert (=> b!7647190 m!8164972))

(declare-fun m!8165032 () Bool)

(assert (=> b!7647190 m!8165032))

(assert (=> b!7647183 m!8164972))

(assert (=> b!7647183 m!8164972))

(assert (=> b!7647183 m!8164974))

(declare-fun m!8165034 () Bool)

(assert (=> b!7647186 m!8165034))

(assert (=> b!7647188 m!8164970))

(assert (=> b!7646913 d!2325659))

(declare-fun bm!702089 () Bool)

(declare-fun call!702096 () Bool)

(declare-fun c!1408594 () Bool)

(assert (=> bm!702089 (= call!702096 (validRegex!10888 (ite c!1408594 (regTwo!41453 r!14126) (regTwo!41452 r!14126))))))

(declare-fun b!7647196 () Bool)

(declare-fun e!4545147 () Bool)

(declare-fun e!4545145 () Bool)

(assert (=> b!7647196 (= e!4545147 e!4545145)))

(declare-fun c!1408593 () Bool)

(assert (=> b!7647196 (= c!1408593 (is-Star!20470 r!14126))))

(declare-fun b!7647197 () Bool)

(declare-fun res!3063031 () Bool)

(declare-fun e!4545149 () Bool)

(assert (=> b!7647197 (=> res!3063031 e!4545149)))

(assert (=> b!7647197 (= res!3063031 (not (is-Concat!29315 r!14126)))))

(declare-fun e!4545144 () Bool)

(assert (=> b!7647197 (= e!4545144 e!4545149)))

(declare-fun b!7647198 () Bool)

(declare-fun res!3063030 () Bool)

(declare-fun e!4545146 () Bool)

(assert (=> b!7647198 (=> (not res!3063030) (not e!4545146))))

(declare-fun call!702094 () Bool)

(assert (=> b!7647198 (= res!3063030 call!702094)))

(assert (=> b!7647198 (= e!4545144 e!4545146)))

(declare-fun b!7647199 () Bool)

(assert (=> b!7647199 (= e!4545146 call!702096)))

(declare-fun b!7647200 () Bool)

(declare-fun e!4545148 () Bool)

(declare-fun call!702095 () Bool)

(assert (=> b!7647200 (= e!4545148 call!702095)))

(declare-fun bm!702090 () Bool)

(assert (=> bm!702090 (= call!702095 (validRegex!10888 (ite c!1408593 (reg!20799 r!14126) (ite c!1408594 (regOne!41453 r!14126) (regOne!41452 r!14126)))))))

(declare-fun bm!702091 () Bool)

(assert (=> bm!702091 (= call!702094 call!702095)))

(declare-fun d!2325661 () Bool)

(declare-fun res!3063028 () Bool)

(assert (=> d!2325661 (=> res!3063028 e!4545147)))

(assert (=> d!2325661 (= res!3063028 (is-ElementMatch!20470 r!14126))))

(assert (=> d!2325661 (= (validRegex!10888 r!14126) e!4545147)))

(declare-fun b!7647201 () Bool)

(assert (=> b!7647201 (= e!4545145 e!4545148)))

(declare-fun res!3063027 () Bool)

(assert (=> b!7647201 (= res!3063027 (not (nullable!8971 (reg!20799 r!14126))))))

(assert (=> b!7647201 (=> (not res!3063027) (not e!4545148))))

(declare-fun b!7647202 () Bool)

(declare-fun e!4545150 () Bool)

(assert (=> b!7647202 (= e!4545149 e!4545150)))

(declare-fun res!3063029 () Bool)

(assert (=> b!7647202 (=> (not res!3063029) (not e!4545150))))

(assert (=> b!7647202 (= res!3063029 call!702094)))

(declare-fun b!7647203 () Bool)

(assert (=> b!7647203 (= e!4545150 call!702096)))

(declare-fun b!7647204 () Bool)

(assert (=> b!7647204 (= e!4545145 e!4545144)))

(assert (=> b!7647204 (= c!1408594 (is-Union!20470 r!14126))))

(assert (= (and d!2325661 (not res!3063028)) b!7647196))

(assert (= (and b!7647196 c!1408593) b!7647201))

(assert (= (and b!7647196 (not c!1408593)) b!7647204))

(assert (= (and b!7647201 res!3063027) b!7647200))

(assert (= (and b!7647204 c!1408594) b!7647198))

(assert (= (and b!7647204 (not c!1408594)) b!7647197))

(assert (= (and b!7647198 res!3063030) b!7647199))

(assert (= (and b!7647197 (not res!3063031)) b!7647202))

(assert (= (and b!7647202 res!3063029) b!7647203))

(assert (= (or b!7647198 b!7647202) bm!702091))

(assert (= (or b!7647199 b!7647203) bm!702089))

(assert (= (or b!7647200 bm!702091) bm!702090))

(declare-fun m!8165036 () Bool)

(assert (=> bm!702089 m!8165036))

(declare-fun m!8165038 () Bool)

(assert (=> bm!702090 m!8165038))

(declare-fun m!8165040 () Bool)

(assert (=> b!7647201 m!8165040))

(assert (=> start!735846 d!2325661))

(declare-fun d!2325663 () Bool)

(assert (=> d!2325663 (matchR!9971 (Union!20470 (regOne!41453 r!14126) (regTwo!41453 r!14126)) s!9605)))

(declare-fun lt!2661197 () Unit!167956)

(declare-fun choose!59045 (Regex!20470 Regex!20470 List!73321) Unit!167956)

(assert (=> d!2325663 (= lt!2661197 (choose!59045 (regOne!41453 r!14126) (regTwo!41453 r!14126) s!9605))))

(declare-fun e!4545153 () Bool)

(assert (=> d!2325663 e!4545153))

(declare-fun res!3063034 () Bool)

(assert (=> d!2325663 (=> (not res!3063034) (not e!4545153))))

(assert (=> d!2325663 (= res!3063034 (validRegex!10888 (regOne!41453 r!14126)))))

(assert (=> d!2325663 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!117 (regOne!41453 r!14126) (regTwo!41453 r!14126) s!9605) lt!2661197)))

(declare-fun b!7647207 () Bool)

(assert (=> b!7647207 (= e!4545153 (validRegex!10888 (regTwo!41453 r!14126)))))

(assert (= (and d!2325663 res!3063034) b!7647207))

(declare-fun m!8165042 () Bool)

(assert (=> d!2325663 m!8165042))

(declare-fun m!8165044 () Bool)

(assert (=> d!2325663 m!8165044))

(assert (=> d!2325663 m!8165028))

(assert (=> b!7647207 m!8164916))

(assert (=> b!7646919 d!2325663))

(assert (=> b!7646919 d!2325639))

(declare-fun d!2325665 () Bool)

(assert (=> d!2325665 (matchR!9971 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126)) s!9605)))

(declare-fun lt!2661198 () Unit!167956)

(assert (=> d!2325665 (= lt!2661198 (choose!59045 (regTwo!41453 r!14126) (regOne!41453 r!14126) s!9605))))

(declare-fun e!4545154 () Bool)

(assert (=> d!2325665 e!4545154))

(declare-fun res!3063035 () Bool)

(assert (=> d!2325665 (=> (not res!3063035) (not e!4545154))))

(assert (=> d!2325665 (= res!3063035 (validRegex!10888 (regTwo!41453 r!14126)))))

(assert (=> d!2325665 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!117 (regTwo!41453 r!14126) (regOne!41453 r!14126) s!9605) lt!2661198)))

(declare-fun b!7647208 () Bool)

(assert (=> b!7647208 (= e!4545154 (validRegex!10888 (regOne!41453 r!14126)))))

(assert (= (and d!2325665 res!3063035) b!7647208))

(assert (=> d!2325665 m!8164938))

(declare-fun m!8165046 () Bool)

(assert (=> d!2325665 m!8165046))

(assert (=> d!2325665 m!8164916))

(assert (=> b!7647208 m!8165028))

(assert (=> b!7646915 d!2325665))

(declare-fun b!7647209 () Bool)

(declare-fun e!4545159 () Bool)

(declare-fun e!4545160 () Bool)

(assert (=> b!7647209 (= e!4545159 e!4545160)))

(declare-fun c!1408595 () Bool)

(assert (=> b!7647209 (= c!1408595 (is-EmptyLang!20470 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126))))))

(declare-fun b!7647210 () Bool)

(declare-fun res!3063038 () Bool)

(declare-fun e!4545158 () Bool)

(assert (=> b!7647210 (=> res!3063038 e!4545158)))

(assert (=> b!7647210 (= res!3063038 (not (isEmpty!41822 (tail!15281 s!9605))))))

(declare-fun b!7647211 () Bool)

(declare-fun e!4545161 () Bool)

(assert (=> b!7647211 (= e!4545161 e!4545158)))

(declare-fun res!3063039 () Bool)

(assert (=> b!7647211 (=> res!3063039 e!4545158)))

(declare-fun call!702097 () Bool)

(assert (=> b!7647211 (= res!3063039 call!702097)))

(declare-fun b!7647212 () Bool)

(declare-fun e!4545156 () Bool)

(assert (=> b!7647212 (= e!4545156 e!4545161)))

(declare-fun res!3063037 () Bool)

(assert (=> b!7647212 (=> (not res!3063037) (not e!4545161))))

(declare-fun lt!2661199 () Bool)

(assert (=> b!7647212 (= res!3063037 (not lt!2661199))))

(declare-fun b!7647213 () Bool)

(declare-fun e!4545155 () Bool)

(assert (=> b!7647213 (= e!4545155 (nullable!8971 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126))))))

(declare-fun b!7647214 () Bool)

(assert (=> b!7647214 (= e!4545160 (not lt!2661199))))

(declare-fun b!7647215 () Bool)

(declare-fun e!4545157 () Bool)

(assert (=> b!7647215 (= e!4545157 (= (head!15741 s!9605) (c!1408527 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126)))))))

(declare-fun b!7647216 () Bool)

(assert (=> b!7647216 (= e!4545158 (not (= (head!15741 s!9605) (c!1408527 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126))))))))

(declare-fun d!2325667 () Bool)

(assert (=> d!2325667 e!4545159))

(declare-fun c!1408596 () Bool)

(assert (=> d!2325667 (= c!1408596 (is-EmptyExpr!20470 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126))))))

(assert (=> d!2325667 (= lt!2661199 e!4545155)))

(declare-fun c!1408597 () Bool)

(assert (=> d!2325667 (= c!1408597 (isEmpty!41822 s!9605))))

(assert (=> d!2325667 (validRegex!10888 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126)))))

(assert (=> d!2325667 (= (matchR!9971 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126)) s!9605) lt!2661199)))

(declare-fun bm!702092 () Bool)

(assert (=> bm!702092 (= call!702097 (isEmpty!41822 s!9605))))

(declare-fun b!7647217 () Bool)

(assert (=> b!7647217 (= e!4545155 (matchR!9971 (derivativeStep!5941 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126)) (head!15741 s!9605)) (tail!15281 s!9605)))))

(declare-fun b!7647218 () Bool)

(declare-fun res!3063042 () Bool)

(assert (=> b!7647218 (=> res!3063042 e!4545156)))

(assert (=> b!7647218 (= res!3063042 (not (is-ElementMatch!20470 (Union!20470 (regTwo!41453 r!14126) (regOne!41453 r!14126)))))))

(assert (=> b!7647218 (= e!4545160 e!4545156)))

(declare-fun b!7647219 () Bool)

(declare-fun res!3063040 () Bool)

(assert (=> b!7647219 (=> (not res!3063040) (not e!4545157))))

(assert (=> b!7647219 (= res!3063040 (not call!702097))))

(declare-fun b!7647220 () Bool)

(assert (=> b!7647220 (= e!4545159 (= lt!2661199 call!702097))))

(declare-fun b!7647221 () Bool)

(declare-fun res!3063036 () Bool)

(assert (=> b!7647221 (=> (not res!3063036) (not e!4545157))))

(assert (=> b!7647221 (= res!3063036 (isEmpty!41822 (tail!15281 s!9605)))))

(declare-fun b!7647222 () Bool)

(declare-fun res!3063043 () Bool)

(assert (=> b!7647222 (=> res!3063043 e!4545156)))

(assert (=> b!7647222 (= res!3063043 e!4545157)))

(declare-fun res!3063041 () Bool)

(assert (=> b!7647222 (=> (not res!3063041) (not e!4545157))))

(assert (=> b!7647222 (= res!3063041 lt!2661199)))

(assert (= (and d!2325667 c!1408597) b!7647213))

(assert (= (and d!2325667 (not c!1408597)) b!7647217))

(assert (= (and d!2325667 c!1408596) b!7647220))

(assert (= (and d!2325667 (not c!1408596)) b!7647209))

(assert (= (and b!7647209 c!1408595) b!7647214))

(assert (= (and b!7647209 (not c!1408595)) b!7647218))

(assert (= (and b!7647218 (not res!3063042)) b!7647222))

(assert (= (and b!7647222 res!3063041) b!7647219))

(assert (= (and b!7647219 res!3063040) b!7647221))

(assert (= (and b!7647221 res!3063036) b!7647215))

(assert (= (and b!7647222 (not res!3063043)) b!7647212))

(assert (= (and b!7647212 res!3063037) b!7647211))

(assert (= (and b!7647211 (not res!3063039)) b!7647210))

(assert (= (and b!7647210 (not res!3063038)) b!7647216))

(assert (= (or b!7647220 b!7647219 b!7647211) bm!702092))

(assert (=> b!7647216 m!8164970))

(assert (=> b!7647221 m!8164972))

(assert (=> b!7647221 m!8164972))

(assert (=> b!7647221 m!8164974))

(assert (=> d!2325667 m!8164976))

(declare-fun m!8165048 () Bool)

(assert (=> d!2325667 m!8165048))

(assert (=> bm!702092 m!8164976))

(assert (=> b!7647217 m!8164970))

(assert (=> b!7647217 m!8164970))

(declare-fun m!8165050 () Bool)

(assert (=> b!7647217 m!8165050))

(assert (=> b!7647217 m!8164972))

(assert (=> b!7647217 m!8165050))

(assert (=> b!7647217 m!8164972))

(declare-fun m!8165052 () Bool)

(assert (=> b!7647217 m!8165052))

(assert (=> b!7647210 m!8164972))

(assert (=> b!7647210 m!8164972))

(assert (=> b!7647210 m!8164974))

(declare-fun m!8165054 () Bool)

(assert (=> b!7647213 m!8165054))

(assert (=> b!7647215 m!8164970))

(assert (=> b!7646915 d!2325667))

(declare-fun d!2325669 () Bool)

(assert (=> d!2325669 (matchR!9971 (Union!20470 (regOne!41453 r!14126) (regTwo!41453 r!14126)) s!9605)))

(declare-fun lt!2661202 () Unit!167956)

(declare-fun choose!59046 (Regex!20470 Regex!20470 List!73321) Unit!167956)

(assert (=> d!2325669 (= lt!2661202 (choose!59046 (regTwo!41453 r!14126) (regOne!41453 r!14126) s!9605))))

(declare-fun e!4545164 () Bool)

(assert (=> d!2325669 e!4545164))

(declare-fun res!3063046 () Bool)

(assert (=> d!2325669 (=> (not res!3063046) (not e!4545164))))

(assert (=> d!2325669 (= res!3063046 (validRegex!10888 (regTwo!41453 r!14126)))))

(assert (=> d!2325669 (= (lemmaReversedUnionAcceptsSameString!45 (regTwo!41453 r!14126) (regOne!41453 r!14126) s!9605) lt!2661202)))

(declare-fun b!7647225 () Bool)

(assert (=> b!7647225 (= e!4545164 (validRegex!10888 (regOne!41453 r!14126)))))

(assert (= (and d!2325669 res!3063046) b!7647225))

(assert (=> d!2325669 m!8165042))

(declare-fun m!8165056 () Bool)

(assert (=> d!2325669 m!8165056))

(assert (=> d!2325669 m!8164916))

(assert (=> b!7647225 m!8165028))

(assert (=> b!7646915 d!2325669))

(assert (=> b!7646915 d!2325639))

(declare-fun b!7647239 () Bool)

(declare-fun e!4545167 () Bool)

(declare-fun tp!2232056 () Bool)

(declare-fun tp!2232060 () Bool)

(assert (=> b!7647239 (= e!4545167 (and tp!2232056 tp!2232060))))

(declare-fun b!7647238 () Bool)

(declare-fun tp!2232059 () Bool)

(assert (=> b!7647238 (= e!4545167 tp!2232059)))

(declare-fun b!7647237 () Bool)

(declare-fun tp!2232058 () Bool)

(declare-fun tp!2232057 () Bool)

(assert (=> b!7647237 (= e!4545167 (and tp!2232058 tp!2232057))))

(declare-fun b!7647236 () Bool)

(assert (=> b!7647236 (= e!4545167 tp_is_empty!51295)))

(assert (=> b!7646908 (= tp!2232023 e!4545167)))

(assert (= (and b!7646908 (is-ElementMatch!20470 (regOne!41452 r!14126))) b!7647236))

(assert (= (and b!7646908 (is-Concat!29315 (regOne!41452 r!14126))) b!7647237))

(assert (= (and b!7646908 (is-Star!20470 (regOne!41452 r!14126))) b!7647238))

(assert (= (and b!7646908 (is-Union!20470 (regOne!41452 r!14126))) b!7647239))

(declare-fun b!7647243 () Bool)

(declare-fun e!4545168 () Bool)

(declare-fun tp!2232061 () Bool)

(declare-fun tp!2232065 () Bool)

(assert (=> b!7647243 (= e!4545168 (and tp!2232061 tp!2232065))))

(declare-fun b!7647242 () Bool)

(declare-fun tp!2232064 () Bool)

(assert (=> b!7647242 (= e!4545168 tp!2232064)))

(declare-fun b!7647241 () Bool)

(declare-fun tp!2232063 () Bool)

(declare-fun tp!2232062 () Bool)

(assert (=> b!7647241 (= e!4545168 (and tp!2232063 tp!2232062))))

(declare-fun b!7647240 () Bool)

(assert (=> b!7647240 (= e!4545168 tp_is_empty!51295)))

(assert (=> b!7646908 (= tp!2232025 e!4545168)))

(assert (= (and b!7646908 (is-ElementMatch!20470 (regTwo!41452 r!14126))) b!7647240))

(assert (= (and b!7646908 (is-Concat!29315 (regTwo!41452 r!14126))) b!7647241))

(assert (= (and b!7646908 (is-Star!20470 (regTwo!41452 r!14126))) b!7647242))

(assert (= (and b!7646908 (is-Union!20470 (regTwo!41452 r!14126))) b!7647243))

(declare-fun b!7647247 () Bool)

(declare-fun e!4545169 () Bool)

(declare-fun tp!2232066 () Bool)

(declare-fun tp!2232070 () Bool)

(assert (=> b!7647247 (= e!4545169 (and tp!2232066 tp!2232070))))

(declare-fun b!7647246 () Bool)

(declare-fun tp!2232069 () Bool)

(assert (=> b!7647246 (= e!4545169 tp!2232069)))

(declare-fun b!7647245 () Bool)

(declare-fun tp!2232068 () Bool)

(declare-fun tp!2232067 () Bool)

(assert (=> b!7647245 (= e!4545169 (and tp!2232068 tp!2232067))))

(declare-fun b!7647244 () Bool)

(assert (=> b!7647244 (= e!4545169 tp_is_empty!51295)))

(assert (=> b!7646914 (= tp!2232027 e!4545169)))

(assert (= (and b!7646914 (is-ElementMatch!20470 (reg!20799 r!14126))) b!7647244))

(assert (= (and b!7646914 (is-Concat!29315 (reg!20799 r!14126))) b!7647245))

(assert (= (and b!7646914 (is-Star!20470 (reg!20799 r!14126))) b!7647246))

(assert (= (and b!7646914 (is-Union!20470 (reg!20799 r!14126))) b!7647247))

(declare-fun b!7647251 () Bool)

(declare-fun e!4545170 () Bool)

(declare-fun tp!2232071 () Bool)

(declare-fun tp!2232075 () Bool)

(assert (=> b!7647251 (= e!4545170 (and tp!2232071 tp!2232075))))

(declare-fun b!7647250 () Bool)

(declare-fun tp!2232074 () Bool)

(assert (=> b!7647250 (= e!4545170 tp!2232074)))

(declare-fun b!7647249 () Bool)

(declare-fun tp!2232073 () Bool)

(declare-fun tp!2232072 () Bool)

(assert (=> b!7647249 (= e!4545170 (and tp!2232073 tp!2232072))))

(declare-fun b!7647248 () Bool)

(assert (=> b!7647248 (= e!4545170 tp_is_empty!51295)))

(assert (=> b!7646909 (= tp!2232026 e!4545170)))

(assert (= (and b!7646909 (is-ElementMatch!20470 (regOne!41453 r!14126))) b!7647248))

(assert (= (and b!7646909 (is-Concat!29315 (regOne!41453 r!14126))) b!7647249))

(assert (= (and b!7646909 (is-Star!20470 (regOne!41453 r!14126))) b!7647250))

(assert (= (and b!7646909 (is-Union!20470 (regOne!41453 r!14126))) b!7647251))

(declare-fun b!7647255 () Bool)

(declare-fun e!4545171 () Bool)

(declare-fun tp!2232076 () Bool)

(declare-fun tp!2232080 () Bool)

(assert (=> b!7647255 (= e!4545171 (and tp!2232076 tp!2232080))))

(declare-fun b!7647254 () Bool)

(declare-fun tp!2232079 () Bool)

(assert (=> b!7647254 (= e!4545171 tp!2232079)))

(declare-fun b!7647253 () Bool)

(declare-fun tp!2232078 () Bool)

(declare-fun tp!2232077 () Bool)

(assert (=> b!7647253 (= e!4545171 (and tp!2232078 tp!2232077))))

(declare-fun b!7647252 () Bool)

(assert (=> b!7647252 (= e!4545171 tp_is_empty!51295)))

(assert (=> b!7646909 (= tp!2232022 e!4545171)))

(assert (= (and b!7646909 (is-ElementMatch!20470 (regTwo!41453 r!14126))) b!7647252))

(assert (= (and b!7646909 (is-Concat!29315 (regTwo!41453 r!14126))) b!7647253))

(assert (= (and b!7646909 (is-Star!20470 (regTwo!41453 r!14126))) b!7647254))

(assert (= (and b!7646909 (is-Union!20470 (regTwo!41453 r!14126))) b!7647255))

(declare-fun b!7647260 () Bool)

(declare-fun e!4545174 () Bool)

(declare-fun tp!2232083 () Bool)

(assert (=> b!7647260 (= e!4545174 (and tp_is_empty!51295 tp!2232083))))

(assert (=> b!7646910 (= tp!2232024 e!4545174)))

(assert (= (and b!7646910 (is-Cons!73197 (t!388056 s!9605))) b!7647260))

(push 1)

(assert (not b!7647189))

(assert (not b!7647254))

(assert (not b!7647183))

(assert (not b!7647208))

(assert (not b!7647178))

(assert (not b!7647138))

(assert (not bm!702076))

(assert (not b!7647210))

(assert tp_is_empty!51295)

(assert (not b!7647207))

(assert (not b!7647241))

(assert (not b!7647122))

(assert (not b!7647123))

(assert (not b!7647247))

(assert (not bm!702088))

(assert (not b!7647188))

(assert (not b!7647213))

(assert (not b!7647255))

(assert (not b!7647186))

(assert (not d!2325649))

(assert (not b!7647000))

(assert (not b!7647194))

(assert (not b!7647246))

(assert (not b!7647238))

(assert (not d!2325651))

(assert (not bm!702092))

(assert (not bm!702075))

(assert (not b!7647243))

(assert (not b!7647142))

(assert (not bm!702090))

(assert (not d!2325659))

(assert (not bm!702085))

(assert (not b!7647147))

(assert (not b!7647108))

(assert (not b!7647260))

(assert (not bm!702074))

(assert (not b!7647137))

(assert (not b!7647249))

(assert (not d!2325667))

(assert (not bm!702077))

(assert (not bm!702089))

(assert (not b!7647217))

(assert (not bm!702073))

(assert (not bm!702086))

(assert (not b!7647136))

(assert (not b!7646998))

(assert (not d!2325639))

(assert (not b!7647107))

(assert (not b!7646995))

(assert (not d!2325663))

(assert (not b!7647006))

(assert (not d!2325657))

(assert (not b!7647239))

(assert (not b!7647242))

(assert (not b!7647131))

(assert (not bm!702064))

(assert (not b!7647253))

(assert (not b!7647201))

(assert (not b!7647225))

(assert (not d!2325669))

(assert (not b!7647134))

(assert (not b!7647237))

(assert (not b!7647250))

(assert (not b!7647251))

(assert (not b!7647245))

(assert (not b!7647148))

(assert (not b!7647002))

(assert (not bm!702072))

(assert (not d!2325665))

(assert (not b!7647190))

(assert (not bm!702078))

(assert (not b!7647215))

(assert (not b!7647221))

(assert (not b!7647216))

(assert (not b!7647001))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


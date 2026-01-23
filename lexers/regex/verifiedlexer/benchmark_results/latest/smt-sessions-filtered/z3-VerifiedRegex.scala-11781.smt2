; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664282 () Bool)

(assert start!664282)

(declare-fun b!6890825 () Bool)

(declare-fun e!4151250 () Bool)

(declare-fun tp!1895935 () Bool)

(declare-fun tp!1895932 () Bool)

(assert (=> b!6890825 (= e!4151250 (and tp!1895935 tp!1895932))))

(declare-fun b!6890826 () Bool)

(declare-fun res!2809509 () Bool)

(declare-fun e!4151249 () Bool)

(assert (=> b!6890826 (=> (not res!2809509) (not e!4151249))))

(declare-datatypes ((C!33888 0))(
  ( (C!33889 (val!26646 Int)) )
))
(declare-datatypes ((Regex!16809 0))(
  ( (ElementMatch!16809 (c!1281177 C!33888)) (Concat!25654 (regOne!34130 Regex!16809) (regTwo!34130 Regex!16809)) (EmptyExpr!16809) (Star!16809 (reg!17138 Regex!16809)) (EmptyLang!16809) (Union!16809 (regOne!34131 Regex!16809) (regTwo!34131 Regex!16809)) )
))
(declare-fun r2!6280 () Regex!16809)

(declare-fun validRegex!8517 (Regex!16809) Bool)

(assert (=> b!6890826 (= res!2809509 (validRegex!8517 r2!6280))))

(declare-fun b!6890827 () Bool)

(declare-fun e!4151247 () Bool)

(assert (=> b!6890827 (= e!4151249 (not e!4151247))))

(declare-fun res!2809511 () Bool)

(assert (=> b!6890827 (=> res!2809511 e!4151247)))

(declare-fun lt!2462894 () Bool)

(assert (=> b!6890827 (= res!2809511 lt!2462894)))

(declare-fun lt!2462895 () Regex!16809)

(declare-datatypes ((List!66566 0))(
  ( (Nil!66442) (Cons!66442 (h!72890 C!33888) (t!380309 List!66566)) )
))
(declare-fun s!14361 () List!66566)

(declare-fun matchR!8954 (Regex!16809 List!66566) Bool)

(declare-fun matchRSpec!3872 (Regex!16809 List!66566) Bool)

(assert (=> b!6890827 (= (matchR!8954 lt!2462895 s!14361) (matchRSpec!3872 lt!2462895 s!14361))))

(declare-datatypes ((Unit!160338 0))(
  ( (Unit!160339) )
))
(declare-fun lt!2462897 () Unit!160338)

(declare-fun mainMatchTheorem!3872 (Regex!16809 List!66566) Unit!160338)

(assert (=> b!6890827 (= lt!2462897 (mainMatchTheorem!3872 lt!2462895 s!14361))))

(declare-fun lt!2462898 () Regex!16809)

(assert (=> b!6890827 (= lt!2462894 (matchRSpec!3872 lt!2462898 s!14361))))

(assert (=> b!6890827 (= lt!2462894 (matchR!8954 lt!2462898 s!14361))))

(declare-fun lt!2462899 () Unit!160338)

(assert (=> b!6890827 (= lt!2462899 (mainMatchTheorem!3872 lt!2462898 s!14361))))

(declare-fun r1!6342 () Regex!16809)

(declare-fun lt!2462896 () Regex!16809)

(assert (=> b!6890827 (= lt!2462895 (Concat!25654 r1!6342 lt!2462896))))

(declare-fun r3!135 () Regex!16809)

(assert (=> b!6890827 (= lt!2462896 (Concat!25654 r2!6280 r3!135))))

(assert (=> b!6890827 (= lt!2462898 (Concat!25654 (Concat!25654 r1!6342 r2!6280) r3!135))))

(declare-fun b!6890828 () Bool)

(declare-fun tp!1895943 () Bool)

(declare-fun tp!1895930 () Bool)

(assert (=> b!6890828 (= e!4151250 (and tp!1895943 tp!1895930))))

(declare-fun b!6890829 () Bool)

(declare-fun e!4151248 () Bool)

(declare-fun tp!1895937 () Bool)

(declare-fun tp!1895941 () Bool)

(assert (=> b!6890829 (= e!4151248 (and tp!1895937 tp!1895941))))

(declare-fun res!2809510 () Bool)

(assert (=> start!664282 (=> (not res!2809510) (not e!4151249))))

(assert (=> start!664282 (= res!2809510 (validRegex!8517 r1!6342))))

(assert (=> start!664282 e!4151249))

(assert (=> start!664282 e!4151248))

(assert (=> start!664282 e!4151250))

(declare-fun e!4151252 () Bool)

(assert (=> start!664282 e!4151252))

(declare-fun e!4151251 () Bool)

(assert (=> start!664282 e!4151251))

(declare-fun b!6890830 () Bool)

(declare-fun res!2809512 () Bool)

(assert (=> b!6890830 (=> (not res!2809512) (not e!4151249))))

(assert (=> b!6890830 (= res!2809512 (validRegex!8517 r3!135))))

(declare-fun b!6890831 () Bool)

(declare-fun tp_is_empty!42843 () Bool)

(declare-fun tp!1895938 () Bool)

(assert (=> b!6890831 (= e!4151251 (and tp_is_empty!42843 tp!1895938))))

(declare-fun b!6890832 () Bool)

(declare-fun tp!1895939 () Bool)

(assert (=> b!6890832 (= e!4151252 tp!1895939)))

(declare-fun b!6890833 () Bool)

(declare-fun tp!1895936 () Bool)

(assert (=> b!6890833 (= e!4151250 tp!1895936)))

(declare-fun b!6890834 () Bool)

(assert (=> b!6890834 (= e!4151252 tp_is_empty!42843)))

(declare-fun b!6890835 () Bool)

(assert (=> b!6890835 (= e!4151248 tp_is_empty!42843)))

(declare-fun b!6890836 () Bool)

(declare-fun tp!1895931 () Bool)

(declare-fun tp!1895934 () Bool)

(assert (=> b!6890836 (= e!4151252 (and tp!1895931 tp!1895934))))

(declare-fun b!6890837 () Bool)

(declare-fun tp!1895940 () Bool)

(assert (=> b!6890837 (= e!4151248 tp!1895940)))

(declare-fun b!6890838 () Bool)

(assert (=> b!6890838 (= e!4151250 tp_is_empty!42843)))

(declare-fun b!6890839 () Bool)

(assert (=> b!6890839 (= e!4151247 (validRegex!8517 lt!2462896))))

(declare-fun b!6890840 () Bool)

(declare-fun tp!1895929 () Bool)

(declare-fun tp!1895928 () Bool)

(assert (=> b!6890840 (= e!4151248 (and tp!1895929 tp!1895928))))

(declare-fun b!6890841 () Bool)

(declare-fun tp!1895942 () Bool)

(declare-fun tp!1895933 () Bool)

(assert (=> b!6890841 (= e!4151252 (and tp!1895942 tp!1895933))))

(assert (= (and start!664282 res!2809510) b!6890826))

(assert (= (and b!6890826 res!2809509) b!6890830))

(assert (= (and b!6890830 res!2809512) b!6890827))

(assert (= (and b!6890827 (not res!2809511)) b!6890839))

(get-info :version)

(assert (= (and start!664282 ((_ is ElementMatch!16809) r1!6342)) b!6890835))

(assert (= (and start!664282 ((_ is Concat!25654) r1!6342)) b!6890829))

(assert (= (and start!664282 ((_ is Star!16809) r1!6342)) b!6890837))

(assert (= (and start!664282 ((_ is Union!16809) r1!6342)) b!6890840))

(assert (= (and start!664282 ((_ is ElementMatch!16809) r2!6280)) b!6890838))

(assert (= (and start!664282 ((_ is Concat!25654) r2!6280)) b!6890825))

(assert (= (and start!664282 ((_ is Star!16809) r2!6280)) b!6890833))

(assert (= (and start!664282 ((_ is Union!16809) r2!6280)) b!6890828))

(assert (= (and start!664282 ((_ is ElementMatch!16809) r3!135)) b!6890834))

(assert (= (and start!664282 ((_ is Concat!25654) r3!135)) b!6890836))

(assert (= (and start!664282 ((_ is Star!16809) r3!135)) b!6890832))

(assert (= (and start!664282 ((_ is Union!16809) r3!135)) b!6890841))

(assert (= (and start!664282 ((_ is Cons!66442) s!14361)) b!6890831))

(declare-fun m!7612904 () Bool)

(assert (=> b!6890830 m!7612904))

(declare-fun m!7612906 () Bool)

(assert (=> b!6890839 m!7612906))

(declare-fun m!7612908 () Bool)

(assert (=> start!664282 m!7612908))

(declare-fun m!7612910 () Bool)

(assert (=> b!6890826 m!7612910))

(declare-fun m!7612912 () Bool)

(assert (=> b!6890827 m!7612912))

(declare-fun m!7612914 () Bool)

(assert (=> b!6890827 m!7612914))

(declare-fun m!7612916 () Bool)

(assert (=> b!6890827 m!7612916))

(declare-fun m!7612918 () Bool)

(assert (=> b!6890827 m!7612918))

(declare-fun m!7612920 () Bool)

(assert (=> b!6890827 m!7612920))

(declare-fun m!7612922 () Bool)

(assert (=> b!6890827 m!7612922))

(check-sat (not start!664282) (not b!6890825) (not b!6890826) tp_is_empty!42843 (not b!6890830) (not b!6890831) (not b!6890840) (not b!6890839) (not b!6890827) (not b!6890833) (not b!6890829) (not b!6890841) (not b!6890837) (not b!6890828) (not b!6890836) (not b!6890832))
(check-sat)
(get-model)

(declare-fun b!6890924 () Bool)

(declare-fun e!4151312 () Bool)

(declare-fun head!13821 (List!66566) C!33888)

(assert (=> b!6890924 (= e!4151312 (= (head!13821 s!14361) (c!1281177 lt!2462895)))))

(declare-fun d!2161104 () Bool)

(declare-fun e!4151314 () Bool)

(assert (=> d!2161104 e!4151314))

(declare-fun c!1281198 () Bool)

(assert (=> d!2161104 (= c!1281198 ((_ is EmptyExpr!16809) lt!2462895))))

(declare-fun lt!2462902 () Bool)

(declare-fun e!4151311 () Bool)

(assert (=> d!2161104 (= lt!2462902 e!4151311)))

(declare-fun c!1281196 () Bool)

(declare-fun isEmpty!38696 (List!66566) Bool)

(assert (=> d!2161104 (= c!1281196 (isEmpty!38696 s!14361))))

(assert (=> d!2161104 (validRegex!8517 lt!2462895)))

(assert (=> d!2161104 (= (matchR!8954 lt!2462895 s!14361) lt!2462902)))

(declare-fun b!6890925 () Bool)

(declare-fun derivativeStep!5368 (Regex!16809 C!33888) Regex!16809)

(declare-fun tail!12873 (List!66566) List!66566)

(assert (=> b!6890925 (= e!4151311 (matchR!8954 (derivativeStep!5368 lt!2462895 (head!13821 s!14361)) (tail!12873 s!14361)))))

(declare-fun b!6890926 () Bool)

(declare-fun nullable!6690 (Regex!16809) Bool)

(assert (=> b!6890926 (= e!4151311 (nullable!6690 lt!2462895))))

(declare-fun b!6890927 () Bool)

(declare-fun call!627022 () Bool)

(assert (=> b!6890927 (= e!4151314 (= lt!2462902 call!627022))))

(declare-fun b!6890928 () Bool)

(declare-fun res!2809562 () Bool)

(assert (=> b!6890928 (=> (not res!2809562) (not e!4151312))))

(assert (=> b!6890928 (= res!2809562 (isEmpty!38696 (tail!12873 s!14361)))))

(declare-fun b!6890929 () Bool)

(declare-fun res!2809564 () Bool)

(declare-fun e!4151309 () Bool)

(assert (=> b!6890929 (=> res!2809564 e!4151309)))

(assert (=> b!6890929 (= res!2809564 (not (isEmpty!38696 (tail!12873 s!14361))))))

(declare-fun b!6890930 () Bool)

(declare-fun res!2809560 () Bool)

(assert (=> b!6890930 (=> (not res!2809560) (not e!4151312))))

(assert (=> b!6890930 (= res!2809560 (not call!627022))))

(declare-fun b!6890931 () Bool)

(declare-fun e!4151310 () Bool)

(declare-fun e!4151315 () Bool)

(assert (=> b!6890931 (= e!4151310 e!4151315)))

(declare-fun res!2809559 () Bool)

(assert (=> b!6890931 (=> (not res!2809559) (not e!4151315))))

(assert (=> b!6890931 (= res!2809559 (not lt!2462902))))

(declare-fun b!6890932 () Bool)

(assert (=> b!6890932 (= e!4151309 (not (= (head!13821 s!14361) (c!1281177 lt!2462895))))))

(declare-fun b!6890933 () Bool)

(declare-fun res!2809566 () Bool)

(assert (=> b!6890933 (=> res!2809566 e!4151310)))

(assert (=> b!6890933 (= res!2809566 e!4151312)))

(declare-fun res!2809563 () Bool)

(assert (=> b!6890933 (=> (not res!2809563) (not e!4151312))))

(assert (=> b!6890933 (= res!2809563 lt!2462902)))

(declare-fun b!6890934 () Bool)

(assert (=> b!6890934 (= e!4151315 e!4151309)))

(declare-fun res!2809561 () Bool)

(assert (=> b!6890934 (=> res!2809561 e!4151309)))

(assert (=> b!6890934 (= res!2809561 call!627022)))

(declare-fun b!6890935 () Bool)

(declare-fun e!4151313 () Bool)

(assert (=> b!6890935 (= e!4151313 (not lt!2462902))))

(declare-fun b!6890936 () Bool)

(assert (=> b!6890936 (= e!4151314 e!4151313)))

(declare-fun c!1281197 () Bool)

(assert (=> b!6890936 (= c!1281197 ((_ is EmptyLang!16809) lt!2462895))))

(declare-fun b!6890937 () Bool)

(declare-fun res!2809565 () Bool)

(assert (=> b!6890937 (=> res!2809565 e!4151310)))

(assert (=> b!6890937 (= res!2809565 (not ((_ is ElementMatch!16809) lt!2462895)))))

(assert (=> b!6890937 (= e!4151313 e!4151310)))

(declare-fun bm!627017 () Bool)

(assert (=> bm!627017 (= call!627022 (isEmpty!38696 s!14361))))

(assert (= (and d!2161104 c!1281196) b!6890926))

(assert (= (and d!2161104 (not c!1281196)) b!6890925))

(assert (= (and d!2161104 c!1281198) b!6890927))

(assert (= (and d!2161104 (not c!1281198)) b!6890936))

(assert (= (and b!6890936 c!1281197) b!6890935))

(assert (= (and b!6890936 (not c!1281197)) b!6890937))

(assert (= (and b!6890937 (not res!2809565)) b!6890933))

(assert (= (and b!6890933 res!2809563) b!6890930))

(assert (= (and b!6890930 res!2809560) b!6890928))

(assert (= (and b!6890928 res!2809562) b!6890924))

(assert (= (and b!6890933 (not res!2809566)) b!6890931))

(assert (= (and b!6890931 res!2809559) b!6890934))

(assert (= (and b!6890934 (not res!2809561)) b!6890929))

(assert (= (and b!6890929 (not res!2809564)) b!6890932))

(assert (= (or b!6890927 b!6890930 b!6890934) bm!627017))

(declare-fun m!7612948 () Bool)

(assert (=> b!6890925 m!7612948))

(assert (=> b!6890925 m!7612948))

(declare-fun m!7612950 () Bool)

(assert (=> b!6890925 m!7612950))

(declare-fun m!7612952 () Bool)

(assert (=> b!6890925 m!7612952))

(assert (=> b!6890925 m!7612950))

(assert (=> b!6890925 m!7612952))

(declare-fun m!7612954 () Bool)

(assert (=> b!6890925 m!7612954))

(declare-fun m!7612956 () Bool)

(assert (=> b!6890926 m!7612956))

(declare-fun m!7612958 () Bool)

(assert (=> bm!627017 m!7612958))

(assert (=> b!6890932 m!7612948))

(assert (=> b!6890924 m!7612948))

(assert (=> b!6890928 m!7612952))

(assert (=> b!6890928 m!7612952))

(declare-fun m!7612960 () Bool)

(assert (=> b!6890928 m!7612960))

(assert (=> b!6890929 m!7612952))

(assert (=> b!6890929 m!7612952))

(assert (=> b!6890929 m!7612960))

(assert (=> d!2161104 m!7612958))

(declare-fun m!7612962 () Bool)

(assert (=> d!2161104 m!7612962))

(assert (=> b!6890827 d!2161104))

(declare-fun d!2161116 () Bool)

(assert (=> d!2161116 (= (matchR!8954 lt!2462898 s!14361) (matchRSpec!3872 lt!2462898 s!14361))))

(declare-fun lt!2462905 () Unit!160338)

(declare-fun choose!51316 (Regex!16809 List!66566) Unit!160338)

(assert (=> d!2161116 (= lt!2462905 (choose!51316 lt!2462898 s!14361))))

(assert (=> d!2161116 (validRegex!8517 lt!2462898)))

(assert (=> d!2161116 (= (mainMatchTheorem!3872 lt!2462898 s!14361) lt!2462905)))

(declare-fun bs!1840454 () Bool)

(assert (= bs!1840454 d!2161116))

(assert (=> bs!1840454 m!7612920))

(assert (=> bs!1840454 m!7612912))

(declare-fun m!7612964 () Bool)

(assert (=> bs!1840454 m!7612964))

(declare-fun m!7612966 () Bool)

(assert (=> bs!1840454 m!7612966))

(assert (=> b!6890827 d!2161116))

(declare-fun b!6890960 () Bool)

(declare-fun e!4151333 () Bool)

(assert (=> b!6890960 (= e!4151333 (= (head!13821 s!14361) (c!1281177 lt!2462898)))))

(declare-fun d!2161118 () Bool)

(declare-fun e!4151335 () Bool)

(assert (=> d!2161118 e!4151335))

(declare-fun c!1281209 () Bool)

(assert (=> d!2161118 (= c!1281209 ((_ is EmptyExpr!16809) lt!2462898))))

(declare-fun lt!2462906 () Bool)

(declare-fun e!4151332 () Bool)

(assert (=> d!2161118 (= lt!2462906 e!4151332)))

(declare-fun c!1281207 () Bool)

(assert (=> d!2161118 (= c!1281207 (isEmpty!38696 s!14361))))

(assert (=> d!2161118 (validRegex!8517 lt!2462898)))

(assert (=> d!2161118 (= (matchR!8954 lt!2462898 s!14361) lt!2462906)))

(declare-fun b!6890961 () Bool)

(assert (=> b!6890961 (= e!4151332 (matchR!8954 (derivativeStep!5368 lt!2462898 (head!13821 s!14361)) (tail!12873 s!14361)))))

(declare-fun b!6890962 () Bool)

(assert (=> b!6890962 (= e!4151332 (nullable!6690 lt!2462898))))

(declare-fun b!6890963 () Bool)

(declare-fun call!627023 () Bool)

(assert (=> b!6890963 (= e!4151335 (= lt!2462906 call!627023))))

(declare-fun b!6890964 () Bool)

(declare-fun res!2809576 () Bool)

(assert (=> b!6890964 (=> (not res!2809576) (not e!4151333))))

(assert (=> b!6890964 (= res!2809576 (isEmpty!38696 (tail!12873 s!14361)))))

(declare-fun b!6890965 () Bool)

(declare-fun res!2809578 () Bool)

(declare-fun e!4151330 () Bool)

(assert (=> b!6890965 (=> res!2809578 e!4151330)))

(assert (=> b!6890965 (= res!2809578 (not (isEmpty!38696 (tail!12873 s!14361))))))

(declare-fun b!6890966 () Bool)

(declare-fun res!2809574 () Bool)

(assert (=> b!6890966 (=> (not res!2809574) (not e!4151333))))

(assert (=> b!6890966 (= res!2809574 (not call!627023))))

(declare-fun b!6890967 () Bool)

(declare-fun e!4151331 () Bool)

(declare-fun e!4151336 () Bool)

(assert (=> b!6890967 (= e!4151331 e!4151336)))

(declare-fun res!2809573 () Bool)

(assert (=> b!6890967 (=> (not res!2809573) (not e!4151336))))

(assert (=> b!6890967 (= res!2809573 (not lt!2462906))))

(declare-fun b!6890968 () Bool)

(assert (=> b!6890968 (= e!4151330 (not (= (head!13821 s!14361) (c!1281177 lt!2462898))))))

(declare-fun b!6890969 () Bool)

(declare-fun res!2809580 () Bool)

(assert (=> b!6890969 (=> res!2809580 e!4151331)))

(assert (=> b!6890969 (= res!2809580 e!4151333)))

(declare-fun res!2809577 () Bool)

(assert (=> b!6890969 (=> (not res!2809577) (not e!4151333))))

(assert (=> b!6890969 (= res!2809577 lt!2462906)))

(declare-fun b!6890970 () Bool)

(assert (=> b!6890970 (= e!4151336 e!4151330)))

(declare-fun res!2809575 () Bool)

(assert (=> b!6890970 (=> res!2809575 e!4151330)))

(assert (=> b!6890970 (= res!2809575 call!627023)))

(declare-fun b!6890971 () Bool)

(declare-fun e!4151334 () Bool)

(assert (=> b!6890971 (= e!4151334 (not lt!2462906))))

(declare-fun b!6890972 () Bool)

(assert (=> b!6890972 (= e!4151335 e!4151334)))

(declare-fun c!1281208 () Bool)

(assert (=> b!6890972 (= c!1281208 ((_ is EmptyLang!16809) lt!2462898))))

(declare-fun b!6890973 () Bool)

(declare-fun res!2809579 () Bool)

(assert (=> b!6890973 (=> res!2809579 e!4151331)))

(assert (=> b!6890973 (= res!2809579 (not ((_ is ElementMatch!16809) lt!2462898)))))

(assert (=> b!6890973 (= e!4151334 e!4151331)))

(declare-fun bm!627018 () Bool)

(assert (=> bm!627018 (= call!627023 (isEmpty!38696 s!14361))))

(assert (= (and d!2161118 c!1281207) b!6890962))

(assert (= (and d!2161118 (not c!1281207)) b!6890961))

(assert (= (and d!2161118 c!1281209) b!6890963))

(assert (= (and d!2161118 (not c!1281209)) b!6890972))

(assert (= (and b!6890972 c!1281208) b!6890971))

(assert (= (and b!6890972 (not c!1281208)) b!6890973))

(assert (= (and b!6890973 (not res!2809579)) b!6890969))

(assert (= (and b!6890969 res!2809577) b!6890966))

(assert (= (and b!6890966 res!2809574) b!6890964))

(assert (= (and b!6890964 res!2809576) b!6890960))

(assert (= (and b!6890969 (not res!2809580)) b!6890967))

(assert (= (and b!6890967 res!2809573) b!6890970))

(assert (= (and b!6890970 (not res!2809575)) b!6890965))

(assert (= (and b!6890965 (not res!2809578)) b!6890968))

(assert (= (or b!6890963 b!6890966 b!6890970) bm!627018))

(assert (=> b!6890961 m!7612948))

(assert (=> b!6890961 m!7612948))

(declare-fun m!7612968 () Bool)

(assert (=> b!6890961 m!7612968))

(assert (=> b!6890961 m!7612952))

(assert (=> b!6890961 m!7612968))

(assert (=> b!6890961 m!7612952))

(declare-fun m!7612970 () Bool)

(assert (=> b!6890961 m!7612970))

(declare-fun m!7612972 () Bool)

(assert (=> b!6890962 m!7612972))

(assert (=> bm!627018 m!7612958))

(assert (=> b!6890968 m!7612948))

(assert (=> b!6890960 m!7612948))

(assert (=> b!6890964 m!7612952))

(assert (=> b!6890964 m!7612952))

(assert (=> b!6890964 m!7612960))

(assert (=> b!6890965 m!7612952))

(assert (=> b!6890965 m!7612952))

(assert (=> b!6890965 m!7612960))

(assert (=> d!2161118 m!7612958))

(assert (=> d!2161118 m!7612966))

(assert (=> b!6890827 d!2161118))

(declare-fun b!6891040 () Bool)

(assert (=> b!6891040 true))

(assert (=> b!6891040 true))

(declare-fun bs!1840457 () Bool)

(declare-fun b!6891031 () Bool)

(assert (= bs!1840457 (and b!6891031 b!6891040)))

(declare-fun lambda!390632 () Int)

(declare-fun lambda!390631 () Int)

(assert (=> bs!1840457 (not (= lambda!390632 lambda!390631))))

(assert (=> b!6891031 true))

(assert (=> b!6891031 true))

(declare-fun e!4151367 () Bool)

(declare-fun call!627034 () Bool)

(assert (=> b!6891031 (= e!4151367 call!627034)))

(declare-fun b!6891032 () Bool)

(declare-fun e!4151371 () Bool)

(assert (=> b!6891032 (= e!4151371 (matchRSpec!3872 (regTwo!34131 lt!2462895) s!14361))))

(declare-fun b!6891033 () Bool)

(declare-fun e!4151372 () Bool)

(declare-fun e!4151368 () Bool)

(assert (=> b!6891033 (= e!4151372 e!4151368)))

(declare-fun res!2809612 () Bool)

(assert (=> b!6891033 (= res!2809612 (not ((_ is EmptyLang!16809) lt!2462895)))))

(assert (=> b!6891033 (=> (not res!2809612) (not e!4151368))))

(declare-fun b!6891034 () Bool)

(declare-fun res!2809610 () Bool)

(declare-fun e!4151366 () Bool)

(assert (=> b!6891034 (=> res!2809610 e!4151366)))

(declare-fun call!627035 () Bool)

(assert (=> b!6891034 (= res!2809610 call!627035)))

(assert (=> b!6891034 (= e!4151367 e!4151366)))

(declare-fun b!6891035 () Bool)

(assert (=> b!6891035 (= e!4151372 call!627035)))

(declare-fun b!6891036 () Bool)

(declare-fun c!1281225 () Bool)

(assert (=> b!6891036 (= c!1281225 ((_ is Union!16809) lt!2462895))))

(declare-fun e!4151369 () Bool)

(declare-fun e!4151370 () Bool)

(assert (=> b!6891036 (= e!4151369 e!4151370)))

(declare-fun c!1281222 () Bool)

(declare-fun bm!627029 () Bool)

(declare-fun Exists!3819 (Int) Bool)

(assert (=> bm!627029 (= call!627034 (Exists!3819 (ite c!1281222 lambda!390631 lambda!390632)))))

(declare-fun b!6891037 () Bool)

(assert (=> b!6891037 (= e!4151370 e!4151367)))

(assert (=> b!6891037 (= c!1281222 ((_ is Star!16809) lt!2462895))))

(declare-fun b!6891038 () Bool)

(assert (=> b!6891038 (= e!4151369 (= s!14361 (Cons!66442 (c!1281177 lt!2462895) Nil!66442)))))

(declare-fun d!2161120 () Bool)

(declare-fun c!1281223 () Bool)

(assert (=> d!2161120 (= c!1281223 ((_ is EmptyExpr!16809) lt!2462895))))

(assert (=> d!2161120 (= (matchRSpec!3872 lt!2462895 s!14361) e!4151372)))

(declare-fun b!6891039 () Bool)

(declare-fun c!1281224 () Bool)

(assert (=> b!6891039 (= c!1281224 ((_ is ElementMatch!16809) lt!2462895))))

(assert (=> b!6891039 (= e!4151368 e!4151369)))

(declare-fun bm!627030 () Bool)

(assert (=> bm!627030 (= call!627035 (isEmpty!38696 s!14361))))

(assert (=> b!6891040 (= e!4151366 call!627034)))

(declare-fun b!6891041 () Bool)

(assert (=> b!6891041 (= e!4151370 e!4151371)))

(declare-fun res!2809611 () Bool)

(assert (=> b!6891041 (= res!2809611 (matchRSpec!3872 (regOne!34131 lt!2462895) s!14361))))

(assert (=> b!6891041 (=> res!2809611 e!4151371)))

(assert (= (and d!2161120 c!1281223) b!6891035))

(assert (= (and d!2161120 (not c!1281223)) b!6891033))

(assert (= (and b!6891033 res!2809612) b!6891039))

(assert (= (and b!6891039 c!1281224) b!6891038))

(assert (= (and b!6891039 (not c!1281224)) b!6891036))

(assert (= (and b!6891036 c!1281225) b!6891041))

(assert (= (and b!6891036 (not c!1281225)) b!6891037))

(assert (= (and b!6891041 (not res!2809611)) b!6891032))

(assert (= (and b!6891037 c!1281222) b!6891034))

(assert (= (and b!6891037 (not c!1281222)) b!6891031))

(assert (= (and b!6891034 (not res!2809610)) b!6891040))

(assert (= (or b!6891040 b!6891031) bm!627029))

(assert (= (or b!6891035 b!6891034) bm!627030))

(declare-fun m!7612986 () Bool)

(assert (=> b!6891032 m!7612986))

(declare-fun m!7612988 () Bool)

(assert (=> bm!627029 m!7612988))

(assert (=> bm!627030 m!7612958))

(declare-fun m!7612990 () Bool)

(assert (=> b!6891041 m!7612990))

(assert (=> b!6890827 d!2161120))

(declare-fun bs!1840458 () Bool)

(declare-fun b!6891083 () Bool)

(assert (= bs!1840458 (and b!6891083 b!6891040)))

(declare-fun lambda!390633 () Int)

(assert (=> bs!1840458 (= (and (= (reg!17138 lt!2462898) (reg!17138 lt!2462895)) (= lt!2462898 lt!2462895)) (= lambda!390633 lambda!390631))))

(declare-fun bs!1840459 () Bool)

(assert (= bs!1840459 (and b!6891083 b!6891031)))

(assert (=> bs!1840459 (not (= lambda!390633 lambda!390632))))

(assert (=> b!6891083 true))

(assert (=> b!6891083 true))

(declare-fun bs!1840460 () Bool)

(declare-fun b!6891074 () Bool)

(assert (= bs!1840460 (and b!6891074 b!6891040)))

(declare-fun lambda!390634 () Int)

(assert (=> bs!1840460 (not (= lambda!390634 lambda!390631))))

(declare-fun bs!1840461 () Bool)

(assert (= bs!1840461 (and b!6891074 b!6891031)))

(assert (=> bs!1840461 (= (and (= (regOne!34130 lt!2462898) (regOne!34130 lt!2462895)) (= (regTwo!34130 lt!2462898) (regTwo!34130 lt!2462895))) (= lambda!390634 lambda!390632))))

(declare-fun bs!1840462 () Bool)

(assert (= bs!1840462 (and b!6891074 b!6891083)))

(assert (=> bs!1840462 (not (= lambda!390634 lambda!390633))))

(assert (=> b!6891074 true))

(assert (=> b!6891074 true))

(declare-fun e!4151388 () Bool)

(declare-fun call!627038 () Bool)

(assert (=> b!6891074 (= e!4151388 call!627038)))

(declare-fun b!6891075 () Bool)

(declare-fun e!4151392 () Bool)

(assert (=> b!6891075 (= e!4151392 (matchRSpec!3872 (regTwo!34131 lt!2462898) s!14361))))

(declare-fun b!6891076 () Bool)

(declare-fun e!4151393 () Bool)

(declare-fun e!4151389 () Bool)

(assert (=> b!6891076 (= e!4151393 e!4151389)))

(declare-fun res!2809631 () Bool)

(assert (=> b!6891076 (= res!2809631 (not ((_ is EmptyLang!16809) lt!2462898)))))

(assert (=> b!6891076 (=> (not res!2809631) (not e!4151389))))

(declare-fun b!6891077 () Bool)

(declare-fun res!2809629 () Bool)

(declare-fun e!4151387 () Bool)

(assert (=> b!6891077 (=> res!2809629 e!4151387)))

(declare-fun call!627039 () Bool)

(assert (=> b!6891077 (= res!2809629 call!627039)))

(assert (=> b!6891077 (= e!4151388 e!4151387)))

(declare-fun b!6891078 () Bool)

(assert (=> b!6891078 (= e!4151393 call!627039)))

(declare-fun b!6891079 () Bool)

(declare-fun c!1281235 () Bool)

(assert (=> b!6891079 (= c!1281235 ((_ is Union!16809) lt!2462898))))

(declare-fun e!4151390 () Bool)

(declare-fun e!4151391 () Bool)

(assert (=> b!6891079 (= e!4151390 e!4151391)))

(declare-fun bm!627033 () Bool)

(declare-fun c!1281232 () Bool)

(assert (=> bm!627033 (= call!627038 (Exists!3819 (ite c!1281232 lambda!390633 lambda!390634)))))

(declare-fun b!6891080 () Bool)

(assert (=> b!6891080 (= e!4151391 e!4151388)))

(assert (=> b!6891080 (= c!1281232 ((_ is Star!16809) lt!2462898))))

(declare-fun b!6891081 () Bool)

(assert (=> b!6891081 (= e!4151390 (= s!14361 (Cons!66442 (c!1281177 lt!2462898) Nil!66442)))))

(declare-fun d!2161126 () Bool)

(declare-fun c!1281233 () Bool)

(assert (=> d!2161126 (= c!1281233 ((_ is EmptyExpr!16809) lt!2462898))))

(assert (=> d!2161126 (= (matchRSpec!3872 lt!2462898 s!14361) e!4151393)))

(declare-fun b!6891082 () Bool)

(declare-fun c!1281234 () Bool)

(assert (=> b!6891082 (= c!1281234 ((_ is ElementMatch!16809) lt!2462898))))

(assert (=> b!6891082 (= e!4151389 e!4151390)))

(declare-fun bm!627034 () Bool)

(assert (=> bm!627034 (= call!627039 (isEmpty!38696 s!14361))))

(assert (=> b!6891083 (= e!4151387 call!627038)))

(declare-fun b!6891084 () Bool)

(assert (=> b!6891084 (= e!4151391 e!4151392)))

(declare-fun res!2809630 () Bool)

(assert (=> b!6891084 (= res!2809630 (matchRSpec!3872 (regOne!34131 lt!2462898) s!14361))))

(assert (=> b!6891084 (=> res!2809630 e!4151392)))

(assert (= (and d!2161126 c!1281233) b!6891078))

(assert (= (and d!2161126 (not c!1281233)) b!6891076))

(assert (= (and b!6891076 res!2809631) b!6891082))

(assert (= (and b!6891082 c!1281234) b!6891081))

(assert (= (and b!6891082 (not c!1281234)) b!6891079))

(assert (= (and b!6891079 c!1281235) b!6891084))

(assert (= (and b!6891079 (not c!1281235)) b!6891080))

(assert (= (and b!6891084 (not res!2809630)) b!6891075))

(assert (= (and b!6891080 c!1281232) b!6891077))

(assert (= (and b!6891080 (not c!1281232)) b!6891074))

(assert (= (and b!6891077 (not res!2809629)) b!6891083))

(assert (= (or b!6891083 b!6891074) bm!627033))

(assert (= (or b!6891078 b!6891077) bm!627034))

(declare-fun m!7612992 () Bool)

(assert (=> b!6891075 m!7612992))

(declare-fun m!7612994 () Bool)

(assert (=> bm!627033 m!7612994))

(assert (=> bm!627034 m!7612958))

(declare-fun m!7612996 () Bool)

(assert (=> b!6891084 m!7612996))

(assert (=> b!6890827 d!2161126))

(declare-fun d!2161128 () Bool)

(assert (=> d!2161128 (= (matchR!8954 lt!2462895 s!14361) (matchRSpec!3872 lt!2462895 s!14361))))

(declare-fun lt!2462912 () Unit!160338)

(assert (=> d!2161128 (= lt!2462912 (choose!51316 lt!2462895 s!14361))))

(assert (=> d!2161128 (validRegex!8517 lt!2462895)))

(assert (=> d!2161128 (= (mainMatchTheorem!3872 lt!2462895 s!14361) lt!2462912)))

(declare-fun bs!1840463 () Bool)

(assert (= bs!1840463 d!2161128))

(assert (=> bs!1840463 m!7612916))

(assert (=> bs!1840463 m!7612922))

(declare-fun m!7612998 () Bool)

(assert (=> bs!1840463 m!7612998))

(assert (=> bs!1840463 m!7612962))

(assert (=> b!6890827 d!2161128))

(declare-fun b!6891148 () Bool)

(declare-fun e!4151437 () Bool)

(declare-fun call!627051 () Bool)

(assert (=> b!6891148 (= e!4151437 call!627051)))

(declare-fun b!6891149 () Bool)

(declare-fun e!4151434 () Bool)

(declare-fun e!4151433 () Bool)

(assert (=> b!6891149 (= e!4151434 e!4151433)))

(declare-fun res!2809662 () Bool)

(assert (=> b!6891149 (=> (not res!2809662) (not e!4151433))))

(assert (=> b!6891149 (= res!2809662 call!627051)))

(declare-fun b!6891150 () Bool)

(declare-fun e!4151435 () Bool)

(declare-fun e!4151436 () Bool)

(assert (=> b!6891150 (= e!4151435 e!4151436)))

(declare-fun res!2809661 () Bool)

(assert (=> b!6891150 (= res!2809661 (not (nullable!6690 (reg!17138 r2!6280))))))

(assert (=> b!6891150 (=> (not res!2809661) (not e!4151436))))

(declare-fun b!6891151 () Bool)

(declare-fun call!627050 () Bool)

(assert (=> b!6891151 (= e!4151436 call!627050)))

(declare-fun b!6891152 () Bool)

(declare-fun res!2809664 () Bool)

(assert (=> b!6891152 (=> (not res!2809664) (not e!4151437))))

(declare-fun call!627052 () Bool)

(assert (=> b!6891152 (= res!2809664 call!627052)))

(declare-fun e!4151432 () Bool)

(assert (=> b!6891152 (= e!4151432 e!4151437)))

(declare-fun d!2161130 () Bool)

(declare-fun res!2809665 () Bool)

(declare-fun e!4151431 () Bool)

(assert (=> d!2161130 (=> res!2809665 e!4151431)))

(assert (=> d!2161130 (= res!2809665 ((_ is ElementMatch!16809) r2!6280))))

(assert (=> d!2161130 (= (validRegex!8517 r2!6280) e!4151431)))

(declare-fun bm!627045 () Bool)

(assert (=> bm!627045 (= call!627052 call!627050)))

(declare-fun b!6891153 () Bool)

(declare-fun res!2809663 () Bool)

(assert (=> b!6891153 (=> res!2809663 e!4151434)))

(assert (=> b!6891153 (= res!2809663 (not ((_ is Concat!25654) r2!6280)))))

(assert (=> b!6891153 (= e!4151432 e!4151434)))

(declare-fun b!6891154 () Bool)

(assert (=> b!6891154 (= e!4151435 e!4151432)))

(declare-fun c!1281250 () Bool)

(assert (=> b!6891154 (= c!1281250 ((_ is Union!16809) r2!6280))))

(declare-fun bm!627046 () Bool)

(assert (=> bm!627046 (= call!627051 (validRegex!8517 (ite c!1281250 (regTwo!34131 r2!6280) (regOne!34130 r2!6280))))))

(declare-fun b!6891155 () Bool)

(assert (=> b!6891155 (= e!4151433 call!627052)))

(declare-fun b!6891156 () Bool)

(assert (=> b!6891156 (= e!4151431 e!4151435)))

(declare-fun c!1281251 () Bool)

(assert (=> b!6891156 (= c!1281251 ((_ is Star!16809) r2!6280))))

(declare-fun bm!627047 () Bool)

(assert (=> bm!627047 (= call!627050 (validRegex!8517 (ite c!1281251 (reg!17138 r2!6280) (ite c!1281250 (regOne!34131 r2!6280) (regTwo!34130 r2!6280)))))))

(assert (= (and d!2161130 (not res!2809665)) b!6891156))

(assert (= (and b!6891156 c!1281251) b!6891150))

(assert (= (and b!6891156 (not c!1281251)) b!6891154))

(assert (= (and b!6891150 res!2809661) b!6891151))

(assert (= (and b!6891154 c!1281250) b!6891152))

(assert (= (and b!6891154 (not c!1281250)) b!6891153))

(assert (= (and b!6891152 res!2809664) b!6891148))

(assert (= (and b!6891153 (not res!2809663)) b!6891149))

(assert (= (and b!6891149 res!2809662) b!6891155))

(assert (= (or b!6891152 b!6891155) bm!627045))

(assert (= (or b!6891148 b!6891149) bm!627046))

(assert (= (or b!6891151 bm!627045) bm!627047))

(declare-fun m!7613028 () Bool)

(assert (=> b!6891150 m!7613028))

(declare-fun m!7613030 () Bool)

(assert (=> bm!627046 m!7613030))

(declare-fun m!7613032 () Bool)

(assert (=> bm!627047 m!7613032))

(assert (=> b!6890826 d!2161130))

(declare-fun b!6891165 () Bool)

(declare-fun e!4151445 () Bool)

(declare-fun call!627054 () Bool)

(assert (=> b!6891165 (= e!4151445 call!627054)))

(declare-fun b!6891166 () Bool)

(declare-fun e!4151442 () Bool)

(declare-fun e!4151441 () Bool)

(assert (=> b!6891166 (= e!4151442 e!4151441)))

(declare-fun res!2809667 () Bool)

(assert (=> b!6891166 (=> (not res!2809667) (not e!4151441))))

(assert (=> b!6891166 (= res!2809667 call!627054)))

(declare-fun b!6891167 () Bool)

(declare-fun e!4151443 () Bool)

(declare-fun e!4151444 () Bool)

(assert (=> b!6891167 (= e!4151443 e!4151444)))

(declare-fun res!2809666 () Bool)

(assert (=> b!6891167 (= res!2809666 (not (nullable!6690 (reg!17138 r3!135))))))

(assert (=> b!6891167 (=> (not res!2809666) (not e!4151444))))

(declare-fun b!6891168 () Bool)

(declare-fun call!627053 () Bool)

(assert (=> b!6891168 (= e!4151444 call!627053)))

(declare-fun b!6891169 () Bool)

(declare-fun res!2809669 () Bool)

(assert (=> b!6891169 (=> (not res!2809669) (not e!4151445))))

(declare-fun call!627055 () Bool)

(assert (=> b!6891169 (= res!2809669 call!627055)))

(declare-fun e!4151440 () Bool)

(assert (=> b!6891169 (= e!4151440 e!4151445)))

(declare-fun d!2161138 () Bool)

(declare-fun res!2809670 () Bool)

(declare-fun e!4151439 () Bool)

(assert (=> d!2161138 (=> res!2809670 e!4151439)))

(assert (=> d!2161138 (= res!2809670 ((_ is ElementMatch!16809) r3!135))))

(assert (=> d!2161138 (= (validRegex!8517 r3!135) e!4151439)))

(declare-fun bm!627048 () Bool)

(assert (=> bm!627048 (= call!627055 call!627053)))

(declare-fun b!6891170 () Bool)

(declare-fun res!2809668 () Bool)

(assert (=> b!6891170 (=> res!2809668 e!4151442)))

(assert (=> b!6891170 (= res!2809668 (not ((_ is Concat!25654) r3!135)))))

(assert (=> b!6891170 (= e!4151440 e!4151442)))

(declare-fun b!6891171 () Bool)

(assert (=> b!6891171 (= e!4151443 e!4151440)))

(declare-fun c!1281252 () Bool)

(assert (=> b!6891171 (= c!1281252 ((_ is Union!16809) r3!135))))

(declare-fun bm!627049 () Bool)

(assert (=> bm!627049 (= call!627054 (validRegex!8517 (ite c!1281252 (regTwo!34131 r3!135) (regOne!34130 r3!135))))))

(declare-fun b!6891172 () Bool)

(assert (=> b!6891172 (= e!4151441 call!627055)))

(declare-fun b!6891173 () Bool)

(assert (=> b!6891173 (= e!4151439 e!4151443)))

(declare-fun c!1281253 () Bool)

(assert (=> b!6891173 (= c!1281253 ((_ is Star!16809) r3!135))))

(declare-fun bm!627050 () Bool)

(assert (=> bm!627050 (= call!627053 (validRegex!8517 (ite c!1281253 (reg!17138 r3!135) (ite c!1281252 (regOne!34131 r3!135) (regTwo!34130 r3!135)))))))

(assert (= (and d!2161138 (not res!2809670)) b!6891173))

(assert (= (and b!6891173 c!1281253) b!6891167))

(assert (= (and b!6891173 (not c!1281253)) b!6891171))

(assert (= (and b!6891167 res!2809666) b!6891168))

(assert (= (and b!6891171 c!1281252) b!6891169))

(assert (= (and b!6891171 (not c!1281252)) b!6891170))

(assert (= (and b!6891169 res!2809669) b!6891165))

(assert (= (and b!6891170 (not res!2809668)) b!6891166))

(assert (= (and b!6891166 res!2809667) b!6891172))

(assert (= (or b!6891169 b!6891172) bm!627048))

(assert (= (or b!6891165 b!6891166) bm!627049))

(assert (= (or b!6891168 bm!627048) bm!627050))

(declare-fun m!7613034 () Bool)

(assert (=> b!6891167 m!7613034))

(declare-fun m!7613036 () Bool)

(assert (=> bm!627049 m!7613036))

(declare-fun m!7613038 () Bool)

(assert (=> bm!627050 m!7613038))

(assert (=> b!6890830 d!2161138))

(declare-fun b!6891186 () Bool)

(declare-fun e!4151455 () Bool)

(declare-fun call!627057 () Bool)

(assert (=> b!6891186 (= e!4151455 call!627057)))

(declare-fun b!6891187 () Bool)

(declare-fun e!4151452 () Bool)

(declare-fun e!4151451 () Bool)

(assert (=> b!6891187 (= e!4151452 e!4151451)))

(declare-fun res!2809672 () Bool)

(assert (=> b!6891187 (=> (not res!2809672) (not e!4151451))))

(assert (=> b!6891187 (= res!2809672 call!627057)))

(declare-fun b!6891188 () Bool)

(declare-fun e!4151453 () Bool)

(declare-fun e!4151454 () Bool)

(assert (=> b!6891188 (= e!4151453 e!4151454)))

(declare-fun res!2809671 () Bool)

(assert (=> b!6891188 (= res!2809671 (not (nullable!6690 (reg!17138 r1!6342))))))

(assert (=> b!6891188 (=> (not res!2809671) (not e!4151454))))

(declare-fun b!6891189 () Bool)

(declare-fun call!627056 () Bool)

(assert (=> b!6891189 (= e!4151454 call!627056)))

(declare-fun b!6891190 () Bool)

(declare-fun res!2809674 () Bool)

(assert (=> b!6891190 (=> (not res!2809674) (not e!4151455))))

(declare-fun call!627058 () Bool)

(assert (=> b!6891190 (= res!2809674 call!627058)))

(declare-fun e!4151450 () Bool)

(assert (=> b!6891190 (= e!4151450 e!4151455)))

(declare-fun d!2161140 () Bool)

(declare-fun res!2809675 () Bool)

(declare-fun e!4151449 () Bool)

(assert (=> d!2161140 (=> res!2809675 e!4151449)))

(assert (=> d!2161140 (= res!2809675 ((_ is ElementMatch!16809) r1!6342))))

(assert (=> d!2161140 (= (validRegex!8517 r1!6342) e!4151449)))

(declare-fun bm!627051 () Bool)

(assert (=> bm!627051 (= call!627058 call!627056)))

(declare-fun b!6891191 () Bool)

(declare-fun res!2809673 () Bool)

(assert (=> b!6891191 (=> res!2809673 e!4151452)))

(assert (=> b!6891191 (= res!2809673 (not ((_ is Concat!25654) r1!6342)))))

(assert (=> b!6891191 (= e!4151450 e!4151452)))

(declare-fun b!6891192 () Bool)

(assert (=> b!6891192 (= e!4151453 e!4151450)))

(declare-fun c!1281254 () Bool)

(assert (=> b!6891192 (= c!1281254 ((_ is Union!16809) r1!6342))))

(declare-fun bm!627052 () Bool)

(assert (=> bm!627052 (= call!627057 (validRegex!8517 (ite c!1281254 (regTwo!34131 r1!6342) (regOne!34130 r1!6342))))))

(declare-fun b!6891193 () Bool)

(assert (=> b!6891193 (= e!4151451 call!627058)))

(declare-fun b!6891194 () Bool)

(assert (=> b!6891194 (= e!4151449 e!4151453)))

(declare-fun c!1281255 () Bool)

(assert (=> b!6891194 (= c!1281255 ((_ is Star!16809) r1!6342))))

(declare-fun bm!627053 () Bool)

(assert (=> bm!627053 (= call!627056 (validRegex!8517 (ite c!1281255 (reg!17138 r1!6342) (ite c!1281254 (regOne!34131 r1!6342) (regTwo!34130 r1!6342)))))))

(assert (= (and d!2161140 (not res!2809675)) b!6891194))

(assert (= (and b!6891194 c!1281255) b!6891188))

(assert (= (and b!6891194 (not c!1281255)) b!6891192))

(assert (= (and b!6891188 res!2809671) b!6891189))

(assert (= (and b!6891192 c!1281254) b!6891190))

(assert (= (and b!6891192 (not c!1281254)) b!6891191))

(assert (= (and b!6891190 res!2809674) b!6891186))

(assert (= (and b!6891191 (not res!2809673)) b!6891187))

(assert (= (and b!6891187 res!2809672) b!6891193))

(assert (= (or b!6891190 b!6891193) bm!627051))

(assert (= (or b!6891186 b!6891187) bm!627052))

(assert (= (or b!6891189 bm!627051) bm!627053))

(declare-fun m!7613040 () Bool)

(assert (=> b!6891188 m!7613040))

(declare-fun m!7613042 () Bool)

(assert (=> bm!627052 m!7613042))

(declare-fun m!7613044 () Bool)

(assert (=> bm!627053 m!7613044))

(assert (=> start!664282 d!2161140))

(declare-fun b!6891207 () Bool)

(declare-fun e!4151465 () Bool)

(declare-fun call!627060 () Bool)

(assert (=> b!6891207 (= e!4151465 call!627060)))

(declare-fun b!6891208 () Bool)

(declare-fun e!4151462 () Bool)

(declare-fun e!4151461 () Bool)

(assert (=> b!6891208 (= e!4151462 e!4151461)))

(declare-fun res!2809677 () Bool)

(assert (=> b!6891208 (=> (not res!2809677) (not e!4151461))))

(assert (=> b!6891208 (= res!2809677 call!627060)))

(declare-fun b!6891209 () Bool)

(declare-fun e!4151463 () Bool)

(declare-fun e!4151464 () Bool)

(assert (=> b!6891209 (= e!4151463 e!4151464)))

(declare-fun res!2809676 () Bool)

(assert (=> b!6891209 (= res!2809676 (not (nullable!6690 (reg!17138 lt!2462896))))))

(assert (=> b!6891209 (=> (not res!2809676) (not e!4151464))))

(declare-fun b!6891210 () Bool)

(declare-fun call!627059 () Bool)

(assert (=> b!6891210 (= e!4151464 call!627059)))

(declare-fun b!6891211 () Bool)

(declare-fun res!2809679 () Bool)

(assert (=> b!6891211 (=> (not res!2809679) (not e!4151465))))

(declare-fun call!627061 () Bool)

(assert (=> b!6891211 (= res!2809679 call!627061)))

(declare-fun e!4151460 () Bool)

(assert (=> b!6891211 (= e!4151460 e!4151465)))

(declare-fun d!2161142 () Bool)

(declare-fun res!2809680 () Bool)

(declare-fun e!4151459 () Bool)

(assert (=> d!2161142 (=> res!2809680 e!4151459)))

(assert (=> d!2161142 (= res!2809680 ((_ is ElementMatch!16809) lt!2462896))))

(assert (=> d!2161142 (= (validRegex!8517 lt!2462896) e!4151459)))

(declare-fun bm!627054 () Bool)

(assert (=> bm!627054 (= call!627061 call!627059)))

(declare-fun b!6891212 () Bool)

(declare-fun res!2809678 () Bool)

(assert (=> b!6891212 (=> res!2809678 e!4151462)))

(assert (=> b!6891212 (= res!2809678 (not ((_ is Concat!25654) lt!2462896)))))

(assert (=> b!6891212 (= e!4151460 e!4151462)))

(declare-fun b!6891213 () Bool)

(assert (=> b!6891213 (= e!4151463 e!4151460)))

(declare-fun c!1281256 () Bool)

(assert (=> b!6891213 (= c!1281256 ((_ is Union!16809) lt!2462896))))

(declare-fun bm!627055 () Bool)

(assert (=> bm!627055 (= call!627060 (validRegex!8517 (ite c!1281256 (regTwo!34131 lt!2462896) (regOne!34130 lt!2462896))))))

(declare-fun b!6891214 () Bool)

(assert (=> b!6891214 (= e!4151461 call!627061)))

(declare-fun b!6891215 () Bool)

(assert (=> b!6891215 (= e!4151459 e!4151463)))

(declare-fun c!1281257 () Bool)

(assert (=> b!6891215 (= c!1281257 ((_ is Star!16809) lt!2462896))))

(declare-fun bm!627056 () Bool)

(assert (=> bm!627056 (= call!627059 (validRegex!8517 (ite c!1281257 (reg!17138 lt!2462896) (ite c!1281256 (regOne!34131 lt!2462896) (regTwo!34130 lt!2462896)))))))

(assert (= (and d!2161142 (not res!2809680)) b!6891215))

(assert (= (and b!6891215 c!1281257) b!6891209))

(assert (= (and b!6891215 (not c!1281257)) b!6891213))

(assert (= (and b!6891209 res!2809676) b!6891210))

(assert (= (and b!6891213 c!1281256) b!6891211))

(assert (= (and b!6891213 (not c!1281256)) b!6891212))

(assert (= (and b!6891211 res!2809679) b!6891207))

(assert (= (and b!6891212 (not res!2809678)) b!6891208))

(assert (= (and b!6891208 res!2809677) b!6891214))

(assert (= (or b!6891211 b!6891214) bm!627054))

(assert (= (or b!6891207 b!6891208) bm!627055))

(assert (= (or b!6891210 bm!627054) bm!627056))

(declare-fun m!7613046 () Bool)

(assert (=> b!6891209 m!7613046))

(declare-fun m!7613048 () Bool)

(assert (=> bm!627055 m!7613048))

(declare-fun m!7613050 () Bool)

(assert (=> bm!627056 m!7613050))

(assert (=> b!6890839 d!2161142))

(declare-fun b!6891262 () Bool)

(declare-fun e!4151479 () Bool)

(declare-fun tp!1896044 () Bool)

(assert (=> b!6891262 (= e!4151479 tp!1896044)))

(declare-fun b!6891264 () Bool)

(declare-fun tp!1896038 () Bool)

(declare-fun tp!1896037 () Bool)

(assert (=> b!6891264 (= e!4151479 (and tp!1896038 tp!1896037))))

(declare-fun b!6891260 () Bool)

(declare-fun tp!1896040 () Bool)

(declare-fun tp!1896039 () Bool)

(assert (=> b!6891260 (= e!4151479 (and tp!1896040 tp!1896039))))

(assert (=> b!6890833 (= tp!1895936 e!4151479)))

(declare-fun b!6891259 () Bool)

(assert (=> b!6891259 (= e!4151479 tp_is_empty!42843)))

(assert (= (and b!6890833 ((_ is ElementMatch!16809) (reg!17138 r2!6280))) b!6891259))

(assert (= (and b!6890833 ((_ is Concat!25654) (reg!17138 r2!6280))) b!6891260))

(assert (= (and b!6890833 ((_ is Star!16809) (reg!17138 r2!6280))) b!6891262))

(assert (= (and b!6890833 ((_ is Union!16809) (reg!17138 r2!6280))) b!6891264))

(declare-fun b!6891269 () Bool)

(declare-fun e!4151480 () Bool)

(declare-fun tp!1896051 () Bool)

(assert (=> b!6891269 (= e!4151480 tp!1896051)))

(declare-fun b!6891270 () Bool)

(declare-fun tp!1896048 () Bool)

(declare-fun tp!1896047 () Bool)

(assert (=> b!6891270 (= e!4151480 (and tp!1896048 tp!1896047))))

(declare-fun b!6891268 () Bool)

(declare-fun tp!1896050 () Bool)

(declare-fun tp!1896049 () Bool)

(assert (=> b!6891268 (= e!4151480 (and tp!1896050 tp!1896049))))

(assert (=> b!6890828 (= tp!1895943 e!4151480)))

(declare-fun b!6891267 () Bool)

(assert (=> b!6891267 (= e!4151480 tp_is_empty!42843)))

(assert (= (and b!6890828 ((_ is ElementMatch!16809) (regOne!34131 r2!6280))) b!6891267))

(assert (= (and b!6890828 ((_ is Concat!25654) (regOne!34131 r2!6280))) b!6891268))

(assert (= (and b!6890828 ((_ is Star!16809) (regOne!34131 r2!6280))) b!6891269))

(assert (= (and b!6890828 ((_ is Union!16809) (regOne!34131 r2!6280))) b!6891270))

(declare-fun b!6891273 () Bool)

(declare-fun e!4151481 () Bool)

(declare-fun tp!1896056 () Bool)

(assert (=> b!6891273 (= e!4151481 tp!1896056)))

(declare-fun b!6891274 () Bool)

(declare-fun tp!1896053 () Bool)

(declare-fun tp!1896052 () Bool)

(assert (=> b!6891274 (= e!4151481 (and tp!1896053 tp!1896052))))

(declare-fun b!6891272 () Bool)

(declare-fun tp!1896055 () Bool)

(declare-fun tp!1896054 () Bool)

(assert (=> b!6891272 (= e!4151481 (and tp!1896055 tp!1896054))))

(assert (=> b!6890828 (= tp!1895930 e!4151481)))

(declare-fun b!6891271 () Bool)

(assert (=> b!6891271 (= e!4151481 tp_is_empty!42843)))

(assert (= (and b!6890828 ((_ is ElementMatch!16809) (regTwo!34131 r2!6280))) b!6891271))

(assert (= (and b!6890828 ((_ is Concat!25654) (regTwo!34131 r2!6280))) b!6891272))

(assert (= (and b!6890828 ((_ is Star!16809) (regTwo!34131 r2!6280))) b!6891273))

(assert (= (and b!6890828 ((_ is Union!16809) (regTwo!34131 r2!6280))) b!6891274))

(declare-fun b!6891279 () Bool)

(declare-fun e!4151484 () Bool)

(declare-fun tp!1896059 () Bool)

(assert (=> b!6891279 (= e!4151484 (and tp_is_empty!42843 tp!1896059))))

(assert (=> b!6890831 (= tp!1895938 e!4151484)))

(assert (= (and b!6890831 ((_ is Cons!66442) (t!380309 s!14361))) b!6891279))

(declare-fun b!6891282 () Bool)

(declare-fun e!4151485 () Bool)

(declare-fun tp!1896064 () Bool)

(assert (=> b!6891282 (= e!4151485 tp!1896064)))

(declare-fun b!6891283 () Bool)

(declare-fun tp!1896061 () Bool)

(declare-fun tp!1896060 () Bool)

(assert (=> b!6891283 (= e!4151485 (and tp!1896061 tp!1896060))))

(declare-fun b!6891281 () Bool)

(declare-fun tp!1896063 () Bool)

(declare-fun tp!1896062 () Bool)

(assert (=> b!6891281 (= e!4151485 (and tp!1896063 tp!1896062))))

(assert (=> b!6890837 (= tp!1895940 e!4151485)))

(declare-fun b!6891280 () Bool)

(assert (=> b!6891280 (= e!4151485 tp_is_empty!42843)))

(assert (= (and b!6890837 ((_ is ElementMatch!16809) (reg!17138 r1!6342))) b!6891280))

(assert (= (and b!6890837 ((_ is Concat!25654) (reg!17138 r1!6342))) b!6891281))

(assert (= (and b!6890837 ((_ is Star!16809) (reg!17138 r1!6342))) b!6891282))

(assert (= (and b!6890837 ((_ is Union!16809) (reg!17138 r1!6342))) b!6891283))

(declare-fun b!6891286 () Bool)

(declare-fun e!4151486 () Bool)

(declare-fun tp!1896069 () Bool)

(assert (=> b!6891286 (= e!4151486 tp!1896069)))

(declare-fun b!6891287 () Bool)

(declare-fun tp!1896066 () Bool)

(declare-fun tp!1896065 () Bool)

(assert (=> b!6891287 (= e!4151486 (and tp!1896066 tp!1896065))))

(declare-fun b!6891285 () Bool)

(declare-fun tp!1896068 () Bool)

(declare-fun tp!1896067 () Bool)

(assert (=> b!6891285 (= e!4151486 (and tp!1896068 tp!1896067))))

(assert (=> b!6890832 (= tp!1895939 e!4151486)))

(declare-fun b!6891284 () Bool)

(assert (=> b!6891284 (= e!4151486 tp_is_empty!42843)))

(assert (= (and b!6890832 ((_ is ElementMatch!16809) (reg!17138 r3!135))) b!6891284))

(assert (= (and b!6890832 ((_ is Concat!25654) (reg!17138 r3!135))) b!6891285))

(assert (= (and b!6890832 ((_ is Star!16809) (reg!17138 r3!135))) b!6891286))

(assert (= (and b!6890832 ((_ is Union!16809) (reg!17138 r3!135))) b!6891287))

(declare-fun b!6891290 () Bool)

(declare-fun e!4151487 () Bool)

(declare-fun tp!1896074 () Bool)

(assert (=> b!6891290 (= e!4151487 tp!1896074)))

(declare-fun b!6891291 () Bool)

(declare-fun tp!1896071 () Bool)

(declare-fun tp!1896070 () Bool)

(assert (=> b!6891291 (= e!4151487 (and tp!1896071 tp!1896070))))

(declare-fun b!6891289 () Bool)

(declare-fun tp!1896073 () Bool)

(declare-fun tp!1896072 () Bool)

(assert (=> b!6891289 (= e!4151487 (and tp!1896073 tp!1896072))))

(assert (=> b!6890825 (= tp!1895935 e!4151487)))

(declare-fun b!6891288 () Bool)

(assert (=> b!6891288 (= e!4151487 tp_is_empty!42843)))

(assert (= (and b!6890825 ((_ is ElementMatch!16809) (regOne!34130 r2!6280))) b!6891288))

(assert (= (and b!6890825 ((_ is Concat!25654) (regOne!34130 r2!6280))) b!6891289))

(assert (= (and b!6890825 ((_ is Star!16809) (regOne!34130 r2!6280))) b!6891290))

(assert (= (and b!6890825 ((_ is Union!16809) (regOne!34130 r2!6280))) b!6891291))

(declare-fun b!6891294 () Bool)

(declare-fun e!4151488 () Bool)

(declare-fun tp!1896079 () Bool)

(assert (=> b!6891294 (= e!4151488 tp!1896079)))

(declare-fun b!6891295 () Bool)

(declare-fun tp!1896076 () Bool)

(declare-fun tp!1896075 () Bool)

(assert (=> b!6891295 (= e!4151488 (and tp!1896076 tp!1896075))))

(declare-fun b!6891293 () Bool)

(declare-fun tp!1896078 () Bool)

(declare-fun tp!1896077 () Bool)

(assert (=> b!6891293 (= e!4151488 (and tp!1896078 tp!1896077))))

(assert (=> b!6890825 (= tp!1895932 e!4151488)))

(declare-fun b!6891292 () Bool)

(assert (=> b!6891292 (= e!4151488 tp_is_empty!42843)))

(assert (= (and b!6890825 ((_ is ElementMatch!16809) (regTwo!34130 r2!6280))) b!6891292))

(assert (= (and b!6890825 ((_ is Concat!25654) (regTwo!34130 r2!6280))) b!6891293))

(assert (= (and b!6890825 ((_ is Star!16809) (regTwo!34130 r2!6280))) b!6891294))

(assert (= (and b!6890825 ((_ is Union!16809) (regTwo!34130 r2!6280))) b!6891295))

(declare-fun b!6891298 () Bool)

(declare-fun e!4151489 () Bool)

(declare-fun tp!1896084 () Bool)

(assert (=> b!6891298 (= e!4151489 tp!1896084)))

(declare-fun b!6891299 () Bool)

(declare-fun tp!1896081 () Bool)

(declare-fun tp!1896080 () Bool)

(assert (=> b!6891299 (= e!4151489 (and tp!1896081 tp!1896080))))

(declare-fun b!6891297 () Bool)

(declare-fun tp!1896083 () Bool)

(declare-fun tp!1896082 () Bool)

(assert (=> b!6891297 (= e!4151489 (and tp!1896083 tp!1896082))))

(assert (=> b!6890841 (= tp!1895942 e!4151489)))

(declare-fun b!6891296 () Bool)

(assert (=> b!6891296 (= e!4151489 tp_is_empty!42843)))

(assert (= (and b!6890841 ((_ is ElementMatch!16809) (regOne!34131 r3!135))) b!6891296))

(assert (= (and b!6890841 ((_ is Concat!25654) (regOne!34131 r3!135))) b!6891297))

(assert (= (and b!6890841 ((_ is Star!16809) (regOne!34131 r3!135))) b!6891298))

(assert (= (and b!6890841 ((_ is Union!16809) (regOne!34131 r3!135))) b!6891299))

(declare-fun b!6891302 () Bool)

(declare-fun e!4151490 () Bool)

(declare-fun tp!1896089 () Bool)

(assert (=> b!6891302 (= e!4151490 tp!1896089)))

(declare-fun b!6891303 () Bool)

(declare-fun tp!1896086 () Bool)

(declare-fun tp!1896085 () Bool)

(assert (=> b!6891303 (= e!4151490 (and tp!1896086 tp!1896085))))

(declare-fun b!6891301 () Bool)

(declare-fun tp!1896088 () Bool)

(declare-fun tp!1896087 () Bool)

(assert (=> b!6891301 (= e!4151490 (and tp!1896088 tp!1896087))))

(assert (=> b!6890841 (= tp!1895933 e!4151490)))

(declare-fun b!6891300 () Bool)

(assert (=> b!6891300 (= e!4151490 tp_is_empty!42843)))

(assert (= (and b!6890841 ((_ is ElementMatch!16809) (regTwo!34131 r3!135))) b!6891300))

(assert (= (and b!6890841 ((_ is Concat!25654) (regTwo!34131 r3!135))) b!6891301))

(assert (= (and b!6890841 ((_ is Star!16809) (regTwo!34131 r3!135))) b!6891302))

(assert (= (and b!6890841 ((_ is Union!16809) (regTwo!34131 r3!135))) b!6891303))

(declare-fun b!6891306 () Bool)

(declare-fun e!4151491 () Bool)

(declare-fun tp!1896094 () Bool)

(assert (=> b!6891306 (= e!4151491 tp!1896094)))

(declare-fun b!6891307 () Bool)

(declare-fun tp!1896091 () Bool)

(declare-fun tp!1896090 () Bool)

(assert (=> b!6891307 (= e!4151491 (and tp!1896091 tp!1896090))))

(declare-fun b!6891305 () Bool)

(declare-fun tp!1896093 () Bool)

(declare-fun tp!1896092 () Bool)

(assert (=> b!6891305 (= e!4151491 (and tp!1896093 tp!1896092))))

(assert (=> b!6890836 (= tp!1895931 e!4151491)))

(declare-fun b!6891304 () Bool)

(assert (=> b!6891304 (= e!4151491 tp_is_empty!42843)))

(assert (= (and b!6890836 ((_ is ElementMatch!16809) (regOne!34130 r3!135))) b!6891304))

(assert (= (and b!6890836 ((_ is Concat!25654) (regOne!34130 r3!135))) b!6891305))

(assert (= (and b!6890836 ((_ is Star!16809) (regOne!34130 r3!135))) b!6891306))

(assert (= (and b!6890836 ((_ is Union!16809) (regOne!34130 r3!135))) b!6891307))

(declare-fun b!6891310 () Bool)

(declare-fun e!4151492 () Bool)

(declare-fun tp!1896099 () Bool)

(assert (=> b!6891310 (= e!4151492 tp!1896099)))

(declare-fun b!6891311 () Bool)

(declare-fun tp!1896096 () Bool)

(declare-fun tp!1896095 () Bool)

(assert (=> b!6891311 (= e!4151492 (and tp!1896096 tp!1896095))))

(declare-fun b!6891309 () Bool)

(declare-fun tp!1896098 () Bool)

(declare-fun tp!1896097 () Bool)

(assert (=> b!6891309 (= e!4151492 (and tp!1896098 tp!1896097))))

(assert (=> b!6890836 (= tp!1895934 e!4151492)))

(declare-fun b!6891308 () Bool)

(assert (=> b!6891308 (= e!4151492 tp_is_empty!42843)))

(assert (= (and b!6890836 ((_ is ElementMatch!16809) (regTwo!34130 r3!135))) b!6891308))

(assert (= (and b!6890836 ((_ is Concat!25654) (regTwo!34130 r3!135))) b!6891309))

(assert (= (and b!6890836 ((_ is Star!16809) (regTwo!34130 r3!135))) b!6891310))

(assert (= (and b!6890836 ((_ is Union!16809) (regTwo!34130 r3!135))) b!6891311))

(declare-fun b!6891314 () Bool)

(declare-fun e!4151493 () Bool)

(declare-fun tp!1896104 () Bool)

(assert (=> b!6891314 (= e!4151493 tp!1896104)))

(declare-fun b!6891315 () Bool)

(declare-fun tp!1896101 () Bool)

(declare-fun tp!1896100 () Bool)

(assert (=> b!6891315 (= e!4151493 (and tp!1896101 tp!1896100))))

(declare-fun b!6891313 () Bool)

(declare-fun tp!1896103 () Bool)

(declare-fun tp!1896102 () Bool)

(assert (=> b!6891313 (= e!4151493 (and tp!1896103 tp!1896102))))

(assert (=> b!6890829 (= tp!1895937 e!4151493)))

(declare-fun b!6891312 () Bool)

(assert (=> b!6891312 (= e!4151493 tp_is_empty!42843)))

(assert (= (and b!6890829 ((_ is ElementMatch!16809) (regOne!34130 r1!6342))) b!6891312))

(assert (= (and b!6890829 ((_ is Concat!25654) (regOne!34130 r1!6342))) b!6891313))

(assert (= (and b!6890829 ((_ is Star!16809) (regOne!34130 r1!6342))) b!6891314))

(assert (= (and b!6890829 ((_ is Union!16809) (regOne!34130 r1!6342))) b!6891315))

(declare-fun b!6891318 () Bool)

(declare-fun e!4151494 () Bool)

(declare-fun tp!1896109 () Bool)

(assert (=> b!6891318 (= e!4151494 tp!1896109)))

(declare-fun b!6891319 () Bool)

(declare-fun tp!1896106 () Bool)

(declare-fun tp!1896105 () Bool)

(assert (=> b!6891319 (= e!4151494 (and tp!1896106 tp!1896105))))

(declare-fun b!6891317 () Bool)

(declare-fun tp!1896108 () Bool)

(declare-fun tp!1896107 () Bool)

(assert (=> b!6891317 (= e!4151494 (and tp!1896108 tp!1896107))))

(assert (=> b!6890829 (= tp!1895941 e!4151494)))

(declare-fun b!6891316 () Bool)

(assert (=> b!6891316 (= e!4151494 tp_is_empty!42843)))

(assert (= (and b!6890829 ((_ is ElementMatch!16809) (regTwo!34130 r1!6342))) b!6891316))

(assert (= (and b!6890829 ((_ is Concat!25654) (regTwo!34130 r1!6342))) b!6891317))

(assert (= (and b!6890829 ((_ is Star!16809) (regTwo!34130 r1!6342))) b!6891318))

(assert (= (and b!6890829 ((_ is Union!16809) (regTwo!34130 r1!6342))) b!6891319))

(declare-fun b!6891322 () Bool)

(declare-fun e!4151495 () Bool)

(declare-fun tp!1896114 () Bool)

(assert (=> b!6891322 (= e!4151495 tp!1896114)))

(declare-fun b!6891323 () Bool)

(declare-fun tp!1896111 () Bool)

(declare-fun tp!1896110 () Bool)

(assert (=> b!6891323 (= e!4151495 (and tp!1896111 tp!1896110))))

(declare-fun b!6891321 () Bool)

(declare-fun tp!1896113 () Bool)

(declare-fun tp!1896112 () Bool)

(assert (=> b!6891321 (= e!4151495 (and tp!1896113 tp!1896112))))

(assert (=> b!6890840 (= tp!1895929 e!4151495)))

(declare-fun b!6891320 () Bool)

(assert (=> b!6891320 (= e!4151495 tp_is_empty!42843)))

(assert (= (and b!6890840 ((_ is ElementMatch!16809) (regOne!34131 r1!6342))) b!6891320))

(assert (= (and b!6890840 ((_ is Concat!25654) (regOne!34131 r1!6342))) b!6891321))

(assert (= (and b!6890840 ((_ is Star!16809) (regOne!34131 r1!6342))) b!6891322))

(assert (= (and b!6890840 ((_ is Union!16809) (regOne!34131 r1!6342))) b!6891323))

(declare-fun b!6891326 () Bool)

(declare-fun e!4151496 () Bool)

(declare-fun tp!1896119 () Bool)

(assert (=> b!6891326 (= e!4151496 tp!1896119)))

(declare-fun b!6891327 () Bool)

(declare-fun tp!1896116 () Bool)

(declare-fun tp!1896115 () Bool)

(assert (=> b!6891327 (= e!4151496 (and tp!1896116 tp!1896115))))

(declare-fun b!6891325 () Bool)

(declare-fun tp!1896118 () Bool)

(declare-fun tp!1896117 () Bool)

(assert (=> b!6891325 (= e!4151496 (and tp!1896118 tp!1896117))))

(assert (=> b!6890840 (= tp!1895928 e!4151496)))

(declare-fun b!6891324 () Bool)

(assert (=> b!6891324 (= e!4151496 tp_is_empty!42843)))

(assert (= (and b!6890840 ((_ is ElementMatch!16809) (regTwo!34131 r1!6342))) b!6891324))

(assert (= (and b!6890840 ((_ is Concat!25654) (regTwo!34131 r1!6342))) b!6891325))

(assert (= (and b!6890840 ((_ is Star!16809) (regTwo!34131 r1!6342))) b!6891326))

(assert (= (and b!6890840 ((_ is Union!16809) (regTwo!34131 r1!6342))) b!6891327))

(check-sat (not b!6891313) (not b!6891297) (not b!6890928) (not d!2161118) (not bm!627029) (not b!6891311) (not d!2161128) (not bm!627047) (not bm!627052) (not d!2161116) (not b!6891327) (not b!6891209) (not bm!627034) (not b!6891310) (not b!6891032) (not b!6891306) (not b!6890960) (not b!6890968) (not bm!627018) (not b!6891295) (not b!6891314) (not b!6891301) (not b!6890965) (not b!6891269) (not b!6891322) (not b!6891150) (not b!6891041) (not b!6891319) (not bm!627030) (not b!6891309) (not b!6891285) (not b!6890961) (not b!6891262) (not b!6891293) (not b!6891315) (not bm!627046) (not b!6891274) (not b!6891188) (not b!6891260) (not b!6891318) (not bm!627050) (not b!6890926) (not b!6891283) (not b!6890924) tp_is_empty!42843 (not bm!627049) (not b!6891075) (not b!6891289) (not b!6891323) (not b!6891294) (not b!6891307) (not b!6891282) (not bm!627053) (not b!6891268) (not b!6891291) (not b!6891270) (not b!6890932) (not b!6891084) (not bm!627033) (not b!6890925) (not bm!627017) (not b!6891302) (not d!2161104) (not b!6891281) (not b!6891287) (not b!6891303) (not b!6891264) (not b!6891272) (not b!6890964) (not b!6891326) (not bm!627055) (not b!6891298) (not b!6891321) (not b!6891167) (not b!6890929) (not b!6891279) (not b!6891290) (not b!6891305) (not b!6891325) (not b!6890962) (not b!6891299) (not bm!627056) (not b!6891273) (not b!6891286) (not b!6891317))
(check-sat)

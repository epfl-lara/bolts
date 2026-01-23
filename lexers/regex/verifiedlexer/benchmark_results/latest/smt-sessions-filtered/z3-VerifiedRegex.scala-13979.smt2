; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739932 () Bool)

(assert start!739932)

(declare-fun b!7768902 () Bool)

(declare-fun res!3097070 () Bool)

(declare-fun e!4603333 () Bool)

(assert (=> b!7768902 (=> (not res!3097070) (not e!4603333))))

(declare-datatypes ((C!41832 0))(
  ( (C!41833 (val!31356 Int)) )
))
(declare-datatypes ((Regex!20753 0))(
  ( (ElementMatch!20753 (c!1431846 C!41832)) (Concat!29598 (regOne!42018 Regex!20753) (regTwo!42018 Regex!20753)) (EmptyExpr!20753) (Star!20753 (reg!21082 Regex!20753)) (EmptyLang!20753) (Union!20753 (regOne!42019 Regex!20753) (regTwo!42019 Regex!20753)) )
))
(declare-fun lt!2671262 () Regex!20753)

(declare-fun validRegex!11167 (Regex!20753) Bool)

(assert (=> b!7768902 (= res!3097070 (validRegex!11167 lt!2671262))))

(declare-fun b!7768903 () Bool)

(declare-fun res!3097073 () Bool)

(declare-fun e!4603332 () Bool)

(assert (=> b!7768903 (=> (not res!3097073) (not e!4603332))))

(declare-datatypes ((List!73594 0))(
  ( (Nil!73470) (Cons!73470 (h!79918 C!41832) (t!388329 List!73594)) )
))
(declare-fun s!14904 () List!73594)

(get-info :version)

(assert (=> b!7768903 (= res!3097073 ((_ is Cons!73470) s!14904))))

(declare-fun b!7768904 () Bool)

(declare-fun res!3097071 () Bool)

(assert (=> b!7768904 (=> (not res!3097071) (not e!4603332))))

(declare-fun lt!2671263 () Regex!20753)

(declare-fun matchR!10215 (Regex!20753 List!73594) Bool)

(assert (=> b!7768904 (= res!3097071 (matchR!10215 lt!2671263 s!14904))))

(declare-fun b!7768905 () Bool)

(declare-fun e!4603330 () Bool)

(declare-fun tp!2282285 () Bool)

(assert (=> b!7768905 (= e!4603330 tp!2282285)))

(declare-fun b!7768906 () Bool)

(assert (=> b!7768906 (= e!4603332 e!4603333)))

(declare-fun res!3097074 () Bool)

(assert (=> b!7768906 (=> (not res!3097074) (not e!4603333))))

(declare-fun lt!2671264 () Regex!20753)

(declare-fun derivativeStep!6098 (Regex!20753 C!41832) Regex!20753)

(assert (=> b!7768906 (= res!3097074 (= (derivativeStep!6098 lt!2671263 (h!79918 s!14904)) lt!2671264))))

(assert (=> b!7768906 (= lt!2671264 (Concat!29598 lt!2671262 lt!2671263))))

(declare-fun r!25924 () Regex!20753)

(assert (=> b!7768906 (= lt!2671262 (derivativeStep!6098 r!25924 (h!79918 s!14904)))))

(declare-fun b!7768907 () Bool)

(declare-fun e!4603331 () Bool)

(declare-fun tp_is_empty!51861 () Bool)

(declare-fun tp!2282284 () Bool)

(assert (=> b!7768907 (= e!4603331 (and tp_is_empty!51861 tp!2282284))))

(declare-fun b!7768908 () Bool)

(declare-fun tp!2282282 () Bool)

(declare-fun tp!2282283 () Bool)

(assert (=> b!7768908 (= e!4603330 (and tp!2282282 tp!2282283))))

(declare-fun b!7768909 () Bool)

(assert (=> b!7768909 (= e!4603333 (not (matchR!10215 lt!2671264 (t!388329 s!14904))))))

(declare-fun res!3097072 () Bool)

(assert (=> start!739932 (=> (not res!3097072) (not e!4603332))))

(assert (=> start!739932 (= res!3097072 (validRegex!11167 lt!2671263))))

(assert (=> start!739932 (= lt!2671263 (Star!20753 r!25924))))

(assert (=> start!739932 e!4603332))

(assert (=> start!739932 e!4603330))

(assert (=> start!739932 e!4603331))

(declare-fun b!7768910 () Bool)

(declare-fun tp!2282280 () Bool)

(declare-fun tp!2282281 () Bool)

(assert (=> b!7768910 (= e!4603330 (and tp!2282280 tp!2282281))))

(declare-fun b!7768911 () Bool)

(assert (=> b!7768911 (= e!4603330 tp_is_empty!51861)))

(assert (= (and start!739932 res!3097072) b!7768904))

(assert (= (and b!7768904 res!3097071) b!7768903))

(assert (= (and b!7768903 res!3097073) b!7768906))

(assert (= (and b!7768906 res!3097074) b!7768902))

(assert (= (and b!7768902 res!3097070) b!7768909))

(assert (= (and start!739932 ((_ is ElementMatch!20753) r!25924)) b!7768911))

(assert (= (and start!739932 ((_ is Concat!29598) r!25924)) b!7768910))

(assert (= (and start!739932 ((_ is Star!20753) r!25924)) b!7768905))

(assert (= (and start!739932 ((_ is Union!20753) r!25924)) b!7768908))

(assert (= (and start!739932 ((_ is Cons!73470) s!14904)) b!7768907))

(declare-fun m!8223830 () Bool)

(assert (=> start!739932 m!8223830))

(declare-fun m!8223832 () Bool)

(assert (=> b!7768909 m!8223832))

(declare-fun m!8223834 () Bool)

(assert (=> b!7768902 m!8223834))

(declare-fun m!8223836 () Bool)

(assert (=> b!7768904 m!8223836))

(declare-fun m!8223838 () Bool)

(assert (=> b!7768906 m!8223838))

(declare-fun m!8223840 () Bool)

(assert (=> b!7768906 m!8223840))

(check-sat (not b!7768907) (not b!7768905) (not b!7768906) (not b!7768908) (not b!7768904) (not start!739932) (not b!7768909) (not b!7768910) tp_is_empty!51861 (not b!7768902))
(check-sat)
(get-model)

(declare-fun b!7768940 () Bool)

(declare-fun e!4603352 () Regex!20753)

(declare-fun e!4603354 () Regex!20753)

(assert (=> b!7768940 (= e!4603352 e!4603354)))

(declare-fun c!1431863 () Bool)

(assert (=> b!7768940 (= c!1431863 ((_ is ElementMatch!20753) lt!2671263))))

(declare-fun b!7768941 () Bool)

(assert (=> b!7768941 (= e!4603354 (ite (= (h!79918 s!14904) (c!1431846 lt!2671263)) EmptyExpr!20753 EmptyLang!20753))))

(declare-fun b!7768942 () Bool)

(declare-fun e!4603351 () Regex!20753)

(declare-fun call!719870 () Regex!20753)

(assert (=> b!7768942 (= e!4603351 (Concat!29598 call!719870 lt!2671263))))

(declare-fun c!1431861 () Bool)

(declare-fun call!719867 () Regex!20753)

(declare-fun bm!719862 () Bool)

(declare-fun c!1431859 () Bool)

(assert (=> bm!719862 (= call!719867 (derivativeStep!6098 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))) (h!79918 s!14904)))))

(declare-fun bm!719863 () Bool)

(assert (=> bm!719863 (= call!719870 call!719867)))

(declare-fun call!719868 () Regex!20753)

(declare-fun bm!719864 () Bool)

(assert (=> bm!719864 (= call!719868 (derivativeStep!6098 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)) (h!79918 s!14904)))))

(declare-fun b!7768943 () Bool)

(declare-fun e!4603353 () Regex!20753)

(assert (=> b!7768943 (= e!4603353 (Union!20753 call!719867 call!719868))))

(declare-fun b!7768944 () Bool)

(assert (=> b!7768944 (= e!4603352 EmptyLang!20753)))

(declare-fun bm!719865 () Bool)

(declare-fun call!719869 () Regex!20753)

(assert (=> bm!719865 (= call!719869 call!719870)))

(declare-fun b!7768945 () Bool)

(declare-fun e!4603350 () Regex!20753)

(assert (=> b!7768945 (= e!4603350 (Union!20753 (Concat!29598 call!719869 (regTwo!42018 lt!2671263)) call!719868))))

(declare-fun b!7768946 () Bool)

(assert (=> b!7768946 (= e!4603350 (Union!20753 (Concat!29598 call!719869 (regTwo!42018 lt!2671263)) EmptyLang!20753))))

(declare-fun b!7768947 () Bool)

(declare-fun c!1431860 () Bool)

(declare-fun nullable!9142 (Regex!20753) Bool)

(assert (=> b!7768947 (= c!1431860 (nullable!9142 (regOne!42018 lt!2671263)))))

(assert (=> b!7768947 (= e!4603351 e!4603350)))

(declare-fun d!2344148 () Bool)

(declare-fun lt!2671267 () Regex!20753)

(assert (=> d!2344148 (validRegex!11167 lt!2671267)))

(assert (=> d!2344148 (= lt!2671267 e!4603352)))

(declare-fun c!1431862 () Bool)

(assert (=> d!2344148 (= c!1431862 (or ((_ is EmptyExpr!20753) lt!2671263) ((_ is EmptyLang!20753) lt!2671263)))))

(assert (=> d!2344148 (validRegex!11167 lt!2671263)))

(assert (=> d!2344148 (= (derivativeStep!6098 lt!2671263 (h!79918 s!14904)) lt!2671267)))

(declare-fun b!7768948 () Bool)

(assert (=> b!7768948 (= c!1431859 ((_ is Union!20753) lt!2671263))))

(assert (=> b!7768948 (= e!4603354 e!4603353)))

(declare-fun b!7768949 () Bool)

(assert (=> b!7768949 (= e!4603353 e!4603351)))

(assert (=> b!7768949 (= c!1431861 ((_ is Star!20753) lt!2671263))))

(assert (= (and d!2344148 c!1431862) b!7768944))

(assert (= (and d!2344148 (not c!1431862)) b!7768940))

(assert (= (and b!7768940 c!1431863) b!7768941))

(assert (= (and b!7768940 (not c!1431863)) b!7768948))

(assert (= (and b!7768948 c!1431859) b!7768943))

(assert (= (and b!7768948 (not c!1431859)) b!7768949))

(assert (= (and b!7768949 c!1431861) b!7768942))

(assert (= (and b!7768949 (not c!1431861)) b!7768947))

(assert (= (and b!7768947 c!1431860) b!7768945))

(assert (= (and b!7768947 (not c!1431860)) b!7768946))

(assert (= (or b!7768945 b!7768946) bm!719865))

(assert (= (or b!7768942 bm!719865) bm!719863))

(assert (= (or b!7768943 b!7768945) bm!719864))

(assert (= (or b!7768943 bm!719863) bm!719862))

(declare-fun m!8223842 () Bool)

(assert (=> bm!719862 m!8223842))

(declare-fun m!8223844 () Bool)

(assert (=> bm!719864 m!8223844))

(declare-fun m!8223846 () Bool)

(assert (=> b!7768947 m!8223846))

(declare-fun m!8223848 () Bool)

(assert (=> d!2344148 m!8223848))

(assert (=> d!2344148 m!8223830))

(assert (=> b!7768906 d!2344148))

(declare-fun b!7768960 () Bool)

(declare-fun e!4603365 () Regex!20753)

(declare-fun e!4603367 () Regex!20753)

(assert (=> b!7768960 (= e!4603365 e!4603367)))

(declare-fun c!1431870 () Bool)

(assert (=> b!7768960 (= c!1431870 ((_ is ElementMatch!20753) r!25924))))

(declare-fun b!7768961 () Bool)

(assert (=> b!7768961 (= e!4603367 (ite (= (h!79918 s!14904) (c!1431846 r!25924)) EmptyExpr!20753 EmptyLang!20753))))

(declare-fun b!7768962 () Bool)

(declare-fun e!4603364 () Regex!20753)

(declare-fun call!719876 () Regex!20753)

(assert (=> b!7768962 (= e!4603364 (Concat!29598 call!719876 r!25924))))

(declare-fun c!1431866 () Bool)

(declare-fun c!1431868 () Bool)

(declare-fun bm!719866 () Bool)

(declare-fun call!719873 () Regex!20753)

(assert (=> bm!719866 (= call!719873 (derivativeStep!6098 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))) (h!79918 s!14904)))))

(declare-fun bm!719867 () Bool)

(assert (=> bm!719867 (= call!719876 call!719873)))

(declare-fun call!719874 () Regex!20753)

(declare-fun bm!719868 () Bool)

(assert (=> bm!719868 (= call!719874 (derivativeStep!6098 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)) (h!79918 s!14904)))))

(declare-fun b!7768963 () Bool)

(declare-fun e!4603366 () Regex!20753)

(assert (=> b!7768963 (= e!4603366 (Union!20753 call!719873 call!719874))))

(declare-fun b!7768964 () Bool)

(assert (=> b!7768964 (= e!4603365 EmptyLang!20753)))

(declare-fun bm!719869 () Bool)

(declare-fun call!719875 () Regex!20753)

(assert (=> bm!719869 (= call!719875 call!719876)))

(declare-fun b!7768965 () Bool)

(declare-fun e!4603363 () Regex!20753)

(assert (=> b!7768965 (= e!4603363 (Union!20753 (Concat!29598 call!719875 (regTwo!42018 r!25924)) call!719874))))

(declare-fun b!7768966 () Bool)

(assert (=> b!7768966 (= e!4603363 (Union!20753 (Concat!29598 call!719875 (regTwo!42018 r!25924)) EmptyLang!20753))))

(declare-fun b!7768967 () Bool)

(declare-fun c!1431867 () Bool)

(assert (=> b!7768967 (= c!1431867 (nullable!9142 (regOne!42018 r!25924)))))

(assert (=> b!7768967 (= e!4603364 e!4603363)))

(declare-fun d!2344152 () Bool)

(declare-fun lt!2671268 () Regex!20753)

(assert (=> d!2344152 (validRegex!11167 lt!2671268)))

(assert (=> d!2344152 (= lt!2671268 e!4603365)))

(declare-fun c!1431869 () Bool)

(assert (=> d!2344152 (= c!1431869 (or ((_ is EmptyExpr!20753) r!25924) ((_ is EmptyLang!20753) r!25924)))))

(assert (=> d!2344152 (validRegex!11167 r!25924)))

(assert (=> d!2344152 (= (derivativeStep!6098 r!25924 (h!79918 s!14904)) lt!2671268)))

(declare-fun b!7768968 () Bool)

(assert (=> b!7768968 (= c!1431866 ((_ is Union!20753) r!25924))))

(assert (=> b!7768968 (= e!4603367 e!4603366)))

(declare-fun b!7768969 () Bool)

(assert (=> b!7768969 (= e!4603366 e!4603364)))

(assert (=> b!7768969 (= c!1431868 ((_ is Star!20753) r!25924))))

(assert (= (and d!2344152 c!1431869) b!7768964))

(assert (= (and d!2344152 (not c!1431869)) b!7768960))

(assert (= (and b!7768960 c!1431870) b!7768961))

(assert (= (and b!7768960 (not c!1431870)) b!7768968))

(assert (= (and b!7768968 c!1431866) b!7768963))

(assert (= (and b!7768968 (not c!1431866)) b!7768969))

(assert (= (and b!7768969 c!1431868) b!7768962))

(assert (= (and b!7768969 (not c!1431868)) b!7768967))

(assert (= (and b!7768967 c!1431867) b!7768965))

(assert (= (and b!7768967 (not c!1431867)) b!7768966))

(assert (= (or b!7768965 b!7768966) bm!719869))

(assert (= (or b!7768962 bm!719869) bm!719867))

(assert (= (or b!7768963 b!7768965) bm!719868))

(assert (= (or b!7768963 bm!719867) bm!719866))

(declare-fun m!8223850 () Bool)

(assert (=> bm!719866 m!8223850))

(declare-fun m!8223852 () Bool)

(assert (=> bm!719868 m!8223852))

(declare-fun m!8223854 () Bool)

(assert (=> b!7768967 m!8223854))

(declare-fun m!8223856 () Bool)

(assert (=> d!2344152 m!8223856))

(declare-fun m!8223858 () Bool)

(assert (=> d!2344152 m!8223858))

(assert (=> b!7768906 d!2344152))

(declare-fun bm!719882 () Bool)

(declare-fun call!719887 () Bool)

(declare-fun call!719889 () Bool)

(assert (=> bm!719882 (= call!719887 call!719889)))

(declare-fun b!7768988 () Bool)

(declare-fun e!4603386 () Bool)

(declare-fun e!4603382 () Bool)

(assert (=> b!7768988 (= e!4603386 e!4603382)))

(declare-fun c!1431876 () Bool)

(assert (=> b!7768988 (= c!1431876 ((_ is Union!20753) lt!2671263))))

(declare-fun bm!719883 () Bool)

(declare-fun call!719888 () Bool)

(assert (=> bm!719883 (= call!719888 (validRegex!11167 (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))))))

(declare-fun b!7768989 () Bool)

(declare-fun res!3097097 () Bool)

(declare-fun e!4603388 () Bool)

(assert (=> b!7768989 (=> res!3097097 e!4603388)))

(assert (=> b!7768989 (= res!3097097 (not ((_ is Concat!29598) lt!2671263)))))

(assert (=> b!7768989 (= e!4603382 e!4603388)))

(declare-fun b!7768990 () Bool)

(declare-fun e!4603383 () Bool)

(assert (=> b!7768990 (= e!4603388 e!4603383)))

(declare-fun res!3097096 () Bool)

(assert (=> b!7768990 (=> (not res!3097096) (not e!4603383))))

(assert (=> b!7768990 (= res!3097096 call!719887)))

(declare-fun b!7768991 () Bool)

(declare-fun e!4603387 () Bool)

(assert (=> b!7768991 (= e!4603387 call!719887)))

(declare-fun d!2344154 () Bool)

(declare-fun res!3097099 () Bool)

(declare-fun e!4603384 () Bool)

(assert (=> d!2344154 (=> res!3097099 e!4603384)))

(assert (=> d!2344154 (= res!3097099 ((_ is ElementMatch!20753) lt!2671263))))

(assert (=> d!2344154 (= (validRegex!11167 lt!2671263) e!4603384)))

(declare-fun bm!719884 () Bool)

(declare-fun c!1431875 () Bool)

(assert (=> bm!719884 (= call!719889 (validRegex!11167 (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))))))

(declare-fun b!7768992 () Bool)

(declare-fun res!3097095 () Bool)

(assert (=> b!7768992 (=> (not res!3097095) (not e!4603387))))

(assert (=> b!7768992 (= res!3097095 call!719888)))

(assert (=> b!7768992 (= e!4603382 e!4603387)))

(declare-fun b!7768993 () Bool)

(assert (=> b!7768993 (= e!4603384 e!4603386)))

(assert (=> b!7768993 (= c!1431875 ((_ is Star!20753) lt!2671263))))

(declare-fun b!7768994 () Bool)

(declare-fun e!4603385 () Bool)

(assert (=> b!7768994 (= e!4603385 call!719889)))

(declare-fun b!7768995 () Bool)

(assert (=> b!7768995 (= e!4603383 call!719888)))

(declare-fun b!7768996 () Bool)

(assert (=> b!7768996 (= e!4603386 e!4603385)))

(declare-fun res!3097098 () Bool)

(assert (=> b!7768996 (= res!3097098 (not (nullable!9142 (reg!21082 lt!2671263))))))

(assert (=> b!7768996 (=> (not res!3097098) (not e!4603385))))

(assert (= (and d!2344154 (not res!3097099)) b!7768993))

(assert (= (and b!7768993 c!1431875) b!7768996))

(assert (= (and b!7768993 (not c!1431875)) b!7768988))

(assert (= (and b!7768996 res!3097098) b!7768994))

(assert (= (and b!7768988 c!1431876) b!7768992))

(assert (= (and b!7768988 (not c!1431876)) b!7768989))

(assert (= (and b!7768992 res!3097095) b!7768991))

(assert (= (and b!7768989 (not res!3097097)) b!7768990))

(assert (= (and b!7768990 res!3097096) b!7768995))

(assert (= (or b!7768991 b!7768990) bm!719882))

(assert (= (or b!7768992 b!7768995) bm!719883))

(assert (= (or b!7768994 bm!719882) bm!719884))

(declare-fun m!8223860 () Bool)

(assert (=> bm!719883 m!8223860))

(declare-fun m!8223862 () Bool)

(assert (=> bm!719884 m!8223862))

(declare-fun m!8223864 () Bool)

(assert (=> b!7768996 m!8223864))

(assert (=> start!739932 d!2344154))

(declare-fun b!7769034 () Bool)

(declare-fun res!3097122 () Bool)

(declare-fun e!4603414 () Bool)

(assert (=> b!7769034 (=> (not res!3097122) (not e!4603414))))

(declare-fun call!719895 () Bool)

(assert (=> b!7769034 (= res!3097122 (not call!719895))))

(declare-fun b!7769035 () Bool)

(declare-fun e!4603412 () Bool)

(declare-fun head!15880 (List!73594) C!41832)

(declare-fun tail!15420 (List!73594) List!73594)

(assert (=> b!7769035 (= e!4603412 (matchR!10215 (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904))) (tail!15420 (t!388329 s!14904))))))

(declare-fun b!7769036 () Bool)

(declare-fun e!4603413 () Bool)

(declare-fun e!4603410 () Bool)

(assert (=> b!7769036 (= e!4603413 e!4603410)))

(declare-fun res!3097121 () Bool)

(assert (=> b!7769036 (=> res!3097121 e!4603410)))

(assert (=> b!7769036 (= res!3097121 call!719895)))

(declare-fun b!7769037 () Bool)

(declare-fun e!4603416 () Bool)

(declare-fun lt!2671271 () Bool)

(assert (=> b!7769037 (= e!4603416 (not lt!2671271))))

(declare-fun d!2344156 () Bool)

(declare-fun e!4603415 () Bool)

(assert (=> d!2344156 e!4603415))

(declare-fun c!1431887 () Bool)

(assert (=> d!2344156 (= c!1431887 ((_ is EmptyExpr!20753) lt!2671264))))

(assert (=> d!2344156 (= lt!2671271 e!4603412)))

(declare-fun c!1431885 () Bool)

(declare-fun isEmpty!42137 (List!73594) Bool)

(assert (=> d!2344156 (= c!1431885 (isEmpty!42137 (t!388329 s!14904)))))

(assert (=> d!2344156 (validRegex!11167 lt!2671264)))

(assert (=> d!2344156 (= (matchR!10215 lt!2671264 (t!388329 s!14904)) lt!2671271)))

(declare-fun b!7769038 () Bool)

(declare-fun res!3097124 () Bool)

(assert (=> b!7769038 (=> (not res!3097124) (not e!4603414))))

(assert (=> b!7769038 (= res!3097124 (isEmpty!42137 (tail!15420 (t!388329 s!14904))))))

(declare-fun b!7769039 () Bool)

(declare-fun e!4603411 () Bool)

(assert (=> b!7769039 (= e!4603411 e!4603413)))

(declare-fun res!3097126 () Bool)

(assert (=> b!7769039 (=> (not res!3097126) (not e!4603413))))

(assert (=> b!7769039 (= res!3097126 (not lt!2671271))))

(declare-fun b!7769040 () Bool)

(declare-fun res!3097123 () Bool)

(assert (=> b!7769040 (=> res!3097123 e!4603411)))

(assert (=> b!7769040 (= res!3097123 (not ((_ is ElementMatch!20753) lt!2671264)))))

(assert (=> b!7769040 (= e!4603416 e!4603411)))

(declare-fun b!7769041 () Bool)

(assert (=> b!7769041 (= e!4603414 (= (head!15880 (t!388329 s!14904)) (c!1431846 lt!2671264)))))

(declare-fun b!7769042 () Bool)

(declare-fun res!3097125 () Bool)

(assert (=> b!7769042 (=> res!3097125 e!4603411)))

(assert (=> b!7769042 (= res!3097125 e!4603414)))

(declare-fun res!3097127 () Bool)

(assert (=> b!7769042 (=> (not res!3097127) (not e!4603414))))

(assert (=> b!7769042 (= res!3097127 lt!2671271)))

(declare-fun b!7769043 () Bool)

(declare-fun res!3097128 () Bool)

(assert (=> b!7769043 (=> res!3097128 e!4603410)))

(assert (=> b!7769043 (= res!3097128 (not (isEmpty!42137 (tail!15420 (t!388329 s!14904)))))))

(declare-fun bm!719890 () Bool)

(assert (=> bm!719890 (= call!719895 (isEmpty!42137 (t!388329 s!14904)))))

(declare-fun b!7769044 () Bool)

(assert (=> b!7769044 (= e!4603410 (not (= (head!15880 (t!388329 s!14904)) (c!1431846 lt!2671264))))))

(declare-fun b!7769045 () Bool)

(assert (=> b!7769045 (= e!4603412 (nullable!9142 lt!2671264))))

(declare-fun b!7769046 () Bool)

(assert (=> b!7769046 (= e!4603415 (= lt!2671271 call!719895))))

(declare-fun b!7769047 () Bool)

(assert (=> b!7769047 (= e!4603415 e!4603416)))

(declare-fun c!1431886 () Bool)

(assert (=> b!7769047 (= c!1431886 ((_ is EmptyLang!20753) lt!2671264))))

(assert (= (and d!2344156 c!1431885) b!7769045))

(assert (= (and d!2344156 (not c!1431885)) b!7769035))

(assert (= (and d!2344156 c!1431887) b!7769046))

(assert (= (and d!2344156 (not c!1431887)) b!7769047))

(assert (= (and b!7769047 c!1431886) b!7769037))

(assert (= (and b!7769047 (not c!1431886)) b!7769040))

(assert (= (and b!7769040 (not res!3097123)) b!7769042))

(assert (= (and b!7769042 res!3097127) b!7769034))

(assert (= (and b!7769034 res!3097122) b!7769038))

(assert (= (and b!7769038 res!3097124) b!7769041))

(assert (= (and b!7769042 (not res!3097125)) b!7769039))

(assert (= (and b!7769039 res!3097126) b!7769036))

(assert (= (and b!7769036 (not res!3097121)) b!7769043))

(assert (= (and b!7769043 (not res!3097128)) b!7769044))

(assert (= (or b!7769046 b!7769034 b!7769036) bm!719890))

(declare-fun m!8223872 () Bool)

(assert (=> b!7769045 m!8223872))

(declare-fun m!8223874 () Bool)

(assert (=> b!7769043 m!8223874))

(assert (=> b!7769043 m!8223874))

(declare-fun m!8223876 () Bool)

(assert (=> b!7769043 m!8223876))

(declare-fun m!8223878 () Bool)

(assert (=> b!7769035 m!8223878))

(assert (=> b!7769035 m!8223878))

(declare-fun m!8223880 () Bool)

(assert (=> b!7769035 m!8223880))

(assert (=> b!7769035 m!8223874))

(assert (=> b!7769035 m!8223880))

(assert (=> b!7769035 m!8223874))

(declare-fun m!8223882 () Bool)

(assert (=> b!7769035 m!8223882))

(assert (=> b!7769044 m!8223878))

(declare-fun m!8223884 () Bool)

(assert (=> d!2344156 m!8223884))

(declare-fun m!8223886 () Bool)

(assert (=> d!2344156 m!8223886))

(assert (=> b!7769041 m!8223878))

(assert (=> bm!719890 m!8223884))

(assert (=> b!7769038 m!8223874))

(assert (=> b!7769038 m!8223874))

(assert (=> b!7769038 m!8223876))

(assert (=> b!7768909 d!2344156))

(declare-fun b!7769048 () Bool)

(declare-fun res!3097130 () Bool)

(declare-fun e!4603421 () Bool)

(assert (=> b!7769048 (=> (not res!3097130) (not e!4603421))))

(declare-fun call!719896 () Bool)

(assert (=> b!7769048 (= res!3097130 (not call!719896))))

(declare-fun b!7769049 () Bool)

(declare-fun e!4603419 () Bool)

(assert (=> b!7769049 (= e!4603419 (matchR!10215 (derivativeStep!6098 lt!2671263 (head!15880 s!14904)) (tail!15420 s!14904)))))

(declare-fun b!7769050 () Bool)

(declare-fun e!4603420 () Bool)

(declare-fun e!4603417 () Bool)

(assert (=> b!7769050 (= e!4603420 e!4603417)))

(declare-fun res!3097129 () Bool)

(assert (=> b!7769050 (=> res!3097129 e!4603417)))

(assert (=> b!7769050 (= res!3097129 call!719896)))

(declare-fun b!7769051 () Bool)

(declare-fun e!4603423 () Bool)

(declare-fun lt!2671272 () Bool)

(assert (=> b!7769051 (= e!4603423 (not lt!2671272))))

(declare-fun d!2344160 () Bool)

(declare-fun e!4603422 () Bool)

(assert (=> d!2344160 e!4603422))

(declare-fun c!1431890 () Bool)

(assert (=> d!2344160 (= c!1431890 ((_ is EmptyExpr!20753) lt!2671263))))

(assert (=> d!2344160 (= lt!2671272 e!4603419)))

(declare-fun c!1431888 () Bool)

(assert (=> d!2344160 (= c!1431888 (isEmpty!42137 s!14904))))

(assert (=> d!2344160 (validRegex!11167 lt!2671263)))

(assert (=> d!2344160 (= (matchR!10215 lt!2671263 s!14904) lt!2671272)))

(declare-fun b!7769052 () Bool)

(declare-fun res!3097132 () Bool)

(assert (=> b!7769052 (=> (not res!3097132) (not e!4603421))))

(assert (=> b!7769052 (= res!3097132 (isEmpty!42137 (tail!15420 s!14904)))))

(declare-fun b!7769053 () Bool)

(declare-fun e!4603418 () Bool)

(assert (=> b!7769053 (= e!4603418 e!4603420)))

(declare-fun res!3097134 () Bool)

(assert (=> b!7769053 (=> (not res!3097134) (not e!4603420))))

(assert (=> b!7769053 (= res!3097134 (not lt!2671272))))

(declare-fun b!7769054 () Bool)

(declare-fun res!3097131 () Bool)

(assert (=> b!7769054 (=> res!3097131 e!4603418)))

(assert (=> b!7769054 (= res!3097131 (not ((_ is ElementMatch!20753) lt!2671263)))))

(assert (=> b!7769054 (= e!4603423 e!4603418)))

(declare-fun b!7769055 () Bool)

(assert (=> b!7769055 (= e!4603421 (= (head!15880 s!14904) (c!1431846 lt!2671263)))))

(declare-fun b!7769056 () Bool)

(declare-fun res!3097133 () Bool)

(assert (=> b!7769056 (=> res!3097133 e!4603418)))

(assert (=> b!7769056 (= res!3097133 e!4603421)))

(declare-fun res!3097135 () Bool)

(assert (=> b!7769056 (=> (not res!3097135) (not e!4603421))))

(assert (=> b!7769056 (= res!3097135 lt!2671272)))

(declare-fun b!7769057 () Bool)

(declare-fun res!3097136 () Bool)

(assert (=> b!7769057 (=> res!3097136 e!4603417)))

(assert (=> b!7769057 (= res!3097136 (not (isEmpty!42137 (tail!15420 s!14904))))))

(declare-fun bm!719891 () Bool)

(assert (=> bm!719891 (= call!719896 (isEmpty!42137 s!14904))))

(declare-fun b!7769058 () Bool)

(assert (=> b!7769058 (= e!4603417 (not (= (head!15880 s!14904) (c!1431846 lt!2671263))))))

(declare-fun b!7769059 () Bool)

(assert (=> b!7769059 (= e!4603419 (nullable!9142 lt!2671263))))

(declare-fun b!7769060 () Bool)

(assert (=> b!7769060 (= e!4603422 (= lt!2671272 call!719896))))

(declare-fun b!7769061 () Bool)

(assert (=> b!7769061 (= e!4603422 e!4603423)))

(declare-fun c!1431889 () Bool)

(assert (=> b!7769061 (= c!1431889 ((_ is EmptyLang!20753) lt!2671263))))

(assert (= (and d!2344160 c!1431888) b!7769059))

(assert (= (and d!2344160 (not c!1431888)) b!7769049))

(assert (= (and d!2344160 c!1431890) b!7769060))

(assert (= (and d!2344160 (not c!1431890)) b!7769061))

(assert (= (and b!7769061 c!1431889) b!7769051))

(assert (= (and b!7769061 (not c!1431889)) b!7769054))

(assert (= (and b!7769054 (not res!3097131)) b!7769056))

(assert (= (and b!7769056 res!3097135) b!7769048))

(assert (= (and b!7769048 res!3097130) b!7769052))

(assert (= (and b!7769052 res!3097132) b!7769055))

(assert (= (and b!7769056 (not res!3097133)) b!7769053))

(assert (= (and b!7769053 res!3097134) b!7769050))

(assert (= (and b!7769050 (not res!3097129)) b!7769057))

(assert (= (and b!7769057 (not res!3097136)) b!7769058))

(assert (= (or b!7769060 b!7769048 b!7769050) bm!719891))

(declare-fun m!8223888 () Bool)

(assert (=> b!7769059 m!8223888))

(declare-fun m!8223890 () Bool)

(assert (=> b!7769057 m!8223890))

(assert (=> b!7769057 m!8223890))

(declare-fun m!8223892 () Bool)

(assert (=> b!7769057 m!8223892))

(declare-fun m!8223894 () Bool)

(assert (=> b!7769049 m!8223894))

(assert (=> b!7769049 m!8223894))

(declare-fun m!8223896 () Bool)

(assert (=> b!7769049 m!8223896))

(assert (=> b!7769049 m!8223890))

(assert (=> b!7769049 m!8223896))

(assert (=> b!7769049 m!8223890))

(declare-fun m!8223898 () Bool)

(assert (=> b!7769049 m!8223898))

(assert (=> b!7769058 m!8223894))

(declare-fun m!8223900 () Bool)

(assert (=> d!2344160 m!8223900))

(assert (=> d!2344160 m!8223830))

(assert (=> b!7769055 m!8223894))

(assert (=> bm!719891 m!8223900))

(assert (=> b!7769052 m!8223890))

(assert (=> b!7769052 m!8223890))

(assert (=> b!7769052 m!8223892))

(assert (=> b!7768904 d!2344160))

(declare-fun bm!719892 () Bool)

(declare-fun call!719897 () Bool)

(declare-fun call!719899 () Bool)

(assert (=> bm!719892 (= call!719897 call!719899)))

(declare-fun b!7769062 () Bool)

(declare-fun e!4603428 () Bool)

(declare-fun e!4603424 () Bool)

(assert (=> b!7769062 (= e!4603428 e!4603424)))

(declare-fun c!1431892 () Bool)

(assert (=> b!7769062 (= c!1431892 ((_ is Union!20753) lt!2671262))))

(declare-fun bm!719893 () Bool)

(declare-fun call!719898 () Bool)

(assert (=> bm!719893 (= call!719898 (validRegex!11167 (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))))))

(declare-fun b!7769063 () Bool)

(declare-fun res!3097139 () Bool)

(declare-fun e!4603430 () Bool)

(assert (=> b!7769063 (=> res!3097139 e!4603430)))

(assert (=> b!7769063 (= res!3097139 (not ((_ is Concat!29598) lt!2671262)))))

(assert (=> b!7769063 (= e!4603424 e!4603430)))

(declare-fun b!7769064 () Bool)

(declare-fun e!4603425 () Bool)

(assert (=> b!7769064 (= e!4603430 e!4603425)))

(declare-fun res!3097138 () Bool)

(assert (=> b!7769064 (=> (not res!3097138) (not e!4603425))))

(assert (=> b!7769064 (= res!3097138 call!719897)))

(declare-fun b!7769065 () Bool)

(declare-fun e!4603429 () Bool)

(assert (=> b!7769065 (= e!4603429 call!719897)))

(declare-fun d!2344162 () Bool)

(declare-fun res!3097141 () Bool)

(declare-fun e!4603426 () Bool)

(assert (=> d!2344162 (=> res!3097141 e!4603426)))

(assert (=> d!2344162 (= res!3097141 ((_ is ElementMatch!20753) lt!2671262))))

(assert (=> d!2344162 (= (validRegex!11167 lt!2671262) e!4603426)))

(declare-fun c!1431891 () Bool)

(declare-fun bm!719894 () Bool)

(assert (=> bm!719894 (= call!719899 (validRegex!11167 (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))))))

(declare-fun b!7769066 () Bool)

(declare-fun res!3097137 () Bool)

(assert (=> b!7769066 (=> (not res!3097137) (not e!4603429))))

(assert (=> b!7769066 (= res!3097137 call!719898)))

(assert (=> b!7769066 (= e!4603424 e!4603429)))

(declare-fun b!7769067 () Bool)

(assert (=> b!7769067 (= e!4603426 e!4603428)))

(assert (=> b!7769067 (= c!1431891 ((_ is Star!20753) lt!2671262))))

(declare-fun b!7769068 () Bool)

(declare-fun e!4603427 () Bool)

(assert (=> b!7769068 (= e!4603427 call!719899)))

(declare-fun b!7769069 () Bool)

(assert (=> b!7769069 (= e!4603425 call!719898)))

(declare-fun b!7769070 () Bool)

(assert (=> b!7769070 (= e!4603428 e!4603427)))

(declare-fun res!3097140 () Bool)

(assert (=> b!7769070 (= res!3097140 (not (nullable!9142 (reg!21082 lt!2671262))))))

(assert (=> b!7769070 (=> (not res!3097140) (not e!4603427))))

(assert (= (and d!2344162 (not res!3097141)) b!7769067))

(assert (= (and b!7769067 c!1431891) b!7769070))

(assert (= (and b!7769067 (not c!1431891)) b!7769062))

(assert (= (and b!7769070 res!3097140) b!7769068))

(assert (= (and b!7769062 c!1431892) b!7769066))

(assert (= (and b!7769062 (not c!1431892)) b!7769063))

(assert (= (and b!7769066 res!3097137) b!7769065))

(assert (= (and b!7769063 (not res!3097139)) b!7769064))

(assert (= (and b!7769064 res!3097138) b!7769069))

(assert (= (or b!7769065 b!7769064) bm!719892))

(assert (= (or b!7769066 b!7769069) bm!719893))

(assert (= (or b!7769068 bm!719892) bm!719894))

(declare-fun m!8223902 () Bool)

(assert (=> bm!719893 m!8223902))

(declare-fun m!8223904 () Bool)

(assert (=> bm!719894 m!8223904))

(declare-fun m!8223906 () Bool)

(assert (=> b!7769070 m!8223906))

(assert (=> b!7768902 d!2344162))

(declare-fun b!7769095 () Bool)

(declare-fun e!4603443 () Bool)

(declare-fun tp!2282288 () Bool)

(assert (=> b!7769095 (= e!4603443 (and tp_is_empty!51861 tp!2282288))))

(assert (=> b!7768907 (= tp!2282284 e!4603443)))

(assert (= (and b!7768907 ((_ is Cons!73470) (t!388329 s!14904))) b!7769095))

(declare-fun b!7769108 () Bool)

(declare-fun e!4603446 () Bool)

(declare-fun tp!2282303 () Bool)

(assert (=> b!7769108 (= e!4603446 tp!2282303)))

(declare-fun b!7769106 () Bool)

(assert (=> b!7769106 (= e!4603446 tp_is_empty!51861)))

(declare-fun b!7769107 () Bool)

(declare-fun tp!2282299 () Bool)

(declare-fun tp!2282301 () Bool)

(assert (=> b!7769107 (= e!4603446 (and tp!2282299 tp!2282301))))

(declare-fun b!7769109 () Bool)

(declare-fun tp!2282302 () Bool)

(declare-fun tp!2282300 () Bool)

(assert (=> b!7769109 (= e!4603446 (and tp!2282302 tp!2282300))))

(assert (=> b!7768905 (= tp!2282285 e!4603446)))

(assert (= (and b!7768905 ((_ is ElementMatch!20753) (reg!21082 r!25924))) b!7769106))

(assert (= (and b!7768905 ((_ is Concat!29598) (reg!21082 r!25924))) b!7769107))

(assert (= (and b!7768905 ((_ is Star!20753) (reg!21082 r!25924))) b!7769108))

(assert (= (and b!7768905 ((_ is Union!20753) (reg!21082 r!25924))) b!7769109))

(declare-fun b!7769112 () Bool)

(declare-fun e!4603447 () Bool)

(declare-fun tp!2282308 () Bool)

(assert (=> b!7769112 (= e!4603447 tp!2282308)))

(declare-fun b!7769110 () Bool)

(assert (=> b!7769110 (= e!4603447 tp_is_empty!51861)))

(declare-fun b!7769111 () Bool)

(declare-fun tp!2282304 () Bool)

(declare-fun tp!2282306 () Bool)

(assert (=> b!7769111 (= e!4603447 (and tp!2282304 tp!2282306))))

(declare-fun b!7769113 () Bool)

(declare-fun tp!2282307 () Bool)

(declare-fun tp!2282305 () Bool)

(assert (=> b!7769113 (= e!4603447 (and tp!2282307 tp!2282305))))

(assert (=> b!7768910 (= tp!2282280 e!4603447)))

(assert (= (and b!7768910 ((_ is ElementMatch!20753) (regOne!42018 r!25924))) b!7769110))

(assert (= (and b!7768910 ((_ is Concat!29598) (regOne!42018 r!25924))) b!7769111))

(assert (= (and b!7768910 ((_ is Star!20753) (regOne!42018 r!25924))) b!7769112))

(assert (= (and b!7768910 ((_ is Union!20753) (regOne!42018 r!25924))) b!7769113))

(declare-fun b!7769116 () Bool)

(declare-fun e!4603448 () Bool)

(declare-fun tp!2282313 () Bool)

(assert (=> b!7769116 (= e!4603448 tp!2282313)))

(declare-fun b!7769114 () Bool)

(assert (=> b!7769114 (= e!4603448 tp_is_empty!51861)))

(declare-fun b!7769115 () Bool)

(declare-fun tp!2282309 () Bool)

(declare-fun tp!2282311 () Bool)

(assert (=> b!7769115 (= e!4603448 (and tp!2282309 tp!2282311))))

(declare-fun b!7769117 () Bool)

(declare-fun tp!2282312 () Bool)

(declare-fun tp!2282310 () Bool)

(assert (=> b!7769117 (= e!4603448 (and tp!2282312 tp!2282310))))

(assert (=> b!7768910 (= tp!2282281 e!4603448)))

(assert (= (and b!7768910 ((_ is ElementMatch!20753) (regTwo!42018 r!25924))) b!7769114))

(assert (= (and b!7768910 ((_ is Concat!29598) (regTwo!42018 r!25924))) b!7769115))

(assert (= (and b!7768910 ((_ is Star!20753) (regTwo!42018 r!25924))) b!7769116))

(assert (= (and b!7768910 ((_ is Union!20753) (regTwo!42018 r!25924))) b!7769117))

(declare-fun b!7769120 () Bool)

(declare-fun e!4603449 () Bool)

(declare-fun tp!2282318 () Bool)

(assert (=> b!7769120 (= e!4603449 tp!2282318)))

(declare-fun b!7769118 () Bool)

(assert (=> b!7769118 (= e!4603449 tp_is_empty!51861)))

(declare-fun b!7769119 () Bool)

(declare-fun tp!2282314 () Bool)

(declare-fun tp!2282316 () Bool)

(assert (=> b!7769119 (= e!4603449 (and tp!2282314 tp!2282316))))

(declare-fun b!7769121 () Bool)

(declare-fun tp!2282317 () Bool)

(declare-fun tp!2282315 () Bool)

(assert (=> b!7769121 (= e!4603449 (and tp!2282317 tp!2282315))))

(assert (=> b!7768908 (= tp!2282282 e!4603449)))

(assert (= (and b!7768908 ((_ is ElementMatch!20753) (regOne!42019 r!25924))) b!7769118))

(assert (= (and b!7768908 ((_ is Concat!29598) (regOne!42019 r!25924))) b!7769119))

(assert (= (and b!7768908 ((_ is Star!20753) (regOne!42019 r!25924))) b!7769120))

(assert (= (and b!7768908 ((_ is Union!20753) (regOne!42019 r!25924))) b!7769121))

(declare-fun b!7769124 () Bool)

(declare-fun e!4603450 () Bool)

(declare-fun tp!2282323 () Bool)

(assert (=> b!7769124 (= e!4603450 tp!2282323)))

(declare-fun b!7769122 () Bool)

(assert (=> b!7769122 (= e!4603450 tp_is_empty!51861)))

(declare-fun b!7769123 () Bool)

(declare-fun tp!2282319 () Bool)

(declare-fun tp!2282321 () Bool)

(assert (=> b!7769123 (= e!4603450 (and tp!2282319 tp!2282321))))

(declare-fun b!7769125 () Bool)

(declare-fun tp!2282322 () Bool)

(declare-fun tp!2282320 () Bool)

(assert (=> b!7769125 (= e!4603450 (and tp!2282322 tp!2282320))))

(assert (=> b!7768908 (= tp!2282283 e!4603450)))

(assert (= (and b!7768908 ((_ is ElementMatch!20753) (regTwo!42019 r!25924))) b!7769122))

(assert (= (and b!7768908 ((_ is Concat!29598) (regTwo!42019 r!25924))) b!7769123))

(assert (= (and b!7768908 ((_ is Star!20753) (regTwo!42019 r!25924))) b!7769124))

(assert (= (and b!7768908 ((_ is Union!20753) (regTwo!42019 r!25924))) b!7769125))

(check-sat (not b!7769115) (not b!7769120) (not b!7769117) (not bm!719890) (not b!7769116) (not bm!719883) (not b!7768947) (not b!7769070) (not b!7769038) (not bm!719862) (not b!7769049) (not d!2344152) (not b!7769109) (not b!7769052) (not b!7769045) (not d!2344156) (not b!7769108) (not bm!719893) tp_is_empty!51861 (not b!7769095) (not b!7769125) (not b!7768967) (not b!7769123) (not b!7769058) (not b!7769121) (not bm!719868) (not b!7769055) (not bm!719864) (not bm!719891) (not b!7769057) (not d!2344148) (not bm!719894) (not b!7768996) (not b!7769112) (not b!7769041) (not d!2344160) (not b!7769035) (not b!7769124) (not b!7769059) (not b!7769043) (not b!7769113) (not bm!719866) (not bm!719884) (not b!7769107) (not b!7769044) (not b!7769111) (not b!7769119))
(check-sat)
(get-model)

(declare-fun bm!719918 () Bool)

(declare-fun call!719923 () Bool)

(declare-fun call!719925 () Bool)

(assert (=> bm!719918 (= call!719923 call!719925)))

(declare-fun b!7769246 () Bool)

(declare-fun e!4603510 () Bool)

(declare-fun e!4603506 () Bool)

(assert (=> b!7769246 (= e!4603510 e!4603506)))

(declare-fun c!1431928 () Bool)

(assert (=> b!7769246 (= c!1431928 ((_ is Union!20753) lt!2671267))))

(declare-fun bm!719919 () Bool)

(declare-fun call!719924 () Bool)

(assert (=> bm!719919 (= call!719924 (validRegex!11167 (ite c!1431928 (regOne!42019 lt!2671267) (regTwo!42018 lt!2671267))))))

(declare-fun b!7769247 () Bool)

(declare-fun res!3097181 () Bool)

(declare-fun e!4603512 () Bool)

(assert (=> b!7769247 (=> res!3097181 e!4603512)))

(assert (=> b!7769247 (= res!3097181 (not ((_ is Concat!29598) lt!2671267)))))

(assert (=> b!7769247 (= e!4603506 e!4603512)))

(declare-fun b!7769248 () Bool)

(declare-fun e!4603507 () Bool)

(assert (=> b!7769248 (= e!4603512 e!4603507)))

(declare-fun res!3097180 () Bool)

(assert (=> b!7769248 (=> (not res!3097180) (not e!4603507))))

(assert (=> b!7769248 (= res!3097180 call!719923)))

(declare-fun b!7769249 () Bool)

(declare-fun e!4603511 () Bool)

(assert (=> b!7769249 (= e!4603511 call!719923)))

(declare-fun d!2344172 () Bool)

(declare-fun res!3097183 () Bool)

(declare-fun e!4603508 () Bool)

(assert (=> d!2344172 (=> res!3097183 e!4603508)))

(assert (=> d!2344172 (= res!3097183 ((_ is ElementMatch!20753) lt!2671267))))

(assert (=> d!2344172 (= (validRegex!11167 lt!2671267) e!4603508)))

(declare-fun bm!719920 () Bool)

(declare-fun c!1431927 () Bool)

(assert (=> bm!719920 (= call!719925 (validRegex!11167 (ite c!1431927 (reg!21082 lt!2671267) (ite c!1431928 (regTwo!42019 lt!2671267) (regOne!42018 lt!2671267)))))))

(declare-fun b!7769250 () Bool)

(declare-fun res!3097179 () Bool)

(assert (=> b!7769250 (=> (not res!3097179) (not e!4603511))))

(assert (=> b!7769250 (= res!3097179 call!719924)))

(assert (=> b!7769250 (= e!4603506 e!4603511)))

(declare-fun b!7769251 () Bool)

(assert (=> b!7769251 (= e!4603508 e!4603510)))

(assert (=> b!7769251 (= c!1431927 ((_ is Star!20753) lt!2671267))))

(declare-fun b!7769252 () Bool)

(declare-fun e!4603509 () Bool)

(assert (=> b!7769252 (= e!4603509 call!719925)))

(declare-fun b!7769253 () Bool)

(assert (=> b!7769253 (= e!4603507 call!719924)))

(declare-fun b!7769254 () Bool)

(assert (=> b!7769254 (= e!4603510 e!4603509)))

(declare-fun res!3097182 () Bool)

(assert (=> b!7769254 (= res!3097182 (not (nullable!9142 (reg!21082 lt!2671267))))))

(assert (=> b!7769254 (=> (not res!3097182) (not e!4603509))))

(assert (= (and d!2344172 (not res!3097183)) b!7769251))

(assert (= (and b!7769251 c!1431927) b!7769254))

(assert (= (and b!7769251 (not c!1431927)) b!7769246))

(assert (= (and b!7769254 res!3097182) b!7769252))

(assert (= (and b!7769246 c!1431928) b!7769250))

(assert (= (and b!7769246 (not c!1431928)) b!7769247))

(assert (= (and b!7769250 res!3097179) b!7769249))

(assert (= (and b!7769247 (not res!3097181)) b!7769248))

(assert (= (and b!7769248 res!3097180) b!7769253))

(assert (= (or b!7769249 b!7769248) bm!719918))

(assert (= (or b!7769250 b!7769253) bm!719919))

(assert (= (or b!7769252 bm!719918) bm!719920))

(declare-fun m!8223962 () Bool)

(assert (=> bm!719919 m!8223962))

(declare-fun m!8223964 () Bool)

(assert (=> bm!719920 m!8223964))

(declare-fun m!8223966 () Bool)

(assert (=> b!7769254 m!8223966))

(assert (=> d!2344148 d!2344172))

(assert (=> d!2344148 d!2344154))

(declare-fun b!7769255 () Bool)

(declare-fun res!3097185 () Bool)

(declare-fun e!4603517 () Bool)

(assert (=> b!7769255 (=> (not res!3097185) (not e!4603517))))

(declare-fun call!719926 () Bool)

(assert (=> b!7769255 (= res!3097185 (not call!719926))))

(declare-fun b!7769256 () Bool)

(declare-fun e!4603515 () Bool)

(assert (=> b!7769256 (= e!4603515 (matchR!10215 (derivativeStep!6098 (derivativeStep!6098 lt!2671263 (head!15880 s!14904)) (head!15880 (tail!15420 s!14904))) (tail!15420 (tail!15420 s!14904))))))

(declare-fun b!7769257 () Bool)

(declare-fun e!4603516 () Bool)

(declare-fun e!4603513 () Bool)

(assert (=> b!7769257 (= e!4603516 e!4603513)))

(declare-fun res!3097184 () Bool)

(assert (=> b!7769257 (=> res!3097184 e!4603513)))

(assert (=> b!7769257 (= res!3097184 call!719926)))

(declare-fun b!7769258 () Bool)

(declare-fun e!4603519 () Bool)

(declare-fun lt!2671281 () Bool)

(assert (=> b!7769258 (= e!4603519 (not lt!2671281))))

(declare-fun d!2344174 () Bool)

(declare-fun e!4603518 () Bool)

(assert (=> d!2344174 e!4603518))

(declare-fun c!1431931 () Bool)

(assert (=> d!2344174 (= c!1431931 ((_ is EmptyExpr!20753) (derivativeStep!6098 lt!2671263 (head!15880 s!14904))))))

(assert (=> d!2344174 (= lt!2671281 e!4603515)))

(declare-fun c!1431929 () Bool)

(assert (=> d!2344174 (= c!1431929 (isEmpty!42137 (tail!15420 s!14904)))))

(assert (=> d!2344174 (validRegex!11167 (derivativeStep!6098 lt!2671263 (head!15880 s!14904)))))

(assert (=> d!2344174 (= (matchR!10215 (derivativeStep!6098 lt!2671263 (head!15880 s!14904)) (tail!15420 s!14904)) lt!2671281)))

(declare-fun b!7769259 () Bool)

(declare-fun res!3097187 () Bool)

(assert (=> b!7769259 (=> (not res!3097187) (not e!4603517))))

(assert (=> b!7769259 (= res!3097187 (isEmpty!42137 (tail!15420 (tail!15420 s!14904))))))

(declare-fun b!7769260 () Bool)

(declare-fun e!4603514 () Bool)

(assert (=> b!7769260 (= e!4603514 e!4603516)))

(declare-fun res!3097189 () Bool)

(assert (=> b!7769260 (=> (not res!3097189) (not e!4603516))))

(assert (=> b!7769260 (= res!3097189 (not lt!2671281))))

(declare-fun b!7769261 () Bool)

(declare-fun res!3097186 () Bool)

(assert (=> b!7769261 (=> res!3097186 e!4603514)))

(assert (=> b!7769261 (= res!3097186 (not ((_ is ElementMatch!20753) (derivativeStep!6098 lt!2671263 (head!15880 s!14904)))))))

(assert (=> b!7769261 (= e!4603519 e!4603514)))

(declare-fun b!7769262 () Bool)

(assert (=> b!7769262 (= e!4603517 (= (head!15880 (tail!15420 s!14904)) (c!1431846 (derivativeStep!6098 lt!2671263 (head!15880 s!14904)))))))

(declare-fun b!7769263 () Bool)

(declare-fun res!3097188 () Bool)

(assert (=> b!7769263 (=> res!3097188 e!4603514)))

(assert (=> b!7769263 (= res!3097188 e!4603517)))

(declare-fun res!3097190 () Bool)

(assert (=> b!7769263 (=> (not res!3097190) (not e!4603517))))

(assert (=> b!7769263 (= res!3097190 lt!2671281)))

(declare-fun b!7769264 () Bool)

(declare-fun res!3097191 () Bool)

(assert (=> b!7769264 (=> res!3097191 e!4603513)))

(assert (=> b!7769264 (= res!3097191 (not (isEmpty!42137 (tail!15420 (tail!15420 s!14904)))))))

(declare-fun bm!719921 () Bool)

(assert (=> bm!719921 (= call!719926 (isEmpty!42137 (tail!15420 s!14904)))))

(declare-fun b!7769265 () Bool)

(assert (=> b!7769265 (= e!4603513 (not (= (head!15880 (tail!15420 s!14904)) (c!1431846 (derivativeStep!6098 lt!2671263 (head!15880 s!14904))))))))

(declare-fun b!7769266 () Bool)

(assert (=> b!7769266 (= e!4603515 (nullable!9142 (derivativeStep!6098 lt!2671263 (head!15880 s!14904))))))

(declare-fun b!7769267 () Bool)

(assert (=> b!7769267 (= e!4603518 (= lt!2671281 call!719926))))

(declare-fun b!7769268 () Bool)

(assert (=> b!7769268 (= e!4603518 e!4603519)))

(declare-fun c!1431930 () Bool)

(assert (=> b!7769268 (= c!1431930 ((_ is EmptyLang!20753) (derivativeStep!6098 lt!2671263 (head!15880 s!14904))))))

(assert (= (and d!2344174 c!1431929) b!7769266))

(assert (= (and d!2344174 (not c!1431929)) b!7769256))

(assert (= (and d!2344174 c!1431931) b!7769267))

(assert (= (and d!2344174 (not c!1431931)) b!7769268))

(assert (= (and b!7769268 c!1431930) b!7769258))

(assert (= (and b!7769268 (not c!1431930)) b!7769261))

(assert (= (and b!7769261 (not res!3097186)) b!7769263))

(assert (= (and b!7769263 res!3097190) b!7769255))

(assert (= (and b!7769255 res!3097185) b!7769259))

(assert (= (and b!7769259 res!3097187) b!7769262))

(assert (= (and b!7769263 (not res!3097188)) b!7769260))

(assert (= (and b!7769260 res!3097189) b!7769257))

(assert (= (and b!7769257 (not res!3097184)) b!7769264))

(assert (= (and b!7769264 (not res!3097191)) b!7769265))

(assert (= (or b!7769267 b!7769255 b!7769257) bm!719921))

(assert (=> b!7769266 m!8223896))

(declare-fun m!8223968 () Bool)

(assert (=> b!7769266 m!8223968))

(assert (=> b!7769264 m!8223890))

(declare-fun m!8223970 () Bool)

(assert (=> b!7769264 m!8223970))

(assert (=> b!7769264 m!8223970))

(declare-fun m!8223972 () Bool)

(assert (=> b!7769264 m!8223972))

(assert (=> b!7769256 m!8223890))

(declare-fun m!8223974 () Bool)

(assert (=> b!7769256 m!8223974))

(assert (=> b!7769256 m!8223896))

(assert (=> b!7769256 m!8223974))

(declare-fun m!8223976 () Bool)

(assert (=> b!7769256 m!8223976))

(assert (=> b!7769256 m!8223890))

(assert (=> b!7769256 m!8223970))

(assert (=> b!7769256 m!8223976))

(assert (=> b!7769256 m!8223970))

(declare-fun m!8223978 () Bool)

(assert (=> b!7769256 m!8223978))

(assert (=> b!7769265 m!8223890))

(assert (=> b!7769265 m!8223974))

(assert (=> d!2344174 m!8223890))

(assert (=> d!2344174 m!8223892))

(assert (=> d!2344174 m!8223896))

(declare-fun m!8223980 () Bool)

(assert (=> d!2344174 m!8223980))

(assert (=> b!7769262 m!8223890))

(assert (=> b!7769262 m!8223974))

(assert (=> bm!719921 m!8223890))

(assert (=> bm!719921 m!8223892))

(assert (=> b!7769259 m!8223890))

(assert (=> b!7769259 m!8223970))

(assert (=> b!7769259 m!8223970))

(assert (=> b!7769259 m!8223972))

(assert (=> b!7769049 d!2344174))

(declare-fun b!7769269 () Bool)

(declare-fun e!4603522 () Regex!20753)

(declare-fun e!4603524 () Regex!20753)

(assert (=> b!7769269 (= e!4603522 e!4603524)))

(declare-fun c!1431936 () Bool)

(assert (=> b!7769269 (= c!1431936 ((_ is ElementMatch!20753) lt!2671263))))

(declare-fun b!7769270 () Bool)

(assert (=> b!7769270 (= e!4603524 (ite (= (head!15880 s!14904) (c!1431846 lt!2671263)) EmptyExpr!20753 EmptyLang!20753))))

(declare-fun b!7769271 () Bool)

(declare-fun e!4603521 () Regex!20753)

(declare-fun call!719930 () Regex!20753)

(assert (=> b!7769271 (= e!4603521 (Concat!29598 call!719930 lt!2671263))))

(declare-fun c!1431932 () Bool)

(declare-fun call!719927 () Regex!20753)

(declare-fun bm!719922 () Bool)

(declare-fun c!1431934 () Bool)

(assert (=> bm!719922 (= call!719927 (derivativeStep!6098 (ite c!1431932 (regOne!42019 lt!2671263) (ite c!1431934 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))) (head!15880 s!14904)))))

(declare-fun bm!719923 () Bool)

(assert (=> bm!719923 (= call!719930 call!719927)))

(declare-fun call!719928 () Regex!20753)

(declare-fun bm!719924 () Bool)

(assert (=> bm!719924 (= call!719928 (derivativeStep!6098 (ite c!1431932 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)) (head!15880 s!14904)))))

(declare-fun b!7769272 () Bool)

(declare-fun e!4603523 () Regex!20753)

(assert (=> b!7769272 (= e!4603523 (Union!20753 call!719927 call!719928))))

(declare-fun b!7769273 () Bool)

(assert (=> b!7769273 (= e!4603522 EmptyLang!20753)))

(declare-fun bm!719925 () Bool)

(declare-fun call!719929 () Regex!20753)

(assert (=> bm!719925 (= call!719929 call!719930)))

(declare-fun e!4603520 () Regex!20753)

(declare-fun b!7769274 () Bool)

(assert (=> b!7769274 (= e!4603520 (Union!20753 (Concat!29598 call!719929 (regTwo!42018 lt!2671263)) call!719928))))

(declare-fun b!7769275 () Bool)

(assert (=> b!7769275 (= e!4603520 (Union!20753 (Concat!29598 call!719929 (regTwo!42018 lt!2671263)) EmptyLang!20753))))

(declare-fun b!7769276 () Bool)

(declare-fun c!1431933 () Bool)

(assert (=> b!7769276 (= c!1431933 (nullable!9142 (regOne!42018 lt!2671263)))))

(assert (=> b!7769276 (= e!4603521 e!4603520)))

(declare-fun d!2344176 () Bool)

(declare-fun lt!2671282 () Regex!20753)

(assert (=> d!2344176 (validRegex!11167 lt!2671282)))

(assert (=> d!2344176 (= lt!2671282 e!4603522)))

(declare-fun c!1431935 () Bool)

(assert (=> d!2344176 (= c!1431935 (or ((_ is EmptyExpr!20753) lt!2671263) ((_ is EmptyLang!20753) lt!2671263)))))

(assert (=> d!2344176 (validRegex!11167 lt!2671263)))

(assert (=> d!2344176 (= (derivativeStep!6098 lt!2671263 (head!15880 s!14904)) lt!2671282)))

(declare-fun b!7769277 () Bool)

(assert (=> b!7769277 (= c!1431932 ((_ is Union!20753) lt!2671263))))

(assert (=> b!7769277 (= e!4603524 e!4603523)))

(declare-fun b!7769278 () Bool)

(assert (=> b!7769278 (= e!4603523 e!4603521)))

(assert (=> b!7769278 (= c!1431934 ((_ is Star!20753) lt!2671263))))

(assert (= (and d!2344176 c!1431935) b!7769273))

(assert (= (and d!2344176 (not c!1431935)) b!7769269))

(assert (= (and b!7769269 c!1431936) b!7769270))

(assert (= (and b!7769269 (not c!1431936)) b!7769277))

(assert (= (and b!7769277 c!1431932) b!7769272))

(assert (= (and b!7769277 (not c!1431932)) b!7769278))

(assert (= (and b!7769278 c!1431934) b!7769271))

(assert (= (and b!7769278 (not c!1431934)) b!7769276))

(assert (= (and b!7769276 c!1431933) b!7769274))

(assert (= (and b!7769276 (not c!1431933)) b!7769275))

(assert (= (or b!7769274 b!7769275) bm!719925))

(assert (= (or b!7769271 bm!719925) bm!719923))

(assert (= (or b!7769272 b!7769274) bm!719924))

(assert (= (or b!7769272 bm!719923) bm!719922))

(assert (=> bm!719922 m!8223894))

(declare-fun m!8223982 () Bool)

(assert (=> bm!719922 m!8223982))

(assert (=> bm!719924 m!8223894))

(declare-fun m!8223984 () Bool)

(assert (=> bm!719924 m!8223984))

(assert (=> b!7769276 m!8223846))

(declare-fun m!8223986 () Bool)

(assert (=> d!2344176 m!8223986))

(assert (=> d!2344176 m!8223830))

(assert (=> b!7769049 d!2344176))

(declare-fun d!2344178 () Bool)

(assert (=> d!2344178 (= (head!15880 s!14904) (h!79918 s!14904))))

(assert (=> b!7769049 d!2344178))

(declare-fun d!2344180 () Bool)

(assert (=> d!2344180 (= (tail!15420 s!14904) (t!388329 s!14904))))

(assert (=> b!7769049 d!2344180))

(declare-fun b!7769279 () Bool)

(declare-fun e!4603527 () Regex!20753)

(declare-fun e!4603529 () Regex!20753)

(assert (=> b!7769279 (= e!4603527 e!4603529)))

(declare-fun c!1431941 () Bool)

(assert (=> b!7769279 (= c!1431941 ((_ is ElementMatch!20753) (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))))))

(declare-fun b!7769280 () Bool)

(assert (=> b!7769280 (= e!4603529 (ite (= (h!79918 s!14904) (c!1431846 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))))) EmptyExpr!20753 EmptyLang!20753))))

(declare-fun call!719934 () Regex!20753)

(declare-fun b!7769281 () Bool)

(declare-fun e!4603526 () Regex!20753)

(assert (=> b!7769281 (= e!4603526 (Concat!29598 call!719934 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))))))

(declare-fun call!719931 () Regex!20753)

(declare-fun c!1431937 () Bool)

(declare-fun bm!719926 () Bool)

(declare-fun c!1431939 () Bool)

(assert (=> bm!719926 (= call!719931 (derivativeStep!6098 (ite c!1431937 (regOne!42019 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))) (ite c!1431939 (reg!21082 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))) (regOne!42018 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))))) (h!79918 s!14904)))))

(declare-fun bm!719927 () Bool)

(assert (=> bm!719927 (= call!719934 call!719931)))

(declare-fun bm!719928 () Bool)

(declare-fun call!719932 () Regex!20753)

(assert (=> bm!719928 (= call!719932 (derivativeStep!6098 (ite c!1431937 (regTwo!42019 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))) (regTwo!42018 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))))) (h!79918 s!14904)))))

(declare-fun b!7769282 () Bool)

(declare-fun e!4603528 () Regex!20753)

(assert (=> b!7769282 (= e!4603528 (Union!20753 call!719931 call!719932))))

(declare-fun b!7769283 () Bool)

(assert (=> b!7769283 (= e!4603527 EmptyLang!20753)))

(declare-fun bm!719929 () Bool)

(declare-fun call!719933 () Regex!20753)

(assert (=> bm!719929 (= call!719933 call!719934)))

(declare-fun b!7769284 () Bool)

(declare-fun e!4603525 () Regex!20753)

(assert (=> b!7769284 (= e!4603525 (Union!20753 (Concat!29598 call!719933 (regTwo!42018 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))))) call!719932))))

(declare-fun b!7769285 () Bool)

(assert (=> b!7769285 (= e!4603525 (Union!20753 (Concat!29598 call!719933 (regTwo!42018 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))))) EmptyLang!20753))))

(declare-fun c!1431938 () Bool)

(declare-fun b!7769286 () Bool)

(assert (=> b!7769286 (= c!1431938 (nullable!9142 (regOne!42018 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))))))))

(assert (=> b!7769286 (= e!4603526 e!4603525)))

(declare-fun d!2344182 () Bool)

(declare-fun lt!2671283 () Regex!20753)

(assert (=> d!2344182 (validRegex!11167 lt!2671283)))

(assert (=> d!2344182 (= lt!2671283 e!4603527)))

(declare-fun c!1431940 () Bool)

(assert (=> d!2344182 (= c!1431940 (or ((_ is EmptyExpr!20753) (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))) ((_ is EmptyLang!20753) (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))))))))

(assert (=> d!2344182 (validRegex!11167 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))))))

(assert (=> d!2344182 (= (derivativeStep!6098 (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263))) (h!79918 s!14904)) lt!2671283)))

(declare-fun b!7769287 () Bool)

(assert (=> b!7769287 (= c!1431937 ((_ is Union!20753) (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))))))

(assert (=> b!7769287 (= e!4603529 e!4603528)))

(declare-fun b!7769288 () Bool)

(assert (=> b!7769288 (= e!4603528 e!4603526)))

(assert (=> b!7769288 (= c!1431939 ((_ is Star!20753) (ite c!1431859 (regOne!42019 lt!2671263) (ite c!1431861 (reg!21082 lt!2671263) (regOne!42018 lt!2671263)))))))

(assert (= (and d!2344182 c!1431940) b!7769283))

(assert (= (and d!2344182 (not c!1431940)) b!7769279))

(assert (= (and b!7769279 c!1431941) b!7769280))

(assert (= (and b!7769279 (not c!1431941)) b!7769287))

(assert (= (and b!7769287 c!1431937) b!7769282))

(assert (= (and b!7769287 (not c!1431937)) b!7769288))

(assert (= (and b!7769288 c!1431939) b!7769281))

(assert (= (and b!7769288 (not c!1431939)) b!7769286))

(assert (= (and b!7769286 c!1431938) b!7769284))

(assert (= (and b!7769286 (not c!1431938)) b!7769285))

(assert (= (or b!7769284 b!7769285) bm!719929))

(assert (= (or b!7769281 bm!719929) bm!719927))

(assert (= (or b!7769282 b!7769284) bm!719928))

(assert (= (or b!7769282 bm!719927) bm!719926))

(declare-fun m!8223988 () Bool)

(assert (=> bm!719926 m!8223988))

(declare-fun m!8223990 () Bool)

(assert (=> bm!719928 m!8223990))

(declare-fun m!8223992 () Bool)

(assert (=> b!7769286 m!8223992))

(declare-fun m!8223994 () Bool)

(assert (=> d!2344182 m!8223994))

(declare-fun m!8223996 () Bool)

(assert (=> d!2344182 m!8223996))

(assert (=> bm!719862 d!2344182))

(declare-fun d!2344184 () Bool)

(declare-fun nullableFct!3584 (Regex!20753) Bool)

(assert (=> d!2344184 (= (nullable!9142 lt!2671264) (nullableFct!3584 lt!2671264))))

(declare-fun bs!1966075 () Bool)

(assert (= bs!1966075 d!2344184))

(declare-fun m!8223998 () Bool)

(assert (=> bs!1966075 m!8223998))

(assert (=> b!7769045 d!2344184))

(declare-fun d!2344186 () Bool)

(assert (=> d!2344186 (= (isEmpty!42137 (t!388329 s!14904)) ((_ is Nil!73470) (t!388329 s!14904)))))

(assert (=> bm!719890 d!2344186))

(declare-fun d!2344188 () Bool)

(assert (=> d!2344188 (= (isEmpty!42137 s!14904) ((_ is Nil!73470) s!14904))))

(assert (=> d!2344160 d!2344188))

(assert (=> d!2344160 d!2344154))

(declare-fun d!2344190 () Bool)

(assert (=> d!2344190 (= (head!15880 (t!388329 s!14904)) (h!79918 (t!388329 s!14904)))))

(assert (=> b!7769044 d!2344190))

(declare-fun d!2344192 () Bool)

(assert (=> d!2344192 (= (isEmpty!42137 (tail!15420 (t!388329 s!14904))) ((_ is Nil!73470) (tail!15420 (t!388329 s!14904))))))

(assert (=> b!7769043 d!2344192))

(declare-fun d!2344194 () Bool)

(assert (=> d!2344194 (= (tail!15420 (t!388329 s!14904)) (t!388329 (t!388329 s!14904)))))

(assert (=> b!7769043 d!2344194))

(declare-fun d!2344196 () Bool)

(assert (=> d!2344196 (= (nullable!9142 (reg!21082 lt!2671263)) (nullableFct!3584 (reg!21082 lt!2671263)))))

(declare-fun bs!1966076 () Bool)

(assert (= bs!1966076 d!2344196))

(declare-fun m!8224000 () Bool)

(assert (=> bs!1966076 m!8224000))

(assert (=> b!7768996 d!2344196))

(assert (=> b!7769041 d!2344190))

(declare-fun d!2344198 () Bool)

(assert (=> d!2344198 (= (nullable!9142 (reg!21082 lt!2671262)) (nullableFct!3584 (reg!21082 lt!2671262)))))

(declare-fun bs!1966077 () Bool)

(assert (= bs!1966077 d!2344198))

(declare-fun m!8224002 () Bool)

(assert (=> bs!1966077 m!8224002))

(assert (=> b!7769070 d!2344198))

(declare-fun bm!719930 () Bool)

(declare-fun call!719935 () Bool)

(declare-fun call!719937 () Bool)

(assert (=> bm!719930 (= call!719935 call!719937)))

(declare-fun b!7769289 () Bool)

(declare-fun e!4603534 () Bool)

(declare-fun e!4603530 () Bool)

(assert (=> b!7769289 (= e!4603534 e!4603530)))

(declare-fun c!1431943 () Bool)

(assert (=> b!7769289 (= c!1431943 ((_ is Union!20753) (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))))))

(declare-fun call!719936 () Bool)

(declare-fun bm!719931 () Bool)

(assert (=> bm!719931 (= call!719936 (validRegex!11167 (ite c!1431943 (regOne!42019 (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))) (regTwo!42018 (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))))))))

(declare-fun b!7769290 () Bool)

(declare-fun res!3097194 () Bool)

(declare-fun e!4603536 () Bool)

(assert (=> b!7769290 (=> res!3097194 e!4603536)))

(assert (=> b!7769290 (= res!3097194 (not ((_ is Concat!29598) (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263))))))))

(assert (=> b!7769290 (= e!4603530 e!4603536)))

(declare-fun b!7769291 () Bool)

(declare-fun e!4603531 () Bool)

(assert (=> b!7769291 (= e!4603536 e!4603531)))

(declare-fun res!3097193 () Bool)

(assert (=> b!7769291 (=> (not res!3097193) (not e!4603531))))

(assert (=> b!7769291 (= res!3097193 call!719935)))

(declare-fun b!7769292 () Bool)

(declare-fun e!4603535 () Bool)

(assert (=> b!7769292 (= e!4603535 call!719935)))

(declare-fun d!2344200 () Bool)

(declare-fun res!3097196 () Bool)

(declare-fun e!4603532 () Bool)

(assert (=> d!2344200 (=> res!3097196 e!4603532)))

(assert (=> d!2344200 (= res!3097196 ((_ is ElementMatch!20753) (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))))))

(assert (=> d!2344200 (= (validRegex!11167 (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))) e!4603532)))

(declare-fun bm!719932 () Bool)

(declare-fun c!1431942 () Bool)

(assert (=> bm!719932 (= call!719937 (validRegex!11167 (ite c!1431942 (reg!21082 (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))) (ite c!1431943 (regTwo!42019 (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))) (regOne!42018 (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263))))))))))

(declare-fun b!7769293 () Bool)

(declare-fun res!3097192 () Bool)

(assert (=> b!7769293 (=> (not res!3097192) (not e!4603535))))

(assert (=> b!7769293 (= res!3097192 call!719936)))

(assert (=> b!7769293 (= e!4603530 e!4603535)))

(declare-fun b!7769294 () Bool)

(assert (=> b!7769294 (= e!4603532 e!4603534)))

(assert (=> b!7769294 (= c!1431942 ((_ is Star!20753) (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))))))

(declare-fun b!7769295 () Bool)

(declare-fun e!4603533 () Bool)

(assert (=> b!7769295 (= e!4603533 call!719937)))

(declare-fun b!7769296 () Bool)

(assert (=> b!7769296 (= e!4603531 call!719936)))

(declare-fun b!7769297 () Bool)

(assert (=> b!7769297 (= e!4603534 e!4603533)))

(declare-fun res!3097195 () Bool)

(assert (=> b!7769297 (= res!3097195 (not (nullable!9142 (reg!21082 (ite c!1431875 (reg!21082 lt!2671263) (ite c!1431876 (regTwo!42019 lt!2671263) (regOne!42018 lt!2671263)))))))))

(assert (=> b!7769297 (=> (not res!3097195) (not e!4603533))))

(assert (= (and d!2344200 (not res!3097196)) b!7769294))

(assert (= (and b!7769294 c!1431942) b!7769297))

(assert (= (and b!7769294 (not c!1431942)) b!7769289))

(assert (= (and b!7769297 res!3097195) b!7769295))

(assert (= (and b!7769289 c!1431943) b!7769293))

(assert (= (and b!7769289 (not c!1431943)) b!7769290))

(assert (= (and b!7769293 res!3097192) b!7769292))

(assert (= (and b!7769290 (not res!3097194)) b!7769291))

(assert (= (and b!7769291 res!3097193) b!7769296))

(assert (= (or b!7769292 b!7769291) bm!719930))

(assert (= (or b!7769293 b!7769296) bm!719931))

(assert (= (or b!7769295 bm!719930) bm!719932))

(declare-fun m!8224004 () Bool)

(assert (=> bm!719931 m!8224004))

(declare-fun m!8224006 () Bool)

(assert (=> bm!719932 m!8224006))

(declare-fun m!8224008 () Bool)

(assert (=> b!7769297 m!8224008))

(assert (=> bm!719884 d!2344200))

(assert (=> b!7769038 d!2344192))

(assert (=> b!7769038 d!2344194))

(declare-fun d!2344202 () Bool)

(assert (=> d!2344202 (= (nullable!9142 (regOne!42018 r!25924)) (nullableFct!3584 (regOne!42018 r!25924)))))

(declare-fun bs!1966078 () Bool)

(assert (= bs!1966078 d!2344202))

(declare-fun m!8224010 () Bool)

(assert (=> bs!1966078 m!8224010))

(assert (=> b!7768967 d!2344202))

(declare-fun d!2344204 () Bool)

(assert (=> d!2344204 (= (nullable!9142 lt!2671263) (nullableFct!3584 lt!2671263))))

(declare-fun bs!1966079 () Bool)

(assert (= bs!1966079 d!2344204))

(declare-fun m!8224012 () Bool)

(assert (=> bs!1966079 m!8224012))

(assert (=> b!7769059 d!2344204))

(declare-fun b!7769298 () Bool)

(declare-fun res!3097198 () Bool)

(declare-fun e!4603541 () Bool)

(assert (=> b!7769298 (=> (not res!3097198) (not e!4603541))))

(declare-fun call!719938 () Bool)

(assert (=> b!7769298 (= res!3097198 (not call!719938))))

(declare-fun b!7769299 () Bool)

(declare-fun e!4603539 () Bool)

(assert (=> b!7769299 (= e!4603539 (matchR!10215 (derivativeStep!6098 (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904))) (head!15880 (tail!15420 (t!388329 s!14904)))) (tail!15420 (tail!15420 (t!388329 s!14904)))))))

(declare-fun b!7769300 () Bool)

(declare-fun e!4603540 () Bool)

(declare-fun e!4603537 () Bool)

(assert (=> b!7769300 (= e!4603540 e!4603537)))

(declare-fun res!3097197 () Bool)

(assert (=> b!7769300 (=> res!3097197 e!4603537)))

(assert (=> b!7769300 (= res!3097197 call!719938)))

(declare-fun b!7769301 () Bool)

(declare-fun e!4603543 () Bool)

(declare-fun lt!2671284 () Bool)

(assert (=> b!7769301 (= e!4603543 (not lt!2671284))))

(declare-fun d!2344206 () Bool)

(declare-fun e!4603542 () Bool)

(assert (=> d!2344206 e!4603542))

(declare-fun c!1431946 () Bool)

(assert (=> d!2344206 (= c!1431946 ((_ is EmptyExpr!20753) (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904)))))))

(assert (=> d!2344206 (= lt!2671284 e!4603539)))

(declare-fun c!1431944 () Bool)

(assert (=> d!2344206 (= c!1431944 (isEmpty!42137 (tail!15420 (t!388329 s!14904))))))

(assert (=> d!2344206 (validRegex!11167 (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904))))))

(assert (=> d!2344206 (= (matchR!10215 (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904))) (tail!15420 (t!388329 s!14904))) lt!2671284)))

(declare-fun b!7769302 () Bool)

(declare-fun res!3097200 () Bool)

(assert (=> b!7769302 (=> (not res!3097200) (not e!4603541))))

(assert (=> b!7769302 (= res!3097200 (isEmpty!42137 (tail!15420 (tail!15420 (t!388329 s!14904)))))))

(declare-fun b!7769303 () Bool)

(declare-fun e!4603538 () Bool)

(assert (=> b!7769303 (= e!4603538 e!4603540)))

(declare-fun res!3097202 () Bool)

(assert (=> b!7769303 (=> (not res!3097202) (not e!4603540))))

(assert (=> b!7769303 (= res!3097202 (not lt!2671284))))

(declare-fun b!7769304 () Bool)

(declare-fun res!3097199 () Bool)

(assert (=> b!7769304 (=> res!3097199 e!4603538)))

(assert (=> b!7769304 (= res!3097199 (not ((_ is ElementMatch!20753) (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904))))))))

(assert (=> b!7769304 (= e!4603543 e!4603538)))

(declare-fun b!7769305 () Bool)

(assert (=> b!7769305 (= e!4603541 (= (head!15880 (tail!15420 (t!388329 s!14904))) (c!1431846 (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904))))))))

(declare-fun b!7769306 () Bool)

(declare-fun res!3097201 () Bool)

(assert (=> b!7769306 (=> res!3097201 e!4603538)))

(assert (=> b!7769306 (= res!3097201 e!4603541)))

(declare-fun res!3097203 () Bool)

(assert (=> b!7769306 (=> (not res!3097203) (not e!4603541))))

(assert (=> b!7769306 (= res!3097203 lt!2671284)))

(declare-fun b!7769307 () Bool)

(declare-fun res!3097204 () Bool)

(assert (=> b!7769307 (=> res!3097204 e!4603537)))

(assert (=> b!7769307 (= res!3097204 (not (isEmpty!42137 (tail!15420 (tail!15420 (t!388329 s!14904))))))))

(declare-fun bm!719933 () Bool)

(assert (=> bm!719933 (= call!719938 (isEmpty!42137 (tail!15420 (t!388329 s!14904))))))

(declare-fun b!7769308 () Bool)

(assert (=> b!7769308 (= e!4603537 (not (= (head!15880 (tail!15420 (t!388329 s!14904))) (c!1431846 (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904)))))))))

(declare-fun b!7769309 () Bool)

(assert (=> b!7769309 (= e!4603539 (nullable!9142 (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904)))))))

(declare-fun b!7769310 () Bool)

(assert (=> b!7769310 (= e!4603542 (= lt!2671284 call!719938))))

(declare-fun b!7769311 () Bool)

(assert (=> b!7769311 (= e!4603542 e!4603543)))

(declare-fun c!1431945 () Bool)

(assert (=> b!7769311 (= c!1431945 ((_ is EmptyLang!20753) (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904)))))))

(assert (= (and d!2344206 c!1431944) b!7769309))

(assert (= (and d!2344206 (not c!1431944)) b!7769299))

(assert (= (and d!2344206 c!1431946) b!7769310))

(assert (= (and d!2344206 (not c!1431946)) b!7769311))

(assert (= (and b!7769311 c!1431945) b!7769301))

(assert (= (and b!7769311 (not c!1431945)) b!7769304))

(assert (= (and b!7769304 (not res!3097199)) b!7769306))

(assert (= (and b!7769306 res!3097203) b!7769298))

(assert (= (and b!7769298 res!3097198) b!7769302))

(assert (= (and b!7769302 res!3097200) b!7769305))

(assert (= (and b!7769306 (not res!3097201)) b!7769303))

(assert (= (and b!7769303 res!3097202) b!7769300))

(assert (= (and b!7769300 (not res!3097197)) b!7769307))

(assert (= (and b!7769307 (not res!3097204)) b!7769308))

(assert (= (or b!7769310 b!7769298 b!7769300) bm!719933))

(assert (=> b!7769309 m!8223880))

(declare-fun m!8224014 () Bool)

(assert (=> b!7769309 m!8224014))

(assert (=> b!7769307 m!8223874))

(declare-fun m!8224016 () Bool)

(assert (=> b!7769307 m!8224016))

(assert (=> b!7769307 m!8224016))

(declare-fun m!8224018 () Bool)

(assert (=> b!7769307 m!8224018))

(assert (=> b!7769299 m!8223874))

(declare-fun m!8224020 () Bool)

(assert (=> b!7769299 m!8224020))

(assert (=> b!7769299 m!8223880))

(assert (=> b!7769299 m!8224020))

(declare-fun m!8224022 () Bool)

(assert (=> b!7769299 m!8224022))

(assert (=> b!7769299 m!8223874))

(assert (=> b!7769299 m!8224016))

(assert (=> b!7769299 m!8224022))

(assert (=> b!7769299 m!8224016))

(declare-fun m!8224024 () Bool)

(assert (=> b!7769299 m!8224024))

(assert (=> b!7769308 m!8223874))

(assert (=> b!7769308 m!8224020))

(assert (=> d!2344206 m!8223874))

(assert (=> d!2344206 m!8223876))

(assert (=> d!2344206 m!8223880))

(declare-fun m!8224026 () Bool)

(assert (=> d!2344206 m!8224026))

(assert (=> b!7769305 m!8223874))

(assert (=> b!7769305 m!8224020))

(assert (=> bm!719933 m!8223874))

(assert (=> bm!719933 m!8223876))

(assert (=> b!7769302 m!8223874))

(assert (=> b!7769302 m!8224016))

(assert (=> b!7769302 m!8224016))

(assert (=> b!7769302 m!8224018))

(assert (=> b!7769035 d!2344206))

(declare-fun b!7769312 () Bool)

(declare-fun e!4603546 () Regex!20753)

(declare-fun e!4603548 () Regex!20753)

(assert (=> b!7769312 (= e!4603546 e!4603548)))

(declare-fun c!1431951 () Bool)

(assert (=> b!7769312 (= c!1431951 ((_ is ElementMatch!20753) lt!2671264))))

(declare-fun b!7769313 () Bool)

(assert (=> b!7769313 (= e!4603548 (ite (= (head!15880 (t!388329 s!14904)) (c!1431846 lt!2671264)) EmptyExpr!20753 EmptyLang!20753))))

(declare-fun b!7769314 () Bool)

(declare-fun e!4603545 () Regex!20753)

(declare-fun call!719942 () Regex!20753)

(assert (=> b!7769314 (= e!4603545 (Concat!29598 call!719942 lt!2671264))))

(declare-fun c!1431949 () Bool)

(declare-fun bm!719934 () Bool)

(declare-fun call!719939 () Regex!20753)

(declare-fun c!1431947 () Bool)

(assert (=> bm!719934 (= call!719939 (derivativeStep!6098 (ite c!1431947 (regOne!42019 lt!2671264) (ite c!1431949 (reg!21082 lt!2671264) (regOne!42018 lt!2671264))) (head!15880 (t!388329 s!14904))))))

(declare-fun bm!719935 () Bool)

(assert (=> bm!719935 (= call!719942 call!719939)))

(declare-fun call!719940 () Regex!20753)

(declare-fun bm!719936 () Bool)

(assert (=> bm!719936 (= call!719940 (derivativeStep!6098 (ite c!1431947 (regTwo!42019 lt!2671264) (regTwo!42018 lt!2671264)) (head!15880 (t!388329 s!14904))))))

(declare-fun b!7769315 () Bool)

(declare-fun e!4603547 () Regex!20753)

(assert (=> b!7769315 (= e!4603547 (Union!20753 call!719939 call!719940))))

(declare-fun b!7769316 () Bool)

(assert (=> b!7769316 (= e!4603546 EmptyLang!20753)))

(declare-fun bm!719937 () Bool)

(declare-fun call!719941 () Regex!20753)

(assert (=> bm!719937 (= call!719941 call!719942)))

(declare-fun b!7769317 () Bool)

(declare-fun e!4603544 () Regex!20753)

(assert (=> b!7769317 (= e!4603544 (Union!20753 (Concat!29598 call!719941 (regTwo!42018 lt!2671264)) call!719940))))

(declare-fun b!7769318 () Bool)

(assert (=> b!7769318 (= e!4603544 (Union!20753 (Concat!29598 call!719941 (regTwo!42018 lt!2671264)) EmptyLang!20753))))

(declare-fun b!7769319 () Bool)

(declare-fun c!1431948 () Bool)

(assert (=> b!7769319 (= c!1431948 (nullable!9142 (regOne!42018 lt!2671264)))))

(assert (=> b!7769319 (= e!4603545 e!4603544)))

(declare-fun d!2344208 () Bool)

(declare-fun lt!2671285 () Regex!20753)

(assert (=> d!2344208 (validRegex!11167 lt!2671285)))

(assert (=> d!2344208 (= lt!2671285 e!4603546)))

(declare-fun c!1431950 () Bool)

(assert (=> d!2344208 (= c!1431950 (or ((_ is EmptyExpr!20753) lt!2671264) ((_ is EmptyLang!20753) lt!2671264)))))

(assert (=> d!2344208 (validRegex!11167 lt!2671264)))

(assert (=> d!2344208 (= (derivativeStep!6098 lt!2671264 (head!15880 (t!388329 s!14904))) lt!2671285)))

(declare-fun b!7769320 () Bool)

(assert (=> b!7769320 (= c!1431947 ((_ is Union!20753) lt!2671264))))

(assert (=> b!7769320 (= e!4603548 e!4603547)))

(declare-fun b!7769321 () Bool)

(assert (=> b!7769321 (= e!4603547 e!4603545)))

(assert (=> b!7769321 (= c!1431949 ((_ is Star!20753) lt!2671264))))

(assert (= (and d!2344208 c!1431950) b!7769316))

(assert (= (and d!2344208 (not c!1431950)) b!7769312))

(assert (= (and b!7769312 c!1431951) b!7769313))

(assert (= (and b!7769312 (not c!1431951)) b!7769320))

(assert (= (and b!7769320 c!1431947) b!7769315))

(assert (= (and b!7769320 (not c!1431947)) b!7769321))

(assert (= (and b!7769321 c!1431949) b!7769314))

(assert (= (and b!7769321 (not c!1431949)) b!7769319))

(assert (= (and b!7769319 c!1431948) b!7769317))

(assert (= (and b!7769319 (not c!1431948)) b!7769318))

(assert (= (or b!7769317 b!7769318) bm!719937))

(assert (= (or b!7769314 bm!719937) bm!719935))

(assert (= (or b!7769315 b!7769317) bm!719936))

(assert (= (or b!7769315 bm!719935) bm!719934))

(assert (=> bm!719934 m!8223878))

(declare-fun m!8224028 () Bool)

(assert (=> bm!719934 m!8224028))

(assert (=> bm!719936 m!8223878))

(declare-fun m!8224030 () Bool)

(assert (=> bm!719936 m!8224030))

(declare-fun m!8224032 () Bool)

(assert (=> b!7769319 m!8224032))

(declare-fun m!8224034 () Bool)

(assert (=> d!2344208 m!8224034))

(assert (=> d!2344208 m!8223886))

(assert (=> b!7769035 d!2344208))

(assert (=> b!7769035 d!2344190))

(assert (=> b!7769035 d!2344194))

(declare-fun bm!719938 () Bool)

(declare-fun call!719943 () Bool)

(declare-fun call!719945 () Bool)

(assert (=> bm!719938 (= call!719943 call!719945)))

(declare-fun b!7769322 () Bool)

(declare-fun e!4603553 () Bool)

(declare-fun e!4603549 () Bool)

(assert (=> b!7769322 (= e!4603553 e!4603549)))

(declare-fun c!1431953 () Bool)

(assert (=> b!7769322 (= c!1431953 ((_ is Union!20753) (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))))))

(declare-fun bm!719939 () Bool)

(declare-fun call!719944 () Bool)

(assert (=> bm!719939 (= call!719944 (validRegex!11167 (ite c!1431953 (regOne!42019 (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))) (regTwo!42018 (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))))))))

(declare-fun b!7769323 () Bool)

(declare-fun res!3097207 () Bool)

(declare-fun e!4603555 () Bool)

(assert (=> b!7769323 (=> res!3097207 e!4603555)))

(assert (=> b!7769323 (= res!3097207 (not ((_ is Concat!29598) (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263)))))))

(assert (=> b!7769323 (= e!4603549 e!4603555)))

(declare-fun b!7769324 () Bool)

(declare-fun e!4603550 () Bool)

(assert (=> b!7769324 (= e!4603555 e!4603550)))

(declare-fun res!3097206 () Bool)

(assert (=> b!7769324 (=> (not res!3097206) (not e!4603550))))

(assert (=> b!7769324 (= res!3097206 call!719943)))

(declare-fun b!7769325 () Bool)

(declare-fun e!4603554 () Bool)

(assert (=> b!7769325 (= e!4603554 call!719943)))

(declare-fun d!2344210 () Bool)

(declare-fun res!3097209 () Bool)

(declare-fun e!4603551 () Bool)

(assert (=> d!2344210 (=> res!3097209 e!4603551)))

(assert (=> d!2344210 (= res!3097209 ((_ is ElementMatch!20753) (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))))))

(assert (=> d!2344210 (= (validRegex!11167 (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))) e!4603551)))

(declare-fun c!1431952 () Bool)

(declare-fun bm!719940 () Bool)

(assert (=> bm!719940 (= call!719945 (validRegex!11167 (ite c!1431952 (reg!21082 (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))) (ite c!1431953 (regTwo!42019 (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))) (regOne!42018 (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263)))))))))

(declare-fun b!7769326 () Bool)

(declare-fun res!3097205 () Bool)

(assert (=> b!7769326 (=> (not res!3097205) (not e!4603554))))

(assert (=> b!7769326 (= res!3097205 call!719944)))

(assert (=> b!7769326 (= e!4603549 e!4603554)))

(declare-fun b!7769327 () Bool)

(assert (=> b!7769327 (= e!4603551 e!4603553)))

(assert (=> b!7769327 (= c!1431952 ((_ is Star!20753) (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))))))

(declare-fun b!7769328 () Bool)

(declare-fun e!4603552 () Bool)

(assert (=> b!7769328 (= e!4603552 call!719945)))

(declare-fun b!7769329 () Bool)

(assert (=> b!7769329 (= e!4603550 call!719944)))

(declare-fun b!7769330 () Bool)

(assert (=> b!7769330 (= e!4603553 e!4603552)))

(declare-fun res!3097208 () Bool)

(assert (=> b!7769330 (= res!3097208 (not (nullable!9142 (reg!21082 (ite c!1431876 (regOne!42019 lt!2671263) (regTwo!42018 lt!2671263))))))))

(assert (=> b!7769330 (=> (not res!3097208) (not e!4603552))))

(assert (= (and d!2344210 (not res!3097209)) b!7769327))

(assert (= (and b!7769327 c!1431952) b!7769330))

(assert (= (and b!7769327 (not c!1431952)) b!7769322))

(assert (= (and b!7769330 res!3097208) b!7769328))

(assert (= (and b!7769322 c!1431953) b!7769326))

(assert (= (and b!7769322 (not c!1431953)) b!7769323))

(assert (= (and b!7769326 res!3097205) b!7769325))

(assert (= (and b!7769323 (not res!3097207)) b!7769324))

(assert (= (and b!7769324 res!3097206) b!7769329))

(assert (= (or b!7769325 b!7769324) bm!719938))

(assert (= (or b!7769326 b!7769329) bm!719939))

(assert (= (or b!7769328 bm!719938) bm!719940))

(declare-fun m!8224036 () Bool)

(assert (=> bm!719939 m!8224036))

(declare-fun m!8224038 () Bool)

(assert (=> bm!719940 m!8224038))

(declare-fun m!8224040 () Bool)

(assert (=> b!7769330 m!8224040))

(assert (=> bm!719883 d!2344210))

(assert (=> b!7769058 d!2344178))

(declare-fun bm!719941 () Bool)

(declare-fun call!719946 () Bool)

(declare-fun call!719948 () Bool)

(assert (=> bm!719941 (= call!719946 call!719948)))

(declare-fun b!7769331 () Bool)

(declare-fun e!4603560 () Bool)

(declare-fun e!4603556 () Bool)

(assert (=> b!7769331 (= e!4603560 e!4603556)))

(declare-fun c!1431955 () Bool)

(assert (=> b!7769331 (= c!1431955 ((_ is Union!20753) (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))))))

(declare-fun bm!719942 () Bool)

(declare-fun call!719947 () Bool)

(assert (=> bm!719942 (= call!719947 (validRegex!11167 (ite c!1431955 (regOne!42019 (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))) (regTwo!42018 (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))))))))

(declare-fun b!7769332 () Bool)

(declare-fun res!3097212 () Bool)

(declare-fun e!4603562 () Bool)

(assert (=> b!7769332 (=> res!3097212 e!4603562)))

(assert (=> b!7769332 (= res!3097212 (not ((_ is Concat!29598) (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262))))))))

(assert (=> b!7769332 (= e!4603556 e!4603562)))

(declare-fun b!7769333 () Bool)

(declare-fun e!4603557 () Bool)

(assert (=> b!7769333 (= e!4603562 e!4603557)))

(declare-fun res!3097211 () Bool)

(assert (=> b!7769333 (=> (not res!3097211) (not e!4603557))))

(assert (=> b!7769333 (= res!3097211 call!719946)))

(declare-fun b!7769334 () Bool)

(declare-fun e!4603561 () Bool)

(assert (=> b!7769334 (= e!4603561 call!719946)))

(declare-fun d!2344212 () Bool)

(declare-fun res!3097214 () Bool)

(declare-fun e!4603558 () Bool)

(assert (=> d!2344212 (=> res!3097214 e!4603558)))

(assert (=> d!2344212 (= res!3097214 ((_ is ElementMatch!20753) (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))))))

(assert (=> d!2344212 (= (validRegex!11167 (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))) e!4603558)))

(declare-fun bm!719943 () Bool)

(declare-fun c!1431954 () Bool)

(assert (=> bm!719943 (= call!719948 (validRegex!11167 (ite c!1431954 (reg!21082 (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))) (ite c!1431955 (regTwo!42019 (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))) (regOne!42018 (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262))))))))))

(declare-fun b!7769335 () Bool)

(declare-fun res!3097210 () Bool)

(assert (=> b!7769335 (=> (not res!3097210) (not e!4603561))))

(assert (=> b!7769335 (= res!3097210 call!719947)))

(assert (=> b!7769335 (= e!4603556 e!4603561)))

(declare-fun b!7769336 () Bool)

(assert (=> b!7769336 (= e!4603558 e!4603560)))

(assert (=> b!7769336 (= c!1431954 ((_ is Star!20753) (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))))))

(declare-fun b!7769337 () Bool)

(declare-fun e!4603559 () Bool)

(assert (=> b!7769337 (= e!4603559 call!719948)))

(declare-fun b!7769338 () Bool)

(assert (=> b!7769338 (= e!4603557 call!719947)))

(declare-fun b!7769339 () Bool)

(assert (=> b!7769339 (= e!4603560 e!4603559)))

(declare-fun res!3097213 () Bool)

(assert (=> b!7769339 (= res!3097213 (not (nullable!9142 (reg!21082 (ite c!1431891 (reg!21082 lt!2671262) (ite c!1431892 (regTwo!42019 lt!2671262) (regOne!42018 lt!2671262)))))))))

(assert (=> b!7769339 (=> (not res!3097213) (not e!4603559))))

(assert (= (and d!2344212 (not res!3097214)) b!7769336))

(assert (= (and b!7769336 c!1431954) b!7769339))

(assert (= (and b!7769336 (not c!1431954)) b!7769331))

(assert (= (and b!7769339 res!3097213) b!7769337))

(assert (= (and b!7769331 c!1431955) b!7769335))

(assert (= (and b!7769331 (not c!1431955)) b!7769332))

(assert (= (and b!7769335 res!3097210) b!7769334))

(assert (= (and b!7769332 (not res!3097212)) b!7769333))

(assert (= (and b!7769333 res!3097211) b!7769338))

(assert (= (or b!7769334 b!7769333) bm!719941))

(assert (= (or b!7769335 b!7769338) bm!719942))

(assert (= (or b!7769337 bm!719941) bm!719943))

(declare-fun m!8224042 () Bool)

(assert (=> bm!719942 m!8224042))

(declare-fun m!8224044 () Bool)

(assert (=> bm!719943 m!8224044))

(declare-fun m!8224046 () Bool)

(assert (=> b!7769339 m!8224046))

(assert (=> bm!719894 d!2344212))

(declare-fun d!2344214 () Bool)

(assert (=> d!2344214 (= (isEmpty!42137 (tail!15420 s!14904)) ((_ is Nil!73470) (tail!15420 s!14904)))))

(assert (=> b!7769057 d!2344214))

(assert (=> b!7769057 d!2344180))

(declare-fun d!2344216 () Bool)

(assert (=> d!2344216 (= (nullable!9142 (regOne!42018 lt!2671263)) (nullableFct!3584 (regOne!42018 lt!2671263)))))

(declare-fun bs!1966080 () Bool)

(assert (= bs!1966080 d!2344216))

(declare-fun m!8224048 () Bool)

(assert (=> bs!1966080 m!8224048))

(assert (=> b!7768947 d!2344216))

(assert (=> bm!719891 d!2344188))

(assert (=> b!7769055 d!2344178))

(declare-fun b!7769340 () Bool)

(declare-fun e!4603565 () Regex!20753)

(declare-fun e!4603567 () Regex!20753)

(assert (=> b!7769340 (= e!4603565 e!4603567)))

(declare-fun c!1431960 () Bool)

(assert (=> b!7769340 (= c!1431960 ((_ is ElementMatch!20753) (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))))))

(declare-fun b!7769341 () Bool)

(assert (=> b!7769341 (= e!4603567 (ite (= (h!79918 s!14904) (c!1431846 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)))) EmptyExpr!20753 EmptyLang!20753))))

(declare-fun b!7769342 () Bool)

(declare-fun e!4603564 () Regex!20753)

(declare-fun call!719952 () Regex!20753)

(assert (=> b!7769342 (= e!4603564 (Concat!29598 call!719952 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))))))

(declare-fun c!1431958 () Bool)

(declare-fun call!719949 () Regex!20753)

(declare-fun c!1431956 () Bool)

(declare-fun bm!719944 () Bool)

(assert (=> bm!719944 (= call!719949 (derivativeStep!6098 (ite c!1431956 (regOne!42019 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))) (ite c!1431958 (reg!21082 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))) (regOne!42018 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))))) (h!79918 s!14904)))))

(declare-fun bm!719945 () Bool)

(assert (=> bm!719945 (= call!719952 call!719949)))

(declare-fun call!719950 () Regex!20753)

(declare-fun bm!719946 () Bool)

(assert (=> bm!719946 (= call!719950 (derivativeStep!6098 (ite c!1431956 (regTwo!42019 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))) (regTwo!42018 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)))) (h!79918 s!14904)))))

(declare-fun b!7769343 () Bool)

(declare-fun e!4603566 () Regex!20753)

(assert (=> b!7769343 (= e!4603566 (Union!20753 call!719949 call!719950))))

(declare-fun b!7769344 () Bool)

(assert (=> b!7769344 (= e!4603565 EmptyLang!20753)))

(declare-fun bm!719947 () Bool)

(declare-fun call!719951 () Regex!20753)

(assert (=> bm!719947 (= call!719951 call!719952)))

(declare-fun b!7769345 () Bool)

(declare-fun e!4603563 () Regex!20753)

(assert (=> b!7769345 (= e!4603563 (Union!20753 (Concat!29598 call!719951 (regTwo!42018 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)))) call!719950))))

(declare-fun b!7769346 () Bool)

(assert (=> b!7769346 (= e!4603563 (Union!20753 (Concat!29598 call!719951 (regTwo!42018 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)))) EmptyLang!20753))))

(declare-fun b!7769347 () Bool)

(declare-fun c!1431957 () Bool)

(assert (=> b!7769347 (= c!1431957 (nullable!9142 (regOne!42018 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)))))))

(assert (=> b!7769347 (= e!4603564 e!4603563)))

(declare-fun d!2344218 () Bool)

(declare-fun lt!2671286 () Regex!20753)

(assert (=> d!2344218 (validRegex!11167 lt!2671286)))

(assert (=> d!2344218 (= lt!2671286 e!4603565)))

(declare-fun c!1431959 () Bool)

(assert (=> d!2344218 (= c!1431959 (or ((_ is EmptyExpr!20753) (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))) ((_ is EmptyLang!20753) (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)))))))

(assert (=> d!2344218 (validRegex!11167 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)))))

(assert (=> d!2344218 (= (derivativeStep!6098 (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924)) (h!79918 s!14904)) lt!2671286)))

(declare-fun b!7769348 () Bool)

(assert (=> b!7769348 (= c!1431956 ((_ is Union!20753) (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))))))

(assert (=> b!7769348 (= e!4603567 e!4603566)))

(declare-fun b!7769349 () Bool)

(assert (=> b!7769349 (= e!4603566 e!4603564)))

(assert (=> b!7769349 (= c!1431958 ((_ is Star!20753) (ite c!1431866 (regTwo!42019 r!25924) (regTwo!42018 r!25924))))))

(assert (= (and d!2344218 c!1431959) b!7769344))

(assert (= (and d!2344218 (not c!1431959)) b!7769340))

(assert (= (and b!7769340 c!1431960) b!7769341))

(assert (= (and b!7769340 (not c!1431960)) b!7769348))

(assert (= (and b!7769348 c!1431956) b!7769343))

(assert (= (and b!7769348 (not c!1431956)) b!7769349))

(assert (= (and b!7769349 c!1431958) b!7769342))

(assert (= (and b!7769349 (not c!1431958)) b!7769347))

(assert (= (and b!7769347 c!1431957) b!7769345))

(assert (= (and b!7769347 (not c!1431957)) b!7769346))

(assert (= (or b!7769345 b!7769346) bm!719947))

(assert (= (or b!7769342 bm!719947) bm!719945))

(assert (= (or b!7769343 b!7769345) bm!719946))

(assert (= (or b!7769343 bm!719945) bm!719944))

(declare-fun m!8224050 () Bool)

(assert (=> bm!719944 m!8224050))

(declare-fun m!8224052 () Bool)

(assert (=> bm!719946 m!8224052))

(declare-fun m!8224054 () Bool)

(assert (=> b!7769347 m!8224054))

(declare-fun m!8224056 () Bool)

(assert (=> d!2344218 m!8224056))

(declare-fun m!8224058 () Bool)

(assert (=> d!2344218 m!8224058))

(assert (=> bm!719868 d!2344218))

(assert (=> d!2344156 d!2344186))

(declare-fun bm!719948 () Bool)

(declare-fun call!719953 () Bool)

(declare-fun call!719955 () Bool)

(assert (=> bm!719948 (= call!719953 call!719955)))

(declare-fun b!7769350 () Bool)

(declare-fun e!4603572 () Bool)

(declare-fun e!4603568 () Bool)

(assert (=> b!7769350 (= e!4603572 e!4603568)))

(declare-fun c!1431962 () Bool)

(assert (=> b!7769350 (= c!1431962 ((_ is Union!20753) lt!2671264))))

(declare-fun bm!719949 () Bool)

(declare-fun call!719954 () Bool)

(assert (=> bm!719949 (= call!719954 (validRegex!11167 (ite c!1431962 (regOne!42019 lt!2671264) (regTwo!42018 lt!2671264))))))

(declare-fun b!7769351 () Bool)

(declare-fun res!3097217 () Bool)

(declare-fun e!4603574 () Bool)

(assert (=> b!7769351 (=> res!3097217 e!4603574)))

(assert (=> b!7769351 (= res!3097217 (not ((_ is Concat!29598) lt!2671264)))))

(assert (=> b!7769351 (= e!4603568 e!4603574)))

(declare-fun b!7769352 () Bool)

(declare-fun e!4603569 () Bool)

(assert (=> b!7769352 (= e!4603574 e!4603569)))

(declare-fun res!3097216 () Bool)

(assert (=> b!7769352 (=> (not res!3097216) (not e!4603569))))

(assert (=> b!7769352 (= res!3097216 call!719953)))

(declare-fun b!7769353 () Bool)

(declare-fun e!4603573 () Bool)

(assert (=> b!7769353 (= e!4603573 call!719953)))

(declare-fun d!2344220 () Bool)

(declare-fun res!3097219 () Bool)

(declare-fun e!4603570 () Bool)

(assert (=> d!2344220 (=> res!3097219 e!4603570)))

(assert (=> d!2344220 (= res!3097219 ((_ is ElementMatch!20753) lt!2671264))))

(assert (=> d!2344220 (= (validRegex!11167 lt!2671264) e!4603570)))

(declare-fun c!1431961 () Bool)

(declare-fun bm!719950 () Bool)

(assert (=> bm!719950 (= call!719955 (validRegex!11167 (ite c!1431961 (reg!21082 lt!2671264) (ite c!1431962 (regTwo!42019 lt!2671264) (regOne!42018 lt!2671264)))))))

(declare-fun b!7769354 () Bool)

(declare-fun res!3097215 () Bool)

(assert (=> b!7769354 (=> (not res!3097215) (not e!4603573))))

(assert (=> b!7769354 (= res!3097215 call!719954)))

(assert (=> b!7769354 (= e!4603568 e!4603573)))

(declare-fun b!7769355 () Bool)

(assert (=> b!7769355 (= e!4603570 e!4603572)))

(assert (=> b!7769355 (= c!1431961 ((_ is Star!20753) lt!2671264))))

(declare-fun b!7769356 () Bool)

(declare-fun e!4603571 () Bool)

(assert (=> b!7769356 (= e!4603571 call!719955)))

(declare-fun b!7769357 () Bool)

(assert (=> b!7769357 (= e!4603569 call!719954)))

(declare-fun b!7769358 () Bool)

(assert (=> b!7769358 (= e!4603572 e!4603571)))

(declare-fun res!3097218 () Bool)

(assert (=> b!7769358 (= res!3097218 (not (nullable!9142 (reg!21082 lt!2671264))))))

(assert (=> b!7769358 (=> (not res!3097218) (not e!4603571))))

(assert (= (and d!2344220 (not res!3097219)) b!7769355))

(assert (= (and b!7769355 c!1431961) b!7769358))

(assert (= (and b!7769355 (not c!1431961)) b!7769350))

(assert (= (and b!7769358 res!3097218) b!7769356))

(assert (= (and b!7769350 c!1431962) b!7769354))

(assert (= (and b!7769350 (not c!1431962)) b!7769351))

(assert (= (and b!7769354 res!3097215) b!7769353))

(assert (= (and b!7769351 (not res!3097217)) b!7769352))

(assert (= (and b!7769352 res!3097216) b!7769357))

(assert (= (or b!7769353 b!7769352) bm!719948))

(assert (= (or b!7769354 b!7769357) bm!719949))

(assert (= (or b!7769356 bm!719948) bm!719950))

(declare-fun m!8224060 () Bool)

(assert (=> bm!719949 m!8224060))

(declare-fun m!8224062 () Bool)

(assert (=> bm!719950 m!8224062))

(declare-fun m!8224064 () Bool)

(assert (=> b!7769358 m!8224064))

(assert (=> d!2344156 d!2344220))

(declare-fun bm!719951 () Bool)

(declare-fun call!719956 () Bool)

(declare-fun call!719958 () Bool)

(assert (=> bm!719951 (= call!719956 call!719958)))

(declare-fun b!7769359 () Bool)

(declare-fun e!4603579 () Bool)

(declare-fun e!4603575 () Bool)

(assert (=> b!7769359 (= e!4603579 e!4603575)))

(declare-fun c!1431964 () Bool)

(assert (=> b!7769359 (= c!1431964 ((_ is Union!20753) (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))))))

(declare-fun call!719957 () Bool)

(declare-fun bm!719952 () Bool)

(assert (=> bm!719952 (= call!719957 (validRegex!11167 (ite c!1431964 (regOne!42019 (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))) (regTwo!42018 (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))))))))

(declare-fun b!7769360 () Bool)

(declare-fun res!3097222 () Bool)

(declare-fun e!4603581 () Bool)

(assert (=> b!7769360 (=> res!3097222 e!4603581)))

(assert (=> b!7769360 (= res!3097222 (not ((_ is Concat!29598) (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262)))))))

(assert (=> b!7769360 (= e!4603575 e!4603581)))

(declare-fun b!7769361 () Bool)

(declare-fun e!4603576 () Bool)

(assert (=> b!7769361 (= e!4603581 e!4603576)))

(declare-fun res!3097221 () Bool)

(assert (=> b!7769361 (=> (not res!3097221) (not e!4603576))))

(assert (=> b!7769361 (= res!3097221 call!719956)))

(declare-fun b!7769362 () Bool)

(declare-fun e!4603580 () Bool)

(assert (=> b!7769362 (= e!4603580 call!719956)))

(declare-fun d!2344222 () Bool)

(declare-fun res!3097224 () Bool)

(declare-fun e!4603577 () Bool)

(assert (=> d!2344222 (=> res!3097224 e!4603577)))

(assert (=> d!2344222 (= res!3097224 ((_ is ElementMatch!20753) (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))))))

(assert (=> d!2344222 (= (validRegex!11167 (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))) e!4603577)))

(declare-fun c!1431963 () Bool)

(declare-fun bm!719953 () Bool)

(assert (=> bm!719953 (= call!719958 (validRegex!11167 (ite c!1431963 (reg!21082 (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))) (ite c!1431964 (regTwo!42019 (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))) (regOne!42018 (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262)))))))))

(declare-fun b!7769363 () Bool)

(declare-fun res!3097220 () Bool)

(assert (=> b!7769363 (=> (not res!3097220) (not e!4603580))))

(assert (=> b!7769363 (= res!3097220 call!719957)))

(assert (=> b!7769363 (= e!4603575 e!4603580)))

(declare-fun b!7769364 () Bool)

(assert (=> b!7769364 (= e!4603577 e!4603579)))

(assert (=> b!7769364 (= c!1431963 ((_ is Star!20753) (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))))))

(declare-fun b!7769365 () Bool)

(declare-fun e!4603578 () Bool)

(assert (=> b!7769365 (= e!4603578 call!719958)))

(declare-fun b!7769366 () Bool)

(assert (=> b!7769366 (= e!4603576 call!719957)))

(declare-fun b!7769367 () Bool)

(assert (=> b!7769367 (= e!4603579 e!4603578)))

(declare-fun res!3097223 () Bool)

(assert (=> b!7769367 (= res!3097223 (not (nullable!9142 (reg!21082 (ite c!1431892 (regOne!42019 lt!2671262) (regTwo!42018 lt!2671262))))))))

(assert (=> b!7769367 (=> (not res!3097223) (not e!4603578))))

(assert (= (and d!2344222 (not res!3097224)) b!7769364))

(assert (= (and b!7769364 c!1431963) b!7769367))

(assert (= (and b!7769364 (not c!1431963)) b!7769359))

(assert (= (and b!7769367 res!3097223) b!7769365))

(assert (= (and b!7769359 c!1431964) b!7769363))

(assert (= (and b!7769359 (not c!1431964)) b!7769360))

(assert (= (and b!7769363 res!3097220) b!7769362))

(assert (= (and b!7769360 (not res!3097222)) b!7769361))

(assert (= (and b!7769361 res!3097221) b!7769366))

(assert (= (or b!7769362 b!7769361) bm!719951))

(assert (= (or b!7769363 b!7769366) bm!719952))

(assert (= (or b!7769365 bm!719951) bm!719953))

(declare-fun m!8224066 () Bool)

(assert (=> bm!719952 m!8224066))

(declare-fun m!8224068 () Bool)

(assert (=> bm!719953 m!8224068))

(declare-fun m!8224070 () Bool)

(assert (=> b!7769367 m!8224070))

(assert (=> bm!719893 d!2344222))

(declare-fun bm!719954 () Bool)

(declare-fun call!719959 () Bool)

(declare-fun call!719961 () Bool)

(assert (=> bm!719954 (= call!719959 call!719961)))

(declare-fun b!7769368 () Bool)

(declare-fun e!4603586 () Bool)

(declare-fun e!4603582 () Bool)

(assert (=> b!7769368 (= e!4603586 e!4603582)))

(declare-fun c!1431966 () Bool)

(assert (=> b!7769368 (= c!1431966 ((_ is Union!20753) lt!2671268))))

(declare-fun bm!719955 () Bool)

(declare-fun call!719960 () Bool)

(assert (=> bm!719955 (= call!719960 (validRegex!11167 (ite c!1431966 (regOne!42019 lt!2671268) (regTwo!42018 lt!2671268))))))

(declare-fun b!7769369 () Bool)

(declare-fun res!3097227 () Bool)

(declare-fun e!4603588 () Bool)

(assert (=> b!7769369 (=> res!3097227 e!4603588)))

(assert (=> b!7769369 (= res!3097227 (not ((_ is Concat!29598) lt!2671268)))))

(assert (=> b!7769369 (= e!4603582 e!4603588)))

(declare-fun b!7769370 () Bool)

(declare-fun e!4603583 () Bool)

(assert (=> b!7769370 (= e!4603588 e!4603583)))

(declare-fun res!3097226 () Bool)

(assert (=> b!7769370 (=> (not res!3097226) (not e!4603583))))

(assert (=> b!7769370 (= res!3097226 call!719959)))

(declare-fun b!7769371 () Bool)

(declare-fun e!4603587 () Bool)

(assert (=> b!7769371 (= e!4603587 call!719959)))

(declare-fun d!2344224 () Bool)

(declare-fun res!3097229 () Bool)

(declare-fun e!4603584 () Bool)

(assert (=> d!2344224 (=> res!3097229 e!4603584)))

(assert (=> d!2344224 (= res!3097229 ((_ is ElementMatch!20753) lt!2671268))))

(assert (=> d!2344224 (= (validRegex!11167 lt!2671268) e!4603584)))

(declare-fun bm!719956 () Bool)

(declare-fun c!1431965 () Bool)

(assert (=> bm!719956 (= call!719961 (validRegex!11167 (ite c!1431965 (reg!21082 lt!2671268) (ite c!1431966 (regTwo!42019 lt!2671268) (regOne!42018 lt!2671268)))))))

(declare-fun b!7769372 () Bool)

(declare-fun res!3097225 () Bool)

(assert (=> b!7769372 (=> (not res!3097225) (not e!4603587))))

(assert (=> b!7769372 (= res!3097225 call!719960)))

(assert (=> b!7769372 (= e!4603582 e!4603587)))

(declare-fun b!7769373 () Bool)

(assert (=> b!7769373 (= e!4603584 e!4603586)))

(assert (=> b!7769373 (= c!1431965 ((_ is Star!20753) lt!2671268))))

(declare-fun b!7769374 () Bool)

(declare-fun e!4603585 () Bool)

(assert (=> b!7769374 (= e!4603585 call!719961)))

(declare-fun b!7769375 () Bool)

(assert (=> b!7769375 (= e!4603583 call!719960)))

(declare-fun b!7769376 () Bool)

(assert (=> b!7769376 (= e!4603586 e!4603585)))

(declare-fun res!3097228 () Bool)

(assert (=> b!7769376 (= res!3097228 (not (nullable!9142 (reg!21082 lt!2671268))))))

(assert (=> b!7769376 (=> (not res!3097228) (not e!4603585))))

(assert (= (and d!2344224 (not res!3097229)) b!7769373))

(assert (= (and b!7769373 c!1431965) b!7769376))

(assert (= (and b!7769373 (not c!1431965)) b!7769368))

(assert (= (and b!7769376 res!3097228) b!7769374))

(assert (= (and b!7769368 c!1431966) b!7769372))

(assert (= (and b!7769368 (not c!1431966)) b!7769369))

(assert (= (and b!7769372 res!3097225) b!7769371))

(assert (= (and b!7769369 (not res!3097227)) b!7769370))

(assert (= (and b!7769370 res!3097226) b!7769375))

(assert (= (or b!7769371 b!7769370) bm!719954))

(assert (= (or b!7769372 b!7769375) bm!719955))

(assert (= (or b!7769374 bm!719954) bm!719956))

(declare-fun m!8224072 () Bool)

(assert (=> bm!719955 m!8224072))

(declare-fun m!8224074 () Bool)

(assert (=> bm!719956 m!8224074))

(declare-fun m!8224076 () Bool)

(assert (=> b!7769376 m!8224076))

(assert (=> d!2344152 d!2344224))

(declare-fun bm!719957 () Bool)

(declare-fun call!719962 () Bool)

(declare-fun call!719964 () Bool)

(assert (=> bm!719957 (= call!719962 call!719964)))

(declare-fun b!7769377 () Bool)

(declare-fun e!4603593 () Bool)

(declare-fun e!4603589 () Bool)

(assert (=> b!7769377 (= e!4603593 e!4603589)))

(declare-fun c!1431968 () Bool)

(assert (=> b!7769377 (= c!1431968 ((_ is Union!20753) r!25924))))

(declare-fun bm!719958 () Bool)

(declare-fun call!719963 () Bool)

(assert (=> bm!719958 (= call!719963 (validRegex!11167 (ite c!1431968 (regOne!42019 r!25924) (regTwo!42018 r!25924))))))

(declare-fun b!7769378 () Bool)

(declare-fun res!3097232 () Bool)

(declare-fun e!4603595 () Bool)

(assert (=> b!7769378 (=> res!3097232 e!4603595)))

(assert (=> b!7769378 (= res!3097232 (not ((_ is Concat!29598) r!25924)))))

(assert (=> b!7769378 (= e!4603589 e!4603595)))

(declare-fun b!7769379 () Bool)

(declare-fun e!4603590 () Bool)

(assert (=> b!7769379 (= e!4603595 e!4603590)))

(declare-fun res!3097231 () Bool)

(assert (=> b!7769379 (=> (not res!3097231) (not e!4603590))))

(assert (=> b!7769379 (= res!3097231 call!719962)))

(declare-fun b!7769380 () Bool)

(declare-fun e!4603594 () Bool)

(assert (=> b!7769380 (= e!4603594 call!719962)))

(declare-fun d!2344226 () Bool)

(declare-fun res!3097234 () Bool)

(declare-fun e!4603591 () Bool)

(assert (=> d!2344226 (=> res!3097234 e!4603591)))

(assert (=> d!2344226 (= res!3097234 ((_ is ElementMatch!20753) r!25924))))

(assert (=> d!2344226 (= (validRegex!11167 r!25924) e!4603591)))

(declare-fun c!1431967 () Bool)

(declare-fun bm!719959 () Bool)

(assert (=> bm!719959 (= call!719964 (validRegex!11167 (ite c!1431967 (reg!21082 r!25924) (ite c!1431968 (regTwo!42019 r!25924) (regOne!42018 r!25924)))))))

(declare-fun b!7769381 () Bool)

(declare-fun res!3097230 () Bool)

(assert (=> b!7769381 (=> (not res!3097230) (not e!4603594))))

(assert (=> b!7769381 (= res!3097230 call!719963)))

(assert (=> b!7769381 (= e!4603589 e!4603594)))

(declare-fun b!7769382 () Bool)

(assert (=> b!7769382 (= e!4603591 e!4603593)))

(assert (=> b!7769382 (= c!1431967 ((_ is Star!20753) r!25924))))

(declare-fun b!7769383 () Bool)

(declare-fun e!4603592 () Bool)

(assert (=> b!7769383 (= e!4603592 call!719964)))

(declare-fun b!7769384 () Bool)

(assert (=> b!7769384 (= e!4603590 call!719963)))

(declare-fun b!7769385 () Bool)

(assert (=> b!7769385 (= e!4603593 e!4603592)))

(declare-fun res!3097233 () Bool)

(assert (=> b!7769385 (= res!3097233 (not (nullable!9142 (reg!21082 r!25924))))))

(assert (=> b!7769385 (=> (not res!3097233) (not e!4603592))))

(assert (= (and d!2344226 (not res!3097234)) b!7769382))

(assert (= (and b!7769382 c!1431967) b!7769385))

(assert (= (and b!7769382 (not c!1431967)) b!7769377))

(assert (= (and b!7769385 res!3097233) b!7769383))

(assert (= (and b!7769377 c!1431968) b!7769381))

(assert (= (and b!7769377 (not c!1431968)) b!7769378))

(assert (= (and b!7769381 res!3097230) b!7769380))

(assert (= (and b!7769378 (not res!3097232)) b!7769379))

(assert (= (and b!7769379 res!3097231) b!7769384))

(assert (= (or b!7769380 b!7769379) bm!719957))

(assert (= (or b!7769381 b!7769384) bm!719958))

(assert (= (or b!7769383 bm!719957) bm!719959))

(declare-fun m!8224078 () Bool)

(assert (=> bm!719958 m!8224078))

(declare-fun m!8224080 () Bool)

(assert (=> bm!719959 m!8224080))

(declare-fun m!8224082 () Bool)

(assert (=> b!7769385 m!8224082))

(assert (=> d!2344152 d!2344226))

(declare-fun b!7769386 () Bool)

(declare-fun e!4603598 () Regex!20753)

(declare-fun e!4603600 () Regex!20753)

(assert (=> b!7769386 (= e!4603598 e!4603600)))

(declare-fun c!1431973 () Bool)

(assert (=> b!7769386 (= c!1431973 ((_ is ElementMatch!20753) (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))))))

(declare-fun b!7769387 () Bool)

(assert (=> b!7769387 (= e!4603600 (ite (= (h!79918 s!14904) (c!1431846 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))))) EmptyExpr!20753 EmptyLang!20753))))

(declare-fun e!4603597 () Regex!20753)

(declare-fun b!7769388 () Bool)

(declare-fun call!719968 () Regex!20753)

(assert (=> b!7769388 (= e!4603597 (Concat!29598 call!719968 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))))))

(declare-fun c!1431969 () Bool)

(declare-fun call!719965 () Regex!20753)

(declare-fun c!1431971 () Bool)

(declare-fun bm!719960 () Bool)

(assert (=> bm!719960 (= call!719965 (derivativeStep!6098 (ite c!1431969 (regOne!42019 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))) (ite c!1431971 (reg!21082 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))) (regOne!42018 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))))) (h!79918 s!14904)))))

(declare-fun bm!719961 () Bool)

(assert (=> bm!719961 (= call!719968 call!719965)))

(declare-fun bm!719962 () Bool)

(declare-fun call!719966 () Regex!20753)

(assert (=> bm!719962 (= call!719966 (derivativeStep!6098 (ite c!1431969 (regTwo!42019 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))) (regTwo!42018 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))))) (h!79918 s!14904)))))

(declare-fun b!7769389 () Bool)

(declare-fun e!4603599 () Regex!20753)

(assert (=> b!7769389 (= e!4603599 (Union!20753 call!719965 call!719966))))

(declare-fun b!7769390 () Bool)

(assert (=> b!7769390 (= e!4603598 EmptyLang!20753)))

(declare-fun bm!719963 () Bool)

(declare-fun call!719967 () Regex!20753)

(assert (=> bm!719963 (= call!719967 call!719968)))

(declare-fun e!4603596 () Regex!20753)

(declare-fun b!7769391 () Bool)

(assert (=> b!7769391 (= e!4603596 (Union!20753 (Concat!29598 call!719967 (regTwo!42018 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))))) call!719966))))

(declare-fun b!7769392 () Bool)

(assert (=> b!7769392 (= e!4603596 (Union!20753 (Concat!29598 call!719967 (regTwo!42018 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))))) EmptyLang!20753))))

(declare-fun b!7769393 () Bool)

(declare-fun c!1431970 () Bool)

(assert (=> b!7769393 (= c!1431970 (nullable!9142 (regOne!42018 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))))))))

(assert (=> b!7769393 (= e!4603597 e!4603596)))

(declare-fun d!2344228 () Bool)

(declare-fun lt!2671287 () Regex!20753)

(assert (=> d!2344228 (validRegex!11167 lt!2671287)))

(assert (=> d!2344228 (= lt!2671287 e!4603598)))

(declare-fun c!1431972 () Bool)

(assert (=> d!2344228 (= c!1431972 (or ((_ is EmptyExpr!20753) (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))) ((_ is EmptyLang!20753) (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))))))))

(assert (=> d!2344228 (validRegex!11167 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))))))

(assert (=> d!2344228 (= (derivativeStep!6098 (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924))) (h!79918 s!14904)) lt!2671287)))

(declare-fun b!7769394 () Bool)

(assert (=> b!7769394 (= c!1431969 ((_ is Union!20753) (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))))))

(assert (=> b!7769394 (= e!4603600 e!4603599)))

(declare-fun b!7769395 () Bool)

(assert (=> b!7769395 (= e!4603599 e!4603597)))

(assert (=> b!7769395 (= c!1431971 ((_ is Star!20753) (ite c!1431866 (regOne!42019 r!25924) (ite c!1431868 (reg!21082 r!25924) (regOne!42018 r!25924)))))))

(assert (= (and d!2344228 c!1431972) b!7769390))

(assert (= (and d!2344228 (not c!1431972)) b!7769386))

(assert (= (and b!7769386 c!1431973) b!7769387))

(assert (= (and b!7769386 (not c!1431973)) b!7769394))

(assert (= (and b!7769394 c!1431969) b!7769389))

(assert (= (and b!7769394 (not c!1431969)) b!7769395))

(assert (= (and b!7769395 c!1431971) b!7769388))

(assert (= (and b!7769395 (not c!1431971)) b!7769393))

(assert (= (and b!7769393 c!1431970) b!7769391))

(assert (= (and b!7769393 (not c!1431970)) b!7769392))

(assert (= (or b!7769391 b!7769392) bm!719963))

(assert (= (or b!7769388 bm!719963) bm!719961))

(assert (= (or b!7769389 b!7769391) bm!719962))

(assert (= (or b!7769389 bm!719961) bm!719960))

(declare-fun m!8224084 () Bool)

(assert (=> bm!719960 m!8224084))

(declare-fun m!8224086 () Bool)

(assert (=> bm!719962 m!8224086))

(declare-fun m!8224088 () Bool)

(assert (=> b!7769393 m!8224088))

(declare-fun m!8224090 () Bool)

(assert (=> d!2344228 m!8224090))

(declare-fun m!8224092 () Bool)

(assert (=> d!2344228 m!8224092))

(assert (=> bm!719866 d!2344228))

(declare-fun b!7769396 () Bool)

(declare-fun e!4603603 () Regex!20753)

(declare-fun e!4603605 () Regex!20753)

(assert (=> b!7769396 (= e!4603603 e!4603605)))

(declare-fun c!1431978 () Bool)

(assert (=> b!7769396 (= c!1431978 ((_ is ElementMatch!20753) (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))))))

(declare-fun b!7769397 () Bool)

(assert (=> b!7769397 (= e!4603605 (ite (= (h!79918 s!14904) (c!1431846 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)))) EmptyExpr!20753 EmptyLang!20753))))

(declare-fun call!719972 () Regex!20753)

(declare-fun e!4603602 () Regex!20753)

(declare-fun b!7769398 () Bool)

(assert (=> b!7769398 (= e!4603602 (Concat!29598 call!719972 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))))))

(declare-fun call!719969 () Regex!20753)

(declare-fun bm!719964 () Bool)

(declare-fun c!1431974 () Bool)

(declare-fun c!1431976 () Bool)

(assert (=> bm!719964 (= call!719969 (derivativeStep!6098 (ite c!1431974 (regOne!42019 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))) (ite c!1431976 (reg!21082 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))) (regOne!42018 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))))) (h!79918 s!14904)))))

(declare-fun bm!719965 () Bool)

(assert (=> bm!719965 (= call!719972 call!719969)))

(declare-fun call!719970 () Regex!20753)

(declare-fun bm!719966 () Bool)

(assert (=> bm!719966 (= call!719970 (derivativeStep!6098 (ite c!1431974 (regTwo!42019 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))) (regTwo!42018 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)))) (h!79918 s!14904)))))

(declare-fun b!7769399 () Bool)

(declare-fun e!4603604 () Regex!20753)

(assert (=> b!7769399 (= e!4603604 (Union!20753 call!719969 call!719970))))

(declare-fun b!7769400 () Bool)

(assert (=> b!7769400 (= e!4603603 EmptyLang!20753)))

(declare-fun bm!719967 () Bool)

(declare-fun call!719971 () Regex!20753)

(assert (=> bm!719967 (= call!719971 call!719972)))

(declare-fun b!7769401 () Bool)

(declare-fun e!4603601 () Regex!20753)

(assert (=> b!7769401 (= e!4603601 (Union!20753 (Concat!29598 call!719971 (regTwo!42018 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)))) call!719970))))

(declare-fun b!7769402 () Bool)

(assert (=> b!7769402 (= e!4603601 (Union!20753 (Concat!29598 call!719971 (regTwo!42018 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)))) EmptyLang!20753))))

(declare-fun b!7769403 () Bool)

(declare-fun c!1431975 () Bool)

(assert (=> b!7769403 (= c!1431975 (nullable!9142 (regOne!42018 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)))))))

(assert (=> b!7769403 (= e!4603602 e!4603601)))

(declare-fun d!2344230 () Bool)

(declare-fun lt!2671288 () Regex!20753)

(assert (=> d!2344230 (validRegex!11167 lt!2671288)))

(assert (=> d!2344230 (= lt!2671288 e!4603603)))

(declare-fun c!1431977 () Bool)

(assert (=> d!2344230 (= c!1431977 (or ((_ is EmptyExpr!20753) (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))) ((_ is EmptyLang!20753) (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)))))))

(assert (=> d!2344230 (validRegex!11167 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)))))

(assert (=> d!2344230 (= (derivativeStep!6098 (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263)) (h!79918 s!14904)) lt!2671288)))

(declare-fun b!7769404 () Bool)

(assert (=> b!7769404 (= c!1431974 ((_ is Union!20753) (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))))))

(assert (=> b!7769404 (= e!4603605 e!4603604)))

(declare-fun b!7769405 () Bool)

(assert (=> b!7769405 (= e!4603604 e!4603602)))

(assert (=> b!7769405 (= c!1431976 ((_ is Star!20753) (ite c!1431859 (regTwo!42019 lt!2671263) (regTwo!42018 lt!2671263))))))

(assert (= (and d!2344230 c!1431977) b!7769400))

(assert (= (and d!2344230 (not c!1431977)) b!7769396))

(assert (= (and b!7769396 c!1431978) b!7769397))

(assert (= (and b!7769396 (not c!1431978)) b!7769404))

(assert (= (and b!7769404 c!1431974) b!7769399))

(assert (= (and b!7769404 (not c!1431974)) b!7769405))

(assert (= (and b!7769405 c!1431976) b!7769398))

(assert (= (and b!7769405 (not c!1431976)) b!7769403))

(assert (= (and b!7769403 c!1431975) b!7769401))

(assert (= (and b!7769403 (not c!1431975)) b!7769402))

(assert (= (or b!7769401 b!7769402) bm!719967))

(assert (= (or b!7769398 bm!719967) bm!719965))

(assert (= (or b!7769399 b!7769401) bm!719966))

(assert (= (or b!7769399 bm!719965) bm!719964))

(declare-fun m!8224094 () Bool)

(assert (=> bm!719964 m!8224094))

(declare-fun m!8224096 () Bool)

(assert (=> bm!719966 m!8224096))

(declare-fun m!8224098 () Bool)

(assert (=> b!7769403 m!8224098))

(declare-fun m!8224100 () Bool)

(assert (=> d!2344230 m!8224100))

(declare-fun m!8224102 () Bool)

(assert (=> d!2344230 m!8224102))

(assert (=> bm!719864 d!2344230))

(assert (=> b!7769052 d!2344214))

(assert (=> b!7769052 d!2344180))

(declare-fun b!7769408 () Bool)

(declare-fun e!4603606 () Bool)

(declare-fun tp!2282366 () Bool)

(assert (=> b!7769408 (= e!4603606 tp!2282366)))

(declare-fun b!7769406 () Bool)

(assert (=> b!7769406 (= e!4603606 tp_is_empty!51861)))

(declare-fun b!7769407 () Bool)

(declare-fun tp!2282362 () Bool)

(declare-fun tp!2282364 () Bool)

(assert (=> b!7769407 (= e!4603606 (and tp!2282362 tp!2282364))))

(declare-fun b!7769409 () Bool)

(declare-fun tp!2282365 () Bool)

(declare-fun tp!2282363 () Bool)

(assert (=> b!7769409 (= e!4603606 (and tp!2282365 tp!2282363))))

(assert (=> b!7769115 (= tp!2282309 e!4603606)))

(assert (= (and b!7769115 ((_ is ElementMatch!20753) (regOne!42018 (regTwo!42018 r!25924)))) b!7769406))

(assert (= (and b!7769115 ((_ is Concat!29598) (regOne!42018 (regTwo!42018 r!25924)))) b!7769407))

(assert (= (and b!7769115 ((_ is Star!20753) (regOne!42018 (regTwo!42018 r!25924)))) b!7769408))

(assert (= (and b!7769115 ((_ is Union!20753) (regOne!42018 (regTwo!42018 r!25924)))) b!7769409))

(declare-fun b!7769412 () Bool)

(declare-fun e!4603607 () Bool)

(declare-fun tp!2282371 () Bool)

(assert (=> b!7769412 (= e!4603607 tp!2282371)))

(declare-fun b!7769410 () Bool)

(assert (=> b!7769410 (= e!4603607 tp_is_empty!51861)))

(declare-fun b!7769411 () Bool)

(declare-fun tp!2282367 () Bool)

(declare-fun tp!2282369 () Bool)

(assert (=> b!7769411 (= e!4603607 (and tp!2282367 tp!2282369))))

(declare-fun b!7769413 () Bool)

(declare-fun tp!2282370 () Bool)

(declare-fun tp!2282368 () Bool)

(assert (=> b!7769413 (= e!4603607 (and tp!2282370 tp!2282368))))

(assert (=> b!7769115 (= tp!2282311 e!4603607)))

(assert (= (and b!7769115 ((_ is ElementMatch!20753) (regTwo!42018 (regTwo!42018 r!25924)))) b!7769410))

(assert (= (and b!7769115 ((_ is Concat!29598) (regTwo!42018 (regTwo!42018 r!25924)))) b!7769411))

(assert (= (and b!7769115 ((_ is Star!20753) (regTwo!42018 (regTwo!42018 r!25924)))) b!7769412))

(assert (= (and b!7769115 ((_ is Union!20753) (regTwo!42018 (regTwo!42018 r!25924)))) b!7769413))

(declare-fun b!7769416 () Bool)

(declare-fun e!4603608 () Bool)

(declare-fun tp!2282376 () Bool)

(assert (=> b!7769416 (= e!4603608 tp!2282376)))

(declare-fun b!7769414 () Bool)

(assert (=> b!7769414 (= e!4603608 tp_is_empty!51861)))

(declare-fun b!7769415 () Bool)

(declare-fun tp!2282372 () Bool)

(declare-fun tp!2282374 () Bool)

(assert (=> b!7769415 (= e!4603608 (and tp!2282372 tp!2282374))))

(declare-fun b!7769417 () Bool)

(declare-fun tp!2282375 () Bool)

(declare-fun tp!2282373 () Bool)

(assert (=> b!7769417 (= e!4603608 (and tp!2282375 tp!2282373))))

(assert (=> b!7769111 (= tp!2282304 e!4603608)))

(assert (= (and b!7769111 ((_ is ElementMatch!20753) (regOne!42018 (regOne!42018 r!25924)))) b!7769414))

(assert (= (and b!7769111 ((_ is Concat!29598) (regOne!42018 (regOne!42018 r!25924)))) b!7769415))

(assert (= (and b!7769111 ((_ is Star!20753) (regOne!42018 (regOne!42018 r!25924)))) b!7769416))

(assert (= (and b!7769111 ((_ is Union!20753) (regOne!42018 (regOne!42018 r!25924)))) b!7769417))

(declare-fun b!7769420 () Bool)

(declare-fun e!4603609 () Bool)

(declare-fun tp!2282381 () Bool)

(assert (=> b!7769420 (= e!4603609 tp!2282381)))

(declare-fun b!7769418 () Bool)

(assert (=> b!7769418 (= e!4603609 tp_is_empty!51861)))

(declare-fun b!7769419 () Bool)

(declare-fun tp!2282377 () Bool)

(declare-fun tp!2282379 () Bool)

(assert (=> b!7769419 (= e!4603609 (and tp!2282377 tp!2282379))))

(declare-fun b!7769421 () Bool)

(declare-fun tp!2282380 () Bool)

(declare-fun tp!2282378 () Bool)

(assert (=> b!7769421 (= e!4603609 (and tp!2282380 tp!2282378))))

(assert (=> b!7769111 (= tp!2282306 e!4603609)))

(assert (= (and b!7769111 ((_ is ElementMatch!20753) (regTwo!42018 (regOne!42018 r!25924)))) b!7769418))

(assert (= (and b!7769111 ((_ is Concat!29598) (regTwo!42018 (regOne!42018 r!25924)))) b!7769419))

(assert (= (and b!7769111 ((_ is Star!20753) (regTwo!42018 (regOne!42018 r!25924)))) b!7769420))

(assert (= (and b!7769111 ((_ is Union!20753) (regTwo!42018 (regOne!42018 r!25924)))) b!7769421))

(declare-fun b!7769424 () Bool)

(declare-fun e!4603610 () Bool)

(declare-fun tp!2282386 () Bool)

(assert (=> b!7769424 (= e!4603610 tp!2282386)))

(declare-fun b!7769422 () Bool)

(assert (=> b!7769422 (= e!4603610 tp_is_empty!51861)))

(declare-fun b!7769423 () Bool)

(declare-fun tp!2282382 () Bool)

(declare-fun tp!2282384 () Bool)

(assert (=> b!7769423 (= e!4603610 (and tp!2282382 tp!2282384))))

(declare-fun b!7769425 () Bool)

(declare-fun tp!2282385 () Bool)

(declare-fun tp!2282383 () Bool)

(assert (=> b!7769425 (= e!4603610 (and tp!2282385 tp!2282383))))

(assert (=> b!7769121 (= tp!2282317 e!4603610)))

(assert (= (and b!7769121 ((_ is ElementMatch!20753) (regOne!42019 (regOne!42019 r!25924)))) b!7769422))

(assert (= (and b!7769121 ((_ is Concat!29598) (regOne!42019 (regOne!42019 r!25924)))) b!7769423))

(assert (= (and b!7769121 ((_ is Star!20753) (regOne!42019 (regOne!42019 r!25924)))) b!7769424))

(assert (= (and b!7769121 ((_ is Union!20753) (regOne!42019 (regOne!42019 r!25924)))) b!7769425))

(declare-fun b!7769428 () Bool)

(declare-fun e!4603611 () Bool)

(declare-fun tp!2282391 () Bool)

(assert (=> b!7769428 (= e!4603611 tp!2282391)))

(declare-fun b!7769426 () Bool)

(assert (=> b!7769426 (= e!4603611 tp_is_empty!51861)))

(declare-fun b!7769427 () Bool)

(declare-fun tp!2282387 () Bool)

(declare-fun tp!2282389 () Bool)

(assert (=> b!7769427 (= e!4603611 (and tp!2282387 tp!2282389))))

(declare-fun b!7769429 () Bool)

(declare-fun tp!2282390 () Bool)

(declare-fun tp!2282388 () Bool)

(assert (=> b!7769429 (= e!4603611 (and tp!2282390 tp!2282388))))

(assert (=> b!7769121 (= tp!2282315 e!4603611)))

(assert (= (and b!7769121 ((_ is ElementMatch!20753) (regTwo!42019 (regOne!42019 r!25924)))) b!7769426))

(assert (= (and b!7769121 ((_ is Concat!29598) (regTwo!42019 (regOne!42019 r!25924)))) b!7769427))

(assert (= (and b!7769121 ((_ is Star!20753) (regTwo!42019 (regOne!42019 r!25924)))) b!7769428))

(assert (= (and b!7769121 ((_ is Union!20753) (regTwo!42019 (regOne!42019 r!25924)))) b!7769429))

(declare-fun b!7769430 () Bool)

(declare-fun e!4603612 () Bool)

(declare-fun tp!2282392 () Bool)

(assert (=> b!7769430 (= e!4603612 (and tp_is_empty!51861 tp!2282392))))

(assert (=> b!7769095 (= tp!2282288 e!4603612)))

(assert (= (and b!7769095 ((_ is Cons!73470) (t!388329 (t!388329 s!14904)))) b!7769430))

(declare-fun b!7769433 () Bool)

(declare-fun e!4603613 () Bool)

(declare-fun tp!2282397 () Bool)

(assert (=> b!7769433 (= e!4603613 tp!2282397)))

(declare-fun b!7769431 () Bool)

(assert (=> b!7769431 (= e!4603613 tp_is_empty!51861)))

(declare-fun b!7769432 () Bool)

(declare-fun tp!2282393 () Bool)

(declare-fun tp!2282395 () Bool)

(assert (=> b!7769432 (= e!4603613 (and tp!2282393 tp!2282395))))

(declare-fun b!7769434 () Bool)

(declare-fun tp!2282396 () Bool)

(declare-fun tp!2282394 () Bool)

(assert (=> b!7769434 (= e!4603613 (and tp!2282396 tp!2282394))))

(assert (=> b!7769124 (= tp!2282323 e!4603613)))

(assert (= (and b!7769124 ((_ is ElementMatch!20753) (reg!21082 (regTwo!42019 r!25924)))) b!7769431))

(assert (= (and b!7769124 ((_ is Concat!29598) (reg!21082 (regTwo!42019 r!25924)))) b!7769432))

(assert (= (and b!7769124 ((_ is Star!20753) (reg!21082 (regTwo!42019 r!25924)))) b!7769433))

(assert (= (and b!7769124 ((_ is Union!20753) (reg!21082 (regTwo!42019 r!25924)))) b!7769434))

(declare-fun b!7769437 () Bool)

(declare-fun e!4603614 () Bool)

(declare-fun tp!2282402 () Bool)

(assert (=> b!7769437 (= e!4603614 tp!2282402)))

(declare-fun b!7769435 () Bool)

(assert (=> b!7769435 (= e!4603614 tp_is_empty!51861)))

(declare-fun b!7769436 () Bool)

(declare-fun tp!2282398 () Bool)

(declare-fun tp!2282400 () Bool)

(assert (=> b!7769436 (= e!4603614 (and tp!2282398 tp!2282400))))

(declare-fun b!7769438 () Bool)

(declare-fun tp!2282401 () Bool)

(declare-fun tp!2282399 () Bool)

(assert (=> b!7769438 (= e!4603614 (and tp!2282401 tp!2282399))))

(assert (=> b!7769120 (= tp!2282318 e!4603614)))

(assert (= (and b!7769120 ((_ is ElementMatch!20753) (reg!21082 (regOne!42019 r!25924)))) b!7769435))

(assert (= (and b!7769120 ((_ is Concat!29598) (reg!21082 (regOne!42019 r!25924)))) b!7769436))

(assert (= (and b!7769120 ((_ is Star!20753) (reg!21082 (regOne!42019 r!25924)))) b!7769437))

(assert (= (and b!7769120 ((_ is Union!20753) (reg!21082 (regOne!42019 r!25924)))) b!7769438))

(declare-fun b!7769441 () Bool)

(declare-fun e!4603615 () Bool)

(declare-fun tp!2282407 () Bool)

(assert (=> b!7769441 (= e!4603615 tp!2282407)))

(declare-fun b!7769439 () Bool)

(assert (=> b!7769439 (= e!4603615 tp_is_empty!51861)))

(declare-fun b!7769440 () Bool)

(declare-fun tp!2282403 () Bool)

(declare-fun tp!2282405 () Bool)

(assert (=> b!7769440 (= e!4603615 (and tp!2282403 tp!2282405))))

(declare-fun b!7769442 () Bool)

(declare-fun tp!2282406 () Bool)

(declare-fun tp!2282404 () Bool)

(assert (=> b!7769442 (= e!4603615 (and tp!2282406 tp!2282404))))

(assert (=> b!7769125 (= tp!2282322 e!4603615)))

(assert (= (and b!7769125 ((_ is ElementMatch!20753) (regOne!42019 (regTwo!42019 r!25924)))) b!7769439))

(assert (= (and b!7769125 ((_ is Concat!29598) (regOne!42019 (regTwo!42019 r!25924)))) b!7769440))

(assert (= (and b!7769125 ((_ is Star!20753) (regOne!42019 (regTwo!42019 r!25924)))) b!7769441))

(assert (= (and b!7769125 ((_ is Union!20753) (regOne!42019 (regTwo!42019 r!25924)))) b!7769442))

(declare-fun b!7769445 () Bool)

(declare-fun e!4603616 () Bool)

(declare-fun tp!2282412 () Bool)

(assert (=> b!7769445 (= e!4603616 tp!2282412)))

(declare-fun b!7769443 () Bool)

(assert (=> b!7769443 (= e!4603616 tp_is_empty!51861)))

(declare-fun b!7769444 () Bool)

(declare-fun tp!2282408 () Bool)

(declare-fun tp!2282410 () Bool)

(assert (=> b!7769444 (= e!4603616 (and tp!2282408 tp!2282410))))

(declare-fun b!7769446 () Bool)

(declare-fun tp!2282411 () Bool)

(declare-fun tp!2282409 () Bool)

(assert (=> b!7769446 (= e!4603616 (and tp!2282411 tp!2282409))))

(assert (=> b!7769125 (= tp!2282320 e!4603616)))

(assert (= (and b!7769125 ((_ is ElementMatch!20753) (regTwo!42019 (regTwo!42019 r!25924)))) b!7769443))

(assert (= (and b!7769125 ((_ is Concat!29598) (regTwo!42019 (regTwo!42019 r!25924)))) b!7769444))

(assert (= (and b!7769125 ((_ is Star!20753) (regTwo!42019 (regTwo!42019 r!25924)))) b!7769445))

(assert (= (and b!7769125 ((_ is Union!20753) (regTwo!42019 (regTwo!42019 r!25924)))) b!7769446))

(declare-fun b!7769449 () Bool)

(declare-fun e!4603617 () Bool)

(declare-fun tp!2282417 () Bool)

(assert (=> b!7769449 (= e!4603617 tp!2282417)))

(declare-fun b!7769447 () Bool)

(assert (=> b!7769447 (= e!4603617 tp_is_empty!51861)))

(declare-fun b!7769448 () Bool)

(declare-fun tp!2282413 () Bool)

(declare-fun tp!2282415 () Bool)

(assert (=> b!7769448 (= e!4603617 (and tp!2282413 tp!2282415))))

(declare-fun b!7769450 () Bool)

(declare-fun tp!2282416 () Bool)

(declare-fun tp!2282414 () Bool)

(assert (=> b!7769450 (= e!4603617 (and tp!2282416 tp!2282414))))

(assert (=> b!7769108 (= tp!2282303 e!4603617)))

(assert (= (and b!7769108 ((_ is ElementMatch!20753) (reg!21082 (reg!21082 r!25924)))) b!7769447))

(assert (= (and b!7769108 ((_ is Concat!29598) (reg!21082 (reg!21082 r!25924)))) b!7769448))

(assert (= (and b!7769108 ((_ is Star!20753) (reg!21082 (reg!21082 r!25924)))) b!7769449))

(assert (= (and b!7769108 ((_ is Union!20753) (reg!21082 (reg!21082 r!25924)))) b!7769450))

(declare-fun b!7769453 () Bool)

(declare-fun e!4603618 () Bool)

(declare-fun tp!2282422 () Bool)

(assert (=> b!7769453 (= e!4603618 tp!2282422)))

(declare-fun b!7769451 () Bool)

(assert (=> b!7769451 (= e!4603618 tp_is_empty!51861)))

(declare-fun b!7769452 () Bool)

(declare-fun tp!2282418 () Bool)

(declare-fun tp!2282420 () Bool)

(assert (=> b!7769452 (= e!4603618 (and tp!2282418 tp!2282420))))

(declare-fun b!7769454 () Bool)

(declare-fun tp!2282421 () Bool)

(declare-fun tp!2282419 () Bool)

(assert (=> b!7769454 (= e!4603618 (and tp!2282421 tp!2282419))))

(assert (=> b!7769113 (= tp!2282307 e!4603618)))

(assert (= (and b!7769113 ((_ is ElementMatch!20753) (regOne!42019 (regOne!42018 r!25924)))) b!7769451))

(assert (= (and b!7769113 ((_ is Concat!29598) (regOne!42019 (regOne!42018 r!25924)))) b!7769452))

(assert (= (and b!7769113 ((_ is Star!20753) (regOne!42019 (regOne!42018 r!25924)))) b!7769453))

(assert (= (and b!7769113 ((_ is Union!20753) (regOne!42019 (regOne!42018 r!25924)))) b!7769454))

(declare-fun b!7769457 () Bool)

(declare-fun e!4603619 () Bool)

(declare-fun tp!2282427 () Bool)

(assert (=> b!7769457 (= e!4603619 tp!2282427)))

(declare-fun b!7769455 () Bool)

(assert (=> b!7769455 (= e!4603619 tp_is_empty!51861)))

(declare-fun b!7769456 () Bool)

(declare-fun tp!2282423 () Bool)

(declare-fun tp!2282425 () Bool)

(assert (=> b!7769456 (= e!4603619 (and tp!2282423 tp!2282425))))

(declare-fun b!7769458 () Bool)

(declare-fun tp!2282426 () Bool)

(declare-fun tp!2282424 () Bool)

(assert (=> b!7769458 (= e!4603619 (and tp!2282426 tp!2282424))))

(assert (=> b!7769113 (= tp!2282305 e!4603619)))

(assert (= (and b!7769113 ((_ is ElementMatch!20753) (regTwo!42019 (regOne!42018 r!25924)))) b!7769455))

(assert (= (and b!7769113 ((_ is Concat!29598) (regTwo!42019 (regOne!42018 r!25924)))) b!7769456))

(assert (= (and b!7769113 ((_ is Star!20753) (regTwo!42019 (regOne!42018 r!25924)))) b!7769457))

(assert (= (and b!7769113 ((_ is Union!20753) (regTwo!42019 (regOne!42018 r!25924)))) b!7769458))

(declare-fun b!7769461 () Bool)

(declare-fun e!4603620 () Bool)

(declare-fun tp!2282432 () Bool)

(assert (=> b!7769461 (= e!4603620 tp!2282432)))

(declare-fun b!7769459 () Bool)

(assert (=> b!7769459 (= e!4603620 tp_is_empty!51861)))

(declare-fun b!7769460 () Bool)

(declare-fun tp!2282428 () Bool)

(declare-fun tp!2282430 () Bool)

(assert (=> b!7769460 (= e!4603620 (and tp!2282428 tp!2282430))))

(declare-fun b!7769462 () Bool)

(declare-fun tp!2282431 () Bool)

(declare-fun tp!2282429 () Bool)

(assert (=> b!7769462 (= e!4603620 (and tp!2282431 tp!2282429))))

(assert (=> b!7769123 (= tp!2282319 e!4603620)))

(assert (= (and b!7769123 ((_ is ElementMatch!20753) (regOne!42018 (regTwo!42019 r!25924)))) b!7769459))

(assert (= (and b!7769123 ((_ is Concat!29598) (regOne!42018 (regTwo!42019 r!25924)))) b!7769460))

(assert (= (and b!7769123 ((_ is Star!20753) (regOne!42018 (regTwo!42019 r!25924)))) b!7769461))

(assert (= (and b!7769123 ((_ is Union!20753) (regOne!42018 (regTwo!42019 r!25924)))) b!7769462))

(declare-fun b!7769465 () Bool)

(declare-fun e!4603621 () Bool)

(declare-fun tp!2282437 () Bool)

(assert (=> b!7769465 (= e!4603621 tp!2282437)))

(declare-fun b!7769463 () Bool)

(assert (=> b!7769463 (= e!4603621 tp_is_empty!51861)))

(declare-fun b!7769464 () Bool)

(declare-fun tp!2282433 () Bool)

(declare-fun tp!2282435 () Bool)

(assert (=> b!7769464 (= e!4603621 (and tp!2282433 tp!2282435))))

(declare-fun b!7769466 () Bool)

(declare-fun tp!2282436 () Bool)

(declare-fun tp!2282434 () Bool)

(assert (=> b!7769466 (= e!4603621 (and tp!2282436 tp!2282434))))

(assert (=> b!7769123 (= tp!2282321 e!4603621)))

(assert (= (and b!7769123 ((_ is ElementMatch!20753) (regTwo!42018 (regTwo!42019 r!25924)))) b!7769463))

(assert (= (and b!7769123 ((_ is Concat!29598) (regTwo!42018 (regTwo!42019 r!25924)))) b!7769464))

(assert (= (and b!7769123 ((_ is Star!20753) (regTwo!42018 (regTwo!42019 r!25924)))) b!7769465))

(assert (= (and b!7769123 ((_ is Union!20753) (regTwo!42018 (regTwo!42019 r!25924)))) b!7769466))

(declare-fun b!7769469 () Bool)

(declare-fun e!4603622 () Bool)

(declare-fun tp!2282442 () Bool)

(assert (=> b!7769469 (= e!4603622 tp!2282442)))

(declare-fun b!7769467 () Bool)

(assert (=> b!7769467 (= e!4603622 tp_is_empty!51861)))

(declare-fun b!7769468 () Bool)

(declare-fun tp!2282438 () Bool)

(declare-fun tp!2282440 () Bool)

(assert (=> b!7769468 (= e!4603622 (and tp!2282438 tp!2282440))))

(declare-fun b!7769470 () Bool)

(declare-fun tp!2282441 () Bool)

(declare-fun tp!2282439 () Bool)

(assert (=> b!7769470 (= e!4603622 (and tp!2282441 tp!2282439))))

(assert (=> b!7769109 (= tp!2282302 e!4603622)))

(assert (= (and b!7769109 ((_ is ElementMatch!20753) (regOne!42019 (reg!21082 r!25924)))) b!7769467))

(assert (= (and b!7769109 ((_ is Concat!29598) (regOne!42019 (reg!21082 r!25924)))) b!7769468))

(assert (= (and b!7769109 ((_ is Star!20753) (regOne!42019 (reg!21082 r!25924)))) b!7769469))

(assert (= (and b!7769109 ((_ is Union!20753) (regOne!42019 (reg!21082 r!25924)))) b!7769470))

(declare-fun b!7769473 () Bool)

(declare-fun e!4603623 () Bool)

(declare-fun tp!2282447 () Bool)

(assert (=> b!7769473 (= e!4603623 tp!2282447)))

(declare-fun b!7769471 () Bool)

(assert (=> b!7769471 (= e!4603623 tp_is_empty!51861)))

(declare-fun b!7769472 () Bool)

(declare-fun tp!2282443 () Bool)

(declare-fun tp!2282445 () Bool)

(assert (=> b!7769472 (= e!4603623 (and tp!2282443 tp!2282445))))

(declare-fun b!7769474 () Bool)

(declare-fun tp!2282446 () Bool)

(declare-fun tp!2282444 () Bool)

(assert (=> b!7769474 (= e!4603623 (and tp!2282446 tp!2282444))))

(assert (=> b!7769109 (= tp!2282300 e!4603623)))

(assert (= (and b!7769109 ((_ is ElementMatch!20753) (regTwo!42019 (reg!21082 r!25924)))) b!7769471))

(assert (= (and b!7769109 ((_ is Concat!29598) (regTwo!42019 (reg!21082 r!25924)))) b!7769472))

(assert (= (and b!7769109 ((_ is Star!20753) (regTwo!42019 (reg!21082 r!25924)))) b!7769473))

(assert (= (and b!7769109 ((_ is Union!20753) (regTwo!42019 (reg!21082 r!25924)))) b!7769474))

(declare-fun b!7769477 () Bool)

(declare-fun e!4603624 () Bool)

(declare-fun tp!2282452 () Bool)

(assert (=> b!7769477 (= e!4603624 tp!2282452)))

(declare-fun b!7769475 () Bool)

(assert (=> b!7769475 (= e!4603624 tp_is_empty!51861)))

(declare-fun b!7769476 () Bool)

(declare-fun tp!2282448 () Bool)

(declare-fun tp!2282450 () Bool)

(assert (=> b!7769476 (= e!4603624 (and tp!2282448 tp!2282450))))

(declare-fun b!7769478 () Bool)

(declare-fun tp!2282451 () Bool)

(declare-fun tp!2282449 () Bool)

(assert (=> b!7769478 (= e!4603624 (and tp!2282451 tp!2282449))))

(assert (=> b!7769119 (= tp!2282314 e!4603624)))

(assert (= (and b!7769119 ((_ is ElementMatch!20753) (regOne!42018 (regOne!42019 r!25924)))) b!7769475))

(assert (= (and b!7769119 ((_ is Concat!29598) (regOne!42018 (regOne!42019 r!25924)))) b!7769476))

(assert (= (and b!7769119 ((_ is Star!20753) (regOne!42018 (regOne!42019 r!25924)))) b!7769477))

(assert (= (and b!7769119 ((_ is Union!20753) (regOne!42018 (regOne!42019 r!25924)))) b!7769478))

(declare-fun b!7769481 () Bool)

(declare-fun e!4603625 () Bool)

(declare-fun tp!2282457 () Bool)

(assert (=> b!7769481 (= e!4603625 tp!2282457)))

(declare-fun b!7769479 () Bool)

(assert (=> b!7769479 (= e!4603625 tp_is_empty!51861)))

(declare-fun b!7769480 () Bool)

(declare-fun tp!2282453 () Bool)

(declare-fun tp!2282455 () Bool)

(assert (=> b!7769480 (= e!4603625 (and tp!2282453 tp!2282455))))

(declare-fun b!7769482 () Bool)

(declare-fun tp!2282456 () Bool)

(declare-fun tp!2282454 () Bool)

(assert (=> b!7769482 (= e!4603625 (and tp!2282456 tp!2282454))))

(assert (=> b!7769119 (= tp!2282316 e!4603625)))

(assert (= (and b!7769119 ((_ is ElementMatch!20753) (regTwo!42018 (regOne!42019 r!25924)))) b!7769479))

(assert (= (and b!7769119 ((_ is Concat!29598) (regTwo!42018 (regOne!42019 r!25924)))) b!7769480))

(assert (= (and b!7769119 ((_ is Star!20753) (regTwo!42018 (regOne!42019 r!25924)))) b!7769481))

(assert (= (and b!7769119 ((_ is Union!20753) (regTwo!42018 (regOne!42019 r!25924)))) b!7769482))

(declare-fun b!7769485 () Bool)

(declare-fun e!4603626 () Bool)

(declare-fun tp!2282462 () Bool)

(assert (=> b!7769485 (= e!4603626 tp!2282462)))

(declare-fun b!7769483 () Bool)

(assert (=> b!7769483 (= e!4603626 tp_is_empty!51861)))

(declare-fun b!7769484 () Bool)

(declare-fun tp!2282458 () Bool)

(declare-fun tp!2282460 () Bool)

(assert (=> b!7769484 (= e!4603626 (and tp!2282458 tp!2282460))))

(declare-fun b!7769486 () Bool)

(declare-fun tp!2282461 () Bool)

(declare-fun tp!2282459 () Bool)

(assert (=> b!7769486 (= e!4603626 (and tp!2282461 tp!2282459))))

(assert (=> b!7769116 (= tp!2282313 e!4603626)))

(assert (= (and b!7769116 ((_ is ElementMatch!20753) (reg!21082 (regTwo!42018 r!25924)))) b!7769483))

(assert (= (and b!7769116 ((_ is Concat!29598) (reg!21082 (regTwo!42018 r!25924)))) b!7769484))

(assert (= (and b!7769116 ((_ is Star!20753) (reg!21082 (regTwo!42018 r!25924)))) b!7769485))

(assert (= (and b!7769116 ((_ is Union!20753) (reg!21082 (regTwo!42018 r!25924)))) b!7769486))

(declare-fun b!7769489 () Bool)

(declare-fun e!4603627 () Bool)

(declare-fun tp!2282467 () Bool)

(assert (=> b!7769489 (= e!4603627 tp!2282467)))

(declare-fun b!7769487 () Bool)

(assert (=> b!7769487 (= e!4603627 tp_is_empty!51861)))

(declare-fun b!7769488 () Bool)

(declare-fun tp!2282463 () Bool)

(declare-fun tp!2282465 () Bool)

(assert (=> b!7769488 (= e!4603627 (and tp!2282463 tp!2282465))))

(declare-fun b!7769490 () Bool)

(declare-fun tp!2282466 () Bool)

(declare-fun tp!2282464 () Bool)

(assert (=> b!7769490 (= e!4603627 (and tp!2282466 tp!2282464))))

(assert (=> b!7769107 (= tp!2282299 e!4603627)))

(assert (= (and b!7769107 ((_ is ElementMatch!20753) (regOne!42018 (reg!21082 r!25924)))) b!7769487))

(assert (= (and b!7769107 ((_ is Concat!29598) (regOne!42018 (reg!21082 r!25924)))) b!7769488))

(assert (= (and b!7769107 ((_ is Star!20753) (regOne!42018 (reg!21082 r!25924)))) b!7769489))

(assert (= (and b!7769107 ((_ is Union!20753) (regOne!42018 (reg!21082 r!25924)))) b!7769490))

(declare-fun b!7769493 () Bool)

(declare-fun e!4603628 () Bool)

(declare-fun tp!2282472 () Bool)

(assert (=> b!7769493 (= e!4603628 tp!2282472)))

(declare-fun b!7769491 () Bool)

(assert (=> b!7769491 (= e!4603628 tp_is_empty!51861)))

(declare-fun b!7769492 () Bool)

(declare-fun tp!2282468 () Bool)

(declare-fun tp!2282470 () Bool)

(assert (=> b!7769492 (= e!4603628 (and tp!2282468 tp!2282470))))

(declare-fun b!7769494 () Bool)

(declare-fun tp!2282471 () Bool)

(declare-fun tp!2282469 () Bool)

(assert (=> b!7769494 (= e!4603628 (and tp!2282471 tp!2282469))))

(assert (=> b!7769107 (= tp!2282301 e!4603628)))

(assert (= (and b!7769107 ((_ is ElementMatch!20753) (regTwo!42018 (reg!21082 r!25924)))) b!7769491))

(assert (= (and b!7769107 ((_ is Concat!29598) (regTwo!42018 (reg!21082 r!25924)))) b!7769492))

(assert (= (and b!7769107 ((_ is Star!20753) (regTwo!42018 (reg!21082 r!25924)))) b!7769493))

(assert (= (and b!7769107 ((_ is Union!20753) (regTwo!42018 (reg!21082 r!25924)))) b!7769494))

(declare-fun b!7769497 () Bool)

(declare-fun e!4603629 () Bool)

(declare-fun tp!2282477 () Bool)

(assert (=> b!7769497 (= e!4603629 tp!2282477)))

(declare-fun b!7769495 () Bool)

(assert (=> b!7769495 (= e!4603629 tp_is_empty!51861)))

(declare-fun b!7769496 () Bool)

(declare-fun tp!2282473 () Bool)

(declare-fun tp!2282475 () Bool)

(assert (=> b!7769496 (= e!4603629 (and tp!2282473 tp!2282475))))

(declare-fun b!7769498 () Bool)

(declare-fun tp!2282476 () Bool)

(declare-fun tp!2282474 () Bool)

(assert (=> b!7769498 (= e!4603629 (and tp!2282476 tp!2282474))))

(assert (=> b!7769112 (= tp!2282308 e!4603629)))

(assert (= (and b!7769112 ((_ is ElementMatch!20753) (reg!21082 (regOne!42018 r!25924)))) b!7769495))

(assert (= (and b!7769112 ((_ is Concat!29598) (reg!21082 (regOne!42018 r!25924)))) b!7769496))

(assert (= (and b!7769112 ((_ is Star!20753) (reg!21082 (regOne!42018 r!25924)))) b!7769497))

(assert (= (and b!7769112 ((_ is Union!20753) (reg!21082 (regOne!42018 r!25924)))) b!7769498))

(declare-fun b!7769501 () Bool)

(declare-fun e!4603630 () Bool)

(declare-fun tp!2282482 () Bool)

(assert (=> b!7769501 (= e!4603630 tp!2282482)))

(declare-fun b!7769499 () Bool)

(assert (=> b!7769499 (= e!4603630 tp_is_empty!51861)))

(declare-fun b!7769500 () Bool)

(declare-fun tp!2282478 () Bool)

(declare-fun tp!2282480 () Bool)

(assert (=> b!7769500 (= e!4603630 (and tp!2282478 tp!2282480))))

(declare-fun b!7769502 () Bool)

(declare-fun tp!2282481 () Bool)

(declare-fun tp!2282479 () Bool)

(assert (=> b!7769502 (= e!4603630 (and tp!2282481 tp!2282479))))

(assert (=> b!7769117 (= tp!2282312 e!4603630)))

(assert (= (and b!7769117 ((_ is ElementMatch!20753) (regOne!42019 (regTwo!42018 r!25924)))) b!7769499))

(assert (= (and b!7769117 ((_ is Concat!29598) (regOne!42019 (regTwo!42018 r!25924)))) b!7769500))

(assert (= (and b!7769117 ((_ is Star!20753) (regOne!42019 (regTwo!42018 r!25924)))) b!7769501))

(assert (= (and b!7769117 ((_ is Union!20753) (regOne!42019 (regTwo!42018 r!25924)))) b!7769502))

(declare-fun b!7769505 () Bool)

(declare-fun e!4603631 () Bool)

(declare-fun tp!2282487 () Bool)

(assert (=> b!7769505 (= e!4603631 tp!2282487)))

(declare-fun b!7769503 () Bool)

(assert (=> b!7769503 (= e!4603631 tp_is_empty!51861)))

(declare-fun b!7769504 () Bool)

(declare-fun tp!2282483 () Bool)

(declare-fun tp!2282485 () Bool)

(assert (=> b!7769504 (= e!4603631 (and tp!2282483 tp!2282485))))

(declare-fun b!7769506 () Bool)

(declare-fun tp!2282486 () Bool)

(declare-fun tp!2282484 () Bool)

(assert (=> b!7769506 (= e!4603631 (and tp!2282486 tp!2282484))))

(assert (=> b!7769117 (= tp!2282310 e!4603631)))

(assert (= (and b!7769117 ((_ is ElementMatch!20753) (regTwo!42019 (regTwo!42018 r!25924)))) b!7769503))

(assert (= (and b!7769117 ((_ is Concat!29598) (regTwo!42019 (regTwo!42018 r!25924)))) b!7769504))

(assert (= (and b!7769117 ((_ is Star!20753) (regTwo!42019 (regTwo!42018 r!25924)))) b!7769505))

(assert (= (and b!7769117 ((_ is Union!20753) (regTwo!42019 (regTwo!42018 r!25924)))) b!7769506))

(check-sat (not b!7769481) (not b!7769462) (not b!7769468) (not b!7769385) (not b!7769262) (not bm!719926) (not bm!719924) (not d!2344228) (not bm!719953) (not b!7769416) (not b!7769489) (not bm!719949) (not d!2344198) (not d!2344216) (not bm!719932) (not b!7769492) (not b!7769424) (not b!7769411) (not b!7769472) (not bm!719921) (not b!7769454) (not b!7769469) (not b!7769504) (not bm!719931) (not b!7769254) (not bm!719955) (not b!7769413) (not b!7769486) (not b!7769265) (not b!7769437) (not b!7769408) (not b!7769506) (not b!7769474) (not b!7769496) (not b!7769498) (not bm!719950) (not bm!719946) (not bm!719920) (not bm!719933) (not bm!719956) (not b!7769449) (not b!7769484) (not b!7769307) (not b!7769505) (not b!7769367) (not bm!719928) tp_is_empty!51861 (not bm!719964) (not b!7769448) (not b!7769330) (not b!7769432) (not d!2344208) (not b!7769376) (not b!7769393) (not b!7769403) (not b!7769286) (not b!7769436) (not b!7769482) (not b!7769458) (not b!7769297) (not bm!719919) (not bm!719958) (not b!7769453) (not bm!719966) (not b!7769501) (not b!7769485) (not b!7769500) (not bm!719960) (not b!7769494) (not d!2344174) (not bm!719936) (not b!7769464) (not b!7769428) (not b!7769266) (not bm!719922) (not bm!719939) (not b!7769430) (not b!7769490) (not b!7769417) (not bm!719944) (not b!7769420) (not b!7769441) (not b!7769358) (not bm!719943) (not d!2344182) (not bm!719934) (not b!7769460) (not b!7769473) (not b!7769256) (not b!7769409) (not b!7769488) (not b!7769444) (not b!7769259) (not b!7769339) (not b!7769446) (not b!7769477) (not b!7769438) (not b!7769299) (not b!7769465) (not bm!719962) (not bm!719959) (not d!2344202) (not b!7769478) (not d!2344218) (not bm!719940) (not d!2344184) (not b!7769470) (not b!7769415) (not b!7769456) (not b!7769457) (not b!7769412) (not b!7769480) (not b!7769440) (not b!7769502) (not b!7769434) (not b!7769407) (not b!7769445) (not b!7769493) (not b!7769429) (not d!2344206) (not b!7769461) (not b!7769264) (not b!7769347) (not b!7769302) (not b!7769421) (not d!2344204) (not b!7769476) (not b!7769319) (not bm!719952) (not b!7769276) (not b!7769452) (not b!7769466) (not b!7769305) (not b!7769433) (not b!7769308) (not b!7769419) (not d!2344196) (not b!7769450) (not d!2344230) (not bm!719942) (not b!7769442) (not d!2344176) (not b!7769425) (not b!7769427) (not b!7769497) (not b!7769423) (not b!7769309))
(check-sat)

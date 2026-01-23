; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741418 () Bool)

(assert start!741418)

(declare-fun b!7804891 () Bool)

(declare-fun e!4620145 () Bool)

(declare-fun e!4620141 () Bool)

(assert (=> b!7804891 (= e!4620145 e!4620141)))

(declare-fun res!3108383 () Bool)

(assert (=> b!7804891 (=> (not res!3108383) (not e!4620141))))

(declare-datatypes ((C!42096 0))(
  ( (C!42097 (val!31488 Int)) )
))
(declare-datatypes ((Regex!20885 0))(
  ( (ElementMatch!20885 (c!1437264 C!42096)) (Concat!29730 (regOne!42282 Regex!20885) (regTwo!42282 Regex!20885)) (EmptyExpr!20885) (Star!20885 (reg!21214 Regex!20885)) (EmptyLang!20885) (Union!20885 (regOne!42283 Regex!20885) (regTwo!42283 Regex!20885)) )
))
(declare-fun lt!2675108 () Regex!20885)

(declare-fun lt!2675103 () Regex!20885)

(assert (=> b!7804891 (= res!3108383 (= lt!2675108 (Union!20885 lt!2675103 EmptyLang!20885)))))

(declare-fun lt!2675111 () Regex!20885)

(declare-fun r2!6217 () Regex!20885)

(assert (=> b!7804891 (= lt!2675103 (Concat!29730 lt!2675111 r2!6217))))

(declare-fun r1!6279 () Regex!20885)

(declare-datatypes ((List!73724 0))(
  ( (Nil!73600) (Cons!73600 (h!80048 C!42096) (t!388459 List!73724)) )
))
(declare-fun s!14292 () List!73724)

(declare-fun derivativeStep!6222 (Regex!20885 C!42096) Regex!20885)

(assert (=> b!7804891 (= lt!2675111 (derivativeStep!6222 r1!6279 (h!80048 s!14292)))))

(declare-fun b!7804892 () Bool)

(declare-fun res!3108377 () Bool)

(declare-fun e!4620147 () Bool)

(assert (=> b!7804892 (=> (not res!3108377) (not e!4620147))))

(declare-fun validRegex!11299 (Regex!20885) Bool)

(assert (=> b!7804892 (= res!3108377 (validRegex!11299 r2!6217))))

(declare-fun b!7804893 () Bool)

(declare-fun e!4620143 () Bool)

(assert (=> b!7804893 (= e!4620147 e!4620143)))

(declare-fun res!3108378 () Bool)

(assert (=> b!7804893 (=> (not res!3108378) (not e!4620143))))

(declare-fun lt!2675105 () Regex!20885)

(declare-fun matchR!10345 (Regex!20885 List!73724) Bool)

(assert (=> b!7804893 (= res!3108378 (matchR!10345 lt!2675105 s!14292))))

(assert (=> b!7804893 (= lt!2675105 (Concat!29730 r1!6279 r2!6217))))

(declare-fun b!7804894 () Bool)

(declare-fun e!4620138 () Bool)

(declare-fun tp!2299356 () Bool)

(declare-fun tp!2299353 () Bool)

(assert (=> b!7804894 (= e!4620138 (and tp!2299356 tp!2299353))))

(declare-fun b!7804895 () Bool)

(declare-fun res!3108376 () Bool)

(assert (=> b!7804895 (=> (not res!3108376) (not e!4620143))))

(get-info :version)

(assert (=> b!7804895 (= res!3108376 ((_ is Cons!73600) s!14292))))

(declare-fun b!7804896 () Bool)

(declare-fun e!4620146 () Bool)

(assert (=> b!7804896 (= e!4620146 (matchR!10345 EmptyLang!20885 (t!388459 s!14292)))))

(declare-fun b!7804898 () Bool)

(declare-fun e!4620139 () Bool)

(declare-fun tp!2299355 () Bool)

(declare-fun tp!2299354 () Bool)

(assert (=> b!7804898 (= e!4620139 (and tp!2299355 tp!2299354))))

(declare-fun b!7804899 () Bool)

(declare-fun tp!2299363 () Bool)

(declare-fun tp!2299362 () Bool)

(assert (=> b!7804899 (= e!4620138 (and tp!2299363 tp!2299362))))

(declare-fun b!7804900 () Bool)

(declare-fun e!4620144 () Bool)

(declare-fun tp_is_empty!52125 () Bool)

(declare-fun tp!2299361 () Bool)

(assert (=> b!7804900 (= e!4620144 (and tp_is_empty!52125 tp!2299361))))

(declare-fun b!7804901 () Bool)

(declare-fun e!4620142 () Bool)

(declare-fun e!4620140 () Bool)

(assert (=> b!7804901 (= e!4620142 e!4620140)))

(declare-fun res!3108384 () Bool)

(assert (=> b!7804901 (=> res!3108384 e!4620140)))

(declare-datatypes ((tuple2!69956 0))(
  ( (tuple2!69957 (_1!38281 List!73724) (_2!38281 List!73724)) )
))
(declare-fun lt!2675102 () tuple2!69956)

(declare-fun lt!2675107 () List!73724)

(declare-fun ++!17945 (List!73724 List!73724) List!73724)

(assert (=> b!7804901 (= res!3108384 (not (= (++!17945 lt!2675107 (_2!38281 lt!2675102)) s!14292)))))

(assert (=> b!7804901 (= lt!2675107 (Cons!73600 (h!80048 s!14292) (_1!38281 lt!2675102)))))

(declare-datatypes ((Option!17772 0))(
  ( (None!17771) (Some!17771 (v!54906 tuple2!69956)) )
))
(declare-fun lt!2675110 () Option!17772)

(declare-fun get!26339 (Option!17772) tuple2!69956)

(assert (=> b!7804901 (= lt!2675102 (get!26339 lt!2675110))))

(declare-fun isDefined!14382 (Option!17772) Bool)

(assert (=> b!7804901 (isDefined!14382 lt!2675110)))

(declare-fun findConcatSeparation!3802 (Regex!20885 Regex!20885 List!73724 List!73724 List!73724) Option!17772)

(assert (=> b!7804901 (= lt!2675110 (findConcatSeparation!3802 lt!2675111 r2!6217 Nil!73600 (t!388459 s!14292) (t!388459 s!14292)))))

(declare-datatypes ((Unit!168608 0))(
  ( (Unit!168609) )
))
(declare-fun lt!2675112 () Unit!168608)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!384 (Regex!20885 Regex!20885 List!73724) Unit!168608)

(assert (=> b!7804901 (= lt!2675112 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!384 lt!2675111 r2!6217 (t!388459 s!14292)))))

(declare-fun b!7804902 () Bool)

(assert (=> b!7804902 (= e!4620139 tp_is_empty!52125)))

(declare-fun b!7804903 () Bool)

(declare-fun isPrefix!6263 (List!73724 List!73724) Bool)

(assert (=> b!7804903 (= e!4620140 (isPrefix!6263 Nil!73600 lt!2675107))))

(declare-fun b!7804904 () Bool)

(declare-fun tp!2299360 () Bool)

(assert (=> b!7804904 (= e!4620138 tp!2299360)))

(declare-fun b!7804905 () Bool)

(declare-fun tp!2299358 () Bool)

(assert (=> b!7804905 (= e!4620139 tp!2299358)))

(declare-fun b!7804906 () Bool)

(assert (=> b!7804906 (= e!4620143 e!4620145)))

(declare-fun res!3108380 () Bool)

(assert (=> b!7804906 (=> (not res!3108380) (not e!4620145))))

(assert (=> b!7804906 (= res!3108380 (matchR!10345 lt!2675108 (t!388459 s!14292)))))

(assert (=> b!7804906 (= lt!2675108 (derivativeStep!6222 lt!2675105 (h!80048 s!14292)))))

(declare-fun b!7804897 () Bool)

(declare-fun tp!2299359 () Bool)

(declare-fun tp!2299357 () Bool)

(assert (=> b!7804897 (= e!4620139 (and tp!2299359 tp!2299357))))

(declare-fun res!3108375 () Bool)

(assert (=> start!741418 (=> (not res!3108375) (not e!4620147))))

(assert (=> start!741418 (= res!3108375 (validRegex!11299 r1!6279))))

(assert (=> start!741418 e!4620147))

(assert (=> start!741418 e!4620139))

(assert (=> start!741418 e!4620138))

(assert (=> start!741418 e!4620144))

(declare-fun b!7804907 () Bool)

(declare-fun res!3108381 () Bool)

(assert (=> b!7804907 (=> (not res!3108381) (not e!4620145))))

(declare-fun nullable!9269 (Regex!20885) Bool)

(assert (=> b!7804907 (= res!3108381 (not (nullable!9269 r1!6279)))))

(declare-fun b!7804908 () Bool)

(assert (=> b!7804908 (= e!4620138 tp_is_empty!52125)))

(declare-fun b!7804909 () Bool)

(assert (=> b!7804909 (= e!4620141 (not e!4620142))))

(declare-fun res!3108379 () Bool)

(assert (=> b!7804909 (=> res!3108379 e!4620142)))

(declare-fun lt!2675109 () Bool)

(assert (=> b!7804909 (= res!3108379 (not lt!2675109))))

(declare-fun derivative!567 (Regex!20885 List!73724) Regex!20885)

(assert (=> b!7804909 (= (derivative!567 EmptyLang!20885 (t!388459 s!14292)) EmptyLang!20885)))

(declare-fun lt!2675106 () Unit!168608)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!102 (Regex!20885 List!73724) Unit!168608)

(assert (=> b!7804909 (= lt!2675106 (lemmaEmptyLangDerivativeIsAFixPoint!102 EmptyLang!20885 (t!388459 s!14292)))))

(assert (=> b!7804909 e!4620146))

(declare-fun res!3108382 () Bool)

(assert (=> b!7804909 (=> res!3108382 e!4620146)))

(assert (=> b!7804909 (= res!3108382 lt!2675109)))

(assert (=> b!7804909 (= lt!2675109 (matchR!10345 lt!2675103 (t!388459 s!14292)))))

(declare-fun lt!2675104 () Unit!168608)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!424 (Regex!20885 Regex!20885 List!73724) Unit!168608)

(assert (=> b!7804909 (= lt!2675104 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!424 lt!2675103 EmptyLang!20885 (t!388459 s!14292)))))

(assert (= (and start!741418 res!3108375) b!7804892))

(assert (= (and b!7804892 res!3108377) b!7804893))

(assert (= (and b!7804893 res!3108378) b!7804895))

(assert (= (and b!7804895 res!3108376) b!7804906))

(assert (= (and b!7804906 res!3108380) b!7804907))

(assert (= (and b!7804907 res!3108381) b!7804891))

(assert (= (and b!7804891 res!3108383) b!7804909))

(assert (= (and b!7804909 (not res!3108382)) b!7804896))

(assert (= (and b!7804909 (not res!3108379)) b!7804901))

(assert (= (and b!7804901 (not res!3108384)) b!7804903))

(assert (= (and start!741418 ((_ is ElementMatch!20885) r1!6279)) b!7804902))

(assert (= (and start!741418 ((_ is Concat!29730) r1!6279)) b!7804897))

(assert (= (and start!741418 ((_ is Star!20885) r1!6279)) b!7804905))

(assert (= (and start!741418 ((_ is Union!20885) r1!6279)) b!7804898))

(assert (= (and start!741418 ((_ is ElementMatch!20885) r2!6217)) b!7804908))

(assert (= (and start!741418 ((_ is Concat!29730) r2!6217)) b!7804894))

(assert (= (and start!741418 ((_ is Star!20885) r2!6217)) b!7804904))

(assert (= (and start!741418 ((_ is Union!20885) r2!6217)) b!7804899))

(assert (= (and start!741418 ((_ is Cons!73600) s!14292)) b!7804900))

(declare-fun m!8238782 () Bool)

(assert (=> b!7804909 m!8238782))

(declare-fun m!8238784 () Bool)

(assert (=> b!7804909 m!8238784))

(declare-fun m!8238786 () Bool)

(assert (=> b!7804909 m!8238786))

(declare-fun m!8238788 () Bool)

(assert (=> b!7804909 m!8238788))

(declare-fun m!8238790 () Bool)

(assert (=> start!741418 m!8238790))

(declare-fun m!8238792 () Bool)

(assert (=> b!7804892 m!8238792))

(declare-fun m!8238794 () Bool)

(assert (=> b!7804893 m!8238794))

(declare-fun m!8238796 () Bool)

(assert (=> b!7804906 m!8238796))

(declare-fun m!8238798 () Bool)

(assert (=> b!7804906 m!8238798))

(declare-fun m!8238800 () Bool)

(assert (=> b!7804907 m!8238800))

(declare-fun m!8238802 () Bool)

(assert (=> b!7804903 m!8238802))

(declare-fun m!8238804 () Bool)

(assert (=> b!7804896 m!8238804))

(declare-fun m!8238806 () Bool)

(assert (=> b!7804901 m!8238806))

(declare-fun m!8238808 () Bool)

(assert (=> b!7804901 m!8238808))

(declare-fun m!8238810 () Bool)

(assert (=> b!7804901 m!8238810))

(declare-fun m!8238812 () Bool)

(assert (=> b!7804901 m!8238812))

(declare-fun m!8238814 () Bool)

(assert (=> b!7804901 m!8238814))

(declare-fun m!8238816 () Bool)

(assert (=> b!7804891 m!8238816))

(check-sat (not b!7804898) (not b!7804909) (not start!741418) (not b!7804906) (not b!7804894) (not b!7804907) (not b!7804891) (not b!7804896) (not b!7804893) (not b!7804899) (not b!7804905) (not b!7804901) (not b!7804900) (not b!7804892) (not b!7804903) tp_is_empty!52125 (not b!7804897) (not b!7804904))
(check-sat)
(get-model)

(declare-fun b!7804919 () Bool)

(declare-fun res!3108395 () Bool)

(declare-fun e!4620155 () Bool)

(assert (=> b!7804919 (=> (not res!3108395) (not e!4620155))))

(declare-fun head!15959 (List!73724) C!42096)

(assert (=> b!7804919 (= res!3108395 (= (head!15959 Nil!73600) (head!15959 lt!2675107)))))

(declare-fun b!7804921 () Bool)

(declare-fun e!4620154 () Bool)

(declare-fun size!42726 (List!73724) Int)

(assert (=> b!7804921 (= e!4620154 (>= (size!42726 lt!2675107) (size!42726 Nil!73600)))))

(declare-fun d!2347882 () Bool)

(assert (=> d!2347882 e!4620154))

(declare-fun res!3108394 () Bool)

(assert (=> d!2347882 (=> res!3108394 e!4620154)))

(declare-fun lt!2675115 () Bool)

(assert (=> d!2347882 (= res!3108394 (not lt!2675115))))

(declare-fun e!4620156 () Bool)

(assert (=> d!2347882 (= lt!2675115 e!4620156)))

(declare-fun res!3108393 () Bool)

(assert (=> d!2347882 (=> res!3108393 e!4620156)))

(assert (=> d!2347882 (= res!3108393 ((_ is Nil!73600) Nil!73600))))

(assert (=> d!2347882 (= (isPrefix!6263 Nil!73600 lt!2675107) lt!2675115)))

(declare-fun b!7804918 () Bool)

(assert (=> b!7804918 (= e!4620156 e!4620155)))

(declare-fun res!3108396 () Bool)

(assert (=> b!7804918 (=> (not res!3108396) (not e!4620155))))

(assert (=> b!7804918 (= res!3108396 (not ((_ is Nil!73600) lt!2675107)))))

(declare-fun b!7804920 () Bool)

(declare-fun tail!15500 (List!73724) List!73724)

(assert (=> b!7804920 (= e!4620155 (isPrefix!6263 (tail!15500 Nil!73600) (tail!15500 lt!2675107)))))

(assert (= (and d!2347882 (not res!3108393)) b!7804918))

(assert (= (and b!7804918 res!3108396) b!7804919))

(assert (= (and b!7804919 res!3108395) b!7804920))

(assert (= (and d!2347882 (not res!3108394)) b!7804921))

(declare-fun m!8238818 () Bool)

(assert (=> b!7804919 m!8238818))

(declare-fun m!8238820 () Bool)

(assert (=> b!7804919 m!8238820))

(declare-fun m!8238822 () Bool)

(assert (=> b!7804921 m!8238822))

(declare-fun m!8238824 () Bool)

(assert (=> b!7804921 m!8238824))

(declare-fun m!8238826 () Bool)

(assert (=> b!7804920 m!8238826))

(declare-fun m!8238828 () Bool)

(assert (=> b!7804920 m!8238828))

(assert (=> b!7804920 m!8238826))

(assert (=> b!7804920 m!8238828))

(declare-fun m!8238830 () Bool)

(assert (=> b!7804920 m!8238830))

(assert (=> b!7804903 d!2347882))

(declare-fun b!7804940 () Bool)

(declare-fun e!4620176 () Bool)

(declare-fun call!723903 () Bool)

(assert (=> b!7804940 (= e!4620176 call!723903)))

(declare-fun c!1437270 () Bool)

(declare-fun bm!723896 () Bool)

(declare-fun c!1437269 () Bool)

(assert (=> bm!723896 (= call!723903 (validRegex!11299 (ite c!1437269 (reg!21214 r2!6217) (ite c!1437270 (regOne!42283 r2!6217) (regOne!42282 r2!6217)))))))

(declare-fun b!7804941 () Bool)

(declare-fun e!4620175 () Bool)

(declare-fun e!4620171 () Bool)

(assert (=> b!7804941 (= e!4620175 e!4620171)))

(declare-fun res!3108407 () Bool)

(assert (=> b!7804941 (=> (not res!3108407) (not e!4620171))))

(declare-fun call!723901 () Bool)

(assert (=> b!7804941 (= res!3108407 call!723901)))

(declare-fun b!7804942 () Bool)

(declare-fun e!4620172 () Bool)

(assert (=> b!7804942 (= e!4620172 e!4620176)))

(declare-fun res!3108410 () Bool)

(assert (=> b!7804942 (= res!3108410 (not (nullable!9269 (reg!21214 r2!6217))))))

(assert (=> b!7804942 (=> (not res!3108410) (not e!4620176))))

(declare-fun b!7804943 () Bool)

(declare-fun res!3108408 () Bool)

(declare-fun e!4620173 () Bool)

(assert (=> b!7804943 (=> (not res!3108408) (not e!4620173))))

(assert (=> b!7804943 (= res!3108408 call!723901)))

(declare-fun e!4620174 () Bool)

(assert (=> b!7804943 (= e!4620174 e!4620173)))

(declare-fun bm!723897 () Bool)

(declare-fun call!723902 () Bool)

(assert (=> bm!723897 (= call!723902 (validRegex!11299 (ite c!1437270 (regTwo!42283 r2!6217) (regTwo!42282 r2!6217))))))

(declare-fun bm!723898 () Bool)

(assert (=> bm!723898 (= call!723901 call!723903)))

(declare-fun b!7804945 () Bool)

(assert (=> b!7804945 (= e!4620173 call!723902)))

(declare-fun b!7804946 () Bool)

(assert (=> b!7804946 (= e!4620171 call!723902)))

(declare-fun d!2347884 () Bool)

(declare-fun res!3108411 () Bool)

(declare-fun e!4620177 () Bool)

(assert (=> d!2347884 (=> res!3108411 e!4620177)))

(assert (=> d!2347884 (= res!3108411 ((_ is ElementMatch!20885) r2!6217))))

(assert (=> d!2347884 (= (validRegex!11299 r2!6217) e!4620177)))

(declare-fun b!7804944 () Bool)

(assert (=> b!7804944 (= e!4620172 e!4620174)))

(assert (=> b!7804944 (= c!1437270 ((_ is Union!20885) r2!6217))))

(declare-fun b!7804947 () Bool)

(assert (=> b!7804947 (= e!4620177 e!4620172)))

(assert (=> b!7804947 (= c!1437269 ((_ is Star!20885) r2!6217))))

(declare-fun b!7804948 () Bool)

(declare-fun res!3108409 () Bool)

(assert (=> b!7804948 (=> res!3108409 e!4620175)))

(assert (=> b!7804948 (= res!3108409 (not ((_ is Concat!29730) r2!6217)))))

(assert (=> b!7804948 (= e!4620174 e!4620175)))

(assert (= (and d!2347884 (not res!3108411)) b!7804947))

(assert (= (and b!7804947 c!1437269) b!7804942))

(assert (= (and b!7804947 (not c!1437269)) b!7804944))

(assert (= (and b!7804942 res!3108410) b!7804940))

(assert (= (and b!7804944 c!1437270) b!7804943))

(assert (= (and b!7804944 (not c!1437270)) b!7804948))

(assert (= (and b!7804943 res!3108408) b!7804945))

(assert (= (and b!7804948 (not res!3108409)) b!7804941))

(assert (= (and b!7804941 res!3108407) b!7804946))

(assert (= (or b!7804943 b!7804941) bm!723898))

(assert (= (or b!7804945 b!7804946) bm!723897))

(assert (= (or b!7804940 bm!723898) bm!723896))

(declare-fun m!8238832 () Bool)

(assert (=> bm!723896 m!8238832))

(declare-fun m!8238834 () Bool)

(assert (=> b!7804942 m!8238834))

(declare-fun m!8238836 () Bool)

(assert (=> bm!723897 m!8238836))

(assert (=> b!7804892 d!2347884))

(declare-fun d!2347886 () Bool)

(declare-fun lt!2675118 () Regex!20885)

(assert (=> d!2347886 (validRegex!11299 lt!2675118)))

(declare-fun e!4620180 () Regex!20885)

(assert (=> d!2347886 (= lt!2675118 e!4620180)))

(declare-fun c!1437273 () Bool)

(assert (=> d!2347886 (= c!1437273 ((_ is Cons!73600) (t!388459 s!14292)))))

(assert (=> d!2347886 (validRegex!11299 EmptyLang!20885)))

(assert (=> d!2347886 (= (derivative!567 EmptyLang!20885 (t!388459 s!14292)) lt!2675118)))

(declare-fun b!7804953 () Bool)

(assert (=> b!7804953 (= e!4620180 (derivative!567 (derivativeStep!6222 EmptyLang!20885 (h!80048 (t!388459 s!14292))) (t!388459 (t!388459 s!14292))))))

(declare-fun b!7804954 () Bool)

(assert (=> b!7804954 (= e!4620180 EmptyLang!20885)))

(assert (= (and d!2347886 c!1437273) b!7804953))

(assert (= (and d!2347886 (not c!1437273)) b!7804954))

(declare-fun m!8238838 () Bool)

(assert (=> d!2347886 m!8238838))

(declare-fun m!8238840 () Bool)

(assert (=> d!2347886 m!8238840))

(declare-fun m!8238842 () Bool)

(assert (=> b!7804953 m!8238842))

(assert (=> b!7804953 m!8238842))

(declare-fun m!8238844 () Bool)

(assert (=> b!7804953 m!8238844))

(assert (=> b!7804909 d!2347886))

(declare-fun d!2347890 () Bool)

(assert (=> d!2347890 (= (derivative!567 EmptyLang!20885 (t!388459 s!14292)) EmptyLang!20885)))

(declare-fun lt!2675123 () Unit!168608)

(declare-fun choose!59556 (Regex!20885 List!73724) Unit!168608)

(assert (=> d!2347890 (= lt!2675123 (choose!59556 EmptyLang!20885 (t!388459 s!14292)))))

(assert (=> d!2347890 (= EmptyLang!20885 EmptyLang!20885)))

(assert (=> d!2347890 (= (lemmaEmptyLangDerivativeIsAFixPoint!102 EmptyLang!20885 (t!388459 s!14292)) lt!2675123)))

(declare-fun bs!1966530 () Bool)

(assert (= bs!1966530 d!2347890))

(assert (=> bs!1966530 m!8238782))

(declare-fun m!8238846 () Bool)

(assert (=> bs!1966530 m!8238846))

(assert (=> b!7804909 d!2347890))

(declare-fun b!7805001 () Bool)

(declare-fun res!3108447 () Bool)

(declare-fun e!4620211 () Bool)

(assert (=> b!7805001 (=> res!3108447 e!4620211)))

(declare-fun isEmpty!42248 (List!73724) Bool)

(assert (=> b!7805001 (= res!3108447 (not (isEmpty!42248 (tail!15500 (t!388459 s!14292)))))))

(declare-fun b!7805002 () Bool)

(declare-fun e!4620210 () Bool)

(assert (=> b!7805002 (= e!4620210 (nullable!9269 lt!2675103))))

(declare-fun b!7805003 () Bool)

(declare-fun res!3108442 () Bool)

(declare-fun e!4620213 () Bool)

(assert (=> b!7805003 (=> res!3108442 e!4620213)))

(assert (=> b!7805003 (= res!3108442 (not ((_ is ElementMatch!20885) lt!2675103)))))

(declare-fun e!4620207 () Bool)

(assert (=> b!7805003 (= e!4620207 e!4620213)))

(declare-fun b!7805004 () Bool)

(declare-fun res!3108446 () Bool)

(declare-fun e!4620212 () Bool)

(assert (=> b!7805004 (=> (not res!3108446) (not e!4620212))))

(assert (=> b!7805004 (= res!3108446 (isEmpty!42248 (tail!15500 (t!388459 s!14292))))))

(declare-fun b!7805005 () Bool)

(assert (=> b!7805005 (= e!4620212 (= (head!15959 (t!388459 s!14292)) (c!1437264 lt!2675103)))))

(declare-fun b!7805006 () Bool)

(declare-fun res!3108440 () Bool)

(assert (=> b!7805006 (=> (not res!3108440) (not e!4620212))))

(declare-fun call!723906 () Bool)

(assert (=> b!7805006 (= res!3108440 (not call!723906))))

(declare-fun b!7805007 () Bool)

(declare-fun e!4620208 () Bool)

(assert (=> b!7805007 (= e!4620213 e!4620208)))

(declare-fun res!3108444 () Bool)

(assert (=> b!7805007 (=> (not res!3108444) (not e!4620208))))

(declare-fun lt!2675133 () Bool)

(assert (=> b!7805007 (= res!3108444 (not lt!2675133))))

(declare-fun b!7805008 () Bool)

(declare-fun res!3108445 () Bool)

(assert (=> b!7805008 (=> res!3108445 e!4620213)))

(assert (=> b!7805008 (= res!3108445 e!4620212)))

(declare-fun res!3108441 () Bool)

(assert (=> b!7805008 (=> (not res!3108441) (not e!4620212))))

(assert (=> b!7805008 (= res!3108441 lt!2675133)))

(declare-fun b!7805009 () Bool)

(assert (=> b!7805009 (= e!4620211 (not (= (head!15959 (t!388459 s!14292)) (c!1437264 lt!2675103))))))

(declare-fun d!2347892 () Bool)

(declare-fun e!4620209 () Bool)

(assert (=> d!2347892 e!4620209))

(declare-fun c!1437283 () Bool)

(assert (=> d!2347892 (= c!1437283 ((_ is EmptyExpr!20885) lt!2675103))))

(assert (=> d!2347892 (= lt!2675133 e!4620210)))

(declare-fun c!1437284 () Bool)

(assert (=> d!2347892 (= c!1437284 (isEmpty!42248 (t!388459 s!14292)))))

(assert (=> d!2347892 (validRegex!11299 lt!2675103)))

(assert (=> d!2347892 (= (matchR!10345 lt!2675103 (t!388459 s!14292)) lt!2675133)))

(declare-fun bm!723901 () Bool)

(assert (=> bm!723901 (= call!723906 (isEmpty!42248 (t!388459 s!14292)))))

(declare-fun b!7805010 () Bool)

(assert (=> b!7805010 (= e!4620209 e!4620207)))

(declare-fun c!1437285 () Bool)

(assert (=> b!7805010 (= c!1437285 ((_ is EmptyLang!20885) lt!2675103))))

(declare-fun b!7805011 () Bool)

(assert (=> b!7805011 (= e!4620209 (= lt!2675133 call!723906))))

(declare-fun b!7805012 () Bool)

(assert (=> b!7805012 (= e!4620207 (not lt!2675133))))

(declare-fun b!7805013 () Bool)

(assert (=> b!7805013 (= e!4620208 e!4620211)))

(declare-fun res!3108443 () Bool)

(assert (=> b!7805013 (=> res!3108443 e!4620211)))

(assert (=> b!7805013 (= res!3108443 call!723906)))

(declare-fun b!7805014 () Bool)

(assert (=> b!7805014 (= e!4620210 (matchR!10345 (derivativeStep!6222 lt!2675103 (head!15959 (t!388459 s!14292))) (tail!15500 (t!388459 s!14292))))))

(assert (= (and d!2347892 c!1437284) b!7805002))

(assert (= (and d!2347892 (not c!1437284)) b!7805014))

(assert (= (and d!2347892 c!1437283) b!7805011))

(assert (= (and d!2347892 (not c!1437283)) b!7805010))

(assert (= (and b!7805010 c!1437285) b!7805012))

(assert (= (and b!7805010 (not c!1437285)) b!7805003))

(assert (= (and b!7805003 (not res!3108442)) b!7805008))

(assert (= (and b!7805008 res!3108441) b!7805006))

(assert (= (and b!7805006 res!3108440) b!7805004))

(assert (= (and b!7805004 res!3108446) b!7805005))

(assert (= (and b!7805008 (not res!3108445)) b!7805007))

(assert (= (and b!7805007 res!3108444) b!7805013))

(assert (= (and b!7805013 (not res!3108443)) b!7805001))

(assert (= (and b!7805001 (not res!3108447)) b!7805009))

(assert (= (or b!7805011 b!7805006 b!7805013) bm!723901))

(declare-fun m!8238872 () Bool)

(assert (=> d!2347892 m!8238872))

(declare-fun m!8238874 () Bool)

(assert (=> d!2347892 m!8238874))

(declare-fun m!8238876 () Bool)

(assert (=> b!7805004 m!8238876))

(assert (=> b!7805004 m!8238876))

(declare-fun m!8238878 () Bool)

(assert (=> b!7805004 m!8238878))

(assert (=> bm!723901 m!8238872))

(declare-fun m!8238880 () Bool)

(assert (=> b!7805014 m!8238880))

(assert (=> b!7805014 m!8238880))

(declare-fun m!8238882 () Bool)

(assert (=> b!7805014 m!8238882))

(assert (=> b!7805014 m!8238876))

(assert (=> b!7805014 m!8238882))

(assert (=> b!7805014 m!8238876))

(declare-fun m!8238884 () Bool)

(assert (=> b!7805014 m!8238884))

(assert (=> b!7805009 m!8238880))

(assert (=> b!7805001 m!8238876))

(assert (=> b!7805001 m!8238876))

(assert (=> b!7805001 m!8238878))

(declare-fun m!8238886 () Bool)

(assert (=> b!7805002 m!8238886))

(assert (=> b!7805005 m!8238880))

(assert (=> b!7804909 d!2347892))

(declare-fun d!2347900 () Bool)

(declare-fun e!4620232 () Bool)

(assert (=> d!2347900 e!4620232))

(declare-fun res!3108469 () Bool)

(assert (=> d!2347900 (=> res!3108469 e!4620232)))

(assert (=> d!2347900 (= res!3108469 (matchR!10345 lt!2675103 (t!388459 s!14292)))))

(declare-fun lt!2675138 () Unit!168608)

(declare-fun choose!59558 (Regex!20885 Regex!20885 List!73724) Unit!168608)

(assert (=> d!2347900 (= lt!2675138 (choose!59558 lt!2675103 EmptyLang!20885 (t!388459 s!14292)))))

(declare-fun e!4620233 () Bool)

(assert (=> d!2347900 e!4620233))

(declare-fun res!3108468 () Bool)

(assert (=> d!2347900 (=> (not res!3108468) (not e!4620233))))

(assert (=> d!2347900 (= res!3108468 (validRegex!11299 lt!2675103))))

(assert (=> d!2347900 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!424 lt!2675103 EmptyLang!20885 (t!388459 s!14292)) lt!2675138)))

(declare-fun b!7805047 () Bool)

(assert (=> b!7805047 (= e!4620233 (validRegex!11299 EmptyLang!20885))))

(declare-fun b!7805048 () Bool)

(assert (=> b!7805048 (= e!4620232 (matchR!10345 EmptyLang!20885 (t!388459 s!14292)))))

(assert (= (and d!2347900 res!3108468) b!7805047))

(assert (= (and d!2347900 (not res!3108469)) b!7805048))

(assert (=> d!2347900 m!8238786))

(declare-fun m!8238888 () Bool)

(assert (=> d!2347900 m!8238888))

(assert (=> d!2347900 m!8238874))

(assert (=> b!7805047 m!8238840))

(assert (=> b!7805048 m!8238804))

(assert (=> b!7804909 d!2347900))

(declare-fun b!7805049 () Bool)

(declare-fun res!3108477 () Bool)

(declare-fun e!4620238 () Bool)

(assert (=> b!7805049 (=> res!3108477 e!4620238)))

(assert (=> b!7805049 (= res!3108477 (not (isEmpty!42248 (tail!15500 s!14292))))))

(declare-fun b!7805050 () Bool)

(declare-fun e!4620237 () Bool)

(assert (=> b!7805050 (= e!4620237 (nullable!9269 lt!2675105))))

(declare-fun b!7805051 () Bool)

(declare-fun res!3108472 () Bool)

(declare-fun e!4620240 () Bool)

(assert (=> b!7805051 (=> res!3108472 e!4620240)))

(assert (=> b!7805051 (= res!3108472 (not ((_ is ElementMatch!20885) lt!2675105)))))

(declare-fun e!4620234 () Bool)

(assert (=> b!7805051 (= e!4620234 e!4620240)))

(declare-fun b!7805052 () Bool)

(declare-fun res!3108476 () Bool)

(declare-fun e!4620239 () Bool)

(assert (=> b!7805052 (=> (not res!3108476) (not e!4620239))))

(assert (=> b!7805052 (= res!3108476 (isEmpty!42248 (tail!15500 s!14292)))))

(declare-fun b!7805053 () Bool)

(assert (=> b!7805053 (= e!4620239 (= (head!15959 s!14292) (c!1437264 lt!2675105)))))

(declare-fun b!7805054 () Bool)

(declare-fun res!3108470 () Bool)

(assert (=> b!7805054 (=> (not res!3108470) (not e!4620239))))

(declare-fun call!723909 () Bool)

(assert (=> b!7805054 (= res!3108470 (not call!723909))))

(declare-fun b!7805055 () Bool)

(declare-fun e!4620235 () Bool)

(assert (=> b!7805055 (= e!4620240 e!4620235)))

(declare-fun res!3108474 () Bool)

(assert (=> b!7805055 (=> (not res!3108474) (not e!4620235))))

(declare-fun lt!2675139 () Bool)

(assert (=> b!7805055 (= res!3108474 (not lt!2675139))))

(declare-fun b!7805056 () Bool)

(declare-fun res!3108475 () Bool)

(assert (=> b!7805056 (=> res!3108475 e!4620240)))

(assert (=> b!7805056 (= res!3108475 e!4620239)))

(declare-fun res!3108471 () Bool)

(assert (=> b!7805056 (=> (not res!3108471) (not e!4620239))))

(assert (=> b!7805056 (= res!3108471 lt!2675139)))

(declare-fun b!7805057 () Bool)

(assert (=> b!7805057 (= e!4620238 (not (= (head!15959 s!14292) (c!1437264 lt!2675105))))))

(declare-fun d!2347902 () Bool)

(declare-fun e!4620236 () Bool)

(assert (=> d!2347902 e!4620236))

(declare-fun c!1437292 () Bool)

(assert (=> d!2347902 (= c!1437292 ((_ is EmptyExpr!20885) lt!2675105))))

(assert (=> d!2347902 (= lt!2675139 e!4620237)))

(declare-fun c!1437293 () Bool)

(assert (=> d!2347902 (= c!1437293 (isEmpty!42248 s!14292))))

(assert (=> d!2347902 (validRegex!11299 lt!2675105)))

(assert (=> d!2347902 (= (matchR!10345 lt!2675105 s!14292) lt!2675139)))

(declare-fun bm!723904 () Bool)

(assert (=> bm!723904 (= call!723909 (isEmpty!42248 s!14292))))

(declare-fun b!7805058 () Bool)

(assert (=> b!7805058 (= e!4620236 e!4620234)))

(declare-fun c!1437294 () Bool)

(assert (=> b!7805058 (= c!1437294 ((_ is EmptyLang!20885) lt!2675105))))

(declare-fun b!7805059 () Bool)

(assert (=> b!7805059 (= e!4620236 (= lt!2675139 call!723909))))

(declare-fun b!7805060 () Bool)

(assert (=> b!7805060 (= e!4620234 (not lt!2675139))))

(declare-fun b!7805061 () Bool)

(assert (=> b!7805061 (= e!4620235 e!4620238)))

(declare-fun res!3108473 () Bool)

(assert (=> b!7805061 (=> res!3108473 e!4620238)))

(assert (=> b!7805061 (= res!3108473 call!723909)))

(declare-fun b!7805062 () Bool)

(assert (=> b!7805062 (= e!4620237 (matchR!10345 (derivativeStep!6222 lt!2675105 (head!15959 s!14292)) (tail!15500 s!14292)))))

(assert (= (and d!2347902 c!1437293) b!7805050))

(assert (= (and d!2347902 (not c!1437293)) b!7805062))

(assert (= (and d!2347902 c!1437292) b!7805059))

(assert (= (and d!2347902 (not c!1437292)) b!7805058))

(assert (= (and b!7805058 c!1437294) b!7805060))

(assert (= (and b!7805058 (not c!1437294)) b!7805051))

(assert (= (and b!7805051 (not res!3108472)) b!7805056))

(assert (= (and b!7805056 res!3108471) b!7805054))

(assert (= (and b!7805054 res!3108470) b!7805052))

(assert (= (and b!7805052 res!3108476) b!7805053))

(assert (= (and b!7805056 (not res!3108475)) b!7805055))

(assert (= (and b!7805055 res!3108474) b!7805061))

(assert (= (and b!7805061 (not res!3108473)) b!7805049))

(assert (= (and b!7805049 (not res!3108477)) b!7805057))

(assert (= (or b!7805059 b!7805054 b!7805061) bm!723904))

(declare-fun m!8238890 () Bool)

(assert (=> d!2347902 m!8238890))

(declare-fun m!8238892 () Bool)

(assert (=> d!2347902 m!8238892))

(declare-fun m!8238894 () Bool)

(assert (=> b!7805052 m!8238894))

(assert (=> b!7805052 m!8238894))

(declare-fun m!8238896 () Bool)

(assert (=> b!7805052 m!8238896))

(assert (=> bm!723904 m!8238890))

(declare-fun m!8238898 () Bool)

(assert (=> b!7805062 m!8238898))

(assert (=> b!7805062 m!8238898))

(declare-fun m!8238900 () Bool)

(assert (=> b!7805062 m!8238900))

(assert (=> b!7805062 m!8238894))

(assert (=> b!7805062 m!8238900))

(assert (=> b!7805062 m!8238894))

(declare-fun m!8238902 () Bool)

(assert (=> b!7805062 m!8238902))

(assert (=> b!7805057 m!8238898))

(assert (=> b!7805049 m!8238894))

(assert (=> b!7805049 m!8238894))

(assert (=> b!7805049 m!8238896))

(declare-fun m!8238904 () Bool)

(assert (=> b!7805050 m!8238904))

(assert (=> b!7805053 m!8238898))

(assert (=> b!7804893 d!2347902))

(declare-fun b!7805063 () Bool)

(declare-fun e!4620246 () Bool)

(declare-fun call!723912 () Bool)

(assert (=> b!7805063 (= e!4620246 call!723912)))

(declare-fun bm!723905 () Bool)

(declare-fun c!1437295 () Bool)

(declare-fun c!1437296 () Bool)

(assert (=> bm!723905 (= call!723912 (validRegex!11299 (ite c!1437295 (reg!21214 r1!6279) (ite c!1437296 (regOne!42283 r1!6279) (regOne!42282 r1!6279)))))))

(declare-fun b!7805064 () Bool)

(declare-fun e!4620245 () Bool)

(declare-fun e!4620241 () Bool)

(assert (=> b!7805064 (= e!4620245 e!4620241)))

(declare-fun res!3108478 () Bool)

(assert (=> b!7805064 (=> (not res!3108478) (not e!4620241))))

(declare-fun call!723910 () Bool)

(assert (=> b!7805064 (= res!3108478 call!723910)))

(declare-fun b!7805065 () Bool)

(declare-fun e!4620242 () Bool)

(assert (=> b!7805065 (= e!4620242 e!4620246)))

(declare-fun res!3108481 () Bool)

(assert (=> b!7805065 (= res!3108481 (not (nullable!9269 (reg!21214 r1!6279))))))

(assert (=> b!7805065 (=> (not res!3108481) (not e!4620246))))

(declare-fun b!7805066 () Bool)

(declare-fun res!3108479 () Bool)

(declare-fun e!4620243 () Bool)

(assert (=> b!7805066 (=> (not res!3108479) (not e!4620243))))

(assert (=> b!7805066 (= res!3108479 call!723910)))

(declare-fun e!4620244 () Bool)

(assert (=> b!7805066 (= e!4620244 e!4620243)))

(declare-fun bm!723906 () Bool)

(declare-fun call!723911 () Bool)

(assert (=> bm!723906 (= call!723911 (validRegex!11299 (ite c!1437296 (regTwo!42283 r1!6279) (regTwo!42282 r1!6279))))))

(declare-fun bm!723907 () Bool)

(assert (=> bm!723907 (= call!723910 call!723912)))

(declare-fun b!7805068 () Bool)

(assert (=> b!7805068 (= e!4620243 call!723911)))

(declare-fun b!7805069 () Bool)

(assert (=> b!7805069 (= e!4620241 call!723911)))

(declare-fun d!2347904 () Bool)

(declare-fun res!3108482 () Bool)

(declare-fun e!4620247 () Bool)

(assert (=> d!2347904 (=> res!3108482 e!4620247)))

(assert (=> d!2347904 (= res!3108482 ((_ is ElementMatch!20885) r1!6279))))

(assert (=> d!2347904 (= (validRegex!11299 r1!6279) e!4620247)))

(declare-fun b!7805067 () Bool)

(assert (=> b!7805067 (= e!4620242 e!4620244)))

(assert (=> b!7805067 (= c!1437296 ((_ is Union!20885) r1!6279))))

(declare-fun b!7805070 () Bool)

(assert (=> b!7805070 (= e!4620247 e!4620242)))

(assert (=> b!7805070 (= c!1437295 ((_ is Star!20885) r1!6279))))

(declare-fun b!7805071 () Bool)

(declare-fun res!3108480 () Bool)

(assert (=> b!7805071 (=> res!3108480 e!4620245)))

(assert (=> b!7805071 (= res!3108480 (not ((_ is Concat!29730) r1!6279)))))

(assert (=> b!7805071 (= e!4620244 e!4620245)))

(assert (= (and d!2347904 (not res!3108482)) b!7805070))

(assert (= (and b!7805070 c!1437295) b!7805065))

(assert (= (and b!7805070 (not c!1437295)) b!7805067))

(assert (= (and b!7805065 res!3108481) b!7805063))

(assert (= (and b!7805067 c!1437296) b!7805066))

(assert (= (and b!7805067 (not c!1437296)) b!7805071))

(assert (= (and b!7805066 res!3108479) b!7805068))

(assert (= (and b!7805071 (not res!3108480)) b!7805064))

(assert (= (and b!7805064 res!3108478) b!7805069))

(assert (= (or b!7805066 b!7805064) bm!723907))

(assert (= (or b!7805068 b!7805069) bm!723906))

(assert (= (or b!7805063 bm!723907) bm!723905))

(declare-fun m!8238906 () Bool)

(assert (=> bm!723905 m!8238906))

(declare-fun m!8238908 () Bool)

(assert (=> b!7805065 m!8238908))

(declare-fun m!8238910 () Bool)

(assert (=> bm!723906 m!8238910))

(assert (=> start!741418 d!2347904))

(declare-fun d!2347906 () Bool)

(declare-fun nullableFct!3647 (Regex!20885) Bool)

(assert (=> d!2347906 (= (nullable!9269 r1!6279) (nullableFct!3647 r1!6279))))

(declare-fun bs!1966532 () Bool)

(assert (= bs!1966532 d!2347906))

(declare-fun m!8238922 () Bool)

(assert (=> bs!1966532 m!8238922))

(assert (=> b!7804907 d!2347906))

(declare-fun b!7805140 () Bool)

(declare-fun e!4620289 () Regex!20885)

(assert (=> b!7805140 (= e!4620289 (ite (= (h!80048 s!14292) (c!1437264 r1!6279)) EmptyExpr!20885 EmptyLang!20885))))

(declare-fun bm!723919 () Bool)

(declare-fun call!723927 () Regex!20885)

(declare-fun call!723926 () Regex!20885)

(assert (=> bm!723919 (= call!723927 call!723926)))

(declare-fun e!4620285 () Regex!20885)

(declare-fun call!723925 () Regex!20885)

(declare-fun b!7805141 () Bool)

(assert (=> b!7805141 (= e!4620285 (Union!20885 (Concat!29730 call!723925 (regTwo!42282 r1!6279)) call!723927))))

(declare-fun b!7805142 () Bool)

(declare-fun e!4620288 () Regex!20885)

(assert (=> b!7805142 (= e!4620288 EmptyLang!20885)))

(declare-fun b!7805143 () Bool)

(declare-fun e!4620286 () Regex!20885)

(assert (=> b!7805143 (= e!4620286 (Concat!29730 call!723926 r1!6279))))

(declare-fun b!7805144 () Bool)

(assert (=> b!7805144 (= e!4620288 e!4620289)))

(declare-fun c!1437317 () Bool)

(assert (=> b!7805144 (= c!1437317 ((_ is ElementMatch!20885) r1!6279))))

(declare-fun b!7805146 () Bool)

(declare-fun e!4620287 () Regex!20885)

(declare-fun call!723924 () Regex!20885)

(assert (=> b!7805146 (= e!4620287 (Union!20885 call!723925 call!723924))))

(declare-fun bm!723920 () Bool)

(declare-fun c!1437316 () Bool)

(assert (=> bm!723920 (= call!723925 (derivativeStep!6222 (ite c!1437316 (regOne!42283 r1!6279) (regOne!42282 r1!6279)) (h!80048 s!14292)))))

(declare-fun b!7805147 () Bool)

(assert (=> b!7805147 (= c!1437316 ((_ is Union!20885) r1!6279))))

(assert (=> b!7805147 (= e!4620289 e!4620287)))

(declare-fun b!7805148 () Bool)

(declare-fun c!1437320 () Bool)

(assert (=> b!7805148 (= c!1437320 (nullable!9269 (regOne!42282 r1!6279)))))

(assert (=> b!7805148 (= e!4620286 e!4620285)))

(declare-fun b!7805149 () Bool)

(assert (=> b!7805149 (= e!4620287 e!4620286)))

(declare-fun c!1437319 () Bool)

(assert (=> b!7805149 (= c!1437319 ((_ is Star!20885) r1!6279))))

(declare-fun d!2347908 () Bool)

(declare-fun lt!2675148 () Regex!20885)

(assert (=> d!2347908 (validRegex!11299 lt!2675148)))

(assert (=> d!2347908 (= lt!2675148 e!4620288)))

(declare-fun c!1437318 () Bool)

(assert (=> d!2347908 (= c!1437318 (or ((_ is EmptyExpr!20885) r1!6279) ((_ is EmptyLang!20885) r1!6279)))))

(assert (=> d!2347908 (validRegex!11299 r1!6279)))

(assert (=> d!2347908 (= (derivativeStep!6222 r1!6279 (h!80048 s!14292)) lt!2675148)))

(declare-fun b!7805145 () Bool)

(assert (=> b!7805145 (= e!4620285 (Union!20885 (Concat!29730 call!723927 (regTwo!42282 r1!6279)) EmptyLang!20885))))

(declare-fun bm!723921 () Bool)

(assert (=> bm!723921 (= call!723924 (derivativeStep!6222 (ite c!1437316 (regTwo!42283 r1!6279) (ite c!1437319 (reg!21214 r1!6279) (ite c!1437320 (regTwo!42282 r1!6279) (regOne!42282 r1!6279)))) (h!80048 s!14292)))))

(declare-fun bm!723922 () Bool)

(assert (=> bm!723922 (= call!723926 call!723924)))

(assert (= (and d!2347908 c!1437318) b!7805142))

(assert (= (and d!2347908 (not c!1437318)) b!7805144))

(assert (= (and b!7805144 c!1437317) b!7805140))

(assert (= (and b!7805144 (not c!1437317)) b!7805147))

(assert (= (and b!7805147 c!1437316) b!7805146))

(assert (= (and b!7805147 (not c!1437316)) b!7805149))

(assert (= (and b!7805149 c!1437319) b!7805143))

(assert (= (and b!7805149 (not c!1437319)) b!7805148))

(assert (= (and b!7805148 c!1437320) b!7805141))

(assert (= (and b!7805148 (not c!1437320)) b!7805145))

(assert (= (or b!7805141 b!7805145) bm!723919))

(assert (= (or b!7805143 bm!723919) bm!723922))

(assert (= (or b!7805146 bm!723922) bm!723921))

(assert (= (or b!7805146 b!7805141) bm!723920))

(declare-fun m!8238956 () Bool)

(assert (=> bm!723920 m!8238956))

(declare-fun m!8238958 () Bool)

(assert (=> b!7805148 m!8238958))

(declare-fun m!8238960 () Bool)

(assert (=> d!2347908 m!8238960))

(assert (=> d!2347908 m!8238790))

(declare-fun m!8238962 () Bool)

(assert (=> bm!723921 m!8238962))

(assert (=> b!7804891 d!2347908))

(declare-fun b!7805170 () Bool)

(declare-fun res!3108520 () Bool)

(declare-fun e!4620304 () Bool)

(assert (=> b!7805170 (=> res!3108520 e!4620304)))

(assert (=> b!7805170 (= res!3108520 (not (isEmpty!42248 (tail!15500 (t!388459 s!14292)))))))

(declare-fun b!7805171 () Bool)

(declare-fun e!4620303 () Bool)

(assert (=> b!7805171 (= e!4620303 (nullable!9269 EmptyLang!20885))))

(declare-fun b!7805172 () Bool)

(declare-fun res!3108515 () Bool)

(declare-fun e!4620306 () Bool)

(assert (=> b!7805172 (=> res!3108515 e!4620306)))

(assert (=> b!7805172 (= res!3108515 (not ((_ is ElementMatch!20885) EmptyLang!20885)))))

(declare-fun e!4620300 () Bool)

(assert (=> b!7805172 (= e!4620300 e!4620306)))

(declare-fun b!7805173 () Bool)

(declare-fun res!3108519 () Bool)

(declare-fun e!4620305 () Bool)

(assert (=> b!7805173 (=> (not res!3108519) (not e!4620305))))

(assert (=> b!7805173 (= res!3108519 (isEmpty!42248 (tail!15500 (t!388459 s!14292))))))

(declare-fun b!7805174 () Bool)

(assert (=> b!7805174 (= e!4620305 (= (head!15959 (t!388459 s!14292)) (c!1437264 EmptyLang!20885)))))

(declare-fun b!7805175 () Bool)

(declare-fun res!3108513 () Bool)

(assert (=> b!7805175 (=> (not res!3108513) (not e!4620305))))

(declare-fun call!723930 () Bool)

(assert (=> b!7805175 (= res!3108513 (not call!723930))))

(declare-fun b!7805176 () Bool)

(declare-fun e!4620301 () Bool)

(assert (=> b!7805176 (= e!4620306 e!4620301)))

(declare-fun res!3108517 () Bool)

(assert (=> b!7805176 (=> (not res!3108517) (not e!4620301))))

(declare-fun lt!2675151 () Bool)

(assert (=> b!7805176 (= res!3108517 (not lt!2675151))))

(declare-fun b!7805177 () Bool)

(declare-fun res!3108518 () Bool)

(assert (=> b!7805177 (=> res!3108518 e!4620306)))

(assert (=> b!7805177 (= res!3108518 e!4620305)))

(declare-fun res!3108514 () Bool)

(assert (=> b!7805177 (=> (not res!3108514) (not e!4620305))))

(assert (=> b!7805177 (= res!3108514 lt!2675151)))

(declare-fun b!7805178 () Bool)

(assert (=> b!7805178 (= e!4620304 (not (= (head!15959 (t!388459 s!14292)) (c!1437264 EmptyLang!20885))))))

(declare-fun d!2347918 () Bool)

(declare-fun e!4620302 () Bool)

(assert (=> d!2347918 e!4620302))

(declare-fun c!1437331 () Bool)

(assert (=> d!2347918 (= c!1437331 ((_ is EmptyExpr!20885) EmptyLang!20885))))

(assert (=> d!2347918 (= lt!2675151 e!4620303)))

(declare-fun c!1437332 () Bool)

(assert (=> d!2347918 (= c!1437332 (isEmpty!42248 (t!388459 s!14292)))))

(assert (=> d!2347918 (validRegex!11299 EmptyLang!20885)))

(assert (=> d!2347918 (= (matchR!10345 EmptyLang!20885 (t!388459 s!14292)) lt!2675151)))

(declare-fun bm!723925 () Bool)

(assert (=> bm!723925 (= call!723930 (isEmpty!42248 (t!388459 s!14292)))))

(declare-fun b!7805179 () Bool)

(assert (=> b!7805179 (= e!4620302 e!4620300)))

(declare-fun c!1437333 () Bool)

(assert (=> b!7805179 (= c!1437333 ((_ is EmptyLang!20885) EmptyLang!20885))))

(declare-fun b!7805180 () Bool)

(assert (=> b!7805180 (= e!4620302 (= lt!2675151 call!723930))))

(declare-fun b!7805181 () Bool)

(assert (=> b!7805181 (= e!4620300 (not lt!2675151))))

(declare-fun b!7805182 () Bool)

(assert (=> b!7805182 (= e!4620301 e!4620304)))

(declare-fun res!3108516 () Bool)

(assert (=> b!7805182 (=> res!3108516 e!4620304)))

(assert (=> b!7805182 (= res!3108516 call!723930)))

(declare-fun b!7805183 () Bool)

(assert (=> b!7805183 (= e!4620303 (matchR!10345 (derivativeStep!6222 EmptyLang!20885 (head!15959 (t!388459 s!14292))) (tail!15500 (t!388459 s!14292))))))

(assert (= (and d!2347918 c!1437332) b!7805171))

(assert (= (and d!2347918 (not c!1437332)) b!7805183))

(assert (= (and d!2347918 c!1437331) b!7805180))

(assert (= (and d!2347918 (not c!1437331)) b!7805179))

(assert (= (and b!7805179 c!1437333) b!7805181))

(assert (= (and b!7805179 (not c!1437333)) b!7805172))

(assert (= (and b!7805172 (not res!3108515)) b!7805177))

(assert (= (and b!7805177 res!3108514) b!7805175))

(assert (= (and b!7805175 res!3108513) b!7805173))

(assert (= (and b!7805173 res!3108519) b!7805174))

(assert (= (and b!7805177 (not res!3108518)) b!7805176))

(assert (= (and b!7805176 res!3108517) b!7805182))

(assert (= (and b!7805182 (not res!3108516)) b!7805170))

(assert (= (and b!7805170 (not res!3108520)) b!7805178))

(assert (= (or b!7805180 b!7805175 b!7805182) bm!723925))

(assert (=> d!2347918 m!8238872))

(assert (=> d!2347918 m!8238840))

(assert (=> b!7805173 m!8238876))

(assert (=> b!7805173 m!8238876))

(assert (=> b!7805173 m!8238878))

(assert (=> bm!723925 m!8238872))

(assert (=> b!7805183 m!8238880))

(assert (=> b!7805183 m!8238880))

(declare-fun m!8238964 () Bool)

(assert (=> b!7805183 m!8238964))

(assert (=> b!7805183 m!8238876))

(assert (=> b!7805183 m!8238964))

(assert (=> b!7805183 m!8238876))

(declare-fun m!8238966 () Bool)

(assert (=> b!7805183 m!8238966))

(assert (=> b!7805178 m!8238880))

(assert (=> b!7805170 m!8238876))

(assert (=> b!7805170 m!8238876))

(assert (=> b!7805170 m!8238878))

(declare-fun m!8238968 () Bool)

(assert (=> b!7805171 m!8238968))

(assert (=> b!7805174 m!8238880))

(assert (=> b!7804896 d!2347918))

(declare-fun d!2347920 () Bool)

(assert (=> d!2347920 (isDefined!14382 (findConcatSeparation!3802 lt!2675111 r2!6217 Nil!73600 (t!388459 s!14292) (t!388459 s!14292)))))

(declare-fun lt!2675154 () Unit!168608)

(declare-fun choose!59560 (Regex!20885 Regex!20885 List!73724) Unit!168608)

(assert (=> d!2347920 (= lt!2675154 (choose!59560 lt!2675111 r2!6217 (t!388459 s!14292)))))

(assert (=> d!2347920 (validRegex!11299 lt!2675111)))

(assert (=> d!2347920 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!384 lt!2675111 r2!6217 (t!388459 s!14292)) lt!2675154)))

(declare-fun bs!1966533 () Bool)

(assert (= bs!1966533 d!2347920))

(assert (=> bs!1966533 m!8238810))

(assert (=> bs!1966533 m!8238810))

(declare-fun m!8238970 () Bool)

(assert (=> bs!1966533 m!8238970))

(declare-fun m!8238972 () Bool)

(assert (=> bs!1966533 m!8238972))

(declare-fun m!8238974 () Bool)

(assert (=> bs!1966533 m!8238974))

(assert (=> b!7804901 d!2347920))

(declare-fun b!7805263 () Bool)

(declare-fun e!4620356 () Bool)

(declare-fun lt!2675166 () Option!17772)

(assert (=> b!7805263 (= e!4620356 (not (isDefined!14382 lt!2675166)))))

(declare-fun b!7805264 () Bool)

(declare-fun e!4620357 () Option!17772)

(assert (=> b!7805264 (= e!4620357 None!17771)))

(declare-fun b!7805265 () Bool)

(declare-fun e!4620355 () Option!17772)

(assert (=> b!7805265 (= e!4620355 (Some!17771 (tuple2!69957 Nil!73600 (t!388459 s!14292))))))

(declare-fun b!7805266 () Bool)

(declare-fun e!4620358 () Bool)

(assert (=> b!7805266 (= e!4620358 (= (++!17945 (_1!38281 (get!26339 lt!2675166)) (_2!38281 (get!26339 lt!2675166))) (t!388459 s!14292)))))

(declare-fun d!2347922 () Bool)

(assert (=> d!2347922 e!4620356))

(declare-fun res!3108555 () Bool)

(assert (=> d!2347922 (=> res!3108555 e!4620356)))

(assert (=> d!2347922 (= res!3108555 e!4620358)))

(declare-fun res!3108558 () Bool)

(assert (=> d!2347922 (=> (not res!3108558) (not e!4620358))))

(assert (=> d!2347922 (= res!3108558 (isDefined!14382 lt!2675166))))

(assert (=> d!2347922 (= lt!2675166 e!4620355)))

(declare-fun c!1437357 () Bool)

(declare-fun e!4620359 () Bool)

(assert (=> d!2347922 (= c!1437357 e!4620359)))

(declare-fun res!3108556 () Bool)

(assert (=> d!2347922 (=> (not res!3108556) (not e!4620359))))

(assert (=> d!2347922 (= res!3108556 (matchR!10345 lt!2675111 Nil!73600))))

(assert (=> d!2347922 (validRegex!11299 lt!2675111)))

(assert (=> d!2347922 (= (findConcatSeparation!3802 lt!2675111 r2!6217 Nil!73600 (t!388459 s!14292) (t!388459 s!14292)) lt!2675166)))

(declare-fun b!7805267 () Bool)

(declare-fun res!3108554 () Bool)

(assert (=> b!7805267 (=> (not res!3108554) (not e!4620358))))

(assert (=> b!7805267 (= res!3108554 (matchR!10345 r2!6217 (_2!38281 (get!26339 lt!2675166))))))

(declare-fun b!7805268 () Bool)

(declare-fun lt!2675165 () Unit!168608)

(declare-fun lt!2675164 () Unit!168608)

(assert (=> b!7805268 (= lt!2675165 lt!2675164)))

(assert (=> b!7805268 (= (++!17945 (++!17945 Nil!73600 (Cons!73600 (h!80048 (t!388459 s!14292)) Nil!73600)) (t!388459 (t!388459 s!14292))) (t!388459 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3415 (List!73724 C!42096 List!73724 List!73724) Unit!168608)

(assert (=> b!7805268 (= lt!2675164 (lemmaMoveElementToOtherListKeepsConcatEq!3415 Nil!73600 (h!80048 (t!388459 s!14292)) (t!388459 (t!388459 s!14292)) (t!388459 s!14292)))))

(assert (=> b!7805268 (= e!4620357 (findConcatSeparation!3802 lt!2675111 r2!6217 (++!17945 Nil!73600 (Cons!73600 (h!80048 (t!388459 s!14292)) Nil!73600)) (t!388459 (t!388459 s!14292)) (t!388459 s!14292)))))

(declare-fun b!7805269 () Bool)

(declare-fun res!3108557 () Bool)

(assert (=> b!7805269 (=> (not res!3108557) (not e!4620358))))

(assert (=> b!7805269 (= res!3108557 (matchR!10345 lt!2675111 (_1!38281 (get!26339 lt!2675166))))))

(declare-fun b!7805270 () Bool)

(assert (=> b!7805270 (= e!4620355 e!4620357)))

(declare-fun c!1437358 () Bool)

(assert (=> b!7805270 (= c!1437358 ((_ is Nil!73600) (t!388459 s!14292)))))

(declare-fun b!7805271 () Bool)

(assert (=> b!7805271 (= e!4620359 (matchR!10345 r2!6217 (t!388459 s!14292)))))

(assert (= (and d!2347922 res!3108556) b!7805271))

(assert (= (and d!2347922 c!1437357) b!7805265))

(assert (= (and d!2347922 (not c!1437357)) b!7805270))

(assert (= (and b!7805270 c!1437358) b!7805264))

(assert (= (and b!7805270 (not c!1437358)) b!7805268))

(assert (= (and d!2347922 res!3108558) b!7805269))

(assert (= (and b!7805269 res!3108557) b!7805267))

(assert (= (and b!7805267 res!3108554) b!7805266))

(assert (= (and d!2347922 (not res!3108555)) b!7805263))

(declare-fun m!8239006 () Bool)

(assert (=> b!7805266 m!8239006))

(declare-fun m!8239008 () Bool)

(assert (=> b!7805266 m!8239008))

(declare-fun m!8239010 () Bool)

(assert (=> d!2347922 m!8239010))

(declare-fun m!8239012 () Bool)

(assert (=> d!2347922 m!8239012))

(assert (=> d!2347922 m!8238974))

(assert (=> b!7805267 m!8239006))

(declare-fun m!8239014 () Bool)

(assert (=> b!7805267 m!8239014))

(declare-fun m!8239016 () Bool)

(assert (=> b!7805271 m!8239016))

(assert (=> b!7805269 m!8239006))

(declare-fun m!8239018 () Bool)

(assert (=> b!7805269 m!8239018))

(declare-fun m!8239020 () Bool)

(assert (=> b!7805268 m!8239020))

(assert (=> b!7805268 m!8239020))

(declare-fun m!8239022 () Bool)

(assert (=> b!7805268 m!8239022))

(declare-fun m!8239024 () Bool)

(assert (=> b!7805268 m!8239024))

(assert (=> b!7805268 m!8239020))

(declare-fun m!8239026 () Bool)

(assert (=> b!7805268 m!8239026))

(assert (=> b!7805263 m!8239010))

(assert (=> b!7804901 d!2347922))

(declare-fun d!2347936 () Bool)

(declare-fun e!4620370 () Bool)

(assert (=> d!2347936 e!4620370))

(declare-fun res!3108565 () Bool)

(assert (=> d!2347936 (=> (not res!3108565) (not e!4620370))))

(declare-fun lt!2675175 () List!73724)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15623 (List!73724) (InoxSet C!42096))

(assert (=> d!2347936 (= res!3108565 (= (content!15623 lt!2675175) ((_ map or) (content!15623 lt!2675107) (content!15623 (_2!38281 lt!2675102)))))))

(declare-fun e!4620371 () List!73724)

(assert (=> d!2347936 (= lt!2675175 e!4620371)))

(declare-fun c!1437365 () Bool)

(assert (=> d!2347936 (= c!1437365 ((_ is Nil!73600) lt!2675107))))

(assert (=> d!2347936 (= (++!17945 lt!2675107 (_2!38281 lt!2675102)) lt!2675175)))

(declare-fun b!7805291 () Bool)

(assert (=> b!7805291 (= e!4620371 (Cons!73600 (h!80048 lt!2675107) (++!17945 (t!388459 lt!2675107) (_2!38281 lt!2675102))))))

(declare-fun b!7805290 () Bool)

(assert (=> b!7805290 (= e!4620371 (_2!38281 lt!2675102))))

(declare-fun b!7805293 () Bool)

(assert (=> b!7805293 (= e!4620370 (or (not (= (_2!38281 lt!2675102) Nil!73600)) (= lt!2675175 lt!2675107)))))

(declare-fun b!7805292 () Bool)

(declare-fun res!3108566 () Bool)

(assert (=> b!7805292 (=> (not res!3108566) (not e!4620370))))

(assert (=> b!7805292 (= res!3108566 (= (size!42726 lt!2675175) (+ (size!42726 lt!2675107) (size!42726 (_2!38281 lt!2675102)))))))

(assert (= (and d!2347936 c!1437365) b!7805290))

(assert (= (and d!2347936 (not c!1437365)) b!7805291))

(assert (= (and d!2347936 res!3108565) b!7805292))

(assert (= (and b!7805292 res!3108566) b!7805293))

(declare-fun m!8239028 () Bool)

(assert (=> d!2347936 m!8239028))

(declare-fun m!8239030 () Bool)

(assert (=> d!2347936 m!8239030))

(declare-fun m!8239032 () Bool)

(assert (=> d!2347936 m!8239032))

(declare-fun m!8239034 () Bool)

(assert (=> b!7805291 m!8239034))

(declare-fun m!8239036 () Bool)

(assert (=> b!7805292 m!8239036))

(assert (=> b!7805292 m!8238822))

(declare-fun m!8239038 () Bool)

(assert (=> b!7805292 m!8239038))

(assert (=> b!7804901 d!2347936))

(declare-fun d!2347938 () Bool)

(assert (=> d!2347938 (= (get!26339 lt!2675110) (v!54906 lt!2675110))))

(assert (=> b!7804901 d!2347938))

(declare-fun d!2347940 () Bool)

(declare-fun isEmpty!42250 (Option!17772) Bool)

(assert (=> d!2347940 (= (isDefined!14382 lt!2675110) (not (isEmpty!42250 lt!2675110)))))

(declare-fun bs!1966535 () Bool)

(assert (= bs!1966535 d!2347940))

(declare-fun m!8239040 () Bool)

(assert (=> bs!1966535 m!8239040))

(assert (=> b!7804901 d!2347940))

(declare-fun b!7805302 () Bool)

(declare-fun res!3108582 () Bool)

(declare-fun e!4620380 () Bool)

(assert (=> b!7805302 (=> res!3108582 e!4620380)))

(assert (=> b!7805302 (= res!3108582 (not (isEmpty!42248 (tail!15500 (t!388459 s!14292)))))))

(declare-fun b!7805303 () Bool)

(declare-fun e!4620379 () Bool)

(assert (=> b!7805303 (= e!4620379 (nullable!9269 lt!2675108))))

(declare-fun b!7805304 () Bool)

(declare-fun res!3108577 () Bool)

(declare-fun e!4620382 () Bool)

(assert (=> b!7805304 (=> res!3108577 e!4620382)))

(assert (=> b!7805304 (= res!3108577 (not ((_ is ElementMatch!20885) lt!2675108)))))

(declare-fun e!4620376 () Bool)

(assert (=> b!7805304 (= e!4620376 e!4620382)))

(declare-fun b!7805305 () Bool)

(declare-fun res!3108581 () Bool)

(declare-fun e!4620381 () Bool)

(assert (=> b!7805305 (=> (not res!3108581) (not e!4620381))))

(assert (=> b!7805305 (= res!3108581 (isEmpty!42248 (tail!15500 (t!388459 s!14292))))))

(declare-fun b!7805306 () Bool)

(assert (=> b!7805306 (= e!4620381 (= (head!15959 (t!388459 s!14292)) (c!1437264 lt!2675108)))))

(declare-fun b!7805307 () Bool)

(declare-fun res!3108575 () Bool)

(assert (=> b!7805307 (=> (not res!3108575) (not e!4620381))))

(declare-fun call!723955 () Bool)

(assert (=> b!7805307 (= res!3108575 (not call!723955))))

(declare-fun b!7805308 () Bool)

(declare-fun e!4620377 () Bool)

(assert (=> b!7805308 (= e!4620382 e!4620377)))

(declare-fun res!3108579 () Bool)

(assert (=> b!7805308 (=> (not res!3108579) (not e!4620377))))

(declare-fun lt!2675176 () Bool)

(assert (=> b!7805308 (= res!3108579 (not lt!2675176))))

(declare-fun b!7805309 () Bool)

(declare-fun res!3108580 () Bool)

(assert (=> b!7805309 (=> res!3108580 e!4620382)))

(assert (=> b!7805309 (= res!3108580 e!4620381)))

(declare-fun res!3108576 () Bool)

(assert (=> b!7805309 (=> (not res!3108576) (not e!4620381))))

(assert (=> b!7805309 (= res!3108576 lt!2675176)))

(declare-fun b!7805310 () Bool)

(assert (=> b!7805310 (= e!4620380 (not (= (head!15959 (t!388459 s!14292)) (c!1437264 lt!2675108))))))

(declare-fun d!2347942 () Bool)

(declare-fun e!4620378 () Bool)

(assert (=> d!2347942 e!4620378))

(declare-fun c!1437366 () Bool)

(assert (=> d!2347942 (= c!1437366 ((_ is EmptyExpr!20885) lt!2675108))))

(assert (=> d!2347942 (= lt!2675176 e!4620379)))

(declare-fun c!1437367 () Bool)

(assert (=> d!2347942 (= c!1437367 (isEmpty!42248 (t!388459 s!14292)))))

(assert (=> d!2347942 (validRegex!11299 lt!2675108)))

(assert (=> d!2347942 (= (matchR!10345 lt!2675108 (t!388459 s!14292)) lt!2675176)))

(declare-fun bm!723950 () Bool)

(assert (=> bm!723950 (= call!723955 (isEmpty!42248 (t!388459 s!14292)))))

(declare-fun b!7805311 () Bool)

(assert (=> b!7805311 (= e!4620378 e!4620376)))

(declare-fun c!1437368 () Bool)

(assert (=> b!7805311 (= c!1437368 ((_ is EmptyLang!20885) lt!2675108))))

(declare-fun b!7805312 () Bool)

(assert (=> b!7805312 (= e!4620378 (= lt!2675176 call!723955))))

(declare-fun b!7805313 () Bool)

(assert (=> b!7805313 (= e!4620376 (not lt!2675176))))

(declare-fun b!7805314 () Bool)

(assert (=> b!7805314 (= e!4620377 e!4620380)))

(declare-fun res!3108578 () Bool)

(assert (=> b!7805314 (=> res!3108578 e!4620380)))

(assert (=> b!7805314 (= res!3108578 call!723955)))

(declare-fun b!7805315 () Bool)

(assert (=> b!7805315 (= e!4620379 (matchR!10345 (derivativeStep!6222 lt!2675108 (head!15959 (t!388459 s!14292))) (tail!15500 (t!388459 s!14292))))))

(assert (= (and d!2347942 c!1437367) b!7805303))

(assert (= (and d!2347942 (not c!1437367)) b!7805315))

(assert (= (and d!2347942 c!1437366) b!7805312))

(assert (= (and d!2347942 (not c!1437366)) b!7805311))

(assert (= (and b!7805311 c!1437368) b!7805313))

(assert (= (and b!7805311 (not c!1437368)) b!7805304))

(assert (= (and b!7805304 (not res!3108577)) b!7805309))

(assert (= (and b!7805309 res!3108576) b!7805307))

(assert (= (and b!7805307 res!3108575) b!7805305))

(assert (= (and b!7805305 res!3108581) b!7805306))

(assert (= (and b!7805309 (not res!3108580)) b!7805308))

(assert (= (and b!7805308 res!3108579) b!7805314))

(assert (= (and b!7805314 (not res!3108578)) b!7805302))

(assert (= (and b!7805302 (not res!3108582)) b!7805310))

(assert (= (or b!7805312 b!7805307 b!7805314) bm!723950))

(assert (=> d!2347942 m!8238872))

(declare-fun m!8239042 () Bool)

(assert (=> d!2347942 m!8239042))

(assert (=> b!7805305 m!8238876))

(assert (=> b!7805305 m!8238876))

(assert (=> b!7805305 m!8238878))

(assert (=> bm!723950 m!8238872))

(assert (=> b!7805315 m!8238880))

(assert (=> b!7805315 m!8238880))

(declare-fun m!8239044 () Bool)

(assert (=> b!7805315 m!8239044))

(assert (=> b!7805315 m!8238876))

(assert (=> b!7805315 m!8239044))

(assert (=> b!7805315 m!8238876))

(declare-fun m!8239046 () Bool)

(assert (=> b!7805315 m!8239046))

(assert (=> b!7805310 m!8238880))

(assert (=> b!7805302 m!8238876))

(assert (=> b!7805302 m!8238876))

(assert (=> b!7805302 m!8238878))

(declare-fun m!8239048 () Bool)

(assert (=> b!7805303 m!8239048))

(assert (=> b!7805306 m!8238880))

(assert (=> b!7804906 d!2347942))

(declare-fun b!7805316 () Bool)

(declare-fun e!4620387 () Regex!20885)

(assert (=> b!7805316 (= e!4620387 (ite (= (h!80048 s!14292) (c!1437264 lt!2675105)) EmptyExpr!20885 EmptyLang!20885))))

(declare-fun bm!723951 () Bool)

(declare-fun call!723959 () Regex!20885)

(declare-fun call!723958 () Regex!20885)

(assert (=> bm!723951 (= call!723959 call!723958)))

(declare-fun call!723957 () Regex!20885)

(declare-fun e!4620383 () Regex!20885)

(declare-fun b!7805317 () Bool)

(assert (=> b!7805317 (= e!4620383 (Union!20885 (Concat!29730 call!723957 (regTwo!42282 lt!2675105)) call!723959))))

(declare-fun b!7805318 () Bool)

(declare-fun e!4620386 () Regex!20885)

(assert (=> b!7805318 (= e!4620386 EmptyLang!20885)))

(declare-fun b!7805319 () Bool)

(declare-fun e!4620384 () Regex!20885)

(assert (=> b!7805319 (= e!4620384 (Concat!29730 call!723958 lt!2675105))))

(declare-fun b!7805320 () Bool)

(assert (=> b!7805320 (= e!4620386 e!4620387)))

(declare-fun c!1437370 () Bool)

(assert (=> b!7805320 (= c!1437370 ((_ is ElementMatch!20885) lt!2675105))))

(declare-fun b!7805322 () Bool)

(declare-fun e!4620385 () Regex!20885)

(declare-fun call!723956 () Regex!20885)

(assert (=> b!7805322 (= e!4620385 (Union!20885 call!723957 call!723956))))

(declare-fun c!1437369 () Bool)

(declare-fun bm!723952 () Bool)

(assert (=> bm!723952 (= call!723957 (derivativeStep!6222 (ite c!1437369 (regOne!42283 lt!2675105) (regOne!42282 lt!2675105)) (h!80048 s!14292)))))

(declare-fun b!7805323 () Bool)

(assert (=> b!7805323 (= c!1437369 ((_ is Union!20885) lt!2675105))))

(assert (=> b!7805323 (= e!4620387 e!4620385)))

(declare-fun b!7805324 () Bool)

(declare-fun c!1437373 () Bool)

(assert (=> b!7805324 (= c!1437373 (nullable!9269 (regOne!42282 lt!2675105)))))

(assert (=> b!7805324 (= e!4620384 e!4620383)))

(declare-fun b!7805325 () Bool)

(assert (=> b!7805325 (= e!4620385 e!4620384)))

(declare-fun c!1437372 () Bool)

(assert (=> b!7805325 (= c!1437372 ((_ is Star!20885) lt!2675105))))

(declare-fun d!2347944 () Bool)

(declare-fun lt!2675177 () Regex!20885)

(assert (=> d!2347944 (validRegex!11299 lt!2675177)))

(assert (=> d!2347944 (= lt!2675177 e!4620386)))

(declare-fun c!1437371 () Bool)

(assert (=> d!2347944 (= c!1437371 (or ((_ is EmptyExpr!20885) lt!2675105) ((_ is EmptyLang!20885) lt!2675105)))))

(assert (=> d!2347944 (validRegex!11299 lt!2675105)))

(assert (=> d!2347944 (= (derivativeStep!6222 lt!2675105 (h!80048 s!14292)) lt!2675177)))

(declare-fun b!7805321 () Bool)

(assert (=> b!7805321 (= e!4620383 (Union!20885 (Concat!29730 call!723959 (regTwo!42282 lt!2675105)) EmptyLang!20885))))

(declare-fun bm!723953 () Bool)

(assert (=> bm!723953 (= call!723956 (derivativeStep!6222 (ite c!1437369 (regTwo!42283 lt!2675105) (ite c!1437372 (reg!21214 lt!2675105) (ite c!1437373 (regTwo!42282 lt!2675105) (regOne!42282 lt!2675105)))) (h!80048 s!14292)))))

(declare-fun bm!723954 () Bool)

(assert (=> bm!723954 (= call!723958 call!723956)))

(assert (= (and d!2347944 c!1437371) b!7805318))

(assert (= (and d!2347944 (not c!1437371)) b!7805320))

(assert (= (and b!7805320 c!1437370) b!7805316))

(assert (= (and b!7805320 (not c!1437370)) b!7805323))

(assert (= (and b!7805323 c!1437369) b!7805322))

(assert (= (and b!7805323 (not c!1437369)) b!7805325))

(assert (= (and b!7805325 c!1437372) b!7805319))

(assert (= (and b!7805325 (not c!1437372)) b!7805324))

(assert (= (and b!7805324 c!1437373) b!7805317))

(assert (= (and b!7805324 (not c!1437373)) b!7805321))

(assert (= (or b!7805317 b!7805321) bm!723951))

(assert (= (or b!7805319 bm!723951) bm!723954))

(assert (= (or b!7805322 bm!723954) bm!723953))

(assert (= (or b!7805322 b!7805317) bm!723952))

(declare-fun m!8239050 () Bool)

(assert (=> bm!723952 m!8239050))

(declare-fun m!8239052 () Bool)

(assert (=> b!7805324 m!8239052))

(declare-fun m!8239054 () Bool)

(assert (=> d!2347944 m!8239054))

(assert (=> d!2347944 m!8238892))

(declare-fun m!8239056 () Bool)

(assert (=> bm!723953 m!8239056))

(assert (=> b!7804906 d!2347944))

(declare-fun b!7805345 () Bool)

(declare-fun e!4620395 () Bool)

(assert (=> b!7805345 (= e!4620395 tp_is_empty!52125)))

(declare-fun b!7805348 () Bool)

(declare-fun tp!2299378 () Bool)

(declare-fun tp!2299374 () Bool)

(assert (=> b!7805348 (= e!4620395 (and tp!2299378 tp!2299374))))

(declare-fun b!7805346 () Bool)

(declare-fun tp!2299377 () Bool)

(declare-fun tp!2299376 () Bool)

(assert (=> b!7805346 (= e!4620395 (and tp!2299377 tp!2299376))))

(assert (=> b!7804897 (= tp!2299359 e!4620395)))

(declare-fun b!7805347 () Bool)

(declare-fun tp!2299375 () Bool)

(assert (=> b!7805347 (= e!4620395 tp!2299375)))

(assert (= (and b!7804897 ((_ is ElementMatch!20885) (regOne!42282 r1!6279))) b!7805345))

(assert (= (and b!7804897 ((_ is Concat!29730) (regOne!42282 r1!6279))) b!7805346))

(assert (= (and b!7804897 ((_ is Star!20885) (regOne!42282 r1!6279))) b!7805347))

(assert (= (and b!7804897 ((_ is Union!20885) (regOne!42282 r1!6279))) b!7805348))

(declare-fun b!7805349 () Bool)

(declare-fun e!4620396 () Bool)

(assert (=> b!7805349 (= e!4620396 tp_is_empty!52125)))

(declare-fun b!7805352 () Bool)

(declare-fun tp!2299383 () Bool)

(declare-fun tp!2299379 () Bool)

(assert (=> b!7805352 (= e!4620396 (and tp!2299383 tp!2299379))))

(declare-fun b!7805350 () Bool)

(declare-fun tp!2299382 () Bool)

(declare-fun tp!2299381 () Bool)

(assert (=> b!7805350 (= e!4620396 (and tp!2299382 tp!2299381))))

(assert (=> b!7804897 (= tp!2299357 e!4620396)))

(declare-fun b!7805351 () Bool)

(declare-fun tp!2299380 () Bool)

(assert (=> b!7805351 (= e!4620396 tp!2299380)))

(assert (= (and b!7804897 ((_ is ElementMatch!20885) (regTwo!42282 r1!6279))) b!7805349))

(assert (= (and b!7804897 ((_ is Concat!29730) (regTwo!42282 r1!6279))) b!7805350))

(assert (= (and b!7804897 ((_ is Star!20885) (regTwo!42282 r1!6279))) b!7805351))

(assert (= (and b!7804897 ((_ is Union!20885) (regTwo!42282 r1!6279))) b!7805352))

(declare-fun b!7805353 () Bool)

(declare-fun e!4620397 () Bool)

(assert (=> b!7805353 (= e!4620397 tp_is_empty!52125)))

(declare-fun b!7805356 () Bool)

(declare-fun tp!2299388 () Bool)

(declare-fun tp!2299384 () Bool)

(assert (=> b!7805356 (= e!4620397 (and tp!2299388 tp!2299384))))

(declare-fun b!7805354 () Bool)

(declare-fun tp!2299387 () Bool)

(declare-fun tp!2299386 () Bool)

(assert (=> b!7805354 (= e!4620397 (and tp!2299387 tp!2299386))))

(assert (=> b!7804899 (= tp!2299363 e!4620397)))

(declare-fun b!7805355 () Bool)

(declare-fun tp!2299385 () Bool)

(assert (=> b!7805355 (= e!4620397 tp!2299385)))

(assert (= (and b!7804899 ((_ is ElementMatch!20885) (regOne!42283 r2!6217))) b!7805353))

(assert (= (and b!7804899 ((_ is Concat!29730) (regOne!42283 r2!6217))) b!7805354))

(assert (= (and b!7804899 ((_ is Star!20885) (regOne!42283 r2!6217))) b!7805355))

(assert (= (and b!7804899 ((_ is Union!20885) (regOne!42283 r2!6217))) b!7805356))

(declare-fun b!7805357 () Bool)

(declare-fun e!4620398 () Bool)

(assert (=> b!7805357 (= e!4620398 tp_is_empty!52125)))

(declare-fun b!7805360 () Bool)

(declare-fun tp!2299393 () Bool)

(declare-fun tp!2299389 () Bool)

(assert (=> b!7805360 (= e!4620398 (and tp!2299393 tp!2299389))))

(declare-fun b!7805358 () Bool)

(declare-fun tp!2299392 () Bool)

(declare-fun tp!2299391 () Bool)

(assert (=> b!7805358 (= e!4620398 (and tp!2299392 tp!2299391))))

(assert (=> b!7804899 (= tp!2299362 e!4620398)))

(declare-fun b!7805359 () Bool)

(declare-fun tp!2299390 () Bool)

(assert (=> b!7805359 (= e!4620398 tp!2299390)))

(assert (= (and b!7804899 ((_ is ElementMatch!20885) (regTwo!42283 r2!6217))) b!7805357))

(assert (= (and b!7804899 ((_ is Concat!29730) (regTwo!42283 r2!6217))) b!7805358))

(assert (= (and b!7804899 ((_ is Star!20885) (regTwo!42283 r2!6217))) b!7805359))

(assert (= (and b!7804899 ((_ is Union!20885) (regTwo!42283 r2!6217))) b!7805360))

(declare-fun b!7805361 () Bool)

(declare-fun e!4620399 () Bool)

(assert (=> b!7805361 (= e!4620399 tp_is_empty!52125)))

(declare-fun b!7805364 () Bool)

(declare-fun tp!2299398 () Bool)

(declare-fun tp!2299394 () Bool)

(assert (=> b!7805364 (= e!4620399 (and tp!2299398 tp!2299394))))

(declare-fun b!7805362 () Bool)

(declare-fun tp!2299397 () Bool)

(declare-fun tp!2299396 () Bool)

(assert (=> b!7805362 (= e!4620399 (and tp!2299397 tp!2299396))))

(assert (=> b!7804904 (= tp!2299360 e!4620399)))

(declare-fun b!7805363 () Bool)

(declare-fun tp!2299395 () Bool)

(assert (=> b!7805363 (= e!4620399 tp!2299395)))

(assert (= (and b!7804904 ((_ is ElementMatch!20885) (reg!21214 r2!6217))) b!7805361))

(assert (= (and b!7804904 ((_ is Concat!29730) (reg!21214 r2!6217))) b!7805362))

(assert (= (and b!7804904 ((_ is Star!20885) (reg!21214 r2!6217))) b!7805363))

(assert (= (and b!7804904 ((_ is Union!20885) (reg!21214 r2!6217))) b!7805364))

(declare-fun b!7805365 () Bool)

(declare-fun e!4620400 () Bool)

(assert (=> b!7805365 (= e!4620400 tp_is_empty!52125)))

(declare-fun b!7805368 () Bool)

(declare-fun tp!2299403 () Bool)

(declare-fun tp!2299399 () Bool)

(assert (=> b!7805368 (= e!4620400 (and tp!2299403 tp!2299399))))

(declare-fun b!7805366 () Bool)

(declare-fun tp!2299402 () Bool)

(declare-fun tp!2299401 () Bool)

(assert (=> b!7805366 (= e!4620400 (and tp!2299402 tp!2299401))))

(assert (=> b!7804898 (= tp!2299355 e!4620400)))

(declare-fun b!7805367 () Bool)

(declare-fun tp!2299400 () Bool)

(assert (=> b!7805367 (= e!4620400 tp!2299400)))

(assert (= (and b!7804898 ((_ is ElementMatch!20885) (regOne!42283 r1!6279))) b!7805365))

(assert (= (and b!7804898 ((_ is Concat!29730) (regOne!42283 r1!6279))) b!7805366))

(assert (= (and b!7804898 ((_ is Star!20885) (regOne!42283 r1!6279))) b!7805367))

(assert (= (and b!7804898 ((_ is Union!20885) (regOne!42283 r1!6279))) b!7805368))

(declare-fun b!7805369 () Bool)

(declare-fun e!4620401 () Bool)

(assert (=> b!7805369 (= e!4620401 tp_is_empty!52125)))

(declare-fun b!7805372 () Bool)

(declare-fun tp!2299408 () Bool)

(declare-fun tp!2299404 () Bool)

(assert (=> b!7805372 (= e!4620401 (and tp!2299408 tp!2299404))))

(declare-fun b!7805370 () Bool)

(declare-fun tp!2299407 () Bool)

(declare-fun tp!2299406 () Bool)

(assert (=> b!7805370 (= e!4620401 (and tp!2299407 tp!2299406))))

(assert (=> b!7804898 (= tp!2299354 e!4620401)))

(declare-fun b!7805371 () Bool)

(declare-fun tp!2299405 () Bool)

(assert (=> b!7805371 (= e!4620401 tp!2299405)))

(assert (= (and b!7804898 ((_ is ElementMatch!20885) (regTwo!42283 r1!6279))) b!7805369))

(assert (= (and b!7804898 ((_ is Concat!29730) (regTwo!42283 r1!6279))) b!7805370))

(assert (= (and b!7804898 ((_ is Star!20885) (regTwo!42283 r1!6279))) b!7805371))

(assert (= (and b!7804898 ((_ is Union!20885) (regTwo!42283 r1!6279))) b!7805372))

(declare-fun b!7805377 () Bool)

(declare-fun e!4620404 () Bool)

(declare-fun tp!2299411 () Bool)

(assert (=> b!7805377 (= e!4620404 (and tp_is_empty!52125 tp!2299411))))

(assert (=> b!7804900 (= tp!2299361 e!4620404)))

(assert (= (and b!7804900 ((_ is Cons!73600) (t!388459 s!14292))) b!7805377))

(declare-fun b!7805378 () Bool)

(declare-fun e!4620405 () Bool)

(assert (=> b!7805378 (= e!4620405 tp_is_empty!52125)))

(declare-fun b!7805381 () Bool)

(declare-fun tp!2299416 () Bool)

(declare-fun tp!2299412 () Bool)

(assert (=> b!7805381 (= e!4620405 (and tp!2299416 tp!2299412))))

(declare-fun b!7805379 () Bool)

(declare-fun tp!2299415 () Bool)

(declare-fun tp!2299414 () Bool)

(assert (=> b!7805379 (= e!4620405 (and tp!2299415 tp!2299414))))

(assert (=> b!7804905 (= tp!2299358 e!4620405)))

(declare-fun b!7805380 () Bool)

(declare-fun tp!2299413 () Bool)

(assert (=> b!7805380 (= e!4620405 tp!2299413)))

(assert (= (and b!7804905 ((_ is ElementMatch!20885) (reg!21214 r1!6279))) b!7805378))

(assert (= (and b!7804905 ((_ is Concat!29730) (reg!21214 r1!6279))) b!7805379))

(assert (= (and b!7804905 ((_ is Star!20885) (reg!21214 r1!6279))) b!7805380))

(assert (= (and b!7804905 ((_ is Union!20885) (reg!21214 r1!6279))) b!7805381))

(declare-fun b!7805382 () Bool)

(declare-fun e!4620406 () Bool)

(assert (=> b!7805382 (= e!4620406 tp_is_empty!52125)))

(declare-fun b!7805385 () Bool)

(declare-fun tp!2299421 () Bool)

(declare-fun tp!2299417 () Bool)

(assert (=> b!7805385 (= e!4620406 (and tp!2299421 tp!2299417))))

(declare-fun b!7805383 () Bool)

(declare-fun tp!2299420 () Bool)

(declare-fun tp!2299419 () Bool)

(assert (=> b!7805383 (= e!4620406 (and tp!2299420 tp!2299419))))

(assert (=> b!7804894 (= tp!2299356 e!4620406)))

(declare-fun b!7805384 () Bool)

(declare-fun tp!2299418 () Bool)

(assert (=> b!7805384 (= e!4620406 tp!2299418)))

(assert (= (and b!7804894 ((_ is ElementMatch!20885) (regOne!42282 r2!6217))) b!7805382))

(assert (= (and b!7804894 ((_ is Concat!29730) (regOne!42282 r2!6217))) b!7805383))

(assert (= (and b!7804894 ((_ is Star!20885) (regOne!42282 r2!6217))) b!7805384))

(assert (= (and b!7804894 ((_ is Union!20885) (regOne!42282 r2!6217))) b!7805385))

(declare-fun b!7805386 () Bool)

(declare-fun e!4620407 () Bool)

(assert (=> b!7805386 (= e!4620407 tp_is_empty!52125)))

(declare-fun b!7805389 () Bool)

(declare-fun tp!2299426 () Bool)

(declare-fun tp!2299422 () Bool)

(assert (=> b!7805389 (= e!4620407 (and tp!2299426 tp!2299422))))

(declare-fun b!7805387 () Bool)

(declare-fun tp!2299425 () Bool)

(declare-fun tp!2299424 () Bool)

(assert (=> b!7805387 (= e!4620407 (and tp!2299425 tp!2299424))))

(assert (=> b!7804894 (= tp!2299353 e!4620407)))

(declare-fun b!7805388 () Bool)

(declare-fun tp!2299423 () Bool)

(assert (=> b!7805388 (= e!4620407 tp!2299423)))

(assert (= (and b!7804894 ((_ is ElementMatch!20885) (regTwo!42282 r2!6217))) b!7805386))

(assert (= (and b!7804894 ((_ is Concat!29730) (regTwo!42282 r2!6217))) b!7805387))

(assert (= (and b!7804894 ((_ is Star!20885) (regTwo!42282 r2!6217))) b!7805388))

(assert (= (and b!7804894 ((_ is Union!20885) (regTwo!42282 r2!6217))) b!7805389))

(check-sat (not d!2347908) (not b!7805306) (not b!7805362) (not b!7805351) (not b!7805324) (not b!7805065) (not d!2347942) (not b!7805389) (not b!7805387) (not b!7805347) (not b!7805001) (not b!7805057) (not b!7805183) (not b!7805291) (not b!7805380) (not b!7805050) (not b!7805364) (not d!2347906) (not bm!723897) (not b!7805047) (not d!2347900) (not b!7805292) (not bm!723952) (not d!2347936) (not b!7804919) (not b!7805303) (not b!7805305) (not b!7805385) (not b!7805346) (not b!7805367) (not b!7805355) (not b!7804953) (not b!7805360) (not b!7805350) (not b!7805002) (not d!2347890) (not b!7805358) (not b!7805170) (not b!7805384) (not b!7805269) (not b!7805366) (not d!2347944) (not b!7805049) (not d!2347886) (not bm!723896) (not bm!723920) (not b!7804921) (not bm!723904) (not bm!723905) (not b!7805315) (not b!7805310) (not b!7805372) (not d!2347918) (not b!7805005) (not d!2347920) (not b!7805352) (not bm!723953) (not b!7805267) (not b!7805009) (not b!7805271) (not b!7805174) (not b!7805302) (not b!7805371) (not d!2347922) (not b!7805356) (not b!7805368) (not b!7805381) tp_is_empty!52125 (not b!7804920) (not b!7805062) (not d!2347902) (not b!7805263) (not b!7805173) (not d!2347940) (not bm!723901) (not b!7805363) (not b!7805148) (not b!7805359) (not b!7805370) (not b!7805268) (not bm!723925) (not b!7805004) (not b!7805354) (not b!7805014) (not d!2347892) (not b!7805048) (not b!7805178) (not b!7805053) (not b!7805383) (not bm!723950) (not b!7805052) (not b!7804942) (not b!7805266) (not b!7805379) (not b!7805388) (not bm!723906) (not b!7805348) (not b!7805377) (not bm!723921) (not b!7805171))
(check-sat)

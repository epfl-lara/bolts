; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80646 () Bool)

(assert start!80646)

(declare-fun b!895512 () Bool)

(assert (=> b!895512 true))

(assert (=> b!895512 true))

(assert (=> b!895512 true))

(declare-fun lambda!27706 () Int)

(declare-fun lambda!27705 () Int)

(assert (=> b!895512 (not (= lambda!27706 lambda!27705))))

(assert (=> b!895512 true))

(assert (=> b!895512 true))

(assert (=> b!895512 true))

(declare-fun res!407026 () Bool)

(declare-fun e!586258 () Bool)

(assert (=> start!80646 (=> (not res!407026) (not e!586258))))

(declare-datatypes ((C!5244 0))(
  ( (C!5245 (val!2870 Int)) )
))
(declare-datatypes ((Regex!2337 0))(
  ( (ElementMatch!2337 (c!145026 C!5244)) (Concat!4170 (regOne!5186 Regex!2337) (regTwo!5186 Regex!2337)) (EmptyExpr!2337) (Star!2337 (reg!2666 Regex!2337)) (EmptyLang!2337) (Union!2337 (regOne!5187 Regex!2337) (regTwo!5187 Regex!2337)) )
))
(declare-fun r!15766 () Regex!2337)

(declare-fun validRegex!806 (Regex!2337) Bool)

(assert (=> start!80646 (= res!407026 (validRegex!806 r!15766))))

(assert (=> start!80646 e!586258))

(declare-fun e!586261 () Bool)

(assert (=> start!80646 e!586261))

(declare-fun e!586260 () Bool)

(assert (=> start!80646 e!586260))

(declare-fun e!586257 () Bool)

(declare-fun e!586259 () Bool)

(assert (=> b!895512 (= e!586257 e!586259)))

(declare-fun res!407028 () Bool)

(assert (=> b!895512 (=> res!407028 e!586259)))

(declare-datatypes ((List!9567 0))(
  ( (Nil!9551) (Cons!9551 (h!14952 C!5244) (t!100613 List!9567)) )
))
(declare-fun s!10566 () List!9567)

(declare-fun isEmpty!5740 (List!9567) Bool)

(assert (=> b!895512 (= res!407028 (isEmpty!5740 s!10566))))

(declare-fun Exists!114 (Int) Bool)

(assert (=> b!895512 (= (Exists!114 lambda!27705) (Exists!114 lambda!27706))))

(declare-datatypes ((Unit!14253 0))(
  ( (Unit!14254) )
))
(declare-fun lt!333314 () Unit!14253)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!6 (Regex!2337 List!9567) Unit!14253)

(assert (=> b!895512 (= lt!333314 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!6 (reg!2666 r!15766) s!10566))))

(declare-fun lt!333312 () Regex!2337)

(declare-datatypes ((tuple2!10676 0))(
  ( (tuple2!10677 (_1!6164 List!9567) (_2!6164 List!9567)) )
))
(declare-datatypes ((Option!1980 0))(
  ( (None!1979) (Some!1979 (v!19396 tuple2!10676)) )
))
(declare-fun isDefined!1622 (Option!1980) Bool)

(declare-fun findConcatSeparation!86 (Regex!2337 Regex!2337 List!9567 List!9567 List!9567) Option!1980)

(assert (=> b!895512 (= (isDefined!1622 (findConcatSeparation!86 (reg!2666 r!15766) lt!333312 Nil!9551 s!10566 s!10566)) (Exists!114 lambda!27705))))

(declare-fun lt!333311 () Unit!14253)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!86 (Regex!2337 Regex!2337 List!9567) Unit!14253)

(assert (=> b!895512 (= lt!333311 (lemmaFindConcatSeparationEquivalentToExists!86 (reg!2666 r!15766) lt!333312 s!10566))))

(assert (=> b!895512 (= lt!333312 (Star!2337 (reg!2666 r!15766)))))

(declare-fun b!895513 () Bool)

(declare-fun tp!281492 () Bool)

(assert (=> b!895513 (= e!586261 tp!281492)))

(declare-fun b!895514 () Bool)

(declare-fun tp!281491 () Bool)

(declare-fun tp!281490 () Bool)

(assert (=> b!895514 (= e!586261 (and tp!281491 tp!281490))))

(declare-fun b!895515 () Bool)

(declare-fun tp_is_empty!4317 () Bool)

(assert (=> b!895515 (= e!586261 tp_is_empty!4317)))

(declare-fun b!895516 () Bool)

(declare-fun tp!281488 () Bool)

(declare-fun tp!281487 () Bool)

(assert (=> b!895516 (= e!586261 (and tp!281488 tp!281487))))

(declare-fun b!895517 () Bool)

(assert (=> b!895517 (= e!586258 (not e!586257))))

(declare-fun res!407027 () Bool)

(assert (=> b!895517 (=> res!407027 e!586257)))

(declare-fun lt!333315 () Bool)

(get-info :version)

(assert (=> b!895517 (= res!407027 (or (not lt!333315) (and ((_ is Concat!4170) r!15766) ((_ is EmptyExpr!2337) (regOne!5186 r!15766))) (and ((_ is Concat!4170) r!15766) ((_ is EmptyExpr!2337) (regTwo!5186 r!15766))) ((_ is Concat!4170) r!15766) ((_ is Union!2337) r!15766) (not ((_ is Star!2337) r!15766))))))

(declare-fun matchRSpec!138 (Regex!2337 List!9567) Bool)

(assert (=> b!895517 (= lt!333315 (matchRSpec!138 r!15766 s!10566))))

(declare-fun matchR!875 (Regex!2337 List!9567) Bool)

(assert (=> b!895517 (= lt!333315 (matchR!875 r!15766 s!10566))))

(declare-fun lt!333313 () Unit!14253)

(declare-fun mainMatchTheorem!138 (Regex!2337 List!9567) Unit!14253)

(assert (=> b!895517 (= lt!333313 (mainMatchTheorem!138 r!15766 s!10566))))

(declare-fun b!895518 () Bool)

(assert (=> b!895518 (= e!586259 (validRegex!806 (reg!2666 r!15766)))))

(declare-fun b!895519 () Bool)

(declare-fun tp!281489 () Bool)

(assert (=> b!895519 (= e!586260 (and tp_is_empty!4317 tp!281489))))

(assert (= (and start!80646 res!407026) b!895517))

(assert (= (and b!895517 (not res!407027)) b!895512))

(assert (= (and b!895512 (not res!407028)) b!895518))

(assert (= (and start!80646 ((_ is ElementMatch!2337) r!15766)) b!895515))

(assert (= (and start!80646 ((_ is Concat!4170) r!15766)) b!895516))

(assert (= (and start!80646 ((_ is Star!2337) r!15766)) b!895513))

(assert (= (and start!80646 ((_ is Union!2337) r!15766)) b!895514))

(assert (= (and start!80646 ((_ is Cons!9551) s!10566)) b!895519))

(declare-fun m!1135817 () Bool)

(assert (=> start!80646 m!1135817))

(declare-fun m!1135819 () Bool)

(assert (=> b!895512 m!1135819))

(declare-fun m!1135821 () Bool)

(assert (=> b!895512 m!1135821))

(declare-fun m!1135823 () Bool)

(assert (=> b!895512 m!1135823))

(declare-fun m!1135825 () Bool)

(assert (=> b!895512 m!1135825))

(assert (=> b!895512 m!1135825))

(declare-fun m!1135827 () Bool)

(assert (=> b!895512 m!1135827))

(declare-fun m!1135829 () Bool)

(assert (=> b!895512 m!1135829))

(assert (=> b!895512 m!1135821))

(declare-fun m!1135831 () Bool)

(assert (=> b!895512 m!1135831))

(declare-fun m!1135833 () Bool)

(assert (=> b!895517 m!1135833))

(declare-fun m!1135835 () Bool)

(assert (=> b!895517 m!1135835))

(declare-fun m!1135837 () Bool)

(assert (=> b!895517 m!1135837))

(declare-fun m!1135839 () Bool)

(assert (=> b!895518 m!1135839))

(check-sat (not b!895519) (not b!895517) (not b!895513) (not b!895514) tp_is_empty!4317 (not b!895512) (not b!895518) (not start!80646) (not b!895516))
(check-sat)
(get-model)

(declare-fun d!277748 () Bool)

(assert (=> d!277748 (= (isEmpty!5740 s!10566) ((_ is Nil!9551) s!10566))))

(assert (=> b!895512 d!277748))

(declare-fun bs!234929 () Bool)

(declare-fun d!277750 () Bool)

(assert (= bs!234929 (and d!277750 b!895512)))

(declare-fun lambda!27711 () Int)

(assert (=> bs!234929 (= (= (Star!2337 (reg!2666 r!15766)) lt!333312) (= lambda!27711 lambda!27705))))

(assert (=> bs!234929 (not (= lambda!27711 lambda!27706))))

(assert (=> d!277750 true))

(assert (=> d!277750 true))

(declare-fun lambda!27712 () Int)

(assert (=> bs!234929 (not (= lambda!27712 lambda!27705))))

(assert (=> bs!234929 (= (= (Star!2337 (reg!2666 r!15766)) lt!333312) (= lambda!27712 lambda!27706))))

(declare-fun bs!234930 () Bool)

(assert (= bs!234930 d!277750))

(assert (=> bs!234930 (not (= lambda!27712 lambda!27711))))

(assert (=> d!277750 true))

(assert (=> d!277750 true))

(assert (=> d!277750 (= (Exists!114 lambda!27711) (Exists!114 lambda!27712))))

(declare-fun lt!333318 () Unit!14253)

(declare-fun choose!5373 (Regex!2337 List!9567) Unit!14253)

(assert (=> d!277750 (= lt!333318 (choose!5373 (reg!2666 r!15766) s!10566))))

(assert (=> d!277750 (validRegex!806 (reg!2666 r!15766))))

(assert (=> d!277750 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!6 (reg!2666 r!15766) s!10566) lt!333318)))

(declare-fun m!1135841 () Bool)

(assert (=> bs!234930 m!1135841))

(declare-fun m!1135843 () Bool)

(assert (=> bs!234930 m!1135843))

(declare-fun m!1135845 () Bool)

(assert (=> bs!234930 m!1135845))

(assert (=> bs!234930 m!1135839))

(assert (=> b!895512 d!277750))

(declare-fun b!895611 () Bool)

(declare-fun e!586318 () Option!1980)

(declare-fun e!586316 () Option!1980)

(assert (=> b!895611 (= e!586318 e!586316)))

(declare-fun c!145046 () Bool)

(assert (=> b!895611 (= c!145046 ((_ is Nil!9551) s!10566))))

(declare-fun b!895613 () Bool)

(declare-fun e!586319 () Bool)

(declare-fun lt!333326 () Option!1980)

(declare-fun ++!2489 (List!9567 List!9567) List!9567)

(declare-fun get!3008 (Option!1980) tuple2!10676)

(assert (=> b!895613 (= e!586319 (= (++!2489 (_1!6164 (get!3008 lt!333326)) (_2!6164 (get!3008 lt!333326))) s!10566))))

(declare-fun b!895614 () Bool)

(assert (=> b!895614 (= e!586316 None!1979)))

(declare-fun b!895615 () Bool)

(declare-fun e!586315 () Bool)

(assert (=> b!895615 (= e!586315 (matchR!875 lt!333312 s!10566))))

(declare-fun b!895616 () Bool)

(declare-fun res!407083 () Bool)

(assert (=> b!895616 (=> (not res!407083) (not e!586319))))

(assert (=> b!895616 (= res!407083 (matchR!875 (reg!2666 r!15766) (_1!6164 (get!3008 lt!333326))))))

(declare-fun b!895617 () Bool)

(assert (=> b!895617 (= e!586318 (Some!1979 (tuple2!10677 Nil!9551 s!10566)))))

(declare-fun b!895618 () Bool)

(declare-fun res!407081 () Bool)

(assert (=> b!895618 (=> (not res!407081) (not e!586319))))

(assert (=> b!895618 (= res!407081 (matchR!875 lt!333312 (_2!6164 (get!3008 lt!333326))))))

(declare-fun b!895619 () Bool)

(declare-fun lt!333325 () Unit!14253)

(declare-fun lt!333327 () Unit!14253)

(assert (=> b!895619 (= lt!333325 lt!333327)))

(assert (=> b!895619 (= (++!2489 (++!2489 Nil!9551 (Cons!9551 (h!14952 s!10566) Nil!9551)) (t!100613 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!115 (List!9567 C!5244 List!9567 List!9567) Unit!14253)

(assert (=> b!895619 (= lt!333327 (lemmaMoveElementToOtherListKeepsConcatEq!115 Nil!9551 (h!14952 s!10566) (t!100613 s!10566) s!10566))))

(assert (=> b!895619 (= e!586316 (findConcatSeparation!86 (reg!2666 r!15766) lt!333312 (++!2489 Nil!9551 (Cons!9551 (h!14952 s!10566) Nil!9551)) (t!100613 s!10566) s!10566))))

(declare-fun d!277754 () Bool)

(declare-fun e!586317 () Bool)

(assert (=> d!277754 e!586317))

(declare-fun res!407080 () Bool)

(assert (=> d!277754 (=> res!407080 e!586317)))

(assert (=> d!277754 (= res!407080 e!586319)))

(declare-fun res!407084 () Bool)

(assert (=> d!277754 (=> (not res!407084) (not e!586319))))

(assert (=> d!277754 (= res!407084 (isDefined!1622 lt!333326))))

(assert (=> d!277754 (= lt!333326 e!586318)))

(declare-fun c!145045 () Bool)

(assert (=> d!277754 (= c!145045 e!586315)))

(declare-fun res!407082 () Bool)

(assert (=> d!277754 (=> (not res!407082) (not e!586315))))

(assert (=> d!277754 (= res!407082 (matchR!875 (reg!2666 r!15766) Nil!9551))))

(assert (=> d!277754 (validRegex!806 (reg!2666 r!15766))))

(assert (=> d!277754 (= (findConcatSeparation!86 (reg!2666 r!15766) lt!333312 Nil!9551 s!10566 s!10566) lt!333326)))

(declare-fun b!895612 () Bool)

(assert (=> b!895612 (= e!586317 (not (isDefined!1622 lt!333326)))))

(assert (= (and d!277754 res!407082) b!895615))

(assert (= (and d!277754 c!145045) b!895617))

(assert (= (and d!277754 (not c!145045)) b!895611))

(assert (= (and b!895611 c!145046) b!895614))

(assert (= (and b!895611 (not c!145046)) b!895619))

(assert (= (and d!277754 res!407084) b!895616))

(assert (= (and b!895616 res!407083) b!895618))

(assert (= (and b!895618 res!407081) b!895613))

(assert (= (and d!277754 (not res!407080)) b!895612))

(declare-fun m!1135853 () Bool)

(assert (=> b!895619 m!1135853))

(assert (=> b!895619 m!1135853))

(declare-fun m!1135855 () Bool)

(assert (=> b!895619 m!1135855))

(declare-fun m!1135857 () Bool)

(assert (=> b!895619 m!1135857))

(assert (=> b!895619 m!1135853))

(declare-fun m!1135859 () Bool)

(assert (=> b!895619 m!1135859))

(declare-fun m!1135861 () Bool)

(assert (=> b!895615 m!1135861))

(declare-fun m!1135863 () Bool)

(assert (=> b!895613 m!1135863))

(declare-fun m!1135865 () Bool)

(assert (=> b!895613 m!1135865))

(declare-fun m!1135867 () Bool)

(assert (=> d!277754 m!1135867))

(declare-fun m!1135869 () Bool)

(assert (=> d!277754 m!1135869))

(assert (=> d!277754 m!1135839))

(assert (=> b!895616 m!1135863))

(declare-fun m!1135871 () Bool)

(assert (=> b!895616 m!1135871))

(assert (=> b!895612 m!1135867))

(assert (=> b!895618 m!1135863))

(declare-fun m!1135873 () Bool)

(assert (=> b!895618 m!1135873))

(assert (=> b!895512 d!277754))

(declare-fun d!277758 () Bool)

(declare-fun isEmpty!5741 (Option!1980) Bool)

(assert (=> d!277758 (= (isDefined!1622 (findConcatSeparation!86 (reg!2666 r!15766) lt!333312 Nil!9551 s!10566 s!10566)) (not (isEmpty!5741 (findConcatSeparation!86 (reg!2666 r!15766) lt!333312 Nil!9551 s!10566 s!10566))))))

(declare-fun bs!234931 () Bool)

(assert (= bs!234931 d!277758))

(assert (=> bs!234931 m!1135821))

(declare-fun m!1135875 () Bool)

(assert (=> bs!234931 m!1135875))

(assert (=> b!895512 d!277758))

(declare-fun d!277760 () Bool)

(declare-fun choose!5374 (Int) Bool)

(assert (=> d!277760 (= (Exists!114 lambda!27705) (choose!5374 lambda!27705))))

(declare-fun bs!234932 () Bool)

(assert (= bs!234932 d!277760))

(declare-fun m!1135877 () Bool)

(assert (=> bs!234932 m!1135877))

(assert (=> b!895512 d!277760))

(declare-fun d!277762 () Bool)

(assert (=> d!277762 (= (Exists!114 lambda!27706) (choose!5374 lambda!27706))))

(declare-fun bs!234933 () Bool)

(assert (= bs!234933 d!277762))

(declare-fun m!1135879 () Bool)

(assert (=> bs!234933 m!1135879))

(assert (=> b!895512 d!277762))

(declare-fun bs!234937 () Bool)

(declare-fun d!277764 () Bool)

(assert (= bs!234937 (and d!277764 b!895512)))

(declare-fun lambda!27721 () Int)

(assert (=> bs!234937 (= lambda!27721 lambda!27705)))

(assert (=> bs!234937 (not (= lambda!27721 lambda!27706))))

(declare-fun bs!234938 () Bool)

(assert (= bs!234938 (and d!277764 d!277750)))

(assert (=> bs!234938 (= (= lt!333312 (Star!2337 (reg!2666 r!15766))) (= lambda!27721 lambda!27711))))

(assert (=> bs!234938 (not (= lambda!27721 lambda!27712))))

(assert (=> d!277764 true))

(assert (=> d!277764 true))

(assert (=> d!277764 true))

(assert (=> d!277764 (= (isDefined!1622 (findConcatSeparation!86 (reg!2666 r!15766) lt!333312 Nil!9551 s!10566 s!10566)) (Exists!114 lambda!27721))))

(declare-fun lt!333332 () Unit!14253)

(declare-fun choose!5375 (Regex!2337 Regex!2337 List!9567) Unit!14253)

(assert (=> d!277764 (= lt!333332 (choose!5375 (reg!2666 r!15766) lt!333312 s!10566))))

(assert (=> d!277764 (validRegex!806 (reg!2666 r!15766))))

(assert (=> d!277764 (= (lemmaFindConcatSeparationEquivalentToExists!86 (reg!2666 r!15766) lt!333312 s!10566) lt!333332)))

(declare-fun bs!234939 () Bool)

(assert (= bs!234939 d!277764))

(assert (=> bs!234939 m!1135821))

(assert (=> bs!234939 m!1135823))

(declare-fun m!1135887 () Bool)

(assert (=> bs!234939 m!1135887))

(assert (=> bs!234939 m!1135839))

(assert (=> bs!234939 m!1135821))

(declare-fun m!1135889 () Bool)

(assert (=> bs!234939 m!1135889))

(assert (=> b!895512 d!277764))

(declare-fun b!895695 () Bool)

(declare-fun e!586369 () Bool)

(declare-fun call!53229 () Bool)

(assert (=> b!895695 (= e!586369 call!53229)))

(declare-fun b!895696 () Bool)

(declare-fun res!407128 () Bool)

(assert (=> b!895696 (=> (not res!407128) (not e!586369))))

(declare-fun call!53230 () Bool)

(assert (=> b!895696 (= res!407128 call!53230)))

(declare-fun e!586366 () Bool)

(assert (=> b!895696 (= e!586366 e!586369)))

(declare-fun b!895697 () Bool)

(declare-fun e!586370 () Bool)

(declare-fun call!53228 () Bool)

(assert (=> b!895697 (= e!586370 call!53228)))

(declare-fun b!895698 () Bool)

(declare-fun e!586365 () Bool)

(assert (=> b!895698 (= e!586365 call!53229)))

(declare-fun b!895699 () Bool)

(declare-fun e!586367 () Bool)

(assert (=> b!895699 (= e!586367 e!586370)))

(declare-fun res!407129 () Bool)

(declare-fun nullable!617 (Regex!2337) Bool)

(assert (=> b!895699 (= res!407129 (not (nullable!617 (reg!2666 (reg!2666 r!15766)))))))

(assert (=> b!895699 (=> (not res!407129) (not e!586370))))

(declare-fun bm!53224 () Bool)

(assert (=> bm!53224 (= call!53229 call!53228)))

(declare-fun b!895700 () Bool)

(declare-fun e!586368 () Bool)

(assert (=> b!895700 (= e!586368 e!586365)))

(declare-fun res!407130 () Bool)

(assert (=> b!895700 (=> (not res!407130) (not e!586365))))

(assert (=> b!895700 (= res!407130 call!53230)))

(declare-fun b!895701 () Bool)

(declare-fun e!586364 () Bool)

(assert (=> b!895701 (= e!586364 e!586367)))

(declare-fun c!145064 () Bool)

(assert (=> b!895701 (= c!145064 ((_ is Star!2337) (reg!2666 r!15766)))))

(declare-fun b!895702 () Bool)

(assert (=> b!895702 (= e!586367 e!586366)))

(declare-fun c!145065 () Bool)

(assert (=> b!895702 (= c!145065 ((_ is Union!2337) (reg!2666 r!15766)))))

(declare-fun bm!53223 () Bool)

(assert (=> bm!53223 (= call!53228 (validRegex!806 (ite c!145064 (reg!2666 (reg!2666 r!15766)) (ite c!145065 (regTwo!5187 (reg!2666 r!15766)) (regTwo!5186 (reg!2666 r!15766))))))))

(declare-fun d!277768 () Bool)

(declare-fun res!407126 () Bool)

(assert (=> d!277768 (=> res!407126 e!586364)))

(assert (=> d!277768 (= res!407126 ((_ is ElementMatch!2337) (reg!2666 r!15766)))))

(assert (=> d!277768 (= (validRegex!806 (reg!2666 r!15766)) e!586364)))

(declare-fun bm!53225 () Bool)

(assert (=> bm!53225 (= call!53230 (validRegex!806 (ite c!145065 (regOne!5187 (reg!2666 r!15766)) (regOne!5186 (reg!2666 r!15766)))))))

(declare-fun b!895703 () Bool)

(declare-fun res!407127 () Bool)

(assert (=> b!895703 (=> res!407127 e!586368)))

(assert (=> b!895703 (= res!407127 (not ((_ is Concat!4170) (reg!2666 r!15766))))))

(assert (=> b!895703 (= e!586366 e!586368)))

(assert (= (and d!277768 (not res!407126)) b!895701))

(assert (= (and b!895701 c!145064) b!895699))

(assert (= (and b!895701 (not c!145064)) b!895702))

(assert (= (and b!895699 res!407129) b!895697))

(assert (= (and b!895702 c!145065) b!895696))

(assert (= (and b!895702 (not c!145065)) b!895703))

(assert (= (and b!895696 res!407128) b!895695))

(assert (= (and b!895703 (not res!407127)) b!895700))

(assert (= (and b!895700 res!407130) b!895698))

(assert (= (or b!895695 b!895698) bm!53224))

(assert (= (or b!895696 b!895700) bm!53225))

(assert (= (or b!895697 bm!53224) bm!53223))

(declare-fun m!1135903 () Bool)

(assert (=> b!895699 m!1135903))

(declare-fun m!1135905 () Bool)

(assert (=> bm!53223 m!1135905))

(declare-fun m!1135907 () Bool)

(assert (=> bm!53225 m!1135907))

(assert (=> b!895518 d!277768))

(declare-fun b!895704 () Bool)

(declare-fun e!586376 () Bool)

(declare-fun call!53232 () Bool)

(assert (=> b!895704 (= e!586376 call!53232)))

(declare-fun b!895705 () Bool)

(declare-fun res!407133 () Bool)

(assert (=> b!895705 (=> (not res!407133) (not e!586376))))

(declare-fun call!53233 () Bool)

(assert (=> b!895705 (= res!407133 call!53233)))

(declare-fun e!586373 () Bool)

(assert (=> b!895705 (= e!586373 e!586376)))

(declare-fun b!895706 () Bool)

(declare-fun e!586377 () Bool)

(declare-fun call!53231 () Bool)

(assert (=> b!895706 (= e!586377 call!53231)))

(declare-fun b!895707 () Bool)

(declare-fun e!586372 () Bool)

(assert (=> b!895707 (= e!586372 call!53232)))

(declare-fun b!895708 () Bool)

(declare-fun e!586374 () Bool)

(assert (=> b!895708 (= e!586374 e!586377)))

(declare-fun res!407134 () Bool)

(assert (=> b!895708 (= res!407134 (not (nullable!617 (reg!2666 r!15766))))))

(assert (=> b!895708 (=> (not res!407134) (not e!586377))))

(declare-fun bm!53227 () Bool)

(assert (=> bm!53227 (= call!53232 call!53231)))

(declare-fun b!895709 () Bool)

(declare-fun e!586375 () Bool)

(assert (=> b!895709 (= e!586375 e!586372)))

(declare-fun res!407135 () Bool)

(assert (=> b!895709 (=> (not res!407135) (not e!586372))))

(assert (=> b!895709 (= res!407135 call!53233)))

(declare-fun b!895710 () Bool)

(declare-fun e!586371 () Bool)

(assert (=> b!895710 (= e!586371 e!586374)))

(declare-fun c!145066 () Bool)

(assert (=> b!895710 (= c!145066 ((_ is Star!2337) r!15766))))

(declare-fun b!895711 () Bool)

(assert (=> b!895711 (= e!586374 e!586373)))

(declare-fun c!145067 () Bool)

(assert (=> b!895711 (= c!145067 ((_ is Union!2337) r!15766))))

(declare-fun bm!53226 () Bool)

(assert (=> bm!53226 (= call!53231 (validRegex!806 (ite c!145066 (reg!2666 r!15766) (ite c!145067 (regTwo!5187 r!15766) (regTwo!5186 r!15766)))))))

(declare-fun d!277772 () Bool)

(declare-fun res!407131 () Bool)

(assert (=> d!277772 (=> res!407131 e!586371)))

(assert (=> d!277772 (= res!407131 ((_ is ElementMatch!2337) r!15766))))

(assert (=> d!277772 (= (validRegex!806 r!15766) e!586371)))

(declare-fun bm!53228 () Bool)

(assert (=> bm!53228 (= call!53233 (validRegex!806 (ite c!145067 (regOne!5187 r!15766) (regOne!5186 r!15766))))))

(declare-fun b!895712 () Bool)

(declare-fun res!407132 () Bool)

(assert (=> b!895712 (=> res!407132 e!586375)))

(assert (=> b!895712 (= res!407132 (not ((_ is Concat!4170) r!15766)))))

(assert (=> b!895712 (= e!586373 e!586375)))

(assert (= (and d!277772 (not res!407131)) b!895710))

(assert (= (and b!895710 c!145066) b!895708))

(assert (= (and b!895710 (not c!145066)) b!895711))

(assert (= (and b!895708 res!407134) b!895706))

(assert (= (and b!895711 c!145067) b!895705))

(assert (= (and b!895711 (not c!145067)) b!895712))

(assert (= (and b!895705 res!407133) b!895704))

(assert (= (and b!895712 (not res!407132)) b!895709))

(assert (= (and b!895709 res!407135) b!895707))

(assert (= (or b!895704 b!895707) bm!53227))

(assert (= (or b!895705 b!895709) bm!53228))

(assert (= (or b!895706 bm!53227) bm!53226))

(declare-fun m!1135909 () Bool)

(assert (=> b!895708 m!1135909))

(declare-fun m!1135911 () Bool)

(assert (=> bm!53226 m!1135911))

(declare-fun m!1135915 () Bool)

(assert (=> bm!53228 m!1135915))

(assert (=> start!80646 d!277772))

(declare-fun bs!234946 () Bool)

(declare-fun b!895764 () Bool)

(assert (= bs!234946 (and b!895764 d!277764)))

(declare-fun lambda!27732 () Int)

(assert (=> bs!234946 (not (= lambda!27732 lambda!27721))))

(declare-fun bs!234947 () Bool)

(assert (= bs!234947 (and b!895764 d!277750)))

(assert (=> bs!234947 (= (= r!15766 (Star!2337 (reg!2666 r!15766))) (= lambda!27732 lambda!27712))))

(assert (=> bs!234947 (not (= lambda!27732 lambda!27711))))

(declare-fun bs!234948 () Bool)

(assert (= bs!234948 (and b!895764 b!895512)))

(assert (=> bs!234948 (= (= r!15766 lt!333312) (= lambda!27732 lambda!27706))))

(assert (=> bs!234948 (not (= lambda!27732 lambda!27705))))

(assert (=> b!895764 true))

(assert (=> b!895764 true))

(declare-fun bs!234949 () Bool)

(declare-fun b!895768 () Bool)

(assert (= bs!234949 (and b!895768 d!277764)))

(declare-fun lambda!27733 () Int)

(assert (=> bs!234949 (not (= lambda!27733 lambda!27721))))

(declare-fun bs!234951 () Bool)

(assert (= bs!234951 (and b!895768 d!277750)))

(assert (=> bs!234951 (not (= lambda!27733 lambda!27712))))

(assert (=> bs!234951 (not (= lambda!27733 lambda!27711))))

(declare-fun bs!234953 () Bool)

(assert (= bs!234953 (and b!895768 b!895764)))

(assert (=> bs!234953 (not (= lambda!27733 lambda!27732))))

(declare-fun bs!234954 () Bool)

(assert (= bs!234954 (and b!895768 b!895512)))

(assert (=> bs!234954 (not (= lambda!27733 lambda!27706))))

(assert (=> bs!234954 (not (= lambda!27733 lambda!27705))))

(assert (=> b!895768 true))

(assert (=> b!895768 true))

(declare-fun e!586410 () Bool)

(declare-fun call!53242 () Bool)

(assert (=> b!895764 (= e!586410 call!53242)))

(declare-fun b!895765 () Bool)

(declare-fun e!586411 () Bool)

(assert (=> b!895765 (= e!586411 (= s!10566 (Cons!9551 (c!145026 r!15766) Nil!9551)))))

(declare-fun b!895766 () Bool)

(declare-fun res!407168 () Bool)

(assert (=> b!895766 (=> res!407168 e!586410)))

(declare-fun call!53241 () Bool)

(assert (=> b!895766 (= res!407168 call!53241)))

(declare-fun e!586408 () Bool)

(assert (=> b!895766 (= e!586408 e!586410)))

(declare-fun b!895767 () Bool)

(declare-fun e!586412 () Bool)

(assert (=> b!895767 (= e!586412 (matchRSpec!138 (regTwo!5187 r!15766) s!10566))))

(assert (=> b!895768 (= e!586408 call!53242)))

(declare-fun b!895769 () Bool)

(declare-fun e!586413 () Bool)

(assert (=> b!895769 (= e!586413 e!586412)))

(declare-fun res!407167 () Bool)

(assert (=> b!895769 (= res!407167 (matchRSpec!138 (regOne!5187 r!15766) s!10566))))

(assert (=> b!895769 (=> res!407167 e!586412)))

(declare-fun d!277776 () Bool)

(declare-fun c!145081 () Bool)

(assert (=> d!277776 (= c!145081 ((_ is EmptyExpr!2337) r!15766))))

(declare-fun e!586407 () Bool)

(assert (=> d!277776 (= (matchRSpec!138 r!15766 s!10566) e!586407)))

(declare-fun b!895770 () Bool)

(assert (=> b!895770 (= e!586407 call!53241)))

(declare-fun b!895771 () Bool)

(declare-fun c!145080 () Bool)

(assert (=> b!895771 (= c!145080 ((_ is Union!2337) r!15766))))

(assert (=> b!895771 (= e!586411 e!586413)))

(declare-fun b!895772 () Bool)

(declare-fun c!145079 () Bool)

(assert (=> b!895772 (= c!145079 ((_ is ElementMatch!2337) r!15766))))

(declare-fun e!586409 () Bool)

(assert (=> b!895772 (= e!586409 e!586411)))

(declare-fun b!895773 () Bool)

(assert (=> b!895773 (= e!586407 e!586409)))

(declare-fun res!407169 () Bool)

(assert (=> b!895773 (= res!407169 (not ((_ is EmptyLang!2337) r!15766)))))

(assert (=> b!895773 (=> (not res!407169) (not e!586409))))

(declare-fun bm!53236 () Bool)

(assert (=> bm!53236 (= call!53241 (isEmpty!5740 s!10566))))

(declare-fun c!145078 () Bool)

(declare-fun bm!53237 () Bool)

(assert (=> bm!53237 (= call!53242 (Exists!114 (ite c!145078 lambda!27732 lambda!27733)))))

(declare-fun b!895774 () Bool)

(assert (=> b!895774 (= e!586413 e!586408)))

(assert (=> b!895774 (= c!145078 ((_ is Star!2337) r!15766))))

(assert (= (and d!277776 c!145081) b!895770))

(assert (= (and d!277776 (not c!145081)) b!895773))

(assert (= (and b!895773 res!407169) b!895772))

(assert (= (and b!895772 c!145079) b!895765))

(assert (= (and b!895772 (not c!145079)) b!895771))

(assert (= (and b!895771 c!145080) b!895769))

(assert (= (and b!895771 (not c!145080)) b!895774))

(assert (= (and b!895769 (not res!407167)) b!895767))

(assert (= (and b!895774 c!145078) b!895766))

(assert (= (and b!895774 (not c!145078)) b!895768))

(assert (= (and b!895766 (not res!407168)) b!895764))

(assert (= (or b!895764 b!895768) bm!53237))

(assert (= (or b!895770 b!895766) bm!53236))

(declare-fun m!1135935 () Bool)

(assert (=> b!895767 m!1135935))

(declare-fun m!1135937 () Bool)

(assert (=> b!895769 m!1135937))

(assert (=> bm!53236 m!1135829))

(declare-fun m!1135939 () Bool)

(assert (=> bm!53237 m!1135939))

(assert (=> b!895517 d!277776))

(declare-fun b!895807 () Bool)

(declare-fun e!586434 () Bool)

(declare-fun head!1582 (List!9567) C!5244)

(assert (=> b!895807 (= e!586434 (= (head!1582 s!10566) (c!145026 r!15766)))))

(declare-fun b!895808 () Bool)

(declare-fun e!586435 () Bool)

(assert (=> b!895808 (= e!586435 (nullable!617 r!15766))))

(declare-fun b!895809 () Bool)

(declare-fun e!586432 () Bool)

(declare-fun lt!333345 () Bool)

(assert (=> b!895809 (= e!586432 (not lt!333345))))

(declare-fun b!895810 () Bool)

(declare-fun e!586431 () Bool)

(assert (=> b!895810 (= e!586431 e!586432)))

(declare-fun c!145089 () Bool)

(assert (=> b!895810 (= c!145089 ((_ is EmptyLang!2337) r!15766))))

(declare-fun d!277790 () Bool)

(assert (=> d!277790 e!586431))

(declare-fun c!145090 () Bool)

(assert (=> d!277790 (= c!145090 ((_ is EmptyExpr!2337) r!15766))))

(assert (=> d!277790 (= lt!333345 e!586435)))

(declare-fun c!145088 () Bool)

(assert (=> d!277790 (= c!145088 (isEmpty!5740 s!10566))))

(assert (=> d!277790 (validRegex!806 r!15766)))

(assert (=> d!277790 (= (matchR!875 r!15766 s!10566) lt!333345)))

(declare-fun bm!53240 () Bool)

(declare-fun call!53245 () Bool)

(assert (=> bm!53240 (= call!53245 (isEmpty!5740 s!10566))))

(declare-fun b!895811 () Bool)

(declare-fun res!407192 () Bool)

(declare-fun e!586433 () Bool)

(assert (=> b!895811 (=> res!407192 e!586433)))

(assert (=> b!895811 (= res!407192 (not ((_ is ElementMatch!2337) r!15766)))))

(assert (=> b!895811 (= e!586432 e!586433)))

(declare-fun b!895812 () Bool)

(declare-fun e!586430 () Bool)

(assert (=> b!895812 (= e!586433 e!586430)))

(declare-fun res!407193 () Bool)

(assert (=> b!895812 (=> (not res!407193) (not e!586430))))

(assert (=> b!895812 (= res!407193 (not lt!333345))))

(declare-fun b!895813 () Bool)

(declare-fun res!407195 () Bool)

(assert (=> b!895813 (=> res!407195 e!586433)))

(assert (=> b!895813 (= res!407195 e!586434)))

(declare-fun res!407194 () Bool)

(assert (=> b!895813 (=> (not res!407194) (not e!586434))))

(assert (=> b!895813 (= res!407194 lt!333345)))

(declare-fun b!895814 () Bool)

(declare-fun derivativeStep!429 (Regex!2337 C!5244) Regex!2337)

(declare-fun tail!1144 (List!9567) List!9567)

(assert (=> b!895814 (= e!586435 (matchR!875 (derivativeStep!429 r!15766 (head!1582 s!10566)) (tail!1144 s!10566)))))

(declare-fun b!895815 () Bool)

(declare-fun e!586436 () Bool)

(assert (=> b!895815 (= e!586436 (not (= (head!1582 s!10566) (c!145026 r!15766))))))

(declare-fun b!895816 () Bool)

(declare-fun res!407190 () Bool)

(assert (=> b!895816 (=> res!407190 e!586436)))

(assert (=> b!895816 (= res!407190 (not (isEmpty!5740 (tail!1144 s!10566))))))

(declare-fun b!895817 () Bool)

(declare-fun res!407196 () Bool)

(assert (=> b!895817 (=> (not res!407196) (not e!586434))))

(assert (=> b!895817 (= res!407196 (not call!53245))))

(declare-fun b!895818 () Bool)

(assert (=> b!895818 (= e!586431 (= lt!333345 call!53245))))

(declare-fun b!895819 () Bool)

(assert (=> b!895819 (= e!586430 e!586436)))

(declare-fun res!407191 () Bool)

(assert (=> b!895819 (=> res!407191 e!586436)))

(assert (=> b!895819 (= res!407191 call!53245)))

(declare-fun b!895820 () Bool)

(declare-fun res!407197 () Bool)

(assert (=> b!895820 (=> (not res!407197) (not e!586434))))

(assert (=> b!895820 (= res!407197 (isEmpty!5740 (tail!1144 s!10566)))))

(assert (= (and d!277790 c!145088) b!895808))

(assert (= (and d!277790 (not c!145088)) b!895814))

(assert (= (and d!277790 c!145090) b!895818))

(assert (= (and d!277790 (not c!145090)) b!895810))

(assert (= (and b!895810 c!145089) b!895809))

(assert (= (and b!895810 (not c!145089)) b!895811))

(assert (= (and b!895811 (not res!407192)) b!895813))

(assert (= (and b!895813 res!407194) b!895817))

(assert (= (and b!895817 res!407196) b!895820))

(assert (= (and b!895820 res!407197) b!895807))

(assert (= (and b!895813 (not res!407195)) b!895812))

(assert (= (and b!895812 res!407193) b!895819))

(assert (= (and b!895819 (not res!407191)) b!895816))

(assert (= (and b!895816 (not res!407190)) b!895815))

(assert (= (or b!895818 b!895817 b!895819) bm!53240))

(declare-fun m!1135945 () Bool)

(assert (=> b!895816 m!1135945))

(assert (=> b!895816 m!1135945))

(declare-fun m!1135947 () Bool)

(assert (=> b!895816 m!1135947))

(declare-fun m!1135949 () Bool)

(assert (=> b!895807 m!1135949))

(assert (=> b!895814 m!1135949))

(assert (=> b!895814 m!1135949))

(declare-fun m!1135951 () Bool)

(assert (=> b!895814 m!1135951))

(assert (=> b!895814 m!1135945))

(assert (=> b!895814 m!1135951))

(assert (=> b!895814 m!1135945))

(declare-fun m!1135953 () Bool)

(assert (=> b!895814 m!1135953))

(assert (=> b!895815 m!1135949))

(declare-fun m!1135955 () Bool)

(assert (=> b!895808 m!1135955))

(assert (=> bm!53240 m!1135829))

(assert (=> d!277790 m!1135829))

(assert (=> d!277790 m!1135817))

(assert (=> b!895820 m!1135945))

(assert (=> b!895820 m!1135945))

(assert (=> b!895820 m!1135947))

(assert (=> b!895517 d!277790))

(declare-fun d!277794 () Bool)

(assert (=> d!277794 (= (matchR!875 r!15766 s!10566) (matchRSpec!138 r!15766 s!10566))))

(declare-fun lt!333348 () Unit!14253)

(declare-fun choose!5379 (Regex!2337 List!9567) Unit!14253)

(assert (=> d!277794 (= lt!333348 (choose!5379 r!15766 s!10566))))

(assert (=> d!277794 (validRegex!806 r!15766)))

(assert (=> d!277794 (= (mainMatchTheorem!138 r!15766 s!10566) lt!333348)))

(declare-fun bs!234960 () Bool)

(assert (= bs!234960 d!277794))

(assert (=> bs!234960 m!1135835))

(assert (=> bs!234960 m!1135833))

(declare-fun m!1135957 () Bool)

(assert (=> bs!234960 m!1135957))

(assert (=> bs!234960 m!1135817))

(assert (=> b!895517 d!277794))

(declare-fun b!895832 () Bool)

(declare-fun e!586439 () Bool)

(declare-fun tp!281506 () Bool)

(declare-fun tp!281504 () Bool)

(assert (=> b!895832 (= e!586439 (and tp!281506 tp!281504))))

(assert (=> b!895513 (= tp!281492 e!586439)))

(declare-fun b!895834 () Bool)

(declare-fun tp!281505 () Bool)

(declare-fun tp!281507 () Bool)

(assert (=> b!895834 (= e!586439 (and tp!281505 tp!281507))))

(declare-fun b!895831 () Bool)

(assert (=> b!895831 (= e!586439 tp_is_empty!4317)))

(declare-fun b!895833 () Bool)

(declare-fun tp!281503 () Bool)

(assert (=> b!895833 (= e!586439 tp!281503)))

(assert (= (and b!895513 ((_ is ElementMatch!2337) (reg!2666 r!15766))) b!895831))

(assert (= (and b!895513 ((_ is Concat!4170) (reg!2666 r!15766))) b!895832))

(assert (= (and b!895513 ((_ is Star!2337) (reg!2666 r!15766))) b!895833))

(assert (= (and b!895513 ((_ is Union!2337) (reg!2666 r!15766))) b!895834))

(declare-fun b!895839 () Bool)

(declare-fun e!586442 () Bool)

(declare-fun tp!281510 () Bool)

(assert (=> b!895839 (= e!586442 (and tp_is_empty!4317 tp!281510))))

(assert (=> b!895519 (= tp!281489 e!586442)))

(assert (= (and b!895519 ((_ is Cons!9551) (t!100613 s!10566))) b!895839))

(declare-fun b!895841 () Bool)

(declare-fun e!586443 () Bool)

(declare-fun tp!281514 () Bool)

(declare-fun tp!281512 () Bool)

(assert (=> b!895841 (= e!586443 (and tp!281514 tp!281512))))

(assert (=> b!895514 (= tp!281491 e!586443)))

(declare-fun b!895843 () Bool)

(declare-fun tp!281513 () Bool)

(declare-fun tp!281515 () Bool)

(assert (=> b!895843 (= e!586443 (and tp!281513 tp!281515))))

(declare-fun b!895840 () Bool)

(assert (=> b!895840 (= e!586443 tp_is_empty!4317)))

(declare-fun b!895842 () Bool)

(declare-fun tp!281511 () Bool)

(assert (=> b!895842 (= e!586443 tp!281511)))

(assert (= (and b!895514 ((_ is ElementMatch!2337) (regOne!5187 r!15766))) b!895840))

(assert (= (and b!895514 ((_ is Concat!4170) (regOne!5187 r!15766))) b!895841))

(assert (= (and b!895514 ((_ is Star!2337) (regOne!5187 r!15766))) b!895842))

(assert (= (and b!895514 ((_ is Union!2337) (regOne!5187 r!15766))) b!895843))

(declare-fun b!895845 () Bool)

(declare-fun e!586444 () Bool)

(declare-fun tp!281519 () Bool)

(declare-fun tp!281517 () Bool)

(assert (=> b!895845 (= e!586444 (and tp!281519 tp!281517))))

(assert (=> b!895514 (= tp!281490 e!586444)))

(declare-fun b!895847 () Bool)

(declare-fun tp!281518 () Bool)

(declare-fun tp!281520 () Bool)

(assert (=> b!895847 (= e!586444 (and tp!281518 tp!281520))))

(declare-fun b!895844 () Bool)

(assert (=> b!895844 (= e!586444 tp_is_empty!4317)))

(declare-fun b!895846 () Bool)

(declare-fun tp!281516 () Bool)

(assert (=> b!895846 (= e!586444 tp!281516)))

(assert (= (and b!895514 ((_ is ElementMatch!2337) (regTwo!5187 r!15766))) b!895844))

(assert (= (and b!895514 ((_ is Concat!4170) (regTwo!5187 r!15766))) b!895845))

(assert (= (and b!895514 ((_ is Star!2337) (regTwo!5187 r!15766))) b!895846))

(assert (= (and b!895514 ((_ is Union!2337) (regTwo!5187 r!15766))) b!895847))

(declare-fun b!895849 () Bool)

(declare-fun e!586445 () Bool)

(declare-fun tp!281524 () Bool)

(declare-fun tp!281522 () Bool)

(assert (=> b!895849 (= e!586445 (and tp!281524 tp!281522))))

(assert (=> b!895516 (= tp!281488 e!586445)))

(declare-fun b!895851 () Bool)

(declare-fun tp!281523 () Bool)

(declare-fun tp!281525 () Bool)

(assert (=> b!895851 (= e!586445 (and tp!281523 tp!281525))))

(declare-fun b!895848 () Bool)

(assert (=> b!895848 (= e!586445 tp_is_empty!4317)))

(declare-fun b!895850 () Bool)

(declare-fun tp!281521 () Bool)

(assert (=> b!895850 (= e!586445 tp!281521)))

(assert (= (and b!895516 ((_ is ElementMatch!2337) (regOne!5186 r!15766))) b!895848))

(assert (= (and b!895516 ((_ is Concat!4170) (regOne!5186 r!15766))) b!895849))

(assert (= (and b!895516 ((_ is Star!2337) (regOne!5186 r!15766))) b!895850))

(assert (= (and b!895516 ((_ is Union!2337) (regOne!5186 r!15766))) b!895851))

(declare-fun b!895855 () Bool)

(declare-fun e!586446 () Bool)

(declare-fun tp!281529 () Bool)

(declare-fun tp!281527 () Bool)

(assert (=> b!895855 (= e!586446 (and tp!281529 tp!281527))))

(assert (=> b!895516 (= tp!281487 e!586446)))

(declare-fun b!895858 () Bool)

(declare-fun tp!281528 () Bool)

(declare-fun tp!281530 () Bool)

(assert (=> b!895858 (= e!586446 (and tp!281528 tp!281530))))

(declare-fun b!895854 () Bool)

(assert (=> b!895854 (= e!586446 tp_is_empty!4317)))

(declare-fun b!895857 () Bool)

(declare-fun tp!281526 () Bool)

(assert (=> b!895857 (= e!586446 tp!281526)))

(assert (= (and b!895516 ((_ is ElementMatch!2337) (regTwo!5186 r!15766))) b!895854))

(assert (= (and b!895516 ((_ is Concat!4170) (regTwo!5186 r!15766))) b!895855))

(assert (= (and b!895516 ((_ is Star!2337) (regTwo!5186 r!15766))) b!895857))

(assert (= (and b!895516 ((_ is Union!2337) (regTwo!5186 r!15766))) b!895858))

(check-sat (not b!895814) (not b!895613) (not b!895849) (not d!277762) (not d!277754) (not d!277764) (not b!895767) (not b!895845) (not b!895841) (not b!895839) (not b!895816) (not b!895843) (not b!895616) tp_is_empty!4317 (not d!277790) (not b!895857) (not b!895858) (not b!895618) (not bm!53223) (not d!277760) (not b!895832) (not b!895833) (not bm!53228) (not b!895850) (not b!895851) (not b!895842) (not b!895708) (not b!895769) (not b!895815) (not bm!53237) (not bm!53236) (not b!895834) (not b!895619) (not b!895820) (not b!895847) (not b!895807) (not b!895699) (not b!895615) (not bm!53240) (not b!895612) (not d!277750) (not d!277758) (not b!895846) (not b!895855) (not bm!53225) (not bm!53226) (not d!277794) (not b!895808))
(check-sat)

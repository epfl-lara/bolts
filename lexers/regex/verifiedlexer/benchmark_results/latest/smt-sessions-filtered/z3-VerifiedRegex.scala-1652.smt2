; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83642 () Bool)

(assert start!83642)

(declare-fun b!935886 () Bool)

(assert (=> b!935886 true))

(assert (=> b!935886 true))

(assert (=> b!935886 true))

(declare-fun lambda!31095 () Int)

(declare-fun lambda!31094 () Int)

(assert (=> b!935886 (not (= lambda!31095 lambda!31094))))

(assert (=> b!935886 true))

(assert (=> b!935886 true))

(assert (=> b!935886 true))

(declare-fun bs!237923 () Bool)

(declare-fun b!935887 () Bool)

(assert (= bs!237923 (and b!935887 b!935886)))

(declare-datatypes ((C!5696 0))(
  ( (C!5697 (val!3096 Int)) )
))
(declare-datatypes ((Regex!2563 0))(
  ( (ElementMatch!2563 (c!152202 C!5696)) (Concat!4396 (regOne!5638 Regex!2563) (regTwo!5638 Regex!2563)) (EmptyExpr!2563) (Star!2563 (reg!2892 Regex!2563)) (EmptyLang!2563) (Union!2563 (regOne!5639 Regex!2563) (regTwo!5639 Regex!2563)) )
))
(declare-fun r!15766 () Regex!2563)

(declare-fun lt!341285 () Regex!2563)

(declare-fun lambda!31096 () Int)

(declare-fun lt!341288 () Regex!2563)

(declare-fun lt!341289 () Regex!2563)

(assert (=> bs!237923 (= (and (= lt!341285 (reg!2892 r!15766)) (= lt!341289 lt!341288)) (= lambda!31096 lambda!31094))))

(assert (=> bs!237923 (not (= lambda!31096 lambda!31095))))

(assert (=> b!935887 true))

(assert (=> b!935887 true))

(assert (=> b!935887 true))

(declare-fun e!607744 () Bool)

(declare-fun e!607743 () Bool)

(assert (=> b!935886 (= e!607744 e!607743)))

(declare-fun res!424972 () Bool)

(assert (=> b!935886 (=> res!424972 e!607743)))

(declare-datatypes ((List!9793 0))(
  ( (Nil!9777) (Cons!9777 (h!15178 C!5696) (t!100839 List!9793)) )
))
(declare-fun s!10566 () List!9793)

(declare-fun matchR!1101 (Regex!2563 List!9793) Bool)

(assert (=> b!935886 (= res!424972 (not (matchR!1101 lt!341289 s!10566)))))

(assert (=> b!935886 (= lt!341289 (Star!2563 lt!341285))))

(declare-fun removeUselessConcat!232 (Regex!2563) Regex!2563)

(assert (=> b!935886 (= lt!341285 (removeUselessConcat!232 (reg!2892 r!15766)))))

(declare-fun Exists!314 (Int) Bool)

(assert (=> b!935886 (= (Exists!314 lambda!31094) (Exists!314 lambda!31095))))

(declare-datatypes ((Unit!14745 0))(
  ( (Unit!14746) )
))
(declare-fun lt!341286 () Unit!14745)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!58 (Regex!2563 List!9793) Unit!14745)

(assert (=> b!935886 (= lt!341286 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!58 (reg!2892 r!15766) s!10566))))

(declare-datatypes ((tuple2!11024 0))(
  ( (tuple2!11025 (_1!6338 List!9793) (_2!6338 List!9793)) )
))
(declare-datatypes ((Option!2154 0))(
  ( (None!2153) (Some!2153 (v!19570 tuple2!11024)) )
))
(declare-fun isDefined!1796 (Option!2154) Bool)

(declare-fun findConcatSeparation!260 (Regex!2563 Regex!2563 List!9793 List!9793 List!9793) Option!2154)

(assert (=> b!935886 (= (isDefined!1796 (findConcatSeparation!260 (reg!2892 r!15766) lt!341288 Nil!9777 s!10566 s!10566)) (Exists!314 lambda!31094))))

(declare-fun lt!341287 () Unit!14745)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!260 (Regex!2563 Regex!2563 List!9793) Unit!14745)

(assert (=> b!935886 (= lt!341287 (lemmaFindConcatSeparationEquivalentToExists!260 (reg!2892 r!15766) lt!341288 s!10566))))

(assert (=> b!935886 (= lt!341288 (Star!2563 (reg!2892 r!15766)))))

(declare-fun validRegex!1032 (Regex!2563) Bool)

(assert (=> b!935887 (= e!607743 (validRegex!1032 (reg!2892 r!15766)))))

(assert (=> b!935887 (= (isDefined!1796 (findConcatSeparation!260 lt!341285 lt!341289 Nil!9777 s!10566 s!10566)) (Exists!314 lambda!31096))))

(declare-fun lt!341283 () Unit!14745)

(assert (=> b!935887 (= lt!341283 (lemmaFindConcatSeparationEquivalentToExists!260 lt!341285 lt!341289 s!10566))))

(declare-fun matchRSpec!364 (Regex!2563 List!9793) Bool)

(assert (=> b!935887 (matchRSpec!364 lt!341289 s!10566)))

(declare-fun lt!341290 () Unit!14745)

(declare-fun mainMatchTheorem!364 (Regex!2563 List!9793) Unit!14745)

(assert (=> b!935887 (= lt!341290 (mainMatchTheorem!364 lt!341289 s!10566))))

(declare-fun b!935889 () Bool)

(declare-fun e!607741 () Bool)

(declare-fun tp_is_empty!4769 () Bool)

(declare-fun tp!290268 () Bool)

(assert (=> b!935889 (= e!607741 (and tp_is_empty!4769 tp!290268))))

(declare-fun b!935890 () Bool)

(declare-fun e!607742 () Bool)

(declare-fun tp!290269 () Bool)

(declare-fun tp!290271 () Bool)

(assert (=> b!935890 (= e!607742 (and tp!290269 tp!290271))))

(declare-fun b!935891 () Bool)

(declare-fun tp!290270 () Bool)

(declare-fun tp!290267 () Bool)

(assert (=> b!935891 (= e!607742 (and tp!290270 tp!290267))))

(declare-fun b!935892 () Bool)

(declare-fun tp!290272 () Bool)

(assert (=> b!935892 (= e!607742 tp!290272)))

(declare-fun b!935893 () Bool)

(declare-fun e!607745 () Bool)

(assert (=> b!935893 (= e!607745 (not e!607744))))

(declare-fun res!424971 () Bool)

(assert (=> b!935893 (=> res!424971 e!607744)))

(declare-fun lt!341291 () Bool)

(get-info :version)

(assert (=> b!935893 (= res!424971 (or lt!341291 (and ((_ is Concat!4396) r!15766) ((_ is EmptyExpr!2563) (regOne!5638 r!15766))) (and ((_ is Concat!4396) r!15766) ((_ is EmptyExpr!2563) (regTwo!5638 r!15766))) ((_ is Concat!4396) r!15766) ((_ is Union!2563) r!15766) (not ((_ is Star!2563) r!15766))))))

(assert (=> b!935893 (= lt!341291 (matchRSpec!364 r!15766 s!10566))))

(assert (=> b!935893 (= lt!341291 (matchR!1101 r!15766 s!10566))))

(declare-fun lt!341284 () Unit!14745)

(assert (=> b!935893 (= lt!341284 (mainMatchTheorem!364 r!15766 s!10566))))

(declare-fun b!935888 () Bool)

(assert (=> b!935888 (= e!607742 tp_is_empty!4769)))

(declare-fun res!424970 () Bool)

(assert (=> start!83642 (=> (not res!424970) (not e!607745))))

(assert (=> start!83642 (= res!424970 (validRegex!1032 r!15766))))

(assert (=> start!83642 e!607745))

(assert (=> start!83642 e!607742))

(assert (=> start!83642 e!607741))

(assert (= (and start!83642 res!424970) b!935893))

(assert (= (and b!935893 (not res!424971)) b!935886))

(assert (= (and b!935886 (not res!424972)) b!935887))

(assert (= (and start!83642 ((_ is ElementMatch!2563) r!15766)) b!935888))

(assert (= (and start!83642 ((_ is Concat!4396) r!15766)) b!935890))

(assert (= (and start!83642 ((_ is Star!2563) r!15766)) b!935892))

(assert (= (and start!83642 ((_ is Union!2563) r!15766)) b!935891))

(assert (= (and start!83642 ((_ is Cons!9777) s!10566)) b!935889))

(declare-fun m!1155411 () Bool)

(assert (=> b!935886 m!1155411))

(declare-fun m!1155413 () Bool)

(assert (=> b!935886 m!1155413))

(declare-fun m!1155415 () Bool)

(assert (=> b!935886 m!1155415))

(assert (=> b!935886 m!1155413))

(declare-fun m!1155417 () Bool)

(assert (=> b!935886 m!1155417))

(declare-fun m!1155419 () Bool)

(assert (=> b!935886 m!1155419))

(declare-fun m!1155421 () Bool)

(assert (=> b!935886 m!1155421))

(declare-fun m!1155423 () Bool)

(assert (=> b!935886 m!1155423))

(assert (=> b!935886 m!1155411))

(declare-fun m!1155425 () Bool)

(assert (=> b!935886 m!1155425))

(declare-fun m!1155427 () Bool)

(assert (=> b!935887 m!1155427))

(declare-fun m!1155429 () Bool)

(assert (=> b!935887 m!1155429))

(declare-fun m!1155431 () Bool)

(assert (=> b!935887 m!1155431))

(declare-fun m!1155433 () Bool)

(assert (=> b!935887 m!1155433))

(declare-fun m!1155435 () Bool)

(assert (=> b!935887 m!1155435))

(declare-fun m!1155437 () Bool)

(assert (=> b!935887 m!1155437))

(declare-fun m!1155439 () Bool)

(assert (=> b!935887 m!1155439))

(assert (=> b!935887 m!1155427))

(declare-fun m!1155441 () Bool)

(assert (=> b!935893 m!1155441))

(declare-fun m!1155443 () Bool)

(assert (=> b!935893 m!1155443))

(declare-fun m!1155445 () Bool)

(assert (=> b!935893 m!1155445))

(declare-fun m!1155447 () Bool)

(assert (=> start!83642 m!1155447))

(check-sat (not b!935889) (not start!83642) (not b!935886) tp_is_empty!4769 (not b!935891) (not b!935893) (not b!935892) (not b!935887) (not b!935890))
(check-sat)
(get-model)

(declare-fun d!281853 () Bool)

(declare-fun isEmpty!6015 (Option!2154) Bool)

(assert (=> d!281853 (= (isDefined!1796 (findConcatSeparation!260 (reg!2892 r!15766) lt!341288 Nil!9777 s!10566 s!10566)) (not (isEmpty!6015 (findConcatSeparation!260 (reg!2892 r!15766) lt!341288 Nil!9777 s!10566 s!10566))))))

(declare-fun bs!237927 () Bool)

(assert (= bs!237927 d!281853))

(assert (=> bs!237927 m!1155411))

(declare-fun m!1155457 () Bool)

(assert (=> bs!237927 m!1155457))

(assert (=> b!935886 d!281853))

(declare-fun bs!237933 () Bool)

(declare-fun d!281855 () Bool)

(assert (= bs!237933 (and d!281855 b!935886)))

(declare-fun lambda!31105 () Int)

(assert (=> bs!237933 (= lambda!31105 lambda!31094)))

(assert (=> bs!237933 (not (= lambda!31105 lambda!31095))))

(declare-fun bs!237934 () Bool)

(assert (= bs!237934 (and d!281855 b!935887)))

(assert (=> bs!237934 (= (and (= (reg!2892 r!15766) lt!341285) (= lt!341288 lt!341289)) (= lambda!31105 lambda!31096))))

(assert (=> d!281855 true))

(assert (=> d!281855 true))

(assert (=> d!281855 true))

(assert (=> d!281855 (= (isDefined!1796 (findConcatSeparation!260 (reg!2892 r!15766) lt!341288 Nil!9777 s!10566 s!10566)) (Exists!314 lambda!31105))))

(declare-fun lt!341297 () Unit!14745)

(declare-fun choose!5769 (Regex!2563 Regex!2563 List!9793) Unit!14745)

(assert (=> d!281855 (= lt!341297 (choose!5769 (reg!2892 r!15766) lt!341288 s!10566))))

(assert (=> d!281855 (validRegex!1032 (reg!2892 r!15766))))

(assert (=> d!281855 (= (lemmaFindConcatSeparationEquivalentToExists!260 (reg!2892 r!15766) lt!341288 s!10566) lt!341297)))

(declare-fun bs!237935 () Bool)

(assert (= bs!237935 d!281855))

(assert (=> bs!237935 m!1155411))

(assert (=> bs!237935 m!1155425))

(declare-fun m!1155467 () Bool)

(assert (=> bs!237935 m!1155467))

(assert (=> bs!237935 m!1155411))

(assert (=> bs!237935 m!1155433))

(declare-fun m!1155469 () Bool)

(assert (=> bs!237935 m!1155469))

(assert (=> b!935886 d!281855))

(declare-fun b!936016 () Bool)

(declare-fun e!607817 () Regex!2563)

(declare-fun call!58032 () Regex!2563)

(declare-fun call!58034 () Regex!2563)

(assert (=> b!936016 (= e!607817 (Concat!4396 call!58032 call!58034))))

(declare-fun bm!58025 () Bool)

(declare-fun call!58030 () Regex!2563)

(assert (=> bm!58025 (= call!58030 call!58034)))

(declare-fun b!936017 () Bool)

(declare-fun e!607821 () Regex!2563)

(assert (=> b!936017 (= e!607821 (Star!2563 call!58030))))

(declare-fun b!936018 () Bool)

(declare-fun e!607818 () Regex!2563)

(assert (=> b!936018 (= e!607818 (Union!2563 call!58032 call!58030))))

(declare-fun b!936019 () Bool)

(declare-fun c!152235 () Bool)

(assert (=> b!936019 (= c!152235 ((_ is Star!2563) (reg!2892 r!15766)))))

(assert (=> b!936019 (= e!607818 e!607821)))

(declare-fun bm!58026 () Bool)

(declare-fun call!58031 () Regex!2563)

(assert (=> bm!58026 (= call!58032 call!58031)))

(declare-fun c!152238 () Bool)

(declare-fun c!152239 () Bool)

(declare-fun bm!58027 () Bool)

(assert (=> bm!58027 (= call!58031 (removeUselessConcat!232 (ite (or c!152239 c!152238) (regOne!5638 (reg!2892 r!15766)) (regOne!5639 (reg!2892 r!15766)))))))

(declare-fun c!152236 () Bool)

(declare-fun c!152237 () Bool)

(declare-fun bm!58028 () Bool)

(declare-fun call!58033 () Regex!2563)

(assert (=> bm!58028 (= call!58033 (removeUselessConcat!232 (ite (or c!152236 c!152238) (regTwo!5638 (reg!2892 r!15766)) (ite c!152237 (regTwo!5639 (reg!2892 r!15766)) (reg!2892 (reg!2892 r!15766))))))))

(declare-fun b!936021 () Bool)

(declare-fun e!607819 () Regex!2563)

(assert (=> b!936021 (= e!607819 call!58033)))

(declare-fun b!936022 () Bool)

(assert (=> b!936022 (= e!607817 e!607818)))

(assert (=> b!936022 (= c!152237 ((_ is Union!2563) (reg!2892 r!15766)))))

(declare-fun b!936023 () Bool)

(assert (=> b!936023 (= e!607821 (reg!2892 r!15766))))

(declare-fun bm!58029 () Bool)

(assert (=> bm!58029 (= call!58034 call!58033)))

(declare-fun b!936024 () Bool)

(assert (=> b!936024 (= c!152238 ((_ is Concat!4396) (reg!2892 r!15766)))))

(declare-fun e!607820 () Regex!2563)

(assert (=> b!936024 (= e!607820 e!607817)))

(declare-fun d!281859 () Bool)

(declare-fun e!607816 () Bool)

(assert (=> d!281859 e!607816))

(declare-fun res!425027 () Bool)

(assert (=> d!281859 (=> (not res!425027) (not e!607816))))

(declare-fun lt!341312 () Regex!2563)

(assert (=> d!281859 (= res!425027 (validRegex!1032 lt!341312))))

(assert (=> d!281859 (= lt!341312 e!607819)))

(assert (=> d!281859 (= c!152236 (and ((_ is Concat!4396) (reg!2892 r!15766)) ((_ is EmptyExpr!2563) (regOne!5638 (reg!2892 r!15766)))))))

(assert (=> d!281859 (validRegex!1032 (reg!2892 r!15766))))

(assert (=> d!281859 (= (removeUselessConcat!232 (reg!2892 r!15766)) lt!341312)))

(declare-fun b!936020 () Bool)

(assert (=> b!936020 (= e!607819 e!607820)))

(assert (=> b!936020 (= c!152239 (and ((_ is Concat!4396) (reg!2892 r!15766)) ((_ is EmptyExpr!2563) (regTwo!5638 (reg!2892 r!15766)))))))

(declare-fun b!936025 () Bool)

(declare-fun nullable!737 (Regex!2563) Bool)

(assert (=> b!936025 (= e!607816 (= (nullable!737 lt!341312) (nullable!737 (reg!2892 r!15766))))))

(declare-fun b!936026 () Bool)

(assert (=> b!936026 (= e!607820 call!58031)))

(assert (= (and d!281859 c!152236) b!936021))

(assert (= (and d!281859 (not c!152236)) b!936020))

(assert (= (and b!936020 c!152239) b!936026))

(assert (= (and b!936020 (not c!152239)) b!936024))

(assert (= (and b!936024 c!152238) b!936016))

(assert (= (and b!936024 (not c!152238)) b!936022))

(assert (= (and b!936022 c!152237) b!936018))

(assert (= (and b!936022 (not c!152237)) b!936019))

(assert (= (and b!936019 c!152235) b!936017))

(assert (= (and b!936019 (not c!152235)) b!936023))

(assert (= (or b!936018 b!936017) bm!58025))

(assert (= (or b!936016 bm!58025) bm!58029))

(assert (= (or b!936016 b!936018) bm!58026))

(assert (= (or b!936026 bm!58026) bm!58027))

(assert (= (or b!936021 bm!58029) bm!58028))

(assert (= (and d!281859 res!425027) b!936025))

(declare-fun m!1155497 () Bool)

(assert (=> bm!58027 m!1155497))

(declare-fun m!1155499 () Bool)

(assert (=> bm!58028 m!1155499))

(declare-fun m!1155501 () Bool)

(assert (=> d!281859 m!1155501))

(assert (=> d!281859 m!1155433))

(declare-fun m!1155503 () Bool)

(assert (=> b!936025 m!1155503))

(declare-fun m!1155505 () Bool)

(assert (=> b!936025 m!1155505))

(assert (=> b!935886 d!281859))

(declare-fun d!281865 () Bool)

(declare-fun choose!5770 (Int) Bool)

(assert (=> d!281865 (= (Exists!314 lambda!31095) (choose!5770 lambda!31095))))

(declare-fun bs!237942 () Bool)

(assert (= bs!237942 d!281865))

(declare-fun m!1155513 () Bool)

(assert (=> bs!237942 m!1155513))

(assert (=> b!935886 d!281865))

(declare-fun d!281871 () Bool)

(assert (=> d!281871 (= (Exists!314 lambda!31094) (choose!5770 lambda!31094))))

(declare-fun bs!237943 () Bool)

(assert (= bs!237943 d!281871))

(declare-fun m!1155517 () Bool)

(assert (=> bs!237943 m!1155517))

(assert (=> b!935886 d!281871))

(declare-fun b!936115 () Bool)

(declare-fun e!607872 () Option!2154)

(declare-fun e!607873 () Option!2154)

(assert (=> b!936115 (= e!607872 e!607873)))

(declare-fun c!152257 () Bool)

(assert (=> b!936115 (= c!152257 ((_ is Nil!9777) s!10566))))

(declare-fun b!936116 () Bool)

(declare-fun e!607869 () Bool)

(declare-fun lt!341329 () Option!2154)

(assert (=> b!936116 (= e!607869 (not (isDefined!1796 lt!341329)))))

(declare-fun b!936117 () Bool)

(assert (=> b!936117 (= e!607872 (Some!2153 (tuple2!11025 Nil!9777 s!10566)))))

(declare-fun b!936118 () Bool)

(declare-fun lt!341331 () Unit!14745)

(declare-fun lt!341330 () Unit!14745)

(assert (=> b!936118 (= lt!341331 lt!341330)))

(declare-fun ++!2589 (List!9793 List!9793) List!9793)

(assert (=> b!936118 (= (++!2589 (++!2589 Nil!9777 (Cons!9777 (h!15178 s!10566) Nil!9777)) (t!100839 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!202 (List!9793 C!5696 List!9793 List!9793) Unit!14745)

(assert (=> b!936118 (= lt!341330 (lemmaMoveElementToOtherListKeepsConcatEq!202 Nil!9777 (h!15178 s!10566) (t!100839 s!10566) s!10566))))

(assert (=> b!936118 (= e!607873 (findConcatSeparation!260 (reg!2892 r!15766) lt!341288 (++!2589 Nil!9777 (Cons!9777 (h!15178 s!10566) Nil!9777)) (t!100839 s!10566) s!10566))))

(declare-fun b!936119 () Bool)

(declare-fun res!425085 () Bool)

(declare-fun e!607870 () Bool)

(assert (=> b!936119 (=> (not res!425085) (not e!607870))))

(declare-fun get!3230 (Option!2154) tuple2!11024)

(assert (=> b!936119 (= res!425085 (matchR!1101 (reg!2892 r!15766) (_1!6338 (get!3230 lt!341329))))))

(declare-fun b!936121 () Bool)

(declare-fun e!607871 () Bool)

(assert (=> b!936121 (= e!607871 (matchR!1101 lt!341288 s!10566))))

(declare-fun b!936120 () Bool)

(declare-fun res!425082 () Bool)

(assert (=> b!936120 (=> (not res!425082) (not e!607870))))

(assert (=> b!936120 (= res!425082 (matchR!1101 lt!341288 (_2!6338 (get!3230 lt!341329))))))

(declare-fun d!281873 () Bool)

(assert (=> d!281873 e!607869))

(declare-fun res!425084 () Bool)

(assert (=> d!281873 (=> res!425084 e!607869)))

(assert (=> d!281873 (= res!425084 e!607870)))

(declare-fun res!425083 () Bool)

(assert (=> d!281873 (=> (not res!425083) (not e!607870))))

(assert (=> d!281873 (= res!425083 (isDefined!1796 lt!341329))))

(assert (=> d!281873 (= lt!341329 e!607872)))

(declare-fun c!152258 () Bool)

(assert (=> d!281873 (= c!152258 e!607871)))

(declare-fun res!425086 () Bool)

(assert (=> d!281873 (=> (not res!425086) (not e!607871))))

(assert (=> d!281873 (= res!425086 (matchR!1101 (reg!2892 r!15766) Nil!9777))))

(assert (=> d!281873 (validRegex!1032 (reg!2892 r!15766))))

(assert (=> d!281873 (= (findConcatSeparation!260 (reg!2892 r!15766) lt!341288 Nil!9777 s!10566 s!10566) lt!341329)))

(declare-fun b!936122 () Bool)

(assert (=> b!936122 (= e!607870 (= (++!2589 (_1!6338 (get!3230 lt!341329)) (_2!6338 (get!3230 lt!341329))) s!10566))))

(declare-fun b!936123 () Bool)

(assert (=> b!936123 (= e!607873 None!2153)))

(assert (= (and d!281873 res!425086) b!936121))

(assert (= (and d!281873 c!152258) b!936117))

(assert (= (and d!281873 (not c!152258)) b!936115))

(assert (= (and b!936115 c!152257) b!936123))

(assert (= (and b!936115 (not c!152257)) b!936118))

(assert (= (and d!281873 res!425083) b!936119))

(assert (= (and b!936119 res!425085) b!936120))

(assert (= (and b!936120 res!425082) b!936122))

(assert (= (and d!281873 (not res!425084)) b!936116))

(declare-fun m!1155559 () Bool)

(assert (=> b!936119 m!1155559))

(declare-fun m!1155561 () Bool)

(assert (=> b!936119 m!1155561))

(assert (=> b!936122 m!1155559))

(declare-fun m!1155563 () Bool)

(assert (=> b!936122 m!1155563))

(declare-fun m!1155565 () Bool)

(assert (=> b!936118 m!1155565))

(assert (=> b!936118 m!1155565))

(declare-fun m!1155567 () Bool)

(assert (=> b!936118 m!1155567))

(declare-fun m!1155569 () Bool)

(assert (=> b!936118 m!1155569))

(assert (=> b!936118 m!1155565))

(declare-fun m!1155571 () Bool)

(assert (=> b!936118 m!1155571))

(declare-fun m!1155573 () Bool)

(assert (=> b!936121 m!1155573))

(declare-fun m!1155575 () Bool)

(assert (=> d!281873 m!1155575))

(declare-fun m!1155577 () Bool)

(assert (=> d!281873 m!1155577))

(assert (=> d!281873 m!1155433))

(assert (=> b!936120 m!1155559))

(declare-fun m!1155579 () Bool)

(assert (=> b!936120 m!1155579))

(assert (=> b!936116 m!1155575))

(assert (=> b!935886 d!281873))

(declare-fun d!281885 () Bool)

(declare-fun e!607937 () Bool)

(assert (=> d!281885 e!607937))

(declare-fun c!152289 () Bool)

(assert (=> d!281885 (= c!152289 ((_ is EmptyExpr!2563) lt!341289))))

(declare-fun lt!341339 () Bool)

(declare-fun e!607939 () Bool)

(assert (=> d!281885 (= lt!341339 e!607939)))

(declare-fun c!152291 () Bool)

(declare-fun isEmpty!6016 (List!9793) Bool)

(assert (=> d!281885 (= c!152291 (isEmpty!6016 s!10566))))

(assert (=> d!281885 (validRegex!1032 lt!341289)))

(assert (=> d!281885 (= (matchR!1101 lt!341289 s!10566) lt!341339)))

(declare-fun b!936254 () Bool)

(declare-fun res!425127 () Bool)

(declare-fun e!607941 () Bool)

(assert (=> b!936254 (=> (not res!425127) (not e!607941))))

(declare-fun tail!1261 (List!9793) List!9793)

(assert (=> b!936254 (= res!425127 (isEmpty!6016 (tail!1261 s!10566)))))

(declare-fun b!936255 () Bool)

(declare-fun head!1699 (List!9793) C!5696)

(assert (=> b!936255 (= e!607941 (= (head!1699 s!10566) (c!152202 lt!341289)))))

(declare-fun b!936256 () Bool)

(assert (=> b!936256 (= e!607939 (nullable!737 lt!341289))))

(declare-fun b!936257 () Bool)

(declare-fun e!607943 () Bool)

(declare-fun e!607942 () Bool)

(assert (=> b!936257 (= e!607943 e!607942)))

(declare-fun res!425129 () Bool)

(assert (=> b!936257 (=> res!425129 e!607942)))

(declare-fun call!58064 () Bool)

(assert (=> b!936257 (= res!425129 call!58064)))

(declare-fun b!936258 () Bool)

(declare-fun res!425124 () Bool)

(declare-fun e!607938 () Bool)

(assert (=> b!936258 (=> res!425124 e!607938)))

(assert (=> b!936258 (= res!425124 e!607941)))

(declare-fun res!425126 () Bool)

(assert (=> b!936258 (=> (not res!425126) (not e!607941))))

(assert (=> b!936258 (= res!425126 lt!341339)))

(declare-fun b!936259 () Bool)

(declare-fun res!425123 () Bool)

(assert (=> b!936259 (=> res!425123 e!607938)))

(assert (=> b!936259 (= res!425123 (not ((_ is ElementMatch!2563) lt!341289)))))

(declare-fun e!607940 () Bool)

(assert (=> b!936259 (= e!607940 e!607938)))

(declare-fun bm!58059 () Bool)

(assert (=> bm!58059 (= call!58064 (isEmpty!6016 s!10566))))

(declare-fun b!936260 () Bool)

(assert (=> b!936260 (= e!607937 e!607940)))

(declare-fun c!152290 () Bool)

(assert (=> b!936260 (= c!152290 ((_ is EmptyLang!2563) lt!341289))))

(declare-fun b!936261 () Bool)

(assert (=> b!936261 (= e!607942 (not (= (head!1699 s!10566) (c!152202 lt!341289))))))

(declare-fun b!936262 () Bool)

(declare-fun res!425122 () Bool)

(assert (=> b!936262 (=> res!425122 e!607942)))

(assert (=> b!936262 (= res!425122 (not (isEmpty!6016 (tail!1261 s!10566))))))

(declare-fun b!936263 () Bool)

(assert (=> b!936263 (= e!607938 e!607943)))

(declare-fun res!425128 () Bool)

(assert (=> b!936263 (=> (not res!425128) (not e!607943))))

(assert (=> b!936263 (= res!425128 (not lt!341339))))

(declare-fun b!936264 () Bool)

(declare-fun derivativeStep!546 (Regex!2563 C!5696) Regex!2563)

(assert (=> b!936264 (= e!607939 (matchR!1101 (derivativeStep!546 lt!341289 (head!1699 s!10566)) (tail!1261 s!10566)))))

(declare-fun b!936265 () Bool)

(assert (=> b!936265 (= e!607937 (= lt!341339 call!58064))))

(declare-fun b!936266 () Bool)

(declare-fun res!425125 () Bool)

(assert (=> b!936266 (=> (not res!425125) (not e!607941))))

(assert (=> b!936266 (= res!425125 (not call!58064))))

(declare-fun b!936267 () Bool)

(assert (=> b!936267 (= e!607940 (not lt!341339))))

(assert (= (and d!281885 c!152291) b!936256))

(assert (= (and d!281885 (not c!152291)) b!936264))

(assert (= (and d!281885 c!152289) b!936265))

(assert (= (and d!281885 (not c!152289)) b!936260))

(assert (= (and b!936260 c!152290) b!936267))

(assert (= (and b!936260 (not c!152290)) b!936259))

(assert (= (and b!936259 (not res!425123)) b!936258))

(assert (= (and b!936258 res!425126) b!936266))

(assert (= (and b!936266 res!425125) b!936254))

(assert (= (and b!936254 res!425127) b!936255))

(assert (= (and b!936258 (not res!425124)) b!936263))

(assert (= (and b!936263 res!425128) b!936257))

(assert (= (and b!936257 (not res!425129)) b!936262))

(assert (= (and b!936262 (not res!425122)) b!936261))

(assert (= (or b!936265 b!936257 b!936266) bm!58059))

(declare-fun m!1155611 () Bool)

(assert (=> d!281885 m!1155611))

(declare-fun m!1155613 () Bool)

(assert (=> d!281885 m!1155613))

(declare-fun m!1155615 () Bool)

(assert (=> b!936256 m!1155615))

(declare-fun m!1155617 () Bool)

(assert (=> b!936261 m!1155617))

(assert (=> bm!58059 m!1155611))

(declare-fun m!1155619 () Bool)

(assert (=> b!936262 m!1155619))

(assert (=> b!936262 m!1155619))

(declare-fun m!1155621 () Bool)

(assert (=> b!936262 m!1155621))

(assert (=> b!936255 m!1155617))

(assert (=> b!936264 m!1155617))

(assert (=> b!936264 m!1155617))

(declare-fun m!1155623 () Bool)

(assert (=> b!936264 m!1155623))

(assert (=> b!936264 m!1155619))

(assert (=> b!936264 m!1155623))

(assert (=> b!936264 m!1155619))

(declare-fun m!1155625 () Bool)

(assert (=> b!936264 m!1155625))

(assert (=> b!936254 m!1155619))

(assert (=> b!936254 m!1155619))

(assert (=> b!936254 m!1155621))

(assert (=> b!935886 d!281885))

(declare-fun bs!237975 () Bool)

(declare-fun d!281897 () Bool)

(assert (= bs!237975 (and d!281897 b!935886)))

(declare-fun lambda!31122 () Int)

(assert (=> bs!237975 (= (= (Star!2563 (reg!2892 r!15766)) lt!341288) (= lambda!31122 lambda!31094))))

(assert (=> bs!237975 (not (= lambda!31122 lambda!31095))))

(declare-fun bs!237976 () Bool)

(assert (= bs!237976 (and d!281897 b!935887)))

(assert (=> bs!237976 (= (and (= (reg!2892 r!15766) lt!341285) (= (Star!2563 (reg!2892 r!15766)) lt!341289)) (= lambda!31122 lambda!31096))))

(declare-fun bs!237977 () Bool)

(assert (= bs!237977 (and d!281897 d!281855)))

(assert (=> bs!237977 (= (= (Star!2563 (reg!2892 r!15766)) lt!341288) (= lambda!31122 lambda!31105))))

(assert (=> d!281897 true))

(assert (=> d!281897 true))

(declare-fun lambda!31123 () Int)

(assert (=> bs!237975 (not (= lambda!31123 lambda!31094))))

(assert (=> bs!237975 (= (= (Star!2563 (reg!2892 r!15766)) lt!341288) (= lambda!31123 lambda!31095))))

(declare-fun bs!237978 () Bool)

(assert (= bs!237978 d!281897))

(assert (=> bs!237978 (not (= lambda!31123 lambda!31122))))

(assert (=> bs!237976 (not (= lambda!31123 lambda!31096))))

(assert (=> bs!237977 (not (= lambda!31123 lambda!31105))))

(assert (=> d!281897 true))

(assert (=> d!281897 true))

(assert (=> d!281897 (= (Exists!314 lambda!31122) (Exists!314 lambda!31123))))

(declare-fun lt!341342 () Unit!14745)

(declare-fun choose!5771 (Regex!2563 List!9793) Unit!14745)

(assert (=> d!281897 (= lt!341342 (choose!5771 (reg!2892 r!15766) s!10566))))

(assert (=> d!281897 (validRegex!1032 (reg!2892 r!15766))))

(assert (=> d!281897 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!58 (reg!2892 r!15766) s!10566) lt!341342)))

(declare-fun m!1155627 () Bool)

(assert (=> bs!237978 m!1155627))

(declare-fun m!1155629 () Bool)

(assert (=> bs!237978 m!1155629))

(declare-fun m!1155631 () Bool)

(assert (=> bs!237978 m!1155631))

(assert (=> bs!237978 m!1155433))

(assert (=> b!935886 d!281897))

(declare-fun bs!237979 () Bool)

(declare-fun b!936314 () Bool)

(assert (= bs!237979 (and b!936314 b!935886)))

(declare-fun lambda!31128 () Int)

(assert (=> bs!237979 (not (= lambda!31128 lambda!31094))))

(assert (=> bs!237979 (= (= r!15766 lt!341288) (= lambda!31128 lambda!31095))))

(declare-fun bs!237980 () Bool)

(assert (= bs!237980 (and b!936314 d!281897)))

(assert (=> bs!237980 (= (= r!15766 (Star!2563 (reg!2892 r!15766))) (= lambda!31128 lambda!31123))))

(assert (=> bs!237980 (not (= lambda!31128 lambda!31122))))

(declare-fun bs!237981 () Bool)

(assert (= bs!237981 (and b!936314 b!935887)))

(assert (=> bs!237981 (not (= lambda!31128 lambda!31096))))

(declare-fun bs!237982 () Bool)

(assert (= bs!237982 (and b!936314 d!281855)))

(assert (=> bs!237982 (not (= lambda!31128 lambda!31105))))

(assert (=> b!936314 true))

(assert (=> b!936314 true))

(declare-fun bs!237983 () Bool)

(declare-fun b!936318 () Bool)

(assert (= bs!237983 (and b!936318 b!935886)))

(declare-fun lambda!31129 () Int)

(assert (=> bs!237983 (not (= lambda!31129 lambda!31095))))

(declare-fun bs!237984 () Bool)

(assert (= bs!237984 (and b!936318 d!281897)))

(assert (=> bs!237984 (not (= lambda!31129 lambda!31123))))

(assert (=> bs!237984 (not (= lambda!31129 lambda!31122))))

(declare-fun bs!237985 () Bool)

(assert (= bs!237985 (and b!936318 b!935887)))

(assert (=> bs!237985 (not (= lambda!31129 lambda!31096))))

(declare-fun bs!237986 () Bool)

(assert (= bs!237986 (and b!936318 d!281855)))

(assert (=> bs!237986 (not (= lambda!31129 lambda!31105))))

(declare-fun bs!237987 () Bool)

(assert (= bs!237987 (and b!936318 b!936314)))

(assert (=> bs!237987 (not (= lambda!31129 lambda!31128))))

(assert (=> bs!237983 (not (= lambda!31129 lambda!31094))))

(assert (=> b!936318 true))

(assert (=> b!936318 true))

(declare-fun b!936310 () Bool)

(declare-fun e!607967 () Bool)

(assert (=> b!936310 (= e!607967 (= s!10566 (Cons!9777 (c!152202 r!15766) Nil!9777)))))

(declare-fun b!936311 () Bool)

(declare-fun e!607971 () Bool)

(declare-fun e!607966 () Bool)

(assert (=> b!936311 (= e!607971 e!607966)))

(declare-fun res!425156 () Bool)

(assert (=> b!936311 (= res!425156 (not ((_ is EmptyLang!2563) r!15766)))))

(assert (=> b!936311 (=> (not res!425156) (not e!607966))))

(declare-fun b!936312 () Bool)

(declare-fun e!607969 () Bool)

(assert (=> b!936312 (= e!607969 (matchRSpec!364 (regTwo!5639 r!15766) s!10566))))

(declare-fun e!607968 () Bool)

(declare-fun call!58070 () Bool)

(assert (=> b!936314 (= e!607968 call!58070)))

(declare-fun b!936315 () Bool)

(declare-fun c!152301 () Bool)

(assert (=> b!936315 (= c!152301 ((_ is ElementMatch!2563) r!15766))))

(assert (=> b!936315 (= e!607966 e!607967)))

(declare-fun b!936316 () Bool)

(declare-fun c!152303 () Bool)

(assert (=> b!936316 (= c!152303 ((_ is Union!2563) r!15766))))

(declare-fun e!607970 () Bool)

(assert (=> b!936316 (= e!607967 e!607970)))

(declare-fun b!936317 () Bool)

(assert (=> b!936317 (= e!607970 e!607969)))

(declare-fun res!425158 () Bool)

(assert (=> b!936317 (= res!425158 (matchRSpec!364 (regOne!5639 r!15766) s!10566))))

(assert (=> b!936317 (=> res!425158 e!607969)))

(declare-fun e!607972 () Bool)

(assert (=> b!936318 (= e!607972 call!58070)))

(declare-fun bm!58064 () Bool)

(declare-fun call!58069 () Bool)

(assert (=> bm!58064 (= call!58069 (isEmpty!6016 s!10566))))

(declare-fun bm!58065 () Bool)

(declare-fun c!152300 () Bool)

(assert (=> bm!58065 (= call!58070 (Exists!314 (ite c!152300 lambda!31128 lambda!31129)))))

(declare-fun d!281899 () Bool)

(declare-fun c!152302 () Bool)

(assert (=> d!281899 (= c!152302 ((_ is EmptyExpr!2563) r!15766))))

(assert (=> d!281899 (= (matchRSpec!364 r!15766 s!10566) e!607971)))

(declare-fun b!936313 () Bool)

(assert (=> b!936313 (= e!607971 call!58069)))

(declare-fun b!936319 () Bool)

(assert (=> b!936319 (= e!607970 e!607972)))

(assert (=> b!936319 (= c!152300 ((_ is Star!2563) r!15766))))

(declare-fun b!936320 () Bool)

(declare-fun res!425157 () Bool)

(assert (=> b!936320 (=> res!425157 e!607968)))

(assert (=> b!936320 (= res!425157 call!58069)))

(assert (=> b!936320 (= e!607972 e!607968)))

(assert (= (and d!281899 c!152302) b!936313))

(assert (= (and d!281899 (not c!152302)) b!936311))

(assert (= (and b!936311 res!425156) b!936315))

(assert (= (and b!936315 c!152301) b!936310))

(assert (= (and b!936315 (not c!152301)) b!936316))

(assert (= (and b!936316 c!152303) b!936317))

(assert (= (and b!936316 (not c!152303)) b!936319))

(assert (= (and b!936317 (not res!425158)) b!936312))

(assert (= (and b!936319 c!152300) b!936320))

(assert (= (and b!936319 (not c!152300)) b!936318))

(assert (= (and b!936320 (not res!425157)) b!936314))

(assert (= (or b!936314 b!936318) bm!58065))

(assert (= (or b!936313 b!936320) bm!58064))

(declare-fun m!1155633 () Bool)

(assert (=> b!936312 m!1155633))

(declare-fun m!1155635 () Bool)

(assert (=> b!936317 m!1155635))

(assert (=> bm!58064 m!1155611))

(declare-fun m!1155637 () Bool)

(assert (=> bm!58065 m!1155637))

(assert (=> b!935893 d!281899))

(declare-fun d!281901 () Bool)

(declare-fun e!607973 () Bool)

(assert (=> d!281901 e!607973))

(declare-fun c!152304 () Bool)

(assert (=> d!281901 (= c!152304 ((_ is EmptyExpr!2563) r!15766))))

(declare-fun lt!341343 () Bool)

(declare-fun e!607975 () Bool)

(assert (=> d!281901 (= lt!341343 e!607975)))

(declare-fun c!152306 () Bool)

(assert (=> d!281901 (= c!152306 (isEmpty!6016 s!10566))))

(assert (=> d!281901 (validRegex!1032 r!15766)))

(assert (=> d!281901 (= (matchR!1101 r!15766 s!10566) lt!341343)))

(declare-fun b!936321 () Bool)

(declare-fun res!425164 () Bool)

(declare-fun e!607977 () Bool)

(assert (=> b!936321 (=> (not res!425164) (not e!607977))))

(assert (=> b!936321 (= res!425164 (isEmpty!6016 (tail!1261 s!10566)))))

(declare-fun b!936322 () Bool)

(assert (=> b!936322 (= e!607977 (= (head!1699 s!10566) (c!152202 r!15766)))))

(declare-fun b!936323 () Bool)

(assert (=> b!936323 (= e!607975 (nullable!737 r!15766))))

(declare-fun b!936324 () Bool)

(declare-fun e!607979 () Bool)

(declare-fun e!607978 () Bool)

(assert (=> b!936324 (= e!607979 e!607978)))

(declare-fun res!425166 () Bool)

(assert (=> b!936324 (=> res!425166 e!607978)))

(declare-fun call!58071 () Bool)

(assert (=> b!936324 (= res!425166 call!58071)))

(declare-fun b!936325 () Bool)

(declare-fun res!425161 () Bool)

(declare-fun e!607974 () Bool)

(assert (=> b!936325 (=> res!425161 e!607974)))

(assert (=> b!936325 (= res!425161 e!607977)))

(declare-fun res!425163 () Bool)

(assert (=> b!936325 (=> (not res!425163) (not e!607977))))

(assert (=> b!936325 (= res!425163 lt!341343)))

(declare-fun b!936326 () Bool)

(declare-fun res!425160 () Bool)

(assert (=> b!936326 (=> res!425160 e!607974)))

(assert (=> b!936326 (= res!425160 (not ((_ is ElementMatch!2563) r!15766)))))

(declare-fun e!607976 () Bool)

(assert (=> b!936326 (= e!607976 e!607974)))

(declare-fun bm!58066 () Bool)

(assert (=> bm!58066 (= call!58071 (isEmpty!6016 s!10566))))

(declare-fun b!936327 () Bool)

(assert (=> b!936327 (= e!607973 e!607976)))

(declare-fun c!152305 () Bool)

(assert (=> b!936327 (= c!152305 ((_ is EmptyLang!2563) r!15766))))

(declare-fun b!936328 () Bool)

(assert (=> b!936328 (= e!607978 (not (= (head!1699 s!10566) (c!152202 r!15766))))))

(declare-fun b!936329 () Bool)

(declare-fun res!425159 () Bool)

(assert (=> b!936329 (=> res!425159 e!607978)))

(assert (=> b!936329 (= res!425159 (not (isEmpty!6016 (tail!1261 s!10566))))))

(declare-fun b!936330 () Bool)

(assert (=> b!936330 (= e!607974 e!607979)))

(declare-fun res!425165 () Bool)

(assert (=> b!936330 (=> (not res!425165) (not e!607979))))

(assert (=> b!936330 (= res!425165 (not lt!341343))))

(declare-fun b!936331 () Bool)

(assert (=> b!936331 (= e!607975 (matchR!1101 (derivativeStep!546 r!15766 (head!1699 s!10566)) (tail!1261 s!10566)))))

(declare-fun b!936332 () Bool)

(assert (=> b!936332 (= e!607973 (= lt!341343 call!58071))))

(declare-fun b!936333 () Bool)

(declare-fun res!425162 () Bool)

(assert (=> b!936333 (=> (not res!425162) (not e!607977))))

(assert (=> b!936333 (= res!425162 (not call!58071))))

(declare-fun b!936334 () Bool)

(assert (=> b!936334 (= e!607976 (not lt!341343))))

(assert (= (and d!281901 c!152306) b!936323))

(assert (= (and d!281901 (not c!152306)) b!936331))

(assert (= (and d!281901 c!152304) b!936332))

(assert (= (and d!281901 (not c!152304)) b!936327))

(assert (= (and b!936327 c!152305) b!936334))

(assert (= (and b!936327 (not c!152305)) b!936326))

(assert (= (and b!936326 (not res!425160)) b!936325))

(assert (= (and b!936325 res!425163) b!936333))

(assert (= (and b!936333 res!425162) b!936321))

(assert (= (and b!936321 res!425164) b!936322))

(assert (= (and b!936325 (not res!425161)) b!936330))

(assert (= (and b!936330 res!425165) b!936324))

(assert (= (and b!936324 (not res!425166)) b!936329))

(assert (= (and b!936329 (not res!425159)) b!936328))

(assert (= (or b!936332 b!936324 b!936333) bm!58066))

(assert (=> d!281901 m!1155611))

(assert (=> d!281901 m!1155447))

(declare-fun m!1155639 () Bool)

(assert (=> b!936323 m!1155639))

(assert (=> b!936328 m!1155617))

(assert (=> bm!58066 m!1155611))

(assert (=> b!936329 m!1155619))

(assert (=> b!936329 m!1155619))

(assert (=> b!936329 m!1155621))

(assert (=> b!936322 m!1155617))

(assert (=> b!936331 m!1155617))

(assert (=> b!936331 m!1155617))

(declare-fun m!1155641 () Bool)

(assert (=> b!936331 m!1155641))

(assert (=> b!936331 m!1155619))

(assert (=> b!936331 m!1155641))

(assert (=> b!936331 m!1155619))

(declare-fun m!1155643 () Bool)

(assert (=> b!936331 m!1155643))

(assert (=> b!936321 m!1155619))

(assert (=> b!936321 m!1155619))

(assert (=> b!936321 m!1155621))

(assert (=> b!935893 d!281901))

(declare-fun d!281903 () Bool)

(assert (=> d!281903 (= (matchR!1101 r!15766 s!10566) (matchRSpec!364 r!15766 s!10566))))

(declare-fun lt!341346 () Unit!14745)

(declare-fun choose!5772 (Regex!2563 List!9793) Unit!14745)

(assert (=> d!281903 (= lt!341346 (choose!5772 r!15766 s!10566))))

(assert (=> d!281903 (validRegex!1032 r!15766)))

(assert (=> d!281903 (= (mainMatchTheorem!364 r!15766 s!10566) lt!341346)))

(declare-fun bs!237988 () Bool)

(assert (= bs!237988 d!281903))

(assert (=> bs!237988 m!1155443))

(assert (=> bs!237988 m!1155441))

(declare-fun m!1155645 () Bool)

(assert (=> bs!237988 m!1155645))

(assert (=> bs!237988 m!1155447))

(assert (=> b!935893 d!281903))

(declare-fun d!281905 () Bool)

(assert (=> d!281905 (= (Exists!314 lambda!31096) (choose!5770 lambda!31096))))

(declare-fun bs!237989 () Bool)

(assert (= bs!237989 d!281905))

(declare-fun m!1155647 () Bool)

(assert (=> bs!237989 m!1155647))

(assert (=> b!935887 d!281905))

(declare-fun bs!237990 () Bool)

(declare-fun b!936339 () Bool)

(assert (= bs!237990 (and b!936339 b!935886)))

(declare-fun lambda!31130 () Int)

(assert (=> bs!237990 (= (and (= (reg!2892 lt!341289) (reg!2892 r!15766)) (= lt!341289 lt!341288)) (= lambda!31130 lambda!31095))))

(declare-fun bs!237991 () Bool)

(assert (= bs!237991 (and b!936339 d!281897)))

(assert (=> bs!237991 (= (and (= (reg!2892 lt!341289) (reg!2892 r!15766)) (= lt!341289 (Star!2563 (reg!2892 r!15766)))) (= lambda!31130 lambda!31123))))

(assert (=> bs!237991 (not (= lambda!31130 lambda!31122))))

(declare-fun bs!237992 () Bool)

(assert (= bs!237992 (and b!936339 b!935887)))

(assert (=> bs!237992 (not (= lambda!31130 lambda!31096))))

(declare-fun bs!237993 () Bool)

(assert (= bs!237993 (and b!936339 d!281855)))

(assert (=> bs!237993 (not (= lambda!31130 lambda!31105))))

(declare-fun bs!237994 () Bool)

(assert (= bs!237994 (and b!936339 b!936318)))

(assert (=> bs!237994 (not (= lambda!31130 lambda!31129))))

(declare-fun bs!237995 () Bool)

(assert (= bs!237995 (and b!936339 b!936314)))

(assert (=> bs!237995 (= (and (= (reg!2892 lt!341289) (reg!2892 r!15766)) (= lt!341289 r!15766)) (= lambda!31130 lambda!31128))))

(assert (=> bs!237990 (not (= lambda!31130 lambda!31094))))

(assert (=> b!936339 true))

(assert (=> b!936339 true))

(declare-fun bs!237996 () Bool)

(declare-fun b!936343 () Bool)

(assert (= bs!237996 (and b!936343 b!936339)))

(declare-fun lambda!31131 () Int)

(assert (=> bs!237996 (not (= lambda!31131 lambda!31130))))

(declare-fun bs!237997 () Bool)

(assert (= bs!237997 (and b!936343 b!935886)))

(assert (=> bs!237997 (not (= lambda!31131 lambda!31095))))

(declare-fun bs!237998 () Bool)

(assert (= bs!237998 (and b!936343 d!281897)))

(assert (=> bs!237998 (not (= lambda!31131 lambda!31123))))

(assert (=> bs!237998 (not (= lambda!31131 lambda!31122))))

(declare-fun bs!237999 () Bool)

(assert (= bs!237999 (and b!936343 b!935887)))

(assert (=> bs!237999 (not (= lambda!31131 lambda!31096))))

(declare-fun bs!238000 () Bool)

(assert (= bs!238000 (and b!936343 d!281855)))

(assert (=> bs!238000 (not (= lambda!31131 lambda!31105))))

(declare-fun bs!238001 () Bool)

(assert (= bs!238001 (and b!936343 b!936318)))

(assert (=> bs!238001 (= (and (= (regOne!5638 lt!341289) (regOne!5638 r!15766)) (= (regTwo!5638 lt!341289) (regTwo!5638 r!15766))) (= lambda!31131 lambda!31129))))

(declare-fun bs!238002 () Bool)

(assert (= bs!238002 (and b!936343 b!936314)))

(assert (=> bs!238002 (not (= lambda!31131 lambda!31128))))

(assert (=> bs!237997 (not (= lambda!31131 lambda!31094))))

(assert (=> b!936343 true))

(assert (=> b!936343 true))

(declare-fun b!936335 () Bool)

(declare-fun e!607981 () Bool)

(assert (=> b!936335 (= e!607981 (= s!10566 (Cons!9777 (c!152202 lt!341289) Nil!9777)))))

(declare-fun b!936336 () Bool)

(declare-fun e!607985 () Bool)

(declare-fun e!607980 () Bool)

(assert (=> b!936336 (= e!607985 e!607980)))

(declare-fun res!425167 () Bool)

(assert (=> b!936336 (= res!425167 (not ((_ is EmptyLang!2563) lt!341289)))))

(assert (=> b!936336 (=> (not res!425167) (not e!607980))))

(declare-fun b!936337 () Bool)

(declare-fun e!607983 () Bool)

(assert (=> b!936337 (= e!607983 (matchRSpec!364 (regTwo!5639 lt!341289) s!10566))))

(declare-fun e!607982 () Bool)

(declare-fun call!58073 () Bool)

(assert (=> b!936339 (= e!607982 call!58073)))

(declare-fun b!936340 () Bool)

(declare-fun c!152308 () Bool)

(assert (=> b!936340 (= c!152308 ((_ is ElementMatch!2563) lt!341289))))

(assert (=> b!936340 (= e!607980 e!607981)))

(declare-fun b!936341 () Bool)

(declare-fun c!152310 () Bool)

(assert (=> b!936341 (= c!152310 ((_ is Union!2563) lt!341289))))

(declare-fun e!607984 () Bool)

(assert (=> b!936341 (= e!607981 e!607984)))

(declare-fun b!936342 () Bool)

(assert (=> b!936342 (= e!607984 e!607983)))

(declare-fun res!425169 () Bool)

(assert (=> b!936342 (= res!425169 (matchRSpec!364 (regOne!5639 lt!341289) s!10566))))

(assert (=> b!936342 (=> res!425169 e!607983)))

(declare-fun e!607986 () Bool)

(assert (=> b!936343 (= e!607986 call!58073)))

(declare-fun bm!58067 () Bool)

(declare-fun call!58072 () Bool)

(assert (=> bm!58067 (= call!58072 (isEmpty!6016 s!10566))))

(declare-fun c!152307 () Bool)

(declare-fun bm!58068 () Bool)

(assert (=> bm!58068 (= call!58073 (Exists!314 (ite c!152307 lambda!31130 lambda!31131)))))

(declare-fun d!281907 () Bool)

(declare-fun c!152309 () Bool)

(assert (=> d!281907 (= c!152309 ((_ is EmptyExpr!2563) lt!341289))))

(assert (=> d!281907 (= (matchRSpec!364 lt!341289 s!10566) e!607985)))

(declare-fun b!936338 () Bool)

(assert (=> b!936338 (= e!607985 call!58072)))

(declare-fun b!936344 () Bool)

(assert (=> b!936344 (= e!607984 e!607986)))

(assert (=> b!936344 (= c!152307 ((_ is Star!2563) lt!341289))))

(declare-fun b!936345 () Bool)

(declare-fun res!425168 () Bool)

(assert (=> b!936345 (=> res!425168 e!607982)))

(assert (=> b!936345 (= res!425168 call!58072)))

(assert (=> b!936345 (= e!607986 e!607982)))

(assert (= (and d!281907 c!152309) b!936338))

(assert (= (and d!281907 (not c!152309)) b!936336))

(assert (= (and b!936336 res!425167) b!936340))

(assert (= (and b!936340 c!152308) b!936335))

(assert (= (and b!936340 (not c!152308)) b!936341))

(assert (= (and b!936341 c!152310) b!936342))

(assert (= (and b!936341 (not c!152310)) b!936344))

(assert (= (and b!936342 (not res!425169)) b!936337))

(assert (= (and b!936344 c!152307) b!936345))

(assert (= (and b!936344 (not c!152307)) b!936343))

(assert (= (and b!936345 (not res!425168)) b!936339))

(assert (= (or b!936339 b!936343) bm!58068))

(assert (= (or b!936338 b!936345) bm!58067))

(declare-fun m!1155649 () Bool)

(assert (=> b!936337 m!1155649))

(declare-fun m!1155651 () Bool)

(assert (=> b!936342 m!1155651))

(assert (=> bm!58067 m!1155611))

(declare-fun m!1155653 () Bool)

(assert (=> bm!58068 m!1155653))

(assert (=> b!935887 d!281907))

(declare-fun d!281909 () Bool)

(assert (=> d!281909 (= (isDefined!1796 (findConcatSeparation!260 lt!341285 lt!341289 Nil!9777 s!10566 s!10566)) (not (isEmpty!6015 (findConcatSeparation!260 lt!341285 lt!341289 Nil!9777 s!10566 s!10566))))))

(declare-fun bs!238003 () Bool)

(assert (= bs!238003 d!281909))

(assert (=> bs!238003 m!1155427))

(declare-fun m!1155655 () Bool)

(assert (=> bs!238003 m!1155655))

(assert (=> b!935887 d!281909))

(declare-fun d!281911 () Bool)

(assert (=> d!281911 (= (matchR!1101 lt!341289 s!10566) (matchRSpec!364 lt!341289 s!10566))))

(declare-fun lt!341347 () Unit!14745)

(assert (=> d!281911 (= lt!341347 (choose!5772 lt!341289 s!10566))))

(assert (=> d!281911 (validRegex!1032 lt!341289)))

(assert (=> d!281911 (= (mainMatchTheorem!364 lt!341289 s!10566) lt!341347)))

(declare-fun bs!238004 () Bool)

(assert (= bs!238004 d!281911))

(assert (=> bs!238004 m!1155421))

(assert (=> bs!238004 m!1155439))

(declare-fun m!1155657 () Bool)

(assert (=> bs!238004 m!1155657))

(assert (=> bs!238004 m!1155613))

(assert (=> b!935887 d!281911))

(declare-fun bs!238005 () Bool)

(declare-fun d!281913 () Bool)

(assert (= bs!238005 (and d!281913 b!936339)))

(declare-fun lambda!31132 () Int)

(assert (=> bs!238005 (not (= lambda!31132 lambda!31130))))

(declare-fun bs!238006 () Bool)

(assert (= bs!238006 (and d!281913 b!936343)))

(assert (=> bs!238006 (not (= lambda!31132 lambda!31131))))

(declare-fun bs!238007 () Bool)

(assert (= bs!238007 (and d!281913 b!935886)))

(assert (=> bs!238007 (not (= lambda!31132 lambda!31095))))

(declare-fun bs!238008 () Bool)

(assert (= bs!238008 (and d!281913 d!281897)))

(assert (=> bs!238008 (not (= lambda!31132 lambda!31123))))

(assert (=> bs!238008 (= (and (= lt!341285 (reg!2892 r!15766)) (= lt!341289 (Star!2563 (reg!2892 r!15766)))) (= lambda!31132 lambda!31122))))

(declare-fun bs!238009 () Bool)

(assert (= bs!238009 (and d!281913 b!935887)))

(assert (=> bs!238009 (= lambda!31132 lambda!31096)))

(declare-fun bs!238010 () Bool)

(assert (= bs!238010 (and d!281913 d!281855)))

(assert (=> bs!238010 (= (and (= lt!341285 (reg!2892 r!15766)) (= lt!341289 lt!341288)) (= lambda!31132 lambda!31105))))

(declare-fun bs!238011 () Bool)

(assert (= bs!238011 (and d!281913 b!936318)))

(assert (=> bs!238011 (not (= lambda!31132 lambda!31129))))

(declare-fun bs!238012 () Bool)

(assert (= bs!238012 (and d!281913 b!936314)))

(assert (=> bs!238012 (not (= lambda!31132 lambda!31128))))

(assert (=> bs!238007 (= (and (= lt!341285 (reg!2892 r!15766)) (= lt!341289 lt!341288)) (= lambda!31132 lambda!31094))))

(assert (=> d!281913 true))

(assert (=> d!281913 true))

(assert (=> d!281913 true))

(assert (=> d!281913 (= (isDefined!1796 (findConcatSeparation!260 lt!341285 lt!341289 Nil!9777 s!10566 s!10566)) (Exists!314 lambda!31132))))

(declare-fun lt!341348 () Unit!14745)

(assert (=> d!281913 (= lt!341348 (choose!5769 lt!341285 lt!341289 s!10566))))

(assert (=> d!281913 (validRegex!1032 lt!341285)))

(assert (=> d!281913 (= (lemmaFindConcatSeparationEquivalentToExists!260 lt!341285 lt!341289 s!10566) lt!341348)))

(declare-fun bs!238013 () Bool)

(assert (= bs!238013 d!281913))

(assert (=> bs!238013 m!1155427))

(assert (=> bs!238013 m!1155429))

(declare-fun m!1155659 () Bool)

(assert (=> bs!238013 m!1155659))

(assert (=> bs!238013 m!1155427))

(declare-fun m!1155661 () Bool)

(assert (=> bs!238013 m!1155661))

(declare-fun m!1155663 () Bool)

(assert (=> bs!238013 m!1155663))

(assert (=> b!935887 d!281913))

(declare-fun b!936346 () Bool)

(declare-fun e!607990 () Option!2154)

(declare-fun e!607991 () Option!2154)

(assert (=> b!936346 (= e!607990 e!607991)))

(declare-fun c!152311 () Bool)

(assert (=> b!936346 (= c!152311 ((_ is Nil!9777) s!10566))))

(declare-fun b!936347 () Bool)

(declare-fun e!607987 () Bool)

(declare-fun lt!341349 () Option!2154)

(assert (=> b!936347 (= e!607987 (not (isDefined!1796 lt!341349)))))

(declare-fun b!936348 () Bool)

(assert (=> b!936348 (= e!607990 (Some!2153 (tuple2!11025 Nil!9777 s!10566)))))

(declare-fun b!936349 () Bool)

(declare-fun lt!341351 () Unit!14745)

(declare-fun lt!341350 () Unit!14745)

(assert (=> b!936349 (= lt!341351 lt!341350)))

(assert (=> b!936349 (= (++!2589 (++!2589 Nil!9777 (Cons!9777 (h!15178 s!10566) Nil!9777)) (t!100839 s!10566)) s!10566)))

(assert (=> b!936349 (= lt!341350 (lemmaMoveElementToOtherListKeepsConcatEq!202 Nil!9777 (h!15178 s!10566) (t!100839 s!10566) s!10566))))

(assert (=> b!936349 (= e!607991 (findConcatSeparation!260 lt!341285 lt!341289 (++!2589 Nil!9777 (Cons!9777 (h!15178 s!10566) Nil!9777)) (t!100839 s!10566) s!10566))))

(declare-fun b!936350 () Bool)

(declare-fun res!425173 () Bool)

(declare-fun e!607988 () Bool)

(assert (=> b!936350 (=> (not res!425173) (not e!607988))))

(assert (=> b!936350 (= res!425173 (matchR!1101 lt!341285 (_1!6338 (get!3230 lt!341349))))))

(declare-fun b!936352 () Bool)

(declare-fun e!607989 () Bool)

(assert (=> b!936352 (= e!607989 (matchR!1101 lt!341289 s!10566))))

(declare-fun b!936351 () Bool)

(declare-fun res!425170 () Bool)

(assert (=> b!936351 (=> (not res!425170) (not e!607988))))

(assert (=> b!936351 (= res!425170 (matchR!1101 lt!341289 (_2!6338 (get!3230 lt!341349))))))

(declare-fun d!281915 () Bool)

(assert (=> d!281915 e!607987))

(declare-fun res!425172 () Bool)

(assert (=> d!281915 (=> res!425172 e!607987)))

(assert (=> d!281915 (= res!425172 e!607988)))

(declare-fun res!425171 () Bool)

(assert (=> d!281915 (=> (not res!425171) (not e!607988))))

(assert (=> d!281915 (= res!425171 (isDefined!1796 lt!341349))))

(assert (=> d!281915 (= lt!341349 e!607990)))

(declare-fun c!152312 () Bool)

(assert (=> d!281915 (= c!152312 e!607989)))

(declare-fun res!425174 () Bool)

(assert (=> d!281915 (=> (not res!425174) (not e!607989))))

(assert (=> d!281915 (= res!425174 (matchR!1101 lt!341285 Nil!9777))))

(assert (=> d!281915 (validRegex!1032 lt!341285)))

(assert (=> d!281915 (= (findConcatSeparation!260 lt!341285 lt!341289 Nil!9777 s!10566 s!10566) lt!341349)))

(declare-fun b!936353 () Bool)

(assert (=> b!936353 (= e!607988 (= (++!2589 (_1!6338 (get!3230 lt!341349)) (_2!6338 (get!3230 lt!341349))) s!10566))))

(declare-fun b!936354 () Bool)

(assert (=> b!936354 (= e!607991 None!2153)))

(assert (= (and d!281915 res!425174) b!936352))

(assert (= (and d!281915 c!152312) b!936348))

(assert (= (and d!281915 (not c!152312)) b!936346))

(assert (= (and b!936346 c!152311) b!936354))

(assert (= (and b!936346 (not c!152311)) b!936349))

(assert (= (and d!281915 res!425171) b!936350))

(assert (= (and b!936350 res!425173) b!936351))

(assert (= (and b!936351 res!425170) b!936353))

(assert (= (and d!281915 (not res!425172)) b!936347))

(declare-fun m!1155665 () Bool)

(assert (=> b!936350 m!1155665))

(declare-fun m!1155667 () Bool)

(assert (=> b!936350 m!1155667))

(assert (=> b!936353 m!1155665))

(declare-fun m!1155669 () Bool)

(assert (=> b!936353 m!1155669))

(assert (=> b!936349 m!1155565))

(assert (=> b!936349 m!1155565))

(assert (=> b!936349 m!1155567))

(assert (=> b!936349 m!1155569))

(assert (=> b!936349 m!1155565))

(declare-fun m!1155671 () Bool)

(assert (=> b!936349 m!1155671))

(assert (=> b!936352 m!1155421))

(declare-fun m!1155673 () Bool)

(assert (=> d!281915 m!1155673))

(declare-fun m!1155675 () Bool)

(assert (=> d!281915 m!1155675))

(assert (=> d!281915 m!1155661))

(assert (=> b!936351 m!1155665))

(declare-fun m!1155677 () Bool)

(assert (=> b!936351 m!1155677))

(assert (=> b!936347 m!1155673))

(assert (=> b!935887 d!281915))

(declare-fun b!936373 () Bool)

(declare-fun res!425186 () Bool)

(declare-fun e!608007 () Bool)

(assert (=> b!936373 (=> (not res!425186) (not e!608007))))

(declare-fun call!58081 () Bool)

(assert (=> b!936373 (= res!425186 call!58081)))

(declare-fun e!608011 () Bool)

(assert (=> b!936373 (= e!608011 e!608007)))

(declare-fun b!936374 () Bool)

(declare-fun e!608010 () Bool)

(declare-fun e!608012 () Bool)

(assert (=> b!936374 (= e!608010 e!608012)))

(declare-fun c!152318 () Bool)

(assert (=> b!936374 (= c!152318 ((_ is Star!2563) (reg!2892 r!15766)))))

(declare-fun bm!58075 () Bool)

(declare-fun call!58082 () Bool)

(declare-fun c!152317 () Bool)

(assert (=> bm!58075 (= call!58082 (validRegex!1032 (ite c!152317 (regTwo!5639 (reg!2892 r!15766)) (regTwo!5638 (reg!2892 r!15766)))))))

(declare-fun bm!58076 () Bool)

(declare-fun call!58080 () Bool)

(assert (=> bm!58076 (= call!58081 call!58080)))

(declare-fun b!936375 () Bool)

(declare-fun e!608009 () Bool)

(assert (=> b!936375 (= e!608012 e!608009)))

(declare-fun res!425188 () Bool)

(assert (=> b!936375 (= res!425188 (not (nullable!737 (reg!2892 (reg!2892 r!15766)))))))

(assert (=> b!936375 (=> (not res!425188) (not e!608009))))

(declare-fun b!936376 () Bool)

(declare-fun e!608008 () Bool)

(declare-fun e!608006 () Bool)

(assert (=> b!936376 (= e!608008 e!608006)))

(declare-fun res!425187 () Bool)

(assert (=> b!936376 (=> (not res!425187) (not e!608006))))

(assert (=> b!936376 (= res!425187 call!58081)))

(declare-fun d!281917 () Bool)

(declare-fun res!425189 () Bool)

(assert (=> d!281917 (=> res!425189 e!608010)))

(assert (=> d!281917 (= res!425189 ((_ is ElementMatch!2563) (reg!2892 r!15766)))))

(assert (=> d!281917 (= (validRegex!1032 (reg!2892 r!15766)) e!608010)))

(declare-fun b!936377 () Bool)

(declare-fun res!425185 () Bool)

(assert (=> b!936377 (=> res!425185 e!608008)))

(assert (=> b!936377 (= res!425185 (not ((_ is Concat!4396) (reg!2892 r!15766))))))

(assert (=> b!936377 (= e!608011 e!608008)))

(declare-fun b!936378 () Bool)

(assert (=> b!936378 (= e!608009 call!58080)))

(declare-fun b!936379 () Bool)

(assert (=> b!936379 (= e!608007 call!58082)))

(declare-fun bm!58077 () Bool)

(assert (=> bm!58077 (= call!58080 (validRegex!1032 (ite c!152318 (reg!2892 (reg!2892 r!15766)) (ite c!152317 (regOne!5639 (reg!2892 r!15766)) (regOne!5638 (reg!2892 r!15766))))))))

(declare-fun b!936380 () Bool)

(assert (=> b!936380 (= e!608006 call!58082)))

(declare-fun b!936381 () Bool)

(assert (=> b!936381 (= e!608012 e!608011)))

(assert (=> b!936381 (= c!152317 ((_ is Union!2563) (reg!2892 r!15766)))))

(assert (= (and d!281917 (not res!425189)) b!936374))

(assert (= (and b!936374 c!152318) b!936375))

(assert (= (and b!936374 (not c!152318)) b!936381))

(assert (= (and b!936375 res!425188) b!936378))

(assert (= (and b!936381 c!152317) b!936373))

(assert (= (and b!936381 (not c!152317)) b!936377))

(assert (= (and b!936373 res!425186) b!936379))

(assert (= (and b!936377 (not res!425185)) b!936376))

(assert (= (and b!936376 res!425187) b!936380))

(assert (= (or b!936379 b!936380) bm!58075))

(assert (= (or b!936373 b!936376) bm!58076))

(assert (= (or b!936378 bm!58076) bm!58077))

(declare-fun m!1155679 () Bool)

(assert (=> bm!58075 m!1155679))

(declare-fun m!1155681 () Bool)

(assert (=> b!936375 m!1155681))

(declare-fun m!1155683 () Bool)

(assert (=> bm!58077 m!1155683))

(assert (=> b!935887 d!281917))

(declare-fun b!936382 () Bool)

(declare-fun res!425191 () Bool)

(declare-fun e!608014 () Bool)

(assert (=> b!936382 (=> (not res!425191) (not e!608014))))

(declare-fun call!58084 () Bool)

(assert (=> b!936382 (= res!425191 call!58084)))

(declare-fun e!608018 () Bool)

(assert (=> b!936382 (= e!608018 e!608014)))

(declare-fun b!936383 () Bool)

(declare-fun e!608017 () Bool)

(declare-fun e!608019 () Bool)

(assert (=> b!936383 (= e!608017 e!608019)))

(declare-fun c!152320 () Bool)

(assert (=> b!936383 (= c!152320 ((_ is Star!2563) r!15766))))

(declare-fun bm!58078 () Bool)

(declare-fun call!58085 () Bool)

(declare-fun c!152319 () Bool)

(assert (=> bm!58078 (= call!58085 (validRegex!1032 (ite c!152319 (regTwo!5639 r!15766) (regTwo!5638 r!15766))))))

(declare-fun bm!58079 () Bool)

(declare-fun call!58083 () Bool)

(assert (=> bm!58079 (= call!58084 call!58083)))

(declare-fun b!936384 () Bool)

(declare-fun e!608016 () Bool)

(assert (=> b!936384 (= e!608019 e!608016)))

(declare-fun res!425193 () Bool)

(assert (=> b!936384 (= res!425193 (not (nullable!737 (reg!2892 r!15766))))))

(assert (=> b!936384 (=> (not res!425193) (not e!608016))))

(declare-fun b!936385 () Bool)

(declare-fun e!608015 () Bool)

(declare-fun e!608013 () Bool)

(assert (=> b!936385 (= e!608015 e!608013)))

(declare-fun res!425192 () Bool)

(assert (=> b!936385 (=> (not res!425192) (not e!608013))))

(assert (=> b!936385 (= res!425192 call!58084)))

(declare-fun d!281919 () Bool)

(declare-fun res!425194 () Bool)

(assert (=> d!281919 (=> res!425194 e!608017)))

(assert (=> d!281919 (= res!425194 ((_ is ElementMatch!2563) r!15766))))

(assert (=> d!281919 (= (validRegex!1032 r!15766) e!608017)))

(declare-fun b!936386 () Bool)

(declare-fun res!425190 () Bool)

(assert (=> b!936386 (=> res!425190 e!608015)))

(assert (=> b!936386 (= res!425190 (not ((_ is Concat!4396) r!15766)))))

(assert (=> b!936386 (= e!608018 e!608015)))

(declare-fun b!936387 () Bool)

(assert (=> b!936387 (= e!608016 call!58083)))

(declare-fun b!936388 () Bool)

(assert (=> b!936388 (= e!608014 call!58085)))

(declare-fun bm!58080 () Bool)

(assert (=> bm!58080 (= call!58083 (validRegex!1032 (ite c!152320 (reg!2892 r!15766) (ite c!152319 (regOne!5639 r!15766) (regOne!5638 r!15766)))))))

(declare-fun b!936389 () Bool)

(assert (=> b!936389 (= e!608013 call!58085)))

(declare-fun b!936390 () Bool)

(assert (=> b!936390 (= e!608019 e!608018)))

(assert (=> b!936390 (= c!152319 ((_ is Union!2563) r!15766))))

(assert (= (and d!281919 (not res!425194)) b!936383))

(assert (= (and b!936383 c!152320) b!936384))

(assert (= (and b!936383 (not c!152320)) b!936390))

(assert (= (and b!936384 res!425193) b!936387))

(assert (= (and b!936390 c!152319) b!936382))

(assert (= (and b!936390 (not c!152319)) b!936386))

(assert (= (and b!936382 res!425191) b!936388))

(assert (= (and b!936386 (not res!425190)) b!936385))

(assert (= (and b!936385 res!425192) b!936389))

(assert (= (or b!936388 b!936389) bm!58078))

(assert (= (or b!936382 b!936385) bm!58079))

(assert (= (or b!936387 bm!58079) bm!58080))

(declare-fun m!1155685 () Bool)

(assert (=> bm!58078 m!1155685))

(assert (=> b!936384 m!1155505))

(declare-fun m!1155687 () Bool)

(assert (=> bm!58080 m!1155687))

(assert (=> start!83642 d!281919))

(declare-fun b!936402 () Bool)

(declare-fun e!608022 () Bool)

(declare-fun tp!290323 () Bool)

(declare-fun tp!290321 () Bool)

(assert (=> b!936402 (= e!608022 (and tp!290323 tp!290321))))

(assert (=> b!935892 (= tp!290272 e!608022)))

(declare-fun b!936401 () Bool)

(assert (=> b!936401 (= e!608022 tp_is_empty!4769)))

(declare-fun b!936404 () Bool)

(declare-fun tp!290324 () Bool)

(declare-fun tp!290325 () Bool)

(assert (=> b!936404 (= e!608022 (and tp!290324 tp!290325))))

(declare-fun b!936403 () Bool)

(declare-fun tp!290322 () Bool)

(assert (=> b!936403 (= e!608022 tp!290322)))

(assert (= (and b!935892 ((_ is ElementMatch!2563) (reg!2892 r!15766))) b!936401))

(assert (= (and b!935892 ((_ is Concat!4396) (reg!2892 r!15766))) b!936402))

(assert (= (and b!935892 ((_ is Star!2563) (reg!2892 r!15766))) b!936403))

(assert (= (and b!935892 ((_ is Union!2563) (reg!2892 r!15766))) b!936404))

(declare-fun b!936406 () Bool)

(declare-fun e!608023 () Bool)

(declare-fun tp!290328 () Bool)

(declare-fun tp!290326 () Bool)

(assert (=> b!936406 (= e!608023 (and tp!290328 tp!290326))))

(assert (=> b!935891 (= tp!290270 e!608023)))

(declare-fun b!936405 () Bool)

(assert (=> b!936405 (= e!608023 tp_is_empty!4769)))

(declare-fun b!936408 () Bool)

(declare-fun tp!290329 () Bool)

(declare-fun tp!290330 () Bool)

(assert (=> b!936408 (= e!608023 (and tp!290329 tp!290330))))

(declare-fun b!936407 () Bool)

(declare-fun tp!290327 () Bool)

(assert (=> b!936407 (= e!608023 tp!290327)))

(assert (= (and b!935891 ((_ is ElementMatch!2563) (regOne!5639 r!15766))) b!936405))

(assert (= (and b!935891 ((_ is Concat!4396) (regOne!5639 r!15766))) b!936406))

(assert (= (and b!935891 ((_ is Star!2563) (regOne!5639 r!15766))) b!936407))

(assert (= (and b!935891 ((_ is Union!2563) (regOne!5639 r!15766))) b!936408))

(declare-fun b!936410 () Bool)

(declare-fun e!608024 () Bool)

(declare-fun tp!290333 () Bool)

(declare-fun tp!290331 () Bool)

(assert (=> b!936410 (= e!608024 (and tp!290333 tp!290331))))

(assert (=> b!935891 (= tp!290267 e!608024)))

(declare-fun b!936409 () Bool)

(assert (=> b!936409 (= e!608024 tp_is_empty!4769)))

(declare-fun b!936412 () Bool)

(declare-fun tp!290334 () Bool)

(declare-fun tp!290335 () Bool)

(assert (=> b!936412 (= e!608024 (and tp!290334 tp!290335))))

(declare-fun b!936411 () Bool)

(declare-fun tp!290332 () Bool)

(assert (=> b!936411 (= e!608024 tp!290332)))

(assert (= (and b!935891 ((_ is ElementMatch!2563) (regTwo!5639 r!15766))) b!936409))

(assert (= (and b!935891 ((_ is Concat!4396) (regTwo!5639 r!15766))) b!936410))

(assert (= (and b!935891 ((_ is Star!2563) (regTwo!5639 r!15766))) b!936411))

(assert (= (and b!935891 ((_ is Union!2563) (regTwo!5639 r!15766))) b!936412))

(declare-fun b!936417 () Bool)

(declare-fun e!608027 () Bool)

(declare-fun tp!290338 () Bool)

(assert (=> b!936417 (= e!608027 (and tp_is_empty!4769 tp!290338))))

(assert (=> b!935889 (= tp!290268 e!608027)))

(assert (= (and b!935889 ((_ is Cons!9777) (t!100839 s!10566))) b!936417))

(declare-fun b!936419 () Bool)

(declare-fun e!608028 () Bool)

(declare-fun tp!290341 () Bool)

(declare-fun tp!290339 () Bool)

(assert (=> b!936419 (= e!608028 (and tp!290341 tp!290339))))

(assert (=> b!935890 (= tp!290269 e!608028)))

(declare-fun b!936418 () Bool)

(assert (=> b!936418 (= e!608028 tp_is_empty!4769)))

(declare-fun b!936421 () Bool)

(declare-fun tp!290342 () Bool)

(declare-fun tp!290343 () Bool)

(assert (=> b!936421 (= e!608028 (and tp!290342 tp!290343))))

(declare-fun b!936420 () Bool)

(declare-fun tp!290340 () Bool)

(assert (=> b!936420 (= e!608028 tp!290340)))

(assert (= (and b!935890 ((_ is ElementMatch!2563) (regOne!5638 r!15766))) b!936418))

(assert (= (and b!935890 ((_ is Concat!4396) (regOne!5638 r!15766))) b!936419))

(assert (= (and b!935890 ((_ is Star!2563) (regOne!5638 r!15766))) b!936420))

(assert (= (and b!935890 ((_ is Union!2563) (regOne!5638 r!15766))) b!936421))

(declare-fun b!936423 () Bool)

(declare-fun e!608029 () Bool)

(declare-fun tp!290346 () Bool)

(declare-fun tp!290344 () Bool)

(assert (=> b!936423 (= e!608029 (and tp!290346 tp!290344))))

(assert (=> b!935890 (= tp!290271 e!608029)))

(declare-fun b!936422 () Bool)

(assert (=> b!936422 (= e!608029 tp_is_empty!4769)))

(declare-fun b!936425 () Bool)

(declare-fun tp!290347 () Bool)

(declare-fun tp!290348 () Bool)

(assert (=> b!936425 (= e!608029 (and tp!290347 tp!290348))))

(declare-fun b!936424 () Bool)

(declare-fun tp!290345 () Bool)

(assert (=> b!936424 (= e!608029 tp!290345)))

(assert (= (and b!935890 ((_ is ElementMatch!2563) (regTwo!5638 r!15766))) b!936422))

(assert (= (and b!935890 ((_ is Concat!4396) (regTwo!5638 r!15766))) b!936423))

(assert (= (and b!935890 ((_ is Star!2563) (regTwo!5638 r!15766))) b!936424))

(assert (= (and b!935890 ((_ is Union!2563) (regTwo!5638 r!15766))) b!936425))

(check-sat (not b!936406) (not d!281903) (not b!936404) (not b!936120) (not b!936256) (not b!936337) (not bm!58078) (not d!281901) (not b!936261) (not b!936317) (not b!936349) (not b!936331) (not b!936403) (not b!936425) (not b!936262) (not d!281865) (not b!936352) (not d!281885) (not b!936410) (not d!281871) (not b!936402) (not bm!58027) (not b!936375) (not bm!58028) (not b!936264) (not b!936419) (not d!281897) (not b!936424) (not b!936116) (not d!281913) (not d!281859) (not b!936119) (not b!936411) (not bm!58066) (not d!281915) (not b!936312) (not d!281855) (not b!936351) (not d!281873) (not b!936254) (not b!936255) (not bm!58068) (not b!936421) (not b!936347) (not b!936417) (not b!936412) (not bm!58067) (not b!936322) (not d!281909) (not bm!58059) (not b!936353) (not b!936025) (not b!936350) tp_is_empty!4769 (not bm!58077) (not b!936384) (not b!936423) (not b!936342) (not b!936420) (not b!936323) (not d!281905) (not bm!58064) (not b!936122) (not b!936321) (not b!936328) (not bm!58065) (not b!936408) (not bm!58075) (not d!281911) (not b!936118) (not d!281853) (not b!936121) (not bm!58080) (not b!936329) (not b!936407))
(check-sat)

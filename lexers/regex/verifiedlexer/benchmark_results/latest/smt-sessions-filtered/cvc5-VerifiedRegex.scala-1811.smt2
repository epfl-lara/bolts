; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90220 () Bool)

(assert start!90220)

(declare-fun b!1036872 () Bool)

(assert (=> b!1036872 true))

(assert (=> b!1036872 true))

(declare-fun lambda!37356 () Int)

(declare-fun lambda!37355 () Int)

(assert (=> b!1036872 (not (= lambda!37356 lambda!37355))))

(assert (=> b!1036872 true))

(assert (=> b!1036872 true))

(declare-fun b!1036870 () Bool)

(declare-fun e!660327 () Bool)

(declare-fun tp!313634 () Bool)

(assert (=> b!1036870 (= e!660327 tp!313634)))

(declare-fun b!1036871 () Bool)

(declare-fun tp_is_empty!5403 () Bool)

(assert (=> b!1036871 (= e!660327 tp_is_empty!5403)))

(declare-fun res!465711 () Bool)

(declare-fun e!660329 () Bool)

(assert (=> start!90220 (=> (not res!465711) (not e!660329))))

(declare-datatypes ((C!6330 0))(
  ( (C!6331 (val!3413 Int)) )
))
(declare-datatypes ((Regex!2880 0))(
  ( (ElementMatch!2880 (c!172125 C!6330)) (Concat!4713 (regOne!6272 Regex!2880) (regTwo!6272 Regex!2880)) (EmptyExpr!2880) (Star!2880 (reg!3209 Regex!2880)) (EmptyLang!2880) (Union!2880 (regOne!6273 Regex!2880) (regTwo!6273 Regex!2880)) )
))
(declare-fun r!15766 () Regex!2880)

(declare-fun validRegex!1349 (Regex!2880) Bool)

(assert (=> start!90220 (= res!465711 (validRegex!1349 r!15766))))

(assert (=> start!90220 e!660329))

(assert (=> start!90220 e!660327))

(declare-fun e!660330 () Bool)

(assert (=> start!90220 e!660330))

(declare-fun e!660328 () Bool)

(declare-fun e!660326 () Bool)

(assert (=> b!1036872 (= e!660328 e!660326)))

(declare-fun res!465708 () Bool)

(assert (=> b!1036872 (=> res!465708 e!660326)))

(declare-datatypes ((List!10110 0))(
  ( (Nil!10094) (Cons!10094 (h!15495 C!6330) (t!101156 List!10110)) )
))
(declare-fun s!10566 () List!10110)

(declare-fun isEmpty!6490 (List!10110) Bool)

(assert (=> b!1036872 (= res!465708 (isEmpty!6490 s!10566))))

(declare-fun Exists!607 (Int) Bool)

(assert (=> b!1036872 (= (Exists!607 lambda!37355) (Exists!607 lambda!37356))))

(declare-datatypes ((Unit!15435 0))(
  ( (Unit!15436) )
))
(declare-fun lt!356895 () Unit!15435)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!295 (Regex!2880 Regex!2880 List!10110) Unit!15435)

(assert (=> b!1036872 (= lt!356895 (lemmaExistCutMatchRandMatchRSpecEquivalent!295 (regOne!6272 r!15766) (regTwo!6272 r!15766) s!10566))))

(declare-datatypes ((tuple2!11526 0))(
  ( (tuple2!11527 (_1!6589 List!10110) (_2!6589 List!10110)) )
))
(declare-datatypes ((Option!2405 0))(
  ( (None!2404) (Some!2404 (v!19821 tuple2!11526)) )
))
(declare-fun isDefined!2047 (Option!2405) Bool)

(declare-fun findConcatSeparation!511 (Regex!2880 Regex!2880 List!10110 List!10110 List!10110) Option!2405)

(assert (=> b!1036872 (= (isDefined!2047 (findConcatSeparation!511 (regOne!6272 r!15766) (regTwo!6272 r!15766) Nil!10094 s!10566 s!10566)) (Exists!607 lambda!37355))))

(declare-fun lt!356897 () Unit!15435)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!511 (Regex!2880 Regex!2880 List!10110) Unit!15435)

(assert (=> b!1036872 (= lt!356897 (lemmaFindConcatSeparationEquivalentToExists!511 (regOne!6272 r!15766) (regTwo!6272 r!15766) s!10566))))

(declare-fun b!1036873 () Bool)

(declare-fun tp!313633 () Bool)

(declare-fun tp!313631 () Bool)

(assert (=> b!1036873 (= e!660327 (and tp!313633 tp!313631))))

(declare-fun b!1036874 () Bool)

(declare-fun tp!313632 () Bool)

(assert (=> b!1036874 (= e!660330 (and tp_is_empty!5403 tp!313632))))

(declare-fun b!1036875 () Bool)

(assert (=> b!1036875 (= e!660329 (not e!660328))))

(declare-fun res!465710 () Bool)

(assert (=> b!1036875 (=> res!465710 e!660328)))

(declare-fun lt!356899 () Bool)

(assert (=> b!1036875 (= res!465710 (or lt!356899 (and (is-Concat!4713 r!15766) (is-EmptyExpr!2880 (regOne!6272 r!15766))) (and (is-Concat!4713 r!15766) (is-EmptyExpr!2880 (regTwo!6272 r!15766))) (not (is-Concat!4713 r!15766))))))

(declare-fun matchRSpec!679 (Regex!2880 List!10110) Bool)

(assert (=> b!1036875 (= lt!356899 (matchRSpec!679 r!15766 s!10566))))

(declare-fun matchR!1416 (Regex!2880 List!10110) Bool)

(assert (=> b!1036875 (= lt!356899 (matchR!1416 r!15766 s!10566))))

(declare-fun lt!356896 () Unit!15435)

(declare-fun mainMatchTheorem!679 (Regex!2880 List!10110) Unit!15435)

(assert (=> b!1036875 (= lt!356896 (mainMatchTheorem!679 r!15766 s!10566))))

(declare-fun b!1036876 () Bool)

(declare-fun tp!313630 () Bool)

(declare-fun tp!313629 () Bool)

(assert (=> b!1036876 (= e!660327 (and tp!313630 tp!313629))))

(declare-fun b!1036877 () Bool)

(declare-fun e!660331 () Bool)

(declare-fun lt!356901 () Regex!2880)

(assert (=> b!1036877 (= e!660331 (validRegex!1349 lt!356901))))

(declare-fun b!1036878 () Bool)

(declare-fun e!660332 () Bool)

(assert (=> b!1036878 (= e!660332 e!660331)))

(declare-fun res!465709 () Bool)

(assert (=> b!1036878 (=> res!465709 e!660331)))

(declare-fun lt!356900 () Regex!2880)

(assert (=> b!1036878 (= res!465709 (not (validRegex!1349 lt!356900)))))

(declare-fun lt!356898 () Regex!2880)

(assert (=> b!1036878 (matchRSpec!679 lt!356898 s!10566)))

(declare-fun lt!356894 () Unit!15435)

(assert (=> b!1036878 (= lt!356894 (mainMatchTheorem!679 lt!356898 s!10566))))

(declare-fun b!1036879 () Bool)

(assert (=> b!1036879 (= e!660326 e!660332)))

(declare-fun res!465707 () Bool)

(assert (=> b!1036879 (=> res!465707 e!660332)))

(assert (=> b!1036879 (= res!465707 (not (matchR!1416 lt!356898 s!10566)))))

(assert (=> b!1036879 (= lt!356898 (Concat!4713 lt!356900 lt!356901))))

(declare-fun removeUselessConcat!429 (Regex!2880) Regex!2880)

(assert (=> b!1036879 (= lt!356901 (removeUselessConcat!429 (regTwo!6272 r!15766)))))

(assert (=> b!1036879 (= lt!356900 (removeUselessConcat!429 (regOne!6272 r!15766)))))

(assert (= (and start!90220 res!465711) b!1036875))

(assert (= (and b!1036875 (not res!465710)) b!1036872))

(assert (= (and b!1036872 (not res!465708)) b!1036879))

(assert (= (and b!1036879 (not res!465707)) b!1036878))

(assert (= (and b!1036878 (not res!465709)) b!1036877))

(assert (= (and start!90220 (is-ElementMatch!2880 r!15766)) b!1036871))

(assert (= (and start!90220 (is-Concat!4713 r!15766)) b!1036876))

(assert (= (and start!90220 (is-Star!2880 r!15766)) b!1036870))

(assert (= (and start!90220 (is-Union!2880 r!15766)) b!1036873))

(assert (= (and start!90220 (is-Cons!10094 s!10566)) b!1036874))

(declare-fun m!1207221 () Bool)

(assert (=> b!1036872 m!1207221))

(declare-fun m!1207223 () Bool)

(assert (=> b!1036872 m!1207223))

(declare-fun m!1207225 () Bool)

(assert (=> b!1036872 m!1207225))

(declare-fun m!1207227 () Bool)

(assert (=> b!1036872 m!1207227))

(declare-fun m!1207229 () Bool)

(assert (=> b!1036872 m!1207229))

(declare-fun m!1207231 () Bool)

(assert (=> b!1036872 m!1207231))

(declare-fun m!1207233 () Bool)

(assert (=> b!1036872 m!1207233))

(assert (=> b!1036872 m!1207221))

(assert (=> b!1036872 m!1207225))

(declare-fun m!1207235 () Bool)

(assert (=> b!1036875 m!1207235))

(declare-fun m!1207237 () Bool)

(assert (=> b!1036875 m!1207237))

(declare-fun m!1207239 () Bool)

(assert (=> b!1036875 m!1207239))

(declare-fun m!1207241 () Bool)

(assert (=> b!1036879 m!1207241))

(declare-fun m!1207243 () Bool)

(assert (=> b!1036879 m!1207243))

(declare-fun m!1207245 () Bool)

(assert (=> b!1036879 m!1207245))

(declare-fun m!1207247 () Bool)

(assert (=> b!1036877 m!1207247))

(declare-fun m!1207249 () Bool)

(assert (=> b!1036878 m!1207249))

(declare-fun m!1207251 () Bool)

(assert (=> b!1036878 m!1207251))

(declare-fun m!1207253 () Bool)

(assert (=> b!1036878 m!1207253))

(declare-fun m!1207255 () Bool)

(assert (=> start!90220 m!1207255))

(push 1)

(assert (not b!1036876))

(assert (not b!1036875))

(assert (not b!1036874))

(assert (not b!1036879))

(assert tp_is_empty!5403)

(assert (not b!1036873))

(assert (not b!1036877))

(assert (not b!1036870))

(assert (not b!1036878))

(assert (not start!90220))

(assert (not b!1036872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!247698 () Bool)

(declare-fun b!1036970 () Bool)

(assert (= bs!247698 (and b!1036970 b!1036872)))

(declare-fun lambda!37369 () Int)

(assert (=> bs!247698 (not (= lambda!37369 lambda!37355))))

(assert (=> bs!247698 (not (= lambda!37369 lambda!37356))))

(assert (=> b!1036970 true))

(assert (=> b!1036970 true))

(declare-fun bs!247699 () Bool)

(declare-fun b!1036966 () Bool)

(assert (= bs!247699 (and b!1036966 b!1036872)))

(declare-fun lambda!37370 () Int)

(assert (=> bs!247699 (not (= lambda!37370 lambda!37355))))

(assert (=> bs!247699 (= lambda!37370 lambda!37356)))

(declare-fun bs!247700 () Bool)

(assert (= bs!247700 (and b!1036966 b!1036970)))

(assert (=> bs!247700 (not (= lambda!37370 lambda!37369))))

(assert (=> b!1036966 true))

(assert (=> b!1036966 true))

(declare-fun b!1036962 () Bool)

(declare-fun e!660378 () Bool)

(declare-fun call!71786 () Bool)

(assert (=> b!1036962 (= e!660378 call!71786)))

(declare-fun b!1036963 () Bool)

(declare-fun c!172138 () Bool)

(assert (=> b!1036963 (= c!172138 (is-Union!2880 r!15766))))

(declare-fun e!660383 () Bool)

(declare-fun e!660382 () Bool)

(assert (=> b!1036963 (= e!660383 e!660382)))

(declare-fun b!1036964 () Bool)

(declare-fun e!660381 () Bool)

(assert (=> b!1036964 (= e!660382 e!660381)))

(declare-fun res!465756 () Bool)

(assert (=> b!1036964 (= res!465756 (matchRSpec!679 (regOne!6273 r!15766) s!10566))))

(assert (=> b!1036964 (=> res!465756 e!660381)))

(declare-fun b!1036965 () Bool)

(declare-fun e!660380 () Bool)

(assert (=> b!1036965 (= e!660378 e!660380)))

(declare-fun res!465755 () Bool)

(assert (=> b!1036965 (= res!465755 (not (is-EmptyLang!2880 r!15766)))))

(assert (=> b!1036965 (=> (not res!465755) (not e!660380))))

(declare-fun e!660379 () Bool)

(declare-fun call!71787 () Bool)

(assert (=> b!1036966 (= e!660379 call!71787)))

(declare-fun b!1036967 () Bool)

(declare-fun c!172137 () Bool)

(assert (=> b!1036967 (= c!172137 (is-ElementMatch!2880 r!15766))))

(assert (=> b!1036967 (= e!660380 e!660383)))

(declare-fun bm!71781 () Bool)

(declare-fun c!172135 () Bool)

(assert (=> bm!71781 (= call!71787 (Exists!607 (ite c!172135 lambda!37369 lambda!37370)))))

(declare-fun b!1036968 () Bool)

(assert (=> b!1036968 (= e!660382 e!660379)))

(assert (=> b!1036968 (= c!172135 (is-Star!2880 r!15766))))

(declare-fun b!1036969 () Bool)

(declare-fun res!465757 () Bool)

(declare-fun e!660384 () Bool)

(assert (=> b!1036969 (=> res!465757 e!660384)))

(assert (=> b!1036969 (= res!465757 call!71786)))

(assert (=> b!1036969 (= e!660379 e!660384)))

(declare-fun d!296376 () Bool)

(declare-fun c!172136 () Bool)

(assert (=> d!296376 (= c!172136 (is-EmptyExpr!2880 r!15766))))

(assert (=> d!296376 (= (matchRSpec!679 r!15766 s!10566) e!660378)))

(assert (=> b!1036970 (= e!660384 call!71787)))

(declare-fun b!1036971 () Bool)

(assert (=> b!1036971 (= e!660383 (= s!10566 (Cons!10094 (c!172125 r!15766) Nil!10094)))))

(declare-fun b!1036972 () Bool)

(assert (=> b!1036972 (= e!660381 (matchRSpec!679 (regTwo!6273 r!15766) s!10566))))

(declare-fun bm!71782 () Bool)

(assert (=> bm!71782 (= call!71786 (isEmpty!6490 s!10566))))

(assert (= (and d!296376 c!172136) b!1036962))

(assert (= (and d!296376 (not c!172136)) b!1036965))

(assert (= (and b!1036965 res!465755) b!1036967))

(assert (= (and b!1036967 c!172137) b!1036971))

(assert (= (and b!1036967 (not c!172137)) b!1036963))

(assert (= (and b!1036963 c!172138) b!1036964))

(assert (= (and b!1036963 (not c!172138)) b!1036968))

(assert (= (and b!1036964 (not res!465756)) b!1036972))

(assert (= (and b!1036968 c!172135) b!1036969))

(assert (= (and b!1036968 (not c!172135)) b!1036966))

(assert (= (and b!1036969 (not res!465757)) b!1036970))

(assert (= (or b!1036970 b!1036966) bm!71781))

(assert (= (or b!1036962 b!1036969) bm!71782))

(declare-fun m!1207293 () Bool)

(assert (=> b!1036964 m!1207293))

(declare-fun m!1207295 () Bool)

(assert (=> bm!71781 m!1207295))

(declare-fun m!1207297 () Bool)

(assert (=> b!1036972 m!1207297))

(assert (=> bm!71782 m!1207231))

(assert (=> b!1036875 d!296376))

(declare-fun b!1037020 () Bool)

(declare-fun e!660414 () Bool)

(declare-fun head!1927 (List!10110) C!6330)

(assert (=> b!1037020 (= e!660414 (not (= (head!1927 s!10566) (c!172125 r!15766))))))

(declare-fun b!1037021 () Bool)

(declare-fun res!465790 () Bool)

(declare-fun e!660416 () Bool)

(assert (=> b!1037021 (=> (not res!465790) (not e!660416))))

(declare-fun call!71796 () Bool)

(assert (=> b!1037021 (= res!465790 (not call!71796))))

(declare-fun b!1037022 () Bool)

(declare-fun e!660413 () Bool)

(declare-fun e!660417 () Bool)

(assert (=> b!1037022 (= e!660413 e!660417)))

(declare-fun res!465789 () Bool)

(assert (=> b!1037022 (=> (not res!465789) (not e!660417))))

(declare-fun lt!356928 () Bool)

(assert (=> b!1037022 (= res!465789 (not lt!356928))))

(declare-fun b!1037023 () Bool)

(declare-fun res!465784 () Bool)

(assert (=> b!1037023 (=> res!465784 e!660414)))

(declare-fun tail!1489 (List!10110) List!10110)

(assert (=> b!1037023 (= res!465784 (not (isEmpty!6490 (tail!1489 s!10566))))))

(declare-fun b!1037024 () Bool)

(declare-fun e!660419 () Bool)

(declare-fun derivativeStep!772 (Regex!2880 C!6330) Regex!2880)

(assert (=> b!1037024 (= e!660419 (matchR!1416 (derivativeStep!772 r!15766 (head!1927 s!10566)) (tail!1489 s!10566)))))

(declare-fun b!1037025 () Bool)

(declare-fun e!660415 () Bool)

(declare-fun e!660418 () Bool)

(assert (=> b!1037025 (= e!660415 e!660418)))

(declare-fun c!172150 () Bool)

(assert (=> b!1037025 (= c!172150 (is-EmptyLang!2880 r!15766))))

(declare-fun b!1037026 () Bool)

(assert (=> b!1037026 (= e!660417 e!660414)))

(declare-fun res!465785 () Bool)

(assert (=> b!1037026 (=> res!465785 e!660414)))

(assert (=> b!1037026 (= res!465785 call!71796)))

(declare-fun b!1037027 () Bool)

(assert (=> b!1037027 (= e!660416 (= (head!1927 s!10566) (c!172125 r!15766)))))

(declare-fun b!1037028 () Bool)

(assert (=> b!1037028 (= e!660418 (not lt!356928))))

(declare-fun b!1037029 () Bool)

(assert (=> b!1037029 (= e!660415 (= lt!356928 call!71796))))

(declare-fun d!296380 () Bool)

(assert (=> d!296380 e!660415))

(declare-fun c!172151 () Bool)

(assert (=> d!296380 (= c!172151 (is-EmptyExpr!2880 r!15766))))

(assert (=> d!296380 (= lt!356928 e!660419)))

(declare-fun c!172149 () Bool)

(assert (=> d!296380 (= c!172149 (isEmpty!6490 s!10566))))

(assert (=> d!296380 (validRegex!1349 r!15766)))

(assert (=> d!296380 (= (matchR!1416 r!15766 s!10566) lt!356928)))

(declare-fun b!1037019 () Bool)

(declare-fun res!465787 () Bool)

(assert (=> b!1037019 (=> res!465787 e!660413)))

(assert (=> b!1037019 (= res!465787 (not (is-ElementMatch!2880 r!15766)))))

(assert (=> b!1037019 (= e!660418 e!660413)))

(declare-fun b!1037030 () Bool)

(declare-fun res!465786 () Bool)

(assert (=> b!1037030 (=> (not res!465786) (not e!660416))))

(assert (=> b!1037030 (= res!465786 (isEmpty!6490 (tail!1489 s!10566)))))

(declare-fun bm!71791 () Bool)

(assert (=> bm!71791 (= call!71796 (isEmpty!6490 s!10566))))

(declare-fun b!1037031 () Bool)

(declare-fun res!465791 () Bool)

(assert (=> b!1037031 (=> res!465791 e!660413)))

(assert (=> b!1037031 (= res!465791 e!660416)))

(declare-fun res!465788 () Bool)

(assert (=> b!1037031 (=> (not res!465788) (not e!660416))))

(assert (=> b!1037031 (= res!465788 lt!356928)))

(declare-fun b!1037032 () Bool)

(declare-fun nullable!972 (Regex!2880) Bool)

(assert (=> b!1037032 (= e!660419 (nullable!972 r!15766))))

(assert (= (and d!296380 c!172149) b!1037032))

(assert (= (and d!296380 (not c!172149)) b!1037024))

(assert (= (and d!296380 c!172151) b!1037029))

(assert (= (and d!296380 (not c!172151)) b!1037025))

(assert (= (and b!1037025 c!172150) b!1037028))

(assert (= (and b!1037025 (not c!172150)) b!1037019))

(assert (= (and b!1037019 (not res!465787)) b!1037031))

(assert (= (and b!1037031 res!465788) b!1037021))

(assert (= (and b!1037021 res!465790) b!1037030))

(assert (= (and b!1037030 res!465786) b!1037027))

(assert (= (and b!1037031 (not res!465791)) b!1037022))

(assert (= (and b!1037022 res!465789) b!1037026))

(assert (= (and b!1037026 (not res!465785)) b!1037023))

(assert (= (and b!1037023 (not res!465784)) b!1037020))

(assert (= (or b!1037029 b!1037021 b!1037026) bm!71791))

(declare-fun m!1207299 () Bool)

(assert (=> b!1037032 m!1207299))

(declare-fun m!1207301 () Bool)

(assert (=> b!1037024 m!1207301))

(assert (=> b!1037024 m!1207301))

(declare-fun m!1207303 () Bool)

(assert (=> b!1037024 m!1207303))

(declare-fun m!1207305 () Bool)

(assert (=> b!1037024 m!1207305))

(assert (=> b!1037024 m!1207303))

(assert (=> b!1037024 m!1207305))

(declare-fun m!1207307 () Bool)

(assert (=> b!1037024 m!1207307))

(assert (=> d!296380 m!1207231))

(assert (=> d!296380 m!1207255))

(assert (=> b!1037020 m!1207301))

(assert (=> b!1037027 m!1207301))

(assert (=> bm!71791 m!1207231))

(assert (=> b!1037030 m!1207305))

(assert (=> b!1037030 m!1207305))

(declare-fun m!1207309 () Bool)

(assert (=> b!1037030 m!1207309))

(assert (=> b!1037023 m!1207305))

(assert (=> b!1037023 m!1207305))

(assert (=> b!1037023 m!1207309))

(assert (=> b!1036875 d!296380))

(declare-fun d!296382 () Bool)

(assert (=> d!296382 (= (matchR!1416 r!15766 s!10566) (matchRSpec!679 r!15766 s!10566))))

(declare-fun lt!356931 () Unit!15435)

(declare-fun choose!6622 (Regex!2880 List!10110) Unit!15435)

(assert (=> d!296382 (= lt!356931 (choose!6622 r!15766 s!10566))))

(assert (=> d!296382 (validRegex!1349 r!15766)))

(assert (=> d!296382 (= (mainMatchTheorem!679 r!15766 s!10566) lt!356931)))

(declare-fun bs!247701 () Bool)

(assert (= bs!247701 d!296382))

(assert (=> bs!247701 m!1207237))

(assert (=> bs!247701 m!1207235))

(declare-fun m!1207311 () Bool)

(assert (=> bs!247701 m!1207311))

(assert (=> bs!247701 m!1207255))

(assert (=> b!1036875 d!296382))

(declare-fun b!1037069 () Bool)

(declare-fun e!660453 () Bool)

(declare-fun e!660452 () Bool)

(assert (=> b!1037069 (= e!660453 e!660452)))

(declare-fun c!172160 () Bool)

(assert (=> b!1037069 (= c!172160 (is-Union!2880 r!15766))))

(declare-fun b!1037070 () Bool)

(declare-fun e!660448 () Bool)

(declare-fun call!71809 () Bool)

(assert (=> b!1037070 (= e!660448 call!71809)))

(declare-fun b!1037071 () Bool)

(declare-fun res!465813 () Bool)

(declare-fun e!660454 () Bool)

(assert (=> b!1037071 (=> (not res!465813) (not e!660454))))

(declare-fun call!71811 () Bool)

(assert (=> b!1037071 (= res!465813 call!71811)))

(assert (=> b!1037071 (= e!660452 e!660454)))

(declare-fun b!1037072 () Bool)

(declare-fun e!660450 () Bool)

(assert (=> b!1037072 (= e!660450 e!660453)))

(declare-fun c!172161 () Bool)

(assert (=> b!1037072 (= c!172161 (is-Star!2880 r!15766))))

(declare-fun b!1037073 () Bool)

(declare-fun e!660449 () Bool)

(assert (=> b!1037073 (= e!660449 e!660448)))

(declare-fun res!465814 () Bool)

(assert (=> b!1037073 (=> (not res!465814) (not e!660448))))

(assert (=> b!1037073 (= res!465814 call!71811)))

(declare-fun b!1037074 () Bool)

(declare-fun e!660451 () Bool)

(assert (=> b!1037074 (= e!660453 e!660451)))

(declare-fun res!465816 () Bool)

(assert (=> b!1037074 (= res!465816 (not (nullable!972 (reg!3209 r!15766))))))

(assert (=> b!1037074 (=> (not res!465816) (not e!660451))))

(declare-fun d!296384 () Bool)

(declare-fun res!465812 () Bool)

(assert (=> d!296384 (=> res!465812 e!660450)))

(assert (=> d!296384 (= res!465812 (is-ElementMatch!2880 r!15766))))

(assert (=> d!296384 (= (validRegex!1349 r!15766) e!660450)))

(declare-fun bm!71804 () Bool)

(declare-fun call!71810 () Bool)

(assert (=> bm!71804 (= call!71809 call!71810)))

(declare-fun b!1037075 () Bool)

(assert (=> b!1037075 (= e!660454 call!71809)))

(declare-fun b!1037076 () Bool)

(assert (=> b!1037076 (= e!660451 call!71810)))

(declare-fun bm!71805 () Bool)

(assert (=> bm!71805 (= call!71811 (validRegex!1349 (ite c!172160 (regOne!6273 r!15766) (regOne!6272 r!15766))))))

(declare-fun b!1037077 () Bool)

(declare-fun res!465815 () Bool)

(assert (=> b!1037077 (=> res!465815 e!660449)))

(assert (=> b!1037077 (= res!465815 (not (is-Concat!4713 r!15766)))))

(assert (=> b!1037077 (= e!660452 e!660449)))

(declare-fun bm!71806 () Bool)

(assert (=> bm!71806 (= call!71810 (validRegex!1349 (ite c!172161 (reg!3209 r!15766) (ite c!172160 (regTwo!6273 r!15766) (regTwo!6272 r!15766)))))))

(assert (= (and d!296384 (not res!465812)) b!1037072))

(assert (= (and b!1037072 c!172161) b!1037074))

(assert (= (and b!1037072 (not c!172161)) b!1037069))

(assert (= (and b!1037074 res!465816) b!1037076))

(assert (= (and b!1037069 c!172160) b!1037071))

(assert (= (and b!1037069 (not c!172160)) b!1037077))

(assert (= (and b!1037071 res!465813) b!1037075))

(assert (= (and b!1037077 (not res!465815)) b!1037073))

(assert (= (and b!1037073 res!465814) b!1037070))

(assert (= (or b!1037075 b!1037070) bm!71804))

(assert (= (or b!1037071 b!1037073) bm!71805))

(assert (= (or b!1037076 bm!71804) bm!71806))

(declare-fun m!1207325 () Bool)

(assert (=> b!1037074 m!1207325))

(declare-fun m!1207327 () Bool)

(assert (=> bm!71805 m!1207327))

(declare-fun m!1207329 () Bool)

(assert (=> bm!71806 m!1207329))

(assert (=> start!90220 d!296384))

(declare-fun b!1037079 () Bool)

(declare-fun e!660456 () Bool)

(assert (=> b!1037079 (= e!660456 (not (= (head!1927 s!10566) (c!172125 lt!356898))))))

(declare-fun b!1037080 () Bool)

(declare-fun res!465823 () Bool)

(declare-fun e!660458 () Bool)

(assert (=> b!1037080 (=> (not res!465823) (not e!660458))))

(declare-fun call!71812 () Bool)

(assert (=> b!1037080 (= res!465823 (not call!71812))))

(declare-fun b!1037081 () Bool)

(declare-fun e!660455 () Bool)

(declare-fun e!660459 () Bool)

(assert (=> b!1037081 (= e!660455 e!660459)))

(declare-fun res!465822 () Bool)

(assert (=> b!1037081 (=> (not res!465822) (not e!660459))))

(declare-fun lt!356932 () Bool)

(assert (=> b!1037081 (= res!465822 (not lt!356932))))

(declare-fun b!1037082 () Bool)

(declare-fun res!465817 () Bool)

(assert (=> b!1037082 (=> res!465817 e!660456)))

(assert (=> b!1037082 (= res!465817 (not (isEmpty!6490 (tail!1489 s!10566))))))

(declare-fun b!1037083 () Bool)

(declare-fun e!660461 () Bool)

(assert (=> b!1037083 (= e!660461 (matchR!1416 (derivativeStep!772 lt!356898 (head!1927 s!10566)) (tail!1489 s!10566)))))

(declare-fun b!1037084 () Bool)

(declare-fun e!660457 () Bool)

(declare-fun e!660460 () Bool)

(assert (=> b!1037084 (= e!660457 e!660460)))

(declare-fun c!172163 () Bool)

(assert (=> b!1037084 (= c!172163 (is-EmptyLang!2880 lt!356898))))

(declare-fun b!1037085 () Bool)

(assert (=> b!1037085 (= e!660459 e!660456)))

(declare-fun res!465818 () Bool)

(assert (=> b!1037085 (=> res!465818 e!660456)))

(assert (=> b!1037085 (= res!465818 call!71812)))

(declare-fun b!1037086 () Bool)

(assert (=> b!1037086 (= e!660458 (= (head!1927 s!10566) (c!172125 lt!356898)))))

(declare-fun b!1037087 () Bool)

(assert (=> b!1037087 (= e!660460 (not lt!356932))))

(declare-fun b!1037088 () Bool)

(assert (=> b!1037088 (= e!660457 (= lt!356932 call!71812))))

(declare-fun d!296390 () Bool)

(assert (=> d!296390 e!660457))

(declare-fun c!172164 () Bool)

(assert (=> d!296390 (= c!172164 (is-EmptyExpr!2880 lt!356898))))

(assert (=> d!296390 (= lt!356932 e!660461)))

(declare-fun c!172162 () Bool)

(assert (=> d!296390 (= c!172162 (isEmpty!6490 s!10566))))

(assert (=> d!296390 (validRegex!1349 lt!356898)))

(assert (=> d!296390 (= (matchR!1416 lt!356898 s!10566) lt!356932)))

(declare-fun b!1037078 () Bool)

(declare-fun res!465820 () Bool)

(assert (=> b!1037078 (=> res!465820 e!660455)))

(assert (=> b!1037078 (= res!465820 (not (is-ElementMatch!2880 lt!356898)))))

(assert (=> b!1037078 (= e!660460 e!660455)))

(declare-fun b!1037089 () Bool)

(declare-fun res!465819 () Bool)

(assert (=> b!1037089 (=> (not res!465819) (not e!660458))))

(assert (=> b!1037089 (= res!465819 (isEmpty!6490 (tail!1489 s!10566)))))

(declare-fun bm!71807 () Bool)

(assert (=> bm!71807 (= call!71812 (isEmpty!6490 s!10566))))

(declare-fun b!1037090 () Bool)

(declare-fun res!465824 () Bool)

(assert (=> b!1037090 (=> res!465824 e!660455)))

(assert (=> b!1037090 (= res!465824 e!660458)))

(declare-fun res!465821 () Bool)

(assert (=> b!1037090 (=> (not res!465821) (not e!660458))))

(assert (=> b!1037090 (= res!465821 lt!356932)))

(declare-fun b!1037091 () Bool)

(assert (=> b!1037091 (= e!660461 (nullable!972 lt!356898))))

(assert (= (and d!296390 c!172162) b!1037091))

(assert (= (and d!296390 (not c!172162)) b!1037083))

(assert (= (and d!296390 c!172164) b!1037088))

(assert (= (and d!296390 (not c!172164)) b!1037084))

(assert (= (and b!1037084 c!172163) b!1037087))

(assert (= (and b!1037084 (not c!172163)) b!1037078))

(assert (= (and b!1037078 (not res!465820)) b!1037090))

(assert (= (and b!1037090 res!465821) b!1037080))

(assert (= (and b!1037080 res!465823) b!1037089))

(assert (= (and b!1037089 res!465819) b!1037086))

(assert (= (and b!1037090 (not res!465824)) b!1037081))

(assert (= (and b!1037081 res!465822) b!1037085))

(assert (= (and b!1037085 (not res!465818)) b!1037082))

(assert (= (and b!1037082 (not res!465817)) b!1037079))

(assert (= (or b!1037088 b!1037080 b!1037085) bm!71807))

(declare-fun m!1207331 () Bool)

(assert (=> b!1037091 m!1207331))

(assert (=> b!1037083 m!1207301))

(assert (=> b!1037083 m!1207301))

(declare-fun m!1207333 () Bool)

(assert (=> b!1037083 m!1207333))

(assert (=> b!1037083 m!1207305))

(assert (=> b!1037083 m!1207333))

(assert (=> b!1037083 m!1207305))

(declare-fun m!1207335 () Bool)

(assert (=> b!1037083 m!1207335))

(assert (=> d!296390 m!1207231))

(declare-fun m!1207337 () Bool)

(assert (=> d!296390 m!1207337))

(assert (=> b!1037079 m!1207301))

(assert (=> b!1037086 m!1207301))

(assert (=> bm!71807 m!1207231))

(assert (=> b!1037089 m!1207305))

(assert (=> b!1037089 m!1207305))

(assert (=> b!1037089 m!1207309))

(assert (=> b!1037082 m!1207305))

(assert (=> b!1037082 m!1207305))

(assert (=> b!1037082 m!1207309))

(assert (=> b!1036879 d!296390))

(declare-fun b!1037136 () Bool)

(declare-fun c!172183 () Bool)

(assert (=> b!1037136 (= c!172183 (is-Concat!4713 (regTwo!6272 r!15766)))))

(declare-fun e!660492 () Regex!2880)

(declare-fun e!660491 () Regex!2880)

(assert (=> b!1037136 (= e!660492 e!660491)))

(declare-fun b!1037137 () Bool)

(declare-fun call!71827 () Regex!2880)

(declare-fun call!71826 () Regex!2880)

(assert (=> b!1037137 (= e!660491 (Concat!4713 call!71827 call!71826))))

(declare-fun b!1037138 () Bool)

(declare-fun e!660488 () Regex!2880)

(declare-fun call!71823 () Regex!2880)

(assert (=> b!1037138 (= e!660488 call!71823)))

(declare-fun b!1037139 () Bool)

(declare-fun call!71824 () Regex!2880)

(assert (=> b!1037139 (= e!660492 call!71824)))

(declare-fun d!296392 () Bool)

(declare-fun e!660489 () Bool)

(assert (=> d!296392 e!660489))

(declare-fun res!465833 () Bool)

(assert (=> d!296392 (=> (not res!465833) (not e!660489))))

(declare-fun lt!356935 () Regex!2880)

(assert (=> d!296392 (= res!465833 (validRegex!1349 lt!356935))))

(assert (=> d!296392 (= lt!356935 e!660488)))

(declare-fun c!172186 () Bool)

(assert (=> d!296392 (= c!172186 (and (is-Concat!4713 (regTwo!6272 r!15766)) (is-EmptyExpr!2880 (regOne!6272 (regTwo!6272 r!15766)))))))

(assert (=> d!296392 (validRegex!1349 (regTwo!6272 r!15766))))

(assert (=> d!296392 (= (removeUselessConcat!429 (regTwo!6272 r!15766)) lt!356935)))

(declare-fun b!1037140 () Bool)

(assert (=> b!1037140 (= e!660489 (= (nullable!972 lt!356935) (nullable!972 (regTwo!6272 r!15766))))))

(declare-fun c!172185 () Bool)

(declare-fun bm!71818 () Bool)

(assert (=> bm!71818 (= call!71823 (removeUselessConcat!429 (ite c!172186 (regTwo!6272 (regTwo!6272 r!15766)) (ite c!172185 (regOne!6272 (regTwo!6272 r!15766)) (ite c!172183 (regTwo!6272 (regTwo!6272 r!15766)) (regOne!6273 (regTwo!6272 r!15766)))))))))

(declare-fun b!1037141 () Bool)

(declare-fun e!660490 () Regex!2880)

(assert (=> b!1037141 (= e!660490 (regTwo!6272 r!15766))))

(declare-fun b!1037142 () Bool)

(declare-fun c!172184 () Bool)

(assert (=> b!1037142 (= c!172184 (is-Star!2880 (regTwo!6272 r!15766)))))

(declare-fun e!660493 () Regex!2880)

(assert (=> b!1037142 (= e!660493 e!660490)))

(declare-fun bm!71819 () Bool)

(declare-fun call!71825 () Regex!2880)

(assert (=> bm!71819 (= call!71825 call!71827)))

(declare-fun b!1037143 () Bool)

(assert (=> b!1037143 (= e!660488 e!660492)))

(assert (=> b!1037143 (= c!172185 (and (is-Concat!4713 (regTwo!6272 r!15766)) (is-EmptyExpr!2880 (regTwo!6272 (regTwo!6272 r!15766)))))))

(declare-fun b!1037144 () Bool)

(assert (=> b!1037144 (= e!660491 e!660493)))

(declare-fun c!172187 () Bool)

(assert (=> b!1037144 (= c!172187 (is-Union!2880 (regTwo!6272 r!15766)))))

(declare-fun b!1037145 () Bool)

(assert (=> b!1037145 (= e!660490 (Star!2880 call!71825))))

(declare-fun bm!71820 () Bool)

(assert (=> bm!71820 (= call!71827 (removeUselessConcat!429 (ite c!172183 (regOne!6272 (regTwo!6272 r!15766)) (ite c!172187 (regTwo!6273 (regTwo!6272 r!15766)) (reg!3209 (regTwo!6272 r!15766))))))))

(declare-fun bm!71821 () Bool)

(assert (=> bm!71821 (= call!71824 call!71823)))

(declare-fun b!1037146 () Bool)

(assert (=> b!1037146 (= e!660493 (Union!2880 call!71826 call!71825))))

(declare-fun bm!71822 () Bool)

(assert (=> bm!71822 (= call!71826 call!71824)))

(assert (= (and d!296392 c!172186) b!1037138))

(assert (= (and d!296392 (not c!172186)) b!1037143))

(assert (= (and b!1037143 c!172185) b!1037139))

(assert (= (and b!1037143 (not c!172185)) b!1037136))

(assert (= (and b!1037136 c!172183) b!1037137))

(assert (= (and b!1037136 (not c!172183)) b!1037144))

(assert (= (and b!1037144 c!172187) b!1037146))

(assert (= (and b!1037144 (not c!172187)) b!1037142))

(assert (= (and b!1037142 c!172184) b!1037145))

(assert (= (and b!1037142 (not c!172184)) b!1037141))

(assert (= (or b!1037146 b!1037145) bm!71819))

(assert (= (or b!1037137 b!1037146) bm!71822))

(assert (= (or b!1037137 bm!71819) bm!71820))

(assert (= (or b!1037139 bm!71822) bm!71821))

(assert (= (or b!1037138 bm!71821) bm!71818))

(assert (= (and d!296392 res!465833) b!1037140))

(declare-fun m!1207339 () Bool)

(assert (=> d!296392 m!1207339))

(declare-fun m!1207341 () Bool)

(assert (=> d!296392 m!1207341))

(declare-fun m!1207343 () Bool)

(assert (=> b!1037140 m!1207343))

(declare-fun m!1207345 () Bool)

(assert (=> b!1037140 m!1207345))

(declare-fun m!1207347 () Bool)

(assert (=> bm!71818 m!1207347))

(declare-fun m!1207349 () Bool)

(assert (=> bm!71820 m!1207349))

(assert (=> b!1036879 d!296392))

(declare-fun b!1037147 () Bool)

(declare-fun c!172188 () Bool)

(assert (=> b!1037147 (= c!172188 (is-Concat!4713 (regOne!6272 r!15766)))))

(declare-fun e!660498 () Regex!2880)

(declare-fun e!660497 () Regex!2880)

(assert (=> b!1037147 (= e!660498 e!660497)))

(declare-fun b!1037148 () Bool)

(declare-fun call!71832 () Regex!2880)

(declare-fun call!71831 () Regex!2880)

(assert (=> b!1037148 (= e!660497 (Concat!4713 call!71832 call!71831))))

(declare-fun b!1037149 () Bool)

(declare-fun e!660494 () Regex!2880)

(declare-fun call!71828 () Regex!2880)

(assert (=> b!1037149 (= e!660494 call!71828)))

(declare-fun b!1037150 () Bool)

(declare-fun call!71829 () Regex!2880)

(assert (=> b!1037150 (= e!660498 call!71829)))

(declare-fun d!296394 () Bool)

(declare-fun e!660495 () Bool)

(assert (=> d!296394 e!660495))

(declare-fun res!465834 () Bool)

(assert (=> d!296394 (=> (not res!465834) (not e!660495))))

(declare-fun lt!356936 () Regex!2880)

(assert (=> d!296394 (= res!465834 (validRegex!1349 lt!356936))))

(assert (=> d!296394 (= lt!356936 e!660494)))

(declare-fun c!172191 () Bool)

(assert (=> d!296394 (= c!172191 (and (is-Concat!4713 (regOne!6272 r!15766)) (is-EmptyExpr!2880 (regOne!6272 (regOne!6272 r!15766)))))))

(assert (=> d!296394 (validRegex!1349 (regOne!6272 r!15766))))

(assert (=> d!296394 (= (removeUselessConcat!429 (regOne!6272 r!15766)) lt!356936)))

(declare-fun b!1037151 () Bool)

(assert (=> b!1037151 (= e!660495 (= (nullable!972 lt!356936) (nullable!972 (regOne!6272 r!15766))))))

(declare-fun c!172190 () Bool)

(declare-fun bm!71823 () Bool)

(assert (=> bm!71823 (= call!71828 (removeUselessConcat!429 (ite c!172191 (regTwo!6272 (regOne!6272 r!15766)) (ite c!172190 (regOne!6272 (regOne!6272 r!15766)) (ite c!172188 (regTwo!6272 (regOne!6272 r!15766)) (regOne!6273 (regOne!6272 r!15766)))))))))

(declare-fun b!1037152 () Bool)

(declare-fun e!660496 () Regex!2880)

(assert (=> b!1037152 (= e!660496 (regOne!6272 r!15766))))

(declare-fun b!1037153 () Bool)

(declare-fun c!172189 () Bool)

(assert (=> b!1037153 (= c!172189 (is-Star!2880 (regOne!6272 r!15766)))))

(declare-fun e!660499 () Regex!2880)

(assert (=> b!1037153 (= e!660499 e!660496)))

(declare-fun bm!71824 () Bool)

(declare-fun call!71830 () Regex!2880)

(assert (=> bm!71824 (= call!71830 call!71832)))

(declare-fun b!1037154 () Bool)

(assert (=> b!1037154 (= e!660494 e!660498)))

(assert (=> b!1037154 (= c!172190 (and (is-Concat!4713 (regOne!6272 r!15766)) (is-EmptyExpr!2880 (regTwo!6272 (regOne!6272 r!15766)))))))

(declare-fun b!1037155 () Bool)

(assert (=> b!1037155 (= e!660497 e!660499)))

(declare-fun c!172192 () Bool)

(assert (=> b!1037155 (= c!172192 (is-Union!2880 (regOne!6272 r!15766)))))

(declare-fun b!1037156 () Bool)

(assert (=> b!1037156 (= e!660496 (Star!2880 call!71830))))

(declare-fun bm!71825 () Bool)

(assert (=> bm!71825 (= call!71832 (removeUselessConcat!429 (ite c!172188 (regOne!6272 (regOne!6272 r!15766)) (ite c!172192 (regTwo!6273 (regOne!6272 r!15766)) (reg!3209 (regOne!6272 r!15766))))))))

(declare-fun bm!71826 () Bool)

(assert (=> bm!71826 (= call!71829 call!71828)))

(declare-fun b!1037157 () Bool)

(assert (=> b!1037157 (= e!660499 (Union!2880 call!71831 call!71830))))

(declare-fun bm!71827 () Bool)

(assert (=> bm!71827 (= call!71831 call!71829)))

(assert (= (and d!296394 c!172191) b!1037149))

(assert (= (and d!296394 (not c!172191)) b!1037154))

(assert (= (and b!1037154 c!172190) b!1037150))

(assert (= (and b!1037154 (not c!172190)) b!1037147))

(assert (= (and b!1037147 c!172188) b!1037148))

(assert (= (and b!1037147 (not c!172188)) b!1037155))

(assert (= (and b!1037155 c!172192) b!1037157))

(assert (= (and b!1037155 (not c!172192)) b!1037153))

(assert (= (and b!1037153 c!172189) b!1037156))

(assert (= (and b!1037153 (not c!172189)) b!1037152))

(assert (= (or b!1037157 b!1037156) bm!71824))

(assert (= (or b!1037148 b!1037157) bm!71827))

(assert (= (or b!1037148 bm!71824) bm!71825))

(assert (= (or b!1037150 bm!71827) bm!71826))

(assert (= (or b!1037149 bm!71826) bm!71823))

(assert (= (and d!296394 res!465834) b!1037151))

(declare-fun m!1207351 () Bool)

(assert (=> d!296394 m!1207351))

(declare-fun m!1207353 () Bool)

(assert (=> d!296394 m!1207353))

(declare-fun m!1207355 () Bool)

(assert (=> b!1037151 m!1207355))

(declare-fun m!1207357 () Bool)

(assert (=> b!1037151 m!1207357))

(declare-fun m!1207359 () Bool)

(assert (=> bm!71823 m!1207359))

(declare-fun m!1207361 () Bool)

(assert (=> bm!71825 m!1207361))

(assert (=> b!1036879 d!296394))

(declare-fun b!1037164 () Bool)

(declare-fun e!660507 () Bool)

(declare-fun e!660506 () Bool)

(assert (=> b!1037164 (= e!660507 e!660506)))

(declare-fun c!172193 () Bool)

(assert (=> b!1037164 (= c!172193 (is-Union!2880 lt!356900))))

(declare-fun b!1037165 () Bool)

(declare-fun e!660502 () Bool)

(declare-fun call!71833 () Bool)

(assert (=> b!1037165 (= e!660502 call!71833)))

(declare-fun b!1037166 () Bool)

(declare-fun res!465842 () Bool)

(declare-fun e!660508 () Bool)

(assert (=> b!1037166 (=> (not res!465842) (not e!660508))))

(declare-fun call!71835 () Bool)

(assert (=> b!1037166 (= res!465842 call!71835)))

(assert (=> b!1037166 (= e!660506 e!660508)))

(declare-fun b!1037167 () Bool)

(declare-fun e!660504 () Bool)

(assert (=> b!1037167 (= e!660504 e!660507)))

(declare-fun c!172194 () Bool)

(assert (=> b!1037167 (= c!172194 (is-Star!2880 lt!356900))))

(declare-fun b!1037168 () Bool)

(declare-fun e!660503 () Bool)

(assert (=> b!1037168 (= e!660503 e!660502)))

(declare-fun res!465843 () Bool)

(assert (=> b!1037168 (=> (not res!465843) (not e!660502))))

(assert (=> b!1037168 (= res!465843 call!71835)))

(declare-fun b!1037169 () Bool)

(declare-fun e!660505 () Bool)

(assert (=> b!1037169 (= e!660507 e!660505)))

(declare-fun res!465845 () Bool)

(assert (=> b!1037169 (= res!465845 (not (nullable!972 (reg!3209 lt!356900))))))

(assert (=> b!1037169 (=> (not res!465845) (not e!660505))))

(declare-fun d!296396 () Bool)

(declare-fun res!465841 () Bool)

(assert (=> d!296396 (=> res!465841 e!660504)))

(assert (=> d!296396 (= res!465841 (is-ElementMatch!2880 lt!356900))))

(assert (=> d!296396 (= (validRegex!1349 lt!356900) e!660504)))

(declare-fun bm!71828 () Bool)

(declare-fun call!71834 () Bool)

(assert (=> bm!71828 (= call!71833 call!71834)))

(declare-fun b!1037170 () Bool)

(assert (=> b!1037170 (= e!660508 call!71833)))

(declare-fun b!1037171 () Bool)

(assert (=> b!1037171 (= e!660505 call!71834)))

(declare-fun bm!71829 () Bool)

(assert (=> bm!71829 (= call!71835 (validRegex!1349 (ite c!172193 (regOne!6273 lt!356900) (regOne!6272 lt!356900))))))

(declare-fun b!1037172 () Bool)

(declare-fun res!465844 () Bool)

(assert (=> b!1037172 (=> res!465844 e!660503)))

(assert (=> b!1037172 (= res!465844 (not (is-Concat!4713 lt!356900)))))

(assert (=> b!1037172 (= e!660506 e!660503)))

(declare-fun bm!71830 () Bool)

(assert (=> bm!71830 (= call!71834 (validRegex!1349 (ite c!172194 (reg!3209 lt!356900) (ite c!172193 (regTwo!6273 lt!356900) (regTwo!6272 lt!356900)))))))

(assert (= (and d!296396 (not res!465841)) b!1037167))

(assert (= (and b!1037167 c!172194) b!1037169))

(assert (= (and b!1037167 (not c!172194)) b!1037164))

(assert (= (and b!1037169 res!465845) b!1037171))

(assert (= (and b!1037164 c!172193) b!1037166))

(assert (= (and b!1037164 (not c!172193)) b!1037172))

(assert (= (and b!1037166 res!465842) b!1037170))

(assert (= (and b!1037172 (not res!465844)) b!1037168))

(assert (= (and b!1037168 res!465843) b!1037165))

(assert (= (or b!1037170 b!1037165) bm!71828))

(assert (= (or b!1037166 b!1037168) bm!71829))

(assert (= (or b!1037171 bm!71828) bm!71830))

(declare-fun m!1207363 () Bool)

(assert (=> b!1037169 m!1207363))

(declare-fun m!1207365 () Bool)

(assert (=> bm!71829 m!1207365))

(declare-fun m!1207367 () Bool)

(assert (=> bm!71830 m!1207367))

(assert (=> b!1036878 d!296396))

(declare-fun bs!247702 () Bool)

(declare-fun b!1037181 () Bool)

(assert (= bs!247702 (and b!1037181 b!1036872)))

(declare-fun lambda!37373 () Int)

(assert (=> bs!247702 (not (= lambda!37373 lambda!37355))))

(assert (=> bs!247702 (not (= lambda!37373 lambda!37356))))

(declare-fun bs!247703 () Bool)

(assert (= bs!247703 (and b!1037181 b!1036970)))

(assert (=> bs!247703 (= (and (= (reg!3209 lt!356898) (reg!3209 r!15766)) (= lt!356898 r!15766)) (= lambda!37373 lambda!37369))))

(declare-fun bs!247704 () Bool)

(assert (= bs!247704 (and b!1037181 b!1036966)))

(assert (=> bs!247704 (not (= lambda!37373 lambda!37370))))

(assert (=> b!1037181 true))

(assert (=> b!1037181 true))

(declare-fun bs!247705 () Bool)

(declare-fun b!1037177 () Bool)

(assert (= bs!247705 (and b!1037177 b!1036970)))

(declare-fun lambda!37374 () Int)

(assert (=> bs!247705 (not (= lambda!37374 lambda!37369))))

(declare-fun bs!247706 () Bool)

(assert (= bs!247706 (and b!1037177 b!1037181)))

(assert (=> bs!247706 (not (= lambda!37374 lambda!37373))))

(declare-fun bs!247707 () Bool)

(assert (= bs!247707 (and b!1037177 b!1036872)))

(assert (=> bs!247707 (not (= lambda!37374 lambda!37355))))

(assert (=> bs!247707 (= (and (= (regOne!6272 lt!356898) (regOne!6272 r!15766)) (= (regTwo!6272 lt!356898) (regTwo!6272 r!15766))) (= lambda!37374 lambda!37356))))

(declare-fun bs!247708 () Bool)

(assert (= bs!247708 (and b!1037177 b!1036966)))

(assert (=> bs!247708 (= (and (= (regOne!6272 lt!356898) (regOne!6272 r!15766)) (= (regTwo!6272 lt!356898) (regTwo!6272 r!15766))) (= lambda!37374 lambda!37370))))

(assert (=> b!1037177 true))

(assert (=> b!1037177 true))

(declare-fun b!1037173 () Bool)

(declare-fun e!660509 () Bool)

(declare-fun call!71836 () Bool)

(assert (=> b!1037173 (= e!660509 call!71836)))

(declare-fun b!1037174 () Bool)

(declare-fun c!172198 () Bool)

(assert (=> b!1037174 (= c!172198 (is-Union!2880 lt!356898))))

(declare-fun e!660514 () Bool)

(declare-fun e!660513 () Bool)

(assert (=> b!1037174 (= e!660514 e!660513)))

(declare-fun b!1037175 () Bool)

(declare-fun e!660512 () Bool)

(assert (=> b!1037175 (= e!660513 e!660512)))

(declare-fun res!465847 () Bool)

(assert (=> b!1037175 (= res!465847 (matchRSpec!679 (regOne!6273 lt!356898) s!10566))))

(assert (=> b!1037175 (=> res!465847 e!660512)))

(declare-fun b!1037176 () Bool)

(declare-fun e!660511 () Bool)

(assert (=> b!1037176 (= e!660509 e!660511)))

(declare-fun res!465846 () Bool)

(assert (=> b!1037176 (= res!465846 (not (is-EmptyLang!2880 lt!356898)))))

(assert (=> b!1037176 (=> (not res!465846) (not e!660511))))

(declare-fun e!660510 () Bool)

(declare-fun call!71837 () Bool)

(assert (=> b!1037177 (= e!660510 call!71837)))

(declare-fun b!1037178 () Bool)

(declare-fun c!172197 () Bool)

(assert (=> b!1037178 (= c!172197 (is-ElementMatch!2880 lt!356898))))

(assert (=> b!1037178 (= e!660511 e!660514)))

(declare-fun c!172195 () Bool)

(declare-fun bm!71831 () Bool)

(assert (=> bm!71831 (= call!71837 (Exists!607 (ite c!172195 lambda!37373 lambda!37374)))))

(declare-fun b!1037179 () Bool)

(assert (=> b!1037179 (= e!660513 e!660510)))

(assert (=> b!1037179 (= c!172195 (is-Star!2880 lt!356898))))

(declare-fun b!1037180 () Bool)

(declare-fun res!465848 () Bool)

(declare-fun e!660515 () Bool)

(assert (=> b!1037180 (=> res!465848 e!660515)))

(assert (=> b!1037180 (= res!465848 call!71836)))

(assert (=> b!1037180 (= e!660510 e!660515)))

(declare-fun d!296398 () Bool)

(declare-fun c!172196 () Bool)

(assert (=> d!296398 (= c!172196 (is-EmptyExpr!2880 lt!356898))))

(assert (=> d!296398 (= (matchRSpec!679 lt!356898 s!10566) e!660509)))

(assert (=> b!1037181 (= e!660515 call!71837)))

(declare-fun b!1037182 () Bool)

(assert (=> b!1037182 (= e!660514 (= s!10566 (Cons!10094 (c!172125 lt!356898) Nil!10094)))))

(declare-fun b!1037183 () Bool)

(assert (=> b!1037183 (= e!660512 (matchRSpec!679 (regTwo!6273 lt!356898) s!10566))))

(declare-fun bm!71832 () Bool)

(assert (=> bm!71832 (= call!71836 (isEmpty!6490 s!10566))))

(assert (= (and d!296398 c!172196) b!1037173))

(assert (= (and d!296398 (not c!172196)) b!1037176))

(assert (= (and b!1037176 res!465846) b!1037178))

(assert (= (and b!1037178 c!172197) b!1037182))

(assert (= (and b!1037178 (not c!172197)) b!1037174))

(assert (= (and b!1037174 c!172198) b!1037175))

(assert (= (and b!1037174 (not c!172198)) b!1037179))

(assert (= (and b!1037175 (not res!465847)) b!1037183))

(assert (= (and b!1037179 c!172195) b!1037180))

(assert (= (and b!1037179 (not c!172195)) b!1037177))

(assert (= (and b!1037180 (not res!465848)) b!1037181))

(assert (= (or b!1037181 b!1037177) bm!71831))

(assert (= (or b!1037173 b!1037180) bm!71832))

(declare-fun m!1207369 () Bool)

(assert (=> b!1037175 m!1207369))

(declare-fun m!1207371 () Bool)

(assert (=> bm!71831 m!1207371))

(declare-fun m!1207373 () Bool)

(assert (=> b!1037183 m!1207373))

(assert (=> bm!71832 m!1207231))

(assert (=> b!1036878 d!296398))

(declare-fun d!296400 () Bool)

(assert (=> d!296400 (= (matchR!1416 lt!356898 s!10566) (matchRSpec!679 lt!356898 s!10566))))

(declare-fun lt!356937 () Unit!15435)

(assert (=> d!296400 (= lt!356937 (choose!6622 lt!356898 s!10566))))

(assert (=> d!296400 (validRegex!1349 lt!356898)))

(assert (=> d!296400 (= (mainMatchTheorem!679 lt!356898 s!10566) lt!356937)))

(declare-fun bs!247709 () Bool)

(assert (= bs!247709 d!296400))

(assert (=> bs!247709 m!1207241))

(assert (=> bs!247709 m!1207251))

(declare-fun m!1207375 () Bool)

(assert (=> bs!247709 m!1207375))

(assert (=> bs!247709 m!1207337))

(assert (=> b!1036878 d!296400))

(declare-fun d!296402 () Bool)

(declare-fun choose!6623 (Int) Bool)

(assert (=> d!296402 (= (Exists!607 lambda!37356) (choose!6623 lambda!37356))))

(declare-fun bs!247710 () Bool)

(assert (= bs!247710 d!296402))

(declare-fun m!1207377 () Bool)

(assert (=> bs!247710 m!1207377))

(assert (=> b!1036872 d!296402))

(declare-fun d!296404 () Bool)

(assert (=> d!296404 (= (isEmpty!6490 s!10566) (is-Nil!10094 s!10566))))

(assert (=> b!1036872 d!296404))

(declare-fun d!296406 () Bool)

(declare-fun isEmpty!6492 (Option!2405) Bool)

(assert (=> d!296406 (= (isDefined!2047 (findConcatSeparation!511 (regOne!6272 r!15766) (regTwo!6272 r!15766) Nil!10094 s!10566 s!10566)) (not (isEmpty!6492 (findConcatSeparation!511 (regOne!6272 r!15766) (regTwo!6272 r!15766) Nil!10094 s!10566 s!10566))))))

(declare-fun bs!247711 () Bool)

(assert (= bs!247711 d!296406))

(assert (=> bs!247711 m!1207225))

(declare-fun m!1207379 () Bool)

(assert (=> bs!247711 m!1207379))

(assert (=> b!1036872 d!296406))

(declare-fun d!296408 () Bool)

(assert (=> d!296408 (= (Exists!607 lambda!37355) (choose!6623 lambda!37355))))

(declare-fun bs!247712 () Bool)

(assert (= bs!247712 d!296408))

(declare-fun m!1207381 () Bool)

(assert (=> bs!247712 m!1207381))

(assert (=> b!1036872 d!296408))

(declare-fun bs!247713 () Bool)

(declare-fun d!296410 () Bool)

(assert (= bs!247713 (and d!296410 b!1036970)))

(declare-fun lambda!37379 () Int)

(assert (=> bs!247713 (not (= lambda!37379 lambda!37369))))

(declare-fun bs!247714 () Bool)

(assert (= bs!247714 (and d!296410 b!1037181)))

(assert (=> bs!247714 (not (= lambda!37379 lambda!37373))))

(declare-fun bs!247715 () Bool)

(assert (= bs!247715 (and d!296410 b!1037177)))

(assert (=> bs!247715 (not (= lambda!37379 lambda!37374))))

(declare-fun bs!247716 () Bool)

(assert (= bs!247716 (and d!296410 b!1036872)))

(assert (=> bs!247716 (= lambda!37379 lambda!37355)))

(assert (=> bs!247716 (not (= lambda!37379 lambda!37356))))

(declare-fun bs!247717 () Bool)

(assert (= bs!247717 (and d!296410 b!1036966)))

(assert (=> bs!247717 (not (= lambda!37379 lambda!37370))))

(assert (=> d!296410 true))

(assert (=> d!296410 true))

(assert (=> d!296410 true))

(assert (=> d!296410 (= (isDefined!2047 (findConcatSeparation!511 (regOne!6272 r!15766) (regTwo!6272 r!15766) Nil!10094 s!10566 s!10566)) (Exists!607 lambda!37379))))

(declare-fun lt!356940 () Unit!15435)

(declare-fun choose!6624 (Regex!2880 Regex!2880 List!10110) Unit!15435)

(assert (=> d!296410 (= lt!356940 (choose!6624 (regOne!6272 r!15766) (regTwo!6272 r!15766) s!10566))))

(assert (=> d!296410 (validRegex!1349 (regOne!6272 r!15766))))

(assert (=> d!296410 (= (lemmaFindConcatSeparationEquivalentToExists!511 (regOne!6272 r!15766) (regTwo!6272 r!15766) s!10566) lt!356940)))

(declare-fun bs!247718 () Bool)

(assert (= bs!247718 d!296410))

(assert (=> bs!247718 m!1207225))

(declare-fun m!1207383 () Bool)

(assert (=> bs!247718 m!1207383))

(assert (=> bs!247718 m!1207353))

(assert (=> bs!247718 m!1207225))

(assert (=> bs!247718 m!1207227))

(declare-fun m!1207385 () Bool)

(assert (=> bs!247718 m!1207385))

(assert (=> b!1036872 d!296410))

(declare-fun b!1037221 () Bool)

(declare-fun res!465874 () Bool)

(declare-fun e!660539 () Bool)

(assert (=> b!1037221 (=> (not res!465874) (not e!660539))))

(declare-fun lt!356950 () Option!2405)

(declare-fun get!3598 (Option!2405) tuple2!11526)

(assert (=> b!1037221 (= res!465874 (matchR!1416 (regTwo!6272 r!15766) (_2!6589 (get!3598 lt!356950))))))

(declare-fun b!1037222 () Bool)

(declare-fun e!660540 () Option!2405)

(declare-fun e!660541 () Option!2405)

(assert (=> b!1037222 (= e!660540 e!660541)))

(declare-fun c!172207 () Bool)

(assert (=> b!1037222 (= c!172207 (is-Nil!10094 s!10566))))

(declare-fun b!1037223 () Bool)

(declare-fun res!465873 () Bool)

(assert (=> b!1037223 (=> (not res!465873) (not e!660539))))

(assert (=> b!1037223 (= res!465873 (matchR!1416 (regOne!6272 r!15766) (_1!6589 (get!3598 lt!356950))))))

(declare-fun b!1037224 () Bool)

(declare-fun e!660537 () Bool)

(assert (=> b!1037224 (= e!660537 (matchR!1416 (regTwo!6272 r!15766) s!10566))))

(declare-fun b!1037225 () Bool)

(declare-fun e!660538 () Bool)

(assert (=> b!1037225 (= e!660538 (not (isDefined!2047 lt!356950)))))

(declare-fun b!1037226 () Bool)

(assert (=> b!1037226 (= e!660540 (Some!2404 (tuple2!11527 Nil!10094 s!10566)))))

(declare-fun b!1037227 () Bool)

(declare-fun lt!356949 () Unit!15435)

(declare-fun lt!356951 () Unit!15435)

(assert (=> b!1037227 (= lt!356949 lt!356951)))

(declare-fun ++!2780 (List!10110 List!10110) List!10110)

(assert (=> b!1037227 (= (++!2780 (++!2780 Nil!10094 (Cons!10094 (h!15495 s!10566) Nil!10094)) (t!101156 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!373 (List!10110 C!6330 List!10110 List!10110) Unit!15435)

(assert (=> b!1037227 (= lt!356951 (lemmaMoveElementToOtherListKeepsConcatEq!373 Nil!10094 (h!15495 s!10566) (t!101156 s!10566) s!10566))))

(assert (=> b!1037227 (= e!660541 (findConcatSeparation!511 (regOne!6272 r!15766) (regTwo!6272 r!15766) (++!2780 Nil!10094 (Cons!10094 (h!15495 s!10566) Nil!10094)) (t!101156 s!10566) s!10566))))

(declare-fun d!296412 () Bool)

(assert (=> d!296412 e!660538))

(declare-fun res!465872 () Bool)

(assert (=> d!296412 (=> res!465872 e!660538)))

(assert (=> d!296412 (= res!465872 e!660539)))

(declare-fun res!465870 () Bool)

(assert (=> d!296412 (=> (not res!465870) (not e!660539))))

(assert (=> d!296412 (= res!465870 (isDefined!2047 lt!356950))))

(assert (=> d!296412 (= lt!356950 e!660540)))

(declare-fun c!172208 () Bool)

(assert (=> d!296412 (= c!172208 e!660537)))

(declare-fun res!465871 () Bool)

(assert (=> d!296412 (=> (not res!465871) (not e!660537))))

(assert (=> d!296412 (= res!465871 (matchR!1416 (regOne!6272 r!15766) Nil!10094))))

(assert (=> d!296412 (validRegex!1349 (regOne!6272 r!15766))))

(assert (=> d!296412 (= (findConcatSeparation!511 (regOne!6272 r!15766) (regTwo!6272 r!15766) Nil!10094 s!10566 s!10566) lt!356950)))

(declare-fun b!1037228 () Bool)

(assert (=> b!1037228 (= e!660539 (= (++!2780 (_1!6589 (get!3598 lt!356950)) (_2!6589 (get!3598 lt!356950))) s!10566))))

(declare-fun b!1037229 () Bool)

(assert (=> b!1037229 (= e!660541 None!2404)))

(assert (= (and d!296412 res!465871) b!1037224))

(assert (= (and d!296412 c!172208) b!1037226))

(assert (= (and d!296412 (not c!172208)) b!1037222))

(assert (= (and b!1037222 c!172207) b!1037229))

(assert (= (and b!1037222 (not c!172207)) b!1037227))

(assert (= (and d!296412 res!465870) b!1037223))

(assert (= (and b!1037223 res!465873) b!1037221))

(assert (= (and b!1037221 res!465874) b!1037228))

(assert (= (and d!296412 (not res!465872)) b!1037225))

(declare-fun m!1207393 () Bool)

(assert (=> b!1037225 m!1207393))

(declare-fun m!1207395 () Bool)

(assert (=> b!1037227 m!1207395))

(assert (=> b!1037227 m!1207395))

(declare-fun m!1207397 () Bool)

(assert (=> b!1037227 m!1207397))

(declare-fun m!1207399 () Bool)

(assert (=> b!1037227 m!1207399))

(assert (=> b!1037227 m!1207395))

(declare-fun m!1207405 () Bool)

(assert (=> b!1037227 m!1207405))

(declare-fun m!1207407 () Bool)

(assert (=> b!1037223 m!1207407))

(declare-fun m!1207409 () Bool)

(assert (=> b!1037223 m!1207409))

(assert (=> b!1037228 m!1207407))

(declare-fun m!1207411 () Bool)

(assert (=> b!1037228 m!1207411))

(declare-fun m!1207413 () Bool)

(assert (=> b!1037224 m!1207413))

(assert (=> d!296412 m!1207393))

(declare-fun m!1207415 () Bool)

(assert (=> d!296412 m!1207415))

(assert (=> d!296412 m!1207353))

(assert (=> b!1037221 m!1207407))

(declare-fun m!1207417 () Bool)

(assert (=> b!1037221 m!1207417))

(assert (=> b!1036872 d!296412))

(declare-fun bs!247723 () Bool)

(declare-fun d!296418 () Bool)

(assert (= bs!247723 (and d!296418 b!1036970)))

(declare-fun lambda!37386 () Int)

(assert (=> bs!247723 (not (= lambda!37386 lambda!37369))))

(declare-fun bs!247724 () Bool)

(assert (= bs!247724 (and d!296418 b!1037181)))

(assert (=> bs!247724 (not (= lambda!37386 lambda!37373))))

(declare-fun bs!247725 () Bool)

(assert (= bs!247725 (and d!296418 b!1037177)))

(assert (=> bs!247725 (not (= lambda!37386 lambda!37374))))

(declare-fun bs!247726 () Bool)

(assert (= bs!247726 (and d!296418 d!296410)))

(assert (=> bs!247726 (= lambda!37386 lambda!37379)))

(declare-fun bs!247727 () Bool)

(assert (= bs!247727 (and d!296418 b!1036872)))

(assert (=> bs!247727 (= lambda!37386 lambda!37355)))

(assert (=> bs!247727 (not (= lambda!37386 lambda!37356))))

(declare-fun bs!247728 () Bool)

(assert (= bs!247728 (and d!296418 b!1036966)))

(assert (=> bs!247728 (not (= lambda!37386 lambda!37370))))

(assert (=> d!296418 true))

(assert (=> d!296418 true))

(assert (=> d!296418 true))

(declare-fun lambda!37387 () Int)

(assert (=> bs!247723 (not (= lambda!37387 lambda!37369))))

(assert (=> bs!247724 (not (= lambda!37387 lambda!37373))))

(assert (=> bs!247725 (= (and (= (regOne!6272 r!15766) (regOne!6272 lt!356898)) (= (regTwo!6272 r!15766) (regTwo!6272 lt!356898))) (= lambda!37387 lambda!37374))))

(declare-fun bs!247729 () Bool)

(assert (= bs!247729 d!296418))

(assert (=> bs!247729 (not (= lambda!37387 lambda!37386))))

(assert (=> bs!247726 (not (= lambda!37387 lambda!37379))))

(assert (=> bs!247727 (not (= lambda!37387 lambda!37355))))

(assert (=> bs!247727 (= lambda!37387 lambda!37356)))

(assert (=> bs!247728 (= lambda!37387 lambda!37370)))

(assert (=> d!296418 true))

(assert (=> d!296418 true))

(assert (=> d!296418 true))

(assert (=> d!296418 (= (Exists!607 lambda!37386) (Exists!607 lambda!37387))))

(declare-fun lt!356955 () Unit!15435)

(declare-fun choose!6625 (Regex!2880 Regex!2880 List!10110) Unit!15435)

(assert (=> d!296418 (= lt!356955 (choose!6625 (regOne!6272 r!15766) (regTwo!6272 r!15766) s!10566))))

(assert (=> d!296418 (validRegex!1349 (regOne!6272 r!15766))))

(assert (=> d!296418 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!295 (regOne!6272 r!15766) (regTwo!6272 r!15766) s!10566) lt!356955)))

(declare-fun m!1207419 () Bool)

(assert (=> bs!247729 m!1207419))

(declare-fun m!1207421 () Bool)

(assert (=> bs!247729 m!1207421))

(declare-fun m!1207423 () Bool)

(assert (=> bs!247729 m!1207423))

(assert (=> bs!247729 m!1207353))

(assert (=> b!1036872 d!296418))

(declare-fun b!1037252 () Bool)

(declare-fun e!660559 () Bool)

(declare-fun e!660558 () Bool)

(assert (=> b!1037252 (= e!660559 e!660558)))

(declare-fun c!172215 () Bool)

(assert (=> b!1037252 (= c!172215 (is-Union!2880 lt!356901))))

(declare-fun b!1037253 () Bool)

(declare-fun e!660554 () Bool)

(declare-fun call!71844 () Bool)

(assert (=> b!1037253 (= e!660554 call!71844)))

(declare-fun b!1037254 () Bool)

(declare-fun res!465886 () Bool)

(declare-fun e!660560 () Bool)

(assert (=> b!1037254 (=> (not res!465886) (not e!660560))))

(declare-fun call!71846 () Bool)

(assert (=> b!1037254 (= res!465886 call!71846)))

(assert (=> b!1037254 (= e!660558 e!660560)))

(declare-fun b!1037255 () Bool)

(declare-fun e!660556 () Bool)

(assert (=> b!1037255 (= e!660556 e!660559)))

(declare-fun c!172216 () Bool)

(assert (=> b!1037255 (= c!172216 (is-Star!2880 lt!356901))))

(declare-fun b!1037256 () Bool)

(declare-fun e!660555 () Bool)

(assert (=> b!1037256 (= e!660555 e!660554)))

(declare-fun res!465887 () Bool)

(assert (=> b!1037256 (=> (not res!465887) (not e!660554))))

(assert (=> b!1037256 (= res!465887 call!71846)))

(declare-fun b!1037257 () Bool)

(declare-fun e!660557 () Bool)

(assert (=> b!1037257 (= e!660559 e!660557)))

(declare-fun res!465891 () Bool)

(assert (=> b!1037257 (= res!465891 (not (nullable!972 (reg!3209 lt!356901))))))

(assert (=> b!1037257 (=> (not res!465891) (not e!660557))))

(declare-fun d!296420 () Bool)

(declare-fun res!465885 () Bool)

(assert (=> d!296420 (=> res!465885 e!660556)))

(assert (=> d!296420 (= res!465885 (is-ElementMatch!2880 lt!356901))))

(assert (=> d!296420 (= (validRegex!1349 lt!356901) e!660556)))

(declare-fun bm!71839 () Bool)

(declare-fun call!71845 () Bool)

(assert (=> bm!71839 (= call!71844 call!71845)))

(declare-fun b!1037258 () Bool)

(assert (=> b!1037258 (= e!660560 call!71844)))

(declare-fun b!1037259 () Bool)

(assert (=> b!1037259 (= e!660557 call!71845)))

(declare-fun bm!71840 () Bool)

(assert (=> bm!71840 (= call!71846 (validRegex!1349 (ite c!172215 (regOne!6273 lt!356901) (regOne!6272 lt!356901))))))

(declare-fun b!1037260 () Bool)

(declare-fun res!465890 () Bool)

(assert (=> b!1037260 (=> res!465890 e!660555)))

(assert (=> b!1037260 (= res!465890 (not (is-Concat!4713 lt!356901)))))

(assert (=> b!1037260 (= e!660558 e!660555)))

(declare-fun bm!71841 () Bool)

(assert (=> bm!71841 (= call!71845 (validRegex!1349 (ite c!172216 (reg!3209 lt!356901) (ite c!172215 (regTwo!6273 lt!356901) (regTwo!6272 lt!356901)))))))

(assert (= (and d!296420 (not res!465885)) b!1037255))

(assert (= (and b!1037255 c!172216) b!1037257))

(assert (= (and b!1037255 (not c!172216)) b!1037252))

(assert (= (and b!1037257 res!465891) b!1037259))

(assert (= (and b!1037252 c!172215) b!1037254))

(assert (= (and b!1037252 (not c!172215)) b!1037260))

(assert (= (and b!1037254 res!465886) b!1037258))

(assert (= (and b!1037260 (not res!465890)) b!1037256))

(assert (= (and b!1037256 res!465887) b!1037253))

(assert (= (or b!1037258 b!1037253) bm!71839))

(assert (= (or b!1037254 b!1037256) bm!71840))

(assert (= (or b!1037259 bm!71839) bm!71841))

(declare-fun m!1207425 () Bool)

(assert (=> b!1037257 m!1207425))

(declare-fun m!1207427 () Bool)

(assert (=> bm!71840 m!1207427))

(declare-fun m!1207429 () Bool)

(assert (=> bm!71841 m!1207429))

(assert (=> b!1036877 d!296420))

(declare-fun b!1037288 () Bool)

(declare-fun e!660569 () Bool)

(declare-fun tp!313664 () Bool)

(declare-fun tp!313667 () Bool)

(assert (=> b!1037288 (= e!660569 (and tp!313664 tp!313667))))

(assert (=> b!1036870 (= tp!313634 e!660569)))

(declare-fun b!1037287 () Bool)

(declare-fun tp!313666 () Bool)

(assert (=> b!1037287 (= e!660569 tp!313666)))

(declare-fun b!1037286 () Bool)

(declare-fun tp!313665 () Bool)

(declare-fun tp!313663 () Bool)

(assert (=> b!1037286 (= e!660569 (and tp!313665 tp!313663))))

(declare-fun b!1037285 () Bool)

(assert (=> b!1037285 (= e!660569 tp_is_empty!5403)))

(assert (= (and b!1036870 (is-ElementMatch!2880 (reg!3209 r!15766))) b!1037285))

(assert (= (and b!1036870 (is-Concat!4713 (reg!3209 r!15766))) b!1037286))

(assert (= (and b!1036870 (is-Star!2880 (reg!3209 r!15766))) b!1037287))

(assert (= (and b!1036870 (is-Union!2880 (reg!3209 r!15766))) b!1037288))

(declare-fun b!1037293 () Bool)

(declare-fun e!660572 () Bool)

(declare-fun tp!313670 () Bool)

(assert (=> b!1037293 (= e!660572 (and tp_is_empty!5403 tp!313670))))

(assert (=> b!1036874 (= tp!313632 e!660572)))

(assert (= (and b!1036874 (is-Cons!10094 (t!101156 s!10566))) b!1037293))

(declare-fun b!1037297 () Bool)

(declare-fun e!660573 () Bool)

(declare-fun tp!313672 () Bool)

(declare-fun tp!313675 () Bool)

(assert (=> b!1037297 (= e!660573 (and tp!313672 tp!313675))))

(assert (=> b!1036873 (= tp!313633 e!660573)))

(declare-fun b!1037296 () Bool)

(declare-fun tp!313674 () Bool)

(assert (=> b!1037296 (= e!660573 tp!313674)))

(declare-fun b!1037295 () Bool)

(declare-fun tp!313673 () Bool)

(declare-fun tp!313671 () Bool)

(assert (=> b!1037295 (= e!660573 (and tp!313673 tp!313671))))

(declare-fun b!1037294 () Bool)

(assert (=> b!1037294 (= e!660573 tp_is_empty!5403)))

(assert (= (and b!1036873 (is-ElementMatch!2880 (regOne!6273 r!15766))) b!1037294))

(assert (= (and b!1036873 (is-Concat!4713 (regOne!6273 r!15766))) b!1037295))

(assert (= (and b!1036873 (is-Star!2880 (regOne!6273 r!15766))) b!1037296))

(assert (= (and b!1036873 (is-Union!2880 (regOne!6273 r!15766))) b!1037297))

(declare-fun b!1037301 () Bool)

(declare-fun e!660574 () Bool)

(declare-fun tp!313677 () Bool)

(declare-fun tp!313680 () Bool)

(assert (=> b!1037301 (= e!660574 (and tp!313677 tp!313680))))

(assert (=> b!1036873 (= tp!313631 e!660574)))

(declare-fun b!1037300 () Bool)

(declare-fun tp!313679 () Bool)

(assert (=> b!1037300 (= e!660574 tp!313679)))

(declare-fun b!1037299 () Bool)

(declare-fun tp!313678 () Bool)

(declare-fun tp!313676 () Bool)

(assert (=> b!1037299 (= e!660574 (and tp!313678 tp!313676))))

(declare-fun b!1037298 () Bool)

(assert (=> b!1037298 (= e!660574 tp_is_empty!5403)))

(assert (= (and b!1036873 (is-ElementMatch!2880 (regTwo!6273 r!15766))) b!1037298))

(assert (= (and b!1036873 (is-Concat!4713 (regTwo!6273 r!15766))) b!1037299))

(assert (= (and b!1036873 (is-Star!2880 (regTwo!6273 r!15766))) b!1037300))

(assert (= (and b!1036873 (is-Union!2880 (regTwo!6273 r!15766))) b!1037301))

(declare-fun b!1037305 () Bool)

(declare-fun e!660575 () Bool)

(declare-fun tp!313682 () Bool)

(declare-fun tp!313685 () Bool)

(assert (=> b!1037305 (= e!660575 (and tp!313682 tp!313685))))

(assert (=> b!1036876 (= tp!313630 e!660575)))

(declare-fun b!1037304 () Bool)

(declare-fun tp!313684 () Bool)

(assert (=> b!1037304 (= e!660575 tp!313684)))

(declare-fun b!1037303 () Bool)

(declare-fun tp!313683 () Bool)

(declare-fun tp!313681 () Bool)

(assert (=> b!1037303 (= e!660575 (and tp!313683 tp!313681))))

(declare-fun b!1037302 () Bool)

(assert (=> b!1037302 (= e!660575 tp_is_empty!5403)))

(assert (= (and b!1036876 (is-ElementMatch!2880 (regOne!6272 r!15766))) b!1037302))

(assert (= (and b!1036876 (is-Concat!4713 (regOne!6272 r!15766))) b!1037303))

(assert (= (and b!1036876 (is-Star!2880 (regOne!6272 r!15766))) b!1037304))

(assert (= (and b!1036876 (is-Union!2880 (regOne!6272 r!15766))) b!1037305))

(declare-fun b!1037309 () Bool)

(declare-fun e!660576 () Bool)

(declare-fun tp!313687 () Bool)

(declare-fun tp!313690 () Bool)

(assert (=> b!1037309 (= e!660576 (and tp!313687 tp!313690))))

(assert (=> b!1036876 (= tp!313629 e!660576)))

(declare-fun b!1037308 () Bool)

(declare-fun tp!313689 () Bool)

(assert (=> b!1037308 (= e!660576 tp!313689)))

(declare-fun b!1037307 () Bool)

(declare-fun tp!313688 () Bool)

(declare-fun tp!313686 () Bool)

(assert (=> b!1037307 (= e!660576 (and tp!313688 tp!313686))))

(declare-fun b!1037306 () Bool)

(assert (=> b!1037306 (= e!660576 tp_is_empty!5403)))

(assert (= (and b!1036876 (is-ElementMatch!2880 (regTwo!6272 r!15766))) b!1037306))

(assert (= (and b!1036876 (is-Concat!4713 (regTwo!6272 r!15766))) b!1037307))

(assert (= (and b!1036876 (is-Star!2880 (regTwo!6272 r!15766))) b!1037308))

(assert (= (and b!1036876 (is-Union!2880 (regTwo!6272 r!15766))) b!1037309))

(push 1)

(assert (not b!1037297))

(assert (not b!1037287))

(assert (not b!1037295))

(assert (not b!1037257))

(assert (not b!1037225))

(assert (not bm!71830))

(assert (not b!1037082))

(assert (not b!1037074))

(assert (not b!1037175))

(assert (not b!1037304))

(assert (not d!296400))

(assert (not b!1037032))

(assert (not d!296410))

(assert (not b!1037293))

(assert (not b!1037020))

(assert (not bm!71807))

(assert (not b!1037224))

(assert (not b!1037288))

(assert (not b!1037024))

(assert (not bm!71805))

(assert (not bm!71820))

(assert (not b!1037140))

(assert (not bm!71781))

(assert (not bm!71825))

(assert (not bm!71829))

(assert (not b!1036972))

(assert (not b!1037223))

(assert (not b!1037227))

(assert (not b!1037296))

(assert tp_is_empty!5403)

(assert (not bm!71831))

(assert (not b!1037089))

(assert (not bm!71791))

(assert (not bm!71823))

(assert (not bm!71841))

(assert (not bm!71832))

(assert (not b!1037305))

(assert (not d!296418))

(assert (not d!296390))

(assert (not d!296394))

(assert (not b!1037091))

(assert (not d!296382))

(assert (not b!1037183))

(assert (not bm!71818))

(assert (not b!1037309))

(assert (not b!1037303))

(assert (not b!1037301))

(assert (not b!1037307))

(assert (not d!296402))

(assert (not b!1037308))

(assert (not b!1037023))

(assert (not b!1036964))

(assert (not b!1037300))

(assert (not b!1037169))

(assert (not b!1037221))

(assert (not d!296412))

(assert (not d!296406))

(assert (not b!1037286))

(assert (not b!1037083))

(assert (not d!296392))

(assert (not b!1037079))

(assert (not b!1037299))

(assert (not d!296380))

(assert (not b!1037228))

(assert (not bm!71782))

(assert (not d!296408))

(assert (not b!1037030))

(assert (not bm!71840))

(assert (not b!1037086))

(assert (not b!1037151))

(assert (not bm!71806))

(assert (not b!1037027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


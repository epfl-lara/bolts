; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89424 () Bool)

(assert start!89424)

(declare-fun b!1027262 () Bool)

(assert (=> b!1027262 true))

(assert (=> b!1027262 true))

(declare-fun lambda!36716 () Int)

(declare-fun lambda!36715 () Int)

(assert (=> b!1027262 (not (= lambda!36716 lambda!36715))))

(assert (=> b!1027262 true))

(assert (=> b!1027262 true))

(declare-fun lt!355362 () Int)

(declare-fun b!1027260 () Bool)

(declare-datatypes ((C!6262 0))(
  ( (C!6263 (val!3379 Int)) )
))
(declare-datatypes ((Regex!2846 0))(
  ( (ElementMatch!2846 (c!170335 C!6262)) (Concat!4679 (regOne!6204 Regex!2846) (regTwo!6204 Regex!2846)) (EmptyExpr!2846) (Star!2846 (reg!3175 Regex!2846)) (EmptyLang!2846) (Union!2846 (regOne!6205 Regex!2846) (regTwo!6205 Regex!2846)) )
))
(declare-fun r!15766 () Regex!2846)

(declare-fun e!655283 () Bool)

(declare-fun lt!355360 () Int)

(declare-fun regexDepth!33 (Regex!2846) Int)

(assert (=> b!1027260 (= e!655283 (< (+ lt!355362 lt!355360) (+ (regexDepth!33 r!15766) lt!355360)))))

(declare-datatypes ((List!10076 0))(
  ( (Nil!10060) (Cons!10060 (h!15461 C!6262) (t!101122 List!10076)) )
))
(declare-fun s!10566 () List!10076)

(declare-fun size!7986 (List!10076) Int)

(assert (=> b!1027260 (= lt!355360 (size!7986 s!10566))))

(assert (=> b!1027260 (= lt!355362 (regexDepth!33 (regOne!6204 r!15766)))))

(declare-fun res!461501 () Bool)

(declare-fun e!655285 () Bool)

(assert (=> start!89424 (=> (not res!461501) (not e!655285))))

(declare-fun validRegex!1315 (Regex!2846) Bool)

(assert (=> start!89424 (= res!461501 (validRegex!1315 r!15766))))

(assert (=> start!89424 e!655285))

(declare-fun e!655284 () Bool)

(assert (=> start!89424 e!655284))

(declare-fun e!655286 () Bool)

(assert (=> start!89424 e!655286))

(declare-fun b!1027261 () Bool)

(declare-fun tp!311626 () Bool)

(assert (=> b!1027261 (= e!655284 tp!311626)))

(declare-fun e!655282 () Bool)

(assert (=> b!1027262 (= e!655282 e!655283)))

(declare-fun res!461500 () Bool)

(assert (=> b!1027262 (=> res!461500 e!655283)))

(declare-fun isEmpty!6429 (List!10076) Bool)

(assert (=> b!1027262 (= res!461500 (isEmpty!6429 s!10566))))

(declare-fun Exists!573 (Int) Bool)

(assert (=> b!1027262 (= (Exists!573 lambda!36715) (Exists!573 lambda!36716))))

(declare-datatypes ((Unit!15367 0))(
  ( (Unit!15368) )
))
(declare-fun lt!355356 () Unit!15367)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!269 (Regex!2846 Regex!2846 List!10076) Unit!15367)

(assert (=> b!1027262 (= lt!355356 (lemmaExistCutMatchRandMatchRSpecEquivalent!269 (regOne!6204 r!15766) EmptyExpr!2846 s!10566))))

(declare-datatypes ((tuple2!11466 0))(
  ( (tuple2!11467 (_1!6559 List!10076) (_2!6559 List!10076)) )
))
(declare-datatypes ((Option!2375 0))(
  ( (None!2374) (Some!2374 (v!19791 tuple2!11466)) )
))
(declare-fun lt!355358 () Option!2375)

(declare-fun isDefined!2017 (Option!2375) Bool)

(assert (=> b!1027262 (= (isDefined!2017 lt!355358) (Exists!573 lambda!36715))))

(declare-fun findConcatSeparation!481 (Regex!2846 Regex!2846 List!10076 List!10076 List!10076) Option!2375)

(assert (=> b!1027262 (= lt!355358 (findConcatSeparation!481 (regOne!6204 r!15766) EmptyExpr!2846 Nil!10060 s!10566 s!10566))))

(declare-fun lt!355359 () Unit!15367)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!481 (Regex!2846 Regex!2846 List!10076) Unit!15367)

(assert (=> b!1027262 (= lt!355359 (lemmaFindConcatSeparationEquivalentToExists!481 (regOne!6204 r!15766) EmptyExpr!2846 s!10566))))

(declare-fun b!1027263 () Bool)

(declare-fun tp!311628 () Bool)

(declare-fun tp!311630 () Bool)

(assert (=> b!1027263 (= e!655284 (and tp!311628 tp!311630))))

(declare-fun b!1027264 () Bool)

(declare-fun tp_is_empty!5335 () Bool)

(declare-fun tp!311625 () Bool)

(assert (=> b!1027264 (= e!655286 (and tp_is_empty!5335 tp!311625))))

(declare-fun b!1027265 () Bool)

(assert (=> b!1027265 (= e!655285 (not e!655282))))

(declare-fun res!461502 () Bool)

(assert (=> b!1027265 (=> res!461502 e!655282)))

(declare-fun lt!355361 () Bool)

(assert (=> b!1027265 (= res!461502 (or lt!355361 (and (is-Concat!4679 r!15766) (is-EmptyExpr!2846 (regOne!6204 r!15766))) (not (is-Concat!4679 r!15766)) (not (is-EmptyExpr!2846 (regTwo!6204 r!15766)))))))

(declare-fun matchRSpec!645 (Regex!2846 List!10076) Bool)

(assert (=> b!1027265 (= lt!355361 (matchRSpec!645 r!15766 s!10566))))

(declare-fun matchR!1382 (Regex!2846 List!10076) Bool)

(assert (=> b!1027265 (= lt!355361 (matchR!1382 r!15766 s!10566))))

(declare-fun lt!355357 () Unit!15367)

(declare-fun mainMatchTheorem!645 (Regex!2846 List!10076) Unit!15367)

(assert (=> b!1027265 (= lt!355357 (mainMatchTheorem!645 r!15766 s!10566))))

(declare-fun b!1027266 () Bool)

(declare-fun res!461499 () Bool)

(assert (=> b!1027266 (=> res!461499 e!655283)))

(assert (=> b!1027266 (= res!461499 (not (validRegex!1315 (regOne!6204 r!15766))))))

(declare-fun b!1027267 () Bool)

(assert (=> b!1027267 (= e!655284 tp_is_empty!5335)))

(declare-fun b!1027268 () Bool)

(declare-fun tp!311627 () Bool)

(declare-fun tp!311629 () Bool)

(assert (=> b!1027268 (= e!655284 (and tp!311627 tp!311629))))

(declare-fun b!1027269 () Bool)

(declare-fun res!461503 () Bool)

(assert (=> b!1027269 (=> res!461503 e!655283)))

(declare-fun isEmpty!6430 (Option!2375) Bool)

(assert (=> b!1027269 (= res!461503 (not (isEmpty!6430 lt!355358)))))

(assert (= (and start!89424 res!461501) b!1027265))

(assert (= (and b!1027265 (not res!461502)) b!1027262))

(assert (= (and b!1027262 (not res!461500)) b!1027269))

(assert (= (and b!1027269 (not res!461503)) b!1027266))

(assert (= (and b!1027266 (not res!461499)) b!1027260))

(assert (= (and start!89424 (is-ElementMatch!2846 r!15766)) b!1027267))

(assert (= (and start!89424 (is-Concat!4679 r!15766)) b!1027268))

(assert (= (and start!89424 (is-Star!2846 r!15766)) b!1027261))

(assert (= (and start!89424 (is-Union!2846 r!15766)) b!1027263))

(assert (= (and start!89424 (is-Cons!10060 s!10566)) b!1027264))

(declare-fun m!1202885 () Bool)

(assert (=> b!1027262 m!1202885))

(declare-fun m!1202887 () Bool)

(assert (=> b!1027262 m!1202887))

(declare-fun m!1202889 () Bool)

(assert (=> b!1027262 m!1202889))

(declare-fun m!1202891 () Bool)

(assert (=> b!1027262 m!1202891))

(assert (=> b!1027262 m!1202891))

(declare-fun m!1202893 () Bool)

(assert (=> b!1027262 m!1202893))

(declare-fun m!1202895 () Bool)

(assert (=> b!1027262 m!1202895))

(declare-fun m!1202897 () Bool)

(assert (=> b!1027262 m!1202897))

(declare-fun m!1202899 () Bool)

(assert (=> b!1027260 m!1202899))

(declare-fun m!1202901 () Bool)

(assert (=> b!1027260 m!1202901))

(declare-fun m!1202903 () Bool)

(assert (=> b!1027260 m!1202903))

(declare-fun m!1202905 () Bool)

(assert (=> b!1027269 m!1202905))

(declare-fun m!1202907 () Bool)

(assert (=> start!89424 m!1202907))

(declare-fun m!1202909 () Bool)

(assert (=> b!1027266 m!1202909))

(declare-fun m!1202911 () Bool)

(assert (=> b!1027265 m!1202911))

(declare-fun m!1202913 () Bool)

(assert (=> b!1027265 m!1202913))

(declare-fun m!1202915 () Bool)

(assert (=> b!1027265 m!1202915))

(push 1)

(assert (not b!1027265))

(assert (not start!89424))

(assert (not b!1027264))

(assert (not b!1027262))

(assert (not b!1027261))

(assert tp_is_empty!5335)

(assert (not b!1027263))

(assert (not b!1027260))

(assert (not b!1027266))

(assert (not b!1027269))

(assert (not b!1027268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!295207 () Bool)

(assert (=> d!295207 (= (isEmpty!6430 lt!355358) (not (is-Some!2374 lt!355358)))))

(assert (=> b!1027269 d!295207))

(declare-fun b!1027356 () Bool)

(declare-fun e!655335 () Option!2375)

(declare-fun e!655334 () Option!2375)

(assert (=> b!1027356 (= e!655335 e!655334)))

(declare-fun c!170345 () Bool)

(assert (=> b!1027356 (= c!170345 (is-Nil!10060 s!10566))))

(declare-fun b!1027357 () Bool)

(declare-fun e!655333 () Bool)

(declare-fun lt!355392 () Option!2375)

(assert (=> b!1027357 (= e!655333 (not (isDefined!2017 lt!355392)))))

(declare-fun b!1027359 () Bool)

(declare-fun lt!355391 () Unit!15367)

(declare-fun lt!355390 () Unit!15367)

(assert (=> b!1027359 (= lt!355391 lt!355390)))

(declare-fun ++!2756 (List!10076 List!10076) List!10076)

(assert (=> b!1027359 (= (++!2756 (++!2756 Nil!10060 (Cons!10060 (h!15461 s!10566) Nil!10060)) (t!101122 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!353 (List!10076 C!6262 List!10076 List!10076) Unit!15367)

(assert (=> b!1027359 (= lt!355390 (lemmaMoveElementToOtherListKeepsConcatEq!353 Nil!10060 (h!15461 s!10566) (t!101122 s!10566) s!10566))))

(assert (=> b!1027359 (= e!655334 (findConcatSeparation!481 (regOne!6204 r!15766) EmptyExpr!2846 (++!2756 Nil!10060 (Cons!10060 (h!15461 s!10566) Nil!10060)) (t!101122 s!10566) s!10566))))

(declare-fun b!1027360 () Bool)

(assert (=> b!1027360 (= e!655335 (Some!2374 (tuple2!11467 Nil!10060 s!10566)))))

(declare-fun b!1027361 () Bool)

(declare-fun e!655332 () Bool)

(assert (=> b!1027361 (= e!655332 (matchR!1382 EmptyExpr!2846 s!10566))))

(declare-fun b!1027362 () Bool)

(declare-fun res!461553 () Bool)

(declare-fun e!655336 () Bool)

(assert (=> b!1027362 (=> (not res!461553) (not e!655336))))

(declare-fun get!3561 (Option!2375) tuple2!11466)

(assert (=> b!1027362 (= res!461553 (matchR!1382 EmptyExpr!2846 (_2!6559 (get!3561 lt!355392))))))

(declare-fun b!1027358 () Bool)

(assert (=> b!1027358 (= e!655334 None!2374)))

(declare-fun d!295209 () Bool)

(assert (=> d!295209 e!655333))

(declare-fun res!461551 () Bool)

(assert (=> d!295209 (=> res!461551 e!655333)))

(assert (=> d!295209 (= res!461551 e!655336)))

(declare-fun res!461555 () Bool)

(assert (=> d!295209 (=> (not res!461555) (not e!655336))))

(assert (=> d!295209 (= res!461555 (isDefined!2017 lt!355392))))

(assert (=> d!295209 (= lt!355392 e!655335)))

(declare-fun c!170346 () Bool)

(assert (=> d!295209 (= c!170346 e!655332)))

(declare-fun res!461552 () Bool)

(assert (=> d!295209 (=> (not res!461552) (not e!655332))))

(assert (=> d!295209 (= res!461552 (matchR!1382 (regOne!6204 r!15766) Nil!10060))))

(assert (=> d!295209 (validRegex!1315 (regOne!6204 r!15766))))

(assert (=> d!295209 (= (findConcatSeparation!481 (regOne!6204 r!15766) EmptyExpr!2846 Nil!10060 s!10566 s!10566) lt!355392)))

(declare-fun b!1027363 () Bool)

(declare-fun res!461554 () Bool)

(assert (=> b!1027363 (=> (not res!461554) (not e!655336))))

(assert (=> b!1027363 (= res!461554 (matchR!1382 (regOne!6204 r!15766) (_1!6559 (get!3561 lt!355392))))))

(declare-fun b!1027364 () Bool)

(assert (=> b!1027364 (= e!655336 (= (++!2756 (_1!6559 (get!3561 lt!355392)) (_2!6559 (get!3561 lt!355392))) s!10566))))

(assert (= (and d!295209 res!461552) b!1027361))

(assert (= (and d!295209 c!170346) b!1027360))

(assert (= (and d!295209 (not c!170346)) b!1027356))

(assert (= (and b!1027356 c!170345) b!1027358))

(assert (= (and b!1027356 (not c!170345)) b!1027359))

(assert (= (and d!295209 res!461555) b!1027363))

(assert (= (and b!1027363 res!461554) b!1027362))

(assert (= (and b!1027362 res!461553) b!1027364))

(assert (= (and d!295209 (not res!461551)) b!1027357))

(declare-fun m!1202949 () Bool)

(assert (=> b!1027364 m!1202949))

(declare-fun m!1202951 () Bool)

(assert (=> b!1027364 m!1202951))

(declare-fun m!1202953 () Bool)

(assert (=> b!1027361 m!1202953))

(declare-fun m!1202955 () Bool)

(assert (=> d!295209 m!1202955))

(declare-fun m!1202957 () Bool)

(assert (=> d!295209 m!1202957))

(assert (=> d!295209 m!1202909))

(assert (=> b!1027357 m!1202955))

(assert (=> b!1027363 m!1202949))

(declare-fun m!1202959 () Bool)

(assert (=> b!1027363 m!1202959))

(declare-fun m!1202961 () Bool)

(assert (=> b!1027359 m!1202961))

(assert (=> b!1027359 m!1202961))

(declare-fun m!1202963 () Bool)

(assert (=> b!1027359 m!1202963))

(declare-fun m!1202965 () Bool)

(assert (=> b!1027359 m!1202965))

(assert (=> b!1027359 m!1202961))

(declare-fun m!1202967 () Bool)

(assert (=> b!1027359 m!1202967))

(assert (=> b!1027362 m!1202949))

(declare-fun m!1202969 () Bool)

(assert (=> b!1027362 m!1202969))

(assert (=> b!1027262 d!295209))

(declare-fun d!295213 () Bool)

(assert (=> d!295213 (= (isDefined!2017 lt!355358) (not (isEmpty!6430 lt!355358)))))

(declare-fun bs!247100 () Bool)

(assert (= bs!247100 d!295213))

(assert (=> bs!247100 m!1202905))

(assert (=> b!1027262 d!295213))

(declare-fun d!295215 () Bool)

(assert (=> d!295215 (= (isEmpty!6429 s!10566) (is-Nil!10060 s!10566))))

(assert (=> b!1027262 d!295215))

(declare-fun d!295217 () Bool)

(declare-fun choose!6527 (Int) Bool)

(assert (=> d!295217 (= (Exists!573 lambda!36716) (choose!6527 lambda!36716))))

(declare-fun bs!247101 () Bool)

(assert (= bs!247101 d!295217))

(declare-fun m!1202977 () Bool)

(assert (=> bs!247101 m!1202977))

(assert (=> b!1027262 d!295217))

(declare-fun bs!247102 () Bool)

(declare-fun d!295221 () Bool)

(assert (= bs!247102 (and d!295221 b!1027262)))

(declare-fun lambda!36727 () Int)

(assert (=> bs!247102 (= lambda!36727 lambda!36715)))

(assert (=> bs!247102 (not (= lambda!36727 lambda!36716))))

(assert (=> d!295221 true))

(assert (=> d!295221 true))

(assert (=> d!295221 true))

(assert (=> d!295221 (= (isDefined!2017 (findConcatSeparation!481 (regOne!6204 r!15766) EmptyExpr!2846 Nil!10060 s!10566 s!10566)) (Exists!573 lambda!36727))))

(declare-fun lt!355395 () Unit!15367)

(declare-fun choose!6528 (Regex!2846 Regex!2846 List!10076) Unit!15367)

(assert (=> d!295221 (= lt!355395 (choose!6528 (regOne!6204 r!15766) EmptyExpr!2846 s!10566))))

(assert (=> d!295221 (validRegex!1315 (regOne!6204 r!15766))))

(assert (=> d!295221 (= (lemmaFindConcatSeparationEquivalentToExists!481 (regOne!6204 r!15766) EmptyExpr!2846 s!10566) lt!355395)))

(declare-fun bs!247103 () Bool)

(assert (= bs!247103 d!295221))

(declare-fun m!1202985 () Bool)

(assert (=> bs!247103 m!1202985))

(declare-fun m!1202987 () Bool)

(assert (=> bs!247103 m!1202987))

(assert (=> bs!247103 m!1202909))

(assert (=> bs!247103 m!1202887))

(declare-fun m!1202989 () Bool)

(assert (=> bs!247103 m!1202989))

(assert (=> bs!247103 m!1202887))

(assert (=> b!1027262 d!295221))

(declare-fun bs!247104 () Bool)

(declare-fun d!295225 () Bool)

(assert (= bs!247104 (and d!295225 b!1027262)))

(declare-fun lambda!36734 () Int)

(assert (=> bs!247104 (= lambda!36734 lambda!36715)))

(assert (=> bs!247104 (not (= lambda!36734 lambda!36716))))

(declare-fun bs!247105 () Bool)

(assert (= bs!247105 (and d!295225 d!295221)))

(assert (=> bs!247105 (= lambda!36734 lambda!36727)))

(assert (=> d!295225 true))

(assert (=> d!295225 true))

(assert (=> d!295225 true))

(declare-fun lambda!36735 () Int)

(assert (=> bs!247104 (not (= lambda!36735 lambda!36715))))

(assert (=> bs!247104 (= lambda!36735 lambda!36716)))

(assert (=> bs!247105 (not (= lambda!36735 lambda!36727))))

(declare-fun bs!247106 () Bool)

(assert (= bs!247106 d!295225))

(assert (=> bs!247106 (not (= lambda!36735 lambda!36734))))

(assert (=> d!295225 true))

(assert (=> d!295225 true))

(assert (=> d!295225 true))

(assert (=> d!295225 (= (Exists!573 lambda!36734) (Exists!573 lambda!36735))))

(declare-fun lt!355398 () Unit!15367)

(declare-fun choose!6529 (Regex!2846 Regex!2846 List!10076) Unit!15367)

(assert (=> d!295225 (= lt!355398 (choose!6529 (regOne!6204 r!15766) EmptyExpr!2846 s!10566))))

(assert (=> d!295225 (validRegex!1315 (regOne!6204 r!15766))))

(assert (=> d!295225 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!269 (regOne!6204 r!15766) EmptyExpr!2846 s!10566) lt!355398)))

(declare-fun m!1202991 () Bool)

(assert (=> bs!247106 m!1202991))

(declare-fun m!1202993 () Bool)

(assert (=> bs!247106 m!1202993))

(declare-fun m!1202995 () Bool)

(assert (=> bs!247106 m!1202995))

(assert (=> bs!247106 m!1202909))

(assert (=> b!1027262 d!295225))

(declare-fun d!295227 () Bool)

(assert (=> d!295227 (= (Exists!573 lambda!36715) (choose!6527 lambda!36715))))

(declare-fun bs!247107 () Bool)

(assert (= bs!247107 d!295227))

(declare-fun m!1202997 () Bool)

(assert (=> bs!247107 m!1202997))

(assert (=> b!1027262 d!295227))

(declare-fun b!1027445 () Bool)

(declare-fun e!655390 () Bool)

(declare-fun e!655395 () Bool)

(assert (=> b!1027445 (= e!655390 e!655395)))

(declare-fun c!170364 () Bool)

(assert (=> b!1027445 (= c!170364 (is-Star!2846 r!15766))))

(declare-fun b!1027446 () Bool)

(declare-fun res!461608 () Bool)

(declare-fun e!655393 () Bool)

(assert (=> b!1027446 (=> res!461608 e!655393)))

(assert (=> b!1027446 (= res!461608 (not (is-Concat!4679 r!15766)))))

(declare-fun e!655392 () Bool)

(assert (=> b!1027446 (= e!655392 e!655393)))

(declare-fun b!1027447 () Bool)

(declare-fun e!655391 () Bool)

(declare-fun call!70630 () Bool)

(assert (=> b!1027447 (= e!655391 call!70630)))

(declare-fun b!1027448 () Bool)

(declare-fun e!655389 () Bool)

(assert (=> b!1027448 (= e!655393 e!655389)))

(declare-fun res!461604 () Bool)

(assert (=> b!1027448 (=> (not res!461604) (not e!655389))))

(declare-fun call!70631 () Bool)

(assert (=> b!1027448 (= res!461604 call!70631)))

(declare-fun b!1027449 () Bool)

(declare-fun e!655394 () Bool)

(assert (=> b!1027449 (= e!655395 e!655394)))

(declare-fun res!461606 () Bool)

(declare-fun nullable!943 (Regex!2846) Bool)

(assert (=> b!1027449 (= res!461606 (not (nullable!943 (reg!3175 r!15766))))))

(assert (=> b!1027449 (=> (not res!461606) (not e!655394))))

(declare-fun bm!70625 () Bool)

(declare-fun c!170363 () Bool)

(assert (=> bm!70625 (= call!70630 (validRegex!1315 (ite c!170363 (regTwo!6205 r!15766) (regTwo!6204 r!15766))))))

(declare-fun d!295229 () Bool)

(declare-fun res!461607 () Bool)

(assert (=> d!295229 (=> res!461607 e!655390)))

(assert (=> d!295229 (= res!461607 (is-ElementMatch!2846 r!15766))))

(assert (=> d!295229 (= (validRegex!1315 r!15766) e!655390)))

(declare-fun b!1027450 () Bool)

(assert (=> b!1027450 (= e!655389 call!70630)))

(declare-fun b!1027451 () Bool)

(assert (=> b!1027451 (= e!655395 e!655392)))

(assert (=> b!1027451 (= c!170363 (is-Union!2846 r!15766))))

(declare-fun bm!70626 () Bool)

(declare-fun call!70632 () Bool)

(assert (=> bm!70626 (= call!70632 (validRegex!1315 (ite c!170364 (reg!3175 r!15766) (ite c!170363 (regOne!6205 r!15766) (regOne!6204 r!15766)))))))

(declare-fun b!1027452 () Bool)

(declare-fun res!461605 () Bool)

(assert (=> b!1027452 (=> (not res!461605) (not e!655391))))

(assert (=> b!1027452 (= res!461605 call!70631)))

(assert (=> b!1027452 (= e!655392 e!655391)))

(declare-fun bm!70627 () Bool)

(assert (=> bm!70627 (= call!70631 call!70632)))

(declare-fun b!1027453 () Bool)

(assert (=> b!1027453 (= e!655394 call!70632)))

(assert (= (and d!295229 (not res!461607)) b!1027445))

(assert (= (and b!1027445 c!170364) b!1027449))

(assert (= (and b!1027445 (not c!170364)) b!1027451))

(assert (= (and b!1027449 res!461606) b!1027453))

(assert (= (and b!1027451 c!170363) b!1027452))

(assert (= (and b!1027451 (not c!170363)) b!1027446))

(assert (= (and b!1027452 res!461605) b!1027447))

(assert (= (and b!1027446 (not res!461608)) b!1027448))

(assert (= (and b!1027448 res!461604) b!1027450))

(assert (= (or b!1027447 b!1027450) bm!70625))

(assert (= (or b!1027452 b!1027448) bm!70627))

(assert (= (or b!1027453 bm!70627) bm!70626))

(declare-fun m!1202999 () Bool)

(assert (=> b!1027449 m!1202999))

(declare-fun m!1203001 () Bool)

(assert (=> bm!70625 m!1203001))

(declare-fun m!1203003 () Bool)

(assert (=> bm!70626 m!1203003))

(assert (=> start!89424 d!295229))

(declare-fun b!1027499 () Bool)

(declare-fun e!655431 () Int)

(declare-fun call!70652 () Int)

(assert (=> b!1027499 (= e!655431 (+ 1 call!70652))))

(declare-fun b!1027500 () Bool)

(declare-fun e!655426 () Bool)

(declare-fun e!655428 () Bool)

(assert (=> b!1027500 (= e!655426 e!655428)))

(declare-fun res!461619 () Bool)

(declare-fun lt!355401 () Int)

(declare-fun call!70651 () Int)

(assert (=> b!1027500 (= res!461619 (> lt!355401 call!70651))))

(assert (=> b!1027500 (=> (not res!461619) (not e!655428))))

(declare-fun b!1027501 () Bool)

(declare-fun e!655427 () Int)

(assert (=> b!1027501 (= e!655427 (+ 1 call!70652))))

(declare-fun b!1027502 () Bool)

(declare-fun e!655430 () Bool)

(declare-fun call!70656 () Int)

(assert (=> b!1027502 (= e!655430 (> lt!355401 call!70656))))

(declare-fun bm!70646 () Bool)

(declare-fun call!70654 () Int)

(declare-fun c!170385 () Bool)

(assert (=> bm!70646 (= call!70654 (regexDepth!33 (ite c!170385 (regTwo!6205 r!15766) (regTwo!6204 r!15766))))))

(declare-fun b!1027503 () Bool)

(declare-fun e!655429 () Int)

(declare-fun e!655432 () Int)

(assert (=> b!1027503 (= e!655429 e!655432)))

(declare-fun c!170384 () Bool)

(assert (=> b!1027503 (= c!170384 (is-Star!2846 r!15766))))

(declare-fun bm!70647 () Bool)

(declare-fun call!70653 () Int)

(declare-fun call!70655 () Int)

(assert (=> bm!70647 (= call!70653 call!70655)))

(declare-fun bm!70648 () Bool)

(declare-fun c!170389 () Bool)

(assert (=> bm!70648 (= call!70651 (regexDepth!33 (ite c!170389 (regOne!6205 r!15766) (regOne!6204 r!15766))))))

(declare-fun b!1027504 () Bool)

(declare-fun e!655423 () Bool)

(assert (=> b!1027504 (= e!655423 e!655426)))

(assert (=> b!1027504 (= c!170389 (is-Union!2846 r!15766))))

(declare-fun bm!70649 () Bool)

(declare-fun call!70657 () Int)

(assert (=> bm!70649 (= call!70656 call!70657)))

(declare-fun b!1027505 () Bool)

(assert (=> b!1027505 (= c!170385 (is-Union!2846 r!15766))))

(assert (=> b!1027505 (= e!655432 e!655427)))

(declare-fun bm!70650 () Bool)

(assert (=> bm!70650 (= call!70655 (regexDepth!33 (ite c!170384 (reg!3175 r!15766) (ite c!170385 (regOne!6205 r!15766) (regOne!6204 r!15766)))))))

(declare-fun bm!70651 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!70651 (= call!70652 (maxBigInt!0 call!70653 call!70654))))

(declare-fun b!1027506 () Bool)

(assert (=> b!1027506 (= e!655428 (> lt!355401 call!70657))))

(declare-fun b!1027507 () Bool)

(assert (=> b!1027507 (= e!655431 1)))

(declare-fun b!1027508 () Bool)

(declare-fun res!461618 () Bool)

(assert (=> b!1027508 (=> (not res!461618) (not e!655430))))

(assert (=> b!1027508 (= res!461618 (> lt!355401 call!70651))))

(declare-fun e!655424 () Bool)

(assert (=> b!1027508 (= e!655424 e!655430)))

(declare-fun b!1027509 () Bool)

(assert (=> b!1027509 (= e!655429 1)))

(declare-fun bm!70652 () Bool)

(declare-fun c!170383 () Bool)

(assert (=> bm!70652 (= call!70657 (regexDepth!33 (ite c!170389 (regTwo!6205 r!15766) (ite c!170383 (regTwo!6204 r!15766) (reg!3175 r!15766)))))))

(declare-fun b!1027510 () Bool)

(assert (=> b!1027510 (= e!655427 e!655431)))

(declare-fun c!170386 () Bool)

(assert (=> b!1027510 (= c!170386 (is-Concat!4679 r!15766))))

(declare-fun b!1027511 () Bool)

(declare-fun e!655425 () Bool)

(assert (=> b!1027511 (= e!655425 (= lt!355401 1))))

(declare-fun b!1027512 () Bool)

(assert (=> b!1027512 (= e!655426 e!655424)))

(assert (=> b!1027512 (= c!170383 (is-Concat!4679 r!15766))))

(declare-fun b!1027513 () Bool)

(assert (=> b!1027513 (= e!655425 (> lt!355401 call!70656))))

(declare-fun b!1027514 () Bool)

(assert (=> b!1027514 (= e!655432 (+ 1 call!70655))))

(declare-fun d!295231 () Bool)

(assert (=> d!295231 e!655423))

(declare-fun res!461620 () Bool)

(assert (=> d!295231 (=> (not res!461620) (not e!655423))))

(assert (=> d!295231 (= res!461620 (> lt!355401 0))))

(assert (=> d!295231 (= lt!355401 e!655429)))

(declare-fun c!170387 () Bool)

(assert (=> d!295231 (= c!170387 (is-ElementMatch!2846 r!15766))))

(assert (=> d!295231 (= (regexDepth!33 r!15766) lt!355401)))

(declare-fun b!1027515 () Bool)

(declare-fun c!170388 () Bool)

(assert (=> b!1027515 (= c!170388 (is-Star!2846 r!15766))))

(assert (=> b!1027515 (= e!655424 e!655425)))

(assert (= (and d!295231 c!170387) b!1027509))

(assert (= (and d!295231 (not c!170387)) b!1027503))

(assert (= (and b!1027503 c!170384) b!1027514))

(assert (= (and b!1027503 (not c!170384)) b!1027505))

(assert (= (and b!1027505 c!170385) b!1027501))

(assert (= (and b!1027505 (not c!170385)) b!1027510))

(assert (= (and b!1027510 c!170386) b!1027499))

(assert (= (and b!1027510 (not c!170386)) b!1027507))

(assert (= (or b!1027501 b!1027499) bm!70646))

(assert (= (or b!1027501 b!1027499) bm!70647))

(assert (= (or b!1027501 b!1027499) bm!70651))

(assert (= (or b!1027514 bm!70647) bm!70650))

(assert (= (and d!295231 res!461620) b!1027504))

(assert (= (and b!1027504 c!170389) b!1027500))

(assert (= (and b!1027504 (not c!170389)) b!1027512))

(assert (= (and b!1027500 res!461619) b!1027506))

(assert (= (and b!1027512 c!170383) b!1027508))

(assert (= (and b!1027512 (not c!170383)) b!1027515))

(assert (= (and b!1027508 res!461618) b!1027502))

(assert (= (and b!1027515 c!170388) b!1027513))

(assert (= (and b!1027515 (not c!170388)) b!1027511))

(assert (= (or b!1027502 b!1027513) bm!70649))

(assert (= (or b!1027506 bm!70649) bm!70652))

(assert (= (or b!1027500 b!1027508) bm!70648))

(declare-fun m!1203005 () Bool)

(assert (=> bm!70650 m!1203005))

(declare-fun m!1203007 () Bool)

(assert (=> bm!70651 m!1203007))

(declare-fun m!1203009 () Bool)

(assert (=> bm!70652 m!1203009))

(declare-fun m!1203011 () Bool)

(assert (=> bm!70646 m!1203011))

(declare-fun m!1203013 () Bool)

(assert (=> bm!70648 m!1203013))

(assert (=> b!1027260 d!295231))

(declare-fun d!295233 () Bool)

(declare-fun lt!355404 () Int)

(assert (=> d!295233 (>= lt!355404 0)))

(declare-fun e!655435 () Int)

(assert (=> d!295233 (= lt!355404 e!655435)))

(declare-fun c!170392 () Bool)

(assert (=> d!295233 (= c!170392 (is-Nil!10060 s!10566))))

(assert (=> d!295233 (= (size!7986 s!10566) lt!355404)))

(declare-fun b!1027520 () Bool)

(assert (=> b!1027520 (= e!655435 0)))

(declare-fun b!1027521 () Bool)

(assert (=> b!1027521 (= e!655435 (+ 1 (size!7986 (t!101122 s!10566))))))

(assert (= (and d!295233 c!170392) b!1027520))

(assert (= (and d!295233 (not c!170392)) b!1027521))

(declare-fun m!1203021 () Bool)

(assert (=> b!1027521 m!1203021))

(assert (=> b!1027260 d!295233))

(declare-fun b!1027522 () Bool)

(declare-fun e!655444 () Int)

(declare-fun call!70659 () Int)

(assert (=> b!1027522 (= e!655444 (+ 1 call!70659))))

(declare-fun b!1027523 () Bool)

(declare-fun e!655439 () Bool)

(declare-fun e!655441 () Bool)

(assert (=> b!1027523 (= e!655439 e!655441)))

(declare-fun res!461622 () Bool)

(declare-fun lt!355405 () Int)

(declare-fun call!70658 () Int)

(assert (=> b!1027523 (= res!461622 (> lt!355405 call!70658))))

(assert (=> b!1027523 (=> (not res!461622) (not e!655441))))

(declare-fun b!1027524 () Bool)

(declare-fun e!655440 () Int)

(assert (=> b!1027524 (= e!655440 (+ 1 call!70659))))

(declare-fun b!1027525 () Bool)

(declare-fun e!655443 () Bool)

(declare-fun call!70663 () Int)

(assert (=> b!1027525 (= e!655443 (> lt!355405 call!70663))))

(declare-fun bm!70653 () Bool)

(declare-fun call!70661 () Int)

(declare-fun c!170395 () Bool)

(assert (=> bm!70653 (= call!70661 (regexDepth!33 (ite c!170395 (regTwo!6205 (regOne!6204 r!15766)) (regTwo!6204 (regOne!6204 r!15766)))))))

(declare-fun b!1027526 () Bool)

(declare-fun e!655442 () Int)

(declare-fun e!655445 () Int)

(assert (=> b!1027526 (= e!655442 e!655445)))

(declare-fun c!170394 () Bool)

(assert (=> b!1027526 (= c!170394 (is-Star!2846 (regOne!6204 r!15766)))))

(declare-fun bm!70654 () Bool)

(declare-fun call!70660 () Int)

(declare-fun call!70662 () Int)

(assert (=> bm!70654 (= call!70660 call!70662)))

(declare-fun bm!70655 () Bool)

(declare-fun c!170399 () Bool)

(assert (=> bm!70655 (= call!70658 (regexDepth!33 (ite c!170399 (regOne!6205 (regOne!6204 r!15766)) (regOne!6204 (regOne!6204 r!15766)))))))

(declare-fun b!1027527 () Bool)

(declare-fun e!655436 () Bool)

(assert (=> b!1027527 (= e!655436 e!655439)))

(assert (=> b!1027527 (= c!170399 (is-Union!2846 (regOne!6204 r!15766)))))

(declare-fun bm!70656 () Bool)

(declare-fun call!70664 () Int)

(assert (=> bm!70656 (= call!70663 call!70664)))

(declare-fun b!1027528 () Bool)

(assert (=> b!1027528 (= c!170395 (is-Union!2846 (regOne!6204 r!15766)))))

(assert (=> b!1027528 (= e!655445 e!655440)))

(declare-fun bm!70657 () Bool)

(assert (=> bm!70657 (= call!70662 (regexDepth!33 (ite c!170394 (reg!3175 (regOne!6204 r!15766)) (ite c!170395 (regOne!6205 (regOne!6204 r!15766)) (regOne!6204 (regOne!6204 r!15766))))))))

(declare-fun bm!70658 () Bool)

(assert (=> bm!70658 (= call!70659 (maxBigInt!0 call!70660 call!70661))))

(declare-fun b!1027529 () Bool)

(assert (=> b!1027529 (= e!655441 (> lt!355405 call!70664))))

(declare-fun b!1027530 () Bool)

(assert (=> b!1027530 (= e!655444 1)))

(declare-fun b!1027531 () Bool)

(declare-fun res!461621 () Bool)

(assert (=> b!1027531 (=> (not res!461621) (not e!655443))))

(assert (=> b!1027531 (= res!461621 (> lt!355405 call!70658))))

(declare-fun e!655437 () Bool)

(assert (=> b!1027531 (= e!655437 e!655443)))

(declare-fun b!1027532 () Bool)

(assert (=> b!1027532 (= e!655442 1)))

(declare-fun c!170393 () Bool)

(declare-fun bm!70659 () Bool)

(assert (=> bm!70659 (= call!70664 (regexDepth!33 (ite c!170399 (regTwo!6205 (regOne!6204 r!15766)) (ite c!170393 (regTwo!6204 (regOne!6204 r!15766)) (reg!3175 (regOne!6204 r!15766))))))))

(declare-fun b!1027533 () Bool)

(assert (=> b!1027533 (= e!655440 e!655444)))

(declare-fun c!170396 () Bool)

(assert (=> b!1027533 (= c!170396 (is-Concat!4679 (regOne!6204 r!15766)))))

(declare-fun b!1027534 () Bool)

(declare-fun e!655438 () Bool)

(assert (=> b!1027534 (= e!655438 (= lt!355405 1))))

(declare-fun b!1027535 () Bool)

(assert (=> b!1027535 (= e!655439 e!655437)))

(assert (=> b!1027535 (= c!170393 (is-Concat!4679 (regOne!6204 r!15766)))))

(declare-fun b!1027536 () Bool)

(assert (=> b!1027536 (= e!655438 (> lt!355405 call!70663))))

(declare-fun b!1027537 () Bool)

(assert (=> b!1027537 (= e!655445 (+ 1 call!70662))))

(declare-fun d!295237 () Bool)

(assert (=> d!295237 e!655436))

(declare-fun res!461623 () Bool)

(assert (=> d!295237 (=> (not res!461623) (not e!655436))))

(assert (=> d!295237 (= res!461623 (> lt!355405 0))))

(assert (=> d!295237 (= lt!355405 e!655442)))

(declare-fun c!170397 () Bool)

(assert (=> d!295237 (= c!170397 (is-ElementMatch!2846 (regOne!6204 r!15766)))))

(assert (=> d!295237 (= (regexDepth!33 (regOne!6204 r!15766)) lt!355405)))

(declare-fun b!1027538 () Bool)

(declare-fun c!170398 () Bool)

(assert (=> b!1027538 (= c!170398 (is-Star!2846 (regOne!6204 r!15766)))))

(assert (=> b!1027538 (= e!655437 e!655438)))

(assert (= (and d!295237 c!170397) b!1027532))

(assert (= (and d!295237 (not c!170397)) b!1027526))

(assert (= (and b!1027526 c!170394) b!1027537))

(assert (= (and b!1027526 (not c!170394)) b!1027528))

(assert (= (and b!1027528 c!170395) b!1027524))

(assert (= (and b!1027528 (not c!170395)) b!1027533))

(assert (= (and b!1027533 c!170396) b!1027522))

(assert (= (and b!1027533 (not c!170396)) b!1027530))

(assert (= (or b!1027524 b!1027522) bm!70653))

(assert (= (or b!1027524 b!1027522) bm!70654))

(assert (= (or b!1027524 b!1027522) bm!70658))

(assert (= (or b!1027537 bm!70654) bm!70657))

(assert (= (and d!295237 res!461623) b!1027527))

(assert (= (and b!1027527 c!170399) b!1027523))

(assert (= (and b!1027527 (not c!170399)) b!1027535))

(assert (= (and b!1027523 res!461622) b!1027529))

(assert (= (and b!1027535 c!170393) b!1027531))

(assert (= (and b!1027535 (not c!170393)) b!1027538))

(assert (= (and b!1027531 res!461621) b!1027525))

(assert (= (and b!1027538 c!170398) b!1027536))

(assert (= (and b!1027538 (not c!170398)) b!1027534))

(assert (= (or b!1027525 b!1027536) bm!70656))

(assert (= (or b!1027529 bm!70656) bm!70659))

(assert (= (or b!1027523 b!1027531) bm!70655))

(declare-fun m!1203023 () Bool)

(assert (=> bm!70657 m!1203023))

(declare-fun m!1203025 () Bool)

(assert (=> bm!70658 m!1203025))

(declare-fun m!1203027 () Bool)

(assert (=> bm!70659 m!1203027))

(declare-fun m!1203029 () Bool)

(assert (=> bm!70653 m!1203029))

(declare-fun m!1203031 () Bool)

(assert (=> bm!70655 m!1203031))

(assert (=> b!1027260 d!295237))

(declare-fun b!1027539 () Bool)

(declare-fun e!655447 () Bool)

(declare-fun e!655452 () Bool)

(assert (=> b!1027539 (= e!655447 e!655452)))

(declare-fun c!170401 () Bool)

(assert (=> b!1027539 (= c!170401 (is-Star!2846 (regOne!6204 r!15766)))))

(declare-fun b!1027540 () Bool)

(declare-fun res!461628 () Bool)

(declare-fun e!655450 () Bool)

(assert (=> b!1027540 (=> res!461628 e!655450)))

(assert (=> b!1027540 (= res!461628 (not (is-Concat!4679 (regOne!6204 r!15766))))))

(declare-fun e!655449 () Bool)

(assert (=> b!1027540 (= e!655449 e!655450)))

(declare-fun b!1027541 () Bool)

(declare-fun e!655448 () Bool)

(declare-fun call!70665 () Bool)

(assert (=> b!1027541 (= e!655448 call!70665)))

(declare-fun b!1027542 () Bool)

(declare-fun e!655446 () Bool)

(assert (=> b!1027542 (= e!655450 e!655446)))

(declare-fun res!461624 () Bool)

(assert (=> b!1027542 (=> (not res!461624) (not e!655446))))

(declare-fun call!70666 () Bool)

(assert (=> b!1027542 (= res!461624 call!70666)))

(declare-fun b!1027543 () Bool)

(declare-fun e!655451 () Bool)

(assert (=> b!1027543 (= e!655452 e!655451)))

(declare-fun res!461626 () Bool)

(assert (=> b!1027543 (= res!461626 (not (nullable!943 (reg!3175 (regOne!6204 r!15766)))))))

(assert (=> b!1027543 (=> (not res!461626) (not e!655451))))

(declare-fun bm!70660 () Bool)

(declare-fun c!170400 () Bool)

(assert (=> bm!70660 (= call!70665 (validRegex!1315 (ite c!170400 (regTwo!6205 (regOne!6204 r!15766)) (regTwo!6204 (regOne!6204 r!15766)))))))

(declare-fun d!295239 () Bool)

(declare-fun res!461627 () Bool)

(assert (=> d!295239 (=> res!461627 e!655447)))

(assert (=> d!295239 (= res!461627 (is-ElementMatch!2846 (regOne!6204 r!15766)))))

(assert (=> d!295239 (= (validRegex!1315 (regOne!6204 r!15766)) e!655447)))

(declare-fun b!1027544 () Bool)

(assert (=> b!1027544 (= e!655446 call!70665)))

(declare-fun b!1027545 () Bool)

(assert (=> b!1027545 (= e!655452 e!655449)))

(assert (=> b!1027545 (= c!170400 (is-Union!2846 (regOne!6204 r!15766)))))

(declare-fun call!70667 () Bool)

(declare-fun bm!70661 () Bool)

(assert (=> bm!70661 (= call!70667 (validRegex!1315 (ite c!170401 (reg!3175 (regOne!6204 r!15766)) (ite c!170400 (regOne!6205 (regOne!6204 r!15766)) (regOne!6204 (regOne!6204 r!15766))))))))

(declare-fun b!1027546 () Bool)

(declare-fun res!461625 () Bool)

(assert (=> b!1027546 (=> (not res!461625) (not e!655448))))

(assert (=> b!1027546 (= res!461625 call!70666)))

(assert (=> b!1027546 (= e!655449 e!655448)))

(declare-fun bm!70662 () Bool)

(assert (=> bm!70662 (= call!70666 call!70667)))

(declare-fun b!1027547 () Bool)

(assert (=> b!1027547 (= e!655451 call!70667)))

(assert (= (and d!295239 (not res!461627)) b!1027539))

(assert (= (and b!1027539 c!170401) b!1027543))

(assert (= (and b!1027539 (not c!170401)) b!1027545))

(assert (= (and b!1027543 res!461626) b!1027547))

(assert (= (and b!1027545 c!170400) b!1027546))

(assert (= (and b!1027545 (not c!170400)) b!1027540))

(assert (= (and b!1027546 res!461625) b!1027541))

(assert (= (and b!1027540 (not res!461628)) b!1027542))

(assert (= (and b!1027542 res!461624) b!1027544))

(assert (= (or b!1027541 b!1027544) bm!70660))

(assert (= (or b!1027546 b!1027542) bm!70662))

(assert (= (or b!1027547 bm!70662) bm!70661))

(declare-fun m!1203033 () Bool)

(assert (=> b!1027543 m!1203033))

(declare-fun m!1203035 () Bool)

(assert (=> bm!70660 m!1203035))

(declare-fun m!1203037 () Bool)

(assert (=> bm!70661 m!1203037))

(assert (=> b!1027266 d!295239))

(declare-fun bs!247111 () Bool)

(declare-fun b!1027616 () Bool)

(assert (= bs!247111 (and b!1027616 d!295225)))

(declare-fun lambda!36744 () Int)

(assert (=> bs!247111 (not (= lambda!36744 lambda!36734))))

(declare-fun bs!247112 () Bool)

(assert (= bs!247112 (and b!1027616 b!1027262)))

(assert (=> bs!247112 (not (= lambda!36744 lambda!36716))))

(assert (=> bs!247112 (not (= lambda!36744 lambda!36715))))

(assert (=> bs!247111 (not (= lambda!36744 lambda!36735))))

(declare-fun bs!247113 () Bool)

(assert (= bs!247113 (and b!1027616 d!295221)))

(assert (=> bs!247113 (not (= lambda!36744 lambda!36727))))

(assert (=> b!1027616 true))

(assert (=> b!1027616 true))

(declare-fun bs!247114 () Bool)

(declare-fun b!1027608 () Bool)

(assert (= bs!247114 (and b!1027608 b!1027616)))

(declare-fun lambda!36745 () Int)

(assert (=> bs!247114 (not (= lambda!36745 lambda!36744))))

(declare-fun bs!247115 () Bool)

(assert (= bs!247115 (and b!1027608 d!295225)))

(assert (=> bs!247115 (not (= lambda!36745 lambda!36734))))

(declare-fun bs!247116 () Bool)

(assert (= bs!247116 (and b!1027608 b!1027262)))

(assert (=> bs!247116 (= (= (regTwo!6204 r!15766) EmptyExpr!2846) (= lambda!36745 lambda!36716))))

(assert (=> bs!247116 (not (= lambda!36745 lambda!36715))))

(assert (=> bs!247115 (= (= (regTwo!6204 r!15766) EmptyExpr!2846) (= lambda!36745 lambda!36735))))

(declare-fun bs!247117 () Bool)

(assert (= bs!247117 (and b!1027608 d!295221)))

(assert (=> bs!247117 (not (= lambda!36745 lambda!36727))))

(assert (=> b!1027608 true))

(assert (=> b!1027608 true))

(declare-fun e!655486 () Bool)

(declare-fun call!70675 () Bool)

(assert (=> b!1027608 (= e!655486 call!70675)))

(declare-fun b!1027609 () Bool)

(declare-fun e!655488 () Bool)

(declare-fun e!655487 () Bool)

(assert (=> b!1027609 (= e!655488 e!655487)))

(declare-fun res!461663 () Bool)

(assert (=> b!1027609 (= res!461663 (not (is-EmptyLang!2846 r!15766)))))

(assert (=> b!1027609 (=> (not res!461663) (not e!655487))))

(declare-fun b!1027610 () Bool)

(declare-fun e!655490 () Bool)

(declare-fun e!655489 () Bool)

(assert (=> b!1027610 (= e!655490 e!655489)))

(declare-fun res!461662 () Bool)

(assert (=> b!1027610 (= res!461662 (matchRSpec!645 (regOne!6205 r!15766) s!10566))))

(assert (=> b!1027610 (=> res!461662 e!655489)))

(declare-fun b!1027612 () Bool)

(assert (=> b!1027612 (= e!655490 e!655486)))

(declare-fun c!170419 () Bool)

(assert (=> b!1027612 (= c!170419 (is-Star!2846 r!15766))))

(declare-fun b!1027613 () Bool)

(declare-fun c!170416 () Bool)

(assert (=> b!1027613 (= c!170416 (is-ElementMatch!2846 r!15766))))

(declare-fun e!655485 () Bool)

(assert (=> b!1027613 (= e!655487 e!655485)))

(declare-fun b!1027614 () Bool)

(assert (=> b!1027614 (= e!655485 (= s!10566 (Cons!10060 (c!170335 r!15766) Nil!10060)))))

(declare-fun b!1027615 () Bool)

(declare-fun res!461661 () Bool)

(declare-fun e!655491 () Bool)

(assert (=> b!1027615 (=> res!461661 e!655491)))

(declare-fun call!70674 () Bool)

(assert (=> b!1027615 (= res!461661 call!70674)))

(assert (=> b!1027615 (= e!655486 e!655491)))

(assert (=> b!1027616 (= e!655491 call!70675)))

(declare-fun bm!70669 () Bool)

(assert (=> bm!70669 (= call!70674 (isEmpty!6429 s!10566))))

(declare-fun bm!70670 () Bool)

(assert (=> bm!70670 (= call!70675 (Exists!573 (ite c!170419 lambda!36744 lambda!36745)))))

(declare-fun b!1027617 () Bool)

(declare-fun c!170418 () Bool)

(assert (=> b!1027617 (= c!170418 (is-Union!2846 r!15766))))

(assert (=> b!1027617 (= e!655485 e!655490)))

(declare-fun b!1027618 () Bool)

(assert (=> b!1027618 (= e!655488 call!70674)))

(declare-fun b!1027611 () Bool)

(assert (=> b!1027611 (= e!655489 (matchRSpec!645 (regTwo!6205 r!15766) s!10566))))

(declare-fun d!295241 () Bool)

(declare-fun c!170417 () Bool)

(assert (=> d!295241 (= c!170417 (is-EmptyExpr!2846 r!15766))))

(assert (=> d!295241 (= (matchRSpec!645 r!15766 s!10566) e!655488)))

(assert (= (and d!295241 c!170417) b!1027618))

(assert (= (and d!295241 (not c!170417)) b!1027609))

(assert (= (and b!1027609 res!461663) b!1027613))

(assert (= (and b!1027613 c!170416) b!1027614))

(assert (= (and b!1027613 (not c!170416)) b!1027617))

(assert (= (and b!1027617 c!170418) b!1027610))

(assert (= (and b!1027617 (not c!170418)) b!1027612))

(assert (= (and b!1027610 (not res!461662)) b!1027611))

(assert (= (and b!1027612 c!170419) b!1027615))

(assert (= (and b!1027612 (not c!170419)) b!1027608))

(assert (= (and b!1027615 (not res!461661)) b!1027616))

(assert (= (or b!1027616 b!1027608) bm!70670))

(assert (= (or b!1027618 b!1027615) bm!70669))

(declare-fun m!1203039 () Bool)

(assert (=> b!1027610 m!1203039))

(assert (=> bm!70669 m!1202895))

(declare-fun m!1203041 () Bool)

(assert (=> bm!70670 m!1203041))

(declare-fun m!1203043 () Bool)

(assert (=> b!1027611 m!1203043))

(assert (=> b!1027265 d!295241))

(declare-fun b!1027661 () Bool)

(declare-fun e!655516 () Bool)

(declare-fun e!655519 () Bool)

(assert (=> b!1027661 (= e!655516 e!655519)))

(declare-fun c!170430 () Bool)

(assert (=> b!1027661 (= c!170430 (is-EmptyLang!2846 r!15766))))

(declare-fun b!1027662 () Bool)

(declare-fun e!655518 () Bool)

(assert (=> b!1027662 (= e!655518 (nullable!943 r!15766))))

(declare-fun b!1027663 () Bool)

(declare-fun res!461693 () Bool)

(declare-fun e!655514 () Bool)

(assert (=> b!1027663 (=> res!461693 e!655514)))

(assert (=> b!1027663 (= res!461693 (not (is-ElementMatch!2846 r!15766)))))

(assert (=> b!1027663 (= e!655519 e!655514)))

(declare-fun b!1027664 () Bool)

(declare-fun res!461689 () Bool)

(declare-fun e!655513 () Bool)

(assert (=> b!1027664 (=> (not res!461689) (not e!655513))))

(declare-fun call!70679 () Bool)

(assert (=> b!1027664 (= res!461689 (not call!70679))))

(declare-fun b!1027665 () Bool)

(declare-fun e!655515 () Bool)

(assert (=> b!1027665 (= e!655514 e!655515)))

(declare-fun res!461690 () Bool)

(assert (=> b!1027665 (=> (not res!461690) (not e!655515))))

(declare-fun lt!355411 () Bool)

(assert (=> b!1027665 (= res!461690 (not lt!355411))))

(declare-fun b!1027666 () Bool)

(declare-fun head!1898 (List!10076) C!6262)

(assert (=> b!1027666 (= e!655513 (= (head!1898 s!10566) (c!170335 r!15766)))))

(declare-fun b!1027667 () Bool)

(assert (=> b!1027667 (= e!655519 (not lt!355411))))

(declare-fun b!1027668 () Bool)

(declare-fun e!655517 () Bool)

(assert (=> b!1027668 (= e!655515 e!655517)))

(declare-fun res!461694 () Bool)

(assert (=> b!1027668 (=> res!461694 e!655517)))

(assert (=> b!1027668 (= res!461694 call!70679)))

(declare-fun d!295243 () Bool)

(assert (=> d!295243 e!655516))

(declare-fun c!170431 () Bool)

(assert (=> d!295243 (= c!170431 (is-EmptyExpr!2846 r!15766))))

(assert (=> d!295243 (= lt!355411 e!655518)))

(declare-fun c!170429 () Bool)

(assert (=> d!295243 (= c!170429 (isEmpty!6429 s!10566))))

(assert (=> d!295243 (validRegex!1315 r!15766)))

(assert (=> d!295243 (= (matchR!1382 r!15766 s!10566) lt!355411)))

(declare-fun bm!70674 () Bool)

(assert (=> bm!70674 (= call!70679 (isEmpty!6429 s!10566))))

(declare-fun b!1027669 () Bool)

(declare-fun res!461692 () Bool)

(assert (=> b!1027669 (=> res!461692 e!655517)))

(declare-fun tail!1460 (List!10076) List!10076)

(assert (=> b!1027669 (= res!461692 (not (isEmpty!6429 (tail!1460 s!10566))))))

(declare-fun b!1027670 () Bool)

(declare-fun res!461688 () Bool)

(assert (=> b!1027670 (=> (not res!461688) (not e!655513))))

(assert (=> b!1027670 (= res!461688 (isEmpty!6429 (tail!1460 s!10566)))))

(declare-fun b!1027671 () Bool)

(assert (=> b!1027671 (= e!655516 (= lt!355411 call!70679))))

(declare-fun b!1027672 () Bool)

(declare-fun derivativeStep!744 (Regex!2846 C!6262) Regex!2846)

(assert (=> b!1027672 (= e!655518 (matchR!1382 (derivativeStep!744 r!15766 (head!1898 s!10566)) (tail!1460 s!10566)))))

(declare-fun b!1027673 () Bool)

(declare-fun res!461695 () Bool)

(assert (=> b!1027673 (=> res!461695 e!655514)))

(assert (=> b!1027673 (= res!461695 e!655513)))

(declare-fun res!461691 () Bool)

(assert (=> b!1027673 (=> (not res!461691) (not e!655513))))

(assert (=> b!1027673 (= res!461691 lt!355411)))

(declare-fun b!1027674 () Bool)

(assert (=> b!1027674 (= e!655517 (not (= (head!1898 s!10566) (c!170335 r!15766))))))

(assert (= (and d!295243 c!170429) b!1027662))

(assert (= (and d!295243 (not c!170429)) b!1027672))

(assert (= (and d!295243 c!170431) b!1027671))

(assert (= (and d!295243 (not c!170431)) b!1027661))

(assert (= (and b!1027661 c!170430) b!1027667))

(assert (= (and b!1027661 (not c!170430)) b!1027663))

(assert (= (and b!1027663 (not res!461693)) b!1027673))

(assert (= (and b!1027673 res!461691) b!1027664))

(assert (= (and b!1027664 res!461689) b!1027670))

(assert (= (and b!1027670 res!461688) b!1027666))

(assert (= (and b!1027673 (not res!461695)) b!1027665))

(assert (= (and b!1027665 res!461690) b!1027668))

(assert (= (and b!1027668 (not res!461694)) b!1027669))

(assert (= (and b!1027669 (not res!461692)) b!1027674))

(assert (= (or b!1027671 b!1027664 b!1027668) bm!70674))

(declare-fun m!1203057 () Bool)

(assert (=> b!1027662 m!1203057))

(declare-fun m!1203059 () Bool)

(assert (=> b!1027666 m!1203059))

(declare-fun m!1203061 () Bool)

(assert (=> b!1027670 m!1203061))

(assert (=> b!1027670 m!1203061))

(declare-fun m!1203063 () Bool)

(assert (=> b!1027670 m!1203063))

(assert (=> bm!70674 m!1202895))

(assert (=> b!1027672 m!1203059))

(assert (=> b!1027672 m!1203059))

(declare-fun m!1203065 () Bool)

(assert (=> b!1027672 m!1203065))

(assert (=> b!1027672 m!1203061))

(assert (=> b!1027672 m!1203065))

(assert (=> b!1027672 m!1203061))

(declare-fun m!1203067 () Bool)

(assert (=> b!1027672 m!1203067))

(assert (=> d!295243 m!1202895))

(assert (=> d!295243 m!1202907))

(assert (=> b!1027674 m!1203059))

(assert (=> b!1027669 m!1203061))

(assert (=> b!1027669 m!1203061))

(assert (=> b!1027669 m!1203063))

(assert (=> b!1027265 d!295243))

(declare-fun d!295247 () Bool)

(assert (=> d!295247 (= (matchR!1382 r!15766 s!10566) (matchRSpec!645 r!15766 s!10566))))

(declare-fun lt!355417 () Unit!15367)

(declare-fun choose!6530 (Regex!2846 List!10076) Unit!15367)

(assert (=> d!295247 (= lt!355417 (choose!6530 r!15766 s!10566))))

(assert (=> d!295247 (validRegex!1315 r!15766)))

(assert (=> d!295247 (= (mainMatchTheorem!645 r!15766 s!10566) lt!355417)))

(declare-fun bs!247119 () Bool)

(assert (= bs!247119 d!295247))

(assert (=> bs!247119 m!1202913))

(assert (=> bs!247119 m!1202911))

(declare-fun m!1203071 () Bool)

(assert (=> bs!247119 m!1203071))

(assert (=> bs!247119 m!1202907))

(assert (=> b!1027265 d!295247))

(declare-fun b!1027687 () Bool)

(declare-fun e!655522 () Bool)

(declare-fun tp!311661 () Bool)

(assert (=> b!1027687 (= e!655522 tp!311661)))

(assert (=> b!1027268 (= tp!311627 e!655522)))

(declare-fun b!1027686 () Bool)

(declare-fun tp!311659 () Bool)

(declare-fun tp!311663 () Bool)

(assert (=> b!1027686 (= e!655522 (and tp!311659 tp!311663))))

(declare-fun b!1027685 () Bool)

(assert (=> b!1027685 (= e!655522 tp_is_empty!5335)))

(declare-fun b!1027688 () Bool)

(declare-fun tp!311662 () Bool)

(declare-fun tp!311660 () Bool)

(assert (=> b!1027688 (= e!655522 (and tp!311662 tp!311660))))

(assert (= (and b!1027268 (is-ElementMatch!2846 (regOne!6204 r!15766))) b!1027685))

(assert (= (and b!1027268 (is-Concat!4679 (regOne!6204 r!15766))) b!1027686))

(assert (= (and b!1027268 (is-Star!2846 (regOne!6204 r!15766))) b!1027687))

(assert (= (and b!1027268 (is-Union!2846 (regOne!6204 r!15766))) b!1027688))

(declare-fun b!1027691 () Bool)

(declare-fun e!655523 () Bool)

(declare-fun tp!311666 () Bool)

(assert (=> b!1027691 (= e!655523 tp!311666)))

(assert (=> b!1027268 (= tp!311629 e!655523)))

(declare-fun b!1027690 () Bool)

(declare-fun tp!311664 () Bool)

(declare-fun tp!311668 () Bool)

(assert (=> b!1027690 (= e!655523 (and tp!311664 tp!311668))))

(declare-fun b!1027689 () Bool)

(assert (=> b!1027689 (= e!655523 tp_is_empty!5335)))

(declare-fun b!1027692 () Bool)

(declare-fun tp!311667 () Bool)

(declare-fun tp!311665 () Bool)

(assert (=> b!1027692 (= e!655523 (and tp!311667 tp!311665))))

(assert (= (and b!1027268 (is-ElementMatch!2846 (regTwo!6204 r!15766))) b!1027689))

(assert (= (and b!1027268 (is-Concat!4679 (regTwo!6204 r!15766))) b!1027690))

(assert (= (and b!1027268 (is-Star!2846 (regTwo!6204 r!15766))) b!1027691))

(assert (= (and b!1027268 (is-Union!2846 (regTwo!6204 r!15766))) b!1027692))

(declare-fun b!1027695 () Bool)

(declare-fun e!655524 () Bool)

(declare-fun tp!311671 () Bool)

(assert (=> b!1027695 (= e!655524 tp!311671)))

(assert (=> b!1027263 (= tp!311628 e!655524)))

(declare-fun b!1027694 () Bool)

(declare-fun tp!311669 () Bool)

(declare-fun tp!311673 () Bool)

(assert (=> b!1027694 (= e!655524 (and tp!311669 tp!311673))))

(declare-fun b!1027693 () Bool)

(assert (=> b!1027693 (= e!655524 tp_is_empty!5335)))

(declare-fun b!1027696 () Bool)

(declare-fun tp!311672 () Bool)

(declare-fun tp!311670 () Bool)

(assert (=> b!1027696 (= e!655524 (and tp!311672 tp!311670))))

(assert (= (and b!1027263 (is-ElementMatch!2846 (regOne!6205 r!15766))) b!1027693))

(assert (= (and b!1027263 (is-Concat!4679 (regOne!6205 r!15766))) b!1027694))

(assert (= (and b!1027263 (is-Star!2846 (regOne!6205 r!15766))) b!1027695))

(assert (= (and b!1027263 (is-Union!2846 (regOne!6205 r!15766))) b!1027696))

(declare-fun b!1027699 () Bool)

(declare-fun e!655525 () Bool)

(declare-fun tp!311676 () Bool)

(assert (=> b!1027699 (= e!655525 tp!311676)))

(assert (=> b!1027263 (= tp!311630 e!655525)))

(declare-fun b!1027698 () Bool)

(declare-fun tp!311674 () Bool)

(declare-fun tp!311678 () Bool)

(assert (=> b!1027698 (= e!655525 (and tp!311674 tp!311678))))

(declare-fun b!1027697 () Bool)

(assert (=> b!1027697 (= e!655525 tp_is_empty!5335)))

(declare-fun b!1027700 () Bool)

(declare-fun tp!311677 () Bool)

(declare-fun tp!311675 () Bool)

(assert (=> b!1027700 (= e!655525 (and tp!311677 tp!311675))))

(assert (= (and b!1027263 (is-ElementMatch!2846 (regTwo!6205 r!15766))) b!1027697))

(assert (= (and b!1027263 (is-Concat!4679 (regTwo!6205 r!15766))) b!1027698))

(assert (= (and b!1027263 (is-Star!2846 (regTwo!6205 r!15766))) b!1027699))

(assert (= (and b!1027263 (is-Union!2846 (regTwo!6205 r!15766))) b!1027700))

(declare-fun b!1027703 () Bool)

(declare-fun e!655526 () Bool)

(declare-fun tp!311681 () Bool)

(assert (=> b!1027703 (= e!655526 tp!311681)))

(assert (=> b!1027261 (= tp!311626 e!655526)))

(declare-fun b!1027702 () Bool)

(declare-fun tp!311679 () Bool)

(declare-fun tp!311683 () Bool)

(assert (=> b!1027702 (= e!655526 (and tp!311679 tp!311683))))

(declare-fun b!1027701 () Bool)

(assert (=> b!1027701 (= e!655526 tp_is_empty!5335)))

(declare-fun b!1027704 () Bool)

(declare-fun tp!311682 () Bool)

(declare-fun tp!311680 () Bool)

(assert (=> b!1027704 (= e!655526 (and tp!311682 tp!311680))))

(assert (= (and b!1027261 (is-ElementMatch!2846 (reg!3175 r!15766))) b!1027701))

(assert (= (and b!1027261 (is-Concat!4679 (reg!3175 r!15766))) b!1027702))

(assert (= (and b!1027261 (is-Star!2846 (reg!3175 r!15766))) b!1027703))

(assert (= (and b!1027261 (is-Union!2846 (reg!3175 r!15766))) b!1027704))

(declare-fun b!1027709 () Bool)

(declare-fun e!655529 () Bool)

(declare-fun tp!311686 () Bool)

(assert (=> b!1027709 (= e!655529 (and tp_is_empty!5335 tp!311686))))

(assert (=> b!1027264 (= tp!311625 e!655529)))

(assert (= (and b!1027264 (is-Cons!10060 (t!101122 s!10566))) b!1027709))

(push 1)

(assert (not b!1027670))

(assert (not d!295217))

(assert (not b!1027669))

(assert (not d!295209))

(assert (not b!1027674))

(assert (not bm!70660))

(assert (not bm!70646))

(assert (not b!1027694))

(assert (not b!1027704))

(assert (not b!1027357))

(assert (not b!1027449))

(assert (not b!1027521))

(assert (not bm!70661))

(assert (not b!1027543))

(assert (not b!1027611))

(assert (not b!1027359))

(assert (not bm!70669))

(assert (not b!1027703))

(assert (not b!1027709))

(assert (not d!295221))

(assert (not b!1027364))

(assert (not b!1027692))

(assert (not d!295243))

(assert (not b!1027686))

(assert (not b!1027690))

(assert (not b!1027696))

(assert (not bm!70625))

(assert (not b!1027362))

(assert (not bm!70674))

(assert (not b!1027691))

(assert (not d!295225))

(assert (not b!1027688))

(assert (not bm!70650))

(assert (not b!1027698))

(assert (not b!1027702))

(assert (not b!1027695))

(assert (not bm!70653))

(assert tp_is_empty!5335)

(assert (not bm!70648))

(assert (not d!295213))

(assert (not b!1027363))

(assert (not bm!70657))

(assert (not b!1027687))

(assert (not b!1027361))

(assert (not bm!70658))

(assert (not d!295227))

(assert (not bm!70652))

(assert (not bm!70626))

(assert (not b!1027672))

(assert (not bm!70659))

(assert (not bm!70651))

(assert (not b!1027610))

(assert (not bm!70655))

(assert (not b!1027662))

(assert (not b!1027666))

(assert (not b!1027699))

(assert (not bm!70670))

(assert (not d!295247))

(assert (not b!1027700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


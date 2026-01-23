; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90316 () Bool)

(assert start!90316)

(declare-fun b!1038160 () Bool)

(assert (=> b!1038160 true))

(assert (=> b!1038160 true))

(declare-fun lambda!37466 () Int)

(declare-fun lambda!37465 () Int)

(assert (=> b!1038160 (not (= lambda!37466 lambda!37465))))

(assert (=> b!1038160 true))

(assert (=> b!1038160 true))

(declare-fun bs!247850 () Bool)

(declare-fun b!1038155 () Bool)

(assert (= bs!247850 (and b!1038155 b!1038160)))

(declare-datatypes ((C!6338 0))(
  ( (C!6339 (val!3417 Int)) )
))
(declare-datatypes ((Regex!2884 0))(
  ( (ElementMatch!2884 (c!172385 C!6338)) (Concat!4717 (regOne!6280 Regex!2884) (regTwo!6280 Regex!2884)) (EmptyExpr!2884) (Star!2884 (reg!3213 Regex!2884)) (EmptyLang!2884) (Union!2884 (regOne!6281 Regex!2884) (regTwo!6281 Regex!2884)) )
))
(declare-fun lt!357114 () Regex!2884)

(declare-fun lambda!37467 () Int)

(declare-fun r!15766 () Regex!2884)

(declare-fun lt!357119 () Regex!2884)

(assert (=> bs!247850 (= (and (= lt!357114 (regOne!6280 r!15766)) (= lt!357119 (regTwo!6280 r!15766))) (= lambda!37467 lambda!37465))))

(assert (=> bs!247850 (not (= lambda!37467 lambda!37466))))

(assert (=> b!1038155 true))

(assert (=> b!1038155 true))

(assert (=> b!1038155 true))

(declare-fun b!1038152 () Bool)

(declare-fun e!661036 () Bool)

(declare-fun e!661030 () Bool)

(assert (=> b!1038152 (= e!661036 e!661030)))

(declare-fun res!466264 () Bool)

(assert (=> b!1038152 (=> res!466264 e!661030)))

(declare-fun lt!357116 () Regex!2884)

(declare-datatypes ((List!10114 0))(
  ( (Nil!10098) (Cons!10098 (h!15499 C!6338) (t!101160 List!10114)) )
))
(declare-fun s!10566 () List!10114)

(declare-fun matchR!1420 (Regex!2884 List!10114) Bool)

(assert (=> b!1038152 (= res!466264 (not (matchR!1420 lt!357116 s!10566)))))

(assert (=> b!1038152 (= lt!357116 (Concat!4717 lt!357114 lt!357119))))

(declare-fun removeUselessConcat!433 (Regex!2884) Regex!2884)

(assert (=> b!1038152 (= lt!357119 (removeUselessConcat!433 (regTwo!6280 r!15766)))))

(assert (=> b!1038152 (= lt!357114 (removeUselessConcat!433 (regOne!6280 r!15766)))))

(declare-fun b!1038153 () Bool)

(declare-fun e!661032 () Bool)

(declare-fun tp!313854 () Bool)

(declare-fun tp!313857 () Bool)

(assert (=> b!1038153 (= e!661032 (and tp!313854 tp!313857))))

(declare-fun b!1038154 () Bool)

(declare-fun tp!313856 () Bool)

(assert (=> b!1038154 (= e!661032 tp!313856)))

(declare-fun e!661031 () Bool)

(assert (=> b!1038155 (= e!661030 e!661031)))

(declare-fun res!466263 () Bool)

(assert (=> b!1038155 (=> res!466263 e!661031)))

(declare-fun validRegex!1353 (Regex!2884) Bool)

(assert (=> b!1038155 (= res!466263 (not (validRegex!1353 lt!357114)))))

(declare-datatypes ((tuple2!11534 0))(
  ( (tuple2!11535 (_1!6593 List!10114) (_2!6593 List!10114)) )
))
(declare-datatypes ((Option!2409 0))(
  ( (None!2408) (Some!2408 (v!19825 tuple2!11534)) )
))
(declare-fun isDefined!2051 (Option!2409) Bool)

(declare-fun findConcatSeparation!515 (Regex!2884 Regex!2884 List!10114 List!10114 List!10114) Option!2409)

(declare-fun Exists!611 (Int) Bool)

(assert (=> b!1038155 (= (isDefined!2051 (findConcatSeparation!515 lt!357114 lt!357119 Nil!10098 s!10566 s!10566)) (Exists!611 lambda!37467))))

(declare-datatypes ((Unit!15443 0))(
  ( (Unit!15444) )
))
(declare-fun lt!357118 () Unit!15443)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!515 (Regex!2884 Regex!2884 List!10114) Unit!15443)

(assert (=> b!1038155 (= lt!357118 (lemmaFindConcatSeparationEquivalentToExists!515 lt!357114 lt!357119 s!10566))))

(declare-fun matchRSpec!683 (Regex!2884 List!10114) Bool)

(assert (=> b!1038155 (matchRSpec!683 lt!357116 s!10566)))

(declare-fun lt!357120 () Unit!15443)

(declare-fun mainMatchTheorem!683 (Regex!2884 List!10114) Unit!15443)

(assert (=> b!1038155 (= lt!357120 (mainMatchTheorem!683 lt!357116 s!10566))))

(declare-fun b!1038156 () Bool)

(declare-fun tp!313855 () Bool)

(declare-fun tp!313853 () Bool)

(assert (=> b!1038156 (= e!661032 (and tp!313855 tp!313853))))

(declare-fun res!466261 () Bool)

(declare-fun e!661033 () Bool)

(assert (=> start!90316 (=> (not res!466261) (not e!661033))))

(assert (=> start!90316 (= res!466261 (validRegex!1353 r!15766))))

(assert (=> start!90316 e!661033))

(assert (=> start!90316 e!661032))

(declare-fun e!661035 () Bool)

(assert (=> start!90316 e!661035))

(declare-fun b!1038157 () Bool)

(declare-fun e!661034 () Bool)

(assert (=> b!1038157 (= e!661033 (not e!661034))))

(declare-fun res!466262 () Bool)

(assert (=> b!1038157 (=> res!466262 e!661034)))

(declare-fun lt!357122 () Bool)

(assert (=> b!1038157 (= res!466262 (or lt!357122 (and (is-Concat!4717 r!15766) (is-EmptyExpr!2884 (regOne!6280 r!15766))) (and (is-Concat!4717 r!15766) (is-EmptyExpr!2884 (regTwo!6280 r!15766))) (not (is-Concat!4717 r!15766))))))

(assert (=> b!1038157 (= lt!357122 (matchRSpec!683 r!15766 s!10566))))

(assert (=> b!1038157 (= lt!357122 (matchR!1420 r!15766 s!10566))))

(declare-fun lt!357117 () Unit!15443)

(assert (=> b!1038157 (= lt!357117 (mainMatchTheorem!683 r!15766 s!10566))))

(declare-fun b!1038158 () Bool)

(declare-fun tp_is_empty!5411 () Bool)

(declare-fun tp!313858 () Bool)

(assert (=> b!1038158 (= e!661035 (and tp_is_empty!5411 tp!313858))))

(declare-fun b!1038159 () Bool)

(assert (=> b!1038159 (= e!661031 (validRegex!1353 lt!357119))))

(assert (=> b!1038160 (= e!661034 e!661036)))

(declare-fun res!466265 () Bool)

(assert (=> b!1038160 (=> res!466265 e!661036)))

(declare-fun isEmpty!6498 (List!10114) Bool)

(assert (=> b!1038160 (= res!466265 (isEmpty!6498 s!10566))))

(assert (=> b!1038160 (= (Exists!611 lambda!37465) (Exists!611 lambda!37466))))

(declare-fun lt!357115 () Unit!15443)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!299 (Regex!2884 Regex!2884 List!10114) Unit!15443)

(assert (=> b!1038160 (= lt!357115 (lemmaExistCutMatchRandMatchRSpecEquivalent!299 (regOne!6280 r!15766) (regTwo!6280 r!15766) s!10566))))

(assert (=> b!1038160 (= (isDefined!2051 (findConcatSeparation!515 (regOne!6280 r!15766) (regTwo!6280 r!15766) Nil!10098 s!10566 s!10566)) (Exists!611 lambda!37465))))

(declare-fun lt!357121 () Unit!15443)

(assert (=> b!1038160 (= lt!357121 (lemmaFindConcatSeparationEquivalentToExists!515 (regOne!6280 r!15766) (regTwo!6280 r!15766) s!10566))))

(declare-fun b!1038161 () Bool)

(assert (=> b!1038161 (= e!661032 tp_is_empty!5411)))

(assert (= (and start!90316 res!466261) b!1038157))

(assert (= (and b!1038157 (not res!466262)) b!1038160))

(assert (= (and b!1038160 (not res!466265)) b!1038152))

(assert (= (and b!1038152 (not res!466264)) b!1038155))

(assert (= (and b!1038155 (not res!466263)) b!1038159))

(assert (= (and start!90316 (is-ElementMatch!2884 r!15766)) b!1038161))

(assert (= (and start!90316 (is-Concat!4717 r!15766)) b!1038153))

(assert (= (and start!90316 (is-Star!2884 r!15766)) b!1038154))

(assert (= (and start!90316 (is-Union!2884 r!15766)) b!1038156))

(assert (= (and start!90316 (is-Cons!10098 s!10566)) b!1038158))

(declare-fun m!1207877 () Bool)

(assert (=> b!1038160 m!1207877))

(declare-fun m!1207879 () Bool)

(assert (=> b!1038160 m!1207879))

(declare-fun m!1207881 () Bool)

(assert (=> b!1038160 m!1207881))

(assert (=> b!1038160 m!1207877))

(declare-fun m!1207883 () Bool)

(assert (=> b!1038160 m!1207883))

(declare-fun m!1207885 () Bool)

(assert (=> b!1038160 m!1207885))

(assert (=> b!1038160 m!1207885))

(declare-fun m!1207887 () Bool)

(assert (=> b!1038160 m!1207887))

(declare-fun m!1207889 () Bool)

(assert (=> b!1038160 m!1207889))

(declare-fun m!1207891 () Bool)

(assert (=> b!1038152 m!1207891))

(declare-fun m!1207893 () Bool)

(assert (=> b!1038152 m!1207893))

(declare-fun m!1207895 () Bool)

(assert (=> b!1038152 m!1207895))

(declare-fun m!1207897 () Bool)

(assert (=> b!1038157 m!1207897))

(declare-fun m!1207899 () Bool)

(assert (=> b!1038157 m!1207899))

(declare-fun m!1207901 () Bool)

(assert (=> b!1038157 m!1207901))

(declare-fun m!1207903 () Bool)

(assert (=> start!90316 m!1207903))

(declare-fun m!1207905 () Bool)

(assert (=> b!1038159 m!1207905))

(declare-fun m!1207907 () Bool)

(assert (=> b!1038155 m!1207907))

(declare-fun m!1207909 () Bool)

(assert (=> b!1038155 m!1207909))

(declare-fun m!1207911 () Bool)

(assert (=> b!1038155 m!1207911))

(declare-fun m!1207913 () Bool)

(assert (=> b!1038155 m!1207913))

(assert (=> b!1038155 m!1207909))

(declare-fun m!1207915 () Bool)

(assert (=> b!1038155 m!1207915))

(declare-fun m!1207917 () Bool)

(assert (=> b!1038155 m!1207917))

(declare-fun m!1207919 () Bool)

(assert (=> b!1038155 m!1207919))

(push 1)

(assert (not b!1038156))

(assert tp_is_empty!5411)

(assert (not b!1038160))

(assert (not b!1038158))

(assert (not b!1038155))

(assert (not start!90316))

(assert (not b!1038153))

(assert (not b!1038152))

(assert (not b!1038159))

(assert (not b!1038157))

(assert (not b!1038154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!296534 () Bool)

(assert (=> d!296534 (= (isEmpty!6498 s!10566) (is-Nil!10098 s!10566))))

(assert (=> b!1038160 d!296534))

(declare-fun d!296536 () Bool)

(declare-fun choose!6637 (Int) Bool)

(assert (=> d!296536 (= (Exists!611 lambda!37466) (choose!6637 lambda!37466))))

(declare-fun bs!247852 () Bool)

(assert (= bs!247852 d!296536))

(declare-fun m!1207965 () Bool)

(assert (=> bs!247852 m!1207965))

(assert (=> b!1038160 d!296536))

(declare-fun d!296538 () Bool)

(declare-fun isEmpty!6500 (Option!2409) Bool)

(assert (=> d!296538 (= (isDefined!2051 (findConcatSeparation!515 (regOne!6280 r!15766) (regTwo!6280 r!15766) Nil!10098 s!10566 s!10566)) (not (isEmpty!6500 (findConcatSeparation!515 (regOne!6280 r!15766) (regTwo!6280 r!15766) Nil!10098 s!10566 s!10566))))))

(declare-fun bs!247853 () Bool)

(assert (= bs!247853 d!296538))

(assert (=> bs!247853 m!1207885))

(declare-fun m!1207967 () Bool)

(assert (=> bs!247853 m!1207967))

(assert (=> b!1038160 d!296538))

(declare-fun bs!247854 () Bool)

(declare-fun d!296540 () Bool)

(assert (= bs!247854 (and d!296540 b!1038160)))

(declare-fun lambda!37481 () Int)

(assert (=> bs!247854 (= lambda!37481 lambda!37465)))

(assert (=> bs!247854 (not (= lambda!37481 lambda!37466))))

(declare-fun bs!247855 () Bool)

(assert (= bs!247855 (and d!296540 b!1038155)))

(assert (=> bs!247855 (= (and (= (regOne!6280 r!15766) lt!357114) (= (regTwo!6280 r!15766) lt!357119)) (= lambda!37481 lambda!37467))))

(assert (=> d!296540 true))

(assert (=> d!296540 true))

(assert (=> d!296540 true))

(assert (=> d!296540 (= (isDefined!2051 (findConcatSeparation!515 (regOne!6280 r!15766) (regTwo!6280 r!15766) Nil!10098 s!10566 s!10566)) (Exists!611 lambda!37481))))

(declare-fun lt!357152 () Unit!15443)

(declare-fun choose!6638 (Regex!2884 Regex!2884 List!10114) Unit!15443)

(assert (=> d!296540 (= lt!357152 (choose!6638 (regOne!6280 r!15766) (regTwo!6280 r!15766) s!10566))))

(assert (=> d!296540 (validRegex!1353 (regOne!6280 r!15766))))

(assert (=> d!296540 (= (lemmaFindConcatSeparationEquivalentToExists!515 (regOne!6280 r!15766) (regTwo!6280 r!15766) s!10566) lt!357152)))

(declare-fun bs!247856 () Bool)

(assert (= bs!247856 d!296540))

(assert (=> bs!247856 m!1207885))

(assert (=> bs!247856 m!1207887))

(declare-fun m!1207969 () Bool)

(assert (=> bs!247856 m!1207969))

(assert (=> bs!247856 m!1207885))

(declare-fun m!1207971 () Bool)

(assert (=> bs!247856 m!1207971))

(declare-fun m!1207973 () Bool)

(assert (=> bs!247856 m!1207973))

(assert (=> b!1038160 d!296540))

(declare-fun b!1038265 () Bool)

(declare-fun res!466328 () Bool)

(declare-fun e!661101 () Bool)

(assert (=> b!1038265 (=> (not res!466328) (not e!661101))))

(declare-fun lt!357161 () Option!2409)

(declare-fun get!3604 (Option!2409) tuple2!11534)

(assert (=> b!1038265 (= res!466328 (matchR!1420 (regOne!6280 r!15766) (_1!6593 (get!3604 lt!357161))))))

(declare-fun b!1038266 () Bool)

(declare-fun e!661102 () Bool)

(assert (=> b!1038266 (= e!661102 (matchR!1420 (regTwo!6280 r!15766) s!10566))))

(declare-fun b!1038267 () Bool)

(declare-fun ++!2784 (List!10114 List!10114) List!10114)

(assert (=> b!1038267 (= e!661101 (= (++!2784 (_1!6593 (get!3604 lt!357161)) (_2!6593 (get!3604 lt!357161))) s!10566))))

(declare-fun b!1038268 () Bool)

(declare-fun lt!357160 () Unit!15443)

(declare-fun lt!357159 () Unit!15443)

(assert (=> b!1038268 (= lt!357160 lt!357159)))

(assert (=> b!1038268 (= (++!2784 (++!2784 Nil!10098 (Cons!10098 (h!15499 s!10566) Nil!10098)) (t!101160 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!377 (List!10114 C!6338 List!10114 List!10114) Unit!15443)

(assert (=> b!1038268 (= lt!357159 (lemmaMoveElementToOtherListKeepsConcatEq!377 Nil!10098 (h!15499 s!10566) (t!101160 s!10566) s!10566))))

(declare-fun e!661100 () Option!2409)

(assert (=> b!1038268 (= e!661100 (findConcatSeparation!515 (regOne!6280 r!15766) (regTwo!6280 r!15766) (++!2784 Nil!10098 (Cons!10098 (h!15499 s!10566) Nil!10098)) (t!101160 s!10566) s!10566))))

(declare-fun b!1038269 () Bool)

(declare-fun res!466329 () Bool)

(assert (=> b!1038269 (=> (not res!466329) (not e!661101))))

(assert (=> b!1038269 (= res!466329 (matchR!1420 (regTwo!6280 r!15766) (_2!6593 (get!3604 lt!357161))))))

(declare-fun d!296544 () Bool)

(declare-fun e!661103 () Bool)

(assert (=> d!296544 e!661103))

(declare-fun res!466330 () Bool)

(assert (=> d!296544 (=> res!466330 e!661103)))

(assert (=> d!296544 (= res!466330 e!661101)))

(declare-fun res!466327 () Bool)

(assert (=> d!296544 (=> (not res!466327) (not e!661101))))

(assert (=> d!296544 (= res!466327 (isDefined!2051 lt!357161))))

(declare-fun e!661099 () Option!2409)

(assert (=> d!296544 (= lt!357161 e!661099)))

(declare-fun c!172398 () Bool)

(assert (=> d!296544 (= c!172398 e!661102)))

(declare-fun res!466326 () Bool)

(assert (=> d!296544 (=> (not res!466326) (not e!661102))))

(assert (=> d!296544 (= res!466326 (matchR!1420 (regOne!6280 r!15766) Nil!10098))))

(assert (=> d!296544 (validRegex!1353 (regOne!6280 r!15766))))

(assert (=> d!296544 (= (findConcatSeparation!515 (regOne!6280 r!15766) (regTwo!6280 r!15766) Nil!10098 s!10566 s!10566) lt!357161)))

(declare-fun b!1038270 () Bool)

(assert (=> b!1038270 (= e!661099 e!661100)))

(declare-fun c!172397 () Bool)

(assert (=> b!1038270 (= c!172397 (is-Nil!10098 s!10566))))

(declare-fun b!1038271 () Bool)

(assert (=> b!1038271 (= e!661103 (not (isDefined!2051 lt!357161)))))

(declare-fun b!1038272 () Bool)

(assert (=> b!1038272 (= e!661100 None!2408)))

(declare-fun b!1038273 () Bool)

(assert (=> b!1038273 (= e!661099 (Some!2408 (tuple2!11535 Nil!10098 s!10566)))))

(assert (= (and d!296544 res!466326) b!1038266))

(assert (= (and d!296544 c!172398) b!1038273))

(assert (= (and d!296544 (not c!172398)) b!1038270))

(assert (= (and b!1038270 c!172397) b!1038272))

(assert (= (and b!1038270 (not c!172397)) b!1038268))

(assert (= (and d!296544 res!466327) b!1038265))

(assert (= (and b!1038265 res!466328) b!1038269))

(assert (= (and b!1038269 res!466329) b!1038267))

(assert (= (and d!296544 (not res!466330)) b!1038271))

(declare-fun m!1207981 () Bool)

(assert (=> b!1038265 m!1207981))

(declare-fun m!1207983 () Bool)

(assert (=> b!1038265 m!1207983))

(declare-fun m!1207985 () Bool)

(assert (=> b!1038266 m!1207985))

(assert (=> b!1038269 m!1207981))

(declare-fun m!1207987 () Bool)

(assert (=> b!1038269 m!1207987))

(assert (=> b!1038267 m!1207981))

(declare-fun m!1207989 () Bool)

(assert (=> b!1038267 m!1207989))

(declare-fun m!1207991 () Bool)

(assert (=> b!1038271 m!1207991))

(declare-fun m!1207993 () Bool)

(assert (=> b!1038268 m!1207993))

(assert (=> b!1038268 m!1207993))

(declare-fun m!1207995 () Bool)

(assert (=> b!1038268 m!1207995))

(declare-fun m!1207997 () Bool)

(assert (=> b!1038268 m!1207997))

(assert (=> b!1038268 m!1207993))

(declare-fun m!1207999 () Bool)

(assert (=> b!1038268 m!1207999))

(assert (=> d!296544 m!1207991))

(declare-fun m!1208001 () Bool)

(assert (=> d!296544 m!1208001))

(assert (=> d!296544 m!1207973))

(assert (=> b!1038160 d!296544))

(declare-fun d!296548 () Bool)

(assert (=> d!296548 (= (Exists!611 lambda!37465) (choose!6637 lambda!37465))))

(declare-fun bs!247857 () Bool)

(assert (= bs!247857 d!296548))

(declare-fun m!1208003 () Bool)

(assert (=> bs!247857 m!1208003))

(assert (=> b!1038160 d!296548))

(declare-fun bs!247858 () Bool)

(declare-fun d!296550 () Bool)

(assert (= bs!247858 (and d!296550 b!1038160)))

(declare-fun lambda!37486 () Int)

(assert (=> bs!247858 (= lambda!37486 lambda!37465)))

(assert (=> bs!247858 (not (= lambda!37486 lambda!37466))))

(declare-fun bs!247859 () Bool)

(assert (= bs!247859 (and d!296550 b!1038155)))

(assert (=> bs!247859 (= (and (= (regOne!6280 r!15766) lt!357114) (= (regTwo!6280 r!15766) lt!357119)) (= lambda!37486 lambda!37467))))

(declare-fun bs!247860 () Bool)

(assert (= bs!247860 (and d!296550 d!296540)))

(assert (=> bs!247860 (= lambda!37486 lambda!37481)))

(assert (=> d!296550 true))

(assert (=> d!296550 true))

(assert (=> d!296550 true))

(declare-fun bs!247861 () Bool)

(assert (= bs!247861 d!296550))

(declare-fun lambda!37487 () Int)

(assert (=> bs!247861 (not (= lambda!37487 lambda!37486))))

(assert (=> bs!247859 (not (= lambda!37487 lambda!37467))))

(assert (=> bs!247858 (not (= lambda!37487 lambda!37465))))

(assert (=> bs!247858 (= lambda!37487 lambda!37466)))

(assert (=> bs!247860 (not (= lambda!37487 lambda!37481))))

(assert (=> d!296550 true))

(assert (=> d!296550 true))

(assert (=> d!296550 true))

(assert (=> d!296550 (= (Exists!611 lambda!37486) (Exists!611 lambda!37487))))

(declare-fun lt!357164 () Unit!15443)

(declare-fun choose!6639 (Regex!2884 Regex!2884 List!10114) Unit!15443)

(assert (=> d!296550 (= lt!357164 (choose!6639 (regOne!6280 r!15766) (regTwo!6280 r!15766) s!10566))))

(assert (=> d!296550 (validRegex!1353 (regOne!6280 r!15766))))

(assert (=> d!296550 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!299 (regOne!6280 r!15766) (regTwo!6280 r!15766) s!10566) lt!357164)))

(declare-fun m!1208005 () Bool)

(assert (=> bs!247861 m!1208005))

(declare-fun m!1208007 () Bool)

(assert (=> bs!247861 m!1208007))

(declare-fun m!1208009 () Bool)

(assert (=> bs!247861 m!1208009))

(assert (=> bs!247861 m!1207973))

(assert (=> b!1038160 d!296550))

(declare-fun bm!71976 () Bool)

(declare-fun call!71983 () Bool)

(declare-fun c!172409 () Bool)

(assert (=> bm!71976 (= call!71983 (validRegex!1353 (ite c!172409 (regOne!6281 lt!357119) (regOne!6280 lt!357119))))))

(declare-fun b!1038328 () Bool)

(declare-fun e!661138 () Bool)

(declare-fun call!71982 () Bool)

(assert (=> b!1038328 (= e!661138 call!71982)))

(declare-fun bm!71977 () Bool)

(declare-fun call!71981 () Bool)

(declare-fun c!172410 () Bool)

(assert (=> bm!71977 (= call!71981 (validRegex!1353 (ite c!172410 (reg!3213 lt!357119) (ite c!172409 (regTwo!6281 lt!357119) (regTwo!6280 lt!357119)))))))

(declare-fun b!1038329 () Bool)

(declare-fun e!661142 () Bool)

(assert (=> b!1038329 (= e!661142 e!661138)))

(declare-fun res!466367 () Bool)

(assert (=> b!1038329 (=> (not res!466367) (not e!661138))))

(assert (=> b!1038329 (= res!466367 call!71983)))

(declare-fun b!1038330 () Bool)

(declare-fun res!466366 () Bool)

(declare-fun e!661139 () Bool)

(assert (=> b!1038330 (=> (not res!466366) (not e!661139))))

(assert (=> b!1038330 (= res!466366 call!71983)))

(declare-fun e!661140 () Bool)

(assert (=> b!1038330 (= e!661140 e!661139)))

(declare-fun b!1038331 () Bool)

(declare-fun e!661141 () Bool)

(assert (=> b!1038331 (= e!661141 e!661140)))

(assert (=> b!1038331 (= c!172409 (is-Union!2884 lt!357119))))

(declare-fun b!1038332 () Bool)

(declare-fun e!661136 () Bool)

(assert (=> b!1038332 (= e!661136 e!661141)))

(assert (=> b!1038332 (= c!172410 (is-Star!2884 lt!357119))))

(declare-fun d!296552 () Bool)

(declare-fun res!466368 () Bool)

(assert (=> d!296552 (=> res!466368 e!661136)))

(assert (=> d!296552 (= res!466368 (is-ElementMatch!2884 lt!357119))))

(assert (=> d!296552 (= (validRegex!1353 lt!357119) e!661136)))

(declare-fun bm!71978 () Bool)

(assert (=> bm!71978 (= call!71982 call!71981)))

(declare-fun b!1038333 () Bool)

(assert (=> b!1038333 (= e!661139 call!71982)))

(declare-fun b!1038334 () Bool)

(declare-fun e!661137 () Bool)

(assert (=> b!1038334 (= e!661137 call!71981)))

(declare-fun b!1038335 () Bool)

(assert (=> b!1038335 (= e!661141 e!661137)))

(declare-fun res!466369 () Bool)

(declare-fun nullable!976 (Regex!2884) Bool)

(assert (=> b!1038335 (= res!466369 (not (nullable!976 (reg!3213 lt!357119))))))

(assert (=> b!1038335 (=> (not res!466369) (not e!661137))))

(declare-fun b!1038336 () Bool)

(declare-fun res!466365 () Bool)

(assert (=> b!1038336 (=> res!466365 e!661142)))

(assert (=> b!1038336 (= res!466365 (not (is-Concat!4717 lt!357119)))))

(assert (=> b!1038336 (= e!661140 e!661142)))

(assert (= (and d!296552 (not res!466368)) b!1038332))

(assert (= (and b!1038332 c!172410) b!1038335))

(assert (= (and b!1038332 (not c!172410)) b!1038331))

(assert (= (and b!1038335 res!466369) b!1038334))

(assert (= (and b!1038331 c!172409) b!1038330))

(assert (= (and b!1038331 (not c!172409)) b!1038336))

(assert (= (and b!1038330 res!466366) b!1038333))

(assert (= (and b!1038336 (not res!466365)) b!1038329))

(assert (= (and b!1038329 res!466367) b!1038328))

(assert (= (or b!1038333 b!1038328) bm!71978))

(assert (= (or b!1038330 b!1038329) bm!71976))

(assert (= (or b!1038334 bm!71978) bm!71977))

(declare-fun m!1208011 () Bool)

(assert (=> bm!71976 m!1208011))

(declare-fun m!1208013 () Bool)

(assert (=> bm!71977 m!1208013))

(declare-fun m!1208015 () Bool)

(assert (=> b!1038335 m!1208015))

(assert (=> b!1038159 d!296552))

(declare-fun bs!247862 () Bool)

(declare-fun b!1038387 () Bool)

(assert (= bs!247862 (and b!1038387 d!296550)))

(declare-fun lambda!37492 () Int)

(assert (=> bs!247862 (not (= lambda!37492 lambda!37486))))

(declare-fun bs!247863 () Bool)

(assert (= bs!247863 (and b!1038387 b!1038155)))

(assert (=> bs!247863 (not (= lambda!37492 lambda!37467))))

(declare-fun bs!247864 () Bool)

(assert (= bs!247864 (and b!1038387 b!1038160)))

(assert (=> bs!247864 (not (= lambda!37492 lambda!37465))))

(assert (=> bs!247864 (not (= lambda!37492 lambda!37466))))

(assert (=> bs!247862 (not (= lambda!37492 lambda!37487))))

(declare-fun bs!247865 () Bool)

(assert (= bs!247865 (and b!1038387 d!296540)))

(assert (=> bs!247865 (not (= lambda!37492 lambda!37481))))

(assert (=> b!1038387 true))

(assert (=> b!1038387 true))

(declare-fun bs!247866 () Bool)

(declare-fun b!1038392 () Bool)

(assert (= bs!247866 (and b!1038392 b!1038387)))

(declare-fun lambda!37493 () Int)

(assert (=> bs!247866 (not (= lambda!37493 lambda!37492))))

(declare-fun bs!247867 () Bool)

(assert (= bs!247867 (and b!1038392 d!296550)))

(assert (=> bs!247867 (not (= lambda!37493 lambda!37486))))

(declare-fun bs!247868 () Bool)

(assert (= bs!247868 (and b!1038392 b!1038155)))

(assert (=> bs!247868 (not (= lambda!37493 lambda!37467))))

(declare-fun bs!247869 () Bool)

(assert (= bs!247869 (and b!1038392 b!1038160)))

(assert (=> bs!247869 (not (= lambda!37493 lambda!37465))))

(assert (=> bs!247869 (= (and (= (regOne!6280 lt!357116) (regOne!6280 r!15766)) (= (regTwo!6280 lt!357116) (regTwo!6280 r!15766))) (= lambda!37493 lambda!37466))))

(assert (=> bs!247867 (= (and (= (regOne!6280 lt!357116) (regOne!6280 r!15766)) (= (regTwo!6280 lt!357116) (regTwo!6280 r!15766))) (= lambda!37493 lambda!37487))))

(declare-fun bs!247870 () Bool)

(assert (= bs!247870 (and b!1038392 d!296540)))

(assert (=> bs!247870 (not (= lambda!37493 lambda!37481))))

(assert (=> b!1038392 true))

(assert (=> b!1038392 true))

(declare-fun c!172423 () Bool)

(declare-fun bm!71984 () Bool)

(declare-fun call!71989 () Bool)

(assert (=> bm!71984 (= call!71989 (Exists!611 (ite c!172423 lambda!37492 lambda!37493)))))

(declare-fun b!1038383 () Bool)

(declare-fun e!661169 () Bool)

(declare-fun e!661173 () Bool)

(assert (=> b!1038383 (= e!661169 e!661173)))

(declare-fun res!466395 () Bool)

(assert (=> b!1038383 (= res!466395 (not (is-EmptyLang!2884 lt!357116)))))

(assert (=> b!1038383 (=> (not res!466395) (not e!661173))))

(declare-fun b!1038384 () Bool)

(declare-fun c!172424 () Bool)

(assert (=> b!1038384 (= c!172424 (is-Union!2884 lt!357116))))

(declare-fun e!661172 () Bool)

(declare-fun e!661170 () Bool)

(assert (=> b!1038384 (= e!661172 e!661170)))

(declare-fun b!1038385 () Bool)

(declare-fun res!466394 () Bool)

(declare-fun e!661171 () Bool)

(assert (=> b!1038385 (=> res!466394 e!661171)))

(declare-fun call!71990 () Bool)

(assert (=> b!1038385 (= res!466394 call!71990)))

(declare-fun e!661168 () Bool)

(assert (=> b!1038385 (= e!661168 e!661171)))

(declare-fun b!1038386 () Bool)

(assert (=> b!1038386 (= e!661170 e!661168)))

(assert (=> b!1038386 (= c!172423 (is-Star!2884 lt!357116))))

(declare-fun bm!71985 () Bool)

(assert (=> bm!71985 (= call!71990 (isEmpty!6498 s!10566))))

(declare-fun d!296554 () Bool)

(declare-fun c!172422 () Bool)

(assert (=> d!296554 (= c!172422 (is-EmptyExpr!2884 lt!357116))))

(assert (=> d!296554 (= (matchRSpec!683 lt!357116 s!10566) e!661169)))

(assert (=> b!1038387 (= e!661171 call!71989)))

(declare-fun b!1038388 () Bool)

(declare-fun e!661174 () Bool)

(assert (=> b!1038388 (= e!661174 (matchRSpec!683 (regTwo!6281 lt!357116) s!10566))))

(declare-fun b!1038389 () Bool)

(declare-fun c!172425 () Bool)

(assert (=> b!1038389 (= c!172425 (is-ElementMatch!2884 lt!357116))))

(assert (=> b!1038389 (= e!661173 e!661172)))

(declare-fun b!1038390 () Bool)

(assert (=> b!1038390 (= e!661172 (= s!10566 (Cons!10098 (c!172385 lt!357116) Nil!10098)))))

(declare-fun b!1038391 () Bool)

(assert (=> b!1038391 (= e!661169 call!71990)))

(assert (=> b!1038392 (= e!661168 call!71989)))

(declare-fun b!1038393 () Bool)

(assert (=> b!1038393 (= e!661170 e!661174)))

(declare-fun res!466396 () Bool)

(assert (=> b!1038393 (= res!466396 (matchRSpec!683 (regOne!6281 lt!357116) s!10566))))

(assert (=> b!1038393 (=> res!466396 e!661174)))

(assert (= (and d!296554 c!172422) b!1038391))

(assert (= (and d!296554 (not c!172422)) b!1038383))

(assert (= (and b!1038383 res!466395) b!1038389))

(assert (= (and b!1038389 c!172425) b!1038390))

(assert (= (and b!1038389 (not c!172425)) b!1038384))

(assert (= (and b!1038384 c!172424) b!1038393))

(assert (= (and b!1038384 (not c!172424)) b!1038386))

(assert (= (and b!1038393 (not res!466396)) b!1038388))

(assert (= (and b!1038386 c!172423) b!1038385))

(assert (= (and b!1038386 (not c!172423)) b!1038392))

(assert (= (and b!1038385 (not res!466394)) b!1038387))

(assert (= (or b!1038387 b!1038392) bm!71984))

(assert (= (or b!1038391 b!1038385) bm!71985))

(declare-fun m!1208031 () Bool)

(assert (=> bm!71984 m!1208031))

(assert (=> bm!71985 m!1207881))

(declare-fun m!1208033 () Bool)

(assert (=> b!1038388 m!1208033))

(declare-fun m!1208035 () Bool)

(assert (=> b!1038393 m!1208035))

(assert (=> b!1038155 d!296554))

(declare-fun d!296558 () Bool)

(assert (=> d!296558 (= (Exists!611 lambda!37467) (choose!6637 lambda!37467))))

(declare-fun bs!247871 () Bool)

(assert (= bs!247871 d!296558))

(declare-fun m!1208037 () Bool)

(assert (=> bs!247871 m!1208037))

(assert (=> b!1038155 d!296558))

(declare-fun bm!71986 () Bool)

(declare-fun call!71993 () Bool)

(declare-fun c!172426 () Bool)

(assert (=> bm!71986 (= call!71993 (validRegex!1353 (ite c!172426 (regOne!6281 lt!357114) (regOne!6280 lt!357114))))))

(declare-fun b!1038394 () Bool)

(declare-fun e!661177 () Bool)

(declare-fun call!71992 () Bool)

(assert (=> b!1038394 (= e!661177 call!71992)))

(declare-fun call!71991 () Bool)

(declare-fun bm!71987 () Bool)

(declare-fun c!172427 () Bool)

(assert (=> bm!71987 (= call!71991 (validRegex!1353 (ite c!172427 (reg!3213 lt!357114) (ite c!172426 (regTwo!6281 lt!357114) (regTwo!6280 lt!357114)))))))

(declare-fun b!1038395 () Bool)

(declare-fun e!661181 () Bool)

(assert (=> b!1038395 (= e!661181 e!661177)))

(declare-fun res!466399 () Bool)

(assert (=> b!1038395 (=> (not res!466399) (not e!661177))))

(assert (=> b!1038395 (= res!466399 call!71993)))

(declare-fun b!1038396 () Bool)

(declare-fun res!466398 () Bool)

(declare-fun e!661178 () Bool)

(assert (=> b!1038396 (=> (not res!466398) (not e!661178))))

(assert (=> b!1038396 (= res!466398 call!71993)))

(declare-fun e!661179 () Bool)

(assert (=> b!1038396 (= e!661179 e!661178)))

(declare-fun b!1038397 () Bool)

(declare-fun e!661180 () Bool)

(assert (=> b!1038397 (= e!661180 e!661179)))

(assert (=> b!1038397 (= c!172426 (is-Union!2884 lt!357114))))

(declare-fun b!1038398 () Bool)

(declare-fun e!661175 () Bool)

(assert (=> b!1038398 (= e!661175 e!661180)))

(assert (=> b!1038398 (= c!172427 (is-Star!2884 lt!357114))))

(declare-fun d!296560 () Bool)

(declare-fun res!466400 () Bool)

(assert (=> d!296560 (=> res!466400 e!661175)))

(assert (=> d!296560 (= res!466400 (is-ElementMatch!2884 lt!357114))))

(assert (=> d!296560 (= (validRegex!1353 lt!357114) e!661175)))

(declare-fun bm!71988 () Bool)

(assert (=> bm!71988 (= call!71992 call!71991)))

(declare-fun b!1038399 () Bool)

(assert (=> b!1038399 (= e!661178 call!71992)))

(declare-fun b!1038400 () Bool)

(declare-fun e!661176 () Bool)

(assert (=> b!1038400 (= e!661176 call!71991)))

(declare-fun b!1038401 () Bool)

(assert (=> b!1038401 (= e!661180 e!661176)))

(declare-fun res!466401 () Bool)

(assert (=> b!1038401 (= res!466401 (not (nullable!976 (reg!3213 lt!357114))))))

(assert (=> b!1038401 (=> (not res!466401) (not e!661176))))

(declare-fun b!1038402 () Bool)

(declare-fun res!466397 () Bool)

(assert (=> b!1038402 (=> res!466397 e!661181)))

(assert (=> b!1038402 (= res!466397 (not (is-Concat!4717 lt!357114)))))

(assert (=> b!1038402 (= e!661179 e!661181)))

(assert (= (and d!296560 (not res!466400)) b!1038398))

(assert (= (and b!1038398 c!172427) b!1038401))

(assert (= (and b!1038398 (not c!172427)) b!1038397))

(assert (= (and b!1038401 res!466401) b!1038400))

(assert (= (and b!1038397 c!172426) b!1038396))

(assert (= (and b!1038397 (not c!172426)) b!1038402))

(assert (= (and b!1038396 res!466398) b!1038399))

(assert (= (and b!1038402 (not res!466397)) b!1038395))

(assert (= (and b!1038395 res!466399) b!1038394))

(assert (= (or b!1038399 b!1038394) bm!71988))

(assert (= (or b!1038396 b!1038395) bm!71986))

(assert (= (or b!1038400 bm!71988) bm!71987))

(declare-fun m!1208039 () Bool)

(assert (=> bm!71986 m!1208039))

(declare-fun m!1208041 () Bool)

(assert (=> bm!71987 m!1208041))

(declare-fun m!1208043 () Bool)

(assert (=> b!1038401 m!1208043))

(assert (=> b!1038155 d!296560))

(declare-fun d!296562 () Bool)

(assert (=> d!296562 (= (isDefined!2051 (findConcatSeparation!515 lt!357114 lt!357119 Nil!10098 s!10566 s!10566)) (not (isEmpty!6500 (findConcatSeparation!515 lt!357114 lt!357119 Nil!10098 s!10566 s!10566))))))

(declare-fun bs!247872 () Bool)

(assert (= bs!247872 d!296562))

(assert (=> bs!247872 m!1207909))

(declare-fun m!1208045 () Bool)

(assert (=> bs!247872 m!1208045))

(assert (=> b!1038155 d!296562))

(declare-fun b!1038405 () Bool)

(declare-fun res!466404 () Bool)

(declare-fun e!661184 () Bool)

(assert (=> b!1038405 (=> (not res!466404) (not e!661184))))

(declare-fun lt!357172 () Option!2409)

(assert (=> b!1038405 (= res!466404 (matchR!1420 lt!357114 (_1!6593 (get!3604 lt!357172))))))

(declare-fun b!1038406 () Bool)

(declare-fun e!661185 () Bool)

(assert (=> b!1038406 (= e!661185 (matchR!1420 lt!357119 s!10566))))

(declare-fun b!1038407 () Bool)

(assert (=> b!1038407 (= e!661184 (= (++!2784 (_1!6593 (get!3604 lt!357172)) (_2!6593 (get!3604 lt!357172))) s!10566))))

(declare-fun b!1038408 () Bool)

(declare-fun lt!357171 () Unit!15443)

(declare-fun lt!357170 () Unit!15443)

(assert (=> b!1038408 (= lt!357171 lt!357170)))

(assert (=> b!1038408 (= (++!2784 (++!2784 Nil!10098 (Cons!10098 (h!15499 s!10566) Nil!10098)) (t!101160 s!10566)) s!10566)))

(assert (=> b!1038408 (= lt!357170 (lemmaMoveElementToOtherListKeepsConcatEq!377 Nil!10098 (h!15499 s!10566) (t!101160 s!10566) s!10566))))

(declare-fun e!661183 () Option!2409)

(assert (=> b!1038408 (= e!661183 (findConcatSeparation!515 lt!357114 lt!357119 (++!2784 Nil!10098 (Cons!10098 (h!15499 s!10566) Nil!10098)) (t!101160 s!10566) s!10566))))

(declare-fun b!1038409 () Bool)

(declare-fun res!466405 () Bool)

(assert (=> b!1038409 (=> (not res!466405) (not e!661184))))

(assert (=> b!1038409 (= res!466405 (matchR!1420 lt!357119 (_2!6593 (get!3604 lt!357172))))))

(declare-fun d!296564 () Bool)

(declare-fun e!661186 () Bool)

(assert (=> d!296564 e!661186))

(declare-fun res!466406 () Bool)

(assert (=> d!296564 (=> res!466406 e!661186)))

(assert (=> d!296564 (= res!466406 e!661184)))

(declare-fun res!466403 () Bool)

(assert (=> d!296564 (=> (not res!466403) (not e!661184))))

(assert (=> d!296564 (= res!466403 (isDefined!2051 lt!357172))))

(declare-fun e!661182 () Option!2409)

(assert (=> d!296564 (= lt!357172 e!661182)))

(declare-fun c!172429 () Bool)

(assert (=> d!296564 (= c!172429 e!661185)))

(declare-fun res!466402 () Bool)

(assert (=> d!296564 (=> (not res!466402) (not e!661185))))

(assert (=> d!296564 (= res!466402 (matchR!1420 lt!357114 Nil!10098))))

(assert (=> d!296564 (validRegex!1353 lt!357114)))

(assert (=> d!296564 (= (findConcatSeparation!515 lt!357114 lt!357119 Nil!10098 s!10566 s!10566) lt!357172)))

(declare-fun b!1038410 () Bool)

(assert (=> b!1038410 (= e!661182 e!661183)))

(declare-fun c!172428 () Bool)

(assert (=> b!1038410 (= c!172428 (is-Nil!10098 s!10566))))

(declare-fun b!1038411 () Bool)

(assert (=> b!1038411 (= e!661186 (not (isDefined!2051 lt!357172)))))

(declare-fun b!1038412 () Bool)

(assert (=> b!1038412 (= e!661183 None!2408)))

(declare-fun b!1038413 () Bool)

(assert (=> b!1038413 (= e!661182 (Some!2408 (tuple2!11535 Nil!10098 s!10566)))))

(assert (= (and d!296564 res!466402) b!1038406))

(assert (= (and d!296564 c!172429) b!1038413))

(assert (= (and d!296564 (not c!172429)) b!1038410))

(assert (= (and b!1038410 c!172428) b!1038412))

(assert (= (and b!1038410 (not c!172428)) b!1038408))

(assert (= (and d!296564 res!466403) b!1038405))

(assert (= (and b!1038405 res!466404) b!1038409))

(assert (= (and b!1038409 res!466405) b!1038407))

(assert (= (and d!296564 (not res!466406)) b!1038411))

(declare-fun m!1208047 () Bool)

(assert (=> b!1038405 m!1208047))

(declare-fun m!1208049 () Bool)

(assert (=> b!1038405 m!1208049))

(declare-fun m!1208051 () Bool)

(assert (=> b!1038406 m!1208051))

(assert (=> b!1038409 m!1208047))

(declare-fun m!1208053 () Bool)

(assert (=> b!1038409 m!1208053))

(assert (=> b!1038407 m!1208047))

(declare-fun m!1208055 () Bool)

(assert (=> b!1038407 m!1208055))

(declare-fun m!1208057 () Bool)

(assert (=> b!1038411 m!1208057))

(assert (=> b!1038408 m!1207993))

(assert (=> b!1038408 m!1207993))

(assert (=> b!1038408 m!1207995))

(assert (=> b!1038408 m!1207997))

(assert (=> b!1038408 m!1207993))

(declare-fun m!1208059 () Bool)

(assert (=> b!1038408 m!1208059))

(assert (=> d!296564 m!1208057))

(declare-fun m!1208061 () Bool)

(assert (=> d!296564 m!1208061))

(assert (=> d!296564 m!1207907))

(assert (=> b!1038155 d!296564))

(declare-fun bs!247873 () Bool)

(declare-fun d!296566 () Bool)

(assert (= bs!247873 (and d!296566 b!1038387)))

(declare-fun lambda!37494 () Int)

(assert (=> bs!247873 (not (= lambda!37494 lambda!37492))))

(declare-fun bs!247874 () Bool)

(assert (= bs!247874 (and d!296566 d!296550)))

(assert (=> bs!247874 (= (and (= lt!357114 (regOne!6280 r!15766)) (= lt!357119 (regTwo!6280 r!15766))) (= lambda!37494 lambda!37486))))

(declare-fun bs!247875 () Bool)

(assert (= bs!247875 (and d!296566 b!1038392)))

(assert (=> bs!247875 (not (= lambda!37494 lambda!37493))))

(declare-fun bs!247876 () Bool)

(assert (= bs!247876 (and d!296566 b!1038155)))

(assert (=> bs!247876 (= lambda!37494 lambda!37467)))

(declare-fun bs!247877 () Bool)

(assert (= bs!247877 (and d!296566 b!1038160)))

(assert (=> bs!247877 (= (and (= lt!357114 (regOne!6280 r!15766)) (= lt!357119 (regTwo!6280 r!15766))) (= lambda!37494 lambda!37465))))

(assert (=> bs!247877 (not (= lambda!37494 lambda!37466))))

(assert (=> bs!247874 (not (= lambda!37494 lambda!37487))))

(declare-fun bs!247878 () Bool)

(assert (= bs!247878 (and d!296566 d!296540)))

(assert (=> bs!247878 (= (and (= lt!357114 (regOne!6280 r!15766)) (= lt!357119 (regTwo!6280 r!15766))) (= lambda!37494 lambda!37481))))

(assert (=> d!296566 true))

(assert (=> d!296566 true))

(assert (=> d!296566 true))

(assert (=> d!296566 (= (isDefined!2051 (findConcatSeparation!515 lt!357114 lt!357119 Nil!10098 s!10566 s!10566)) (Exists!611 lambda!37494))))

(declare-fun lt!357173 () Unit!15443)

(assert (=> d!296566 (= lt!357173 (choose!6638 lt!357114 lt!357119 s!10566))))

(assert (=> d!296566 (validRegex!1353 lt!357114)))

(assert (=> d!296566 (= (lemmaFindConcatSeparationEquivalentToExists!515 lt!357114 lt!357119 s!10566) lt!357173)))

(declare-fun bs!247879 () Bool)

(assert (= bs!247879 d!296566))

(assert (=> bs!247879 m!1207909))

(assert (=> bs!247879 m!1207915))

(declare-fun m!1208063 () Bool)

(assert (=> bs!247879 m!1208063))

(assert (=> bs!247879 m!1207909))

(declare-fun m!1208065 () Bool)

(assert (=> bs!247879 m!1208065))

(assert (=> bs!247879 m!1207907))

(assert (=> b!1038155 d!296566))

(declare-fun d!296568 () Bool)

(assert (=> d!296568 (= (matchR!1420 lt!357116 s!10566) (matchRSpec!683 lt!357116 s!10566))))

(declare-fun lt!357176 () Unit!15443)

(declare-fun choose!6640 (Regex!2884 List!10114) Unit!15443)

(assert (=> d!296568 (= lt!357176 (choose!6640 lt!357116 s!10566))))

(assert (=> d!296568 (validRegex!1353 lt!357116)))

(assert (=> d!296568 (= (mainMatchTheorem!683 lt!357116 s!10566) lt!357176)))

(declare-fun bs!247880 () Bool)

(assert (= bs!247880 d!296568))

(assert (=> bs!247880 m!1207891))

(assert (=> bs!247880 m!1207919))

(declare-fun m!1208067 () Bool)

(assert (=> bs!247880 m!1208067))

(declare-fun m!1208069 () Bool)

(assert (=> bs!247880 m!1208069))

(assert (=> b!1038155 d!296568))

(declare-fun bs!247881 () Bool)

(declare-fun b!1038438 () Bool)

(assert (= bs!247881 (and b!1038438 b!1038387)))

(declare-fun lambda!37495 () Int)

(assert (=> bs!247881 (= (and (= (reg!3213 r!15766) (reg!3213 lt!357116)) (= r!15766 lt!357116)) (= lambda!37495 lambda!37492))))

(declare-fun bs!247882 () Bool)

(assert (= bs!247882 (and b!1038438 d!296550)))

(assert (=> bs!247882 (not (= lambda!37495 lambda!37486))))

(declare-fun bs!247883 () Bool)

(assert (= bs!247883 (and b!1038438 b!1038392)))

(assert (=> bs!247883 (not (= lambda!37495 lambda!37493))))

(declare-fun bs!247884 () Bool)

(assert (= bs!247884 (and b!1038438 b!1038155)))

(assert (=> bs!247884 (not (= lambda!37495 lambda!37467))))

(declare-fun bs!247885 () Bool)

(assert (= bs!247885 (and b!1038438 b!1038160)))

(assert (=> bs!247885 (not (= lambda!37495 lambda!37465))))

(assert (=> bs!247885 (not (= lambda!37495 lambda!37466))))

(declare-fun bs!247886 () Bool)

(assert (= bs!247886 (and b!1038438 d!296566)))

(assert (=> bs!247886 (not (= lambda!37495 lambda!37494))))

(assert (=> bs!247882 (not (= lambda!37495 lambda!37487))))

(declare-fun bs!247887 () Bool)

(assert (= bs!247887 (and b!1038438 d!296540)))

(assert (=> bs!247887 (not (= lambda!37495 lambda!37481))))

(assert (=> b!1038438 true))

(assert (=> b!1038438 true))

(declare-fun bs!247888 () Bool)

(declare-fun b!1038443 () Bool)

(assert (= bs!247888 (and b!1038443 b!1038387)))

(declare-fun lambda!37496 () Int)

(assert (=> bs!247888 (not (= lambda!37496 lambda!37492))))

(declare-fun bs!247889 () Bool)

(assert (= bs!247889 (and b!1038443 d!296550)))

(assert (=> bs!247889 (not (= lambda!37496 lambda!37486))))

(declare-fun bs!247890 () Bool)

(assert (= bs!247890 (and b!1038443 b!1038438)))

(assert (=> bs!247890 (not (= lambda!37496 lambda!37495))))

(declare-fun bs!247891 () Bool)

(assert (= bs!247891 (and b!1038443 b!1038392)))

(assert (=> bs!247891 (= (and (= (regOne!6280 r!15766) (regOne!6280 lt!357116)) (= (regTwo!6280 r!15766) (regTwo!6280 lt!357116))) (= lambda!37496 lambda!37493))))

(declare-fun bs!247892 () Bool)

(assert (= bs!247892 (and b!1038443 b!1038155)))

(assert (=> bs!247892 (not (= lambda!37496 lambda!37467))))

(declare-fun bs!247893 () Bool)

(assert (= bs!247893 (and b!1038443 b!1038160)))

(assert (=> bs!247893 (not (= lambda!37496 lambda!37465))))

(assert (=> bs!247893 (= lambda!37496 lambda!37466)))

(declare-fun bs!247894 () Bool)

(assert (= bs!247894 (and b!1038443 d!296566)))

(assert (=> bs!247894 (not (= lambda!37496 lambda!37494))))

(assert (=> bs!247889 (= lambda!37496 lambda!37487)))

(declare-fun bs!247895 () Bool)

(assert (= bs!247895 (and b!1038443 d!296540)))

(assert (=> bs!247895 (not (= lambda!37496 lambda!37481))))

(assert (=> b!1038443 true))

(assert (=> b!1038443 true))

(declare-fun call!72004 () Bool)

(declare-fun bm!71999 () Bool)

(declare-fun c!172441 () Bool)

(assert (=> bm!71999 (= call!72004 (Exists!611 (ite c!172441 lambda!37495 lambda!37496)))))

(declare-fun b!1038434 () Bool)

(declare-fun e!661200 () Bool)

(declare-fun e!661204 () Bool)

(assert (=> b!1038434 (= e!661200 e!661204)))

(declare-fun res!466410 () Bool)

(assert (=> b!1038434 (= res!466410 (not (is-EmptyLang!2884 r!15766)))))

(assert (=> b!1038434 (=> (not res!466410) (not e!661204))))

(declare-fun b!1038435 () Bool)

(declare-fun c!172442 () Bool)

(assert (=> b!1038435 (= c!172442 (is-Union!2884 r!15766))))

(declare-fun e!661203 () Bool)

(declare-fun e!661201 () Bool)

(assert (=> b!1038435 (= e!661203 e!661201)))

(declare-fun b!1038436 () Bool)

(declare-fun res!466409 () Bool)

(declare-fun e!661202 () Bool)

(assert (=> b!1038436 (=> res!466409 e!661202)))

(declare-fun call!72005 () Bool)

(assert (=> b!1038436 (= res!466409 call!72005)))

(declare-fun e!661199 () Bool)

(assert (=> b!1038436 (= e!661199 e!661202)))

(declare-fun b!1038437 () Bool)

(assert (=> b!1038437 (= e!661201 e!661199)))

(assert (=> b!1038437 (= c!172441 (is-Star!2884 r!15766))))

(declare-fun bm!72000 () Bool)

(assert (=> bm!72000 (= call!72005 (isEmpty!6498 s!10566))))

(declare-fun d!296570 () Bool)

(declare-fun c!172440 () Bool)

(assert (=> d!296570 (= c!172440 (is-EmptyExpr!2884 r!15766))))

(assert (=> d!296570 (= (matchRSpec!683 r!15766 s!10566) e!661200)))

(assert (=> b!1038438 (= e!661202 call!72004)))

(declare-fun b!1038439 () Bool)

(declare-fun e!661205 () Bool)

(assert (=> b!1038439 (= e!661205 (matchRSpec!683 (regTwo!6281 r!15766) s!10566))))

(declare-fun b!1038440 () Bool)

(declare-fun c!172443 () Bool)

(assert (=> b!1038440 (= c!172443 (is-ElementMatch!2884 r!15766))))

(assert (=> b!1038440 (= e!661204 e!661203)))

(declare-fun b!1038441 () Bool)

(assert (=> b!1038441 (= e!661203 (= s!10566 (Cons!10098 (c!172385 r!15766) Nil!10098)))))

(declare-fun b!1038442 () Bool)

(assert (=> b!1038442 (= e!661200 call!72005)))

(assert (=> b!1038443 (= e!661199 call!72004)))

(declare-fun b!1038444 () Bool)

(assert (=> b!1038444 (= e!661201 e!661205)))

(declare-fun res!466411 () Bool)

(assert (=> b!1038444 (= res!466411 (matchRSpec!683 (regOne!6281 r!15766) s!10566))))

(assert (=> b!1038444 (=> res!466411 e!661205)))

(assert (= (and d!296570 c!172440) b!1038442))

(assert (= (and d!296570 (not c!172440)) b!1038434))

(assert (= (and b!1038434 res!466410) b!1038440))

(assert (= (and b!1038440 c!172443) b!1038441))

(assert (= (and b!1038440 (not c!172443)) b!1038435))

(assert (= (and b!1038435 c!172442) b!1038444))

(assert (= (and b!1038435 (not c!172442)) b!1038437))

(assert (= (and b!1038444 (not res!466411)) b!1038439))

(assert (= (and b!1038437 c!172441) b!1038436))

(assert (= (and b!1038437 (not c!172441)) b!1038443))

(assert (= (and b!1038436 (not res!466409)) b!1038438))

(assert (= (or b!1038438 b!1038443) bm!71999))

(assert (= (or b!1038442 b!1038436) bm!72000))

(declare-fun m!1208071 () Bool)

(assert (=> bm!71999 m!1208071))

(assert (=> bm!72000 m!1207881))

(declare-fun m!1208073 () Bool)

(assert (=> b!1038439 m!1208073))

(declare-fun m!1208075 () Bool)

(assert (=> b!1038444 m!1208075))

(assert (=> b!1038157 d!296570))

(declare-fun b!1038504 () Bool)

(declare-fun e!661240 () Bool)

(declare-fun head!1931 (List!10114) C!6338)

(assert (=> b!1038504 (= e!661240 (= (head!1931 s!10566) (c!172385 r!15766)))))

(declare-fun b!1038505 () Bool)

(declare-fun res!466438 () Bool)

(declare-fun e!661243 () Bool)

(assert (=> b!1038505 (=> res!466438 e!661243)))

(assert (=> b!1038505 (= res!466438 (not (is-ElementMatch!2884 r!15766)))))

(declare-fun e!661245 () Bool)

(assert (=> b!1038505 (= e!661245 e!661243)))

(declare-fun b!1038506 () Bool)

(declare-fun e!661242 () Bool)

(assert (=> b!1038506 (= e!661243 e!661242)))

(declare-fun res!466439 () Bool)

(assert (=> b!1038506 (=> (not res!466439) (not e!661242))))

(declare-fun lt!357181 () Bool)

(assert (=> b!1038506 (= res!466439 (not lt!357181))))

(declare-fun b!1038507 () Bool)

(assert (=> b!1038507 (= e!661245 (not lt!357181))))

(declare-fun b!1038508 () Bool)

(declare-fun res!466436 () Bool)

(assert (=> b!1038508 (=> res!466436 e!661243)))

(assert (=> b!1038508 (= res!466436 e!661240)))

(declare-fun res!466437 () Bool)

(assert (=> b!1038508 (=> (not res!466437) (not e!661240))))

(assert (=> b!1038508 (= res!466437 lt!357181)))

(declare-fun b!1038509 () Bool)

(declare-fun e!661244 () Bool)

(assert (=> b!1038509 (= e!661244 e!661245)))

(declare-fun c!172462 () Bool)

(assert (=> b!1038509 (= c!172462 (is-EmptyLang!2884 r!15766))))

(declare-fun b!1038510 () Bool)

(declare-fun e!661239 () Bool)

(assert (=> b!1038510 (= e!661239 (nullable!976 r!15766))))

(declare-fun b!1038511 () Bool)

(declare-fun res!466442 () Bool)

(declare-fun e!661241 () Bool)

(assert (=> b!1038511 (=> res!466442 e!661241)))

(declare-fun tail!1493 (List!10114) List!10114)

(assert (=> b!1038511 (= res!466442 (not (isEmpty!6498 (tail!1493 s!10566))))))

(declare-fun bm!72016 () Bool)

(declare-fun call!72021 () Bool)

(assert (=> bm!72016 (= call!72021 (isEmpty!6498 s!10566))))

(declare-fun d!296572 () Bool)

(assert (=> d!296572 e!661244))

(declare-fun c!172464 () Bool)

(assert (=> d!296572 (= c!172464 (is-EmptyExpr!2884 r!15766))))

(assert (=> d!296572 (= lt!357181 e!661239)))

(declare-fun c!172463 () Bool)

(assert (=> d!296572 (= c!172463 (isEmpty!6498 s!10566))))

(assert (=> d!296572 (validRegex!1353 r!15766)))

(assert (=> d!296572 (= (matchR!1420 r!15766 s!10566) lt!357181)))

(declare-fun b!1038512 () Bool)

(assert (=> b!1038512 (= e!661241 (not (= (head!1931 s!10566) (c!172385 r!15766))))))

(declare-fun b!1038513 () Bool)

(assert (=> b!1038513 (= e!661244 (= lt!357181 call!72021))))

(declare-fun b!1038514 () Bool)

(declare-fun derivativeStep!776 (Regex!2884 C!6338) Regex!2884)

(assert (=> b!1038514 (= e!661239 (matchR!1420 (derivativeStep!776 r!15766 (head!1931 s!10566)) (tail!1493 s!10566)))))

(declare-fun b!1038515 () Bool)

(assert (=> b!1038515 (= e!661242 e!661241)))

(declare-fun res!466435 () Bool)

(assert (=> b!1038515 (=> res!466435 e!661241)))

(assert (=> b!1038515 (= res!466435 call!72021)))

(declare-fun b!1038516 () Bool)

(declare-fun res!466441 () Bool)

(assert (=> b!1038516 (=> (not res!466441) (not e!661240))))

(assert (=> b!1038516 (= res!466441 (not call!72021))))

(declare-fun b!1038517 () Bool)

(declare-fun res!466440 () Bool)

(assert (=> b!1038517 (=> (not res!466440) (not e!661240))))

(assert (=> b!1038517 (= res!466440 (isEmpty!6498 (tail!1493 s!10566)))))

(assert (= (and d!296572 c!172463) b!1038510))

(assert (= (and d!296572 (not c!172463)) b!1038514))

(assert (= (and d!296572 c!172464) b!1038513))

(assert (= (and d!296572 (not c!172464)) b!1038509))

(assert (= (and b!1038509 c!172462) b!1038507))

(assert (= (and b!1038509 (not c!172462)) b!1038505))

(assert (= (and b!1038505 (not res!466438)) b!1038508))

(assert (= (and b!1038508 res!466437) b!1038516))

(assert (= (and b!1038516 res!466441) b!1038517))

(assert (= (and b!1038517 res!466440) b!1038504))

(assert (= (and b!1038508 (not res!466436)) b!1038506))

(assert (= (and b!1038506 res!466439) b!1038515))

(assert (= (and b!1038515 (not res!466435)) b!1038511))

(assert (= (and b!1038511 (not res!466442)) b!1038512))

(assert (= (or b!1038513 b!1038515 b!1038516) bm!72016))

(declare-fun m!1208107 () Bool)

(assert (=> b!1038512 m!1208107))

(declare-fun m!1208109 () Bool)

(assert (=> b!1038517 m!1208109))

(assert (=> b!1038517 m!1208109))

(declare-fun m!1208111 () Bool)

(assert (=> b!1038517 m!1208111))

(assert (=> b!1038504 m!1208107))

(declare-fun m!1208113 () Bool)

(assert (=> b!1038510 m!1208113))

(assert (=> d!296572 m!1207881))

(assert (=> d!296572 m!1207903))

(assert (=> b!1038514 m!1208107))

(assert (=> b!1038514 m!1208107))

(declare-fun m!1208115 () Bool)

(assert (=> b!1038514 m!1208115))

(assert (=> b!1038514 m!1208109))

(assert (=> b!1038514 m!1208115))

(assert (=> b!1038514 m!1208109))

(declare-fun m!1208117 () Bool)

(assert (=> b!1038514 m!1208117))

(assert (=> bm!72016 m!1207881))

(assert (=> b!1038511 m!1208109))

(assert (=> b!1038511 m!1208109))

(assert (=> b!1038511 m!1208111))

(assert (=> b!1038157 d!296572))

(declare-fun d!296580 () Bool)

(assert (=> d!296580 (= (matchR!1420 r!15766 s!10566) (matchRSpec!683 r!15766 s!10566))))

(declare-fun lt!357182 () Unit!15443)

(assert (=> d!296580 (= lt!357182 (choose!6640 r!15766 s!10566))))

(assert (=> d!296580 (validRegex!1353 r!15766)))

(assert (=> d!296580 (= (mainMatchTheorem!683 r!15766 s!10566) lt!357182)))

(declare-fun bs!247896 () Bool)

(assert (= bs!247896 d!296580))

(assert (=> bs!247896 m!1207899))

(assert (=> bs!247896 m!1207897))

(declare-fun m!1208119 () Bool)

(assert (=> bs!247896 m!1208119))

(assert (=> bs!247896 m!1207903))

(assert (=> b!1038157 d!296580))

(declare-fun bm!72017 () Bool)

(declare-fun call!72024 () Bool)

(declare-fun c!172465 () Bool)

(assert (=> bm!72017 (= call!72024 (validRegex!1353 (ite c!172465 (regOne!6281 r!15766) (regOne!6280 r!15766))))))

(declare-fun b!1038518 () Bool)

(declare-fun e!661248 () Bool)

(declare-fun call!72023 () Bool)

(assert (=> b!1038518 (= e!661248 call!72023)))

(declare-fun c!172466 () Bool)

(declare-fun bm!72018 () Bool)

(declare-fun call!72022 () Bool)

(assert (=> bm!72018 (= call!72022 (validRegex!1353 (ite c!172466 (reg!3213 r!15766) (ite c!172465 (regTwo!6281 r!15766) (regTwo!6280 r!15766)))))))

(declare-fun b!1038519 () Bool)

(declare-fun e!661252 () Bool)

(assert (=> b!1038519 (= e!661252 e!661248)))

(declare-fun res!466445 () Bool)

(assert (=> b!1038519 (=> (not res!466445) (not e!661248))))

(assert (=> b!1038519 (= res!466445 call!72024)))

(declare-fun b!1038520 () Bool)

(declare-fun res!466444 () Bool)

(declare-fun e!661249 () Bool)

(assert (=> b!1038520 (=> (not res!466444) (not e!661249))))

(assert (=> b!1038520 (= res!466444 call!72024)))

(declare-fun e!661250 () Bool)

(assert (=> b!1038520 (= e!661250 e!661249)))

(declare-fun b!1038521 () Bool)

(declare-fun e!661251 () Bool)

(assert (=> b!1038521 (= e!661251 e!661250)))

(assert (=> b!1038521 (= c!172465 (is-Union!2884 r!15766))))

(declare-fun b!1038522 () Bool)

(declare-fun e!661246 () Bool)

(assert (=> b!1038522 (= e!661246 e!661251)))

(assert (=> b!1038522 (= c!172466 (is-Star!2884 r!15766))))

(declare-fun d!296582 () Bool)

(declare-fun res!466446 () Bool)

(assert (=> d!296582 (=> res!466446 e!661246)))

(assert (=> d!296582 (= res!466446 (is-ElementMatch!2884 r!15766))))

(assert (=> d!296582 (= (validRegex!1353 r!15766) e!661246)))

(declare-fun bm!72019 () Bool)

(assert (=> bm!72019 (= call!72023 call!72022)))

(declare-fun b!1038523 () Bool)

(assert (=> b!1038523 (= e!661249 call!72023)))

(declare-fun b!1038524 () Bool)

(declare-fun e!661247 () Bool)

(assert (=> b!1038524 (= e!661247 call!72022)))

(declare-fun b!1038525 () Bool)

(assert (=> b!1038525 (= e!661251 e!661247)))

(declare-fun res!466447 () Bool)

(assert (=> b!1038525 (= res!466447 (not (nullable!976 (reg!3213 r!15766))))))

(assert (=> b!1038525 (=> (not res!466447) (not e!661247))))

(declare-fun b!1038526 () Bool)

(declare-fun res!466443 () Bool)

(assert (=> b!1038526 (=> res!466443 e!661252)))

(assert (=> b!1038526 (= res!466443 (not (is-Concat!4717 r!15766)))))

(assert (=> b!1038526 (= e!661250 e!661252)))

(assert (= (and d!296582 (not res!466446)) b!1038522))

(assert (= (and b!1038522 c!172466) b!1038525))

(assert (= (and b!1038522 (not c!172466)) b!1038521))

(assert (= (and b!1038525 res!466447) b!1038524))

(assert (= (and b!1038521 c!172465) b!1038520))

(assert (= (and b!1038521 (not c!172465)) b!1038526))

(assert (= (and b!1038520 res!466444) b!1038523))

(assert (= (and b!1038526 (not res!466443)) b!1038519))

(assert (= (and b!1038519 res!466445) b!1038518))

(assert (= (or b!1038523 b!1038518) bm!72019))

(assert (= (or b!1038520 b!1038519) bm!72017))

(assert (= (or b!1038524 bm!72019) bm!72018))

(declare-fun m!1208121 () Bool)

(assert (=> bm!72017 m!1208121))

(declare-fun m!1208123 () Bool)

(assert (=> bm!72018 m!1208123))

(declare-fun m!1208125 () Bool)

(assert (=> b!1038525 m!1208125))

(assert (=> start!90316 d!296582))

(declare-fun b!1038527 () Bool)

(declare-fun e!661254 () Bool)

(assert (=> b!1038527 (= e!661254 (= (head!1931 s!10566) (c!172385 lt!357116)))))

(declare-fun b!1038528 () Bool)

(declare-fun res!466451 () Bool)

(declare-fun e!661257 () Bool)

(assert (=> b!1038528 (=> res!466451 e!661257)))

(assert (=> b!1038528 (= res!466451 (not (is-ElementMatch!2884 lt!357116)))))

(declare-fun e!661259 () Bool)

(assert (=> b!1038528 (= e!661259 e!661257)))

(declare-fun b!1038529 () Bool)

(declare-fun e!661256 () Bool)

(assert (=> b!1038529 (= e!661257 e!661256)))

(declare-fun res!466452 () Bool)

(assert (=> b!1038529 (=> (not res!466452) (not e!661256))))

(declare-fun lt!357183 () Bool)

(assert (=> b!1038529 (= res!466452 (not lt!357183))))

(declare-fun b!1038530 () Bool)

(assert (=> b!1038530 (= e!661259 (not lt!357183))))

(declare-fun b!1038531 () Bool)

(declare-fun res!466449 () Bool)

(assert (=> b!1038531 (=> res!466449 e!661257)))

(assert (=> b!1038531 (= res!466449 e!661254)))

(declare-fun res!466450 () Bool)

(assert (=> b!1038531 (=> (not res!466450) (not e!661254))))

(assert (=> b!1038531 (= res!466450 lt!357183)))

(declare-fun b!1038532 () Bool)

(declare-fun e!661258 () Bool)

(assert (=> b!1038532 (= e!661258 e!661259)))

(declare-fun c!172467 () Bool)

(assert (=> b!1038532 (= c!172467 (is-EmptyLang!2884 lt!357116))))

(declare-fun b!1038533 () Bool)

(declare-fun e!661253 () Bool)

(assert (=> b!1038533 (= e!661253 (nullable!976 lt!357116))))

(declare-fun b!1038534 () Bool)

(declare-fun res!466455 () Bool)

(declare-fun e!661255 () Bool)

(assert (=> b!1038534 (=> res!466455 e!661255)))

(assert (=> b!1038534 (= res!466455 (not (isEmpty!6498 (tail!1493 s!10566))))))

(declare-fun bm!72020 () Bool)

(declare-fun call!72025 () Bool)

(assert (=> bm!72020 (= call!72025 (isEmpty!6498 s!10566))))

(declare-fun d!296584 () Bool)

(assert (=> d!296584 e!661258))

(declare-fun c!172469 () Bool)

(assert (=> d!296584 (= c!172469 (is-EmptyExpr!2884 lt!357116))))

(assert (=> d!296584 (= lt!357183 e!661253)))

(declare-fun c!172468 () Bool)

(assert (=> d!296584 (= c!172468 (isEmpty!6498 s!10566))))

(assert (=> d!296584 (validRegex!1353 lt!357116)))

(assert (=> d!296584 (= (matchR!1420 lt!357116 s!10566) lt!357183)))

(declare-fun b!1038535 () Bool)

(assert (=> b!1038535 (= e!661255 (not (= (head!1931 s!10566) (c!172385 lt!357116))))))

(declare-fun b!1038536 () Bool)

(assert (=> b!1038536 (= e!661258 (= lt!357183 call!72025))))

(declare-fun b!1038537 () Bool)

(assert (=> b!1038537 (= e!661253 (matchR!1420 (derivativeStep!776 lt!357116 (head!1931 s!10566)) (tail!1493 s!10566)))))

(declare-fun b!1038538 () Bool)

(assert (=> b!1038538 (= e!661256 e!661255)))

(declare-fun res!466448 () Bool)

(assert (=> b!1038538 (=> res!466448 e!661255)))

(assert (=> b!1038538 (= res!466448 call!72025)))

(declare-fun b!1038539 () Bool)

(declare-fun res!466454 () Bool)

(assert (=> b!1038539 (=> (not res!466454) (not e!661254))))

(assert (=> b!1038539 (= res!466454 (not call!72025))))

(declare-fun b!1038540 () Bool)

(declare-fun res!466453 () Bool)

(assert (=> b!1038540 (=> (not res!466453) (not e!661254))))

(assert (=> b!1038540 (= res!466453 (isEmpty!6498 (tail!1493 s!10566)))))

(assert (= (and d!296584 c!172468) b!1038533))

(assert (= (and d!296584 (not c!172468)) b!1038537))

(assert (= (and d!296584 c!172469) b!1038536))

(assert (= (and d!296584 (not c!172469)) b!1038532))

(assert (= (and b!1038532 c!172467) b!1038530))

(assert (= (and b!1038532 (not c!172467)) b!1038528))

(assert (= (and b!1038528 (not res!466451)) b!1038531))

(assert (= (and b!1038531 res!466450) b!1038539))

(assert (= (and b!1038539 res!466454) b!1038540))

(assert (= (and b!1038540 res!466453) b!1038527))

(assert (= (and b!1038531 (not res!466449)) b!1038529))

(assert (= (and b!1038529 res!466452) b!1038538))

(assert (= (and b!1038538 (not res!466448)) b!1038534))

(assert (= (and b!1038534 (not res!466455)) b!1038535))

(assert (= (or b!1038536 b!1038538 b!1038539) bm!72020))

(assert (=> b!1038535 m!1208107))

(assert (=> b!1038540 m!1208109))

(assert (=> b!1038540 m!1208109))

(assert (=> b!1038540 m!1208111))

(assert (=> b!1038527 m!1208107))

(declare-fun m!1208127 () Bool)

(assert (=> b!1038533 m!1208127))

(assert (=> d!296584 m!1207881))

(assert (=> d!296584 m!1208069))

(assert (=> b!1038537 m!1208107))

(assert (=> b!1038537 m!1208107))

(declare-fun m!1208129 () Bool)

(assert (=> b!1038537 m!1208129))

(assert (=> b!1038537 m!1208109))

(assert (=> b!1038537 m!1208129))

(assert (=> b!1038537 m!1208109))

(declare-fun m!1208131 () Bool)

(assert (=> b!1038537 m!1208131))

(assert (=> bm!72020 m!1207881))

(assert (=> b!1038534 m!1208109))

(assert (=> b!1038534 m!1208109))

(assert (=> b!1038534 m!1208111))

(assert (=> b!1038152 d!296584))

(declare-fun d!296586 () Bool)

(declare-fun e!661273 () Bool)

(assert (=> d!296586 e!661273))

(declare-fun res!466458 () Bool)

(assert (=> d!296586 (=> (not res!466458) (not e!661273))))

(declare-fun lt!357188 () Regex!2884)

(assert (=> d!296586 (= res!466458 (validRegex!1353 lt!357188))))

(declare-fun e!661277 () Regex!2884)

(assert (=> d!296586 (= lt!357188 e!661277)))

(declare-fun c!172480 () Bool)

(assert (=> d!296586 (= c!172480 (and (is-Concat!4717 (regTwo!6280 r!15766)) (is-EmptyExpr!2884 (regOne!6280 (regTwo!6280 r!15766)))))))

(assert (=> d!296586 (validRegex!1353 (regTwo!6280 r!15766))))

(assert (=> d!296586 (= (removeUselessConcat!433 (regTwo!6280 r!15766)) lt!357188)))

(declare-fun b!1038563 () Bool)

(declare-fun call!72039 () Regex!2884)

(assert (=> b!1038563 (= e!661277 call!72039)))

(declare-fun b!1038564 () Bool)

(declare-fun e!661276 () Regex!2884)

(declare-fun e!661275 () Regex!2884)

(assert (=> b!1038564 (= e!661276 e!661275)))

(declare-fun c!172481 () Bool)

(assert (=> b!1038564 (= c!172481 (is-Union!2884 (regTwo!6280 r!15766)))))

(declare-fun bm!72031 () Bool)

(declare-fun call!72040 () Regex!2884)

(assert (=> bm!72031 (= call!72040 call!72039)))

(declare-fun bm!72032 () Bool)

(declare-fun call!72037 () Regex!2884)

(assert (=> bm!72032 (= call!72037 call!72040)))

(declare-fun b!1038565 () Bool)

(declare-fun call!72036 () Regex!2884)

(assert (=> b!1038565 (= e!661275 (Union!2884 call!72037 call!72036))))

(declare-fun bm!72033 () Bool)

(declare-fun call!72038 () Regex!2884)

(assert (=> bm!72033 (= call!72036 call!72038)))

(declare-fun c!172482 () Bool)

(declare-fun bm!72034 () Bool)

(assert (=> bm!72034 (= call!72038 (removeUselessConcat!433 (ite c!172482 (regTwo!6280 (regTwo!6280 r!15766)) (ite c!172481 (regTwo!6281 (regTwo!6280 r!15766)) (reg!3213 (regTwo!6280 r!15766))))))))

(declare-fun b!1038566 () Bool)

(declare-fun c!172484 () Bool)

(assert (=> b!1038566 (= c!172484 (is-Star!2884 (regTwo!6280 r!15766)))))

(declare-fun e!661274 () Regex!2884)

(assert (=> b!1038566 (= e!661275 e!661274)))

(declare-fun b!1038567 () Bool)

(declare-fun e!661272 () Regex!2884)

(assert (=> b!1038567 (= e!661272 call!72040)))

(declare-fun c!172483 () Bool)

(declare-fun bm!72035 () Bool)

(assert (=> bm!72035 (= call!72039 (removeUselessConcat!433 (ite c!172480 (regTwo!6280 (regTwo!6280 r!15766)) (ite (or c!172483 c!172482) (regOne!6280 (regTwo!6280 r!15766)) (regOne!6281 (regTwo!6280 r!15766))))))))

(declare-fun b!1038568 () Bool)

(assert (=> b!1038568 (= e!661274 (regTwo!6280 r!15766))))

(declare-fun b!1038569 () Bool)

(assert (=> b!1038569 (= c!172482 (is-Concat!4717 (regTwo!6280 r!15766)))))

(assert (=> b!1038569 (= e!661272 e!661276)))

(declare-fun b!1038570 () Bool)

(assert (=> b!1038570 (= e!661273 (= (nullable!976 lt!357188) (nullable!976 (regTwo!6280 r!15766))))))

(declare-fun b!1038571 () Bool)

(assert (=> b!1038571 (= e!661277 e!661272)))

(assert (=> b!1038571 (= c!172483 (and (is-Concat!4717 (regTwo!6280 r!15766)) (is-EmptyExpr!2884 (regTwo!6280 (regTwo!6280 r!15766)))))))

(declare-fun b!1038572 () Bool)

(assert (=> b!1038572 (= e!661274 (Star!2884 call!72036))))

(declare-fun b!1038573 () Bool)

(assert (=> b!1038573 (= e!661276 (Concat!4717 call!72037 call!72038))))

(assert (= (and d!296586 c!172480) b!1038563))

(assert (= (and d!296586 (not c!172480)) b!1038571))

(assert (= (and b!1038571 c!172483) b!1038567))

(assert (= (and b!1038571 (not c!172483)) b!1038569))

(assert (= (and b!1038569 c!172482) b!1038573))

(assert (= (and b!1038569 (not c!172482)) b!1038564))

(assert (= (and b!1038564 c!172481) b!1038565))

(assert (= (and b!1038564 (not c!172481)) b!1038566))

(assert (= (and b!1038566 c!172484) b!1038572))

(assert (= (and b!1038566 (not c!172484)) b!1038568))

(assert (= (or b!1038565 b!1038572) bm!72033))

(assert (= (or b!1038573 bm!72033) bm!72034))

(assert (= (or b!1038573 b!1038565) bm!72032))

(assert (= (or b!1038567 bm!72032) bm!72031))

(assert (= (or b!1038563 bm!72031) bm!72035))

(assert (= (and d!296586 res!466458) b!1038570))

(declare-fun m!1208133 () Bool)

(assert (=> d!296586 m!1208133))

(declare-fun m!1208135 () Bool)

(assert (=> d!296586 m!1208135))

(declare-fun m!1208137 () Bool)

(assert (=> bm!72034 m!1208137))

(declare-fun m!1208139 () Bool)

(assert (=> bm!72035 m!1208139))

(declare-fun m!1208141 () Bool)

(assert (=> b!1038570 m!1208141))

(declare-fun m!1208143 () Bool)

(assert (=> b!1038570 m!1208143))

(assert (=> b!1038152 d!296586))

(declare-fun d!296588 () Bool)

(declare-fun e!661281 () Bool)

(assert (=> d!296588 e!661281))

(declare-fun res!466463 () Bool)

(assert (=> d!296588 (=> (not res!466463) (not e!661281))))

(declare-fun lt!357189 () Regex!2884)

(assert (=> d!296588 (= res!466463 (validRegex!1353 lt!357189))))

(declare-fun e!661285 () Regex!2884)

(assert (=> d!296588 (= lt!357189 e!661285)))

(declare-fun c!172485 () Bool)

(assert (=> d!296588 (= c!172485 (and (is-Concat!4717 (regOne!6280 r!15766)) (is-EmptyExpr!2884 (regOne!6280 (regOne!6280 r!15766)))))))

(assert (=> d!296588 (validRegex!1353 (regOne!6280 r!15766))))

(assert (=> d!296588 (= (removeUselessConcat!433 (regOne!6280 r!15766)) lt!357189)))

(declare-fun b!1038578 () Bool)

(declare-fun call!72044 () Regex!2884)

(assert (=> b!1038578 (= e!661285 call!72044)))

(declare-fun b!1038579 () Bool)

(declare-fun e!661284 () Regex!2884)

(declare-fun e!661283 () Regex!2884)

(assert (=> b!1038579 (= e!661284 e!661283)))

(declare-fun c!172486 () Bool)

(assert (=> b!1038579 (= c!172486 (is-Union!2884 (regOne!6280 r!15766)))))

(declare-fun bm!72036 () Bool)

(declare-fun call!72045 () Regex!2884)

(assert (=> bm!72036 (= call!72045 call!72044)))

(declare-fun bm!72037 () Bool)

(declare-fun call!72042 () Regex!2884)

(assert (=> bm!72037 (= call!72042 call!72045)))

(declare-fun b!1038580 () Bool)

(declare-fun call!72041 () Regex!2884)

(assert (=> b!1038580 (= e!661283 (Union!2884 call!72042 call!72041))))

(declare-fun bm!72038 () Bool)

(declare-fun call!72043 () Regex!2884)

(assert (=> bm!72038 (= call!72041 call!72043)))

(declare-fun c!172487 () Bool)

(declare-fun bm!72039 () Bool)

(assert (=> bm!72039 (= call!72043 (removeUselessConcat!433 (ite c!172487 (regTwo!6280 (regOne!6280 r!15766)) (ite c!172486 (regTwo!6281 (regOne!6280 r!15766)) (reg!3213 (regOne!6280 r!15766))))))))

(declare-fun b!1038581 () Bool)

(declare-fun c!172489 () Bool)

(assert (=> b!1038581 (= c!172489 (is-Star!2884 (regOne!6280 r!15766)))))

(declare-fun e!661282 () Regex!2884)

(assert (=> b!1038581 (= e!661283 e!661282)))

(declare-fun b!1038582 () Bool)

(declare-fun e!661280 () Regex!2884)

(assert (=> b!1038582 (= e!661280 call!72045)))

(declare-fun bm!72040 () Bool)

(declare-fun c!172488 () Bool)

(assert (=> bm!72040 (= call!72044 (removeUselessConcat!433 (ite c!172485 (regTwo!6280 (regOne!6280 r!15766)) (ite (or c!172488 c!172487) (regOne!6280 (regOne!6280 r!15766)) (regOne!6281 (regOne!6280 r!15766))))))))

(declare-fun b!1038583 () Bool)

(assert (=> b!1038583 (= e!661282 (regOne!6280 r!15766))))

(declare-fun b!1038584 () Bool)

(assert (=> b!1038584 (= c!172487 (is-Concat!4717 (regOne!6280 r!15766)))))

(assert (=> b!1038584 (= e!661280 e!661284)))

(declare-fun b!1038585 () Bool)

(assert (=> b!1038585 (= e!661281 (= (nullable!976 lt!357189) (nullable!976 (regOne!6280 r!15766))))))

(declare-fun b!1038586 () Bool)

(assert (=> b!1038586 (= e!661285 e!661280)))

(assert (=> b!1038586 (= c!172488 (and (is-Concat!4717 (regOne!6280 r!15766)) (is-EmptyExpr!2884 (regTwo!6280 (regOne!6280 r!15766)))))))

(declare-fun b!1038587 () Bool)

(assert (=> b!1038587 (= e!661282 (Star!2884 call!72041))))

(declare-fun b!1038588 () Bool)

(assert (=> b!1038588 (= e!661284 (Concat!4717 call!72042 call!72043))))

(assert (= (and d!296588 c!172485) b!1038578))

(assert (= (and d!296588 (not c!172485)) b!1038586))

(assert (= (and b!1038586 c!172488) b!1038582))

(assert (= (and b!1038586 (not c!172488)) b!1038584))

(assert (= (and b!1038584 c!172487) b!1038588))

(assert (= (and b!1038584 (not c!172487)) b!1038579))

(assert (= (and b!1038579 c!172486) b!1038580))

(assert (= (and b!1038579 (not c!172486)) b!1038581))

(assert (= (and b!1038581 c!172489) b!1038587))

(assert (= (and b!1038581 (not c!172489)) b!1038583))

(assert (= (or b!1038580 b!1038587) bm!72038))

(assert (= (or b!1038588 bm!72038) bm!72039))

(assert (= (or b!1038588 b!1038580) bm!72037))

(assert (= (or b!1038582 bm!72037) bm!72036))

(assert (= (or b!1038578 bm!72036) bm!72040))

(assert (= (and d!296588 res!466463) b!1038585))

(declare-fun m!1208145 () Bool)

(assert (=> d!296588 m!1208145))

(assert (=> d!296588 m!1207973))

(declare-fun m!1208147 () Bool)

(assert (=> bm!72039 m!1208147))

(declare-fun m!1208149 () Bool)

(assert (=> bm!72040 m!1208149))

(declare-fun m!1208151 () Bool)

(assert (=> b!1038585 m!1208151))

(declare-fun m!1208153 () Bool)

(assert (=> b!1038585 m!1208153))

(assert (=> b!1038152 d!296588))

(declare-fun b!1038601 () Bool)

(declare-fun e!661288 () Bool)

(declare-fun tp!313891 () Bool)

(assert (=> b!1038601 (= e!661288 tp!313891)))

(declare-fun b!1038602 () Bool)

(declare-fun tp!313890 () Bool)

(declare-fun tp!313888 () Bool)

(assert (=> b!1038602 (= e!661288 (and tp!313890 tp!313888))))

(declare-fun b!1038600 () Bool)

(declare-fun tp!313889 () Bool)

(declare-fun tp!313887 () Bool)

(assert (=> b!1038600 (= e!661288 (and tp!313889 tp!313887))))

(assert (=> b!1038154 (= tp!313856 e!661288)))

(declare-fun b!1038599 () Bool)

(assert (=> b!1038599 (= e!661288 tp_is_empty!5411)))

(assert (= (and b!1038154 (is-ElementMatch!2884 (reg!3213 r!15766))) b!1038599))

(assert (= (and b!1038154 (is-Concat!4717 (reg!3213 r!15766))) b!1038600))

(assert (= (and b!1038154 (is-Star!2884 (reg!3213 r!15766))) b!1038601))

(assert (= (and b!1038154 (is-Union!2884 (reg!3213 r!15766))) b!1038602))

(declare-fun b!1038605 () Bool)

(declare-fun e!661289 () Bool)

(declare-fun tp!313896 () Bool)

(assert (=> b!1038605 (= e!661289 tp!313896)))

(declare-fun b!1038606 () Bool)

(declare-fun tp!313895 () Bool)

(declare-fun tp!313893 () Bool)

(assert (=> b!1038606 (= e!661289 (and tp!313895 tp!313893))))

(declare-fun b!1038604 () Bool)

(declare-fun tp!313894 () Bool)

(declare-fun tp!313892 () Bool)

(assert (=> b!1038604 (= e!661289 (and tp!313894 tp!313892))))

(assert (=> b!1038156 (= tp!313855 e!661289)))

(declare-fun b!1038603 () Bool)

(assert (=> b!1038603 (= e!661289 tp_is_empty!5411)))

(assert (= (and b!1038156 (is-ElementMatch!2884 (regOne!6281 r!15766))) b!1038603))

(assert (= (and b!1038156 (is-Concat!4717 (regOne!6281 r!15766))) b!1038604))

(assert (= (and b!1038156 (is-Star!2884 (regOne!6281 r!15766))) b!1038605))

(assert (= (and b!1038156 (is-Union!2884 (regOne!6281 r!15766))) b!1038606))

(declare-fun b!1038609 () Bool)

(declare-fun e!661290 () Bool)

(declare-fun tp!313901 () Bool)

(assert (=> b!1038609 (= e!661290 tp!313901)))

(declare-fun b!1038610 () Bool)

(declare-fun tp!313900 () Bool)

(declare-fun tp!313898 () Bool)

(assert (=> b!1038610 (= e!661290 (and tp!313900 tp!313898))))

(declare-fun b!1038608 () Bool)

(declare-fun tp!313899 () Bool)

(declare-fun tp!313897 () Bool)

(assert (=> b!1038608 (= e!661290 (and tp!313899 tp!313897))))

(assert (=> b!1038156 (= tp!313853 e!661290)))

(declare-fun b!1038607 () Bool)

(assert (=> b!1038607 (= e!661290 tp_is_empty!5411)))

(assert (= (and b!1038156 (is-ElementMatch!2884 (regTwo!6281 r!15766))) b!1038607))

(assert (= (and b!1038156 (is-Concat!4717 (regTwo!6281 r!15766))) b!1038608))

(assert (= (and b!1038156 (is-Star!2884 (regTwo!6281 r!15766))) b!1038609))

(assert (= (and b!1038156 (is-Union!2884 (regTwo!6281 r!15766))) b!1038610))

(declare-fun b!1038613 () Bool)

(declare-fun e!661291 () Bool)

(declare-fun tp!313906 () Bool)

(assert (=> b!1038613 (= e!661291 tp!313906)))

(declare-fun b!1038614 () Bool)

(declare-fun tp!313905 () Bool)

(declare-fun tp!313903 () Bool)

(assert (=> b!1038614 (= e!661291 (and tp!313905 tp!313903))))

(declare-fun b!1038612 () Bool)

(declare-fun tp!313904 () Bool)

(declare-fun tp!313902 () Bool)

(assert (=> b!1038612 (= e!661291 (and tp!313904 tp!313902))))

(assert (=> b!1038153 (= tp!313854 e!661291)))

(declare-fun b!1038611 () Bool)

(assert (=> b!1038611 (= e!661291 tp_is_empty!5411)))

(assert (= (and b!1038153 (is-ElementMatch!2884 (regOne!6280 r!15766))) b!1038611))

(assert (= (and b!1038153 (is-Concat!4717 (regOne!6280 r!15766))) b!1038612))

(assert (= (and b!1038153 (is-Star!2884 (regOne!6280 r!15766))) b!1038613))

(assert (= (and b!1038153 (is-Union!2884 (regOne!6280 r!15766))) b!1038614))

(declare-fun b!1038617 () Bool)

(declare-fun e!661292 () Bool)

(declare-fun tp!313911 () Bool)

(assert (=> b!1038617 (= e!661292 tp!313911)))

(declare-fun b!1038618 () Bool)

(declare-fun tp!313910 () Bool)

(declare-fun tp!313908 () Bool)

(assert (=> b!1038618 (= e!661292 (and tp!313910 tp!313908))))

(declare-fun b!1038616 () Bool)

(declare-fun tp!313909 () Bool)

(declare-fun tp!313907 () Bool)

(assert (=> b!1038616 (= e!661292 (and tp!313909 tp!313907))))

(assert (=> b!1038153 (= tp!313857 e!661292)))

(declare-fun b!1038615 () Bool)

(assert (=> b!1038615 (= e!661292 tp_is_empty!5411)))

(assert (= (and b!1038153 (is-ElementMatch!2884 (regTwo!6280 r!15766))) b!1038615))

(assert (= (and b!1038153 (is-Concat!4717 (regTwo!6280 r!15766))) b!1038616))

(assert (= (and b!1038153 (is-Star!2884 (regTwo!6280 r!15766))) b!1038617))

(assert (= (and b!1038153 (is-Union!2884 (regTwo!6280 r!15766))) b!1038618))

(declare-fun b!1038623 () Bool)

(declare-fun e!661295 () Bool)

(declare-fun tp!313914 () Bool)

(assert (=> b!1038623 (= e!661295 (and tp_is_empty!5411 tp!313914))))

(assert (=> b!1038158 (= tp!313858 e!661295)))

(assert (= (and b!1038158 (is-Cons!10098 (t!101160 s!10566))) b!1038623))

(push 1)

(assert (not bm!72016))

(assert (not b!1038570))

(assert (not b!1038604))

(assert (not b!1038444))

(assert (not bm!72040))

(assert (not d!296568))

(assert (not b!1038614))

(assert (not d!296572))

(assert (not b!1038271))

(assert (not bm!71984))

(assert (not bm!72035))

(assert (not d!296580))

(assert (not b!1038623))

(assert (not b!1038266))

(assert (not b!1038393))

(assert (not b!1038608))

(assert (not b!1038269))

(assert (not bm!71986))

(assert (not b!1038618))

(assert (not bm!72017))

(assert (not bm!72039))

(assert (not b!1038411))

(assert (not b!1038512))

(assert tp_is_empty!5411)

(assert (not b!1038600))

(assert (not d!296588))

(assert (not d!296566))

(assert (not d!296548))

(assert (not b!1038267))

(assert (not bm!72034))

(assert (not b!1038613))

(assert (not bm!71985))

(assert (not b!1038610))

(assert (not b!1038585))

(assert (not d!296536))

(assert (not b!1038605))

(assert (not b!1038409))

(assert (not b!1038533))

(assert (not b!1038388))

(assert (not b!1038609))

(assert (not b!1038602))

(assert (not b!1038517))

(assert (not d!296586))

(assert (not d!296562))

(assert (not b!1038535))

(assert (not bm!71977))

(assert (not b!1038405))

(assert (not b!1038612))

(assert (not b!1038606))

(assert (not b!1038510))

(assert (not b!1038601))

(assert (not b!1038407))

(assert (not b!1038511))

(assert (not bm!72020))

(assert (not d!296540))

(assert (not d!296544))

(assert (not b!1038540))

(assert (not b!1038534))

(assert (not b!1038439))

(assert (not b!1038537))

(assert (not b!1038504))

(assert (not d!296564))

(assert (not d!296550))

(assert (not bm!71987))

(assert (not d!296538))

(assert (not b!1038527))

(assert (not b!1038617))

(assert (not d!296558))

(assert (not b!1038514))

(assert (not bm!71999))

(assert (not b!1038401))

(assert (not b!1038406))

(assert (not bm!72018))

(assert (not b!1038335))

(assert (not b!1038268))

(assert (not d!296584))

(assert (not b!1038265))

(assert (not bm!72000))

(assert (not b!1038408))

(assert (not bm!71976))

(assert (not b!1038616))

(assert (not b!1038525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690098 () Bool)

(assert start!690098)

(declare-fun b!7089873 () Bool)

(declare-fun e!4262155 () Bool)

(declare-fun tp!1947342 () Bool)

(declare-fun tp!1947347 () Bool)

(assert (=> b!7089873 (= e!4262155 (and tp!1947342 tp!1947347))))

(declare-fun b!7089874 () Bool)

(declare-fun e!4262153 () Bool)

(declare-fun tp!1947346 () Bool)

(assert (=> b!7089874 (= e!4262153 tp!1947346)))

(declare-fun b!7089875 () Bool)

(declare-fun res!2895683 () Bool)

(declare-fun e!4262156 () Bool)

(assert (=> b!7089875 (=> (not res!2895683) (not e!4262156))))

(declare-datatypes ((C!35830 0))(
  ( (C!35831 (val!27621 Int)) )
))
(declare-datatypes ((Regex!17780 0))(
  ( (ElementMatch!17780 (c!1323191 C!35830)) (Concat!26625 (regOne!36072 Regex!17780) (regTwo!36072 Regex!17780)) (EmptyExpr!17780) (Star!17780 (reg!18109 Regex!17780)) (EmptyLang!17780) (Union!17780 (regOne!36073 Regex!17780) (regTwo!36073 Regex!17780)) )
))
(declare-fun r!11554 () Regex!17780)

(declare-fun a!1901 () C!35830)

(assert (=> b!7089875 (= res!2895683 (and (or (not (is-ElementMatch!17780 r!11554)) (not (= (c!1323191 r!11554) a!1901))) (not (is-Union!17780 r!11554)) (is-Concat!26625 r!11554)))))

(declare-fun b!7089876 () Bool)

(declare-fun res!2895684 () Bool)

(assert (=> b!7089876 (=> (not res!2895684) (not e!4262156))))

(declare-fun nullable!7420 (Regex!17780) Bool)

(assert (=> b!7089876 (= res!2895684 (nullable!7420 (regOne!36072 r!11554)))))

(declare-fun res!2895685 () Bool)

(assert (=> start!690098 (=> (not res!2895685) (not e!4262156))))

(declare-fun validRegex!9055 (Regex!17780) Bool)

(assert (=> start!690098 (= res!2895685 (validRegex!9055 r!11554))))

(assert (=> start!690098 e!4262156))

(assert (=> start!690098 e!4262155))

(declare-fun tp_is_empty!44793 () Bool)

(assert (=> start!690098 tp_is_empty!44793))

(declare-datatypes ((List!68743 0))(
  ( (Nil!68619) (Cons!68619 (h!75067 Regex!17780) (t!382528 List!68743)) )
))
(declare-datatypes ((Context!13552 0))(
  ( (Context!13553 (exprs!7276 List!68743)) )
))
(declare-fun c!9994 () Context!13552)

(declare-fun e!4262154 () Bool)

(declare-fun inv!87316 (Context!13552) Bool)

(assert (=> start!690098 (and (inv!87316 c!9994) e!4262154)))

(declare-fun auxCtx!45 () Context!13552)

(assert (=> start!690098 (and (inv!87316 auxCtx!45) e!4262153)))

(declare-fun b!7089877 () Bool)

(declare-fun tp!1947345 () Bool)

(assert (=> b!7089877 (= e!4262155 tp!1947345)))

(declare-fun b!7089878 () Bool)

(declare-fun tp!1947343 () Bool)

(declare-fun tp!1947344 () Bool)

(assert (=> b!7089878 (= e!4262155 (and tp!1947343 tp!1947344))))

(declare-fun b!7089879 () Bool)

(declare-fun tp!1947341 () Bool)

(assert (=> b!7089879 (= e!4262154 tp!1947341)))

(declare-fun b!7089880 () Bool)

(assert (=> b!7089880 (= e!4262155 tp_is_empty!44793)))

(declare-fun b!7089881 () Bool)

(declare-fun lambda!429666 () Int)

(declare-fun forall!16720 (List!68743 Int) Bool)

(assert (=> b!7089881 (= e!4262156 (not (forall!16720 (exprs!7276 c!9994) lambda!429666)))))

(declare-datatypes ((Unit!162251 0))(
  ( (Unit!162252) )
))
(declare-fun lt!2555653 () Unit!162251)

(declare-fun lemmaConcatPreservesForall!1079 (List!68743 List!68743 Int) Unit!162251)

(assert (=> b!7089881 (= lt!2555653 (lemmaConcatPreservesForall!1079 (exprs!7276 c!9994) (exprs!7276 auxCtx!45) lambda!429666))))

(assert (= (and start!690098 res!2895685) b!7089875))

(assert (= (and b!7089875 res!2895683) b!7089876))

(assert (= (and b!7089876 res!2895684) b!7089881))

(assert (= (and start!690098 (is-ElementMatch!17780 r!11554)) b!7089880))

(assert (= (and start!690098 (is-Concat!26625 r!11554)) b!7089878))

(assert (= (and start!690098 (is-Star!17780 r!11554)) b!7089877))

(assert (= (and start!690098 (is-Union!17780 r!11554)) b!7089873))

(assert (= start!690098 b!7089879))

(assert (= start!690098 b!7089874))

(declare-fun m!7819392 () Bool)

(assert (=> b!7089876 m!7819392))

(declare-fun m!7819394 () Bool)

(assert (=> start!690098 m!7819394))

(declare-fun m!7819396 () Bool)

(assert (=> start!690098 m!7819396))

(declare-fun m!7819398 () Bool)

(assert (=> start!690098 m!7819398))

(declare-fun m!7819400 () Bool)

(assert (=> b!7089881 m!7819400))

(declare-fun m!7819402 () Bool)

(assert (=> b!7089881 m!7819402))

(push 1)

(assert (not b!7089879))

(assert (not b!7089878))

(assert (not b!7089881))

(assert (not start!690098))

(assert (not b!7089873))

(assert (not b!7089874))

(assert (not b!7089877))

(assert (not b!7089876))

(assert tp_is_empty!44793)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7089927 () Bool)

(declare-fun res!2895709 () Bool)

(declare-fun e!4262183 () Bool)

(assert (=> b!7089927 (=> (not res!2895709) (not e!4262183))))

(declare-fun call!644672 () Bool)

(assert (=> b!7089927 (= res!2895709 call!644672)))

(declare-fun e!4262188 () Bool)

(assert (=> b!7089927 (= e!4262188 e!4262183)))

(declare-fun b!7089928 () Bool)

(declare-fun e!4262189 () Bool)

(assert (=> b!7089928 (= e!4262189 call!644672)))

(declare-fun b!7089929 () Bool)

(declare-fun e!4262187 () Bool)

(assert (=> b!7089929 (= e!4262187 e!4262189)))

(declare-fun res!2895707 () Bool)

(assert (=> b!7089929 (=> (not res!2895707) (not e!4262189))))

(declare-fun call!644670 () Bool)

(assert (=> b!7089929 (= res!2895707 call!644670)))

(declare-fun b!7089930 () Bool)

(declare-fun e!4262186 () Bool)

(assert (=> b!7089930 (= e!4262186 e!4262188)))

(declare-fun c!1323197 () Bool)

(assert (=> b!7089930 (= c!1323197 (is-Union!17780 r!11554))))

(declare-fun b!7089931 () Bool)

(declare-fun e!4262184 () Bool)

(assert (=> b!7089931 (= e!4262184 e!4262186)))

(declare-fun c!1323198 () Bool)

(assert (=> b!7089931 (= c!1323198 (is-Star!17780 r!11554))))

(declare-fun bm!644665 () Bool)

(declare-fun call!644671 () Bool)

(assert (=> bm!644665 (= call!644671 (validRegex!9055 (ite c!1323198 (reg!18109 r!11554) (ite c!1323197 (regOne!36073 r!11554) (regTwo!36072 r!11554)))))))

(declare-fun b!7089932 () Bool)

(declare-fun e!4262185 () Bool)

(assert (=> b!7089932 (= e!4262186 e!4262185)))

(declare-fun res!2895708 () Bool)

(assert (=> b!7089932 (= res!2895708 (not (nullable!7420 (reg!18109 r!11554))))))

(assert (=> b!7089932 (=> (not res!2895708) (not e!4262185))))

(declare-fun b!7089933 () Bool)

(declare-fun res!2895706 () Bool)

(assert (=> b!7089933 (=> res!2895706 e!4262187)))

(assert (=> b!7089933 (= res!2895706 (not (is-Concat!26625 r!11554)))))

(assert (=> b!7089933 (= e!4262188 e!4262187)))

(declare-fun d!2216700 () Bool)

(declare-fun res!2895705 () Bool)

(assert (=> d!2216700 (=> res!2895705 e!4262184)))

(assert (=> d!2216700 (= res!2895705 (is-ElementMatch!17780 r!11554))))

(assert (=> d!2216700 (= (validRegex!9055 r!11554) e!4262184)))

(declare-fun bm!644666 () Bool)

(assert (=> bm!644666 (= call!644672 call!644671)))

(declare-fun b!7089934 () Bool)

(assert (=> b!7089934 (= e!4262183 call!644670)))

(declare-fun b!7089935 () Bool)

(assert (=> b!7089935 (= e!4262185 call!644671)))

(declare-fun bm!644667 () Bool)

(assert (=> bm!644667 (= call!644670 (validRegex!9055 (ite c!1323197 (regTwo!36073 r!11554) (regOne!36072 r!11554))))))

(assert (= (and d!2216700 (not res!2895705)) b!7089931))

(assert (= (and b!7089931 c!1323198) b!7089932))

(assert (= (and b!7089931 (not c!1323198)) b!7089930))

(assert (= (and b!7089932 res!2895708) b!7089935))

(assert (= (and b!7089930 c!1323197) b!7089927))

(assert (= (and b!7089930 (not c!1323197)) b!7089933))

(assert (= (and b!7089927 res!2895709) b!7089934))

(assert (= (and b!7089933 (not res!2895706)) b!7089929))

(assert (= (and b!7089929 res!2895707) b!7089928))

(assert (= (or b!7089927 b!7089928) bm!644666))

(assert (= (or b!7089934 b!7089929) bm!644667))

(assert (= (or b!7089935 bm!644666) bm!644665))

(declare-fun m!7819416 () Bool)

(assert (=> bm!644665 m!7819416))

(declare-fun m!7819418 () Bool)

(assert (=> b!7089932 m!7819418))

(declare-fun m!7819420 () Bool)

(assert (=> bm!644667 m!7819420))

(assert (=> start!690098 d!2216700))

(declare-fun bs!1883361 () Bool)

(declare-fun d!2216704 () Bool)

(assert (= bs!1883361 (and d!2216704 b!7089881)))

(declare-fun lambda!429674 () Int)

(assert (=> bs!1883361 (= lambda!429674 lambda!429666)))

(assert (=> d!2216704 (= (inv!87316 c!9994) (forall!16720 (exprs!7276 c!9994) lambda!429674))))

(declare-fun bs!1883362 () Bool)

(assert (= bs!1883362 d!2216704))

(declare-fun m!7819422 () Bool)

(assert (=> bs!1883362 m!7819422))

(assert (=> start!690098 d!2216704))

(declare-fun bs!1883363 () Bool)

(declare-fun d!2216706 () Bool)

(assert (= bs!1883363 (and d!2216706 b!7089881)))

(declare-fun lambda!429675 () Int)

(assert (=> bs!1883363 (= lambda!429675 lambda!429666)))

(declare-fun bs!1883364 () Bool)

(assert (= bs!1883364 (and d!2216706 d!2216704)))

(assert (=> bs!1883364 (= lambda!429675 lambda!429674)))

(assert (=> d!2216706 (= (inv!87316 auxCtx!45) (forall!16720 (exprs!7276 auxCtx!45) lambda!429675))))

(declare-fun bs!1883365 () Bool)

(assert (= bs!1883365 d!2216706))

(declare-fun m!7819424 () Bool)

(assert (=> bs!1883365 m!7819424))

(assert (=> start!690098 d!2216706))

(declare-fun d!2216708 () Bool)

(declare-fun res!2895718 () Bool)

(declare-fun e!4262198 () Bool)

(assert (=> d!2216708 (=> res!2895718 e!4262198)))

(assert (=> d!2216708 (= res!2895718 (is-Nil!68619 (exprs!7276 c!9994)))))

(assert (=> d!2216708 (= (forall!16720 (exprs!7276 c!9994) lambda!429666) e!4262198)))

(declare-fun b!7089944 () Bool)

(declare-fun e!4262199 () Bool)

(assert (=> b!7089944 (= e!4262198 e!4262199)))

(declare-fun res!2895719 () Bool)

(assert (=> b!7089944 (=> (not res!2895719) (not e!4262199))))

(declare-fun dynLambda!27992 (Int Regex!17780) Bool)

(assert (=> b!7089944 (= res!2895719 (dynLambda!27992 lambda!429666 (h!75067 (exprs!7276 c!9994))))))

(declare-fun b!7089945 () Bool)

(assert (=> b!7089945 (= e!4262199 (forall!16720 (t!382528 (exprs!7276 c!9994)) lambda!429666))))

(assert (= (and d!2216708 (not res!2895718)) b!7089944))

(assert (= (and b!7089944 res!2895719) b!7089945))

(declare-fun b_lambda!270977 () Bool)

(assert (=> (not b_lambda!270977) (not b!7089944)))

(declare-fun m!7819426 () Bool)

(assert (=> b!7089944 m!7819426))

(declare-fun m!7819428 () Bool)

(assert (=> b!7089945 m!7819428))

(assert (=> b!7089881 d!2216708))

(declare-fun d!2216710 () Bool)

(declare-fun ++!15949 (List!68743 List!68743) List!68743)

(assert (=> d!2216710 (forall!16720 (++!15949 (exprs!7276 c!9994) (exprs!7276 auxCtx!45)) lambda!429666)))

(declare-fun lt!2555659 () Unit!162251)

(declare-fun choose!54658 (List!68743 List!68743 Int) Unit!162251)

(assert (=> d!2216710 (= lt!2555659 (choose!54658 (exprs!7276 c!9994) (exprs!7276 auxCtx!45) lambda!429666))))

(assert (=> d!2216710 (forall!16720 (exprs!7276 c!9994) lambda!429666)))

(assert (=> d!2216710 (= (lemmaConcatPreservesForall!1079 (exprs!7276 c!9994) (exprs!7276 auxCtx!45) lambda!429666) lt!2555659)))

(declare-fun bs!1883366 () Bool)

(assert (= bs!1883366 d!2216710))

(declare-fun m!7819434 () Bool)

(assert (=> bs!1883366 m!7819434))

(assert (=> bs!1883366 m!7819434))

(declare-fun m!7819436 () Bool)

(assert (=> bs!1883366 m!7819436))

(declare-fun m!7819438 () Bool)

(assert (=> bs!1883366 m!7819438))

(assert (=> bs!1883366 m!7819400))

(assert (=> b!7089881 d!2216710))

(declare-fun d!2216714 () Bool)

(declare-fun nullableFct!2843 (Regex!17780) Bool)

(assert (=> d!2216714 (= (nullable!7420 (regOne!36072 r!11554)) (nullableFct!2843 (regOne!36072 r!11554)))))

(declare-fun bs!1883367 () Bool)

(assert (= bs!1883367 d!2216714))

(declare-fun m!7819440 () Bool)

(assert (=> bs!1883367 m!7819440))

(assert (=> b!7089876 d!2216714))

(declare-fun b!7089959 () Bool)

(declare-fun e!4262204 () Bool)

(declare-fun tp!1947380 () Bool)

(declare-fun tp!1947381 () Bool)

(assert (=> b!7089959 (= e!4262204 (and tp!1947380 tp!1947381))))

(declare-fun b!7089958 () Bool)

(assert (=> b!7089958 (= e!4262204 tp_is_empty!44793)))

(assert (=> b!7089878 (= tp!1947343 e!4262204)))

(declare-fun b!7089960 () Bool)

(declare-fun tp!1947383 () Bool)

(assert (=> b!7089960 (= e!4262204 tp!1947383)))

(declare-fun b!7089961 () Bool)

(declare-fun tp!1947382 () Bool)

(declare-fun tp!1947379 () Bool)

(assert (=> b!7089961 (= e!4262204 (and tp!1947382 tp!1947379))))

(assert (= (and b!7089878 (is-ElementMatch!17780 (regOne!36072 r!11554))) b!7089958))

(assert (= (and b!7089878 (is-Concat!26625 (regOne!36072 r!11554))) b!7089959))

(assert (= (and b!7089878 (is-Star!17780 (regOne!36072 r!11554))) b!7089960))

(assert (= (and b!7089878 (is-Union!17780 (regOne!36072 r!11554))) b!7089961))

(declare-fun b!7089963 () Bool)

(declare-fun e!4262205 () Bool)

(declare-fun tp!1947385 () Bool)

(declare-fun tp!1947386 () Bool)

(assert (=> b!7089963 (= e!4262205 (and tp!1947385 tp!1947386))))

(declare-fun b!7089962 () Bool)

(assert (=> b!7089962 (= e!4262205 tp_is_empty!44793)))

(assert (=> b!7089878 (= tp!1947344 e!4262205)))

(declare-fun b!7089964 () Bool)

(declare-fun tp!1947388 () Bool)

(assert (=> b!7089964 (= e!4262205 tp!1947388)))

(declare-fun b!7089965 () Bool)

(declare-fun tp!1947387 () Bool)

(declare-fun tp!1947384 () Bool)

(assert (=> b!7089965 (= e!4262205 (and tp!1947387 tp!1947384))))

(assert (= (and b!7089878 (is-ElementMatch!17780 (regTwo!36072 r!11554))) b!7089962))

(assert (= (and b!7089878 (is-Concat!26625 (regTwo!36072 r!11554))) b!7089963))

(assert (= (and b!7089878 (is-Star!17780 (regTwo!36072 r!11554))) b!7089964))

(assert (= (and b!7089878 (is-Union!17780 (regTwo!36072 r!11554))) b!7089965))

(declare-fun b!7089967 () Bool)

(declare-fun e!4262206 () Bool)

(declare-fun tp!1947390 () Bool)

(declare-fun tp!1947391 () Bool)

(assert (=> b!7089967 (= e!4262206 (and tp!1947390 tp!1947391))))

(declare-fun b!7089966 () Bool)

(assert (=> b!7089966 (= e!4262206 tp_is_empty!44793)))

(assert (=> b!7089877 (= tp!1947345 e!4262206)))

(declare-fun b!7089968 () Bool)

(declare-fun tp!1947393 () Bool)

(assert (=> b!7089968 (= e!4262206 tp!1947393)))

(declare-fun b!7089969 () Bool)

(declare-fun tp!1947392 () Bool)

(declare-fun tp!1947389 () Bool)

(assert (=> b!7089969 (= e!4262206 (and tp!1947392 tp!1947389))))

(assert (= (and b!7089877 (is-ElementMatch!17780 (reg!18109 r!11554))) b!7089966))

(assert (= (and b!7089877 (is-Concat!26625 (reg!18109 r!11554))) b!7089967))

(assert (= (and b!7089877 (is-Star!17780 (reg!18109 r!11554))) b!7089968))

(assert (= (and b!7089877 (is-Union!17780 (reg!18109 r!11554))) b!7089969))

(declare-fun b!7089974 () Bool)

(declare-fun e!4262209 () Bool)

(declare-fun tp!1947398 () Bool)

(declare-fun tp!1947399 () Bool)

(assert (=> b!7089974 (= e!4262209 (and tp!1947398 tp!1947399))))

(assert (=> b!7089879 (= tp!1947341 e!4262209)))

(assert (= (and b!7089879 (is-Cons!68619 (exprs!7276 c!9994))) b!7089974))

(declare-fun b!7089975 () Bool)

(declare-fun e!4262210 () Bool)

(declare-fun tp!1947400 () Bool)

(declare-fun tp!1947401 () Bool)

(assert (=> b!7089975 (= e!4262210 (and tp!1947400 tp!1947401))))

(assert (=> b!7089874 (= tp!1947346 e!4262210)))

(assert (= (and b!7089874 (is-Cons!68619 (exprs!7276 auxCtx!45))) b!7089975))

(declare-fun b!7089977 () Bool)

(declare-fun e!4262211 () Bool)

(declare-fun tp!1947403 () Bool)

(declare-fun tp!1947404 () Bool)

(assert (=> b!7089977 (= e!4262211 (and tp!1947403 tp!1947404))))

(declare-fun b!7089976 () Bool)

(assert (=> b!7089976 (= e!4262211 tp_is_empty!44793)))

(assert (=> b!7089873 (= tp!1947342 e!4262211)))

(declare-fun b!7089978 () Bool)

(declare-fun tp!1947406 () Bool)

(assert (=> b!7089978 (= e!4262211 tp!1947406)))

(declare-fun b!7089979 () Bool)

(declare-fun tp!1947405 () Bool)

(declare-fun tp!1947402 () Bool)

(assert (=> b!7089979 (= e!4262211 (and tp!1947405 tp!1947402))))

(assert (= (and b!7089873 (is-ElementMatch!17780 (regOne!36073 r!11554))) b!7089976))

(assert (= (and b!7089873 (is-Concat!26625 (regOne!36073 r!11554))) b!7089977))

(assert (= (and b!7089873 (is-Star!17780 (regOne!36073 r!11554))) b!7089978))

(assert (= (and b!7089873 (is-Union!17780 (regOne!36073 r!11554))) b!7089979))

(declare-fun b!7089981 () Bool)

(declare-fun e!4262212 () Bool)

(declare-fun tp!1947408 () Bool)

(declare-fun tp!1947409 () Bool)

(assert (=> b!7089981 (= e!4262212 (and tp!1947408 tp!1947409))))

(declare-fun b!7089980 () Bool)

(assert (=> b!7089980 (= e!4262212 tp_is_empty!44793)))

(assert (=> b!7089873 (= tp!1947347 e!4262212)))

(declare-fun b!7089982 () Bool)

(declare-fun tp!1947411 () Bool)

(assert (=> b!7089982 (= e!4262212 tp!1947411)))

(declare-fun b!7089983 () Bool)

(declare-fun tp!1947410 () Bool)

(declare-fun tp!1947407 () Bool)

(assert (=> b!7089983 (= e!4262212 (and tp!1947410 tp!1947407))))

(assert (= (and b!7089873 (is-ElementMatch!17780 (regTwo!36073 r!11554))) b!7089980))

(assert (= (and b!7089873 (is-Concat!26625 (regTwo!36073 r!11554))) b!7089981))

(assert (= (and b!7089873 (is-Star!17780 (regTwo!36073 r!11554))) b!7089982))

(assert (= (and b!7089873 (is-Union!17780 (regTwo!36073 r!11554))) b!7089983))

(declare-fun b_lambda!270981 () Bool)

(assert (= b_lambda!270977 (or b!7089881 b_lambda!270981)))

(declare-fun bs!1883368 () Bool)

(declare-fun d!2216716 () Bool)

(assert (= bs!1883368 (and d!2216716 b!7089881)))

(assert (=> bs!1883368 (= (dynLambda!27992 lambda!429666 (h!75067 (exprs!7276 c!9994))) (validRegex!9055 (h!75067 (exprs!7276 c!9994))))))

(declare-fun m!7819442 () Bool)

(assert (=> bs!1883368 m!7819442))

(assert (=> b!7089944 d!2216716))

(push 1)

(assert (not d!2216714))

(assert (not b!7089960))

(assert (not d!2216710))

(assert (not d!2216704))

(assert (not b!7089967))

(assert (not b!7089981))

(assert (not b!7089982))

(assert (not b!7089975))

(assert (not b!7089977))

(assert (not b!7089983))

(assert (not b!7089965))

(assert (not b!7089945))

(assert (not b!7089959))

(assert (not b!7089969))

(assert (not b!7089978))

(assert (not b!7089979))

(assert (not b!7089961))

(assert (not b!7089932))

(assert (not b!7089963))

(assert (not b!7089974))

(assert (not b!7089968))

(assert (not b_lambda!270981))

(assert (not bm!644665))

(assert (not bs!1883368))

(assert (not bm!644667))

(assert (not b!7089964))

(assert (not d!2216706))

(assert tp_is_empty!44793)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


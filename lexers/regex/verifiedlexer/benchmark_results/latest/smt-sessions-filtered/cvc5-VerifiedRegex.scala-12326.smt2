; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691470 () Bool)

(assert start!691470)

(declare-fun b!7102963 () Bool)

(assert (=> b!7102963 true))

(declare-fun res!2899937 () Bool)

(declare-fun e!4269204 () Bool)

(assert (=> start!691470 (=> (not res!2899937) (not e!4269204))))

(declare-datatypes ((C!36058 0))(
  ( (C!36059 (val!27735 Int)) )
))
(declare-datatypes ((Regex!17894 0))(
  ( (ElementMatch!17894 (c!1325327 C!36058)) (Concat!26739 (regOne!36300 Regex!17894) (regTwo!36300 Regex!17894)) (EmptyExpr!17894) (Star!17894 (reg!18223 Regex!17894)) (EmptyLang!17894) (Union!17894 (regOne!36301 Regex!17894) (regTwo!36301 Regex!17894)) )
))
(declare-fun r!11554 () Regex!17894)

(declare-fun validRegex!9167 (Regex!17894) Bool)

(assert (=> start!691470 (= res!2899937 (validRegex!9167 r!11554))))

(assert (=> start!691470 e!4269204))

(declare-fun e!4269206 () Bool)

(assert (=> start!691470 e!4269206))

(declare-datatypes ((List!68855 0))(
  ( (Nil!68731) (Cons!68731 (h!75179 Regex!17894) (t!382672 List!68855)) )
))
(declare-datatypes ((Context!13776 0))(
  ( (Context!13777 (exprs!7388 List!68855)) )
))
(declare-fun c!9994 () Context!13776)

(declare-fun e!4269205 () Bool)

(declare-fun inv!87599 (Context!13776) Bool)

(assert (=> start!691470 (and (inv!87599 c!9994) e!4269205)))

(declare-fun tp_is_empty!45021 () Bool)

(assert (=> start!691470 tp_is_empty!45021))

(declare-fun auxCtx!45 () Context!13776)

(declare-fun e!4269203 () Bool)

(assert (=> start!691470 (and (inv!87599 auxCtx!45) e!4269203)))

(declare-fun e!4269202 () Bool)

(assert (=> b!7102963 (= e!4269204 e!4269202)))

(declare-fun res!2899938 () Bool)

(assert (=> b!7102963 (=> (not res!2899938) (not e!4269202))))

(declare-fun a!1901 () C!36058)

(assert (=> b!7102963 (= res!2899938 (and (is-ElementMatch!17894 r!11554) (= (c!1325327 r!11554) a!1901)))))

(declare-fun b!7102964 () Bool)

(declare-fun tp!1953061 () Bool)

(assert (=> b!7102964 (= e!4269206 tp!1953061)))

(declare-fun b!7102965 () Bool)

(declare-fun tp!1953058 () Bool)

(assert (=> b!7102965 (= e!4269203 tp!1953058)))

(declare-fun b!7102966 () Bool)

(assert (=> b!7102966 (= e!4269206 tp_is_empty!45021)))

(declare-fun b!7102967 () Bool)

(declare-fun e!4269201 () Bool)

(declare-fun lt!2558397 () Context!13776)

(assert (=> b!7102967 (= e!4269201 (inv!87599 lt!2558397))))

(declare-fun lambda!431221 () Int)

(declare-datatypes ((Unit!162459 0))(
  ( (Unit!162460) )
))
(declare-fun lt!2558399 () Unit!162459)

(declare-fun lemmaConcatPreservesForall!1179 (List!68855 List!68855 Int) Unit!162459)

(assert (=> b!7102967 (= lt!2558399 (lemmaConcatPreservesForall!1179 (exprs!7388 c!9994) (exprs!7388 auxCtx!45) lambda!431221))))

(declare-fun b!7102968 () Bool)

(declare-fun tp!1953059 () Bool)

(assert (=> b!7102968 (= e!4269205 tp!1953059)))

(declare-fun b!7102969 () Bool)

(declare-fun tp!1953060 () Bool)

(declare-fun tp!1953057 () Bool)

(assert (=> b!7102969 (= e!4269206 (and tp!1953060 tp!1953057))))

(declare-fun b!7102970 () Bool)

(assert (=> b!7102970 (= e!4269202 (not e!4269201))))

(declare-fun res!2899939 () Bool)

(assert (=> b!7102970 (=> res!2899939 e!4269201)))

(declare-fun derivationStepZipperDown!2419 (Regex!17894 Context!13776 C!36058) (Set Context!13776))

(declare-fun appendTo!915 ((Set Context!13776) Context!13776) (Set Context!13776))

(assert (=> b!7102970 (= res!2899939 (not (= (derivationStepZipperDown!2419 r!11554 lt!2558397 a!1901) (appendTo!915 (derivationStepZipperDown!2419 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun ++!16046 (List!68855 List!68855) List!68855)

(assert (=> b!7102970 (= lt!2558397 (Context!13777 (++!16046 (exprs!7388 c!9994) (exprs!7388 auxCtx!45))))))

(declare-fun lt!2558402 () Unit!162459)

(assert (=> b!7102970 (= lt!2558402 (lemmaConcatPreservesForall!1179 (exprs!7388 c!9994) (exprs!7388 auxCtx!45) lambda!431221))))

(declare-fun lt!2558401 () (Set Context!13776))

(declare-fun lambda!431220 () Int)

(declare-fun map!16238 ((Set Context!13776) Int) (Set Context!13776))

(assert (=> b!7102970 (= (map!16238 lt!2558401 lambda!431220) (set.insert (Context!13777 (++!16046 (exprs!7388 c!9994) (exprs!7388 auxCtx!45))) (as set.empty (Set Context!13776))))))

(declare-fun lt!2558400 () Unit!162459)

(assert (=> b!7102970 (= lt!2558400 (lemmaConcatPreservesForall!1179 (exprs!7388 c!9994) (exprs!7388 auxCtx!45) lambda!431221))))

(declare-fun lt!2558398 () Unit!162459)

(declare-fun lemmaMapOnSingletonSet!455 ((Set Context!13776) Context!13776 Int) Unit!162459)

(assert (=> b!7102970 (= lt!2558398 (lemmaMapOnSingletonSet!455 lt!2558401 c!9994 lambda!431220))))

(assert (=> b!7102970 (= lt!2558401 (set.insert c!9994 (as set.empty (Set Context!13776))))))

(declare-fun b!7102971 () Bool)

(declare-fun tp!1953062 () Bool)

(declare-fun tp!1953063 () Bool)

(assert (=> b!7102971 (= e!4269206 (and tp!1953062 tp!1953063))))

(assert (= (and start!691470 res!2899937) b!7102963))

(assert (= (and b!7102963 res!2899938) b!7102970))

(assert (= (and b!7102970 (not res!2899939)) b!7102967))

(assert (= (and start!691470 (is-ElementMatch!17894 r!11554)) b!7102966))

(assert (= (and start!691470 (is-Concat!26739 r!11554)) b!7102971))

(assert (= (and start!691470 (is-Star!17894 r!11554)) b!7102964))

(assert (= (and start!691470 (is-Union!17894 r!11554)) b!7102969))

(assert (= start!691470 b!7102968))

(assert (= start!691470 b!7102965))

(declare-fun m!7827404 () Bool)

(assert (=> start!691470 m!7827404))

(declare-fun m!7827406 () Bool)

(assert (=> start!691470 m!7827406))

(declare-fun m!7827408 () Bool)

(assert (=> start!691470 m!7827408))

(declare-fun m!7827410 () Bool)

(assert (=> b!7102967 m!7827410))

(declare-fun m!7827412 () Bool)

(assert (=> b!7102967 m!7827412))

(declare-fun m!7827414 () Bool)

(assert (=> b!7102970 m!7827414))

(declare-fun m!7827416 () Bool)

(assert (=> b!7102970 m!7827416))

(declare-fun m!7827418 () Bool)

(assert (=> b!7102970 m!7827418))

(declare-fun m!7827420 () Bool)

(assert (=> b!7102970 m!7827420))

(declare-fun m!7827422 () Bool)

(assert (=> b!7102970 m!7827422))

(assert (=> b!7102970 m!7827412))

(declare-fun m!7827424 () Bool)

(assert (=> b!7102970 m!7827424))

(assert (=> b!7102970 m!7827414))

(declare-fun m!7827426 () Bool)

(assert (=> b!7102970 m!7827426))

(declare-fun m!7827428 () Bool)

(assert (=> b!7102970 m!7827428))

(assert (=> b!7102970 m!7827412))

(push 1)

(assert (not b!7102970))

(assert (not b!7102964))

(assert (not start!691470))

(assert (not b!7102971))

(assert tp_is_empty!45021)

(assert (not b!7102965))

(assert (not b!7102968))

(assert (not b!7102969))

(assert (not b!7102967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1884449 () Bool)

(declare-fun d!2218865 () Bool)

(assert (= bs!1884449 (and d!2218865 b!7102970)))

(declare-fun lambda!431236 () Int)

(assert (=> bs!1884449 (= lambda!431236 lambda!431221)))

(declare-fun forall!16798 (List!68855 Int) Bool)

(assert (=> d!2218865 (= (inv!87599 lt!2558397) (forall!16798 (exprs!7388 lt!2558397) lambda!431236))))

(declare-fun bs!1884450 () Bool)

(assert (= bs!1884450 d!2218865))

(declare-fun m!7827456 () Bool)

(assert (=> bs!1884450 m!7827456))

(assert (=> b!7102967 d!2218865))

(declare-fun d!2218867 () Bool)

(assert (=> d!2218867 (forall!16798 (++!16046 (exprs!7388 c!9994) (exprs!7388 auxCtx!45)) lambda!431221)))

(declare-fun lt!2558425 () Unit!162459)

(declare-fun choose!54783 (List!68855 List!68855 Int) Unit!162459)

(assert (=> d!2218867 (= lt!2558425 (choose!54783 (exprs!7388 c!9994) (exprs!7388 auxCtx!45) lambda!431221))))

(assert (=> d!2218867 (forall!16798 (exprs!7388 c!9994) lambda!431221)))

(assert (=> d!2218867 (= (lemmaConcatPreservesForall!1179 (exprs!7388 c!9994) (exprs!7388 auxCtx!45) lambda!431221) lt!2558425)))

(declare-fun bs!1884451 () Bool)

(assert (= bs!1884451 d!2218867))

(assert (=> bs!1884451 m!7827428))

(assert (=> bs!1884451 m!7827428))

(declare-fun m!7827458 () Bool)

(assert (=> bs!1884451 m!7827458))

(declare-fun m!7827460 () Bool)

(assert (=> bs!1884451 m!7827460))

(declare-fun m!7827462 () Bool)

(assert (=> bs!1884451 m!7827462))

(assert (=> b!7102967 d!2218867))

(declare-fun b!7103021 () Bool)

(declare-fun e!4269245 () Bool)

(declare-fun call!646963 () Bool)

(assert (=> b!7103021 (= e!4269245 call!646963)))

(declare-fun call!646964 () Bool)

(declare-fun bm!646957 () Bool)

(declare-fun c!1325334 () Bool)

(declare-fun c!1325333 () Bool)

(assert (=> bm!646957 (= call!646964 (validRegex!9167 (ite c!1325333 (reg!18223 r!11554) (ite c!1325334 (regTwo!36301 r!11554) (regOne!36300 r!11554)))))))

(declare-fun bm!646959 () Bool)

(declare-fun call!646962 () Bool)

(assert (=> bm!646959 (= call!646962 call!646964)))

(declare-fun b!7103022 () Bool)

(declare-fun e!4269241 () Bool)

(declare-fun e!4269242 () Bool)

(assert (=> b!7103022 (= e!4269241 e!4269242)))

(assert (=> b!7103022 (= c!1325334 (is-Union!17894 r!11554))))

(declare-fun b!7103023 () Bool)

(declare-fun res!2899965 () Bool)

(declare-fun e!4269239 () Bool)

(assert (=> b!7103023 (=> (not res!2899965) (not e!4269239))))

(assert (=> b!7103023 (= res!2899965 call!646963)))

(assert (=> b!7103023 (= e!4269242 e!4269239)))

(declare-fun b!7103024 () Bool)

(declare-fun e!4269240 () Bool)

(assert (=> b!7103024 (= e!4269240 e!4269241)))

(assert (=> b!7103024 (= c!1325333 (is-Star!17894 r!11554))))

(declare-fun b!7103025 () Bool)

(declare-fun res!2899961 () Bool)

(declare-fun e!4269244 () Bool)

(assert (=> b!7103025 (=> res!2899961 e!4269244)))

(assert (=> b!7103025 (= res!2899961 (not (is-Concat!26739 r!11554)))))

(assert (=> b!7103025 (= e!4269242 e!4269244)))

(declare-fun b!7103026 () Bool)

(assert (=> b!7103026 (= e!4269239 call!646962)))

(declare-fun b!7103027 () Bool)

(assert (=> b!7103027 (= e!4269244 e!4269245)))

(declare-fun res!2899964 () Bool)

(assert (=> b!7103027 (=> (not res!2899964) (not e!4269245))))

(assert (=> b!7103027 (= res!2899964 call!646962)))

(declare-fun b!7103028 () Bool)

(declare-fun e!4269243 () Bool)

(assert (=> b!7103028 (= e!4269243 call!646964)))

(declare-fun b!7103029 () Bool)

(assert (=> b!7103029 (= e!4269241 e!4269243)))

(declare-fun res!2899963 () Bool)

(declare-fun nullable!7532 (Regex!17894) Bool)

(assert (=> b!7103029 (= res!2899963 (not (nullable!7532 (reg!18223 r!11554))))))

(assert (=> b!7103029 (=> (not res!2899963) (not e!4269243))))

(declare-fun d!2218869 () Bool)

(declare-fun res!2899962 () Bool)

(assert (=> d!2218869 (=> res!2899962 e!4269240)))

(assert (=> d!2218869 (= res!2899962 (is-ElementMatch!17894 r!11554))))

(assert (=> d!2218869 (= (validRegex!9167 r!11554) e!4269240)))

(declare-fun bm!646958 () Bool)

(assert (=> bm!646958 (= call!646963 (validRegex!9167 (ite c!1325334 (regOne!36301 r!11554) (regTwo!36300 r!11554))))))

(assert (= (and d!2218869 (not res!2899962)) b!7103024))

(assert (= (and b!7103024 c!1325333) b!7103029))

(assert (= (and b!7103024 (not c!1325333)) b!7103022))

(assert (= (and b!7103029 res!2899963) b!7103028))

(assert (= (and b!7103022 c!1325334) b!7103023))

(assert (= (and b!7103022 (not c!1325334)) b!7103025))

(assert (= (and b!7103023 res!2899965) b!7103026))

(assert (= (and b!7103025 (not res!2899961)) b!7103027))

(assert (= (and b!7103027 res!2899964) b!7103021))

(assert (= (or b!7103023 b!7103021) bm!646958))

(assert (= (or b!7103026 b!7103027) bm!646959))

(assert (= (or b!7103028 bm!646959) bm!646957))

(declare-fun m!7827464 () Bool)

(assert (=> bm!646957 m!7827464))

(declare-fun m!7827466 () Bool)

(assert (=> b!7103029 m!7827466))

(declare-fun m!7827468 () Bool)

(assert (=> bm!646958 m!7827468))

(assert (=> start!691470 d!2218869))

(declare-fun bs!1884452 () Bool)

(declare-fun d!2218871 () Bool)

(assert (= bs!1884452 (and d!2218871 b!7102970)))

(declare-fun lambda!431237 () Int)

(assert (=> bs!1884452 (= lambda!431237 lambda!431221)))

(declare-fun bs!1884453 () Bool)

(assert (= bs!1884453 (and d!2218871 d!2218865)))

(assert (=> bs!1884453 (= lambda!431237 lambda!431236)))

(assert (=> d!2218871 (= (inv!87599 c!9994) (forall!16798 (exprs!7388 c!9994) lambda!431237))))

(declare-fun bs!1884454 () Bool)

(assert (= bs!1884454 d!2218871))

(declare-fun m!7827470 () Bool)

(assert (=> bs!1884454 m!7827470))

(assert (=> start!691470 d!2218871))

(declare-fun bs!1884455 () Bool)

(declare-fun d!2218873 () Bool)

(assert (= bs!1884455 (and d!2218873 b!7102970)))

(declare-fun lambda!431238 () Int)

(assert (=> bs!1884455 (= lambda!431238 lambda!431221)))

(declare-fun bs!1884456 () Bool)

(assert (= bs!1884456 (and d!2218873 d!2218865)))

(assert (=> bs!1884456 (= lambda!431238 lambda!431236)))

(declare-fun bs!1884457 () Bool)

(assert (= bs!1884457 (and d!2218873 d!2218871)))

(assert (=> bs!1884457 (= lambda!431238 lambda!431237)))

(assert (=> d!2218873 (= (inv!87599 auxCtx!45) (forall!16798 (exprs!7388 auxCtx!45) lambda!431238))))

(declare-fun bs!1884458 () Bool)

(assert (= bs!1884458 d!2218873))

(declare-fun m!7827472 () Bool)

(assert (=> bs!1884458 m!7827472))

(assert (=> start!691470 d!2218873))

(assert (=> b!7102970 d!2218867))

(declare-fun bs!1884459 () Bool)

(declare-fun d!2218875 () Bool)

(assert (= bs!1884459 (and d!2218875 b!7102963)))

(declare-fun lambda!431243 () Int)

(assert (=> bs!1884459 (= lambda!431243 lambda!431220)))

(assert (=> d!2218875 true))

(assert (=> d!2218875 (= (appendTo!915 (derivationStepZipperDown!2419 r!11554 c!9994 a!1901) auxCtx!45) (map!16238 (derivationStepZipperDown!2419 r!11554 c!9994 a!1901) lambda!431243))))

(declare-fun bs!1884460 () Bool)

(assert (= bs!1884460 d!2218875))

(assert (=> bs!1884460 m!7827414))

(declare-fun m!7827474 () Bool)

(assert (=> bs!1884460 m!7827474))

(assert (=> b!7102970 d!2218875))

(declare-fun d!2218879 () Bool)

(declare-fun choose!54784 ((Set Context!13776) Int) (Set Context!13776))

(assert (=> d!2218879 (= (map!16238 lt!2558401 lambda!431220) (choose!54784 lt!2558401 lambda!431220))))

(declare-fun bs!1884461 () Bool)

(assert (= bs!1884461 d!2218879))

(declare-fun m!7827476 () Bool)

(assert (=> bs!1884461 m!7827476))

(assert (=> b!7102970 d!2218879))

(declare-fun d!2218881 () Bool)

(declare-fun c!1325350 () Bool)

(assert (=> d!2218881 (= c!1325350 (and (is-ElementMatch!17894 r!11554) (= (c!1325327 r!11554) a!1901)))))

(declare-fun e!4269273 () (Set Context!13776))

(assert (=> d!2218881 (= (derivationStepZipperDown!2419 r!11554 c!9994 a!1901) e!4269273)))

(declare-fun b!7103070 () Bool)

(declare-fun e!4269277 () Bool)

(assert (=> b!7103070 (= e!4269277 (nullable!7532 (regOne!36300 r!11554)))))

(declare-fun b!7103071 () Bool)

(declare-fun e!4269276 () (Set Context!13776))

(assert (=> b!7103071 (= e!4269273 e!4269276)))

(declare-fun c!1325351 () Bool)

(assert (=> b!7103071 (= c!1325351 (is-Union!17894 r!11554))))

(declare-fun b!7103072 () Bool)

(declare-fun e!4269274 () (Set Context!13776))

(declare-fun call!646988 () (Set Context!13776))

(declare-fun call!646987 () (Set Context!13776))

(assert (=> b!7103072 (= e!4269274 (set.union call!646988 call!646987))))

(declare-fun b!7103073 () Bool)

(declare-fun e!4269272 () (Set Context!13776))

(assert (=> b!7103073 (= e!4269274 e!4269272)))

(declare-fun c!1325353 () Bool)

(assert (=> b!7103073 (= c!1325353 (is-Concat!26739 r!11554))))

(declare-fun b!7103074 () Bool)

(declare-fun call!646984 () (Set Context!13776))

(assert (=> b!7103074 (= e!4269272 call!646984)))

(declare-fun call!646986 () List!68855)

(declare-fun c!1325352 () Bool)

(declare-fun bm!646978 () Bool)

(declare-fun $colon$colon!2761 (List!68855 Regex!17894) List!68855)

(assert (=> bm!646978 (= call!646986 ($colon$colon!2761 (exprs!7388 c!9994) (ite (or c!1325352 c!1325353) (regTwo!36300 r!11554) r!11554)))))

(declare-fun b!7103075 () Bool)

(declare-fun call!646985 () (Set Context!13776))

(assert (=> b!7103075 (= e!4269276 (set.union call!646985 call!646988))))

(declare-fun b!7103076 () Bool)

(assert (=> b!7103076 (= e!4269273 (set.insert c!9994 (as set.empty (Set Context!13776))))))

(declare-fun bm!646979 () Bool)

(assert (=> bm!646979 (= call!646987 call!646985)))

(declare-fun b!7103077 () Bool)

(declare-fun e!4269275 () (Set Context!13776))

(assert (=> b!7103077 (= e!4269275 (as set.empty (Set Context!13776)))))

(declare-fun bm!646980 () Bool)

(declare-fun call!646983 () List!68855)

(assert (=> bm!646980 (= call!646983 call!646986)))

(declare-fun bm!646981 () Bool)

(assert (=> bm!646981 (= call!646988 (derivationStepZipperDown!2419 (ite c!1325351 (regTwo!36301 r!11554) (regOne!36300 r!11554)) (ite c!1325351 c!9994 (Context!13777 call!646986)) a!1901))))

(declare-fun b!7103078 () Bool)

(assert (=> b!7103078 (= c!1325352 e!4269277)))

(declare-fun res!2899978 () Bool)

(assert (=> b!7103078 (=> (not res!2899978) (not e!4269277))))

(assert (=> b!7103078 (= res!2899978 (is-Concat!26739 r!11554))))

(assert (=> b!7103078 (= e!4269276 e!4269274)))

(declare-fun b!7103079 () Bool)

(declare-fun c!1325354 () Bool)

(assert (=> b!7103079 (= c!1325354 (is-Star!17894 r!11554))))

(assert (=> b!7103079 (= e!4269272 e!4269275)))

(declare-fun bm!646982 () Bool)

(assert (=> bm!646982 (= call!646984 call!646987)))

(declare-fun b!7103080 () Bool)

(assert (=> b!7103080 (= e!4269275 call!646984)))

(declare-fun bm!646983 () Bool)

(assert (=> bm!646983 (= call!646985 (derivationStepZipperDown!2419 (ite c!1325351 (regOne!36301 r!11554) (ite c!1325352 (regTwo!36300 r!11554) (ite c!1325353 (regOne!36300 r!11554) (reg!18223 r!11554)))) (ite (or c!1325351 c!1325352) c!9994 (Context!13777 call!646983)) a!1901))))

(assert (= (and d!2218881 c!1325350) b!7103076))

(assert (= (and d!2218881 (not c!1325350)) b!7103071))

(assert (= (and b!7103071 c!1325351) b!7103075))

(assert (= (and b!7103071 (not c!1325351)) b!7103078))

(assert (= (and b!7103078 res!2899978) b!7103070))

(assert (= (and b!7103078 c!1325352) b!7103072))

(assert (= (and b!7103078 (not c!1325352)) b!7103073))

(assert (= (and b!7103073 c!1325353) b!7103074))

(assert (= (and b!7103073 (not c!1325353)) b!7103079))

(assert (= (and b!7103079 c!1325354) b!7103080))

(assert (= (and b!7103079 (not c!1325354)) b!7103077))

(assert (= (or b!7103074 b!7103080) bm!646980))

(assert (= (or b!7103074 b!7103080) bm!646982))

(assert (= (or b!7103072 bm!646982) bm!646979))

(assert (= (or b!7103072 bm!646980) bm!646978))

(assert (= (or b!7103075 b!7103072) bm!646981))

(assert (= (or b!7103075 bm!646979) bm!646983))

(assert (=> b!7103076 m!7827420))

(declare-fun m!7827478 () Bool)

(assert (=> bm!646983 m!7827478))

(declare-fun m!7827480 () Bool)

(assert (=> b!7103070 m!7827480))

(declare-fun m!7827482 () Bool)

(assert (=> bm!646981 m!7827482))

(declare-fun m!7827484 () Bool)

(assert (=> bm!646978 m!7827484))

(assert (=> b!7102970 d!2218881))

(declare-fun b!7103099 () Bool)

(declare-fun e!4269290 () List!68855)

(assert (=> b!7103099 (= e!4269290 (Cons!68731 (h!75179 (exprs!7388 c!9994)) (++!16046 (t!382672 (exprs!7388 c!9994)) (exprs!7388 auxCtx!45))))))

(declare-fun b!7103100 () Bool)

(declare-fun res!2899988 () Bool)

(declare-fun e!4269289 () Bool)

(assert (=> b!7103100 (=> (not res!2899988) (not e!4269289))))

(declare-fun lt!2558430 () List!68855)

(declare-fun size!41360 (List!68855) Int)

(assert (=> b!7103100 (= res!2899988 (= (size!41360 lt!2558430) (+ (size!41360 (exprs!7388 c!9994)) (size!41360 (exprs!7388 auxCtx!45)))))))

(declare-fun b!7103101 () Bool)

(assert (=> b!7103101 (= e!4269289 (or (not (= (exprs!7388 auxCtx!45) Nil!68731)) (= lt!2558430 (exprs!7388 c!9994))))))

(declare-fun b!7103098 () Bool)

(assert (=> b!7103098 (= e!4269290 (exprs!7388 auxCtx!45))))

(declare-fun d!2218883 () Bool)

(assert (=> d!2218883 e!4269289))

(declare-fun res!2899989 () Bool)

(assert (=> d!2218883 (=> (not res!2899989) (not e!4269289))))

(declare-fun content!13985 (List!68855) (Set Regex!17894))

(assert (=> d!2218883 (= res!2899989 (= (content!13985 lt!2558430) (set.union (content!13985 (exprs!7388 c!9994)) (content!13985 (exprs!7388 auxCtx!45)))))))

(assert (=> d!2218883 (= lt!2558430 e!4269290)))

(declare-fun c!1325359 () Bool)

(assert (=> d!2218883 (= c!1325359 (is-Nil!68731 (exprs!7388 c!9994)))))

(assert (=> d!2218883 (= (++!16046 (exprs!7388 c!9994) (exprs!7388 auxCtx!45)) lt!2558430)))

(assert (= (and d!2218883 c!1325359) b!7103098))

(assert (= (and d!2218883 (not c!1325359)) b!7103099))

(assert (= (and d!2218883 res!2899989) b!7103100))

(assert (= (and b!7103100 res!2899988) b!7103101))

(declare-fun m!7827492 () Bool)

(assert (=> b!7103099 m!7827492))

(declare-fun m!7827494 () Bool)

(assert (=> b!7103100 m!7827494))

(declare-fun m!7827496 () Bool)

(assert (=> b!7103100 m!7827496))

(declare-fun m!7827498 () Bool)

(assert (=> b!7103100 m!7827498))

(declare-fun m!7827500 () Bool)

(assert (=> d!2218883 m!7827500))

(declare-fun m!7827502 () Bool)

(assert (=> d!2218883 m!7827502))

(declare-fun m!7827504 () Bool)

(assert (=> d!2218883 m!7827504))

(assert (=> b!7102970 d!2218883))

(declare-fun d!2218887 () Bool)

(declare-fun dynLambda!28051 (Int Context!13776) Context!13776)

(assert (=> d!2218887 (= (map!16238 lt!2558401 lambda!431220) (set.insert (dynLambda!28051 lambda!431220 c!9994) (as set.empty (Set Context!13776))))))

(declare-fun lt!2558433 () Unit!162459)

(declare-fun choose!54785 ((Set Context!13776) Context!13776 Int) Unit!162459)

(assert (=> d!2218887 (= lt!2558433 (choose!54785 lt!2558401 c!9994 lambda!431220))))

(assert (=> d!2218887 (= lt!2558401 (set.insert c!9994 (as set.empty (Set Context!13776))))))

(assert (=> d!2218887 (= (lemmaMapOnSingletonSet!455 lt!2558401 c!9994 lambda!431220) lt!2558433)))

(declare-fun b_lambda!271329 () Bool)

(assert (=> (not b_lambda!271329) (not d!2218887)))

(declare-fun bs!1884462 () Bool)

(assert (= bs!1884462 d!2218887))

(declare-fun m!7827506 () Bool)

(assert (=> bs!1884462 m!7827506))

(assert (=> bs!1884462 m!7827420))

(assert (=> bs!1884462 m!7827418))

(declare-fun m!7827508 () Bool)

(assert (=> bs!1884462 m!7827508))

(assert (=> bs!1884462 m!7827508))

(declare-fun m!7827510 () Bool)

(assert (=> bs!1884462 m!7827510))

(assert (=> b!7102970 d!2218887))

(declare-fun d!2218889 () Bool)

(declare-fun c!1325360 () Bool)

(assert (=> d!2218889 (= c!1325360 (and (is-ElementMatch!17894 r!11554) (= (c!1325327 r!11554) a!1901)))))

(declare-fun e!4269292 () (Set Context!13776))

(assert (=> d!2218889 (= (derivationStepZipperDown!2419 r!11554 lt!2558397 a!1901) e!4269292)))

(declare-fun b!7103102 () Bool)

(declare-fun e!4269296 () Bool)

(assert (=> b!7103102 (= e!4269296 (nullable!7532 (regOne!36300 r!11554)))))

(declare-fun b!7103103 () Bool)

(declare-fun e!4269295 () (Set Context!13776))

(assert (=> b!7103103 (= e!4269292 e!4269295)))

(declare-fun c!1325361 () Bool)

(assert (=> b!7103103 (= c!1325361 (is-Union!17894 r!11554))))

(declare-fun b!7103104 () Bool)

(declare-fun e!4269293 () (Set Context!13776))

(declare-fun call!646997 () (Set Context!13776))

(declare-fun call!646996 () (Set Context!13776))

(assert (=> b!7103104 (= e!4269293 (set.union call!646997 call!646996))))

(declare-fun b!7103105 () Bool)

(declare-fun e!4269291 () (Set Context!13776))

(assert (=> b!7103105 (= e!4269293 e!4269291)))

(declare-fun c!1325363 () Bool)

(assert (=> b!7103105 (= c!1325363 (is-Concat!26739 r!11554))))

(declare-fun b!7103106 () Bool)

(declare-fun call!646993 () (Set Context!13776))

(assert (=> b!7103106 (= e!4269291 call!646993)))

(declare-fun call!646995 () List!68855)

(declare-fun bm!646987 () Bool)

(declare-fun c!1325362 () Bool)

(assert (=> bm!646987 (= call!646995 ($colon$colon!2761 (exprs!7388 lt!2558397) (ite (or c!1325362 c!1325363) (regTwo!36300 r!11554) r!11554)))))

(declare-fun b!7103107 () Bool)

(declare-fun call!646994 () (Set Context!13776))

(assert (=> b!7103107 (= e!4269295 (set.union call!646994 call!646997))))

(declare-fun b!7103108 () Bool)

(assert (=> b!7103108 (= e!4269292 (set.insert lt!2558397 (as set.empty (Set Context!13776))))))

(declare-fun bm!646988 () Bool)

(assert (=> bm!646988 (= call!646996 call!646994)))

(declare-fun b!7103109 () Bool)

(declare-fun e!4269294 () (Set Context!13776))

(assert (=> b!7103109 (= e!4269294 (as set.empty (Set Context!13776)))))

(declare-fun bm!646989 () Bool)

(declare-fun call!646992 () List!68855)

(assert (=> bm!646989 (= call!646992 call!646995)))

(declare-fun bm!646990 () Bool)

(assert (=> bm!646990 (= call!646997 (derivationStepZipperDown!2419 (ite c!1325361 (regTwo!36301 r!11554) (regOne!36300 r!11554)) (ite c!1325361 lt!2558397 (Context!13777 call!646995)) a!1901))))

(declare-fun b!7103110 () Bool)

(assert (=> b!7103110 (= c!1325362 e!4269296)))

(declare-fun res!2899990 () Bool)

(assert (=> b!7103110 (=> (not res!2899990) (not e!4269296))))

(assert (=> b!7103110 (= res!2899990 (is-Concat!26739 r!11554))))

(assert (=> b!7103110 (= e!4269295 e!4269293)))

(declare-fun b!7103111 () Bool)

(declare-fun c!1325364 () Bool)

(assert (=> b!7103111 (= c!1325364 (is-Star!17894 r!11554))))

(assert (=> b!7103111 (= e!4269291 e!4269294)))

(declare-fun bm!646991 () Bool)

(assert (=> bm!646991 (= call!646993 call!646996)))

(declare-fun b!7103112 () Bool)

(assert (=> b!7103112 (= e!4269294 call!646993)))

(declare-fun bm!646992 () Bool)

(assert (=> bm!646992 (= call!646994 (derivationStepZipperDown!2419 (ite c!1325361 (regOne!36301 r!11554) (ite c!1325362 (regTwo!36300 r!11554) (ite c!1325363 (regOne!36300 r!11554) (reg!18223 r!11554)))) (ite (or c!1325361 c!1325362) lt!2558397 (Context!13777 call!646992)) a!1901))))

(assert (= (and d!2218889 c!1325360) b!7103108))

(assert (= (and d!2218889 (not c!1325360)) b!7103103))

(assert (= (and b!7103103 c!1325361) b!7103107))

(assert (= (and b!7103103 (not c!1325361)) b!7103110))

(assert (= (and b!7103110 res!2899990) b!7103102))

(assert (= (and b!7103110 c!1325362) b!7103104))

(assert (= (and b!7103110 (not c!1325362)) b!7103105))

(assert (= (and b!7103105 c!1325363) b!7103106))

(assert (= (and b!7103105 (not c!1325363)) b!7103111))

(assert (= (and b!7103111 c!1325364) b!7103112))

(assert (= (and b!7103111 (not c!1325364)) b!7103109))

(assert (= (or b!7103106 b!7103112) bm!646989))

(assert (= (or b!7103106 b!7103112) bm!646991))

(assert (= (or b!7103104 bm!646991) bm!646988))

(assert (= (or b!7103104 bm!646989) bm!646987))

(assert (= (or b!7103107 b!7103104) bm!646990))

(assert (= (or b!7103107 bm!646988) bm!646992))

(declare-fun m!7827514 () Bool)

(assert (=> b!7103108 m!7827514))

(declare-fun m!7827516 () Bool)

(assert (=> bm!646992 m!7827516))

(assert (=> b!7103102 m!7827480))

(declare-fun m!7827520 () Bool)

(assert (=> bm!646990 m!7827520))

(declare-fun m!7827522 () Bool)

(assert (=> bm!646987 m!7827522))

(assert (=> b!7102970 d!2218889))

(declare-fun b!7103124 () Bool)

(declare-fun e!4269299 () Bool)

(declare-fun tp!1953098 () Bool)

(declare-fun tp!1953099 () Bool)

(assert (=> b!7103124 (= e!4269299 (and tp!1953098 tp!1953099))))

(declare-fun b!7103123 () Bool)

(assert (=> b!7103123 (= e!4269299 tp_is_empty!45021)))

(declare-fun b!7103126 () Bool)

(declare-fun tp!1953097 () Bool)

(declare-fun tp!1953096 () Bool)

(assert (=> b!7103126 (= e!4269299 (and tp!1953097 tp!1953096))))

(assert (=> b!7102969 (= tp!1953060 e!4269299)))

(declare-fun b!7103125 () Bool)

(declare-fun tp!1953095 () Bool)

(assert (=> b!7103125 (= e!4269299 tp!1953095)))

(assert (= (and b!7102969 (is-ElementMatch!17894 (regOne!36301 r!11554))) b!7103123))

(assert (= (and b!7102969 (is-Concat!26739 (regOne!36301 r!11554))) b!7103124))

(assert (= (and b!7102969 (is-Star!17894 (regOne!36301 r!11554))) b!7103125))

(assert (= (and b!7102969 (is-Union!17894 (regOne!36301 r!11554))) b!7103126))

(declare-fun b!7103128 () Bool)

(declare-fun e!4269300 () Bool)

(declare-fun tp!1953103 () Bool)

(declare-fun tp!1953104 () Bool)

(assert (=> b!7103128 (= e!4269300 (and tp!1953103 tp!1953104))))

(declare-fun b!7103127 () Bool)

(assert (=> b!7103127 (= e!4269300 tp_is_empty!45021)))

(declare-fun b!7103130 () Bool)

(declare-fun tp!1953102 () Bool)

(declare-fun tp!1953101 () Bool)

(assert (=> b!7103130 (= e!4269300 (and tp!1953102 tp!1953101))))

(assert (=> b!7102969 (= tp!1953057 e!4269300)))

(declare-fun b!7103129 () Bool)

(declare-fun tp!1953100 () Bool)

(assert (=> b!7103129 (= e!4269300 tp!1953100)))

(assert (= (and b!7102969 (is-ElementMatch!17894 (regTwo!36301 r!11554))) b!7103127))

(assert (= (and b!7102969 (is-Concat!26739 (regTwo!36301 r!11554))) b!7103128))

(assert (= (and b!7102969 (is-Star!17894 (regTwo!36301 r!11554))) b!7103129))

(assert (= (and b!7102969 (is-Union!17894 (regTwo!36301 r!11554))) b!7103130))

(declare-fun b!7103135 () Bool)

(declare-fun e!4269303 () Bool)

(declare-fun tp!1953109 () Bool)

(declare-fun tp!1953110 () Bool)

(assert (=> b!7103135 (= e!4269303 (and tp!1953109 tp!1953110))))

(assert (=> b!7102968 (= tp!1953059 e!4269303)))

(assert (= (and b!7102968 (is-Cons!68731 (exprs!7388 c!9994))) b!7103135))

(declare-fun b!7103136 () Bool)

(declare-fun e!4269304 () Bool)

(declare-fun tp!1953111 () Bool)

(declare-fun tp!1953112 () Bool)

(assert (=> b!7103136 (= e!4269304 (and tp!1953111 tp!1953112))))

(assert (=> b!7102965 (= tp!1953058 e!4269304)))

(assert (= (and b!7102965 (is-Cons!68731 (exprs!7388 auxCtx!45))) b!7103136))

(declare-fun b!7103138 () Bool)

(declare-fun e!4269305 () Bool)

(declare-fun tp!1953116 () Bool)

(declare-fun tp!1953117 () Bool)

(assert (=> b!7103138 (= e!4269305 (and tp!1953116 tp!1953117))))

(declare-fun b!7103137 () Bool)

(assert (=> b!7103137 (= e!4269305 tp_is_empty!45021)))

(declare-fun b!7103140 () Bool)

(declare-fun tp!1953115 () Bool)

(declare-fun tp!1953114 () Bool)

(assert (=> b!7103140 (= e!4269305 (and tp!1953115 tp!1953114))))

(assert (=> b!7102964 (= tp!1953061 e!4269305)))

(declare-fun b!7103139 () Bool)

(declare-fun tp!1953113 () Bool)

(assert (=> b!7103139 (= e!4269305 tp!1953113)))

(assert (= (and b!7102964 (is-ElementMatch!17894 (reg!18223 r!11554))) b!7103137))

(assert (= (and b!7102964 (is-Concat!26739 (reg!18223 r!11554))) b!7103138))

(assert (= (and b!7102964 (is-Star!17894 (reg!18223 r!11554))) b!7103139))

(assert (= (and b!7102964 (is-Union!17894 (reg!18223 r!11554))) b!7103140))

(declare-fun b!7103142 () Bool)

(declare-fun e!4269306 () Bool)

(declare-fun tp!1953121 () Bool)

(declare-fun tp!1953122 () Bool)

(assert (=> b!7103142 (= e!4269306 (and tp!1953121 tp!1953122))))

(declare-fun b!7103141 () Bool)

(assert (=> b!7103141 (= e!4269306 tp_is_empty!45021)))

(declare-fun b!7103144 () Bool)

(declare-fun tp!1953120 () Bool)

(declare-fun tp!1953119 () Bool)

(assert (=> b!7103144 (= e!4269306 (and tp!1953120 tp!1953119))))

(assert (=> b!7102971 (= tp!1953062 e!4269306)))

(declare-fun b!7103143 () Bool)

(declare-fun tp!1953118 () Bool)

(assert (=> b!7103143 (= e!4269306 tp!1953118)))

(assert (= (and b!7102971 (is-ElementMatch!17894 (regOne!36300 r!11554))) b!7103141))

(assert (= (and b!7102971 (is-Concat!26739 (regOne!36300 r!11554))) b!7103142))

(assert (= (and b!7102971 (is-Star!17894 (regOne!36300 r!11554))) b!7103143))

(assert (= (and b!7102971 (is-Union!17894 (regOne!36300 r!11554))) b!7103144))

(declare-fun b!7103146 () Bool)

(declare-fun e!4269307 () Bool)

(declare-fun tp!1953126 () Bool)

(declare-fun tp!1953127 () Bool)

(assert (=> b!7103146 (= e!4269307 (and tp!1953126 tp!1953127))))

(declare-fun b!7103145 () Bool)

(assert (=> b!7103145 (= e!4269307 tp_is_empty!45021)))

(declare-fun b!7103148 () Bool)

(declare-fun tp!1953125 () Bool)

(declare-fun tp!1953124 () Bool)

(assert (=> b!7103148 (= e!4269307 (and tp!1953125 tp!1953124))))

(assert (=> b!7102971 (= tp!1953063 e!4269307)))

(declare-fun b!7103147 () Bool)

(declare-fun tp!1953123 () Bool)

(assert (=> b!7103147 (= e!4269307 tp!1953123)))

(assert (= (and b!7102971 (is-ElementMatch!17894 (regTwo!36300 r!11554))) b!7103145))

(assert (= (and b!7102971 (is-Concat!26739 (regTwo!36300 r!11554))) b!7103146))

(assert (= (and b!7102971 (is-Star!17894 (regTwo!36300 r!11554))) b!7103147))

(assert (= (and b!7102971 (is-Union!17894 (regTwo!36300 r!11554))) b!7103148))

(declare-fun b_lambda!271331 () Bool)

(assert (= b_lambda!271329 (or b!7102963 b_lambda!271331)))

(declare-fun bs!1884469 () Bool)

(declare-fun d!2218897 () Bool)

(assert (= bs!1884469 (and d!2218897 b!7102963)))

(declare-fun bs!1884470 () Bool)

(assert (= bs!1884470 (and d!2218897 b!7102963 b!7102970)))

(declare-fun lambda!431248 () Int)

(assert (=> bs!1884470 (= lambda!431248 lambda!431221)))

(declare-fun bs!1884471 () Bool)

(assert (= bs!1884471 (and d!2218897 b!7102963 d!2218865)))

(assert (=> bs!1884471 (= lambda!431248 lambda!431236)))

(declare-fun bs!1884472 () Bool)

(assert (= bs!1884472 (and d!2218897 b!7102963 d!2218871)))

(assert (=> bs!1884472 (= lambda!431248 lambda!431237)))

(declare-fun bs!1884473 () Bool)

(assert (= bs!1884473 (and d!2218897 b!7102963 d!2218873)))

(assert (=> bs!1884473 (= lambda!431248 lambda!431238)))

(declare-fun lt!2558434 () Unit!162459)

(assert (=> bs!1884469 (= lt!2558434 (lemmaConcatPreservesForall!1179 (exprs!7388 c!9994) (exprs!7388 auxCtx!45) lambda!431248))))

(assert (=> bs!1884469 (= (dynLambda!28051 lambda!431220 c!9994) (Context!13777 (++!16046 (exprs!7388 c!9994) (exprs!7388 auxCtx!45))))))

(declare-fun m!7827526 () Bool)

(assert (=> bs!1884469 m!7827526))

(assert (=> bs!1884469 m!7827428))

(assert (=> d!2218887 d!2218897))

(push 1)

(assert (not b!7103140))

(assert (not bm!646958))

(assert (not b!7103129))

(assert (not d!2218887))

(assert (not b_lambda!271331))

(assert (not d!2218865))

(assert (not bm!646987))

(assert (not bm!646981))

(assert (not b!7103029))

(assert (not b!7103146))

(assert (not b!7103136))

(assert (not bm!646983))

(assert (not b!7103142))

(assert (not b!7103143))

(assert (not d!2218875))

(assert (not b!7103130))

(assert (not bm!646957))

(assert (not b!7103148))

(assert (not b!7103135))

(assert (not d!2218883))

(assert (not b!7103100))

(assert (not b!7103124))

(assert tp_is_empty!45021)

(assert (not d!2218879))

(assert (not b!7103102))

(assert (not b!7103126))

(assert (not b!7103099))

(assert (not b!7103128))

(assert (not b!7103139))

(assert (not d!2218867))

(assert (not d!2218873))

(assert (not b!7103147))

(assert (not b!7103144))

(assert (not bm!646990))

(assert (not b!7103070))

(assert (not bm!646978))

(assert (not b!7103125))

(assert (not bm!646992))

(assert (not bs!1884469))

(assert (not b!7103138))

(assert (not d!2218871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


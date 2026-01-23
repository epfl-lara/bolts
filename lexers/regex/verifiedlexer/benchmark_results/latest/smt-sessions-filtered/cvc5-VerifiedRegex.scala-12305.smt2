; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690922 () Bool)

(assert start!690922)

(declare-fun res!2898413 () Bool)

(declare-fun e!4266497 () Bool)

(assert (=> start!690922 (=> (not res!2898413) (not e!4266497))))

(declare-datatypes ((C!35974 0))(
  ( (C!35975 (val!27693 Int)) )
))
(declare-datatypes ((Regex!17852 0))(
  ( (ElementMatch!17852 (c!1324429 C!35974)) (Concat!26697 (regOne!36216 Regex!17852) (regTwo!36216 Regex!17852)) (EmptyExpr!17852) (Star!17852 (reg!18181 Regex!17852)) (EmptyLang!17852) (Union!17852 (regOne!36217 Regex!17852) (regTwo!36217 Regex!17852)) )
))
(declare-fun r!11554 () Regex!17852)

(declare-fun validRegex!9127 (Regex!17852) Bool)

(assert (=> start!690922 (= res!2898413 (validRegex!9127 r!11554))))

(assert (=> start!690922 e!4266497))

(declare-fun e!4266496 () Bool)

(assert (=> start!690922 e!4266496))

(declare-fun tp_is_empty!44937 () Bool)

(assert (=> start!690922 tp_is_empty!44937))

(declare-datatypes ((List!68815 0))(
  ( (Nil!68691) (Cons!68691 (h!75139 Regex!17852) (t!382618 List!68815)) )
))
(declare-datatypes ((Context!13696 0))(
  ( (Context!13697 (exprs!7348 List!68815)) )
))
(declare-fun c!9994 () Context!13696)

(declare-fun e!4266499 () Bool)

(declare-fun inv!87496 (Context!13696) Bool)

(assert (=> start!690922 (and (inv!87496 c!9994) e!4266499)))

(declare-fun auxCtx!45 () Context!13696)

(declare-fun e!4266495 () Bool)

(assert (=> start!690922 (and (inv!87496 auxCtx!45) e!4266495)))

(declare-fun b!7097901 () Bool)

(declare-fun tp!1950897 () Bool)

(assert (=> b!7097901 (= e!4266495 tp!1950897)))

(declare-fun b!7097902 () Bool)

(declare-fun e!4266498 () Bool)

(assert (=> b!7097902 (= e!4266497 e!4266498)))

(declare-fun res!2898410 () Bool)

(assert (=> b!7097902 (=> (not res!2898410) (not e!4266498))))

(assert (=> b!7097902 (= res!2898410 (validRegex!9127 r!11554))))

(declare-fun lt!2557551 () List!68815)

(declare-fun ++!16012 (List!68815 List!68815) List!68815)

(assert (=> b!7097902 (= lt!2557551 (++!16012 (exprs!7348 c!9994) (exprs!7348 auxCtx!45)))))

(declare-fun lambda!430654 () Int)

(declare-datatypes ((Unit!162379 0))(
  ( (Unit!162380) )
))
(declare-fun lt!2557547 () Unit!162379)

(declare-fun lemmaConcatPreservesForall!1143 (List!68815 List!68815 Int) Unit!162379)

(assert (=> b!7097902 (= lt!2557547 (lemmaConcatPreservesForall!1143 (exprs!7348 c!9994) (exprs!7348 auxCtx!45) lambda!430654))))

(declare-fun lt!2557550 () Unit!162379)

(assert (=> b!7097902 (= lt!2557550 (lemmaConcatPreservesForall!1143 (exprs!7348 c!9994) (exprs!7348 auxCtx!45) lambda!430654))))

(declare-fun b!7097903 () Bool)

(declare-fun tp!1950900 () Bool)

(declare-fun tp!1950898 () Bool)

(assert (=> b!7097903 (= e!4266496 (and tp!1950900 tp!1950898))))

(declare-fun b!7097904 () Bool)

(declare-fun res!2898409 () Bool)

(assert (=> b!7097904 (=> (not res!2898409) (not e!4266497))))

(declare-fun e!4266500 () Bool)

(assert (=> b!7097904 (= res!2898409 e!4266500)))

(declare-fun res!2898411 () Bool)

(assert (=> b!7097904 (=> res!2898411 e!4266500)))

(assert (=> b!7097904 (= res!2898411 (not (is-Concat!26697 r!11554)))))

(declare-fun b!7097905 () Bool)

(assert (=> b!7097905 (= e!4266496 tp_is_empty!44937)))

(declare-fun b!7097906 () Bool)

(declare-fun nullable!7492 (Regex!17852) Bool)

(assert (=> b!7097906 (= e!4266500 (not (nullable!7492 (regOne!36216 r!11554))))))

(declare-fun b!7097907 () Bool)

(declare-fun tp!1950903 () Bool)

(assert (=> b!7097907 (= e!4266499 tp!1950903)))

(declare-fun b!7097908 () Bool)

(declare-fun res!2898412 () Bool)

(assert (=> b!7097908 (=> (not res!2898412) (not e!4266497))))

(declare-fun a!1901 () C!35974)

(assert (=> b!7097908 (= res!2898412 (and (or (not (is-ElementMatch!17852 r!11554)) (not (= (c!1324429 r!11554) a!1901))) (not (is-Union!17852 r!11554))))))

(declare-fun b!7097909 () Bool)

(declare-fun tp!1950901 () Bool)

(declare-fun tp!1950902 () Bool)

(assert (=> b!7097909 (= e!4266496 (and tp!1950901 tp!1950902))))

(declare-fun b!7097910 () Bool)

(declare-fun res!2898408 () Bool)

(assert (=> b!7097910 (=> (not res!2898408) (not e!4266498))))

(declare-fun derivationStepZipperDown!2391 (Regex!17852 Context!13696 C!35974) (Set Context!13696))

(declare-fun $colon$colon!2735 (List!68815 Regex!17852) List!68815)

(assert (=> b!7097910 (= res!2898408 (= (derivationStepZipperDown!2391 r!11554 (Context!13697 lt!2557551) a!1901) (derivationStepZipperDown!2391 (reg!18181 r!11554) (Context!13697 ($colon$colon!2735 lt!2557551 r!11554)) a!1901)))))

(declare-fun b!7097911 () Bool)

(declare-fun res!2898407 () Bool)

(assert (=> b!7097911 (=> (not res!2898407) (not e!4266497))))

(assert (=> b!7097911 (= res!2898407 (and (not (is-Concat!26697 r!11554)) (is-Star!17852 r!11554)))))

(declare-fun b!7097912 () Bool)

(declare-fun tp!1950899 () Bool)

(assert (=> b!7097912 (= e!4266496 tp!1950899)))

(declare-fun b!7097913 () Bool)

(declare-fun forall!16768 (List!68815 Int) Bool)

(assert (=> b!7097913 (= e!4266498 (not (forall!16768 (exprs!7348 c!9994) lambda!430654)))))

(declare-fun lt!2557546 () List!68815)

(declare-fun lt!2557549 () Context!13696)

(declare-fun appendTo!895 ((Set Context!13696) Context!13696) (Set Context!13696))

(assert (=> b!7097913 (= (derivationStepZipperDown!2391 (reg!18181 r!11554) (Context!13697 (++!16012 lt!2557546 (exprs!7348 auxCtx!45))) a!1901) (appendTo!895 (derivationStepZipperDown!2391 (reg!18181 r!11554) lt!2557549 a!1901) auxCtx!45))))

(declare-fun lt!2557548 () Unit!162379)

(assert (=> b!7097913 (= lt!2557548 (lemmaConcatPreservesForall!1143 lt!2557546 (exprs!7348 auxCtx!45) lambda!430654))))

(declare-fun lt!2557545 () Unit!162379)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!203 (Context!13696 Regex!17852 C!35974 Context!13696) Unit!162379)

(assert (=> b!7097913 (= lt!2557545 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!203 lt!2557549 (reg!18181 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7097913 (= lt!2557549 (Context!13697 lt!2557546))))

(assert (=> b!7097913 (= lt!2557546 ($colon$colon!2735 (exprs!7348 c!9994) r!11554))))

(assert (= (and start!690922 res!2898413) b!7097908))

(assert (= (and b!7097908 res!2898412) b!7097904))

(assert (= (and b!7097904 (not res!2898411)) b!7097906))

(assert (= (and b!7097904 res!2898409) b!7097911))

(assert (= (and b!7097911 res!2898407) b!7097902))

(assert (= (and b!7097902 res!2898410) b!7097910))

(assert (= (and b!7097910 res!2898408) b!7097913))

(assert (= (and start!690922 (is-ElementMatch!17852 r!11554)) b!7097905))

(assert (= (and start!690922 (is-Concat!26697 r!11554)) b!7097903))

(assert (= (and start!690922 (is-Star!17852 r!11554)) b!7097912))

(assert (= (and start!690922 (is-Union!17852 r!11554)) b!7097909))

(assert (= start!690922 b!7097907))

(assert (= start!690922 b!7097901))

(declare-fun m!7824540 () Bool)

(assert (=> start!690922 m!7824540))

(declare-fun m!7824542 () Bool)

(assert (=> start!690922 m!7824542))

(declare-fun m!7824544 () Bool)

(assert (=> start!690922 m!7824544))

(assert (=> b!7097902 m!7824540))

(declare-fun m!7824546 () Bool)

(assert (=> b!7097902 m!7824546))

(declare-fun m!7824548 () Bool)

(assert (=> b!7097902 m!7824548))

(assert (=> b!7097902 m!7824548))

(declare-fun m!7824550 () Bool)

(assert (=> b!7097913 m!7824550))

(declare-fun m!7824552 () Bool)

(assert (=> b!7097913 m!7824552))

(declare-fun m!7824554 () Bool)

(assert (=> b!7097913 m!7824554))

(assert (=> b!7097913 m!7824552))

(declare-fun m!7824556 () Bool)

(assert (=> b!7097913 m!7824556))

(declare-fun m!7824558 () Bool)

(assert (=> b!7097913 m!7824558))

(declare-fun m!7824560 () Bool)

(assert (=> b!7097913 m!7824560))

(declare-fun m!7824562 () Bool)

(assert (=> b!7097913 m!7824562))

(declare-fun m!7824564 () Bool)

(assert (=> b!7097913 m!7824564))

(declare-fun m!7824566 () Bool)

(assert (=> b!7097906 m!7824566))

(declare-fun m!7824568 () Bool)

(assert (=> b!7097910 m!7824568))

(declare-fun m!7824570 () Bool)

(assert (=> b!7097910 m!7824570))

(declare-fun m!7824572 () Bool)

(assert (=> b!7097910 m!7824572))

(push 1)

(assert (not b!7097909))

(assert (not b!7097903))

(assert tp_is_empty!44937)

(assert (not b!7097912))

(assert (not b!7097907))

(assert (not b!7097913))

(assert (not b!7097906))

(assert (not b!7097902))

(assert (not start!690922))

(assert (not b!7097910))

(assert (not b!7097901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7097975 () Bool)

(declare-fun e!4266533 () Bool)

(assert (=> b!7097975 (= e!4266533 (nullable!7492 (regOne!36216 r!11554)))))

(declare-fun b!7097976 () Bool)

(declare-fun e!4266532 () (Set Context!13696))

(declare-fun e!4266536 () (Set Context!13696))

(assert (=> b!7097976 (= e!4266532 e!4266536)))

(declare-fun c!1324443 () Bool)

(assert (=> b!7097976 (= c!1324443 (is-Union!17852 r!11554))))

(declare-fun call!646016 () List!68815)

(declare-fun bm!646009 () Bool)

(declare-fun c!1324445 () Bool)

(declare-fun c!1324446 () Bool)

(assert (=> bm!646009 (= call!646016 ($colon$colon!2735 (exprs!7348 (Context!13697 lt!2557551)) (ite (or c!1324445 c!1324446) (regTwo!36216 r!11554) r!11554)))))

(declare-fun bm!646010 () Bool)

(declare-fun call!646015 () (Set Context!13696))

(declare-fun call!646018 () List!68815)

(assert (=> bm!646010 (= call!646015 (derivationStepZipperDown!2391 (ite c!1324443 (regTwo!36217 r!11554) (ite c!1324445 (regTwo!36216 r!11554) (ite c!1324446 (regOne!36216 r!11554) (reg!18181 r!11554)))) (ite (or c!1324443 c!1324445) (Context!13697 lt!2557551) (Context!13697 call!646018)) a!1901))))

(declare-fun d!2218084 () Bool)

(declare-fun c!1324442 () Bool)

(assert (=> d!2218084 (= c!1324442 (and (is-ElementMatch!17852 r!11554) (= (c!1324429 r!11554) a!1901)))))

(assert (=> d!2218084 (= (derivationStepZipperDown!2391 r!11554 (Context!13697 lt!2557551) a!1901) e!4266532)))

(declare-fun bm!646011 () Bool)

(assert (=> bm!646011 (= call!646018 call!646016)))

(declare-fun b!7097977 () Bool)

(declare-fun call!646014 () (Set Context!13696))

(assert (=> b!7097977 (= e!4266536 (set.union call!646014 call!646015))))

(declare-fun b!7097978 () Bool)

(assert (=> b!7097978 (= c!1324445 e!4266533)))

(declare-fun res!2898437 () Bool)

(assert (=> b!7097978 (=> (not res!2898437) (not e!4266533))))

(assert (=> b!7097978 (= res!2898437 (is-Concat!26697 r!11554))))

(declare-fun e!4266531 () (Set Context!13696))

(assert (=> b!7097978 (= e!4266536 e!4266531)))

(declare-fun bm!646012 () Bool)

(assert (=> bm!646012 (= call!646014 (derivationStepZipperDown!2391 (ite c!1324443 (regOne!36217 r!11554) (regOne!36216 r!11554)) (ite c!1324443 (Context!13697 lt!2557551) (Context!13697 call!646016)) a!1901))))

(declare-fun b!7097979 () Bool)

(declare-fun e!4266535 () (Set Context!13696))

(assert (=> b!7097979 (= e!4266535 (as set.empty (Set Context!13696)))))

(declare-fun b!7097980 () Bool)

(declare-fun c!1324444 () Bool)

(assert (=> b!7097980 (= c!1324444 (is-Star!17852 r!11554))))

(declare-fun e!4266534 () (Set Context!13696))

(assert (=> b!7097980 (= e!4266534 e!4266535)))

(declare-fun b!7097981 () Bool)

(assert (=> b!7097981 (= e!4266532 (set.insert (Context!13697 lt!2557551) (as set.empty (Set Context!13696))))))

(declare-fun b!7097982 () Bool)

(assert (=> b!7097982 (= e!4266531 e!4266534)))

(assert (=> b!7097982 (= c!1324446 (is-Concat!26697 r!11554))))

(declare-fun bm!646013 () Bool)

(declare-fun call!646017 () (Set Context!13696))

(assert (=> bm!646013 (= call!646017 call!646015)))

(declare-fun b!7097983 () Bool)

(declare-fun call!646019 () (Set Context!13696))

(assert (=> b!7097983 (= e!4266534 call!646019)))

(declare-fun b!7097984 () Bool)

(assert (=> b!7097984 (= e!4266531 (set.union call!646014 call!646017))))

(declare-fun bm!646014 () Bool)

(assert (=> bm!646014 (= call!646019 call!646017)))

(declare-fun b!7097985 () Bool)

(assert (=> b!7097985 (= e!4266535 call!646019)))

(assert (= (and d!2218084 c!1324442) b!7097981))

(assert (= (and d!2218084 (not c!1324442)) b!7097976))

(assert (= (and b!7097976 c!1324443) b!7097977))

(assert (= (and b!7097976 (not c!1324443)) b!7097978))

(assert (= (and b!7097978 res!2898437) b!7097975))

(assert (= (and b!7097978 c!1324445) b!7097984))

(assert (= (and b!7097978 (not c!1324445)) b!7097982))

(assert (= (and b!7097982 c!1324446) b!7097983))

(assert (= (and b!7097982 (not c!1324446)) b!7097980))

(assert (= (and b!7097980 c!1324444) b!7097985))

(assert (= (and b!7097980 (not c!1324444)) b!7097979))

(assert (= (or b!7097983 b!7097985) bm!646011))

(assert (= (or b!7097983 b!7097985) bm!646014))

(assert (= (or b!7097984 bm!646014) bm!646013))

(assert (= (or b!7097984 bm!646011) bm!646009))

(assert (= (or b!7097977 bm!646013) bm!646010))

(assert (= (or b!7097977 b!7097984) bm!646012))

(declare-fun m!7824608 () Bool)

(assert (=> bm!646010 m!7824608))

(declare-fun m!7824610 () Bool)

(assert (=> bm!646009 m!7824610))

(declare-fun m!7824612 () Bool)

(assert (=> bm!646012 m!7824612))

(declare-fun m!7824616 () Bool)

(assert (=> b!7097981 m!7824616))

(assert (=> b!7097975 m!7824566))

(assert (=> b!7097910 d!2218084))

(declare-fun b!7097988 () Bool)

(declare-fun e!4266539 () Bool)

(assert (=> b!7097988 (= e!4266539 (nullable!7492 (regOne!36216 (reg!18181 r!11554))))))

(declare-fun b!7097989 () Bool)

(declare-fun e!4266538 () (Set Context!13696))

(declare-fun e!4266542 () (Set Context!13696))

(assert (=> b!7097989 (= e!4266538 e!4266542)))

(declare-fun c!1324448 () Bool)

(assert (=> b!7097989 (= c!1324448 (is-Union!17852 (reg!18181 r!11554)))))

(declare-fun c!1324451 () Bool)

(declare-fun c!1324450 () Bool)

(declare-fun call!646022 () List!68815)

(declare-fun bm!646015 () Bool)

(assert (=> bm!646015 (= call!646022 ($colon$colon!2735 (exprs!7348 (Context!13697 ($colon$colon!2735 lt!2557551 r!11554))) (ite (or c!1324450 c!1324451) (regTwo!36216 (reg!18181 r!11554)) (reg!18181 r!11554))))))

(declare-fun call!646021 () (Set Context!13696))

(declare-fun call!646024 () List!68815)

(declare-fun bm!646016 () Bool)

(assert (=> bm!646016 (= call!646021 (derivationStepZipperDown!2391 (ite c!1324448 (regTwo!36217 (reg!18181 r!11554)) (ite c!1324450 (regTwo!36216 (reg!18181 r!11554)) (ite c!1324451 (regOne!36216 (reg!18181 r!11554)) (reg!18181 (reg!18181 r!11554))))) (ite (or c!1324448 c!1324450) (Context!13697 ($colon$colon!2735 lt!2557551 r!11554)) (Context!13697 call!646024)) a!1901))))

(declare-fun d!2218088 () Bool)

(declare-fun c!1324447 () Bool)

(assert (=> d!2218088 (= c!1324447 (and (is-ElementMatch!17852 (reg!18181 r!11554)) (= (c!1324429 (reg!18181 r!11554)) a!1901)))))

(assert (=> d!2218088 (= (derivationStepZipperDown!2391 (reg!18181 r!11554) (Context!13697 ($colon$colon!2735 lt!2557551 r!11554)) a!1901) e!4266538)))

(declare-fun bm!646017 () Bool)

(assert (=> bm!646017 (= call!646024 call!646022)))

(declare-fun b!7097990 () Bool)

(declare-fun call!646020 () (Set Context!13696))

(assert (=> b!7097990 (= e!4266542 (set.union call!646020 call!646021))))

(declare-fun b!7097991 () Bool)

(assert (=> b!7097991 (= c!1324450 e!4266539)))

(declare-fun res!2898438 () Bool)

(assert (=> b!7097991 (=> (not res!2898438) (not e!4266539))))

(assert (=> b!7097991 (= res!2898438 (is-Concat!26697 (reg!18181 r!11554)))))

(declare-fun e!4266537 () (Set Context!13696))

(assert (=> b!7097991 (= e!4266542 e!4266537)))

(declare-fun bm!646018 () Bool)

(assert (=> bm!646018 (= call!646020 (derivationStepZipperDown!2391 (ite c!1324448 (regOne!36217 (reg!18181 r!11554)) (regOne!36216 (reg!18181 r!11554))) (ite c!1324448 (Context!13697 ($colon$colon!2735 lt!2557551 r!11554)) (Context!13697 call!646022)) a!1901))))

(declare-fun b!7097992 () Bool)

(declare-fun e!4266541 () (Set Context!13696))

(assert (=> b!7097992 (= e!4266541 (as set.empty (Set Context!13696)))))

(declare-fun b!7097993 () Bool)

(declare-fun c!1324449 () Bool)

(assert (=> b!7097993 (= c!1324449 (is-Star!17852 (reg!18181 r!11554)))))

(declare-fun e!4266540 () (Set Context!13696))

(assert (=> b!7097993 (= e!4266540 e!4266541)))

(declare-fun b!7097994 () Bool)

(assert (=> b!7097994 (= e!4266538 (set.insert (Context!13697 ($colon$colon!2735 lt!2557551 r!11554)) (as set.empty (Set Context!13696))))))

(declare-fun b!7097995 () Bool)

(assert (=> b!7097995 (= e!4266537 e!4266540)))

(assert (=> b!7097995 (= c!1324451 (is-Concat!26697 (reg!18181 r!11554)))))

(declare-fun bm!646019 () Bool)

(declare-fun call!646023 () (Set Context!13696))

(assert (=> bm!646019 (= call!646023 call!646021)))

(declare-fun b!7097996 () Bool)

(declare-fun call!646025 () (Set Context!13696))

(assert (=> b!7097996 (= e!4266540 call!646025)))

(declare-fun b!7097997 () Bool)

(assert (=> b!7097997 (= e!4266537 (set.union call!646020 call!646023))))

(declare-fun bm!646020 () Bool)

(assert (=> bm!646020 (= call!646025 call!646023)))

(declare-fun b!7097998 () Bool)

(assert (=> b!7097998 (= e!4266541 call!646025)))

(assert (= (and d!2218088 c!1324447) b!7097994))

(assert (= (and d!2218088 (not c!1324447)) b!7097989))

(assert (= (and b!7097989 c!1324448) b!7097990))

(assert (= (and b!7097989 (not c!1324448)) b!7097991))

(assert (= (and b!7097991 res!2898438) b!7097988))

(assert (= (and b!7097991 c!1324450) b!7097997))

(assert (= (and b!7097991 (not c!1324450)) b!7097995))

(assert (= (and b!7097995 c!1324451) b!7097996))

(assert (= (and b!7097995 (not c!1324451)) b!7097993))

(assert (= (and b!7097993 c!1324449) b!7097998))

(assert (= (and b!7097993 (not c!1324449)) b!7097992))

(assert (= (or b!7097996 b!7097998) bm!646017))

(assert (= (or b!7097996 b!7097998) bm!646020))

(assert (= (or b!7097997 bm!646020) bm!646019))

(assert (= (or b!7097997 bm!646017) bm!646015))

(assert (= (or b!7097990 bm!646019) bm!646016))

(assert (= (or b!7097990 b!7097997) bm!646018))

(declare-fun m!7824618 () Bool)

(assert (=> bm!646016 m!7824618))

(declare-fun m!7824620 () Bool)

(assert (=> bm!646015 m!7824620))

(declare-fun m!7824622 () Bool)

(assert (=> bm!646018 m!7824622))

(declare-fun m!7824624 () Bool)

(assert (=> b!7097994 m!7824624))

(declare-fun m!7824626 () Bool)

(assert (=> b!7097988 m!7824626))

(assert (=> b!7097910 d!2218088))

(declare-fun d!2218092 () Bool)

(assert (=> d!2218092 (= ($colon$colon!2735 lt!2557551 r!11554) (Cons!68691 r!11554 lt!2557551))))

(assert (=> b!7097910 d!2218092))

(declare-fun b!7098017 () Bool)

(declare-fun res!2898450 () Bool)

(declare-fun e!4266563 () Bool)

(assert (=> b!7098017 (=> (not res!2898450) (not e!4266563))))

(declare-fun call!646032 () Bool)

(assert (=> b!7098017 (= res!2898450 call!646032)))

(declare-fun e!4266558 () Bool)

(assert (=> b!7098017 (= e!4266558 e!4266563)))

(declare-fun bm!646027 () Bool)

(declare-fun c!1324457 () Bool)

(assert (=> bm!646027 (= call!646032 (validRegex!9127 (ite c!1324457 (regOne!36217 r!11554) (regTwo!36216 r!11554))))))

(declare-fun b!7098019 () Bool)

(declare-fun call!646034 () Bool)

(assert (=> b!7098019 (= e!4266563 call!646034)))

(declare-fun b!7098020 () Bool)

(declare-fun e!4266561 () Bool)

(assert (=> b!7098020 (= e!4266561 e!4266558)))

(assert (=> b!7098020 (= c!1324457 (is-Union!17852 r!11554))))

(declare-fun b!7098021 () Bool)

(declare-fun e!4266562 () Bool)

(declare-fun call!646033 () Bool)

(assert (=> b!7098021 (= e!4266562 call!646033)))

(declare-fun b!7098022 () Bool)

(declare-fun e!4266557 () Bool)

(declare-fun e!4266560 () Bool)

(assert (=> b!7098022 (= e!4266557 e!4266560)))

(declare-fun res!2898449 () Bool)

(assert (=> b!7098022 (=> (not res!2898449) (not e!4266560))))

(assert (=> b!7098022 (= res!2898449 call!646034)))

(declare-fun b!7098023 () Bool)

(declare-fun e!4266559 () Bool)

(assert (=> b!7098023 (= e!4266559 e!4266561)))

(declare-fun c!1324456 () Bool)

(assert (=> b!7098023 (= c!1324456 (is-Star!17852 r!11554))))

(declare-fun b!7098018 () Bool)

(assert (=> b!7098018 (= e!4266560 call!646032)))

(declare-fun d!2218094 () Bool)

(declare-fun res!2898451 () Bool)

(assert (=> d!2218094 (=> res!2898451 e!4266559)))

(assert (=> d!2218094 (= res!2898451 (is-ElementMatch!17852 r!11554))))

(assert (=> d!2218094 (= (validRegex!9127 r!11554) e!4266559)))

(declare-fun b!7098024 () Bool)

(declare-fun res!2898453 () Bool)

(assert (=> b!7098024 (=> res!2898453 e!4266557)))

(assert (=> b!7098024 (= res!2898453 (not (is-Concat!26697 r!11554)))))

(assert (=> b!7098024 (= e!4266558 e!4266557)))

(declare-fun bm!646028 () Bool)

(assert (=> bm!646028 (= call!646033 (validRegex!9127 (ite c!1324456 (reg!18181 r!11554) (ite c!1324457 (regTwo!36217 r!11554) (regOne!36216 r!11554)))))))

(declare-fun b!7098025 () Bool)

(assert (=> b!7098025 (= e!4266561 e!4266562)))

(declare-fun res!2898452 () Bool)

(assert (=> b!7098025 (= res!2898452 (not (nullable!7492 (reg!18181 r!11554))))))

(assert (=> b!7098025 (=> (not res!2898452) (not e!4266562))))

(declare-fun bm!646029 () Bool)

(assert (=> bm!646029 (= call!646034 call!646033)))

(assert (= (and d!2218094 (not res!2898451)) b!7098023))

(assert (= (and b!7098023 c!1324456) b!7098025))

(assert (= (and b!7098023 (not c!1324456)) b!7098020))

(assert (= (and b!7098025 res!2898452) b!7098021))

(assert (= (and b!7098020 c!1324457) b!7098017))

(assert (= (and b!7098020 (not c!1324457)) b!7098024))

(assert (= (and b!7098017 res!2898450) b!7098019))

(assert (= (and b!7098024 (not res!2898453)) b!7098022))

(assert (= (and b!7098022 res!2898449) b!7098018))

(assert (= (or b!7098017 b!7098018) bm!646027))

(assert (= (or b!7098019 b!7098022) bm!646029))

(assert (= (or b!7098021 bm!646029) bm!646028))

(declare-fun m!7824628 () Bool)

(assert (=> bm!646027 m!7824628))

(declare-fun m!7824630 () Bool)

(assert (=> bm!646028 m!7824630))

(declare-fun m!7824632 () Bool)

(assert (=> b!7098025 m!7824632))

(assert (=> start!690922 d!2218094))

(declare-fun bs!1884060 () Bool)

(declare-fun d!2218096 () Bool)

(assert (= bs!1884060 (and d!2218096 b!7097902)))

(declare-fun lambda!430671 () Int)

(assert (=> bs!1884060 (= lambda!430671 lambda!430654)))

(assert (=> d!2218096 (= (inv!87496 c!9994) (forall!16768 (exprs!7348 c!9994) lambda!430671))))

(declare-fun bs!1884061 () Bool)

(assert (= bs!1884061 d!2218096))

(declare-fun m!7824634 () Bool)

(assert (=> bs!1884061 m!7824634))

(assert (=> start!690922 d!2218096))

(declare-fun bs!1884062 () Bool)

(declare-fun d!2218098 () Bool)

(assert (= bs!1884062 (and d!2218098 b!7097902)))

(declare-fun lambda!430674 () Int)

(assert (=> bs!1884062 (= lambda!430674 lambda!430654)))

(declare-fun bs!1884063 () Bool)

(assert (= bs!1884063 (and d!2218098 d!2218096)))

(assert (=> bs!1884063 (= lambda!430674 lambda!430671)))

(assert (=> d!2218098 (= (inv!87496 auxCtx!45) (forall!16768 (exprs!7348 auxCtx!45) lambda!430674))))

(declare-fun bs!1884064 () Bool)

(assert (= bs!1884064 d!2218098))

(declare-fun m!7824636 () Bool)

(assert (=> bs!1884064 m!7824636))

(assert (=> start!690922 d!2218098))

(declare-fun d!2218100 () Bool)

(declare-fun nullableFct!2885 (Regex!17852) Bool)

(assert (=> d!2218100 (= (nullable!7492 (regOne!36216 r!11554)) (nullableFct!2885 (regOne!36216 r!11554)))))

(declare-fun bs!1884065 () Bool)

(assert (= bs!1884065 d!2218100))

(declare-fun m!7824638 () Bool)

(assert (=> bs!1884065 m!7824638))

(assert (=> b!7097906 d!2218100))

(declare-fun d!2218102 () Bool)

(assert (=> d!2218102 (forall!16768 (++!16012 lt!2557546 (exprs!7348 auxCtx!45)) lambda!430654)))

(declare-fun lt!2557581 () Unit!162379)

(declare-fun choose!54726 (List!68815 List!68815 Int) Unit!162379)

(assert (=> d!2218102 (= lt!2557581 (choose!54726 lt!2557546 (exprs!7348 auxCtx!45) lambda!430654))))

(assert (=> d!2218102 (forall!16768 lt!2557546 lambda!430654)))

(assert (=> d!2218102 (= (lemmaConcatPreservesForall!1143 lt!2557546 (exprs!7348 auxCtx!45) lambda!430654) lt!2557581)))

(declare-fun bs!1884066 () Bool)

(assert (= bs!1884066 d!2218102))

(assert (=> bs!1884066 m!7824558))

(assert (=> bs!1884066 m!7824558))

(declare-fun m!7824640 () Bool)

(assert (=> bs!1884066 m!7824640))

(declare-fun m!7824642 () Bool)

(assert (=> bs!1884066 m!7824642))

(declare-fun m!7824644 () Bool)

(assert (=> bs!1884066 m!7824644))

(assert (=> b!7097913 d!2218102))

(declare-fun b!7098026 () Bool)

(declare-fun e!4266566 () Bool)

(assert (=> b!7098026 (= e!4266566 (nullable!7492 (regOne!36216 (reg!18181 r!11554))))))

(declare-fun b!7098027 () Bool)

(declare-fun e!4266565 () (Set Context!13696))

(declare-fun e!4266569 () (Set Context!13696))

(assert (=> b!7098027 (= e!4266565 e!4266569)))

(declare-fun c!1324460 () Bool)

(assert (=> b!7098027 (= c!1324460 (is-Union!17852 (reg!18181 r!11554)))))

(declare-fun c!1324462 () Bool)

(declare-fun bm!646030 () Bool)

(declare-fun call!646037 () List!68815)

(declare-fun c!1324463 () Bool)

(assert (=> bm!646030 (= call!646037 ($colon$colon!2735 (exprs!7348 lt!2557549) (ite (or c!1324462 c!1324463) (regTwo!36216 (reg!18181 r!11554)) (reg!18181 r!11554))))))

(declare-fun bm!646031 () Bool)

(declare-fun call!646036 () (Set Context!13696))

(declare-fun call!646039 () List!68815)

(assert (=> bm!646031 (= call!646036 (derivationStepZipperDown!2391 (ite c!1324460 (regTwo!36217 (reg!18181 r!11554)) (ite c!1324462 (regTwo!36216 (reg!18181 r!11554)) (ite c!1324463 (regOne!36216 (reg!18181 r!11554)) (reg!18181 (reg!18181 r!11554))))) (ite (or c!1324460 c!1324462) lt!2557549 (Context!13697 call!646039)) a!1901))))

(declare-fun d!2218104 () Bool)

(declare-fun c!1324459 () Bool)

(assert (=> d!2218104 (= c!1324459 (and (is-ElementMatch!17852 (reg!18181 r!11554)) (= (c!1324429 (reg!18181 r!11554)) a!1901)))))

(assert (=> d!2218104 (= (derivationStepZipperDown!2391 (reg!18181 r!11554) lt!2557549 a!1901) e!4266565)))

(declare-fun bm!646032 () Bool)

(assert (=> bm!646032 (= call!646039 call!646037)))

(declare-fun b!7098028 () Bool)

(declare-fun call!646035 () (Set Context!13696))

(assert (=> b!7098028 (= e!4266569 (set.union call!646035 call!646036))))

(declare-fun b!7098029 () Bool)

(assert (=> b!7098029 (= c!1324462 e!4266566)))

(declare-fun res!2898454 () Bool)

(assert (=> b!7098029 (=> (not res!2898454) (not e!4266566))))

(assert (=> b!7098029 (= res!2898454 (is-Concat!26697 (reg!18181 r!11554)))))

(declare-fun e!4266564 () (Set Context!13696))

(assert (=> b!7098029 (= e!4266569 e!4266564)))

(declare-fun bm!646033 () Bool)

(assert (=> bm!646033 (= call!646035 (derivationStepZipperDown!2391 (ite c!1324460 (regOne!36217 (reg!18181 r!11554)) (regOne!36216 (reg!18181 r!11554))) (ite c!1324460 lt!2557549 (Context!13697 call!646037)) a!1901))))

(declare-fun b!7098030 () Bool)

(declare-fun e!4266568 () (Set Context!13696))

(assert (=> b!7098030 (= e!4266568 (as set.empty (Set Context!13696)))))

(declare-fun b!7098031 () Bool)

(declare-fun c!1324461 () Bool)

(assert (=> b!7098031 (= c!1324461 (is-Star!17852 (reg!18181 r!11554)))))

(declare-fun e!4266567 () (Set Context!13696))

(assert (=> b!7098031 (= e!4266567 e!4266568)))

(declare-fun b!7098032 () Bool)

(assert (=> b!7098032 (= e!4266565 (set.insert lt!2557549 (as set.empty (Set Context!13696))))))

(declare-fun b!7098033 () Bool)

(assert (=> b!7098033 (= e!4266564 e!4266567)))

(assert (=> b!7098033 (= c!1324463 (is-Concat!26697 (reg!18181 r!11554)))))

(declare-fun bm!646034 () Bool)

(declare-fun call!646038 () (Set Context!13696))

(assert (=> bm!646034 (= call!646038 call!646036)))

(declare-fun b!7098034 () Bool)

(declare-fun call!646040 () (Set Context!13696))

(assert (=> b!7098034 (= e!4266567 call!646040)))

(declare-fun b!7098035 () Bool)

(assert (=> b!7098035 (= e!4266564 (set.union call!646035 call!646038))))

(declare-fun bm!646035 () Bool)

(assert (=> bm!646035 (= call!646040 call!646038)))

(declare-fun b!7098036 () Bool)

(assert (=> b!7098036 (= e!4266568 call!646040)))

(assert (= (and d!2218104 c!1324459) b!7098032))

(assert (= (and d!2218104 (not c!1324459)) b!7098027))

(assert (= (and b!7098027 c!1324460) b!7098028))

(assert (= (and b!7098027 (not c!1324460)) b!7098029))

(assert (= (and b!7098029 res!2898454) b!7098026))

(assert (= (and b!7098029 c!1324462) b!7098035))

(assert (= (and b!7098029 (not c!1324462)) b!7098033))

(assert (= (and b!7098033 c!1324463) b!7098034))

(assert (= (and b!7098033 (not c!1324463)) b!7098031))

(assert (= (and b!7098031 c!1324461) b!7098036))

(assert (= (and b!7098031 (not c!1324461)) b!7098030))

(assert (= (or b!7098034 b!7098036) bm!646032))

(assert (= (or b!7098034 b!7098036) bm!646035))

(assert (= (or b!7098035 bm!646035) bm!646034))

(assert (= (or b!7098035 bm!646032) bm!646030))

(assert (= (or b!7098028 bm!646034) bm!646031))

(assert (= (or b!7098028 b!7098035) bm!646033))

(declare-fun m!7824646 () Bool)

(assert (=> bm!646031 m!7824646))

(declare-fun m!7824648 () Bool)

(assert (=> bm!646030 m!7824648))

(declare-fun m!7824650 () Bool)

(assert (=> bm!646033 m!7824650))

(declare-fun m!7824654 () Bool)

(assert (=> b!7098032 m!7824654))

(assert (=> b!7098026 m!7824626))

(assert (=> b!7097913 d!2218104))

(declare-fun b!7098037 () Bool)

(declare-fun e!4266572 () Bool)

(assert (=> b!7098037 (= e!4266572 (nullable!7492 (regOne!36216 (reg!18181 r!11554))))))

(declare-fun b!7098038 () Bool)

(declare-fun e!4266571 () (Set Context!13696))

(declare-fun e!4266575 () (Set Context!13696))

(assert (=> b!7098038 (= e!4266571 e!4266575)))

(declare-fun c!1324465 () Bool)

(assert (=> b!7098038 (= c!1324465 (is-Union!17852 (reg!18181 r!11554)))))

(declare-fun call!646043 () List!68815)

(declare-fun c!1324468 () Bool)

(declare-fun bm!646036 () Bool)

(declare-fun c!1324467 () Bool)

(assert (=> bm!646036 (= call!646043 ($colon$colon!2735 (exprs!7348 (Context!13697 (++!16012 lt!2557546 (exprs!7348 auxCtx!45)))) (ite (or c!1324467 c!1324468) (regTwo!36216 (reg!18181 r!11554)) (reg!18181 r!11554))))))

(declare-fun call!646042 () (Set Context!13696))

(declare-fun bm!646037 () Bool)

(declare-fun call!646045 () List!68815)

(assert (=> bm!646037 (= call!646042 (derivationStepZipperDown!2391 (ite c!1324465 (regTwo!36217 (reg!18181 r!11554)) (ite c!1324467 (regTwo!36216 (reg!18181 r!11554)) (ite c!1324468 (regOne!36216 (reg!18181 r!11554)) (reg!18181 (reg!18181 r!11554))))) (ite (or c!1324465 c!1324467) (Context!13697 (++!16012 lt!2557546 (exprs!7348 auxCtx!45))) (Context!13697 call!646045)) a!1901))))

(declare-fun d!2218106 () Bool)

(declare-fun c!1324464 () Bool)

(assert (=> d!2218106 (= c!1324464 (and (is-ElementMatch!17852 (reg!18181 r!11554)) (= (c!1324429 (reg!18181 r!11554)) a!1901)))))

(assert (=> d!2218106 (= (derivationStepZipperDown!2391 (reg!18181 r!11554) (Context!13697 (++!16012 lt!2557546 (exprs!7348 auxCtx!45))) a!1901) e!4266571)))

(declare-fun bm!646038 () Bool)

(assert (=> bm!646038 (= call!646045 call!646043)))

(declare-fun b!7098039 () Bool)

(declare-fun call!646041 () (Set Context!13696))

(assert (=> b!7098039 (= e!4266575 (set.union call!646041 call!646042))))

(declare-fun b!7098040 () Bool)

(assert (=> b!7098040 (= c!1324467 e!4266572)))

(declare-fun res!2898455 () Bool)

(assert (=> b!7098040 (=> (not res!2898455) (not e!4266572))))

(assert (=> b!7098040 (= res!2898455 (is-Concat!26697 (reg!18181 r!11554)))))

(declare-fun e!4266570 () (Set Context!13696))

(assert (=> b!7098040 (= e!4266575 e!4266570)))

(declare-fun bm!646039 () Bool)

(assert (=> bm!646039 (= call!646041 (derivationStepZipperDown!2391 (ite c!1324465 (regOne!36217 (reg!18181 r!11554)) (regOne!36216 (reg!18181 r!11554))) (ite c!1324465 (Context!13697 (++!16012 lt!2557546 (exprs!7348 auxCtx!45))) (Context!13697 call!646043)) a!1901))))

(declare-fun b!7098041 () Bool)

(declare-fun e!4266574 () (Set Context!13696))

(assert (=> b!7098041 (= e!4266574 (as set.empty (Set Context!13696)))))

(declare-fun b!7098042 () Bool)

(declare-fun c!1324466 () Bool)

(assert (=> b!7098042 (= c!1324466 (is-Star!17852 (reg!18181 r!11554)))))

(declare-fun e!4266573 () (Set Context!13696))

(assert (=> b!7098042 (= e!4266573 e!4266574)))

(declare-fun b!7098043 () Bool)

(assert (=> b!7098043 (= e!4266571 (set.insert (Context!13697 (++!16012 lt!2557546 (exprs!7348 auxCtx!45))) (as set.empty (Set Context!13696))))))

(declare-fun b!7098044 () Bool)

(assert (=> b!7098044 (= e!4266570 e!4266573)))

(assert (=> b!7098044 (= c!1324468 (is-Concat!26697 (reg!18181 r!11554)))))

(declare-fun bm!646040 () Bool)

(declare-fun call!646044 () (Set Context!13696))

(assert (=> bm!646040 (= call!646044 call!646042)))

(declare-fun b!7098045 () Bool)

(declare-fun call!646046 () (Set Context!13696))

(assert (=> b!7098045 (= e!4266573 call!646046)))

(declare-fun b!7098046 () Bool)

(assert (=> b!7098046 (= e!4266570 (set.union call!646041 call!646044))))

(declare-fun bm!646041 () Bool)

(assert (=> bm!646041 (= call!646046 call!646044)))

(declare-fun b!7098047 () Bool)

(assert (=> b!7098047 (= e!4266574 call!646046)))

(assert (= (and d!2218106 c!1324464) b!7098043))

(assert (= (and d!2218106 (not c!1324464)) b!7098038))

(assert (= (and b!7098038 c!1324465) b!7098039))

(assert (= (and b!7098038 (not c!1324465)) b!7098040))

(assert (= (and b!7098040 res!2898455) b!7098037))

(assert (= (and b!7098040 c!1324467) b!7098046))

(assert (= (and b!7098040 (not c!1324467)) b!7098044))

(assert (= (and b!7098044 c!1324468) b!7098045))

(assert (= (and b!7098044 (not c!1324468)) b!7098042))

(assert (= (and b!7098042 c!1324466) b!7098047))

(assert (= (and b!7098042 (not c!1324466)) b!7098041))

(assert (= (or b!7098045 b!7098047) bm!646038))

(assert (= (or b!7098045 b!7098047) bm!646041))

(assert (= (or b!7098046 bm!646041) bm!646040))

(assert (= (or b!7098046 bm!646038) bm!646036))

(assert (= (or b!7098039 bm!646040) bm!646037))

(assert (= (or b!7098039 b!7098046) bm!646039))

(declare-fun m!7824664 () Bool)

(assert (=> bm!646037 m!7824664))

(declare-fun m!7824666 () Bool)

(assert (=> bm!646036 m!7824666))

(declare-fun m!7824668 () Bool)

(assert (=> bm!646039 m!7824668))

(declare-fun m!7824670 () Bool)

(assert (=> b!7098043 m!7824670))

(assert (=> b!7098037 m!7824626))

(assert (=> b!7097913 d!2218106))

(declare-fun d!2218110 () Bool)

(assert (=> d!2218110 (= ($colon$colon!2735 (exprs!7348 c!9994) r!11554) (Cons!68691 r!11554 (exprs!7348 c!9994)))))

(assert (=> b!7097913 d!2218110))

(declare-fun b!7098058 () Bool)

(declare-fun res!2898461 () Bool)

(declare-fun e!4266580 () Bool)

(assert (=> b!7098058 (=> (not res!2898461) (not e!4266580))))

(declare-fun lt!2557589 () List!68815)

(declare-fun size!41334 (List!68815) Int)

(assert (=> b!7098058 (= res!2898461 (= (size!41334 lt!2557589) (+ (size!41334 lt!2557546) (size!41334 (exprs!7348 auxCtx!45)))))))

(declare-fun b!7098056 () Bool)

(declare-fun e!4266581 () List!68815)

(assert (=> b!7098056 (= e!4266581 (exprs!7348 auxCtx!45))))

(declare-fun d!2218112 () Bool)

(assert (=> d!2218112 e!4266580))

(declare-fun res!2898460 () Bool)

(assert (=> d!2218112 (=> (not res!2898460) (not e!4266580))))

(declare-fun content!13959 (List!68815) (Set Regex!17852))

(assert (=> d!2218112 (= res!2898460 (= (content!13959 lt!2557589) (set.union (content!13959 lt!2557546) (content!13959 (exprs!7348 auxCtx!45)))))))

(assert (=> d!2218112 (= lt!2557589 e!4266581)))

(declare-fun c!1324471 () Bool)

(assert (=> d!2218112 (= c!1324471 (is-Nil!68691 lt!2557546))))

(assert (=> d!2218112 (= (++!16012 lt!2557546 (exprs!7348 auxCtx!45)) lt!2557589)))

(declare-fun b!7098059 () Bool)

(assert (=> b!7098059 (= e!4266580 (or (not (= (exprs!7348 auxCtx!45) Nil!68691)) (= lt!2557589 lt!2557546)))))

(declare-fun b!7098057 () Bool)

(assert (=> b!7098057 (= e!4266581 (Cons!68691 (h!75139 lt!2557546) (++!16012 (t!382618 lt!2557546) (exprs!7348 auxCtx!45))))))

(assert (= (and d!2218112 c!1324471) b!7098056))

(assert (= (and d!2218112 (not c!1324471)) b!7098057))

(assert (= (and d!2218112 res!2898460) b!7098058))

(assert (= (and b!7098058 res!2898461) b!7098059))

(declare-fun m!7824678 () Bool)

(assert (=> b!7098058 m!7824678))

(declare-fun m!7824680 () Bool)

(assert (=> b!7098058 m!7824680))

(declare-fun m!7824682 () Bool)

(assert (=> b!7098058 m!7824682))

(declare-fun m!7824684 () Bool)

(assert (=> d!2218112 m!7824684))

(declare-fun m!7824686 () Bool)

(assert (=> d!2218112 m!7824686))

(declare-fun m!7824688 () Bool)

(assert (=> d!2218112 m!7824688))

(declare-fun m!7824690 () Bool)

(assert (=> b!7098057 m!7824690))

(assert (=> b!7097913 d!2218112))

(declare-fun bs!1884070 () Bool)

(declare-fun d!2218116 () Bool)

(assert (= bs!1884070 (and d!2218116 b!7097902)))

(declare-fun lambda!430678 () Int)

(assert (=> bs!1884070 (= lambda!430678 lambda!430654)))

(declare-fun bs!1884071 () Bool)

(assert (= bs!1884071 (and d!2218116 d!2218096)))

(assert (=> bs!1884071 (= lambda!430678 lambda!430671)))

(declare-fun bs!1884072 () Bool)

(assert (= bs!1884072 (and d!2218116 d!2218098)))

(assert (=> bs!1884072 (= lambda!430678 lambda!430674)))

(assert (=> d!2218116 (= (derivationStepZipperDown!2391 (reg!18181 r!11554) (Context!13697 (++!16012 (exprs!7348 lt!2557549) (exprs!7348 auxCtx!45))) a!1901) (appendTo!895 (derivationStepZipperDown!2391 (reg!18181 r!11554) lt!2557549 a!1901) auxCtx!45))))

(declare-fun lt!2557595 () Unit!162379)

(assert (=> d!2218116 (= lt!2557595 (lemmaConcatPreservesForall!1143 (exprs!7348 lt!2557549) (exprs!7348 auxCtx!45) lambda!430678))))

(declare-fun lt!2557594 () Unit!162379)

(declare-fun choose!54729 (Context!13696 Regex!17852 C!35974 Context!13696) Unit!162379)

(assert (=> d!2218116 (= lt!2557594 (choose!54729 lt!2557549 (reg!18181 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2218116 (validRegex!9127 (reg!18181 r!11554))))

(assert (=> d!2218116 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!203 lt!2557549 (reg!18181 r!11554) a!1901 auxCtx!45) lt!2557594)))

(declare-fun bs!1884073 () Bool)

(assert (= bs!1884073 d!2218116))

(declare-fun m!7824692 () Bool)

(assert (=> bs!1884073 m!7824692))

(assert (=> bs!1884073 m!7824552))

(assert (=> bs!1884073 m!7824556))

(declare-fun m!7824694 () Bool)

(assert (=> bs!1884073 m!7824694))

(assert (=> bs!1884073 m!7824552))

(declare-fun m!7824696 () Bool)

(assert (=> bs!1884073 m!7824696))

(declare-fun m!7824698 () Bool)

(assert (=> bs!1884073 m!7824698))

(declare-fun m!7824700 () Bool)

(assert (=> bs!1884073 m!7824700))

(assert (=> b!7097913 d!2218116))

(declare-fun d!2218120 () Bool)

(assert (=> d!2218120 true))

(declare-fun lambda!430683 () Int)

(declare-fun map!16193 ((Set Context!13696) Int) (Set Context!13696))

(assert (=> d!2218120 (= (appendTo!895 (derivationStepZipperDown!2391 (reg!18181 r!11554) lt!2557549 a!1901) auxCtx!45) (map!16193 (derivationStepZipperDown!2391 (reg!18181 r!11554) lt!2557549 a!1901) lambda!430683))))

(declare-fun bs!1884074 () Bool)

(assert (= bs!1884074 d!2218120))

(assert (=> bs!1884074 m!7824552))

(declare-fun m!7824702 () Bool)

(assert (=> bs!1884074 m!7824702))

(assert (=> b!7097913 d!2218120))

(declare-fun d!2218122 () Bool)

(declare-fun res!2898468 () Bool)

(declare-fun e!4266598 () Bool)

(assert (=> d!2218122 (=> res!2898468 e!4266598)))

(assert (=> d!2218122 (= res!2898468 (is-Nil!68691 (exprs!7348 c!9994)))))

(assert (=> d!2218122 (= (forall!16768 (exprs!7348 c!9994) lambda!430654) e!4266598)))

(declare-fun b!7098088 () Bool)

(declare-fun e!4266599 () Bool)

(assert (=> b!7098088 (= e!4266598 e!4266599)))

(declare-fun res!2898469 () Bool)

(assert (=> b!7098088 (=> (not res!2898469) (not e!4266599))))

(declare-fun dynLambda!28031 (Int Regex!17852) Bool)

(assert (=> b!7098088 (= res!2898469 (dynLambda!28031 lambda!430654 (h!75139 (exprs!7348 c!9994))))))

(declare-fun b!7098089 () Bool)

(assert (=> b!7098089 (= e!4266599 (forall!16768 (t!382618 (exprs!7348 c!9994)) lambda!430654))))

(assert (= (and d!2218122 (not res!2898468)) b!7098088))

(assert (= (and b!7098088 res!2898469) b!7098089))

(declare-fun b_lambda!271217 () Bool)

(assert (=> (not b_lambda!271217) (not b!7098088)))

(declare-fun m!7824704 () Bool)

(assert (=> b!7098088 m!7824704))

(declare-fun m!7824706 () Bool)

(assert (=> b!7098089 m!7824706))

(assert (=> b!7097913 d!2218122))

(assert (=> b!7097902 d!2218094))

(declare-fun b!7098092 () Bool)

(declare-fun res!2898471 () Bool)

(declare-fun e!4266600 () Bool)

(assert (=> b!7098092 (=> (not res!2898471) (not e!4266600))))

(declare-fun lt!2557598 () List!68815)

(assert (=> b!7098092 (= res!2898471 (= (size!41334 lt!2557598) (+ (size!41334 (exprs!7348 c!9994)) (size!41334 (exprs!7348 auxCtx!45)))))))

(declare-fun b!7098090 () Bool)

(declare-fun e!4266601 () List!68815)

(assert (=> b!7098090 (= e!4266601 (exprs!7348 auxCtx!45))))

(declare-fun d!2218124 () Bool)

(assert (=> d!2218124 e!4266600))

(declare-fun res!2898470 () Bool)

(assert (=> d!2218124 (=> (not res!2898470) (not e!4266600))))

(assert (=> d!2218124 (= res!2898470 (= (content!13959 lt!2557598) (set.union (content!13959 (exprs!7348 c!9994)) (content!13959 (exprs!7348 auxCtx!45)))))))

(assert (=> d!2218124 (= lt!2557598 e!4266601)))

(declare-fun c!1324484 () Bool)

(assert (=> d!2218124 (= c!1324484 (is-Nil!68691 (exprs!7348 c!9994)))))

(assert (=> d!2218124 (= (++!16012 (exprs!7348 c!9994) (exprs!7348 auxCtx!45)) lt!2557598)))

(declare-fun b!7098093 () Bool)

(assert (=> b!7098093 (= e!4266600 (or (not (= (exprs!7348 auxCtx!45) Nil!68691)) (= lt!2557598 (exprs!7348 c!9994))))))

(declare-fun b!7098091 () Bool)

(assert (=> b!7098091 (= e!4266601 (Cons!68691 (h!75139 (exprs!7348 c!9994)) (++!16012 (t!382618 (exprs!7348 c!9994)) (exprs!7348 auxCtx!45))))))

(assert (= (and d!2218124 c!1324484) b!7098090))

(assert (= (and d!2218124 (not c!1324484)) b!7098091))

(assert (= (and d!2218124 res!2898470) b!7098092))

(assert (= (and b!7098092 res!2898471) b!7098093))

(declare-fun m!7824708 () Bool)

(assert (=> b!7098092 m!7824708))

(declare-fun m!7824710 () Bool)

(assert (=> b!7098092 m!7824710))

(assert (=> b!7098092 m!7824682))

(declare-fun m!7824712 () Bool)

(assert (=> d!2218124 m!7824712))

(declare-fun m!7824714 () Bool)

(assert (=> d!2218124 m!7824714))

(assert (=> d!2218124 m!7824688))

(declare-fun m!7824716 () Bool)

(assert (=> b!7098091 m!7824716))

(assert (=> b!7097902 d!2218124))

(declare-fun d!2218126 () Bool)

(assert (=> d!2218126 (forall!16768 (++!16012 (exprs!7348 c!9994) (exprs!7348 auxCtx!45)) lambda!430654)))

(declare-fun lt!2557599 () Unit!162379)

(assert (=> d!2218126 (= lt!2557599 (choose!54726 (exprs!7348 c!9994) (exprs!7348 auxCtx!45) lambda!430654))))

(assert (=> d!2218126 (forall!16768 (exprs!7348 c!9994) lambda!430654)))

(assert (=> d!2218126 (= (lemmaConcatPreservesForall!1143 (exprs!7348 c!9994) (exprs!7348 auxCtx!45) lambda!430654) lt!2557599)))

(declare-fun bs!1884075 () Bool)

(assert (= bs!1884075 d!2218126))

(assert (=> bs!1884075 m!7824546))

(assert (=> bs!1884075 m!7824546))

(declare-fun m!7824718 () Bool)

(assert (=> bs!1884075 m!7824718))

(declare-fun m!7824720 () Bool)

(assert (=> bs!1884075 m!7824720))

(assert (=> bs!1884075 m!7824560))

(assert (=> b!7097902 d!2218126))

(declare-fun b!7098105 () Bool)

(declare-fun e!4266604 () Bool)

(declare-fun tp!1950938 () Bool)

(declare-fun tp!1950935 () Bool)

(assert (=> b!7098105 (= e!4266604 (and tp!1950938 tp!1950935))))

(declare-fun b!7098106 () Bool)

(declare-fun tp!1950936 () Bool)

(assert (=> b!7098106 (= e!4266604 tp!1950936)))

(declare-fun b!7098107 () Bool)

(declare-fun tp!1950937 () Bool)

(declare-fun tp!1950939 () Bool)

(assert (=> b!7098107 (= e!4266604 (and tp!1950937 tp!1950939))))

(declare-fun b!7098104 () Bool)

(assert (=> b!7098104 (= e!4266604 tp_is_empty!44937)))

(assert (=> b!7097909 (= tp!1950901 e!4266604)))

(assert (= (and b!7097909 (is-ElementMatch!17852 (regOne!36217 r!11554))) b!7098104))

(assert (= (and b!7097909 (is-Concat!26697 (regOne!36217 r!11554))) b!7098105))

(assert (= (and b!7097909 (is-Star!17852 (regOne!36217 r!11554))) b!7098106))

(assert (= (and b!7097909 (is-Union!17852 (regOne!36217 r!11554))) b!7098107))

(declare-fun b!7098109 () Bool)

(declare-fun e!4266605 () Bool)

(declare-fun tp!1950943 () Bool)

(declare-fun tp!1950940 () Bool)

(assert (=> b!7098109 (= e!4266605 (and tp!1950943 tp!1950940))))

(declare-fun b!7098110 () Bool)

(declare-fun tp!1950941 () Bool)

(assert (=> b!7098110 (= e!4266605 tp!1950941)))

(declare-fun b!7098111 () Bool)

(declare-fun tp!1950942 () Bool)

(declare-fun tp!1950944 () Bool)

(assert (=> b!7098111 (= e!4266605 (and tp!1950942 tp!1950944))))

(declare-fun b!7098108 () Bool)

(assert (=> b!7098108 (= e!4266605 tp_is_empty!44937)))

(assert (=> b!7097909 (= tp!1950902 e!4266605)))

(assert (= (and b!7097909 (is-ElementMatch!17852 (regTwo!36217 r!11554))) b!7098108))

(assert (= (and b!7097909 (is-Concat!26697 (regTwo!36217 r!11554))) b!7098109))

(assert (= (and b!7097909 (is-Star!17852 (regTwo!36217 r!11554))) b!7098110))

(assert (= (and b!7097909 (is-Union!17852 (regTwo!36217 r!11554))) b!7098111))

(declare-fun b!7098113 () Bool)

(declare-fun e!4266606 () Bool)

(declare-fun tp!1950948 () Bool)

(declare-fun tp!1950945 () Bool)

(assert (=> b!7098113 (= e!4266606 (and tp!1950948 tp!1950945))))

(declare-fun b!7098114 () Bool)

(declare-fun tp!1950946 () Bool)

(assert (=> b!7098114 (= e!4266606 tp!1950946)))

(declare-fun b!7098115 () Bool)

(declare-fun tp!1950947 () Bool)

(declare-fun tp!1950949 () Bool)

(assert (=> b!7098115 (= e!4266606 (and tp!1950947 tp!1950949))))

(declare-fun b!7098112 () Bool)

(assert (=> b!7098112 (= e!4266606 tp_is_empty!44937)))

(assert (=> b!7097903 (= tp!1950900 e!4266606)))

(assert (= (and b!7097903 (is-ElementMatch!17852 (regOne!36216 r!11554))) b!7098112))

(assert (= (and b!7097903 (is-Concat!26697 (regOne!36216 r!11554))) b!7098113))

(assert (= (and b!7097903 (is-Star!17852 (regOne!36216 r!11554))) b!7098114))

(assert (= (and b!7097903 (is-Union!17852 (regOne!36216 r!11554))) b!7098115))

(declare-fun b!7098117 () Bool)

(declare-fun e!4266607 () Bool)

(declare-fun tp!1950953 () Bool)

(declare-fun tp!1950950 () Bool)

(assert (=> b!7098117 (= e!4266607 (and tp!1950953 tp!1950950))))

(declare-fun b!7098118 () Bool)

(declare-fun tp!1950951 () Bool)

(assert (=> b!7098118 (= e!4266607 tp!1950951)))

(declare-fun b!7098119 () Bool)

(declare-fun tp!1950952 () Bool)

(declare-fun tp!1950954 () Bool)

(assert (=> b!7098119 (= e!4266607 (and tp!1950952 tp!1950954))))

(declare-fun b!7098116 () Bool)

(assert (=> b!7098116 (= e!4266607 tp_is_empty!44937)))

(assert (=> b!7097903 (= tp!1950898 e!4266607)))

(assert (= (and b!7097903 (is-ElementMatch!17852 (regTwo!36216 r!11554))) b!7098116))

(assert (= (and b!7097903 (is-Concat!26697 (regTwo!36216 r!11554))) b!7098117))

(assert (= (and b!7097903 (is-Star!17852 (regTwo!36216 r!11554))) b!7098118))

(assert (= (and b!7097903 (is-Union!17852 (regTwo!36216 r!11554))) b!7098119))

(declare-fun b!7098121 () Bool)

(declare-fun e!4266608 () Bool)

(declare-fun tp!1950958 () Bool)

(declare-fun tp!1950955 () Bool)

(assert (=> b!7098121 (= e!4266608 (and tp!1950958 tp!1950955))))

(declare-fun b!7098122 () Bool)

(declare-fun tp!1950956 () Bool)

(assert (=> b!7098122 (= e!4266608 tp!1950956)))

(declare-fun b!7098123 () Bool)

(declare-fun tp!1950957 () Bool)

(declare-fun tp!1950959 () Bool)

(assert (=> b!7098123 (= e!4266608 (and tp!1950957 tp!1950959))))

(declare-fun b!7098120 () Bool)

(assert (=> b!7098120 (= e!4266608 tp_is_empty!44937)))

(assert (=> b!7097912 (= tp!1950899 e!4266608)))

(assert (= (and b!7097912 (is-ElementMatch!17852 (reg!18181 r!11554))) b!7098120))

(assert (= (and b!7097912 (is-Concat!26697 (reg!18181 r!11554))) b!7098121))

(assert (= (and b!7097912 (is-Star!17852 (reg!18181 r!11554))) b!7098122))

(assert (= (and b!7097912 (is-Union!17852 (reg!18181 r!11554))) b!7098123))

(declare-fun b!7098128 () Bool)

(declare-fun e!4266611 () Bool)

(declare-fun tp!1950964 () Bool)

(declare-fun tp!1950965 () Bool)

(assert (=> b!7098128 (= e!4266611 (and tp!1950964 tp!1950965))))

(assert (=> b!7097901 (= tp!1950897 e!4266611)))

(assert (= (and b!7097901 (is-Cons!68691 (exprs!7348 auxCtx!45))) b!7098128))

(declare-fun b!7098129 () Bool)

(declare-fun e!4266612 () Bool)

(declare-fun tp!1950966 () Bool)

(declare-fun tp!1950967 () Bool)

(assert (=> b!7098129 (= e!4266612 (and tp!1950966 tp!1950967))))

(assert (=> b!7097907 (= tp!1950903 e!4266612)))

(assert (= (and b!7097907 (is-Cons!68691 (exprs!7348 c!9994))) b!7098129))

(declare-fun b_lambda!271219 () Bool)

(assert (= b_lambda!271217 (or b!7097902 b_lambda!271219)))

(declare-fun bs!1884076 () Bool)

(declare-fun d!2218128 () Bool)

(assert (= bs!1884076 (and d!2218128 b!7097902)))

(assert (=> bs!1884076 (= (dynLambda!28031 lambda!430654 (h!75139 (exprs!7348 c!9994))) (validRegex!9127 (h!75139 (exprs!7348 c!9994))))))

(declare-fun m!7824722 () Bool)

(assert (=> bs!1884076 m!7824722))

(assert (=> b!7098088 d!2218128))

(push 1)

(assert (not b!7098117))

(assert (not d!2218116))

(assert (not b!7098089))

(assert (not b!7098092))

(assert (not b!7098110))

(assert (not d!2218100))

(assert (not b!7098118))

(assert (not b!7098105))

(assert (not b!7098119))

(assert (not b!7098111))

(assert (not d!2218120))

(assert (not bm!646031))

(assert (not bm!646036))

(assert (not bm!646027))

(assert (not b!7098115))

(assert (not b_lambda!271219))

(assert (not d!2218096))

(assert (not b!7098026))

(assert (not b!7097988))

(assert (not b!7098025))

(assert (not bm!646018))

(assert (not bm!646028))

(assert (not bm!646030))

(assert (not b!7098122))

(assert (not b!7097975))

(assert (not b!7098091))

(assert (not b!7098109))

(assert (not bm!646033))

(assert (not b!7098114))

(assert tp_is_empty!44937)

(assert (not bm!646016))

(assert (not d!2218098))

(assert (not bm!646039))

(assert (not b!7098113))

(assert (not b!7098106))

(assert (not b!7098057))

(assert (not bm!646010))

(assert (not bs!1884076))

(assert (not bm!646009))

(assert (not b!7098123))

(assert (not b!7098037))

(assert (not d!2218102))

(assert (not b!7098128))

(assert (not bm!646015))

(assert (not bm!646012))

(assert (not bm!646037))

(assert (not b!7098107))

(assert (not b!7098058))

(assert (not b!7098121))

(assert (not d!2218112))

(assert (not b!7098129))

(assert (not d!2218126))

(assert (not d!2218124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


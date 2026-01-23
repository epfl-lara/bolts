; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289076 () Bool)

(assert start!289076)

(declare-fun b!2994619 () Bool)

(declare-fun e!1881955 () Bool)

(declare-fun tp_is_empty!16281 () Bool)

(assert (=> b!2994619 (= e!1881955 tp_is_empty!16281)))

(declare-fun b!2994620 () Bool)

(declare-fun tp!951736 () Bool)

(declare-fun tp!951735 () Bool)

(assert (=> b!2994620 (= e!1881955 (and tp!951736 tp!951735))))

(declare-fun b!2994621 () Bool)

(declare-fun e!1881956 () Bool)

(declare-fun e!1881957 () Bool)

(assert (=> b!2994621 (= e!1881956 (not e!1881957))))

(declare-fun res!1235060 () Bool)

(assert (=> b!2994621 (=> res!1235060 e!1881957)))

(declare-fun lt!1041204 () Bool)

(declare-datatypes ((C!18904 0))(
  ( (C!18905 (val!11488 Int)) )
))
(declare-datatypes ((Regex!9359 0))(
  ( (ElementMatch!9359 (c!492369 C!18904)) (Concat!14680 (regOne!19230 Regex!9359) (regTwo!19230 Regex!9359)) (EmptyExpr!9359) (Star!9359 (reg!9688 Regex!9359)) (EmptyLang!9359) (Union!9359 (regOne!19231 Regex!9359) (regTwo!19231 Regex!9359)) )
))
(declare-fun r!17423 () Regex!9359)

(get-info :version)

(assert (=> b!2994621 (= res!1235060 (or lt!1041204 (not ((_ is Concat!14680) r!17423))))))

(declare-datatypes ((List!35224 0))(
  ( (Nil!35100) (Cons!35100 (h!40520 C!18904) (t!234289 List!35224)) )
))
(declare-fun s!11993 () List!35224)

(declare-fun matchRSpec!1496 (Regex!9359 List!35224) Bool)

(assert (=> b!2994621 (= lt!1041204 (matchRSpec!1496 r!17423 s!11993))))

(declare-fun matchR!4241 (Regex!9359 List!35224) Bool)

(assert (=> b!2994621 (= lt!1041204 (matchR!4241 r!17423 s!11993))))

(declare-datatypes ((Unit!49133 0))(
  ( (Unit!49134) )
))
(declare-fun lt!1041205 () Unit!49133)

(declare-fun mainMatchTheorem!1496 (Regex!9359 List!35224) Unit!49133)

(assert (=> b!2994621 (= lt!1041205 (mainMatchTheorem!1496 r!17423 s!11993))))

(declare-fun b!2994622 () Bool)

(declare-fun tp!951732 () Bool)

(declare-fun tp!951733 () Bool)

(assert (=> b!2994622 (= e!1881955 (and tp!951732 tp!951733))))

(declare-fun b!2994623 () Bool)

(declare-fun e!1881953 () Bool)

(assert (=> b!2994623 (= e!1881957 e!1881953)))

(declare-fun res!1235059 () Bool)

(assert (=> b!2994623 (=> res!1235059 e!1881953)))

(declare-fun lt!1041208 () Regex!9359)

(declare-fun isEmptyLang!449 (Regex!9359) Bool)

(assert (=> b!2994623 (= res!1235059 (not (isEmptyLang!449 lt!1041208)))))

(declare-fun lt!1041203 () Regex!9359)

(declare-fun simplify!350 (Regex!9359) Regex!9359)

(assert (=> b!2994623 (= lt!1041203 (simplify!350 (regTwo!19230 r!17423)))))

(assert (=> b!2994623 (= lt!1041208 (simplify!350 (regOne!19230 r!17423)))))

(declare-fun b!2994624 () Bool)

(declare-fun res!1235057 () Bool)

(assert (=> b!2994624 (=> res!1235057 e!1881957)))

(declare-fun isEmpty!19374 (List!35224) Bool)

(assert (=> b!2994624 (= res!1235057 (isEmpty!19374 s!11993))))

(declare-fun b!2994625 () Bool)

(declare-fun lt!1041207 () Bool)

(assert (=> b!2994625 (= e!1881953 (not lt!1041207))))

(assert (=> b!2994625 (= lt!1041207 (matchR!4241 lt!1041208 s!11993))))

(assert (=> b!2994625 (= lt!1041207 (matchR!4241 (regOne!19230 r!17423) s!11993))))

(declare-fun lt!1041206 () Unit!49133)

(declare-fun lemmaSimplifySound!208 (Regex!9359 List!35224) Unit!49133)

(assert (=> b!2994625 (= lt!1041206 (lemmaSimplifySound!208 (regOne!19230 r!17423) s!11993))))

(declare-fun res!1235058 () Bool)

(assert (=> start!289076 (=> (not res!1235058) (not e!1881956))))

(declare-fun validRegex!4092 (Regex!9359) Bool)

(assert (=> start!289076 (= res!1235058 (validRegex!4092 r!17423))))

(assert (=> start!289076 e!1881956))

(assert (=> start!289076 e!1881955))

(declare-fun e!1881954 () Bool)

(assert (=> start!289076 e!1881954))

(declare-fun b!2994626 () Bool)

(declare-fun tp!951737 () Bool)

(assert (=> b!2994626 (= e!1881954 (and tp_is_empty!16281 tp!951737))))

(declare-fun b!2994627 () Bool)

(declare-fun tp!951734 () Bool)

(assert (=> b!2994627 (= e!1881955 tp!951734)))

(assert (= (and start!289076 res!1235058) b!2994621))

(assert (= (and b!2994621 (not res!1235060)) b!2994624))

(assert (= (and b!2994624 (not res!1235057)) b!2994623))

(assert (= (and b!2994623 (not res!1235059)) b!2994625))

(assert (= (and start!289076 ((_ is ElementMatch!9359) r!17423)) b!2994619))

(assert (= (and start!289076 ((_ is Concat!14680) r!17423)) b!2994622))

(assert (= (and start!289076 ((_ is Star!9359) r!17423)) b!2994627))

(assert (= (and start!289076 ((_ is Union!9359) r!17423)) b!2994620))

(assert (= (and start!289076 ((_ is Cons!35100) s!11993)) b!2994626))

(declare-fun m!3349475 () Bool)

(assert (=> b!2994624 m!3349475))

(declare-fun m!3349477 () Bool)

(assert (=> b!2994621 m!3349477))

(declare-fun m!3349479 () Bool)

(assert (=> b!2994621 m!3349479))

(declare-fun m!3349481 () Bool)

(assert (=> b!2994621 m!3349481))

(declare-fun m!3349483 () Bool)

(assert (=> b!2994625 m!3349483))

(declare-fun m!3349485 () Bool)

(assert (=> b!2994625 m!3349485))

(declare-fun m!3349487 () Bool)

(assert (=> b!2994625 m!3349487))

(declare-fun m!3349489 () Bool)

(assert (=> start!289076 m!3349489))

(declare-fun m!3349491 () Bool)

(assert (=> b!2994623 m!3349491))

(declare-fun m!3349493 () Bool)

(assert (=> b!2994623 m!3349493))

(declare-fun m!3349495 () Bool)

(assert (=> b!2994623 m!3349495))

(check-sat (not b!2994620) tp_is_empty!16281 (not start!289076) (not b!2994624) (not b!2994625) (not b!2994627) (not b!2994621) (not b!2994622) (not b!2994626) (not b!2994623))
(check-sat)
(get-model)

(declare-fun d!845325 () Bool)

(declare-fun res!1235091 () Bool)

(declare-fun e!1881989 () Bool)

(assert (=> d!845325 (=> res!1235091 e!1881989)))

(assert (=> d!845325 (= res!1235091 ((_ is ElementMatch!9359) r!17423))))

(assert (=> d!845325 (= (validRegex!4092 r!17423) e!1881989)))

(declare-fun b!2994674 () Bool)

(declare-fun e!1881990 () Bool)

(assert (=> b!2994674 (= e!1881989 e!1881990)))

(declare-fun c!492380 () Bool)

(assert (=> b!2994674 (= c!492380 ((_ is Star!9359) r!17423))))

(declare-fun b!2994675 () Bool)

(declare-fun e!1881988 () Bool)

(declare-fun call!200563 () Bool)

(assert (=> b!2994675 (= e!1881988 call!200563)))

(declare-fun b!2994676 () Bool)

(declare-fun e!1881991 () Bool)

(assert (=> b!2994676 (= e!1881990 e!1881991)))

(declare-fun c!492381 () Bool)

(assert (=> b!2994676 (= c!492381 ((_ is Union!9359) r!17423))))

(declare-fun b!2994677 () Bool)

(declare-fun e!1881986 () Bool)

(declare-fun call!200562 () Bool)

(assert (=> b!2994677 (= e!1881986 call!200562)))

(declare-fun call!200561 () Bool)

(declare-fun bm!200556 () Bool)

(assert (=> bm!200556 (= call!200561 (validRegex!4092 (ite c!492380 (reg!9688 r!17423) (ite c!492381 (regOne!19231 r!17423) (regTwo!19230 r!17423)))))))

(declare-fun bm!200557 () Bool)

(assert (=> bm!200557 (= call!200562 call!200561)))

(declare-fun b!2994678 () Bool)

(declare-fun e!1881987 () Bool)

(assert (=> b!2994678 (= e!1881987 e!1881986)))

(declare-fun res!1235089 () Bool)

(assert (=> b!2994678 (=> (not res!1235089) (not e!1881986))))

(assert (=> b!2994678 (= res!1235089 call!200563)))

(declare-fun b!2994679 () Bool)

(declare-fun res!1235090 () Bool)

(assert (=> b!2994679 (=> res!1235090 e!1881987)))

(assert (=> b!2994679 (= res!1235090 (not ((_ is Concat!14680) r!17423)))))

(assert (=> b!2994679 (= e!1881991 e!1881987)))

(declare-fun b!2994680 () Bool)

(declare-fun e!1881992 () Bool)

(assert (=> b!2994680 (= e!1881990 e!1881992)))

(declare-fun res!1235087 () Bool)

(declare-fun nullable!3022 (Regex!9359) Bool)

(assert (=> b!2994680 (= res!1235087 (not (nullable!3022 (reg!9688 r!17423))))))

(assert (=> b!2994680 (=> (not res!1235087) (not e!1881992))))

(declare-fun b!2994681 () Bool)

(assert (=> b!2994681 (= e!1881992 call!200561)))

(declare-fun bm!200558 () Bool)

(assert (=> bm!200558 (= call!200563 (validRegex!4092 (ite c!492381 (regTwo!19231 r!17423) (regOne!19230 r!17423))))))

(declare-fun b!2994682 () Bool)

(declare-fun res!1235088 () Bool)

(assert (=> b!2994682 (=> (not res!1235088) (not e!1881988))))

(assert (=> b!2994682 (= res!1235088 call!200562)))

(assert (=> b!2994682 (= e!1881991 e!1881988)))

(assert (= (and d!845325 (not res!1235091)) b!2994674))

(assert (= (and b!2994674 c!492380) b!2994680))

(assert (= (and b!2994674 (not c!492380)) b!2994676))

(assert (= (and b!2994680 res!1235087) b!2994681))

(assert (= (and b!2994676 c!492381) b!2994682))

(assert (= (and b!2994676 (not c!492381)) b!2994679))

(assert (= (and b!2994682 res!1235088) b!2994675))

(assert (= (and b!2994679 (not res!1235090)) b!2994678))

(assert (= (and b!2994678 res!1235089) b!2994677))

(assert (= (or b!2994682 b!2994677) bm!200557))

(assert (= (or b!2994675 b!2994678) bm!200558))

(assert (= (or b!2994681 bm!200557) bm!200556))

(declare-fun m!3349497 () Bool)

(assert (=> bm!200556 m!3349497))

(declare-fun m!3349499 () Bool)

(assert (=> b!2994680 m!3349499))

(declare-fun m!3349501 () Bool)

(assert (=> bm!200558 m!3349501))

(assert (=> start!289076 d!845325))

(declare-fun b!2994854 () Bool)

(assert (=> b!2994854 true))

(assert (=> b!2994854 true))

(declare-fun bs!528065 () Bool)

(declare-fun b!2994863 () Bool)

(assert (= bs!528065 (and b!2994863 b!2994854)))

(declare-fun lambda!112018 () Int)

(declare-fun lambda!112017 () Int)

(assert (=> bs!528065 (not (= lambda!112018 lambda!112017))))

(assert (=> b!2994863 true))

(assert (=> b!2994863 true))

(declare-fun e!1882086 () Bool)

(declare-fun call!200594 () Bool)

(assert (=> b!2994854 (= e!1882086 call!200594)))

(declare-fun b!2994855 () Bool)

(declare-fun e!1882087 () Bool)

(assert (=> b!2994855 (= e!1882087 (matchRSpec!1496 (regTwo!19231 r!17423) s!11993))))

(declare-fun b!2994856 () Bool)

(declare-fun e!1882089 () Bool)

(declare-fun e!1882088 () Bool)

(assert (=> b!2994856 (= e!1882089 e!1882088)))

(declare-fun res!1235158 () Bool)

(assert (=> b!2994856 (= res!1235158 (not ((_ is EmptyLang!9359) r!17423)))))

(assert (=> b!2994856 (=> (not res!1235158) (not e!1882088))))

(declare-fun b!2994857 () Bool)

(declare-fun c!492433 () Bool)

(assert (=> b!2994857 (= c!492433 ((_ is ElementMatch!9359) r!17423))))

(declare-fun e!1882091 () Bool)

(assert (=> b!2994857 (= e!1882088 e!1882091)))

(declare-fun d!845327 () Bool)

(declare-fun c!492436 () Bool)

(assert (=> d!845327 (= c!492436 ((_ is EmptyExpr!9359) r!17423))))

(assert (=> d!845327 (= (matchRSpec!1496 r!17423 s!11993) e!1882089)))

(declare-fun b!2994858 () Bool)

(declare-fun e!1882085 () Bool)

(assert (=> b!2994858 (= e!1882085 e!1882087)))

(declare-fun res!1235157 () Bool)

(assert (=> b!2994858 (= res!1235157 (matchRSpec!1496 (regOne!19231 r!17423) s!11993))))

(assert (=> b!2994858 (=> res!1235157 e!1882087)))

(declare-fun b!2994859 () Bool)

(declare-fun res!1235159 () Bool)

(assert (=> b!2994859 (=> res!1235159 e!1882086)))

(declare-fun call!200593 () Bool)

(assert (=> b!2994859 (= res!1235159 call!200593)))

(declare-fun e!1882090 () Bool)

(assert (=> b!2994859 (= e!1882090 e!1882086)))

(declare-fun b!2994860 () Bool)

(assert (=> b!2994860 (= e!1882085 e!1882090)))

(declare-fun c!492435 () Bool)

(assert (=> b!2994860 (= c!492435 ((_ is Star!9359) r!17423))))

(declare-fun bm!200588 () Bool)

(declare-fun Exists!1632 (Int) Bool)

(assert (=> bm!200588 (= call!200594 (Exists!1632 (ite c!492435 lambda!112017 lambda!112018)))))

(declare-fun b!2994861 () Bool)

(assert (=> b!2994861 (= e!1882089 call!200593)))

(declare-fun b!2994862 () Bool)

(assert (=> b!2994862 (= e!1882091 (= s!11993 (Cons!35100 (c!492369 r!17423) Nil!35100)))))

(assert (=> b!2994863 (= e!1882090 call!200594)))

(declare-fun bm!200589 () Bool)

(assert (=> bm!200589 (= call!200593 (isEmpty!19374 s!11993))))

(declare-fun b!2994864 () Bool)

(declare-fun c!492434 () Bool)

(assert (=> b!2994864 (= c!492434 ((_ is Union!9359) r!17423))))

(assert (=> b!2994864 (= e!1882091 e!1882085)))

(assert (= (and d!845327 c!492436) b!2994861))

(assert (= (and d!845327 (not c!492436)) b!2994856))

(assert (= (and b!2994856 res!1235158) b!2994857))

(assert (= (and b!2994857 c!492433) b!2994862))

(assert (= (and b!2994857 (not c!492433)) b!2994864))

(assert (= (and b!2994864 c!492434) b!2994858))

(assert (= (and b!2994864 (not c!492434)) b!2994860))

(assert (= (and b!2994858 (not res!1235157)) b!2994855))

(assert (= (and b!2994860 c!492435) b!2994859))

(assert (= (and b!2994860 (not c!492435)) b!2994863))

(assert (= (and b!2994859 (not res!1235159)) b!2994854))

(assert (= (or b!2994854 b!2994863) bm!200588))

(assert (= (or b!2994861 b!2994859) bm!200589))

(declare-fun m!3349543 () Bool)

(assert (=> b!2994855 m!3349543))

(declare-fun m!3349545 () Bool)

(assert (=> b!2994858 m!3349545))

(declare-fun m!3349547 () Bool)

(assert (=> bm!200588 m!3349547))

(assert (=> bm!200589 m!3349475))

(assert (=> b!2994621 d!845327))

(declare-fun b!2994992 () Bool)

(declare-fun res!1235202 () Bool)

(declare-fun e!1882160 () Bool)

(assert (=> b!2994992 (=> res!1235202 e!1882160)))

(assert (=> b!2994992 (= res!1235202 (not ((_ is ElementMatch!9359) r!17423)))))

(declare-fun e!1882159 () Bool)

(assert (=> b!2994992 (= e!1882159 e!1882160)))

(declare-fun b!2994993 () Bool)

(declare-fun e!1882165 () Bool)

(assert (=> b!2994993 (= e!1882165 (nullable!3022 r!17423))))

(declare-fun b!2994994 () Bool)

(declare-fun res!1235203 () Bool)

(declare-fun e!1882164 () Bool)

(assert (=> b!2994994 (=> (not res!1235203) (not e!1882164))))

(declare-fun tail!4905 (List!35224) List!35224)

(assert (=> b!2994994 (= res!1235203 (isEmpty!19374 (tail!4905 s!11993)))))

(declare-fun bm!200615 () Bool)

(declare-fun call!200620 () Bool)

(assert (=> bm!200615 (= call!200620 (isEmpty!19374 s!11993))))

(declare-fun b!2994995 () Bool)

(declare-fun e!1882161 () Bool)

(declare-fun head!6679 (List!35224) C!18904)

(assert (=> b!2994995 (= e!1882161 (not (= (head!6679 s!11993) (c!492369 r!17423))))))

(declare-fun b!2994997 () Bool)

(declare-fun e!1882163 () Bool)

(assert (=> b!2994997 (= e!1882163 e!1882159)))

(declare-fun c!492471 () Bool)

(assert (=> b!2994997 (= c!492471 ((_ is EmptyLang!9359) r!17423))))

(declare-fun b!2994998 () Bool)

(declare-fun e!1882162 () Bool)

(assert (=> b!2994998 (= e!1882160 e!1882162)))

(declare-fun res!1235198 () Bool)

(assert (=> b!2994998 (=> (not res!1235198) (not e!1882162))))

(declare-fun lt!1041246 () Bool)

(assert (=> b!2994998 (= res!1235198 (not lt!1041246))))

(declare-fun b!2994999 () Bool)

(assert (=> b!2994999 (= e!1882163 (= lt!1041246 call!200620))))

(declare-fun b!2995000 () Bool)

(declare-fun res!1235199 () Bool)

(assert (=> b!2995000 (=> res!1235199 e!1882161)))

(assert (=> b!2995000 (= res!1235199 (not (isEmpty!19374 (tail!4905 s!11993))))))

(declare-fun b!2995001 () Bool)

(declare-fun res!1235201 () Bool)

(assert (=> b!2995001 (=> res!1235201 e!1882160)))

(assert (=> b!2995001 (= res!1235201 e!1882164)))

(declare-fun res!1235204 () Bool)

(assert (=> b!2995001 (=> (not res!1235204) (not e!1882164))))

(assert (=> b!2995001 (= res!1235204 lt!1041246)))

(declare-fun d!845343 () Bool)

(assert (=> d!845343 e!1882163))

(declare-fun c!492473 () Bool)

(assert (=> d!845343 (= c!492473 ((_ is EmptyExpr!9359) r!17423))))

(assert (=> d!845343 (= lt!1041246 e!1882165)))

(declare-fun c!492472 () Bool)

(assert (=> d!845343 (= c!492472 (isEmpty!19374 s!11993))))

(assert (=> d!845343 (validRegex!4092 r!17423)))

(assert (=> d!845343 (= (matchR!4241 r!17423 s!11993) lt!1041246)))

(declare-fun b!2994996 () Bool)

(assert (=> b!2994996 (= e!1882162 e!1882161)))

(declare-fun res!1235197 () Bool)

(assert (=> b!2994996 (=> res!1235197 e!1882161)))

(assert (=> b!2994996 (= res!1235197 call!200620)))

(declare-fun b!2995002 () Bool)

(assert (=> b!2995002 (= e!1882159 (not lt!1041246))))

(declare-fun b!2995003 () Bool)

(assert (=> b!2995003 (= e!1882164 (= (head!6679 s!11993) (c!492369 r!17423)))))

(declare-fun b!2995004 () Bool)

(declare-fun derivativeStep!2620 (Regex!9359 C!18904) Regex!9359)

(assert (=> b!2995004 (= e!1882165 (matchR!4241 (derivativeStep!2620 r!17423 (head!6679 s!11993)) (tail!4905 s!11993)))))

(declare-fun b!2995005 () Bool)

(declare-fun res!1235200 () Bool)

(assert (=> b!2995005 (=> (not res!1235200) (not e!1882164))))

(assert (=> b!2995005 (= res!1235200 (not call!200620))))

(assert (= (and d!845343 c!492472) b!2994993))

(assert (= (and d!845343 (not c!492472)) b!2995004))

(assert (= (and d!845343 c!492473) b!2994999))

(assert (= (and d!845343 (not c!492473)) b!2994997))

(assert (= (and b!2994997 c!492471) b!2995002))

(assert (= (and b!2994997 (not c!492471)) b!2994992))

(assert (= (and b!2994992 (not res!1235202)) b!2995001))

(assert (= (and b!2995001 res!1235204) b!2995005))

(assert (= (and b!2995005 res!1235200) b!2994994))

(assert (= (and b!2994994 res!1235203) b!2995003))

(assert (= (and b!2995001 (not res!1235201)) b!2994998))

(assert (= (and b!2994998 res!1235198) b!2994996))

(assert (= (and b!2994996 (not res!1235197)) b!2995000))

(assert (= (and b!2995000 (not res!1235199)) b!2994995))

(assert (= (or b!2994999 b!2994996 b!2995005) bm!200615))

(assert (=> bm!200615 m!3349475))

(declare-fun m!3349591 () Bool)

(assert (=> b!2995000 m!3349591))

(assert (=> b!2995000 m!3349591))

(declare-fun m!3349593 () Bool)

(assert (=> b!2995000 m!3349593))

(declare-fun m!3349595 () Bool)

(assert (=> b!2994995 m!3349595))

(assert (=> b!2995003 m!3349595))

(assert (=> b!2994994 m!3349591))

(assert (=> b!2994994 m!3349591))

(assert (=> b!2994994 m!3349593))

(assert (=> d!845343 m!3349475))

(assert (=> d!845343 m!3349489))

(assert (=> b!2995004 m!3349595))

(assert (=> b!2995004 m!3349595))

(declare-fun m!3349597 () Bool)

(assert (=> b!2995004 m!3349597))

(assert (=> b!2995004 m!3349591))

(assert (=> b!2995004 m!3349597))

(assert (=> b!2995004 m!3349591))

(declare-fun m!3349599 () Bool)

(assert (=> b!2995004 m!3349599))

(declare-fun m!3349601 () Bool)

(assert (=> b!2994993 m!3349601))

(assert (=> b!2994621 d!845343))

(declare-fun d!845351 () Bool)

(assert (=> d!845351 (= (matchR!4241 r!17423 s!11993) (matchRSpec!1496 r!17423 s!11993))))

(declare-fun lt!1041249 () Unit!49133)

(declare-fun choose!17777 (Regex!9359 List!35224) Unit!49133)

(assert (=> d!845351 (= lt!1041249 (choose!17777 r!17423 s!11993))))

(assert (=> d!845351 (validRegex!4092 r!17423)))

(assert (=> d!845351 (= (mainMatchTheorem!1496 r!17423 s!11993) lt!1041249)))

(declare-fun bs!528066 () Bool)

(assert (= bs!528066 d!845351))

(assert (=> bs!528066 m!3349479))

(assert (=> bs!528066 m!3349477))

(declare-fun m!3349603 () Bool)

(assert (=> bs!528066 m!3349603))

(assert (=> bs!528066 m!3349489))

(assert (=> b!2994621 d!845351))

(declare-fun d!845353 () Bool)

(assert (=> d!845353 (= (isEmpty!19374 s!11993) ((_ is Nil!35100) s!11993))))

(assert (=> b!2994624 d!845353))

(declare-fun b!2995023 () Bool)

(declare-fun res!1235210 () Bool)

(declare-fun e!1882173 () Bool)

(assert (=> b!2995023 (=> res!1235210 e!1882173)))

(assert (=> b!2995023 (= res!1235210 (not ((_ is ElementMatch!9359) lt!1041208)))))

(declare-fun e!1882172 () Bool)

(assert (=> b!2995023 (= e!1882172 e!1882173)))

(declare-fun b!2995024 () Bool)

(declare-fun e!1882178 () Bool)

(assert (=> b!2995024 (= e!1882178 (nullable!3022 lt!1041208))))

(declare-fun b!2995025 () Bool)

(declare-fun res!1235211 () Bool)

(declare-fun e!1882177 () Bool)

(assert (=> b!2995025 (=> (not res!1235211) (not e!1882177))))

(assert (=> b!2995025 (= res!1235211 (isEmpty!19374 (tail!4905 s!11993)))))

(declare-fun bm!200616 () Bool)

(declare-fun call!200621 () Bool)

(assert (=> bm!200616 (= call!200621 (isEmpty!19374 s!11993))))

(declare-fun b!2995026 () Bool)

(declare-fun e!1882174 () Bool)

(assert (=> b!2995026 (= e!1882174 (not (= (head!6679 s!11993) (c!492369 lt!1041208))))))

(declare-fun b!2995028 () Bool)

(declare-fun e!1882176 () Bool)

(assert (=> b!2995028 (= e!1882176 e!1882172)))

(declare-fun c!492474 () Bool)

(assert (=> b!2995028 (= c!492474 ((_ is EmptyLang!9359) lt!1041208))))

(declare-fun b!2995029 () Bool)

(declare-fun e!1882175 () Bool)

(assert (=> b!2995029 (= e!1882173 e!1882175)))

(declare-fun res!1235206 () Bool)

(assert (=> b!2995029 (=> (not res!1235206) (not e!1882175))))

(declare-fun lt!1041250 () Bool)

(assert (=> b!2995029 (= res!1235206 (not lt!1041250))))

(declare-fun b!2995030 () Bool)

(assert (=> b!2995030 (= e!1882176 (= lt!1041250 call!200621))))

(declare-fun b!2995031 () Bool)

(declare-fun res!1235207 () Bool)

(assert (=> b!2995031 (=> res!1235207 e!1882174)))

(assert (=> b!2995031 (= res!1235207 (not (isEmpty!19374 (tail!4905 s!11993))))))

(declare-fun b!2995032 () Bool)

(declare-fun res!1235209 () Bool)

(assert (=> b!2995032 (=> res!1235209 e!1882173)))

(assert (=> b!2995032 (= res!1235209 e!1882177)))

(declare-fun res!1235212 () Bool)

(assert (=> b!2995032 (=> (not res!1235212) (not e!1882177))))

(assert (=> b!2995032 (= res!1235212 lt!1041250)))

(declare-fun d!845355 () Bool)

(assert (=> d!845355 e!1882176))

(declare-fun c!492476 () Bool)

(assert (=> d!845355 (= c!492476 ((_ is EmptyExpr!9359) lt!1041208))))

(assert (=> d!845355 (= lt!1041250 e!1882178)))

(declare-fun c!492475 () Bool)

(assert (=> d!845355 (= c!492475 (isEmpty!19374 s!11993))))

(assert (=> d!845355 (validRegex!4092 lt!1041208)))

(assert (=> d!845355 (= (matchR!4241 lt!1041208 s!11993) lt!1041250)))

(declare-fun b!2995027 () Bool)

(assert (=> b!2995027 (= e!1882175 e!1882174)))

(declare-fun res!1235205 () Bool)

(assert (=> b!2995027 (=> res!1235205 e!1882174)))

(assert (=> b!2995027 (= res!1235205 call!200621)))

(declare-fun b!2995033 () Bool)

(assert (=> b!2995033 (= e!1882172 (not lt!1041250))))

(declare-fun b!2995034 () Bool)

(assert (=> b!2995034 (= e!1882177 (= (head!6679 s!11993) (c!492369 lt!1041208)))))

(declare-fun b!2995035 () Bool)

(assert (=> b!2995035 (= e!1882178 (matchR!4241 (derivativeStep!2620 lt!1041208 (head!6679 s!11993)) (tail!4905 s!11993)))))

(declare-fun b!2995036 () Bool)

(declare-fun res!1235208 () Bool)

(assert (=> b!2995036 (=> (not res!1235208) (not e!1882177))))

(assert (=> b!2995036 (= res!1235208 (not call!200621))))

(assert (= (and d!845355 c!492475) b!2995024))

(assert (= (and d!845355 (not c!492475)) b!2995035))

(assert (= (and d!845355 c!492476) b!2995030))

(assert (= (and d!845355 (not c!492476)) b!2995028))

(assert (= (and b!2995028 c!492474) b!2995033))

(assert (= (and b!2995028 (not c!492474)) b!2995023))

(assert (= (and b!2995023 (not res!1235210)) b!2995032))

(assert (= (and b!2995032 res!1235212) b!2995036))

(assert (= (and b!2995036 res!1235208) b!2995025))

(assert (= (and b!2995025 res!1235211) b!2995034))

(assert (= (and b!2995032 (not res!1235209)) b!2995029))

(assert (= (and b!2995029 res!1235206) b!2995027))

(assert (= (and b!2995027 (not res!1235205)) b!2995031))

(assert (= (and b!2995031 (not res!1235207)) b!2995026))

(assert (= (or b!2995030 b!2995027 b!2995036) bm!200616))

(assert (=> bm!200616 m!3349475))

(assert (=> b!2995031 m!3349591))

(assert (=> b!2995031 m!3349591))

(assert (=> b!2995031 m!3349593))

(assert (=> b!2995026 m!3349595))

(assert (=> b!2995034 m!3349595))

(assert (=> b!2995025 m!3349591))

(assert (=> b!2995025 m!3349591))

(assert (=> b!2995025 m!3349593))

(assert (=> d!845355 m!3349475))

(declare-fun m!3349605 () Bool)

(assert (=> d!845355 m!3349605))

(assert (=> b!2995035 m!3349595))

(assert (=> b!2995035 m!3349595))

(declare-fun m!3349607 () Bool)

(assert (=> b!2995035 m!3349607))

(assert (=> b!2995035 m!3349591))

(assert (=> b!2995035 m!3349607))

(assert (=> b!2995035 m!3349591))

(declare-fun m!3349609 () Bool)

(assert (=> b!2995035 m!3349609))

(declare-fun m!3349611 () Bool)

(assert (=> b!2995024 m!3349611))

(assert (=> b!2994625 d!845355))

(declare-fun b!2995037 () Bool)

(declare-fun res!1235218 () Bool)

(declare-fun e!1882180 () Bool)

(assert (=> b!2995037 (=> res!1235218 e!1882180)))

(assert (=> b!2995037 (= res!1235218 (not ((_ is ElementMatch!9359) (regOne!19230 r!17423))))))

(declare-fun e!1882179 () Bool)

(assert (=> b!2995037 (= e!1882179 e!1882180)))

(declare-fun b!2995038 () Bool)

(declare-fun e!1882185 () Bool)

(assert (=> b!2995038 (= e!1882185 (nullable!3022 (regOne!19230 r!17423)))))

(declare-fun b!2995039 () Bool)

(declare-fun res!1235219 () Bool)

(declare-fun e!1882184 () Bool)

(assert (=> b!2995039 (=> (not res!1235219) (not e!1882184))))

(assert (=> b!2995039 (= res!1235219 (isEmpty!19374 (tail!4905 s!11993)))))

(declare-fun bm!200617 () Bool)

(declare-fun call!200622 () Bool)

(assert (=> bm!200617 (= call!200622 (isEmpty!19374 s!11993))))

(declare-fun b!2995040 () Bool)

(declare-fun e!1882181 () Bool)

(assert (=> b!2995040 (= e!1882181 (not (= (head!6679 s!11993) (c!492369 (regOne!19230 r!17423)))))))

(declare-fun b!2995042 () Bool)

(declare-fun e!1882183 () Bool)

(assert (=> b!2995042 (= e!1882183 e!1882179)))

(declare-fun c!492477 () Bool)

(assert (=> b!2995042 (= c!492477 ((_ is EmptyLang!9359) (regOne!19230 r!17423)))))

(declare-fun b!2995043 () Bool)

(declare-fun e!1882182 () Bool)

(assert (=> b!2995043 (= e!1882180 e!1882182)))

(declare-fun res!1235214 () Bool)

(assert (=> b!2995043 (=> (not res!1235214) (not e!1882182))))

(declare-fun lt!1041251 () Bool)

(assert (=> b!2995043 (= res!1235214 (not lt!1041251))))

(declare-fun b!2995044 () Bool)

(assert (=> b!2995044 (= e!1882183 (= lt!1041251 call!200622))))

(declare-fun b!2995045 () Bool)

(declare-fun res!1235215 () Bool)

(assert (=> b!2995045 (=> res!1235215 e!1882181)))

(assert (=> b!2995045 (= res!1235215 (not (isEmpty!19374 (tail!4905 s!11993))))))

(declare-fun b!2995046 () Bool)

(declare-fun res!1235217 () Bool)

(assert (=> b!2995046 (=> res!1235217 e!1882180)))

(assert (=> b!2995046 (= res!1235217 e!1882184)))

(declare-fun res!1235220 () Bool)

(assert (=> b!2995046 (=> (not res!1235220) (not e!1882184))))

(assert (=> b!2995046 (= res!1235220 lt!1041251)))

(declare-fun d!845357 () Bool)

(assert (=> d!845357 e!1882183))

(declare-fun c!492479 () Bool)

(assert (=> d!845357 (= c!492479 ((_ is EmptyExpr!9359) (regOne!19230 r!17423)))))

(assert (=> d!845357 (= lt!1041251 e!1882185)))

(declare-fun c!492478 () Bool)

(assert (=> d!845357 (= c!492478 (isEmpty!19374 s!11993))))

(assert (=> d!845357 (validRegex!4092 (regOne!19230 r!17423))))

(assert (=> d!845357 (= (matchR!4241 (regOne!19230 r!17423) s!11993) lt!1041251)))

(declare-fun b!2995041 () Bool)

(assert (=> b!2995041 (= e!1882182 e!1882181)))

(declare-fun res!1235213 () Bool)

(assert (=> b!2995041 (=> res!1235213 e!1882181)))

(assert (=> b!2995041 (= res!1235213 call!200622)))

(declare-fun b!2995047 () Bool)

(assert (=> b!2995047 (= e!1882179 (not lt!1041251))))

(declare-fun b!2995048 () Bool)

(assert (=> b!2995048 (= e!1882184 (= (head!6679 s!11993) (c!492369 (regOne!19230 r!17423))))))

(declare-fun b!2995049 () Bool)

(assert (=> b!2995049 (= e!1882185 (matchR!4241 (derivativeStep!2620 (regOne!19230 r!17423) (head!6679 s!11993)) (tail!4905 s!11993)))))

(declare-fun b!2995050 () Bool)

(declare-fun res!1235216 () Bool)

(assert (=> b!2995050 (=> (not res!1235216) (not e!1882184))))

(assert (=> b!2995050 (= res!1235216 (not call!200622))))

(assert (= (and d!845357 c!492478) b!2995038))

(assert (= (and d!845357 (not c!492478)) b!2995049))

(assert (= (and d!845357 c!492479) b!2995044))

(assert (= (and d!845357 (not c!492479)) b!2995042))

(assert (= (and b!2995042 c!492477) b!2995047))

(assert (= (and b!2995042 (not c!492477)) b!2995037))

(assert (= (and b!2995037 (not res!1235218)) b!2995046))

(assert (= (and b!2995046 res!1235220) b!2995050))

(assert (= (and b!2995050 res!1235216) b!2995039))

(assert (= (and b!2995039 res!1235219) b!2995048))

(assert (= (and b!2995046 (not res!1235217)) b!2995043))

(assert (= (and b!2995043 res!1235214) b!2995041))

(assert (= (and b!2995041 (not res!1235213)) b!2995045))

(assert (= (and b!2995045 (not res!1235215)) b!2995040))

(assert (= (or b!2995044 b!2995041 b!2995050) bm!200617))

(assert (=> bm!200617 m!3349475))

(assert (=> b!2995045 m!3349591))

(assert (=> b!2995045 m!3349591))

(assert (=> b!2995045 m!3349593))

(assert (=> b!2995040 m!3349595))

(assert (=> b!2995048 m!3349595))

(assert (=> b!2995039 m!3349591))

(assert (=> b!2995039 m!3349591))

(assert (=> b!2995039 m!3349593))

(assert (=> d!845357 m!3349475))

(declare-fun m!3349613 () Bool)

(assert (=> d!845357 m!3349613))

(assert (=> b!2995049 m!3349595))

(assert (=> b!2995049 m!3349595))

(declare-fun m!3349615 () Bool)

(assert (=> b!2995049 m!3349615))

(assert (=> b!2995049 m!3349591))

(assert (=> b!2995049 m!3349615))

(assert (=> b!2995049 m!3349591))

(declare-fun m!3349617 () Bool)

(assert (=> b!2995049 m!3349617))

(declare-fun m!3349619 () Bool)

(assert (=> b!2995038 m!3349619))

(assert (=> b!2994625 d!845357))

(declare-fun d!845359 () Bool)

(assert (=> d!845359 (= (matchR!4241 (regOne!19230 r!17423) s!11993) (matchR!4241 (simplify!350 (regOne!19230 r!17423)) s!11993))))

(declare-fun lt!1041254 () Unit!49133)

(declare-fun choose!17778 (Regex!9359 List!35224) Unit!49133)

(assert (=> d!845359 (= lt!1041254 (choose!17778 (regOne!19230 r!17423) s!11993))))

(assert (=> d!845359 (validRegex!4092 (regOne!19230 r!17423))))

(assert (=> d!845359 (= (lemmaSimplifySound!208 (regOne!19230 r!17423) s!11993) lt!1041254)))

(declare-fun bs!528067 () Bool)

(assert (= bs!528067 d!845359))

(assert (=> bs!528067 m!3349495))

(declare-fun m!3349621 () Bool)

(assert (=> bs!528067 m!3349621))

(assert (=> bs!528067 m!3349613))

(assert (=> bs!528067 m!3349495))

(assert (=> bs!528067 m!3349485))

(declare-fun m!3349623 () Bool)

(assert (=> bs!528067 m!3349623))

(assert (=> b!2994625 d!845359))

(declare-fun d!845361 () Bool)

(assert (=> d!845361 (= (isEmptyLang!449 lt!1041208) ((_ is EmptyLang!9359) lt!1041208))))

(assert (=> b!2994623 d!845361))

(declare-fun b!2995101 () Bool)

(declare-fun c!492506 () Bool)

(declare-fun e!1882214 () Bool)

(assert (=> b!2995101 (= c!492506 e!1882214)))

(declare-fun res!1235227 () Bool)

(assert (=> b!2995101 (=> res!1235227 e!1882214)))

(declare-fun call!200638 () Bool)

(assert (=> b!2995101 (= res!1235227 call!200638)))

(declare-fun lt!1041270 () Regex!9359)

(declare-fun call!200642 () Regex!9359)

(assert (=> b!2995101 (= lt!1041270 call!200642)))

(declare-fun e!1882218 () Regex!9359)

(declare-fun e!1882217 () Regex!9359)

(assert (=> b!2995101 (= e!1882218 e!1882217)))

(declare-fun bm!200632 () Bool)

(declare-fun call!200641 () Bool)

(assert (=> bm!200632 (= call!200641 call!200638)))

(declare-fun b!2995102 () Bool)

(declare-fun e!1882224 () Regex!9359)

(declare-fun lt!1041271 () Regex!9359)

(declare-fun lt!1041267 () Regex!9359)

(assert (=> b!2995102 (= e!1882224 (Concat!14680 lt!1041271 lt!1041267))))

(declare-fun b!2995103 () Bool)

(declare-fun c!492509 () Bool)

(declare-fun call!200637 () Bool)

(assert (=> b!2995103 (= c!492509 call!200637)))

(declare-fun e!1882220 () Regex!9359)

(declare-fun e!1882222 () Regex!9359)

(assert (=> b!2995103 (= e!1882220 e!1882222)))

(declare-fun b!2995104 () Bool)

(declare-fun c!492511 () Bool)

(assert (=> b!2995104 (= c!492511 ((_ is Union!9359) (regTwo!19230 r!17423)))))

(declare-fun e!1882219 () Regex!9359)

(assert (=> b!2995104 (= e!1882218 e!1882219)))

(declare-fun d!845363 () Bool)

(declare-fun e!1882216 () Bool)

(assert (=> d!845363 e!1882216))

(declare-fun res!1235228 () Bool)

(assert (=> d!845363 (=> (not res!1235228) (not e!1882216))))

(declare-fun lt!1041269 () Regex!9359)

(assert (=> d!845363 (= res!1235228 (validRegex!4092 lt!1041269))))

(declare-fun e!1882227 () Regex!9359)

(assert (=> d!845363 (= lt!1041269 e!1882227)))

(declare-fun c!492505 () Bool)

(assert (=> d!845363 (= c!492505 ((_ is EmptyLang!9359) (regTwo!19230 r!17423)))))

(assert (=> d!845363 (validRegex!4092 (regTwo!19230 r!17423))))

(assert (=> d!845363 (= (simplify!350 (regTwo!19230 r!17423)) lt!1041269)))

(declare-fun b!2995105 () Bool)

(declare-fun e!1882225 () Regex!9359)

(assert (=> b!2995105 (= e!1882227 e!1882225)))

(declare-fun c!492510 () Bool)

(assert (=> b!2995105 (= c!492510 ((_ is ElementMatch!9359) (regTwo!19230 r!17423)))))

(declare-fun bm!200633 () Bool)

(declare-fun lt!1041272 () Regex!9359)

(assert (=> bm!200633 (= call!200637 (isEmptyLang!449 (ite c!492511 lt!1041272 lt!1041267)))))

(declare-fun b!2995106 () Bool)

(declare-fun e!1882215 () Bool)

(assert (=> b!2995106 (= e!1882215 call!200637)))

(declare-fun b!2995107 () Bool)

(assert (=> b!2995107 (= e!1882227 EmptyLang!9359)))

(declare-fun b!2995108 () Bool)

(declare-fun c!492508 () Bool)

(declare-fun call!200639 () Bool)

(assert (=> b!2995108 (= c!492508 call!200639)))

(declare-fun e!1882221 () Regex!9359)

(declare-fun e!1882226 () Regex!9359)

(assert (=> b!2995108 (= e!1882221 e!1882226)))

(declare-fun b!2995109 () Bool)

(assert (=> b!2995109 (= e!1882224 lt!1041271)))

(declare-fun b!2995110 () Bool)

(assert (=> b!2995110 (= e!1882217 EmptyExpr!9359)))

(declare-fun bm!200634 () Bool)

(declare-fun c!492503 () Bool)

(declare-fun isEmptyExpr!466 (Regex!9359) Bool)

(assert (=> bm!200634 (= call!200639 (isEmptyExpr!466 (ite c!492503 lt!1041270 lt!1041271)))))

(declare-fun b!2995111 () Bool)

(assert (=> b!2995111 (= e!1882216 (= (nullable!3022 lt!1041269) (nullable!3022 (regTwo!19230 r!17423))))))

(declare-fun b!2995112 () Bool)

(assert (=> b!2995112 (= e!1882226 lt!1041267)))

(declare-fun bm!200635 () Bool)

(declare-fun call!200643 () Regex!9359)

(assert (=> bm!200635 (= call!200643 call!200642)))

(declare-fun b!2995113 () Bool)

(declare-fun lt!1041268 () Regex!9359)

(assert (=> b!2995113 (= e!1882222 lt!1041268)))

(declare-fun b!2995114 () Bool)

(assert (=> b!2995114 (= e!1882221 EmptyLang!9359)))

(declare-fun b!2995115 () Bool)

(assert (=> b!2995115 (= e!1882222 (Union!9359 lt!1041268 lt!1041272))))

(declare-fun b!2995116 () Bool)

(declare-fun c!492507 () Bool)

(assert (=> b!2995116 (= c!492507 ((_ is EmptyExpr!9359) (regTwo!19230 r!17423)))))

(declare-fun e!1882223 () Regex!9359)

(assert (=> b!2995116 (= e!1882225 e!1882223)))

(declare-fun b!2995117 () Bool)

(assert (=> b!2995117 (= e!1882226 e!1882224)))

(declare-fun c!492502 () Bool)

(assert (=> b!2995117 (= c!492502 (isEmptyExpr!466 lt!1041267))))

(declare-fun bm!200636 () Bool)

(assert (=> bm!200636 (= call!200642 (simplify!350 (ite c!492503 (reg!9688 (regTwo!19230 r!17423)) (ite c!492511 (regOne!19231 (regTwo!19230 r!17423)) (regTwo!19230 (regTwo!19230 r!17423))))))))

(declare-fun b!2995118 () Bool)

(assert (=> b!2995118 (= e!1882214 call!200639)))

(declare-fun b!2995119 () Bool)

(assert (=> b!2995119 (= e!1882219 e!1882221)))

(declare-fun call!200640 () Regex!9359)

(assert (=> b!2995119 (= lt!1041271 call!200640)))

(assert (=> b!2995119 (= lt!1041267 call!200643)))

(declare-fun res!1235229 () Bool)

(assert (=> b!2995119 (= res!1235229 call!200641)))

(assert (=> b!2995119 (=> res!1235229 e!1882215)))

(declare-fun c!492504 () Bool)

(assert (=> b!2995119 (= c!492504 e!1882215)))

(declare-fun bm!200637 () Bool)

(assert (=> bm!200637 (= call!200640 (simplify!350 (ite c!492511 (regTwo!19231 (regTwo!19230 r!17423)) (regOne!19230 (regTwo!19230 r!17423)))))))

(declare-fun b!2995120 () Bool)

(assert (=> b!2995120 (= e!1882219 e!1882220)))

(assert (=> b!2995120 (= lt!1041268 call!200643)))

(assert (=> b!2995120 (= lt!1041272 call!200640)))

(declare-fun c!492512 () Bool)

(assert (=> b!2995120 (= c!492512 call!200641)))

(declare-fun b!2995121 () Bool)

(assert (=> b!2995121 (= e!1882217 (Star!9359 lt!1041270))))

(declare-fun bm!200638 () Bool)

(assert (=> bm!200638 (= call!200638 (isEmptyLang!449 (ite c!492503 lt!1041270 (ite c!492511 lt!1041268 lt!1041271))))))

(declare-fun b!2995122 () Bool)

(assert (=> b!2995122 (= e!1882223 e!1882218)))

(assert (=> b!2995122 (= c!492503 ((_ is Star!9359) (regTwo!19230 r!17423)))))

(declare-fun b!2995123 () Bool)

(assert (=> b!2995123 (= e!1882223 EmptyExpr!9359)))

(declare-fun b!2995124 () Bool)

(assert (=> b!2995124 (= e!1882225 (regTwo!19230 r!17423))))

(declare-fun b!2995125 () Bool)

(assert (=> b!2995125 (= e!1882220 lt!1041272)))

(assert (= (and d!845363 c!492505) b!2995107))

(assert (= (and d!845363 (not c!492505)) b!2995105))

(assert (= (and b!2995105 c!492510) b!2995124))

(assert (= (and b!2995105 (not c!492510)) b!2995116))

(assert (= (and b!2995116 c!492507) b!2995123))

(assert (= (and b!2995116 (not c!492507)) b!2995122))

(assert (= (and b!2995122 c!492503) b!2995101))

(assert (= (and b!2995122 (not c!492503)) b!2995104))

(assert (= (and b!2995101 (not res!1235227)) b!2995118))

(assert (= (and b!2995101 c!492506) b!2995110))

(assert (= (and b!2995101 (not c!492506)) b!2995121))

(assert (= (and b!2995104 c!492511) b!2995120))

(assert (= (and b!2995104 (not c!492511)) b!2995119))

(assert (= (and b!2995120 c!492512) b!2995125))

(assert (= (and b!2995120 (not c!492512)) b!2995103))

(assert (= (and b!2995103 c!492509) b!2995113))

(assert (= (and b!2995103 (not c!492509)) b!2995115))

(assert (= (and b!2995119 (not res!1235229)) b!2995106))

(assert (= (and b!2995119 c!492504) b!2995114))

(assert (= (and b!2995119 (not c!492504)) b!2995108))

(assert (= (and b!2995108 c!492508) b!2995112))

(assert (= (and b!2995108 (not c!492508)) b!2995117))

(assert (= (and b!2995117 c!492502) b!2995109))

(assert (= (and b!2995117 (not c!492502)) b!2995102))

(assert (= (or b!2995120 b!2995119) bm!200635))

(assert (= (or b!2995120 b!2995119) bm!200637))

(assert (= (or b!2995103 b!2995106) bm!200633))

(assert (= (or b!2995120 b!2995119) bm!200632))

(assert (= (or b!2995118 b!2995108) bm!200634))

(assert (= (or b!2995101 bm!200635) bm!200636))

(assert (= (or b!2995101 bm!200632) bm!200638))

(assert (= (and d!845363 res!1235228) b!2995111))

(declare-fun m!3349625 () Bool)

(assert (=> bm!200636 m!3349625))

(declare-fun m!3349627 () Bool)

(assert (=> b!2995111 m!3349627))

(declare-fun m!3349629 () Bool)

(assert (=> b!2995111 m!3349629))

(declare-fun m!3349631 () Bool)

(assert (=> d!845363 m!3349631))

(declare-fun m!3349633 () Bool)

(assert (=> d!845363 m!3349633))

(declare-fun m!3349635 () Bool)

(assert (=> b!2995117 m!3349635))

(declare-fun m!3349637 () Bool)

(assert (=> bm!200633 m!3349637))

(declare-fun m!3349639 () Bool)

(assert (=> bm!200638 m!3349639))

(declare-fun m!3349641 () Bool)

(assert (=> bm!200634 m!3349641))

(declare-fun m!3349643 () Bool)

(assert (=> bm!200637 m!3349643))

(assert (=> b!2994623 d!845363))

(declare-fun b!2995126 () Bool)

(declare-fun c!492517 () Bool)

(declare-fun e!1882228 () Bool)

(assert (=> b!2995126 (= c!492517 e!1882228)))

(declare-fun res!1235230 () Bool)

(assert (=> b!2995126 (=> res!1235230 e!1882228)))

(declare-fun call!200645 () Bool)

(assert (=> b!2995126 (= res!1235230 call!200645)))

(declare-fun lt!1041276 () Regex!9359)

(declare-fun call!200649 () Regex!9359)

(assert (=> b!2995126 (= lt!1041276 call!200649)))

(declare-fun e!1882232 () Regex!9359)

(declare-fun e!1882231 () Regex!9359)

(assert (=> b!2995126 (= e!1882232 e!1882231)))

(declare-fun bm!200639 () Bool)

(declare-fun call!200648 () Bool)

(assert (=> bm!200639 (= call!200648 call!200645)))

(declare-fun b!2995127 () Bool)

(declare-fun e!1882238 () Regex!9359)

(declare-fun lt!1041277 () Regex!9359)

(declare-fun lt!1041273 () Regex!9359)

(assert (=> b!2995127 (= e!1882238 (Concat!14680 lt!1041277 lt!1041273))))

(declare-fun b!2995128 () Bool)

(declare-fun c!492520 () Bool)

(declare-fun call!200644 () Bool)

(assert (=> b!2995128 (= c!492520 call!200644)))

(declare-fun e!1882234 () Regex!9359)

(declare-fun e!1882236 () Regex!9359)

(assert (=> b!2995128 (= e!1882234 e!1882236)))

(declare-fun b!2995129 () Bool)

(declare-fun c!492522 () Bool)

(assert (=> b!2995129 (= c!492522 ((_ is Union!9359) (regOne!19230 r!17423)))))

(declare-fun e!1882233 () Regex!9359)

(assert (=> b!2995129 (= e!1882232 e!1882233)))

(declare-fun d!845365 () Bool)

(declare-fun e!1882230 () Bool)

(assert (=> d!845365 e!1882230))

(declare-fun res!1235231 () Bool)

(assert (=> d!845365 (=> (not res!1235231) (not e!1882230))))

(declare-fun lt!1041275 () Regex!9359)

(assert (=> d!845365 (= res!1235231 (validRegex!4092 lt!1041275))))

(declare-fun e!1882241 () Regex!9359)

(assert (=> d!845365 (= lt!1041275 e!1882241)))

(declare-fun c!492516 () Bool)

(assert (=> d!845365 (= c!492516 ((_ is EmptyLang!9359) (regOne!19230 r!17423)))))

(assert (=> d!845365 (validRegex!4092 (regOne!19230 r!17423))))

(assert (=> d!845365 (= (simplify!350 (regOne!19230 r!17423)) lt!1041275)))

(declare-fun b!2995130 () Bool)

(declare-fun e!1882239 () Regex!9359)

(assert (=> b!2995130 (= e!1882241 e!1882239)))

(declare-fun c!492521 () Bool)

(assert (=> b!2995130 (= c!492521 ((_ is ElementMatch!9359) (regOne!19230 r!17423)))))

(declare-fun bm!200640 () Bool)

(declare-fun lt!1041278 () Regex!9359)

(assert (=> bm!200640 (= call!200644 (isEmptyLang!449 (ite c!492522 lt!1041278 lt!1041273)))))

(declare-fun b!2995131 () Bool)

(declare-fun e!1882229 () Bool)

(assert (=> b!2995131 (= e!1882229 call!200644)))

(declare-fun b!2995132 () Bool)

(assert (=> b!2995132 (= e!1882241 EmptyLang!9359)))

(declare-fun b!2995133 () Bool)

(declare-fun c!492519 () Bool)

(declare-fun call!200646 () Bool)

(assert (=> b!2995133 (= c!492519 call!200646)))

(declare-fun e!1882235 () Regex!9359)

(declare-fun e!1882240 () Regex!9359)

(assert (=> b!2995133 (= e!1882235 e!1882240)))

(declare-fun b!2995134 () Bool)

(assert (=> b!2995134 (= e!1882238 lt!1041277)))

(declare-fun b!2995135 () Bool)

(assert (=> b!2995135 (= e!1882231 EmptyExpr!9359)))

(declare-fun bm!200641 () Bool)

(declare-fun c!492514 () Bool)

(assert (=> bm!200641 (= call!200646 (isEmptyExpr!466 (ite c!492514 lt!1041276 lt!1041277)))))

(declare-fun b!2995136 () Bool)

(assert (=> b!2995136 (= e!1882230 (= (nullable!3022 lt!1041275) (nullable!3022 (regOne!19230 r!17423))))))

(declare-fun b!2995137 () Bool)

(assert (=> b!2995137 (= e!1882240 lt!1041273)))

(declare-fun bm!200642 () Bool)

(declare-fun call!200650 () Regex!9359)

(assert (=> bm!200642 (= call!200650 call!200649)))

(declare-fun b!2995138 () Bool)

(declare-fun lt!1041274 () Regex!9359)

(assert (=> b!2995138 (= e!1882236 lt!1041274)))

(declare-fun b!2995139 () Bool)

(assert (=> b!2995139 (= e!1882235 EmptyLang!9359)))

(declare-fun b!2995140 () Bool)

(assert (=> b!2995140 (= e!1882236 (Union!9359 lt!1041274 lt!1041278))))

(declare-fun b!2995141 () Bool)

(declare-fun c!492518 () Bool)

(assert (=> b!2995141 (= c!492518 ((_ is EmptyExpr!9359) (regOne!19230 r!17423)))))

(declare-fun e!1882237 () Regex!9359)

(assert (=> b!2995141 (= e!1882239 e!1882237)))

(declare-fun b!2995142 () Bool)

(assert (=> b!2995142 (= e!1882240 e!1882238)))

(declare-fun c!492513 () Bool)

(assert (=> b!2995142 (= c!492513 (isEmptyExpr!466 lt!1041273))))

(declare-fun bm!200643 () Bool)

(assert (=> bm!200643 (= call!200649 (simplify!350 (ite c!492514 (reg!9688 (regOne!19230 r!17423)) (ite c!492522 (regOne!19231 (regOne!19230 r!17423)) (regTwo!19230 (regOne!19230 r!17423))))))))

(declare-fun b!2995143 () Bool)

(assert (=> b!2995143 (= e!1882228 call!200646)))

(declare-fun b!2995144 () Bool)

(assert (=> b!2995144 (= e!1882233 e!1882235)))

(declare-fun call!200647 () Regex!9359)

(assert (=> b!2995144 (= lt!1041277 call!200647)))

(assert (=> b!2995144 (= lt!1041273 call!200650)))

(declare-fun res!1235232 () Bool)

(assert (=> b!2995144 (= res!1235232 call!200648)))

(assert (=> b!2995144 (=> res!1235232 e!1882229)))

(declare-fun c!492515 () Bool)

(assert (=> b!2995144 (= c!492515 e!1882229)))

(declare-fun bm!200644 () Bool)

(assert (=> bm!200644 (= call!200647 (simplify!350 (ite c!492522 (regTwo!19231 (regOne!19230 r!17423)) (regOne!19230 (regOne!19230 r!17423)))))))

(declare-fun b!2995145 () Bool)

(assert (=> b!2995145 (= e!1882233 e!1882234)))

(assert (=> b!2995145 (= lt!1041274 call!200650)))

(assert (=> b!2995145 (= lt!1041278 call!200647)))

(declare-fun c!492523 () Bool)

(assert (=> b!2995145 (= c!492523 call!200648)))

(declare-fun b!2995146 () Bool)

(assert (=> b!2995146 (= e!1882231 (Star!9359 lt!1041276))))

(declare-fun bm!200645 () Bool)

(assert (=> bm!200645 (= call!200645 (isEmptyLang!449 (ite c!492514 lt!1041276 (ite c!492522 lt!1041274 lt!1041277))))))

(declare-fun b!2995147 () Bool)

(assert (=> b!2995147 (= e!1882237 e!1882232)))

(assert (=> b!2995147 (= c!492514 ((_ is Star!9359) (regOne!19230 r!17423)))))

(declare-fun b!2995148 () Bool)

(assert (=> b!2995148 (= e!1882237 EmptyExpr!9359)))

(declare-fun b!2995149 () Bool)

(assert (=> b!2995149 (= e!1882239 (regOne!19230 r!17423))))

(declare-fun b!2995150 () Bool)

(assert (=> b!2995150 (= e!1882234 lt!1041278)))

(assert (= (and d!845365 c!492516) b!2995132))

(assert (= (and d!845365 (not c!492516)) b!2995130))

(assert (= (and b!2995130 c!492521) b!2995149))

(assert (= (and b!2995130 (not c!492521)) b!2995141))

(assert (= (and b!2995141 c!492518) b!2995148))

(assert (= (and b!2995141 (not c!492518)) b!2995147))

(assert (= (and b!2995147 c!492514) b!2995126))

(assert (= (and b!2995147 (not c!492514)) b!2995129))

(assert (= (and b!2995126 (not res!1235230)) b!2995143))

(assert (= (and b!2995126 c!492517) b!2995135))

(assert (= (and b!2995126 (not c!492517)) b!2995146))

(assert (= (and b!2995129 c!492522) b!2995145))

(assert (= (and b!2995129 (not c!492522)) b!2995144))

(assert (= (and b!2995145 c!492523) b!2995150))

(assert (= (and b!2995145 (not c!492523)) b!2995128))

(assert (= (and b!2995128 c!492520) b!2995138))

(assert (= (and b!2995128 (not c!492520)) b!2995140))

(assert (= (and b!2995144 (not res!1235232)) b!2995131))

(assert (= (and b!2995144 c!492515) b!2995139))

(assert (= (and b!2995144 (not c!492515)) b!2995133))

(assert (= (and b!2995133 c!492519) b!2995137))

(assert (= (and b!2995133 (not c!492519)) b!2995142))

(assert (= (and b!2995142 c!492513) b!2995134))

(assert (= (and b!2995142 (not c!492513)) b!2995127))

(assert (= (or b!2995145 b!2995144) bm!200642))

(assert (= (or b!2995145 b!2995144) bm!200644))

(assert (= (or b!2995128 b!2995131) bm!200640))

(assert (= (or b!2995145 b!2995144) bm!200639))

(assert (= (or b!2995143 b!2995133) bm!200641))

(assert (= (or b!2995126 bm!200642) bm!200643))

(assert (= (or b!2995126 bm!200639) bm!200645))

(assert (= (and d!845365 res!1235231) b!2995136))

(declare-fun m!3349645 () Bool)

(assert (=> bm!200643 m!3349645))

(declare-fun m!3349647 () Bool)

(assert (=> b!2995136 m!3349647))

(assert (=> b!2995136 m!3349619))

(declare-fun m!3349649 () Bool)

(assert (=> d!845365 m!3349649))

(assert (=> d!845365 m!3349613))

(declare-fun m!3349651 () Bool)

(assert (=> b!2995142 m!3349651))

(declare-fun m!3349653 () Bool)

(assert (=> bm!200640 m!3349653))

(declare-fun m!3349655 () Bool)

(assert (=> bm!200645 m!3349655))

(declare-fun m!3349657 () Bool)

(assert (=> bm!200641 m!3349657))

(declare-fun m!3349659 () Bool)

(assert (=> bm!200644 m!3349659))

(assert (=> b!2994623 d!845365))

(declare-fun e!1882244 () Bool)

(assert (=> b!2994627 (= tp!951734 e!1882244)))

(declare-fun b!2995162 () Bool)

(declare-fun tp!951790 () Bool)

(declare-fun tp!951789 () Bool)

(assert (=> b!2995162 (= e!1882244 (and tp!951790 tp!951789))))

(declare-fun b!2995161 () Bool)

(assert (=> b!2995161 (= e!1882244 tp_is_empty!16281)))

(declare-fun b!2995164 () Bool)

(declare-fun tp!951786 () Bool)

(declare-fun tp!951787 () Bool)

(assert (=> b!2995164 (= e!1882244 (and tp!951786 tp!951787))))

(declare-fun b!2995163 () Bool)

(declare-fun tp!951788 () Bool)

(assert (=> b!2995163 (= e!1882244 tp!951788)))

(assert (= (and b!2994627 ((_ is ElementMatch!9359) (reg!9688 r!17423))) b!2995161))

(assert (= (and b!2994627 ((_ is Concat!14680) (reg!9688 r!17423))) b!2995162))

(assert (= (and b!2994627 ((_ is Star!9359) (reg!9688 r!17423))) b!2995163))

(assert (= (and b!2994627 ((_ is Union!9359) (reg!9688 r!17423))) b!2995164))

(declare-fun e!1882245 () Bool)

(assert (=> b!2994622 (= tp!951732 e!1882245)))

(declare-fun b!2995166 () Bool)

(declare-fun tp!951795 () Bool)

(declare-fun tp!951794 () Bool)

(assert (=> b!2995166 (= e!1882245 (and tp!951795 tp!951794))))

(declare-fun b!2995165 () Bool)

(assert (=> b!2995165 (= e!1882245 tp_is_empty!16281)))

(declare-fun b!2995168 () Bool)

(declare-fun tp!951791 () Bool)

(declare-fun tp!951792 () Bool)

(assert (=> b!2995168 (= e!1882245 (and tp!951791 tp!951792))))

(declare-fun b!2995167 () Bool)

(declare-fun tp!951793 () Bool)

(assert (=> b!2995167 (= e!1882245 tp!951793)))

(assert (= (and b!2994622 ((_ is ElementMatch!9359) (regOne!19230 r!17423))) b!2995165))

(assert (= (and b!2994622 ((_ is Concat!14680) (regOne!19230 r!17423))) b!2995166))

(assert (= (and b!2994622 ((_ is Star!9359) (regOne!19230 r!17423))) b!2995167))

(assert (= (and b!2994622 ((_ is Union!9359) (regOne!19230 r!17423))) b!2995168))

(declare-fun e!1882246 () Bool)

(assert (=> b!2994622 (= tp!951733 e!1882246)))

(declare-fun b!2995170 () Bool)

(declare-fun tp!951800 () Bool)

(declare-fun tp!951799 () Bool)

(assert (=> b!2995170 (= e!1882246 (and tp!951800 tp!951799))))

(declare-fun b!2995169 () Bool)

(assert (=> b!2995169 (= e!1882246 tp_is_empty!16281)))

(declare-fun b!2995172 () Bool)

(declare-fun tp!951796 () Bool)

(declare-fun tp!951797 () Bool)

(assert (=> b!2995172 (= e!1882246 (and tp!951796 tp!951797))))

(declare-fun b!2995171 () Bool)

(declare-fun tp!951798 () Bool)

(assert (=> b!2995171 (= e!1882246 tp!951798)))

(assert (= (and b!2994622 ((_ is ElementMatch!9359) (regTwo!19230 r!17423))) b!2995169))

(assert (= (and b!2994622 ((_ is Concat!14680) (regTwo!19230 r!17423))) b!2995170))

(assert (= (and b!2994622 ((_ is Star!9359) (regTwo!19230 r!17423))) b!2995171))

(assert (= (and b!2994622 ((_ is Union!9359) (regTwo!19230 r!17423))) b!2995172))

(declare-fun e!1882247 () Bool)

(assert (=> b!2994620 (= tp!951736 e!1882247)))

(declare-fun b!2995174 () Bool)

(declare-fun tp!951805 () Bool)

(declare-fun tp!951804 () Bool)

(assert (=> b!2995174 (= e!1882247 (and tp!951805 tp!951804))))

(declare-fun b!2995173 () Bool)

(assert (=> b!2995173 (= e!1882247 tp_is_empty!16281)))

(declare-fun b!2995176 () Bool)

(declare-fun tp!951801 () Bool)

(declare-fun tp!951802 () Bool)

(assert (=> b!2995176 (= e!1882247 (and tp!951801 tp!951802))))

(declare-fun b!2995175 () Bool)

(declare-fun tp!951803 () Bool)

(assert (=> b!2995175 (= e!1882247 tp!951803)))

(assert (= (and b!2994620 ((_ is ElementMatch!9359) (regOne!19231 r!17423))) b!2995173))

(assert (= (and b!2994620 ((_ is Concat!14680) (regOne!19231 r!17423))) b!2995174))

(assert (= (and b!2994620 ((_ is Star!9359) (regOne!19231 r!17423))) b!2995175))

(assert (= (and b!2994620 ((_ is Union!9359) (regOne!19231 r!17423))) b!2995176))

(declare-fun e!1882248 () Bool)

(assert (=> b!2994620 (= tp!951735 e!1882248)))

(declare-fun b!2995178 () Bool)

(declare-fun tp!951810 () Bool)

(declare-fun tp!951809 () Bool)

(assert (=> b!2995178 (= e!1882248 (and tp!951810 tp!951809))))

(declare-fun b!2995177 () Bool)

(assert (=> b!2995177 (= e!1882248 tp_is_empty!16281)))

(declare-fun b!2995180 () Bool)

(declare-fun tp!951806 () Bool)

(declare-fun tp!951807 () Bool)

(assert (=> b!2995180 (= e!1882248 (and tp!951806 tp!951807))))

(declare-fun b!2995179 () Bool)

(declare-fun tp!951808 () Bool)

(assert (=> b!2995179 (= e!1882248 tp!951808)))

(assert (= (and b!2994620 ((_ is ElementMatch!9359) (regTwo!19231 r!17423))) b!2995177))

(assert (= (and b!2994620 ((_ is Concat!14680) (regTwo!19231 r!17423))) b!2995178))

(assert (= (and b!2994620 ((_ is Star!9359) (regTwo!19231 r!17423))) b!2995179))

(assert (= (and b!2994620 ((_ is Union!9359) (regTwo!19231 r!17423))) b!2995180))

(declare-fun b!2995185 () Bool)

(declare-fun e!1882251 () Bool)

(declare-fun tp!951813 () Bool)

(assert (=> b!2995185 (= e!1882251 (and tp_is_empty!16281 tp!951813))))

(assert (=> b!2994626 (= tp!951737 e!1882251)))

(assert (= (and b!2994626 ((_ is Cons!35100) (t!234289 s!11993))) b!2995185))

(check-sat (not bm!200588) (not bm!200645) (not b!2994680) (not bm!200637) (not b!2995176) (not b!2994994) (not b!2995179) (not b!2995004) (not b!2995000) (not b!2995031) (not b!2995180) (not bm!200556) (not b!2995170) (not b!2995136) (not bm!200558) (not b!2995163) (not bm!200615) (not b!2995142) (not b!2994993) (not b!2994858) (not b!2995171) (not b!2995034) (not bm!200589) (not bm!200641) (not b!2995024) tp_is_empty!16281 (not b!2995039) (not b!2995185) (not d!845351) (not b!2995025) (not bm!200643) (not b!2995167) (not b!2994855) (not d!845343) (not bm!200638) (not b!2995038) (not b!2995111) (not b!2995162) (not d!845363) (not d!845365) (not b!2995174) (not b!2995048) (not b!2995175) (not bm!200634) (not b!2995172) (not b!2995166) (not bm!200616) (not bm!200617) (not bm!200640) (not d!845359) (not b!2995040) (not b!2995003) (not b!2994995) (not b!2995168) (not b!2995045) (not bm!200636) (not b!2995026) (not bm!200633) (not b!2995164) (not bm!200644) (not b!2995178) (not b!2995117) (not d!845355) (not b!2995035) (not b!2995049) (not d!845357))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732956 () Bool)

(assert start!732956)

(declare-fun b!7602906 () Bool)

(assert (=> b!7602906 true))

(assert (=> b!7602906 true))

(assert (=> b!7602906 true))

(declare-fun b!7602903 () Bool)

(declare-fun e!4522830 () Bool)

(declare-fun tp!2217199 () Bool)

(declare-fun tp!2217205 () Bool)

(assert (=> b!7602903 (= e!4522830 (and tp!2217199 tp!2217205))))

(declare-fun b!7602904 () Bool)

(declare-fun e!4522832 () Bool)

(declare-fun tp_is_empty!50705 () Bool)

(declare-fun tp!2217204 () Bool)

(assert (=> b!7602904 (= e!4522832 (and tp_is_empty!50705 tp!2217204))))

(declare-fun b!7602905 () Bool)

(declare-fun e!4522833 () Bool)

(declare-fun tp!2217200 () Bool)

(declare-fun tp!2217206 () Bool)

(assert (=> b!7602905 (= e!4522833 (and tp!2217200 tp!2217206))))

(declare-fun res!3044287 () Bool)

(declare-fun e!4522831 () Bool)

(assert (=> b!7602906 (=> (not res!3044287) (not e!4522831))))

(declare-fun lambda!467847 () Int)

(declare-fun Exists!4403 (Int) Bool)

(assert (=> b!7602906 (= res!3044287 (Exists!4403 lambda!467847))))

(declare-fun b!7602907 () Bool)

(declare-fun e!4522829 () Bool)

(assert (=> b!7602907 (= e!4522831 e!4522829)))

(declare-fun res!3044286 () Bool)

(assert (=> b!7602907 (=> (not res!3044286) (not e!4522829))))

(declare-datatypes ((C!40676 0))(
  ( (C!40677 (val!30778 Int)) )
))
(declare-datatypes ((List!73058 0))(
  ( (Nil!72934) (Cons!72934 (h!79382 C!40676) (t!387793 List!73058)) )
))
(declare-datatypes ((tuple2!69064 0))(
  ( (tuple2!69065 (_1!37835 List!73058) (_2!37835 List!73058)) )
))
(declare-fun lt!2654537 () tuple2!69064)

(declare-fun s!10235 () List!73058)

(declare-fun ++!17575 (List!73058 List!73058) List!73058)

(assert (=> b!7602907 (= res!3044286 (= (++!17575 (_1!37835 lt!2654537) (_2!37835 lt!2654537)) s!10235))))

(declare-fun pickWitness!420 (Int) tuple2!69064)

(assert (=> b!7602907 (= lt!2654537 (pickWitness!420 lambda!467847))))

(declare-fun res!3044285 () Bool)

(assert (=> start!732956 (=> (not res!3044285) (not e!4522831))))

(declare-datatypes ((Regex!20175 0))(
  ( (ElementMatch!20175 (c!1402286 C!40676)) (Concat!29020 (regOne!40862 Regex!20175) (regTwo!40862 Regex!20175)) (EmptyExpr!20175) (Star!20175 (reg!20504 Regex!20175)) (EmptyLang!20175) (Union!20175 (regOne!40863 Regex!20175) (regTwo!40863 Regex!20175)) )
))
(declare-fun r1!3349 () Regex!20175)

(declare-fun validRegex!10603 (Regex!20175) Bool)

(assert (=> start!732956 (= res!3044285 (validRegex!10603 r1!3349))))

(assert (=> start!732956 e!4522831))

(assert (=> start!732956 e!4522833))

(assert (=> start!732956 e!4522830))

(assert (=> start!732956 e!4522832))

(declare-fun b!7602908 () Bool)

(declare-fun res!3044288 () Bool)

(assert (=> b!7602908 (=> (not res!3044288) (not e!4522831))))

(declare-fun r2!3249 () Regex!20175)

(assert (=> b!7602908 (= res!3044288 (validRegex!10603 r2!3249))))

(declare-fun b!7602909 () Bool)

(declare-fun lt!2654538 () Bool)

(assert (=> b!7602909 (= e!4522829 (not lt!2654538))))

(declare-fun matchR!9740 (Regex!20175 List!73058) Bool)

(declare-fun matchRSpec!4452 (Regex!20175 List!73058) Bool)

(assert (=> b!7602909 (= (matchR!9740 r2!3249 (_2!37835 lt!2654537)) (matchRSpec!4452 r2!3249 (_2!37835 lt!2654537)))))

(declare-datatypes ((Unit!167234 0))(
  ( (Unit!167235) )
))
(declare-fun lt!2654540 () Unit!167234)

(declare-fun mainMatchTheorem!4446 (Regex!20175 List!73058) Unit!167234)

(assert (=> b!7602909 (= lt!2654540 (mainMatchTheorem!4446 r2!3249 (_2!37835 lt!2654537)))))

(assert (=> b!7602909 (= lt!2654538 (matchRSpec!4452 r1!3349 (_1!37835 lt!2654537)))))

(assert (=> b!7602909 (= lt!2654538 (matchR!9740 r1!3349 (_1!37835 lt!2654537)))))

(declare-fun lt!2654539 () Unit!167234)

(assert (=> b!7602909 (= lt!2654539 (mainMatchTheorem!4446 r1!3349 (_1!37835 lt!2654537)))))

(declare-fun b!7602910 () Bool)

(declare-fun tp!2217209 () Bool)

(assert (=> b!7602910 (= e!4522830 tp!2217209)))

(declare-fun b!7602911 () Bool)

(declare-fun tp!2217203 () Bool)

(declare-fun tp!2217202 () Bool)

(assert (=> b!7602911 (= e!4522833 (and tp!2217203 tp!2217202))))

(declare-fun b!7602912 () Bool)

(assert (=> b!7602912 (= e!4522833 tp_is_empty!50705)))

(declare-fun b!7602913 () Bool)

(declare-fun tp!2217201 () Bool)

(declare-fun tp!2217207 () Bool)

(assert (=> b!7602913 (= e!4522830 (and tp!2217201 tp!2217207))))

(declare-fun b!7602914 () Bool)

(assert (=> b!7602914 (= e!4522830 tp_is_empty!50705)))

(declare-fun b!7602915 () Bool)

(declare-fun tp!2217208 () Bool)

(assert (=> b!7602915 (= e!4522833 tp!2217208)))

(assert (= (and start!732956 res!3044285) b!7602908))

(assert (= (and b!7602908 res!3044288) b!7602906))

(assert (= (and b!7602906 res!3044287) b!7602907))

(assert (= (and b!7602907 res!3044286) b!7602909))

(get-info :version)

(assert (= (and start!732956 ((_ is ElementMatch!20175) r1!3349)) b!7602912))

(assert (= (and start!732956 ((_ is Concat!29020) r1!3349)) b!7602911))

(assert (= (and start!732956 ((_ is Star!20175) r1!3349)) b!7602915))

(assert (= (and start!732956 ((_ is Union!20175) r1!3349)) b!7602905))

(assert (= (and start!732956 ((_ is ElementMatch!20175) r2!3249)) b!7602914))

(assert (= (and start!732956 ((_ is Concat!29020) r2!3249)) b!7602903))

(assert (= (and start!732956 ((_ is Star!20175) r2!3249)) b!7602910))

(assert (= (and start!732956 ((_ is Union!20175) r2!3249)) b!7602913))

(assert (= (and start!732956 ((_ is Cons!72934) s!10235)) b!7602904))

(declare-fun m!8145572 () Bool)

(assert (=> b!7602906 m!8145572))

(declare-fun m!8145574 () Bool)

(assert (=> b!7602909 m!8145574))

(declare-fun m!8145576 () Bool)

(assert (=> b!7602909 m!8145576))

(declare-fun m!8145578 () Bool)

(assert (=> b!7602909 m!8145578))

(declare-fun m!8145580 () Bool)

(assert (=> b!7602909 m!8145580))

(declare-fun m!8145582 () Bool)

(assert (=> b!7602909 m!8145582))

(declare-fun m!8145584 () Bool)

(assert (=> b!7602909 m!8145584))

(declare-fun m!8145586 () Bool)

(assert (=> b!7602908 m!8145586))

(declare-fun m!8145588 () Bool)

(assert (=> start!732956 m!8145588))

(declare-fun m!8145590 () Bool)

(assert (=> b!7602907 m!8145590))

(declare-fun m!8145592 () Bool)

(assert (=> b!7602907 m!8145592))

(check-sat (not b!7602910) (not b!7602915) (not b!7602904) (not b!7602906) (not b!7602907) (not b!7602913) tp_is_empty!50705 (not b!7602908) (not start!732956) (not b!7602905) (not b!7602909) (not b!7602903) (not b!7602911))
(check-sat)
(get-model)

(declare-fun b!7602928 () Bool)

(declare-fun e!4522838 () List!73058)

(assert (=> b!7602928 (= e!4522838 (_2!37835 lt!2654537))))

(declare-fun d!2321535 () Bool)

(declare-fun e!4522839 () Bool)

(assert (=> d!2321535 e!4522839))

(declare-fun res!3044293 () Bool)

(assert (=> d!2321535 (=> (not res!3044293) (not e!4522839))))

(declare-fun lt!2654543 () List!73058)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15418 (List!73058) (InoxSet C!40676))

(assert (=> d!2321535 (= res!3044293 (= (content!15418 lt!2654543) ((_ map or) (content!15418 (_1!37835 lt!2654537)) (content!15418 (_2!37835 lt!2654537)))))))

(assert (=> d!2321535 (= lt!2654543 e!4522838)))

(declare-fun c!1402289 () Bool)

(assert (=> d!2321535 (= c!1402289 ((_ is Nil!72934) (_1!37835 lt!2654537)))))

(assert (=> d!2321535 (= (++!17575 (_1!37835 lt!2654537) (_2!37835 lt!2654537)) lt!2654543)))

(declare-fun b!7602930 () Bool)

(declare-fun res!3044294 () Bool)

(assert (=> b!7602930 (=> (not res!3044294) (not e!4522839))))

(declare-fun size!42511 (List!73058) Int)

(assert (=> b!7602930 (= res!3044294 (= (size!42511 lt!2654543) (+ (size!42511 (_1!37835 lt!2654537)) (size!42511 (_2!37835 lt!2654537)))))))

(declare-fun b!7602929 () Bool)

(assert (=> b!7602929 (= e!4522838 (Cons!72934 (h!79382 (_1!37835 lt!2654537)) (++!17575 (t!387793 (_1!37835 lt!2654537)) (_2!37835 lt!2654537))))))

(declare-fun b!7602931 () Bool)

(assert (=> b!7602931 (= e!4522839 (or (not (= (_2!37835 lt!2654537) Nil!72934)) (= lt!2654543 (_1!37835 lt!2654537))))))

(assert (= (and d!2321535 c!1402289) b!7602928))

(assert (= (and d!2321535 (not c!1402289)) b!7602929))

(assert (= (and d!2321535 res!3044293) b!7602930))

(assert (= (and b!7602930 res!3044294) b!7602931))

(declare-fun m!8145594 () Bool)

(assert (=> d!2321535 m!8145594))

(declare-fun m!8145596 () Bool)

(assert (=> d!2321535 m!8145596))

(declare-fun m!8145598 () Bool)

(assert (=> d!2321535 m!8145598))

(declare-fun m!8145600 () Bool)

(assert (=> b!7602930 m!8145600))

(declare-fun m!8145602 () Bool)

(assert (=> b!7602930 m!8145602))

(declare-fun m!8145604 () Bool)

(assert (=> b!7602930 m!8145604))

(declare-fun m!8145606 () Bool)

(assert (=> b!7602929 m!8145606))

(assert (=> b!7602907 d!2321535))

(declare-fun d!2321537 () Bool)

(declare-fun lt!2654546 () tuple2!69064)

(declare-fun dynLambda!29899 (Int tuple2!69064) Bool)

(assert (=> d!2321537 (dynLambda!29899 lambda!467847 lt!2654546)))

(declare-fun choose!58692 (Int) tuple2!69064)

(assert (=> d!2321537 (= lt!2654546 (choose!58692 lambda!467847))))

(assert (=> d!2321537 (Exists!4403 lambda!467847)))

(assert (=> d!2321537 (= (pickWitness!420 lambda!467847) lt!2654546)))

(declare-fun b_lambda!288915 () Bool)

(assert (=> (not b_lambda!288915) (not d!2321537)))

(declare-fun bs!1942461 () Bool)

(assert (= bs!1942461 d!2321537))

(declare-fun m!8145608 () Bool)

(assert (=> bs!1942461 m!8145608))

(declare-fun m!8145610 () Bool)

(assert (=> bs!1942461 m!8145610))

(assert (=> bs!1942461 m!8145572))

(assert (=> b!7602907 d!2321537))

(declare-fun d!2321539 () Bool)

(declare-fun choose!58693 (Int) Bool)

(assert (=> d!2321539 (= (Exists!4403 lambda!467847) (choose!58693 lambda!467847))))

(declare-fun bs!1942462 () Bool)

(assert (= bs!1942462 d!2321539))

(declare-fun m!8145612 () Bool)

(assert (=> bs!1942462 m!8145612))

(assert (=> b!7602906 d!2321539))

(declare-fun d!2321541 () Bool)

(assert (=> d!2321541 (= (matchR!9740 r1!3349 (_1!37835 lt!2654537)) (matchRSpec!4452 r1!3349 (_1!37835 lt!2654537)))))

(declare-fun lt!2654549 () Unit!167234)

(declare-fun choose!58694 (Regex!20175 List!73058) Unit!167234)

(assert (=> d!2321541 (= lt!2654549 (choose!58694 r1!3349 (_1!37835 lt!2654537)))))

(assert (=> d!2321541 (validRegex!10603 r1!3349)))

(assert (=> d!2321541 (= (mainMatchTheorem!4446 r1!3349 (_1!37835 lt!2654537)) lt!2654549)))

(declare-fun bs!1942463 () Bool)

(assert (= bs!1942463 d!2321541))

(assert (=> bs!1942463 m!8145578))

(assert (=> bs!1942463 m!8145582))

(declare-fun m!8145614 () Bool)

(assert (=> bs!1942463 m!8145614))

(assert (=> bs!1942463 m!8145588))

(assert (=> b!7602909 d!2321541))

(declare-fun bs!1942466 () Bool)

(declare-fun b!7603013 () Bool)

(assert (= bs!1942466 (and b!7603013 b!7602906)))

(declare-fun lambda!467852 () Int)

(assert (=> bs!1942466 (not (= lambda!467852 lambda!467847))))

(assert (=> b!7603013 true))

(assert (=> b!7603013 true))

(declare-fun bs!1942468 () Bool)

(declare-fun b!7603017 () Bool)

(assert (= bs!1942468 (and b!7603017 b!7602906)))

(declare-fun lambda!467853 () Int)

(assert (=> bs!1942468 (not (= lambda!467853 lambda!467847))))

(declare-fun bs!1942470 () Bool)

(assert (= bs!1942470 (and b!7603017 b!7603013)))

(assert (=> bs!1942470 (not (= lambda!467853 lambda!467852))))

(assert (=> b!7603017 true))

(assert (=> b!7603017 true))

(declare-fun b!7603012 () Bool)

(declare-fun res!3044339 () Bool)

(declare-fun e!4522893 () Bool)

(assert (=> b!7603012 (=> res!3044339 e!4522893)))

(declare-fun call!698085 () Bool)

(assert (=> b!7603012 (= res!3044339 call!698085)))

(declare-fun e!4522894 () Bool)

(assert (=> b!7603012 (= e!4522894 e!4522893)))

(declare-fun d!2321545 () Bool)

(declare-fun c!1402310 () Bool)

(assert (=> d!2321545 (= c!1402310 ((_ is EmptyExpr!20175) r2!3249))))

(declare-fun e!4522898 () Bool)

(assert (=> d!2321545 (= (matchRSpec!4452 r2!3249 (_2!37835 lt!2654537)) e!4522898)))

(declare-fun call!698086 () Bool)

(assert (=> b!7603013 (= e!4522893 call!698086)))

(declare-fun b!7603014 () Bool)

(declare-fun e!4522897 () Bool)

(assert (=> b!7603014 (= e!4522897 e!4522894)))

(declare-fun c!1402311 () Bool)

(assert (=> b!7603014 (= c!1402311 ((_ is Star!20175) r2!3249))))

(declare-fun b!7603015 () Bool)

(declare-fun e!4522896 () Bool)

(assert (=> b!7603015 (= e!4522896 (matchRSpec!4452 (regTwo!40863 r2!3249) (_2!37835 lt!2654537)))))

(declare-fun b!7603016 () Bool)

(declare-fun e!4522895 () Bool)

(assert (=> b!7603016 (= e!4522895 (= (_2!37835 lt!2654537) (Cons!72934 (c!1402286 r2!3249) Nil!72934)))))

(assert (=> b!7603017 (= e!4522894 call!698086)))

(declare-fun b!7603018 () Bool)

(assert (=> b!7603018 (= e!4522897 e!4522896)))

(declare-fun res!3044338 () Bool)

(assert (=> b!7603018 (= res!3044338 (matchRSpec!4452 (regOne!40863 r2!3249) (_2!37835 lt!2654537)))))

(assert (=> b!7603018 (=> res!3044338 e!4522896)))

(declare-fun b!7603019 () Bool)

(assert (=> b!7603019 (= e!4522898 call!698085)))

(declare-fun b!7603020 () Bool)

(declare-fun c!1402309 () Bool)

(assert (=> b!7603020 (= c!1402309 ((_ is ElementMatch!20175) r2!3249))))

(declare-fun e!4522892 () Bool)

(assert (=> b!7603020 (= e!4522892 e!4522895)))

(declare-fun bm!698080 () Bool)

(declare-fun isEmpty!41566 (List!73058) Bool)

(assert (=> bm!698080 (= call!698085 (isEmpty!41566 (_2!37835 lt!2654537)))))

(declare-fun b!7603021 () Bool)

(assert (=> b!7603021 (= e!4522898 e!4522892)))

(declare-fun res!3044337 () Bool)

(assert (=> b!7603021 (= res!3044337 (not ((_ is EmptyLang!20175) r2!3249)))))

(assert (=> b!7603021 (=> (not res!3044337) (not e!4522892))))

(declare-fun b!7603022 () Bool)

(declare-fun c!1402312 () Bool)

(assert (=> b!7603022 (= c!1402312 ((_ is Union!20175) r2!3249))))

(assert (=> b!7603022 (= e!4522895 e!4522897)))

(declare-fun bm!698081 () Bool)

(assert (=> bm!698081 (= call!698086 (Exists!4403 (ite c!1402311 lambda!467852 lambda!467853)))))

(assert (= (and d!2321545 c!1402310) b!7603019))

(assert (= (and d!2321545 (not c!1402310)) b!7603021))

(assert (= (and b!7603021 res!3044337) b!7603020))

(assert (= (and b!7603020 c!1402309) b!7603016))

(assert (= (and b!7603020 (not c!1402309)) b!7603022))

(assert (= (and b!7603022 c!1402312) b!7603018))

(assert (= (and b!7603022 (not c!1402312)) b!7603014))

(assert (= (and b!7603018 (not res!3044338)) b!7603015))

(assert (= (and b!7603014 c!1402311) b!7603012))

(assert (= (and b!7603014 (not c!1402311)) b!7603017))

(assert (= (and b!7603012 (not res!3044339)) b!7603013))

(assert (= (or b!7603013 b!7603017) bm!698081))

(assert (= (or b!7603019 b!7603012) bm!698080))

(declare-fun m!8145652 () Bool)

(assert (=> b!7603015 m!8145652))

(declare-fun m!8145654 () Bool)

(assert (=> b!7603018 m!8145654))

(declare-fun m!8145656 () Bool)

(assert (=> bm!698080 m!8145656))

(declare-fun m!8145658 () Bool)

(assert (=> bm!698081 m!8145658))

(assert (=> b!7602909 d!2321545))

(declare-fun bs!1942471 () Bool)

(declare-fun b!7603024 () Bool)

(assert (= bs!1942471 (and b!7603024 b!7602906)))

(declare-fun lambda!467854 () Int)

(assert (=> bs!1942471 (not (= lambda!467854 lambda!467847))))

(declare-fun bs!1942472 () Bool)

(assert (= bs!1942472 (and b!7603024 b!7603013)))

(assert (=> bs!1942472 (= (and (= (_1!37835 lt!2654537) (_2!37835 lt!2654537)) (= (reg!20504 r1!3349) (reg!20504 r2!3249)) (= r1!3349 r2!3249)) (= lambda!467854 lambda!467852))))

(declare-fun bs!1942473 () Bool)

(assert (= bs!1942473 (and b!7603024 b!7603017)))

(assert (=> bs!1942473 (not (= lambda!467854 lambda!467853))))

(assert (=> b!7603024 true))

(assert (=> b!7603024 true))

(declare-fun bs!1942474 () Bool)

(declare-fun b!7603028 () Bool)

(assert (= bs!1942474 (and b!7603028 b!7602906)))

(declare-fun lambda!467855 () Int)

(assert (=> bs!1942474 (not (= lambda!467855 lambda!467847))))

(declare-fun bs!1942475 () Bool)

(assert (= bs!1942475 (and b!7603028 b!7603013)))

(assert (=> bs!1942475 (not (= lambda!467855 lambda!467852))))

(declare-fun bs!1942476 () Bool)

(assert (= bs!1942476 (and b!7603028 b!7603017)))

(assert (=> bs!1942476 (= (and (= (_1!37835 lt!2654537) (_2!37835 lt!2654537)) (= (regOne!40862 r1!3349) (regOne!40862 r2!3249)) (= (regTwo!40862 r1!3349) (regTwo!40862 r2!3249))) (= lambda!467855 lambda!467853))))

(declare-fun bs!1942477 () Bool)

(assert (= bs!1942477 (and b!7603028 b!7603024)))

(assert (=> bs!1942477 (not (= lambda!467855 lambda!467854))))

(assert (=> b!7603028 true))

(assert (=> b!7603028 true))

(declare-fun b!7603023 () Bool)

(declare-fun res!3044342 () Bool)

(declare-fun e!4522900 () Bool)

(assert (=> b!7603023 (=> res!3044342 e!4522900)))

(declare-fun call!698087 () Bool)

(assert (=> b!7603023 (= res!3044342 call!698087)))

(declare-fun e!4522901 () Bool)

(assert (=> b!7603023 (= e!4522901 e!4522900)))

(declare-fun d!2321561 () Bool)

(declare-fun c!1402314 () Bool)

(assert (=> d!2321561 (= c!1402314 ((_ is EmptyExpr!20175) r1!3349))))

(declare-fun e!4522905 () Bool)

(assert (=> d!2321561 (= (matchRSpec!4452 r1!3349 (_1!37835 lt!2654537)) e!4522905)))

(declare-fun call!698088 () Bool)

(assert (=> b!7603024 (= e!4522900 call!698088)))

(declare-fun b!7603025 () Bool)

(declare-fun e!4522904 () Bool)

(assert (=> b!7603025 (= e!4522904 e!4522901)))

(declare-fun c!1402315 () Bool)

(assert (=> b!7603025 (= c!1402315 ((_ is Star!20175) r1!3349))))

(declare-fun b!7603026 () Bool)

(declare-fun e!4522903 () Bool)

(assert (=> b!7603026 (= e!4522903 (matchRSpec!4452 (regTwo!40863 r1!3349) (_1!37835 lt!2654537)))))

(declare-fun b!7603027 () Bool)

(declare-fun e!4522902 () Bool)

(assert (=> b!7603027 (= e!4522902 (= (_1!37835 lt!2654537) (Cons!72934 (c!1402286 r1!3349) Nil!72934)))))

(assert (=> b!7603028 (= e!4522901 call!698088)))

(declare-fun b!7603029 () Bool)

(assert (=> b!7603029 (= e!4522904 e!4522903)))

(declare-fun res!3044341 () Bool)

(assert (=> b!7603029 (= res!3044341 (matchRSpec!4452 (regOne!40863 r1!3349) (_1!37835 lt!2654537)))))

(assert (=> b!7603029 (=> res!3044341 e!4522903)))

(declare-fun b!7603030 () Bool)

(assert (=> b!7603030 (= e!4522905 call!698087)))

(declare-fun b!7603031 () Bool)

(declare-fun c!1402313 () Bool)

(assert (=> b!7603031 (= c!1402313 ((_ is ElementMatch!20175) r1!3349))))

(declare-fun e!4522899 () Bool)

(assert (=> b!7603031 (= e!4522899 e!4522902)))

(declare-fun bm!698082 () Bool)

(assert (=> bm!698082 (= call!698087 (isEmpty!41566 (_1!37835 lt!2654537)))))

(declare-fun b!7603032 () Bool)

(assert (=> b!7603032 (= e!4522905 e!4522899)))

(declare-fun res!3044340 () Bool)

(assert (=> b!7603032 (= res!3044340 (not ((_ is EmptyLang!20175) r1!3349)))))

(assert (=> b!7603032 (=> (not res!3044340) (not e!4522899))))

(declare-fun b!7603033 () Bool)

(declare-fun c!1402316 () Bool)

(assert (=> b!7603033 (= c!1402316 ((_ is Union!20175) r1!3349))))

(assert (=> b!7603033 (= e!4522902 e!4522904)))

(declare-fun bm!698083 () Bool)

(assert (=> bm!698083 (= call!698088 (Exists!4403 (ite c!1402315 lambda!467854 lambda!467855)))))

(assert (= (and d!2321561 c!1402314) b!7603030))

(assert (= (and d!2321561 (not c!1402314)) b!7603032))

(assert (= (and b!7603032 res!3044340) b!7603031))

(assert (= (and b!7603031 c!1402313) b!7603027))

(assert (= (and b!7603031 (not c!1402313)) b!7603033))

(assert (= (and b!7603033 c!1402316) b!7603029))

(assert (= (and b!7603033 (not c!1402316)) b!7603025))

(assert (= (and b!7603029 (not res!3044341)) b!7603026))

(assert (= (and b!7603025 c!1402315) b!7603023))

(assert (= (and b!7603025 (not c!1402315)) b!7603028))

(assert (= (and b!7603023 (not res!3044342)) b!7603024))

(assert (= (or b!7603024 b!7603028) bm!698083))

(assert (= (or b!7603030 b!7603023) bm!698082))

(declare-fun m!8145660 () Bool)

(assert (=> b!7603026 m!8145660))

(declare-fun m!8145662 () Bool)

(assert (=> b!7603029 m!8145662))

(declare-fun m!8145664 () Bool)

(assert (=> bm!698082 m!8145664))

(declare-fun m!8145666 () Bool)

(assert (=> bm!698083 m!8145666))

(assert (=> b!7602909 d!2321561))

(declare-fun d!2321563 () Bool)

(declare-fun e!4522947 () Bool)

(assert (=> d!2321563 e!4522947))

(declare-fun c!1402332 () Bool)

(assert (=> d!2321563 (= c!1402332 ((_ is EmptyExpr!20175) r2!3249))))

(declare-fun lt!2654565 () Bool)

(declare-fun e!4522941 () Bool)

(assert (=> d!2321563 (= lt!2654565 e!4522941)))

(declare-fun c!1402333 () Bool)

(assert (=> d!2321563 (= c!1402333 (isEmpty!41566 (_2!37835 lt!2654537)))))

(assert (=> d!2321563 (validRegex!10603 r2!3249)))

(assert (=> d!2321563 (= (matchR!9740 r2!3249 (_2!37835 lt!2654537)) lt!2654565)))

(declare-fun b!7603104 () Bool)

(declare-fun nullable!8806 (Regex!20175) Bool)

(assert (=> b!7603104 (= e!4522941 (nullable!8806 r2!3249))))

(declare-fun b!7603105 () Bool)

(declare-fun e!4522944 () Bool)

(declare-fun e!4522943 () Bool)

(assert (=> b!7603105 (= e!4522944 e!4522943)))

(declare-fun res!3044383 () Bool)

(assert (=> b!7603105 (=> (not res!3044383) (not e!4522943))))

(assert (=> b!7603105 (= res!3044383 (not lt!2654565))))

(declare-fun b!7603106 () Bool)

(declare-fun e!4522946 () Bool)

(assert (=> b!7603106 (= e!4522947 e!4522946)))

(declare-fun c!1402334 () Bool)

(assert (=> b!7603106 (= c!1402334 ((_ is EmptyLang!20175) r2!3249))))

(declare-fun b!7603107 () Bool)

(declare-fun res!3044387 () Bool)

(assert (=> b!7603107 (=> res!3044387 e!4522944)))

(assert (=> b!7603107 (= res!3044387 (not ((_ is ElementMatch!20175) r2!3249)))))

(assert (=> b!7603107 (= e!4522946 e!4522944)))

(declare-fun b!7603108 () Bool)

(declare-fun res!3044384 () Bool)

(assert (=> b!7603108 (=> res!3044384 e!4522944)))

(declare-fun e!4522945 () Bool)

(assert (=> b!7603108 (= res!3044384 e!4522945)))

(declare-fun res!3044390 () Bool)

(assert (=> b!7603108 (=> (not res!3044390) (not e!4522945))))

(assert (=> b!7603108 (= res!3044390 lt!2654565)))

(declare-fun b!7603109 () Bool)

(declare-fun derivativeStep!5829 (Regex!20175 C!40676) Regex!20175)

(declare-fun head!15629 (List!73058) C!40676)

(declare-fun tail!15169 (List!73058) List!73058)

(assert (=> b!7603109 (= e!4522941 (matchR!9740 (derivativeStep!5829 r2!3249 (head!15629 (_2!37835 lt!2654537))) (tail!15169 (_2!37835 lt!2654537))))))

(declare-fun b!7603110 () Bool)

(declare-fun e!4522942 () Bool)

(assert (=> b!7603110 (= e!4522942 (not (= (head!15629 (_2!37835 lt!2654537)) (c!1402286 r2!3249))))))

(declare-fun bm!698089 () Bool)

(declare-fun call!698094 () Bool)

(assert (=> bm!698089 (= call!698094 (isEmpty!41566 (_2!37835 lt!2654537)))))

(declare-fun b!7603111 () Bool)

(declare-fun res!3044386 () Bool)

(assert (=> b!7603111 (=> (not res!3044386) (not e!4522945))))

(assert (=> b!7603111 (= res!3044386 (not call!698094))))

(declare-fun b!7603112 () Bool)

(assert (=> b!7603112 (= e!4522947 (= lt!2654565 call!698094))))

(declare-fun b!7603113 () Bool)

(assert (=> b!7603113 (= e!4522943 e!4522942)))

(declare-fun res!3044385 () Bool)

(assert (=> b!7603113 (=> res!3044385 e!4522942)))

(assert (=> b!7603113 (= res!3044385 call!698094)))

(declare-fun b!7603114 () Bool)

(declare-fun res!3044388 () Bool)

(assert (=> b!7603114 (=> (not res!3044388) (not e!4522945))))

(assert (=> b!7603114 (= res!3044388 (isEmpty!41566 (tail!15169 (_2!37835 lt!2654537))))))

(declare-fun b!7603115 () Bool)

(assert (=> b!7603115 (= e!4522946 (not lt!2654565))))

(declare-fun b!7603116 () Bool)

(assert (=> b!7603116 (= e!4522945 (= (head!15629 (_2!37835 lt!2654537)) (c!1402286 r2!3249)))))

(declare-fun b!7603117 () Bool)

(declare-fun res!3044389 () Bool)

(assert (=> b!7603117 (=> res!3044389 e!4522942)))

(assert (=> b!7603117 (= res!3044389 (not (isEmpty!41566 (tail!15169 (_2!37835 lt!2654537)))))))

(assert (= (and d!2321563 c!1402333) b!7603104))

(assert (= (and d!2321563 (not c!1402333)) b!7603109))

(assert (= (and d!2321563 c!1402332) b!7603112))

(assert (= (and d!2321563 (not c!1402332)) b!7603106))

(assert (= (and b!7603106 c!1402334) b!7603115))

(assert (= (and b!7603106 (not c!1402334)) b!7603107))

(assert (= (and b!7603107 (not res!3044387)) b!7603108))

(assert (= (and b!7603108 res!3044390) b!7603111))

(assert (= (and b!7603111 res!3044386) b!7603114))

(assert (= (and b!7603114 res!3044388) b!7603116))

(assert (= (and b!7603108 (not res!3044384)) b!7603105))

(assert (= (and b!7603105 res!3044383) b!7603113))

(assert (= (and b!7603113 (not res!3044385)) b!7603117))

(assert (= (and b!7603117 (not res!3044389)) b!7603110))

(assert (= (or b!7603112 b!7603113 b!7603111) bm!698089))

(declare-fun m!8145682 () Bool)

(assert (=> b!7603109 m!8145682))

(assert (=> b!7603109 m!8145682))

(declare-fun m!8145684 () Bool)

(assert (=> b!7603109 m!8145684))

(declare-fun m!8145686 () Bool)

(assert (=> b!7603109 m!8145686))

(assert (=> b!7603109 m!8145684))

(assert (=> b!7603109 m!8145686))

(declare-fun m!8145688 () Bool)

(assert (=> b!7603109 m!8145688))

(assert (=> bm!698089 m!8145656))

(declare-fun m!8145690 () Bool)

(assert (=> b!7603104 m!8145690))

(assert (=> b!7603116 m!8145682))

(assert (=> b!7603110 m!8145682))

(assert (=> b!7603117 m!8145686))

(assert (=> b!7603117 m!8145686))

(declare-fun m!8145692 () Bool)

(assert (=> b!7603117 m!8145692))

(assert (=> b!7603114 m!8145686))

(assert (=> b!7603114 m!8145686))

(assert (=> b!7603114 m!8145692))

(assert (=> d!2321563 m!8145656))

(assert (=> d!2321563 m!8145586))

(assert (=> b!7602909 d!2321563))

(declare-fun d!2321567 () Bool)

(declare-fun e!4522954 () Bool)

(assert (=> d!2321567 e!4522954))

(declare-fun c!1402335 () Bool)

(assert (=> d!2321567 (= c!1402335 ((_ is EmptyExpr!20175) r1!3349))))

(declare-fun lt!2654566 () Bool)

(declare-fun e!4522948 () Bool)

(assert (=> d!2321567 (= lt!2654566 e!4522948)))

(declare-fun c!1402336 () Bool)

(assert (=> d!2321567 (= c!1402336 (isEmpty!41566 (_1!37835 lt!2654537)))))

(assert (=> d!2321567 (validRegex!10603 r1!3349)))

(assert (=> d!2321567 (= (matchR!9740 r1!3349 (_1!37835 lt!2654537)) lt!2654566)))

(declare-fun b!7603118 () Bool)

(assert (=> b!7603118 (= e!4522948 (nullable!8806 r1!3349))))

(declare-fun b!7603119 () Bool)

(declare-fun e!4522951 () Bool)

(declare-fun e!4522950 () Bool)

(assert (=> b!7603119 (= e!4522951 e!4522950)))

(declare-fun res!3044391 () Bool)

(assert (=> b!7603119 (=> (not res!3044391) (not e!4522950))))

(assert (=> b!7603119 (= res!3044391 (not lt!2654566))))

(declare-fun b!7603120 () Bool)

(declare-fun e!4522953 () Bool)

(assert (=> b!7603120 (= e!4522954 e!4522953)))

(declare-fun c!1402337 () Bool)

(assert (=> b!7603120 (= c!1402337 ((_ is EmptyLang!20175) r1!3349))))

(declare-fun b!7603121 () Bool)

(declare-fun res!3044395 () Bool)

(assert (=> b!7603121 (=> res!3044395 e!4522951)))

(assert (=> b!7603121 (= res!3044395 (not ((_ is ElementMatch!20175) r1!3349)))))

(assert (=> b!7603121 (= e!4522953 e!4522951)))

(declare-fun b!7603122 () Bool)

(declare-fun res!3044392 () Bool)

(assert (=> b!7603122 (=> res!3044392 e!4522951)))

(declare-fun e!4522952 () Bool)

(assert (=> b!7603122 (= res!3044392 e!4522952)))

(declare-fun res!3044398 () Bool)

(assert (=> b!7603122 (=> (not res!3044398) (not e!4522952))))

(assert (=> b!7603122 (= res!3044398 lt!2654566)))

(declare-fun b!7603123 () Bool)

(assert (=> b!7603123 (= e!4522948 (matchR!9740 (derivativeStep!5829 r1!3349 (head!15629 (_1!37835 lt!2654537))) (tail!15169 (_1!37835 lt!2654537))))))

(declare-fun b!7603124 () Bool)

(declare-fun e!4522949 () Bool)

(assert (=> b!7603124 (= e!4522949 (not (= (head!15629 (_1!37835 lt!2654537)) (c!1402286 r1!3349))))))

(declare-fun bm!698090 () Bool)

(declare-fun call!698095 () Bool)

(assert (=> bm!698090 (= call!698095 (isEmpty!41566 (_1!37835 lt!2654537)))))

(declare-fun b!7603125 () Bool)

(declare-fun res!3044394 () Bool)

(assert (=> b!7603125 (=> (not res!3044394) (not e!4522952))))

(assert (=> b!7603125 (= res!3044394 (not call!698095))))

(declare-fun b!7603126 () Bool)

(assert (=> b!7603126 (= e!4522954 (= lt!2654566 call!698095))))

(declare-fun b!7603127 () Bool)

(assert (=> b!7603127 (= e!4522950 e!4522949)))

(declare-fun res!3044393 () Bool)

(assert (=> b!7603127 (=> res!3044393 e!4522949)))

(assert (=> b!7603127 (= res!3044393 call!698095)))

(declare-fun b!7603128 () Bool)

(declare-fun res!3044396 () Bool)

(assert (=> b!7603128 (=> (not res!3044396) (not e!4522952))))

(assert (=> b!7603128 (= res!3044396 (isEmpty!41566 (tail!15169 (_1!37835 lt!2654537))))))

(declare-fun b!7603129 () Bool)

(assert (=> b!7603129 (= e!4522953 (not lt!2654566))))

(declare-fun b!7603130 () Bool)

(assert (=> b!7603130 (= e!4522952 (= (head!15629 (_1!37835 lt!2654537)) (c!1402286 r1!3349)))))

(declare-fun b!7603131 () Bool)

(declare-fun res!3044397 () Bool)

(assert (=> b!7603131 (=> res!3044397 e!4522949)))

(assert (=> b!7603131 (= res!3044397 (not (isEmpty!41566 (tail!15169 (_1!37835 lt!2654537)))))))

(assert (= (and d!2321567 c!1402336) b!7603118))

(assert (= (and d!2321567 (not c!1402336)) b!7603123))

(assert (= (and d!2321567 c!1402335) b!7603126))

(assert (= (and d!2321567 (not c!1402335)) b!7603120))

(assert (= (and b!7603120 c!1402337) b!7603129))

(assert (= (and b!7603120 (not c!1402337)) b!7603121))

(assert (= (and b!7603121 (not res!3044395)) b!7603122))

(assert (= (and b!7603122 res!3044398) b!7603125))

(assert (= (and b!7603125 res!3044394) b!7603128))

(assert (= (and b!7603128 res!3044396) b!7603130))

(assert (= (and b!7603122 (not res!3044392)) b!7603119))

(assert (= (and b!7603119 res!3044391) b!7603127))

(assert (= (and b!7603127 (not res!3044393)) b!7603131))

(assert (= (and b!7603131 (not res!3044397)) b!7603124))

(assert (= (or b!7603126 b!7603127 b!7603125) bm!698090))

(declare-fun m!8145694 () Bool)

(assert (=> b!7603123 m!8145694))

(assert (=> b!7603123 m!8145694))

(declare-fun m!8145696 () Bool)

(assert (=> b!7603123 m!8145696))

(declare-fun m!8145698 () Bool)

(assert (=> b!7603123 m!8145698))

(assert (=> b!7603123 m!8145696))

(assert (=> b!7603123 m!8145698))

(declare-fun m!8145700 () Bool)

(assert (=> b!7603123 m!8145700))

(assert (=> bm!698090 m!8145664))

(declare-fun m!8145702 () Bool)

(assert (=> b!7603118 m!8145702))

(assert (=> b!7603130 m!8145694))

(assert (=> b!7603124 m!8145694))

(assert (=> b!7603131 m!8145698))

(assert (=> b!7603131 m!8145698))

(declare-fun m!8145704 () Bool)

(assert (=> b!7603131 m!8145704))

(assert (=> b!7603128 m!8145698))

(assert (=> b!7603128 m!8145698))

(assert (=> b!7603128 m!8145704))

(assert (=> d!2321567 m!8145664))

(assert (=> d!2321567 m!8145588))

(assert (=> b!7602909 d!2321567))

(declare-fun d!2321569 () Bool)

(assert (=> d!2321569 (= (matchR!9740 r2!3249 (_2!37835 lt!2654537)) (matchRSpec!4452 r2!3249 (_2!37835 lt!2654537)))))

(declare-fun lt!2654567 () Unit!167234)

(assert (=> d!2321569 (= lt!2654567 (choose!58694 r2!3249 (_2!37835 lt!2654537)))))

(assert (=> d!2321569 (validRegex!10603 r2!3249)))

(assert (=> d!2321569 (= (mainMatchTheorem!4446 r2!3249 (_2!37835 lt!2654537)) lt!2654567)))

(declare-fun bs!1942478 () Bool)

(assert (= bs!1942478 d!2321569))

(assert (=> bs!1942478 m!8145584))

(assert (=> bs!1942478 m!8145574))

(declare-fun m!8145706 () Bool)

(assert (=> bs!1942478 m!8145706))

(assert (=> bs!1942478 m!8145586))

(assert (=> b!7602909 d!2321569))

(declare-fun b!7603182 () Bool)

(declare-fun e!4522987 () Bool)

(declare-fun e!4522989 () Bool)

(assert (=> b!7603182 (= e!4522987 e!4522989)))

(declare-fun c!1402351 () Bool)

(assert (=> b!7603182 (= c!1402351 ((_ is Union!20175) r1!3349))))

(declare-fun b!7603183 () Bool)

(declare-fun e!4522992 () Bool)

(declare-fun call!698107 () Bool)

(assert (=> b!7603183 (= e!4522992 call!698107)))

(declare-fun b!7603184 () Bool)

(declare-fun res!3044428 () Bool)

(declare-fun e!4522990 () Bool)

(assert (=> b!7603184 (=> (not res!3044428) (not e!4522990))))

(assert (=> b!7603184 (= res!3044428 call!698107)))

(assert (=> b!7603184 (= e!4522989 e!4522990)))

(declare-fun bm!698101 () Bool)

(declare-fun call!698106 () Bool)

(assert (=> bm!698101 (= call!698107 call!698106)))

(declare-fun b!7603185 () Bool)

(declare-fun e!4522988 () Bool)

(assert (=> b!7603185 (= e!4522988 e!4522992)))

(declare-fun res!3044429 () Bool)

(assert (=> b!7603185 (=> (not res!3044429) (not e!4522992))))

(declare-fun call!698108 () Bool)

(assert (=> b!7603185 (= res!3044429 call!698108)))

(declare-fun bm!698102 () Bool)

(assert (=> bm!698102 (= call!698108 (validRegex!10603 (ite c!1402351 (regTwo!40863 r1!3349) (regOne!40862 r1!3349))))))

(declare-fun d!2321571 () Bool)

(declare-fun res!3044425 () Bool)

(declare-fun e!4522991 () Bool)

(assert (=> d!2321571 (=> res!3044425 e!4522991)))

(assert (=> d!2321571 (= res!3044425 ((_ is ElementMatch!20175) r1!3349))))

(assert (=> d!2321571 (= (validRegex!10603 r1!3349) e!4522991)))

(declare-fun b!7603186 () Bool)

(declare-fun res!3044427 () Bool)

(assert (=> b!7603186 (=> res!3044427 e!4522988)))

(assert (=> b!7603186 (= res!3044427 (not ((_ is Concat!29020) r1!3349)))))

(assert (=> b!7603186 (= e!4522989 e!4522988)))

(declare-fun c!1402350 () Bool)

(declare-fun bm!698103 () Bool)

(assert (=> bm!698103 (= call!698106 (validRegex!10603 (ite c!1402350 (reg!20504 r1!3349) (ite c!1402351 (regOne!40863 r1!3349) (regTwo!40862 r1!3349)))))))

(declare-fun b!7603187 () Bool)

(assert (=> b!7603187 (= e!4522990 call!698108)))

(declare-fun b!7603188 () Bool)

(declare-fun e!4522993 () Bool)

(assert (=> b!7603188 (= e!4522987 e!4522993)))

(declare-fun res!3044426 () Bool)

(assert (=> b!7603188 (= res!3044426 (not (nullable!8806 (reg!20504 r1!3349))))))

(assert (=> b!7603188 (=> (not res!3044426) (not e!4522993))))

(declare-fun b!7603189 () Bool)

(assert (=> b!7603189 (= e!4522993 call!698106)))

(declare-fun b!7603190 () Bool)

(assert (=> b!7603190 (= e!4522991 e!4522987)))

(assert (=> b!7603190 (= c!1402350 ((_ is Star!20175) r1!3349))))

(assert (= (and d!2321571 (not res!3044425)) b!7603190))

(assert (= (and b!7603190 c!1402350) b!7603188))

(assert (= (and b!7603190 (not c!1402350)) b!7603182))

(assert (= (and b!7603188 res!3044426) b!7603189))

(assert (= (and b!7603182 c!1402351) b!7603184))

(assert (= (and b!7603182 (not c!1402351)) b!7603186))

(assert (= (and b!7603184 res!3044428) b!7603187))

(assert (= (and b!7603186 (not res!3044427)) b!7603185))

(assert (= (and b!7603185 res!3044429) b!7603183))

(assert (= (or b!7603187 b!7603185) bm!698102))

(assert (= (or b!7603184 b!7603183) bm!698101))

(assert (= (or b!7603189 bm!698101) bm!698103))

(declare-fun m!8145708 () Bool)

(assert (=> bm!698102 m!8145708))

(declare-fun m!8145710 () Bool)

(assert (=> bm!698103 m!8145710))

(declare-fun m!8145712 () Bool)

(assert (=> b!7603188 m!8145712))

(assert (=> start!732956 d!2321571))

(declare-fun b!7603191 () Bool)

(declare-fun e!4522994 () Bool)

(declare-fun e!4522996 () Bool)

(assert (=> b!7603191 (= e!4522994 e!4522996)))

(declare-fun c!1402353 () Bool)

(assert (=> b!7603191 (= c!1402353 ((_ is Union!20175) r2!3249))))

(declare-fun b!7603192 () Bool)

(declare-fun e!4522999 () Bool)

(declare-fun call!698110 () Bool)

(assert (=> b!7603192 (= e!4522999 call!698110)))

(declare-fun b!7603193 () Bool)

(declare-fun res!3044433 () Bool)

(declare-fun e!4522997 () Bool)

(assert (=> b!7603193 (=> (not res!3044433) (not e!4522997))))

(assert (=> b!7603193 (= res!3044433 call!698110)))

(assert (=> b!7603193 (= e!4522996 e!4522997)))

(declare-fun bm!698104 () Bool)

(declare-fun call!698109 () Bool)

(assert (=> bm!698104 (= call!698110 call!698109)))

(declare-fun b!7603194 () Bool)

(declare-fun e!4522995 () Bool)

(assert (=> b!7603194 (= e!4522995 e!4522999)))

(declare-fun res!3044434 () Bool)

(assert (=> b!7603194 (=> (not res!3044434) (not e!4522999))))

(declare-fun call!698111 () Bool)

(assert (=> b!7603194 (= res!3044434 call!698111)))

(declare-fun bm!698105 () Bool)

(assert (=> bm!698105 (= call!698111 (validRegex!10603 (ite c!1402353 (regTwo!40863 r2!3249) (regOne!40862 r2!3249))))))

(declare-fun d!2321573 () Bool)

(declare-fun res!3044430 () Bool)

(declare-fun e!4522998 () Bool)

(assert (=> d!2321573 (=> res!3044430 e!4522998)))

(assert (=> d!2321573 (= res!3044430 ((_ is ElementMatch!20175) r2!3249))))

(assert (=> d!2321573 (= (validRegex!10603 r2!3249) e!4522998)))

(declare-fun b!7603195 () Bool)

(declare-fun res!3044432 () Bool)

(assert (=> b!7603195 (=> res!3044432 e!4522995)))

(assert (=> b!7603195 (= res!3044432 (not ((_ is Concat!29020) r2!3249)))))

(assert (=> b!7603195 (= e!4522996 e!4522995)))

(declare-fun bm!698106 () Bool)

(declare-fun c!1402352 () Bool)

(assert (=> bm!698106 (= call!698109 (validRegex!10603 (ite c!1402352 (reg!20504 r2!3249) (ite c!1402353 (regOne!40863 r2!3249) (regTwo!40862 r2!3249)))))))

(declare-fun b!7603196 () Bool)

(assert (=> b!7603196 (= e!4522997 call!698111)))

(declare-fun b!7603197 () Bool)

(declare-fun e!4523000 () Bool)

(assert (=> b!7603197 (= e!4522994 e!4523000)))

(declare-fun res!3044431 () Bool)

(assert (=> b!7603197 (= res!3044431 (not (nullable!8806 (reg!20504 r2!3249))))))

(assert (=> b!7603197 (=> (not res!3044431) (not e!4523000))))

(declare-fun b!7603198 () Bool)

(assert (=> b!7603198 (= e!4523000 call!698109)))

(declare-fun b!7603199 () Bool)

(assert (=> b!7603199 (= e!4522998 e!4522994)))

(assert (=> b!7603199 (= c!1402352 ((_ is Star!20175) r2!3249))))

(assert (= (and d!2321573 (not res!3044430)) b!7603199))

(assert (= (and b!7603199 c!1402352) b!7603197))

(assert (= (and b!7603199 (not c!1402352)) b!7603191))

(assert (= (and b!7603197 res!3044431) b!7603198))

(assert (= (and b!7603191 c!1402353) b!7603193))

(assert (= (and b!7603191 (not c!1402353)) b!7603195))

(assert (= (and b!7603193 res!3044433) b!7603196))

(assert (= (and b!7603195 (not res!3044432)) b!7603194))

(assert (= (and b!7603194 res!3044434) b!7603192))

(assert (= (or b!7603196 b!7603194) bm!698105))

(assert (= (or b!7603193 b!7603192) bm!698104))

(assert (= (or b!7603198 bm!698104) bm!698106))

(declare-fun m!8145714 () Bool)

(assert (=> bm!698105 m!8145714))

(declare-fun m!8145716 () Bool)

(assert (=> bm!698106 m!8145716))

(declare-fun m!8145718 () Bool)

(assert (=> b!7603197 m!8145718))

(assert (=> b!7602908 d!2321573))

(declare-fun b!7603213 () Bool)

(declare-fun e!4523003 () Bool)

(declare-fun tp!2217220 () Bool)

(declare-fun tp!2217221 () Bool)

(assert (=> b!7603213 (= e!4523003 (and tp!2217220 tp!2217221))))

(assert (=> b!7602905 (= tp!2217200 e!4523003)))

(declare-fun b!7603211 () Bool)

(declare-fun tp!2217222 () Bool)

(declare-fun tp!2217223 () Bool)

(assert (=> b!7603211 (= e!4523003 (and tp!2217222 tp!2217223))))

(declare-fun b!7603210 () Bool)

(assert (=> b!7603210 (= e!4523003 tp_is_empty!50705)))

(declare-fun b!7603212 () Bool)

(declare-fun tp!2217224 () Bool)

(assert (=> b!7603212 (= e!4523003 tp!2217224)))

(assert (= (and b!7602905 ((_ is ElementMatch!20175) (regOne!40863 r1!3349))) b!7603210))

(assert (= (and b!7602905 ((_ is Concat!29020) (regOne!40863 r1!3349))) b!7603211))

(assert (= (and b!7602905 ((_ is Star!20175) (regOne!40863 r1!3349))) b!7603212))

(assert (= (and b!7602905 ((_ is Union!20175) (regOne!40863 r1!3349))) b!7603213))

(declare-fun b!7603228 () Bool)

(declare-fun e!4523011 () Bool)

(declare-fun tp!2217225 () Bool)

(declare-fun tp!2217226 () Bool)

(assert (=> b!7603228 (= e!4523011 (and tp!2217225 tp!2217226))))

(assert (=> b!7602905 (= tp!2217206 e!4523011)))

(declare-fun b!7603226 () Bool)

(declare-fun tp!2217227 () Bool)

(declare-fun tp!2217228 () Bool)

(assert (=> b!7603226 (= e!4523011 (and tp!2217227 tp!2217228))))

(declare-fun b!7603225 () Bool)

(assert (=> b!7603225 (= e!4523011 tp_is_empty!50705)))

(declare-fun b!7603227 () Bool)

(declare-fun tp!2217229 () Bool)

(assert (=> b!7603227 (= e!4523011 tp!2217229)))

(assert (= (and b!7602905 ((_ is ElementMatch!20175) (regTwo!40863 r1!3349))) b!7603225))

(assert (= (and b!7602905 ((_ is Concat!29020) (regTwo!40863 r1!3349))) b!7603226))

(assert (= (and b!7602905 ((_ is Star!20175) (regTwo!40863 r1!3349))) b!7603227))

(assert (= (and b!7602905 ((_ is Union!20175) (regTwo!40863 r1!3349))) b!7603228))

(declare-fun b!7603232 () Bool)

(declare-fun e!4523012 () Bool)

(declare-fun tp!2217230 () Bool)

(declare-fun tp!2217231 () Bool)

(assert (=> b!7603232 (= e!4523012 (and tp!2217230 tp!2217231))))

(assert (=> b!7602911 (= tp!2217203 e!4523012)))

(declare-fun b!7603230 () Bool)

(declare-fun tp!2217232 () Bool)

(declare-fun tp!2217233 () Bool)

(assert (=> b!7603230 (= e!4523012 (and tp!2217232 tp!2217233))))

(declare-fun b!7603229 () Bool)

(assert (=> b!7603229 (= e!4523012 tp_is_empty!50705)))

(declare-fun b!7603231 () Bool)

(declare-fun tp!2217234 () Bool)

(assert (=> b!7603231 (= e!4523012 tp!2217234)))

(assert (= (and b!7602911 ((_ is ElementMatch!20175) (regOne!40862 r1!3349))) b!7603229))

(assert (= (and b!7602911 ((_ is Concat!29020) (regOne!40862 r1!3349))) b!7603230))

(assert (= (and b!7602911 ((_ is Star!20175) (regOne!40862 r1!3349))) b!7603231))

(assert (= (and b!7602911 ((_ is Union!20175) (regOne!40862 r1!3349))) b!7603232))

(declare-fun b!7603236 () Bool)

(declare-fun e!4523013 () Bool)

(declare-fun tp!2217235 () Bool)

(declare-fun tp!2217236 () Bool)

(assert (=> b!7603236 (= e!4523013 (and tp!2217235 tp!2217236))))

(assert (=> b!7602911 (= tp!2217202 e!4523013)))

(declare-fun b!7603234 () Bool)

(declare-fun tp!2217237 () Bool)

(declare-fun tp!2217238 () Bool)

(assert (=> b!7603234 (= e!4523013 (and tp!2217237 tp!2217238))))

(declare-fun b!7603233 () Bool)

(assert (=> b!7603233 (= e!4523013 tp_is_empty!50705)))

(declare-fun b!7603235 () Bool)

(declare-fun tp!2217239 () Bool)

(assert (=> b!7603235 (= e!4523013 tp!2217239)))

(assert (= (and b!7602911 ((_ is ElementMatch!20175) (regTwo!40862 r1!3349))) b!7603233))

(assert (= (and b!7602911 ((_ is Concat!29020) (regTwo!40862 r1!3349))) b!7603234))

(assert (= (and b!7602911 ((_ is Star!20175) (regTwo!40862 r1!3349))) b!7603235))

(assert (= (and b!7602911 ((_ is Union!20175) (regTwo!40862 r1!3349))) b!7603236))

(declare-fun b!7603241 () Bool)

(declare-fun e!4523016 () Bool)

(declare-fun tp!2217242 () Bool)

(assert (=> b!7603241 (= e!4523016 (and tp_is_empty!50705 tp!2217242))))

(assert (=> b!7602904 (= tp!2217204 e!4523016)))

(assert (= (and b!7602904 ((_ is Cons!72934) (t!387793 s!10235))) b!7603241))

(declare-fun b!7603245 () Bool)

(declare-fun e!4523017 () Bool)

(declare-fun tp!2217243 () Bool)

(declare-fun tp!2217244 () Bool)

(assert (=> b!7603245 (= e!4523017 (and tp!2217243 tp!2217244))))

(assert (=> b!7602915 (= tp!2217208 e!4523017)))

(declare-fun b!7603243 () Bool)

(declare-fun tp!2217245 () Bool)

(declare-fun tp!2217246 () Bool)

(assert (=> b!7603243 (= e!4523017 (and tp!2217245 tp!2217246))))

(declare-fun b!7603242 () Bool)

(assert (=> b!7603242 (= e!4523017 tp_is_empty!50705)))

(declare-fun b!7603244 () Bool)

(declare-fun tp!2217247 () Bool)

(assert (=> b!7603244 (= e!4523017 tp!2217247)))

(assert (= (and b!7602915 ((_ is ElementMatch!20175) (reg!20504 r1!3349))) b!7603242))

(assert (= (and b!7602915 ((_ is Concat!29020) (reg!20504 r1!3349))) b!7603243))

(assert (= (and b!7602915 ((_ is Star!20175) (reg!20504 r1!3349))) b!7603244))

(assert (= (and b!7602915 ((_ is Union!20175) (reg!20504 r1!3349))) b!7603245))

(declare-fun b!7603249 () Bool)

(declare-fun e!4523018 () Bool)

(declare-fun tp!2217248 () Bool)

(declare-fun tp!2217249 () Bool)

(assert (=> b!7603249 (= e!4523018 (and tp!2217248 tp!2217249))))

(assert (=> b!7602910 (= tp!2217209 e!4523018)))

(declare-fun b!7603247 () Bool)

(declare-fun tp!2217250 () Bool)

(declare-fun tp!2217251 () Bool)

(assert (=> b!7603247 (= e!4523018 (and tp!2217250 tp!2217251))))

(declare-fun b!7603246 () Bool)

(assert (=> b!7603246 (= e!4523018 tp_is_empty!50705)))

(declare-fun b!7603248 () Bool)

(declare-fun tp!2217252 () Bool)

(assert (=> b!7603248 (= e!4523018 tp!2217252)))

(assert (= (and b!7602910 ((_ is ElementMatch!20175) (reg!20504 r2!3249))) b!7603246))

(assert (= (and b!7602910 ((_ is Concat!29020) (reg!20504 r2!3249))) b!7603247))

(assert (= (and b!7602910 ((_ is Star!20175) (reg!20504 r2!3249))) b!7603248))

(assert (= (and b!7602910 ((_ is Union!20175) (reg!20504 r2!3249))) b!7603249))

(declare-fun b!7603253 () Bool)

(declare-fun e!4523019 () Bool)

(declare-fun tp!2217253 () Bool)

(declare-fun tp!2217254 () Bool)

(assert (=> b!7603253 (= e!4523019 (and tp!2217253 tp!2217254))))

(assert (=> b!7602913 (= tp!2217201 e!4523019)))

(declare-fun b!7603251 () Bool)

(declare-fun tp!2217255 () Bool)

(declare-fun tp!2217256 () Bool)

(assert (=> b!7603251 (= e!4523019 (and tp!2217255 tp!2217256))))

(declare-fun b!7603250 () Bool)

(assert (=> b!7603250 (= e!4523019 tp_is_empty!50705)))

(declare-fun b!7603252 () Bool)

(declare-fun tp!2217257 () Bool)

(assert (=> b!7603252 (= e!4523019 tp!2217257)))

(assert (= (and b!7602913 ((_ is ElementMatch!20175) (regOne!40863 r2!3249))) b!7603250))

(assert (= (and b!7602913 ((_ is Concat!29020) (regOne!40863 r2!3249))) b!7603251))

(assert (= (and b!7602913 ((_ is Star!20175) (regOne!40863 r2!3249))) b!7603252))

(assert (= (and b!7602913 ((_ is Union!20175) (regOne!40863 r2!3249))) b!7603253))

(declare-fun b!7603257 () Bool)

(declare-fun e!4523020 () Bool)

(declare-fun tp!2217258 () Bool)

(declare-fun tp!2217259 () Bool)

(assert (=> b!7603257 (= e!4523020 (and tp!2217258 tp!2217259))))

(assert (=> b!7602913 (= tp!2217207 e!4523020)))

(declare-fun b!7603255 () Bool)

(declare-fun tp!2217260 () Bool)

(declare-fun tp!2217261 () Bool)

(assert (=> b!7603255 (= e!4523020 (and tp!2217260 tp!2217261))))

(declare-fun b!7603254 () Bool)

(assert (=> b!7603254 (= e!4523020 tp_is_empty!50705)))

(declare-fun b!7603256 () Bool)

(declare-fun tp!2217262 () Bool)

(assert (=> b!7603256 (= e!4523020 tp!2217262)))

(assert (= (and b!7602913 ((_ is ElementMatch!20175) (regTwo!40863 r2!3249))) b!7603254))

(assert (= (and b!7602913 ((_ is Concat!29020) (regTwo!40863 r2!3249))) b!7603255))

(assert (= (and b!7602913 ((_ is Star!20175) (regTwo!40863 r2!3249))) b!7603256))

(assert (= (and b!7602913 ((_ is Union!20175) (regTwo!40863 r2!3249))) b!7603257))

(declare-fun b!7603261 () Bool)

(declare-fun e!4523021 () Bool)

(declare-fun tp!2217263 () Bool)

(declare-fun tp!2217264 () Bool)

(assert (=> b!7603261 (= e!4523021 (and tp!2217263 tp!2217264))))

(assert (=> b!7602903 (= tp!2217199 e!4523021)))

(declare-fun b!7603259 () Bool)

(declare-fun tp!2217265 () Bool)

(declare-fun tp!2217266 () Bool)

(assert (=> b!7603259 (= e!4523021 (and tp!2217265 tp!2217266))))

(declare-fun b!7603258 () Bool)

(assert (=> b!7603258 (= e!4523021 tp_is_empty!50705)))

(declare-fun b!7603260 () Bool)

(declare-fun tp!2217267 () Bool)

(assert (=> b!7603260 (= e!4523021 tp!2217267)))

(assert (= (and b!7602903 ((_ is ElementMatch!20175) (regOne!40862 r2!3249))) b!7603258))

(assert (= (and b!7602903 ((_ is Concat!29020) (regOne!40862 r2!3249))) b!7603259))

(assert (= (and b!7602903 ((_ is Star!20175) (regOne!40862 r2!3249))) b!7603260))

(assert (= (and b!7602903 ((_ is Union!20175) (regOne!40862 r2!3249))) b!7603261))

(declare-fun b!7603265 () Bool)

(declare-fun e!4523022 () Bool)

(declare-fun tp!2217268 () Bool)

(declare-fun tp!2217269 () Bool)

(assert (=> b!7603265 (= e!4523022 (and tp!2217268 tp!2217269))))

(assert (=> b!7602903 (= tp!2217205 e!4523022)))

(declare-fun b!7603263 () Bool)

(declare-fun tp!2217270 () Bool)

(declare-fun tp!2217271 () Bool)

(assert (=> b!7603263 (= e!4523022 (and tp!2217270 tp!2217271))))

(declare-fun b!7603262 () Bool)

(assert (=> b!7603262 (= e!4523022 tp_is_empty!50705)))

(declare-fun b!7603264 () Bool)

(declare-fun tp!2217272 () Bool)

(assert (=> b!7603264 (= e!4523022 tp!2217272)))

(assert (= (and b!7602903 ((_ is ElementMatch!20175) (regTwo!40862 r2!3249))) b!7603262))

(assert (= (and b!7602903 ((_ is Concat!29020) (regTwo!40862 r2!3249))) b!7603263))

(assert (= (and b!7602903 ((_ is Star!20175) (regTwo!40862 r2!3249))) b!7603264))

(assert (= (and b!7602903 ((_ is Union!20175) (regTwo!40862 r2!3249))) b!7603265))

(declare-fun b_lambda!288919 () Bool)

(assert (= b_lambda!288915 (or b!7602906 b_lambda!288919)))

(declare-fun bs!1942482 () Bool)

(declare-fun d!2321575 () Bool)

(assert (= bs!1942482 (and d!2321575 b!7602906)))

(declare-fun res!3044438 () Bool)

(declare-fun e!4523023 () Bool)

(assert (=> bs!1942482 (=> (not res!3044438) (not e!4523023))))

(assert (=> bs!1942482 (= res!3044438 (= (++!17575 (_1!37835 lt!2654546) (_2!37835 lt!2654546)) s!10235))))

(assert (=> bs!1942482 (= (dynLambda!29899 lambda!467847 lt!2654546) e!4523023)))

(declare-fun b!7603266 () Bool)

(declare-fun res!3044439 () Bool)

(assert (=> b!7603266 (=> (not res!3044439) (not e!4523023))))

(assert (=> b!7603266 (= res!3044439 (matchR!9740 r1!3349 (_1!37835 lt!2654546)))))

(declare-fun b!7603267 () Bool)

(assert (=> b!7603267 (= e!4523023 (matchR!9740 r2!3249 (_2!37835 lt!2654546)))))

(assert (= (and bs!1942482 res!3044438) b!7603266))

(assert (= (and b!7603266 res!3044439) b!7603267))

(declare-fun m!8145726 () Bool)

(assert (=> bs!1942482 m!8145726))

(declare-fun m!8145728 () Bool)

(assert (=> b!7603266 m!8145728))

(declare-fun m!8145730 () Bool)

(assert (=> b!7603267 m!8145730))

(assert (=> d!2321537 d!2321575))

(check-sat (not b!7603245) (not b!7603124) (not b!7603234) (not b!7603128) (not d!2321567) (not b!7603109) (not bm!698102) (not b!7603251) (not bm!698103) (not bm!698083) (not b!7603267) (not b!7603123) (not b!7603104) (not b!7603235) (not b!7603244) (not d!2321541) (not d!2321539) tp_is_empty!50705 (not b!7603255) (not b!7603118) (not b!7603131) (not b!7603018) (not b!7603257) (not b_lambda!288919) (not bs!1942482) (not b!7603114) (not bm!698105) (not b!7603026) (not b!7603212) (not b!7603265) (not bm!698089) (not b!7603228) (not b!7603263) (not b!7603256) (not b!7603260) (not b!7603232) (not d!2321535) (not b!7603261) (not b!7602930) (not b!7603241) (not b!7603188) (not bm!698081) (not b!7602929) (not b!7603213) (not b!7603253) (not bm!698080) (not b!7603211) (not b!7603110) (not d!2321537) (not b!7603197) (not b!7603130) (not bm!698082) (not b!7603243) (not b!7603015) (not bm!698106) (not b!7603247) (not b!7603117) (not b!7603236) (not b!7603230) (not b!7603249) (not bm!698090) (not b!7603029) (not b!7603248) (not b!7603264) (not b!7603266) (not b!7603231) (not b!7603259) (not d!2321563) (not b!7603252) (not b!7603116) (not d!2321569) (not b!7603226) (not b!7603227))
(check-sat)

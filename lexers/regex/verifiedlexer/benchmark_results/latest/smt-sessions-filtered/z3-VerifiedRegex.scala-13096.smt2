; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!716608 () Bool)

(assert start!716608)

(declare-fun b!7336056 () Bool)

(declare-fun e!4392877 () Bool)

(declare-fun tp!2082489 () Bool)

(declare-fun tp!2082487 () Bool)

(assert (=> b!7336056 (= e!4392877 (and tp!2082489 tp!2082487))))

(declare-fun b!7336057 () Bool)

(declare-fun e!4392878 () Bool)

(declare-fun tp!2082485 () Bool)

(assert (=> b!7336057 (= e!4392878 tp!2082485)))

(declare-fun res!2964251 () Bool)

(declare-fun e!4392880 () Bool)

(assert (=> start!716608 (=> (not res!2964251) (not e!4392880))))

(declare-datatypes ((C!38436 0))(
  ( (C!38437 (val!29578 Int)) )
))
(declare-datatypes ((Regex!19081 0))(
  ( (ElementMatch!19081 (c!1362563 C!38436)) (Concat!27926 (regOne!38674 Regex!19081) (regTwo!38674 Regex!19081)) (EmptyExpr!19081) (Star!19081 (reg!19410 Regex!19081)) (EmptyLang!19081) (Union!19081 (regOne!38675 Regex!19081) (regTwo!38675 Regex!19081)) )
))
(declare-fun r1!2370 () Regex!19081)

(declare-fun validRegex!9677 (Regex!19081) Bool)

(assert (=> start!716608 (= res!2964251 (validRegex!9677 r1!2370))))

(assert (=> start!716608 e!4392880))

(declare-fun tp_is_empty!48407 () Bool)

(assert (=> start!716608 tp_is_empty!48407))

(declare-datatypes ((List!71577 0))(
  ( (Nil!71453) (Cons!71453 (h!77901 Regex!19081) (t!385972 List!71577)) )
))
(declare-datatypes ((Context!16042 0))(
  ( (Context!16043 (exprs!8521 List!71577)) )
))
(declare-fun cWitness!61 () Context!16042)

(declare-fun inv!91042 (Context!16042) Bool)

(assert (=> start!716608 (and (inv!91042 cWitness!61) e!4392878)))

(declare-fun ct1!282 () Context!16042)

(declare-fun e!4392875 () Bool)

(assert (=> start!716608 (and (inv!91042 ct1!282) e!4392875)))

(assert (=> start!716608 e!4392877))

(declare-fun ct2!378 () Context!16042)

(declare-fun e!4392876 () Bool)

(assert (=> start!716608 (and (inv!91042 ct2!378) e!4392876)))

(declare-fun b!7336058 () Bool)

(declare-fun tp!2082491 () Bool)

(declare-fun tp!2082490 () Bool)

(assert (=> b!7336058 (= e!4392877 (and tp!2082491 tp!2082490))))

(declare-fun b!7336059 () Bool)

(declare-fun e!4392879 () Bool)

(assert (=> b!7336059 (= e!4392880 e!4392879)))

(declare-fun res!2964250 () Bool)

(assert (=> b!7336059 (=> (not res!2964250) (not e!4392879))))

(declare-fun lambda!455211 () Int)

(declare-fun forall!17917 (List!71577 Int) Bool)

(assert (=> b!7336059 (= res!2964250 (forall!17917 (exprs!8521 ct1!282) lambda!455211))))

(declare-fun b!7336060 () Bool)

(declare-fun tp!2082486 () Bool)

(assert (=> b!7336060 (= e!4392876 tp!2082486)))

(declare-fun b!7336061 () Bool)

(assert (=> b!7336061 (= e!4392879 (not (forall!17917 (exprs!8521 ct2!378) lambda!455211)))))

(declare-fun b!7336062 () Bool)

(assert (=> b!7336062 (= e!4392877 tp_is_empty!48407)))

(declare-fun b!7336063 () Bool)

(declare-fun res!2964252 () Bool)

(assert (=> b!7336063 (=> (not res!2964252) (not e!4392880))))

(declare-fun c!10362 () C!38436)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2907 (Regex!19081 Context!16042 C!38436) (InoxSet Context!16042))

(assert (=> b!7336063 (= res!2964252 (select (derivationStepZipperDown!2907 r1!2370 ct1!282 c!10362) cWitness!61))))

(declare-fun b!7336064 () Bool)

(declare-fun tp!2082488 () Bool)

(assert (=> b!7336064 (= e!4392875 tp!2082488)))

(declare-fun b!7336065 () Bool)

(declare-fun tp!2082484 () Bool)

(assert (=> b!7336065 (= e!4392877 tp!2082484)))

(assert (= (and start!716608 res!2964251) b!7336063))

(assert (= (and b!7336063 res!2964252) b!7336059))

(assert (= (and b!7336059 res!2964250) b!7336061))

(assert (= start!716608 b!7336057))

(assert (= start!716608 b!7336064))

(get-info :version)

(assert (= (and start!716608 ((_ is ElementMatch!19081) r1!2370)) b!7336062))

(assert (= (and start!716608 ((_ is Concat!27926) r1!2370)) b!7336056))

(assert (= (and start!716608 ((_ is Star!19081) r1!2370)) b!7336065))

(assert (= (and start!716608 ((_ is Union!19081) r1!2370)) b!7336058))

(assert (= start!716608 b!7336060))

(declare-fun m!8001918 () Bool)

(assert (=> start!716608 m!8001918))

(declare-fun m!8001920 () Bool)

(assert (=> start!716608 m!8001920))

(declare-fun m!8001922 () Bool)

(assert (=> start!716608 m!8001922))

(declare-fun m!8001924 () Bool)

(assert (=> start!716608 m!8001924))

(declare-fun m!8001926 () Bool)

(assert (=> b!7336059 m!8001926))

(declare-fun m!8001928 () Bool)

(assert (=> b!7336061 m!8001928))

(declare-fun m!8001930 () Bool)

(assert (=> b!7336063 m!8001930))

(declare-fun m!8001932 () Bool)

(assert (=> b!7336063 m!8001932))

(check-sat (not start!716608) (not b!7336060) tp_is_empty!48407 (not b!7336058) (not b!7336063) (not b!7336064) (not b!7336059) (not b!7336061) (not b!7336065) (not b!7336057) (not b!7336056))
(check-sat)
(get-model)

(declare-fun d!2278073 () Bool)

(declare-fun res!2964261 () Bool)

(declare-fun e!4392889 () Bool)

(assert (=> d!2278073 (=> res!2964261 e!4392889)))

(assert (=> d!2278073 (= res!2964261 ((_ is Nil!71453) (exprs!8521 ct1!282)))))

(assert (=> d!2278073 (= (forall!17917 (exprs!8521 ct1!282) lambda!455211) e!4392889)))

(declare-fun b!7336074 () Bool)

(declare-fun e!4392890 () Bool)

(assert (=> b!7336074 (= e!4392889 e!4392890)))

(declare-fun res!2964262 () Bool)

(assert (=> b!7336074 (=> (not res!2964262) (not e!4392890))))

(declare-fun dynLambda!29433 (Int Regex!19081) Bool)

(assert (=> b!7336074 (= res!2964262 (dynLambda!29433 lambda!455211 (h!77901 (exprs!8521 ct1!282))))))

(declare-fun b!7336075 () Bool)

(assert (=> b!7336075 (= e!4392890 (forall!17917 (t!385972 (exprs!8521 ct1!282)) lambda!455211))))

(assert (= (and d!2278073 (not res!2964261)) b!7336074))

(assert (= (and b!7336074 res!2964262) b!7336075))

(declare-fun b_lambda!283725 () Bool)

(assert (=> (not b_lambda!283725) (not b!7336074)))

(declare-fun m!8001935 () Bool)

(assert (=> b!7336074 m!8001935))

(declare-fun m!8001940 () Bool)

(assert (=> b!7336075 m!8001940))

(assert (=> b!7336059 d!2278073))

(declare-fun bm!668986 () Bool)

(declare-fun call!668991 () Bool)

(declare-fun call!668993 () Bool)

(assert (=> bm!668986 (= call!668991 call!668993)))

(declare-fun b!7336123 () Bool)

(declare-fun res!2964293 () Bool)

(declare-fun e!4392930 () Bool)

(assert (=> b!7336123 (=> res!2964293 e!4392930)))

(assert (=> b!7336123 (= res!2964293 (not ((_ is Concat!27926) r1!2370)))))

(declare-fun e!4392928 () Bool)

(assert (=> b!7336123 (= e!4392928 e!4392930)))

(declare-fun c!1362574 () Bool)

(declare-fun c!1362575 () Bool)

(declare-fun bm!668987 () Bool)

(assert (=> bm!668987 (= call!668993 (validRegex!9677 (ite c!1362575 (reg!19410 r1!2370) (ite c!1362574 (regOne!38675 r1!2370) (regTwo!38674 r1!2370)))))))

(declare-fun b!7336124 () Bool)

(declare-fun e!4392931 () Bool)

(declare-fun call!668992 () Bool)

(assert (=> b!7336124 (= e!4392931 call!668992)))

(declare-fun d!2278077 () Bool)

(declare-fun res!2964292 () Bool)

(declare-fun e!4392929 () Bool)

(assert (=> d!2278077 (=> res!2964292 e!4392929)))

(assert (=> d!2278077 (= res!2964292 ((_ is ElementMatch!19081) r1!2370))))

(assert (=> d!2278077 (= (validRegex!9677 r1!2370) e!4392929)))

(declare-fun b!7336125 () Bool)

(declare-fun e!4392933 () Bool)

(assert (=> b!7336125 (= e!4392933 call!668993)))

(declare-fun b!7336126 () Bool)

(declare-fun e!4392932 () Bool)

(assert (=> b!7336126 (= e!4392929 e!4392932)))

(assert (=> b!7336126 (= c!1362575 ((_ is Star!19081) r1!2370))))

(declare-fun b!7336127 () Bool)

(assert (=> b!7336127 (= e!4392932 e!4392928)))

(assert (=> b!7336127 (= c!1362574 ((_ is Union!19081) r1!2370))))

(declare-fun b!7336128 () Bool)

(declare-fun e!4392934 () Bool)

(assert (=> b!7336128 (= e!4392930 e!4392934)))

(declare-fun res!2964290 () Bool)

(assert (=> b!7336128 (=> (not res!2964290) (not e!4392934))))

(assert (=> b!7336128 (= res!2964290 call!668992)))

(declare-fun b!7336129 () Bool)

(declare-fun res!2964294 () Bool)

(assert (=> b!7336129 (=> (not res!2964294) (not e!4392931))))

(assert (=> b!7336129 (= res!2964294 call!668991)))

(assert (=> b!7336129 (= e!4392928 e!4392931)))

(declare-fun b!7336130 () Bool)

(assert (=> b!7336130 (= e!4392932 e!4392933)))

(declare-fun res!2964291 () Bool)

(declare-fun nullable!8181 (Regex!19081) Bool)

(assert (=> b!7336130 (= res!2964291 (not (nullable!8181 (reg!19410 r1!2370))))))

(assert (=> b!7336130 (=> (not res!2964291) (not e!4392933))))

(declare-fun b!7336131 () Bool)

(assert (=> b!7336131 (= e!4392934 call!668991)))

(declare-fun bm!668988 () Bool)

(assert (=> bm!668988 (= call!668992 (validRegex!9677 (ite c!1362574 (regTwo!38675 r1!2370) (regOne!38674 r1!2370))))))

(assert (= (and d!2278077 (not res!2964292)) b!7336126))

(assert (= (and b!7336126 c!1362575) b!7336130))

(assert (= (and b!7336126 (not c!1362575)) b!7336127))

(assert (= (and b!7336130 res!2964291) b!7336125))

(assert (= (and b!7336127 c!1362574) b!7336129))

(assert (= (and b!7336127 (not c!1362574)) b!7336123))

(assert (= (and b!7336129 res!2964294) b!7336124))

(assert (= (and b!7336123 (not res!2964293)) b!7336128))

(assert (= (and b!7336128 res!2964290) b!7336131))

(assert (= (or b!7336129 b!7336131) bm!668986))

(assert (= (or b!7336124 b!7336128) bm!668988))

(assert (= (or b!7336125 bm!668986) bm!668987))

(declare-fun m!8001948 () Bool)

(assert (=> bm!668987 m!8001948))

(declare-fun m!8001950 () Bool)

(assert (=> b!7336130 m!8001950))

(declare-fun m!8001952 () Bool)

(assert (=> bm!668988 m!8001952))

(assert (=> start!716608 d!2278077))

(declare-fun bs!1918029 () Bool)

(declare-fun d!2278081 () Bool)

(assert (= bs!1918029 (and d!2278081 b!7336059)))

(declare-fun lambda!455217 () Int)

(assert (=> bs!1918029 (= lambda!455217 lambda!455211)))

(assert (=> d!2278081 (= (inv!91042 cWitness!61) (forall!17917 (exprs!8521 cWitness!61) lambda!455217))))

(declare-fun bs!1918030 () Bool)

(assert (= bs!1918030 d!2278081))

(declare-fun m!8001955 () Bool)

(assert (=> bs!1918030 m!8001955))

(assert (=> start!716608 d!2278081))

(declare-fun bs!1918033 () Bool)

(declare-fun d!2278084 () Bool)

(assert (= bs!1918033 (and d!2278084 b!7336059)))

(declare-fun lambda!455219 () Int)

(assert (=> bs!1918033 (= lambda!455219 lambda!455211)))

(declare-fun bs!1918034 () Bool)

(assert (= bs!1918034 (and d!2278084 d!2278081)))

(assert (=> bs!1918034 (= lambda!455219 lambda!455217)))

(assert (=> d!2278084 (= (inv!91042 ct1!282) (forall!17917 (exprs!8521 ct1!282) lambda!455219))))

(declare-fun bs!1918036 () Bool)

(assert (= bs!1918036 d!2278084))

(declare-fun m!8001958 () Bool)

(assert (=> bs!1918036 m!8001958))

(assert (=> start!716608 d!2278084))

(declare-fun bs!1918039 () Bool)

(declare-fun d!2278087 () Bool)

(assert (= bs!1918039 (and d!2278087 b!7336059)))

(declare-fun lambda!455220 () Int)

(assert (=> bs!1918039 (= lambda!455220 lambda!455211)))

(declare-fun bs!1918041 () Bool)

(assert (= bs!1918041 (and d!2278087 d!2278081)))

(assert (=> bs!1918041 (= lambda!455220 lambda!455217)))

(declare-fun bs!1918043 () Bool)

(assert (= bs!1918043 (and d!2278087 d!2278084)))

(assert (=> bs!1918043 (= lambda!455220 lambda!455219)))

(assert (=> d!2278087 (= (inv!91042 ct2!378) (forall!17917 (exprs!8521 ct2!378) lambda!455220))))

(declare-fun bs!1918045 () Bool)

(assert (= bs!1918045 d!2278087))

(declare-fun m!8001964 () Bool)

(assert (=> bs!1918045 m!8001964))

(assert (=> start!716608 d!2278087))

(declare-fun d!2278093 () Bool)

(declare-fun res!2964296 () Bool)

(declare-fun e!4392936 () Bool)

(assert (=> d!2278093 (=> res!2964296 e!4392936)))

(assert (=> d!2278093 (= res!2964296 ((_ is Nil!71453) (exprs!8521 ct2!378)))))

(assert (=> d!2278093 (= (forall!17917 (exprs!8521 ct2!378) lambda!455211) e!4392936)))

(declare-fun b!7336133 () Bool)

(declare-fun e!4392938 () Bool)

(assert (=> b!7336133 (= e!4392936 e!4392938)))

(declare-fun res!2964298 () Bool)

(assert (=> b!7336133 (=> (not res!2964298) (not e!4392938))))

(assert (=> b!7336133 (= res!2964298 (dynLambda!29433 lambda!455211 (h!77901 (exprs!8521 ct2!378))))))

(declare-fun b!7336135 () Bool)

(assert (=> b!7336135 (= e!4392938 (forall!17917 (t!385972 (exprs!8521 ct2!378)) lambda!455211))))

(assert (= (and d!2278093 (not res!2964296)) b!7336133))

(assert (= (and b!7336133 res!2964298) b!7336135))

(declare-fun b_lambda!283729 () Bool)

(assert (=> (not b_lambda!283729) (not b!7336133)))

(declare-fun m!8001968 () Bool)

(assert (=> b!7336133 m!8001968))

(declare-fun m!8001972 () Bool)

(assert (=> b!7336135 m!8001972))

(assert (=> b!7336061 d!2278093))

(declare-fun bm!669019 () Bool)

(declare-fun call!669028 () List!71577)

(declare-fun call!669024 () List!71577)

(assert (=> bm!669019 (= call!669028 call!669024)))

(declare-fun bm!669020 () Bool)

(declare-fun call!669026 () (InoxSet Context!16042))

(declare-fun call!669029 () (InoxSet Context!16042))

(assert (=> bm!669020 (= call!669026 call!669029)))

(declare-fun bm!669021 () Bool)

(declare-fun c!1362605 () Bool)

(declare-fun call!669025 () (InoxSet Context!16042))

(assert (=> bm!669021 (= call!669025 (derivationStepZipperDown!2907 (ite c!1362605 (regOne!38675 r1!2370) (regOne!38674 r1!2370)) (ite c!1362605 ct1!282 (Context!16043 call!669024)) c!10362))))

(declare-fun b!7336191 () Bool)

(declare-fun e!4392971 () (InoxSet Context!16042))

(declare-fun e!4392969 () (InoxSet Context!16042))

(assert (=> b!7336191 (= e!4392971 e!4392969)))

(assert (=> b!7336191 (= c!1362605 ((_ is Union!19081) r1!2370))))

(declare-fun bm!669022 () Bool)

(declare-fun call!669027 () (InoxSet Context!16042))

(assert (=> bm!669022 (= call!669029 call!669027)))

(declare-fun b!7336192 () Bool)

(assert (=> b!7336192 (= e!4392969 ((_ map or) call!669025 call!669027))))

(declare-fun b!7336193 () Bool)

(declare-fun e!4392974 () (InoxSet Context!16042))

(assert (=> b!7336193 (= e!4392974 call!669026)))

(declare-fun b!7336194 () Bool)

(assert (=> b!7336194 (= e!4392971 (store ((as const (Array Context!16042 Bool)) false) ct1!282 true))))

(declare-fun bm!669023 () Bool)

(declare-fun c!1362604 () Bool)

(declare-fun c!1362603 () Bool)

(declare-fun $colon$colon!3086 (List!71577 Regex!19081) List!71577)

(assert (=> bm!669023 (= call!669024 ($colon$colon!3086 (exprs!8521 ct1!282) (ite (or c!1362604 c!1362603) (regTwo!38674 r1!2370) r1!2370)))))

(declare-fun b!7336195 () Bool)

(assert (=> b!7336195 (= e!4392974 ((as const (Array Context!16042 Bool)) false))))

(declare-fun b!7336196 () Bool)

(declare-fun e!4392972 () (InoxSet Context!16042))

(assert (=> b!7336196 (= e!4392972 call!669026)))

(declare-fun b!7336198 () Bool)

(declare-fun c!1362601 () Bool)

(assert (=> b!7336198 (= c!1362601 ((_ is Star!19081) r1!2370))))

(assert (=> b!7336198 (= e!4392972 e!4392974)))

(declare-fun bm!669024 () Bool)

(assert (=> bm!669024 (= call!669027 (derivationStepZipperDown!2907 (ite c!1362605 (regTwo!38675 r1!2370) (ite c!1362604 (regTwo!38674 r1!2370) (ite c!1362603 (regOne!38674 r1!2370) (reg!19410 r1!2370)))) (ite (or c!1362605 c!1362604) ct1!282 (Context!16043 call!669028)) c!10362))))

(declare-fun b!7336199 () Bool)

(declare-fun e!4392973 () Bool)

(assert (=> b!7336199 (= c!1362604 e!4392973)))

(declare-fun res!2964304 () Bool)

(assert (=> b!7336199 (=> (not res!2964304) (not e!4392973))))

(assert (=> b!7336199 (= res!2964304 ((_ is Concat!27926) r1!2370))))

(declare-fun e!4392970 () (InoxSet Context!16042))

(assert (=> b!7336199 (= e!4392969 e!4392970)))

(declare-fun b!7336197 () Bool)

(assert (=> b!7336197 (= e!4392970 e!4392972)))

(assert (=> b!7336197 (= c!1362603 ((_ is Concat!27926) r1!2370))))

(declare-fun d!2278097 () Bool)

(declare-fun c!1362602 () Bool)

(assert (=> d!2278097 (= c!1362602 (and ((_ is ElementMatch!19081) r1!2370) (= (c!1362563 r1!2370) c!10362)))))

(assert (=> d!2278097 (= (derivationStepZipperDown!2907 r1!2370 ct1!282 c!10362) e!4392971)))

(declare-fun b!7336200 () Bool)

(assert (=> b!7336200 (= e!4392970 ((_ map or) call!669025 call!669029))))

(declare-fun b!7336201 () Bool)

(assert (=> b!7336201 (= e!4392973 (nullable!8181 (regOne!38674 r1!2370)))))

(assert (= (and d!2278097 c!1362602) b!7336194))

(assert (= (and d!2278097 (not c!1362602)) b!7336191))

(assert (= (and b!7336191 c!1362605) b!7336192))

(assert (= (and b!7336191 (not c!1362605)) b!7336199))

(assert (= (and b!7336199 res!2964304) b!7336201))

(assert (= (and b!7336199 c!1362604) b!7336200))

(assert (= (and b!7336199 (not c!1362604)) b!7336197))

(assert (= (and b!7336197 c!1362603) b!7336196))

(assert (= (and b!7336197 (not c!1362603)) b!7336198))

(assert (= (and b!7336198 c!1362601) b!7336193))

(assert (= (and b!7336198 (not c!1362601)) b!7336195))

(assert (= (or b!7336196 b!7336193) bm!669019))

(assert (= (or b!7336196 b!7336193) bm!669020))

(assert (= (or b!7336200 bm!669020) bm!669022))

(assert (= (or b!7336200 bm!669019) bm!669023))

(assert (= (or b!7336192 bm!669022) bm!669024))

(assert (= (or b!7336192 b!7336200) bm!669021))

(declare-fun m!8001984 () Bool)

(assert (=> bm!669023 m!8001984))

(declare-fun m!8001986 () Bool)

(assert (=> bm!669021 m!8001986))

(declare-fun m!8001988 () Bool)

(assert (=> b!7336194 m!8001988))

(declare-fun m!8001990 () Bool)

(assert (=> bm!669024 m!8001990))

(declare-fun m!8001992 () Bool)

(assert (=> b!7336201 m!8001992))

(assert (=> b!7336063 d!2278097))

(declare-fun b!7336228 () Bool)

(declare-fun e!4392982 () Bool)

(declare-fun tp!2082522 () Bool)

(declare-fun tp!2082518 () Bool)

(assert (=> b!7336228 (= e!4392982 (and tp!2082522 tp!2082518))))

(declare-fun b!7336229 () Bool)

(declare-fun tp!2082520 () Bool)

(assert (=> b!7336229 (= e!4392982 tp!2082520)))

(declare-fun b!7336230 () Bool)

(declare-fun tp!2082521 () Bool)

(declare-fun tp!2082519 () Bool)

(assert (=> b!7336230 (= e!4392982 (and tp!2082521 tp!2082519))))

(assert (=> b!7336065 (= tp!2082484 e!4392982)))

(declare-fun b!7336227 () Bool)

(assert (=> b!7336227 (= e!4392982 tp_is_empty!48407)))

(assert (= (and b!7336065 ((_ is ElementMatch!19081) (reg!19410 r1!2370))) b!7336227))

(assert (= (and b!7336065 ((_ is Concat!27926) (reg!19410 r1!2370))) b!7336228))

(assert (= (and b!7336065 ((_ is Star!19081) (reg!19410 r1!2370))) b!7336229))

(assert (= (and b!7336065 ((_ is Union!19081) (reg!19410 r1!2370))) b!7336230))

(declare-fun b!7336243 () Bool)

(declare-fun e!4392987 () Bool)

(declare-fun tp!2082537 () Bool)

(declare-fun tp!2082538 () Bool)

(assert (=> b!7336243 (= e!4392987 (and tp!2082537 tp!2082538))))

(assert (=> b!7336060 (= tp!2082486 e!4392987)))

(assert (= (and b!7336060 ((_ is Cons!71453) (exprs!8521 ct2!378))) b!7336243))

(declare-fun b!7336246 () Bool)

(declare-fun e!4392989 () Bool)

(declare-fun tp!2082545 () Bool)

(declare-fun tp!2082540 () Bool)

(assert (=> b!7336246 (= e!4392989 (and tp!2082545 tp!2082540))))

(declare-fun b!7336247 () Bool)

(declare-fun tp!2082543 () Bool)

(assert (=> b!7336247 (= e!4392989 tp!2082543)))

(declare-fun b!7336248 () Bool)

(declare-fun tp!2082544 () Bool)

(declare-fun tp!2082542 () Bool)

(assert (=> b!7336248 (= e!4392989 (and tp!2082544 tp!2082542))))

(assert (=> b!7336056 (= tp!2082489 e!4392989)))

(declare-fun b!7336245 () Bool)

(assert (=> b!7336245 (= e!4392989 tp_is_empty!48407)))

(assert (= (and b!7336056 ((_ is ElementMatch!19081) (regOne!38674 r1!2370))) b!7336245))

(assert (= (and b!7336056 ((_ is Concat!27926) (regOne!38674 r1!2370))) b!7336246))

(assert (= (and b!7336056 ((_ is Star!19081) (regOne!38674 r1!2370))) b!7336247))

(assert (= (and b!7336056 ((_ is Union!19081) (regOne!38674 r1!2370))) b!7336248))

(declare-fun b!7336254 () Bool)

(declare-fun e!4392991 () Bool)

(declare-fun tp!2082555 () Bool)

(declare-fun tp!2082551 () Bool)

(assert (=> b!7336254 (= e!4392991 (and tp!2082555 tp!2082551))))

(declare-fun b!7336255 () Bool)

(declare-fun tp!2082553 () Bool)

(assert (=> b!7336255 (= e!4392991 tp!2082553)))

(declare-fun b!7336256 () Bool)

(declare-fun tp!2082554 () Bool)

(declare-fun tp!2082552 () Bool)

(assert (=> b!7336256 (= e!4392991 (and tp!2082554 tp!2082552))))

(assert (=> b!7336056 (= tp!2082487 e!4392991)))

(declare-fun b!7336253 () Bool)

(assert (=> b!7336253 (= e!4392991 tp_is_empty!48407)))

(assert (= (and b!7336056 ((_ is ElementMatch!19081) (regTwo!38674 r1!2370))) b!7336253))

(assert (= (and b!7336056 ((_ is Concat!27926) (regTwo!38674 r1!2370))) b!7336254))

(assert (= (and b!7336056 ((_ is Star!19081) (regTwo!38674 r1!2370))) b!7336255))

(assert (= (and b!7336056 ((_ is Union!19081) (regTwo!38674 r1!2370))) b!7336256))

(declare-fun b!7336262 () Bool)

(declare-fun e!4392994 () Bool)

(declare-fun tp!2082563 () Bool)

(declare-fun tp!2082564 () Bool)

(assert (=> b!7336262 (= e!4392994 (and tp!2082563 tp!2082564))))

(assert (=> b!7336057 (= tp!2082485 e!4392994)))

(assert (= (and b!7336057 ((_ is Cons!71453) (exprs!8521 cWitness!61))) b!7336262))

(declare-fun b!7336263 () Bool)

(declare-fun e!4392995 () Bool)

(declare-fun tp!2082565 () Bool)

(declare-fun tp!2082566 () Bool)

(assert (=> b!7336263 (= e!4392995 (and tp!2082565 tp!2082566))))

(assert (=> b!7336064 (= tp!2082488 e!4392995)))

(assert (= (and b!7336064 ((_ is Cons!71453) (exprs!8521 ct1!282))) b!7336263))

(declare-fun b!7336269 () Bool)

(declare-fun e!4392997 () Bool)

(declare-fun tp!2082576 () Bool)

(declare-fun tp!2082572 () Bool)

(assert (=> b!7336269 (= e!4392997 (and tp!2082576 tp!2082572))))

(declare-fun b!7336270 () Bool)

(declare-fun tp!2082574 () Bool)

(assert (=> b!7336270 (= e!4392997 tp!2082574)))

(declare-fun b!7336271 () Bool)

(declare-fun tp!2082575 () Bool)

(declare-fun tp!2082573 () Bool)

(assert (=> b!7336271 (= e!4392997 (and tp!2082575 tp!2082573))))

(assert (=> b!7336058 (= tp!2082491 e!4392997)))

(declare-fun b!7336268 () Bool)

(assert (=> b!7336268 (= e!4392997 tp_is_empty!48407)))

(assert (= (and b!7336058 ((_ is ElementMatch!19081) (regOne!38675 r1!2370))) b!7336268))

(assert (= (and b!7336058 ((_ is Concat!27926) (regOne!38675 r1!2370))) b!7336269))

(assert (= (and b!7336058 ((_ is Star!19081) (regOne!38675 r1!2370))) b!7336270))

(assert (= (and b!7336058 ((_ is Union!19081) (regOne!38675 r1!2370))) b!7336271))

(declare-fun b!7336273 () Bool)

(declare-fun e!4392998 () Bool)

(declare-fun tp!2082581 () Bool)

(declare-fun tp!2082577 () Bool)

(assert (=> b!7336273 (= e!4392998 (and tp!2082581 tp!2082577))))

(declare-fun b!7336274 () Bool)

(declare-fun tp!2082579 () Bool)

(assert (=> b!7336274 (= e!4392998 tp!2082579)))

(declare-fun b!7336275 () Bool)

(declare-fun tp!2082580 () Bool)

(declare-fun tp!2082578 () Bool)

(assert (=> b!7336275 (= e!4392998 (and tp!2082580 tp!2082578))))

(assert (=> b!7336058 (= tp!2082490 e!4392998)))

(declare-fun b!7336272 () Bool)

(assert (=> b!7336272 (= e!4392998 tp_is_empty!48407)))

(assert (= (and b!7336058 ((_ is ElementMatch!19081) (regTwo!38675 r1!2370))) b!7336272))

(assert (= (and b!7336058 ((_ is Concat!27926) (regTwo!38675 r1!2370))) b!7336273))

(assert (= (and b!7336058 ((_ is Star!19081) (regTwo!38675 r1!2370))) b!7336274))

(assert (= (and b!7336058 ((_ is Union!19081) (regTwo!38675 r1!2370))) b!7336275))

(declare-fun b_lambda!283735 () Bool)

(assert (= b_lambda!283725 (or b!7336059 b_lambda!283735)))

(declare-fun bs!1918048 () Bool)

(declare-fun d!2278103 () Bool)

(assert (= bs!1918048 (and d!2278103 b!7336059)))

(assert (=> bs!1918048 (= (dynLambda!29433 lambda!455211 (h!77901 (exprs!8521 ct1!282))) (validRegex!9677 (h!77901 (exprs!8521 ct1!282))))))

(declare-fun m!8001998 () Bool)

(assert (=> bs!1918048 m!8001998))

(assert (=> b!7336074 d!2278103))

(declare-fun b_lambda!283737 () Bool)

(assert (= b_lambda!283729 (or b!7336059 b_lambda!283737)))

(declare-fun bs!1918049 () Bool)

(declare-fun d!2278105 () Bool)

(assert (= bs!1918049 (and d!2278105 b!7336059)))

(assert (=> bs!1918049 (= (dynLambda!29433 lambda!455211 (h!77901 (exprs!8521 ct2!378))) (validRegex!9677 (h!77901 (exprs!8521 ct2!378))))))

(declare-fun m!8002000 () Bool)

(assert (=> bs!1918049 m!8002000))

(assert (=> b!7336133 d!2278105))

(check-sat (not b!7336248) (not b!7336269) tp_is_empty!48407 (not b!7336135) (not b!7336201) (not b!7336274) (not b!7336263) (not d!2278084) (not b!7336243) (not b!7336275) (not bm!669021) (not bs!1918049) (not d!2278081) (not bm!668987) (not b!7336230) (not bs!1918048) (not b!7336273) (not b!7336247) (not bm!669023) (not b!7336246) (not b!7336256) (not b!7336254) (not b!7336262) (not b!7336271) (not bm!669024) (not b!7336228) (not b_lambda!283737) (not b!7336075) (not b_lambda!283735) (not b!7336130) (not b!7336270) (not d!2278087) (not b!7336255) (not bm!668988) (not b!7336229))
(check-sat)

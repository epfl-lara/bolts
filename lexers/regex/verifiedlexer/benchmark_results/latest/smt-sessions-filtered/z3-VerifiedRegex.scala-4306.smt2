; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230512 () Bool)

(assert start!230512)

(declare-fun b!2335151 () Bool)

(declare-fun res!996124 () Bool)

(declare-fun e!1495349 () Bool)

(assert (=> b!2335151 (=> (not res!996124) (not e!1495349))))

(declare-datatypes ((C!13860 0))(
  ( (C!13861 (val!8090 Int)) )
))
(declare-datatypes ((Regex!6851 0))(
  ( (ElementMatch!6851 (c!371131 C!13860)) (Concat!11473 (regOne!14214 Regex!6851) (regTwo!14214 Regex!6851)) (EmptyExpr!6851) (Star!6851 (reg!7180 Regex!6851)) (EmptyLang!6851) (Union!6851 (regOne!14215 Regex!6851) (regTwo!14215 Regex!6851)) )
))
(declare-fun r!26197 () Regex!6851)

(get-info :version)

(assert (=> b!2335151 (= res!996124 (and (not ((_ is EmptyExpr!6851) r!26197)) (not ((_ is EmptyLang!6851) r!26197)) (not ((_ is ElementMatch!6851) r!26197)) ((_ is Union!6851) r!26197)))))

(declare-fun res!996126 () Bool)

(assert (=> start!230512 (=> (not res!996126) (not e!1495349))))

(declare-fun validRegex!2596 (Regex!6851) Bool)

(assert (=> start!230512 (= res!996126 (validRegex!2596 r!26197))))

(assert (=> start!230512 e!1495349))

(declare-fun e!1495350 () Bool)

(assert (=> start!230512 e!1495350))

(declare-fun tp_is_empty!11013 () Bool)

(assert (=> start!230512 tp_is_empty!11013))

(declare-fun b!2335152 () Bool)

(declare-fun tp!740557 () Bool)

(declare-fun tp!740558 () Bool)

(assert (=> b!2335152 (= e!1495350 (and tp!740557 tp!740558))))

(declare-fun b!2335153 () Bool)

(declare-fun tp!740561 () Bool)

(assert (=> b!2335153 (= e!1495350 tp!740561)))

(declare-fun b!2335154 () Bool)

(declare-fun nullable!1930 (Regex!6851) Bool)

(assert (=> b!2335154 (= e!1495349 (nullable!1930 (regOne!14215 r!26197)))))

(declare-fun b!2335155 () Bool)

(declare-fun res!996127 () Bool)

(assert (=> b!2335155 (=> (not res!996127) (not e!1495349))))

(declare-fun c!13498 () C!13860)

(declare-fun derivativeStep!1590 (Regex!6851 C!13860) Regex!6851)

(assert (=> b!2335155 (= res!996127 (nullable!1930 (derivativeStep!1590 r!26197 c!13498)))))

(declare-fun b!2335156 () Bool)

(declare-fun res!996125 () Bool)

(assert (=> b!2335156 (=> (not res!996125) (not e!1495349))))

(assert (=> b!2335156 (= res!996125 (not (nullable!1930 r!26197)))))

(declare-fun b!2335157 () Bool)

(assert (=> b!2335157 (= e!1495350 tp_is_empty!11013)))

(declare-fun b!2335158 () Bool)

(declare-fun tp!740560 () Bool)

(declare-fun tp!740559 () Bool)

(assert (=> b!2335158 (= e!1495350 (and tp!740560 tp!740559))))

(assert (= (and start!230512 res!996126) b!2335156))

(assert (= (and b!2335156 res!996125) b!2335155))

(assert (= (and b!2335155 res!996127) b!2335151))

(assert (= (and b!2335151 res!996124) b!2335154))

(assert (= (and start!230512 ((_ is ElementMatch!6851) r!26197)) b!2335157))

(assert (= (and start!230512 ((_ is Concat!11473) r!26197)) b!2335152))

(assert (= (and start!230512 ((_ is Star!6851) r!26197)) b!2335153))

(assert (= (and start!230512 ((_ is Union!6851) r!26197)) b!2335158))

(declare-fun m!2762405 () Bool)

(assert (=> start!230512 m!2762405))

(declare-fun m!2762407 () Bool)

(assert (=> b!2335154 m!2762407))

(declare-fun m!2762409 () Bool)

(assert (=> b!2335155 m!2762409))

(assert (=> b!2335155 m!2762409))

(declare-fun m!2762411 () Bool)

(assert (=> b!2335155 m!2762411))

(declare-fun m!2762413 () Bool)

(assert (=> b!2335156 m!2762413))

(check-sat (not b!2335158) (not b!2335155) (not b!2335153) (not b!2335156) (not start!230512) (not b!2335152) (not b!2335154) tp_is_empty!11013)
(check-sat)
(get-model)

(declare-fun d!690417 () Bool)

(declare-fun nullableFct!487 (Regex!6851) Bool)

(assert (=> d!690417 (= (nullable!1930 (derivativeStep!1590 r!26197 c!13498)) (nullableFct!487 (derivativeStep!1590 r!26197 c!13498)))))

(declare-fun bs!459902 () Bool)

(assert (= bs!459902 d!690417))

(assert (=> bs!459902 m!2762409))

(declare-fun m!2762417 () Bool)

(assert (=> bs!459902 m!2762417))

(assert (=> b!2335155 d!690417))

(declare-fun d!690423 () Bool)

(declare-fun lt!862421 () Regex!6851)

(assert (=> d!690423 (validRegex!2596 lt!862421)))

(declare-fun e!1495380 () Regex!6851)

(assert (=> d!690423 (= lt!862421 e!1495380)))

(declare-fun c!371158 () Bool)

(assert (=> d!690423 (= c!371158 (or ((_ is EmptyExpr!6851) r!26197) ((_ is EmptyLang!6851) r!26197)))))

(assert (=> d!690423 (validRegex!2596 r!26197)))

(assert (=> d!690423 (= (derivativeStep!1590 r!26197 c!13498) lt!862421)))

(declare-fun b!2335209 () Bool)

(declare-fun e!1495379 () Regex!6851)

(assert (=> b!2335209 (= e!1495379 (ite (= c!13498 (c!371131 r!26197)) EmptyExpr!6851 EmptyLang!6851))))

(declare-fun bm!139922 () Bool)

(declare-fun call!139927 () Regex!6851)

(declare-fun c!371161 () Bool)

(assert (=> bm!139922 (= call!139927 (derivativeStep!1590 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)) c!13498))))

(declare-fun b!2335210 () Bool)

(assert (=> b!2335210 (= e!1495380 e!1495379)))

(declare-fun c!371160 () Bool)

(assert (=> b!2335210 (= c!371160 ((_ is ElementMatch!6851) r!26197))))

(declare-fun b!2335211 () Bool)

(declare-fun e!1495378 () Regex!6851)

(declare-fun call!139928 () Regex!6851)

(assert (=> b!2335211 (= e!1495378 (Union!6851 (Concat!11473 call!139928 (regTwo!14214 r!26197)) EmptyLang!6851))))

(declare-fun b!2335212 () Bool)

(assert (=> b!2335212 (= c!371161 ((_ is Union!6851) r!26197))))

(declare-fun e!1495377 () Regex!6851)

(assert (=> b!2335212 (= e!1495379 e!1495377)))

(declare-fun bm!139923 () Bool)

(declare-fun call!139929 () Regex!6851)

(assert (=> bm!139923 (= call!139928 call!139929)))

(declare-fun c!371157 () Bool)

(declare-fun call!139930 () Regex!6851)

(declare-fun bm!139924 () Bool)

(assert (=> bm!139924 (= call!139930 (derivativeStep!1590 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))) c!13498))))

(declare-fun bm!139925 () Bool)

(assert (=> bm!139925 (= call!139929 call!139930)))

(declare-fun b!2335213 () Bool)

(assert (=> b!2335213 (= e!1495380 EmptyLang!6851)))

(declare-fun b!2335214 () Bool)

(declare-fun e!1495376 () Regex!6851)

(assert (=> b!2335214 (= e!1495377 e!1495376)))

(assert (=> b!2335214 (= c!371157 ((_ is Star!6851) r!26197))))

(declare-fun b!2335215 () Bool)

(assert (=> b!2335215 (= e!1495376 (Concat!11473 call!139929 r!26197))))

(declare-fun b!2335216 () Bool)

(declare-fun c!371159 () Bool)

(assert (=> b!2335216 (= c!371159 (nullable!1930 (regOne!14214 r!26197)))))

(assert (=> b!2335216 (= e!1495376 e!1495378)))

(declare-fun b!2335217 () Bool)

(assert (=> b!2335217 (= e!1495377 (Union!6851 call!139927 call!139930))))

(declare-fun b!2335218 () Bool)

(assert (=> b!2335218 (= e!1495378 (Union!6851 (Concat!11473 call!139928 (regTwo!14214 r!26197)) call!139927))))

(assert (= (and d!690423 c!371158) b!2335213))

(assert (= (and d!690423 (not c!371158)) b!2335210))

(assert (= (and b!2335210 c!371160) b!2335209))

(assert (= (and b!2335210 (not c!371160)) b!2335212))

(assert (= (and b!2335212 c!371161) b!2335217))

(assert (= (and b!2335212 (not c!371161)) b!2335214))

(assert (= (and b!2335214 c!371157) b!2335215))

(assert (= (and b!2335214 (not c!371157)) b!2335216))

(assert (= (and b!2335216 c!371159) b!2335218))

(assert (= (and b!2335216 (not c!371159)) b!2335211))

(assert (= (or b!2335218 b!2335211) bm!139923))

(assert (= (or b!2335215 bm!139923) bm!139925))

(assert (= (or b!2335217 bm!139925) bm!139924))

(assert (= (or b!2335217 b!2335218) bm!139922))

(declare-fun m!2762429 () Bool)

(assert (=> d!690423 m!2762429))

(assert (=> d!690423 m!2762405))

(declare-fun m!2762431 () Bool)

(assert (=> bm!139922 m!2762431))

(declare-fun m!2762435 () Bool)

(assert (=> bm!139924 m!2762435))

(declare-fun m!2762437 () Bool)

(assert (=> b!2335216 m!2762437))

(assert (=> b!2335155 d!690423))

(declare-fun d!690431 () Bool)

(assert (=> d!690431 (= (nullable!1930 (regOne!14215 r!26197)) (nullableFct!487 (regOne!14215 r!26197)))))

(declare-fun bs!459905 () Bool)

(assert (= bs!459905 d!690431))

(declare-fun m!2762439 () Bool)

(assert (=> bs!459905 m!2762439))

(assert (=> b!2335154 d!690431))

(declare-fun bm!139941 () Bool)

(declare-fun call!139946 () Bool)

(declare-fun c!371173 () Bool)

(assert (=> bm!139941 (= call!139946 (validRegex!2596 (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))))))

(declare-fun b!2335264 () Bool)

(declare-fun e!1495418 () Bool)

(declare-fun e!1495419 () Bool)

(assert (=> b!2335264 (= e!1495418 e!1495419)))

(declare-fun res!996154 () Bool)

(assert (=> b!2335264 (=> (not res!996154) (not e!1495419))))

(declare-fun call!139947 () Bool)

(assert (=> b!2335264 (= res!996154 call!139947)))

(declare-fun b!2335265 () Bool)

(assert (=> b!2335265 (= e!1495419 call!139946)))

(declare-fun b!2335266 () Bool)

(declare-fun e!1495416 () Bool)

(assert (=> b!2335266 (= e!1495416 call!139946)))

(declare-fun d!690433 () Bool)

(declare-fun res!996153 () Bool)

(declare-fun e!1495420 () Bool)

(assert (=> d!690433 (=> res!996153 e!1495420)))

(assert (=> d!690433 (= res!996153 ((_ is ElementMatch!6851) r!26197))))

(assert (=> d!690433 (= (validRegex!2596 r!26197) e!1495420)))

(declare-fun b!2335267 () Bool)

(declare-fun e!1495417 () Bool)

(declare-fun call!139948 () Bool)

(assert (=> b!2335267 (= e!1495417 call!139948)))

(declare-fun b!2335268 () Bool)

(declare-fun res!996155 () Bool)

(assert (=> b!2335268 (=> res!996155 e!1495418)))

(assert (=> b!2335268 (= res!996155 (not ((_ is Concat!11473) r!26197)))))

(declare-fun e!1495421 () Bool)

(assert (=> b!2335268 (= e!1495421 e!1495418)))

(declare-fun bm!139942 () Bool)

(declare-fun c!371172 () Bool)

(assert (=> bm!139942 (= call!139948 (validRegex!2596 (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))))))

(declare-fun bm!139943 () Bool)

(assert (=> bm!139943 (= call!139947 call!139948)))

(declare-fun b!2335269 () Bool)

(declare-fun e!1495422 () Bool)

(assert (=> b!2335269 (= e!1495422 e!1495417)))

(declare-fun res!996157 () Bool)

(assert (=> b!2335269 (= res!996157 (not (nullable!1930 (reg!7180 r!26197))))))

(assert (=> b!2335269 (=> (not res!996157) (not e!1495417))))

(declare-fun b!2335270 () Bool)

(assert (=> b!2335270 (= e!1495422 e!1495421)))

(assert (=> b!2335270 (= c!371173 ((_ is Union!6851) r!26197))))

(declare-fun b!2335271 () Bool)

(declare-fun res!996156 () Bool)

(assert (=> b!2335271 (=> (not res!996156) (not e!1495416))))

(assert (=> b!2335271 (= res!996156 call!139947)))

(assert (=> b!2335271 (= e!1495421 e!1495416)))

(declare-fun b!2335272 () Bool)

(assert (=> b!2335272 (= e!1495420 e!1495422)))

(assert (=> b!2335272 (= c!371172 ((_ is Star!6851) r!26197))))

(assert (= (and d!690433 (not res!996153)) b!2335272))

(assert (= (and b!2335272 c!371172) b!2335269))

(assert (= (and b!2335272 (not c!371172)) b!2335270))

(assert (= (and b!2335269 res!996157) b!2335267))

(assert (= (and b!2335270 c!371173) b!2335271))

(assert (= (and b!2335270 (not c!371173)) b!2335268))

(assert (= (and b!2335271 res!996156) b!2335266))

(assert (= (and b!2335268 (not res!996155)) b!2335264))

(assert (= (and b!2335264 res!996154) b!2335265))

(assert (= (or b!2335266 b!2335265) bm!139941))

(assert (= (or b!2335271 b!2335264) bm!139943))

(assert (= (or b!2335267 bm!139943) bm!139942))

(declare-fun m!2762447 () Bool)

(assert (=> bm!139941 m!2762447))

(declare-fun m!2762449 () Bool)

(assert (=> bm!139942 m!2762449))

(declare-fun m!2762451 () Bool)

(assert (=> b!2335269 m!2762451))

(assert (=> start!230512 d!690433))

(declare-fun d!690435 () Bool)

(assert (=> d!690435 (= (nullable!1930 r!26197) (nullableFct!487 r!26197))))

(declare-fun bs!459906 () Bool)

(assert (= bs!459906 d!690435))

(declare-fun m!2762453 () Bool)

(assert (=> bs!459906 m!2762453))

(assert (=> b!2335156 d!690435))

(declare-fun b!2335302 () Bool)

(declare-fun e!1495429 () Bool)

(declare-fun tp!740592 () Bool)

(declare-fun tp!740593 () Bool)

(assert (=> b!2335302 (= e!1495429 (and tp!740592 tp!740593))))

(declare-fun b!2335303 () Bool)

(declare-fun tp!740595 () Bool)

(assert (=> b!2335303 (= e!1495429 tp!740595)))

(assert (=> b!2335153 (= tp!740561 e!1495429)))

(declare-fun b!2335304 () Bool)

(declare-fun tp!740594 () Bool)

(declare-fun tp!740596 () Bool)

(assert (=> b!2335304 (= e!1495429 (and tp!740594 tp!740596))))

(declare-fun b!2335301 () Bool)

(assert (=> b!2335301 (= e!1495429 tp_is_empty!11013)))

(assert (= (and b!2335153 ((_ is ElementMatch!6851) (reg!7180 r!26197))) b!2335301))

(assert (= (and b!2335153 ((_ is Concat!11473) (reg!7180 r!26197))) b!2335302))

(assert (= (and b!2335153 ((_ is Star!6851) (reg!7180 r!26197))) b!2335303))

(assert (= (and b!2335153 ((_ is Union!6851) (reg!7180 r!26197))) b!2335304))

(declare-fun b!2335310 () Bool)

(declare-fun e!1495431 () Bool)

(declare-fun tp!740602 () Bool)

(declare-fun tp!740603 () Bool)

(assert (=> b!2335310 (= e!1495431 (and tp!740602 tp!740603))))

(declare-fun b!2335311 () Bool)

(declare-fun tp!740605 () Bool)

(assert (=> b!2335311 (= e!1495431 tp!740605)))

(assert (=> b!2335158 (= tp!740560 e!1495431)))

(declare-fun b!2335312 () Bool)

(declare-fun tp!740604 () Bool)

(declare-fun tp!740606 () Bool)

(assert (=> b!2335312 (= e!1495431 (and tp!740604 tp!740606))))

(declare-fun b!2335309 () Bool)

(assert (=> b!2335309 (= e!1495431 tp_is_empty!11013)))

(assert (= (and b!2335158 ((_ is ElementMatch!6851) (regOne!14215 r!26197))) b!2335309))

(assert (= (and b!2335158 ((_ is Concat!11473) (regOne!14215 r!26197))) b!2335310))

(assert (= (and b!2335158 ((_ is Star!6851) (regOne!14215 r!26197))) b!2335311))

(assert (= (and b!2335158 ((_ is Union!6851) (regOne!14215 r!26197))) b!2335312))

(declare-fun b!2335318 () Bool)

(declare-fun e!1495433 () Bool)

(declare-fun tp!740612 () Bool)

(declare-fun tp!740613 () Bool)

(assert (=> b!2335318 (= e!1495433 (and tp!740612 tp!740613))))

(declare-fun b!2335319 () Bool)

(declare-fun tp!740615 () Bool)

(assert (=> b!2335319 (= e!1495433 tp!740615)))

(assert (=> b!2335158 (= tp!740559 e!1495433)))

(declare-fun b!2335320 () Bool)

(declare-fun tp!740614 () Bool)

(declare-fun tp!740616 () Bool)

(assert (=> b!2335320 (= e!1495433 (and tp!740614 tp!740616))))

(declare-fun b!2335317 () Bool)

(assert (=> b!2335317 (= e!1495433 tp_is_empty!11013)))

(assert (= (and b!2335158 ((_ is ElementMatch!6851) (regTwo!14215 r!26197))) b!2335317))

(assert (= (and b!2335158 ((_ is Concat!11473) (regTwo!14215 r!26197))) b!2335318))

(assert (= (and b!2335158 ((_ is Star!6851) (regTwo!14215 r!26197))) b!2335319))

(assert (= (and b!2335158 ((_ is Union!6851) (regTwo!14215 r!26197))) b!2335320))

(declare-fun b!2335326 () Bool)

(declare-fun e!1495435 () Bool)

(declare-fun tp!740622 () Bool)

(declare-fun tp!740623 () Bool)

(assert (=> b!2335326 (= e!1495435 (and tp!740622 tp!740623))))

(declare-fun b!2335327 () Bool)

(declare-fun tp!740625 () Bool)

(assert (=> b!2335327 (= e!1495435 tp!740625)))

(assert (=> b!2335152 (= tp!740557 e!1495435)))

(declare-fun b!2335328 () Bool)

(declare-fun tp!740624 () Bool)

(declare-fun tp!740626 () Bool)

(assert (=> b!2335328 (= e!1495435 (and tp!740624 tp!740626))))

(declare-fun b!2335325 () Bool)

(assert (=> b!2335325 (= e!1495435 tp_is_empty!11013)))

(assert (= (and b!2335152 ((_ is ElementMatch!6851) (regOne!14214 r!26197))) b!2335325))

(assert (= (and b!2335152 ((_ is Concat!11473) (regOne!14214 r!26197))) b!2335326))

(assert (= (and b!2335152 ((_ is Star!6851) (regOne!14214 r!26197))) b!2335327))

(assert (= (and b!2335152 ((_ is Union!6851) (regOne!14214 r!26197))) b!2335328))

(declare-fun b!2335330 () Bool)

(declare-fun e!1495436 () Bool)

(declare-fun tp!740627 () Bool)

(declare-fun tp!740628 () Bool)

(assert (=> b!2335330 (= e!1495436 (and tp!740627 tp!740628))))

(declare-fun b!2335331 () Bool)

(declare-fun tp!740630 () Bool)

(assert (=> b!2335331 (= e!1495436 tp!740630)))

(assert (=> b!2335152 (= tp!740558 e!1495436)))

(declare-fun b!2335332 () Bool)

(declare-fun tp!740629 () Bool)

(declare-fun tp!740631 () Bool)

(assert (=> b!2335332 (= e!1495436 (and tp!740629 tp!740631))))

(declare-fun b!2335329 () Bool)

(assert (=> b!2335329 (= e!1495436 tp_is_empty!11013)))

(assert (= (and b!2335152 ((_ is ElementMatch!6851) (regTwo!14214 r!26197))) b!2335329))

(assert (= (and b!2335152 ((_ is Concat!11473) (regTwo!14214 r!26197))) b!2335330))

(assert (= (and b!2335152 ((_ is Star!6851) (regTwo!14214 r!26197))) b!2335331))

(assert (= (and b!2335152 ((_ is Union!6851) (regTwo!14214 r!26197))) b!2335332))

(check-sat (not d!690431) (not d!690423) (not b!2335328) (not b!2335310) (not b!2335216) (not b!2335319) (not b!2335303) (not b!2335331) (not bm!139922) (not b!2335330) (not b!2335304) (not bm!139941) (not b!2335312) (not b!2335311) (not d!690435) (not b!2335320) (not b!2335318) (not b!2335326) (not b!2335302) (not d!690417) (not b!2335269) (not b!2335332) (not b!2335327) tp_is_empty!11013 (not bm!139924) (not bm!139942))
(check-sat)
(get-model)

(declare-fun bm!139944 () Bool)

(declare-fun call!139949 () Bool)

(declare-fun c!371175 () Bool)

(assert (=> bm!139944 (= call!139949 (validRegex!2596 (ite c!371175 (regTwo!14215 lt!862421) (regTwo!14214 lt!862421))))))

(declare-fun b!2335333 () Bool)

(declare-fun e!1495439 () Bool)

(declare-fun e!1495440 () Bool)

(assert (=> b!2335333 (= e!1495439 e!1495440)))

(declare-fun res!996159 () Bool)

(assert (=> b!2335333 (=> (not res!996159) (not e!1495440))))

(declare-fun call!139950 () Bool)

(assert (=> b!2335333 (= res!996159 call!139950)))

(declare-fun b!2335334 () Bool)

(assert (=> b!2335334 (= e!1495440 call!139949)))

(declare-fun b!2335335 () Bool)

(declare-fun e!1495437 () Bool)

(assert (=> b!2335335 (= e!1495437 call!139949)))

(declare-fun d!690437 () Bool)

(declare-fun res!996158 () Bool)

(declare-fun e!1495441 () Bool)

(assert (=> d!690437 (=> res!996158 e!1495441)))

(assert (=> d!690437 (= res!996158 ((_ is ElementMatch!6851) lt!862421))))

(assert (=> d!690437 (= (validRegex!2596 lt!862421) e!1495441)))

(declare-fun b!2335336 () Bool)

(declare-fun e!1495438 () Bool)

(declare-fun call!139951 () Bool)

(assert (=> b!2335336 (= e!1495438 call!139951)))

(declare-fun b!2335337 () Bool)

(declare-fun res!996160 () Bool)

(assert (=> b!2335337 (=> res!996160 e!1495439)))

(assert (=> b!2335337 (= res!996160 (not ((_ is Concat!11473) lt!862421)))))

(declare-fun e!1495442 () Bool)

(assert (=> b!2335337 (= e!1495442 e!1495439)))

(declare-fun c!371174 () Bool)

(declare-fun bm!139945 () Bool)

(assert (=> bm!139945 (= call!139951 (validRegex!2596 (ite c!371174 (reg!7180 lt!862421) (ite c!371175 (regOne!14215 lt!862421) (regOne!14214 lt!862421)))))))

(declare-fun bm!139946 () Bool)

(assert (=> bm!139946 (= call!139950 call!139951)))

(declare-fun b!2335338 () Bool)

(declare-fun e!1495443 () Bool)

(assert (=> b!2335338 (= e!1495443 e!1495438)))

(declare-fun res!996162 () Bool)

(assert (=> b!2335338 (= res!996162 (not (nullable!1930 (reg!7180 lt!862421))))))

(assert (=> b!2335338 (=> (not res!996162) (not e!1495438))))

(declare-fun b!2335339 () Bool)

(assert (=> b!2335339 (= e!1495443 e!1495442)))

(assert (=> b!2335339 (= c!371175 ((_ is Union!6851) lt!862421))))

(declare-fun b!2335340 () Bool)

(declare-fun res!996161 () Bool)

(assert (=> b!2335340 (=> (not res!996161) (not e!1495437))))

(assert (=> b!2335340 (= res!996161 call!139950)))

(assert (=> b!2335340 (= e!1495442 e!1495437)))

(declare-fun b!2335341 () Bool)

(assert (=> b!2335341 (= e!1495441 e!1495443)))

(assert (=> b!2335341 (= c!371174 ((_ is Star!6851) lt!862421))))

(assert (= (and d!690437 (not res!996158)) b!2335341))

(assert (= (and b!2335341 c!371174) b!2335338))

(assert (= (and b!2335341 (not c!371174)) b!2335339))

(assert (= (and b!2335338 res!996162) b!2335336))

(assert (= (and b!2335339 c!371175) b!2335340))

(assert (= (and b!2335339 (not c!371175)) b!2335337))

(assert (= (and b!2335340 res!996161) b!2335335))

(assert (= (and b!2335337 (not res!996160)) b!2335333))

(assert (= (and b!2335333 res!996159) b!2335334))

(assert (= (or b!2335335 b!2335334) bm!139944))

(assert (= (or b!2335340 b!2335333) bm!139946))

(assert (= (or b!2335336 bm!139946) bm!139945))

(declare-fun m!2762455 () Bool)

(assert (=> bm!139944 m!2762455))

(declare-fun m!2762457 () Bool)

(assert (=> bm!139945 m!2762457))

(declare-fun m!2762459 () Bool)

(assert (=> b!2335338 m!2762459))

(assert (=> d!690423 d!690437))

(assert (=> d!690423 d!690433))

(declare-fun d!690439 () Bool)

(assert (=> d!690439 (= (nullable!1930 (reg!7180 r!26197)) (nullableFct!487 (reg!7180 r!26197)))))

(declare-fun bs!459907 () Bool)

(assert (= bs!459907 d!690439))

(declare-fun m!2762461 () Bool)

(assert (=> bs!459907 m!2762461))

(assert (=> b!2335269 d!690439))

(declare-fun d!690441 () Bool)

(declare-fun lt!862422 () Regex!6851)

(assert (=> d!690441 (validRegex!2596 lt!862422)))

(declare-fun e!1495448 () Regex!6851)

(assert (=> d!690441 (= lt!862422 e!1495448)))

(declare-fun c!371177 () Bool)

(assert (=> d!690441 (= c!371177 (or ((_ is EmptyExpr!6851) (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))) ((_ is EmptyLang!6851) (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)))))))

(assert (=> d!690441 (validRegex!2596 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)))))

(assert (=> d!690441 (= (derivativeStep!1590 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)) c!13498) lt!862422)))

(declare-fun b!2335342 () Bool)

(declare-fun e!1495447 () Regex!6851)

(assert (=> b!2335342 (= e!1495447 (ite (= c!13498 (c!371131 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)))) EmptyExpr!6851 EmptyLang!6851))))

(declare-fun c!371180 () Bool)

(declare-fun call!139952 () Regex!6851)

(declare-fun bm!139947 () Bool)

(assert (=> bm!139947 (= call!139952 (derivativeStep!1590 (ite c!371180 (regOne!14215 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))) (regTwo!14214 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)))) c!13498))))

(declare-fun b!2335343 () Bool)

(assert (=> b!2335343 (= e!1495448 e!1495447)))

(declare-fun c!371179 () Bool)

(assert (=> b!2335343 (= c!371179 ((_ is ElementMatch!6851) (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))))))

(declare-fun e!1495446 () Regex!6851)

(declare-fun call!139953 () Regex!6851)

(declare-fun b!2335344 () Bool)

(assert (=> b!2335344 (= e!1495446 (Union!6851 (Concat!11473 call!139953 (regTwo!14214 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)))) EmptyLang!6851))))

(declare-fun b!2335345 () Bool)

(assert (=> b!2335345 (= c!371180 ((_ is Union!6851) (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))))))

(declare-fun e!1495445 () Regex!6851)

(assert (=> b!2335345 (= e!1495447 e!1495445)))

(declare-fun bm!139948 () Bool)

(declare-fun call!139954 () Regex!6851)

(assert (=> bm!139948 (= call!139953 call!139954)))

(declare-fun c!371176 () Bool)

(declare-fun bm!139949 () Bool)

(declare-fun call!139955 () Regex!6851)

(assert (=> bm!139949 (= call!139955 (derivativeStep!1590 (ite c!371180 (regTwo!14215 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))) (ite c!371176 (reg!7180 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))) (regOne!14214 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))))) c!13498))))

(declare-fun bm!139950 () Bool)

(assert (=> bm!139950 (= call!139954 call!139955)))

(declare-fun b!2335346 () Bool)

(assert (=> b!2335346 (= e!1495448 EmptyLang!6851)))

(declare-fun b!2335347 () Bool)

(declare-fun e!1495444 () Regex!6851)

(assert (=> b!2335347 (= e!1495445 e!1495444)))

(assert (=> b!2335347 (= c!371176 ((_ is Star!6851) (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))))))

(declare-fun b!2335348 () Bool)

(assert (=> b!2335348 (= e!1495444 (Concat!11473 call!139954 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197))))))

(declare-fun b!2335349 () Bool)

(declare-fun c!371178 () Bool)

(assert (=> b!2335349 (= c!371178 (nullable!1930 (regOne!14214 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)))))))

(assert (=> b!2335349 (= e!1495444 e!1495446)))

(declare-fun b!2335350 () Bool)

(assert (=> b!2335350 (= e!1495445 (Union!6851 call!139952 call!139955))))

(declare-fun b!2335351 () Bool)

(assert (=> b!2335351 (= e!1495446 (Union!6851 (Concat!11473 call!139953 (regTwo!14214 (ite c!371161 (regOne!14215 r!26197) (regTwo!14214 r!26197)))) call!139952))))

(assert (= (and d!690441 c!371177) b!2335346))

(assert (= (and d!690441 (not c!371177)) b!2335343))

(assert (= (and b!2335343 c!371179) b!2335342))

(assert (= (and b!2335343 (not c!371179)) b!2335345))

(assert (= (and b!2335345 c!371180) b!2335350))

(assert (= (and b!2335345 (not c!371180)) b!2335347))

(assert (= (and b!2335347 c!371176) b!2335348))

(assert (= (and b!2335347 (not c!371176)) b!2335349))

(assert (= (and b!2335349 c!371178) b!2335351))

(assert (= (and b!2335349 (not c!371178)) b!2335344))

(assert (= (or b!2335351 b!2335344) bm!139948))

(assert (= (or b!2335348 bm!139948) bm!139950))

(assert (= (or b!2335350 bm!139950) bm!139949))

(assert (= (or b!2335350 b!2335351) bm!139947))

(declare-fun m!2762463 () Bool)

(assert (=> d!690441 m!2762463))

(declare-fun m!2762465 () Bool)

(assert (=> d!690441 m!2762465))

(declare-fun m!2762467 () Bool)

(assert (=> bm!139947 m!2762467))

(declare-fun m!2762469 () Bool)

(assert (=> bm!139949 m!2762469))

(declare-fun m!2762471 () Bool)

(assert (=> b!2335349 m!2762471))

(assert (=> bm!139922 d!690441))

(declare-fun d!690443 () Bool)

(declare-fun lt!862423 () Regex!6851)

(assert (=> d!690443 (validRegex!2596 lt!862423)))

(declare-fun e!1495453 () Regex!6851)

(assert (=> d!690443 (= lt!862423 e!1495453)))

(declare-fun c!371182 () Bool)

(assert (=> d!690443 (= c!371182 (or ((_ is EmptyExpr!6851) (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))) ((_ is EmptyLang!6851) (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))))))))

(assert (=> d!690443 (validRegex!2596 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))))))

(assert (=> d!690443 (= (derivativeStep!1590 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))) c!13498) lt!862423)))

(declare-fun e!1495452 () Regex!6851)

(declare-fun b!2335352 () Bool)

(assert (=> b!2335352 (= e!1495452 (ite (= c!13498 (c!371131 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))))) EmptyExpr!6851 EmptyLang!6851))))

(declare-fun c!371185 () Bool)

(declare-fun call!139956 () Regex!6851)

(declare-fun bm!139951 () Bool)

(assert (=> bm!139951 (= call!139956 (derivativeStep!1590 (ite c!371185 (regOne!14215 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))) (regTwo!14214 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))))) c!13498))))

(declare-fun b!2335353 () Bool)

(assert (=> b!2335353 (= e!1495453 e!1495452)))

(declare-fun c!371184 () Bool)

(assert (=> b!2335353 (= c!371184 ((_ is ElementMatch!6851) (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))))))

(declare-fun e!1495451 () Regex!6851)

(declare-fun b!2335354 () Bool)

(declare-fun call!139957 () Regex!6851)

(assert (=> b!2335354 (= e!1495451 (Union!6851 (Concat!11473 call!139957 (regTwo!14214 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))))) EmptyLang!6851))))

(declare-fun b!2335355 () Bool)

(assert (=> b!2335355 (= c!371185 ((_ is Union!6851) (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))))))

(declare-fun e!1495450 () Regex!6851)

(assert (=> b!2335355 (= e!1495452 e!1495450)))

(declare-fun bm!139952 () Bool)

(declare-fun call!139958 () Regex!6851)

(assert (=> bm!139952 (= call!139957 call!139958)))

(declare-fun call!139959 () Regex!6851)

(declare-fun c!371181 () Bool)

(declare-fun bm!139953 () Bool)

(assert (=> bm!139953 (= call!139959 (derivativeStep!1590 (ite c!371185 (regTwo!14215 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))) (ite c!371181 (reg!7180 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))) (regOne!14214 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))))) c!13498))))

(declare-fun bm!139954 () Bool)

(assert (=> bm!139954 (= call!139958 call!139959)))

(declare-fun b!2335356 () Bool)

(assert (=> b!2335356 (= e!1495453 EmptyLang!6851)))

(declare-fun b!2335357 () Bool)

(declare-fun e!1495449 () Regex!6851)

(assert (=> b!2335357 (= e!1495450 e!1495449)))

(assert (=> b!2335357 (= c!371181 ((_ is Star!6851) (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))))))

(declare-fun b!2335358 () Bool)

(assert (=> b!2335358 (= e!1495449 (Concat!11473 call!139958 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197)))))))

(declare-fun b!2335359 () Bool)

(declare-fun c!371183 () Bool)

(assert (=> b!2335359 (= c!371183 (nullable!1930 (regOne!14214 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))))))))

(assert (=> b!2335359 (= e!1495449 e!1495451)))

(declare-fun b!2335360 () Bool)

(assert (=> b!2335360 (= e!1495450 (Union!6851 call!139956 call!139959))))

(declare-fun b!2335361 () Bool)

(assert (=> b!2335361 (= e!1495451 (Union!6851 (Concat!11473 call!139957 (regTwo!14214 (ite c!371161 (regTwo!14215 r!26197) (ite c!371157 (reg!7180 r!26197) (regOne!14214 r!26197))))) call!139956))))

(assert (= (and d!690443 c!371182) b!2335356))

(assert (= (and d!690443 (not c!371182)) b!2335353))

(assert (= (and b!2335353 c!371184) b!2335352))

(assert (= (and b!2335353 (not c!371184)) b!2335355))

(assert (= (and b!2335355 c!371185) b!2335360))

(assert (= (and b!2335355 (not c!371185)) b!2335357))

(assert (= (and b!2335357 c!371181) b!2335358))

(assert (= (and b!2335357 (not c!371181)) b!2335359))

(assert (= (and b!2335359 c!371183) b!2335361))

(assert (= (and b!2335359 (not c!371183)) b!2335354))

(assert (= (or b!2335361 b!2335354) bm!139952))

(assert (= (or b!2335358 bm!139952) bm!139954))

(assert (= (or b!2335360 bm!139954) bm!139953))

(assert (= (or b!2335360 b!2335361) bm!139951))

(declare-fun m!2762473 () Bool)

(assert (=> d!690443 m!2762473))

(declare-fun m!2762475 () Bool)

(assert (=> d!690443 m!2762475))

(declare-fun m!2762477 () Bool)

(assert (=> bm!139951 m!2762477))

(declare-fun m!2762479 () Bool)

(assert (=> bm!139953 m!2762479))

(declare-fun m!2762481 () Bool)

(assert (=> b!2335359 m!2762481))

(assert (=> bm!139924 d!690443))

(declare-fun d!690445 () Bool)

(assert (=> d!690445 (= (nullable!1930 (regOne!14214 r!26197)) (nullableFct!487 (regOne!14214 r!26197)))))

(declare-fun bs!459908 () Bool)

(assert (= bs!459908 d!690445))

(declare-fun m!2762483 () Bool)

(assert (=> bs!459908 m!2762483))

(assert (=> b!2335216 d!690445))

(declare-fun b!2335376 () Bool)

(declare-fun e!1495468 () Bool)

(declare-fun e!1495469 () Bool)

(assert (=> b!2335376 (= e!1495468 e!1495469)))

(declare-fun res!996175 () Bool)

(declare-fun call!139964 () Bool)

(assert (=> b!2335376 (= res!996175 call!139964)))

(assert (=> b!2335376 (=> res!996175 e!1495469)))

(declare-fun bm!139959 () Bool)

(declare-fun c!371188 () Bool)

(assert (=> bm!139959 (= call!139964 (nullable!1930 (ite c!371188 (regOne!14215 (regOne!14215 r!26197)) (regOne!14214 (regOne!14215 r!26197)))))))

(declare-fun b!2335377 () Bool)

(declare-fun e!1495470 () Bool)

(declare-fun call!139965 () Bool)

(assert (=> b!2335377 (= e!1495470 call!139965)))

(declare-fun bm!139960 () Bool)

(assert (=> bm!139960 (= call!139965 (nullable!1930 (ite c!371188 (regTwo!14215 (regOne!14215 r!26197)) (regTwo!14214 (regOne!14215 r!26197)))))))

(declare-fun d!690447 () Bool)

(declare-fun res!996173 () Bool)

(declare-fun e!1495466 () Bool)

(assert (=> d!690447 (=> res!996173 e!1495466)))

(assert (=> d!690447 (= res!996173 ((_ is EmptyExpr!6851) (regOne!14215 r!26197)))))

(assert (=> d!690447 (= (nullableFct!487 (regOne!14215 r!26197)) e!1495466)))

(declare-fun b!2335378 () Bool)

(assert (=> b!2335378 (= e!1495468 e!1495470)))

(declare-fun res!996177 () Bool)

(assert (=> b!2335378 (= res!996177 call!139964)))

(assert (=> b!2335378 (=> (not res!996177) (not e!1495470))))

(declare-fun b!2335379 () Bool)

(declare-fun e!1495471 () Bool)

(assert (=> b!2335379 (= e!1495466 e!1495471)))

(declare-fun res!996176 () Bool)

(assert (=> b!2335379 (=> (not res!996176) (not e!1495471))))

(assert (=> b!2335379 (= res!996176 (and (not ((_ is EmptyLang!6851) (regOne!14215 r!26197))) (not ((_ is ElementMatch!6851) (regOne!14215 r!26197)))))))

(declare-fun b!2335380 () Bool)

(assert (=> b!2335380 (= e!1495469 call!139965)))

(declare-fun b!2335381 () Bool)

(declare-fun e!1495467 () Bool)

(assert (=> b!2335381 (= e!1495471 e!1495467)))

(declare-fun res!996174 () Bool)

(assert (=> b!2335381 (=> res!996174 e!1495467)))

(assert (=> b!2335381 (= res!996174 ((_ is Star!6851) (regOne!14215 r!26197)))))

(declare-fun b!2335382 () Bool)

(assert (=> b!2335382 (= e!1495467 e!1495468)))

(assert (=> b!2335382 (= c!371188 ((_ is Union!6851) (regOne!14215 r!26197)))))

(assert (= (and d!690447 (not res!996173)) b!2335379))

(assert (= (and b!2335379 res!996176) b!2335381))

(assert (= (and b!2335381 (not res!996174)) b!2335382))

(assert (= (and b!2335382 c!371188) b!2335376))

(assert (= (and b!2335382 (not c!371188)) b!2335378))

(assert (= (and b!2335376 (not res!996175)) b!2335380))

(assert (= (and b!2335378 res!996177) b!2335377))

(assert (= (or b!2335376 b!2335378) bm!139959))

(assert (= (or b!2335380 b!2335377) bm!139960))

(declare-fun m!2762485 () Bool)

(assert (=> bm!139959 m!2762485))

(declare-fun m!2762487 () Bool)

(assert (=> bm!139960 m!2762487))

(assert (=> d!690431 d!690447))

(declare-fun b!2335383 () Bool)

(declare-fun e!1495474 () Bool)

(declare-fun e!1495475 () Bool)

(assert (=> b!2335383 (= e!1495474 e!1495475)))

(declare-fun res!996180 () Bool)

(declare-fun call!139966 () Bool)

(assert (=> b!2335383 (= res!996180 call!139966)))

(assert (=> b!2335383 (=> res!996180 e!1495475)))

(declare-fun bm!139961 () Bool)

(declare-fun c!371189 () Bool)

(assert (=> bm!139961 (= call!139966 (nullable!1930 (ite c!371189 (regOne!14215 r!26197) (regOne!14214 r!26197))))))

(declare-fun b!2335384 () Bool)

(declare-fun e!1495476 () Bool)

(declare-fun call!139967 () Bool)

(assert (=> b!2335384 (= e!1495476 call!139967)))

(declare-fun bm!139962 () Bool)

(assert (=> bm!139962 (= call!139967 (nullable!1930 (ite c!371189 (regTwo!14215 r!26197) (regTwo!14214 r!26197))))))

(declare-fun d!690449 () Bool)

(declare-fun res!996178 () Bool)

(declare-fun e!1495472 () Bool)

(assert (=> d!690449 (=> res!996178 e!1495472)))

(assert (=> d!690449 (= res!996178 ((_ is EmptyExpr!6851) r!26197))))

(assert (=> d!690449 (= (nullableFct!487 r!26197) e!1495472)))

(declare-fun b!2335385 () Bool)

(assert (=> b!2335385 (= e!1495474 e!1495476)))

(declare-fun res!996182 () Bool)

(assert (=> b!2335385 (= res!996182 call!139966)))

(assert (=> b!2335385 (=> (not res!996182) (not e!1495476))))

(declare-fun b!2335386 () Bool)

(declare-fun e!1495477 () Bool)

(assert (=> b!2335386 (= e!1495472 e!1495477)))

(declare-fun res!996181 () Bool)

(assert (=> b!2335386 (=> (not res!996181) (not e!1495477))))

(assert (=> b!2335386 (= res!996181 (and (not ((_ is EmptyLang!6851) r!26197)) (not ((_ is ElementMatch!6851) r!26197))))))

(declare-fun b!2335387 () Bool)

(assert (=> b!2335387 (= e!1495475 call!139967)))

(declare-fun b!2335388 () Bool)

(declare-fun e!1495473 () Bool)

(assert (=> b!2335388 (= e!1495477 e!1495473)))

(declare-fun res!996179 () Bool)

(assert (=> b!2335388 (=> res!996179 e!1495473)))

(assert (=> b!2335388 (= res!996179 ((_ is Star!6851) r!26197))))

(declare-fun b!2335389 () Bool)

(assert (=> b!2335389 (= e!1495473 e!1495474)))

(assert (=> b!2335389 (= c!371189 ((_ is Union!6851) r!26197))))

(assert (= (and d!690449 (not res!996178)) b!2335386))

(assert (= (and b!2335386 res!996181) b!2335388))

(assert (= (and b!2335388 (not res!996179)) b!2335389))

(assert (= (and b!2335389 c!371189) b!2335383))

(assert (= (and b!2335389 (not c!371189)) b!2335385))

(assert (= (and b!2335383 (not res!996180)) b!2335387))

(assert (= (and b!2335385 res!996182) b!2335384))

(assert (= (or b!2335383 b!2335385) bm!139961))

(assert (= (or b!2335387 b!2335384) bm!139962))

(declare-fun m!2762489 () Bool)

(assert (=> bm!139961 m!2762489))

(declare-fun m!2762491 () Bool)

(assert (=> bm!139962 m!2762491))

(assert (=> d!690435 d!690449))

(declare-fun b!2335390 () Bool)

(declare-fun e!1495480 () Bool)

(declare-fun e!1495481 () Bool)

(assert (=> b!2335390 (= e!1495480 e!1495481)))

(declare-fun res!996185 () Bool)

(declare-fun call!139968 () Bool)

(assert (=> b!2335390 (= res!996185 call!139968)))

(assert (=> b!2335390 (=> res!996185 e!1495481)))

(declare-fun bm!139963 () Bool)

(declare-fun c!371190 () Bool)

(assert (=> bm!139963 (= call!139968 (nullable!1930 (ite c!371190 (regOne!14215 (derivativeStep!1590 r!26197 c!13498)) (regOne!14214 (derivativeStep!1590 r!26197 c!13498)))))))

(declare-fun b!2335391 () Bool)

(declare-fun e!1495482 () Bool)

(declare-fun call!139969 () Bool)

(assert (=> b!2335391 (= e!1495482 call!139969)))

(declare-fun bm!139964 () Bool)

(assert (=> bm!139964 (= call!139969 (nullable!1930 (ite c!371190 (regTwo!14215 (derivativeStep!1590 r!26197 c!13498)) (regTwo!14214 (derivativeStep!1590 r!26197 c!13498)))))))

(declare-fun d!690451 () Bool)

(declare-fun res!996183 () Bool)

(declare-fun e!1495478 () Bool)

(assert (=> d!690451 (=> res!996183 e!1495478)))

(assert (=> d!690451 (= res!996183 ((_ is EmptyExpr!6851) (derivativeStep!1590 r!26197 c!13498)))))

(assert (=> d!690451 (= (nullableFct!487 (derivativeStep!1590 r!26197 c!13498)) e!1495478)))

(declare-fun b!2335392 () Bool)

(assert (=> b!2335392 (= e!1495480 e!1495482)))

(declare-fun res!996187 () Bool)

(assert (=> b!2335392 (= res!996187 call!139968)))

(assert (=> b!2335392 (=> (not res!996187) (not e!1495482))))

(declare-fun b!2335393 () Bool)

(declare-fun e!1495483 () Bool)

(assert (=> b!2335393 (= e!1495478 e!1495483)))

(declare-fun res!996186 () Bool)

(assert (=> b!2335393 (=> (not res!996186) (not e!1495483))))

(assert (=> b!2335393 (= res!996186 (and (not ((_ is EmptyLang!6851) (derivativeStep!1590 r!26197 c!13498))) (not ((_ is ElementMatch!6851) (derivativeStep!1590 r!26197 c!13498)))))))

(declare-fun b!2335394 () Bool)

(assert (=> b!2335394 (= e!1495481 call!139969)))

(declare-fun b!2335395 () Bool)

(declare-fun e!1495479 () Bool)

(assert (=> b!2335395 (= e!1495483 e!1495479)))

(declare-fun res!996184 () Bool)

(assert (=> b!2335395 (=> res!996184 e!1495479)))

(assert (=> b!2335395 (= res!996184 ((_ is Star!6851) (derivativeStep!1590 r!26197 c!13498)))))

(declare-fun b!2335396 () Bool)

(assert (=> b!2335396 (= e!1495479 e!1495480)))

(assert (=> b!2335396 (= c!371190 ((_ is Union!6851) (derivativeStep!1590 r!26197 c!13498)))))

(assert (= (and d!690451 (not res!996183)) b!2335393))

(assert (= (and b!2335393 res!996186) b!2335395))

(assert (= (and b!2335395 (not res!996184)) b!2335396))

(assert (= (and b!2335396 c!371190) b!2335390))

(assert (= (and b!2335396 (not c!371190)) b!2335392))

(assert (= (and b!2335390 (not res!996185)) b!2335394))

(assert (= (and b!2335392 res!996187) b!2335391))

(assert (= (or b!2335390 b!2335392) bm!139963))

(assert (= (or b!2335394 b!2335391) bm!139964))

(declare-fun m!2762493 () Bool)

(assert (=> bm!139963 m!2762493))

(declare-fun m!2762495 () Bool)

(assert (=> bm!139964 m!2762495))

(assert (=> d!690417 d!690451))

(declare-fun call!139970 () Bool)

(declare-fun bm!139965 () Bool)

(declare-fun c!371192 () Bool)

(assert (=> bm!139965 (= call!139970 (validRegex!2596 (ite c!371192 (regTwo!14215 (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))) (regTwo!14214 (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))))))))

(declare-fun b!2335397 () Bool)

(declare-fun e!1495486 () Bool)

(declare-fun e!1495487 () Bool)

(assert (=> b!2335397 (= e!1495486 e!1495487)))

(declare-fun res!996189 () Bool)

(assert (=> b!2335397 (=> (not res!996189) (not e!1495487))))

(declare-fun call!139971 () Bool)

(assert (=> b!2335397 (= res!996189 call!139971)))

(declare-fun b!2335398 () Bool)

(assert (=> b!2335398 (= e!1495487 call!139970)))

(declare-fun b!2335399 () Bool)

(declare-fun e!1495484 () Bool)

(assert (=> b!2335399 (= e!1495484 call!139970)))

(declare-fun d!690453 () Bool)

(declare-fun res!996188 () Bool)

(declare-fun e!1495488 () Bool)

(assert (=> d!690453 (=> res!996188 e!1495488)))

(assert (=> d!690453 (= res!996188 ((_ is ElementMatch!6851) (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))))))

(assert (=> d!690453 (= (validRegex!2596 (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))) e!1495488)))

(declare-fun b!2335400 () Bool)

(declare-fun e!1495485 () Bool)

(declare-fun call!139972 () Bool)

(assert (=> b!2335400 (= e!1495485 call!139972)))

(declare-fun b!2335401 () Bool)

(declare-fun res!996190 () Bool)

(assert (=> b!2335401 (=> res!996190 e!1495486)))

(assert (=> b!2335401 (= res!996190 (not ((_ is Concat!11473) (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197))))))))

(declare-fun e!1495489 () Bool)

(assert (=> b!2335401 (= e!1495489 e!1495486)))

(declare-fun c!371191 () Bool)

(declare-fun bm!139966 () Bool)

(assert (=> bm!139966 (= call!139972 (validRegex!2596 (ite c!371191 (reg!7180 (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))) (ite c!371192 (regOne!14215 (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))) (regOne!14214 (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197))))))))))

(declare-fun bm!139967 () Bool)

(assert (=> bm!139967 (= call!139971 call!139972)))

(declare-fun b!2335402 () Bool)

(declare-fun e!1495490 () Bool)

(assert (=> b!2335402 (= e!1495490 e!1495485)))

(declare-fun res!996192 () Bool)

(assert (=> b!2335402 (= res!996192 (not (nullable!1930 (reg!7180 (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))))))))

(assert (=> b!2335402 (=> (not res!996192) (not e!1495485))))

(declare-fun b!2335403 () Bool)

(assert (=> b!2335403 (= e!1495490 e!1495489)))

(assert (=> b!2335403 (= c!371192 ((_ is Union!6851) (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))))))

(declare-fun b!2335404 () Bool)

(declare-fun res!996191 () Bool)

(assert (=> b!2335404 (=> (not res!996191) (not e!1495484))))

(assert (=> b!2335404 (= res!996191 call!139971)))

(assert (=> b!2335404 (= e!1495489 e!1495484)))

(declare-fun b!2335405 () Bool)

(assert (=> b!2335405 (= e!1495488 e!1495490)))

(assert (=> b!2335405 (= c!371191 ((_ is Star!6851) (ite c!371172 (reg!7180 r!26197) (ite c!371173 (regOne!14215 r!26197) (regOne!14214 r!26197)))))))

(assert (= (and d!690453 (not res!996188)) b!2335405))

(assert (= (and b!2335405 c!371191) b!2335402))

(assert (= (and b!2335405 (not c!371191)) b!2335403))

(assert (= (and b!2335402 res!996192) b!2335400))

(assert (= (and b!2335403 c!371192) b!2335404))

(assert (= (and b!2335403 (not c!371192)) b!2335401))

(assert (= (and b!2335404 res!996191) b!2335399))

(assert (= (and b!2335401 (not res!996190)) b!2335397))

(assert (= (and b!2335397 res!996189) b!2335398))

(assert (= (or b!2335399 b!2335398) bm!139965))

(assert (= (or b!2335404 b!2335397) bm!139967))

(assert (= (or b!2335400 bm!139967) bm!139966))

(declare-fun m!2762497 () Bool)

(assert (=> bm!139965 m!2762497))

(declare-fun m!2762499 () Bool)

(assert (=> bm!139966 m!2762499))

(declare-fun m!2762501 () Bool)

(assert (=> b!2335402 m!2762501))

(assert (=> bm!139942 d!690453))

(declare-fun call!139973 () Bool)

(declare-fun bm!139968 () Bool)

(declare-fun c!371194 () Bool)

(assert (=> bm!139968 (= call!139973 (validRegex!2596 (ite c!371194 (regTwo!14215 (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))) (regTwo!14214 (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))))))))

(declare-fun b!2335406 () Bool)

(declare-fun e!1495493 () Bool)

(declare-fun e!1495494 () Bool)

(assert (=> b!2335406 (= e!1495493 e!1495494)))

(declare-fun res!996194 () Bool)

(assert (=> b!2335406 (=> (not res!996194) (not e!1495494))))

(declare-fun call!139974 () Bool)

(assert (=> b!2335406 (= res!996194 call!139974)))

(declare-fun b!2335407 () Bool)

(assert (=> b!2335407 (= e!1495494 call!139973)))

(declare-fun b!2335408 () Bool)

(declare-fun e!1495491 () Bool)

(assert (=> b!2335408 (= e!1495491 call!139973)))

(declare-fun d!690455 () Bool)

(declare-fun res!996193 () Bool)

(declare-fun e!1495495 () Bool)

(assert (=> d!690455 (=> res!996193 e!1495495)))

(assert (=> d!690455 (= res!996193 ((_ is ElementMatch!6851) (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))))))

(assert (=> d!690455 (= (validRegex!2596 (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))) e!1495495)))

(declare-fun b!2335409 () Bool)

(declare-fun e!1495492 () Bool)

(declare-fun call!139975 () Bool)

(assert (=> b!2335409 (= e!1495492 call!139975)))

(declare-fun b!2335410 () Bool)

(declare-fun res!996195 () Bool)

(assert (=> b!2335410 (=> res!996195 e!1495493)))

(assert (=> b!2335410 (= res!996195 (not ((_ is Concat!11473) (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197)))))))

(declare-fun e!1495496 () Bool)

(assert (=> b!2335410 (= e!1495496 e!1495493)))

(declare-fun c!371193 () Bool)

(declare-fun bm!139969 () Bool)

(assert (=> bm!139969 (= call!139975 (validRegex!2596 (ite c!371193 (reg!7180 (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))) (ite c!371194 (regOne!14215 (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))) (regOne!14214 (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197)))))))))

(declare-fun bm!139970 () Bool)

(assert (=> bm!139970 (= call!139974 call!139975)))

(declare-fun b!2335411 () Bool)

(declare-fun e!1495497 () Bool)

(assert (=> b!2335411 (= e!1495497 e!1495492)))

(declare-fun res!996197 () Bool)

(assert (=> b!2335411 (= res!996197 (not (nullable!1930 (reg!7180 (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))))))))

(assert (=> b!2335411 (=> (not res!996197) (not e!1495492))))

(declare-fun b!2335412 () Bool)

(assert (=> b!2335412 (= e!1495497 e!1495496)))

(assert (=> b!2335412 (= c!371194 ((_ is Union!6851) (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))))))

(declare-fun b!2335413 () Bool)

(declare-fun res!996196 () Bool)

(assert (=> b!2335413 (=> (not res!996196) (not e!1495491))))

(assert (=> b!2335413 (= res!996196 call!139974)))

(assert (=> b!2335413 (= e!1495496 e!1495491)))

(declare-fun b!2335414 () Bool)

(assert (=> b!2335414 (= e!1495495 e!1495497)))

(assert (=> b!2335414 (= c!371193 ((_ is Star!6851) (ite c!371173 (regTwo!14215 r!26197) (regTwo!14214 r!26197))))))

(assert (= (and d!690455 (not res!996193)) b!2335414))

(assert (= (and b!2335414 c!371193) b!2335411))

(assert (= (and b!2335414 (not c!371193)) b!2335412))

(assert (= (and b!2335411 res!996197) b!2335409))

(assert (= (and b!2335412 c!371194) b!2335413))

(assert (= (and b!2335412 (not c!371194)) b!2335410))

(assert (= (and b!2335413 res!996196) b!2335408))

(assert (= (and b!2335410 (not res!996195)) b!2335406))

(assert (= (and b!2335406 res!996194) b!2335407))

(assert (= (or b!2335408 b!2335407) bm!139968))

(assert (= (or b!2335413 b!2335406) bm!139970))

(assert (= (or b!2335409 bm!139970) bm!139969))

(declare-fun m!2762503 () Bool)

(assert (=> bm!139968 m!2762503))

(declare-fun m!2762505 () Bool)

(assert (=> bm!139969 m!2762505))

(declare-fun m!2762507 () Bool)

(assert (=> b!2335411 m!2762507))

(assert (=> bm!139941 d!690455))

(declare-fun b!2335416 () Bool)

(declare-fun e!1495498 () Bool)

(declare-fun tp!740632 () Bool)

(declare-fun tp!740633 () Bool)

(assert (=> b!2335416 (= e!1495498 (and tp!740632 tp!740633))))

(declare-fun b!2335417 () Bool)

(declare-fun tp!740635 () Bool)

(assert (=> b!2335417 (= e!1495498 tp!740635)))

(assert (=> b!2335304 (= tp!740594 e!1495498)))

(declare-fun b!2335418 () Bool)

(declare-fun tp!740634 () Bool)

(declare-fun tp!740636 () Bool)

(assert (=> b!2335418 (= e!1495498 (and tp!740634 tp!740636))))

(declare-fun b!2335415 () Bool)

(assert (=> b!2335415 (= e!1495498 tp_is_empty!11013)))

(assert (= (and b!2335304 ((_ is ElementMatch!6851) (regOne!14215 (reg!7180 r!26197)))) b!2335415))

(assert (= (and b!2335304 ((_ is Concat!11473) (regOne!14215 (reg!7180 r!26197)))) b!2335416))

(assert (= (and b!2335304 ((_ is Star!6851) (regOne!14215 (reg!7180 r!26197)))) b!2335417))

(assert (= (and b!2335304 ((_ is Union!6851) (regOne!14215 (reg!7180 r!26197)))) b!2335418))

(declare-fun b!2335420 () Bool)

(declare-fun e!1495499 () Bool)

(declare-fun tp!740637 () Bool)

(declare-fun tp!740638 () Bool)

(assert (=> b!2335420 (= e!1495499 (and tp!740637 tp!740638))))

(declare-fun b!2335421 () Bool)

(declare-fun tp!740640 () Bool)

(assert (=> b!2335421 (= e!1495499 tp!740640)))

(assert (=> b!2335304 (= tp!740596 e!1495499)))

(declare-fun b!2335422 () Bool)

(declare-fun tp!740639 () Bool)

(declare-fun tp!740641 () Bool)

(assert (=> b!2335422 (= e!1495499 (and tp!740639 tp!740641))))

(declare-fun b!2335419 () Bool)

(assert (=> b!2335419 (= e!1495499 tp_is_empty!11013)))

(assert (= (and b!2335304 ((_ is ElementMatch!6851) (regTwo!14215 (reg!7180 r!26197)))) b!2335419))

(assert (= (and b!2335304 ((_ is Concat!11473) (regTwo!14215 (reg!7180 r!26197)))) b!2335420))

(assert (= (and b!2335304 ((_ is Star!6851) (regTwo!14215 (reg!7180 r!26197)))) b!2335421))

(assert (= (and b!2335304 ((_ is Union!6851) (regTwo!14215 (reg!7180 r!26197)))) b!2335422))

(declare-fun b!2335424 () Bool)

(declare-fun e!1495500 () Bool)

(declare-fun tp!740642 () Bool)

(declare-fun tp!740643 () Bool)

(assert (=> b!2335424 (= e!1495500 (and tp!740642 tp!740643))))

(declare-fun b!2335425 () Bool)

(declare-fun tp!740645 () Bool)

(assert (=> b!2335425 (= e!1495500 tp!740645)))

(assert (=> b!2335303 (= tp!740595 e!1495500)))

(declare-fun b!2335426 () Bool)

(declare-fun tp!740644 () Bool)

(declare-fun tp!740646 () Bool)

(assert (=> b!2335426 (= e!1495500 (and tp!740644 tp!740646))))

(declare-fun b!2335423 () Bool)

(assert (=> b!2335423 (= e!1495500 tp_is_empty!11013)))

(assert (= (and b!2335303 ((_ is ElementMatch!6851) (reg!7180 (reg!7180 r!26197)))) b!2335423))

(assert (= (and b!2335303 ((_ is Concat!11473) (reg!7180 (reg!7180 r!26197)))) b!2335424))

(assert (= (and b!2335303 ((_ is Star!6851) (reg!7180 (reg!7180 r!26197)))) b!2335425))

(assert (= (and b!2335303 ((_ is Union!6851) (reg!7180 (reg!7180 r!26197)))) b!2335426))

(declare-fun b!2335428 () Bool)

(declare-fun e!1495501 () Bool)

(declare-fun tp!740647 () Bool)

(declare-fun tp!740648 () Bool)

(assert (=> b!2335428 (= e!1495501 (and tp!740647 tp!740648))))

(declare-fun b!2335429 () Bool)

(declare-fun tp!740650 () Bool)

(assert (=> b!2335429 (= e!1495501 tp!740650)))

(assert (=> b!2335330 (= tp!740627 e!1495501)))

(declare-fun b!2335430 () Bool)

(declare-fun tp!740649 () Bool)

(declare-fun tp!740651 () Bool)

(assert (=> b!2335430 (= e!1495501 (and tp!740649 tp!740651))))

(declare-fun b!2335427 () Bool)

(assert (=> b!2335427 (= e!1495501 tp_is_empty!11013)))

(assert (= (and b!2335330 ((_ is ElementMatch!6851) (regOne!14214 (regTwo!14214 r!26197)))) b!2335427))

(assert (= (and b!2335330 ((_ is Concat!11473) (regOne!14214 (regTwo!14214 r!26197)))) b!2335428))

(assert (= (and b!2335330 ((_ is Star!6851) (regOne!14214 (regTwo!14214 r!26197)))) b!2335429))

(assert (= (and b!2335330 ((_ is Union!6851) (regOne!14214 (regTwo!14214 r!26197)))) b!2335430))

(declare-fun b!2335432 () Bool)

(declare-fun e!1495502 () Bool)

(declare-fun tp!740652 () Bool)

(declare-fun tp!740653 () Bool)

(assert (=> b!2335432 (= e!1495502 (and tp!740652 tp!740653))))

(declare-fun b!2335433 () Bool)

(declare-fun tp!740655 () Bool)

(assert (=> b!2335433 (= e!1495502 tp!740655)))

(assert (=> b!2335330 (= tp!740628 e!1495502)))

(declare-fun b!2335434 () Bool)

(declare-fun tp!740654 () Bool)

(declare-fun tp!740656 () Bool)

(assert (=> b!2335434 (= e!1495502 (and tp!740654 tp!740656))))

(declare-fun b!2335431 () Bool)

(assert (=> b!2335431 (= e!1495502 tp_is_empty!11013)))

(assert (= (and b!2335330 ((_ is ElementMatch!6851) (regTwo!14214 (regTwo!14214 r!26197)))) b!2335431))

(assert (= (and b!2335330 ((_ is Concat!11473) (regTwo!14214 (regTwo!14214 r!26197)))) b!2335432))

(assert (= (and b!2335330 ((_ is Star!6851) (regTwo!14214 (regTwo!14214 r!26197)))) b!2335433))

(assert (= (and b!2335330 ((_ is Union!6851) (regTwo!14214 (regTwo!14214 r!26197)))) b!2335434))

(declare-fun b!2335436 () Bool)

(declare-fun e!1495503 () Bool)

(declare-fun tp!740657 () Bool)

(declare-fun tp!740658 () Bool)

(assert (=> b!2335436 (= e!1495503 (and tp!740657 tp!740658))))

(declare-fun b!2335437 () Bool)

(declare-fun tp!740660 () Bool)

(assert (=> b!2335437 (= e!1495503 tp!740660)))

(assert (=> b!2335328 (= tp!740624 e!1495503)))

(declare-fun b!2335438 () Bool)

(declare-fun tp!740659 () Bool)

(declare-fun tp!740661 () Bool)

(assert (=> b!2335438 (= e!1495503 (and tp!740659 tp!740661))))

(declare-fun b!2335435 () Bool)

(assert (=> b!2335435 (= e!1495503 tp_is_empty!11013)))

(assert (= (and b!2335328 ((_ is ElementMatch!6851) (regOne!14215 (regOne!14214 r!26197)))) b!2335435))

(assert (= (and b!2335328 ((_ is Concat!11473) (regOne!14215 (regOne!14214 r!26197)))) b!2335436))

(assert (= (and b!2335328 ((_ is Star!6851) (regOne!14215 (regOne!14214 r!26197)))) b!2335437))

(assert (= (and b!2335328 ((_ is Union!6851) (regOne!14215 (regOne!14214 r!26197)))) b!2335438))

(declare-fun b!2335440 () Bool)

(declare-fun e!1495504 () Bool)

(declare-fun tp!740662 () Bool)

(declare-fun tp!740663 () Bool)

(assert (=> b!2335440 (= e!1495504 (and tp!740662 tp!740663))))

(declare-fun b!2335441 () Bool)

(declare-fun tp!740665 () Bool)

(assert (=> b!2335441 (= e!1495504 tp!740665)))

(assert (=> b!2335328 (= tp!740626 e!1495504)))

(declare-fun b!2335442 () Bool)

(declare-fun tp!740664 () Bool)

(declare-fun tp!740666 () Bool)

(assert (=> b!2335442 (= e!1495504 (and tp!740664 tp!740666))))

(declare-fun b!2335439 () Bool)

(assert (=> b!2335439 (= e!1495504 tp_is_empty!11013)))

(assert (= (and b!2335328 ((_ is ElementMatch!6851) (regTwo!14215 (regOne!14214 r!26197)))) b!2335439))

(assert (= (and b!2335328 ((_ is Concat!11473) (regTwo!14215 (regOne!14214 r!26197)))) b!2335440))

(assert (= (and b!2335328 ((_ is Star!6851) (regTwo!14215 (regOne!14214 r!26197)))) b!2335441))

(assert (= (and b!2335328 ((_ is Union!6851) (regTwo!14215 (regOne!14214 r!26197)))) b!2335442))

(declare-fun b!2335444 () Bool)

(declare-fun e!1495505 () Bool)

(declare-fun tp!740667 () Bool)

(declare-fun tp!740668 () Bool)

(assert (=> b!2335444 (= e!1495505 (and tp!740667 tp!740668))))

(declare-fun b!2335445 () Bool)

(declare-fun tp!740670 () Bool)

(assert (=> b!2335445 (= e!1495505 tp!740670)))

(assert (=> b!2335332 (= tp!740629 e!1495505)))

(declare-fun b!2335446 () Bool)

(declare-fun tp!740669 () Bool)

(declare-fun tp!740671 () Bool)

(assert (=> b!2335446 (= e!1495505 (and tp!740669 tp!740671))))

(declare-fun b!2335443 () Bool)

(assert (=> b!2335443 (= e!1495505 tp_is_empty!11013)))

(assert (= (and b!2335332 ((_ is ElementMatch!6851) (regOne!14215 (regTwo!14214 r!26197)))) b!2335443))

(assert (= (and b!2335332 ((_ is Concat!11473) (regOne!14215 (regTwo!14214 r!26197)))) b!2335444))

(assert (= (and b!2335332 ((_ is Star!6851) (regOne!14215 (regTwo!14214 r!26197)))) b!2335445))

(assert (= (and b!2335332 ((_ is Union!6851) (regOne!14215 (regTwo!14214 r!26197)))) b!2335446))

(declare-fun b!2335448 () Bool)

(declare-fun e!1495506 () Bool)

(declare-fun tp!740672 () Bool)

(declare-fun tp!740673 () Bool)

(assert (=> b!2335448 (= e!1495506 (and tp!740672 tp!740673))))

(declare-fun b!2335449 () Bool)

(declare-fun tp!740675 () Bool)

(assert (=> b!2335449 (= e!1495506 tp!740675)))

(assert (=> b!2335332 (= tp!740631 e!1495506)))

(declare-fun b!2335450 () Bool)

(declare-fun tp!740674 () Bool)

(declare-fun tp!740676 () Bool)

(assert (=> b!2335450 (= e!1495506 (and tp!740674 tp!740676))))

(declare-fun b!2335447 () Bool)

(assert (=> b!2335447 (= e!1495506 tp_is_empty!11013)))

(assert (= (and b!2335332 ((_ is ElementMatch!6851) (regTwo!14215 (regTwo!14214 r!26197)))) b!2335447))

(assert (= (and b!2335332 ((_ is Concat!11473) (regTwo!14215 (regTwo!14214 r!26197)))) b!2335448))

(assert (= (and b!2335332 ((_ is Star!6851) (regTwo!14215 (regTwo!14214 r!26197)))) b!2335449))

(assert (= (and b!2335332 ((_ is Union!6851) (regTwo!14215 (regTwo!14214 r!26197)))) b!2335450))

(declare-fun b!2335452 () Bool)

(declare-fun e!1495507 () Bool)

(declare-fun tp!740677 () Bool)

(declare-fun tp!740678 () Bool)

(assert (=> b!2335452 (= e!1495507 (and tp!740677 tp!740678))))

(declare-fun b!2335453 () Bool)

(declare-fun tp!740680 () Bool)

(assert (=> b!2335453 (= e!1495507 tp!740680)))

(assert (=> b!2335318 (= tp!740612 e!1495507)))

(declare-fun b!2335454 () Bool)

(declare-fun tp!740679 () Bool)

(declare-fun tp!740681 () Bool)

(assert (=> b!2335454 (= e!1495507 (and tp!740679 tp!740681))))

(declare-fun b!2335451 () Bool)

(assert (=> b!2335451 (= e!1495507 tp_is_empty!11013)))

(assert (= (and b!2335318 ((_ is ElementMatch!6851) (regOne!14214 (regTwo!14215 r!26197)))) b!2335451))

(assert (= (and b!2335318 ((_ is Concat!11473) (regOne!14214 (regTwo!14215 r!26197)))) b!2335452))

(assert (= (and b!2335318 ((_ is Star!6851) (regOne!14214 (regTwo!14215 r!26197)))) b!2335453))

(assert (= (and b!2335318 ((_ is Union!6851) (regOne!14214 (regTwo!14215 r!26197)))) b!2335454))

(declare-fun b!2335456 () Bool)

(declare-fun e!1495508 () Bool)

(declare-fun tp!740682 () Bool)

(declare-fun tp!740683 () Bool)

(assert (=> b!2335456 (= e!1495508 (and tp!740682 tp!740683))))

(declare-fun b!2335457 () Bool)

(declare-fun tp!740685 () Bool)

(assert (=> b!2335457 (= e!1495508 tp!740685)))

(assert (=> b!2335318 (= tp!740613 e!1495508)))

(declare-fun b!2335458 () Bool)

(declare-fun tp!740684 () Bool)

(declare-fun tp!740686 () Bool)

(assert (=> b!2335458 (= e!1495508 (and tp!740684 tp!740686))))

(declare-fun b!2335455 () Bool)

(assert (=> b!2335455 (= e!1495508 tp_is_empty!11013)))

(assert (= (and b!2335318 ((_ is ElementMatch!6851) (regTwo!14214 (regTwo!14215 r!26197)))) b!2335455))

(assert (= (and b!2335318 ((_ is Concat!11473) (regTwo!14214 (regTwo!14215 r!26197)))) b!2335456))

(assert (= (and b!2335318 ((_ is Star!6851) (regTwo!14214 (regTwo!14215 r!26197)))) b!2335457))

(assert (= (and b!2335318 ((_ is Union!6851) (regTwo!14214 (regTwo!14215 r!26197)))) b!2335458))

(declare-fun b!2335460 () Bool)

(declare-fun e!1495509 () Bool)

(declare-fun tp!740687 () Bool)

(declare-fun tp!740688 () Bool)

(assert (=> b!2335460 (= e!1495509 (and tp!740687 tp!740688))))

(declare-fun b!2335461 () Bool)

(declare-fun tp!740690 () Bool)

(assert (=> b!2335461 (= e!1495509 tp!740690)))

(assert (=> b!2335327 (= tp!740625 e!1495509)))

(declare-fun b!2335462 () Bool)

(declare-fun tp!740689 () Bool)

(declare-fun tp!740691 () Bool)

(assert (=> b!2335462 (= e!1495509 (and tp!740689 tp!740691))))

(declare-fun b!2335459 () Bool)

(assert (=> b!2335459 (= e!1495509 tp_is_empty!11013)))

(assert (= (and b!2335327 ((_ is ElementMatch!6851) (reg!7180 (regOne!14214 r!26197)))) b!2335459))

(assert (= (and b!2335327 ((_ is Concat!11473) (reg!7180 (regOne!14214 r!26197)))) b!2335460))

(assert (= (and b!2335327 ((_ is Star!6851) (reg!7180 (regOne!14214 r!26197)))) b!2335461))

(assert (= (and b!2335327 ((_ is Union!6851) (reg!7180 (regOne!14214 r!26197)))) b!2335462))

(declare-fun b!2335464 () Bool)

(declare-fun e!1495510 () Bool)

(declare-fun tp!740692 () Bool)

(declare-fun tp!740693 () Bool)

(assert (=> b!2335464 (= e!1495510 (and tp!740692 tp!740693))))

(declare-fun b!2335465 () Bool)

(declare-fun tp!740695 () Bool)

(assert (=> b!2335465 (= e!1495510 tp!740695)))

(assert (=> b!2335331 (= tp!740630 e!1495510)))

(declare-fun b!2335466 () Bool)

(declare-fun tp!740694 () Bool)

(declare-fun tp!740696 () Bool)

(assert (=> b!2335466 (= e!1495510 (and tp!740694 tp!740696))))

(declare-fun b!2335463 () Bool)

(assert (=> b!2335463 (= e!1495510 tp_is_empty!11013)))

(assert (= (and b!2335331 ((_ is ElementMatch!6851) (reg!7180 (regTwo!14214 r!26197)))) b!2335463))

(assert (= (and b!2335331 ((_ is Concat!11473) (reg!7180 (regTwo!14214 r!26197)))) b!2335464))

(assert (= (and b!2335331 ((_ is Star!6851) (reg!7180 (regTwo!14214 r!26197)))) b!2335465))

(assert (= (and b!2335331 ((_ is Union!6851) (reg!7180 (regTwo!14214 r!26197)))) b!2335466))

(declare-fun b!2335468 () Bool)

(declare-fun e!1495511 () Bool)

(declare-fun tp!740697 () Bool)

(declare-fun tp!740698 () Bool)

(assert (=> b!2335468 (= e!1495511 (and tp!740697 tp!740698))))

(declare-fun b!2335469 () Bool)

(declare-fun tp!740700 () Bool)

(assert (=> b!2335469 (= e!1495511 tp!740700)))

(assert (=> b!2335326 (= tp!740622 e!1495511)))

(declare-fun b!2335470 () Bool)

(declare-fun tp!740699 () Bool)

(declare-fun tp!740701 () Bool)

(assert (=> b!2335470 (= e!1495511 (and tp!740699 tp!740701))))

(declare-fun b!2335467 () Bool)

(assert (=> b!2335467 (= e!1495511 tp_is_empty!11013)))

(assert (= (and b!2335326 ((_ is ElementMatch!6851) (regOne!14214 (regOne!14214 r!26197)))) b!2335467))

(assert (= (and b!2335326 ((_ is Concat!11473) (regOne!14214 (regOne!14214 r!26197)))) b!2335468))

(assert (= (and b!2335326 ((_ is Star!6851) (regOne!14214 (regOne!14214 r!26197)))) b!2335469))

(assert (= (and b!2335326 ((_ is Union!6851) (regOne!14214 (regOne!14214 r!26197)))) b!2335470))

(declare-fun b!2335472 () Bool)

(declare-fun e!1495512 () Bool)

(declare-fun tp!740702 () Bool)

(declare-fun tp!740703 () Bool)

(assert (=> b!2335472 (= e!1495512 (and tp!740702 tp!740703))))

(declare-fun b!2335473 () Bool)

(declare-fun tp!740705 () Bool)

(assert (=> b!2335473 (= e!1495512 tp!740705)))

(assert (=> b!2335326 (= tp!740623 e!1495512)))

(declare-fun b!2335474 () Bool)

(declare-fun tp!740704 () Bool)

(declare-fun tp!740706 () Bool)

(assert (=> b!2335474 (= e!1495512 (and tp!740704 tp!740706))))

(declare-fun b!2335471 () Bool)

(assert (=> b!2335471 (= e!1495512 tp_is_empty!11013)))

(assert (= (and b!2335326 ((_ is ElementMatch!6851) (regTwo!14214 (regOne!14214 r!26197)))) b!2335471))

(assert (= (and b!2335326 ((_ is Concat!11473) (regTwo!14214 (regOne!14214 r!26197)))) b!2335472))

(assert (= (and b!2335326 ((_ is Star!6851) (regTwo!14214 (regOne!14214 r!26197)))) b!2335473))

(assert (= (and b!2335326 ((_ is Union!6851) (regTwo!14214 (regOne!14214 r!26197)))) b!2335474))

(declare-fun b!2335476 () Bool)

(declare-fun e!1495513 () Bool)

(declare-fun tp!740707 () Bool)

(declare-fun tp!740708 () Bool)

(assert (=> b!2335476 (= e!1495513 (and tp!740707 tp!740708))))

(declare-fun b!2335477 () Bool)

(declare-fun tp!740710 () Bool)

(assert (=> b!2335477 (= e!1495513 tp!740710)))

(assert (=> b!2335312 (= tp!740604 e!1495513)))

(declare-fun b!2335478 () Bool)

(declare-fun tp!740709 () Bool)

(declare-fun tp!740711 () Bool)

(assert (=> b!2335478 (= e!1495513 (and tp!740709 tp!740711))))

(declare-fun b!2335475 () Bool)

(assert (=> b!2335475 (= e!1495513 tp_is_empty!11013)))

(assert (= (and b!2335312 ((_ is ElementMatch!6851) (regOne!14215 (regOne!14215 r!26197)))) b!2335475))

(assert (= (and b!2335312 ((_ is Concat!11473) (regOne!14215 (regOne!14215 r!26197)))) b!2335476))

(assert (= (and b!2335312 ((_ is Star!6851) (regOne!14215 (regOne!14215 r!26197)))) b!2335477))

(assert (= (and b!2335312 ((_ is Union!6851) (regOne!14215 (regOne!14215 r!26197)))) b!2335478))

(declare-fun b!2335480 () Bool)

(declare-fun e!1495514 () Bool)

(declare-fun tp!740712 () Bool)

(declare-fun tp!740713 () Bool)

(assert (=> b!2335480 (= e!1495514 (and tp!740712 tp!740713))))

(declare-fun b!2335481 () Bool)

(declare-fun tp!740715 () Bool)

(assert (=> b!2335481 (= e!1495514 tp!740715)))

(assert (=> b!2335312 (= tp!740606 e!1495514)))

(declare-fun b!2335482 () Bool)

(declare-fun tp!740714 () Bool)

(declare-fun tp!740716 () Bool)

(assert (=> b!2335482 (= e!1495514 (and tp!740714 tp!740716))))

(declare-fun b!2335479 () Bool)

(assert (=> b!2335479 (= e!1495514 tp_is_empty!11013)))

(assert (= (and b!2335312 ((_ is ElementMatch!6851) (regTwo!14215 (regOne!14215 r!26197)))) b!2335479))

(assert (= (and b!2335312 ((_ is Concat!11473) (regTwo!14215 (regOne!14215 r!26197)))) b!2335480))

(assert (= (and b!2335312 ((_ is Star!6851) (regTwo!14215 (regOne!14215 r!26197)))) b!2335481))

(assert (= (and b!2335312 ((_ is Union!6851) (regTwo!14215 (regOne!14215 r!26197)))) b!2335482))

(declare-fun b!2335484 () Bool)

(declare-fun e!1495515 () Bool)

(declare-fun tp!740717 () Bool)

(declare-fun tp!740718 () Bool)

(assert (=> b!2335484 (= e!1495515 (and tp!740717 tp!740718))))

(declare-fun b!2335485 () Bool)

(declare-fun tp!740720 () Bool)

(assert (=> b!2335485 (= e!1495515 tp!740720)))

(assert (=> b!2335302 (= tp!740592 e!1495515)))

(declare-fun b!2335486 () Bool)

(declare-fun tp!740719 () Bool)

(declare-fun tp!740721 () Bool)

(assert (=> b!2335486 (= e!1495515 (and tp!740719 tp!740721))))

(declare-fun b!2335483 () Bool)

(assert (=> b!2335483 (= e!1495515 tp_is_empty!11013)))

(assert (= (and b!2335302 ((_ is ElementMatch!6851) (regOne!14214 (reg!7180 r!26197)))) b!2335483))

(assert (= (and b!2335302 ((_ is Concat!11473) (regOne!14214 (reg!7180 r!26197)))) b!2335484))

(assert (= (and b!2335302 ((_ is Star!6851) (regOne!14214 (reg!7180 r!26197)))) b!2335485))

(assert (= (and b!2335302 ((_ is Union!6851) (regOne!14214 (reg!7180 r!26197)))) b!2335486))

(declare-fun b!2335488 () Bool)

(declare-fun e!1495516 () Bool)

(declare-fun tp!740722 () Bool)

(declare-fun tp!740723 () Bool)

(assert (=> b!2335488 (= e!1495516 (and tp!740722 tp!740723))))

(declare-fun b!2335489 () Bool)

(declare-fun tp!740725 () Bool)

(assert (=> b!2335489 (= e!1495516 tp!740725)))

(assert (=> b!2335302 (= tp!740593 e!1495516)))

(declare-fun b!2335490 () Bool)

(declare-fun tp!740724 () Bool)

(declare-fun tp!740726 () Bool)

(assert (=> b!2335490 (= e!1495516 (and tp!740724 tp!740726))))

(declare-fun b!2335487 () Bool)

(assert (=> b!2335487 (= e!1495516 tp_is_empty!11013)))

(assert (= (and b!2335302 ((_ is ElementMatch!6851) (regTwo!14214 (reg!7180 r!26197)))) b!2335487))

(assert (= (and b!2335302 ((_ is Concat!11473) (regTwo!14214 (reg!7180 r!26197)))) b!2335488))

(assert (= (and b!2335302 ((_ is Star!6851) (regTwo!14214 (reg!7180 r!26197)))) b!2335489))

(assert (= (and b!2335302 ((_ is Union!6851) (regTwo!14214 (reg!7180 r!26197)))) b!2335490))

(declare-fun b!2335492 () Bool)

(declare-fun e!1495517 () Bool)

(declare-fun tp!740727 () Bool)

(declare-fun tp!740728 () Bool)

(assert (=> b!2335492 (= e!1495517 (and tp!740727 tp!740728))))

(declare-fun b!2335493 () Bool)

(declare-fun tp!740730 () Bool)

(assert (=> b!2335493 (= e!1495517 tp!740730)))

(assert (=> b!2335311 (= tp!740605 e!1495517)))

(declare-fun b!2335494 () Bool)

(declare-fun tp!740729 () Bool)

(declare-fun tp!740731 () Bool)

(assert (=> b!2335494 (= e!1495517 (and tp!740729 tp!740731))))

(declare-fun b!2335491 () Bool)

(assert (=> b!2335491 (= e!1495517 tp_is_empty!11013)))

(assert (= (and b!2335311 ((_ is ElementMatch!6851) (reg!7180 (regOne!14215 r!26197)))) b!2335491))

(assert (= (and b!2335311 ((_ is Concat!11473) (reg!7180 (regOne!14215 r!26197)))) b!2335492))

(assert (= (and b!2335311 ((_ is Star!6851) (reg!7180 (regOne!14215 r!26197)))) b!2335493))

(assert (= (and b!2335311 ((_ is Union!6851) (reg!7180 (regOne!14215 r!26197)))) b!2335494))

(declare-fun b!2335496 () Bool)

(declare-fun e!1495518 () Bool)

(declare-fun tp!740732 () Bool)

(declare-fun tp!740733 () Bool)

(assert (=> b!2335496 (= e!1495518 (and tp!740732 tp!740733))))

(declare-fun b!2335497 () Bool)

(declare-fun tp!740735 () Bool)

(assert (=> b!2335497 (= e!1495518 tp!740735)))

(assert (=> b!2335320 (= tp!740614 e!1495518)))

(declare-fun b!2335498 () Bool)

(declare-fun tp!740734 () Bool)

(declare-fun tp!740736 () Bool)

(assert (=> b!2335498 (= e!1495518 (and tp!740734 tp!740736))))

(declare-fun b!2335495 () Bool)

(assert (=> b!2335495 (= e!1495518 tp_is_empty!11013)))

(assert (= (and b!2335320 ((_ is ElementMatch!6851) (regOne!14215 (regTwo!14215 r!26197)))) b!2335495))

(assert (= (and b!2335320 ((_ is Concat!11473) (regOne!14215 (regTwo!14215 r!26197)))) b!2335496))

(assert (= (and b!2335320 ((_ is Star!6851) (regOne!14215 (regTwo!14215 r!26197)))) b!2335497))

(assert (= (and b!2335320 ((_ is Union!6851) (regOne!14215 (regTwo!14215 r!26197)))) b!2335498))

(declare-fun b!2335500 () Bool)

(declare-fun e!1495519 () Bool)

(declare-fun tp!740737 () Bool)

(declare-fun tp!740738 () Bool)

(assert (=> b!2335500 (= e!1495519 (and tp!740737 tp!740738))))

(declare-fun b!2335501 () Bool)

(declare-fun tp!740740 () Bool)

(assert (=> b!2335501 (= e!1495519 tp!740740)))

(assert (=> b!2335320 (= tp!740616 e!1495519)))

(declare-fun b!2335502 () Bool)

(declare-fun tp!740739 () Bool)

(declare-fun tp!740741 () Bool)

(assert (=> b!2335502 (= e!1495519 (and tp!740739 tp!740741))))

(declare-fun b!2335499 () Bool)

(assert (=> b!2335499 (= e!1495519 tp_is_empty!11013)))

(assert (= (and b!2335320 ((_ is ElementMatch!6851) (regTwo!14215 (regTwo!14215 r!26197)))) b!2335499))

(assert (= (and b!2335320 ((_ is Concat!11473) (regTwo!14215 (regTwo!14215 r!26197)))) b!2335500))

(assert (= (and b!2335320 ((_ is Star!6851) (regTwo!14215 (regTwo!14215 r!26197)))) b!2335501))

(assert (= (and b!2335320 ((_ is Union!6851) (regTwo!14215 (regTwo!14215 r!26197)))) b!2335502))

(declare-fun b!2335504 () Bool)

(declare-fun e!1495520 () Bool)

(declare-fun tp!740742 () Bool)

(declare-fun tp!740743 () Bool)

(assert (=> b!2335504 (= e!1495520 (and tp!740742 tp!740743))))

(declare-fun b!2335505 () Bool)

(declare-fun tp!740745 () Bool)

(assert (=> b!2335505 (= e!1495520 tp!740745)))

(assert (=> b!2335310 (= tp!740602 e!1495520)))

(declare-fun b!2335506 () Bool)

(declare-fun tp!740744 () Bool)

(declare-fun tp!740746 () Bool)

(assert (=> b!2335506 (= e!1495520 (and tp!740744 tp!740746))))

(declare-fun b!2335503 () Bool)

(assert (=> b!2335503 (= e!1495520 tp_is_empty!11013)))

(assert (= (and b!2335310 ((_ is ElementMatch!6851) (regOne!14214 (regOne!14215 r!26197)))) b!2335503))

(assert (= (and b!2335310 ((_ is Concat!11473) (regOne!14214 (regOne!14215 r!26197)))) b!2335504))

(assert (= (and b!2335310 ((_ is Star!6851) (regOne!14214 (regOne!14215 r!26197)))) b!2335505))

(assert (= (and b!2335310 ((_ is Union!6851) (regOne!14214 (regOne!14215 r!26197)))) b!2335506))

(declare-fun b!2335508 () Bool)

(declare-fun e!1495521 () Bool)

(declare-fun tp!740747 () Bool)

(declare-fun tp!740748 () Bool)

(assert (=> b!2335508 (= e!1495521 (and tp!740747 tp!740748))))

(declare-fun b!2335509 () Bool)

(declare-fun tp!740750 () Bool)

(assert (=> b!2335509 (= e!1495521 tp!740750)))

(assert (=> b!2335310 (= tp!740603 e!1495521)))

(declare-fun b!2335510 () Bool)

(declare-fun tp!740749 () Bool)

(declare-fun tp!740751 () Bool)

(assert (=> b!2335510 (= e!1495521 (and tp!740749 tp!740751))))

(declare-fun b!2335507 () Bool)

(assert (=> b!2335507 (= e!1495521 tp_is_empty!11013)))

(assert (= (and b!2335310 ((_ is ElementMatch!6851) (regTwo!14214 (regOne!14215 r!26197)))) b!2335507))

(assert (= (and b!2335310 ((_ is Concat!11473) (regTwo!14214 (regOne!14215 r!26197)))) b!2335508))

(assert (= (and b!2335310 ((_ is Star!6851) (regTwo!14214 (regOne!14215 r!26197)))) b!2335509))

(assert (= (and b!2335310 ((_ is Union!6851) (regTwo!14214 (regOne!14215 r!26197)))) b!2335510))

(declare-fun b!2335512 () Bool)

(declare-fun e!1495522 () Bool)

(declare-fun tp!740752 () Bool)

(declare-fun tp!740753 () Bool)

(assert (=> b!2335512 (= e!1495522 (and tp!740752 tp!740753))))

(declare-fun b!2335513 () Bool)

(declare-fun tp!740755 () Bool)

(assert (=> b!2335513 (= e!1495522 tp!740755)))

(assert (=> b!2335319 (= tp!740615 e!1495522)))

(declare-fun b!2335514 () Bool)

(declare-fun tp!740754 () Bool)

(declare-fun tp!740756 () Bool)

(assert (=> b!2335514 (= e!1495522 (and tp!740754 tp!740756))))

(declare-fun b!2335511 () Bool)

(assert (=> b!2335511 (= e!1495522 tp_is_empty!11013)))

(assert (= (and b!2335319 ((_ is ElementMatch!6851) (reg!7180 (regTwo!14215 r!26197)))) b!2335511))

(assert (= (and b!2335319 ((_ is Concat!11473) (reg!7180 (regTwo!14215 r!26197)))) b!2335512))

(assert (= (and b!2335319 ((_ is Star!6851) (reg!7180 (regTwo!14215 r!26197)))) b!2335513))

(assert (= (and b!2335319 ((_ is Union!6851) (reg!7180 (regTwo!14215 r!26197)))) b!2335514))

(check-sat (not b!2335488) (not b!2335514) (not b!2335420) (not b!2335485) (not b!2335438) (not b!2335497) (not b!2335456) (not b!2335458) (not b!2335460) (not b!2335493) (not b!2335434) (not bm!139960) (not bm!139951) (not b!2335442) (not b!2335411) (not b!2335490) (not b!2335422) (not b!2335416) (not b!2335496) (not bm!139962) (not bm!139961) (not b!2335509) (not b!2335436) (not b!2335433) (not b!2335465) (not bm!139969) (not bm!139964) (not b!2335506) (not b!2335480) (not b!2335498) (not b!2335453) (not b!2335477) (not b!2335508) (not b!2335473) (not b!2335468) (not b!2335481) (not b!2335482) (not b!2335432) (not bm!139963) (not b!2335512) (not b!2335445) (not d!690441) (not b!2335441) (not b!2335448) (not b!2335338) (not bm!139966) (not b!2335472) (not b!2335513) (not b!2335454) (not b!2335426) (not b!2335492) (not b!2335446) (not bm!139944) (not b!2335417) (not d!690445) (not b!2335462) (not b!2335510) (not b!2335440) (not b!2335489) (not b!2335502) (not b!2335461) (not b!2335402) (not d!690439) (not b!2335450) (not b!2335425) (not d!690443) (not b!2335486) (not bm!139968) (not bm!139965) (not bm!139953) (not bm!139945) (not b!2335359) (not bm!139959) (not b!2335478) (not b!2335469) (not b!2335504) (not b!2335501) (not b!2335349) (not b!2335466) (not b!2335429) (not b!2335500) (not b!2335457) (not b!2335449) (not b!2335452) (not b!2335424) tp_is_empty!11013 (not b!2335464) (not b!2335474) (not b!2335484) (not b!2335444) (not b!2335494) (not b!2335428) (not b!2335418) (not b!2335430) (not bm!139947) (not bm!139949) (not b!2335421) (not b!2335476) (not b!2335505) (not b!2335470) (not b!2335437))
(check-sat)

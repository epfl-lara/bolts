; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704850 () Bool)

(assert start!704850)

(declare-fun b!7247202 () Bool)

(assert (=> b!7247202 true))

(declare-fun b!7247201 () Bool)

(declare-fun e!4345378 () Bool)

(declare-fun tp!2036790 () Bool)

(assert (=> b!7247201 (= e!4345378 tp!2036790)))

(declare-fun e!4345377 () Bool)

(declare-fun e!4345372 () Bool)

(assert (=> b!7247202 (= e!4345377 (not e!4345372))))

(declare-fun res!2939607 () Bool)

(assert (=> b!7247202 (=> res!2939607 e!4345372)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37520 0))(
  ( (C!37521 (val!28708 Int)) )
))
(declare-datatypes ((Regex!18623 0))(
  ( (ElementMatch!18623 (c!1346334 C!37520)) (Concat!27468 (regOne!37758 Regex!18623) (regTwo!37758 Regex!18623)) (EmptyExpr!18623) (Star!18623 (reg!18952 Regex!18623)) (EmptyLang!18623) (Union!18623 (regOne!37759 Regex!18623) (regTwo!37759 Regex!18623)) )
))
(declare-datatypes ((List!70449 0))(
  ( (Nil!70325) (Cons!70325 (h!76773 Regex!18623) (t!384501 List!70449)) )
))
(declare-datatypes ((Context!15126 0))(
  ( (Context!15127 (exprs!8063 List!70449)) )
))
(declare-fun lt!2583235 () (InoxSet Context!15126))

(declare-fun lambda!443377 () Int)

(declare-fun exists!4324 ((InoxSet Context!15126) Int) Bool)

(assert (=> b!7247202 (= res!2939607 (not (exists!4324 lt!2583235 lambda!443377)))))

(declare-datatypes ((List!70450 0))(
  ( (Nil!70326) (Cons!70326 (h!76774 Context!15126) (t!384502 List!70450)) )
))
(declare-fun lt!2583234 () List!70450)

(declare-fun exists!4325 (List!70450 Int) Bool)

(assert (=> b!7247202 (exists!4325 lt!2583234 lambda!443377)))

(declare-datatypes ((Unit!163829 0))(
  ( (Unit!163830) )
))
(declare-fun lt!2583237 () Unit!163829)

(declare-datatypes ((List!70451 0))(
  ( (Nil!70327) (Cons!70327 (h!76775 C!37520) (t!384503 List!70451)) )
))
(declare-fun s1!1971 () List!70451)

(declare-fun lemmaZipperMatchesExistsMatchingContext!726 (List!70450 List!70451) Unit!163829)

(assert (=> b!7247202 (= lt!2583237 (lemmaZipperMatchesExistsMatchingContext!726 lt!2583234 (t!384503 s1!1971)))))

(declare-fun toList!11452 ((InoxSet Context!15126)) List!70450)

(assert (=> b!7247202 (= lt!2583234 (toList!11452 lt!2583235))))

(declare-fun res!2939612 () Bool)

(declare-fun e!4345373 () Bool)

(assert (=> start!704850 (=> (not res!2939612) (not e!4345373))))

(declare-fun lt!2583236 () (InoxSet Context!15126))

(declare-fun matchZipper!3533 ((InoxSet Context!15126) List!70451) Bool)

(assert (=> start!704850 (= res!2939612 (matchZipper!3533 lt!2583236 s1!1971))))

(declare-fun ct1!232 () Context!15126)

(assert (=> start!704850 (= lt!2583236 (store ((as const (Array Context!15126 Bool)) false) ct1!232 true))))

(assert (=> start!704850 e!4345373))

(declare-fun e!4345371 () Bool)

(declare-fun inv!89567 (Context!15126) Bool)

(assert (=> start!704850 (and (inv!89567 ct1!232) e!4345371)))

(declare-fun e!4345374 () Bool)

(assert (=> start!704850 e!4345374))

(declare-fun e!4345376 () Bool)

(assert (=> start!704850 e!4345376))

(declare-fun ct2!328 () Context!15126)

(assert (=> start!704850 (and (inv!89567 ct2!328) e!4345378)))

(declare-fun b!7247203 () Bool)

(declare-fun res!2939609 () Bool)

(assert (=> b!7247203 (=> res!2939609 e!4345372)))

(declare-fun getWitness!2164 ((InoxSet Context!15126) Int) Context!15126)

(assert (=> b!7247203 (= res!2939609 (not (matchZipper!3533 (store ((as const (Array Context!15126 Bool)) false) (getWitness!2164 lt!2583235 lambda!443377) true) (t!384503 s1!1971))))))

(declare-fun b!7247204 () Bool)

(declare-fun res!2939611 () Bool)

(assert (=> b!7247204 (=> (not res!2939611) (not e!4345373))))

(declare-fun s2!1849 () List!70451)

(assert (=> b!7247204 (= res!2939611 (matchZipper!3533 (store ((as const (Array Context!15126 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7247205 () Bool)

(declare-fun e!4345375 () Bool)

(assert (=> b!7247205 (= e!4345373 e!4345375)))

(declare-fun res!2939608 () Bool)

(assert (=> b!7247205 (=> (not res!2939608) (not e!4345375))))

(get-info :version)

(assert (=> b!7247205 (= res!2939608 (and (not ((_ is Nil!70325) (exprs!8063 ct1!232))) ((_ is Cons!70327) s1!1971)))))

(declare-fun lt!2583233 () List!70449)

(declare-fun ++!16509 (List!70449 List!70449) List!70449)

(assert (=> b!7247205 (= lt!2583233 (++!16509 (exprs!8063 ct1!232) (exprs!8063 ct2!328)))))

(declare-fun lt!2583232 () Unit!163829)

(declare-fun lambda!443376 () Int)

(declare-fun lemmaConcatPreservesForall!1430 (List!70449 List!70449 Int) Unit!163829)

(assert (=> b!7247205 (= lt!2583232 (lemmaConcatPreservesForall!1430 (exprs!8063 ct1!232) (exprs!8063 ct2!328) lambda!443376))))

(declare-fun b!7247206 () Bool)

(declare-fun tp_is_empty!46711 () Bool)

(declare-fun tp!2036791 () Bool)

(assert (=> b!7247206 (= e!4345374 (and tp_is_empty!46711 tp!2036791))))

(declare-fun b!7247207 () Bool)

(declare-fun lt!2583231 () Int)

(declare-fun size!41680 (List!70451) Int)

(assert (=> b!7247207 (= e!4345372 (< lt!2583231 (size!41680 s1!1971)))))

(declare-fun lt!2583238 () Int)

(assert (=> b!7247207 (= lt!2583238 (size!41680 s2!1849))))

(assert (=> b!7247207 (= lt!2583231 (size!41680 (t!384503 s1!1971)))))

(declare-fun b!7247208 () Bool)

(declare-fun tp!2036789 () Bool)

(assert (=> b!7247208 (= e!4345371 tp!2036789)))

(declare-fun b!7247209 () Bool)

(assert (=> b!7247209 (= e!4345375 e!4345377)))

(declare-fun res!2939610 () Bool)

(assert (=> b!7247209 (=> (not res!2939610) (not e!4345377))))

(assert (=> b!7247209 (= res!2939610 (matchZipper!3533 lt!2583235 (t!384503 s1!1971)))))

(declare-fun derivationStepZipper!3401 ((InoxSet Context!15126) C!37520) (InoxSet Context!15126))

(assert (=> b!7247209 (= lt!2583235 (derivationStepZipper!3401 lt!2583236 (h!76775 s1!1971)))))

(declare-fun b!7247210 () Bool)

(declare-fun tp!2036792 () Bool)

(assert (=> b!7247210 (= e!4345376 (and tp_is_empty!46711 tp!2036792))))

(assert (= (and start!704850 res!2939612) b!7247204))

(assert (= (and b!7247204 res!2939611) b!7247205))

(assert (= (and b!7247205 res!2939608) b!7247209))

(assert (= (and b!7247209 res!2939610) b!7247202))

(assert (= (and b!7247202 (not res!2939607)) b!7247203))

(assert (= (and b!7247203 (not res!2939609)) b!7247207))

(assert (= start!704850 b!7247208))

(assert (= (and start!704850 ((_ is Cons!70327) s1!1971)) b!7247206))

(assert (= (and start!704850 ((_ is Cons!70327) s2!1849)) b!7247210))

(assert (= start!704850 b!7247201))

(declare-fun m!7924226 () Bool)

(assert (=> b!7247205 m!7924226))

(declare-fun m!7924228 () Bool)

(assert (=> b!7247205 m!7924228))

(declare-fun m!7924230 () Bool)

(assert (=> b!7247202 m!7924230))

(declare-fun m!7924232 () Bool)

(assert (=> b!7247202 m!7924232))

(declare-fun m!7924234 () Bool)

(assert (=> b!7247202 m!7924234))

(declare-fun m!7924236 () Bool)

(assert (=> b!7247202 m!7924236))

(declare-fun m!7924238 () Bool)

(assert (=> b!7247207 m!7924238))

(declare-fun m!7924240 () Bool)

(assert (=> b!7247207 m!7924240))

(declare-fun m!7924242 () Bool)

(assert (=> b!7247207 m!7924242))

(declare-fun m!7924244 () Bool)

(assert (=> b!7247204 m!7924244))

(assert (=> b!7247204 m!7924244))

(declare-fun m!7924246 () Bool)

(assert (=> b!7247204 m!7924246))

(declare-fun m!7924248 () Bool)

(assert (=> start!704850 m!7924248))

(declare-fun m!7924250 () Bool)

(assert (=> start!704850 m!7924250))

(declare-fun m!7924252 () Bool)

(assert (=> start!704850 m!7924252))

(declare-fun m!7924254 () Bool)

(assert (=> start!704850 m!7924254))

(declare-fun m!7924256 () Bool)

(assert (=> b!7247209 m!7924256))

(declare-fun m!7924258 () Bool)

(assert (=> b!7247209 m!7924258))

(declare-fun m!7924260 () Bool)

(assert (=> b!7247203 m!7924260))

(assert (=> b!7247203 m!7924260))

(declare-fun m!7924262 () Bool)

(assert (=> b!7247203 m!7924262))

(assert (=> b!7247203 m!7924262))

(declare-fun m!7924264 () Bool)

(assert (=> b!7247203 m!7924264))

(check-sat (not b!7247205) (not b!7247210) (not b!7247203) (not b!7247201) (not b!7247204) (not start!704850) (not b!7247208) (not b!7247202) (not b!7247207) (not b!7247209) tp_is_empty!46711 (not b!7247206))
(check-sat)
(get-model)

(declare-fun d!2252082 () Bool)

(declare-fun c!1346339 () Bool)

(declare-fun isEmpty!40499 (List!70451) Bool)

(assert (=> d!2252082 (= c!1346339 (isEmpty!40499 s1!1971))))

(declare-fun e!4345384 () Bool)

(assert (=> d!2252082 (= (matchZipper!3533 lt!2583236 s1!1971) e!4345384)))

(declare-fun b!7247222 () Bool)

(declare-fun nullableZipper!2894 ((InoxSet Context!15126)) Bool)

(assert (=> b!7247222 (= e!4345384 (nullableZipper!2894 lt!2583236))))

(declare-fun b!7247223 () Bool)

(declare-fun head!14882 (List!70451) C!37520)

(declare-fun tail!14284 (List!70451) List!70451)

(assert (=> b!7247223 (= e!4345384 (matchZipper!3533 (derivationStepZipper!3401 lt!2583236 (head!14882 s1!1971)) (tail!14284 s1!1971)))))

(assert (= (and d!2252082 c!1346339) b!7247222))

(assert (= (and d!2252082 (not c!1346339)) b!7247223))

(declare-fun m!7924286 () Bool)

(assert (=> d!2252082 m!7924286))

(declare-fun m!7924288 () Bool)

(assert (=> b!7247222 m!7924288))

(declare-fun m!7924290 () Bool)

(assert (=> b!7247223 m!7924290))

(assert (=> b!7247223 m!7924290))

(declare-fun m!7924292 () Bool)

(assert (=> b!7247223 m!7924292))

(declare-fun m!7924294 () Bool)

(assert (=> b!7247223 m!7924294))

(assert (=> b!7247223 m!7924292))

(assert (=> b!7247223 m!7924294))

(declare-fun m!7924296 () Bool)

(assert (=> b!7247223 m!7924296))

(assert (=> start!704850 d!2252082))

(declare-fun bs!1905385 () Bool)

(declare-fun d!2252088 () Bool)

(assert (= bs!1905385 (and d!2252088 b!7247205)))

(declare-fun lambda!443386 () Int)

(assert (=> bs!1905385 (= lambda!443386 lambda!443376)))

(declare-fun forall!17456 (List!70449 Int) Bool)

(assert (=> d!2252088 (= (inv!89567 ct1!232) (forall!17456 (exprs!8063 ct1!232) lambda!443386))))

(declare-fun bs!1905386 () Bool)

(assert (= bs!1905386 d!2252088))

(declare-fun m!7924298 () Bool)

(assert (=> bs!1905386 m!7924298))

(assert (=> start!704850 d!2252088))

(declare-fun bs!1905387 () Bool)

(declare-fun d!2252090 () Bool)

(assert (= bs!1905387 (and d!2252090 b!7247205)))

(declare-fun lambda!443387 () Int)

(assert (=> bs!1905387 (= lambda!443387 lambda!443376)))

(declare-fun bs!1905388 () Bool)

(assert (= bs!1905388 (and d!2252090 d!2252088)))

(assert (=> bs!1905388 (= lambda!443387 lambda!443386)))

(assert (=> d!2252090 (= (inv!89567 ct2!328) (forall!17456 (exprs!8063 ct2!328) lambda!443387))))

(declare-fun bs!1905389 () Bool)

(assert (= bs!1905389 d!2252090))

(declare-fun m!7924300 () Bool)

(assert (=> bs!1905389 m!7924300))

(assert (=> start!704850 d!2252090))

(declare-fun d!2252092 () Bool)

(declare-fun lt!2583250 () Bool)

(assert (=> d!2252092 (= lt!2583250 (exists!4325 (toList!11452 lt!2583235) lambda!443377))))

(declare-fun choose!55920 ((InoxSet Context!15126) Int) Bool)

(assert (=> d!2252092 (= lt!2583250 (choose!55920 lt!2583235 lambda!443377))))

(assert (=> d!2252092 (= (exists!4324 lt!2583235 lambda!443377) lt!2583250)))

(declare-fun bs!1905390 () Bool)

(assert (= bs!1905390 d!2252092))

(assert (=> bs!1905390 m!7924236))

(assert (=> bs!1905390 m!7924236))

(declare-fun m!7924314 () Bool)

(assert (=> bs!1905390 m!7924314))

(declare-fun m!7924316 () Bool)

(assert (=> bs!1905390 m!7924316))

(assert (=> b!7247202 d!2252092))

(declare-fun bs!1905391 () Bool)

(declare-fun d!2252096 () Bool)

(assert (= bs!1905391 (and d!2252096 b!7247202)))

(declare-fun lambda!443390 () Int)

(assert (=> bs!1905391 (not (= lambda!443390 lambda!443377))))

(assert (=> d!2252096 true))

(declare-fun order!28941 () Int)

(declare-fun dynLambda!28699 (Int Int) Int)

(assert (=> d!2252096 (< (dynLambda!28699 order!28941 lambda!443377) (dynLambda!28699 order!28941 lambda!443390))))

(declare-fun forall!17457 (List!70450 Int) Bool)

(assert (=> d!2252096 (= (exists!4325 lt!2583234 lambda!443377) (not (forall!17457 lt!2583234 lambda!443390)))))

(declare-fun bs!1905392 () Bool)

(assert (= bs!1905392 d!2252096))

(declare-fun m!7924318 () Bool)

(assert (=> bs!1905392 m!7924318))

(assert (=> b!7247202 d!2252096))

(declare-fun bs!1905393 () Bool)

(declare-fun d!2252098 () Bool)

(assert (= bs!1905393 (and d!2252098 b!7247202)))

(declare-fun lambda!443395 () Int)

(assert (=> bs!1905393 (= lambda!443395 lambda!443377)))

(declare-fun bs!1905394 () Bool)

(assert (= bs!1905394 (and d!2252098 d!2252096)))

(assert (=> bs!1905394 (not (= lambda!443395 lambda!443390))))

(assert (=> d!2252098 true))

(assert (=> d!2252098 (exists!4325 lt!2583234 lambda!443395)))

(declare-fun lt!2583261 () Unit!163829)

(declare-fun choose!55921 (List!70450 List!70451) Unit!163829)

(assert (=> d!2252098 (= lt!2583261 (choose!55921 lt!2583234 (t!384503 s1!1971)))))

(declare-fun content!14558 (List!70450) (InoxSet Context!15126))

(assert (=> d!2252098 (matchZipper!3533 (content!14558 lt!2583234) (t!384503 s1!1971))))

(assert (=> d!2252098 (= (lemmaZipperMatchesExistsMatchingContext!726 lt!2583234 (t!384503 s1!1971)) lt!2583261)))

(declare-fun bs!1905396 () Bool)

(assert (= bs!1905396 d!2252098))

(declare-fun m!7924342 () Bool)

(assert (=> bs!1905396 m!7924342))

(declare-fun m!7924344 () Bool)

(assert (=> bs!1905396 m!7924344))

(declare-fun m!7924348 () Bool)

(assert (=> bs!1905396 m!7924348))

(assert (=> bs!1905396 m!7924348))

(declare-fun m!7924350 () Bool)

(assert (=> bs!1905396 m!7924350))

(assert (=> b!7247202 d!2252098))

(declare-fun d!2252112 () Bool)

(declare-fun e!4345400 () Bool)

(assert (=> d!2252112 e!4345400))

(declare-fun res!2939621 () Bool)

(assert (=> d!2252112 (=> (not res!2939621) (not e!4345400))))

(declare-fun lt!2583264 () List!70450)

(declare-fun noDuplicate!2973 (List!70450) Bool)

(assert (=> d!2252112 (= res!2939621 (noDuplicate!2973 lt!2583264))))

(declare-fun choose!55922 ((InoxSet Context!15126)) List!70450)

(assert (=> d!2252112 (= lt!2583264 (choose!55922 lt!2583235))))

(assert (=> d!2252112 (= (toList!11452 lt!2583235) lt!2583264)))

(declare-fun b!7247251 () Bool)

(assert (=> b!7247251 (= e!4345400 (= (content!14558 lt!2583264) lt!2583235))))

(assert (= (and d!2252112 res!2939621) b!7247251))

(declare-fun m!7924366 () Bool)

(assert (=> d!2252112 m!7924366))

(declare-fun m!7924368 () Bool)

(assert (=> d!2252112 m!7924368))

(declare-fun m!7924370 () Bool)

(assert (=> b!7247251 m!7924370))

(assert (=> b!7247202 d!2252112))

(declare-fun d!2252118 () Bool)

(declare-fun lt!2583269 () Int)

(assert (=> d!2252118 (>= lt!2583269 0)))

(declare-fun e!4345407 () Int)

(assert (=> d!2252118 (= lt!2583269 e!4345407)))

(declare-fun c!1346356 () Bool)

(assert (=> d!2252118 (= c!1346356 ((_ is Nil!70327) s1!1971))))

(assert (=> d!2252118 (= (size!41680 s1!1971) lt!2583269)))

(declare-fun b!7247264 () Bool)

(assert (=> b!7247264 (= e!4345407 0)))

(declare-fun b!7247265 () Bool)

(assert (=> b!7247265 (= e!4345407 (+ 1 (size!41680 (t!384503 s1!1971))))))

(assert (= (and d!2252118 c!1346356) b!7247264))

(assert (= (and d!2252118 (not c!1346356)) b!7247265))

(assert (=> b!7247265 m!7924242))

(assert (=> b!7247207 d!2252118))

(declare-fun d!2252120 () Bool)

(declare-fun lt!2583270 () Int)

(assert (=> d!2252120 (>= lt!2583270 0)))

(declare-fun e!4345408 () Int)

(assert (=> d!2252120 (= lt!2583270 e!4345408)))

(declare-fun c!1346357 () Bool)

(assert (=> d!2252120 (= c!1346357 ((_ is Nil!70327) s2!1849))))

(assert (=> d!2252120 (= (size!41680 s2!1849) lt!2583270)))

(declare-fun b!7247266 () Bool)

(assert (=> b!7247266 (= e!4345408 0)))

(declare-fun b!7247267 () Bool)

(assert (=> b!7247267 (= e!4345408 (+ 1 (size!41680 (t!384503 s2!1849))))))

(assert (= (and d!2252120 c!1346357) b!7247266))

(assert (= (and d!2252120 (not c!1346357)) b!7247267))

(declare-fun m!7924372 () Bool)

(assert (=> b!7247267 m!7924372))

(assert (=> b!7247207 d!2252120))

(declare-fun d!2252122 () Bool)

(declare-fun lt!2583271 () Int)

(assert (=> d!2252122 (>= lt!2583271 0)))

(declare-fun e!4345409 () Int)

(assert (=> d!2252122 (= lt!2583271 e!4345409)))

(declare-fun c!1346358 () Bool)

(assert (=> d!2252122 (= c!1346358 ((_ is Nil!70327) (t!384503 s1!1971)))))

(assert (=> d!2252122 (= (size!41680 (t!384503 s1!1971)) lt!2583271)))

(declare-fun b!7247268 () Bool)

(assert (=> b!7247268 (= e!4345409 0)))

(declare-fun b!7247269 () Bool)

(assert (=> b!7247269 (= e!4345409 (+ 1 (size!41680 (t!384503 (t!384503 s1!1971)))))))

(assert (= (and d!2252122 c!1346358) b!7247268))

(assert (= (and d!2252122 (not c!1346358)) b!7247269))

(declare-fun m!7924374 () Bool)

(assert (=> b!7247269 m!7924374))

(assert (=> b!7247207 d!2252122))

(declare-fun d!2252124 () Bool)

(declare-fun c!1346359 () Bool)

(assert (=> d!2252124 (= c!1346359 (isEmpty!40499 s2!1849))))

(declare-fun e!4345410 () Bool)

(assert (=> d!2252124 (= (matchZipper!3533 (store ((as const (Array Context!15126 Bool)) false) ct2!328 true) s2!1849) e!4345410)))

(declare-fun b!7247270 () Bool)

(assert (=> b!7247270 (= e!4345410 (nullableZipper!2894 (store ((as const (Array Context!15126 Bool)) false) ct2!328 true)))))

(declare-fun b!7247271 () Bool)

(assert (=> b!7247271 (= e!4345410 (matchZipper!3533 (derivationStepZipper!3401 (store ((as const (Array Context!15126 Bool)) false) ct2!328 true) (head!14882 s2!1849)) (tail!14284 s2!1849)))))

(assert (= (and d!2252124 c!1346359) b!7247270))

(assert (= (and d!2252124 (not c!1346359)) b!7247271))

(declare-fun m!7924376 () Bool)

(assert (=> d!2252124 m!7924376))

(assert (=> b!7247270 m!7924244))

(declare-fun m!7924378 () Bool)

(assert (=> b!7247270 m!7924378))

(declare-fun m!7924380 () Bool)

(assert (=> b!7247271 m!7924380))

(assert (=> b!7247271 m!7924244))

(assert (=> b!7247271 m!7924380))

(declare-fun m!7924382 () Bool)

(assert (=> b!7247271 m!7924382))

(declare-fun m!7924384 () Bool)

(assert (=> b!7247271 m!7924384))

(assert (=> b!7247271 m!7924382))

(assert (=> b!7247271 m!7924384))

(declare-fun m!7924386 () Bool)

(assert (=> b!7247271 m!7924386))

(assert (=> b!7247204 d!2252124))

(declare-fun d!2252126 () Bool)

(declare-fun c!1346360 () Bool)

(assert (=> d!2252126 (= c!1346360 (isEmpty!40499 (t!384503 s1!1971)))))

(declare-fun e!4345411 () Bool)

(assert (=> d!2252126 (= (matchZipper!3533 lt!2583235 (t!384503 s1!1971)) e!4345411)))

(declare-fun b!7247272 () Bool)

(assert (=> b!7247272 (= e!4345411 (nullableZipper!2894 lt!2583235))))

(declare-fun b!7247273 () Bool)

(assert (=> b!7247273 (= e!4345411 (matchZipper!3533 (derivationStepZipper!3401 lt!2583235 (head!14882 (t!384503 s1!1971))) (tail!14284 (t!384503 s1!1971))))))

(assert (= (and d!2252126 c!1346360) b!7247272))

(assert (= (and d!2252126 (not c!1346360)) b!7247273))

(declare-fun m!7924388 () Bool)

(assert (=> d!2252126 m!7924388))

(declare-fun m!7924390 () Bool)

(assert (=> b!7247272 m!7924390))

(declare-fun m!7924392 () Bool)

(assert (=> b!7247273 m!7924392))

(assert (=> b!7247273 m!7924392))

(declare-fun m!7924394 () Bool)

(assert (=> b!7247273 m!7924394))

(declare-fun m!7924396 () Bool)

(assert (=> b!7247273 m!7924396))

(assert (=> b!7247273 m!7924394))

(assert (=> b!7247273 m!7924396))

(declare-fun m!7924398 () Bool)

(assert (=> b!7247273 m!7924398))

(assert (=> b!7247209 d!2252126))

(declare-fun d!2252128 () Bool)

(assert (=> d!2252128 true))

(declare-fun lambda!443400 () Int)

(declare-fun flatMap!2789 ((InoxSet Context!15126) Int) (InoxSet Context!15126))

(assert (=> d!2252128 (= (derivationStepZipper!3401 lt!2583236 (h!76775 s1!1971)) (flatMap!2789 lt!2583236 lambda!443400))))

(declare-fun bs!1905401 () Bool)

(assert (= bs!1905401 d!2252128))

(declare-fun m!7924414 () Bool)

(assert (=> bs!1905401 m!7924414))

(assert (=> b!7247209 d!2252128))

(declare-fun d!2252132 () Bool)

(declare-fun c!1346364 () Bool)

(assert (=> d!2252132 (= c!1346364 (isEmpty!40499 (t!384503 s1!1971)))))

(declare-fun e!4345414 () Bool)

(assert (=> d!2252132 (= (matchZipper!3533 (store ((as const (Array Context!15126 Bool)) false) (getWitness!2164 lt!2583235 lambda!443377) true) (t!384503 s1!1971)) e!4345414)))

(declare-fun b!7247280 () Bool)

(assert (=> b!7247280 (= e!4345414 (nullableZipper!2894 (store ((as const (Array Context!15126 Bool)) false) (getWitness!2164 lt!2583235 lambda!443377) true)))))

(declare-fun b!7247281 () Bool)

(assert (=> b!7247281 (= e!4345414 (matchZipper!3533 (derivationStepZipper!3401 (store ((as const (Array Context!15126 Bool)) false) (getWitness!2164 lt!2583235 lambda!443377) true) (head!14882 (t!384503 s1!1971))) (tail!14284 (t!384503 s1!1971))))))

(assert (= (and d!2252132 c!1346364) b!7247280))

(assert (= (and d!2252132 (not c!1346364)) b!7247281))

(assert (=> d!2252132 m!7924388))

(assert (=> b!7247280 m!7924262))

(declare-fun m!7924416 () Bool)

(assert (=> b!7247280 m!7924416))

(assert (=> b!7247281 m!7924392))

(assert (=> b!7247281 m!7924262))

(assert (=> b!7247281 m!7924392))

(declare-fun m!7924418 () Bool)

(assert (=> b!7247281 m!7924418))

(assert (=> b!7247281 m!7924396))

(assert (=> b!7247281 m!7924418))

(assert (=> b!7247281 m!7924396))

(declare-fun m!7924426 () Bool)

(assert (=> b!7247281 m!7924426))

(assert (=> b!7247203 d!2252132))

(declare-fun d!2252136 () Bool)

(declare-fun e!4345422 () Bool)

(assert (=> d!2252136 e!4345422))

(declare-fun res!2939630 () Bool)

(assert (=> d!2252136 (=> (not res!2939630) (not e!4345422))))

(declare-fun lt!2583278 () Context!15126)

(declare-fun dynLambda!28700 (Int Context!15126) Bool)

(assert (=> d!2252136 (= res!2939630 (dynLambda!28700 lambda!443377 lt!2583278))))

(declare-fun getWitness!2166 (List!70450 Int) Context!15126)

(assert (=> d!2252136 (= lt!2583278 (getWitness!2166 (toList!11452 lt!2583235) lambda!443377))))

(assert (=> d!2252136 (exists!4324 lt!2583235 lambda!443377)))

(assert (=> d!2252136 (= (getWitness!2164 lt!2583235 lambda!443377) lt!2583278)))

(declare-fun b!7247294 () Bool)

(assert (=> b!7247294 (= e!4345422 (select lt!2583235 lt!2583278))))

(assert (= (and d!2252136 res!2939630) b!7247294))

(declare-fun b_lambda!278147 () Bool)

(assert (=> (not b_lambda!278147) (not d!2252136)))

(declare-fun m!7924436 () Bool)

(assert (=> d!2252136 m!7924436))

(assert (=> d!2252136 m!7924236))

(assert (=> d!2252136 m!7924236))

(declare-fun m!7924438 () Bool)

(assert (=> d!2252136 m!7924438))

(assert (=> d!2252136 m!7924230))

(declare-fun m!7924440 () Bool)

(assert (=> b!7247294 m!7924440))

(assert (=> b!7247203 d!2252136))

(declare-fun b!7247310 () Bool)

(declare-fun e!4345432 () List!70449)

(assert (=> b!7247310 (= e!4345432 (Cons!70325 (h!76773 (exprs!8063 ct1!232)) (++!16509 (t!384501 (exprs!8063 ct1!232)) (exprs!8063 ct2!328))))))

(declare-fun e!4345431 () Bool)

(declare-fun lt!2583281 () List!70449)

(declare-fun b!7247312 () Bool)

(assert (=> b!7247312 (= e!4345431 (or (not (= (exprs!8063 ct2!328) Nil!70325)) (= lt!2583281 (exprs!8063 ct1!232))))))

(declare-fun d!2252140 () Bool)

(assert (=> d!2252140 e!4345431))

(declare-fun res!2939636 () Bool)

(assert (=> d!2252140 (=> (not res!2939636) (not e!4345431))))

(declare-fun content!14560 (List!70449) (InoxSet Regex!18623))

(assert (=> d!2252140 (= res!2939636 (= (content!14560 lt!2583281) ((_ map or) (content!14560 (exprs!8063 ct1!232)) (content!14560 (exprs!8063 ct2!328)))))))

(assert (=> d!2252140 (= lt!2583281 e!4345432)))

(declare-fun c!1346370 () Bool)

(assert (=> d!2252140 (= c!1346370 ((_ is Nil!70325) (exprs!8063 ct1!232)))))

(assert (=> d!2252140 (= (++!16509 (exprs!8063 ct1!232) (exprs!8063 ct2!328)) lt!2583281)))

(declare-fun b!7247311 () Bool)

(declare-fun res!2939635 () Bool)

(assert (=> b!7247311 (=> (not res!2939635) (not e!4345431))))

(declare-fun size!41682 (List!70449) Int)

(assert (=> b!7247311 (= res!2939635 (= (size!41682 lt!2583281) (+ (size!41682 (exprs!8063 ct1!232)) (size!41682 (exprs!8063 ct2!328)))))))

(declare-fun b!7247309 () Bool)

(assert (=> b!7247309 (= e!4345432 (exprs!8063 ct2!328))))

(assert (= (and d!2252140 c!1346370) b!7247309))

(assert (= (and d!2252140 (not c!1346370)) b!7247310))

(assert (= (and d!2252140 res!2939636) b!7247311))

(assert (= (and b!7247311 res!2939635) b!7247312))

(declare-fun m!7924446 () Bool)

(assert (=> b!7247310 m!7924446))

(declare-fun m!7924448 () Bool)

(assert (=> d!2252140 m!7924448))

(declare-fun m!7924450 () Bool)

(assert (=> d!2252140 m!7924450))

(declare-fun m!7924452 () Bool)

(assert (=> d!2252140 m!7924452))

(declare-fun m!7924454 () Bool)

(assert (=> b!7247311 m!7924454))

(declare-fun m!7924456 () Bool)

(assert (=> b!7247311 m!7924456))

(declare-fun m!7924458 () Bool)

(assert (=> b!7247311 m!7924458))

(assert (=> b!7247205 d!2252140))

(declare-fun d!2252144 () Bool)

(assert (=> d!2252144 (forall!17456 (++!16509 (exprs!8063 ct1!232) (exprs!8063 ct2!328)) lambda!443376)))

(declare-fun lt!2583284 () Unit!163829)

(declare-fun choose!55924 (List!70449 List!70449 Int) Unit!163829)

(assert (=> d!2252144 (= lt!2583284 (choose!55924 (exprs!8063 ct1!232) (exprs!8063 ct2!328) lambda!443376))))

(assert (=> d!2252144 (forall!17456 (exprs!8063 ct1!232) lambda!443376)))

(assert (=> d!2252144 (= (lemmaConcatPreservesForall!1430 (exprs!8063 ct1!232) (exprs!8063 ct2!328) lambda!443376) lt!2583284)))

(declare-fun bs!1905405 () Bool)

(assert (= bs!1905405 d!2252144))

(assert (=> bs!1905405 m!7924226))

(assert (=> bs!1905405 m!7924226))

(declare-fun m!7924460 () Bool)

(assert (=> bs!1905405 m!7924460))

(declare-fun m!7924462 () Bool)

(assert (=> bs!1905405 m!7924462))

(declare-fun m!7924464 () Bool)

(assert (=> bs!1905405 m!7924464))

(assert (=> b!7247205 d!2252144))

(declare-fun b!7247317 () Bool)

(declare-fun e!4345435 () Bool)

(declare-fun tp!2036809 () Bool)

(declare-fun tp!2036810 () Bool)

(assert (=> b!7247317 (= e!4345435 (and tp!2036809 tp!2036810))))

(assert (=> b!7247208 (= tp!2036789 e!4345435)))

(assert (= (and b!7247208 ((_ is Cons!70325) (exprs!8063 ct1!232))) b!7247317))

(declare-fun b!7247322 () Bool)

(declare-fun e!4345438 () Bool)

(declare-fun tp!2036813 () Bool)

(assert (=> b!7247322 (= e!4345438 (and tp_is_empty!46711 tp!2036813))))

(assert (=> b!7247210 (= tp!2036792 e!4345438)))

(assert (= (and b!7247210 ((_ is Cons!70327) (t!384503 s2!1849))) b!7247322))

(declare-fun b!7247323 () Bool)

(declare-fun e!4345439 () Bool)

(declare-fun tp!2036814 () Bool)

(declare-fun tp!2036815 () Bool)

(assert (=> b!7247323 (= e!4345439 (and tp!2036814 tp!2036815))))

(assert (=> b!7247201 (= tp!2036790 e!4345439)))

(assert (= (and b!7247201 ((_ is Cons!70325) (exprs!8063 ct2!328))) b!7247323))

(declare-fun b!7247324 () Bool)

(declare-fun e!4345440 () Bool)

(declare-fun tp!2036816 () Bool)

(assert (=> b!7247324 (= e!4345440 (and tp_is_empty!46711 tp!2036816))))

(assert (=> b!7247206 (= tp!2036791 e!4345440)))

(assert (= (and b!7247206 ((_ is Cons!70327) (t!384503 s1!1971))) b!7247324))

(declare-fun b_lambda!278151 () Bool)

(assert (= b_lambda!278147 (or b!7247202 b_lambda!278151)))

(declare-fun bs!1905406 () Bool)

(declare-fun d!2252146 () Bool)

(assert (= bs!1905406 (and d!2252146 b!7247202)))

(assert (=> bs!1905406 (= (dynLambda!28700 lambda!443377 lt!2583278) (matchZipper!3533 (store ((as const (Array Context!15126 Bool)) false) lt!2583278 true) (t!384503 s1!1971)))))

(declare-fun m!7924466 () Bool)

(assert (=> bs!1905406 m!7924466))

(assert (=> bs!1905406 m!7924466))

(declare-fun m!7924468 () Bool)

(assert (=> bs!1905406 m!7924468))

(assert (=> d!2252136 d!2252146))

(check-sat (not b!7247322) (not b!7247280) (not d!2252124) (not d!2252140) (not b!7247222) (not d!2252090) (not b!7247310) (not b!7247270) (not d!2252098) (not d!2252132) (not b!7247273) (not b_lambda!278151) (not bs!1905406) (not b!7247269) (not b!7247324) (not d!2252126) (not b!7247267) (not b!7247317) (not b!7247271) (not d!2252128) (not d!2252144) (not b!7247281) (not b!7247272) (not b!7247323) (not b!7247251) (not d!2252082) (not d!2252088) (not b!7247223) (not d!2252092) (not b!7247311) (not d!2252096) tp_is_empty!46711 (not d!2252112) (not d!2252136) (not b!7247265))
(check-sat)

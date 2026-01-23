; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702320 () Bool)

(assert start!702320)

(declare-fun b!7234997 () Bool)

(assert (=> b!7234997 true))

(declare-fun b!7234993 () Bool)

(assert (=> b!7234993 true))

(declare-fun b!7234992 () Bool)

(declare-fun e!4337445 () Bool)

(declare-fun e!4337449 () Bool)

(assert (=> b!7234992 (= e!4337445 e!4337449)))

(declare-fun res!2935221 () Bool)

(assert (=> b!7234992 (=> (not res!2935221) (not e!4337449))))

(declare-datatypes ((C!37308 0))(
  ( (C!37309 (val!28602 Int)) )
))
(declare-datatypes ((Regex!18517 0))(
  ( (ElementMatch!18517 (c!1342715 C!37308)) (Concat!27362 (regOne!37546 Regex!18517) (regTwo!37546 Regex!18517)) (EmptyExpr!18517) (Star!18517 (reg!18846 Regex!18517)) (EmptyLang!18517) (Union!18517 (regOne!37547 Regex!18517) (regTwo!37547 Regex!18517)) )
))
(declare-datatypes ((List!70159 0))(
  ( (Nil!70035) (Cons!70035 (h!76483 Regex!18517) (t!384210 List!70159)) )
))
(declare-datatypes ((Context!14914 0))(
  ( (Context!14915 (exprs!7957 List!70159)) )
))
(declare-fun ct1!232 () Context!14914)

(declare-datatypes ((List!70160 0))(
  ( (Nil!70036) (Cons!70036 (h!76484 C!37308) (t!384211 List!70160)) )
))
(declare-fun s1!1971 () List!70160)

(get-info :version)

(assert (=> b!7234992 (= res!2935221 (and (not ((_ is Nil!70035) (exprs!7957 ct1!232))) ((_ is Cons!70036) s1!1971)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2575118 () (InoxSet Context!14914))

(declare-fun lt!2575127 () Context!14914)

(assert (=> b!7234992 (= lt!2575118 (store ((as const (Array Context!14914 Bool)) false) lt!2575127 true))))

(declare-fun lt!2575111 () List!70159)

(assert (=> b!7234992 (= lt!2575127 (Context!14915 lt!2575111))))

(declare-fun ct2!328 () Context!14914)

(declare-fun ++!16334 (List!70159 List!70159) List!70159)

(assert (=> b!7234992 (= lt!2575111 (++!16334 (exprs!7957 ct1!232) (exprs!7957 ct2!328)))))

(declare-datatypes ((Unit!163572 0))(
  ( (Unit!163573) )
))
(declare-fun lt!2575117 () Unit!163572)

(declare-fun lambda!440133 () Int)

(declare-fun lemmaConcatPreservesForall!1326 (List!70159 List!70159 Int) Unit!163572)

(assert (=> b!7234992 (= lt!2575117 (lemmaConcatPreservesForall!1326 (exprs!7957 ct1!232) (exprs!7957 ct2!328) lambda!440133))))

(declare-fun e!4337448 () Bool)

(declare-fun e!4337444 () Bool)

(assert (=> b!7234993 (= e!4337448 e!4337444)))

(declare-fun res!2935218 () Bool)

(assert (=> b!7234993 (=> res!2935218 e!4337444)))

(declare-fun nullable!7830 (Regex!18517) Bool)

(assert (=> b!7234993 (= res!2935218 (not (nullable!7830 (h!76483 (exprs!7957 ct1!232)))))))

(declare-fun lambda!440135 () Int)

(declare-fun flatMap!2721 ((InoxSet Context!14914) Int) (InoxSet Context!14914))

(declare-fun derivationStepZipperUp!2391 (Context!14914 C!37308) (InoxSet Context!14914))

(assert (=> b!7234993 (= (flatMap!2721 lt!2575118 lambda!440135) (derivationStepZipperUp!2391 lt!2575127 (h!76484 s1!1971)))))

(declare-fun lt!2575126 () Unit!163572)

(declare-fun lemmaFlatMapOnSingletonSet!2148 ((InoxSet Context!14914) Context!14914 Int) Unit!163572)

(assert (=> b!7234993 (= lt!2575126 (lemmaFlatMapOnSingletonSet!2148 lt!2575118 lt!2575127 lambda!440135))))

(declare-fun lt!2575124 () Unit!163572)

(assert (=> b!7234993 (= lt!2575124 (lemmaConcatPreservesForall!1326 (exprs!7957 ct1!232) (exprs!7957 ct2!328) lambda!440133))))

(declare-fun lt!2575120 () (InoxSet Context!14914))

(assert (=> b!7234993 (= (flatMap!2721 lt!2575120 lambda!440135) (derivationStepZipperUp!2391 ct1!232 (h!76484 s1!1971)))))

(declare-fun lt!2575116 () Unit!163572)

(assert (=> b!7234993 (= lt!2575116 (lemmaFlatMapOnSingletonSet!2148 lt!2575120 ct1!232 lambda!440135))))

(declare-fun lt!2575112 () (InoxSet Context!14914))

(declare-fun derivationStepZipperDown!2561 (Regex!18517 Context!14914 C!37308) (InoxSet Context!14914))

(declare-fun tail!14148 (List!70159) List!70159)

(assert (=> b!7234993 (= lt!2575112 (derivationStepZipperDown!2561 (h!76483 (exprs!7957 ct1!232)) (Context!14915 (tail!14148 lt!2575111)) (h!76484 s1!1971)))))

(declare-fun b!7234994 () Bool)

(declare-fun e!4337446 () Bool)

(declare-fun tp_is_empty!46499 () Bool)

(declare-fun tp!2034455 () Bool)

(assert (=> b!7234994 (= e!4337446 (and tp_is_empty!46499 tp!2034455))))

(declare-fun b!7234995 () Bool)

(declare-fun e!4337447 () Bool)

(assert (=> b!7234995 (= e!4337447 e!4337448)))

(declare-fun res!2935225 () Bool)

(assert (=> b!7234995 (=> res!2935225 e!4337448)))

(declare-fun isEmpty!40362 (List!70159) Bool)

(assert (=> b!7234995 (= res!2935225 (isEmpty!40362 lt!2575111))))

(declare-fun lt!2575122 () Unit!163572)

(assert (=> b!7234995 (= lt!2575122 (lemmaConcatPreservesForall!1326 (exprs!7957 ct1!232) (exprs!7957 ct2!328) lambda!440133))))

(declare-fun lt!2575123 () (InoxSet Context!14914))

(assert (=> b!7234995 (= lt!2575123 (derivationStepZipperUp!2391 lt!2575127 (h!76484 s1!1971)))))

(declare-fun lt!2575114 () Unit!163572)

(assert (=> b!7234995 (= lt!2575114 (lemmaConcatPreservesForall!1326 (exprs!7957 ct1!232) (exprs!7957 ct2!328) lambda!440133))))

(declare-fun lt!2575109 () Context!14914)

(declare-fun lt!2575110 () (InoxSet Context!14914))

(assert (=> b!7234995 (= lt!2575110 (derivationStepZipperDown!2561 (h!76483 (exprs!7957 ct1!232)) lt!2575109 (h!76484 s1!1971)))))

(assert (=> b!7234995 (= lt!2575109 (Context!14915 (tail!14148 (exprs!7957 ct1!232))))))

(declare-fun b!7234996 () Bool)

(declare-fun res!2935219 () Bool)

(assert (=> b!7234996 (=> (not res!2935219) (not e!4337445))))

(declare-fun s2!1849 () List!70160)

(declare-fun matchZipper!3427 ((InoxSet Context!14914) List!70160) Bool)

(assert (=> b!7234996 (= res!2935219 (matchZipper!3427 (store ((as const (Array Context!14914 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun res!2935217 () Bool)

(assert (=> start!702320 (=> (not res!2935217) (not e!4337445))))

(assert (=> start!702320 (= res!2935217 (matchZipper!3427 lt!2575120 s1!1971))))

(assert (=> start!702320 (= lt!2575120 (store ((as const (Array Context!14914 Bool)) false) ct1!232 true))))

(assert (=> start!702320 e!4337445))

(declare-fun e!4337451 () Bool)

(declare-fun inv!89302 (Context!14914) Bool)

(assert (=> start!702320 (and (inv!89302 ct1!232) e!4337451)))

(declare-fun e!4337452 () Bool)

(assert (=> start!702320 e!4337452))

(assert (=> start!702320 e!4337446))

(declare-fun e!4337450 () Bool)

(assert (=> start!702320 (and (inv!89302 ct2!328) e!4337450)))

(declare-fun e!4337453 () Bool)

(declare-fun e!4337454 () Bool)

(assert (=> b!7234997 (= e!4337453 (not e!4337454))))

(declare-fun res!2935220 () Bool)

(assert (=> b!7234997 (=> res!2935220 e!4337454)))

(declare-fun lt!2575108 () (InoxSet Context!14914))

(declare-fun lambda!440134 () Int)

(declare-fun exists!4177 ((InoxSet Context!14914) Int) Bool)

(assert (=> b!7234997 (= res!2935220 (not (exists!4177 lt!2575108 lambda!440134)))))

(declare-datatypes ((List!70161 0))(
  ( (Nil!70037) (Cons!70037 (h!76485 Context!14914) (t!384212 List!70161)) )
))
(declare-fun lt!2575125 () List!70161)

(declare-fun exists!4178 (List!70161 Int) Bool)

(assert (=> b!7234997 (exists!4178 lt!2575125 lambda!440134)))

(declare-fun lt!2575115 () Unit!163572)

(declare-fun lemmaZipperMatchesExistsMatchingContext!660 (List!70161 List!70160) Unit!163572)

(assert (=> b!7234997 (= lt!2575115 (lemmaZipperMatchesExistsMatchingContext!660 lt!2575125 (t!384211 s1!1971)))))

(declare-fun toList!11374 ((InoxSet Context!14914)) List!70161)

(assert (=> b!7234997 (= lt!2575125 (toList!11374 lt!2575108))))

(declare-fun b!7234998 () Bool)

(declare-fun tp!2034453 () Bool)

(assert (=> b!7234998 (= e!4337450 tp!2034453)))

(declare-fun b!7234999 () Bool)

(declare-fun tp!2034454 () Bool)

(assert (=> b!7234999 (= e!4337452 (and tp_is_empty!46499 tp!2034454))))

(declare-fun b!7235000 () Bool)

(declare-fun forall!17348 (List!70159 Int) Bool)

(assert (=> b!7235000 (= e!4337444 (forall!17348 (exprs!7957 ct1!232) lambda!440133))))

(declare-fun b!7235001 () Bool)

(declare-fun tp!2034456 () Bool)

(assert (=> b!7235001 (= e!4337451 tp!2034456)))

(declare-fun b!7235002 () Bool)

(declare-fun res!2935223 () Bool)

(assert (=> b!7235002 (=> res!2935223 e!4337444)))

(declare-fun lt!2575107 () (InoxSet Context!14914))

(assert (=> b!7235002 (= res!2935223 (not (= lt!2575107 ((_ map or) lt!2575110 (derivationStepZipperUp!2391 lt!2575109 (h!76484 s1!1971))))))))

(declare-fun b!7235003 () Bool)

(assert (=> b!7235003 (= e!4337449 e!4337453)))

(declare-fun res!2935222 () Bool)

(assert (=> b!7235003 (=> (not res!2935222) (not e!4337453))))

(assert (=> b!7235003 (= res!2935222 (matchZipper!3427 lt!2575108 (t!384211 s1!1971)))))

(declare-fun derivationStepZipper!3309 ((InoxSet Context!14914) C!37308) (InoxSet Context!14914))

(assert (=> b!7235003 (= lt!2575108 (derivationStepZipper!3309 lt!2575120 (h!76484 s1!1971)))))

(declare-fun b!7235004 () Bool)

(assert (=> b!7235004 (= e!4337454 e!4337447)))

(declare-fun res!2935226 () Bool)

(assert (=> b!7235004 (=> res!2935226 e!4337447)))

(assert (=> b!7235004 (= res!2935226 (isEmpty!40362 (exprs!7957 ct1!232)))))

(assert (=> b!7235004 (= lt!2575107 (derivationStepZipperUp!2391 ct1!232 (h!76484 s1!1971)))))

(declare-fun lt!2575121 () Context!14914)

(declare-fun lt!2575106 () Unit!163572)

(assert (=> b!7235004 (= lt!2575106 (lemmaConcatPreservesForall!1326 (exprs!7957 lt!2575121) (exprs!7957 ct2!328) lambda!440133))))

(declare-fun ++!16335 (List!70160 List!70160) List!70160)

(assert (=> b!7235004 (matchZipper!3427 (store ((as const (Array Context!14914 Bool)) false) (Context!14915 (++!16334 (exprs!7957 lt!2575121) (exprs!7957 ct2!328))) true) (++!16335 (t!384211 s1!1971) s2!1849))))

(declare-fun lt!2575119 () Unit!163572)

(assert (=> b!7235004 (= lt!2575119 (lemmaConcatPreservesForall!1326 (exprs!7957 lt!2575121) (exprs!7957 ct2!328) lambda!440133))))

(declare-fun lt!2575113 () Unit!163572)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!308 (Context!14914 Context!14914 List!70160 List!70160) Unit!163572)

(assert (=> b!7235004 (= lt!2575113 (lemmaConcatenateContextMatchesConcatOfStrings!308 lt!2575121 ct2!328 (t!384211 s1!1971) s2!1849))))

(declare-fun getWitness!2046 ((InoxSet Context!14914) Int) Context!14914)

(assert (=> b!7235004 (= lt!2575121 (getWitness!2046 lt!2575108 lambda!440134))))

(declare-fun b!7235005 () Bool)

(declare-fun res!2935224 () Bool)

(assert (=> b!7235005 (=> res!2935224 e!4337444)))

(assert (=> b!7235005 (= res!2935224 (not (= lt!2575108 lt!2575107)))))

(assert (= (and start!702320 res!2935217) b!7234996))

(assert (= (and b!7234996 res!2935219) b!7234992))

(assert (= (and b!7234992 res!2935221) b!7235003))

(assert (= (and b!7235003 res!2935222) b!7234997))

(assert (= (and b!7234997 (not res!2935220)) b!7235004))

(assert (= (and b!7235004 (not res!2935226)) b!7234995))

(assert (= (and b!7234995 (not res!2935225)) b!7234993))

(assert (= (and b!7234993 (not res!2935218)) b!7235002))

(assert (= (and b!7235002 (not res!2935223)) b!7235005))

(assert (= (and b!7235005 (not res!2935224)) b!7235000))

(assert (= start!702320 b!7235001))

(assert (= (and start!702320 ((_ is Cons!70036) s1!1971)) b!7234999))

(assert (= (and start!702320 ((_ is Cons!70036) s2!1849)) b!7234994))

(assert (= start!702320 b!7234998))

(declare-fun m!7905326 () Bool)

(assert (=> b!7234993 m!7905326))

(declare-fun m!7905328 () Bool)

(assert (=> b!7234993 m!7905328))

(declare-fun m!7905330 () Bool)

(assert (=> b!7234993 m!7905330))

(declare-fun m!7905332 () Bool)

(assert (=> b!7234993 m!7905332))

(declare-fun m!7905334 () Bool)

(assert (=> b!7234993 m!7905334))

(declare-fun m!7905336 () Bool)

(assert (=> b!7234993 m!7905336))

(declare-fun m!7905338 () Bool)

(assert (=> b!7234993 m!7905338))

(declare-fun m!7905340 () Bool)

(assert (=> b!7234993 m!7905340))

(declare-fun m!7905342 () Bool)

(assert (=> b!7234993 m!7905342))

(declare-fun m!7905344 () Bool)

(assert (=> b!7234993 m!7905344))

(declare-fun m!7905346 () Bool)

(assert (=> b!7234997 m!7905346))

(declare-fun m!7905348 () Bool)

(assert (=> b!7234997 m!7905348))

(declare-fun m!7905350 () Bool)

(assert (=> b!7234997 m!7905350))

(declare-fun m!7905352 () Bool)

(assert (=> b!7234997 m!7905352))

(declare-fun m!7905354 () Bool)

(assert (=> start!702320 m!7905354))

(declare-fun m!7905356 () Bool)

(assert (=> start!702320 m!7905356))

(declare-fun m!7905358 () Bool)

(assert (=> start!702320 m!7905358))

(declare-fun m!7905360 () Bool)

(assert (=> start!702320 m!7905360))

(declare-fun m!7905362 () Bool)

(assert (=> b!7235004 m!7905362))

(declare-fun m!7905364 () Bool)

(assert (=> b!7235004 m!7905364))

(declare-fun m!7905366 () Bool)

(assert (=> b!7235004 m!7905366))

(declare-fun m!7905368 () Bool)

(assert (=> b!7235004 m!7905368))

(assert (=> b!7235004 m!7905336))

(assert (=> b!7235004 m!7905362))

(declare-fun m!7905370 () Bool)

(assert (=> b!7235004 m!7905370))

(declare-fun m!7905372 () Bool)

(assert (=> b!7235004 m!7905372))

(assert (=> b!7235004 m!7905370))

(assert (=> b!7235004 m!7905368))

(declare-fun m!7905374 () Bool)

(assert (=> b!7235004 m!7905374))

(declare-fun m!7905376 () Bool)

(assert (=> b!7235004 m!7905376))

(declare-fun m!7905378 () Bool)

(assert (=> b!7234996 m!7905378))

(assert (=> b!7234996 m!7905378))

(declare-fun m!7905380 () Bool)

(assert (=> b!7234996 m!7905380))

(declare-fun m!7905382 () Bool)

(assert (=> b!7235003 m!7905382))

(declare-fun m!7905384 () Bool)

(assert (=> b!7235003 m!7905384))

(declare-fun m!7905386 () Bool)

(assert (=> b!7235002 m!7905386))

(declare-fun m!7905388 () Bool)

(assert (=> b!7234995 m!7905388))

(declare-fun m!7905390 () Bool)

(assert (=> b!7234995 m!7905390))

(assert (=> b!7234995 m!7905332))

(declare-fun m!7905392 () Bool)

(assert (=> b!7234995 m!7905392))

(assert (=> b!7234995 m!7905328))

(assert (=> b!7234995 m!7905328))

(declare-fun m!7905394 () Bool)

(assert (=> b!7235000 m!7905394))

(declare-fun m!7905396 () Bool)

(assert (=> b!7234992 m!7905396))

(declare-fun m!7905398 () Bool)

(assert (=> b!7234992 m!7905398))

(assert (=> b!7234992 m!7905328))

(check-sat (not b!7235003) (not b!7234997) (not b!7234993) (not b!7235004) (not b!7235001) (not b!7234994) (not b!7234992) (not b!7234999) (not b!7234995) (not b!7235000) (not b!7234998) tp_is_empty!46499 (not b!7235002) (not b!7234996) (not start!702320))
(check-sat)
(get-model)

(declare-fun d!2247281 () Bool)

(declare-fun res!2935233 () Bool)

(declare-fun e!4337465 () Bool)

(assert (=> d!2247281 (=> res!2935233 e!4337465)))

(assert (=> d!2247281 (= res!2935233 ((_ is Nil!70035) (exprs!7957 ct1!232)))))

(assert (=> d!2247281 (= (forall!17348 (exprs!7957 ct1!232) lambda!440133) e!4337465)))

(declare-fun b!7235024 () Bool)

(declare-fun e!4337466 () Bool)

(assert (=> b!7235024 (= e!4337465 e!4337466)))

(declare-fun res!2935234 () Bool)

(assert (=> b!7235024 (=> (not res!2935234) (not e!4337466))))

(declare-fun dynLambda!28559 (Int Regex!18517) Bool)

(assert (=> b!7235024 (= res!2935234 (dynLambda!28559 lambda!440133 (h!76483 (exprs!7957 ct1!232))))))

(declare-fun b!7235025 () Bool)

(assert (=> b!7235025 (= e!4337466 (forall!17348 (t!384210 (exprs!7957 ct1!232)) lambda!440133))))

(assert (= (and d!2247281 (not res!2935233)) b!7235024))

(assert (= (and b!7235024 res!2935234) b!7235025))

(declare-fun b_lambda!277371 () Bool)

(assert (=> (not b_lambda!277371) (not b!7235024)))

(declare-fun m!7905400 () Bool)

(assert (=> b!7235024 m!7905400))

(declare-fun m!7905402 () Bool)

(assert (=> b!7235025 m!7905402))

(assert (=> b!7235000 d!2247281))

(declare-fun d!2247283 () Bool)

(declare-fun c!1342726 () Bool)

(declare-fun isEmpty!40363 (List!70160) Bool)

(assert (=> d!2247283 (= c!1342726 (isEmpty!40363 s2!1849))))

(declare-fun e!4337476 () Bool)

(assert (=> d!2247283 (= (matchZipper!3427 (store ((as const (Array Context!14914 Bool)) false) ct2!328 true) s2!1849) e!4337476)))

(declare-fun b!7235043 () Bool)

(declare-fun nullableZipper!2824 ((InoxSet Context!14914)) Bool)

(assert (=> b!7235043 (= e!4337476 (nullableZipper!2824 (store ((as const (Array Context!14914 Bool)) false) ct2!328 true)))))

(declare-fun b!7235044 () Bool)

(declare-fun head!14813 (List!70160) C!37308)

(declare-fun tail!14149 (List!70160) List!70160)

(assert (=> b!7235044 (= e!4337476 (matchZipper!3427 (derivationStepZipper!3309 (store ((as const (Array Context!14914 Bool)) false) ct2!328 true) (head!14813 s2!1849)) (tail!14149 s2!1849)))))

(assert (= (and d!2247283 c!1342726) b!7235043))

(assert (= (and d!2247283 (not c!1342726)) b!7235044))

(declare-fun m!7905410 () Bool)

(assert (=> d!2247283 m!7905410))

(assert (=> b!7235043 m!7905378))

(declare-fun m!7905412 () Bool)

(assert (=> b!7235043 m!7905412))

(declare-fun m!7905414 () Bool)

(assert (=> b!7235044 m!7905414))

(assert (=> b!7235044 m!7905378))

(assert (=> b!7235044 m!7905414))

(declare-fun m!7905416 () Bool)

(assert (=> b!7235044 m!7905416))

(declare-fun m!7905418 () Bool)

(assert (=> b!7235044 m!7905418))

(assert (=> b!7235044 m!7905416))

(assert (=> b!7235044 m!7905418))

(declare-fun m!7905420 () Bool)

(assert (=> b!7235044 m!7905420))

(assert (=> b!7234996 d!2247283))

(declare-fun d!2247287 () Bool)

(assert (=> d!2247287 (= (tail!14148 (exprs!7957 ct1!232)) (t!384210 (exprs!7957 ct1!232)))))

(assert (=> b!7234995 d!2247287))

(declare-fun d!2247289 () Bool)

(assert (=> d!2247289 (= (isEmpty!40362 lt!2575111) ((_ is Nil!70035) lt!2575111))))

(assert (=> b!7234995 d!2247289))

(declare-fun b!7235059 () Bool)

(declare-fun e!4337487 () (InoxSet Context!14914))

(declare-fun call!658652 () (InoxSet Context!14914))

(assert (=> b!7235059 (= e!4337487 call!658652)))

(declare-fun b!7235060 () Bool)

(declare-fun e!4337485 () Bool)

(assert (=> b!7235060 (= e!4337485 (nullable!7830 (h!76483 (exprs!7957 lt!2575127))))))

(declare-fun d!2247293 () Bool)

(declare-fun c!1342733 () Bool)

(assert (=> d!2247293 (= c!1342733 e!4337485)))

(declare-fun res!2935244 () Bool)

(assert (=> d!2247293 (=> (not res!2935244) (not e!4337485))))

(assert (=> d!2247293 (= res!2935244 ((_ is Cons!70035) (exprs!7957 lt!2575127)))))

(declare-fun e!4337486 () (InoxSet Context!14914))

(assert (=> d!2247293 (= (derivationStepZipperUp!2391 lt!2575127 (h!76484 s1!1971)) e!4337486)))

(declare-fun bm!658647 () Bool)

(assert (=> bm!658647 (= call!658652 (derivationStepZipperDown!2561 (h!76483 (exprs!7957 lt!2575127)) (Context!14915 (t!384210 (exprs!7957 lt!2575127))) (h!76484 s1!1971)))))

(declare-fun b!7235061 () Bool)

(assert (=> b!7235061 (= e!4337487 ((as const (Array Context!14914 Bool)) false))))

(declare-fun b!7235062 () Bool)

(assert (=> b!7235062 (= e!4337486 ((_ map or) call!658652 (derivationStepZipperUp!2391 (Context!14915 (t!384210 (exprs!7957 lt!2575127))) (h!76484 s1!1971))))))

(declare-fun b!7235063 () Bool)

(assert (=> b!7235063 (= e!4337486 e!4337487)))

(declare-fun c!1342732 () Bool)

(assert (=> b!7235063 (= c!1342732 ((_ is Cons!70035) (exprs!7957 lt!2575127)))))

(assert (= (and d!2247293 res!2935244) b!7235060))

(assert (= (and d!2247293 c!1342733) b!7235062))

(assert (= (and d!2247293 (not c!1342733)) b!7235063))

(assert (= (and b!7235063 c!1342732) b!7235059))

(assert (= (and b!7235063 (not c!1342732)) b!7235061))

(assert (= (or b!7235062 b!7235059) bm!658647))

(declare-fun m!7905440 () Bool)

(assert (=> b!7235060 m!7905440))

(declare-fun m!7905442 () Bool)

(assert (=> bm!658647 m!7905442))

(declare-fun m!7905444 () Bool)

(assert (=> b!7235062 m!7905444))

(assert (=> b!7234995 d!2247293))

(declare-fun d!2247297 () Bool)

(assert (=> d!2247297 (forall!17348 (++!16334 (exprs!7957 ct1!232) (exprs!7957 ct2!328)) lambda!440133)))

(declare-fun lt!2575137 () Unit!163572)

(declare-fun choose!55598 (List!70159 List!70159 Int) Unit!163572)

(assert (=> d!2247297 (= lt!2575137 (choose!55598 (exprs!7957 ct1!232) (exprs!7957 ct2!328) lambda!440133))))

(assert (=> d!2247297 (forall!17348 (exprs!7957 ct1!232) lambda!440133)))

(assert (=> d!2247297 (= (lemmaConcatPreservesForall!1326 (exprs!7957 ct1!232) (exprs!7957 ct2!328) lambda!440133) lt!2575137)))

(declare-fun bs!1903232 () Bool)

(assert (= bs!1903232 d!2247297))

(assert (=> bs!1903232 m!7905398))

(assert (=> bs!1903232 m!7905398))

(declare-fun m!7905468 () Bool)

(assert (=> bs!1903232 m!7905468))

(declare-fun m!7905470 () Bool)

(assert (=> bs!1903232 m!7905470))

(assert (=> bs!1903232 m!7905394))

(assert (=> b!7234995 d!2247297))

(declare-fun b!7235100 () Bool)

(declare-fun e!4337511 () (InoxSet Context!14914))

(declare-fun call!658667 () (InoxSet Context!14914))

(assert (=> b!7235100 (= e!4337511 call!658667)))

(declare-fun b!7235101 () Bool)

(declare-fun c!1342750 () Bool)

(declare-fun e!4337507 () Bool)

(assert (=> b!7235101 (= c!1342750 e!4337507)))

(declare-fun res!2935249 () Bool)

(assert (=> b!7235101 (=> (not res!2935249) (not e!4337507))))

(assert (=> b!7235101 (= res!2935249 ((_ is Concat!27362) (h!76483 (exprs!7957 ct1!232))))))

(declare-fun e!4337508 () (InoxSet Context!14914))

(declare-fun e!4337510 () (InoxSet Context!14914))

(assert (=> b!7235101 (= e!4337508 e!4337510)))

(declare-fun b!7235102 () Bool)

(assert (=> b!7235102 (= e!4337507 (nullable!7830 (regOne!37546 (h!76483 (exprs!7957 ct1!232)))))))

(declare-fun b!7235103 () Bool)

(declare-fun e!4337512 () (InoxSet Context!14914))

(assert (=> b!7235103 (= e!4337512 ((as const (Array Context!14914 Bool)) false))))

(declare-fun bm!658660 () Bool)

(declare-fun call!658666 () (InoxSet Context!14914))

(assert (=> bm!658660 (= call!658667 call!658666)))

(declare-fun bm!658661 () Bool)

(declare-fun call!658668 () List!70159)

(declare-fun c!1342752 () Bool)

(declare-fun $colon$colon!2871 (List!70159 Regex!18517) List!70159)

(assert (=> bm!658661 (= call!658668 ($colon$colon!2871 (exprs!7957 lt!2575109) (ite (or c!1342750 c!1342752) (regTwo!37546 (h!76483 (exprs!7957 ct1!232))) (h!76483 (exprs!7957 ct1!232)))))))

(declare-fun b!7235104 () Bool)

(assert (=> b!7235104 (= e!4337512 call!658667)))

(declare-fun b!7235105 () Bool)

(declare-fun e!4337509 () (InoxSet Context!14914))

(assert (=> b!7235105 (= e!4337509 e!4337508)))

(declare-fun c!1342751 () Bool)

(assert (=> b!7235105 (= c!1342751 ((_ is Union!18517) (h!76483 (exprs!7957 ct1!232))))))

(declare-fun b!7235106 () Bool)

(declare-fun c!1342754 () Bool)

(assert (=> b!7235106 (= c!1342754 ((_ is Star!18517) (h!76483 (exprs!7957 ct1!232))))))

(assert (=> b!7235106 (= e!4337511 e!4337512)))

(declare-fun b!7235107 () Bool)

(assert (=> b!7235107 (= e!4337510 e!4337511)))

(assert (=> b!7235107 (= c!1342752 ((_ is Concat!27362) (h!76483 (exprs!7957 ct1!232))))))

(declare-fun b!7235108 () Bool)

(assert (=> b!7235108 (= e!4337509 (store ((as const (Array Context!14914 Bool)) false) lt!2575109 true))))

(declare-fun b!7235109 () Bool)

(declare-fun call!658669 () (InoxSet Context!14914))

(assert (=> b!7235109 (= e!4337510 ((_ map or) call!658669 call!658666))))

(declare-fun bm!658663 () Bool)

(declare-fun call!658665 () (InoxSet Context!14914))

(assert (=> bm!658663 (= call!658666 call!658665)))

(declare-fun b!7235110 () Bool)

(assert (=> b!7235110 (= e!4337508 ((_ map or) call!658669 call!658665))))

(declare-fun d!2247303 () Bool)

(declare-fun c!1342753 () Bool)

(assert (=> d!2247303 (= c!1342753 (and ((_ is ElementMatch!18517) (h!76483 (exprs!7957 ct1!232))) (= (c!1342715 (h!76483 (exprs!7957 ct1!232))) (h!76484 s1!1971))))))

(assert (=> d!2247303 (= (derivationStepZipperDown!2561 (h!76483 (exprs!7957 ct1!232)) lt!2575109 (h!76484 s1!1971)) e!4337509)))

(declare-fun bm!658662 () Bool)

(declare-fun call!658670 () List!70159)

(assert (=> bm!658662 (= call!658665 (derivationStepZipperDown!2561 (ite c!1342751 (regTwo!37547 (h!76483 (exprs!7957 ct1!232))) (ite c!1342750 (regTwo!37546 (h!76483 (exprs!7957 ct1!232))) (ite c!1342752 (regOne!37546 (h!76483 (exprs!7957 ct1!232))) (reg!18846 (h!76483 (exprs!7957 ct1!232)))))) (ite (or c!1342751 c!1342750) lt!2575109 (Context!14915 call!658670)) (h!76484 s1!1971)))))

(declare-fun bm!658664 () Bool)

(assert (=> bm!658664 (= call!658670 call!658668)))

(declare-fun bm!658665 () Bool)

(assert (=> bm!658665 (= call!658669 (derivationStepZipperDown!2561 (ite c!1342751 (regOne!37547 (h!76483 (exprs!7957 ct1!232))) (regOne!37546 (h!76483 (exprs!7957 ct1!232)))) (ite c!1342751 lt!2575109 (Context!14915 call!658668)) (h!76484 s1!1971)))))

(assert (= (and d!2247303 c!1342753) b!7235108))

(assert (= (and d!2247303 (not c!1342753)) b!7235105))

(assert (= (and b!7235105 c!1342751) b!7235110))

(assert (= (and b!7235105 (not c!1342751)) b!7235101))

(assert (= (and b!7235101 res!2935249) b!7235102))

(assert (= (and b!7235101 c!1342750) b!7235109))

(assert (= (and b!7235101 (not c!1342750)) b!7235107))

(assert (= (and b!7235107 c!1342752) b!7235100))

(assert (= (and b!7235107 (not c!1342752)) b!7235106))

(assert (= (and b!7235106 c!1342754) b!7235104))

(assert (= (and b!7235106 (not c!1342754)) b!7235103))

(assert (= (or b!7235100 b!7235104) bm!658664))

(assert (= (or b!7235100 b!7235104) bm!658660))

(assert (= (or b!7235109 bm!658664) bm!658661))

(assert (= (or b!7235109 bm!658660) bm!658663))

(assert (= (or b!7235110 bm!658663) bm!658662))

(assert (= (or b!7235110 b!7235109) bm!658665))

(declare-fun m!7905486 () Bool)

(assert (=> bm!658661 m!7905486))

(declare-fun m!7905488 () Bool)

(assert (=> bm!658665 m!7905488))

(declare-fun m!7905490 () Bool)

(assert (=> b!7235102 m!7905490))

(declare-fun m!7905492 () Bool)

(assert (=> bm!658662 m!7905492))

(declare-fun m!7905494 () Bool)

(assert (=> b!7235108 m!7905494))

(assert (=> b!7234995 d!2247303))

(declare-fun d!2247311 () Bool)

(declare-fun c!1342755 () Bool)

(assert (=> d!2247311 (= c!1342755 (isEmpty!40363 s1!1971))))

(declare-fun e!4337515 () Bool)

(assert (=> d!2247311 (= (matchZipper!3427 lt!2575120 s1!1971) e!4337515)))

(declare-fun b!7235115 () Bool)

(assert (=> b!7235115 (= e!4337515 (nullableZipper!2824 lt!2575120))))

(declare-fun b!7235116 () Bool)

(assert (=> b!7235116 (= e!4337515 (matchZipper!3427 (derivationStepZipper!3309 lt!2575120 (head!14813 s1!1971)) (tail!14149 s1!1971)))))

(assert (= (and d!2247311 c!1342755) b!7235115))

(assert (= (and d!2247311 (not c!1342755)) b!7235116))

(declare-fun m!7905496 () Bool)

(assert (=> d!2247311 m!7905496))

(declare-fun m!7905498 () Bool)

(assert (=> b!7235115 m!7905498))

(declare-fun m!7905500 () Bool)

(assert (=> b!7235116 m!7905500))

(assert (=> b!7235116 m!7905500))

(declare-fun m!7905502 () Bool)

(assert (=> b!7235116 m!7905502))

(declare-fun m!7905504 () Bool)

(assert (=> b!7235116 m!7905504))

(assert (=> b!7235116 m!7905502))

(assert (=> b!7235116 m!7905504))

(declare-fun m!7905506 () Bool)

(assert (=> b!7235116 m!7905506))

(assert (=> start!702320 d!2247311))

(declare-fun bs!1903236 () Bool)

(declare-fun d!2247313 () Bool)

(assert (= bs!1903236 (and d!2247313 b!7234992)))

(declare-fun lambda!440141 () Int)

(assert (=> bs!1903236 (= lambda!440141 lambda!440133)))

(assert (=> d!2247313 (= (inv!89302 ct1!232) (forall!17348 (exprs!7957 ct1!232) lambda!440141))))

(declare-fun bs!1903237 () Bool)

(assert (= bs!1903237 d!2247313))

(declare-fun m!7905538 () Bool)

(assert (=> bs!1903237 m!7905538))

(assert (=> start!702320 d!2247313))

(declare-fun bs!1903238 () Bool)

(declare-fun d!2247321 () Bool)

(assert (= bs!1903238 (and d!2247321 b!7234992)))

(declare-fun lambda!440142 () Int)

(assert (=> bs!1903238 (= lambda!440142 lambda!440133)))

(declare-fun bs!1903239 () Bool)

(assert (= bs!1903239 (and d!2247321 d!2247313)))

(assert (=> bs!1903239 (= lambda!440142 lambda!440141)))

(assert (=> d!2247321 (= (inv!89302 ct2!328) (forall!17348 (exprs!7957 ct2!328) lambda!440142))))

(declare-fun bs!1903240 () Bool)

(assert (= bs!1903240 d!2247321))

(declare-fun m!7905540 () Bool)

(assert (=> bs!1903240 m!7905540))

(assert (=> start!702320 d!2247321))

(declare-fun b!7235143 () Bool)

(declare-fun e!4337534 () List!70159)

(assert (=> b!7235143 (= e!4337534 (exprs!7957 ct2!328))))

(declare-fun d!2247323 () Bool)

(declare-fun e!4337533 () Bool)

(assert (=> d!2247323 e!4337533))

(declare-fun res!2935268 () Bool)

(assert (=> d!2247323 (=> (not res!2935268) (not e!4337533))))

(declare-fun lt!2575153 () List!70159)

(declare-fun content!14422 (List!70159) (InoxSet Regex!18517))

(assert (=> d!2247323 (= res!2935268 (= (content!14422 lt!2575153) ((_ map or) (content!14422 (exprs!7957 ct1!232)) (content!14422 (exprs!7957 ct2!328)))))))

(assert (=> d!2247323 (= lt!2575153 e!4337534)))

(declare-fun c!1342762 () Bool)

(assert (=> d!2247323 (= c!1342762 ((_ is Nil!70035) (exprs!7957 ct1!232)))))

(assert (=> d!2247323 (= (++!16334 (exprs!7957 ct1!232) (exprs!7957 ct2!328)) lt!2575153)))

(declare-fun b!7235145 () Bool)

(declare-fun res!2935269 () Bool)

(assert (=> b!7235145 (=> (not res!2935269) (not e!4337533))))

(declare-fun size!41582 (List!70159) Int)

(assert (=> b!7235145 (= res!2935269 (= (size!41582 lt!2575153) (+ (size!41582 (exprs!7957 ct1!232)) (size!41582 (exprs!7957 ct2!328)))))))

(declare-fun b!7235146 () Bool)

(assert (=> b!7235146 (= e!4337533 (or (not (= (exprs!7957 ct2!328) Nil!70035)) (= lt!2575153 (exprs!7957 ct1!232))))))

(declare-fun b!7235144 () Bool)

(assert (=> b!7235144 (= e!4337534 (Cons!70035 (h!76483 (exprs!7957 ct1!232)) (++!16334 (t!384210 (exprs!7957 ct1!232)) (exprs!7957 ct2!328))))))

(assert (= (and d!2247323 c!1342762) b!7235143))

(assert (= (and d!2247323 (not c!1342762)) b!7235144))

(assert (= (and d!2247323 res!2935268) b!7235145))

(assert (= (and b!7235145 res!2935269) b!7235146))

(declare-fun m!7905548 () Bool)

(assert (=> d!2247323 m!7905548))

(declare-fun m!7905550 () Bool)

(assert (=> d!2247323 m!7905550))

(declare-fun m!7905552 () Bool)

(assert (=> d!2247323 m!7905552))

(declare-fun m!7905554 () Bool)

(assert (=> b!7235145 m!7905554))

(declare-fun m!7905556 () Bool)

(assert (=> b!7235145 m!7905556))

(declare-fun m!7905558 () Bool)

(assert (=> b!7235145 m!7905558))

(declare-fun m!7905560 () Bool)

(assert (=> b!7235144 m!7905560))

(assert (=> b!7234992 d!2247323))

(assert (=> b!7234992 d!2247297))

(declare-fun d!2247327 () Bool)

(declare-fun lt!2575156 () Bool)

(assert (=> d!2247327 (= lt!2575156 (exists!4178 (toList!11374 lt!2575108) lambda!440134))))

(declare-fun choose!55600 ((InoxSet Context!14914) Int) Bool)

(assert (=> d!2247327 (= lt!2575156 (choose!55600 lt!2575108 lambda!440134))))

(assert (=> d!2247327 (= (exists!4177 lt!2575108 lambda!440134) lt!2575156)))

(declare-fun bs!1903241 () Bool)

(assert (= bs!1903241 d!2247327))

(assert (=> bs!1903241 m!7905352))

(assert (=> bs!1903241 m!7905352))

(declare-fun m!7905572 () Bool)

(assert (=> bs!1903241 m!7905572))

(declare-fun m!7905574 () Bool)

(assert (=> bs!1903241 m!7905574))

(assert (=> b!7234997 d!2247327))

(declare-fun bs!1903242 () Bool)

(declare-fun d!2247337 () Bool)

(assert (= bs!1903242 (and d!2247337 b!7234997)))

(declare-fun lambda!440145 () Int)

(assert (=> bs!1903242 (not (= lambda!440145 lambda!440134))))

(assert (=> d!2247337 true))

(declare-fun order!28847 () Int)

(declare-fun dynLambda!28560 (Int Int) Int)

(assert (=> d!2247337 (< (dynLambda!28560 order!28847 lambda!440134) (dynLambda!28560 order!28847 lambda!440145))))

(declare-fun forall!17349 (List!70161 Int) Bool)

(assert (=> d!2247337 (= (exists!4178 lt!2575125 lambda!440134) (not (forall!17349 lt!2575125 lambda!440145)))))

(declare-fun bs!1903243 () Bool)

(assert (= bs!1903243 d!2247337))

(declare-fun m!7905576 () Bool)

(assert (=> bs!1903243 m!7905576))

(assert (=> b!7234997 d!2247337))

(declare-fun bs!1903244 () Bool)

(declare-fun d!2247339 () Bool)

(assert (= bs!1903244 (and d!2247339 b!7234997)))

(declare-fun lambda!440148 () Int)

(assert (=> bs!1903244 (= lambda!440148 lambda!440134)))

(declare-fun bs!1903245 () Bool)

(assert (= bs!1903245 (and d!2247339 d!2247337)))

(assert (=> bs!1903245 (not (= lambda!440148 lambda!440145))))

(assert (=> d!2247339 true))

(assert (=> d!2247339 (exists!4178 lt!2575125 lambda!440148)))

(declare-fun lt!2575159 () Unit!163572)

(declare-fun choose!55601 (List!70161 List!70160) Unit!163572)

(assert (=> d!2247339 (= lt!2575159 (choose!55601 lt!2575125 (t!384211 s1!1971)))))

(declare-fun content!14423 (List!70161) (InoxSet Context!14914))

(assert (=> d!2247339 (matchZipper!3427 (content!14423 lt!2575125) (t!384211 s1!1971))))

(assert (=> d!2247339 (= (lemmaZipperMatchesExistsMatchingContext!660 lt!2575125 (t!384211 s1!1971)) lt!2575159)))

(declare-fun bs!1903246 () Bool)

(assert (= bs!1903246 d!2247339))

(declare-fun m!7905578 () Bool)

(assert (=> bs!1903246 m!7905578))

(declare-fun m!7905580 () Bool)

(assert (=> bs!1903246 m!7905580))

(declare-fun m!7905582 () Bool)

(assert (=> bs!1903246 m!7905582))

(assert (=> bs!1903246 m!7905582))

(declare-fun m!7905584 () Bool)

(assert (=> bs!1903246 m!7905584))

(assert (=> b!7234997 d!2247339))

(declare-fun d!2247341 () Bool)

(declare-fun e!4337554 () Bool)

(assert (=> d!2247341 e!4337554))

(declare-fun res!2935277 () Bool)

(assert (=> d!2247341 (=> (not res!2935277) (not e!4337554))))

(declare-fun lt!2575162 () List!70161)

(declare-fun noDuplicate!2934 (List!70161) Bool)

(assert (=> d!2247341 (= res!2935277 (noDuplicate!2934 lt!2575162))))

(declare-fun choose!55602 ((InoxSet Context!14914)) List!70161)

(assert (=> d!2247341 (= lt!2575162 (choose!55602 lt!2575108))))

(assert (=> d!2247341 (= (toList!11374 lt!2575108) lt!2575162)))

(declare-fun b!7235180 () Bool)

(assert (=> b!7235180 (= e!4337554 (= (content!14423 lt!2575162) lt!2575108))))

(assert (= (and d!2247341 res!2935277) b!7235180))

(declare-fun m!7905586 () Bool)

(assert (=> d!2247341 m!7905586))

(declare-fun m!7905588 () Bool)

(assert (=> d!2247341 m!7905588))

(declare-fun m!7905590 () Bool)

(assert (=> b!7235180 m!7905590))

(assert (=> b!7234997 d!2247341))

(declare-fun b!7235181 () Bool)

(declare-fun e!4337557 () (InoxSet Context!14914))

(declare-fun call!658685 () (InoxSet Context!14914))

(assert (=> b!7235181 (= e!4337557 call!658685)))

(declare-fun b!7235182 () Bool)

(declare-fun e!4337555 () Bool)

(assert (=> b!7235182 (= e!4337555 (nullable!7830 (h!76483 (exprs!7957 lt!2575109))))))

(declare-fun d!2247343 () Bool)

(declare-fun c!1342778 () Bool)

(assert (=> d!2247343 (= c!1342778 e!4337555)))

(declare-fun res!2935278 () Bool)

(assert (=> d!2247343 (=> (not res!2935278) (not e!4337555))))

(assert (=> d!2247343 (= res!2935278 ((_ is Cons!70035) (exprs!7957 lt!2575109)))))

(declare-fun e!4337556 () (InoxSet Context!14914))

(assert (=> d!2247343 (= (derivationStepZipperUp!2391 lt!2575109 (h!76484 s1!1971)) e!4337556)))

(declare-fun bm!658680 () Bool)

(assert (=> bm!658680 (= call!658685 (derivationStepZipperDown!2561 (h!76483 (exprs!7957 lt!2575109)) (Context!14915 (t!384210 (exprs!7957 lt!2575109))) (h!76484 s1!1971)))))

(declare-fun b!7235183 () Bool)

(assert (=> b!7235183 (= e!4337557 ((as const (Array Context!14914 Bool)) false))))

(declare-fun b!7235184 () Bool)

(assert (=> b!7235184 (= e!4337556 ((_ map or) call!658685 (derivationStepZipperUp!2391 (Context!14915 (t!384210 (exprs!7957 lt!2575109))) (h!76484 s1!1971))))))

(declare-fun b!7235185 () Bool)

(assert (=> b!7235185 (= e!4337556 e!4337557)))

(declare-fun c!1342777 () Bool)

(assert (=> b!7235185 (= c!1342777 ((_ is Cons!70035) (exprs!7957 lt!2575109)))))

(assert (= (and d!2247343 res!2935278) b!7235182))

(assert (= (and d!2247343 c!1342778) b!7235184))

(assert (= (and d!2247343 (not c!1342778)) b!7235185))

(assert (= (and b!7235185 c!1342777) b!7235181))

(assert (= (and b!7235185 (not c!1342777)) b!7235183))

(assert (= (or b!7235184 b!7235181) bm!658680))

(declare-fun m!7905592 () Bool)

(assert (=> b!7235182 m!7905592))

(declare-fun m!7905594 () Bool)

(assert (=> bm!658680 m!7905594))

(declare-fun m!7905596 () Bool)

(assert (=> b!7235184 m!7905596))

(assert (=> b!7235002 d!2247343))

(declare-fun d!2247345 () Bool)

(assert (=> d!2247345 (forall!17348 (++!16334 (exprs!7957 lt!2575121) (exprs!7957 ct2!328)) lambda!440133)))

(declare-fun lt!2575163 () Unit!163572)

(assert (=> d!2247345 (= lt!2575163 (choose!55598 (exprs!7957 lt!2575121) (exprs!7957 ct2!328) lambda!440133))))

(assert (=> d!2247345 (forall!17348 (exprs!7957 lt!2575121) lambda!440133)))

(assert (=> d!2247345 (= (lemmaConcatPreservesForall!1326 (exprs!7957 lt!2575121) (exprs!7957 ct2!328) lambda!440133) lt!2575163)))

(declare-fun bs!1903247 () Bool)

(assert (= bs!1903247 d!2247345))

(assert (=> bs!1903247 m!7905376))

(assert (=> bs!1903247 m!7905376))

(declare-fun m!7905598 () Bool)

(assert (=> bs!1903247 m!7905598))

(declare-fun m!7905600 () Bool)

(assert (=> bs!1903247 m!7905600))

(declare-fun m!7905602 () Bool)

(assert (=> bs!1903247 m!7905602))

(assert (=> b!7235004 d!2247345))

(declare-fun d!2247347 () Bool)

(assert (=> d!2247347 (= (isEmpty!40362 (exprs!7957 ct1!232)) ((_ is Nil!70035) (exprs!7957 ct1!232)))))

(assert (=> b!7235004 d!2247347))

(declare-fun d!2247349 () Bool)

(declare-fun c!1342784 () Bool)

(assert (=> d!2247349 (= c!1342784 (isEmpty!40363 (++!16335 (t!384211 s1!1971) s2!1849)))))

(declare-fun e!4337564 () Bool)

(assert (=> d!2247349 (= (matchZipper!3427 (store ((as const (Array Context!14914 Bool)) false) (Context!14915 (++!16334 (exprs!7957 lt!2575121) (exprs!7957 ct2!328))) true) (++!16335 (t!384211 s1!1971) s2!1849)) e!4337564)))

(declare-fun b!7235197 () Bool)

(assert (=> b!7235197 (= e!4337564 (nullableZipper!2824 (store ((as const (Array Context!14914 Bool)) false) (Context!14915 (++!16334 (exprs!7957 lt!2575121) (exprs!7957 ct2!328))) true)))))

(declare-fun b!7235198 () Bool)

(assert (=> b!7235198 (= e!4337564 (matchZipper!3427 (derivationStepZipper!3309 (store ((as const (Array Context!14914 Bool)) false) (Context!14915 (++!16334 (exprs!7957 lt!2575121) (exprs!7957 ct2!328))) true) (head!14813 (++!16335 (t!384211 s1!1971) s2!1849))) (tail!14149 (++!16335 (t!384211 s1!1971) s2!1849))))))

(assert (= (and d!2247349 c!1342784) b!7235197))

(assert (= (and d!2247349 (not c!1342784)) b!7235198))

(assert (=> d!2247349 m!7905370))

(declare-fun m!7905604 () Bool)

(assert (=> d!2247349 m!7905604))

(assert (=> b!7235197 m!7905362))

(declare-fun m!7905606 () Bool)

(assert (=> b!7235197 m!7905606))

(assert (=> b!7235198 m!7905370))

(declare-fun m!7905608 () Bool)

(assert (=> b!7235198 m!7905608))

(assert (=> b!7235198 m!7905362))

(assert (=> b!7235198 m!7905608))

(declare-fun m!7905612 () Bool)

(assert (=> b!7235198 m!7905612))

(assert (=> b!7235198 m!7905370))

(declare-fun m!7905614 () Bool)

(assert (=> b!7235198 m!7905614))

(assert (=> b!7235198 m!7905612))

(assert (=> b!7235198 m!7905614))

(declare-fun m!7905618 () Bool)

(assert (=> b!7235198 m!7905618))

(assert (=> b!7235004 d!2247349))

(declare-fun bs!1903251 () Bool)

(declare-fun d!2247351 () Bool)

(assert (= bs!1903251 (and d!2247351 b!7234992)))

(declare-fun lambda!440154 () Int)

(assert (=> bs!1903251 (= lambda!440154 lambda!440133)))

(declare-fun bs!1903252 () Bool)

(assert (= bs!1903252 (and d!2247351 d!2247313)))

(assert (=> bs!1903252 (= lambda!440154 lambda!440141)))

(declare-fun bs!1903253 () Bool)

(assert (= bs!1903253 (and d!2247351 d!2247321)))

(assert (=> bs!1903253 (= lambda!440154 lambda!440142)))

(assert (=> d!2247351 (matchZipper!3427 (store ((as const (Array Context!14914 Bool)) false) (Context!14915 (++!16334 (exprs!7957 lt!2575121) (exprs!7957 ct2!328))) true) (++!16335 (t!384211 s1!1971) s2!1849))))

(declare-fun lt!2575172 () Unit!163572)

(assert (=> d!2247351 (= lt!2575172 (lemmaConcatPreservesForall!1326 (exprs!7957 lt!2575121) (exprs!7957 ct2!328) lambda!440154))))

(declare-fun lt!2575171 () Unit!163572)

(declare-fun choose!55603 (Context!14914 Context!14914 List!70160 List!70160) Unit!163572)

(assert (=> d!2247351 (= lt!2575171 (choose!55603 lt!2575121 ct2!328 (t!384211 s1!1971) s2!1849))))

(assert (=> d!2247351 (matchZipper!3427 (store ((as const (Array Context!14914 Bool)) false) lt!2575121 true) (t!384211 s1!1971))))

(assert (=> d!2247351 (= (lemmaConcatenateContextMatchesConcatOfStrings!308 lt!2575121 ct2!328 (t!384211 s1!1971) s2!1849) lt!2575171)))

(declare-fun bs!1903254 () Bool)

(assert (= bs!1903254 d!2247351))

(declare-fun m!7905632 () Bool)

(assert (=> bs!1903254 m!7905632))

(assert (=> bs!1903254 m!7905376))

(declare-fun m!7905634 () Bool)

(assert (=> bs!1903254 m!7905634))

(assert (=> bs!1903254 m!7905632))

(declare-fun m!7905636 () Bool)

(assert (=> bs!1903254 m!7905636))

(declare-fun m!7905638 () Bool)

(assert (=> bs!1903254 m!7905638))

(assert (=> bs!1903254 m!7905370))

(assert (=> bs!1903254 m!7905362))

(assert (=> bs!1903254 m!7905362))

(assert (=> bs!1903254 m!7905370))

(assert (=> bs!1903254 m!7905372))

(assert (=> b!7235004 d!2247351))

(declare-fun b!7235214 () Bool)

(declare-fun e!4337573 () List!70160)

(assert (=> b!7235214 (= e!4337573 s2!1849)))

(declare-fun b!7235216 () Bool)

(declare-fun res!2935287 () Bool)

(declare-fun e!4337574 () Bool)

(assert (=> b!7235216 (=> (not res!2935287) (not e!4337574))))

(declare-fun lt!2575181 () List!70160)

(declare-fun size!41583 (List!70160) Int)

(assert (=> b!7235216 (= res!2935287 (= (size!41583 lt!2575181) (+ (size!41583 (t!384211 s1!1971)) (size!41583 s2!1849))))))

(declare-fun b!7235217 () Bool)

(assert (=> b!7235217 (= e!4337574 (or (not (= s2!1849 Nil!70036)) (= lt!2575181 (t!384211 s1!1971))))))

(declare-fun d!2247359 () Bool)

(assert (=> d!2247359 e!4337574))

(declare-fun res!2935288 () Bool)

(assert (=> d!2247359 (=> (not res!2935288) (not e!4337574))))

(declare-fun content!14424 (List!70160) (InoxSet C!37308))

(assert (=> d!2247359 (= res!2935288 (= (content!14424 lt!2575181) ((_ map or) (content!14424 (t!384211 s1!1971)) (content!14424 s2!1849))))))

(assert (=> d!2247359 (= lt!2575181 e!4337573)))

(declare-fun c!1342790 () Bool)

(assert (=> d!2247359 (= c!1342790 ((_ is Nil!70036) (t!384211 s1!1971)))))

(assert (=> d!2247359 (= (++!16335 (t!384211 s1!1971) s2!1849) lt!2575181)))

(declare-fun b!7235215 () Bool)

(assert (=> b!7235215 (= e!4337573 (Cons!70036 (h!76484 (t!384211 s1!1971)) (++!16335 (t!384211 (t!384211 s1!1971)) s2!1849)))))

(assert (= (and d!2247359 c!1342790) b!7235214))

(assert (= (and d!2247359 (not c!1342790)) b!7235215))

(assert (= (and d!2247359 res!2935288) b!7235216))

(assert (= (and b!7235216 res!2935287) b!7235217))

(declare-fun m!7905666 () Bool)

(assert (=> b!7235216 m!7905666))

(declare-fun m!7905668 () Bool)

(assert (=> b!7235216 m!7905668))

(declare-fun m!7905670 () Bool)

(assert (=> b!7235216 m!7905670))

(declare-fun m!7905672 () Bool)

(assert (=> d!2247359 m!7905672))

(declare-fun m!7905674 () Bool)

(assert (=> d!2247359 m!7905674))

(declare-fun m!7905676 () Bool)

(assert (=> d!2247359 m!7905676))

(declare-fun m!7905678 () Bool)

(assert (=> b!7235215 m!7905678))

(assert (=> b!7235004 d!2247359))

(declare-fun b!7235218 () Bool)

(declare-fun e!4337577 () (InoxSet Context!14914))

(declare-fun call!658692 () (InoxSet Context!14914))

(assert (=> b!7235218 (= e!4337577 call!658692)))

(declare-fun b!7235219 () Bool)

(declare-fun e!4337575 () Bool)

(assert (=> b!7235219 (= e!4337575 (nullable!7830 (h!76483 (exprs!7957 ct1!232))))))

(declare-fun d!2247367 () Bool)

(declare-fun c!1342792 () Bool)

(assert (=> d!2247367 (= c!1342792 e!4337575)))

(declare-fun res!2935289 () Bool)

(assert (=> d!2247367 (=> (not res!2935289) (not e!4337575))))

(assert (=> d!2247367 (= res!2935289 ((_ is Cons!70035) (exprs!7957 ct1!232)))))

(declare-fun e!4337576 () (InoxSet Context!14914))

(assert (=> d!2247367 (= (derivationStepZipperUp!2391 ct1!232 (h!76484 s1!1971)) e!4337576)))

(declare-fun bm!658687 () Bool)

(assert (=> bm!658687 (= call!658692 (derivationStepZipperDown!2561 (h!76483 (exprs!7957 ct1!232)) (Context!14915 (t!384210 (exprs!7957 ct1!232))) (h!76484 s1!1971)))))

(declare-fun b!7235220 () Bool)

(assert (=> b!7235220 (= e!4337577 ((as const (Array Context!14914 Bool)) false))))

(declare-fun b!7235221 () Bool)

(assert (=> b!7235221 (= e!4337576 ((_ map or) call!658692 (derivationStepZipperUp!2391 (Context!14915 (t!384210 (exprs!7957 ct1!232))) (h!76484 s1!1971))))))

(declare-fun b!7235222 () Bool)

(assert (=> b!7235222 (= e!4337576 e!4337577)))

(declare-fun c!1342791 () Bool)

(assert (=> b!7235222 (= c!1342791 ((_ is Cons!70035) (exprs!7957 ct1!232)))))

(assert (= (and d!2247367 res!2935289) b!7235219))

(assert (= (and d!2247367 c!1342792) b!7235221))

(assert (= (and d!2247367 (not c!1342792)) b!7235222))

(assert (= (and b!7235222 c!1342791) b!7235218))

(assert (= (and b!7235222 (not c!1342791)) b!7235220))

(assert (= (or b!7235221 b!7235218) bm!658687))

(assert (=> b!7235219 m!7905330))

(declare-fun m!7905680 () Bool)

(assert (=> bm!658687 m!7905680))

(declare-fun m!7905682 () Bool)

(assert (=> b!7235221 m!7905682))

(assert (=> b!7235004 d!2247367))

(declare-fun d!2247369 () Bool)

(declare-fun e!4337580 () Bool)

(assert (=> d!2247369 e!4337580))

(declare-fun res!2935292 () Bool)

(assert (=> d!2247369 (=> (not res!2935292) (not e!4337580))))

(declare-fun lt!2575187 () Context!14914)

(declare-fun dynLambda!28564 (Int Context!14914) Bool)

(assert (=> d!2247369 (= res!2935292 (dynLambda!28564 lambda!440134 lt!2575187))))

(declare-fun getWitness!2048 (List!70161 Int) Context!14914)

(assert (=> d!2247369 (= lt!2575187 (getWitness!2048 (toList!11374 lt!2575108) lambda!440134))))

(assert (=> d!2247369 (exists!4177 lt!2575108 lambda!440134)))

(assert (=> d!2247369 (= (getWitness!2046 lt!2575108 lambda!440134) lt!2575187)))

(declare-fun b!7235225 () Bool)

(assert (=> b!7235225 (= e!4337580 (select lt!2575108 lt!2575187))))

(assert (= (and d!2247369 res!2935292) b!7235225))

(declare-fun b_lambda!277379 () Bool)

(assert (=> (not b_lambda!277379) (not d!2247369)))

(declare-fun m!7905692 () Bool)

(assert (=> d!2247369 m!7905692))

(assert (=> d!2247369 m!7905352))

(assert (=> d!2247369 m!7905352))

(declare-fun m!7905694 () Bool)

(assert (=> d!2247369 m!7905694))

(assert (=> d!2247369 m!7905346))

(declare-fun m!7905696 () Bool)

(assert (=> b!7235225 m!7905696))

(assert (=> b!7235004 d!2247369))

(declare-fun b!7235237 () Bool)

(declare-fun e!4337588 () List!70159)

(assert (=> b!7235237 (= e!4337588 (exprs!7957 ct2!328))))

(declare-fun d!2247379 () Bool)

(declare-fun e!4337587 () Bool)

(assert (=> d!2247379 e!4337587))

(declare-fun res!2935294 () Bool)

(assert (=> d!2247379 (=> (not res!2935294) (not e!4337587))))

(declare-fun lt!2575188 () List!70159)

(assert (=> d!2247379 (= res!2935294 (= (content!14422 lt!2575188) ((_ map or) (content!14422 (exprs!7957 lt!2575121)) (content!14422 (exprs!7957 ct2!328)))))))

(assert (=> d!2247379 (= lt!2575188 e!4337588)))

(declare-fun c!1342798 () Bool)

(assert (=> d!2247379 (= c!1342798 ((_ is Nil!70035) (exprs!7957 lt!2575121)))))

(assert (=> d!2247379 (= (++!16334 (exprs!7957 lt!2575121) (exprs!7957 ct2!328)) lt!2575188)))

(declare-fun b!7235239 () Bool)

(declare-fun res!2935295 () Bool)

(assert (=> b!7235239 (=> (not res!2935295) (not e!4337587))))

(assert (=> b!7235239 (= res!2935295 (= (size!41582 lt!2575188) (+ (size!41582 (exprs!7957 lt!2575121)) (size!41582 (exprs!7957 ct2!328)))))))

(declare-fun b!7235240 () Bool)

(assert (=> b!7235240 (= e!4337587 (or (not (= (exprs!7957 ct2!328) Nil!70035)) (= lt!2575188 (exprs!7957 lt!2575121))))))

(declare-fun b!7235238 () Bool)

(assert (=> b!7235238 (= e!4337588 (Cons!70035 (h!76483 (exprs!7957 lt!2575121)) (++!16334 (t!384210 (exprs!7957 lt!2575121)) (exprs!7957 ct2!328))))))

(assert (= (and d!2247379 c!1342798) b!7235237))

(assert (= (and d!2247379 (not c!1342798)) b!7235238))

(assert (= (and d!2247379 res!2935294) b!7235239))

(assert (= (and b!7235239 res!2935295) b!7235240))

(declare-fun m!7905698 () Bool)

(assert (=> d!2247379 m!7905698))

(declare-fun m!7905700 () Bool)

(assert (=> d!2247379 m!7905700))

(assert (=> d!2247379 m!7905552))

(declare-fun m!7905702 () Bool)

(assert (=> b!7235239 m!7905702))

(declare-fun m!7905704 () Bool)

(assert (=> b!7235239 m!7905704))

(assert (=> b!7235239 m!7905558))

(declare-fun m!7905706 () Bool)

(assert (=> b!7235238 m!7905706))

(assert (=> b!7235004 d!2247379))

(declare-fun d!2247381 () Bool)

(declare-fun dynLambda!28565 (Int Context!14914) (InoxSet Context!14914))

(assert (=> d!2247381 (= (flatMap!2721 lt!2575120 lambda!440135) (dynLambda!28565 lambda!440135 ct1!232))))

(declare-fun lt!2575192 () Unit!163572)

(declare-fun choose!55607 ((InoxSet Context!14914) Context!14914 Int) Unit!163572)

(assert (=> d!2247381 (= lt!2575192 (choose!55607 lt!2575120 ct1!232 lambda!440135))))

(assert (=> d!2247381 (= lt!2575120 (store ((as const (Array Context!14914 Bool)) false) ct1!232 true))))

(assert (=> d!2247381 (= (lemmaFlatMapOnSingletonSet!2148 lt!2575120 ct1!232 lambda!440135) lt!2575192)))

(declare-fun b_lambda!277383 () Bool)

(assert (=> (not b_lambda!277383) (not d!2247381)))

(declare-fun bs!1903270 () Bool)

(assert (= bs!1903270 d!2247381))

(assert (=> bs!1903270 m!7905326))

(declare-fun m!7905726 () Bool)

(assert (=> bs!1903270 m!7905726))

(declare-fun m!7905728 () Bool)

(assert (=> bs!1903270 m!7905728))

(assert (=> bs!1903270 m!7905356))

(assert (=> b!7234993 d!2247381))

(declare-fun d!2247393 () Bool)

(assert (=> d!2247393 (= (flatMap!2721 lt!2575118 lambda!440135) (dynLambda!28565 lambda!440135 lt!2575127))))

(declare-fun lt!2575193 () Unit!163572)

(assert (=> d!2247393 (= lt!2575193 (choose!55607 lt!2575118 lt!2575127 lambda!440135))))

(assert (=> d!2247393 (= lt!2575118 (store ((as const (Array Context!14914 Bool)) false) lt!2575127 true))))

(assert (=> d!2247393 (= (lemmaFlatMapOnSingletonSet!2148 lt!2575118 lt!2575127 lambda!440135) lt!2575193)))

(declare-fun b_lambda!277385 () Bool)

(assert (=> (not b_lambda!277385) (not d!2247393)))

(declare-fun bs!1903271 () Bool)

(assert (= bs!1903271 d!2247393))

(assert (=> bs!1903271 m!7905342))

(declare-fun m!7905742 () Bool)

(assert (=> bs!1903271 m!7905742))

(declare-fun m!7905744 () Bool)

(assert (=> bs!1903271 m!7905744))

(assert (=> bs!1903271 m!7905396))

(assert (=> b!7234993 d!2247393))

(assert (=> b!7234993 d!2247293))

(declare-fun b!7235243 () Bool)

(declare-fun e!4337594 () (InoxSet Context!14914))

(declare-fun call!658701 () (InoxSet Context!14914))

(assert (=> b!7235243 (= e!4337594 call!658701)))

(declare-fun b!7235244 () Bool)

(declare-fun c!1342800 () Bool)

(declare-fun e!4337590 () Bool)

(assert (=> b!7235244 (= c!1342800 e!4337590)))

(declare-fun res!2935296 () Bool)

(assert (=> b!7235244 (=> (not res!2935296) (not e!4337590))))

(assert (=> b!7235244 (= res!2935296 ((_ is Concat!27362) (h!76483 (exprs!7957 ct1!232))))))

(declare-fun e!4337591 () (InoxSet Context!14914))

(declare-fun e!4337593 () (InoxSet Context!14914))

(assert (=> b!7235244 (= e!4337591 e!4337593)))

(declare-fun b!7235245 () Bool)

(assert (=> b!7235245 (= e!4337590 (nullable!7830 (regOne!37546 (h!76483 (exprs!7957 ct1!232)))))))

(declare-fun b!7235246 () Bool)

(declare-fun e!4337595 () (InoxSet Context!14914))

(assert (=> b!7235246 (= e!4337595 ((as const (Array Context!14914 Bool)) false))))

(declare-fun bm!658694 () Bool)

(declare-fun call!658700 () (InoxSet Context!14914))

(assert (=> bm!658694 (= call!658701 call!658700)))

(declare-fun c!1342802 () Bool)

(declare-fun call!658702 () List!70159)

(declare-fun bm!658695 () Bool)

(assert (=> bm!658695 (= call!658702 ($colon$colon!2871 (exprs!7957 (Context!14915 (tail!14148 lt!2575111))) (ite (or c!1342800 c!1342802) (regTwo!37546 (h!76483 (exprs!7957 ct1!232))) (h!76483 (exprs!7957 ct1!232)))))))

(declare-fun b!7235247 () Bool)

(assert (=> b!7235247 (= e!4337595 call!658701)))

(declare-fun b!7235248 () Bool)

(declare-fun e!4337592 () (InoxSet Context!14914))

(assert (=> b!7235248 (= e!4337592 e!4337591)))

(declare-fun c!1342801 () Bool)

(assert (=> b!7235248 (= c!1342801 ((_ is Union!18517) (h!76483 (exprs!7957 ct1!232))))))

(declare-fun b!7235249 () Bool)

(declare-fun c!1342804 () Bool)

(assert (=> b!7235249 (= c!1342804 ((_ is Star!18517) (h!76483 (exprs!7957 ct1!232))))))

(assert (=> b!7235249 (= e!4337594 e!4337595)))

(declare-fun b!7235250 () Bool)

(assert (=> b!7235250 (= e!4337593 e!4337594)))

(assert (=> b!7235250 (= c!1342802 ((_ is Concat!27362) (h!76483 (exprs!7957 ct1!232))))))

(declare-fun b!7235251 () Bool)

(assert (=> b!7235251 (= e!4337592 (store ((as const (Array Context!14914 Bool)) false) (Context!14915 (tail!14148 lt!2575111)) true))))

(declare-fun b!7235252 () Bool)

(declare-fun call!658703 () (InoxSet Context!14914))

(assert (=> b!7235252 (= e!4337593 ((_ map or) call!658703 call!658700))))

(declare-fun bm!658697 () Bool)

(declare-fun call!658699 () (InoxSet Context!14914))

(assert (=> bm!658697 (= call!658700 call!658699)))

(declare-fun b!7235253 () Bool)

(assert (=> b!7235253 (= e!4337591 ((_ map or) call!658703 call!658699))))

(declare-fun d!2247397 () Bool)

(declare-fun c!1342803 () Bool)

(assert (=> d!2247397 (= c!1342803 (and ((_ is ElementMatch!18517) (h!76483 (exprs!7957 ct1!232))) (= (c!1342715 (h!76483 (exprs!7957 ct1!232))) (h!76484 s1!1971))))))

(assert (=> d!2247397 (= (derivationStepZipperDown!2561 (h!76483 (exprs!7957 ct1!232)) (Context!14915 (tail!14148 lt!2575111)) (h!76484 s1!1971)) e!4337592)))

(declare-fun call!658704 () List!70159)

(declare-fun bm!658696 () Bool)

(assert (=> bm!658696 (= call!658699 (derivationStepZipperDown!2561 (ite c!1342801 (regTwo!37547 (h!76483 (exprs!7957 ct1!232))) (ite c!1342800 (regTwo!37546 (h!76483 (exprs!7957 ct1!232))) (ite c!1342802 (regOne!37546 (h!76483 (exprs!7957 ct1!232))) (reg!18846 (h!76483 (exprs!7957 ct1!232)))))) (ite (or c!1342801 c!1342800) (Context!14915 (tail!14148 lt!2575111)) (Context!14915 call!658704)) (h!76484 s1!1971)))))

(declare-fun bm!658698 () Bool)

(assert (=> bm!658698 (= call!658704 call!658702)))

(declare-fun bm!658699 () Bool)

(assert (=> bm!658699 (= call!658703 (derivationStepZipperDown!2561 (ite c!1342801 (regOne!37547 (h!76483 (exprs!7957 ct1!232))) (regOne!37546 (h!76483 (exprs!7957 ct1!232)))) (ite c!1342801 (Context!14915 (tail!14148 lt!2575111)) (Context!14915 call!658702)) (h!76484 s1!1971)))))

(assert (= (and d!2247397 c!1342803) b!7235251))

(assert (= (and d!2247397 (not c!1342803)) b!7235248))

(assert (= (and b!7235248 c!1342801) b!7235253))

(assert (= (and b!7235248 (not c!1342801)) b!7235244))

(assert (= (and b!7235244 res!2935296) b!7235245))

(assert (= (and b!7235244 c!1342800) b!7235252))

(assert (= (and b!7235244 (not c!1342800)) b!7235250))

(assert (= (and b!7235250 c!1342802) b!7235243))

(assert (= (and b!7235250 (not c!1342802)) b!7235249))

(assert (= (and b!7235249 c!1342804) b!7235247))

(assert (= (and b!7235249 (not c!1342804)) b!7235246))

(assert (= (or b!7235243 b!7235247) bm!658698))

(assert (= (or b!7235243 b!7235247) bm!658694))

(assert (= (or b!7235252 bm!658698) bm!658695))

(assert (= (or b!7235252 bm!658694) bm!658697))

(assert (= (or b!7235253 bm!658697) bm!658696))

(assert (= (or b!7235253 b!7235252) bm!658699))

(declare-fun m!7905746 () Bool)

(assert (=> bm!658695 m!7905746))

(declare-fun m!7905748 () Bool)

(assert (=> bm!658699 m!7905748))

(assert (=> b!7235245 m!7905490))

(declare-fun m!7905750 () Bool)

(assert (=> bm!658696 m!7905750))

(declare-fun m!7905752 () Bool)

(assert (=> b!7235251 m!7905752))

(assert (=> b!7234993 d!2247397))

(declare-fun d!2247399 () Bool)

(declare-fun nullableFct!3064 (Regex!18517) Bool)

(assert (=> d!2247399 (= (nullable!7830 (h!76483 (exprs!7957 ct1!232))) (nullableFct!3064 (h!76483 (exprs!7957 ct1!232))))))

(declare-fun bs!1903274 () Bool)

(assert (= bs!1903274 d!2247399))

(declare-fun m!7905756 () Bool)

(assert (=> bs!1903274 m!7905756))

(assert (=> b!7234993 d!2247399))

(assert (=> b!7234993 d!2247297))

(assert (=> b!7234993 d!2247367))

(declare-fun d!2247401 () Bool)

(assert (=> d!2247401 (= (tail!14148 lt!2575111) (t!384210 lt!2575111))))

(assert (=> b!7234993 d!2247401))

(declare-fun d!2247403 () Bool)

(declare-fun choose!55609 ((InoxSet Context!14914) Int) (InoxSet Context!14914))

(assert (=> d!2247403 (= (flatMap!2721 lt!2575120 lambda!440135) (choose!55609 lt!2575120 lambda!440135))))

(declare-fun bs!1903275 () Bool)

(assert (= bs!1903275 d!2247403))

(declare-fun m!7905758 () Bool)

(assert (=> bs!1903275 m!7905758))

(assert (=> b!7234993 d!2247403))

(declare-fun d!2247405 () Bool)

(assert (=> d!2247405 (= (flatMap!2721 lt!2575118 lambda!440135) (choose!55609 lt!2575118 lambda!440135))))

(declare-fun bs!1903276 () Bool)

(assert (= bs!1903276 d!2247405))

(declare-fun m!7905760 () Bool)

(assert (=> bs!1903276 m!7905760))

(assert (=> b!7234993 d!2247405))

(declare-fun d!2247407 () Bool)

(declare-fun c!1342807 () Bool)

(assert (=> d!2247407 (= c!1342807 (isEmpty!40363 (t!384211 s1!1971)))))

(declare-fun e!4337602 () Bool)

(assert (=> d!2247407 (= (matchZipper!3427 lt!2575108 (t!384211 s1!1971)) e!4337602)))

(declare-fun b!7235266 () Bool)

(assert (=> b!7235266 (= e!4337602 (nullableZipper!2824 lt!2575108))))

(declare-fun b!7235267 () Bool)

(assert (=> b!7235267 (= e!4337602 (matchZipper!3427 (derivationStepZipper!3309 lt!2575108 (head!14813 (t!384211 s1!1971))) (tail!14149 (t!384211 s1!1971))))))

(assert (= (and d!2247407 c!1342807) b!7235266))

(assert (= (and d!2247407 (not c!1342807)) b!7235267))

(declare-fun m!7905762 () Bool)

(assert (=> d!2247407 m!7905762))

(declare-fun m!7905764 () Bool)

(assert (=> b!7235266 m!7905764))

(declare-fun m!7905766 () Bool)

(assert (=> b!7235267 m!7905766))

(assert (=> b!7235267 m!7905766))

(declare-fun m!7905768 () Bool)

(assert (=> b!7235267 m!7905768))

(declare-fun m!7905770 () Bool)

(assert (=> b!7235267 m!7905770))

(assert (=> b!7235267 m!7905768))

(assert (=> b!7235267 m!7905770))

(declare-fun m!7905772 () Bool)

(assert (=> b!7235267 m!7905772))

(assert (=> b!7235003 d!2247407))

(declare-fun bs!1903281 () Bool)

(declare-fun d!2247409 () Bool)

(assert (= bs!1903281 (and d!2247409 b!7234993)))

(declare-fun lambda!440167 () Int)

(assert (=> bs!1903281 (= lambda!440167 lambda!440135)))

(assert (=> d!2247409 true))

(assert (=> d!2247409 (= (derivationStepZipper!3309 lt!2575120 (h!76484 s1!1971)) (flatMap!2721 lt!2575120 lambda!440167))))

(declare-fun bs!1903282 () Bool)

(assert (= bs!1903282 d!2247409))

(declare-fun m!7905780 () Bool)

(assert (=> bs!1903282 m!7905780))

(assert (=> b!7235003 d!2247409))

(declare-fun b!7235276 () Bool)

(declare-fun e!4337607 () Bool)

(declare-fun tp!2034471 () Bool)

(assert (=> b!7235276 (= e!4337607 (and tp_is_empty!46499 tp!2034471))))

(assert (=> b!7234994 (= tp!2034455 e!4337607)))

(assert (= (and b!7234994 ((_ is Cons!70036) (t!384211 s2!1849))) b!7235276))

(declare-fun b!7235277 () Bool)

(declare-fun e!4337608 () Bool)

(declare-fun tp!2034472 () Bool)

(assert (=> b!7235277 (= e!4337608 (and tp_is_empty!46499 tp!2034472))))

(assert (=> b!7234999 (= tp!2034454 e!4337608)))

(assert (= (and b!7234999 ((_ is Cons!70036) (t!384211 s1!1971))) b!7235277))

(declare-fun b!7235282 () Bool)

(declare-fun e!4337611 () Bool)

(declare-fun tp!2034477 () Bool)

(declare-fun tp!2034478 () Bool)

(assert (=> b!7235282 (= e!4337611 (and tp!2034477 tp!2034478))))

(assert (=> b!7235001 (= tp!2034456 e!4337611)))

(assert (= (and b!7235001 ((_ is Cons!70035) (exprs!7957 ct1!232))) b!7235282))

(declare-fun b!7235283 () Bool)

(declare-fun e!4337612 () Bool)

(declare-fun tp!2034479 () Bool)

(declare-fun tp!2034480 () Bool)

(assert (=> b!7235283 (= e!4337612 (and tp!2034479 tp!2034480))))

(assert (=> b!7234998 (= tp!2034453 e!4337612)))

(assert (= (and b!7234998 ((_ is Cons!70035) (exprs!7957 ct2!328))) b!7235283))

(declare-fun b_lambda!277395 () Bool)

(assert (= b_lambda!277379 (or b!7234997 b_lambda!277395)))

(declare-fun bs!1903283 () Bool)

(declare-fun d!2247419 () Bool)

(assert (= bs!1903283 (and d!2247419 b!7234997)))

(assert (=> bs!1903283 (= (dynLambda!28564 lambda!440134 lt!2575187) (matchZipper!3427 (store ((as const (Array Context!14914 Bool)) false) lt!2575187 true) (t!384211 s1!1971)))))

(declare-fun m!7905782 () Bool)

(assert (=> bs!1903283 m!7905782))

(assert (=> bs!1903283 m!7905782))

(declare-fun m!7905784 () Bool)

(assert (=> bs!1903283 m!7905784))

(assert (=> d!2247369 d!2247419))

(declare-fun b_lambda!277397 () Bool)

(assert (= b_lambda!277371 (or b!7234992 b_lambda!277397)))

(declare-fun bs!1903284 () Bool)

(declare-fun d!2247421 () Bool)

(assert (= bs!1903284 (and d!2247421 b!7234992)))

(declare-fun validRegex!9519 (Regex!18517) Bool)

(assert (=> bs!1903284 (= (dynLambda!28559 lambda!440133 (h!76483 (exprs!7957 ct1!232))) (validRegex!9519 (h!76483 (exprs!7957 ct1!232))))))

(declare-fun m!7905786 () Bool)

(assert (=> bs!1903284 m!7905786))

(assert (=> b!7235024 d!2247421))

(declare-fun b_lambda!277399 () Bool)

(assert (= b_lambda!277383 (or b!7234993 b_lambda!277399)))

(declare-fun bs!1903285 () Bool)

(declare-fun d!2247423 () Bool)

(assert (= bs!1903285 (and d!2247423 b!7234993)))

(assert (=> bs!1903285 (= (dynLambda!28565 lambda!440135 ct1!232) (derivationStepZipperUp!2391 ct1!232 (h!76484 s1!1971)))))

(assert (=> bs!1903285 m!7905336))

(assert (=> d!2247381 d!2247423))

(declare-fun b_lambda!277401 () Bool)

(assert (= b_lambda!277385 (or b!7234993 b_lambda!277401)))

(declare-fun bs!1903286 () Bool)

(declare-fun d!2247425 () Bool)

(assert (= bs!1903286 (and d!2247425 b!7234993)))

(assert (=> bs!1903286 (= (dynLambda!28565 lambda!440135 lt!2575127) (derivationStepZipperUp!2391 lt!2575127 (h!76484 s1!1971)))))

(assert (=> bs!1903286 m!7905332))

(assert (=> d!2247393 d!2247425))

(check-sat (not bs!1903285) (not d!2247339) (not d!2247337) (not b!7235062) (not d!2247283) (not bm!658687) (not d!2247405) (not b!7235115) (not b!7235238) (not b_lambda!277395) (not b_lambda!277397) (not b!7235043) (not bs!1903283) (not b!7235267) (not d!2247399) (not b!7235198) (not d!2247321) (not b!7235277) (not b!7235102) (not b_lambda!277401) (not d!2247341) (not b_lambda!277399) (not bm!658695) (not d!2247311) (not d!2247359) (not d!2247393) (not b!7235145) (not b!7235282) (not d!2247381) (not d!2247345) (not b!7235215) (not b!7235283) (not b!7235216) (not d!2247327) (not bm!658680) (not bm!658661) (not b!7235060) (not d!2247403) (not d!2247313) (not bm!658665) (not d!2247349) (not bm!658699) (not b!7235219) (not b!7235184) (not b!7235266) (not b!7235221) (not d!2247297) (not b!7235025) tp_is_empty!46499 (not b!7235182) (not d!2247323) (not bm!658662) (not bm!658647) (not b!7235197) (not b!7235044) (not d!2247351) (not b!7235116) (not bm!658696) (not d!2247369) (not d!2247407) (not b!7235144) (not b!7235180) (not bs!1903286) (not b!7235245) (not b!7235276) (not d!2247379) (not b!7235239) (not bs!1903284) (not d!2247409))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!593336 () Bool)

(assert start!593336)

(declare-fun b!5785085 () Bool)

(assert (=> b!5785085 true))

(assert (=> b!5785085 true))

(declare-fun lambda!315297 () Int)

(declare-fun lambda!315296 () Int)

(assert (=> b!5785085 (not (= lambda!315297 lambda!315296))))

(assert (=> b!5785085 true))

(assert (=> b!5785085 true))

(declare-fun lambda!315298 () Int)

(assert (=> b!5785085 (not (= lambda!315298 lambda!315296))))

(assert (=> b!5785085 (not (= lambda!315298 lambda!315297))))

(assert (=> b!5785085 true))

(assert (=> b!5785085 true))

(declare-fun e!3553212 () Bool)

(declare-fun e!3553217 () Bool)

(assert (=> b!5785085 (= e!3553212 e!3553217)))

(declare-fun res!2441208 () Bool)

(assert (=> b!5785085 (=> res!2441208 e!3553217)))

(declare-fun lt!2296406 () Bool)

(declare-fun e!3553214 () Bool)

(assert (=> b!5785085 (= res!2441208 (not (= lt!2296406 e!3553214)))))

(declare-fun res!2441207 () Bool)

(assert (=> b!5785085 (=> res!2441207 e!3553214)))

(declare-datatypes ((C!31864 0))(
  ( (C!31865 (val!25634 Int)) )
))
(declare-datatypes ((List!63690 0))(
  ( (Nil!63566) (Cons!63566 (h!70014 C!31864) (t!377029 List!63690)) )
))
(declare-fun s!2326 () List!63690)

(declare-fun isEmpty!35467 (List!63690) Bool)

(assert (=> b!5785085 (= res!2441207 (isEmpty!35467 s!2326))))

(declare-fun Exists!2897 (Int) Bool)

(assert (=> b!5785085 (= (Exists!2897 lambda!315296) (Exists!2897 lambda!315298))))

(declare-datatypes ((Unit!156854 0))(
  ( (Unit!156855) )
))
(declare-fun lt!2296410 () Unit!156854)

(declare-datatypes ((Regex!15797 0))(
  ( (ElementMatch!15797 (c!1024165 C!31864)) (Concat!24642 (regOne!32106 Regex!15797) (regTwo!32106 Regex!15797)) (EmptyExpr!15797) (Star!15797 (reg!16126 Regex!15797)) (EmptyLang!15797) (Union!15797 (regOne!32107 Regex!15797) (regTwo!32107 Regex!15797)) )
))
(declare-fun r!7292 () Regex!15797)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1526 (Regex!15797 Regex!15797 List!63690) Unit!156854)

(assert (=> b!5785085 (= lt!2296410 (lemmaExistCutMatchRandMatchRSpecEquivalent!1526 (reg!16126 r!7292) r!7292 s!2326))))

(assert (=> b!5785085 (= (Exists!2897 lambda!315296) (Exists!2897 lambda!315297))))

(declare-fun lt!2296408 () Unit!156854)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!578 (Regex!15797 List!63690) Unit!156854)

(assert (=> b!5785085 (= lt!2296408 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!578 (reg!16126 r!7292) s!2326))))

(declare-fun lt!2296407 () Bool)

(assert (=> b!5785085 (= lt!2296407 (Exists!2897 lambda!315296))))

(declare-datatypes ((tuple2!65788 0))(
  ( (tuple2!65789 (_1!36197 List!63690) (_2!36197 List!63690)) )
))
(declare-datatypes ((Option!15806 0))(
  ( (None!15805) (Some!15805 (v!51865 tuple2!65788)) )
))
(declare-fun isDefined!12509 (Option!15806) Bool)

(declare-fun findConcatSeparation!2220 (Regex!15797 Regex!15797 List!63690 List!63690 List!63690) Option!15806)

(assert (=> b!5785085 (= lt!2296407 (isDefined!12509 (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 Nil!63566 s!2326 s!2326)))))

(declare-fun lt!2296405 () Unit!156854)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1984 (Regex!15797 Regex!15797 List!63690) Unit!156854)

(assert (=> b!5785085 (= lt!2296405 (lemmaFindConcatSeparationEquivalentToExists!1984 (reg!16126 r!7292) r!7292 s!2326))))

(declare-fun b!5785086 () Bool)

(declare-fun e!3553211 () Bool)

(declare-fun tp_is_empty!40847 () Bool)

(declare-fun tp!1596006 () Bool)

(assert (=> b!5785086 (= e!3553211 (and tp_is_empty!40847 tp!1596006))))

(declare-fun b!5785087 () Bool)

(declare-fun e!3553215 () Bool)

(declare-fun tp!1596009 () Bool)

(declare-fun tp!1596011 () Bool)

(assert (=> b!5785087 (= e!3553215 (and tp!1596009 tp!1596011))))

(declare-fun b!5785088 () Bool)

(assert (=> b!5785088 (= e!3553214 lt!2296407)))

(declare-fun b!5785089 () Bool)

(declare-fun res!2441203 () Bool)

(assert (=> b!5785089 (=> res!2441203 e!3553212)))

(declare-datatypes ((List!63691 0))(
  ( (Nil!63567) (Cons!63567 (h!70015 Regex!15797) (t!377030 List!63691)) )
))
(declare-datatypes ((Context!10362 0))(
  ( (Context!10363 (exprs!5681 List!63691)) )
))
(declare-datatypes ((List!63692 0))(
  ( (Nil!63568) (Cons!63568 (h!70016 Context!10362) (t!377031 List!63692)) )
))
(declare-fun zl!343 () List!63692)

(declare-fun generalisedUnion!1660 (List!63691) Regex!15797)

(declare-fun unfocusZipperList!1225 (List!63692) List!63691)

(assert (=> b!5785089 (= res!2441203 (not (= r!7292 (generalisedUnion!1660 (unfocusZipperList!1225 zl!343)))))))

(declare-fun res!2441204 () Bool)

(declare-fun e!3553218 () Bool)

(assert (=> start!593336 (=> (not res!2441204) (not e!3553218))))

(declare-fun validRegex!7533 (Regex!15797) Bool)

(assert (=> start!593336 (= res!2441204 (validRegex!7533 r!7292))))

(assert (=> start!593336 e!3553218))

(assert (=> start!593336 e!3553215))

(declare-fun condSetEmpty!38866 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10362))

(assert (=> start!593336 (= condSetEmpty!38866 (= z!1189 ((as const (Array Context!10362 Bool)) false)))))

(declare-fun setRes!38866 () Bool)

(assert (=> start!593336 setRes!38866))

(declare-fun e!3553216 () Bool)

(assert (=> start!593336 e!3553216))

(assert (=> start!593336 e!3553211))

(declare-fun b!5785090 () Bool)

(declare-fun e!3553213 () Bool)

(declare-fun tp!1596005 () Bool)

(assert (=> b!5785090 (= e!3553213 tp!1596005)))

(declare-fun setNonEmpty!38866 () Bool)

(declare-fun setElem!38866 () Context!10362)

(declare-fun tp!1596012 () Bool)

(declare-fun inv!82739 (Context!10362) Bool)

(assert (=> setNonEmpty!38866 (= setRes!38866 (and tp!1596012 (inv!82739 setElem!38866) e!3553213))))

(declare-fun setRest!38866 () (InoxSet Context!10362))

(assert (=> setNonEmpty!38866 (= z!1189 ((_ map or) (store ((as const (Array Context!10362 Bool)) false) setElem!38866 true) setRest!38866))))

(declare-fun b!5785091 () Bool)

(declare-fun res!2441210 () Bool)

(assert (=> b!5785091 (=> (not res!2441210) (not e!3553218))))

(declare-fun toList!9581 ((InoxSet Context!10362)) List!63692)

(assert (=> b!5785091 (= res!2441210 (= (toList!9581 z!1189) zl!343))))

(declare-fun b!5785092 () Bool)

(declare-fun res!2441209 () Bool)

(assert (=> b!5785092 (=> (not res!2441209) (not e!3553218))))

(declare-fun unfocusZipper!1539 (List!63692) Regex!15797)

(assert (=> b!5785092 (= res!2441209 (= r!7292 (unfocusZipper!1539 zl!343)))))

(declare-fun b!5785093 () Bool)

(declare-fun res!2441201 () Bool)

(assert (=> b!5785093 (=> res!2441201 e!3553217)))

(get-info :version)

(assert (=> b!5785093 (= res!2441201 ((_ is Nil!63566) s!2326))))

(declare-fun e!3553219 () Bool)

(declare-fun b!5785094 () Bool)

(declare-fun tp!1596010 () Bool)

(assert (=> b!5785094 (= e!3553216 (and (inv!82739 (h!70016 zl!343)) e!3553219 tp!1596010))))

(declare-fun b!5785095 () Bool)

(declare-fun res!2441202 () Bool)

(assert (=> b!5785095 (=> res!2441202 e!3553212)))

(declare-fun generalisedConcat!1412 (List!63691) Regex!15797)

(assert (=> b!5785095 (= res!2441202 (not (= r!7292 (generalisedConcat!1412 (exprs!5681 (h!70016 zl!343))))))))

(declare-fun b!5785096 () Bool)

(declare-fun derivationStepZipperUp!1061 (Context!10362 C!31864) (InoxSet Context!10362))

(declare-fun derivationStepZipperDown!1135 (Regex!15797 Context!10362 C!31864) (InoxSet Context!10362))

(assert (=> b!5785096 (= e!3553217 (= (derivationStepZipperUp!1061 (Context!10363 (Cons!63567 r!7292 Nil!63567)) (h!70014 s!2326)) (derivationStepZipperDown!1135 r!7292 (Context!10363 Nil!63567) (h!70014 s!2326))))))

(declare-fun b!5785097 () Bool)

(declare-fun res!2441211 () Bool)

(assert (=> b!5785097 (=> res!2441211 e!3553212)))

(assert (=> b!5785097 (= res!2441211 (not ((_ is Cons!63567) (exprs!5681 (h!70016 zl!343)))))))

(declare-fun b!5785098 () Bool)

(declare-fun res!2441212 () Bool)

(assert (=> b!5785098 (=> res!2441212 e!3553212)))

(assert (=> b!5785098 (= res!2441212 (or ((_ is EmptyExpr!15797) r!7292) ((_ is EmptyLang!15797) r!7292) ((_ is ElementMatch!15797) r!7292) ((_ is Union!15797) r!7292) ((_ is Concat!24642) r!7292)))))

(declare-fun b!5785099 () Bool)

(declare-fun tp!1596008 () Bool)

(declare-fun tp!1596004 () Bool)

(assert (=> b!5785099 (= e!3553215 (and tp!1596008 tp!1596004))))

(declare-fun b!5785100 () Bool)

(declare-fun tp!1596007 () Bool)

(assert (=> b!5785100 (= e!3553215 tp!1596007)))

(declare-fun b!5785101 () Bool)

(declare-fun tp!1596003 () Bool)

(assert (=> b!5785101 (= e!3553219 tp!1596003)))

(declare-fun b!5785102 () Bool)

(assert (=> b!5785102 (= e!3553215 tp_is_empty!40847)))

(declare-fun b!5785103 () Bool)

(declare-fun res!2441205 () Bool)

(assert (=> b!5785103 (=> res!2441205 e!3553212)))

(declare-fun isEmpty!35468 (List!63692) Bool)

(assert (=> b!5785103 (= res!2441205 (not (isEmpty!35468 (t!377031 zl!343))))))

(declare-fun b!5785104 () Bool)

(assert (=> b!5785104 (= e!3553218 (not e!3553212))))

(declare-fun res!2441206 () Bool)

(assert (=> b!5785104 (=> res!2441206 e!3553212)))

(assert (=> b!5785104 (= res!2441206 (not ((_ is Cons!63568) zl!343)))))

(declare-fun matchRSpec!2900 (Regex!15797 List!63690) Bool)

(assert (=> b!5785104 (= lt!2296406 (matchRSpec!2900 r!7292 s!2326))))

(declare-fun matchR!7982 (Regex!15797 List!63690) Bool)

(assert (=> b!5785104 (= lt!2296406 (matchR!7982 r!7292 s!2326))))

(declare-fun lt!2296409 () Unit!156854)

(declare-fun mainMatchTheorem!2900 (Regex!15797 List!63690) Unit!156854)

(assert (=> b!5785104 (= lt!2296409 (mainMatchTheorem!2900 r!7292 s!2326))))

(declare-fun setIsEmpty!38866 () Bool)

(assert (=> setIsEmpty!38866 setRes!38866))

(assert (= (and start!593336 res!2441204) b!5785091))

(assert (= (and b!5785091 res!2441210) b!5785092))

(assert (= (and b!5785092 res!2441209) b!5785104))

(assert (= (and b!5785104 (not res!2441206)) b!5785103))

(assert (= (and b!5785103 (not res!2441205)) b!5785095))

(assert (= (and b!5785095 (not res!2441202)) b!5785097))

(assert (= (and b!5785097 (not res!2441211)) b!5785089))

(assert (= (and b!5785089 (not res!2441203)) b!5785098))

(assert (= (and b!5785098 (not res!2441212)) b!5785085))

(assert (= (and b!5785085 (not res!2441207)) b!5785088))

(assert (= (and b!5785085 (not res!2441208)) b!5785093))

(assert (= (and b!5785093 (not res!2441201)) b!5785096))

(assert (= (and start!593336 ((_ is ElementMatch!15797) r!7292)) b!5785102))

(assert (= (and start!593336 ((_ is Concat!24642) r!7292)) b!5785099))

(assert (= (and start!593336 ((_ is Star!15797) r!7292)) b!5785100))

(assert (= (and start!593336 ((_ is Union!15797) r!7292)) b!5785087))

(assert (= (and start!593336 condSetEmpty!38866) setIsEmpty!38866))

(assert (= (and start!593336 (not condSetEmpty!38866)) setNonEmpty!38866))

(assert (= setNonEmpty!38866 b!5785090))

(assert (= b!5785094 b!5785101))

(assert (= (and start!593336 ((_ is Cons!63568) zl!343)) b!5785094))

(assert (= (and start!593336 ((_ is Cons!63566) s!2326)) b!5785086))

(declare-fun m!6730358 () Bool)

(assert (=> b!5785089 m!6730358))

(assert (=> b!5785089 m!6730358))

(declare-fun m!6730360 () Bool)

(assert (=> b!5785089 m!6730360))

(declare-fun m!6730362 () Bool)

(assert (=> b!5785085 m!6730362))

(declare-fun m!6730364 () Bool)

(assert (=> b!5785085 m!6730364))

(declare-fun m!6730366 () Bool)

(assert (=> b!5785085 m!6730366))

(declare-fun m!6730368 () Bool)

(assert (=> b!5785085 m!6730368))

(declare-fun m!6730370 () Bool)

(assert (=> b!5785085 m!6730370))

(declare-fun m!6730372 () Bool)

(assert (=> b!5785085 m!6730372))

(declare-fun m!6730374 () Bool)

(assert (=> b!5785085 m!6730374))

(assert (=> b!5785085 m!6730366))

(assert (=> b!5785085 m!6730366))

(assert (=> b!5785085 m!6730374))

(declare-fun m!6730376 () Bool)

(assert (=> b!5785085 m!6730376))

(declare-fun m!6730378 () Bool)

(assert (=> b!5785085 m!6730378))

(declare-fun m!6730380 () Bool)

(assert (=> b!5785091 m!6730380))

(declare-fun m!6730382 () Bool)

(assert (=> b!5785103 m!6730382))

(declare-fun m!6730384 () Bool)

(assert (=> b!5785095 m!6730384))

(declare-fun m!6730386 () Bool)

(assert (=> b!5785104 m!6730386))

(declare-fun m!6730388 () Bool)

(assert (=> b!5785104 m!6730388))

(declare-fun m!6730390 () Bool)

(assert (=> b!5785104 m!6730390))

(declare-fun m!6730392 () Bool)

(assert (=> start!593336 m!6730392))

(declare-fun m!6730394 () Bool)

(assert (=> setNonEmpty!38866 m!6730394))

(declare-fun m!6730396 () Bool)

(assert (=> b!5785092 m!6730396))

(declare-fun m!6730398 () Bool)

(assert (=> b!5785096 m!6730398))

(declare-fun m!6730400 () Bool)

(assert (=> b!5785096 m!6730400))

(declare-fun m!6730402 () Bool)

(assert (=> b!5785094 m!6730402))

(check-sat (not b!5785100) (not b!5785087) (not b!5785095) (not b!5785096) (not setNonEmpty!38866) (not b!5785086) (not b!5785091) (not b!5785094) (not b!5785103) (not start!593336) (not b!5785092) (not b!5785099) (not b!5785090) tp_is_empty!40847 (not b!5785085) (not b!5785104) (not b!5785089) (not b!5785101))
(check-sat)
(get-model)

(declare-fun d!1822802 () Bool)

(assert (=> d!1822802 (= (isEmpty!35468 (t!377031 zl!343)) ((_ is Nil!63568) (t!377031 zl!343)))))

(assert (=> b!5785103 d!1822802))

(declare-fun bs!1365951 () Bool)

(declare-fun b!5785184 () Bool)

(assert (= bs!1365951 (and b!5785184 b!5785085)))

(declare-fun lambda!315309 () Int)

(assert (=> bs!1365951 (not (= lambda!315309 lambda!315296))))

(assert (=> bs!1365951 (= lambda!315309 lambda!315297)))

(assert (=> bs!1365951 (not (= lambda!315309 lambda!315298))))

(assert (=> b!5785184 true))

(assert (=> b!5785184 true))

(declare-fun bs!1365952 () Bool)

(declare-fun b!5785188 () Bool)

(assert (= bs!1365952 (and b!5785188 b!5785085)))

(declare-fun lambda!315310 () Int)

(assert (=> bs!1365952 (not (= lambda!315310 lambda!315296))))

(assert (=> bs!1365952 (not (= lambda!315310 lambda!315297))))

(assert (=> bs!1365952 (= (and (= (regOne!32106 r!7292) (reg!16126 r!7292)) (= (regTwo!32106 r!7292) r!7292)) (= lambda!315310 lambda!315298))))

(declare-fun bs!1365953 () Bool)

(assert (= bs!1365953 (and b!5785188 b!5785184)))

(assert (=> bs!1365953 (not (= lambda!315310 lambda!315309))))

(assert (=> b!5785188 true))

(assert (=> b!5785188 true))

(declare-fun e!3553265 () Bool)

(declare-fun call!450357 () Bool)

(assert (=> b!5785184 (= e!3553265 call!450357)))

(declare-fun b!5785185 () Bool)

(declare-fun e!3553264 () Bool)

(assert (=> b!5785185 (= e!3553264 (matchRSpec!2900 (regTwo!32107 r!7292) s!2326))))

(declare-fun b!5785186 () Bool)

(declare-fun c!1024187 () Bool)

(assert (=> b!5785186 (= c!1024187 ((_ is ElementMatch!15797) r!7292))))

(declare-fun e!3553263 () Bool)

(declare-fun e!3553269 () Bool)

(assert (=> b!5785186 (= e!3553263 e!3553269)))

(declare-fun b!5785187 () Bool)

(declare-fun e!3553267 () Bool)

(assert (=> b!5785187 (= e!3553267 e!3553264)))

(declare-fun res!2441249 () Bool)

(assert (=> b!5785187 (= res!2441249 (matchRSpec!2900 (regOne!32107 r!7292) s!2326))))

(assert (=> b!5785187 (=> res!2441249 e!3553264)))

(declare-fun b!5785189 () Bool)

(declare-fun res!2441250 () Bool)

(assert (=> b!5785189 (=> res!2441250 e!3553265)))

(declare-fun call!450358 () Bool)

(assert (=> b!5785189 (= res!2441250 call!450358)))

(declare-fun e!3553268 () Bool)

(assert (=> b!5785189 (= e!3553268 e!3553265)))

(declare-fun bm!450352 () Bool)

(declare-fun c!1024186 () Bool)

(assert (=> bm!450352 (= call!450357 (Exists!2897 (ite c!1024186 lambda!315309 lambda!315310)))))

(declare-fun b!5785190 () Bool)

(declare-fun e!3553266 () Bool)

(assert (=> b!5785190 (= e!3553266 e!3553263)))

(declare-fun res!2441248 () Bool)

(assert (=> b!5785190 (= res!2441248 (not ((_ is EmptyLang!15797) r!7292)))))

(assert (=> b!5785190 (=> (not res!2441248) (not e!3553263))))

(declare-fun bm!450353 () Bool)

(assert (=> bm!450353 (= call!450358 (isEmpty!35467 s!2326))))

(declare-fun b!5785191 () Bool)

(assert (=> b!5785191 (= e!3553269 (= s!2326 (Cons!63566 (c!1024165 r!7292) Nil!63566)))))

(declare-fun b!5785192 () Bool)

(assert (=> b!5785192 (= e!3553266 call!450358)))

(declare-fun b!5785193 () Bool)

(assert (=> b!5785193 (= e!3553267 e!3553268)))

(assert (=> b!5785193 (= c!1024186 ((_ is Star!15797) r!7292))))

(declare-fun b!5785194 () Bool)

(declare-fun c!1024189 () Bool)

(assert (=> b!5785194 (= c!1024189 ((_ is Union!15797) r!7292))))

(assert (=> b!5785194 (= e!3553269 e!3553267)))

(assert (=> b!5785188 (= e!3553268 call!450357)))

(declare-fun d!1822804 () Bool)

(declare-fun c!1024188 () Bool)

(assert (=> d!1822804 (= c!1024188 ((_ is EmptyExpr!15797) r!7292))))

(assert (=> d!1822804 (= (matchRSpec!2900 r!7292 s!2326) e!3553266)))

(assert (= (and d!1822804 c!1024188) b!5785192))

(assert (= (and d!1822804 (not c!1024188)) b!5785190))

(assert (= (and b!5785190 res!2441248) b!5785186))

(assert (= (and b!5785186 c!1024187) b!5785191))

(assert (= (and b!5785186 (not c!1024187)) b!5785194))

(assert (= (and b!5785194 c!1024189) b!5785187))

(assert (= (and b!5785194 (not c!1024189)) b!5785193))

(assert (= (and b!5785187 (not res!2441249)) b!5785185))

(assert (= (and b!5785193 c!1024186) b!5785189))

(assert (= (and b!5785193 (not c!1024186)) b!5785188))

(assert (= (and b!5785189 (not res!2441250)) b!5785184))

(assert (= (or b!5785184 b!5785188) bm!450352))

(assert (= (or b!5785192 b!5785189) bm!450353))

(declare-fun m!6730410 () Bool)

(assert (=> b!5785185 m!6730410))

(declare-fun m!6730412 () Bool)

(assert (=> b!5785187 m!6730412))

(declare-fun m!6730414 () Bool)

(assert (=> bm!450352 m!6730414))

(assert (=> bm!450353 m!6730364))

(assert (=> b!5785104 d!1822804))

(declare-fun bm!450380 () Bool)

(declare-fun call!450385 () Bool)

(assert (=> bm!450380 (= call!450385 (isEmpty!35467 s!2326))))

(declare-fun b!5785313 () Bool)

(declare-fun e!3553336 () Bool)

(declare-fun e!3553333 () Bool)

(assert (=> b!5785313 (= e!3553336 e!3553333)))

(declare-fun c!1024228 () Bool)

(assert (=> b!5785313 (= c!1024228 ((_ is EmptyLang!15797) r!7292))))

(declare-fun b!5785314 () Bool)

(declare-fun res!2441302 () Bool)

(declare-fun e!3553337 () Bool)

(assert (=> b!5785314 (=> (not res!2441302) (not e!3553337))))

(declare-fun tail!11313 (List!63690) List!63690)

(assert (=> b!5785314 (= res!2441302 (isEmpty!35467 (tail!11313 s!2326)))))

(declare-fun b!5785315 () Bool)

(declare-fun res!2441304 () Bool)

(declare-fun e!3553338 () Bool)

(assert (=> b!5785315 (=> res!2441304 e!3553338)))

(assert (=> b!5785315 (= res!2441304 (not ((_ is ElementMatch!15797) r!7292)))))

(assert (=> b!5785315 (= e!3553333 e!3553338)))

(declare-fun b!5785316 () Bool)

(declare-fun lt!2296419 () Bool)

(assert (=> b!5785316 (= e!3553336 (= lt!2296419 call!450385))))

(declare-fun b!5785317 () Bool)

(declare-fun e!3553334 () Bool)

(declare-fun e!3553332 () Bool)

(assert (=> b!5785317 (= e!3553334 e!3553332)))

(declare-fun res!2441303 () Bool)

(assert (=> b!5785317 (=> res!2441303 e!3553332)))

(assert (=> b!5785317 (= res!2441303 call!450385)))

(declare-fun d!1822810 () Bool)

(assert (=> d!1822810 e!3553336))

(declare-fun c!1024227 () Bool)

(assert (=> d!1822810 (= c!1024227 ((_ is EmptyExpr!15797) r!7292))))

(declare-fun e!3553335 () Bool)

(assert (=> d!1822810 (= lt!2296419 e!3553335)))

(declare-fun c!1024226 () Bool)

(assert (=> d!1822810 (= c!1024226 (isEmpty!35467 s!2326))))

(assert (=> d!1822810 (validRegex!7533 r!7292)))

(assert (=> d!1822810 (= (matchR!7982 r!7292 s!2326) lt!2296419)))

(declare-fun b!5785318 () Bool)

(assert (=> b!5785318 (= e!3553333 (not lt!2296419))))

(declare-fun b!5785319 () Bool)

(declare-fun head!12218 (List!63690) C!31864)

(assert (=> b!5785319 (= e!3553332 (not (= (head!12218 s!2326) (c!1024165 r!7292))))))

(declare-fun b!5785320 () Bool)

(declare-fun res!2441298 () Bool)

(assert (=> b!5785320 (=> res!2441298 e!3553332)))

(assert (=> b!5785320 (= res!2441298 (not (isEmpty!35467 (tail!11313 s!2326))))))

(declare-fun b!5785321 () Bool)

(assert (=> b!5785321 (= e!3553338 e!3553334)))

(declare-fun res!2441297 () Bool)

(assert (=> b!5785321 (=> (not res!2441297) (not e!3553334))))

(assert (=> b!5785321 (= res!2441297 (not lt!2296419))))

(declare-fun b!5785322 () Bool)

(declare-fun res!2441299 () Bool)

(assert (=> b!5785322 (=> res!2441299 e!3553338)))

(assert (=> b!5785322 (= res!2441299 e!3553337)))

(declare-fun res!2441301 () Bool)

(assert (=> b!5785322 (=> (not res!2441301) (not e!3553337))))

(assert (=> b!5785322 (= res!2441301 lt!2296419)))

(declare-fun b!5785323 () Bool)

(assert (=> b!5785323 (= e!3553337 (= (head!12218 s!2326) (c!1024165 r!7292)))))

(declare-fun b!5785324 () Bool)

(declare-fun nullable!5829 (Regex!15797) Bool)

(assert (=> b!5785324 (= e!3553335 (nullable!5829 r!7292))))

(declare-fun b!5785325 () Bool)

(declare-fun derivativeStep!4572 (Regex!15797 C!31864) Regex!15797)

(assert (=> b!5785325 (= e!3553335 (matchR!7982 (derivativeStep!4572 r!7292 (head!12218 s!2326)) (tail!11313 s!2326)))))

(declare-fun b!5785326 () Bool)

(declare-fun res!2441300 () Bool)

(assert (=> b!5785326 (=> (not res!2441300) (not e!3553337))))

(assert (=> b!5785326 (= res!2441300 (not call!450385))))

(assert (= (and d!1822810 c!1024226) b!5785324))

(assert (= (and d!1822810 (not c!1024226)) b!5785325))

(assert (= (and d!1822810 c!1024227) b!5785316))

(assert (= (and d!1822810 (not c!1024227)) b!5785313))

(assert (= (and b!5785313 c!1024228) b!5785318))

(assert (= (and b!5785313 (not c!1024228)) b!5785315))

(assert (= (and b!5785315 (not res!2441304)) b!5785322))

(assert (= (and b!5785322 res!2441301) b!5785326))

(assert (= (and b!5785326 res!2441300) b!5785314))

(assert (= (and b!5785314 res!2441302) b!5785323))

(assert (= (and b!5785322 (not res!2441299)) b!5785321))

(assert (= (and b!5785321 res!2441297) b!5785317))

(assert (= (and b!5785317 (not res!2441303)) b!5785320))

(assert (= (and b!5785320 (not res!2441298)) b!5785319))

(assert (= (or b!5785316 b!5785317 b!5785326) bm!450380))

(declare-fun m!6730448 () Bool)

(assert (=> b!5785325 m!6730448))

(assert (=> b!5785325 m!6730448))

(declare-fun m!6730450 () Bool)

(assert (=> b!5785325 m!6730450))

(declare-fun m!6730452 () Bool)

(assert (=> b!5785325 m!6730452))

(assert (=> b!5785325 m!6730450))

(assert (=> b!5785325 m!6730452))

(declare-fun m!6730454 () Bool)

(assert (=> b!5785325 m!6730454))

(declare-fun m!6730456 () Bool)

(assert (=> b!5785324 m!6730456))

(assert (=> b!5785314 m!6730452))

(assert (=> b!5785314 m!6730452))

(declare-fun m!6730458 () Bool)

(assert (=> b!5785314 m!6730458))

(assert (=> b!5785323 m!6730448))

(assert (=> d!1822810 m!6730364))

(assert (=> d!1822810 m!6730392))

(assert (=> bm!450380 m!6730364))

(assert (=> b!5785320 m!6730452))

(assert (=> b!5785320 m!6730452))

(assert (=> b!5785320 m!6730458))

(assert (=> b!5785319 m!6730448))

(assert (=> b!5785104 d!1822810))

(declare-fun d!1822822 () Bool)

(assert (=> d!1822822 (= (matchR!7982 r!7292 s!2326) (matchRSpec!2900 r!7292 s!2326))))

(declare-fun lt!2296425 () Unit!156854)

(declare-fun choose!43923 (Regex!15797 List!63690) Unit!156854)

(assert (=> d!1822822 (= lt!2296425 (choose!43923 r!7292 s!2326))))

(assert (=> d!1822822 (validRegex!7533 r!7292)))

(assert (=> d!1822822 (= (mainMatchTheorem!2900 r!7292 s!2326) lt!2296425)))

(declare-fun bs!1365957 () Bool)

(assert (= bs!1365957 d!1822822))

(assert (=> bs!1365957 m!6730388))

(assert (=> bs!1365957 m!6730386))

(declare-fun m!6730480 () Bool)

(assert (=> bs!1365957 m!6730480))

(assert (=> bs!1365957 m!6730392))

(assert (=> b!5785104 d!1822822))

(declare-fun d!1822826 () Bool)

(declare-fun e!3553362 () Bool)

(assert (=> d!1822826 e!3553362))

(declare-fun res!2441313 () Bool)

(assert (=> d!1822826 (=> (not res!2441313) (not e!3553362))))

(declare-fun lt!2296434 () List!63692)

(declare-fun noDuplicate!1698 (List!63692) Bool)

(assert (=> d!1822826 (= res!2441313 (noDuplicate!1698 lt!2296434))))

(declare-fun choose!43924 ((InoxSet Context!10362)) List!63692)

(assert (=> d!1822826 (= lt!2296434 (choose!43924 z!1189))))

(assert (=> d!1822826 (= (toList!9581 z!1189) lt!2296434)))

(declare-fun b!5785365 () Bool)

(declare-fun content!11621 (List!63692) (InoxSet Context!10362))

(assert (=> b!5785365 (= e!3553362 (= (content!11621 lt!2296434) z!1189))))

(assert (= (and d!1822826 res!2441313) b!5785365))

(declare-fun m!6730488 () Bool)

(assert (=> d!1822826 m!6730488))

(declare-fun m!6730490 () Bool)

(assert (=> d!1822826 m!6730490))

(declare-fun m!6730492 () Bool)

(assert (=> b!5785365 m!6730492))

(assert (=> b!5785091 d!1822826))

(declare-fun d!1822832 () Bool)

(declare-fun lt!2296439 () Regex!15797)

(assert (=> d!1822832 (validRegex!7533 lt!2296439)))

(assert (=> d!1822832 (= lt!2296439 (generalisedUnion!1660 (unfocusZipperList!1225 zl!343)))))

(assert (=> d!1822832 (= (unfocusZipper!1539 zl!343) lt!2296439)))

(declare-fun bs!1365961 () Bool)

(assert (= bs!1365961 d!1822832))

(declare-fun m!6730494 () Bool)

(assert (=> bs!1365961 m!6730494))

(assert (=> bs!1365961 m!6730358))

(assert (=> bs!1365961 m!6730358))

(assert (=> bs!1365961 m!6730360))

(assert (=> b!5785092 d!1822832))

(declare-fun d!1822834 () Bool)

(declare-fun lambda!315325 () Int)

(declare-fun forall!14911 (List!63691 Int) Bool)

(assert (=> d!1822834 (= (inv!82739 setElem!38866) (forall!14911 (exprs!5681 setElem!38866) lambda!315325))))

(declare-fun bs!1365965 () Bool)

(assert (= bs!1365965 d!1822834))

(declare-fun m!6730516 () Bool)

(assert (=> bs!1365965 m!6730516))

(assert (=> setNonEmpty!38866 d!1822834))

(declare-fun b!5785425 () Bool)

(declare-fun res!2441341 () Bool)

(declare-fun e!3553407 () Bool)

(assert (=> b!5785425 (=> (not res!2441341) (not e!3553407))))

(declare-fun call!450393 () Bool)

(assert (=> b!5785425 (= res!2441341 call!450393)))

(declare-fun e!3553404 () Bool)

(assert (=> b!5785425 (= e!3553404 e!3553407)))

(declare-fun bm!450387 () Bool)

(declare-fun call!450392 () Bool)

(declare-fun call!450394 () Bool)

(assert (=> bm!450387 (= call!450392 call!450394)))

(declare-fun b!5785426 () Bool)

(declare-fun e!3553403 () Bool)

(declare-fun e!3553406 () Bool)

(assert (=> b!5785426 (= e!3553403 e!3553406)))

(declare-fun res!2441343 () Bool)

(assert (=> b!5785426 (=> (not res!2441343) (not e!3553406))))

(assert (=> b!5785426 (= res!2441343 call!450393)))

(declare-fun b!5785427 () Bool)

(declare-fun e!3553402 () Bool)

(declare-fun e!3553408 () Bool)

(assert (=> b!5785427 (= e!3553402 e!3553408)))

(declare-fun res!2441345 () Bool)

(assert (=> b!5785427 (= res!2441345 (not (nullable!5829 (reg!16126 r!7292))))))

(assert (=> b!5785427 (=> (not res!2441345) (not e!3553408))))

(declare-fun b!5785428 () Bool)

(declare-fun e!3553405 () Bool)

(assert (=> b!5785428 (= e!3553405 e!3553402)))

(declare-fun c!1024261 () Bool)

(assert (=> b!5785428 (= c!1024261 ((_ is Star!15797) r!7292))))

(declare-fun bm!450388 () Bool)

(declare-fun c!1024260 () Bool)

(assert (=> bm!450388 (= call!450393 (validRegex!7533 (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))))))

(declare-fun b!5785429 () Bool)

(assert (=> b!5785429 (= e!3553406 call!450392)))

(declare-fun b!5785430 () Bool)

(declare-fun res!2441342 () Bool)

(assert (=> b!5785430 (=> res!2441342 e!3553403)))

(assert (=> b!5785430 (= res!2441342 (not ((_ is Concat!24642) r!7292)))))

(assert (=> b!5785430 (= e!3553404 e!3553403)))

(declare-fun d!1822838 () Bool)

(declare-fun res!2441344 () Bool)

(assert (=> d!1822838 (=> res!2441344 e!3553405)))

(assert (=> d!1822838 (= res!2441344 ((_ is ElementMatch!15797) r!7292))))

(assert (=> d!1822838 (= (validRegex!7533 r!7292) e!3553405)))

(declare-fun b!5785431 () Bool)

(assert (=> b!5785431 (= e!3553402 e!3553404)))

(assert (=> b!5785431 (= c!1024260 ((_ is Union!15797) r!7292))))

(declare-fun bm!450389 () Bool)

(assert (=> bm!450389 (= call!450394 (validRegex!7533 (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))))))

(declare-fun b!5785432 () Bool)

(assert (=> b!5785432 (= e!3553408 call!450394)))

(declare-fun b!5785433 () Bool)

(assert (=> b!5785433 (= e!3553407 call!450392)))

(assert (= (and d!1822838 (not res!2441344)) b!5785428))

(assert (= (and b!5785428 c!1024261) b!5785427))

(assert (= (and b!5785428 (not c!1024261)) b!5785431))

(assert (= (and b!5785427 res!2441345) b!5785432))

(assert (= (and b!5785431 c!1024260) b!5785425))

(assert (= (and b!5785431 (not c!1024260)) b!5785430))

(assert (= (and b!5785425 res!2441341) b!5785433))

(assert (= (and b!5785430 (not res!2441342)) b!5785426))

(assert (= (and b!5785426 res!2441343) b!5785429))

(assert (= (or b!5785433 b!5785429) bm!450387))

(assert (= (or b!5785425 b!5785426) bm!450388))

(assert (= (or b!5785432 bm!450387) bm!450389))

(declare-fun m!6730534 () Bool)

(assert (=> b!5785427 m!6730534))

(declare-fun m!6730536 () Bool)

(assert (=> bm!450388 m!6730536))

(declare-fun m!6730538 () Bool)

(assert (=> bm!450389 m!6730538))

(assert (=> start!593336 d!1822838))

(declare-fun bs!1365979 () Bool)

(declare-fun d!1822846 () Bool)

(assert (= bs!1365979 (and d!1822846 d!1822834)))

(declare-fun lambda!315340 () Int)

(assert (=> bs!1365979 (= lambda!315340 lambda!315325)))

(declare-fun b!5785464 () Bool)

(declare-fun e!3553429 () Bool)

(declare-fun lt!2296452 () Regex!15797)

(declare-fun isUnion!716 (Regex!15797) Bool)

(assert (=> b!5785464 (= e!3553429 (isUnion!716 lt!2296452))))

(declare-fun b!5785465 () Bool)

(declare-fun e!3553427 () Bool)

(declare-fun isEmpty!35471 (List!63691) Bool)

(assert (=> b!5785465 (= e!3553427 (isEmpty!35471 (t!377030 (unfocusZipperList!1225 zl!343))))))

(declare-fun e!3553428 () Bool)

(assert (=> d!1822846 e!3553428))

(declare-fun res!2441361 () Bool)

(assert (=> d!1822846 (=> (not res!2441361) (not e!3553428))))

(assert (=> d!1822846 (= res!2441361 (validRegex!7533 lt!2296452))))

(declare-fun e!3553426 () Regex!15797)

(assert (=> d!1822846 (= lt!2296452 e!3553426)))

(declare-fun c!1024273 () Bool)

(assert (=> d!1822846 (= c!1024273 e!3553427)))

(declare-fun res!2441360 () Bool)

(assert (=> d!1822846 (=> (not res!2441360) (not e!3553427))))

(assert (=> d!1822846 (= res!2441360 ((_ is Cons!63567) (unfocusZipperList!1225 zl!343)))))

(assert (=> d!1822846 (forall!14911 (unfocusZipperList!1225 zl!343) lambda!315340)))

(assert (=> d!1822846 (= (generalisedUnion!1660 (unfocusZipperList!1225 zl!343)) lt!2296452)))

(declare-fun b!5785466 () Bool)

(declare-fun e!3553425 () Regex!15797)

(assert (=> b!5785466 (= e!3553425 EmptyLang!15797)))

(declare-fun b!5785467 () Bool)

(declare-fun e!3553430 () Bool)

(assert (=> b!5785467 (= e!3553428 e!3553430)))

(declare-fun c!1024271 () Bool)

(assert (=> b!5785467 (= c!1024271 (isEmpty!35471 (unfocusZipperList!1225 zl!343)))))

(declare-fun b!5785468 () Bool)

(assert (=> b!5785468 (= e!3553426 e!3553425)))

(declare-fun c!1024272 () Bool)

(assert (=> b!5785468 (= c!1024272 ((_ is Cons!63567) (unfocusZipperList!1225 zl!343)))))

(declare-fun b!5785469 () Bool)

(declare-fun head!12219 (List!63691) Regex!15797)

(assert (=> b!5785469 (= e!3553429 (= lt!2296452 (head!12219 (unfocusZipperList!1225 zl!343))))))

(declare-fun b!5785470 () Bool)

(assert (=> b!5785470 (= e!3553426 (h!70015 (unfocusZipperList!1225 zl!343)))))

(declare-fun b!5785471 () Bool)

(assert (=> b!5785471 (= e!3553430 e!3553429)))

(declare-fun c!1024270 () Bool)

(declare-fun tail!11314 (List!63691) List!63691)

(assert (=> b!5785471 (= c!1024270 (isEmpty!35471 (tail!11314 (unfocusZipperList!1225 zl!343))))))

(declare-fun b!5785472 () Bool)

(declare-fun isEmptyLang!1286 (Regex!15797) Bool)

(assert (=> b!5785472 (= e!3553430 (isEmptyLang!1286 lt!2296452))))

(declare-fun b!5785473 () Bool)

(assert (=> b!5785473 (= e!3553425 (Union!15797 (h!70015 (unfocusZipperList!1225 zl!343)) (generalisedUnion!1660 (t!377030 (unfocusZipperList!1225 zl!343)))))))

(assert (= (and d!1822846 res!2441360) b!5785465))

(assert (= (and d!1822846 c!1024273) b!5785470))

(assert (= (and d!1822846 (not c!1024273)) b!5785468))

(assert (= (and b!5785468 c!1024272) b!5785473))

(assert (= (and b!5785468 (not c!1024272)) b!5785466))

(assert (= (and d!1822846 res!2441361) b!5785467))

(assert (= (and b!5785467 c!1024271) b!5785472))

(assert (= (and b!5785467 (not c!1024271)) b!5785471))

(assert (= (and b!5785471 c!1024270) b!5785469))

(assert (= (and b!5785471 (not c!1024270)) b!5785464))

(declare-fun m!6730552 () Bool)

(assert (=> b!5785473 m!6730552))

(assert (=> b!5785467 m!6730358))

(declare-fun m!6730554 () Bool)

(assert (=> b!5785467 m!6730554))

(declare-fun m!6730556 () Bool)

(assert (=> b!5785464 m!6730556))

(assert (=> b!5785471 m!6730358))

(declare-fun m!6730558 () Bool)

(assert (=> b!5785471 m!6730558))

(assert (=> b!5785471 m!6730558))

(declare-fun m!6730560 () Bool)

(assert (=> b!5785471 m!6730560))

(declare-fun m!6730562 () Bool)

(assert (=> b!5785472 m!6730562))

(declare-fun m!6730564 () Bool)

(assert (=> b!5785465 m!6730564))

(assert (=> b!5785469 m!6730358))

(declare-fun m!6730566 () Bool)

(assert (=> b!5785469 m!6730566))

(declare-fun m!6730568 () Bool)

(assert (=> d!1822846 m!6730568))

(assert (=> d!1822846 m!6730358))

(declare-fun m!6730570 () Bool)

(assert (=> d!1822846 m!6730570))

(assert (=> b!5785089 d!1822846))

(declare-fun bs!1365980 () Bool)

(declare-fun d!1822858 () Bool)

(assert (= bs!1365980 (and d!1822858 d!1822834)))

(declare-fun lambda!315343 () Int)

(assert (=> bs!1365980 (= lambda!315343 lambda!315325)))

(declare-fun bs!1365981 () Bool)

(assert (= bs!1365981 (and d!1822858 d!1822846)))

(assert (=> bs!1365981 (= lambda!315343 lambda!315340)))

(declare-fun lt!2296461 () List!63691)

(assert (=> d!1822858 (forall!14911 lt!2296461 lambda!315343)))

(declare-fun e!3553443 () List!63691)

(assert (=> d!1822858 (= lt!2296461 e!3553443)))

(declare-fun c!1024280 () Bool)

(assert (=> d!1822858 (= c!1024280 ((_ is Cons!63568) zl!343))))

(assert (=> d!1822858 (= (unfocusZipperList!1225 zl!343) lt!2296461)))

(declare-fun b!5785496 () Bool)

(assert (=> b!5785496 (= e!3553443 (Cons!63567 (generalisedConcat!1412 (exprs!5681 (h!70016 zl!343))) (unfocusZipperList!1225 (t!377031 zl!343))))))

(declare-fun b!5785497 () Bool)

(assert (=> b!5785497 (= e!3553443 Nil!63567)))

(assert (= (and d!1822858 c!1024280) b!5785496))

(assert (= (and d!1822858 (not c!1024280)) b!5785497))

(declare-fun m!6730572 () Bool)

(assert (=> d!1822858 m!6730572))

(assert (=> b!5785496 m!6730384))

(declare-fun m!6730574 () Bool)

(assert (=> b!5785496 m!6730574))

(assert (=> b!5785089 d!1822858))

(declare-fun bs!1365988 () Bool)

(declare-fun d!1822860 () Bool)

(assert (= bs!1365988 (and d!1822860 d!1822834)))

(declare-fun lambda!315349 () Int)

(assert (=> bs!1365988 (= lambda!315349 lambda!315325)))

(declare-fun bs!1365989 () Bool)

(assert (= bs!1365989 (and d!1822860 d!1822846)))

(assert (=> bs!1365989 (= lambda!315349 lambda!315340)))

(declare-fun bs!1365990 () Bool)

(assert (= bs!1365990 (and d!1822860 d!1822858)))

(assert (=> bs!1365990 (= lambda!315349 lambda!315343)))

(declare-fun b!5785549 () Bool)

(declare-fun e!3553477 () Bool)

(declare-fun lt!2296470 () Regex!15797)

(declare-fun isConcat!800 (Regex!15797) Bool)

(assert (=> b!5785549 (= e!3553477 (isConcat!800 lt!2296470))))

(declare-fun b!5785550 () Bool)

(declare-fun e!3553480 () Bool)

(declare-fun e!3553479 () Bool)

(assert (=> b!5785550 (= e!3553480 e!3553479)))

(declare-fun c!1024297 () Bool)

(assert (=> b!5785550 (= c!1024297 (isEmpty!35471 (exprs!5681 (h!70016 zl!343))))))

(declare-fun b!5785551 () Bool)

(declare-fun isEmptyExpr!1277 (Regex!15797) Bool)

(assert (=> b!5785551 (= e!3553479 (isEmptyExpr!1277 lt!2296470))))

(declare-fun b!5785552 () Bool)

(assert (=> b!5785552 (= e!3553477 (= lt!2296470 (head!12219 (exprs!5681 (h!70016 zl!343)))))))

(declare-fun b!5785553 () Bool)

(declare-fun e!3553481 () Regex!15797)

(assert (=> b!5785553 (= e!3553481 (h!70015 (exprs!5681 (h!70016 zl!343))))))

(declare-fun b!5785554 () Bool)

(declare-fun e!3553478 () Regex!15797)

(assert (=> b!5785554 (= e!3553478 EmptyExpr!15797)))

(declare-fun b!5785555 () Bool)

(declare-fun e!3553482 () Bool)

(assert (=> b!5785555 (= e!3553482 (isEmpty!35471 (t!377030 (exprs!5681 (h!70016 zl!343)))))))

(declare-fun b!5785556 () Bool)

(assert (=> b!5785556 (= e!3553478 (Concat!24642 (h!70015 (exprs!5681 (h!70016 zl!343))) (generalisedConcat!1412 (t!377030 (exprs!5681 (h!70016 zl!343))))))))

(declare-fun b!5785557 () Bool)

(assert (=> b!5785557 (= e!3553481 e!3553478)))

(declare-fun c!1024295 () Bool)

(assert (=> b!5785557 (= c!1024295 ((_ is Cons!63567) (exprs!5681 (h!70016 zl!343))))))

(assert (=> d!1822860 e!3553480))

(declare-fun res!2441395 () Bool)

(assert (=> d!1822860 (=> (not res!2441395) (not e!3553480))))

(assert (=> d!1822860 (= res!2441395 (validRegex!7533 lt!2296470))))

(assert (=> d!1822860 (= lt!2296470 e!3553481)))

(declare-fun c!1024298 () Bool)

(assert (=> d!1822860 (= c!1024298 e!3553482)))

(declare-fun res!2441396 () Bool)

(assert (=> d!1822860 (=> (not res!2441396) (not e!3553482))))

(assert (=> d!1822860 (= res!2441396 ((_ is Cons!63567) (exprs!5681 (h!70016 zl!343))))))

(assert (=> d!1822860 (forall!14911 (exprs!5681 (h!70016 zl!343)) lambda!315349)))

(assert (=> d!1822860 (= (generalisedConcat!1412 (exprs!5681 (h!70016 zl!343))) lt!2296470)))

(declare-fun b!5785558 () Bool)

(assert (=> b!5785558 (= e!3553479 e!3553477)))

(declare-fun c!1024296 () Bool)

(assert (=> b!5785558 (= c!1024296 (isEmpty!35471 (tail!11314 (exprs!5681 (h!70016 zl!343)))))))

(assert (= (and d!1822860 res!2441396) b!5785555))

(assert (= (and d!1822860 c!1024298) b!5785553))

(assert (= (and d!1822860 (not c!1024298)) b!5785557))

(assert (= (and b!5785557 c!1024295) b!5785556))

(assert (= (and b!5785557 (not c!1024295)) b!5785554))

(assert (= (and d!1822860 res!2441395) b!5785550))

(assert (= (and b!5785550 c!1024297) b!5785551))

(assert (= (and b!5785550 (not c!1024297)) b!5785558))

(assert (= (and b!5785558 c!1024296) b!5785552))

(assert (= (and b!5785558 (not c!1024296)) b!5785549))

(declare-fun m!6730600 () Bool)

(assert (=> b!5785552 m!6730600))

(declare-fun m!6730602 () Bool)

(assert (=> b!5785551 m!6730602))

(declare-fun m!6730604 () Bool)

(assert (=> b!5785556 m!6730604))

(declare-fun m!6730606 () Bool)

(assert (=> b!5785550 m!6730606))

(declare-fun m!6730608 () Bool)

(assert (=> b!5785558 m!6730608))

(assert (=> b!5785558 m!6730608))

(declare-fun m!6730610 () Bool)

(assert (=> b!5785558 m!6730610))

(declare-fun m!6730612 () Bool)

(assert (=> b!5785549 m!6730612))

(declare-fun m!6730614 () Bool)

(assert (=> d!1822860 m!6730614))

(declare-fun m!6730616 () Bool)

(assert (=> d!1822860 m!6730616))

(declare-fun m!6730618 () Bool)

(assert (=> b!5785555 m!6730618))

(assert (=> b!5785095 d!1822860))

(declare-fun b!5785632 () Bool)

(declare-fun e!3553520 () (InoxSet Context!10362))

(assert (=> b!5785632 (= e!3553520 ((as const (Array Context!10362 Bool)) false))))

(declare-fun d!1822868 () Bool)

(declare-fun c!1024305 () Bool)

(declare-fun e!3553519 () Bool)

(assert (=> d!1822868 (= c!1024305 e!3553519)))

(declare-fun res!2441404 () Bool)

(assert (=> d!1822868 (=> (not res!2441404) (not e!3553519))))

(assert (=> d!1822868 (= res!2441404 ((_ is Cons!63567) (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))))

(declare-fun e!3553521 () (InoxSet Context!10362))

(assert (=> d!1822868 (= (derivationStepZipperUp!1061 (Context!10363 (Cons!63567 r!7292 Nil!63567)) (h!70014 s!2326)) e!3553521)))

(declare-fun b!5785633 () Bool)

(assert (=> b!5785633 (= e!3553521 e!3553520)))

(declare-fun c!1024306 () Bool)

(assert (=> b!5785633 (= c!1024306 ((_ is Cons!63567) (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))))

(declare-fun b!5785634 () Bool)

(declare-fun call!450406 () (InoxSet Context!10362))

(assert (=> b!5785634 (= e!3553521 ((_ map or) call!450406 (derivationStepZipperUp!1061 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (h!70014 s!2326))))))

(declare-fun b!5785635 () Bool)

(assert (=> b!5785635 (= e!3553520 call!450406)))

(declare-fun b!5785636 () Bool)

(assert (=> b!5785636 (= e!3553519 (nullable!5829 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))))

(declare-fun bm!450401 () Bool)

(assert (=> bm!450401 (= call!450406 (derivationStepZipperDown!1135 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))) (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (h!70014 s!2326)))))

(assert (= (and d!1822868 res!2441404) b!5785636))

(assert (= (and d!1822868 c!1024305) b!5785634))

(assert (= (and d!1822868 (not c!1024305)) b!5785633))

(assert (= (and b!5785633 c!1024306) b!5785635))

(assert (= (and b!5785633 (not c!1024306)) b!5785632))

(assert (= (or b!5785634 b!5785635) bm!450401))

(declare-fun m!6730632 () Bool)

(assert (=> b!5785634 m!6730632))

(declare-fun m!6730634 () Bool)

(assert (=> b!5785636 m!6730634))

(declare-fun m!6730636 () Bool)

(assert (=> bm!450401 m!6730636))

(assert (=> b!5785096 d!1822868))

(declare-fun bm!450414 () Bool)

(declare-fun call!450423 () List!63691)

(declare-fun call!450419 () List!63691)

(assert (=> bm!450414 (= call!450423 call!450419)))

(declare-fun b!5785659 () Bool)

(declare-fun e!3553539 () Bool)

(assert (=> b!5785659 (= e!3553539 (nullable!5829 (regOne!32106 r!7292)))))

(declare-fun b!5785660 () Bool)

(declare-fun e!3553536 () (InoxSet Context!10362))

(declare-fun call!450422 () (InoxSet Context!10362))

(declare-fun call!450421 () (InoxSet Context!10362))

(assert (=> b!5785660 (= e!3553536 ((_ map or) call!450422 call!450421))))

(declare-fun bm!450415 () Bool)

(declare-fun c!1024318 () Bool)

(declare-fun c!1024321 () Bool)

(declare-fun $colon$colon!1784 (List!63691 Regex!15797) List!63691)

(assert (=> bm!450415 (= call!450419 ($colon$colon!1784 (exprs!5681 (Context!10363 Nil!63567)) (ite (or c!1024318 c!1024321) (regTwo!32106 r!7292) r!7292)))))

(declare-fun b!5785661 () Bool)

(declare-fun e!3553538 () (InoxSet Context!10362))

(assert (=> b!5785661 (= e!3553538 ((as const (Array Context!10362 Bool)) false))))

(declare-fun b!5785662 () Bool)

(declare-fun e!3553537 () (InoxSet Context!10362))

(assert (=> b!5785662 (= e!3553536 e!3553537)))

(assert (=> b!5785662 (= c!1024321 ((_ is Concat!24642) r!7292))))

(declare-fun d!1822872 () Bool)

(declare-fun c!1024319 () Bool)

(assert (=> d!1822872 (= c!1024319 (and ((_ is ElementMatch!15797) r!7292) (= (c!1024165 r!7292) (h!70014 s!2326))))))

(declare-fun e!3553534 () (InoxSet Context!10362))

(assert (=> d!1822872 (= (derivationStepZipperDown!1135 r!7292 (Context!10363 Nil!63567) (h!70014 s!2326)) e!3553534)))

(declare-fun b!5785663 () Bool)

(declare-fun c!1024320 () Bool)

(assert (=> b!5785663 (= c!1024320 ((_ is Star!15797) r!7292))))

(assert (=> b!5785663 (= e!3553537 e!3553538)))

(declare-fun b!5785664 () Bool)

(assert (=> b!5785664 (= c!1024318 e!3553539)))

(declare-fun res!2441407 () Bool)

(assert (=> b!5785664 (=> (not res!2441407) (not e!3553539))))

(assert (=> b!5785664 (= res!2441407 ((_ is Concat!24642) r!7292))))

(declare-fun e!3553535 () (InoxSet Context!10362))

(assert (=> b!5785664 (= e!3553535 e!3553536)))

(declare-fun b!5785665 () Bool)

(declare-fun call!450420 () (InoxSet Context!10362))

(assert (=> b!5785665 (= e!3553535 ((_ map or) call!450422 call!450420))))

(declare-fun b!5785666 () Bool)

(assert (=> b!5785666 (= e!3553534 (store ((as const (Array Context!10362 Bool)) false) (Context!10363 Nil!63567) true))))

(declare-fun bm!450416 () Bool)

(declare-fun call!450424 () (InoxSet Context!10362))

(assert (=> bm!450416 (= call!450424 call!450421)))

(declare-fun c!1024317 () Bool)

(declare-fun bm!450417 () Bool)

(assert (=> bm!450417 (= call!450420 (derivationStepZipperDown!1135 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292)))) (ite (or c!1024317 c!1024318) (Context!10363 Nil!63567) (Context!10363 call!450423)) (h!70014 s!2326)))))

(declare-fun b!5785667 () Bool)

(assert (=> b!5785667 (= e!3553538 call!450424)))

(declare-fun bm!450418 () Bool)

(assert (=> bm!450418 (= call!450421 call!450420)))

(declare-fun b!5785668 () Bool)

(assert (=> b!5785668 (= e!3553537 call!450424)))

(declare-fun bm!450419 () Bool)

(assert (=> bm!450419 (= call!450422 (derivationStepZipperDown!1135 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292)) (ite c!1024317 (Context!10363 Nil!63567) (Context!10363 call!450419)) (h!70014 s!2326)))))

(declare-fun b!5785669 () Bool)

(assert (=> b!5785669 (= e!3553534 e!3553535)))

(assert (=> b!5785669 (= c!1024317 ((_ is Union!15797) r!7292))))

(assert (= (and d!1822872 c!1024319) b!5785666))

(assert (= (and d!1822872 (not c!1024319)) b!5785669))

(assert (= (and b!5785669 c!1024317) b!5785665))

(assert (= (and b!5785669 (not c!1024317)) b!5785664))

(assert (= (and b!5785664 res!2441407) b!5785659))

(assert (= (and b!5785664 c!1024318) b!5785660))

(assert (= (and b!5785664 (not c!1024318)) b!5785662))

(assert (= (and b!5785662 c!1024321) b!5785668))

(assert (= (and b!5785662 (not c!1024321)) b!5785663))

(assert (= (and b!5785663 c!1024320) b!5785667))

(assert (= (and b!5785663 (not c!1024320)) b!5785661))

(assert (= (or b!5785668 b!5785667) bm!450414))

(assert (= (or b!5785668 b!5785667) bm!450416))

(assert (= (or b!5785660 bm!450414) bm!450415))

(assert (= (or b!5785660 bm!450416) bm!450418))

(assert (= (or b!5785665 bm!450418) bm!450417))

(assert (= (or b!5785665 b!5785660) bm!450419))

(declare-fun m!6730638 () Bool)

(assert (=> b!5785659 m!6730638))

(declare-fun m!6730640 () Bool)

(assert (=> bm!450417 m!6730640))

(declare-fun m!6730642 () Bool)

(assert (=> b!5785666 m!6730642))

(declare-fun m!6730644 () Bool)

(assert (=> bm!450415 m!6730644))

(declare-fun m!6730646 () Bool)

(assert (=> bm!450419 m!6730646))

(assert (=> b!5785096 d!1822872))

(declare-fun bs!1365996 () Bool)

(declare-fun d!1822874 () Bool)

(assert (= bs!1365996 (and d!1822874 d!1822834)))

(declare-fun lambda!315351 () Int)

(assert (=> bs!1365996 (= lambda!315351 lambda!315325)))

(declare-fun bs!1365997 () Bool)

(assert (= bs!1365997 (and d!1822874 d!1822846)))

(assert (=> bs!1365997 (= lambda!315351 lambda!315340)))

(declare-fun bs!1365998 () Bool)

(assert (= bs!1365998 (and d!1822874 d!1822858)))

(assert (=> bs!1365998 (= lambda!315351 lambda!315343)))

(declare-fun bs!1365999 () Bool)

(assert (= bs!1365999 (and d!1822874 d!1822860)))

(assert (=> bs!1365999 (= lambda!315351 lambda!315349)))

(assert (=> d!1822874 (= (inv!82739 (h!70016 zl!343)) (forall!14911 (exprs!5681 (h!70016 zl!343)) lambda!315351))))

(declare-fun bs!1366000 () Bool)

(assert (= bs!1366000 d!1822874))

(declare-fun m!6730648 () Bool)

(assert (=> bs!1366000 m!6730648))

(assert (=> b!5785094 d!1822874))

(declare-fun d!1822876 () Bool)

(declare-fun isEmpty!35472 (Option!15806) Bool)

(assert (=> d!1822876 (= (isDefined!12509 (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 Nil!63566 s!2326 s!2326)) (not (isEmpty!35472 (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 Nil!63566 s!2326 s!2326))))))

(declare-fun bs!1366001 () Bool)

(assert (= bs!1366001 d!1822876))

(assert (=> bs!1366001 m!6730374))

(declare-fun m!6730650 () Bool)

(assert (=> bs!1366001 m!6730650))

(assert (=> b!5785085 d!1822876))

(declare-fun bs!1366002 () Bool)

(declare-fun d!1822878 () Bool)

(assert (= bs!1366002 (and d!1822878 b!5785085)))

(declare-fun lambda!315356 () Int)

(assert (=> bs!1366002 (not (= lambda!315356 lambda!315297))))

(assert (=> bs!1366002 (not (= lambda!315356 lambda!315298))))

(assert (=> bs!1366002 (= (= (Star!15797 (reg!16126 r!7292)) r!7292) (= lambda!315356 lambda!315296))))

(declare-fun bs!1366003 () Bool)

(assert (= bs!1366003 (and d!1822878 b!5785184)))

(assert (=> bs!1366003 (not (= lambda!315356 lambda!315309))))

(declare-fun bs!1366004 () Bool)

(assert (= bs!1366004 (and d!1822878 b!5785188)))

(assert (=> bs!1366004 (not (= lambda!315356 lambda!315310))))

(assert (=> d!1822878 true))

(assert (=> d!1822878 true))

(declare-fun lambda!315357 () Int)

(assert (=> bs!1366002 (= (= (Star!15797 (reg!16126 r!7292)) r!7292) (= lambda!315357 lambda!315297))))

(assert (=> bs!1366002 (not (= lambda!315357 lambda!315298))))

(assert (=> bs!1366002 (not (= lambda!315357 lambda!315296))))

(assert (=> bs!1366003 (= (= (Star!15797 (reg!16126 r!7292)) r!7292) (= lambda!315357 lambda!315309))))

(declare-fun bs!1366005 () Bool)

(assert (= bs!1366005 d!1822878))

(assert (=> bs!1366005 (not (= lambda!315357 lambda!315356))))

(assert (=> bs!1366004 (not (= lambda!315357 lambda!315310))))

(assert (=> d!1822878 true))

(assert (=> d!1822878 true))

(assert (=> d!1822878 (= (Exists!2897 lambda!315356) (Exists!2897 lambda!315357))))

(declare-fun lt!2296473 () Unit!156854)

(declare-fun choose!43926 (Regex!15797 List!63690) Unit!156854)

(assert (=> d!1822878 (= lt!2296473 (choose!43926 (reg!16126 r!7292) s!2326))))

(assert (=> d!1822878 (validRegex!7533 (reg!16126 r!7292))))

(assert (=> d!1822878 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!578 (reg!16126 r!7292) s!2326) lt!2296473)))

(declare-fun m!6730652 () Bool)

(assert (=> bs!1366005 m!6730652))

(declare-fun m!6730654 () Bool)

(assert (=> bs!1366005 m!6730654))

(declare-fun m!6730656 () Bool)

(assert (=> bs!1366005 m!6730656))

(declare-fun m!6730658 () Bool)

(assert (=> bs!1366005 m!6730658))

(assert (=> b!5785085 d!1822878))

(declare-fun d!1822880 () Bool)

(declare-fun choose!43927 (Int) Bool)

(assert (=> d!1822880 (= (Exists!2897 lambda!315298) (choose!43927 lambda!315298))))

(declare-fun bs!1366006 () Bool)

(assert (= bs!1366006 d!1822880))

(declare-fun m!6730660 () Bool)

(assert (=> bs!1366006 m!6730660))

(assert (=> b!5785085 d!1822880))

(declare-fun d!1822882 () Bool)

(assert (=> d!1822882 (= (isEmpty!35467 s!2326) ((_ is Nil!63566) s!2326))))

(assert (=> b!5785085 d!1822882))

(declare-fun d!1822884 () Bool)

(assert (=> d!1822884 (= (Exists!2897 lambda!315296) (choose!43927 lambda!315296))))

(declare-fun bs!1366007 () Bool)

(assert (= bs!1366007 d!1822884))

(declare-fun m!6730662 () Bool)

(assert (=> bs!1366007 m!6730662))

(assert (=> b!5785085 d!1822884))

(declare-fun bs!1366008 () Bool)

(declare-fun d!1822886 () Bool)

(assert (= bs!1366008 (and d!1822886 d!1822878)))

(declare-fun lambda!315362 () Int)

(assert (=> bs!1366008 (not (= lambda!315362 lambda!315357))))

(declare-fun bs!1366009 () Bool)

(assert (= bs!1366009 (and d!1822886 b!5785085)))

(assert (=> bs!1366009 (not (= lambda!315362 lambda!315297))))

(assert (=> bs!1366009 (not (= lambda!315362 lambda!315298))))

(assert (=> bs!1366009 (= lambda!315362 lambda!315296)))

(declare-fun bs!1366010 () Bool)

(assert (= bs!1366010 (and d!1822886 b!5785184)))

(assert (=> bs!1366010 (not (= lambda!315362 lambda!315309))))

(assert (=> bs!1366008 (= (= r!7292 (Star!15797 (reg!16126 r!7292))) (= lambda!315362 lambda!315356))))

(declare-fun bs!1366011 () Bool)

(assert (= bs!1366011 (and d!1822886 b!5785188)))

(assert (=> bs!1366011 (not (= lambda!315362 lambda!315310))))

(assert (=> d!1822886 true))

(assert (=> d!1822886 true))

(assert (=> d!1822886 true))

(declare-fun lambda!315363 () Int)

(assert (=> bs!1366008 (not (= lambda!315363 lambda!315357))))

(assert (=> bs!1366009 (not (= lambda!315363 lambda!315297))))

(assert (=> bs!1366009 (= lambda!315363 lambda!315298)))

(assert (=> bs!1366009 (not (= lambda!315363 lambda!315296))))

(assert (=> bs!1366010 (not (= lambda!315363 lambda!315309))))

(assert (=> bs!1366008 (not (= lambda!315363 lambda!315356))))

(declare-fun bs!1366012 () Bool)

(assert (= bs!1366012 d!1822886))

(assert (=> bs!1366012 (not (= lambda!315363 lambda!315362))))

(assert (=> bs!1366011 (= (and (= (reg!16126 r!7292) (regOne!32106 r!7292)) (= r!7292 (regTwo!32106 r!7292))) (= lambda!315363 lambda!315310))))

(assert (=> d!1822886 true))

(assert (=> d!1822886 true))

(assert (=> d!1822886 true))

(assert (=> d!1822886 (= (Exists!2897 lambda!315362) (Exists!2897 lambda!315363))))

(declare-fun lt!2296476 () Unit!156854)

(declare-fun choose!43928 (Regex!15797 Regex!15797 List!63690) Unit!156854)

(assert (=> d!1822886 (= lt!2296476 (choose!43928 (reg!16126 r!7292) r!7292 s!2326))))

(assert (=> d!1822886 (validRegex!7533 (reg!16126 r!7292))))

(assert (=> d!1822886 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1526 (reg!16126 r!7292) r!7292 s!2326) lt!2296476)))

(declare-fun m!6730664 () Bool)

(assert (=> bs!1366012 m!6730664))

(declare-fun m!6730666 () Bool)

(assert (=> bs!1366012 m!6730666))

(declare-fun m!6730668 () Bool)

(assert (=> bs!1366012 m!6730668))

(assert (=> bs!1366012 m!6730658))

(assert (=> b!5785085 d!1822886))

(declare-fun d!1822888 () Bool)

(assert (=> d!1822888 (= (Exists!2897 lambda!315297) (choose!43927 lambda!315297))))

(declare-fun bs!1366013 () Bool)

(assert (= bs!1366013 d!1822888))

(declare-fun m!6730670 () Bool)

(assert (=> bs!1366013 m!6730670))

(assert (=> b!5785085 d!1822888))

(declare-fun d!1822890 () Bool)

(declare-fun e!3553559 () Bool)

(assert (=> d!1822890 e!3553559))

(declare-fun res!2441437 () Bool)

(assert (=> d!1822890 (=> res!2441437 e!3553559)))

(declare-fun e!3553560 () Bool)

(assert (=> d!1822890 (= res!2441437 e!3553560)))

(declare-fun res!2441438 () Bool)

(assert (=> d!1822890 (=> (not res!2441438) (not e!3553560))))

(declare-fun lt!2296483 () Option!15806)

(assert (=> d!1822890 (= res!2441438 (isDefined!12509 lt!2296483))))

(declare-fun e!3553561 () Option!15806)

(assert (=> d!1822890 (= lt!2296483 e!3553561)))

(declare-fun c!1024326 () Bool)

(declare-fun e!3553562 () Bool)

(assert (=> d!1822890 (= c!1024326 e!3553562)))

(declare-fun res!2441440 () Bool)

(assert (=> d!1822890 (=> (not res!2441440) (not e!3553562))))

(assert (=> d!1822890 (= res!2441440 (matchR!7982 (reg!16126 r!7292) Nil!63566))))

(assert (=> d!1822890 (validRegex!7533 (reg!16126 r!7292))))

(assert (=> d!1822890 (= (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 Nil!63566 s!2326 s!2326) lt!2296483)))

(declare-fun b!5785706 () Bool)

(declare-fun ++!14015 (List!63690 List!63690) List!63690)

(declare-fun get!21939 (Option!15806) tuple2!65788)

(assert (=> b!5785706 (= e!3553560 (= (++!14015 (_1!36197 (get!21939 lt!2296483)) (_2!36197 (get!21939 lt!2296483))) s!2326))))

(declare-fun b!5785707 () Bool)

(declare-fun res!2441436 () Bool)

(assert (=> b!5785707 (=> (not res!2441436) (not e!3553560))))

(assert (=> b!5785707 (= res!2441436 (matchR!7982 (reg!16126 r!7292) (_1!36197 (get!21939 lt!2296483))))))

(declare-fun b!5785708 () Bool)

(assert (=> b!5785708 (= e!3553561 (Some!15805 (tuple2!65789 Nil!63566 s!2326)))))

(declare-fun b!5785709 () Bool)

(declare-fun e!3553558 () Option!15806)

(assert (=> b!5785709 (= e!3553561 e!3553558)))

(declare-fun c!1024327 () Bool)

(assert (=> b!5785709 (= c!1024327 ((_ is Nil!63566) s!2326))))

(declare-fun b!5785710 () Bool)

(declare-fun lt!2296485 () Unit!156854)

(declare-fun lt!2296484 () Unit!156854)

(assert (=> b!5785710 (= lt!2296485 lt!2296484)))

(assert (=> b!5785710 (= (++!14015 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (t!377029 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2122 (List!63690 C!31864 List!63690 List!63690) Unit!156854)

(assert (=> b!5785710 (= lt!2296484 (lemmaMoveElementToOtherListKeepsConcatEq!2122 Nil!63566 (h!70014 s!2326) (t!377029 s!2326) s!2326))))

(assert (=> b!5785710 (= e!3553558 (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (t!377029 s!2326) s!2326))))

(declare-fun b!5785711 () Bool)

(assert (=> b!5785711 (= e!3553559 (not (isDefined!12509 lt!2296483)))))

(declare-fun b!5785712 () Bool)

(declare-fun res!2441439 () Bool)

(assert (=> b!5785712 (=> (not res!2441439) (not e!3553560))))

(assert (=> b!5785712 (= res!2441439 (matchR!7982 r!7292 (_2!36197 (get!21939 lt!2296483))))))

(declare-fun b!5785713 () Bool)

(assert (=> b!5785713 (= e!3553562 (matchR!7982 r!7292 s!2326))))

(declare-fun b!5785714 () Bool)

(assert (=> b!5785714 (= e!3553558 None!15805)))

(assert (= (and d!1822890 res!2441440) b!5785713))

(assert (= (and d!1822890 c!1024326) b!5785708))

(assert (= (and d!1822890 (not c!1024326)) b!5785709))

(assert (= (and b!5785709 c!1024327) b!5785714))

(assert (= (and b!5785709 (not c!1024327)) b!5785710))

(assert (= (and d!1822890 res!2441438) b!5785707))

(assert (= (and b!5785707 res!2441436) b!5785712))

(assert (= (and b!5785712 res!2441439) b!5785706))

(assert (= (and d!1822890 (not res!2441437)) b!5785711))

(declare-fun m!6730672 () Bool)

(assert (=> d!1822890 m!6730672))

(declare-fun m!6730674 () Bool)

(assert (=> d!1822890 m!6730674))

(assert (=> d!1822890 m!6730658))

(declare-fun m!6730676 () Bool)

(assert (=> b!5785707 m!6730676))

(declare-fun m!6730678 () Bool)

(assert (=> b!5785707 m!6730678))

(assert (=> b!5785712 m!6730676))

(declare-fun m!6730680 () Bool)

(assert (=> b!5785712 m!6730680))

(declare-fun m!6730682 () Bool)

(assert (=> b!5785710 m!6730682))

(assert (=> b!5785710 m!6730682))

(declare-fun m!6730684 () Bool)

(assert (=> b!5785710 m!6730684))

(declare-fun m!6730686 () Bool)

(assert (=> b!5785710 m!6730686))

(assert (=> b!5785710 m!6730682))

(declare-fun m!6730688 () Bool)

(assert (=> b!5785710 m!6730688))

(assert (=> b!5785706 m!6730676))

(declare-fun m!6730690 () Bool)

(assert (=> b!5785706 m!6730690))

(assert (=> b!5785713 m!6730388))

(assert (=> b!5785711 m!6730672))

(assert (=> b!5785085 d!1822890))

(declare-fun bs!1366014 () Bool)

(declare-fun d!1822892 () Bool)

(assert (= bs!1366014 (and d!1822892 d!1822878)))

(declare-fun lambda!315366 () Int)

(assert (=> bs!1366014 (not (= lambda!315366 lambda!315357))))

(declare-fun bs!1366015 () Bool)

(assert (= bs!1366015 (and d!1822892 b!5785085)))

(assert (=> bs!1366015 (not (= lambda!315366 lambda!315297))))

(assert (=> bs!1366015 (not (= lambda!315366 lambda!315298))))

(declare-fun bs!1366016 () Bool)

(assert (= bs!1366016 (and d!1822892 d!1822886)))

(assert (=> bs!1366016 (not (= lambda!315366 lambda!315363))))

(assert (=> bs!1366015 (= lambda!315366 lambda!315296)))

(declare-fun bs!1366017 () Bool)

(assert (= bs!1366017 (and d!1822892 b!5785184)))

(assert (=> bs!1366017 (not (= lambda!315366 lambda!315309))))

(assert (=> bs!1366014 (= (= r!7292 (Star!15797 (reg!16126 r!7292))) (= lambda!315366 lambda!315356))))

(assert (=> bs!1366016 (= lambda!315366 lambda!315362)))

(declare-fun bs!1366018 () Bool)

(assert (= bs!1366018 (and d!1822892 b!5785188)))

(assert (=> bs!1366018 (not (= lambda!315366 lambda!315310))))

(assert (=> d!1822892 true))

(assert (=> d!1822892 true))

(assert (=> d!1822892 true))

(assert (=> d!1822892 (= (isDefined!12509 (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 Nil!63566 s!2326 s!2326)) (Exists!2897 lambda!315366))))

(declare-fun lt!2296488 () Unit!156854)

(declare-fun choose!43929 (Regex!15797 Regex!15797 List!63690) Unit!156854)

(assert (=> d!1822892 (= lt!2296488 (choose!43929 (reg!16126 r!7292) r!7292 s!2326))))

(assert (=> d!1822892 (validRegex!7533 (reg!16126 r!7292))))

(assert (=> d!1822892 (= (lemmaFindConcatSeparationEquivalentToExists!1984 (reg!16126 r!7292) r!7292 s!2326) lt!2296488)))

(declare-fun bs!1366019 () Bool)

(assert (= bs!1366019 d!1822892))

(declare-fun m!6730692 () Bool)

(assert (=> bs!1366019 m!6730692))

(assert (=> bs!1366019 m!6730658))

(assert (=> bs!1366019 m!6730374))

(assert (=> bs!1366019 m!6730376))

(assert (=> bs!1366019 m!6730374))

(declare-fun m!6730694 () Bool)

(assert (=> bs!1366019 m!6730694))

(assert (=> b!5785085 d!1822892))

(declare-fun b!5785730 () Bool)

(declare-fun e!3553567 () Bool)

(declare-fun tp!1596084 () Bool)

(declare-fun tp!1596085 () Bool)

(assert (=> b!5785730 (= e!3553567 (and tp!1596084 tp!1596085))))

(assert (=> b!5785087 (= tp!1596009 e!3553567)))

(declare-fun b!5785732 () Bool)

(declare-fun tp!1596082 () Bool)

(declare-fun tp!1596083 () Bool)

(assert (=> b!5785732 (= e!3553567 (and tp!1596082 tp!1596083))))

(declare-fun b!5785729 () Bool)

(assert (=> b!5785729 (= e!3553567 tp_is_empty!40847)))

(declare-fun b!5785731 () Bool)

(declare-fun tp!1596081 () Bool)

(assert (=> b!5785731 (= e!3553567 tp!1596081)))

(assert (= (and b!5785087 ((_ is ElementMatch!15797) (regOne!32107 r!7292))) b!5785729))

(assert (= (and b!5785087 ((_ is Concat!24642) (regOne!32107 r!7292))) b!5785730))

(assert (= (and b!5785087 ((_ is Star!15797) (regOne!32107 r!7292))) b!5785731))

(assert (= (and b!5785087 ((_ is Union!15797) (regOne!32107 r!7292))) b!5785732))

(declare-fun b!5785734 () Bool)

(declare-fun e!3553568 () Bool)

(declare-fun tp!1596089 () Bool)

(declare-fun tp!1596090 () Bool)

(assert (=> b!5785734 (= e!3553568 (and tp!1596089 tp!1596090))))

(assert (=> b!5785087 (= tp!1596011 e!3553568)))

(declare-fun b!5785736 () Bool)

(declare-fun tp!1596087 () Bool)

(declare-fun tp!1596088 () Bool)

(assert (=> b!5785736 (= e!3553568 (and tp!1596087 tp!1596088))))

(declare-fun b!5785733 () Bool)

(assert (=> b!5785733 (= e!3553568 tp_is_empty!40847)))

(declare-fun b!5785735 () Bool)

(declare-fun tp!1596086 () Bool)

(assert (=> b!5785735 (= e!3553568 tp!1596086)))

(assert (= (and b!5785087 ((_ is ElementMatch!15797) (regTwo!32107 r!7292))) b!5785733))

(assert (= (and b!5785087 ((_ is Concat!24642) (regTwo!32107 r!7292))) b!5785734))

(assert (= (and b!5785087 ((_ is Star!15797) (regTwo!32107 r!7292))) b!5785735))

(assert (= (and b!5785087 ((_ is Union!15797) (regTwo!32107 r!7292))) b!5785736))

(declare-fun condSetEmpty!38872 () Bool)

(assert (=> setNonEmpty!38866 (= condSetEmpty!38872 (= setRest!38866 ((as const (Array Context!10362 Bool)) false)))))

(declare-fun setRes!38872 () Bool)

(assert (=> setNonEmpty!38866 (= tp!1596012 setRes!38872)))

(declare-fun setIsEmpty!38872 () Bool)

(assert (=> setIsEmpty!38872 setRes!38872))

(declare-fun setNonEmpty!38872 () Bool)

(declare-fun e!3553571 () Bool)

(declare-fun setElem!38872 () Context!10362)

(declare-fun tp!1596096 () Bool)

(assert (=> setNonEmpty!38872 (= setRes!38872 (and tp!1596096 (inv!82739 setElem!38872) e!3553571))))

(declare-fun setRest!38872 () (InoxSet Context!10362))

(assert (=> setNonEmpty!38872 (= setRest!38866 ((_ map or) (store ((as const (Array Context!10362 Bool)) false) setElem!38872 true) setRest!38872))))

(declare-fun b!5785741 () Bool)

(declare-fun tp!1596095 () Bool)

(assert (=> b!5785741 (= e!3553571 tp!1596095)))

(assert (= (and setNonEmpty!38866 condSetEmpty!38872) setIsEmpty!38872))

(assert (= (and setNonEmpty!38866 (not condSetEmpty!38872)) setNonEmpty!38872))

(assert (= setNonEmpty!38872 b!5785741))

(declare-fun m!6730696 () Bool)

(assert (=> setNonEmpty!38872 m!6730696))

(declare-fun b!5785746 () Bool)

(declare-fun e!3553574 () Bool)

(declare-fun tp!1596099 () Bool)

(assert (=> b!5785746 (= e!3553574 (and tp_is_empty!40847 tp!1596099))))

(assert (=> b!5785086 (= tp!1596006 e!3553574)))

(assert (= (and b!5785086 ((_ is Cons!63566) (t!377029 s!2326))) b!5785746))

(declare-fun b!5785751 () Bool)

(declare-fun e!3553577 () Bool)

(declare-fun tp!1596104 () Bool)

(declare-fun tp!1596105 () Bool)

(assert (=> b!5785751 (= e!3553577 (and tp!1596104 tp!1596105))))

(assert (=> b!5785101 (= tp!1596003 e!3553577)))

(assert (= (and b!5785101 ((_ is Cons!63567) (exprs!5681 (h!70016 zl!343)))) b!5785751))

(declare-fun b!5785753 () Bool)

(declare-fun e!3553578 () Bool)

(declare-fun tp!1596109 () Bool)

(declare-fun tp!1596110 () Bool)

(assert (=> b!5785753 (= e!3553578 (and tp!1596109 tp!1596110))))

(assert (=> b!5785099 (= tp!1596008 e!3553578)))

(declare-fun b!5785755 () Bool)

(declare-fun tp!1596107 () Bool)

(declare-fun tp!1596108 () Bool)

(assert (=> b!5785755 (= e!3553578 (and tp!1596107 tp!1596108))))

(declare-fun b!5785752 () Bool)

(assert (=> b!5785752 (= e!3553578 tp_is_empty!40847)))

(declare-fun b!5785754 () Bool)

(declare-fun tp!1596106 () Bool)

(assert (=> b!5785754 (= e!3553578 tp!1596106)))

(assert (= (and b!5785099 ((_ is ElementMatch!15797) (regOne!32106 r!7292))) b!5785752))

(assert (= (and b!5785099 ((_ is Concat!24642) (regOne!32106 r!7292))) b!5785753))

(assert (= (and b!5785099 ((_ is Star!15797) (regOne!32106 r!7292))) b!5785754))

(assert (= (and b!5785099 ((_ is Union!15797) (regOne!32106 r!7292))) b!5785755))

(declare-fun b!5785757 () Bool)

(declare-fun e!3553579 () Bool)

(declare-fun tp!1596114 () Bool)

(declare-fun tp!1596115 () Bool)

(assert (=> b!5785757 (= e!3553579 (and tp!1596114 tp!1596115))))

(assert (=> b!5785099 (= tp!1596004 e!3553579)))

(declare-fun b!5785759 () Bool)

(declare-fun tp!1596112 () Bool)

(declare-fun tp!1596113 () Bool)

(assert (=> b!5785759 (= e!3553579 (and tp!1596112 tp!1596113))))

(declare-fun b!5785756 () Bool)

(assert (=> b!5785756 (= e!3553579 tp_is_empty!40847)))

(declare-fun b!5785758 () Bool)

(declare-fun tp!1596111 () Bool)

(assert (=> b!5785758 (= e!3553579 tp!1596111)))

(assert (= (and b!5785099 ((_ is ElementMatch!15797) (regTwo!32106 r!7292))) b!5785756))

(assert (= (and b!5785099 ((_ is Concat!24642) (regTwo!32106 r!7292))) b!5785757))

(assert (= (and b!5785099 ((_ is Star!15797) (regTwo!32106 r!7292))) b!5785758))

(assert (= (and b!5785099 ((_ is Union!15797) (regTwo!32106 r!7292))) b!5785759))

(declare-fun b!5785767 () Bool)

(declare-fun e!3553585 () Bool)

(declare-fun tp!1596120 () Bool)

(assert (=> b!5785767 (= e!3553585 tp!1596120)))

(declare-fun e!3553584 () Bool)

(declare-fun tp!1596121 () Bool)

(declare-fun b!5785766 () Bool)

(assert (=> b!5785766 (= e!3553584 (and (inv!82739 (h!70016 (t!377031 zl!343))) e!3553585 tp!1596121))))

(assert (=> b!5785094 (= tp!1596010 e!3553584)))

(assert (= b!5785766 b!5785767))

(assert (= (and b!5785094 ((_ is Cons!63568) (t!377031 zl!343))) b!5785766))

(declare-fun m!6730698 () Bool)

(assert (=> b!5785766 m!6730698))

(declare-fun b!5785768 () Bool)

(declare-fun e!3553586 () Bool)

(declare-fun tp!1596122 () Bool)

(declare-fun tp!1596123 () Bool)

(assert (=> b!5785768 (= e!3553586 (and tp!1596122 tp!1596123))))

(assert (=> b!5785090 (= tp!1596005 e!3553586)))

(assert (= (and b!5785090 ((_ is Cons!63567) (exprs!5681 setElem!38866))) b!5785768))

(declare-fun b!5785770 () Bool)

(declare-fun e!3553587 () Bool)

(declare-fun tp!1596127 () Bool)

(declare-fun tp!1596128 () Bool)

(assert (=> b!5785770 (= e!3553587 (and tp!1596127 tp!1596128))))

(assert (=> b!5785100 (= tp!1596007 e!3553587)))

(declare-fun b!5785772 () Bool)

(declare-fun tp!1596125 () Bool)

(declare-fun tp!1596126 () Bool)

(assert (=> b!5785772 (= e!3553587 (and tp!1596125 tp!1596126))))

(declare-fun b!5785769 () Bool)

(assert (=> b!5785769 (= e!3553587 tp_is_empty!40847)))

(declare-fun b!5785771 () Bool)

(declare-fun tp!1596124 () Bool)

(assert (=> b!5785771 (= e!3553587 tp!1596124)))

(assert (= (and b!5785100 ((_ is ElementMatch!15797) (reg!16126 r!7292))) b!5785769))

(assert (= (and b!5785100 ((_ is Concat!24642) (reg!16126 r!7292))) b!5785770))

(assert (= (and b!5785100 ((_ is Star!15797) (reg!16126 r!7292))) b!5785771))

(assert (= (and b!5785100 ((_ is Union!15797) (reg!16126 r!7292))) b!5785772))

(check-sat (not d!1822874) (not b!5785751) (not d!1822834) (not d!1822890) (not b!5785319) (not bm!450389) (not b!5785770) (not d!1822888) (not b!5785187) (not bm!450401) (not b!5785759) (not b!5785730) (not b!5785711) (not b!5785324) (not b!5785754) (not b!5785735) (not b!5785314) (not d!1822826) (not b!5785707) (not d!1822860) (not b!5785713) (not b!5785471) (not b!5785551) (not b!5785731) (not b!5785325) (not d!1822880) (not d!1822892) (not b!5785555) (not b!5785323) (not b!5785550) (not b!5785734) (not setNonEmpty!38872) (not b!5785758) (not b!5785472) (not b!5785710) (not bm!450353) (not d!1822878) (not bm!450352) (not b!5785767) (not b!5785473) (not d!1822858) (not b!5785768) (not b!5785706) (not bm!450380) tp_is_empty!40847 (not b!5785772) (not bm!450415) (not b!5785741) (not d!1822822) (not d!1822876) (not d!1822832) (not b!5785185) (not d!1822884) (not d!1822886) (not b!5785496) (not b!5785467) (not b!5785771) (not b!5785757) (not b!5785320) (not bm!450419) (not b!5785753) (not b!5785427) (not bm!450388) (not b!5785464) (not b!5785755) (not b!5785766) (not b!5785712) (not b!5785732) (not b!5785659) (not b!5785634) (not b!5785636) (not b!5785549) (not bm!450417) (not b!5785469) (not d!1822846) (not b!5785465) (not b!5785736) (not b!5785558) (not b!5785552) (not b!5785556) (not b!5785746) (not d!1822810) (not b!5785365))
(check-sat)
(get-model)

(declare-fun d!1822902 () Bool)

(assert (=> d!1822902 (= (isEmpty!35467 (tail!11313 s!2326)) ((_ is Nil!63566) (tail!11313 s!2326)))))

(assert (=> b!5785314 d!1822902))

(declare-fun d!1822904 () Bool)

(assert (=> d!1822904 (= (tail!11313 s!2326) (t!377029 s!2326))))

(assert (=> b!5785314 d!1822904))

(declare-fun b!5785797 () Bool)

(declare-fun res!2441461 () Bool)

(declare-fun e!3553613 () Bool)

(assert (=> b!5785797 (=> (not res!2441461) (not e!3553613))))

(declare-fun call!450432 () Bool)

(assert (=> b!5785797 (= res!2441461 call!450432)))

(declare-fun e!3553610 () Bool)

(assert (=> b!5785797 (= e!3553610 e!3553613)))

(declare-fun bm!450426 () Bool)

(declare-fun call!450431 () Bool)

(declare-fun call!450433 () Bool)

(assert (=> bm!450426 (= call!450431 call!450433)))

(declare-fun b!5785798 () Bool)

(declare-fun e!3553609 () Bool)

(declare-fun e!3553612 () Bool)

(assert (=> b!5785798 (= e!3553609 e!3553612)))

(declare-fun res!2441463 () Bool)

(assert (=> b!5785798 (=> (not res!2441463) (not e!3553612))))

(assert (=> b!5785798 (= res!2441463 call!450432)))

(declare-fun b!5785799 () Bool)

(declare-fun e!3553608 () Bool)

(declare-fun e!3553614 () Bool)

(assert (=> b!5785799 (= e!3553608 e!3553614)))

(declare-fun res!2441465 () Bool)

(assert (=> b!5785799 (= res!2441465 (not (nullable!5829 (reg!16126 lt!2296470))))))

(assert (=> b!5785799 (=> (not res!2441465) (not e!3553614))))

(declare-fun b!5785800 () Bool)

(declare-fun e!3553611 () Bool)

(assert (=> b!5785800 (= e!3553611 e!3553608)))

(declare-fun c!1024333 () Bool)

(assert (=> b!5785800 (= c!1024333 ((_ is Star!15797) lt!2296470))))

(declare-fun bm!450427 () Bool)

(declare-fun c!1024332 () Bool)

(assert (=> bm!450427 (= call!450432 (validRegex!7533 (ite c!1024332 (regOne!32107 lt!2296470) (regOne!32106 lt!2296470))))))

(declare-fun b!5785801 () Bool)

(assert (=> b!5785801 (= e!3553612 call!450431)))

(declare-fun b!5785802 () Bool)

(declare-fun res!2441462 () Bool)

(assert (=> b!5785802 (=> res!2441462 e!3553609)))

(assert (=> b!5785802 (= res!2441462 (not ((_ is Concat!24642) lt!2296470)))))

(assert (=> b!5785802 (= e!3553610 e!3553609)))

(declare-fun d!1822906 () Bool)

(declare-fun res!2441464 () Bool)

(assert (=> d!1822906 (=> res!2441464 e!3553611)))

(assert (=> d!1822906 (= res!2441464 ((_ is ElementMatch!15797) lt!2296470))))

(assert (=> d!1822906 (= (validRegex!7533 lt!2296470) e!3553611)))

(declare-fun b!5785803 () Bool)

(assert (=> b!5785803 (= e!3553608 e!3553610)))

(assert (=> b!5785803 (= c!1024332 ((_ is Union!15797) lt!2296470))))

(declare-fun bm!450428 () Bool)

(assert (=> bm!450428 (= call!450433 (validRegex!7533 (ite c!1024333 (reg!16126 lt!2296470) (ite c!1024332 (regTwo!32107 lt!2296470) (regTwo!32106 lt!2296470)))))))

(declare-fun b!5785804 () Bool)

(assert (=> b!5785804 (= e!3553614 call!450433)))

(declare-fun b!5785805 () Bool)

(assert (=> b!5785805 (= e!3553613 call!450431)))

(assert (= (and d!1822906 (not res!2441464)) b!5785800))

(assert (= (and b!5785800 c!1024333) b!5785799))

(assert (= (and b!5785800 (not c!1024333)) b!5785803))

(assert (= (and b!5785799 res!2441465) b!5785804))

(assert (= (and b!5785803 c!1024332) b!5785797))

(assert (= (and b!5785803 (not c!1024332)) b!5785802))

(assert (= (and b!5785797 res!2441461) b!5785805))

(assert (= (and b!5785802 (not res!2441462)) b!5785798))

(assert (= (and b!5785798 res!2441463) b!5785801))

(assert (= (or b!5785805 b!5785801) bm!450426))

(assert (= (or b!5785797 b!5785798) bm!450427))

(assert (= (or b!5785804 bm!450426) bm!450428))

(declare-fun m!6730718 () Bool)

(assert (=> b!5785799 m!6730718))

(declare-fun m!6730720 () Bool)

(assert (=> bm!450427 m!6730720))

(declare-fun m!6730722 () Bool)

(assert (=> bm!450428 m!6730722))

(assert (=> d!1822860 d!1822906))

(declare-fun d!1822910 () Bool)

(declare-fun res!2441470 () Bool)

(declare-fun e!3553619 () Bool)

(assert (=> d!1822910 (=> res!2441470 e!3553619)))

(assert (=> d!1822910 (= res!2441470 ((_ is Nil!63567) (exprs!5681 (h!70016 zl!343))))))

(assert (=> d!1822910 (= (forall!14911 (exprs!5681 (h!70016 zl!343)) lambda!315349) e!3553619)))

(declare-fun b!5785810 () Bool)

(declare-fun e!3553620 () Bool)

(assert (=> b!5785810 (= e!3553619 e!3553620)))

(declare-fun res!2441471 () Bool)

(assert (=> b!5785810 (=> (not res!2441471) (not e!3553620))))

(declare-fun dynLambda!24885 (Int Regex!15797) Bool)

(assert (=> b!5785810 (= res!2441471 (dynLambda!24885 lambda!315349 (h!70015 (exprs!5681 (h!70016 zl!343)))))))

(declare-fun b!5785811 () Bool)

(assert (=> b!5785811 (= e!3553620 (forall!14911 (t!377030 (exprs!5681 (h!70016 zl!343))) lambda!315349))))

(assert (= (and d!1822910 (not res!2441470)) b!5785810))

(assert (= (and b!5785810 res!2441471) b!5785811))

(declare-fun b_lambda!218127 () Bool)

(assert (=> (not b_lambda!218127) (not b!5785810)))

(declare-fun m!6730724 () Bool)

(assert (=> b!5785810 m!6730724))

(declare-fun m!6730726 () Bool)

(assert (=> b!5785811 m!6730726))

(assert (=> d!1822860 d!1822910))

(declare-fun d!1822912 () Bool)

(declare-fun res!2441472 () Bool)

(declare-fun e!3553621 () Bool)

(assert (=> d!1822912 (=> res!2441472 e!3553621)))

(assert (=> d!1822912 (= res!2441472 ((_ is Nil!63567) lt!2296461))))

(assert (=> d!1822912 (= (forall!14911 lt!2296461 lambda!315343) e!3553621)))

(declare-fun b!5785812 () Bool)

(declare-fun e!3553622 () Bool)

(assert (=> b!5785812 (= e!3553621 e!3553622)))

(declare-fun res!2441473 () Bool)

(assert (=> b!5785812 (=> (not res!2441473) (not e!3553622))))

(assert (=> b!5785812 (= res!2441473 (dynLambda!24885 lambda!315343 (h!70015 lt!2296461)))))

(declare-fun b!5785813 () Bool)

(assert (=> b!5785813 (= e!3553622 (forall!14911 (t!377030 lt!2296461) lambda!315343))))

(assert (= (and d!1822912 (not res!2441472)) b!5785812))

(assert (= (and b!5785812 res!2441473) b!5785813))

(declare-fun b_lambda!218129 () Bool)

(assert (=> (not b_lambda!218129) (not b!5785812)))

(declare-fun m!6730728 () Bool)

(assert (=> b!5785812 m!6730728))

(declare-fun m!6730730 () Bool)

(assert (=> b!5785813 m!6730730))

(assert (=> d!1822858 d!1822912))

(declare-fun bs!1366021 () Bool)

(declare-fun b!5785814 () Bool)

(assert (= bs!1366021 (and b!5785814 d!1822878)))

(declare-fun lambda!315367 () Int)

(assert (=> bs!1366021 (= (and (= (reg!16126 (regTwo!32107 r!7292)) (reg!16126 r!7292)) (= (regTwo!32107 r!7292) (Star!15797 (reg!16126 r!7292)))) (= lambda!315367 lambda!315357))))

(declare-fun bs!1366022 () Bool)

(assert (= bs!1366022 (and b!5785814 b!5785085)))

(assert (=> bs!1366022 (= (and (= (reg!16126 (regTwo!32107 r!7292)) (reg!16126 r!7292)) (= (regTwo!32107 r!7292) r!7292)) (= lambda!315367 lambda!315297))))

(assert (=> bs!1366022 (not (= lambda!315367 lambda!315298))))

(declare-fun bs!1366023 () Bool)

(assert (= bs!1366023 (and b!5785814 d!1822886)))

(assert (=> bs!1366023 (not (= lambda!315367 lambda!315363))))

(assert (=> bs!1366022 (not (= lambda!315367 lambda!315296))))

(declare-fun bs!1366024 () Bool)

(assert (= bs!1366024 (and b!5785814 d!1822892)))

(assert (=> bs!1366024 (not (= lambda!315367 lambda!315366))))

(declare-fun bs!1366025 () Bool)

(assert (= bs!1366025 (and b!5785814 b!5785184)))

(assert (=> bs!1366025 (= (and (= (reg!16126 (regTwo!32107 r!7292)) (reg!16126 r!7292)) (= (regTwo!32107 r!7292) r!7292)) (= lambda!315367 lambda!315309))))

(assert (=> bs!1366021 (not (= lambda!315367 lambda!315356))))

(assert (=> bs!1366023 (not (= lambda!315367 lambda!315362))))

(declare-fun bs!1366026 () Bool)

(assert (= bs!1366026 (and b!5785814 b!5785188)))

(assert (=> bs!1366026 (not (= lambda!315367 lambda!315310))))

(assert (=> b!5785814 true))

(assert (=> b!5785814 true))

(declare-fun bs!1366027 () Bool)

(declare-fun b!5785818 () Bool)

(assert (= bs!1366027 (and b!5785818 d!1822878)))

(declare-fun lambda!315368 () Int)

(assert (=> bs!1366027 (not (= lambda!315368 lambda!315357))))

(declare-fun bs!1366028 () Bool)

(assert (= bs!1366028 (and b!5785818 b!5785085)))

(assert (=> bs!1366028 (= (and (= (regOne!32106 (regTwo!32107 r!7292)) (reg!16126 r!7292)) (= (regTwo!32106 (regTwo!32107 r!7292)) r!7292)) (= lambda!315368 lambda!315298))))

(declare-fun bs!1366029 () Bool)

(assert (= bs!1366029 (and b!5785818 d!1822886)))

(assert (=> bs!1366029 (= (and (= (regOne!32106 (regTwo!32107 r!7292)) (reg!16126 r!7292)) (= (regTwo!32106 (regTwo!32107 r!7292)) r!7292)) (= lambda!315368 lambda!315363))))

(assert (=> bs!1366028 (not (= lambda!315368 lambda!315296))))

(declare-fun bs!1366030 () Bool)

(assert (= bs!1366030 (and b!5785818 d!1822892)))

(assert (=> bs!1366030 (not (= lambda!315368 lambda!315366))))

(declare-fun bs!1366031 () Bool)

(assert (= bs!1366031 (and b!5785818 b!5785184)))

(assert (=> bs!1366031 (not (= lambda!315368 lambda!315309))))

(assert (=> bs!1366027 (not (= lambda!315368 lambda!315356))))

(assert (=> bs!1366029 (not (= lambda!315368 lambda!315362))))

(declare-fun bs!1366032 () Bool)

(assert (= bs!1366032 (and b!5785818 b!5785188)))

(assert (=> bs!1366032 (= (and (= (regOne!32106 (regTwo!32107 r!7292)) (regOne!32106 r!7292)) (= (regTwo!32106 (regTwo!32107 r!7292)) (regTwo!32106 r!7292))) (= lambda!315368 lambda!315310))))

(declare-fun bs!1366033 () Bool)

(assert (= bs!1366033 (and b!5785818 b!5785814)))

(assert (=> bs!1366033 (not (= lambda!315368 lambda!315367))))

(assert (=> bs!1366028 (not (= lambda!315368 lambda!315297))))

(assert (=> b!5785818 true))

(assert (=> b!5785818 true))

(declare-fun e!3553625 () Bool)

(declare-fun call!450434 () Bool)

(assert (=> b!5785814 (= e!3553625 call!450434)))

(declare-fun b!5785815 () Bool)

(declare-fun e!3553624 () Bool)

(assert (=> b!5785815 (= e!3553624 (matchRSpec!2900 (regTwo!32107 (regTwo!32107 r!7292)) s!2326))))

(declare-fun b!5785816 () Bool)

(declare-fun c!1024335 () Bool)

(assert (=> b!5785816 (= c!1024335 ((_ is ElementMatch!15797) (regTwo!32107 r!7292)))))

(declare-fun e!3553623 () Bool)

(declare-fun e!3553629 () Bool)

(assert (=> b!5785816 (= e!3553623 e!3553629)))

(declare-fun b!5785817 () Bool)

(declare-fun e!3553627 () Bool)

(assert (=> b!5785817 (= e!3553627 e!3553624)))

(declare-fun res!2441475 () Bool)

(assert (=> b!5785817 (= res!2441475 (matchRSpec!2900 (regOne!32107 (regTwo!32107 r!7292)) s!2326))))

(assert (=> b!5785817 (=> res!2441475 e!3553624)))

(declare-fun b!5785819 () Bool)

(declare-fun res!2441476 () Bool)

(assert (=> b!5785819 (=> res!2441476 e!3553625)))

(declare-fun call!450435 () Bool)

(assert (=> b!5785819 (= res!2441476 call!450435)))

(declare-fun e!3553628 () Bool)

(assert (=> b!5785819 (= e!3553628 e!3553625)))

(declare-fun c!1024334 () Bool)

(declare-fun bm!450429 () Bool)

(assert (=> bm!450429 (= call!450434 (Exists!2897 (ite c!1024334 lambda!315367 lambda!315368)))))

(declare-fun b!5785820 () Bool)

(declare-fun e!3553626 () Bool)

(assert (=> b!5785820 (= e!3553626 e!3553623)))

(declare-fun res!2441474 () Bool)

(assert (=> b!5785820 (= res!2441474 (not ((_ is EmptyLang!15797) (regTwo!32107 r!7292))))))

(assert (=> b!5785820 (=> (not res!2441474) (not e!3553623))))

(declare-fun bm!450430 () Bool)

(assert (=> bm!450430 (= call!450435 (isEmpty!35467 s!2326))))

(declare-fun b!5785821 () Bool)

(assert (=> b!5785821 (= e!3553629 (= s!2326 (Cons!63566 (c!1024165 (regTwo!32107 r!7292)) Nil!63566)))))

(declare-fun b!5785822 () Bool)

(assert (=> b!5785822 (= e!3553626 call!450435)))

(declare-fun b!5785823 () Bool)

(assert (=> b!5785823 (= e!3553627 e!3553628)))

(assert (=> b!5785823 (= c!1024334 ((_ is Star!15797) (regTwo!32107 r!7292)))))

(declare-fun b!5785824 () Bool)

(declare-fun c!1024337 () Bool)

(assert (=> b!5785824 (= c!1024337 ((_ is Union!15797) (regTwo!32107 r!7292)))))

(assert (=> b!5785824 (= e!3553629 e!3553627)))

(assert (=> b!5785818 (= e!3553628 call!450434)))

(declare-fun d!1822914 () Bool)

(declare-fun c!1024336 () Bool)

(assert (=> d!1822914 (= c!1024336 ((_ is EmptyExpr!15797) (regTwo!32107 r!7292)))))

(assert (=> d!1822914 (= (matchRSpec!2900 (regTwo!32107 r!7292) s!2326) e!3553626)))

(assert (= (and d!1822914 c!1024336) b!5785822))

(assert (= (and d!1822914 (not c!1024336)) b!5785820))

(assert (= (and b!5785820 res!2441474) b!5785816))

(assert (= (and b!5785816 c!1024335) b!5785821))

(assert (= (and b!5785816 (not c!1024335)) b!5785824))

(assert (= (and b!5785824 c!1024337) b!5785817))

(assert (= (and b!5785824 (not c!1024337)) b!5785823))

(assert (= (and b!5785817 (not res!2441475)) b!5785815))

(assert (= (and b!5785823 c!1024334) b!5785819))

(assert (= (and b!5785823 (not c!1024334)) b!5785818))

(assert (= (and b!5785819 (not res!2441476)) b!5785814))

(assert (= (or b!5785814 b!5785818) bm!450429))

(assert (= (or b!5785822 b!5785819) bm!450430))

(declare-fun m!6730732 () Bool)

(assert (=> b!5785815 m!6730732))

(declare-fun m!6730734 () Bool)

(assert (=> b!5785817 m!6730734))

(declare-fun m!6730736 () Bool)

(assert (=> bm!450429 m!6730736))

(assert (=> bm!450430 m!6730364))

(assert (=> b!5785185 d!1822914))

(declare-fun d!1822916 () Bool)

(declare-fun e!3553647 () Bool)

(assert (=> d!1822916 e!3553647))

(declare-fun res!2441495 () Bool)

(assert (=> d!1822916 (=> (not res!2441495) (not e!3553647))))

(declare-fun lt!2296495 () List!63690)

(declare-fun content!11622 (List!63690) (InoxSet C!31864))

(assert (=> d!1822916 (= res!2441495 (= (content!11622 lt!2296495) ((_ map or) (content!11622 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566))) (content!11622 (t!377029 s!2326)))))))

(declare-fun e!3553648 () List!63690)

(assert (=> d!1822916 (= lt!2296495 e!3553648)))

(declare-fun c!1024346 () Bool)

(assert (=> d!1822916 (= c!1024346 ((_ is Nil!63566) (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566))))))

(assert (=> d!1822916 (= (++!14015 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (t!377029 s!2326)) lt!2296495)))

(declare-fun b!5785860 () Bool)

(assert (=> b!5785860 (= e!3553648 (Cons!63566 (h!70014 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566))) (++!14015 (t!377029 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566))) (t!377029 s!2326))))))

(declare-fun b!5785862 () Bool)

(assert (=> b!5785862 (= e!3553647 (or (not (= (t!377029 s!2326) Nil!63566)) (= lt!2296495 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)))))))

(declare-fun b!5785859 () Bool)

(assert (=> b!5785859 (= e!3553648 (t!377029 s!2326))))

(declare-fun b!5785861 () Bool)

(declare-fun res!2441496 () Bool)

(assert (=> b!5785861 (=> (not res!2441496) (not e!3553647))))

(declare-fun size!40090 (List!63690) Int)

(assert (=> b!5785861 (= res!2441496 (= (size!40090 lt!2296495) (+ (size!40090 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566))) (size!40090 (t!377029 s!2326)))))))

(assert (= (and d!1822916 c!1024346) b!5785859))

(assert (= (and d!1822916 (not c!1024346)) b!5785860))

(assert (= (and d!1822916 res!2441495) b!5785861))

(assert (= (and b!5785861 res!2441496) b!5785862))

(declare-fun m!6730764 () Bool)

(assert (=> d!1822916 m!6730764))

(assert (=> d!1822916 m!6730682))

(declare-fun m!6730766 () Bool)

(assert (=> d!1822916 m!6730766))

(declare-fun m!6730768 () Bool)

(assert (=> d!1822916 m!6730768))

(declare-fun m!6730770 () Bool)

(assert (=> b!5785860 m!6730770))

(declare-fun m!6730772 () Bool)

(assert (=> b!5785861 m!6730772))

(assert (=> b!5785861 m!6730682))

(declare-fun m!6730774 () Bool)

(assert (=> b!5785861 m!6730774))

(declare-fun m!6730776 () Bool)

(assert (=> b!5785861 m!6730776))

(assert (=> b!5785710 d!1822916))

(declare-fun d!1822926 () Bool)

(declare-fun e!3553649 () Bool)

(assert (=> d!1822926 e!3553649))

(declare-fun res!2441497 () Bool)

(assert (=> d!1822926 (=> (not res!2441497) (not e!3553649))))

(declare-fun lt!2296496 () List!63690)

(assert (=> d!1822926 (= res!2441497 (= (content!11622 lt!2296496) ((_ map or) (content!11622 Nil!63566) (content!11622 (Cons!63566 (h!70014 s!2326) Nil!63566)))))))

(declare-fun e!3553650 () List!63690)

(assert (=> d!1822926 (= lt!2296496 e!3553650)))

(declare-fun c!1024347 () Bool)

(assert (=> d!1822926 (= c!1024347 ((_ is Nil!63566) Nil!63566))))

(assert (=> d!1822926 (= (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) lt!2296496)))

(declare-fun b!5785864 () Bool)

(assert (=> b!5785864 (= e!3553650 (Cons!63566 (h!70014 Nil!63566) (++!14015 (t!377029 Nil!63566) (Cons!63566 (h!70014 s!2326) Nil!63566))))))

(declare-fun b!5785866 () Bool)

(assert (=> b!5785866 (= e!3553649 (or (not (= (Cons!63566 (h!70014 s!2326) Nil!63566) Nil!63566)) (= lt!2296496 Nil!63566)))))

(declare-fun b!5785863 () Bool)

(assert (=> b!5785863 (= e!3553650 (Cons!63566 (h!70014 s!2326) Nil!63566))))

(declare-fun b!5785865 () Bool)

(declare-fun res!2441498 () Bool)

(assert (=> b!5785865 (=> (not res!2441498) (not e!3553649))))

(assert (=> b!5785865 (= res!2441498 (= (size!40090 lt!2296496) (+ (size!40090 Nil!63566) (size!40090 (Cons!63566 (h!70014 s!2326) Nil!63566)))))))

(assert (= (and d!1822926 c!1024347) b!5785863))

(assert (= (and d!1822926 (not c!1024347)) b!5785864))

(assert (= (and d!1822926 res!2441497) b!5785865))

(assert (= (and b!5785865 res!2441498) b!5785866))

(declare-fun m!6730778 () Bool)

(assert (=> d!1822926 m!6730778))

(declare-fun m!6730780 () Bool)

(assert (=> d!1822926 m!6730780))

(declare-fun m!6730782 () Bool)

(assert (=> d!1822926 m!6730782))

(declare-fun m!6730784 () Bool)

(assert (=> b!5785864 m!6730784))

(declare-fun m!6730786 () Bool)

(assert (=> b!5785865 m!6730786))

(declare-fun m!6730788 () Bool)

(assert (=> b!5785865 m!6730788))

(declare-fun m!6730790 () Bool)

(assert (=> b!5785865 m!6730790))

(assert (=> b!5785710 d!1822926))

(declare-fun d!1822928 () Bool)

(assert (=> d!1822928 (= (++!14015 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (t!377029 s!2326)) s!2326)))

(declare-fun lt!2296499 () Unit!156854)

(declare-fun choose!43930 (List!63690 C!31864 List!63690 List!63690) Unit!156854)

(assert (=> d!1822928 (= lt!2296499 (choose!43930 Nil!63566 (h!70014 s!2326) (t!377029 s!2326) s!2326))))

(assert (=> d!1822928 (= (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) (t!377029 s!2326))) s!2326)))

(assert (=> d!1822928 (= (lemmaMoveElementToOtherListKeepsConcatEq!2122 Nil!63566 (h!70014 s!2326) (t!377029 s!2326) s!2326) lt!2296499)))

(declare-fun bs!1366034 () Bool)

(assert (= bs!1366034 d!1822928))

(assert (=> bs!1366034 m!6730682))

(assert (=> bs!1366034 m!6730682))

(assert (=> bs!1366034 m!6730684))

(declare-fun m!6730792 () Bool)

(assert (=> bs!1366034 m!6730792))

(declare-fun m!6730794 () Bool)

(assert (=> bs!1366034 m!6730794))

(assert (=> b!5785710 d!1822928))

(declare-fun d!1822930 () Bool)

(declare-fun e!3553652 () Bool)

(assert (=> d!1822930 e!3553652))

(declare-fun res!2441500 () Bool)

(assert (=> d!1822930 (=> res!2441500 e!3553652)))

(declare-fun e!3553653 () Bool)

(assert (=> d!1822930 (= res!2441500 e!3553653)))

(declare-fun res!2441501 () Bool)

(assert (=> d!1822930 (=> (not res!2441501) (not e!3553653))))

(declare-fun lt!2296500 () Option!15806)

(assert (=> d!1822930 (= res!2441501 (isDefined!12509 lt!2296500))))

(declare-fun e!3553654 () Option!15806)

(assert (=> d!1822930 (= lt!2296500 e!3553654)))

(declare-fun c!1024348 () Bool)

(declare-fun e!3553655 () Bool)

(assert (=> d!1822930 (= c!1024348 e!3553655)))

(declare-fun res!2441503 () Bool)

(assert (=> d!1822930 (=> (not res!2441503) (not e!3553655))))

(assert (=> d!1822930 (= res!2441503 (matchR!7982 (reg!16126 r!7292) (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566))))))

(assert (=> d!1822930 (validRegex!7533 (reg!16126 r!7292))))

(assert (=> d!1822930 (= (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (t!377029 s!2326) s!2326) lt!2296500)))

(declare-fun b!5785867 () Bool)

(assert (=> b!5785867 (= e!3553653 (= (++!14015 (_1!36197 (get!21939 lt!2296500)) (_2!36197 (get!21939 lt!2296500))) s!2326))))

(declare-fun b!5785868 () Bool)

(declare-fun res!2441499 () Bool)

(assert (=> b!5785868 (=> (not res!2441499) (not e!3553653))))

(assert (=> b!5785868 (= res!2441499 (matchR!7982 (reg!16126 r!7292) (_1!36197 (get!21939 lt!2296500))))))

(declare-fun b!5785869 () Bool)

(assert (=> b!5785869 (= e!3553654 (Some!15805 (tuple2!65789 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (t!377029 s!2326))))))

(declare-fun b!5785870 () Bool)

(declare-fun e!3553651 () Option!15806)

(assert (=> b!5785870 (= e!3553654 e!3553651)))

(declare-fun c!1024349 () Bool)

(assert (=> b!5785870 (= c!1024349 ((_ is Nil!63566) (t!377029 s!2326)))))

(declare-fun b!5785871 () Bool)

(declare-fun lt!2296502 () Unit!156854)

(declare-fun lt!2296501 () Unit!156854)

(assert (=> b!5785871 (= lt!2296502 lt!2296501)))

(assert (=> b!5785871 (= (++!14015 (++!14015 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (Cons!63566 (h!70014 (t!377029 s!2326)) Nil!63566)) (t!377029 (t!377029 s!2326))) s!2326)))

(assert (=> b!5785871 (= lt!2296501 (lemmaMoveElementToOtherListKeepsConcatEq!2122 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (h!70014 (t!377029 s!2326)) (t!377029 (t!377029 s!2326)) s!2326))))

(assert (=> b!5785871 (= e!3553651 (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 (++!14015 (++!14015 Nil!63566 (Cons!63566 (h!70014 s!2326) Nil!63566)) (Cons!63566 (h!70014 (t!377029 s!2326)) Nil!63566)) (t!377029 (t!377029 s!2326)) s!2326))))

(declare-fun b!5785872 () Bool)

(assert (=> b!5785872 (= e!3553652 (not (isDefined!12509 lt!2296500)))))

(declare-fun b!5785873 () Bool)

(declare-fun res!2441502 () Bool)

(assert (=> b!5785873 (=> (not res!2441502) (not e!3553653))))

(assert (=> b!5785873 (= res!2441502 (matchR!7982 r!7292 (_2!36197 (get!21939 lt!2296500))))))

(declare-fun b!5785874 () Bool)

(assert (=> b!5785874 (= e!3553655 (matchR!7982 r!7292 (t!377029 s!2326)))))

(declare-fun b!5785875 () Bool)

(assert (=> b!5785875 (= e!3553651 None!15805)))

(assert (= (and d!1822930 res!2441503) b!5785874))

(assert (= (and d!1822930 c!1024348) b!5785869))

(assert (= (and d!1822930 (not c!1024348)) b!5785870))

(assert (= (and b!5785870 c!1024349) b!5785875))

(assert (= (and b!5785870 (not c!1024349)) b!5785871))

(assert (= (and d!1822930 res!2441501) b!5785868))

(assert (= (and b!5785868 res!2441499) b!5785873))

(assert (= (and b!5785873 res!2441502) b!5785867))

(assert (= (and d!1822930 (not res!2441500)) b!5785872))

(declare-fun m!6730796 () Bool)

(assert (=> d!1822930 m!6730796))

(assert (=> d!1822930 m!6730682))

(declare-fun m!6730798 () Bool)

(assert (=> d!1822930 m!6730798))

(assert (=> d!1822930 m!6730658))

(declare-fun m!6730800 () Bool)

(assert (=> b!5785868 m!6730800))

(declare-fun m!6730802 () Bool)

(assert (=> b!5785868 m!6730802))

(assert (=> b!5785873 m!6730800))

(declare-fun m!6730804 () Bool)

(assert (=> b!5785873 m!6730804))

(assert (=> b!5785871 m!6730682))

(declare-fun m!6730806 () Bool)

(assert (=> b!5785871 m!6730806))

(assert (=> b!5785871 m!6730806))

(declare-fun m!6730808 () Bool)

(assert (=> b!5785871 m!6730808))

(assert (=> b!5785871 m!6730682))

(declare-fun m!6730810 () Bool)

(assert (=> b!5785871 m!6730810))

(assert (=> b!5785871 m!6730806))

(declare-fun m!6730812 () Bool)

(assert (=> b!5785871 m!6730812))

(assert (=> b!5785867 m!6730800))

(declare-fun m!6730814 () Bool)

(assert (=> b!5785867 m!6730814))

(declare-fun m!6730816 () Bool)

(assert (=> b!5785874 m!6730816))

(assert (=> b!5785872 m!6730796))

(assert (=> b!5785710 d!1822930))

(declare-fun bs!1366036 () Bool)

(declare-fun b!5785876 () Bool)

(assert (= bs!1366036 (and b!5785876 d!1822878)))

(declare-fun lambda!315369 () Int)

(assert (=> bs!1366036 (= (and (= (reg!16126 (regOne!32107 r!7292)) (reg!16126 r!7292)) (= (regOne!32107 r!7292) (Star!15797 (reg!16126 r!7292)))) (= lambda!315369 lambda!315357))))

(declare-fun bs!1366037 () Bool)

(assert (= bs!1366037 (and b!5785876 b!5785085)))

(assert (=> bs!1366037 (not (= lambda!315369 lambda!315298))))

(declare-fun bs!1366038 () Bool)

(assert (= bs!1366038 (and b!5785876 d!1822886)))

(assert (=> bs!1366038 (not (= lambda!315369 lambda!315363))))

(assert (=> bs!1366037 (not (= lambda!315369 lambda!315296))))

(declare-fun bs!1366039 () Bool)

(assert (= bs!1366039 (and b!5785876 d!1822892)))

(assert (=> bs!1366039 (not (= lambda!315369 lambda!315366))))

(declare-fun bs!1366040 () Bool)

(assert (= bs!1366040 (and b!5785876 b!5785184)))

(assert (=> bs!1366040 (= (and (= (reg!16126 (regOne!32107 r!7292)) (reg!16126 r!7292)) (= (regOne!32107 r!7292) r!7292)) (= lambda!315369 lambda!315309))))

(assert (=> bs!1366036 (not (= lambda!315369 lambda!315356))))

(assert (=> bs!1366038 (not (= lambda!315369 lambda!315362))))

(declare-fun bs!1366041 () Bool)

(assert (= bs!1366041 (and b!5785876 b!5785814)))

(assert (=> bs!1366041 (= (and (= (reg!16126 (regOne!32107 r!7292)) (reg!16126 (regTwo!32107 r!7292))) (= (regOne!32107 r!7292) (regTwo!32107 r!7292))) (= lambda!315369 lambda!315367))))

(assert (=> bs!1366037 (= (and (= (reg!16126 (regOne!32107 r!7292)) (reg!16126 r!7292)) (= (regOne!32107 r!7292) r!7292)) (= lambda!315369 lambda!315297))))

(declare-fun bs!1366042 () Bool)

(assert (= bs!1366042 (and b!5785876 b!5785188)))

(assert (=> bs!1366042 (not (= lambda!315369 lambda!315310))))

(declare-fun bs!1366043 () Bool)

(assert (= bs!1366043 (and b!5785876 b!5785818)))

(assert (=> bs!1366043 (not (= lambda!315369 lambda!315368))))

(assert (=> b!5785876 true))

(assert (=> b!5785876 true))

(declare-fun bs!1366044 () Bool)

(declare-fun b!5785880 () Bool)

(assert (= bs!1366044 (and b!5785880 d!1822878)))

(declare-fun lambda!315370 () Int)

(assert (=> bs!1366044 (not (= lambda!315370 lambda!315357))))

(declare-fun bs!1366045 () Bool)

(assert (= bs!1366045 (and b!5785880 b!5785085)))

(assert (=> bs!1366045 (= (and (= (regOne!32106 (regOne!32107 r!7292)) (reg!16126 r!7292)) (= (regTwo!32106 (regOne!32107 r!7292)) r!7292)) (= lambda!315370 lambda!315298))))

(declare-fun bs!1366046 () Bool)

(assert (= bs!1366046 (and b!5785880 d!1822886)))

(assert (=> bs!1366046 (= (and (= (regOne!32106 (regOne!32107 r!7292)) (reg!16126 r!7292)) (= (regTwo!32106 (regOne!32107 r!7292)) r!7292)) (= lambda!315370 lambda!315363))))

(assert (=> bs!1366045 (not (= lambda!315370 lambda!315296))))

(declare-fun bs!1366047 () Bool)

(assert (= bs!1366047 (and b!5785880 d!1822892)))

(assert (=> bs!1366047 (not (= lambda!315370 lambda!315366))))

(declare-fun bs!1366048 () Bool)

(assert (= bs!1366048 (and b!5785880 b!5785184)))

(assert (=> bs!1366048 (not (= lambda!315370 lambda!315309))))

(assert (=> bs!1366044 (not (= lambda!315370 lambda!315356))))

(assert (=> bs!1366046 (not (= lambda!315370 lambda!315362))))

(declare-fun bs!1366049 () Bool)

(assert (= bs!1366049 (and b!5785880 b!5785876)))

(assert (=> bs!1366049 (not (= lambda!315370 lambda!315369))))

(declare-fun bs!1366050 () Bool)

(assert (= bs!1366050 (and b!5785880 b!5785814)))

(assert (=> bs!1366050 (not (= lambda!315370 lambda!315367))))

(assert (=> bs!1366045 (not (= lambda!315370 lambda!315297))))

(declare-fun bs!1366051 () Bool)

(assert (= bs!1366051 (and b!5785880 b!5785188)))

(assert (=> bs!1366051 (= (and (= (regOne!32106 (regOne!32107 r!7292)) (regOne!32106 r!7292)) (= (regTwo!32106 (regOne!32107 r!7292)) (regTwo!32106 r!7292))) (= lambda!315370 lambda!315310))))

(declare-fun bs!1366052 () Bool)

(assert (= bs!1366052 (and b!5785880 b!5785818)))

(assert (=> bs!1366052 (= (and (= (regOne!32106 (regOne!32107 r!7292)) (regOne!32106 (regTwo!32107 r!7292))) (= (regTwo!32106 (regOne!32107 r!7292)) (regTwo!32106 (regTwo!32107 r!7292)))) (= lambda!315370 lambda!315368))))

(assert (=> b!5785880 true))

(assert (=> b!5785880 true))

(declare-fun e!3553658 () Bool)

(declare-fun call!450437 () Bool)

(assert (=> b!5785876 (= e!3553658 call!450437)))

(declare-fun b!5785877 () Bool)

(declare-fun e!3553657 () Bool)

(assert (=> b!5785877 (= e!3553657 (matchRSpec!2900 (regTwo!32107 (regOne!32107 r!7292)) s!2326))))

(declare-fun b!5785878 () Bool)

(declare-fun c!1024351 () Bool)

(assert (=> b!5785878 (= c!1024351 ((_ is ElementMatch!15797) (regOne!32107 r!7292)))))

(declare-fun e!3553656 () Bool)

(declare-fun e!3553662 () Bool)

(assert (=> b!5785878 (= e!3553656 e!3553662)))

(declare-fun b!5785879 () Bool)

(declare-fun e!3553660 () Bool)

(assert (=> b!5785879 (= e!3553660 e!3553657)))

(declare-fun res!2441505 () Bool)

(assert (=> b!5785879 (= res!2441505 (matchRSpec!2900 (regOne!32107 (regOne!32107 r!7292)) s!2326))))

(assert (=> b!5785879 (=> res!2441505 e!3553657)))

(declare-fun b!5785881 () Bool)

(declare-fun res!2441506 () Bool)

(assert (=> b!5785881 (=> res!2441506 e!3553658)))

(declare-fun call!450438 () Bool)

(assert (=> b!5785881 (= res!2441506 call!450438)))

(declare-fun e!3553661 () Bool)

(assert (=> b!5785881 (= e!3553661 e!3553658)))

(declare-fun c!1024350 () Bool)

(declare-fun bm!450432 () Bool)

(assert (=> bm!450432 (= call!450437 (Exists!2897 (ite c!1024350 lambda!315369 lambda!315370)))))

(declare-fun b!5785882 () Bool)

(declare-fun e!3553659 () Bool)

(assert (=> b!5785882 (= e!3553659 e!3553656)))

(declare-fun res!2441504 () Bool)

(assert (=> b!5785882 (= res!2441504 (not ((_ is EmptyLang!15797) (regOne!32107 r!7292))))))

(assert (=> b!5785882 (=> (not res!2441504) (not e!3553656))))

(declare-fun bm!450433 () Bool)

(assert (=> bm!450433 (= call!450438 (isEmpty!35467 s!2326))))

(declare-fun b!5785883 () Bool)

(assert (=> b!5785883 (= e!3553662 (= s!2326 (Cons!63566 (c!1024165 (regOne!32107 r!7292)) Nil!63566)))))

(declare-fun b!5785884 () Bool)

(assert (=> b!5785884 (= e!3553659 call!450438)))

(declare-fun b!5785885 () Bool)

(assert (=> b!5785885 (= e!3553660 e!3553661)))

(assert (=> b!5785885 (= c!1024350 ((_ is Star!15797) (regOne!32107 r!7292)))))

(declare-fun b!5785886 () Bool)

(declare-fun c!1024353 () Bool)

(assert (=> b!5785886 (= c!1024353 ((_ is Union!15797) (regOne!32107 r!7292)))))

(assert (=> b!5785886 (= e!3553662 e!3553660)))

(assert (=> b!5785880 (= e!3553661 call!450437)))

(declare-fun d!1822934 () Bool)

(declare-fun c!1024352 () Bool)

(assert (=> d!1822934 (= c!1024352 ((_ is EmptyExpr!15797) (regOne!32107 r!7292)))))

(assert (=> d!1822934 (= (matchRSpec!2900 (regOne!32107 r!7292) s!2326) e!3553659)))

(assert (= (and d!1822934 c!1024352) b!5785884))

(assert (= (and d!1822934 (not c!1024352)) b!5785882))

(assert (= (and b!5785882 res!2441504) b!5785878))

(assert (= (and b!5785878 c!1024351) b!5785883))

(assert (= (and b!5785878 (not c!1024351)) b!5785886))

(assert (= (and b!5785886 c!1024353) b!5785879))

(assert (= (and b!5785886 (not c!1024353)) b!5785885))

(assert (= (and b!5785879 (not res!2441505)) b!5785877))

(assert (= (and b!5785885 c!1024350) b!5785881))

(assert (= (and b!5785885 (not c!1024350)) b!5785880))

(assert (= (and b!5785881 (not res!2441506)) b!5785876))

(assert (= (or b!5785876 b!5785880) bm!450432))

(assert (= (or b!5785884 b!5785881) bm!450433))

(declare-fun m!6730832 () Bool)

(assert (=> b!5785877 m!6730832))

(declare-fun m!6730834 () Bool)

(assert (=> b!5785879 m!6730834))

(declare-fun m!6730836 () Bool)

(assert (=> bm!450432 m!6730836))

(assert (=> bm!450433 m!6730364))

(assert (=> b!5785187 d!1822934))

(declare-fun d!1822944 () Bool)

(assert (=> d!1822944 (= (isEmpty!35471 (exprs!5681 (h!70016 zl!343))) ((_ is Nil!63567) (exprs!5681 (h!70016 zl!343))))))

(assert (=> b!5785550 d!1822944))

(assert (=> bm!450380 d!1822882))

(declare-fun bs!1366053 () Bool)

(declare-fun d!1822946 () Bool)

(assert (= bs!1366053 (and d!1822946 d!1822874)))

(declare-fun lambda!315371 () Int)

(assert (=> bs!1366053 (= lambda!315371 lambda!315351)))

(declare-fun bs!1366054 () Bool)

(assert (= bs!1366054 (and d!1822946 d!1822846)))

(assert (=> bs!1366054 (= lambda!315371 lambda!315340)))

(declare-fun bs!1366055 () Bool)

(assert (= bs!1366055 (and d!1822946 d!1822858)))

(assert (=> bs!1366055 (= lambda!315371 lambda!315343)))

(declare-fun bs!1366056 () Bool)

(assert (= bs!1366056 (and d!1822946 d!1822860)))

(assert (=> bs!1366056 (= lambda!315371 lambda!315349)))

(declare-fun bs!1366057 () Bool)

(assert (= bs!1366057 (and d!1822946 d!1822834)))

(assert (=> bs!1366057 (= lambda!315371 lambda!315325)))

(assert (=> d!1822946 (= (inv!82739 setElem!38872) (forall!14911 (exprs!5681 setElem!38872) lambda!315371))))

(declare-fun bs!1366058 () Bool)

(assert (= bs!1366058 d!1822946))

(declare-fun m!6730848 () Bool)

(assert (=> bs!1366058 m!6730848))

(assert (=> setNonEmpty!38872 d!1822946))

(declare-fun d!1822950 () Bool)

(assert (=> d!1822950 (= (isEmptyLang!1286 lt!2296452) ((_ is EmptyLang!15797) lt!2296452))))

(assert (=> b!5785472 d!1822950))

(declare-fun d!1822952 () Bool)

(declare-fun e!3553681 () Bool)

(assert (=> d!1822952 e!3553681))

(declare-fun res!2441517 () Bool)

(assert (=> d!1822952 (=> (not res!2441517) (not e!3553681))))

(declare-fun lt!2296503 () List!63690)

(assert (=> d!1822952 (= res!2441517 (= (content!11622 lt!2296503) ((_ map or) (content!11622 (_1!36197 (get!21939 lt!2296483))) (content!11622 (_2!36197 (get!21939 lt!2296483))))))))

(declare-fun e!3553682 () List!63690)

(assert (=> d!1822952 (= lt!2296503 e!3553682)))

(declare-fun c!1024362 () Bool)

(assert (=> d!1822952 (= c!1024362 ((_ is Nil!63566) (_1!36197 (get!21939 lt!2296483))))))

(assert (=> d!1822952 (= (++!14015 (_1!36197 (get!21939 lt!2296483)) (_2!36197 (get!21939 lt!2296483))) lt!2296503)))

(declare-fun b!5785912 () Bool)

(assert (=> b!5785912 (= e!3553682 (Cons!63566 (h!70014 (_1!36197 (get!21939 lt!2296483))) (++!14015 (t!377029 (_1!36197 (get!21939 lt!2296483))) (_2!36197 (get!21939 lt!2296483)))))))

(declare-fun b!5785914 () Bool)

(assert (=> b!5785914 (= e!3553681 (or (not (= (_2!36197 (get!21939 lt!2296483)) Nil!63566)) (= lt!2296503 (_1!36197 (get!21939 lt!2296483)))))))

(declare-fun b!5785911 () Bool)

(assert (=> b!5785911 (= e!3553682 (_2!36197 (get!21939 lt!2296483)))))

(declare-fun b!5785913 () Bool)

(declare-fun res!2441519 () Bool)

(assert (=> b!5785913 (=> (not res!2441519) (not e!3553681))))

(assert (=> b!5785913 (= res!2441519 (= (size!40090 lt!2296503) (+ (size!40090 (_1!36197 (get!21939 lt!2296483))) (size!40090 (_2!36197 (get!21939 lt!2296483))))))))

(assert (= (and d!1822952 c!1024362) b!5785911))

(assert (= (and d!1822952 (not c!1024362)) b!5785912))

(assert (= (and d!1822952 res!2441517) b!5785913))

(assert (= (and b!5785913 res!2441519) b!5785914))

(declare-fun m!6730850 () Bool)

(assert (=> d!1822952 m!6730850))

(declare-fun m!6730852 () Bool)

(assert (=> d!1822952 m!6730852))

(declare-fun m!6730854 () Bool)

(assert (=> d!1822952 m!6730854))

(declare-fun m!6730856 () Bool)

(assert (=> b!5785912 m!6730856))

(declare-fun m!6730858 () Bool)

(assert (=> b!5785913 m!6730858))

(declare-fun m!6730860 () Bool)

(assert (=> b!5785913 m!6730860))

(declare-fun m!6730862 () Bool)

(assert (=> b!5785913 m!6730862))

(assert (=> b!5785706 d!1822952))

(declare-fun d!1822956 () Bool)

(assert (=> d!1822956 (= (get!21939 lt!2296483) (v!51865 lt!2296483))))

(assert (=> b!5785706 d!1822956))

(declare-fun d!1822958 () Bool)

(assert (=> d!1822958 (= (Exists!2897 lambda!315356) (choose!43927 lambda!315356))))

(declare-fun bs!1366059 () Bool)

(assert (= bs!1366059 d!1822958))

(declare-fun m!6730864 () Bool)

(assert (=> bs!1366059 m!6730864))

(assert (=> d!1822878 d!1822958))

(declare-fun d!1822960 () Bool)

(assert (=> d!1822960 (= (Exists!2897 lambda!315357) (choose!43927 lambda!315357))))

(declare-fun bs!1366060 () Bool)

(assert (= bs!1366060 d!1822960))

(declare-fun m!6730866 () Bool)

(assert (=> bs!1366060 m!6730866))

(assert (=> d!1822878 d!1822960))

(declare-fun bs!1366074 () Bool)

(declare-fun d!1822962 () Bool)

(assert (= bs!1366074 (and d!1822962 d!1822878)))

(declare-fun lambda!315378 () Int)

(assert (=> bs!1366074 (not (= lambda!315378 lambda!315357))))

(declare-fun bs!1366075 () Bool)

(assert (= bs!1366075 (and d!1822962 b!5785085)))

(assert (=> bs!1366075 (not (= lambda!315378 lambda!315298))))

(declare-fun bs!1366076 () Bool)

(assert (= bs!1366076 (and d!1822962 b!5785880)))

(assert (=> bs!1366076 (not (= lambda!315378 lambda!315370))))

(declare-fun bs!1366077 () Bool)

(assert (= bs!1366077 (and d!1822962 d!1822886)))

(assert (=> bs!1366077 (not (= lambda!315378 lambda!315363))))

(assert (=> bs!1366075 (= (= (Star!15797 (reg!16126 r!7292)) r!7292) (= lambda!315378 lambda!315296))))

(declare-fun bs!1366078 () Bool)

(assert (= bs!1366078 (and d!1822962 d!1822892)))

(assert (=> bs!1366078 (= (= (Star!15797 (reg!16126 r!7292)) r!7292) (= lambda!315378 lambda!315366))))

(declare-fun bs!1366079 () Bool)

(assert (= bs!1366079 (and d!1822962 b!5785184)))

(assert (=> bs!1366079 (not (= lambda!315378 lambda!315309))))

(assert (=> bs!1366074 (= lambda!315378 lambda!315356)))

(assert (=> bs!1366077 (= (= (Star!15797 (reg!16126 r!7292)) r!7292) (= lambda!315378 lambda!315362))))

(declare-fun bs!1366080 () Bool)

(assert (= bs!1366080 (and d!1822962 b!5785876)))

(assert (=> bs!1366080 (not (= lambda!315378 lambda!315369))))

(declare-fun bs!1366081 () Bool)

(assert (= bs!1366081 (and d!1822962 b!5785814)))

(assert (=> bs!1366081 (not (= lambda!315378 lambda!315367))))

(assert (=> bs!1366075 (not (= lambda!315378 lambda!315297))))

(declare-fun bs!1366082 () Bool)

(assert (= bs!1366082 (and d!1822962 b!5785188)))

(assert (=> bs!1366082 (not (= lambda!315378 lambda!315310))))

(declare-fun bs!1366083 () Bool)

(assert (= bs!1366083 (and d!1822962 b!5785818)))

(assert (=> bs!1366083 (not (= lambda!315378 lambda!315368))))

(assert (=> d!1822962 true))

(assert (=> d!1822962 true))

(declare-fun lambda!315379 () Int)

(assert (=> bs!1366074 (= lambda!315379 lambda!315357)))

(assert (=> bs!1366075 (not (= lambda!315379 lambda!315298))))

(assert (=> bs!1366076 (not (= lambda!315379 lambda!315370))))

(assert (=> bs!1366077 (not (= lambda!315379 lambda!315363))))

(assert (=> bs!1366075 (not (= lambda!315379 lambda!315296))))

(assert (=> bs!1366078 (not (= lambda!315379 lambda!315366))))

(assert (=> bs!1366079 (= (= (Star!15797 (reg!16126 r!7292)) r!7292) (= lambda!315379 lambda!315309))))

(assert (=> bs!1366074 (not (= lambda!315379 lambda!315356))))

(assert (=> bs!1366077 (not (= lambda!315379 lambda!315362))))

(declare-fun bs!1366086 () Bool)

(assert (= bs!1366086 d!1822962))

(assert (=> bs!1366086 (not (= lambda!315379 lambda!315378))))

(assert (=> bs!1366080 (= (and (= (reg!16126 r!7292) (reg!16126 (regOne!32107 r!7292))) (= (Star!15797 (reg!16126 r!7292)) (regOne!32107 r!7292))) (= lambda!315379 lambda!315369))))

(assert (=> bs!1366081 (= (and (= (reg!16126 r!7292) (reg!16126 (regTwo!32107 r!7292))) (= (Star!15797 (reg!16126 r!7292)) (regTwo!32107 r!7292))) (= lambda!315379 lambda!315367))))

(assert (=> bs!1366075 (= (= (Star!15797 (reg!16126 r!7292)) r!7292) (= lambda!315379 lambda!315297))))

(assert (=> bs!1366082 (not (= lambda!315379 lambda!315310))))

(assert (=> bs!1366083 (not (= lambda!315379 lambda!315368))))

(assert (=> d!1822962 true))

(assert (=> d!1822962 true))

(assert (=> d!1822962 (= (Exists!2897 lambda!315378) (Exists!2897 lambda!315379))))

(assert (=> d!1822962 true))

(declare-fun _$91!524 () Unit!156854)

(assert (=> d!1822962 (= (choose!43926 (reg!16126 r!7292) s!2326) _$91!524)))

(declare-fun m!6730886 () Bool)

(assert (=> bs!1366086 m!6730886))

(declare-fun m!6730888 () Bool)

(assert (=> bs!1366086 m!6730888))

(assert (=> d!1822878 d!1822962))

(declare-fun b!5785960 () Bool)

(declare-fun res!2441542 () Bool)

(declare-fun e!3553711 () Bool)

(assert (=> b!5785960 (=> (not res!2441542) (not e!3553711))))

(declare-fun call!450452 () Bool)

(assert (=> b!5785960 (= res!2441542 call!450452)))

(declare-fun e!3553708 () Bool)

(assert (=> b!5785960 (= e!3553708 e!3553711)))

(declare-fun bm!450446 () Bool)

(declare-fun call!450451 () Bool)

(declare-fun call!450453 () Bool)

(assert (=> bm!450446 (= call!450451 call!450453)))

(declare-fun b!5785961 () Bool)

(declare-fun e!3553707 () Bool)

(declare-fun e!3553710 () Bool)

(assert (=> b!5785961 (= e!3553707 e!3553710)))

(declare-fun res!2441544 () Bool)

(assert (=> b!5785961 (=> (not res!2441544) (not e!3553710))))

(assert (=> b!5785961 (= res!2441544 call!450452)))

(declare-fun b!5785962 () Bool)

(declare-fun e!3553706 () Bool)

(declare-fun e!3553712 () Bool)

(assert (=> b!5785962 (= e!3553706 e!3553712)))

(declare-fun res!2441546 () Bool)

(assert (=> b!5785962 (= res!2441546 (not (nullable!5829 (reg!16126 (reg!16126 r!7292)))))))

(assert (=> b!5785962 (=> (not res!2441546) (not e!3553712))))

(declare-fun b!5785963 () Bool)

(declare-fun e!3553709 () Bool)

(assert (=> b!5785963 (= e!3553709 e!3553706)))

(declare-fun c!1024374 () Bool)

(assert (=> b!5785963 (= c!1024374 ((_ is Star!15797) (reg!16126 r!7292)))))

(declare-fun bm!450447 () Bool)

(declare-fun c!1024373 () Bool)

(assert (=> bm!450447 (= call!450452 (validRegex!7533 (ite c!1024373 (regOne!32107 (reg!16126 r!7292)) (regOne!32106 (reg!16126 r!7292)))))))

(declare-fun b!5785964 () Bool)

(assert (=> b!5785964 (= e!3553710 call!450451)))

(declare-fun b!5785965 () Bool)

(declare-fun res!2441543 () Bool)

(assert (=> b!5785965 (=> res!2441543 e!3553707)))

(assert (=> b!5785965 (= res!2441543 (not ((_ is Concat!24642) (reg!16126 r!7292))))))

(assert (=> b!5785965 (= e!3553708 e!3553707)))

(declare-fun d!1822972 () Bool)

(declare-fun res!2441545 () Bool)

(assert (=> d!1822972 (=> res!2441545 e!3553709)))

(assert (=> d!1822972 (= res!2441545 ((_ is ElementMatch!15797) (reg!16126 r!7292)))))

(assert (=> d!1822972 (= (validRegex!7533 (reg!16126 r!7292)) e!3553709)))

(declare-fun b!5785966 () Bool)

(assert (=> b!5785966 (= e!3553706 e!3553708)))

(assert (=> b!5785966 (= c!1024373 ((_ is Union!15797) (reg!16126 r!7292)))))

(declare-fun bm!450448 () Bool)

(assert (=> bm!450448 (= call!450453 (validRegex!7533 (ite c!1024374 (reg!16126 (reg!16126 r!7292)) (ite c!1024373 (regTwo!32107 (reg!16126 r!7292)) (regTwo!32106 (reg!16126 r!7292))))))))

(declare-fun b!5785967 () Bool)

(assert (=> b!5785967 (= e!3553712 call!450453)))

(declare-fun b!5785968 () Bool)

(assert (=> b!5785968 (= e!3553711 call!450451)))

(assert (= (and d!1822972 (not res!2441545)) b!5785963))

(assert (= (and b!5785963 c!1024374) b!5785962))

(assert (= (and b!5785963 (not c!1024374)) b!5785966))

(assert (= (and b!5785962 res!2441546) b!5785967))

(assert (= (and b!5785966 c!1024373) b!5785960))

(assert (= (and b!5785966 (not c!1024373)) b!5785965))

(assert (= (and b!5785960 res!2441542) b!5785968))

(assert (= (and b!5785965 (not res!2441543)) b!5785961))

(assert (= (and b!5785961 res!2441544) b!5785964))

(assert (= (or b!5785968 b!5785964) bm!450446))

(assert (= (or b!5785960 b!5785961) bm!450447))

(assert (= (or b!5785967 bm!450446) bm!450448))

(declare-fun m!6730896 () Bool)

(assert (=> b!5785962 m!6730896))

(declare-fun m!6730902 () Bool)

(assert (=> bm!450447 m!6730902))

(declare-fun m!6730906 () Bool)

(assert (=> bm!450448 m!6730906))

(assert (=> d!1822878 d!1822972))

(assert (=> b!5785496 d!1822860))

(declare-fun bs!1366091 () Bool)

(declare-fun d!1822974 () Bool)

(assert (= bs!1366091 (and d!1822974 d!1822874)))

(declare-fun lambda!315381 () Int)

(assert (=> bs!1366091 (= lambda!315381 lambda!315351)))

(declare-fun bs!1366092 () Bool)

(assert (= bs!1366092 (and d!1822974 d!1822846)))

(assert (=> bs!1366092 (= lambda!315381 lambda!315340)))

(declare-fun bs!1366093 () Bool)

(assert (= bs!1366093 (and d!1822974 d!1822858)))

(assert (=> bs!1366093 (= lambda!315381 lambda!315343)))

(declare-fun bs!1366094 () Bool)

(assert (= bs!1366094 (and d!1822974 d!1822946)))

(assert (=> bs!1366094 (= lambda!315381 lambda!315371)))

(declare-fun bs!1366095 () Bool)

(assert (= bs!1366095 (and d!1822974 d!1822860)))

(assert (=> bs!1366095 (= lambda!315381 lambda!315349)))

(declare-fun bs!1366096 () Bool)

(assert (= bs!1366096 (and d!1822974 d!1822834)))

(assert (=> bs!1366096 (= lambda!315381 lambda!315325)))

(declare-fun lt!2296506 () List!63691)

(assert (=> d!1822974 (forall!14911 lt!2296506 lambda!315381)))

(declare-fun e!3553713 () List!63691)

(assert (=> d!1822974 (= lt!2296506 e!3553713)))

(declare-fun c!1024375 () Bool)

(assert (=> d!1822974 (= c!1024375 ((_ is Cons!63568) (t!377031 zl!343)))))

(assert (=> d!1822974 (= (unfocusZipperList!1225 (t!377031 zl!343)) lt!2296506)))

(declare-fun b!5785969 () Bool)

(assert (=> b!5785969 (= e!3553713 (Cons!63567 (generalisedConcat!1412 (exprs!5681 (h!70016 (t!377031 zl!343)))) (unfocusZipperList!1225 (t!377031 (t!377031 zl!343)))))))

(declare-fun b!5785970 () Bool)

(assert (=> b!5785970 (= e!3553713 Nil!63567)))

(assert (= (and d!1822974 c!1024375) b!5785969))

(assert (= (and d!1822974 (not c!1024375)) b!5785970))

(declare-fun m!6730916 () Bool)

(assert (=> d!1822974 m!6730916))

(declare-fun m!6730918 () Bool)

(assert (=> b!5785969 m!6730918))

(declare-fun m!6730920 () Bool)

(assert (=> b!5785969 m!6730920))

(assert (=> b!5785496 d!1822974))

(declare-fun d!1822982 () Bool)

(declare-fun res!2441547 () Bool)

(declare-fun e!3553714 () Bool)

(assert (=> d!1822982 (=> res!2441547 e!3553714)))

(assert (=> d!1822982 (= res!2441547 ((_ is Nil!63567) (exprs!5681 setElem!38866)))))

(assert (=> d!1822982 (= (forall!14911 (exprs!5681 setElem!38866) lambda!315325) e!3553714)))

(declare-fun b!5785971 () Bool)

(declare-fun e!3553715 () Bool)

(assert (=> b!5785971 (= e!3553714 e!3553715)))

(declare-fun res!2441550 () Bool)

(assert (=> b!5785971 (=> (not res!2441550) (not e!3553715))))

(assert (=> b!5785971 (= res!2441550 (dynLambda!24885 lambda!315325 (h!70015 (exprs!5681 setElem!38866))))))

(declare-fun b!5785972 () Bool)

(assert (=> b!5785972 (= e!3553715 (forall!14911 (t!377030 (exprs!5681 setElem!38866)) lambda!315325))))

(assert (= (and d!1822982 (not res!2441547)) b!5785971))

(assert (= (and b!5785971 res!2441550) b!5785972))

(declare-fun b_lambda!218135 () Bool)

(assert (=> (not b_lambda!218135) (not b!5785971)))

(declare-fun m!6730922 () Bool)

(assert (=> b!5785971 m!6730922))

(declare-fun m!6730924 () Bool)

(assert (=> b!5785972 m!6730924))

(assert (=> d!1822834 d!1822982))

(declare-fun bm!450449 () Bool)

(declare-fun call!450454 () Bool)

(assert (=> bm!450449 (= call!450454 (isEmpty!35467 (tail!11313 s!2326)))))

(declare-fun b!5785973 () Bool)

(declare-fun e!3553720 () Bool)

(declare-fun e!3553717 () Bool)

(assert (=> b!5785973 (= e!3553720 e!3553717)))

(declare-fun c!1024378 () Bool)

(assert (=> b!5785973 (= c!1024378 ((_ is EmptyLang!15797) (derivativeStep!4572 r!7292 (head!12218 s!2326))))))

(declare-fun b!5785974 () Bool)

(declare-fun res!2441557 () Bool)

(declare-fun e!3553721 () Bool)

(assert (=> b!5785974 (=> (not res!2441557) (not e!3553721))))

(assert (=> b!5785974 (= res!2441557 (isEmpty!35467 (tail!11313 (tail!11313 s!2326))))))

(declare-fun b!5785975 () Bool)

(declare-fun res!2441559 () Bool)

(declare-fun e!3553722 () Bool)

(assert (=> b!5785975 (=> res!2441559 e!3553722)))

(assert (=> b!5785975 (= res!2441559 (not ((_ is ElementMatch!15797) (derivativeStep!4572 r!7292 (head!12218 s!2326)))))))

(assert (=> b!5785975 (= e!3553717 e!3553722)))

(declare-fun b!5785976 () Bool)

(declare-fun lt!2296507 () Bool)

(assert (=> b!5785976 (= e!3553720 (= lt!2296507 call!450454))))

(declare-fun b!5785977 () Bool)

(declare-fun e!3553718 () Bool)

(declare-fun e!3553716 () Bool)

(assert (=> b!5785977 (= e!3553718 e!3553716)))

(declare-fun res!2441558 () Bool)

(assert (=> b!5785977 (=> res!2441558 e!3553716)))

(assert (=> b!5785977 (= res!2441558 call!450454)))

(declare-fun d!1822986 () Bool)

(assert (=> d!1822986 e!3553720))

(declare-fun c!1024377 () Bool)

(assert (=> d!1822986 (= c!1024377 ((_ is EmptyExpr!15797) (derivativeStep!4572 r!7292 (head!12218 s!2326))))))

(declare-fun e!3553719 () Bool)

(assert (=> d!1822986 (= lt!2296507 e!3553719)))

(declare-fun c!1024376 () Bool)

(assert (=> d!1822986 (= c!1024376 (isEmpty!35467 (tail!11313 s!2326)))))

(assert (=> d!1822986 (validRegex!7533 (derivativeStep!4572 r!7292 (head!12218 s!2326)))))

(assert (=> d!1822986 (= (matchR!7982 (derivativeStep!4572 r!7292 (head!12218 s!2326)) (tail!11313 s!2326)) lt!2296507)))

(declare-fun b!5785978 () Bool)

(assert (=> b!5785978 (= e!3553717 (not lt!2296507))))

(declare-fun b!5785979 () Bool)

(assert (=> b!5785979 (= e!3553716 (not (= (head!12218 (tail!11313 s!2326)) (c!1024165 (derivativeStep!4572 r!7292 (head!12218 s!2326))))))))

(declare-fun b!5785980 () Bool)

(declare-fun res!2441553 () Bool)

(assert (=> b!5785980 (=> res!2441553 e!3553716)))

(assert (=> b!5785980 (= res!2441553 (not (isEmpty!35467 (tail!11313 (tail!11313 s!2326)))))))

(declare-fun b!5785981 () Bool)

(assert (=> b!5785981 (= e!3553722 e!3553718)))

(declare-fun res!2441552 () Bool)

(assert (=> b!5785981 (=> (not res!2441552) (not e!3553718))))

(assert (=> b!5785981 (= res!2441552 (not lt!2296507))))

(declare-fun b!5785982 () Bool)

(declare-fun res!2441554 () Bool)

(assert (=> b!5785982 (=> res!2441554 e!3553722)))

(assert (=> b!5785982 (= res!2441554 e!3553721)))

(declare-fun res!2441556 () Bool)

(assert (=> b!5785982 (=> (not res!2441556) (not e!3553721))))

(assert (=> b!5785982 (= res!2441556 lt!2296507)))

(declare-fun b!5785983 () Bool)

(assert (=> b!5785983 (= e!3553721 (= (head!12218 (tail!11313 s!2326)) (c!1024165 (derivativeStep!4572 r!7292 (head!12218 s!2326)))))))

(declare-fun b!5785984 () Bool)

(assert (=> b!5785984 (= e!3553719 (nullable!5829 (derivativeStep!4572 r!7292 (head!12218 s!2326))))))

(declare-fun b!5785985 () Bool)

(assert (=> b!5785985 (= e!3553719 (matchR!7982 (derivativeStep!4572 (derivativeStep!4572 r!7292 (head!12218 s!2326)) (head!12218 (tail!11313 s!2326))) (tail!11313 (tail!11313 s!2326))))))

(declare-fun b!5785986 () Bool)

(declare-fun res!2441555 () Bool)

(assert (=> b!5785986 (=> (not res!2441555) (not e!3553721))))

(assert (=> b!5785986 (= res!2441555 (not call!450454))))

(assert (= (and d!1822986 c!1024376) b!5785984))

(assert (= (and d!1822986 (not c!1024376)) b!5785985))

(assert (= (and d!1822986 c!1024377) b!5785976))

(assert (= (and d!1822986 (not c!1024377)) b!5785973))

(assert (= (and b!5785973 c!1024378) b!5785978))

(assert (= (and b!5785973 (not c!1024378)) b!5785975))

(assert (= (and b!5785975 (not res!2441559)) b!5785982))

(assert (= (and b!5785982 res!2441556) b!5785986))

(assert (= (and b!5785986 res!2441555) b!5785974))

(assert (= (and b!5785974 res!2441557) b!5785983))

(assert (= (and b!5785982 (not res!2441554)) b!5785981))

(assert (= (and b!5785981 res!2441552) b!5785977))

(assert (= (and b!5785977 (not res!2441558)) b!5785980))

(assert (= (and b!5785980 (not res!2441553)) b!5785979))

(assert (= (or b!5785976 b!5785977 b!5785986) bm!450449))

(assert (=> b!5785985 m!6730452))

(declare-fun m!6730926 () Bool)

(assert (=> b!5785985 m!6730926))

(assert (=> b!5785985 m!6730450))

(assert (=> b!5785985 m!6730926))

(declare-fun m!6730928 () Bool)

(assert (=> b!5785985 m!6730928))

(assert (=> b!5785985 m!6730452))

(declare-fun m!6730930 () Bool)

(assert (=> b!5785985 m!6730930))

(assert (=> b!5785985 m!6730928))

(assert (=> b!5785985 m!6730930))

(declare-fun m!6730932 () Bool)

(assert (=> b!5785985 m!6730932))

(assert (=> b!5785984 m!6730450))

(declare-fun m!6730934 () Bool)

(assert (=> b!5785984 m!6730934))

(assert (=> b!5785974 m!6730452))

(assert (=> b!5785974 m!6730930))

(assert (=> b!5785974 m!6730930))

(declare-fun m!6730936 () Bool)

(assert (=> b!5785974 m!6730936))

(assert (=> b!5785983 m!6730452))

(assert (=> b!5785983 m!6730926))

(assert (=> d!1822986 m!6730452))

(assert (=> d!1822986 m!6730458))

(assert (=> d!1822986 m!6730450))

(declare-fun m!6730938 () Bool)

(assert (=> d!1822986 m!6730938))

(assert (=> bm!450449 m!6730452))

(assert (=> bm!450449 m!6730458))

(assert (=> b!5785980 m!6730452))

(assert (=> b!5785980 m!6730930))

(assert (=> b!5785980 m!6730930))

(assert (=> b!5785980 m!6730936))

(assert (=> b!5785979 m!6730452))

(assert (=> b!5785979 m!6730926))

(assert (=> b!5785325 d!1822986))

(declare-fun c!1024405 () Bool)

(declare-fun bm!450470 () Bool)

(declare-fun call!450475 () Regex!15797)

(assert (=> bm!450470 (= call!450475 (derivativeStep!4572 (ite c!1024405 (regOne!32107 r!7292) (regOne!32106 r!7292)) (head!12218 s!2326)))))

(declare-fun b!5786052 () Bool)

(declare-fun c!1024401 () Bool)

(assert (=> b!5786052 (= c!1024401 (nullable!5829 (regOne!32106 r!7292)))))

(declare-fun e!3553764 () Regex!15797)

(declare-fun e!3553765 () Regex!15797)

(assert (=> b!5786052 (= e!3553764 e!3553765)))

(declare-fun call!450478 () Regex!15797)

(declare-fun b!5786053 () Bool)

(assert (=> b!5786053 (= e!3553765 (Union!15797 (Concat!24642 call!450475 (regTwo!32106 r!7292)) call!450478))))

(declare-fun b!5786054 () Bool)

(declare-fun e!3553767 () Regex!15797)

(assert (=> b!5786054 (= e!3553767 (ite (= (head!12218 s!2326) (c!1024165 r!7292)) EmptyExpr!15797 EmptyLang!15797))))

(declare-fun b!5786055 () Bool)

(declare-fun e!3553768 () Regex!15797)

(assert (=> b!5786055 (= e!3553768 e!3553767)))

(declare-fun c!1024402 () Bool)

(assert (=> b!5786055 (= c!1024402 ((_ is ElementMatch!15797) r!7292))))

(declare-fun b!5786056 () Bool)

(assert (=> b!5786056 (= c!1024405 ((_ is Union!15797) r!7292))))

(declare-fun e!3553766 () Regex!15797)

(assert (=> b!5786056 (= e!3553767 e!3553766)))

(declare-fun c!1024403 () Bool)

(declare-fun bm!450471 () Bool)

(declare-fun call!450477 () Regex!15797)

(assert (=> bm!450471 (= call!450477 (derivativeStep!4572 (ite c!1024405 (regTwo!32107 r!7292) (ite c!1024403 (reg!16126 r!7292) (ite c!1024401 (regTwo!32106 r!7292) (regOne!32106 r!7292)))) (head!12218 s!2326)))))

(declare-fun bm!450472 () Bool)

(declare-fun call!450476 () Regex!15797)

(assert (=> bm!450472 (= call!450476 call!450477)))

(declare-fun d!1822992 () Bool)

(declare-fun lt!2296514 () Regex!15797)

(assert (=> d!1822992 (validRegex!7533 lt!2296514)))

(assert (=> d!1822992 (= lt!2296514 e!3553768)))

(declare-fun c!1024404 () Bool)

(assert (=> d!1822992 (= c!1024404 (or ((_ is EmptyExpr!15797) r!7292) ((_ is EmptyLang!15797) r!7292)))))

(assert (=> d!1822992 (validRegex!7533 r!7292)))

(assert (=> d!1822992 (= (derivativeStep!4572 r!7292 (head!12218 s!2326)) lt!2296514)))

(declare-fun b!5786057 () Bool)

(assert (=> b!5786057 (= e!3553764 (Concat!24642 call!450476 r!7292))))

(declare-fun bm!450473 () Bool)

(assert (=> bm!450473 (= call!450478 call!450476)))

(declare-fun b!5786058 () Bool)

(assert (=> b!5786058 (= e!3553765 (Union!15797 (Concat!24642 call!450478 (regTwo!32106 r!7292)) EmptyLang!15797))))

(declare-fun b!5786059 () Bool)

(assert (=> b!5786059 (= e!3553766 e!3553764)))

(assert (=> b!5786059 (= c!1024403 ((_ is Star!15797) r!7292))))

(declare-fun b!5786060 () Bool)

(assert (=> b!5786060 (= e!3553768 EmptyLang!15797)))

(declare-fun b!5786061 () Bool)

(assert (=> b!5786061 (= e!3553766 (Union!15797 call!450475 call!450477))))

(assert (= (and d!1822992 c!1024404) b!5786060))

(assert (= (and d!1822992 (not c!1024404)) b!5786055))

(assert (= (and b!5786055 c!1024402) b!5786054))

(assert (= (and b!5786055 (not c!1024402)) b!5786056))

(assert (= (and b!5786056 c!1024405) b!5786061))

(assert (= (and b!5786056 (not c!1024405)) b!5786059))

(assert (= (and b!5786059 c!1024403) b!5786057))

(assert (= (and b!5786059 (not c!1024403)) b!5786052))

(assert (= (and b!5786052 c!1024401) b!5786053))

(assert (= (and b!5786052 (not c!1024401)) b!5786058))

(assert (= (or b!5786053 b!5786058) bm!450473))

(assert (= (or b!5786057 bm!450473) bm!450472))

(assert (= (or b!5786061 bm!450472) bm!450471))

(assert (= (or b!5786061 b!5786053) bm!450470))

(assert (=> bm!450470 m!6730448))

(declare-fun m!6730998 () Bool)

(assert (=> bm!450470 m!6730998))

(assert (=> b!5786052 m!6730638))

(assert (=> bm!450471 m!6730448))

(declare-fun m!6731004 () Bool)

(assert (=> bm!450471 m!6731004))

(declare-fun m!6731006 () Bool)

(assert (=> d!1822992 m!6731006))

(assert (=> d!1822992 m!6730392))

(assert (=> b!5785325 d!1822992))

(declare-fun d!1823012 () Bool)

(assert (=> d!1823012 (= (head!12218 s!2326) (h!70014 s!2326))))

(assert (=> b!5785325 d!1823012))

(assert (=> b!5785325 d!1822904))

(declare-fun d!1823014 () Bool)

(assert (=> d!1823014 (= (Exists!2897 lambda!315362) (choose!43927 lambda!315362))))

(declare-fun bs!1366098 () Bool)

(assert (= bs!1366098 d!1823014))

(declare-fun m!6731008 () Bool)

(assert (=> bs!1366098 m!6731008))

(assert (=> d!1822886 d!1823014))

(declare-fun d!1823016 () Bool)

(assert (=> d!1823016 (= (Exists!2897 lambda!315363) (choose!43927 lambda!315363))))

(declare-fun bs!1366099 () Bool)

(assert (= bs!1366099 d!1823016))

(declare-fun m!6731010 () Bool)

(assert (=> bs!1366099 m!6731010))

(assert (=> d!1822886 d!1823016))

(declare-fun bs!1366109 () Bool)

(declare-fun d!1823018 () Bool)

(assert (= bs!1366109 (and d!1823018 d!1822878)))

(declare-fun lambda!315389 () Int)

(assert (=> bs!1366109 (not (= lambda!315389 lambda!315357))))

(declare-fun bs!1366110 () Bool)

(assert (= bs!1366110 (and d!1823018 b!5785085)))

(assert (=> bs!1366110 (not (= lambda!315389 lambda!315298))))

(declare-fun bs!1366111 () Bool)

(assert (= bs!1366111 (and d!1823018 b!5785880)))

(assert (=> bs!1366111 (not (= lambda!315389 lambda!315370))))

(declare-fun bs!1366112 () Bool)

(assert (= bs!1366112 (and d!1823018 d!1822886)))

(assert (=> bs!1366112 (not (= lambda!315389 lambda!315363))))

(assert (=> bs!1366110 (= lambda!315389 lambda!315296)))

(declare-fun bs!1366113 () Bool)

(assert (= bs!1366113 (and d!1823018 d!1822892)))

(assert (=> bs!1366113 (= lambda!315389 lambda!315366)))

(declare-fun bs!1366114 () Bool)

(assert (= bs!1366114 (and d!1823018 b!5785184)))

(assert (=> bs!1366114 (not (= lambda!315389 lambda!315309))))

(declare-fun bs!1366115 () Bool)

(assert (= bs!1366115 (and d!1823018 d!1822962)))

(assert (=> bs!1366115 (not (= lambda!315389 lambda!315379))))

(assert (=> bs!1366109 (= (= r!7292 (Star!15797 (reg!16126 r!7292))) (= lambda!315389 lambda!315356))))

(assert (=> bs!1366112 (= lambda!315389 lambda!315362)))

(assert (=> bs!1366115 (= (= r!7292 (Star!15797 (reg!16126 r!7292))) (= lambda!315389 lambda!315378))))

(declare-fun bs!1366116 () Bool)

(assert (= bs!1366116 (and d!1823018 b!5785876)))

(assert (=> bs!1366116 (not (= lambda!315389 lambda!315369))))

(declare-fun bs!1366117 () Bool)

(assert (= bs!1366117 (and d!1823018 b!5785814)))

(assert (=> bs!1366117 (not (= lambda!315389 lambda!315367))))

(assert (=> bs!1366110 (not (= lambda!315389 lambda!315297))))

(declare-fun bs!1366118 () Bool)

(assert (= bs!1366118 (and d!1823018 b!5785188)))

(assert (=> bs!1366118 (not (= lambda!315389 lambda!315310))))

(declare-fun bs!1366119 () Bool)

(assert (= bs!1366119 (and d!1823018 b!5785818)))

(assert (=> bs!1366119 (not (= lambda!315389 lambda!315368))))

(assert (=> d!1823018 true))

(assert (=> d!1823018 true))

(assert (=> d!1823018 true))

(declare-fun lambda!315392 () Int)

(assert (=> bs!1366109 (not (= lambda!315392 lambda!315357))))

(assert (=> bs!1366110 (= lambda!315392 lambda!315298)))

(assert (=> bs!1366111 (= (and (= (reg!16126 r!7292) (regOne!32106 (regOne!32107 r!7292))) (= r!7292 (regTwo!32106 (regOne!32107 r!7292)))) (= lambda!315392 lambda!315370))))

(assert (=> bs!1366112 (= lambda!315392 lambda!315363)))

(declare-fun bs!1366123 () Bool)

(assert (= bs!1366123 d!1823018))

(assert (=> bs!1366123 (not (= lambda!315392 lambda!315389))))

(assert (=> bs!1366110 (not (= lambda!315392 lambda!315296))))

(assert (=> bs!1366113 (not (= lambda!315392 lambda!315366))))

(assert (=> bs!1366114 (not (= lambda!315392 lambda!315309))))

(assert (=> bs!1366115 (not (= lambda!315392 lambda!315379))))

(assert (=> bs!1366109 (not (= lambda!315392 lambda!315356))))

(assert (=> bs!1366112 (not (= lambda!315392 lambda!315362))))

(assert (=> bs!1366115 (not (= lambda!315392 lambda!315378))))

(assert (=> bs!1366116 (not (= lambda!315392 lambda!315369))))

(assert (=> bs!1366117 (not (= lambda!315392 lambda!315367))))

(assert (=> bs!1366110 (not (= lambda!315392 lambda!315297))))

(assert (=> bs!1366118 (= (and (= (reg!16126 r!7292) (regOne!32106 r!7292)) (= r!7292 (regTwo!32106 r!7292))) (= lambda!315392 lambda!315310))))

(assert (=> bs!1366119 (= (and (= (reg!16126 r!7292) (regOne!32106 (regTwo!32107 r!7292))) (= r!7292 (regTwo!32106 (regTwo!32107 r!7292)))) (= lambda!315392 lambda!315368))))

(assert (=> d!1823018 true))

(assert (=> d!1823018 true))

(assert (=> d!1823018 true))

(assert (=> d!1823018 (= (Exists!2897 lambda!315389) (Exists!2897 lambda!315392))))

(assert (=> d!1823018 true))

(declare-fun _$90!1523 () Unit!156854)

(assert (=> d!1823018 (= (choose!43928 (reg!16126 r!7292) r!7292 s!2326) _$90!1523)))

(declare-fun m!6731040 () Bool)

(assert (=> bs!1366123 m!6731040))

(declare-fun m!6731042 () Bool)

(assert (=> bs!1366123 m!6731042))

(assert (=> d!1822886 d!1823018))

(assert (=> d!1822886 d!1822972))

(declare-fun b!5786087 () Bool)

(declare-fun res!2441600 () Bool)

(declare-fun e!3553787 () Bool)

(assert (=> b!5786087 (=> (not res!2441600) (not e!3553787))))

(declare-fun call!450480 () Bool)

(assert (=> b!5786087 (= res!2441600 call!450480)))

(declare-fun e!3553784 () Bool)

(assert (=> b!5786087 (= e!3553784 e!3553787)))

(declare-fun bm!450474 () Bool)

(declare-fun call!450479 () Bool)

(declare-fun call!450481 () Bool)

(assert (=> bm!450474 (= call!450479 call!450481)))

(declare-fun b!5786088 () Bool)

(declare-fun e!3553783 () Bool)

(declare-fun e!3553786 () Bool)

(assert (=> b!5786088 (= e!3553783 e!3553786)))

(declare-fun res!2441602 () Bool)

(assert (=> b!5786088 (=> (not res!2441602) (not e!3553786))))

(assert (=> b!5786088 (= res!2441602 call!450480)))

(declare-fun b!5786089 () Bool)

(declare-fun e!3553782 () Bool)

(declare-fun e!3553788 () Bool)

(assert (=> b!5786089 (= e!3553782 e!3553788)))

(declare-fun res!2441604 () Bool)

(assert (=> b!5786089 (= res!2441604 (not (nullable!5829 (reg!16126 (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))))))))

(assert (=> b!5786089 (=> (not res!2441604) (not e!3553788))))

(declare-fun b!5786090 () Bool)

(declare-fun e!3553785 () Bool)

(assert (=> b!5786090 (= e!3553785 e!3553782)))

(declare-fun c!1024409 () Bool)

(assert (=> b!5786090 (= c!1024409 ((_ is Star!15797) (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))))))

(declare-fun bm!450475 () Bool)

(declare-fun c!1024408 () Bool)

(assert (=> bm!450475 (= call!450480 (validRegex!7533 (ite c!1024408 (regOne!32107 (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))) (regOne!32106 (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))))))))

(declare-fun b!5786091 () Bool)

(assert (=> b!5786091 (= e!3553786 call!450479)))

(declare-fun b!5786092 () Bool)

(declare-fun res!2441601 () Bool)

(assert (=> b!5786092 (=> res!2441601 e!3553783)))

(assert (=> b!5786092 (= res!2441601 (not ((_ is Concat!24642) (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292))))))))

(assert (=> b!5786092 (= e!3553784 e!3553783)))

(declare-fun d!1823030 () Bool)

(declare-fun res!2441603 () Bool)

(assert (=> d!1823030 (=> res!2441603 e!3553785)))

(assert (=> d!1823030 (= res!2441603 ((_ is ElementMatch!15797) (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))))))

(assert (=> d!1823030 (= (validRegex!7533 (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))) e!3553785)))

(declare-fun b!5786093 () Bool)

(assert (=> b!5786093 (= e!3553782 e!3553784)))

(assert (=> b!5786093 (= c!1024408 ((_ is Union!15797) (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))))))

(declare-fun bm!450476 () Bool)

(assert (=> bm!450476 (= call!450481 (validRegex!7533 (ite c!1024409 (reg!16126 (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))) (ite c!1024408 (regTwo!32107 (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292)))) (regTwo!32106 (ite c!1024261 (reg!16126 r!7292) (ite c!1024260 (regTwo!32107 r!7292) (regTwo!32106 r!7292))))))))))

(declare-fun b!5786094 () Bool)

(assert (=> b!5786094 (= e!3553788 call!450481)))

(declare-fun b!5786095 () Bool)

(assert (=> b!5786095 (= e!3553787 call!450479)))

(assert (= (and d!1823030 (not res!2441603)) b!5786090))

(assert (= (and b!5786090 c!1024409) b!5786089))

(assert (= (and b!5786090 (not c!1024409)) b!5786093))

(assert (= (and b!5786089 res!2441604) b!5786094))

(assert (= (and b!5786093 c!1024408) b!5786087))

(assert (= (and b!5786093 (not c!1024408)) b!5786092))

(assert (= (and b!5786087 res!2441600) b!5786095))

(assert (= (and b!5786092 (not res!2441601)) b!5786088))

(assert (= (and b!5786088 res!2441602) b!5786091))

(assert (= (or b!5786095 b!5786091) bm!450474))

(assert (= (or b!5786087 b!5786088) bm!450475))

(assert (= (or b!5786094 bm!450474) bm!450476))

(declare-fun m!6731044 () Bool)

(assert (=> b!5786089 m!6731044))

(declare-fun m!6731046 () Bool)

(assert (=> bm!450475 m!6731046))

(declare-fun m!6731048 () Bool)

(assert (=> bm!450476 m!6731048))

(assert (=> bm!450389 d!1823030))

(assert (=> b!5785323 d!1823012))

(declare-fun d!1823032 () Bool)

(assert (=> d!1823032 (= (isUnion!716 lt!2296452) ((_ is Union!15797) lt!2296452))))

(assert (=> b!5785464 d!1823032))

(assert (=> b!5785319 d!1823012))

(declare-fun d!1823034 () Bool)

(assert (=> d!1823034 (= (isEmpty!35471 (t!377030 (exprs!5681 (h!70016 zl!343)))) ((_ is Nil!63567) (t!377030 (exprs!5681 (h!70016 zl!343)))))))

(assert (=> b!5785555 d!1823034))

(assert (=> d!1822892 d!1822876))

(declare-fun d!1823038 () Bool)

(assert (=> d!1823038 (= (Exists!2897 lambda!315366) (choose!43927 lambda!315366))))

(declare-fun bs!1366130 () Bool)

(assert (= bs!1366130 d!1823038))

(declare-fun m!6731054 () Bool)

(assert (=> bs!1366130 m!6731054))

(assert (=> d!1822892 d!1823038))

(declare-fun bs!1366151 () Bool)

(declare-fun d!1823040 () Bool)

(assert (= bs!1366151 (and d!1823040 d!1822878)))

(declare-fun lambda!315399 () Int)

(assert (=> bs!1366151 (not (= lambda!315399 lambda!315357))))

(declare-fun bs!1366152 () Bool)

(assert (= bs!1366152 (and d!1823040 b!5785085)))

(assert (=> bs!1366152 (not (= lambda!315399 lambda!315298))))

(declare-fun bs!1366153 () Bool)

(assert (= bs!1366153 (and d!1823040 b!5785880)))

(assert (=> bs!1366153 (not (= lambda!315399 lambda!315370))))

(declare-fun bs!1366154 () Bool)

(assert (= bs!1366154 (and d!1823040 d!1822886)))

(assert (=> bs!1366154 (not (= lambda!315399 lambda!315363))))

(declare-fun bs!1366155 () Bool)

(assert (= bs!1366155 (and d!1823040 d!1823018)))

(assert (=> bs!1366155 (= lambda!315399 lambda!315389)))

(assert (=> bs!1366152 (= lambda!315399 lambda!315296)))

(declare-fun bs!1366156 () Bool)

(assert (= bs!1366156 (and d!1823040 d!1822892)))

(assert (=> bs!1366156 (= lambda!315399 lambda!315366)))

(declare-fun bs!1366157 () Bool)

(assert (= bs!1366157 (and d!1823040 b!5785184)))

(assert (=> bs!1366157 (not (= lambda!315399 lambda!315309))))

(declare-fun bs!1366158 () Bool)

(assert (= bs!1366158 (and d!1823040 d!1822962)))

(assert (=> bs!1366158 (not (= lambda!315399 lambda!315379))))

(assert (=> bs!1366154 (= lambda!315399 lambda!315362)))

(assert (=> bs!1366158 (= (= r!7292 (Star!15797 (reg!16126 r!7292))) (= lambda!315399 lambda!315378))))

(declare-fun bs!1366160 () Bool)

(assert (= bs!1366160 (and d!1823040 b!5785876)))

(assert (=> bs!1366160 (not (= lambda!315399 lambda!315369))))

(declare-fun bs!1366161 () Bool)

(assert (= bs!1366161 (and d!1823040 b!5785814)))

(assert (=> bs!1366161 (not (= lambda!315399 lambda!315367))))

(assert (=> bs!1366152 (not (= lambda!315399 lambda!315297))))

(assert (=> bs!1366151 (= (= r!7292 (Star!15797 (reg!16126 r!7292))) (= lambda!315399 lambda!315356))))

(assert (=> bs!1366155 (not (= lambda!315399 lambda!315392))))

(declare-fun bs!1366162 () Bool)

(assert (= bs!1366162 (and d!1823040 b!5785188)))

(assert (=> bs!1366162 (not (= lambda!315399 lambda!315310))))

(declare-fun bs!1366163 () Bool)

(assert (= bs!1366163 (and d!1823040 b!5785818)))

(assert (=> bs!1366163 (not (= lambda!315399 lambda!315368))))

(assert (=> d!1823040 true))

(assert (=> d!1823040 true))

(assert (=> d!1823040 true))

(assert (=> d!1823040 (= (isDefined!12509 (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 Nil!63566 s!2326 s!2326)) (Exists!2897 lambda!315399))))

(assert (=> d!1823040 true))

(declare-fun _$89!1897 () Unit!156854)

(assert (=> d!1823040 (= (choose!43929 (reg!16126 r!7292) r!7292 s!2326) _$89!1897)))

(declare-fun bs!1366164 () Bool)

(assert (= bs!1366164 d!1823040))

(assert (=> bs!1366164 m!6730374))

(assert (=> bs!1366164 m!6730374))

(assert (=> bs!1366164 m!6730376))

(declare-fun m!6731084 () Bool)

(assert (=> bs!1366164 m!6731084))

(assert (=> d!1822892 d!1823040))

(assert (=> d!1822892 d!1822890))

(assert (=> d!1822892 d!1822972))

(assert (=> d!1822822 d!1822810))

(assert (=> d!1822822 d!1822804))

(declare-fun d!1823058 () Bool)

(assert (=> d!1823058 (= (matchR!7982 r!7292 s!2326) (matchRSpec!2900 r!7292 s!2326))))

(assert (=> d!1823058 true))

(declare-fun _$88!4094 () Unit!156854)

(assert (=> d!1823058 (= (choose!43923 r!7292 s!2326) _$88!4094)))

(declare-fun bs!1366167 () Bool)

(assert (= bs!1366167 d!1823058))

(assert (=> bs!1366167 m!6730388))

(assert (=> bs!1366167 m!6730386))

(assert (=> d!1822822 d!1823058))

(assert (=> d!1822822 d!1822838))

(declare-fun bm!450489 () Bool)

(declare-fun call!450498 () List!63691)

(declare-fun call!450494 () List!63691)

(assert (=> bm!450489 (= call!450498 call!450494)))

(declare-fun b!5786152 () Bool)

(declare-fun e!3553831 () Bool)

(assert (=> b!5786152 (= e!3553831 (nullable!5829 (regOne!32106 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))))))

(declare-fun b!5786153 () Bool)

(declare-fun e!3553828 () (InoxSet Context!10362))

(declare-fun call!450497 () (InoxSet Context!10362))

(declare-fun call!450496 () (InoxSet Context!10362))

(assert (=> b!5786153 (= e!3553828 ((_ map or) call!450497 call!450496))))

(declare-fun bm!450490 () Bool)

(declare-fun c!1024427 () Bool)

(declare-fun c!1024424 () Bool)

(assert (=> bm!450490 (= call!450494 ($colon$colon!1784 (exprs!5681 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))) (ite (or c!1024424 c!1024427) (regTwo!32106 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))))))

(declare-fun b!5786154 () Bool)

(declare-fun e!3553830 () (InoxSet Context!10362))

(assert (=> b!5786154 (= e!3553830 ((as const (Array Context!10362 Bool)) false))))

(declare-fun b!5786155 () Bool)

(declare-fun e!3553829 () (InoxSet Context!10362))

(assert (=> b!5786155 (= e!3553828 e!3553829)))

(assert (=> b!5786155 (= c!1024427 ((_ is Concat!24642) (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))))

(declare-fun d!1823066 () Bool)

(declare-fun c!1024425 () Bool)

(assert (=> d!1823066 (= c!1024425 (and ((_ is ElementMatch!15797) (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (= (c!1024165 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (h!70014 s!2326))))))

(declare-fun e!3553826 () (InoxSet Context!10362))

(assert (=> d!1823066 (= (derivationStepZipperDown!1135 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))) (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (h!70014 s!2326)) e!3553826)))

(declare-fun b!5786156 () Bool)

(declare-fun c!1024426 () Bool)

(assert (=> b!5786156 (= c!1024426 ((_ is Star!15797) (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))))

(assert (=> b!5786156 (= e!3553829 e!3553830)))

(declare-fun b!5786157 () Bool)

(assert (=> b!5786157 (= c!1024424 e!3553831)))

(declare-fun res!2441635 () Bool)

(assert (=> b!5786157 (=> (not res!2441635) (not e!3553831))))

(assert (=> b!5786157 (= res!2441635 ((_ is Concat!24642) (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))))

(declare-fun e!3553827 () (InoxSet Context!10362))

(assert (=> b!5786157 (= e!3553827 e!3553828)))

(declare-fun b!5786158 () Bool)

(declare-fun call!450495 () (InoxSet Context!10362))

(assert (=> b!5786158 (= e!3553827 ((_ map or) call!450497 call!450495))))

(declare-fun b!5786159 () Bool)

(assert (=> b!5786159 (= e!3553826 (store ((as const (Array Context!10362 Bool)) false) (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) true))))

(declare-fun bm!450491 () Bool)

(declare-fun call!450499 () (InoxSet Context!10362))

(assert (=> bm!450491 (= call!450499 call!450496)))

(declare-fun bm!450492 () Bool)

(declare-fun c!1024423 () Bool)

(assert (=> bm!450492 (= call!450495 (derivationStepZipperDown!1135 (ite c!1024423 (regTwo!32107 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (ite c!1024424 (regTwo!32106 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (ite c!1024427 (regOne!32106 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (reg!16126 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))))) (ite (or c!1024423 c!1024424) (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (Context!10363 call!450498)) (h!70014 s!2326)))))

(declare-fun b!5786160 () Bool)

(assert (=> b!5786160 (= e!3553830 call!450499)))

(declare-fun bm!450493 () Bool)

(assert (=> bm!450493 (= call!450496 call!450495)))

(declare-fun b!5786161 () Bool)

(assert (=> b!5786161 (= e!3553829 call!450499)))

(declare-fun bm!450494 () Bool)

(assert (=> bm!450494 (= call!450497 (derivationStepZipperDown!1135 (ite c!1024423 (regOne!32107 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (regOne!32106 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))) (ite c!1024423 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (Context!10363 call!450494)) (h!70014 s!2326)))))

(declare-fun b!5786162 () Bool)

(assert (=> b!5786162 (= e!3553826 e!3553827)))

(assert (=> b!5786162 (= c!1024423 ((_ is Union!15797) (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))))

(assert (= (and d!1823066 c!1024425) b!5786159))

(assert (= (and d!1823066 (not c!1024425)) b!5786162))

(assert (= (and b!5786162 c!1024423) b!5786158))

(assert (= (and b!5786162 (not c!1024423)) b!5786157))

(assert (= (and b!5786157 res!2441635) b!5786152))

(assert (= (and b!5786157 c!1024424) b!5786153))

(assert (= (and b!5786157 (not c!1024424)) b!5786155))

(assert (= (and b!5786155 c!1024427) b!5786161))

(assert (= (and b!5786155 (not c!1024427)) b!5786156))

(assert (= (and b!5786156 c!1024426) b!5786160))

(assert (= (and b!5786156 (not c!1024426)) b!5786154))

(assert (= (or b!5786161 b!5786160) bm!450489))

(assert (= (or b!5786161 b!5786160) bm!450491))

(assert (= (or b!5786153 bm!450489) bm!450490))

(assert (= (or b!5786153 bm!450491) bm!450493))

(assert (= (or b!5786158 bm!450493) bm!450492))

(assert (= (or b!5786158 b!5786153) bm!450494))

(declare-fun m!6731102 () Bool)

(assert (=> b!5786152 m!6731102))

(declare-fun m!6731104 () Bool)

(assert (=> bm!450492 m!6731104))

(declare-fun m!6731106 () Bool)

(assert (=> b!5786159 m!6731106))

(declare-fun m!6731108 () Bool)

(assert (=> bm!450490 m!6731108))

(declare-fun m!6731110 () Bool)

(assert (=> bm!450494 m!6731110))

(assert (=> bm!450401 d!1823066))

(declare-fun d!1823068 () Bool)

(assert (=> d!1823068 (= (isDefined!12509 lt!2296483) (not (isEmpty!35472 lt!2296483)))))

(declare-fun bs!1366168 () Bool)

(assert (= bs!1366168 d!1823068))

(declare-fun m!6731112 () Bool)

(assert (=> bs!1366168 m!6731112))

(assert (=> d!1822890 d!1823068))

(declare-fun bm!450495 () Bool)

(declare-fun call!450500 () Bool)

(assert (=> bm!450495 (= call!450500 (isEmpty!35467 Nil!63566))))

(declare-fun b!5786163 () Bool)

(declare-fun e!3553836 () Bool)

(declare-fun e!3553833 () Bool)

(assert (=> b!5786163 (= e!3553836 e!3553833)))

(declare-fun c!1024430 () Bool)

(assert (=> b!5786163 (= c!1024430 ((_ is EmptyLang!15797) (reg!16126 r!7292)))))

(declare-fun b!5786164 () Bool)

(declare-fun res!2441641 () Bool)

(declare-fun e!3553837 () Bool)

(assert (=> b!5786164 (=> (not res!2441641) (not e!3553837))))

(assert (=> b!5786164 (= res!2441641 (isEmpty!35467 (tail!11313 Nil!63566)))))

(declare-fun b!5786165 () Bool)

(declare-fun res!2441643 () Bool)

(declare-fun e!3553838 () Bool)

(assert (=> b!5786165 (=> res!2441643 e!3553838)))

(assert (=> b!5786165 (= res!2441643 (not ((_ is ElementMatch!15797) (reg!16126 r!7292))))))

(assert (=> b!5786165 (= e!3553833 e!3553838)))

(declare-fun b!5786166 () Bool)

(declare-fun lt!2296520 () Bool)

(assert (=> b!5786166 (= e!3553836 (= lt!2296520 call!450500))))

(declare-fun b!5786167 () Bool)

(declare-fun e!3553834 () Bool)

(declare-fun e!3553832 () Bool)

(assert (=> b!5786167 (= e!3553834 e!3553832)))

(declare-fun res!2441642 () Bool)

(assert (=> b!5786167 (=> res!2441642 e!3553832)))

(assert (=> b!5786167 (= res!2441642 call!450500)))

(declare-fun d!1823070 () Bool)

(assert (=> d!1823070 e!3553836))

(declare-fun c!1024429 () Bool)

(assert (=> d!1823070 (= c!1024429 ((_ is EmptyExpr!15797) (reg!16126 r!7292)))))

(declare-fun e!3553835 () Bool)

(assert (=> d!1823070 (= lt!2296520 e!3553835)))

(declare-fun c!1024428 () Bool)

(assert (=> d!1823070 (= c!1024428 (isEmpty!35467 Nil!63566))))

(assert (=> d!1823070 (validRegex!7533 (reg!16126 r!7292))))

(assert (=> d!1823070 (= (matchR!7982 (reg!16126 r!7292) Nil!63566) lt!2296520)))

(declare-fun b!5786168 () Bool)

(assert (=> b!5786168 (= e!3553833 (not lt!2296520))))

(declare-fun b!5786169 () Bool)

(assert (=> b!5786169 (= e!3553832 (not (= (head!12218 Nil!63566) (c!1024165 (reg!16126 r!7292)))))))

(declare-fun b!5786170 () Bool)

(declare-fun res!2441637 () Bool)

(assert (=> b!5786170 (=> res!2441637 e!3553832)))

(assert (=> b!5786170 (= res!2441637 (not (isEmpty!35467 (tail!11313 Nil!63566))))))

(declare-fun b!5786171 () Bool)

(assert (=> b!5786171 (= e!3553838 e!3553834)))

(declare-fun res!2441636 () Bool)

(assert (=> b!5786171 (=> (not res!2441636) (not e!3553834))))

(assert (=> b!5786171 (= res!2441636 (not lt!2296520))))

(declare-fun b!5786172 () Bool)

(declare-fun res!2441638 () Bool)

(assert (=> b!5786172 (=> res!2441638 e!3553838)))

(assert (=> b!5786172 (= res!2441638 e!3553837)))

(declare-fun res!2441640 () Bool)

(assert (=> b!5786172 (=> (not res!2441640) (not e!3553837))))

(assert (=> b!5786172 (= res!2441640 lt!2296520)))

(declare-fun b!5786173 () Bool)

(assert (=> b!5786173 (= e!3553837 (= (head!12218 Nil!63566) (c!1024165 (reg!16126 r!7292))))))

(declare-fun b!5786174 () Bool)

(assert (=> b!5786174 (= e!3553835 (nullable!5829 (reg!16126 r!7292)))))

(declare-fun b!5786175 () Bool)

(assert (=> b!5786175 (= e!3553835 (matchR!7982 (derivativeStep!4572 (reg!16126 r!7292) (head!12218 Nil!63566)) (tail!11313 Nil!63566)))))

(declare-fun b!5786176 () Bool)

(declare-fun res!2441639 () Bool)

(assert (=> b!5786176 (=> (not res!2441639) (not e!3553837))))

(assert (=> b!5786176 (= res!2441639 (not call!450500))))

(assert (= (and d!1823070 c!1024428) b!5786174))

(assert (= (and d!1823070 (not c!1024428)) b!5786175))

(assert (= (and d!1823070 c!1024429) b!5786166))

(assert (= (and d!1823070 (not c!1024429)) b!5786163))

(assert (= (and b!5786163 c!1024430) b!5786168))

(assert (= (and b!5786163 (not c!1024430)) b!5786165))

(assert (= (and b!5786165 (not res!2441643)) b!5786172))

(assert (= (and b!5786172 res!2441640) b!5786176))

(assert (= (and b!5786176 res!2441639) b!5786164))

(assert (= (and b!5786164 res!2441641) b!5786173))

(assert (= (and b!5786172 (not res!2441638)) b!5786171))

(assert (= (and b!5786171 res!2441636) b!5786167))

(assert (= (and b!5786167 (not res!2441642)) b!5786170))

(assert (= (and b!5786170 (not res!2441637)) b!5786169))

(assert (= (or b!5786166 b!5786167 b!5786176) bm!450495))

(declare-fun m!6731114 () Bool)

(assert (=> b!5786175 m!6731114))

(assert (=> b!5786175 m!6731114))

(declare-fun m!6731116 () Bool)

(assert (=> b!5786175 m!6731116))

(declare-fun m!6731118 () Bool)

(assert (=> b!5786175 m!6731118))

(assert (=> b!5786175 m!6731116))

(assert (=> b!5786175 m!6731118))

(declare-fun m!6731120 () Bool)

(assert (=> b!5786175 m!6731120))

(assert (=> b!5786174 m!6730534))

(assert (=> b!5786164 m!6731118))

(assert (=> b!5786164 m!6731118))

(declare-fun m!6731122 () Bool)

(assert (=> b!5786164 m!6731122))

(assert (=> b!5786173 m!6731114))

(declare-fun m!6731124 () Bool)

(assert (=> d!1823070 m!6731124))

(assert (=> d!1823070 m!6730658))

(assert (=> bm!450495 m!6731124))

(assert (=> b!5786170 m!6731118))

(assert (=> b!5786170 m!6731118))

(assert (=> b!5786170 m!6731122))

(assert (=> b!5786169 m!6731114))

(assert (=> d!1822890 d!1823070))

(assert (=> d!1822890 d!1822972))

(assert (=> bm!450353 d!1822882))

(assert (=> b!5785713 d!1822810))

(declare-fun d!1823072 () Bool)

(assert (=> d!1823072 (= (isEmpty!35472 (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 Nil!63566 s!2326 s!2326)) (not ((_ is Some!15805) (findConcatSeparation!2220 (reg!16126 r!7292) r!7292 Nil!63566 s!2326 s!2326))))))

(assert (=> d!1822876 d!1823072))

(assert (=> d!1822810 d!1822882))

(assert (=> d!1822810 d!1822838))

(declare-fun d!1823074 () Bool)

(assert (=> d!1823074 (= (Exists!2897 (ite c!1024186 lambda!315309 lambda!315310)) (choose!43927 (ite c!1024186 lambda!315309 lambda!315310)))))

(declare-fun bs!1366169 () Bool)

(assert (= bs!1366169 d!1823074))

(declare-fun m!6731126 () Bool)

(assert (=> bs!1366169 m!6731126))

(assert (=> bm!450352 d!1823074))

(declare-fun b!5786181 () Bool)

(declare-fun res!2441648 () Bool)

(declare-fun e!3553846 () Bool)

(assert (=> b!5786181 (=> (not res!2441648) (not e!3553846))))

(declare-fun call!450502 () Bool)

(assert (=> b!5786181 (= res!2441648 call!450502)))

(declare-fun e!3553843 () Bool)

(assert (=> b!5786181 (= e!3553843 e!3553846)))

(declare-fun bm!450496 () Bool)

(declare-fun call!450501 () Bool)

(declare-fun call!450503 () Bool)

(assert (=> bm!450496 (= call!450501 call!450503)))

(declare-fun b!5786182 () Bool)

(declare-fun e!3553842 () Bool)

(declare-fun e!3553845 () Bool)

(assert (=> b!5786182 (= e!3553842 e!3553845)))

(declare-fun res!2441650 () Bool)

(assert (=> b!5786182 (=> (not res!2441650) (not e!3553845))))

(assert (=> b!5786182 (= res!2441650 call!450502)))

(declare-fun b!5786183 () Bool)

(declare-fun e!3553841 () Bool)

(declare-fun e!3553847 () Bool)

(assert (=> b!5786183 (= e!3553841 e!3553847)))

(declare-fun res!2441652 () Bool)

(assert (=> b!5786183 (= res!2441652 (not (nullable!5829 (reg!16126 (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))))))))

(assert (=> b!5786183 (=> (not res!2441652) (not e!3553847))))

(declare-fun b!5786184 () Bool)

(declare-fun e!3553844 () Bool)

(assert (=> b!5786184 (= e!3553844 e!3553841)))

(declare-fun c!1024432 () Bool)

(assert (=> b!5786184 (= c!1024432 ((_ is Star!15797) (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))))))

(declare-fun bm!450497 () Bool)

(declare-fun c!1024431 () Bool)

(assert (=> bm!450497 (= call!450502 (validRegex!7533 (ite c!1024431 (regOne!32107 (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))) (regOne!32106 (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))))))))

(declare-fun b!5786185 () Bool)

(assert (=> b!5786185 (= e!3553845 call!450501)))

(declare-fun b!5786186 () Bool)

(declare-fun res!2441649 () Bool)

(assert (=> b!5786186 (=> res!2441649 e!3553842)))

(assert (=> b!5786186 (= res!2441649 (not ((_ is Concat!24642) (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292)))))))

(assert (=> b!5786186 (= e!3553843 e!3553842)))

(declare-fun d!1823076 () Bool)

(declare-fun res!2441651 () Bool)

(assert (=> d!1823076 (=> res!2441651 e!3553844)))

(assert (=> d!1823076 (= res!2441651 ((_ is ElementMatch!15797) (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))))))

(assert (=> d!1823076 (= (validRegex!7533 (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))) e!3553844)))

(declare-fun b!5786187 () Bool)

(assert (=> b!5786187 (= e!3553841 e!3553843)))

(assert (=> b!5786187 (= c!1024431 ((_ is Union!15797) (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))))))

(declare-fun bm!450498 () Bool)

(assert (=> bm!450498 (= call!450503 (validRegex!7533 (ite c!1024432 (reg!16126 (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))) (ite c!1024431 (regTwo!32107 (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292))) (regTwo!32106 (ite c!1024260 (regOne!32107 r!7292) (regOne!32106 r!7292)))))))))

(declare-fun b!5786188 () Bool)

(assert (=> b!5786188 (= e!3553847 call!450503)))

(declare-fun b!5786189 () Bool)

(assert (=> b!5786189 (= e!3553846 call!450501)))

(assert (= (and d!1823076 (not res!2441651)) b!5786184))

(assert (= (and b!5786184 c!1024432) b!5786183))

(assert (= (and b!5786184 (not c!1024432)) b!5786187))

(assert (= (and b!5786183 res!2441652) b!5786188))

(assert (= (and b!5786187 c!1024431) b!5786181))

(assert (= (and b!5786187 (not c!1024431)) b!5786186))

(assert (= (and b!5786181 res!2441648) b!5786189))

(assert (= (and b!5786186 (not res!2441649)) b!5786182))

(assert (= (and b!5786182 res!2441650) b!5786185))

(assert (= (or b!5786189 b!5786185) bm!450496))

(assert (= (or b!5786181 b!5786182) bm!450497))

(assert (= (or b!5786188 bm!450496) bm!450498))

(declare-fun m!6731128 () Bool)

(assert (=> b!5786183 m!6731128))

(declare-fun m!6731130 () Bool)

(assert (=> bm!450497 m!6731130))

(declare-fun m!6731132 () Bool)

(assert (=> bm!450498 m!6731132))

(assert (=> bm!450388 d!1823076))

(declare-fun d!1823078 () Bool)

(assert (=> d!1823078 true))

(assert (=> d!1823078 true))

(declare-fun res!2441659 () Bool)

(assert (=> d!1823078 (= (choose!43927 lambda!315297) res!2441659)))

(assert (=> d!1822888 d!1823078))

(declare-fun d!1823080 () Bool)

(assert (=> d!1823080 (= (isConcat!800 lt!2296470) ((_ is Concat!24642) lt!2296470))))

(assert (=> b!5785549 d!1823080))

(assert (=> b!5785711 d!1823068))

(declare-fun bm!450499 () Bool)

(declare-fun call!450508 () List!63691)

(declare-fun call!450504 () List!63691)

(assert (=> bm!450499 (= call!450508 call!450504)))

(declare-fun b!5786196 () Bool)

(declare-fun e!3553855 () Bool)

(assert (=> b!5786196 (= e!3553855 (nullable!5829 (regOne!32106 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292)))))))

(declare-fun b!5786197 () Bool)

(declare-fun e!3553852 () (InoxSet Context!10362))

(declare-fun call!450507 () (InoxSet Context!10362))

(declare-fun call!450506 () (InoxSet Context!10362))

(assert (=> b!5786197 (= e!3553852 ((_ map or) call!450507 call!450506))))

(declare-fun bm!450500 () Bool)

(declare-fun c!1024437 () Bool)

(declare-fun c!1024434 () Bool)

(assert (=> bm!450500 (= call!450504 ($colon$colon!1784 (exprs!5681 (ite c!1024317 (Context!10363 Nil!63567) (Context!10363 call!450419))) (ite (or c!1024434 c!1024437) (regTwo!32106 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))) (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292)))))))

(declare-fun b!5786198 () Bool)

(declare-fun e!3553854 () (InoxSet Context!10362))

(assert (=> b!5786198 (= e!3553854 ((as const (Array Context!10362 Bool)) false))))

(declare-fun b!5786199 () Bool)

(declare-fun e!3553853 () (InoxSet Context!10362))

(assert (=> b!5786199 (= e!3553852 e!3553853)))

(assert (=> b!5786199 (= c!1024437 ((_ is Concat!24642) (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))))))

(declare-fun d!1823082 () Bool)

(declare-fun c!1024435 () Bool)

(assert (=> d!1823082 (= c!1024435 (and ((_ is ElementMatch!15797) (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))) (= (c!1024165 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))) (h!70014 s!2326))))))

(declare-fun e!3553850 () (InoxSet Context!10362))

(assert (=> d!1823082 (= (derivationStepZipperDown!1135 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292)) (ite c!1024317 (Context!10363 Nil!63567) (Context!10363 call!450419)) (h!70014 s!2326)) e!3553850)))

(declare-fun b!5786200 () Bool)

(declare-fun c!1024436 () Bool)

(assert (=> b!5786200 (= c!1024436 ((_ is Star!15797) (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))))))

(assert (=> b!5786200 (= e!3553853 e!3553854)))

(declare-fun b!5786201 () Bool)

(assert (=> b!5786201 (= c!1024434 e!3553855)))

(declare-fun res!2441662 () Bool)

(assert (=> b!5786201 (=> (not res!2441662) (not e!3553855))))

(assert (=> b!5786201 (= res!2441662 ((_ is Concat!24642) (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))))))

(declare-fun e!3553851 () (InoxSet Context!10362))

(assert (=> b!5786201 (= e!3553851 e!3553852)))

(declare-fun b!5786202 () Bool)

(declare-fun call!450505 () (InoxSet Context!10362))

(assert (=> b!5786202 (= e!3553851 ((_ map or) call!450507 call!450505))))

(declare-fun b!5786203 () Bool)

(assert (=> b!5786203 (= e!3553850 (store ((as const (Array Context!10362 Bool)) false) (ite c!1024317 (Context!10363 Nil!63567) (Context!10363 call!450419)) true))))

(declare-fun bm!450501 () Bool)

(declare-fun call!450509 () (InoxSet Context!10362))

(assert (=> bm!450501 (= call!450509 call!450506)))

(declare-fun bm!450502 () Bool)

(declare-fun c!1024433 () Bool)

(assert (=> bm!450502 (= call!450505 (derivationStepZipperDown!1135 (ite c!1024433 (regTwo!32107 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))) (ite c!1024434 (regTwo!32106 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))) (ite c!1024437 (regOne!32106 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))) (reg!16126 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292)))))) (ite (or c!1024433 c!1024434) (ite c!1024317 (Context!10363 Nil!63567) (Context!10363 call!450419)) (Context!10363 call!450508)) (h!70014 s!2326)))))

(declare-fun b!5786204 () Bool)

(assert (=> b!5786204 (= e!3553854 call!450509)))

(declare-fun bm!450503 () Bool)

(assert (=> bm!450503 (= call!450506 call!450505)))

(declare-fun b!5786205 () Bool)

(assert (=> b!5786205 (= e!3553853 call!450509)))

(declare-fun bm!450504 () Bool)

(assert (=> bm!450504 (= call!450507 (derivationStepZipperDown!1135 (ite c!1024433 (regOne!32107 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))) (regOne!32106 (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292)))) (ite c!1024433 (ite c!1024317 (Context!10363 Nil!63567) (Context!10363 call!450419)) (Context!10363 call!450504)) (h!70014 s!2326)))))

(declare-fun b!5786206 () Bool)

(assert (=> b!5786206 (= e!3553850 e!3553851)))

(assert (=> b!5786206 (= c!1024433 ((_ is Union!15797) (ite c!1024317 (regOne!32107 r!7292) (regOne!32106 r!7292))))))

(assert (= (and d!1823082 c!1024435) b!5786203))

(assert (= (and d!1823082 (not c!1024435)) b!5786206))

(assert (= (and b!5786206 c!1024433) b!5786202))

(assert (= (and b!5786206 (not c!1024433)) b!5786201))

(assert (= (and b!5786201 res!2441662) b!5786196))

(assert (= (and b!5786201 c!1024434) b!5786197))

(assert (= (and b!5786201 (not c!1024434)) b!5786199))

(assert (= (and b!5786199 c!1024437) b!5786205))

(assert (= (and b!5786199 (not c!1024437)) b!5786200))

(assert (= (and b!5786200 c!1024436) b!5786204))

(assert (= (and b!5786200 (not c!1024436)) b!5786198))

(assert (= (or b!5786205 b!5786204) bm!450499))

(assert (= (or b!5786205 b!5786204) bm!450501))

(assert (= (or b!5786197 bm!450499) bm!450500))

(assert (= (or b!5786197 bm!450501) bm!450503))

(assert (= (or b!5786202 bm!450503) bm!450502))

(assert (= (or b!5786202 b!5786197) bm!450504))

(declare-fun m!6731134 () Bool)

(assert (=> b!5786196 m!6731134))

(declare-fun m!6731136 () Bool)

(assert (=> bm!450502 m!6731136))

(declare-fun m!6731138 () Bool)

(assert (=> b!5786203 m!6731138))

(declare-fun m!6731140 () Bool)

(assert (=> bm!450500 m!6731140))

(declare-fun m!6731142 () Bool)

(assert (=> bm!450504 m!6731142))

(assert (=> bm!450419 d!1823082))

(declare-fun d!1823084 () Bool)

(declare-fun nullableFct!1862 (Regex!15797) Bool)

(assert (=> d!1823084 (= (nullable!5829 (reg!16126 r!7292)) (nullableFct!1862 (reg!16126 r!7292)))))

(declare-fun bs!1366174 () Bool)

(assert (= bs!1366174 d!1823084))

(declare-fun m!6731144 () Bool)

(assert (=> bs!1366174 m!6731144))

(assert (=> b!5785427 d!1823084))

(declare-fun d!1823086 () Bool)

(assert (=> d!1823086 (= (isEmptyExpr!1277 lt!2296470) ((_ is EmptyExpr!15797) lt!2296470))))

(assert (=> b!5785551 d!1823086))

(declare-fun bm!450505 () Bool)

(declare-fun call!450510 () Bool)

(assert (=> bm!450505 (= call!450510 (isEmpty!35467 (_1!36197 (get!21939 lt!2296483))))))

(declare-fun b!5786207 () Bool)

(declare-fun e!3553860 () Bool)

(declare-fun e!3553857 () Bool)

(assert (=> b!5786207 (= e!3553860 e!3553857)))

(declare-fun c!1024440 () Bool)

(assert (=> b!5786207 (= c!1024440 ((_ is EmptyLang!15797) (reg!16126 r!7292)))))

(declare-fun b!5786208 () Bool)

(declare-fun res!2441668 () Bool)

(declare-fun e!3553861 () Bool)

(assert (=> b!5786208 (=> (not res!2441668) (not e!3553861))))

(assert (=> b!5786208 (= res!2441668 (isEmpty!35467 (tail!11313 (_1!36197 (get!21939 lt!2296483)))))))

(declare-fun b!5786209 () Bool)

(declare-fun res!2441670 () Bool)

(declare-fun e!3553862 () Bool)

(assert (=> b!5786209 (=> res!2441670 e!3553862)))

(assert (=> b!5786209 (= res!2441670 (not ((_ is ElementMatch!15797) (reg!16126 r!7292))))))

(assert (=> b!5786209 (= e!3553857 e!3553862)))

(declare-fun b!5786210 () Bool)

(declare-fun lt!2296521 () Bool)

(assert (=> b!5786210 (= e!3553860 (= lt!2296521 call!450510))))

(declare-fun b!5786211 () Bool)

(declare-fun e!3553858 () Bool)

(declare-fun e!3553856 () Bool)

(assert (=> b!5786211 (= e!3553858 e!3553856)))

(declare-fun res!2441669 () Bool)

(assert (=> b!5786211 (=> res!2441669 e!3553856)))

(assert (=> b!5786211 (= res!2441669 call!450510)))

(declare-fun d!1823088 () Bool)

(assert (=> d!1823088 e!3553860))

(declare-fun c!1024439 () Bool)

(assert (=> d!1823088 (= c!1024439 ((_ is EmptyExpr!15797) (reg!16126 r!7292)))))

(declare-fun e!3553859 () Bool)

(assert (=> d!1823088 (= lt!2296521 e!3553859)))

(declare-fun c!1024438 () Bool)

(assert (=> d!1823088 (= c!1024438 (isEmpty!35467 (_1!36197 (get!21939 lt!2296483))))))

(assert (=> d!1823088 (validRegex!7533 (reg!16126 r!7292))))

(assert (=> d!1823088 (= (matchR!7982 (reg!16126 r!7292) (_1!36197 (get!21939 lt!2296483))) lt!2296521)))

(declare-fun b!5786212 () Bool)

(assert (=> b!5786212 (= e!3553857 (not lt!2296521))))

(declare-fun b!5786213 () Bool)

(assert (=> b!5786213 (= e!3553856 (not (= (head!12218 (_1!36197 (get!21939 lt!2296483))) (c!1024165 (reg!16126 r!7292)))))))

(declare-fun b!5786214 () Bool)

(declare-fun res!2441664 () Bool)

(assert (=> b!5786214 (=> res!2441664 e!3553856)))

(assert (=> b!5786214 (= res!2441664 (not (isEmpty!35467 (tail!11313 (_1!36197 (get!21939 lt!2296483))))))))

(declare-fun b!5786215 () Bool)

(assert (=> b!5786215 (= e!3553862 e!3553858)))

(declare-fun res!2441663 () Bool)

(assert (=> b!5786215 (=> (not res!2441663) (not e!3553858))))

(assert (=> b!5786215 (= res!2441663 (not lt!2296521))))

(declare-fun b!5786216 () Bool)

(declare-fun res!2441665 () Bool)

(assert (=> b!5786216 (=> res!2441665 e!3553862)))

(assert (=> b!5786216 (= res!2441665 e!3553861)))

(declare-fun res!2441667 () Bool)

(assert (=> b!5786216 (=> (not res!2441667) (not e!3553861))))

(assert (=> b!5786216 (= res!2441667 lt!2296521)))

(declare-fun b!5786217 () Bool)

(assert (=> b!5786217 (= e!3553861 (= (head!12218 (_1!36197 (get!21939 lt!2296483))) (c!1024165 (reg!16126 r!7292))))))

(declare-fun b!5786218 () Bool)

(assert (=> b!5786218 (= e!3553859 (nullable!5829 (reg!16126 r!7292)))))

(declare-fun b!5786219 () Bool)

(assert (=> b!5786219 (= e!3553859 (matchR!7982 (derivativeStep!4572 (reg!16126 r!7292) (head!12218 (_1!36197 (get!21939 lt!2296483)))) (tail!11313 (_1!36197 (get!21939 lt!2296483)))))))

(declare-fun b!5786220 () Bool)

(declare-fun res!2441666 () Bool)

(assert (=> b!5786220 (=> (not res!2441666) (not e!3553861))))

(assert (=> b!5786220 (= res!2441666 (not call!450510))))

(assert (= (and d!1823088 c!1024438) b!5786218))

(assert (= (and d!1823088 (not c!1024438)) b!5786219))

(assert (= (and d!1823088 c!1024439) b!5786210))

(assert (= (and d!1823088 (not c!1024439)) b!5786207))

(assert (= (and b!5786207 c!1024440) b!5786212))

(assert (= (and b!5786207 (not c!1024440)) b!5786209))

(assert (= (and b!5786209 (not res!2441670)) b!5786216))

(assert (= (and b!5786216 res!2441667) b!5786220))

(assert (= (and b!5786220 res!2441666) b!5786208))

(assert (= (and b!5786208 res!2441668) b!5786217))

(assert (= (and b!5786216 (not res!2441665)) b!5786215))

(assert (= (and b!5786215 res!2441663) b!5786211))

(assert (= (and b!5786211 (not res!2441669)) b!5786214))

(assert (= (and b!5786214 (not res!2441664)) b!5786213))

(assert (= (or b!5786210 b!5786211 b!5786220) bm!450505))

(declare-fun m!6731146 () Bool)

(assert (=> b!5786219 m!6731146))

(assert (=> b!5786219 m!6731146))

(declare-fun m!6731148 () Bool)

(assert (=> b!5786219 m!6731148))

(declare-fun m!6731150 () Bool)

(assert (=> b!5786219 m!6731150))

(assert (=> b!5786219 m!6731148))

(assert (=> b!5786219 m!6731150))

(declare-fun m!6731152 () Bool)

(assert (=> b!5786219 m!6731152))

(assert (=> b!5786218 m!6730534))

(assert (=> b!5786208 m!6731150))

(assert (=> b!5786208 m!6731150))

(declare-fun m!6731154 () Bool)

(assert (=> b!5786208 m!6731154))

(assert (=> b!5786217 m!6731146))

(declare-fun m!6731156 () Bool)

(assert (=> d!1823088 m!6731156))

(assert (=> d!1823088 m!6730658))

(assert (=> bm!450505 m!6731156))

(assert (=> b!5786214 m!6731150))

(assert (=> b!5786214 m!6731150))

(assert (=> b!5786214 m!6731154))

(assert (=> b!5786213 m!6731146))

(assert (=> b!5785707 d!1823088))

(assert (=> b!5785707 d!1822956))

(declare-fun bm!450506 () Bool)

(declare-fun call!450515 () List!63691)

(declare-fun call!450511 () List!63691)

(assert (=> bm!450506 (= call!450515 call!450511)))

(declare-fun e!3553868 () Bool)

(declare-fun b!5786221 () Bool)

(assert (=> b!5786221 (= e!3553868 (nullable!5829 (regOne!32106 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292)))))))))

(declare-fun b!5786222 () Bool)

(declare-fun e!3553865 () (InoxSet Context!10362))

(declare-fun call!450514 () (InoxSet Context!10362))

(declare-fun call!450513 () (InoxSet Context!10362))

(assert (=> b!5786222 (= e!3553865 ((_ map or) call!450514 call!450513))))

(declare-fun c!1024445 () Bool)

(declare-fun bm!450507 () Bool)

(declare-fun c!1024442 () Bool)

(assert (=> bm!450507 (= call!450511 ($colon$colon!1784 (exprs!5681 (ite (or c!1024317 c!1024318) (Context!10363 Nil!63567) (Context!10363 call!450423))) (ite (or c!1024442 c!1024445) (regTwo!32106 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))) (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292)))))))))

(declare-fun b!5786223 () Bool)

(declare-fun e!3553867 () (InoxSet Context!10362))

(assert (=> b!5786223 (= e!3553867 ((as const (Array Context!10362 Bool)) false))))

(declare-fun b!5786224 () Bool)

(declare-fun e!3553866 () (InoxSet Context!10362))

(assert (=> b!5786224 (= e!3553865 e!3553866)))

(assert (=> b!5786224 (= c!1024445 ((_ is Concat!24642) (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))))))

(declare-fun c!1024443 () Bool)

(declare-fun d!1823090 () Bool)

(assert (=> d!1823090 (= c!1024443 (and ((_ is ElementMatch!15797) (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))) (= (c!1024165 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))) (h!70014 s!2326))))))

(declare-fun e!3553863 () (InoxSet Context!10362))

(assert (=> d!1823090 (= (derivationStepZipperDown!1135 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292)))) (ite (or c!1024317 c!1024318) (Context!10363 Nil!63567) (Context!10363 call!450423)) (h!70014 s!2326)) e!3553863)))

(declare-fun b!5786225 () Bool)

(declare-fun c!1024444 () Bool)

(assert (=> b!5786225 (= c!1024444 ((_ is Star!15797) (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))))))

(assert (=> b!5786225 (= e!3553866 e!3553867)))

(declare-fun b!5786226 () Bool)

(assert (=> b!5786226 (= c!1024442 e!3553868)))

(declare-fun res!2441671 () Bool)

(assert (=> b!5786226 (=> (not res!2441671) (not e!3553868))))

(assert (=> b!5786226 (= res!2441671 ((_ is Concat!24642) (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))))))

(declare-fun e!3553864 () (InoxSet Context!10362))

(assert (=> b!5786226 (= e!3553864 e!3553865)))

(declare-fun b!5786227 () Bool)

(declare-fun call!450512 () (InoxSet Context!10362))

(assert (=> b!5786227 (= e!3553864 ((_ map or) call!450514 call!450512))))

(declare-fun b!5786228 () Bool)

(assert (=> b!5786228 (= e!3553863 (store ((as const (Array Context!10362 Bool)) false) (ite (or c!1024317 c!1024318) (Context!10363 Nil!63567) (Context!10363 call!450423)) true))))

(declare-fun bm!450508 () Bool)

(declare-fun call!450516 () (InoxSet Context!10362))

(assert (=> bm!450508 (= call!450516 call!450513)))

(declare-fun bm!450509 () Bool)

(declare-fun c!1024441 () Bool)

(assert (=> bm!450509 (= call!450512 (derivationStepZipperDown!1135 (ite c!1024441 (regTwo!32107 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))) (ite c!1024442 (regTwo!32106 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))) (ite c!1024445 (regOne!32106 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))) (reg!16126 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292)))))))) (ite (or c!1024441 c!1024442) (ite (or c!1024317 c!1024318) (Context!10363 Nil!63567) (Context!10363 call!450423)) (Context!10363 call!450515)) (h!70014 s!2326)))))

(declare-fun b!5786229 () Bool)

(assert (=> b!5786229 (= e!3553867 call!450516)))

(declare-fun bm!450510 () Bool)

(assert (=> bm!450510 (= call!450513 call!450512)))

(declare-fun b!5786230 () Bool)

(assert (=> b!5786230 (= e!3553866 call!450516)))

(declare-fun bm!450511 () Bool)

(assert (=> bm!450511 (= call!450514 (derivationStepZipperDown!1135 (ite c!1024441 (regOne!32107 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))) (regOne!32106 (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292)))))) (ite c!1024441 (ite (or c!1024317 c!1024318) (Context!10363 Nil!63567) (Context!10363 call!450423)) (Context!10363 call!450511)) (h!70014 s!2326)))))

(declare-fun b!5786231 () Bool)

(assert (=> b!5786231 (= e!3553863 e!3553864)))

(assert (=> b!5786231 (= c!1024441 ((_ is Union!15797) (ite c!1024317 (regTwo!32107 r!7292) (ite c!1024318 (regTwo!32106 r!7292) (ite c!1024321 (regOne!32106 r!7292) (reg!16126 r!7292))))))))

(assert (= (and d!1823090 c!1024443) b!5786228))

(assert (= (and d!1823090 (not c!1024443)) b!5786231))

(assert (= (and b!5786231 c!1024441) b!5786227))

(assert (= (and b!5786231 (not c!1024441)) b!5786226))

(assert (= (and b!5786226 res!2441671) b!5786221))

(assert (= (and b!5786226 c!1024442) b!5786222))

(assert (= (and b!5786226 (not c!1024442)) b!5786224))

(assert (= (and b!5786224 c!1024445) b!5786230))

(assert (= (and b!5786224 (not c!1024445)) b!5786225))

(assert (= (and b!5786225 c!1024444) b!5786229))

(assert (= (and b!5786225 (not c!1024444)) b!5786223))

(assert (= (or b!5786230 b!5786229) bm!450506))

(assert (= (or b!5786230 b!5786229) bm!450508))

(assert (= (or b!5786222 bm!450506) bm!450507))

(assert (= (or b!5786222 bm!450508) bm!450510))

(assert (= (or b!5786227 bm!450510) bm!450509))

(assert (= (or b!5786227 b!5786222) bm!450511))

(declare-fun m!6731158 () Bool)

(assert (=> b!5786221 m!6731158))

(declare-fun m!6731160 () Bool)

(assert (=> bm!450509 m!6731160))

(declare-fun m!6731162 () Bool)

(assert (=> b!5786228 m!6731162))

(declare-fun m!6731164 () Bool)

(assert (=> bm!450507 m!6731164))

(declare-fun m!6731166 () Bool)

(assert (=> bm!450511 m!6731166))

(assert (=> bm!450417 d!1823090))

(declare-fun bs!1366183 () Bool)

(declare-fun d!1823092 () Bool)

(assert (= bs!1366183 (and d!1823092 d!1822874)))

(declare-fun lambda!315406 () Int)

(assert (=> bs!1366183 (= lambda!315406 lambda!315351)))

(declare-fun bs!1366184 () Bool)

(assert (= bs!1366184 (and d!1823092 d!1822846)))

(assert (=> bs!1366184 (= lambda!315406 lambda!315340)))

(declare-fun bs!1366185 () Bool)

(assert (= bs!1366185 (and d!1823092 d!1822858)))

(assert (=> bs!1366185 (= lambda!315406 lambda!315343)))

(declare-fun bs!1366186 () Bool)

(assert (= bs!1366186 (and d!1823092 d!1822860)))

(assert (=> bs!1366186 (= lambda!315406 lambda!315349)))

(declare-fun bs!1366187 () Bool)

(assert (= bs!1366187 (and d!1823092 d!1822834)))

(assert (=> bs!1366187 (= lambda!315406 lambda!315325)))

(declare-fun bs!1366188 () Bool)

(assert (= bs!1366188 (and d!1823092 d!1822974)))

(assert (=> bs!1366188 (= lambda!315406 lambda!315381)))

(declare-fun bs!1366189 () Bool)

(assert (= bs!1366189 (and d!1823092 d!1822946)))

(assert (=> bs!1366189 (= lambda!315406 lambda!315371)))

(declare-fun b!5786232 () Bool)

(declare-fun e!3553873 () Bool)

(declare-fun lt!2296522 () Regex!15797)

(assert (=> b!5786232 (= e!3553873 (isUnion!716 lt!2296522))))

(declare-fun b!5786233 () Bool)

(declare-fun e!3553871 () Bool)

(assert (=> b!5786233 (= e!3553871 (isEmpty!35471 (t!377030 (t!377030 (unfocusZipperList!1225 zl!343)))))))

(declare-fun e!3553872 () Bool)

(assert (=> d!1823092 e!3553872))

(declare-fun res!2441673 () Bool)

(assert (=> d!1823092 (=> (not res!2441673) (not e!3553872))))

(assert (=> d!1823092 (= res!2441673 (validRegex!7533 lt!2296522))))

(declare-fun e!3553870 () Regex!15797)

(assert (=> d!1823092 (= lt!2296522 e!3553870)))

(declare-fun c!1024449 () Bool)

(assert (=> d!1823092 (= c!1024449 e!3553871)))

(declare-fun res!2441672 () Bool)

(assert (=> d!1823092 (=> (not res!2441672) (not e!3553871))))

(assert (=> d!1823092 (= res!2441672 ((_ is Cons!63567) (t!377030 (unfocusZipperList!1225 zl!343))))))

(assert (=> d!1823092 (forall!14911 (t!377030 (unfocusZipperList!1225 zl!343)) lambda!315406)))

(assert (=> d!1823092 (= (generalisedUnion!1660 (t!377030 (unfocusZipperList!1225 zl!343))) lt!2296522)))

(declare-fun b!5786234 () Bool)

(declare-fun e!3553869 () Regex!15797)

(assert (=> b!5786234 (= e!3553869 EmptyLang!15797)))

(declare-fun b!5786235 () Bool)

(declare-fun e!3553874 () Bool)

(assert (=> b!5786235 (= e!3553872 e!3553874)))

(declare-fun c!1024447 () Bool)

(assert (=> b!5786235 (= c!1024447 (isEmpty!35471 (t!377030 (unfocusZipperList!1225 zl!343))))))

(declare-fun b!5786236 () Bool)

(assert (=> b!5786236 (= e!3553870 e!3553869)))

(declare-fun c!1024448 () Bool)

(assert (=> b!5786236 (= c!1024448 ((_ is Cons!63567) (t!377030 (unfocusZipperList!1225 zl!343))))))

(declare-fun b!5786237 () Bool)

(assert (=> b!5786237 (= e!3553873 (= lt!2296522 (head!12219 (t!377030 (unfocusZipperList!1225 zl!343)))))))

(declare-fun b!5786238 () Bool)

(assert (=> b!5786238 (= e!3553870 (h!70015 (t!377030 (unfocusZipperList!1225 zl!343))))))

(declare-fun b!5786239 () Bool)

(assert (=> b!5786239 (= e!3553874 e!3553873)))

(declare-fun c!1024446 () Bool)

(assert (=> b!5786239 (= c!1024446 (isEmpty!35471 (tail!11314 (t!377030 (unfocusZipperList!1225 zl!343)))))))

(declare-fun b!5786240 () Bool)

(assert (=> b!5786240 (= e!3553874 (isEmptyLang!1286 lt!2296522))))

(declare-fun b!5786241 () Bool)

(assert (=> b!5786241 (= e!3553869 (Union!15797 (h!70015 (t!377030 (unfocusZipperList!1225 zl!343))) (generalisedUnion!1660 (t!377030 (t!377030 (unfocusZipperList!1225 zl!343))))))))

(assert (= (and d!1823092 res!2441672) b!5786233))

(assert (= (and d!1823092 c!1024449) b!5786238))

(assert (= (and d!1823092 (not c!1024449)) b!5786236))

(assert (= (and b!5786236 c!1024448) b!5786241))

(assert (= (and b!5786236 (not c!1024448)) b!5786234))

(assert (= (and d!1823092 res!2441673) b!5786235))

(assert (= (and b!5786235 c!1024447) b!5786240))

(assert (= (and b!5786235 (not c!1024447)) b!5786239))

(assert (= (and b!5786239 c!1024446) b!5786237))

(assert (= (and b!5786239 (not c!1024446)) b!5786232))

(declare-fun m!6731172 () Bool)

(assert (=> b!5786241 m!6731172))

(assert (=> b!5786235 m!6730564))

(declare-fun m!6731174 () Bool)

(assert (=> b!5786232 m!6731174))

(declare-fun m!6731176 () Bool)

(assert (=> b!5786239 m!6731176))

(assert (=> b!5786239 m!6731176))

(declare-fun m!6731178 () Bool)

(assert (=> b!5786239 m!6731178))

(declare-fun m!6731180 () Bool)

(assert (=> b!5786240 m!6731180))

(declare-fun m!6731182 () Bool)

(assert (=> b!5786233 m!6731182))

(declare-fun m!6731184 () Bool)

(assert (=> b!5786237 m!6731184))

(declare-fun m!6731186 () Bool)

(assert (=> d!1823092 m!6731186))

(declare-fun m!6731188 () Bool)

(assert (=> d!1823092 m!6731188))

(assert (=> b!5785473 d!1823092))

(declare-fun d!1823096 () Bool)

(assert (=> d!1823096 (= (isEmpty!35471 (tail!11314 (unfocusZipperList!1225 zl!343))) ((_ is Nil!63567) (tail!11314 (unfocusZipperList!1225 zl!343))))))

(assert (=> b!5785471 d!1823096))

(declare-fun d!1823098 () Bool)

(assert (=> d!1823098 (= (tail!11314 (unfocusZipperList!1225 zl!343)) (t!377030 (unfocusZipperList!1225 zl!343)))))

(assert (=> b!5785471 d!1823098))

(declare-fun d!1823100 () Bool)

(declare-fun res!2441676 () Bool)

(declare-fun e!3553881 () Bool)

(assert (=> d!1823100 (=> res!2441676 e!3553881)))

(assert (=> d!1823100 (= res!2441676 ((_ is Nil!63567) (exprs!5681 (h!70016 zl!343))))))

(assert (=> d!1823100 (= (forall!14911 (exprs!5681 (h!70016 zl!343)) lambda!315351) e!3553881)))

(declare-fun b!5786252 () Bool)

(declare-fun e!3553882 () Bool)

(assert (=> b!5786252 (= e!3553881 e!3553882)))

(declare-fun res!2441677 () Bool)

(assert (=> b!5786252 (=> (not res!2441677) (not e!3553882))))

(assert (=> b!5786252 (= res!2441677 (dynLambda!24885 lambda!315351 (h!70015 (exprs!5681 (h!70016 zl!343)))))))

(declare-fun b!5786253 () Bool)

(assert (=> b!5786253 (= e!3553882 (forall!14911 (t!377030 (exprs!5681 (h!70016 zl!343))) lambda!315351))))

(assert (= (and d!1823100 (not res!2441676)) b!5786252))

(assert (= (and b!5786252 res!2441677) b!5786253))

(declare-fun b_lambda!218137 () Bool)

(assert (=> (not b_lambda!218137) (not b!5786252)))

(declare-fun m!6731204 () Bool)

(assert (=> b!5786252 m!6731204))

(declare-fun m!6731208 () Bool)

(assert (=> b!5786253 m!6731208))

(assert (=> d!1822874 d!1823100))

(declare-fun d!1823102 () Bool)

(assert (=> d!1823102 (= (head!12219 (unfocusZipperList!1225 zl!343)) (h!70015 (unfocusZipperList!1225 zl!343)))))

(assert (=> b!5785469 d!1823102))

(declare-fun d!1823106 () Bool)

(assert (=> d!1823106 (= ($colon$colon!1784 (exprs!5681 (Context!10363 Nil!63567)) (ite (or c!1024318 c!1024321) (regTwo!32106 r!7292) r!7292)) (Cons!63567 (ite (or c!1024318 c!1024321) (regTwo!32106 r!7292) r!7292) (exprs!5681 (Context!10363 Nil!63567))))))

(assert (=> bm!450415 d!1823106))

(declare-fun d!1823112 () Bool)

(assert (=> d!1823112 (= (nullable!5829 r!7292) (nullableFct!1862 r!7292))))

(declare-fun bs!1366206 () Bool)

(assert (= bs!1366206 d!1823112))

(declare-fun m!6731214 () Bool)

(assert (=> bs!1366206 m!6731214))

(assert (=> b!5785324 d!1823112))

(declare-fun d!1823116 () Bool)

(assert (=> d!1823116 (= (isEmpty!35471 (t!377030 (unfocusZipperList!1225 zl!343))) ((_ is Nil!63567) (t!377030 (unfocusZipperList!1225 zl!343))))))

(assert (=> b!5785465 d!1823116))

(declare-fun b!5786254 () Bool)

(declare-fun res!2441678 () Bool)

(declare-fun e!3553888 () Bool)

(assert (=> b!5786254 (=> (not res!2441678) (not e!3553888))))

(declare-fun call!450518 () Bool)

(assert (=> b!5786254 (= res!2441678 call!450518)))

(declare-fun e!3553885 () Bool)

(assert (=> b!5786254 (= e!3553885 e!3553888)))

(declare-fun bm!450512 () Bool)

(declare-fun call!450517 () Bool)

(declare-fun call!450519 () Bool)

(assert (=> bm!450512 (= call!450517 call!450519)))

(declare-fun b!5786255 () Bool)

(declare-fun e!3553884 () Bool)

(declare-fun e!3553887 () Bool)

(assert (=> b!5786255 (= e!3553884 e!3553887)))

(declare-fun res!2441680 () Bool)

(assert (=> b!5786255 (=> (not res!2441680) (not e!3553887))))

(assert (=> b!5786255 (= res!2441680 call!450518)))

(declare-fun b!5786256 () Bool)

(declare-fun e!3553883 () Bool)

(declare-fun e!3553889 () Bool)

(assert (=> b!5786256 (= e!3553883 e!3553889)))

(declare-fun res!2441682 () Bool)

(assert (=> b!5786256 (= res!2441682 (not (nullable!5829 (reg!16126 lt!2296452))))))

(assert (=> b!5786256 (=> (not res!2441682) (not e!3553889))))

(declare-fun b!5786257 () Bool)

(declare-fun e!3553886 () Bool)

(assert (=> b!5786257 (= e!3553886 e!3553883)))

(declare-fun c!1024455 () Bool)

(assert (=> b!5786257 (= c!1024455 ((_ is Star!15797) lt!2296452))))

(declare-fun bm!450513 () Bool)

(declare-fun c!1024454 () Bool)

(assert (=> bm!450513 (= call!450518 (validRegex!7533 (ite c!1024454 (regOne!32107 lt!2296452) (regOne!32106 lt!2296452))))))

(declare-fun b!5786258 () Bool)

(assert (=> b!5786258 (= e!3553887 call!450517)))

(declare-fun b!5786259 () Bool)

(declare-fun res!2441679 () Bool)

(assert (=> b!5786259 (=> res!2441679 e!3553884)))

(assert (=> b!5786259 (= res!2441679 (not ((_ is Concat!24642) lt!2296452)))))

(assert (=> b!5786259 (= e!3553885 e!3553884)))

(declare-fun d!1823118 () Bool)

(declare-fun res!2441681 () Bool)

(assert (=> d!1823118 (=> res!2441681 e!3553886)))

(assert (=> d!1823118 (= res!2441681 ((_ is ElementMatch!15797) lt!2296452))))

(assert (=> d!1823118 (= (validRegex!7533 lt!2296452) e!3553886)))

(declare-fun b!5786260 () Bool)

(assert (=> b!5786260 (= e!3553883 e!3553885)))

(assert (=> b!5786260 (= c!1024454 ((_ is Union!15797) lt!2296452))))

(declare-fun bm!450514 () Bool)

(assert (=> bm!450514 (= call!450519 (validRegex!7533 (ite c!1024455 (reg!16126 lt!2296452) (ite c!1024454 (regTwo!32107 lt!2296452) (regTwo!32106 lt!2296452)))))))

(declare-fun b!5786261 () Bool)

(assert (=> b!5786261 (= e!3553889 call!450519)))

(declare-fun b!5786262 () Bool)

(assert (=> b!5786262 (= e!3553888 call!450517)))

(assert (= (and d!1823118 (not res!2441681)) b!5786257))

(assert (= (and b!5786257 c!1024455) b!5786256))

(assert (= (and b!5786257 (not c!1024455)) b!5786260))

(assert (= (and b!5786256 res!2441682) b!5786261))

(assert (= (and b!5786260 c!1024454) b!5786254))

(assert (= (and b!5786260 (not c!1024454)) b!5786259))

(assert (= (and b!5786254 res!2441678) b!5786262))

(assert (= (and b!5786259 (not res!2441679)) b!5786255))

(assert (= (and b!5786255 res!2441680) b!5786258))

(assert (= (or b!5786262 b!5786258) bm!450512))

(assert (= (or b!5786254 b!5786255) bm!450513))

(assert (= (or b!5786261 bm!450512) bm!450514))

(declare-fun m!6731218 () Bool)

(assert (=> b!5786256 m!6731218))

(declare-fun m!6731220 () Bool)

(assert (=> bm!450513 m!6731220))

(declare-fun m!6731222 () Bool)

(assert (=> bm!450514 m!6731222))

(assert (=> d!1822846 d!1823118))

(declare-fun d!1823124 () Bool)

(declare-fun res!2441683 () Bool)

(declare-fun e!3553890 () Bool)

(assert (=> d!1823124 (=> res!2441683 e!3553890)))

(assert (=> d!1823124 (= res!2441683 ((_ is Nil!63567) (unfocusZipperList!1225 zl!343)))))

(assert (=> d!1823124 (= (forall!14911 (unfocusZipperList!1225 zl!343) lambda!315340) e!3553890)))

(declare-fun b!5786263 () Bool)

(declare-fun e!3553891 () Bool)

(assert (=> b!5786263 (= e!3553890 e!3553891)))

(declare-fun res!2441684 () Bool)

(assert (=> b!5786263 (=> (not res!2441684) (not e!3553891))))

(assert (=> b!5786263 (= res!2441684 (dynLambda!24885 lambda!315340 (h!70015 (unfocusZipperList!1225 zl!343))))))

(declare-fun b!5786264 () Bool)

(assert (=> b!5786264 (= e!3553891 (forall!14911 (t!377030 (unfocusZipperList!1225 zl!343)) lambda!315340))))

(assert (= (and d!1823124 (not res!2441683)) b!5786263))

(assert (= (and b!5786263 res!2441684) b!5786264))

(declare-fun b_lambda!218139 () Bool)

(assert (=> (not b_lambda!218139) (not b!5786263)))

(declare-fun m!6731224 () Bool)

(assert (=> b!5786263 m!6731224))

(declare-fun m!6731226 () Bool)

(assert (=> b!5786264 m!6731226))

(assert (=> d!1822846 d!1823124))

(declare-fun d!1823130 () Bool)

(assert (=> d!1823130 true))

(assert (=> d!1823130 true))

(declare-fun res!2441685 () Bool)

(assert (=> d!1823130 (= (choose!43927 lambda!315298) res!2441685)))

(assert (=> d!1822880 d!1823130))

(declare-fun bs!1366210 () Bool)

(declare-fun d!1823132 () Bool)

(assert (= bs!1366210 (and d!1823132 d!1822874)))

(declare-fun lambda!315410 () Int)

(assert (=> bs!1366210 (= lambda!315410 lambda!315351)))

(declare-fun bs!1366213 () Bool)

(assert (= bs!1366213 (and d!1823132 d!1822846)))

(assert (=> bs!1366213 (= lambda!315410 lambda!315340)))

(declare-fun bs!1366215 () Bool)

(assert (= bs!1366215 (and d!1823132 d!1823092)))

(assert (=> bs!1366215 (= lambda!315410 lambda!315406)))

(declare-fun bs!1366217 () Bool)

(assert (= bs!1366217 (and d!1823132 d!1822858)))

(assert (=> bs!1366217 (= lambda!315410 lambda!315343)))

(declare-fun bs!1366219 () Bool)

(assert (= bs!1366219 (and d!1823132 d!1822860)))

(assert (=> bs!1366219 (= lambda!315410 lambda!315349)))

(declare-fun bs!1366221 () Bool)

(assert (= bs!1366221 (and d!1823132 d!1822834)))

(assert (=> bs!1366221 (= lambda!315410 lambda!315325)))

(declare-fun bs!1366223 () Bool)

(assert (= bs!1366223 (and d!1823132 d!1822974)))

(assert (=> bs!1366223 (= lambda!315410 lambda!315381)))

(declare-fun bs!1366224 () Bool)

(assert (= bs!1366224 (and d!1823132 d!1822946)))

(assert (=> bs!1366224 (= lambda!315410 lambda!315371)))

(assert (=> d!1823132 (= (inv!82739 (h!70016 (t!377031 zl!343))) (forall!14911 (exprs!5681 (h!70016 (t!377031 zl!343))) lambda!315410))))

(declare-fun bs!1366225 () Bool)

(assert (= bs!1366225 d!1823132))

(declare-fun m!6731228 () Bool)

(assert (=> bs!1366225 m!6731228))

(assert (=> b!5785766 d!1823132))

(declare-fun d!1823134 () Bool)

(assert (=> d!1823134 (= (isEmpty!35471 (unfocusZipperList!1225 zl!343)) ((_ is Nil!63567) (unfocusZipperList!1225 zl!343)))))

(assert (=> b!5785467 d!1823134))

(declare-fun b!5786267 () Bool)

(declare-fun res!2441686 () Bool)

(declare-fun e!3553898 () Bool)

(assert (=> b!5786267 (=> (not res!2441686) (not e!3553898))))

(declare-fun call!450521 () Bool)

(assert (=> b!5786267 (= res!2441686 call!450521)))

(declare-fun e!3553895 () Bool)

(assert (=> b!5786267 (= e!3553895 e!3553898)))

(declare-fun bm!450515 () Bool)

(declare-fun call!450520 () Bool)

(declare-fun call!450522 () Bool)

(assert (=> bm!450515 (= call!450520 call!450522)))

(declare-fun b!5786268 () Bool)

(declare-fun e!3553894 () Bool)

(declare-fun e!3553897 () Bool)

(assert (=> b!5786268 (= e!3553894 e!3553897)))

(declare-fun res!2441688 () Bool)

(assert (=> b!5786268 (=> (not res!2441688) (not e!3553897))))

(assert (=> b!5786268 (= res!2441688 call!450521)))

(declare-fun b!5786269 () Bool)

(declare-fun e!3553893 () Bool)

(declare-fun e!3553899 () Bool)

(assert (=> b!5786269 (= e!3553893 e!3553899)))

(declare-fun res!2441690 () Bool)

(assert (=> b!5786269 (= res!2441690 (not (nullable!5829 (reg!16126 lt!2296439))))))

(assert (=> b!5786269 (=> (not res!2441690) (not e!3553899))))

(declare-fun b!5786270 () Bool)

(declare-fun e!3553896 () Bool)

(assert (=> b!5786270 (= e!3553896 e!3553893)))

(declare-fun c!1024458 () Bool)

(assert (=> b!5786270 (= c!1024458 ((_ is Star!15797) lt!2296439))))

(declare-fun bm!450516 () Bool)

(declare-fun c!1024457 () Bool)

(assert (=> bm!450516 (= call!450521 (validRegex!7533 (ite c!1024457 (regOne!32107 lt!2296439) (regOne!32106 lt!2296439))))))

(declare-fun b!5786271 () Bool)

(assert (=> b!5786271 (= e!3553897 call!450520)))

(declare-fun b!5786272 () Bool)

(declare-fun res!2441687 () Bool)

(assert (=> b!5786272 (=> res!2441687 e!3553894)))

(assert (=> b!5786272 (= res!2441687 (not ((_ is Concat!24642) lt!2296439)))))

(assert (=> b!5786272 (= e!3553895 e!3553894)))

(declare-fun d!1823136 () Bool)

(declare-fun res!2441689 () Bool)

(assert (=> d!1823136 (=> res!2441689 e!3553896)))

(assert (=> d!1823136 (= res!2441689 ((_ is ElementMatch!15797) lt!2296439))))

(assert (=> d!1823136 (= (validRegex!7533 lt!2296439) e!3553896)))

(declare-fun b!5786273 () Bool)

(assert (=> b!5786273 (= e!3553893 e!3553895)))

(assert (=> b!5786273 (= c!1024457 ((_ is Union!15797) lt!2296439))))

(declare-fun bm!450517 () Bool)

(assert (=> bm!450517 (= call!450522 (validRegex!7533 (ite c!1024458 (reg!16126 lt!2296439) (ite c!1024457 (regTwo!32107 lt!2296439) (regTwo!32106 lt!2296439)))))))

(declare-fun b!5786274 () Bool)

(assert (=> b!5786274 (= e!3553899 call!450522)))

(declare-fun b!5786275 () Bool)

(assert (=> b!5786275 (= e!3553898 call!450520)))

(assert (= (and d!1823136 (not res!2441689)) b!5786270))

(assert (= (and b!5786270 c!1024458) b!5786269))

(assert (= (and b!5786270 (not c!1024458)) b!5786273))

(assert (= (and b!5786269 res!2441690) b!5786274))

(assert (= (and b!5786273 c!1024457) b!5786267))

(assert (= (and b!5786273 (not c!1024457)) b!5786272))

(assert (= (and b!5786267 res!2441686) b!5786275))

(assert (= (and b!5786272 (not res!2441687)) b!5786268))

(assert (= (and b!5786268 res!2441688) b!5786271))

(assert (= (or b!5786275 b!5786271) bm!450515))

(assert (= (or b!5786267 b!5786268) bm!450516))

(assert (= (or b!5786274 bm!450515) bm!450517))

(declare-fun m!6731236 () Bool)

(assert (=> b!5786269 m!6731236))

(declare-fun m!6731238 () Bool)

(assert (=> bm!450516 m!6731238))

(declare-fun m!6731240 () Bool)

(assert (=> bm!450517 m!6731240))

(assert (=> d!1822832 d!1823136))

(assert (=> d!1822832 d!1822846))

(assert (=> d!1822832 d!1822858))

(declare-fun d!1823142 () Bool)

(assert (=> d!1823142 (= (nullable!5829 (regOne!32106 r!7292)) (nullableFct!1862 (regOne!32106 r!7292)))))

(declare-fun bs!1366226 () Bool)

(assert (= bs!1366226 d!1823142))

(declare-fun m!6731242 () Bool)

(assert (=> bs!1366226 m!6731242))

(assert (=> b!5785659 d!1823142))

(declare-fun d!1823144 () Bool)

(assert (=> d!1823144 (= (isEmpty!35471 (tail!11314 (exprs!5681 (h!70016 zl!343)))) ((_ is Nil!63567) (tail!11314 (exprs!5681 (h!70016 zl!343)))))))

(assert (=> b!5785558 d!1823144))

(declare-fun d!1823146 () Bool)

(assert (=> d!1823146 (= (tail!11314 (exprs!5681 (h!70016 zl!343))) (t!377030 (exprs!5681 (h!70016 zl!343))))))

(assert (=> b!5785558 d!1823146))

(declare-fun bs!1366228 () Bool)

(declare-fun d!1823148 () Bool)

(assert (= bs!1366228 (and d!1823148 d!1822874)))

(declare-fun lambda!315411 () Int)

(assert (=> bs!1366228 (= lambda!315411 lambda!315351)))

(declare-fun bs!1366229 () Bool)

(assert (= bs!1366229 (and d!1823148 d!1822846)))

(assert (=> bs!1366229 (= lambda!315411 lambda!315340)))

(declare-fun bs!1366230 () Bool)

(assert (= bs!1366230 (and d!1823148 d!1823132)))

(assert (=> bs!1366230 (= lambda!315411 lambda!315410)))

(declare-fun bs!1366231 () Bool)

(assert (= bs!1366231 (and d!1823148 d!1823092)))

(assert (=> bs!1366231 (= lambda!315411 lambda!315406)))

(declare-fun bs!1366232 () Bool)

(assert (= bs!1366232 (and d!1823148 d!1822858)))

(assert (=> bs!1366232 (= lambda!315411 lambda!315343)))

(declare-fun bs!1366233 () Bool)

(assert (= bs!1366233 (and d!1823148 d!1822860)))

(assert (=> bs!1366233 (= lambda!315411 lambda!315349)))

(declare-fun bs!1366234 () Bool)

(assert (= bs!1366234 (and d!1823148 d!1822834)))

(assert (=> bs!1366234 (= lambda!315411 lambda!315325)))

(declare-fun bs!1366235 () Bool)

(assert (= bs!1366235 (and d!1823148 d!1822974)))

(assert (=> bs!1366235 (= lambda!315411 lambda!315381)))

(declare-fun bs!1366236 () Bool)

(assert (= bs!1366236 (and d!1823148 d!1822946)))

(assert (=> bs!1366236 (= lambda!315411 lambda!315371)))

(declare-fun b!5786278 () Bool)

(declare-fun e!3553902 () Bool)

(declare-fun lt!2296525 () Regex!15797)

(assert (=> b!5786278 (= e!3553902 (isConcat!800 lt!2296525))))

(declare-fun b!5786279 () Bool)

(declare-fun e!3553905 () Bool)

(declare-fun e!3553904 () Bool)

(assert (=> b!5786279 (= e!3553905 e!3553904)))

(declare-fun c!1024461 () Bool)

(assert (=> b!5786279 (= c!1024461 (isEmpty!35471 (t!377030 (exprs!5681 (h!70016 zl!343)))))))

(declare-fun b!5786280 () Bool)

(assert (=> b!5786280 (= e!3553904 (isEmptyExpr!1277 lt!2296525))))

(declare-fun b!5786281 () Bool)

(assert (=> b!5786281 (= e!3553902 (= lt!2296525 (head!12219 (t!377030 (exprs!5681 (h!70016 zl!343))))))))

(declare-fun b!5786282 () Bool)

(declare-fun e!3553906 () Regex!15797)

(assert (=> b!5786282 (= e!3553906 (h!70015 (t!377030 (exprs!5681 (h!70016 zl!343)))))))

(declare-fun b!5786283 () Bool)

(declare-fun e!3553903 () Regex!15797)

(assert (=> b!5786283 (= e!3553903 EmptyExpr!15797)))

(declare-fun b!5786284 () Bool)

(declare-fun e!3553907 () Bool)

(assert (=> b!5786284 (= e!3553907 (isEmpty!35471 (t!377030 (t!377030 (exprs!5681 (h!70016 zl!343))))))))

(declare-fun b!5786285 () Bool)

(assert (=> b!5786285 (= e!3553903 (Concat!24642 (h!70015 (t!377030 (exprs!5681 (h!70016 zl!343)))) (generalisedConcat!1412 (t!377030 (t!377030 (exprs!5681 (h!70016 zl!343)))))))))

(declare-fun b!5786286 () Bool)

(assert (=> b!5786286 (= e!3553906 e!3553903)))

(declare-fun c!1024459 () Bool)

(assert (=> b!5786286 (= c!1024459 ((_ is Cons!63567) (t!377030 (exprs!5681 (h!70016 zl!343)))))))

(assert (=> d!1823148 e!3553905))

(declare-fun res!2441693 () Bool)

(assert (=> d!1823148 (=> (not res!2441693) (not e!3553905))))

(assert (=> d!1823148 (= res!2441693 (validRegex!7533 lt!2296525))))

(assert (=> d!1823148 (= lt!2296525 e!3553906)))

(declare-fun c!1024462 () Bool)

(assert (=> d!1823148 (= c!1024462 e!3553907)))

(declare-fun res!2441694 () Bool)

(assert (=> d!1823148 (=> (not res!2441694) (not e!3553907))))

(assert (=> d!1823148 (= res!2441694 ((_ is Cons!63567) (t!377030 (exprs!5681 (h!70016 zl!343)))))))

(assert (=> d!1823148 (forall!14911 (t!377030 (exprs!5681 (h!70016 zl!343))) lambda!315411)))

(assert (=> d!1823148 (= (generalisedConcat!1412 (t!377030 (exprs!5681 (h!70016 zl!343)))) lt!2296525)))

(declare-fun b!5786287 () Bool)

(assert (=> b!5786287 (= e!3553904 e!3553902)))

(declare-fun c!1024460 () Bool)

(assert (=> b!5786287 (= c!1024460 (isEmpty!35471 (tail!11314 (t!377030 (exprs!5681 (h!70016 zl!343))))))))

(assert (= (and d!1823148 res!2441694) b!5786284))

(assert (= (and d!1823148 c!1024462) b!5786282))

(assert (= (and d!1823148 (not c!1024462)) b!5786286))

(assert (= (and b!5786286 c!1024459) b!5786285))

(assert (= (and b!5786286 (not c!1024459)) b!5786283))

(assert (= (and d!1823148 res!2441693) b!5786279))

(assert (= (and b!5786279 c!1024461) b!5786280))

(assert (= (and b!5786279 (not c!1024461)) b!5786287))

(assert (= (and b!5786287 c!1024460) b!5786281))

(assert (= (and b!5786287 (not c!1024460)) b!5786278))

(declare-fun m!6731254 () Bool)

(assert (=> b!5786281 m!6731254))

(declare-fun m!6731256 () Bool)

(assert (=> b!5786280 m!6731256))

(declare-fun m!6731258 () Bool)

(assert (=> b!5786285 m!6731258))

(assert (=> b!5786279 m!6730618))

(declare-fun m!6731260 () Bool)

(assert (=> b!5786287 m!6731260))

(assert (=> b!5786287 m!6731260))

(declare-fun m!6731262 () Bool)

(assert (=> b!5786287 m!6731262))

(declare-fun m!6731264 () Bool)

(assert (=> b!5786278 m!6731264))

(declare-fun m!6731266 () Bool)

(assert (=> d!1823148 m!6731266))

(declare-fun m!6731268 () Bool)

(assert (=> d!1823148 m!6731268))

(declare-fun m!6731270 () Bool)

(assert (=> b!5786284 m!6731270))

(assert (=> b!5785556 d!1823148))

(assert (=> b!5785320 d!1822902))

(assert (=> b!5785320 d!1822904))

(declare-fun d!1823158 () Bool)

(assert (=> d!1823158 (= (head!12219 (exprs!5681 (h!70016 zl!343))) (h!70015 (exprs!5681 (h!70016 zl!343))))))

(assert (=> b!5785552 d!1823158))

(declare-fun d!1823160 () Bool)

(assert (=> d!1823160 true))

(assert (=> d!1823160 true))

(declare-fun res!2441697 () Bool)

(assert (=> d!1823160 (= (choose!43927 lambda!315296) res!2441697)))

(assert (=> d!1822884 d!1823160))

(declare-fun bm!450518 () Bool)

(declare-fun call!450523 () Bool)

(assert (=> bm!450518 (= call!450523 (isEmpty!35467 (_2!36197 (get!21939 lt!2296483))))))

(declare-fun b!5786294 () Bool)

(declare-fun e!3553916 () Bool)

(declare-fun e!3553913 () Bool)

(assert (=> b!5786294 (= e!3553916 e!3553913)))

(declare-fun c!1024467 () Bool)

(assert (=> b!5786294 (= c!1024467 ((_ is EmptyLang!15797) r!7292))))

(declare-fun b!5786295 () Bool)

(declare-fun res!2441703 () Bool)

(declare-fun e!3553917 () Bool)

(assert (=> b!5786295 (=> (not res!2441703) (not e!3553917))))

(assert (=> b!5786295 (= res!2441703 (isEmpty!35467 (tail!11313 (_2!36197 (get!21939 lt!2296483)))))))

(declare-fun b!5786296 () Bool)

(declare-fun res!2441705 () Bool)

(declare-fun e!3553918 () Bool)

(assert (=> b!5786296 (=> res!2441705 e!3553918)))

(assert (=> b!5786296 (= res!2441705 (not ((_ is ElementMatch!15797) r!7292)))))

(assert (=> b!5786296 (= e!3553913 e!3553918)))

(declare-fun b!5786297 () Bool)

(declare-fun lt!2296526 () Bool)

(assert (=> b!5786297 (= e!3553916 (= lt!2296526 call!450523))))

(declare-fun b!5786298 () Bool)

(declare-fun e!3553914 () Bool)

(declare-fun e!3553912 () Bool)

(assert (=> b!5786298 (= e!3553914 e!3553912)))

(declare-fun res!2441704 () Bool)

(assert (=> b!5786298 (=> res!2441704 e!3553912)))

(assert (=> b!5786298 (= res!2441704 call!450523)))

(declare-fun d!1823162 () Bool)

(assert (=> d!1823162 e!3553916))

(declare-fun c!1024466 () Bool)

(assert (=> d!1823162 (= c!1024466 ((_ is EmptyExpr!15797) r!7292))))

(declare-fun e!3553915 () Bool)

(assert (=> d!1823162 (= lt!2296526 e!3553915)))

(declare-fun c!1024465 () Bool)

(assert (=> d!1823162 (= c!1024465 (isEmpty!35467 (_2!36197 (get!21939 lt!2296483))))))

(assert (=> d!1823162 (validRegex!7533 r!7292)))

(assert (=> d!1823162 (= (matchR!7982 r!7292 (_2!36197 (get!21939 lt!2296483))) lt!2296526)))

(declare-fun b!5786299 () Bool)

(assert (=> b!5786299 (= e!3553913 (not lt!2296526))))

(declare-fun b!5786300 () Bool)

(assert (=> b!5786300 (= e!3553912 (not (= (head!12218 (_2!36197 (get!21939 lt!2296483))) (c!1024165 r!7292))))))

(declare-fun b!5786301 () Bool)

(declare-fun res!2441699 () Bool)

(assert (=> b!5786301 (=> res!2441699 e!3553912)))

(assert (=> b!5786301 (= res!2441699 (not (isEmpty!35467 (tail!11313 (_2!36197 (get!21939 lt!2296483))))))))

(declare-fun b!5786302 () Bool)

(assert (=> b!5786302 (= e!3553918 e!3553914)))

(declare-fun res!2441698 () Bool)

(assert (=> b!5786302 (=> (not res!2441698) (not e!3553914))))

(assert (=> b!5786302 (= res!2441698 (not lt!2296526))))

(declare-fun b!5786303 () Bool)

(declare-fun res!2441700 () Bool)

(assert (=> b!5786303 (=> res!2441700 e!3553918)))

(assert (=> b!5786303 (= res!2441700 e!3553917)))

(declare-fun res!2441702 () Bool)

(assert (=> b!5786303 (=> (not res!2441702) (not e!3553917))))

(assert (=> b!5786303 (= res!2441702 lt!2296526)))

(declare-fun b!5786304 () Bool)

(assert (=> b!5786304 (= e!3553917 (= (head!12218 (_2!36197 (get!21939 lt!2296483))) (c!1024165 r!7292)))))

(declare-fun b!5786305 () Bool)

(assert (=> b!5786305 (= e!3553915 (nullable!5829 r!7292))))

(declare-fun b!5786306 () Bool)

(assert (=> b!5786306 (= e!3553915 (matchR!7982 (derivativeStep!4572 r!7292 (head!12218 (_2!36197 (get!21939 lt!2296483)))) (tail!11313 (_2!36197 (get!21939 lt!2296483)))))))

(declare-fun b!5786307 () Bool)

(declare-fun res!2441701 () Bool)

(assert (=> b!5786307 (=> (not res!2441701) (not e!3553917))))

(assert (=> b!5786307 (= res!2441701 (not call!450523))))

(assert (= (and d!1823162 c!1024465) b!5786305))

(assert (= (and d!1823162 (not c!1024465)) b!5786306))

(assert (= (and d!1823162 c!1024466) b!5786297))

(assert (= (and d!1823162 (not c!1024466)) b!5786294))

(assert (= (and b!5786294 c!1024467) b!5786299))

(assert (= (and b!5786294 (not c!1024467)) b!5786296))

(assert (= (and b!5786296 (not res!2441705)) b!5786303))

(assert (= (and b!5786303 res!2441702) b!5786307))

(assert (= (and b!5786307 res!2441701) b!5786295))

(assert (= (and b!5786295 res!2441703) b!5786304))

(assert (= (and b!5786303 (not res!2441700)) b!5786302))

(assert (= (and b!5786302 res!2441698) b!5786298))

(assert (= (and b!5786298 (not res!2441704)) b!5786301))

(assert (= (and b!5786301 (not res!2441699)) b!5786300))

(assert (= (or b!5786297 b!5786298 b!5786307) bm!450518))

(declare-fun m!6731276 () Bool)

(assert (=> b!5786306 m!6731276))

(assert (=> b!5786306 m!6731276))

(declare-fun m!6731278 () Bool)

(assert (=> b!5786306 m!6731278))

(declare-fun m!6731280 () Bool)

(assert (=> b!5786306 m!6731280))

(assert (=> b!5786306 m!6731278))

(assert (=> b!5786306 m!6731280))

(declare-fun m!6731282 () Bool)

(assert (=> b!5786306 m!6731282))

(assert (=> b!5786305 m!6730456))

(assert (=> b!5786295 m!6731280))

(assert (=> b!5786295 m!6731280))

(declare-fun m!6731284 () Bool)

(assert (=> b!5786295 m!6731284))

(assert (=> b!5786304 m!6731276))

(declare-fun m!6731286 () Bool)

(assert (=> d!1823162 m!6731286))

(assert (=> d!1823162 m!6730392))

(assert (=> bm!450518 m!6731286))

(assert (=> b!5786301 m!6731280))

(assert (=> b!5786301 m!6731280))

(assert (=> b!5786301 m!6731284))

(assert (=> b!5786300 m!6731276))

(assert (=> b!5785712 d!1823162))

(assert (=> b!5785712 d!1822956))

(declare-fun b!5786315 () Bool)

(declare-fun e!3553924 () (InoxSet Context!10362))

(assert (=> b!5786315 (= e!3553924 ((as const (Array Context!10362 Bool)) false))))

(declare-fun d!1823166 () Bool)

(declare-fun c!1024471 () Bool)

(declare-fun e!3553923 () Bool)

(assert (=> d!1823166 (= c!1024471 e!3553923)))

(declare-fun res!2441708 () Bool)

(assert (=> d!1823166 (=> (not res!2441708) (not e!3553923))))

(assert (=> d!1823166 (= res!2441708 ((_ is Cons!63567) (exprs!5681 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))))))

(declare-fun e!3553925 () (InoxSet Context!10362))

(assert (=> d!1823166 (= (derivationStepZipperUp!1061 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (h!70014 s!2326)) e!3553925)))

(declare-fun b!5786316 () Bool)

(assert (=> b!5786316 (= e!3553925 e!3553924)))

(declare-fun c!1024472 () Bool)

(assert (=> b!5786316 (= c!1024472 ((_ is Cons!63567) (exprs!5681 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))))))

(declare-fun b!5786317 () Bool)

(declare-fun call!450525 () (InoxSet Context!10362))

(assert (=> b!5786317 (= e!3553925 ((_ map or) call!450525 (derivationStepZipperUp!1061 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))))) (h!70014 s!2326))))))

(declare-fun b!5786318 () Bool)

(assert (=> b!5786318 (= e!3553924 call!450525)))

(declare-fun b!5786319 () Bool)

(assert (=> b!5786319 (= e!3553923 (nullable!5829 (h!70015 (exprs!5681 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))))))))

(declare-fun bm!450520 () Bool)

(assert (=> bm!450520 (= call!450525 (derivationStepZipperDown!1135 (h!70015 (exprs!5681 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))) (Context!10363 (t!377030 (exprs!5681 (Context!10363 (t!377030 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567)))))))) (h!70014 s!2326)))))

(assert (= (and d!1823166 res!2441708) b!5786319))

(assert (= (and d!1823166 c!1024471) b!5786317))

(assert (= (and d!1823166 (not c!1024471)) b!5786316))

(assert (= (and b!5786316 c!1024472) b!5786318))

(assert (= (and b!5786316 (not c!1024472)) b!5786315))

(assert (= (or b!5786317 b!5786318) bm!450520))

(declare-fun m!6731294 () Bool)

(assert (=> b!5786317 m!6731294))

(declare-fun m!6731296 () Bool)

(assert (=> b!5786319 m!6731296))

(declare-fun m!6731298 () Bool)

(assert (=> bm!450520 m!6731298))

(assert (=> b!5785634 d!1823166))

(declare-fun d!1823172 () Bool)

(declare-fun res!2441721 () Bool)

(declare-fun e!3553937 () Bool)

(assert (=> d!1823172 (=> res!2441721 e!3553937)))

(assert (=> d!1823172 (= res!2441721 ((_ is Nil!63568) lt!2296434))))

(assert (=> d!1823172 (= (noDuplicate!1698 lt!2296434) e!3553937)))

(declare-fun b!5786338 () Bool)

(declare-fun e!3553938 () Bool)

(assert (=> b!5786338 (= e!3553937 e!3553938)))

(declare-fun res!2441722 () Bool)

(assert (=> b!5786338 (=> (not res!2441722) (not e!3553938))))

(declare-fun contains!19872 (List!63692 Context!10362) Bool)

(assert (=> b!5786338 (= res!2441722 (not (contains!19872 (t!377031 lt!2296434) (h!70016 lt!2296434))))))

(declare-fun b!5786339 () Bool)

(assert (=> b!5786339 (= e!3553938 (noDuplicate!1698 (t!377031 lt!2296434)))))

(assert (= (and d!1823172 (not res!2441721)) b!5786338))

(assert (= (and b!5786338 res!2441722) b!5786339))

(declare-fun m!6731314 () Bool)

(assert (=> b!5786338 m!6731314))

(declare-fun m!6731316 () Bool)

(assert (=> b!5786339 m!6731316))

(assert (=> d!1822826 d!1823172))

(declare-fun d!1823176 () Bool)

(declare-fun e!3553946 () Bool)

(assert (=> d!1823176 e!3553946))

(declare-fun res!2441728 () Bool)

(assert (=> d!1823176 (=> (not res!2441728) (not e!3553946))))

(declare-fun res!2441727 () List!63692)

(assert (=> d!1823176 (= res!2441728 (noDuplicate!1698 res!2441727))))

(declare-fun e!3553945 () Bool)

(assert (=> d!1823176 e!3553945))

(assert (=> d!1823176 (= (choose!43924 z!1189) res!2441727)))

(declare-fun b!5786347 () Bool)

(declare-fun e!3553947 () Bool)

(declare-fun tp!1596139 () Bool)

(assert (=> b!5786347 (= e!3553947 tp!1596139)))

(declare-fun b!5786346 () Bool)

(declare-fun tp!1596140 () Bool)

(assert (=> b!5786346 (= e!3553945 (and (inv!82739 (h!70016 res!2441727)) e!3553947 tp!1596140))))

(declare-fun b!5786348 () Bool)

(assert (=> b!5786348 (= e!3553946 (= (content!11621 res!2441727) z!1189))))

(assert (= b!5786346 b!5786347))

(assert (= (and d!1823176 ((_ is Cons!63568) res!2441727)) b!5786346))

(assert (= (and d!1823176 res!2441728) b!5786348))

(declare-fun m!6731318 () Bool)

(assert (=> d!1823176 m!6731318))

(declare-fun m!6731320 () Bool)

(assert (=> b!5786346 m!6731320))

(declare-fun m!6731322 () Bool)

(assert (=> b!5786348 m!6731322))

(assert (=> d!1822826 d!1823176))

(declare-fun d!1823178 () Bool)

(assert (=> d!1823178 (= (nullable!5829 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))) (nullableFct!1862 (h!70015 (exprs!5681 (Context!10363 (Cons!63567 r!7292 Nil!63567))))))))

(declare-fun bs!1366237 () Bool)

(assert (= bs!1366237 d!1823178))

(declare-fun m!6731324 () Bool)

(assert (=> bs!1366237 m!6731324))

(assert (=> b!5785636 d!1823178))

(declare-fun d!1823180 () Bool)

(declare-fun c!1024488 () Bool)

(assert (=> d!1823180 (= c!1024488 ((_ is Nil!63568) lt!2296434))))

(declare-fun e!3553960 () (InoxSet Context!10362))

(assert (=> d!1823180 (= (content!11621 lt!2296434) e!3553960)))

(declare-fun b!5786373 () Bool)

(assert (=> b!5786373 (= e!3553960 ((as const (Array Context!10362 Bool)) false))))

(declare-fun b!5786374 () Bool)

(assert (=> b!5786374 (= e!3553960 ((_ map or) (store ((as const (Array Context!10362 Bool)) false) (h!70016 lt!2296434) true) (content!11621 (t!377031 lt!2296434))))))

(assert (= (and d!1823180 c!1024488) b!5786373))

(assert (= (and d!1823180 (not c!1024488)) b!5786374))

(declare-fun m!6731326 () Bool)

(assert (=> b!5786374 m!6731326))

(declare-fun m!6731328 () Bool)

(assert (=> b!5786374 m!6731328))

(assert (=> b!5785365 d!1823180))

(declare-fun b!5786376 () Bool)

(declare-fun e!3553961 () Bool)

(declare-fun tp!1596144 () Bool)

(declare-fun tp!1596145 () Bool)

(assert (=> b!5786376 (= e!3553961 (and tp!1596144 tp!1596145))))

(assert (=> b!5785734 (= tp!1596089 e!3553961)))

(declare-fun b!5786378 () Bool)

(declare-fun tp!1596142 () Bool)

(declare-fun tp!1596143 () Bool)

(assert (=> b!5786378 (= e!3553961 (and tp!1596142 tp!1596143))))

(declare-fun b!5786375 () Bool)

(assert (=> b!5786375 (= e!3553961 tp_is_empty!40847)))

(declare-fun b!5786377 () Bool)

(declare-fun tp!1596141 () Bool)

(assert (=> b!5786377 (= e!3553961 tp!1596141)))

(assert (= (and b!5785734 ((_ is ElementMatch!15797) (regOne!32106 (regTwo!32107 r!7292)))) b!5786375))

(assert (= (and b!5785734 ((_ is Concat!24642) (regOne!32106 (regTwo!32107 r!7292)))) b!5786376))

(assert (= (and b!5785734 ((_ is Star!15797) (regOne!32106 (regTwo!32107 r!7292)))) b!5786377))

(assert (= (and b!5785734 ((_ is Union!15797) (regOne!32106 (regTwo!32107 r!7292)))) b!5786378))

(declare-fun b!5786380 () Bool)

(declare-fun e!3553962 () Bool)

(declare-fun tp!1596149 () Bool)

(declare-fun tp!1596150 () Bool)

(assert (=> b!5786380 (= e!3553962 (and tp!1596149 tp!1596150))))

(assert (=> b!5785734 (= tp!1596090 e!3553962)))

(declare-fun b!5786382 () Bool)

(declare-fun tp!1596147 () Bool)

(declare-fun tp!1596148 () Bool)

(assert (=> b!5786382 (= e!3553962 (and tp!1596147 tp!1596148))))

(declare-fun b!5786379 () Bool)

(assert (=> b!5786379 (= e!3553962 tp_is_empty!40847)))

(declare-fun b!5786381 () Bool)

(declare-fun tp!1596146 () Bool)

(assert (=> b!5786381 (= e!3553962 tp!1596146)))

(assert (= (and b!5785734 ((_ is ElementMatch!15797) (regTwo!32106 (regTwo!32107 r!7292)))) b!5786379))

(assert (= (and b!5785734 ((_ is Concat!24642) (regTwo!32106 (regTwo!32107 r!7292)))) b!5786380))

(assert (= (and b!5785734 ((_ is Star!15797) (regTwo!32106 (regTwo!32107 r!7292)))) b!5786381))

(assert (= (and b!5785734 ((_ is Union!15797) (regTwo!32106 (regTwo!32107 r!7292)))) b!5786382))

(declare-fun b!5786384 () Bool)

(declare-fun e!3553963 () Bool)

(declare-fun tp!1596154 () Bool)

(declare-fun tp!1596155 () Bool)

(assert (=> b!5786384 (= e!3553963 (and tp!1596154 tp!1596155))))

(assert (=> b!5785753 (= tp!1596109 e!3553963)))

(declare-fun b!5786386 () Bool)

(declare-fun tp!1596152 () Bool)

(declare-fun tp!1596153 () Bool)

(assert (=> b!5786386 (= e!3553963 (and tp!1596152 tp!1596153))))

(declare-fun b!5786383 () Bool)

(assert (=> b!5786383 (= e!3553963 tp_is_empty!40847)))

(declare-fun b!5786385 () Bool)

(declare-fun tp!1596151 () Bool)

(assert (=> b!5786385 (= e!3553963 tp!1596151)))

(assert (= (and b!5785753 ((_ is ElementMatch!15797) (regOne!32106 (regOne!32106 r!7292)))) b!5786383))

(assert (= (and b!5785753 ((_ is Concat!24642) (regOne!32106 (regOne!32106 r!7292)))) b!5786384))

(assert (= (and b!5785753 ((_ is Star!15797) (regOne!32106 (regOne!32106 r!7292)))) b!5786385))

(assert (= (and b!5785753 ((_ is Union!15797) (regOne!32106 (regOne!32106 r!7292)))) b!5786386))

(declare-fun b!5786388 () Bool)

(declare-fun e!3553964 () Bool)

(declare-fun tp!1596159 () Bool)

(declare-fun tp!1596160 () Bool)

(assert (=> b!5786388 (= e!3553964 (and tp!1596159 tp!1596160))))

(assert (=> b!5785753 (= tp!1596110 e!3553964)))

(declare-fun b!5786390 () Bool)

(declare-fun tp!1596157 () Bool)

(declare-fun tp!1596158 () Bool)

(assert (=> b!5786390 (= e!3553964 (and tp!1596157 tp!1596158))))

(declare-fun b!5786387 () Bool)

(assert (=> b!5786387 (= e!3553964 tp_is_empty!40847)))

(declare-fun b!5786389 () Bool)

(declare-fun tp!1596156 () Bool)

(assert (=> b!5786389 (= e!3553964 tp!1596156)))

(assert (= (and b!5785753 ((_ is ElementMatch!15797) (regTwo!32106 (regOne!32106 r!7292)))) b!5786387))

(assert (= (and b!5785753 ((_ is Concat!24642) (regTwo!32106 (regOne!32106 r!7292)))) b!5786388))

(assert (= (and b!5785753 ((_ is Star!15797) (regTwo!32106 (regOne!32106 r!7292)))) b!5786389))

(assert (= (and b!5785753 ((_ is Union!15797) (regTwo!32106 (regOne!32106 r!7292)))) b!5786390))

(declare-fun b!5786391 () Bool)

(declare-fun e!3553965 () Bool)

(declare-fun tp!1596161 () Bool)

(declare-fun tp!1596162 () Bool)

(assert (=> b!5786391 (= e!3553965 (and tp!1596161 tp!1596162))))

(assert (=> b!5785741 (= tp!1596095 e!3553965)))

(assert (= (and b!5785741 ((_ is Cons!63567) (exprs!5681 setElem!38872))) b!5786391))

(declare-fun b!5786393 () Bool)

(declare-fun e!3553966 () Bool)

(declare-fun tp!1596166 () Bool)

(declare-fun tp!1596167 () Bool)

(assert (=> b!5786393 (= e!3553966 (and tp!1596166 tp!1596167))))

(assert (=> b!5785754 (= tp!1596106 e!3553966)))

(declare-fun b!5786395 () Bool)

(declare-fun tp!1596164 () Bool)

(declare-fun tp!1596165 () Bool)

(assert (=> b!5786395 (= e!3553966 (and tp!1596164 tp!1596165))))

(declare-fun b!5786392 () Bool)

(assert (=> b!5786392 (= e!3553966 tp_is_empty!40847)))

(declare-fun b!5786394 () Bool)

(declare-fun tp!1596163 () Bool)

(assert (=> b!5786394 (= e!3553966 tp!1596163)))

(assert (= (and b!5785754 ((_ is ElementMatch!15797) (reg!16126 (regOne!32106 r!7292)))) b!5786392))

(assert (= (and b!5785754 ((_ is Concat!24642) (reg!16126 (regOne!32106 r!7292)))) b!5786393))

(assert (= (and b!5785754 ((_ is Star!15797) (reg!16126 (regOne!32106 r!7292)))) b!5786394))

(assert (= (and b!5785754 ((_ is Union!15797) (reg!16126 (regOne!32106 r!7292)))) b!5786395))

(declare-fun b!5786397 () Bool)

(declare-fun e!3553967 () Bool)

(declare-fun tp!1596171 () Bool)

(declare-fun tp!1596172 () Bool)

(assert (=> b!5786397 (= e!3553967 (and tp!1596171 tp!1596172))))

(assert (=> b!5785755 (= tp!1596107 e!3553967)))

(declare-fun b!5786399 () Bool)

(declare-fun tp!1596169 () Bool)

(declare-fun tp!1596170 () Bool)

(assert (=> b!5786399 (= e!3553967 (and tp!1596169 tp!1596170))))

(declare-fun b!5786396 () Bool)

(assert (=> b!5786396 (= e!3553967 tp_is_empty!40847)))

(declare-fun b!5786398 () Bool)

(declare-fun tp!1596168 () Bool)

(assert (=> b!5786398 (= e!3553967 tp!1596168)))

(assert (= (and b!5785755 ((_ is ElementMatch!15797) (regOne!32107 (regOne!32106 r!7292)))) b!5786396))

(assert (= (and b!5785755 ((_ is Concat!24642) (regOne!32107 (regOne!32106 r!7292)))) b!5786397))

(assert (= (and b!5785755 ((_ is Star!15797) (regOne!32107 (regOne!32106 r!7292)))) b!5786398))

(assert (= (and b!5785755 ((_ is Union!15797) (regOne!32107 (regOne!32106 r!7292)))) b!5786399))

(declare-fun b!5786401 () Bool)

(declare-fun e!3553968 () Bool)

(declare-fun tp!1596176 () Bool)

(declare-fun tp!1596177 () Bool)

(assert (=> b!5786401 (= e!3553968 (and tp!1596176 tp!1596177))))

(assert (=> b!5785755 (= tp!1596108 e!3553968)))

(declare-fun b!5786403 () Bool)

(declare-fun tp!1596174 () Bool)

(declare-fun tp!1596175 () Bool)

(assert (=> b!5786403 (= e!3553968 (and tp!1596174 tp!1596175))))

(declare-fun b!5786400 () Bool)

(assert (=> b!5786400 (= e!3553968 tp_is_empty!40847)))

(declare-fun b!5786402 () Bool)

(declare-fun tp!1596173 () Bool)

(assert (=> b!5786402 (= e!3553968 tp!1596173)))

(assert (= (and b!5785755 ((_ is ElementMatch!15797) (regTwo!32107 (regOne!32106 r!7292)))) b!5786400))

(assert (= (and b!5785755 ((_ is Concat!24642) (regTwo!32107 (regOne!32106 r!7292)))) b!5786401))

(assert (= (and b!5785755 ((_ is Star!15797) (regTwo!32107 (regOne!32106 r!7292)))) b!5786402))

(assert (= (and b!5785755 ((_ is Union!15797) (regTwo!32107 (regOne!32106 r!7292)))) b!5786403))

(declare-fun condSetEmpty!38873 () Bool)

(assert (=> setNonEmpty!38872 (= condSetEmpty!38873 (= setRest!38872 ((as const (Array Context!10362 Bool)) false)))))

(declare-fun setRes!38873 () Bool)

(assert (=> setNonEmpty!38872 (= tp!1596096 setRes!38873)))

(declare-fun setIsEmpty!38873 () Bool)

(assert (=> setIsEmpty!38873 setRes!38873))

(declare-fun e!3553969 () Bool)

(declare-fun tp!1596179 () Bool)

(declare-fun setNonEmpty!38873 () Bool)

(declare-fun setElem!38873 () Context!10362)

(assert (=> setNonEmpty!38873 (= setRes!38873 (and tp!1596179 (inv!82739 setElem!38873) e!3553969))))

(declare-fun setRest!38873 () (InoxSet Context!10362))

(assert (=> setNonEmpty!38873 (= setRest!38872 ((_ map or) (store ((as const (Array Context!10362 Bool)) false) setElem!38873 true) setRest!38873))))

(declare-fun b!5786404 () Bool)

(declare-fun tp!1596178 () Bool)

(assert (=> b!5786404 (= e!3553969 tp!1596178)))

(assert (= (and setNonEmpty!38872 condSetEmpty!38873) setIsEmpty!38873))

(assert (= (and setNonEmpty!38872 (not condSetEmpty!38873)) setNonEmpty!38873))

(assert (= setNonEmpty!38873 b!5786404))

(declare-fun m!6731330 () Bool)

(assert (=> setNonEmpty!38873 m!6731330))

(declare-fun b!5786406 () Bool)

(declare-fun e!3553970 () Bool)

(declare-fun tp!1596183 () Bool)

(declare-fun tp!1596184 () Bool)

(assert (=> b!5786406 (= e!3553970 (and tp!1596183 tp!1596184))))

(assert (=> b!5785768 (= tp!1596122 e!3553970)))

(declare-fun b!5786408 () Bool)

(declare-fun tp!1596181 () Bool)

(declare-fun tp!1596182 () Bool)

(assert (=> b!5786408 (= e!3553970 (and tp!1596181 tp!1596182))))

(declare-fun b!5786405 () Bool)

(assert (=> b!5786405 (= e!3553970 tp_is_empty!40847)))

(declare-fun b!5786407 () Bool)

(declare-fun tp!1596180 () Bool)

(assert (=> b!5786407 (= e!3553970 tp!1596180)))

(assert (= (and b!5785768 ((_ is ElementMatch!15797) (h!70015 (exprs!5681 setElem!38866)))) b!5786405))

(assert (= (and b!5785768 ((_ is Concat!24642) (h!70015 (exprs!5681 setElem!38866)))) b!5786406))

(assert (= (and b!5785768 ((_ is Star!15797) (h!70015 (exprs!5681 setElem!38866)))) b!5786407))

(assert (= (and b!5785768 ((_ is Union!15797) (h!70015 (exprs!5681 setElem!38866)))) b!5786408))

(declare-fun b!5786409 () Bool)

(declare-fun e!3553971 () Bool)

(declare-fun tp!1596185 () Bool)

(declare-fun tp!1596186 () Bool)

(assert (=> b!5786409 (= e!3553971 (and tp!1596185 tp!1596186))))

(assert (=> b!5785768 (= tp!1596123 e!3553971)))

(assert (= (and b!5785768 ((_ is Cons!63567) (t!377030 (exprs!5681 setElem!38866)))) b!5786409))

(declare-fun b!5786411 () Bool)

(declare-fun e!3553972 () Bool)

(declare-fun tp!1596190 () Bool)

(declare-fun tp!1596191 () Bool)

(assert (=> b!5786411 (= e!3553972 (and tp!1596190 tp!1596191))))

(assert (=> b!5785730 (= tp!1596084 e!3553972)))

(declare-fun b!5786413 () Bool)

(declare-fun tp!1596188 () Bool)

(declare-fun tp!1596189 () Bool)

(assert (=> b!5786413 (= e!3553972 (and tp!1596188 tp!1596189))))

(declare-fun b!5786410 () Bool)

(assert (=> b!5786410 (= e!3553972 tp_is_empty!40847)))

(declare-fun b!5786412 () Bool)

(declare-fun tp!1596187 () Bool)

(assert (=> b!5786412 (= e!3553972 tp!1596187)))

(assert (= (and b!5785730 ((_ is ElementMatch!15797) (regOne!32106 (regOne!32107 r!7292)))) b!5786410))

(assert (= (and b!5785730 ((_ is Concat!24642) (regOne!32106 (regOne!32107 r!7292)))) b!5786411))

(assert (= (and b!5785730 ((_ is Star!15797) (regOne!32106 (regOne!32107 r!7292)))) b!5786412))

(assert (= (and b!5785730 ((_ is Union!15797) (regOne!32106 (regOne!32107 r!7292)))) b!5786413))

(declare-fun b!5786415 () Bool)

(declare-fun e!3553973 () Bool)

(declare-fun tp!1596195 () Bool)

(declare-fun tp!1596196 () Bool)

(assert (=> b!5786415 (= e!3553973 (and tp!1596195 tp!1596196))))

(assert (=> b!5785730 (= tp!1596085 e!3553973)))

(declare-fun b!5786417 () Bool)

(declare-fun tp!1596193 () Bool)

(declare-fun tp!1596194 () Bool)

(assert (=> b!5786417 (= e!3553973 (and tp!1596193 tp!1596194))))

(declare-fun b!5786414 () Bool)

(assert (=> b!5786414 (= e!3553973 tp_is_empty!40847)))

(declare-fun b!5786416 () Bool)

(declare-fun tp!1596192 () Bool)

(assert (=> b!5786416 (= e!3553973 tp!1596192)))

(assert (= (and b!5785730 ((_ is ElementMatch!15797) (regTwo!32106 (regOne!32107 r!7292)))) b!5786414))

(assert (= (and b!5785730 ((_ is Concat!24642) (regTwo!32106 (regOne!32107 r!7292)))) b!5786415))

(assert (= (and b!5785730 ((_ is Star!15797) (regTwo!32106 (regOne!32107 r!7292)))) b!5786416))

(assert (= (and b!5785730 ((_ is Union!15797) (regTwo!32106 (regOne!32107 r!7292)))) b!5786417))

(declare-fun b!5786418 () Bool)

(declare-fun e!3553974 () Bool)

(declare-fun tp!1596197 () Bool)

(assert (=> b!5786418 (= e!3553974 (and tp_is_empty!40847 tp!1596197))))

(assert (=> b!5785746 (= tp!1596099 e!3553974)))

(assert (= (and b!5785746 ((_ is Cons!63566) (t!377029 (t!377029 s!2326)))) b!5786418))

(declare-fun b!5786420 () Bool)

(declare-fun e!3553975 () Bool)

(declare-fun tp!1596201 () Bool)

(declare-fun tp!1596202 () Bool)

(assert (=> b!5786420 (= e!3553975 (and tp!1596201 tp!1596202))))

(assert (=> b!5785731 (= tp!1596081 e!3553975)))

(declare-fun b!5786422 () Bool)

(declare-fun tp!1596199 () Bool)

(declare-fun tp!1596200 () Bool)

(assert (=> b!5786422 (= e!3553975 (and tp!1596199 tp!1596200))))

(declare-fun b!5786419 () Bool)

(assert (=> b!5786419 (= e!3553975 tp_is_empty!40847)))

(declare-fun b!5786421 () Bool)

(declare-fun tp!1596198 () Bool)

(assert (=> b!5786421 (= e!3553975 tp!1596198)))

(assert (= (and b!5785731 ((_ is ElementMatch!15797) (reg!16126 (regOne!32107 r!7292)))) b!5786419))

(assert (= (and b!5785731 ((_ is Concat!24642) (reg!16126 (regOne!32107 r!7292)))) b!5786420))

(assert (= (and b!5785731 ((_ is Star!15797) (reg!16126 (regOne!32107 r!7292)))) b!5786421))

(assert (= (and b!5785731 ((_ is Union!15797) (reg!16126 (regOne!32107 r!7292)))) b!5786422))

(declare-fun b!5786424 () Bool)

(declare-fun e!3553976 () Bool)

(declare-fun tp!1596206 () Bool)

(declare-fun tp!1596207 () Bool)

(assert (=> b!5786424 (= e!3553976 (and tp!1596206 tp!1596207))))

(assert (=> b!5785732 (= tp!1596082 e!3553976)))

(declare-fun b!5786426 () Bool)

(declare-fun tp!1596204 () Bool)

(declare-fun tp!1596205 () Bool)

(assert (=> b!5786426 (= e!3553976 (and tp!1596204 tp!1596205))))

(declare-fun b!5786423 () Bool)

(assert (=> b!5786423 (= e!3553976 tp_is_empty!40847)))

(declare-fun b!5786425 () Bool)

(declare-fun tp!1596203 () Bool)

(assert (=> b!5786425 (= e!3553976 tp!1596203)))

(assert (= (and b!5785732 ((_ is ElementMatch!15797) (regOne!32107 (regOne!32107 r!7292)))) b!5786423))

(assert (= (and b!5785732 ((_ is Concat!24642) (regOne!32107 (regOne!32107 r!7292)))) b!5786424))

(assert (= (and b!5785732 ((_ is Star!15797) (regOne!32107 (regOne!32107 r!7292)))) b!5786425))

(assert (= (and b!5785732 ((_ is Union!15797) (regOne!32107 (regOne!32107 r!7292)))) b!5786426))

(declare-fun b!5786428 () Bool)

(declare-fun e!3553977 () Bool)

(declare-fun tp!1596211 () Bool)

(declare-fun tp!1596212 () Bool)

(assert (=> b!5786428 (= e!3553977 (and tp!1596211 tp!1596212))))

(assert (=> b!5785732 (= tp!1596083 e!3553977)))

(declare-fun b!5786430 () Bool)

(declare-fun tp!1596209 () Bool)

(declare-fun tp!1596210 () Bool)

(assert (=> b!5786430 (= e!3553977 (and tp!1596209 tp!1596210))))

(declare-fun b!5786427 () Bool)

(assert (=> b!5786427 (= e!3553977 tp_is_empty!40847)))

(declare-fun b!5786429 () Bool)

(declare-fun tp!1596208 () Bool)

(assert (=> b!5786429 (= e!3553977 tp!1596208)))

(assert (= (and b!5785732 ((_ is ElementMatch!15797) (regTwo!32107 (regOne!32107 r!7292)))) b!5786427))

(assert (= (and b!5785732 ((_ is Concat!24642) (regTwo!32107 (regOne!32107 r!7292)))) b!5786428))

(assert (= (and b!5785732 ((_ is Star!15797) (regTwo!32107 (regOne!32107 r!7292)))) b!5786429))

(assert (= (and b!5785732 ((_ is Union!15797) (regTwo!32107 (regOne!32107 r!7292)))) b!5786430))

(declare-fun b!5786432 () Bool)

(declare-fun e!3553978 () Bool)

(declare-fun tp!1596216 () Bool)

(declare-fun tp!1596217 () Bool)

(assert (=> b!5786432 (= e!3553978 (and tp!1596216 tp!1596217))))

(assert (=> b!5785751 (= tp!1596104 e!3553978)))

(declare-fun b!5786434 () Bool)

(declare-fun tp!1596214 () Bool)

(declare-fun tp!1596215 () Bool)

(assert (=> b!5786434 (= e!3553978 (and tp!1596214 tp!1596215))))

(declare-fun b!5786431 () Bool)

(assert (=> b!5786431 (= e!3553978 tp_is_empty!40847)))

(declare-fun b!5786433 () Bool)

(declare-fun tp!1596213 () Bool)

(assert (=> b!5786433 (= e!3553978 tp!1596213)))

(assert (= (and b!5785751 ((_ is ElementMatch!15797) (h!70015 (exprs!5681 (h!70016 zl!343))))) b!5786431))

(assert (= (and b!5785751 ((_ is Concat!24642) (h!70015 (exprs!5681 (h!70016 zl!343))))) b!5786432))

(assert (= (and b!5785751 ((_ is Star!15797) (h!70015 (exprs!5681 (h!70016 zl!343))))) b!5786433))

(assert (= (and b!5785751 ((_ is Union!15797) (h!70015 (exprs!5681 (h!70016 zl!343))))) b!5786434))

(declare-fun b!5786435 () Bool)

(declare-fun e!3553979 () Bool)

(declare-fun tp!1596218 () Bool)

(declare-fun tp!1596219 () Bool)

(assert (=> b!5786435 (= e!3553979 (and tp!1596218 tp!1596219))))

(assert (=> b!5785751 (= tp!1596105 e!3553979)))

(assert (= (and b!5785751 ((_ is Cons!63567) (t!377030 (exprs!5681 (h!70016 zl!343))))) b!5786435))

(declare-fun b!5786437 () Bool)

(declare-fun e!3553981 () Bool)

(declare-fun tp!1596220 () Bool)

(assert (=> b!5786437 (= e!3553981 tp!1596220)))

(declare-fun tp!1596221 () Bool)

(declare-fun b!5786436 () Bool)

(declare-fun e!3553980 () Bool)

(assert (=> b!5786436 (= e!3553980 (and (inv!82739 (h!70016 (t!377031 (t!377031 zl!343)))) e!3553981 tp!1596221))))

(assert (=> b!5785766 (= tp!1596121 e!3553980)))

(assert (= b!5786436 b!5786437))

(assert (= (and b!5785766 ((_ is Cons!63568) (t!377031 (t!377031 zl!343)))) b!5786436))

(declare-fun m!6731332 () Bool)

(assert (=> b!5786436 m!6731332))

(declare-fun b!5786438 () Bool)

(declare-fun e!3553982 () Bool)

(declare-fun tp!1596222 () Bool)

(declare-fun tp!1596223 () Bool)

(assert (=> b!5786438 (= e!3553982 (and tp!1596222 tp!1596223))))

(assert (=> b!5785767 (= tp!1596120 e!3553982)))

(assert (= (and b!5785767 ((_ is Cons!63567) (exprs!5681 (h!70016 (t!377031 zl!343))))) b!5786438))

(declare-fun b!5786440 () Bool)

(declare-fun e!3553983 () Bool)

(declare-fun tp!1596227 () Bool)

(declare-fun tp!1596228 () Bool)

(assert (=> b!5786440 (= e!3553983 (and tp!1596227 tp!1596228))))

(assert (=> b!5785758 (= tp!1596111 e!3553983)))

(declare-fun b!5786442 () Bool)

(declare-fun tp!1596225 () Bool)

(declare-fun tp!1596226 () Bool)

(assert (=> b!5786442 (= e!3553983 (and tp!1596225 tp!1596226))))

(declare-fun b!5786439 () Bool)

(assert (=> b!5786439 (= e!3553983 tp_is_empty!40847)))

(declare-fun b!5786441 () Bool)

(declare-fun tp!1596224 () Bool)

(assert (=> b!5786441 (= e!3553983 tp!1596224)))

(assert (= (and b!5785758 ((_ is ElementMatch!15797) (reg!16126 (regTwo!32106 r!7292)))) b!5786439))

(assert (= (and b!5785758 ((_ is Concat!24642) (reg!16126 (regTwo!32106 r!7292)))) b!5786440))

(assert (= (and b!5785758 ((_ is Star!15797) (reg!16126 (regTwo!32106 r!7292)))) b!5786441))

(assert (= (and b!5785758 ((_ is Union!15797) (reg!16126 (regTwo!32106 r!7292)))) b!5786442))

(declare-fun b!5786444 () Bool)

(declare-fun e!3553984 () Bool)

(declare-fun tp!1596232 () Bool)

(declare-fun tp!1596233 () Bool)

(assert (=> b!5786444 (= e!3553984 (and tp!1596232 tp!1596233))))

(assert (=> b!5785759 (= tp!1596112 e!3553984)))

(declare-fun b!5786446 () Bool)

(declare-fun tp!1596230 () Bool)

(declare-fun tp!1596231 () Bool)

(assert (=> b!5786446 (= e!3553984 (and tp!1596230 tp!1596231))))

(declare-fun b!5786443 () Bool)

(assert (=> b!5786443 (= e!3553984 tp_is_empty!40847)))

(declare-fun b!5786445 () Bool)

(declare-fun tp!1596229 () Bool)

(assert (=> b!5786445 (= e!3553984 tp!1596229)))

(assert (= (and b!5785759 ((_ is ElementMatch!15797) (regOne!32107 (regTwo!32106 r!7292)))) b!5786443))

(assert (= (and b!5785759 ((_ is Concat!24642) (regOne!32107 (regTwo!32106 r!7292)))) b!5786444))

(assert (= (and b!5785759 ((_ is Star!15797) (regOne!32107 (regTwo!32106 r!7292)))) b!5786445))

(assert (= (and b!5785759 ((_ is Union!15797) (regOne!32107 (regTwo!32106 r!7292)))) b!5786446))

(declare-fun b!5786448 () Bool)

(declare-fun e!3553985 () Bool)

(declare-fun tp!1596237 () Bool)

(declare-fun tp!1596238 () Bool)

(assert (=> b!5786448 (= e!3553985 (and tp!1596237 tp!1596238))))

(assert (=> b!5785759 (= tp!1596113 e!3553985)))

(declare-fun b!5786450 () Bool)

(declare-fun tp!1596235 () Bool)

(declare-fun tp!1596236 () Bool)

(assert (=> b!5786450 (= e!3553985 (and tp!1596235 tp!1596236))))

(declare-fun b!5786447 () Bool)

(assert (=> b!5786447 (= e!3553985 tp_is_empty!40847)))

(declare-fun b!5786449 () Bool)

(declare-fun tp!1596234 () Bool)

(assert (=> b!5786449 (= e!3553985 tp!1596234)))

(assert (= (and b!5785759 ((_ is ElementMatch!15797) (regTwo!32107 (regTwo!32106 r!7292)))) b!5786447))

(assert (= (and b!5785759 ((_ is Concat!24642) (regTwo!32107 (regTwo!32106 r!7292)))) b!5786448))

(assert (= (and b!5785759 ((_ is Star!15797) (regTwo!32107 (regTwo!32106 r!7292)))) b!5786449))

(assert (= (and b!5785759 ((_ is Union!15797) (regTwo!32107 (regTwo!32106 r!7292)))) b!5786450))

(declare-fun b!5786452 () Bool)

(declare-fun e!3553986 () Bool)

(declare-fun tp!1596242 () Bool)

(declare-fun tp!1596243 () Bool)

(assert (=> b!5786452 (= e!3553986 (and tp!1596242 tp!1596243))))

(assert (=> b!5785771 (= tp!1596124 e!3553986)))

(declare-fun b!5786454 () Bool)

(declare-fun tp!1596240 () Bool)

(declare-fun tp!1596241 () Bool)

(assert (=> b!5786454 (= e!3553986 (and tp!1596240 tp!1596241))))

(declare-fun b!5786451 () Bool)

(assert (=> b!5786451 (= e!3553986 tp_is_empty!40847)))

(declare-fun b!5786453 () Bool)

(declare-fun tp!1596239 () Bool)

(assert (=> b!5786453 (= e!3553986 tp!1596239)))

(assert (= (and b!5785771 ((_ is ElementMatch!15797) (reg!16126 (reg!16126 r!7292)))) b!5786451))

(assert (= (and b!5785771 ((_ is Concat!24642) (reg!16126 (reg!16126 r!7292)))) b!5786452))

(assert (= (and b!5785771 ((_ is Star!15797) (reg!16126 (reg!16126 r!7292)))) b!5786453))

(assert (= (and b!5785771 ((_ is Union!15797) (reg!16126 (reg!16126 r!7292)))) b!5786454))

(declare-fun b!5786456 () Bool)

(declare-fun e!3553987 () Bool)

(declare-fun tp!1596247 () Bool)

(declare-fun tp!1596248 () Bool)

(assert (=> b!5786456 (= e!3553987 (and tp!1596247 tp!1596248))))

(assert (=> b!5785772 (= tp!1596125 e!3553987)))

(declare-fun b!5786458 () Bool)

(declare-fun tp!1596245 () Bool)

(declare-fun tp!1596246 () Bool)

(assert (=> b!5786458 (= e!3553987 (and tp!1596245 tp!1596246))))

(declare-fun b!5786455 () Bool)

(assert (=> b!5786455 (= e!3553987 tp_is_empty!40847)))

(declare-fun b!5786457 () Bool)

(declare-fun tp!1596244 () Bool)

(assert (=> b!5786457 (= e!3553987 tp!1596244)))

(assert (= (and b!5785772 ((_ is ElementMatch!15797) (regOne!32107 (reg!16126 r!7292)))) b!5786455))

(assert (= (and b!5785772 ((_ is Concat!24642) (regOne!32107 (reg!16126 r!7292)))) b!5786456))

(assert (= (and b!5785772 ((_ is Star!15797) (regOne!32107 (reg!16126 r!7292)))) b!5786457))

(assert (= (and b!5785772 ((_ is Union!15797) (regOne!32107 (reg!16126 r!7292)))) b!5786458))

(declare-fun b!5786460 () Bool)

(declare-fun e!3553988 () Bool)

(declare-fun tp!1596252 () Bool)

(declare-fun tp!1596253 () Bool)

(assert (=> b!5786460 (= e!3553988 (and tp!1596252 tp!1596253))))

(assert (=> b!5785772 (= tp!1596126 e!3553988)))

(declare-fun b!5786462 () Bool)

(declare-fun tp!1596250 () Bool)

(declare-fun tp!1596251 () Bool)

(assert (=> b!5786462 (= e!3553988 (and tp!1596250 tp!1596251))))

(declare-fun b!5786459 () Bool)

(assert (=> b!5786459 (= e!3553988 tp_is_empty!40847)))

(declare-fun b!5786461 () Bool)

(declare-fun tp!1596249 () Bool)

(assert (=> b!5786461 (= e!3553988 tp!1596249)))

(assert (= (and b!5785772 ((_ is ElementMatch!15797) (regTwo!32107 (reg!16126 r!7292)))) b!5786459))

(assert (= (and b!5785772 ((_ is Concat!24642) (regTwo!32107 (reg!16126 r!7292)))) b!5786460))

(assert (= (and b!5785772 ((_ is Star!15797) (regTwo!32107 (reg!16126 r!7292)))) b!5786461))

(assert (= (and b!5785772 ((_ is Union!15797) (regTwo!32107 (reg!16126 r!7292)))) b!5786462))

(declare-fun b!5786464 () Bool)

(declare-fun e!3553991 () Bool)

(declare-fun tp!1596257 () Bool)

(declare-fun tp!1596258 () Bool)

(assert (=> b!5786464 (= e!3553991 (and tp!1596257 tp!1596258))))

(assert (=> b!5785757 (= tp!1596114 e!3553991)))

(declare-fun b!5786466 () Bool)

(declare-fun tp!1596255 () Bool)

(declare-fun tp!1596256 () Bool)

(assert (=> b!5786466 (= e!3553991 (and tp!1596255 tp!1596256))))

(declare-fun b!5786463 () Bool)

(assert (=> b!5786463 (= e!3553991 tp_is_empty!40847)))

(declare-fun b!5786465 () Bool)

(declare-fun tp!1596254 () Bool)

(assert (=> b!5786465 (= e!3553991 tp!1596254)))

(assert (= (and b!5785757 ((_ is ElementMatch!15797) (regOne!32106 (regTwo!32106 r!7292)))) b!5786463))

(assert (= (and b!5785757 ((_ is Concat!24642) (regOne!32106 (regTwo!32106 r!7292)))) b!5786464))

(assert (= (and b!5785757 ((_ is Star!15797) (regOne!32106 (regTwo!32106 r!7292)))) b!5786465))

(assert (= (and b!5785757 ((_ is Union!15797) (regOne!32106 (regTwo!32106 r!7292)))) b!5786466))

(declare-fun b!5786478 () Bool)

(declare-fun e!3553995 () Bool)

(declare-fun tp!1596262 () Bool)

(declare-fun tp!1596263 () Bool)

(assert (=> b!5786478 (= e!3553995 (and tp!1596262 tp!1596263))))

(assert (=> b!5785757 (= tp!1596115 e!3553995)))

(declare-fun b!5786480 () Bool)

(declare-fun tp!1596260 () Bool)

(declare-fun tp!1596261 () Bool)

(assert (=> b!5786480 (= e!3553995 (and tp!1596260 tp!1596261))))

(declare-fun b!5786477 () Bool)

(assert (=> b!5786477 (= e!3553995 tp_is_empty!40847)))

(declare-fun b!5786479 () Bool)

(declare-fun tp!1596259 () Bool)

(assert (=> b!5786479 (= e!3553995 tp!1596259)))

(assert (= (and b!5785757 ((_ is ElementMatch!15797) (regTwo!32106 (regTwo!32106 r!7292)))) b!5786477))

(assert (= (and b!5785757 ((_ is Concat!24642) (regTwo!32106 (regTwo!32106 r!7292)))) b!5786478))

(assert (= (and b!5785757 ((_ is Star!15797) (regTwo!32106 (regTwo!32106 r!7292)))) b!5786479))

(assert (= (and b!5785757 ((_ is Union!15797) (regTwo!32106 (regTwo!32106 r!7292)))) b!5786480))

(declare-fun b!5786482 () Bool)

(declare-fun e!3553996 () Bool)

(declare-fun tp!1596267 () Bool)

(declare-fun tp!1596268 () Bool)

(assert (=> b!5786482 (= e!3553996 (and tp!1596267 tp!1596268))))

(assert (=> b!5785735 (= tp!1596086 e!3553996)))

(declare-fun b!5786484 () Bool)

(declare-fun tp!1596265 () Bool)

(declare-fun tp!1596266 () Bool)

(assert (=> b!5786484 (= e!3553996 (and tp!1596265 tp!1596266))))

(declare-fun b!5786481 () Bool)

(assert (=> b!5786481 (= e!3553996 tp_is_empty!40847)))

(declare-fun b!5786483 () Bool)

(declare-fun tp!1596264 () Bool)

(assert (=> b!5786483 (= e!3553996 tp!1596264)))

(assert (= (and b!5785735 ((_ is ElementMatch!15797) (reg!16126 (regTwo!32107 r!7292)))) b!5786481))

(assert (= (and b!5785735 ((_ is Concat!24642) (reg!16126 (regTwo!32107 r!7292)))) b!5786482))

(assert (= (and b!5785735 ((_ is Star!15797) (reg!16126 (regTwo!32107 r!7292)))) b!5786483))

(assert (= (and b!5785735 ((_ is Union!15797) (reg!16126 (regTwo!32107 r!7292)))) b!5786484))

(declare-fun b!5786486 () Bool)

(declare-fun e!3553997 () Bool)

(declare-fun tp!1596272 () Bool)

(declare-fun tp!1596273 () Bool)

(assert (=> b!5786486 (= e!3553997 (and tp!1596272 tp!1596273))))

(assert (=> b!5785736 (= tp!1596087 e!3553997)))

(declare-fun b!5786488 () Bool)

(declare-fun tp!1596270 () Bool)

(declare-fun tp!1596271 () Bool)

(assert (=> b!5786488 (= e!3553997 (and tp!1596270 tp!1596271))))

(declare-fun b!5786485 () Bool)

(assert (=> b!5786485 (= e!3553997 tp_is_empty!40847)))

(declare-fun b!5786487 () Bool)

(declare-fun tp!1596269 () Bool)

(assert (=> b!5786487 (= e!3553997 tp!1596269)))

(assert (= (and b!5785736 ((_ is ElementMatch!15797) (regOne!32107 (regTwo!32107 r!7292)))) b!5786485))

(assert (= (and b!5785736 ((_ is Concat!24642) (regOne!32107 (regTwo!32107 r!7292)))) b!5786486))

(assert (= (and b!5785736 ((_ is Star!15797) (regOne!32107 (regTwo!32107 r!7292)))) b!5786487))

(assert (= (and b!5785736 ((_ is Union!15797) (regOne!32107 (regTwo!32107 r!7292)))) b!5786488))

(declare-fun b!5786490 () Bool)

(declare-fun e!3553998 () Bool)

(declare-fun tp!1596277 () Bool)

(declare-fun tp!1596278 () Bool)

(assert (=> b!5786490 (= e!3553998 (and tp!1596277 tp!1596278))))

(assert (=> b!5785736 (= tp!1596088 e!3553998)))

(declare-fun b!5786492 () Bool)

(declare-fun tp!1596275 () Bool)

(declare-fun tp!1596276 () Bool)

(assert (=> b!5786492 (= e!3553998 (and tp!1596275 tp!1596276))))

(declare-fun b!5786489 () Bool)

(assert (=> b!5786489 (= e!3553998 tp_is_empty!40847)))

(declare-fun b!5786491 () Bool)

(declare-fun tp!1596274 () Bool)

(assert (=> b!5786491 (= e!3553998 tp!1596274)))

(assert (= (and b!5785736 ((_ is ElementMatch!15797) (regTwo!32107 (regTwo!32107 r!7292)))) b!5786489))

(assert (= (and b!5785736 ((_ is Concat!24642) (regTwo!32107 (regTwo!32107 r!7292)))) b!5786490))

(assert (= (and b!5785736 ((_ is Star!15797) (regTwo!32107 (regTwo!32107 r!7292)))) b!5786491))

(assert (= (and b!5785736 ((_ is Union!15797) (regTwo!32107 (regTwo!32107 r!7292)))) b!5786492))

(declare-fun b!5786494 () Bool)

(declare-fun e!3553999 () Bool)

(declare-fun tp!1596282 () Bool)

(declare-fun tp!1596283 () Bool)

(assert (=> b!5786494 (= e!3553999 (and tp!1596282 tp!1596283))))

(assert (=> b!5785770 (= tp!1596127 e!3553999)))

(declare-fun b!5786496 () Bool)

(declare-fun tp!1596280 () Bool)

(declare-fun tp!1596281 () Bool)

(assert (=> b!5786496 (= e!3553999 (and tp!1596280 tp!1596281))))

(declare-fun b!5786493 () Bool)

(assert (=> b!5786493 (= e!3553999 tp_is_empty!40847)))

(declare-fun b!5786495 () Bool)

(declare-fun tp!1596279 () Bool)

(assert (=> b!5786495 (= e!3553999 tp!1596279)))

(assert (= (and b!5785770 ((_ is ElementMatch!15797) (regOne!32106 (reg!16126 r!7292)))) b!5786493))

(assert (= (and b!5785770 ((_ is Concat!24642) (regOne!32106 (reg!16126 r!7292)))) b!5786494))

(assert (= (and b!5785770 ((_ is Star!15797) (regOne!32106 (reg!16126 r!7292)))) b!5786495))

(assert (= (and b!5785770 ((_ is Union!15797) (regOne!32106 (reg!16126 r!7292)))) b!5786496))

(declare-fun b!5786498 () Bool)

(declare-fun e!3554000 () Bool)

(declare-fun tp!1596287 () Bool)

(declare-fun tp!1596288 () Bool)

(assert (=> b!5786498 (= e!3554000 (and tp!1596287 tp!1596288))))

(assert (=> b!5785770 (= tp!1596128 e!3554000)))

(declare-fun b!5786500 () Bool)

(declare-fun tp!1596285 () Bool)

(declare-fun tp!1596286 () Bool)

(assert (=> b!5786500 (= e!3554000 (and tp!1596285 tp!1596286))))

(declare-fun b!5786497 () Bool)

(assert (=> b!5786497 (= e!3554000 tp_is_empty!40847)))

(declare-fun b!5786499 () Bool)

(declare-fun tp!1596284 () Bool)

(assert (=> b!5786499 (= e!3554000 tp!1596284)))

(assert (= (and b!5785770 ((_ is ElementMatch!15797) (regTwo!32106 (reg!16126 r!7292)))) b!5786497))

(assert (= (and b!5785770 ((_ is Concat!24642) (regTwo!32106 (reg!16126 r!7292)))) b!5786498))

(assert (= (and b!5785770 ((_ is Star!15797) (regTwo!32106 (reg!16126 r!7292)))) b!5786499))

(assert (= (and b!5785770 ((_ is Union!15797) (regTwo!32106 (reg!16126 r!7292)))) b!5786500))

(declare-fun b_lambda!218145 () Bool)

(assert (= b_lambda!218129 (or d!1822858 b_lambda!218145)))

(declare-fun bs!1366238 () Bool)

(declare-fun d!1823184 () Bool)

(assert (= bs!1366238 (and d!1823184 d!1822858)))

(assert (=> bs!1366238 (= (dynLambda!24885 lambda!315343 (h!70015 lt!2296461)) (validRegex!7533 (h!70015 lt!2296461)))))

(declare-fun m!6731340 () Bool)

(assert (=> bs!1366238 m!6731340))

(assert (=> b!5785812 d!1823184))

(declare-fun b_lambda!218147 () Bool)

(assert (= b_lambda!218139 (or d!1822846 b_lambda!218147)))

(declare-fun bs!1366239 () Bool)

(declare-fun d!1823186 () Bool)

(assert (= bs!1366239 (and d!1823186 d!1822846)))

(assert (=> bs!1366239 (= (dynLambda!24885 lambda!315340 (h!70015 (unfocusZipperList!1225 zl!343))) (validRegex!7533 (h!70015 (unfocusZipperList!1225 zl!343))))))

(declare-fun m!6731342 () Bool)

(assert (=> bs!1366239 m!6731342))

(assert (=> b!5786263 d!1823186))

(declare-fun b_lambda!218149 () Bool)

(assert (= b_lambda!218137 (or d!1822874 b_lambda!218149)))

(declare-fun bs!1366240 () Bool)

(declare-fun d!1823188 () Bool)

(assert (= bs!1366240 (and d!1823188 d!1822874)))

(assert (=> bs!1366240 (= (dynLambda!24885 lambda!315351 (h!70015 (exprs!5681 (h!70016 zl!343)))) (validRegex!7533 (h!70015 (exprs!5681 (h!70016 zl!343)))))))

(declare-fun m!6731344 () Bool)

(assert (=> bs!1366240 m!6731344))

(assert (=> b!5786252 d!1823188))

(declare-fun b_lambda!218151 () Bool)

(assert (= b_lambda!218127 (or d!1822860 b_lambda!218151)))

(declare-fun bs!1366241 () Bool)

(declare-fun d!1823190 () Bool)

(assert (= bs!1366241 (and d!1823190 d!1822860)))

(assert (=> bs!1366241 (= (dynLambda!24885 lambda!315349 (h!70015 (exprs!5681 (h!70016 zl!343)))) (validRegex!7533 (h!70015 (exprs!5681 (h!70016 zl!343)))))))

(assert (=> bs!1366241 m!6731344))

(assert (=> b!5785810 d!1823190))

(declare-fun b_lambda!218153 () Bool)

(assert (= b_lambda!218135 (or d!1822834 b_lambda!218153)))

(declare-fun bs!1366242 () Bool)

(declare-fun d!1823192 () Bool)

(assert (= bs!1366242 (and d!1823192 d!1822834)))

(assert (=> bs!1366242 (= (dynLambda!24885 lambda!315325 (h!70015 (exprs!5681 setElem!38866))) (validRegex!7533 (h!70015 (exprs!5681 setElem!38866))))))

(declare-fun m!6731346 () Bool)

(assert (=> bs!1366242 m!6731346))

(assert (=> b!5785971 d!1823192))

(check-sat (not b!5786399) (not d!1823088) (not b!5785877) (not b!5786420) (not b!5786422) (not b!5786404) (not b!5786435) (not bm!450511) (not b!5786421) (not bs!1366239) (not d!1823038) (not b!5786496) (not b!5786284) (not b!5786300) (not b!5786239) (not b!5786175) (not d!1822930) (not d!1823162) (not d!1822958) (not b!5786417) (not bm!450430) (not b_lambda!218153) (not b!5786374) (not bm!450505) (not bm!450448) (not b!5786390) (not b!5785972) (not b!5786413) (not b!5786388) (not b!5786402) (not b_lambda!218147) (not bm!450433) (not b!5785817) (not b!5786490) (not b!5786339) (not b!5786460) (not b!5786416) (not b!5786214) (not bm!450514) (not b_lambda!218145) (not b!5786264) (not bm!450513) (not b!5786170) (not d!1823092) (not d!1823178) (not b!5786480) (not b!5786378) (not b!5786444) (not b!5786409) (not d!1822946) (not bm!450447) (not b!5786287) (not b!5786305) (not b!5785813) (not b!5786449) (not b!5786381) (not d!1823070) (not bm!450449) (not b!5785815) (not b!5786429) (not b!5786389) (not b!5785874) (not b!5786494) (not b!5786393) (not b!5786450) (not b!5786401) (not d!1823068) (not setNonEmpty!38873) (not d!1823148) (not d!1823040) (not b!5786173) (not b!5786395) (not bm!450494) (not bm!450516) (not bm!450507) (not b!5785861) (not b!5786152) (not bm!450492) (not bs!1366242) (not d!1823016) (not b!5786483) (not b!5786285) (not b!5786164) (not b!5785980) (not d!1822992) (not b!5786486) (not b!5785860) (not b!5786438) (not b!5786466) (not d!1822986) (not b!5786452) (not b!5786174) (not b!5786425) (not d!1822926) (not b!5786446) (not bm!450502) (not b!5786442) (not b!5786384) (not b!5785983) (not d!1823014) (not b!5786464) (not b!5786458) (not b!5786406) (not d!1822952) (not b!5785873) (not b!5786213) (not b!5786386) (not b!5785865) (not b!5786498) (not b!5786441) (not b!5786479) (not b!5786461) (not b!5786295) (not b!5786394) (not b!5785868) tp_is_empty!40847 (not bm!450475) (not d!1822974) (not b!5785811) (not bm!450490) (not b!5786457) (not bm!450428) (not b!5786415) (not b!5786052) (not b!5786348) (not b!5786411) (not b!5785879) (not b!5785799) (not d!1823074) (not d!1822916) (not b!5786319) (not b!5786253) (not b!5786487) (not b!5786454) (not b!5786382) (not b!5786233) (not b!5786408) (not b!5785912) (not bm!450518) (not b!5786424) (not b!5786448) (not b!5786426) (not b!5786499) (not b!5786478) (not b!5786279) (not b!5786237) (not b!5786183) (not bm!450504) (not d!1822960) (not b!5786437) (not b!5786495) (not bm!450427) (not b!5786465) (not b!5786376) (not b!5786301) (not d!1823018) (not b!5786432) (not b!5786403) (not d!1822962) (not b!5786346) (not b!5786208) (not b!5786428) (not b!5786491) (not bm!450476) (not b!5786456) (not b!5786433) (not b!5786338) (not b!5786462) (not b!5786217) (not b!5786278) (not b!5786232) (not d!1823132) (not d!1822928) (not bm!450520) (not b!5785984) (not b!5786306) (not b!5785913) (not bm!450500) (not b!5785985) (not bm!450498) (not bm!450497) (not bs!1366241) (not d!1823176) (not d!1823084) (not bm!450517) (not b!5786269) (not b!5786241) (not b!5786385) (not b!5786347) (not d!1823142) (not bm!450432) (not b!5786377) (not b!5786500) (not bm!450470) (not b!5786280) (not bs!1366240) (not b!5786412) (not b!5786089) (not b_lambda!218149) (not b!5785872) (not b!5785974) (not bm!450471) (not b!5786380) (not b!5786169) (not b!5785969) (not b!5786434) (not b!5786317) (not b!5786391) (not d!1823058) (not b!5786256) (not b!5786219) (not b!5786440) (not b!5786398) (not b!5786445) (not b!5786397) (not b_lambda!218151) (not bm!450509) (not b!5786240) (not b!5786484) (not b!5786436) (not b!5785979) (not bs!1366238) (not b!5786218) (not b!5786221) (not b!5785867) (not bm!450495) (not b!5786453) (not b!5786304) (not b!5786418) (not b!5786235) (not b!5786430) (not b!5786196) (not b!5786482) (not b!5785962) (not b!5786281) (not d!1823112) (not b!5786407) (not b!5785871) (not b!5786492) (not b!5785864) (not b!5786488) (not bm!450429))
(check-sat)

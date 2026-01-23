; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!578186 () Bool)

(assert start!578186)

(declare-fun b!5554224 () Bool)

(assert (=> b!5554224 true))

(assert (=> b!5554224 true))

(declare-fun lambda!297978 () Int)

(declare-fun lambda!297977 () Int)

(assert (=> b!5554224 (not (= lambda!297978 lambda!297977))))

(assert (=> b!5554224 true))

(assert (=> b!5554224 true))

(declare-fun b!5554222 () Bool)

(assert (=> b!5554222 true))

(declare-fun b!5554217 () Bool)

(declare-fun res!2360971 () Bool)

(declare-fun e!3430366 () Bool)

(assert (=> b!5554217 (=> res!2360971 e!3430366)))

(declare-datatypes ((C!31348 0))(
  ( (C!31349 (val!25376 Int)) )
))
(declare-datatypes ((Regex!15539 0))(
  ( (ElementMatch!15539 (c!972267 C!31348)) (Concat!24384 (regOne!31590 Regex!15539) (regTwo!31590 Regex!15539)) (EmptyExpr!15539) (Star!15539 (reg!15868 Regex!15539)) (EmptyLang!15539) (Union!15539 (regOne!31591 Regex!15539) (regTwo!31591 Regex!15539)) )
))
(declare-fun r!7292 () Regex!15539)

(get-info :version)

(assert (=> b!5554217 (= res!2360971 (or ((_ is EmptyExpr!15539) r!7292) ((_ is EmptyLang!15539) r!7292) ((_ is ElementMatch!15539) r!7292) ((_ is Union!15539) r!7292) (not ((_ is Concat!24384) r!7292))))))

(declare-fun res!2360979 () Bool)

(declare-fun e!3430367 () Bool)

(assert (=> start!578186 (=> (not res!2360979) (not e!3430367))))

(declare-fun validRegex!7275 (Regex!15539) Bool)

(assert (=> start!578186 (= res!2360979 (validRegex!7275 r!7292))))

(assert (=> start!578186 e!3430367))

(declare-fun e!3430369 () Bool)

(assert (=> start!578186 e!3430369))

(declare-fun condSetEmpty!36957 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62916 0))(
  ( (Nil!62792) (Cons!62792 (h!69240 Regex!15539) (t!376181 List!62916)) )
))
(declare-datatypes ((Context!9846 0))(
  ( (Context!9847 (exprs!5423 List!62916)) )
))
(declare-fun z!1189 () (InoxSet Context!9846))

(assert (=> start!578186 (= condSetEmpty!36957 (= z!1189 ((as const (Array Context!9846 Bool)) false)))))

(declare-fun setRes!36957 () Bool)

(assert (=> start!578186 setRes!36957))

(declare-fun e!3430368 () Bool)

(assert (=> start!578186 e!3430368))

(declare-fun e!3430371 () Bool)

(assert (=> start!578186 e!3430371))

(declare-fun b!5554218 () Bool)

(declare-fun tp_is_empty!40331 () Bool)

(assert (=> b!5554218 (= e!3430369 tp_is_empty!40331)))

(declare-fun b!5554219 () Bool)

(declare-fun res!2360974 () Bool)

(declare-fun e!3430365 () Bool)

(assert (=> b!5554219 (=> res!2360974 e!3430365)))

(declare-datatypes ((List!62917 0))(
  ( (Nil!62793) (Cons!62793 (h!69241 Context!9846) (t!376182 List!62917)) )
))
(declare-fun zl!343 () List!62917)

(declare-fun isEmpty!34584 (List!62916) Bool)

(assert (=> b!5554219 (= res!2360974 (isEmpty!34584 (t!376181 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun b!5554220 () Bool)

(assert (=> b!5554220 (= e!3430367 (not e!3430366))))

(declare-fun res!2360982 () Bool)

(assert (=> b!5554220 (=> res!2360982 e!3430366)))

(assert (=> b!5554220 (= res!2360982 (not ((_ is Cons!62793) zl!343)))))

(declare-fun lt!2250817 () Bool)

(declare-datatypes ((List!62918 0))(
  ( (Nil!62794) (Cons!62794 (h!69242 C!31348) (t!376183 List!62918)) )
))
(declare-fun s!2326 () List!62918)

(declare-fun matchRSpec!2642 (Regex!15539 List!62918) Bool)

(assert (=> b!5554220 (= lt!2250817 (matchRSpec!2642 r!7292 s!2326))))

(declare-fun matchR!7724 (Regex!15539 List!62918) Bool)

(assert (=> b!5554220 (= lt!2250817 (matchR!7724 r!7292 s!2326))))

(declare-datatypes ((Unit!155538 0))(
  ( (Unit!155539) )
))
(declare-fun lt!2250808 () Unit!155538)

(declare-fun mainMatchTheorem!2642 (Regex!15539 List!62918) Unit!155538)

(assert (=> b!5554220 (= lt!2250808 (mainMatchTheorem!2642 r!7292 s!2326))))

(declare-fun b!5554221 () Bool)

(declare-fun tp!1532490 () Bool)

(assert (=> b!5554221 (= e!3430371 (and tp_is_empty!40331 tp!1532490))))

(declare-fun e!3430370 () Bool)

(assert (=> b!5554222 (= e!3430365 e!3430370)))

(declare-fun res!2360973 () Bool)

(assert (=> b!5554222 (=> res!2360973 e!3430370)))

(declare-fun nullable!5571 (Regex!15539) Bool)

(assert (=> b!5554222 (= res!2360973 (nullable!5571 (h!69240 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun lambda!297979 () Int)

(declare-fun flatMap!1152 ((InoxSet Context!9846) Int) (InoxSet Context!9846))

(declare-fun derivationStepZipperUp!807 (Context!9846 C!31348) (InoxSet Context!9846))

(assert (=> b!5554222 (= (flatMap!1152 z!1189 lambda!297979) (derivationStepZipperUp!807 (h!69241 zl!343) (h!69242 s!2326)))))

(declare-fun lt!2250809 () Unit!155538)

(declare-fun lemmaFlatMapOnSingletonSet!684 ((InoxSet Context!9846) Context!9846 Int) Unit!155538)

(assert (=> b!5554222 (= lt!2250809 (lemmaFlatMapOnSingletonSet!684 z!1189 (h!69241 zl!343) lambda!297979))))

(declare-fun lt!2250811 () (InoxSet Context!9846))

(declare-fun lt!2250813 () Context!9846)

(assert (=> b!5554222 (= lt!2250811 (derivationStepZipperUp!807 lt!2250813 (h!69242 s!2326)))))

(declare-fun lt!2250816 () (InoxSet Context!9846))

(declare-fun derivationStepZipperDown!881 (Regex!15539 Context!9846 C!31348) (InoxSet Context!9846))

(assert (=> b!5554222 (= lt!2250816 (derivationStepZipperDown!881 (h!69240 (exprs!5423 (h!69241 zl!343))) lt!2250813 (h!69242 s!2326)))))

(assert (=> b!5554222 (= lt!2250813 (Context!9847 (t!376181 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun lt!2250812 () (InoxSet Context!9846))

(assert (=> b!5554222 (= lt!2250812 (derivationStepZipperUp!807 (Context!9847 (Cons!62792 (h!69240 (exprs!5423 (h!69241 zl!343))) (t!376181 (exprs!5423 (h!69241 zl!343))))) (h!69242 s!2326)))))

(declare-fun b!5554223 () Bool)

(declare-fun res!2360976 () Bool)

(assert (=> b!5554223 (=> (not res!2360976) (not e!3430367))))

(declare-fun unfocusZipper!1281 (List!62917) Regex!15539)

(assert (=> b!5554223 (= res!2360976 (= r!7292 (unfocusZipper!1281 zl!343)))))

(assert (=> b!5554224 (= e!3430366 e!3430365)))

(declare-fun res!2360977 () Bool)

(assert (=> b!5554224 (=> res!2360977 e!3430365)))

(declare-fun lt!2250814 () Bool)

(assert (=> b!5554224 (= res!2360977 (or (not (= lt!2250817 lt!2250814)) ((_ is Nil!62794) s!2326)))))

(declare-fun Exists!2639 (Int) Bool)

(assert (=> b!5554224 (= (Exists!2639 lambda!297977) (Exists!2639 lambda!297978))))

(declare-fun lt!2250810 () Unit!155538)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1268 (Regex!15539 Regex!15539 List!62918) Unit!155538)

(assert (=> b!5554224 (= lt!2250810 (lemmaExistCutMatchRandMatchRSpecEquivalent!1268 (regOne!31590 r!7292) (regTwo!31590 r!7292) s!2326))))

(assert (=> b!5554224 (= lt!2250814 (Exists!2639 lambda!297977))))

(declare-datatypes ((tuple2!65272 0))(
  ( (tuple2!65273 (_1!35939 List!62918) (_2!35939 List!62918)) )
))
(declare-datatypes ((Option!15548 0))(
  ( (None!15547) (Some!15547 (v!51586 tuple2!65272)) )
))
(declare-fun isDefined!12251 (Option!15548) Bool)

(declare-fun findConcatSeparation!1962 (Regex!15539 Regex!15539 List!62918 List!62918 List!62918) Option!15548)

(assert (=> b!5554224 (= lt!2250814 (isDefined!12251 (findConcatSeparation!1962 (regOne!31590 r!7292) (regTwo!31590 r!7292) Nil!62794 s!2326 s!2326)))))

(declare-fun lt!2250815 () Unit!155538)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1726 (Regex!15539 Regex!15539 List!62918) Unit!155538)

(assert (=> b!5554224 (= lt!2250815 (lemmaFindConcatSeparationEquivalentToExists!1726 (regOne!31590 r!7292) (regTwo!31590 r!7292) s!2326))))

(declare-fun b!5554225 () Bool)

(declare-fun res!2360978 () Bool)

(assert (=> b!5554225 (=> res!2360978 e!3430366)))

(assert (=> b!5554225 (= res!2360978 (not ((_ is Cons!62792) (exprs!5423 (h!69241 zl!343)))))))

(declare-fun tp!1532497 () Bool)

(declare-fun setNonEmpty!36957 () Bool)

(declare-fun setElem!36957 () Context!9846)

(declare-fun e!3430364 () Bool)

(declare-fun inv!82094 (Context!9846) Bool)

(assert (=> setNonEmpty!36957 (= setRes!36957 (and tp!1532497 (inv!82094 setElem!36957) e!3430364))))

(declare-fun setRest!36957 () (InoxSet Context!9846))

(assert (=> setNonEmpty!36957 (= z!1189 ((_ map or) (store ((as const (Array Context!9846 Bool)) false) setElem!36957 true) setRest!36957))))

(declare-fun b!5554226 () Bool)

(declare-fun tp!1532498 () Bool)

(assert (=> b!5554226 (= e!3430364 tp!1532498)))

(declare-fun b!5554227 () Bool)

(declare-fun e!3430372 () Bool)

(declare-fun tp!1532499 () Bool)

(assert (=> b!5554227 (= e!3430372 tp!1532499)))

(declare-fun b!5554228 () Bool)

(assert (=> b!5554228 (= e!3430370 (= lt!2250812 lt!2250816))))

(declare-fun b!5554229 () Bool)

(declare-fun tp!1532493 () Bool)

(declare-fun tp!1532492 () Bool)

(assert (=> b!5554229 (= e!3430369 (and tp!1532493 tp!1532492))))

(declare-fun b!5554230 () Bool)

(declare-fun res!2360981 () Bool)

(assert (=> b!5554230 (=> res!2360981 e!3430366)))

(declare-fun generalisedConcat!1154 (List!62916) Regex!15539)

(assert (=> b!5554230 (= res!2360981 (not (= r!7292 (generalisedConcat!1154 (exprs!5423 (h!69241 zl!343))))))))

(declare-fun b!5554231 () Bool)

(declare-fun res!2360975 () Bool)

(assert (=> b!5554231 (=> res!2360975 e!3430366)))

(declare-fun isEmpty!34585 (List!62917) Bool)

(assert (=> b!5554231 (= res!2360975 (not (isEmpty!34585 (t!376182 zl!343))))))

(declare-fun b!5554232 () Bool)

(declare-fun res!2360980 () Bool)

(assert (=> b!5554232 (=> res!2360980 e!3430366)))

(declare-fun generalisedUnion!1402 (List!62916) Regex!15539)

(declare-fun unfocusZipperList!967 (List!62917) List!62916)

(assert (=> b!5554232 (= res!2360980 (not (= r!7292 (generalisedUnion!1402 (unfocusZipperList!967 zl!343)))))))

(declare-fun b!5554233 () Bool)

(declare-fun tp!1532496 () Bool)

(assert (=> b!5554233 (= e!3430368 (and (inv!82094 (h!69241 zl!343)) e!3430372 tp!1532496))))

(declare-fun setIsEmpty!36957 () Bool)

(assert (=> setIsEmpty!36957 setRes!36957))

(declare-fun b!5554234 () Bool)

(declare-fun tp!1532491 () Bool)

(assert (=> b!5554234 (= e!3430369 tp!1532491)))

(declare-fun b!5554235 () Bool)

(declare-fun tp!1532494 () Bool)

(declare-fun tp!1532495 () Bool)

(assert (=> b!5554235 (= e!3430369 (and tp!1532494 tp!1532495))))

(declare-fun b!5554236 () Bool)

(declare-fun res!2360972 () Bool)

(assert (=> b!5554236 (=> (not res!2360972) (not e!3430367))))

(declare-fun toList!9323 ((InoxSet Context!9846)) List!62917)

(assert (=> b!5554236 (= res!2360972 (= (toList!9323 z!1189) zl!343))))

(assert (= (and start!578186 res!2360979) b!5554236))

(assert (= (and b!5554236 res!2360972) b!5554223))

(assert (= (and b!5554223 res!2360976) b!5554220))

(assert (= (and b!5554220 (not res!2360982)) b!5554231))

(assert (= (and b!5554231 (not res!2360975)) b!5554230))

(assert (= (and b!5554230 (not res!2360981)) b!5554225))

(assert (= (and b!5554225 (not res!2360978)) b!5554232))

(assert (= (and b!5554232 (not res!2360980)) b!5554217))

(assert (= (and b!5554217 (not res!2360971)) b!5554224))

(assert (= (and b!5554224 (not res!2360977)) b!5554219))

(assert (= (and b!5554219 (not res!2360974)) b!5554222))

(assert (= (and b!5554222 (not res!2360973)) b!5554228))

(assert (= (and start!578186 ((_ is ElementMatch!15539) r!7292)) b!5554218))

(assert (= (and start!578186 ((_ is Concat!24384) r!7292)) b!5554229))

(assert (= (and start!578186 ((_ is Star!15539) r!7292)) b!5554234))

(assert (= (and start!578186 ((_ is Union!15539) r!7292)) b!5554235))

(assert (= (and start!578186 condSetEmpty!36957) setIsEmpty!36957))

(assert (= (and start!578186 (not condSetEmpty!36957)) setNonEmpty!36957))

(assert (= setNonEmpty!36957 b!5554226))

(assert (= b!5554233 b!5554227))

(assert (= (and start!578186 ((_ is Cons!62793) zl!343)) b!5554233))

(assert (= (and start!578186 ((_ is Cons!62794) s!2326)) b!5554221))

(declare-fun m!6547044 () Bool)

(assert (=> b!5554222 m!6547044))

(declare-fun m!6547046 () Bool)

(assert (=> b!5554222 m!6547046))

(declare-fun m!6547048 () Bool)

(assert (=> b!5554222 m!6547048))

(declare-fun m!6547050 () Bool)

(assert (=> b!5554222 m!6547050))

(declare-fun m!6547052 () Bool)

(assert (=> b!5554222 m!6547052))

(declare-fun m!6547054 () Bool)

(assert (=> b!5554222 m!6547054))

(declare-fun m!6547056 () Bool)

(assert (=> b!5554222 m!6547056))

(declare-fun m!6547058 () Bool)

(assert (=> start!578186 m!6547058))

(declare-fun m!6547060 () Bool)

(assert (=> b!5554224 m!6547060))

(declare-fun m!6547062 () Bool)

(assert (=> b!5554224 m!6547062))

(declare-fun m!6547064 () Bool)

(assert (=> b!5554224 m!6547064))

(assert (=> b!5554224 m!6547060))

(declare-fun m!6547066 () Bool)

(assert (=> b!5554224 m!6547066))

(declare-fun m!6547068 () Bool)

(assert (=> b!5554224 m!6547068))

(assert (=> b!5554224 m!6547062))

(declare-fun m!6547070 () Bool)

(assert (=> b!5554224 m!6547070))

(declare-fun m!6547072 () Bool)

(assert (=> b!5554236 m!6547072))

(declare-fun m!6547074 () Bool)

(assert (=> setNonEmpty!36957 m!6547074))

(declare-fun m!6547076 () Bool)

(assert (=> b!5554219 m!6547076))

(declare-fun m!6547078 () Bool)

(assert (=> b!5554223 m!6547078))

(declare-fun m!6547080 () Bool)

(assert (=> b!5554233 m!6547080))

(declare-fun m!6547082 () Bool)

(assert (=> b!5554232 m!6547082))

(assert (=> b!5554232 m!6547082))

(declare-fun m!6547084 () Bool)

(assert (=> b!5554232 m!6547084))

(declare-fun m!6547086 () Bool)

(assert (=> b!5554220 m!6547086))

(declare-fun m!6547088 () Bool)

(assert (=> b!5554220 m!6547088))

(declare-fun m!6547090 () Bool)

(assert (=> b!5554220 m!6547090))

(declare-fun m!6547092 () Bool)

(assert (=> b!5554230 m!6547092))

(declare-fun m!6547094 () Bool)

(assert (=> b!5554231 m!6547094))

(check-sat (not b!5554224) (not b!5554226) (not b!5554236) (not start!578186) (not b!5554229) (not b!5554233) (not b!5554223) (not setNonEmpty!36957) (not b!5554227) (not b!5554235) (not b!5554219) tp_is_empty!40331 (not b!5554234) (not b!5554230) (not b!5554222) (not b!5554232) (not b!5554220) (not b!5554221) (not b!5554231))
(check-sat)
(get-model)

(declare-fun d!1758305 () Bool)

(declare-fun lt!2250826 () Regex!15539)

(assert (=> d!1758305 (validRegex!7275 lt!2250826)))

(assert (=> d!1758305 (= lt!2250826 (generalisedUnion!1402 (unfocusZipperList!967 zl!343)))))

(assert (=> d!1758305 (= (unfocusZipper!1281 zl!343) lt!2250826)))

(declare-fun bs!1286570 () Bool)

(assert (= bs!1286570 d!1758305))

(declare-fun m!6547104 () Bool)

(assert (=> bs!1286570 m!6547104))

(assert (=> bs!1286570 m!6547082))

(assert (=> bs!1286570 m!6547082))

(assert (=> bs!1286570 m!6547084))

(assert (=> b!5554223 d!1758305))

(declare-fun d!1758309 () Bool)

(declare-fun lambda!297982 () Int)

(declare-fun forall!14711 (List!62916 Int) Bool)

(assert (=> d!1758309 (= (inv!82094 (h!69241 zl!343)) (forall!14711 (exprs!5423 (h!69241 zl!343)) lambda!297982))))

(declare-fun bs!1286571 () Bool)

(assert (= bs!1286571 d!1758309))

(declare-fun m!6547106 () Bool)

(assert (=> bs!1286571 m!6547106))

(assert (=> b!5554233 d!1758309))

(declare-fun b!5554303 () Bool)

(declare-fun e!3430407 () Bool)

(assert (=> b!5554303 (= e!3430407 (matchR!7724 (regTwo!31590 r!7292) s!2326))))

(declare-fun b!5554304 () Bool)

(declare-fun e!3430411 () Bool)

(declare-fun lt!2250848 () Option!15548)

(declare-fun ++!13776 (List!62918 List!62918) List!62918)

(declare-fun get!21613 (Option!15548) tuple2!65272)

(assert (=> b!5554304 (= e!3430411 (= (++!13776 (_1!35939 (get!21613 lt!2250848)) (_2!35939 (get!21613 lt!2250848))) s!2326))))

(declare-fun b!5554305 () Bool)

(declare-fun lt!2250850 () Unit!155538)

(declare-fun lt!2250849 () Unit!155538)

(assert (=> b!5554305 (= lt!2250850 lt!2250849)))

(assert (=> b!5554305 (= (++!13776 (++!13776 Nil!62794 (Cons!62794 (h!69242 s!2326) Nil!62794)) (t!376183 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1945 (List!62918 C!31348 List!62918 List!62918) Unit!155538)

(assert (=> b!5554305 (= lt!2250849 (lemmaMoveElementToOtherListKeepsConcatEq!1945 Nil!62794 (h!69242 s!2326) (t!376183 s!2326) s!2326))))

(declare-fun e!3430409 () Option!15548)

(assert (=> b!5554305 (= e!3430409 (findConcatSeparation!1962 (regOne!31590 r!7292) (regTwo!31590 r!7292) (++!13776 Nil!62794 (Cons!62794 (h!69242 s!2326) Nil!62794)) (t!376183 s!2326) s!2326))))

(declare-fun b!5554306 () Bool)

(declare-fun e!3430410 () Bool)

(assert (=> b!5554306 (= e!3430410 (not (isDefined!12251 lt!2250848)))))

(declare-fun b!5554307 () Bool)

(assert (=> b!5554307 (= e!3430409 None!15547)))

(declare-fun d!1758311 () Bool)

(assert (=> d!1758311 e!3430410))

(declare-fun res!2361026 () Bool)

(assert (=> d!1758311 (=> res!2361026 e!3430410)))

(assert (=> d!1758311 (= res!2361026 e!3430411)))

(declare-fun res!2361027 () Bool)

(assert (=> d!1758311 (=> (not res!2361027) (not e!3430411))))

(assert (=> d!1758311 (= res!2361027 (isDefined!12251 lt!2250848))))

(declare-fun e!3430408 () Option!15548)

(assert (=> d!1758311 (= lt!2250848 e!3430408)))

(declare-fun c!972279 () Bool)

(assert (=> d!1758311 (= c!972279 e!3430407)))

(declare-fun res!2361023 () Bool)

(assert (=> d!1758311 (=> (not res!2361023) (not e!3430407))))

(assert (=> d!1758311 (= res!2361023 (matchR!7724 (regOne!31590 r!7292) Nil!62794))))

(assert (=> d!1758311 (validRegex!7275 (regOne!31590 r!7292))))

(assert (=> d!1758311 (= (findConcatSeparation!1962 (regOne!31590 r!7292) (regTwo!31590 r!7292) Nil!62794 s!2326 s!2326) lt!2250848)))

(declare-fun b!5554308 () Bool)

(assert (=> b!5554308 (= e!3430408 e!3430409)))

(declare-fun c!972278 () Bool)

(assert (=> b!5554308 (= c!972278 ((_ is Nil!62794) s!2326))))

(declare-fun b!5554309 () Bool)

(declare-fun res!2361024 () Bool)

(assert (=> b!5554309 (=> (not res!2361024) (not e!3430411))))

(assert (=> b!5554309 (= res!2361024 (matchR!7724 (regOne!31590 r!7292) (_1!35939 (get!21613 lt!2250848))))))

(declare-fun b!5554310 () Bool)

(assert (=> b!5554310 (= e!3430408 (Some!15547 (tuple2!65273 Nil!62794 s!2326)))))

(declare-fun b!5554311 () Bool)

(declare-fun res!2361025 () Bool)

(assert (=> b!5554311 (=> (not res!2361025) (not e!3430411))))

(assert (=> b!5554311 (= res!2361025 (matchR!7724 (regTwo!31590 r!7292) (_2!35939 (get!21613 lt!2250848))))))

(assert (= (and d!1758311 res!2361023) b!5554303))

(assert (= (and d!1758311 c!972279) b!5554310))

(assert (= (and d!1758311 (not c!972279)) b!5554308))

(assert (= (and b!5554308 c!972278) b!5554307))

(assert (= (and b!5554308 (not c!972278)) b!5554305))

(assert (= (and d!1758311 res!2361027) b!5554309))

(assert (= (and b!5554309 res!2361024) b!5554311))

(assert (= (and b!5554311 res!2361025) b!5554304))

(assert (= (and d!1758311 (not res!2361026)) b!5554306))

(declare-fun m!6547148 () Bool)

(assert (=> b!5554303 m!6547148))

(declare-fun m!6547150 () Bool)

(assert (=> b!5554306 m!6547150))

(declare-fun m!6547152 () Bool)

(assert (=> b!5554305 m!6547152))

(assert (=> b!5554305 m!6547152))

(declare-fun m!6547154 () Bool)

(assert (=> b!5554305 m!6547154))

(declare-fun m!6547156 () Bool)

(assert (=> b!5554305 m!6547156))

(assert (=> b!5554305 m!6547152))

(declare-fun m!6547158 () Bool)

(assert (=> b!5554305 m!6547158))

(declare-fun m!6547160 () Bool)

(assert (=> b!5554304 m!6547160))

(declare-fun m!6547162 () Bool)

(assert (=> b!5554304 m!6547162))

(assert (=> b!5554309 m!6547160))

(declare-fun m!6547164 () Bool)

(assert (=> b!5554309 m!6547164))

(assert (=> d!1758311 m!6547150))

(declare-fun m!6547166 () Bool)

(assert (=> d!1758311 m!6547166))

(declare-fun m!6547168 () Bool)

(assert (=> d!1758311 m!6547168))

(assert (=> b!5554311 m!6547160))

(declare-fun m!6547170 () Bool)

(assert (=> b!5554311 m!6547170))

(assert (=> b!5554224 d!1758311))

(declare-fun d!1758327 () Bool)

(declare-fun choose!42126 (Int) Bool)

(assert (=> d!1758327 (= (Exists!2639 lambda!297978) (choose!42126 lambda!297978))))

(declare-fun bs!1286580 () Bool)

(assert (= bs!1286580 d!1758327))

(declare-fun m!6547180 () Bool)

(assert (=> bs!1286580 m!6547180))

(assert (=> b!5554224 d!1758327))

(declare-fun bs!1286585 () Bool)

(declare-fun d!1758329 () Bool)

(assert (= bs!1286585 (and d!1758329 b!5554224)))

(declare-fun lambda!298003 () Int)

(assert (=> bs!1286585 (= lambda!298003 lambda!297977)))

(assert (=> bs!1286585 (not (= lambda!298003 lambda!297978))))

(assert (=> d!1758329 true))

(assert (=> d!1758329 true))

(assert (=> d!1758329 true))

(assert (=> d!1758329 (= (isDefined!12251 (findConcatSeparation!1962 (regOne!31590 r!7292) (regTwo!31590 r!7292) Nil!62794 s!2326 s!2326)) (Exists!2639 lambda!298003))))

(declare-fun lt!2250859 () Unit!155538)

(declare-fun choose!42127 (Regex!15539 Regex!15539 List!62918) Unit!155538)

(assert (=> d!1758329 (= lt!2250859 (choose!42127 (regOne!31590 r!7292) (regTwo!31590 r!7292) s!2326))))

(assert (=> d!1758329 (validRegex!7275 (regOne!31590 r!7292))))

(assert (=> d!1758329 (= (lemmaFindConcatSeparationEquivalentToExists!1726 (regOne!31590 r!7292) (regTwo!31590 r!7292) s!2326) lt!2250859)))

(declare-fun bs!1286586 () Bool)

(assert (= bs!1286586 d!1758329))

(assert (=> bs!1286586 m!6547062))

(assert (=> bs!1286586 m!6547064))

(declare-fun m!6547212 () Bool)

(assert (=> bs!1286586 m!6547212))

(declare-fun m!6547214 () Bool)

(assert (=> bs!1286586 m!6547214))

(assert (=> bs!1286586 m!6547168))

(assert (=> bs!1286586 m!6547062))

(assert (=> b!5554224 d!1758329))

(declare-fun bs!1286593 () Bool)

(declare-fun d!1758341 () Bool)

(assert (= bs!1286593 (and d!1758341 b!5554224)))

(declare-fun lambda!298011 () Int)

(assert (=> bs!1286593 (= lambda!298011 lambda!297977)))

(assert (=> bs!1286593 (not (= lambda!298011 lambda!297978))))

(declare-fun bs!1286599 () Bool)

(assert (= bs!1286599 (and d!1758341 d!1758329)))

(assert (=> bs!1286599 (= lambda!298011 lambda!298003)))

(assert (=> d!1758341 true))

(assert (=> d!1758341 true))

(assert (=> d!1758341 true))

(declare-fun lambda!298013 () Int)

(assert (=> bs!1286593 (not (= lambda!298013 lambda!297977))))

(assert (=> bs!1286593 (= lambda!298013 lambda!297978)))

(assert (=> bs!1286599 (not (= lambda!298013 lambda!298003))))

(declare-fun bs!1286600 () Bool)

(assert (= bs!1286600 d!1758341))

(assert (=> bs!1286600 (not (= lambda!298013 lambda!298011))))

(assert (=> d!1758341 true))

(assert (=> d!1758341 true))

(assert (=> d!1758341 true))

(assert (=> d!1758341 (= (Exists!2639 lambda!298011) (Exists!2639 lambda!298013))))

(declare-fun lt!2250867 () Unit!155538)

(declare-fun choose!42128 (Regex!15539 Regex!15539 List!62918) Unit!155538)

(assert (=> d!1758341 (= lt!2250867 (choose!42128 (regOne!31590 r!7292) (regTwo!31590 r!7292) s!2326))))

(assert (=> d!1758341 (validRegex!7275 (regOne!31590 r!7292))))

(assert (=> d!1758341 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1268 (regOne!31590 r!7292) (regTwo!31590 r!7292) s!2326) lt!2250867)))

(declare-fun m!6547266 () Bool)

(assert (=> bs!1286600 m!6547266))

(declare-fun m!6547268 () Bool)

(assert (=> bs!1286600 m!6547268))

(declare-fun m!6547270 () Bool)

(assert (=> bs!1286600 m!6547270))

(assert (=> bs!1286600 m!6547168))

(assert (=> b!5554224 d!1758341))

(declare-fun d!1758359 () Bool)

(assert (=> d!1758359 (= (Exists!2639 lambda!297977) (choose!42126 lambda!297977))))

(declare-fun bs!1286601 () Bool)

(assert (= bs!1286601 d!1758359))

(declare-fun m!6547272 () Bool)

(assert (=> bs!1286601 m!6547272))

(assert (=> b!5554224 d!1758359))

(declare-fun d!1758361 () Bool)

(declare-fun isEmpty!34588 (Option!15548) Bool)

(assert (=> d!1758361 (= (isDefined!12251 (findConcatSeparation!1962 (regOne!31590 r!7292) (regTwo!31590 r!7292) Nil!62794 s!2326 s!2326)) (not (isEmpty!34588 (findConcatSeparation!1962 (regOne!31590 r!7292) (regTwo!31590 r!7292) Nil!62794 s!2326 s!2326))))))

(declare-fun bs!1286602 () Bool)

(assert (= bs!1286602 d!1758361))

(assert (=> bs!1286602 m!6547062))

(declare-fun m!6547274 () Bool)

(assert (=> bs!1286602 m!6547274))

(assert (=> b!5554224 d!1758361))

(declare-fun b!5554528 () Bool)

(declare-fun e!3430544 () (InoxSet Context!9846))

(declare-fun call!414088 () (InoxSet Context!9846))

(assert (=> b!5554528 (= e!3430544 ((_ map or) call!414088 (derivationStepZipperUp!807 (Context!9847 (t!376181 (exprs!5423 lt!2250813))) (h!69242 s!2326))))))

(declare-fun b!5554529 () Bool)

(declare-fun e!3430543 () (InoxSet Context!9846))

(assert (=> b!5554529 (= e!3430543 ((as const (Array Context!9846 Bool)) false))))

(declare-fun bm!414083 () Bool)

(assert (=> bm!414083 (= call!414088 (derivationStepZipperDown!881 (h!69240 (exprs!5423 lt!2250813)) (Context!9847 (t!376181 (exprs!5423 lt!2250813))) (h!69242 s!2326)))))

(declare-fun b!5554530 () Bool)

(assert (=> b!5554530 (= e!3430543 call!414088)))

(declare-fun d!1758363 () Bool)

(declare-fun c!972355 () Bool)

(declare-fun e!3430542 () Bool)

(assert (=> d!1758363 (= c!972355 e!3430542)))

(declare-fun res!2361096 () Bool)

(assert (=> d!1758363 (=> (not res!2361096) (not e!3430542))))

(assert (=> d!1758363 (= res!2361096 ((_ is Cons!62792) (exprs!5423 lt!2250813)))))

(assert (=> d!1758363 (= (derivationStepZipperUp!807 lt!2250813 (h!69242 s!2326)) e!3430544)))

(declare-fun b!5554531 () Bool)

(assert (=> b!5554531 (= e!3430544 e!3430543)))

(declare-fun c!972354 () Bool)

(assert (=> b!5554531 (= c!972354 ((_ is Cons!62792) (exprs!5423 lt!2250813)))))

(declare-fun b!5554532 () Bool)

(assert (=> b!5554532 (= e!3430542 (nullable!5571 (h!69240 (exprs!5423 lt!2250813))))))

(assert (= (and d!1758363 res!2361096) b!5554532))

(assert (= (and d!1758363 c!972355) b!5554528))

(assert (= (and d!1758363 (not c!972355)) b!5554531))

(assert (= (and b!5554531 c!972354) b!5554530))

(assert (= (and b!5554531 (not c!972354)) b!5554529))

(assert (= (or b!5554528 b!5554530) bm!414083))

(declare-fun m!6547276 () Bool)

(assert (=> b!5554528 m!6547276))

(declare-fun m!6547278 () Bool)

(assert (=> bm!414083 m!6547278))

(declare-fun m!6547280 () Bool)

(assert (=> b!5554532 m!6547280))

(assert (=> b!5554222 d!1758363))

(declare-fun b!5554648 () Bool)

(declare-fun c!972378 () Bool)

(assert (=> b!5554648 (= c!972378 ((_ is Star!15539) (h!69240 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun e!3430598 () (InoxSet Context!9846))

(declare-fun e!3430601 () (InoxSet Context!9846))

(assert (=> b!5554648 (= e!3430598 e!3430601)))

(declare-fun b!5554649 () Bool)

(declare-fun e!3430602 () Bool)

(assert (=> b!5554649 (= e!3430602 (nullable!5571 (regOne!31590 (h!69240 (exprs!5423 (h!69241 zl!343))))))))

(declare-fun b!5554650 () Bool)

(declare-fun call!414105 () (InoxSet Context!9846))

(assert (=> b!5554650 (= e!3430601 call!414105)))

(declare-fun b!5554651 () Bool)

(declare-fun e!3430599 () (InoxSet Context!9846))

(assert (=> b!5554651 (= e!3430599 e!3430598)))

(declare-fun c!972376 () Bool)

(assert (=> b!5554651 (= c!972376 ((_ is Concat!24384) (h!69240 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun c!972375 () Bool)

(declare-fun call!414108 () (InoxSet Context!9846))

(declare-fun bm!414099 () Bool)

(declare-fun call!414107 () List!62916)

(declare-fun c!972377 () Bool)

(assert (=> bm!414099 (= call!414108 (derivationStepZipperDown!881 (ite c!972377 (regOne!31591 (h!69240 (exprs!5423 (h!69241 zl!343)))) (ite c!972375 (regTwo!31590 (h!69240 (exprs!5423 (h!69241 zl!343)))) (ite c!972376 (regOne!31590 (h!69240 (exprs!5423 (h!69241 zl!343)))) (reg!15868 (h!69240 (exprs!5423 (h!69241 zl!343))))))) (ite (or c!972377 c!972375) lt!2250813 (Context!9847 call!414107)) (h!69242 s!2326)))))

(declare-fun d!1758365 () Bool)

(declare-fun c!972379 () Bool)

(assert (=> d!1758365 (= c!972379 (and ((_ is ElementMatch!15539) (h!69240 (exprs!5423 (h!69241 zl!343)))) (= (c!972267 (h!69240 (exprs!5423 (h!69241 zl!343)))) (h!69242 s!2326))))))

(declare-fun e!3430603 () (InoxSet Context!9846))

(assert (=> d!1758365 (= (derivationStepZipperDown!881 (h!69240 (exprs!5423 (h!69241 zl!343))) lt!2250813 (h!69242 s!2326)) e!3430603)))

(declare-fun bm!414100 () Bool)

(declare-fun call!414109 () (InoxSet Context!9846))

(assert (=> bm!414100 (= call!414109 call!414108)))

(declare-fun b!5554652 () Bool)

(declare-fun e!3430600 () (InoxSet Context!9846))

(declare-fun call!414106 () (InoxSet Context!9846))

(assert (=> b!5554652 (= e!3430600 ((_ map or) call!414108 call!414106))))

(declare-fun bm!414101 () Bool)

(assert (=> bm!414101 (= call!414105 call!414109)))

(declare-fun b!5554653 () Bool)

(assert (=> b!5554653 (= e!3430599 ((_ map or) call!414106 call!414109))))

(declare-fun call!414104 () List!62916)

(declare-fun bm!414102 () Bool)

(assert (=> bm!414102 (= call!414106 (derivationStepZipperDown!881 (ite c!972377 (regTwo!31591 (h!69240 (exprs!5423 (h!69241 zl!343)))) (regOne!31590 (h!69240 (exprs!5423 (h!69241 zl!343))))) (ite c!972377 lt!2250813 (Context!9847 call!414104)) (h!69242 s!2326)))))

(declare-fun b!5554654 () Bool)

(assert (=> b!5554654 (= e!3430603 (store ((as const (Array Context!9846 Bool)) false) lt!2250813 true))))

(declare-fun b!5554655 () Bool)

(assert (=> b!5554655 (= e!3430603 e!3430600)))

(assert (=> b!5554655 (= c!972377 ((_ is Union!15539) (h!69240 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun b!5554656 () Bool)

(assert (=> b!5554656 (= e!3430601 ((as const (Array Context!9846 Bool)) false))))

(declare-fun bm!414103 () Bool)

(assert (=> bm!414103 (= call!414107 call!414104)))

(declare-fun b!5554657 () Bool)

(assert (=> b!5554657 (= c!972375 e!3430602)))

(declare-fun res!2361123 () Bool)

(assert (=> b!5554657 (=> (not res!2361123) (not e!3430602))))

(assert (=> b!5554657 (= res!2361123 ((_ is Concat!24384) (h!69240 (exprs!5423 (h!69241 zl!343)))))))

(assert (=> b!5554657 (= e!3430600 e!3430599)))

(declare-fun bm!414104 () Bool)

(declare-fun $colon$colon!1608 (List!62916 Regex!15539) List!62916)

(assert (=> bm!414104 (= call!414104 ($colon$colon!1608 (exprs!5423 lt!2250813) (ite (or c!972375 c!972376) (regTwo!31590 (h!69240 (exprs!5423 (h!69241 zl!343)))) (h!69240 (exprs!5423 (h!69241 zl!343))))))))

(declare-fun b!5554658 () Bool)

(assert (=> b!5554658 (= e!3430598 call!414105)))

(assert (= (and d!1758365 c!972379) b!5554654))

(assert (= (and d!1758365 (not c!972379)) b!5554655))

(assert (= (and b!5554655 c!972377) b!5554652))

(assert (= (and b!5554655 (not c!972377)) b!5554657))

(assert (= (and b!5554657 res!2361123) b!5554649))

(assert (= (and b!5554657 c!972375) b!5554653))

(assert (= (and b!5554657 (not c!972375)) b!5554651))

(assert (= (and b!5554651 c!972376) b!5554658))

(assert (= (and b!5554651 (not c!972376)) b!5554648))

(assert (= (and b!5554648 c!972378) b!5554650))

(assert (= (and b!5554648 (not c!972378)) b!5554656))

(assert (= (or b!5554658 b!5554650) bm!414103))

(assert (= (or b!5554658 b!5554650) bm!414101))

(assert (= (or b!5554653 bm!414103) bm!414104))

(assert (= (or b!5554653 bm!414101) bm!414100))

(assert (= (or b!5554652 b!5554653) bm!414102))

(assert (= (or b!5554652 bm!414100) bm!414099))

(declare-fun m!6547308 () Bool)

(assert (=> b!5554649 m!6547308))

(declare-fun m!6547310 () Bool)

(assert (=> bm!414099 m!6547310))

(declare-fun m!6547312 () Bool)

(assert (=> bm!414102 m!6547312))

(declare-fun m!6547314 () Bool)

(assert (=> bm!414104 m!6547314))

(declare-fun m!6547316 () Bool)

(assert (=> b!5554654 m!6547316))

(assert (=> b!5554222 d!1758365))

(declare-fun d!1758375 () Bool)

(declare-fun nullableFct!1687 (Regex!15539) Bool)

(assert (=> d!1758375 (= (nullable!5571 (h!69240 (exprs!5423 (h!69241 zl!343)))) (nullableFct!1687 (h!69240 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun bs!1286612 () Bool)

(assert (= bs!1286612 d!1758375))

(declare-fun m!6547318 () Bool)

(assert (=> bs!1286612 m!6547318))

(assert (=> b!5554222 d!1758375))

(declare-fun e!3430609 () (InoxSet Context!9846))

(declare-fun b!5554662 () Bool)

(declare-fun call!414110 () (InoxSet Context!9846))

(assert (=> b!5554662 (= e!3430609 ((_ map or) call!414110 (derivationStepZipperUp!807 (Context!9847 (t!376181 (exprs!5423 (Context!9847 (Cons!62792 (h!69240 (exprs!5423 (h!69241 zl!343))) (t!376181 (exprs!5423 (h!69241 zl!343)))))))) (h!69242 s!2326))))))

(declare-fun b!5554663 () Bool)

(declare-fun e!3430608 () (InoxSet Context!9846))

(assert (=> b!5554663 (= e!3430608 ((as const (Array Context!9846 Bool)) false))))

(declare-fun bm!414105 () Bool)

(assert (=> bm!414105 (= call!414110 (derivationStepZipperDown!881 (h!69240 (exprs!5423 (Context!9847 (Cons!62792 (h!69240 (exprs!5423 (h!69241 zl!343))) (t!376181 (exprs!5423 (h!69241 zl!343))))))) (Context!9847 (t!376181 (exprs!5423 (Context!9847 (Cons!62792 (h!69240 (exprs!5423 (h!69241 zl!343))) (t!376181 (exprs!5423 (h!69241 zl!343)))))))) (h!69242 s!2326)))))

(declare-fun b!5554664 () Bool)

(assert (=> b!5554664 (= e!3430608 call!414110)))

(declare-fun d!1758377 () Bool)

(declare-fun c!972381 () Bool)

(declare-fun e!3430607 () Bool)

(assert (=> d!1758377 (= c!972381 e!3430607)))

(declare-fun res!2361124 () Bool)

(assert (=> d!1758377 (=> (not res!2361124) (not e!3430607))))

(assert (=> d!1758377 (= res!2361124 ((_ is Cons!62792) (exprs!5423 (Context!9847 (Cons!62792 (h!69240 (exprs!5423 (h!69241 zl!343))) (t!376181 (exprs!5423 (h!69241 zl!343))))))))))

(assert (=> d!1758377 (= (derivationStepZipperUp!807 (Context!9847 (Cons!62792 (h!69240 (exprs!5423 (h!69241 zl!343))) (t!376181 (exprs!5423 (h!69241 zl!343))))) (h!69242 s!2326)) e!3430609)))

(declare-fun b!5554665 () Bool)

(assert (=> b!5554665 (= e!3430609 e!3430608)))

(declare-fun c!972380 () Bool)

(assert (=> b!5554665 (= c!972380 ((_ is Cons!62792) (exprs!5423 (Context!9847 (Cons!62792 (h!69240 (exprs!5423 (h!69241 zl!343))) (t!376181 (exprs!5423 (h!69241 zl!343))))))))))

(declare-fun b!5554666 () Bool)

(assert (=> b!5554666 (= e!3430607 (nullable!5571 (h!69240 (exprs!5423 (Context!9847 (Cons!62792 (h!69240 (exprs!5423 (h!69241 zl!343))) (t!376181 (exprs!5423 (h!69241 zl!343)))))))))))

(assert (= (and d!1758377 res!2361124) b!5554666))

(assert (= (and d!1758377 c!972381) b!5554662))

(assert (= (and d!1758377 (not c!972381)) b!5554665))

(assert (= (and b!5554665 c!972380) b!5554664))

(assert (= (and b!5554665 (not c!972380)) b!5554663))

(assert (= (or b!5554662 b!5554664) bm!414105))

(declare-fun m!6547320 () Bool)

(assert (=> b!5554662 m!6547320))

(declare-fun m!6547322 () Bool)

(assert (=> bm!414105 m!6547322))

(declare-fun m!6547324 () Bool)

(assert (=> b!5554666 m!6547324))

(assert (=> b!5554222 d!1758377))

(declare-fun d!1758379 () Bool)

(declare-fun choose!42130 ((InoxSet Context!9846) Int) (InoxSet Context!9846))

(assert (=> d!1758379 (= (flatMap!1152 z!1189 lambda!297979) (choose!42130 z!1189 lambda!297979))))

(declare-fun bs!1286613 () Bool)

(assert (= bs!1286613 d!1758379))

(declare-fun m!6547326 () Bool)

(assert (=> bs!1286613 m!6547326))

(assert (=> b!5554222 d!1758379))

(declare-fun e!3430612 () (InoxSet Context!9846))

(declare-fun call!414111 () (InoxSet Context!9846))

(declare-fun b!5554667 () Bool)

(assert (=> b!5554667 (= e!3430612 ((_ map or) call!414111 (derivationStepZipperUp!807 (Context!9847 (t!376181 (exprs!5423 (h!69241 zl!343)))) (h!69242 s!2326))))))

(declare-fun b!5554668 () Bool)

(declare-fun e!3430611 () (InoxSet Context!9846))

(assert (=> b!5554668 (= e!3430611 ((as const (Array Context!9846 Bool)) false))))

(declare-fun bm!414106 () Bool)

(assert (=> bm!414106 (= call!414111 (derivationStepZipperDown!881 (h!69240 (exprs!5423 (h!69241 zl!343))) (Context!9847 (t!376181 (exprs!5423 (h!69241 zl!343)))) (h!69242 s!2326)))))

(declare-fun b!5554669 () Bool)

(assert (=> b!5554669 (= e!3430611 call!414111)))

(declare-fun d!1758381 () Bool)

(declare-fun c!972383 () Bool)

(declare-fun e!3430610 () Bool)

(assert (=> d!1758381 (= c!972383 e!3430610)))

(declare-fun res!2361125 () Bool)

(assert (=> d!1758381 (=> (not res!2361125) (not e!3430610))))

(assert (=> d!1758381 (= res!2361125 ((_ is Cons!62792) (exprs!5423 (h!69241 zl!343))))))

(assert (=> d!1758381 (= (derivationStepZipperUp!807 (h!69241 zl!343) (h!69242 s!2326)) e!3430612)))

(declare-fun b!5554670 () Bool)

(assert (=> b!5554670 (= e!3430612 e!3430611)))

(declare-fun c!972382 () Bool)

(assert (=> b!5554670 (= c!972382 ((_ is Cons!62792) (exprs!5423 (h!69241 zl!343))))))

(declare-fun b!5554671 () Bool)

(assert (=> b!5554671 (= e!3430610 (nullable!5571 (h!69240 (exprs!5423 (h!69241 zl!343)))))))

(assert (= (and d!1758381 res!2361125) b!5554671))

(assert (= (and d!1758381 c!972383) b!5554667))

(assert (= (and d!1758381 (not c!972383)) b!5554670))

(assert (= (and b!5554670 c!972382) b!5554669))

(assert (= (and b!5554670 (not c!972382)) b!5554668))

(assert (= (or b!5554667 b!5554669) bm!414106))

(declare-fun m!6547328 () Bool)

(assert (=> b!5554667 m!6547328))

(declare-fun m!6547330 () Bool)

(assert (=> bm!414106 m!6547330))

(assert (=> b!5554671 m!6547056))

(assert (=> b!5554222 d!1758381))

(declare-fun d!1758383 () Bool)

(declare-fun dynLambda!24558 (Int Context!9846) (InoxSet Context!9846))

(assert (=> d!1758383 (= (flatMap!1152 z!1189 lambda!297979) (dynLambda!24558 lambda!297979 (h!69241 zl!343)))))

(declare-fun lt!2250877 () Unit!155538)

(declare-fun choose!42131 ((InoxSet Context!9846) Context!9846 Int) Unit!155538)

(assert (=> d!1758383 (= lt!2250877 (choose!42131 z!1189 (h!69241 zl!343) lambda!297979))))

(assert (=> d!1758383 (= z!1189 (store ((as const (Array Context!9846 Bool)) false) (h!69241 zl!343) true))))

(assert (=> d!1758383 (= (lemmaFlatMapOnSingletonSet!684 z!1189 (h!69241 zl!343) lambda!297979) lt!2250877)))

(declare-fun b_lambda!210967 () Bool)

(assert (=> (not b_lambda!210967) (not d!1758383)))

(declare-fun bs!1286614 () Bool)

(assert (= bs!1286614 d!1758383))

(assert (=> bs!1286614 m!6547052))

(declare-fun m!6547332 () Bool)

(assert (=> bs!1286614 m!6547332))

(declare-fun m!6547334 () Bool)

(assert (=> bs!1286614 m!6547334))

(declare-fun m!6547336 () Bool)

(assert (=> bs!1286614 m!6547336))

(assert (=> b!5554222 d!1758383))

(declare-fun bs!1286615 () Bool)

(declare-fun d!1758385 () Bool)

(assert (= bs!1286615 (and d!1758385 d!1758309)))

(declare-fun lambda!298022 () Int)

(assert (=> bs!1286615 (= lambda!298022 lambda!297982)))

(declare-fun b!5554692 () Bool)

(declare-fun e!3430629 () Regex!15539)

(declare-fun e!3430625 () Regex!15539)

(assert (=> b!5554692 (= e!3430629 e!3430625)))

(declare-fun c!972395 () Bool)

(assert (=> b!5554692 (= c!972395 ((_ is Cons!62792) (unfocusZipperList!967 zl!343)))))

(declare-fun b!5554693 () Bool)

(assert (=> b!5554693 (= e!3430625 EmptyLang!15539)))

(declare-fun b!5554694 () Bool)

(declare-fun e!3430630 () Bool)

(declare-fun lt!2250880 () Regex!15539)

(declare-fun isEmptyLang!1112 (Regex!15539) Bool)

(assert (=> b!5554694 (= e!3430630 (isEmptyLang!1112 lt!2250880))))

(declare-fun b!5554695 () Bool)

(declare-fun e!3430627 () Bool)

(assert (=> b!5554695 (= e!3430627 (isEmpty!34584 (t!376181 (unfocusZipperList!967 zl!343))))))

(declare-fun b!5554696 () Bool)

(assert (=> b!5554696 (= e!3430629 (h!69240 (unfocusZipperList!967 zl!343)))))

(declare-fun b!5554697 () Bool)

(declare-fun e!3430626 () Bool)

(declare-fun head!11861 (List!62916) Regex!15539)

(assert (=> b!5554697 (= e!3430626 (= lt!2250880 (head!11861 (unfocusZipperList!967 zl!343))))))

(declare-fun e!3430628 () Bool)

(assert (=> d!1758385 e!3430628))

(declare-fun res!2361131 () Bool)

(assert (=> d!1758385 (=> (not res!2361131) (not e!3430628))))

(assert (=> d!1758385 (= res!2361131 (validRegex!7275 lt!2250880))))

(assert (=> d!1758385 (= lt!2250880 e!3430629)))

(declare-fun c!972393 () Bool)

(assert (=> d!1758385 (= c!972393 e!3430627)))

(declare-fun res!2361130 () Bool)

(assert (=> d!1758385 (=> (not res!2361130) (not e!3430627))))

(assert (=> d!1758385 (= res!2361130 ((_ is Cons!62792) (unfocusZipperList!967 zl!343)))))

(assert (=> d!1758385 (forall!14711 (unfocusZipperList!967 zl!343) lambda!298022)))

(assert (=> d!1758385 (= (generalisedUnion!1402 (unfocusZipperList!967 zl!343)) lt!2250880)))

(declare-fun b!5554698 () Bool)

(assert (=> b!5554698 (= e!3430628 e!3430630)))

(declare-fun c!972394 () Bool)

(assert (=> b!5554698 (= c!972394 (isEmpty!34584 (unfocusZipperList!967 zl!343)))))

(declare-fun b!5554699 () Bool)

(assert (=> b!5554699 (= e!3430625 (Union!15539 (h!69240 (unfocusZipperList!967 zl!343)) (generalisedUnion!1402 (t!376181 (unfocusZipperList!967 zl!343)))))))

(declare-fun b!5554700 () Bool)

(assert (=> b!5554700 (= e!3430630 e!3430626)))

(declare-fun c!972392 () Bool)

(declare-fun tail!10956 (List!62916) List!62916)

(assert (=> b!5554700 (= c!972392 (isEmpty!34584 (tail!10956 (unfocusZipperList!967 zl!343))))))

(declare-fun b!5554701 () Bool)

(declare-fun isUnion!542 (Regex!15539) Bool)

(assert (=> b!5554701 (= e!3430626 (isUnion!542 lt!2250880))))

(assert (= (and d!1758385 res!2361130) b!5554695))

(assert (= (and d!1758385 c!972393) b!5554696))

(assert (= (and d!1758385 (not c!972393)) b!5554692))

(assert (= (and b!5554692 c!972395) b!5554699))

(assert (= (and b!5554692 (not c!972395)) b!5554693))

(assert (= (and d!1758385 res!2361131) b!5554698))

(assert (= (and b!5554698 c!972394) b!5554694))

(assert (= (and b!5554698 (not c!972394)) b!5554700))

(assert (= (and b!5554700 c!972392) b!5554697))

(assert (= (and b!5554700 (not c!972392)) b!5554701))

(declare-fun m!6547338 () Bool)

(assert (=> d!1758385 m!6547338))

(assert (=> d!1758385 m!6547082))

(declare-fun m!6547340 () Bool)

(assert (=> d!1758385 m!6547340))

(declare-fun m!6547342 () Bool)

(assert (=> b!5554695 m!6547342))

(declare-fun m!6547344 () Bool)

(assert (=> b!5554701 m!6547344))

(assert (=> b!5554700 m!6547082))

(declare-fun m!6547346 () Bool)

(assert (=> b!5554700 m!6547346))

(assert (=> b!5554700 m!6547346))

(declare-fun m!6547348 () Bool)

(assert (=> b!5554700 m!6547348))

(declare-fun m!6547350 () Bool)

(assert (=> b!5554694 m!6547350))

(assert (=> b!5554698 m!6547082))

(declare-fun m!6547352 () Bool)

(assert (=> b!5554698 m!6547352))

(assert (=> b!5554697 m!6547082))

(declare-fun m!6547354 () Bool)

(assert (=> b!5554697 m!6547354))

(declare-fun m!6547356 () Bool)

(assert (=> b!5554699 m!6547356))

(assert (=> b!5554232 d!1758385))

(declare-fun bs!1286616 () Bool)

(declare-fun d!1758387 () Bool)

(assert (= bs!1286616 (and d!1758387 d!1758309)))

(declare-fun lambda!298025 () Int)

(assert (=> bs!1286616 (= lambda!298025 lambda!297982)))

(declare-fun bs!1286617 () Bool)

(assert (= bs!1286617 (and d!1758387 d!1758385)))

(assert (=> bs!1286617 (= lambda!298025 lambda!298022)))

(declare-fun lt!2250883 () List!62916)

(assert (=> d!1758387 (forall!14711 lt!2250883 lambda!298025)))

(declare-fun e!3430633 () List!62916)

(assert (=> d!1758387 (= lt!2250883 e!3430633)))

(declare-fun c!972398 () Bool)

(assert (=> d!1758387 (= c!972398 ((_ is Cons!62793) zl!343))))

(assert (=> d!1758387 (= (unfocusZipperList!967 zl!343) lt!2250883)))

(declare-fun b!5554706 () Bool)

(assert (=> b!5554706 (= e!3430633 (Cons!62792 (generalisedConcat!1154 (exprs!5423 (h!69241 zl!343))) (unfocusZipperList!967 (t!376182 zl!343))))))

(declare-fun b!5554707 () Bool)

(assert (=> b!5554707 (= e!3430633 Nil!62792)))

(assert (= (and d!1758387 c!972398) b!5554706))

(assert (= (and d!1758387 (not c!972398)) b!5554707))

(declare-fun m!6547358 () Bool)

(assert (=> d!1758387 m!6547358))

(assert (=> b!5554706 m!6547092))

(declare-fun m!6547360 () Bool)

(assert (=> b!5554706 m!6547360))

(assert (=> b!5554232 d!1758387))

(declare-fun bs!1286618 () Bool)

(declare-fun d!1758389 () Bool)

(assert (= bs!1286618 (and d!1758389 d!1758309)))

(declare-fun lambda!298026 () Int)

(assert (=> bs!1286618 (= lambda!298026 lambda!297982)))

(declare-fun bs!1286619 () Bool)

(assert (= bs!1286619 (and d!1758389 d!1758385)))

(assert (=> bs!1286619 (= lambda!298026 lambda!298022)))

(declare-fun bs!1286620 () Bool)

(assert (= bs!1286620 (and d!1758389 d!1758387)))

(assert (=> bs!1286620 (= lambda!298026 lambda!298025)))

(assert (=> d!1758389 (= (inv!82094 setElem!36957) (forall!14711 (exprs!5423 setElem!36957) lambda!298026))))

(declare-fun bs!1286621 () Bool)

(assert (= bs!1286621 d!1758389))

(declare-fun m!6547362 () Bool)

(assert (=> bs!1286621 m!6547362))

(assert (=> setNonEmpty!36957 d!1758389))

(declare-fun b!5554726 () Bool)

(declare-fun e!3430653 () Bool)

(declare-fun call!414118 () Bool)

(assert (=> b!5554726 (= e!3430653 call!414118)))

(declare-fun b!5554727 () Bool)

(declare-fun e!3430649 () Bool)

(declare-fun e!3430651 () Bool)

(assert (=> b!5554727 (= e!3430649 e!3430651)))

(declare-fun res!2361143 () Bool)

(assert (=> b!5554727 (=> (not res!2361143) (not e!3430651))))

(declare-fun call!414119 () Bool)

(assert (=> b!5554727 (= res!2361143 call!414119)))

(declare-fun d!1758391 () Bool)

(declare-fun res!2361144 () Bool)

(declare-fun e!3430650 () Bool)

(assert (=> d!1758391 (=> res!2361144 e!3430650)))

(assert (=> d!1758391 (= res!2361144 ((_ is ElementMatch!15539) r!7292))))

(assert (=> d!1758391 (= (validRegex!7275 r!7292) e!3430650)))

(declare-fun bm!414113 () Bool)

(declare-fun call!414120 () Bool)

(assert (=> bm!414113 (= call!414120 call!414118)))

(declare-fun c!972404 () Bool)

(declare-fun c!972403 () Bool)

(declare-fun bm!414114 () Bool)

(assert (=> bm!414114 (= call!414118 (validRegex!7275 (ite c!972403 (reg!15868 r!7292) (ite c!972404 (regTwo!31591 r!7292) (regTwo!31590 r!7292)))))))

(declare-fun b!5554728 () Bool)

(declare-fun e!3430654 () Bool)

(assert (=> b!5554728 (= e!3430654 call!414120)))

(declare-fun b!5554729 () Bool)

(declare-fun e!3430652 () Bool)

(assert (=> b!5554729 (= e!3430650 e!3430652)))

(assert (=> b!5554729 (= c!972403 ((_ is Star!15539) r!7292))))

(declare-fun b!5554730 () Bool)

(declare-fun e!3430648 () Bool)

(assert (=> b!5554730 (= e!3430652 e!3430648)))

(assert (=> b!5554730 (= c!972404 ((_ is Union!15539) r!7292))))

(declare-fun b!5554731 () Bool)

(declare-fun res!2361146 () Bool)

(assert (=> b!5554731 (=> res!2361146 e!3430649)))

(assert (=> b!5554731 (= res!2361146 (not ((_ is Concat!24384) r!7292)))))

(assert (=> b!5554731 (= e!3430648 e!3430649)))

(declare-fun b!5554732 () Bool)

(declare-fun res!2361145 () Bool)

(assert (=> b!5554732 (=> (not res!2361145) (not e!3430654))))

(assert (=> b!5554732 (= res!2361145 call!414119)))

(assert (=> b!5554732 (= e!3430648 e!3430654)))

(declare-fun bm!414115 () Bool)

(assert (=> bm!414115 (= call!414119 (validRegex!7275 (ite c!972404 (regOne!31591 r!7292) (regOne!31590 r!7292))))))

(declare-fun b!5554733 () Bool)

(assert (=> b!5554733 (= e!3430652 e!3430653)))

(declare-fun res!2361142 () Bool)

(assert (=> b!5554733 (= res!2361142 (not (nullable!5571 (reg!15868 r!7292))))))

(assert (=> b!5554733 (=> (not res!2361142) (not e!3430653))))

(declare-fun b!5554734 () Bool)

(assert (=> b!5554734 (= e!3430651 call!414120)))

(assert (= (and d!1758391 (not res!2361144)) b!5554729))

(assert (= (and b!5554729 c!972403) b!5554733))

(assert (= (and b!5554729 (not c!972403)) b!5554730))

(assert (= (and b!5554733 res!2361142) b!5554726))

(assert (= (and b!5554730 c!972404) b!5554732))

(assert (= (and b!5554730 (not c!972404)) b!5554731))

(assert (= (and b!5554732 res!2361145) b!5554728))

(assert (= (and b!5554731 (not res!2361146)) b!5554727))

(assert (= (and b!5554727 res!2361143) b!5554734))

(assert (= (or b!5554728 b!5554734) bm!414113))

(assert (= (or b!5554732 b!5554727) bm!414115))

(assert (= (or b!5554726 bm!414113) bm!414114))

(declare-fun m!6547364 () Bool)

(assert (=> bm!414114 m!6547364))

(declare-fun m!6547366 () Bool)

(assert (=> bm!414115 m!6547366))

(declare-fun m!6547368 () Bool)

(assert (=> b!5554733 m!6547368))

(assert (=> start!578186 d!1758391))

(declare-fun d!1758393 () Bool)

(declare-fun e!3430657 () Bool)

(assert (=> d!1758393 e!3430657))

(declare-fun res!2361149 () Bool)

(assert (=> d!1758393 (=> (not res!2361149) (not e!3430657))))

(declare-fun lt!2250886 () List!62917)

(declare-fun noDuplicate!1522 (List!62917) Bool)

(assert (=> d!1758393 (= res!2361149 (noDuplicate!1522 lt!2250886))))

(declare-fun choose!42132 ((InoxSet Context!9846)) List!62917)

(assert (=> d!1758393 (= lt!2250886 (choose!42132 z!1189))))

(assert (=> d!1758393 (= (toList!9323 z!1189) lt!2250886)))

(declare-fun b!5554737 () Bool)

(declare-fun content!11306 (List!62917) (InoxSet Context!9846))

(assert (=> b!5554737 (= e!3430657 (= (content!11306 lt!2250886) z!1189))))

(assert (= (and d!1758393 res!2361149) b!5554737))

(declare-fun m!6547370 () Bool)

(assert (=> d!1758393 m!6547370))

(declare-fun m!6547372 () Bool)

(assert (=> d!1758393 m!6547372))

(declare-fun m!6547374 () Bool)

(assert (=> b!5554737 m!6547374))

(assert (=> b!5554236 d!1758393))

(declare-fun bs!1286622 () Bool)

(declare-fun d!1758395 () Bool)

(assert (= bs!1286622 (and d!1758395 d!1758309)))

(declare-fun lambda!298029 () Int)

(assert (=> bs!1286622 (= lambda!298029 lambda!297982)))

(declare-fun bs!1286623 () Bool)

(assert (= bs!1286623 (and d!1758395 d!1758385)))

(assert (=> bs!1286623 (= lambda!298029 lambda!298022)))

(declare-fun bs!1286624 () Bool)

(assert (= bs!1286624 (and d!1758395 d!1758387)))

(assert (=> bs!1286624 (= lambda!298029 lambda!298025)))

(declare-fun bs!1286625 () Bool)

(assert (= bs!1286625 (and d!1758395 d!1758389)))

(assert (=> bs!1286625 (= lambda!298029 lambda!298026)))

(declare-fun b!5554758 () Bool)

(declare-fun e!3430670 () Bool)

(declare-fun e!3430671 () Bool)

(assert (=> b!5554758 (= e!3430670 e!3430671)))

(declare-fun c!972415 () Bool)

(assert (=> b!5554758 (= c!972415 (isEmpty!34584 (exprs!5423 (h!69241 zl!343))))))

(declare-fun b!5554759 () Bool)

(declare-fun e!3430674 () Regex!15539)

(declare-fun e!3430672 () Regex!15539)

(assert (=> b!5554759 (= e!3430674 e!3430672)))

(declare-fun c!972414 () Bool)

(assert (=> b!5554759 (= c!972414 ((_ is Cons!62792) (exprs!5423 (h!69241 zl!343))))))

(declare-fun b!5554760 () Bool)

(declare-fun e!3430673 () Bool)

(declare-fun lt!2250889 () Regex!15539)

(declare-fun isConcat!624 (Regex!15539) Bool)

(assert (=> b!5554760 (= e!3430673 (isConcat!624 lt!2250889))))

(assert (=> d!1758395 e!3430670))

(declare-fun res!2361154 () Bool)

(assert (=> d!1758395 (=> (not res!2361154) (not e!3430670))))

(assert (=> d!1758395 (= res!2361154 (validRegex!7275 lt!2250889))))

(assert (=> d!1758395 (= lt!2250889 e!3430674)))

(declare-fun c!972416 () Bool)

(declare-fun e!3430675 () Bool)

(assert (=> d!1758395 (= c!972416 e!3430675)))

(declare-fun res!2361155 () Bool)

(assert (=> d!1758395 (=> (not res!2361155) (not e!3430675))))

(assert (=> d!1758395 (= res!2361155 ((_ is Cons!62792) (exprs!5423 (h!69241 zl!343))))))

(assert (=> d!1758395 (forall!14711 (exprs!5423 (h!69241 zl!343)) lambda!298029)))

(assert (=> d!1758395 (= (generalisedConcat!1154 (exprs!5423 (h!69241 zl!343))) lt!2250889)))

(declare-fun b!5554761 () Bool)

(assert (=> b!5554761 (= e!3430672 EmptyExpr!15539)))

(declare-fun b!5554762 () Bool)

(assert (=> b!5554762 (= e!3430675 (isEmpty!34584 (t!376181 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun b!5554763 () Bool)

(assert (=> b!5554763 (= e!3430671 e!3430673)))

(declare-fun c!972413 () Bool)

(assert (=> b!5554763 (= c!972413 (isEmpty!34584 (tail!10956 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun b!5554764 () Bool)

(assert (=> b!5554764 (= e!3430672 (Concat!24384 (h!69240 (exprs!5423 (h!69241 zl!343))) (generalisedConcat!1154 (t!376181 (exprs!5423 (h!69241 zl!343))))))))

(declare-fun b!5554765 () Bool)

(assert (=> b!5554765 (= e!3430673 (= lt!2250889 (head!11861 (exprs!5423 (h!69241 zl!343)))))))

(declare-fun b!5554766 () Bool)

(declare-fun isEmptyExpr!1101 (Regex!15539) Bool)

(assert (=> b!5554766 (= e!3430671 (isEmptyExpr!1101 lt!2250889))))

(declare-fun b!5554767 () Bool)

(assert (=> b!5554767 (= e!3430674 (h!69240 (exprs!5423 (h!69241 zl!343))))))

(assert (= (and d!1758395 res!2361155) b!5554762))

(assert (= (and d!1758395 c!972416) b!5554767))

(assert (= (and d!1758395 (not c!972416)) b!5554759))

(assert (= (and b!5554759 c!972414) b!5554764))

(assert (= (and b!5554759 (not c!972414)) b!5554761))

(assert (= (and d!1758395 res!2361154) b!5554758))

(assert (= (and b!5554758 c!972415) b!5554766))

(assert (= (and b!5554758 (not c!972415)) b!5554763))

(assert (= (and b!5554763 c!972413) b!5554765))

(assert (= (and b!5554763 (not c!972413)) b!5554760))

(declare-fun m!6547376 () Bool)

(assert (=> b!5554766 m!6547376))

(declare-fun m!6547378 () Bool)

(assert (=> b!5554763 m!6547378))

(assert (=> b!5554763 m!6547378))

(declare-fun m!6547380 () Bool)

(assert (=> b!5554763 m!6547380))

(declare-fun m!6547382 () Bool)

(assert (=> b!5554760 m!6547382))

(declare-fun m!6547384 () Bool)

(assert (=> b!5554765 m!6547384))

(declare-fun m!6547386 () Bool)

(assert (=> d!1758395 m!6547386))

(declare-fun m!6547388 () Bool)

(assert (=> d!1758395 m!6547388))

(declare-fun m!6547390 () Bool)

(assert (=> b!5554758 m!6547390))

(declare-fun m!6547392 () Bool)

(assert (=> b!5554764 m!6547392))

(assert (=> b!5554762 m!6547076))

(assert (=> b!5554230 d!1758395))

(declare-fun d!1758397 () Bool)

(assert (=> d!1758397 (= (isEmpty!34585 (t!376182 zl!343)) ((_ is Nil!62793) (t!376182 zl!343)))))

(assert (=> b!5554231 d!1758397))

(declare-fun d!1758399 () Bool)

(assert (=> d!1758399 (= (isEmpty!34584 (t!376181 (exprs!5423 (h!69241 zl!343)))) ((_ is Nil!62792) (t!376181 (exprs!5423 (h!69241 zl!343)))))))

(assert (=> b!5554219 d!1758399))

(declare-fun bs!1286626 () Bool)

(declare-fun b!5554807 () Bool)

(assert (= bs!1286626 (and b!5554807 d!1758329)))

(declare-fun lambda!298034 () Int)

(assert (=> bs!1286626 (not (= lambda!298034 lambda!298003))))

(declare-fun bs!1286627 () Bool)

(assert (= bs!1286627 (and b!5554807 d!1758341)))

(assert (=> bs!1286627 (not (= lambda!298034 lambda!298013))))

(declare-fun bs!1286628 () Bool)

(assert (= bs!1286628 (and b!5554807 b!5554224)))

(assert (=> bs!1286628 (not (= lambda!298034 lambda!297977))))

(assert (=> bs!1286628 (not (= lambda!298034 lambda!297978))))

(assert (=> bs!1286627 (not (= lambda!298034 lambda!298011))))

(assert (=> b!5554807 true))

(assert (=> b!5554807 true))

(declare-fun bs!1286629 () Bool)

(declare-fun b!5554803 () Bool)

(assert (= bs!1286629 (and b!5554803 d!1758329)))

(declare-fun lambda!298035 () Int)

(assert (=> bs!1286629 (not (= lambda!298035 lambda!298003))))

(declare-fun bs!1286630 () Bool)

(assert (= bs!1286630 (and b!5554803 b!5554807)))

(assert (=> bs!1286630 (not (= lambda!298035 lambda!298034))))

(declare-fun bs!1286631 () Bool)

(assert (= bs!1286631 (and b!5554803 d!1758341)))

(assert (=> bs!1286631 (= lambda!298035 lambda!298013)))

(declare-fun bs!1286632 () Bool)

(assert (= bs!1286632 (and b!5554803 b!5554224)))

(assert (=> bs!1286632 (not (= lambda!298035 lambda!297977))))

(assert (=> bs!1286632 (= lambda!298035 lambda!297978)))

(assert (=> bs!1286631 (not (= lambda!298035 lambda!298011))))

(assert (=> b!5554803 true))

(assert (=> b!5554803 true))

(declare-fun b!5554800 () Bool)

(declare-fun e!3430699 () Bool)

(declare-fun e!3430695 () Bool)

(assert (=> b!5554800 (= e!3430699 e!3430695)))

(declare-fun c!972427 () Bool)

(assert (=> b!5554800 (= c!972427 ((_ is Star!15539) r!7292))))

(declare-fun d!1758401 () Bool)

(declare-fun c!972428 () Bool)

(assert (=> d!1758401 (= c!972428 ((_ is EmptyExpr!15539) r!7292))))

(declare-fun e!3430697 () Bool)

(assert (=> d!1758401 (= (matchRSpec!2642 r!7292 s!2326) e!3430697)))

(declare-fun b!5554801 () Bool)

(declare-fun e!3430696 () Bool)

(assert (=> b!5554801 (= e!3430696 (matchRSpec!2642 (regTwo!31591 r!7292) s!2326))))

(declare-fun b!5554802 () Bool)

(declare-fun e!3430700 () Bool)

(assert (=> b!5554802 (= e!3430697 e!3430700)))

(declare-fun res!2361173 () Bool)

(assert (=> b!5554802 (= res!2361173 (not ((_ is EmptyLang!15539) r!7292)))))

(assert (=> b!5554802 (=> (not res!2361173) (not e!3430700))))

(declare-fun call!414125 () Bool)

(assert (=> b!5554803 (= e!3430695 call!414125)))

(declare-fun b!5554804 () Bool)

(declare-fun call!414126 () Bool)

(assert (=> b!5554804 (= e!3430697 call!414126)))

(declare-fun b!5554805 () Bool)

(assert (=> b!5554805 (= e!3430699 e!3430696)))

(declare-fun res!2361172 () Bool)

(assert (=> b!5554805 (= res!2361172 (matchRSpec!2642 (regOne!31591 r!7292) s!2326))))

(assert (=> b!5554805 (=> res!2361172 e!3430696)))

(declare-fun b!5554806 () Bool)

(declare-fun c!972426 () Bool)

(assert (=> b!5554806 (= c!972426 ((_ is Union!15539) r!7292))))

(declare-fun e!3430698 () Bool)

(assert (=> b!5554806 (= e!3430698 e!3430699)))

(declare-fun bm!414120 () Bool)

(declare-fun isEmpty!34589 (List!62918) Bool)

(assert (=> bm!414120 (= call!414126 (isEmpty!34589 s!2326))))

(declare-fun e!3430694 () Bool)

(assert (=> b!5554807 (= e!3430694 call!414125)))

(declare-fun b!5554808 () Bool)

(assert (=> b!5554808 (= e!3430698 (= s!2326 (Cons!62794 (c!972267 r!7292) Nil!62794)))))

(declare-fun b!5554809 () Bool)

(declare-fun res!2361174 () Bool)

(assert (=> b!5554809 (=> res!2361174 e!3430694)))

(assert (=> b!5554809 (= res!2361174 call!414126)))

(assert (=> b!5554809 (= e!3430695 e!3430694)))

(declare-fun b!5554810 () Bool)

(declare-fun c!972425 () Bool)

(assert (=> b!5554810 (= c!972425 ((_ is ElementMatch!15539) r!7292))))

(assert (=> b!5554810 (= e!3430700 e!3430698)))

(declare-fun bm!414121 () Bool)

(assert (=> bm!414121 (= call!414125 (Exists!2639 (ite c!972427 lambda!298034 lambda!298035)))))

(assert (= (and d!1758401 c!972428) b!5554804))

(assert (= (and d!1758401 (not c!972428)) b!5554802))

(assert (= (and b!5554802 res!2361173) b!5554810))

(assert (= (and b!5554810 c!972425) b!5554808))

(assert (= (and b!5554810 (not c!972425)) b!5554806))

(assert (= (and b!5554806 c!972426) b!5554805))

(assert (= (and b!5554806 (not c!972426)) b!5554800))

(assert (= (and b!5554805 (not res!2361172)) b!5554801))

(assert (= (and b!5554800 c!972427) b!5554809))

(assert (= (and b!5554800 (not c!972427)) b!5554803))

(assert (= (and b!5554809 (not res!2361174)) b!5554807))

(assert (= (or b!5554807 b!5554803) bm!414121))

(assert (= (or b!5554804 b!5554809) bm!414120))

(declare-fun m!6547394 () Bool)

(assert (=> b!5554801 m!6547394))

(declare-fun m!6547396 () Bool)

(assert (=> b!5554805 m!6547396))

(declare-fun m!6547398 () Bool)

(assert (=> bm!414120 m!6547398))

(declare-fun m!6547400 () Bool)

(assert (=> bm!414121 m!6547400))

(assert (=> b!5554220 d!1758401))

(declare-fun b!5554839 () Bool)

(declare-fun e!3430715 () Bool)

(declare-fun lt!2250892 () Bool)

(declare-fun call!414129 () Bool)

(assert (=> b!5554839 (= e!3430715 (= lt!2250892 call!414129))))

(declare-fun b!5554840 () Bool)

(declare-fun res!2361196 () Bool)

(declare-fun e!3430718 () Bool)

(assert (=> b!5554840 (=> res!2361196 e!3430718)))

(assert (=> b!5554840 (= res!2361196 (not ((_ is ElementMatch!15539) r!7292)))))

(declare-fun e!3430719 () Bool)

(assert (=> b!5554840 (= e!3430719 e!3430718)))

(declare-fun b!5554841 () Bool)

(declare-fun e!3430720 () Bool)

(declare-fun head!11862 (List!62918) C!31348)

(assert (=> b!5554841 (= e!3430720 (not (= (head!11862 s!2326) (c!972267 r!7292))))))

(declare-fun d!1758403 () Bool)

(assert (=> d!1758403 e!3430715))

(declare-fun c!972435 () Bool)

(assert (=> d!1758403 (= c!972435 ((_ is EmptyExpr!15539) r!7292))))

(declare-fun e!3430716 () Bool)

(assert (=> d!1758403 (= lt!2250892 e!3430716)))

(declare-fun c!972437 () Bool)

(assert (=> d!1758403 (= c!972437 (isEmpty!34589 s!2326))))

(assert (=> d!1758403 (validRegex!7275 r!7292)))

(assert (=> d!1758403 (= (matchR!7724 r!7292 s!2326) lt!2250892)))

(declare-fun b!5554842 () Bool)

(declare-fun e!3430721 () Bool)

(assert (=> b!5554842 (= e!3430718 e!3430721)))

(declare-fun res!2361191 () Bool)

(assert (=> b!5554842 (=> (not res!2361191) (not e!3430721))))

(assert (=> b!5554842 (= res!2361191 (not lt!2250892))))

(declare-fun b!5554843 () Bool)

(declare-fun e!3430717 () Bool)

(assert (=> b!5554843 (= e!3430717 (= (head!11862 s!2326) (c!972267 r!7292)))))

(declare-fun b!5554844 () Bool)

(assert (=> b!5554844 (= e!3430719 (not lt!2250892))))

(declare-fun b!5554845 () Bool)

(assert (=> b!5554845 (= e!3430721 e!3430720)))

(declare-fun res!2361195 () Bool)

(assert (=> b!5554845 (=> res!2361195 e!3430720)))

(assert (=> b!5554845 (= res!2361195 call!414129)))

(declare-fun bm!414124 () Bool)

(assert (=> bm!414124 (= call!414129 (isEmpty!34589 s!2326))))

(declare-fun b!5554846 () Bool)

(declare-fun res!2361194 () Bool)

(assert (=> b!5554846 (=> res!2361194 e!3430718)))

(assert (=> b!5554846 (= res!2361194 e!3430717)))

(declare-fun res!2361192 () Bool)

(assert (=> b!5554846 (=> (not res!2361192) (not e!3430717))))

(assert (=> b!5554846 (= res!2361192 lt!2250892)))

(declare-fun b!5554847 () Bool)

(declare-fun res!2361198 () Bool)

(assert (=> b!5554847 (=> (not res!2361198) (not e!3430717))))

(declare-fun tail!10957 (List!62918) List!62918)

(assert (=> b!5554847 (= res!2361198 (isEmpty!34589 (tail!10957 s!2326)))))

(declare-fun b!5554848 () Bool)

(declare-fun res!2361193 () Bool)

(assert (=> b!5554848 (=> res!2361193 e!3430720)))

(assert (=> b!5554848 (= res!2361193 (not (isEmpty!34589 (tail!10957 s!2326))))))

(declare-fun b!5554849 () Bool)

(assert (=> b!5554849 (= e!3430715 e!3430719)))

(declare-fun c!972436 () Bool)

(assert (=> b!5554849 (= c!972436 ((_ is EmptyLang!15539) r!7292))))

(declare-fun b!5554850 () Bool)

(declare-fun res!2361197 () Bool)

(assert (=> b!5554850 (=> (not res!2361197) (not e!3430717))))

(assert (=> b!5554850 (= res!2361197 (not call!414129))))

(declare-fun b!5554851 () Bool)

(assert (=> b!5554851 (= e!3430716 (nullable!5571 r!7292))))

(declare-fun b!5554852 () Bool)

(declare-fun derivativeStep!4394 (Regex!15539 C!31348) Regex!15539)

(assert (=> b!5554852 (= e!3430716 (matchR!7724 (derivativeStep!4394 r!7292 (head!11862 s!2326)) (tail!10957 s!2326)))))

(assert (= (and d!1758403 c!972437) b!5554851))

(assert (= (and d!1758403 (not c!972437)) b!5554852))

(assert (= (and d!1758403 c!972435) b!5554839))

(assert (= (and d!1758403 (not c!972435)) b!5554849))

(assert (= (and b!5554849 c!972436) b!5554844))

(assert (= (and b!5554849 (not c!972436)) b!5554840))

(assert (= (and b!5554840 (not res!2361196)) b!5554846))

(assert (= (and b!5554846 res!2361192) b!5554850))

(assert (= (and b!5554850 res!2361197) b!5554847))

(assert (= (and b!5554847 res!2361198) b!5554843))

(assert (= (and b!5554846 (not res!2361194)) b!5554842))

(assert (= (and b!5554842 res!2361191) b!5554845))

(assert (= (and b!5554845 (not res!2361195)) b!5554848))

(assert (= (and b!5554848 (not res!2361193)) b!5554841))

(assert (= (or b!5554839 b!5554845 b!5554850) bm!414124))

(declare-fun m!6547402 () Bool)

(assert (=> b!5554847 m!6547402))

(assert (=> b!5554847 m!6547402))

(declare-fun m!6547404 () Bool)

(assert (=> b!5554847 m!6547404))

(declare-fun m!6547406 () Bool)

(assert (=> b!5554843 m!6547406))

(assert (=> bm!414124 m!6547398))

(declare-fun m!6547408 () Bool)

(assert (=> b!5554851 m!6547408))

(assert (=> b!5554841 m!6547406))

(assert (=> d!1758403 m!6547398))

(assert (=> d!1758403 m!6547058))

(assert (=> b!5554852 m!6547406))

(assert (=> b!5554852 m!6547406))

(declare-fun m!6547410 () Bool)

(assert (=> b!5554852 m!6547410))

(assert (=> b!5554852 m!6547402))

(assert (=> b!5554852 m!6547410))

(assert (=> b!5554852 m!6547402))

(declare-fun m!6547412 () Bool)

(assert (=> b!5554852 m!6547412))

(assert (=> b!5554848 m!6547402))

(assert (=> b!5554848 m!6547402))

(assert (=> b!5554848 m!6547404))

(assert (=> b!5554220 d!1758403))

(declare-fun d!1758405 () Bool)

(assert (=> d!1758405 (= (matchR!7724 r!7292 s!2326) (matchRSpec!2642 r!7292 s!2326))))

(declare-fun lt!2250895 () Unit!155538)

(declare-fun choose!42133 (Regex!15539 List!62918) Unit!155538)

(assert (=> d!1758405 (= lt!2250895 (choose!42133 r!7292 s!2326))))

(assert (=> d!1758405 (validRegex!7275 r!7292)))

(assert (=> d!1758405 (= (mainMatchTheorem!2642 r!7292 s!2326) lt!2250895)))

(declare-fun bs!1286633 () Bool)

(assert (= bs!1286633 d!1758405))

(assert (=> bs!1286633 m!6547088))

(assert (=> bs!1286633 m!6547086))

(declare-fun m!6547414 () Bool)

(assert (=> bs!1286633 m!6547414))

(assert (=> bs!1286633 m!6547058))

(assert (=> b!5554220 d!1758405))

(declare-fun b!5554860 () Bool)

(declare-fun e!3430727 () Bool)

(declare-fun tp!1532562 () Bool)

(assert (=> b!5554860 (= e!3430727 tp!1532562)))

(declare-fun b!5554859 () Bool)

(declare-fun e!3430726 () Bool)

(declare-fun tp!1532563 () Bool)

(assert (=> b!5554859 (= e!3430726 (and (inv!82094 (h!69241 (t!376182 zl!343))) e!3430727 tp!1532563))))

(assert (=> b!5554233 (= tp!1532496 e!3430726)))

(assert (= b!5554859 b!5554860))

(assert (= (and b!5554233 ((_ is Cons!62793) (t!376182 zl!343))) b!5554859))

(declare-fun m!6547416 () Bool)

(assert (=> b!5554859 m!6547416))

(declare-fun b!5554865 () Bool)

(declare-fun e!3430730 () Bool)

(declare-fun tp!1532568 () Bool)

(declare-fun tp!1532569 () Bool)

(assert (=> b!5554865 (= e!3430730 (and tp!1532568 tp!1532569))))

(assert (=> b!5554226 (= tp!1532498 e!3430730)))

(assert (= (and b!5554226 ((_ is Cons!62792) (exprs!5423 setElem!36957))) b!5554865))

(declare-fun b!5554866 () Bool)

(declare-fun e!3430731 () Bool)

(declare-fun tp!1532570 () Bool)

(declare-fun tp!1532571 () Bool)

(assert (=> b!5554866 (= e!3430731 (and tp!1532570 tp!1532571))))

(assert (=> b!5554227 (= tp!1532499 e!3430731)))

(assert (= (and b!5554227 ((_ is Cons!62792) (exprs!5423 (h!69241 zl!343)))) b!5554866))

(declare-fun condSetEmpty!36963 () Bool)

(assert (=> setNonEmpty!36957 (= condSetEmpty!36963 (= setRest!36957 ((as const (Array Context!9846 Bool)) false)))))

(declare-fun setRes!36963 () Bool)

(assert (=> setNonEmpty!36957 (= tp!1532497 setRes!36963)))

(declare-fun setIsEmpty!36963 () Bool)

(assert (=> setIsEmpty!36963 setRes!36963))

(declare-fun e!3430734 () Bool)

(declare-fun setElem!36963 () Context!9846)

(declare-fun setNonEmpty!36963 () Bool)

(declare-fun tp!1532576 () Bool)

(assert (=> setNonEmpty!36963 (= setRes!36963 (and tp!1532576 (inv!82094 setElem!36963) e!3430734))))

(declare-fun setRest!36963 () (InoxSet Context!9846))

(assert (=> setNonEmpty!36963 (= setRest!36957 ((_ map or) (store ((as const (Array Context!9846 Bool)) false) setElem!36963 true) setRest!36963))))

(declare-fun b!5554871 () Bool)

(declare-fun tp!1532577 () Bool)

(assert (=> b!5554871 (= e!3430734 tp!1532577)))

(assert (= (and setNonEmpty!36957 condSetEmpty!36963) setIsEmpty!36963))

(assert (= (and setNonEmpty!36957 (not condSetEmpty!36963)) setNonEmpty!36963))

(assert (= setNonEmpty!36963 b!5554871))

(declare-fun m!6547418 () Bool)

(assert (=> setNonEmpty!36963 m!6547418))

(declare-fun b!5554884 () Bool)

(declare-fun e!3430737 () Bool)

(declare-fun tp!1532588 () Bool)

(assert (=> b!5554884 (= e!3430737 tp!1532588)))

(assert (=> b!5554235 (= tp!1532494 e!3430737)))

(declare-fun b!5554883 () Bool)

(declare-fun tp!1532591 () Bool)

(declare-fun tp!1532589 () Bool)

(assert (=> b!5554883 (= e!3430737 (and tp!1532591 tp!1532589))))

(declare-fun b!5554885 () Bool)

(declare-fun tp!1532590 () Bool)

(declare-fun tp!1532592 () Bool)

(assert (=> b!5554885 (= e!3430737 (and tp!1532590 tp!1532592))))

(declare-fun b!5554882 () Bool)

(assert (=> b!5554882 (= e!3430737 tp_is_empty!40331)))

(assert (= (and b!5554235 ((_ is ElementMatch!15539) (regOne!31591 r!7292))) b!5554882))

(assert (= (and b!5554235 ((_ is Concat!24384) (regOne!31591 r!7292))) b!5554883))

(assert (= (and b!5554235 ((_ is Star!15539) (regOne!31591 r!7292))) b!5554884))

(assert (= (and b!5554235 ((_ is Union!15539) (regOne!31591 r!7292))) b!5554885))

(declare-fun b!5554888 () Bool)

(declare-fun e!3430738 () Bool)

(declare-fun tp!1532593 () Bool)

(assert (=> b!5554888 (= e!3430738 tp!1532593)))

(assert (=> b!5554235 (= tp!1532495 e!3430738)))

(declare-fun b!5554887 () Bool)

(declare-fun tp!1532596 () Bool)

(declare-fun tp!1532594 () Bool)

(assert (=> b!5554887 (= e!3430738 (and tp!1532596 tp!1532594))))

(declare-fun b!5554889 () Bool)

(declare-fun tp!1532595 () Bool)

(declare-fun tp!1532597 () Bool)

(assert (=> b!5554889 (= e!3430738 (and tp!1532595 tp!1532597))))

(declare-fun b!5554886 () Bool)

(assert (=> b!5554886 (= e!3430738 tp_is_empty!40331)))

(assert (= (and b!5554235 ((_ is ElementMatch!15539) (regTwo!31591 r!7292))) b!5554886))

(assert (= (and b!5554235 ((_ is Concat!24384) (regTwo!31591 r!7292))) b!5554887))

(assert (= (and b!5554235 ((_ is Star!15539) (regTwo!31591 r!7292))) b!5554888))

(assert (= (and b!5554235 ((_ is Union!15539) (regTwo!31591 r!7292))) b!5554889))

(declare-fun b!5554894 () Bool)

(declare-fun e!3430741 () Bool)

(declare-fun tp!1532600 () Bool)

(assert (=> b!5554894 (= e!3430741 (and tp_is_empty!40331 tp!1532600))))

(assert (=> b!5554221 (= tp!1532490 e!3430741)))

(assert (= (and b!5554221 ((_ is Cons!62794) (t!376183 s!2326))) b!5554894))

(declare-fun b!5554897 () Bool)

(declare-fun e!3430742 () Bool)

(declare-fun tp!1532601 () Bool)

(assert (=> b!5554897 (= e!3430742 tp!1532601)))

(assert (=> b!5554229 (= tp!1532493 e!3430742)))

(declare-fun b!5554896 () Bool)

(declare-fun tp!1532604 () Bool)

(declare-fun tp!1532602 () Bool)

(assert (=> b!5554896 (= e!3430742 (and tp!1532604 tp!1532602))))

(declare-fun b!5554898 () Bool)

(declare-fun tp!1532603 () Bool)

(declare-fun tp!1532605 () Bool)

(assert (=> b!5554898 (= e!3430742 (and tp!1532603 tp!1532605))))

(declare-fun b!5554895 () Bool)

(assert (=> b!5554895 (= e!3430742 tp_is_empty!40331)))

(assert (= (and b!5554229 ((_ is ElementMatch!15539) (regOne!31590 r!7292))) b!5554895))

(assert (= (and b!5554229 ((_ is Concat!24384) (regOne!31590 r!7292))) b!5554896))

(assert (= (and b!5554229 ((_ is Star!15539) (regOne!31590 r!7292))) b!5554897))

(assert (= (and b!5554229 ((_ is Union!15539) (regOne!31590 r!7292))) b!5554898))

(declare-fun b!5554901 () Bool)

(declare-fun e!3430743 () Bool)

(declare-fun tp!1532606 () Bool)

(assert (=> b!5554901 (= e!3430743 tp!1532606)))

(assert (=> b!5554229 (= tp!1532492 e!3430743)))

(declare-fun b!5554900 () Bool)

(declare-fun tp!1532609 () Bool)

(declare-fun tp!1532607 () Bool)

(assert (=> b!5554900 (= e!3430743 (and tp!1532609 tp!1532607))))

(declare-fun b!5554902 () Bool)

(declare-fun tp!1532608 () Bool)

(declare-fun tp!1532610 () Bool)

(assert (=> b!5554902 (= e!3430743 (and tp!1532608 tp!1532610))))

(declare-fun b!5554899 () Bool)

(assert (=> b!5554899 (= e!3430743 tp_is_empty!40331)))

(assert (= (and b!5554229 ((_ is ElementMatch!15539) (regTwo!31590 r!7292))) b!5554899))

(assert (= (and b!5554229 ((_ is Concat!24384) (regTwo!31590 r!7292))) b!5554900))

(assert (= (and b!5554229 ((_ is Star!15539) (regTwo!31590 r!7292))) b!5554901))

(assert (= (and b!5554229 ((_ is Union!15539) (regTwo!31590 r!7292))) b!5554902))

(declare-fun b!5554905 () Bool)

(declare-fun e!3430744 () Bool)

(declare-fun tp!1532611 () Bool)

(assert (=> b!5554905 (= e!3430744 tp!1532611)))

(assert (=> b!5554234 (= tp!1532491 e!3430744)))

(declare-fun b!5554904 () Bool)

(declare-fun tp!1532614 () Bool)

(declare-fun tp!1532612 () Bool)

(assert (=> b!5554904 (= e!3430744 (and tp!1532614 tp!1532612))))

(declare-fun b!5554906 () Bool)

(declare-fun tp!1532613 () Bool)

(declare-fun tp!1532615 () Bool)

(assert (=> b!5554906 (= e!3430744 (and tp!1532613 tp!1532615))))

(declare-fun b!5554903 () Bool)

(assert (=> b!5554903 (= e!3430744 tp_is_empty!40331)))

(assert (= (and b!5554234 ((_ is ElementMatch!15539) (reg!15868 r!7292))) b!5554903))

(assert (= (and b!5554234 ((_ is Concat!24384) (reg!15868 r!7292))) b!5554904))

(assert (= (and b!5554234 ((_ is Star!15539) (reg!15868 r!7292))) b!5554905))

(assert (= (and b!5554234 ((_ is Union!15539) (reg!15868 r!7292))) b!5554906))

(declare-fun b_lambda!210969 () Bool)

(assert (= b_lambda!210967 (or b!5554222 b_lambda!210969)))

(declare-fun bs!1286634 () Bool)

(declare-fun d!1758407 () Bool)

(assert (= bs!1286634 (and d!1758407 b!5554222)))

(assert (=> bs!1286634 (= (dynLambda!24558 lambda!297979 (h!69241 zl!343)) (derivationStepZipperUp!807 (h!69241 zl!343) (h!69242 s!2326)))))

(assert (=> bs!1286634 m!6547050))

(assert (=> d!1758383 d!1758407))

(check-sat (not d!1758395) (not b!5554896) (not b!5554699) (not d!1758385) (not b!5554887) (not d!1758375) (not b!5554760) (not b!5554701) tp_is_empty!40331 (not bm!414099) (not b!5554852) (not b!5554311) (not b!5554894) (not b!5554801) (not b!5554666) (not b!5554906) (not b!5554706) (not bm!414120) (not bm!414114) (not b!5554902) (not b!5554764) (not d!1758341) (not b!5554859) (not b!5554762) (not b!5554700) (not d!1758327) (not b!5554904) (not b!5554671) (not b!5554901) (not bm!414115) (not bm!414104) (not b_lambda!210969) (not bm!414124) (not b!5554733) (not b!5554528) (not b!5554905) (not d!1758387) (not b!5554694) (not bm!414102) (not d!1758403) (not b!5554897) (not b!5554763) (not b!5554866) (not bm!414083) (not b!5554304) (not setNonEmpty!36963) (not d!1758379) (not b!5554805) (not b!5554848) (not b!5554888) (not b!5554667) (not b!5554766) (not b!5554900) (not b!5554865) (not d!1758383) (not d!1758405) (not d!1758329) (not bm!414105) (not b!5554885) (not b!5554884) (not b!5554309) (not b!5554662) (not b!5554695) (not d!1758361) (not d!1758305) (not b!5554847) (not bm!414121) (not b!5554758) (not b!5554765) (not b!5554303) (not d!1758311) (not d!1758309) (not b!5554306) (not b!5554532) (not b!5554697) (not b!5554851) (not d!1758359) (not b!5554860) (not bs!1286634) (not b!5554889) (not b!5554841) (not d!1758393) (not bm!414106) (not b!5554883) (not b!5554698) (not b!5554898) (not d!1758389) (not b!5554737) (not b!5554843) (not b!5554305) (not b!5554649) (not b!5554871))
(check-sat)

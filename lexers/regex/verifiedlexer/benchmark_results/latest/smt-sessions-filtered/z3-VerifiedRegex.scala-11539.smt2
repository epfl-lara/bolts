; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!634510 () Bool)

(assert start!634510)

(declare-fun b!6421303 () Bool)

(assert (=> b!6421303 true))

(assert (=> b!6421303 true))

(declare-fun lambda!354815 () Int)

(declare-fun lambda!354814 () Int)

(assert (=> b!6421303 (not (= lambda!354815 lambda!354814))))

(assert (=> b!6421303 true))

(assert (=> b!6421303 true))

(declare-fun b!6421308 () Bool)

(assert (=> b!6421308 true))

(declare-fun bs!1614519 () Bool)

(declare-fun b!6421294 () Bool)

(assert (= bs!1614519 (and b!6421294 b!6421303)))

(declare-datatypes ((C!32920 0))(
  ( (C!32921 (val!26162 Int)) )
))
(declare-datatypes ((Regex!16325 0))(
  ( (ElementMatch!16325 (c!1173074 C!32920)) (Concat!25170 (regOne!33162 Regex!16325) (regTwo!33162 Regex!16325)) (EmptyExpr!16325) (Star!16325 (reg!16654 Regex!16325)) (EmptyLang!16325) (Union!16325 (regOne!33163 Regex!16325) (regTwo!33163 Regex!16325)) )
))
(declare-fun r!7292 () Regex!16325)

(declare-fun lt!2377164 () Regex!16325)

(declare-fun lambda!354817 () Int)

(assert (=> bs!1614519 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354817 lambda!354814))))

(assert (=> bs!1614519 (not (= lambda!354817 lambda!354815))))

(assert (=> b!6421294 true))

(assert (=> b!6421294 true))

(assert (=> b!6421294 true))

(declare-fun lambda!354818 () Int)

(assert (=> bs!1614519 (not (= lambda!354818 lambda!354814))))

(assert (=> bs!1614519 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354818 lambda!354815))))

(assert (=> b!6421294 (not (= lambda!354818 lambda!354817))))

(assert (=> b!6421294 true))

(assert (=> b!6421294 true))

(assert (=> b!6421294 true))

(declare-fun bs!1614520 () Bool)

(declare-fun b!6421322 () Bool)

(assert (= bs!1614520 (and b!6421322 b!6421303)))

(declare-datatypes ((List!65274 0))(
  ( (Nil!65150) (Cons!65150 (h!71598 C!32920) (t!378888 List!65274)) )
))
(declare-fun s!2326 () List!65274)

(declare-fun lambda!354819 () Int)

(declare-datatypes ((tuple2!66608 0))(
  ( (tuple2!66609 (_1!36607 List!65274) (_2!36607 List!65274)) )
))
(declare-fun lt!2377178 () tuple2!66608)

(assert (=> bs!1614520 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) (regOne!33162 r!7292)) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354819 lambda!354814))))

(assert (=> bs!1614520 (not (= lambda!354819 lambda!354815))))

(declare-fun bs!1614521 () Bool)

(assert (= bs!1614521 (and b!6421322 b!6421294)))

(assert (=> bs!1614521 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) lt!2377164) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354819 lambda!354817))))

(assert (=> bs!1614521 (not (= lambda!354819 lambda!354818))))

(assert (=> b!6421322 true))

(assert (=> b!6421322 true))

(assert (=> b!6421322 true))

(declare-fun b!6421293 () Bool)

(declare-fun e!3896027 () Bool)

(declare-fun tp_is_empty!41903 () Bool)

(declare-fun tp!1782912 () Bool)

(assert (=> b!6421293 (= e!3896027 (and tp_is_empty!41903 tp!1782912))))

(declare-fun e!3896033 () Bool)

(declare-fun e!3896043 () Bool)

(assert (=> b!6421294 (= e!3896033 e!3896043)))

(declare-fun res!2639178 () Bool)

(assert (=> b!6421294 (=> res!2639178 e!3896043)))

(declare-fun ++!14393 (List!65274 List!65274) List!65274)

(assert (=> b!6421294 (= res!2639178 (not (= (++!14393 (_1!36607 lt!2377178) (_2!36607 lt!2377178)) s!2326)))))

(declare-datatypes ((Option!16216 0))(
  ( (None!16215) (Some!16215 (v!52388 tuple2!66608)) )
))
(declare-fun lt!2377195 () Option!16216)

(declare-fun get!22571 (Option!16216) tuple2!66608)

(assert (=> b!6421294 (= lt!2377178 (get!22571 lt!2377195))))

(declare-fun Exists!3395 (Int) Bool)

(assert (=> b!6421294 (= (Exists!3395 lambda!354817) (Exists!3395 lambda!354818))))

(declare-datatypes ((Unit!158631 0))(
  ( (Unit!158632) )
))
(declare-fun lt!2377170 () Unit!158631)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1932 (Regex!16325 Regex!16325 List!65274) Unit!158631)

(assert (=> b!6421294 (= lt!2377170 (lemmaExistCutMatchRandMatchRSpecEquivalent!1932 lt!2377164 (regTwo!33162 r!7292) s!2326))))

(declare-fun isDefined!12919 (Option!16216) Bool)

(assert (=> b!6421294 (= (isDefined!12919 lt!2377195) (Exists!3395 lambda!354817))))

(declare-fun findConcatSeparation!2630 (Regex!16325 Regex!16325 List!65274 List!65274 List!65274) Option!16216)

(assert (=> b!6421294 (= lt!2377195 (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326))))

(declare-fun lt!2377196 () Unit!158631)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2394 (Regex!16325 Regex!16325 List!65274) Unit!158631)

(assert (=> b!6421294 (= lt!2377196 (lemmaFindConcatSeparationEquivalentToExists!2394 lt!2377164 (regTwo!33162 r!7292) s!2326))))

(declare-fun b!6421295 () Bool)

(declare-fun res!2639168 () Bool)

(declare-fun e!3896041 () Bool)

(assert (=> b!6421295 (=> res!2639168 e!3896041)))

(declare-datatypes ((List!65275 0))(
  ( (Nil!65151) (Cons!65151 (h!71599 Regex!16325) (t!378889 List!65275)) )
))
(declare-datatypes ((Context!11418 0))(
  ( (Context!11419 (exprs!6209 List!65275)) )
))
(declare-datatypes ((List!65276 0))(
  ( (Nil!65152) (Cons!65152 (h!71600 Context!11418) (t!378890 List!65276)) )
))
(declare-fun zl!343 () List!65276)

(get-info :version)

(assert (=> b!6421295 (= res!2639168 (not ((_ is Cons!65151) (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6421296 () Bool)

(declare-fun e!3896040 () Bool)

(declare-fun e!3896044 () Bool)

(assert (=> b!6421296 (= e!3896040 e!3896044)))

(declare-fun res!2639167 () Bool)

(assert (=> b!6421296 (=> res!2639167 e!3896044)))

(declare-fun lt!2377192 () Context!11418)

(declare-fun unfocusZipper!2067 (List!65276) Regex!16325)

(assert (=> b!6421296 (= res!2639167 (not (= (unfocusZipper!2067 (Cons!65152 lt!2377192 Nil!65152)) (reg!16654 (regOne!33162 r!7292)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2377190 () (InoxSet Context!11418))

(declare-fun lambda!354816 () Int)

(declare-fun lt!2377188 () Context!11418)

(declare-fun flatMap!1830 ((InoxSet Context!11418) Int) (InoxSet Context!11418))

(declare-fun derivationStepZipperUp!1499 (Context!11418 C!32920) (InoxSet Context!11418))

(assert (=> b!6421296 (= (flatMap!1830 lt!2377190 lambda!354816) (derivationStepZipperUp!1499 lt!2377188 (h!71598 s!2326)))))

(declare-fun lt!2377176 () Unit!158631)

(declare-fun lemmaFlatMapOnSingletonSet!1356 ((InoxSet Context!11418) Context!11418 Int) Unit!158631)

(assert (=> b!6421296 (= lt!2377176 (lemmaFlatMapOnSingletonSet!1356 lt!2377190 lt!2377188 lambda!354816))))

(declare-fun lt!2377194 () (InoxSet Context!11418))

(assert (=> b!6421296 (= (flatMap!1830 lt!2377194 lambda!354816) (derivationStepZipperUp!1499 lt!2377192 (h!71598 s!2326)))))

(declare-fun lt!2377179 () Unit!158631)

(assert (=> b!6421296 (= lt!2377179 (lemmaFlatMapOnSingletonSet!1356 lt!2377194 lt!2377192 lambda!354816))))

(declare-fun lt!2377172 () (InoxSet Context!11418))

(assert (=> b!6421296 (= lt!2377172 (derivationStepZipperUp!1499 lt!2377188 (h!71598 s!2326)))))

(declare-fun lt!2377197 () (InoxSet Context!11418))

(assert (=> b!6421296 (= lt!2377197 (derivationStepZipperUp!1499 lt!2377192 (h!71598 s!2326)))))

(assert (=> b!6421296 (= lt!2377190 (store ((as const (Array Context!11418 Bool)) false) lt!2377188 true))))

(assert (=> b!6421296 (= lt!2377194 (store ((as const (Array Context!11418 Bool)) false) lt!2377192 true))))

(assert (=> b!6421296 (= lt!2377192 (Context!11419 (Cons!65151 (reg!16654 (regOne!33162 r!7292)) Nil!65151)))))

(declare-fun b!6421297 () Bool)

(declare-fun e!3896031 () Bool)

(declare-fun e!3896030 () Bool)

(assert (=> b!6421297 (= e!3896031 e!3896030)))

(declare-fun res!2639155 () Bool)

(assert (=> b!6421297 (=> res!2639155 e!3896030)))

(declare-fun lt!2377185 () Regex!16325)

(assert (=> b!6421297 (= res!2639155 (not (= r!7292 lt!2377185)))))

(assert (=> b!6421297 (= lt!2377185 (Concat!25170 lt!2377164 (regTwo!33162 r!7292)))))

(declare-fun b!6421298 () Bool)

(declare-fun e!3896038 () Bool)

(declare-fun nullable!6318 (Regex!16325) Bool)

(assert (=> b!6421298 (= e!3896038 (not (nullable!6318 (reg!16654 (regOne!33162 r!7292)))))))

(declare-fun b!6421299 () Bool)

(declare-fun res!2639150 () Bool)

(declare-fun e!3896046 () Bool)

(assert (=> b!6421299 (=> res!2639150 e!3896046)))

(declare-fun isEmpty!37308 (List!65275) Bool)

(assert (=> b!6421299 (= res!2639150 (isEmpty!37308 (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6421300 () Bool)

(declare-fun e!3896032 () Bool)

(declare-fun e!3896039 () Bool)

(assert (=> b!6421300 (= e!3896032 e!3896039)))

(declare-fun res!2639154 () Bool)

(assert (=> b!6421300 (=> res!2639154 e!3896039)))

(declare-fun lt!2377173 () (InoxSet Context!11418))

(declare-fun lt!2377182 () (InoxSet Context!11418))

(assert (=> b!6421300 (= res!2639154 (not (= lt!2377173 lt!2377182)))))

(declare-fun derivationStepZipperDown!1573 (Regex!16325 Context!11418 C!32920) (InoxSet Context!11418))

(assert (=> b!6421300 (= lt!2377182 (derivationStepZipperDown!1573 (reg!16654 (regOne!33162 r!7292)) lt!2377188 (h!71598 s!2326)))))

(declare-fun lt!2377187 () List!65275)

(assert (=> b!6421300 (= lt!2377188 (Context!11419 lt!2377187))))

(assert (=> b!6421300 (= lt!2377187 (Cons!65151 lt!2377164 (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> b!6421300 (= lt!2377164 (Star!16325 (reg!16654 (regOne!33162 r!7292))))))

(declare-fun tp!1782917 () Bool)

(declare-fun e!3896029 () Bool)

(declare-fun b!6421301 () Bool)

(declare-fun e!3896042 () Bool)

(declare-fun inv!84059 (Context!11418) Bool)

(assert (=> b!6421301 (= e!3896042 (and (inv!84059 (h!71600 zl!343)) e!3896029 tp!1782917))))

(declare-fun b!6421302 () Bool)

(declare-fun res!2639159 () Bool)

(declare-fun e!3896028 () Bool)

(assert (=> b!6421302 (=> (not res!2639159) (not e!3896028))))

(declare-fun z!1189 () (InoxSet Context!11418))

(declare-fun toList!10109 ((InoxSet Context!11418)) List!65276)

(assert (=> b!6421302 (= res!2639159 (= (toList!10109 z!1189) zl!343))))

(assert (=> b!6421303 (= e!3896041 e!3896046)))

(declare-fun res!2639176 () Bool)

(assert (=> b!6421303 (=> res!2639176 e!3896046)))

(declare-fun lt!2377199 () Bool)

(declare-fun lt!2377169 () Bool)

(assert (=> b!6421303 (= res!2639176 (or (not (= lt!2377169 lt!2377199)) ((_ is Nil!65150) s!2326)))))

(assert (=> b!6421303 (= (Exists!3395 lambda!354814) (Exists!3395 lambda!354815))))

(declare-fun lt!2377191 () Unit!158631)

(assert (=> b!6421303 (= lt!2377191 (lemmaExistCutMatchRandMatchRSpecEquivalent!1932 (regOne!33162 r!7292) (regTwo!33162 r!7292) s!2326))))

(assert (=> b!6421303 (= lt!2377199 (Exists!3395 lambda!354814))))

(assert (=> b!6421303 (= lt!2377199 (isDefined!12919 (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326)))))

(declare-fun lt!2377193 () Unit!158631)

(assert (=> b!6421303 (= lt!2377193 (lemmaFindConcatSeparationEquivalentToExists!2394 (regOne!33162 r!7292) (regTwo!33162 r!7292) s!2326))))

(declare-fun b!6421304 () Bool)

(declare-fun res!2639171 () Bool)

(assert (=> b!6421304 (=> res!2639171 e!3896043)))

(declare-fun matchR!8508 (Regex!16325 List!65274) Bool)

(assert (=> b!6421304 (= res!2639171 (not (matchR!8508 (regTwo!33162 r!7292) (_2!36607 lt!2377178))))))

(declare-fun b!6421305 () Bool)

(declare-fun res!2639169 () Bool)

(assert (=> b!6421305 (=> res!2639169 e!3896043)))

(assert (=> b!6421305 (= res!2639169 (not (matchR!8508 lt!2377164 (_1!36607 lt!2377178))))))

(declare-fun b!6421306 () Bool)

(declare-fun res!2639173 () Bool)

(assert (=> b!6421306 (=> res!2639173 e!3896041)))

(declare-fun generalisedConcat!1922 (List!65275) Regex!16325)

(assert (=> b!6421306 (= res!2639173 (not (= r!7292 (generalisedConcat!1922 (exprs!6209 (h!71600 zl!343))))))))

(declare-fun b!6421307 () Bool)

(declare-fun e!3896034 () Bool)

(declare-fun lt!2377180 () (InoxSet Context!11418))

(declare-fun matchZipper!2337 ((InoxSet Context!11418) List!65274) Bool)

(assert (=> b!6421307 (= e!3896034 (matchZipper!2337 lt!2377180 (t!378888 s!2326)))))

(assert (=> b!6421308 (= e!3896046 e!3896032)))

(declare-fun res!2639156 () Bool)

(assert (=> b!6421308 (=> res!2639156 e!3896032)))

(assert (=> b!6421308 (= res!2639156 (or (and ((_ is ElementMatch!16325) (regOne!33162 r!7292)) (= (c!1173074 (regOne!33162 r!7292)) (h!71598 s!2326))) ((_ is Union!16325) (regOne!33162 r!7292))))))

(declare-fun lt!2377186 () Unit!158631)

(declare-fun e!3896047 () Unit!158631)

(assert (=> b!6421308 (= lt!2377186 e!3896047)))

(declare-fun c!1173073 () Bool)

(assert (=> b!6421308 (= c!1173073 (nullable!6318 (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> b!6421308 (= (flatMap!1830 z!1189 lambda!354816) (derivationStepZipperUp!1499 (h!71600 zl!343) (h!71598 s!2326)))))

(declare-fun lt!2377175 () Unit!158631)

(assert (=> b!6421308 (= lt!2377175 (lemmaFlatMapOnSingletonSet!1356 z!1189 (h!71600 zl!343) lambda!354816))))

(declare-fun lt!2377181 () Context!11418)

(assert (=> b!6421308 (= lt!2377180 (derivationStepZipperUp!1499 lt!2377181 (h!71598 s!2326)))))

(assert (=> b!6421308 (= lt!2377173 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (h!71600 zl!343))) lt!2377181 (h!71598 s!2326)))))

(assert (=> b!6421308 (= lt!2377181 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun lt!2377189 () (InoxSet Context!11418))

(assert (=> b!6421308 (= lt!2377189 (derivationStepZipperUp!1499 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))) (h!71598 s!2326)))))

(declare-fun b!6421309 () Bool)

(declare-fun res!2639151 () Bool)

(assert (=> b!6421309 (=> res!2639151 e!3896031)))

(declare-fun lt!2377165 () Regex!16325)

(assert (=> b!6421309 (= res!2639151 (not (= lt!2377165 r!7292)))))

(declare-fun b!6421310 () Bool)

(assert (=> b!6421310 (= e!3896044 e!3896033)))

(declare-fun res!2639152 () Bool)

(assert (=> b!6421310 (=> res!2639152 e!3896033)))

(assert (=> b!6421310 (= res!2639152 (not lt!2377169))))

(declare-fun e!3896036 () Bool)

(assert (=> b!6421310 e!3896036))

(declare-fun res!2639180 () Bool)

(assert (=> b!6421310 (=> (not res!2639180) (not e!3896036))))

(declare-fun lt!2377183 () Regex!16325)

(declare-fun matchRSpec!3426 (Regex!16325 List!65274) Bool)

(assert (=> b!6421310 (= res!2639180 (= (matchR!8508 lt!2377183 s!2326) (matchRSpec!3426 lt!2377183 s!2326)))))

(declare-fun lt!2377184 () Unit!158631)

(declare-fun mainMatchTheorem!3426 (Regex!16325 List!65274) Unit!158631)

(assert (=> b!6421310 (= lt!2377184 (mainMatchTheorem!3426 lt!2377183 s!2326))))

(declare-fun setNonEmpty!43834 () Bool)

(declare-fun setRes!43834 () Bool)

(declare-fun tp!1782914 () Bool)

(declare-fun setElem!43834 () Context!11418)

(declare-fun e!3896035 () Bool)

(assert (=> setNonEmpty!43834 (= setRes!43834 (and tp!1782914 (inv!84059 setElem!43834) e!3896035))))

(declare-fun setRest!43834 () (InoxSet Context!11418))

(assert (=> setNonEmpty!43834 (= z!1189 ((_ map or) (store ((as const (Array Context!11418 Bool)) false) setElem!43834 true) setRest!43834))))

(declare-fun b!6421311 () Bool)

(declare-fun tp!1782910 () Bool)

(assert (=> b!6421311 (= e!3896029 tp!1782910)))

(declare-fun b!6421312 () Bool)

(declare-fun res!2639158 () Bool)

(assert (=> b!6421312 (=> res!2639158 e!3896031)))

(declare-fun lt!2377200 () (InoxSet Context!11418))

(declare-fun lt!2377201 () (InoxSet Context!11418))

(assert (=> b!6421312 (= res!2639158 (not (= (matchZipper!2337 lt!2377200 s!2326) (matchZipper!2337 lt!2377201 (t!378888 s!2326)))))))

(declare-fun b!6421313 () Bool)

(declare-fun e!3896045 () Bool)

(assert (=> b!6421313 (= e!3896045 (not e!3896041))))

(declare-fun res!2639174 () Bool)

(assert (=> b!6421313 (=> res!2639174 e!3896041)))

(assert (=> b!6421313 (= res!2639174 (not ((_ is Cons!65152) zl!343)))))

(declare-fun lt!2377202 () Bool)

(assert (=> b!6421313 (= lt!2377169 lt!2377202)))

(assert (=> b!6421313 (= lt!2377202 (matchRSpec!3426 r!7292 s!2326))))

(assert (=> b!6421313 (= lt!2377169 (matchR!8508 r!7292 s!2326))))

(declare-fun lt!2377168 () Unit!158631)

(assert (=> b!6421313 (= lt!2377168 (mainMatchTheorem!3426 r!7292 s!2326))))

(declare-fun b!6421314 () Bool)

(declare-fun res!2639164 () Bool)

(assert (=> b!6421314 (=> res!2639164 e!3896041)))

(assert (=> b!6421314 (= res!2639164 (or ((_ is EmptyExpr!16325) r!7292) ((_ is EmptyLang!16325) r!7292) ((_ is ElementMatch!16325) r!7292) ((_ is Union!16325) r!7292) (not ((_ is Concat!25170) r!7292))))))

(declare-fun b!6421315 () Bool)

(assert (=> b!6421315 (= e!3896028 e!3896045)))

(declare-fun res!2639166 () Bool)

(assert (=> b!6421315 (=> (not res!2639166) (not e!3896045))))

(assert (=> b!6421315 (= res!2639166 (= r!7292 lt!2377165))))

(assert (=> b!6421315 (= lt!2377165 (unfocusZipper!2067 zl!343))))

(declare-fun b!6421316 () Bool)

(declare-fun e!3896037 () Bool)

(declare-fun tp!1782916 () Bool)

(declare-fun tp!1782918 () Bool)

(assert (=> b!6421316 (= e!3896037 (and tp!1782916 tp!1782918))))

(declare-fun b!6421317 () Bool)

(declare-fun res!2639162 () Bool)

(assert (=> b!6421317 (=> res!2639162 e!3896032)))

(assert (=> b!6421317 (= res!2639162 (or ((_ is Concat!25170) (regOne!33162 r!7292)) (not ((_ is Star!16325) (regOne!33162 r!7292)))))))

(declare-fun b!6421318 () Bool)

(declare-fun Unit!158633 () Unit!158631)

(assert (=> b!6421318 (= e!3896047 Unit!158633)))

(declare-fun lt!2377174 () Unit!158631)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1156 ((InoxSet Context!11418) (InoxSet Context!11418) List!65274) Unit!158631)

(assert (=> b!6421318 (= lt!2377174 (lemmaZipperConcatMatchesSameAsBothZippers!1156 lt!2377173 lt!2377180 (t!378888 s!2326)))))

(declare-fun res!2639160 () Bool)

(assert (=> b!6421318 (= res!2639160 (matchZipper!2337 lt!2377173 (t!378888 s!2326)))))

(assert (=> b!6421318 (=> res!2639160 e!3896034)))

(assert (=> b!6421318 (= (matchZipper!2337 ((_ map or) lt!2377173 lt!2377180) (t!378888 s!2326)) e!3896034)))

(declare-fun b!6421319 () Bool)

(assert (=> b!6421319 (= e!3896037 tp_is_empty!41903)))

(declare-fun b!6421320 () Bool)

(declare-fun res!2639157 () Bool)

(assert (=> b!6421320 (=> res!2639157 e!3896041)))

(declare-fun isEmpty!37309 (List!65276) Bool)

(assert (=> b!6421320 (= res!2639157 (not (isEmpty!37309 (t!378890 zl!343))))))

(declare-fun b!6421321 () Bool)

(assert (=> b!6421321 (= e!3896030 e!3896040)))

(declare-fun res!2639175 () Bool)

(assert (=> b!6421321 (=> res!2639175 e!3896040)))

(declare-fun lt!2377171 () Context!11418)

(assert (=> b!6421321 (= res!2639175 (not (= (unfocusZipper!2067 (Cons!65152 lt!2377171 Nil!65152)) lt!2377183)))))

(assert (=> b!6421321 (= lt!2377183 (Concat!25170 (reg!16654 (regOne!33162 r!7292)) lt!2377185))))

(declare-fun setIsEmpty!43834 () Bool)

(assert (=> setIsEmpty!43834 setRes!43834))

(assert (=> b!6421322 (= e!3896043 e!3896038)))

(declare-fun res!2639172 () Bool)

(assert (=> b!6421322 (=> res!2639172 e!3896038)))

(declare-fun validRegex!8061 (Regex!16325) Bool)

(assert (=> b!6421322 (= res!2639172 (not (validRegex!8061 (reg!16654 (regOne!33162 r!7292)))))))

(assert (=> b!6421322 (= (isDefined!12919 (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 Nil!65150 (_1!36607 lt!2377178) (_1!36607 lt!2377178))) (Exists!3395 lambda!354819))))

(declare-fun lt!2377177 () Unit!158631)

(assert (=> b!6421322 (= lt!2377177 (lemmaFindConcatSeparationEquivalentToExists!2394 (reg!16654 (regOne!33162 r!7292)) lt!2377164 (_1!36607 lt!2377178)))))

(assert (=> b!6421322 (matchRSpec!3426 lt!2377164 (_1!36607 lt!2377178))))

(declare-fun lt!2377167 () Unit!158631)

(assert (=> b!6421322 (= lt!2377167 (mainMatchTheorem!3426 lt!2377164 (_1!36607 lt!2377178)))))

(declare-fun b!6421323 () Bool)

(declare-fun Unit!158634 () Unit!158631)

(assert (=> b!6421323 (= e!3896047 Unit!158634)))

(declare-fun b!6421324 () Bool)

(declare-fun tp!1782911 () Bool)

(declare-fun tp!1782913 () Bool)

(assert (=> b!6421324 (= e!3896037 (and tp!1782911 tp!1782913))))

(declare-fun res!2639165 () Bool)

(assert (=> start!634510 (=> (not res!2639165) (not e!3896028))))

(assert (=> start!634510 (= res!2639165 (validRegex!8061 r!7292))))

(assert (=> start!634510 e!3896028))

(assert (=> start!634510 e!3896037))

(declare-fun condSetEmpty!43834 () Bool)

(assert (=> start!634510 (= condSetEmpty!43834 (= z!1189 ((as const (Array Context!11418 Bool)) false)))))

(assert (=> start!634510 setRes!43834))

(assert (=> start!634510 e!3896042))

(assert (=> start!634510 e!3896027))

(declare-fun b!6421325 () Bool)

(assert (=> b!6421325 (= e!3896039 e!3896031)))

(declare-fun res!2639161 () Bool)

(assert (=> b!6421325 (=> res!2639161 e!3896031)))

(assert (=> b!6421325 (= res!2639161 (not (= lt!2377201 lt!2377182)))))

(assert (=> b!6421325 (= (flatMap!1830 lt!2377200 lambda!354816) (derivationStepZipperUp!1499 lt!2377171 (h!71598 s!2326)))))

(declare-fun lt!2377166 () Unit!158631)

(assert (=> b!6421325 (= lt!2377166 (lemmaFlatMapOnSingletonSet!1356 lt!2377200 lt!2377171 lambda!354816))))

(declare-fun lt!2377198 () (InoxSet Context!11418))

(assert (=> b!6421325 (= lt!2377198 (derivationStepZipperUp!1499 lt!2377171 (h!71598 s!2326)))))

(declare-fun derivationStepZipper!2291 ((InoxSet Context!11418) C!32920) (InoxSet Context!11418))

(assert (=> b!6421325 (= lt!2377201 (derivationStepZipper!2291 lt!2377200 (h!71598 s!2326)))))

(assert (=> b!6421325 (= lt!2377200 (store ((as const (Array Context!11418 Bool)) false) lt!2377171 true))))

(assert (=> b!6421325 (= lt!2377171 (Context!11419 (Cons!65151 (reg!16654 (regOne!33162 r!7292)) lt!2377187)))))

(declare-fun b!6421326 () Bool)

(declare-fun res!2639177 () Bool)

(assert (=> b!6421326 (=> res!2639177 e!3896041)))

(declare-fun generalisedUnion!2169 (List!65275) Regex!16325)

(declare-fun unfocusZipperList!1746 (List!65276) List!65275)

(assert (=> b!6421326 (= res!2639177 (not (= r!7292 (generalisedUnion!2169 (unfocusZipperList!1746 zl!343)))))))

(declare-fun b!6421327 () Bool)

(declare-fun res!2639170 () Bool)

(assert (=> b!6421327 (=> res!2639170 e!3896032)))

(declare-fun e!3896048 () Bool)

(assert (=> b!6421327 (= res!2639170 e!3896048)))

(declare-fun res!2639153 () Bool)

(assert (=> b!6421327 (=> (not res!2639153) (not e!3896048))))

(assert (=> b!6421327 (= res!2639153 ((_ is Concat!25170) (regOne!33162 r!7292)))))

(declare-fun b!6421328 () Bool)

(assert (=> b!6421328 (= e!3896048 (nullable!6318 (regOne!33162 (regOne!33162 r!7292))))))

(declare-fun b!6421329 () Bool)

(declare-fun res!2639179 () Bool)

(assert (=> b!6421329 (=> res!2639179 e!3896043)))

(declare-fun isEmpty!37310 (List!65274) Bool)

(assert (=> b!6421329 (= res!2639179 (isEmpty!37310 (_1!36607 lt!2377178)))))

(declare-fun b!6421330 () Bool)

(declare-fun tp!1782909 () Bool)

(assert (=> b!6421330 (= e!3896037 tp!1782909)))

(declare-fun b!6421331 () Bool)

(declare-fun tp!1782915 () Bool)

(assert (=> b!6421331 (= e!3896035 tp!1782915)))

(declare-fun b!6421332 () Bool)

(assert (=> b!6421332 (= e!3896036 (or (not lt!2377169) lt!2377202))))

(declare-fun b!6421333 () Bool)

(declare-fun res!2639163 () Bool)

(assert (=> b!6421333 (=> res!2639163 e!3896044)))

(assert (=> b!6421333 (= res!2639163 (not (= (unfocusZipper!2067 (Cons!65152 lt!2377188 Nil!65152)) lt!2377185)))))

(assert (= (and start!634510 res!2639165) b!6421302))

(assert (= (and b!6421302 res!2639159) b!6421315))

(assert (= (and b!6421315 res!2639166) b!6421313))

(assert (= (and b!6421313 (not res!2639174)) b!6421320))

(assert (= (and b!6421320 (not res!2639157)) b!6421306))

(assert (= (and b!6421306 (not res!2639173)) b!6421295))

(assert (= (and b!6421295 (not res!2639168)) b!6421326))

(assert (= (and b!6421326 (not res!2639177)) b!6421314))

(assert (= (and b!6421314 (not res!2639164)) b!6421303))

(assert (= (and b!6421303 (not res!2639176)) b!6421299))

(assert (= (and b!6421299 (not res!2639150)) b!6421308))

(assert (= (and b!6421308 c!1173073) b!6421318))

(assert (= (and b!6421308 (not c!1173073)) b!6421323))

(assert (= (and b!6421318 (not res!2639160)) b!6421307))

(assert (= (and b!6421308 (not res!2639156)) b!6421327))

(assert (= (and b!6421327 res!2639153) b!6421328))

(assert (= (and b!6421327 (not res!2639170)) b!6421317))

(assert (= (and b!6421317 (not res!2639162)) b!6421300))

(assert (= (and b!6421300 (not res!2639154)) b!6421325))

(assert (= (and b!6421325 (not res!2639161)) b!6421312))

(assert (= (and b!6421312 (not res!2639158)) b!6421309))

(assert (= (and b!6421309 (not res!2639151)) b!6421297))

(assert (= (and b!6421297 (not res!2639155)) b!6421321))

(assert (= (and b!6421321 (not res!2639175)) b!6421296))

(assert (= (and b!6421296 (not res!2639167)) b!6421333))

(assert (= (and b!6421333 (not res!2639163)) b!6421310))

(assert (= (and b!6421310 res!2639180) b!6421332))

(assert (= (and b!6421310 (not res!2639152)) b!6421294))

(assert (= (and b!6421294 (not res!2639178)) b!6421305))

(assert (= (and b!6421305 (not res!2639169)) b!6421304))

(assert (= (and b!6421304 (not res!2639171)) b!6421329))

(assert (= (and b!6421329 (not res!2639179)) b!6421322))

(assert (= (and b!6421322 (not res!2639172)) b!6421298))

(assert (= (and start!634510 ((_ is ElementMatch!16325) r!7292)) b!6421319))

(assert (= (and start!634510 ((_ is Concat!25170) r!7292)) b!6421324))

(assert (= (and start!634510 ((_ is Star!16325) r!7292)) b!6421330))

(assert (= (and start!634510 ((_ is Union!16325) r!7292)) b!6421316))

(assert (= (and start!634510 condSetEmpty!43834) setIsEmpty!43834))

(assert (= (and start!634510 (not condSetEmpty!43834)) setNonEmpty!43834))

(assert (= setNonEmpty!43834 b!6421331))

(assert (= b!6421301 b!6421311))

(assert (= (and start!634510 ((_ is Cons!65152) zl!343)) b!6421301))

(assert (= (and start!634510 ((_ is Cons!65150) s!2326)) b!6421293))

(declare-fun m!7215768 () Bool)

(assert (=> b!6421329 m!7215768))

(declare-fun m!7215770 () Bool)

(assert (=> b!6421304 m!7215770))

(declare-fun m!7215772 () Bool)

(assert (=> b!6421307 m!7215772))

(declare-fun m!7215774 () Bool)

(assert (=> b!6421308 m!7215774))

(declare-fun m!7215776 () Bool)

(assert (=> b!6421308 m!7215776))

(declare-fun m!7215778 () Bool)

(assert (=> b!6421308 m!7215778))

(declare-fun m!7215780 () Bool)

(assert (=> b!6421308 m!7215780))

(declare-fun m!7215782 () Bool)

(assert (=> b!6421308 m!7215782))

(declare-fun m!7215784 () Bool)

(assert (=> b!6421308 m!7215784))

(declare-fun m!7215786 () Bool)

(assert (=> b!6421308 m!7215786))

(declare-fun m!7215788 () Bool)

(assert (=> b!6421300 m!7215788))

(declare-fun m!7215790 () Bool)

(assert (=> b!6421302 m!7215790))

(declare-fun m!7215792 () Bool)

(assert (=> b!6421306 m!7215792))

(declare-fun m!7215794 () Bool)

(assert (=> b!6421294 m!7215794))

(declare-fun m!7215796 () Bool)

(assert (=> b!6421294 m!7215796))

(declare-fun m!7215798 () Bool)

(assert (=> b!6421294 m!7215798))

(declare-fun m!7215800 () Bool)

(assert (=> b!6421294 m!7215800))

(declare-fun m!7215802 () Bool)

(assert (=> b!6421294 m!7215802))

(assert (=> b!6421294 m!7215794))

(declare-fun m!7215804 () Bool)

(assert (=> b!6421294 m!7215804))

(declare-fun m!7215806 () Bool)

(assert (=> b!6421294 m!7215806))

(declare-fun m!7215808 () Bool)

(assert (=> b!6421294 m!7215808))

(declare-fun m!7215810 () Bool)

(assert (=> b!6421322 m!7215810))

(declare-fun m!7215812 () Bool)

(assert (=> b!6421322 m!7215812))

(declare-fun m!7215814 () Bool)

(assert (=> b!6421322 m!7215814))

(declare-fun m!7215816 () Bool)

(assert (=> b!6421322 m!7215816))

(declare-fun m!7215818 () Bool)

(assert (=> b!6421322 m!7215818))

(assert (=> b!6421322 m!7215814))

(declare-fun m!7215820 () Bool)

(assert (=> b!6421322 m!7215820))

(declare-fun m!7215822 () Bool)

(assert (=> b!6421322 m!7215822))

(declare-fun m!7215824 () Bool)

(assert (=> b!6421310 m!7215824))

(declare-fun m!7215826 () Bool)

(assert (=> b!6421310 m!7215826))

(declare-fun m!7215828 () Bool)

(assert (=> b!6421310 m!7215828))

(declare-fun m!7215830 () Bool)

(assert (=> b!6421299 m!7215830))

(declare-fun m!7215832 () Bool)

(assert (=> b!6421318 m!7215832))

(declare-fun m!7215834 () Bool)

(assert (=> b!6421318 m!7215834))

(declare-fun m!7215836 () Bool)

(assert (=> b!6421318 m!7215836))

(declare-fun m!7215838 () Bool)

(assert (=> b!6421298 m!7215838))

(declare-fun m!7215840 () Bool)

(assert (=> b!6421325 m!7215840))

(declare-fun m!7215842 () Bool)

(assert (=> b!6421325 m!7215842))

(declare-fun m!7215844 () Bool)

(assert (=> b!6421325 m!7215844))

(declare-fun m!7215846 () Bool)

(assert (=> b!6421325 m!7215846))

(declare-fun m!7215848 () Bool)

(assert (=> b!6421325 m!7215848))

(declare-fun m!7215850 () Bool)

(assert (=> b!6421303 m!7215850))

(declare-fun m!7215852 () Bool)

(assert (=> b!6421303 m!7215852))

(declare-fun m!7215854 () Bool)

(assert (=> b!6421303 m!7215854))

(declare-fun m!7215856 () Bool)

(assert (=> b!6421303 m!7215856))

(declare-fun m!7215858 () Bool)

(assert (=> b!6421303 m!7215858))

(assert (=> b!6421303 m!7215856))

(assert (=> b!6421303 m!7215850))

(declare-fun m!7215860 () Bool)

(assert (=> b!6421303 m!7215860))

(declare-fun m!7215862 () Bool)

(assert (=> b!6421312 m!7215862))

(declare-fun m!7215864 () Bool)

(assert (=> b!6421312 m!7215864))

(declare-fun m!7215866 () Bool)

(assert (=> b!6421333 m!7215866))

(declare-fun m!7215868 () Bool)

(assert (=> b!6421305 m!7215868))

(declare-fun m!7215870 () Bool)

(assert (=> setNonEmpty!43834 m!7215870))

(declare-fun m!7215872 () Bool)

(assert (=> b!6421320 m!7215872))

(declare-fun m!7215874 () Bool)

(assert (=> b!6421321 m!7215874))

(declare-fun m!7215876 () Bool)

(assert (=> b!6421328 m!7215876))

(declare-fun m!7215878 () Bool)

(assert (=> b!6421301 m!7215878))

(declare-fun m!7215880 () Bool)

(assert (=> b!6421296 m!7215880))

(declare-fun m!7215882 () Bool)

(assert (=> b!6421296 m!7215882))

(declare-fun m!7215884 () Bool)

(assert (=> b!6421296 m!7215884))

(declare-fun m!7215886 () Bool)

(assert (=> b!6421296 m!7215886))

(declare-fun m!7215888 () Bool)

(assert (=> b!6421296 m!7215888))

(declare-fun m!7215890 () Bool)

(assert (=> b!6421296 m!7215890))

(declare-fun m!7215892 () Bool)

(assert (=> b!6421296 m!7215892))

(declare-fun m!7215894 () Bool)

(assert (=> b!6421296 m!7215894))

(declare-fun m!7215896 () Bool)

(assert (=> b!6421296 m!7215896))

(declare-fun m!7215898 () Bool)

(assert (=> b!6421315 m!7215898))

(declare-fun m!7215900 () Bool)

(assert (=> b!6421313 m!7215900))

(declare-fun m!7215902 () Bool)

(assert (=> b!6421313 m!7215902))

(declare-fun m!7215904 () Bool)

(assert (=> b!6421313 m!7215904))

(declare-fun m!7215906 () Bool)

(assert (=> b!6421326 m!7215906))

(assert (=> b!6421326 m!7215906))

(declare-fun m!7215908 () Bool)

(assert (=> b!6421326 m!7215908))

(declare-fun m!7215910 () Bool)

(assert (=> start!634510 m!7215910))

(check-sat (not b!6421306) (not b!6421298) (not b!6421320) (not b!6421311) (not b!6421325) (not b!6421302) (not b!6421333) (not b!6421331) (not b!6421301) (not b!6421322) (not b!6421300) (not b!6421304) (not b!6421305) (not b!6421303) (not b!6421328) (not b!6421296) (not b!6421318) (not b!6421299) (not b!6421310) (not setNonEmpty!43834) (not b!6421313) (not b!6421315) (not b!6421324) (not start!634510) (not b!6421329) (not b!6421316) (not b!6421294) (not b!6421312) (not b!6421308) (not b!6421307) tp_is_empty!41903 (not b!6421293) (not b!6421330) (not b!6421326) (not b!6421321))
(check-sat)
(get-model)

(declare-fun d!2013274 () Bool)

(declare-fun lt!2377236 () Regex!16325)

(assert (=> d!2013274 (validRegex!8061 lt!2377236)))

(assert (=> d!2013274 (= lt!2377236 (generalisedUnion!2169 (unfocusZipperList!1746 zl!343)))))

(assert (=> d!2013274 (= (unfocusZipper!2067 zl!343) lt!2377236)))

(declare-fun bs!1614563 () Bool)

(assert (= bs!1614563 d!2013274))

(declare-fun m!7216122 () Bool)

(assert (=> bs!1614563 m!7216122))

(assert (=> bs!1614563 m!7215906))

(assert (=> bs!1614563 m!7215906))

(assert (=> bs!1614563 m!7215908))

(assert (=> b!6421315 d!2013274))

(declare-fun d!2013282 () Bool)

(declare-fun isEmpty!37311 (Option!16216) Bool)

(assert (=> d!2013282 (= (isDefined!12919 lt!2377195) (not (isEmpty!37311 lt!2377195)))))

(declare-fun bs!1614567 () Bool)

(assert (= bs!1614567 d!2013282))

(declare-fun m!7216132 () Bool)

(assert (=> bs!1614567 m!7216132))

(assert (=> b!6421294 d!2013282))

(declare-fun d!2013288 () Bool)

(declare-fun choose!47719 (Int) Bool)

(assert (=> d!2013288 (= (Exists!3395 lambda!354818) (choose!47719 lambda!354818))))

(declare-fun bs!1614571 () Bool)

(assert (= bs!1614571 d!2013288))

(declare-fun m!7216136 () Bool)

(assert (=> bs!1614571 m!7216136))

(assert (=> b!6421294 d!2013288))

(declare-fun b!6421686 () Bool)

(declare-fun e!3896243 () Option!16216)

(declare-fun e!3896246 () Option!16216)

(assert (=> b!6421686 (= e!3896243 e!3896246)))

(declare-fun c!1173188 () Bool)

(assert (=> b!6421686 (= c!1173188 ((_ is Nil!65150) s!2326))))

(declare-fun b!6421687 () Bool)

(declare-fun e!3896244 () Bool)

(assert (=> b!6421687 (= e!3896244 (matchR!8508 (regTwo!33162 r!7292) s!2326))))

(declare-fun d!2013294 () Bool)

(declare-fun e!3896245 () Bool)

(assert (=> d!2013294 e!3896245))

(declare-fun res!2639302 () Bool)

(assert (=> d!2013294 (=> res!2639302 e!3896245)))

(declare-fun e!3896242 () Bool)

(assert (=> d!2013294 (= res!2639302 e!3896242)))

(declare-fun res!2639303 () Bool)

(assert (=> d!2013294 (=> (not res!2639303) (not e!3896242))))

(declare-fun lt!2377256 () Option!16216)

(assert (=> d!2013294 (= res!2639303 (isDefined!12919 lt!2377256))))

(assert (=> d!2013294 (= lt!2377256 e!3896243)))

(declare-fun c!1173189 () Bool)

(assert (=> d!2013294 (= c!1173189 e!3896244)))

(declare-fun res!2639305 () Bool)

(assert (=> d!2013294 (=> (not res!2639305) (not e!3896244))))

(assert (=> d!2013294 (= res!2639305 (matchR!8508 lt!2377164 Nil!65150))))

(assert (=> d!2013294 (validRegex!8061 lt!2377164)))

(assert (=> d!2013294 (= (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326) lt!2377256)))

(declare-fun b!6421688 () Bool)

(assert (=> b!6421688 (= e!3896246 None!16215)))

(declare-fun b!6421689 () Bool)

(declare-fun lt!2377255 () Unit!158631)

(declare-fun lt!2377254 () Unit!158631)

(assert (=> b!6421689 (= lt!2377255 lt!2377254)))

(assert (=> b!6421689 (= (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2487 (List!65274 C!32920 List!65274 List!65274) Unit!158631)

(assert (=> b!6421689 (= lt!2377254 (lemmaMoveElementToOtherListKeepsConcatEq!2487 Nil!65150 (h!71598 s!2326) (t!378888 s!2326) s!2326))))

(assert (=> b!6421689 (= e!3896246 (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326) s!2326))))

(declare-fun b!6421690 () Bool)

(assert (=> b!6421690 (= e!3896245 (not (isDefined!12919 lt!2377256)))))

(declare-fun b!6421691 () Bool)

(assert (=> b!6421691 (= e!3896243 (Some!16215 (tuple2!66609 Nil!65150 s!2326)))))

(declare-fun b!6421692 () Bool)

(declare-fun res!2639301 () Bool)

(assert (=> b!6421692 (=> (not res!2639301) (not e!3896242))))

(assert (=> b!6421692 (= res!2639301 (matchR!8508 lt!2377164 (_1!36607 (get!22571 lt!2377256))))))

(declare-fun b!6421693 () Bool)

(assert (=> b!6421693 (= e!3896242 (= (++!14393 (_1!36607 (get!22571 lt!2377256)) (_2!36607 (get!22571 lt!2377256))) s!2326))))

(declare-fun b!6421694 () Bool)

(declare-fun res!2639304 () Bool)

(assert (=> b!6421694 (=> (not res!2639304) (not e!3896242))))

(assert (=> b!6421694 (= res!2639304 (matchR!8508 (regTwo!33162 r!7292) (_2!36607 (get!22571 lt!2377256))))))

(assert (= (and d!2013294 res!2639305) b!6421687))

(assert (= (and d!2013294 c!1173189) b!6421691))

(assert (= (and d!2013294 (not c!1173189)) b!6421686))

(assert (= (and b!6421686 c!1173188) b!6421688))

(assert (= (and b!6421686 (not c!1173188)) b!6421689))

(assert (= (and d!2013294 res!2639303) b!6421692))

(assert (= (and b!6421692 res!2639301) b!6421694))

(assert (= (and b!6421694 res!2639304) b!6421693))

(assert (= (and d!2013294 (not res!2639302)) b!6421690))

(declare-fun m!7216174 () Bool)

(assert (=> b!6421687 m!7216174))

(declare-fun m!7216176 () Bool)

(assert (=> d!2013294 m!7216176))

(declare-fun m!7216178 () Bool)

(assert (=> d!2013294 m!7216178))

(declare-fun m!7216180 () Bool)

(assert (=> d!2013294 m!7216180))

(declare-fun m!7216182 () Bool)

(assert (=> b!6421693 m!7216182))

(declare-fun m!7216184 () Bool)

(assert (=> b!6421693 m!7216184))

(assert (=> b!6421690 m!7216176))

(assert (=> b!6421694 m!7216182))

(declare-fun m!7216186 () Bool)

(assert (=> b!6421694 m!7216186))

(declare-fun m!7216188 () Bool)

(assert (=> b!6421689 m!7216188))

(assert (=> b!6421689 m!7216188))

(declare-fun m!7216190 () Bool)

(assert (=> b!6421689 m!7216190))

(declare-fun m!7216192 () Bool)

(assert (=> b!6421689 m!7216192))

(assert (=> b!6421689 m!7216188))

(declare-fun m!7216194 () Bool)

(assert (=> b!6421689 m!7216194))

(assert (=> b!6421692 m!7216182))

(declare-fun m!7216196 () Bool)

(assert (=> b!6421692 m!7216196))

(assert (=> b!6421294 d!2013294))

(declare-fun bs!1614575 () Bool)

(declare-fun d!2013302 () Bool)

(assert (= bs!1614575 (and d!2013302 b!6421303)))

(declare-fun lambda!354848 () Int)

(assert (=> bs!1614575 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354848 lambda!354814))))

(declare-fun bs!1614576 () Bool)

(assert (= bs!1614576 (and d!2013302 b!6421294)))

(assert (=> bs!1614576 (not (= lambda!354848 lambda!354818))))

(declare-fun bs!1614577 () Bool)

(assert (= bs!1614577 (and d!2013302 b!6421322)))

(assert (=> bs!1614577 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354848 lambda!354819))))

(assert (=> bs!1614576 (= lambda!354848 lambda!354817)))

(assert (=> bs!1614575 (not (= lambda!354848 lambda!354815))))

(assert (=> d!2013302 true))

(assert (=> d!2013302 true))

(assert (=> d!2013302 true))

(assert (=> d!2013302 (= (isDefined!12919 (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326)) (Exists!3395 lambda!354848))))

(declare-fun lt!2377264 () Unit!158631)

(declare-fun choose!47720 (Regex!16325 Regex!16325 List!65274) Unit!158631)

(assert (=> d!2013302 (= lt!2377264 (choose!47720 lt!2377164 (regTwo!33162 r!7292) s!2326))))

(assert (=> d!2013302 (validRegex!8061 lt!2377164)))

(assert (=> d!2013302 (= (lemmaFindConcatSeparationEquivalentToExists!2394 lt!2377164 (regTwo!33162 r!7292) s!2326) lt!2377264)))

(declare-fun bs!1614578 () Bool)

(assert (= bs!1614578 d!2013302))

(declare-fun m!7216226 () Bool)

(assert (=> bs!1614578 m!7216226))

(assert (=> bs!1614578 m!7216180))

(assert (=> bs!1614578 m!7215796))

(declare-fun m!7216228 () Bool)

(assert (=> bs!1614578 m!7216228))

(assert (=> bs!1614578 m!7215796))

(declare-fun m!7216230 () Bool)

(assert (=> bs!1614578 m!7216230))

(assert (=> b!6421294 d!2013302))

(declare-fun b!6421723 () Bool)

(declare-fun e!3896261 () Bool)

(declare-fun lt!2377268 () List!65274)

(assert (=> b!6421723 (= e!3896261 (or (not (= (_2!36607 lt!2377178) Nil!65150)) (= lt!2377268 (_1!36607 lt!2377178))))))

(declare-fun b!6421720 () Bool)

(declare-fun e!3896260 () List!65274)

(assert (=> b!6421720 (= e!3896260 (_2!36607 lt!2377178))))

(declare-fun b!6421721 () Bool)

(assert (=> b!6421721 (= e!3896260 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) (++!14393 (t!378888 (_1!36607 lt!2377178)) (_2!36607 lt!2377178))))))

(declare-fun d!2013310 () Bool)

(assert (=> d!2013310 e!3896261))

(declare-fun res!2639324 () Bool)

(assert (=> d!2013310 (=> (not res!2639324) (not e!3896261))))

(declare-fun content!12363 (List!65274) (InoxSet C!32920))

(assert (=> d!2013310 (= res!2639324 (= (content!12363 lt!2377268) ((_ map or) (content!12363 (_1!36607 lt!2377178)) (content!12363 (_2!36607 lt!2377178)))))))

(assert (=> d!2013310 (= lt!2377268 e!3896260)))

(declare-fun c!1173194 () Bool)

(assert (=> d!2013310 (= c!1173194 ((_ is Nil!65150) (_1!36607 lt!2377178)))))

(assert (=> d!2013310 (= (++!14393 (_1!36607 lt!2377178) (_2!36607 lt!2377178)) lt!2377268)))

(declare-fun b!6421722 () Bool)

(declare-fun res!2639323 () Bool)

(assert (=> b!6421722 (=> (not res!2639323) (not e!3896261))))

(declare-fun size!40383 (List!65274) Int)

(assert (=> b!6421722 (= res!2639323 (= (size!40383 lt!2377268) (+ (size!40383 (_1!36607 lt!2377178)) (size!40383 (_2!36607 lt!2377178)))))))

(assert (= (and d!2013310 c!1173194) b!6421720))

(assert (= (and d!2013310 (not c!1173194)) b!6421721))

(assert (= (and d!2013310 res!2639324) b!6421722))

(assert (= (and b!6421722 res!2639323) b!6421723))

(declare-fun m!7216236 () Bool)

(assert (=> b!6421721 m!7216236))

(declare-fun m!7216238 () Bool)

(assert (=> d!2013310 m!7216238))

(declare-fun m!7216240 () Bool)

(assert (=> d!2013310 m!7216240))

(declare-fun m!7216242 () Bool)

(assert (=> d!2013310 m!7216242))

(declare-fun m!7216244 () Bool)

(assert (=> b!6421722 m!7216244))

(declare-fun m!7216246 () Bool)

(assert (=> b!6421722 m!7216246))

(declare-fun m!7216248 () Bool)

(assert (=> b!6421722 m!7216248))

(assert (=> b!6421294 d!2013310))

(declare-fun d!2013314 () Bool)

(assert (=> d!2013314 (= (Exists!3395 lambda!354817) (choose!47719 lambda!354817))))

(declare-fun bs!1614587 () Bool)

(assert (= bs!1614587 d!2013314))

(declare-fun m!7216250 () Bool)

(assert (=> bs!1614587 m!7216250))

(assert (=> b!6421294 d!2013314))

(declare-fun d!2013316 () Bool)

(assert (=> d!2013316 (= (get!22571 lt!2377195) (v!52388 lt!2377195))))

(assert (=> b!6421294 d!2013316))

(declare-fun bs!1614597 () Bool)

(declare-fun d!2013318 () Bool)

(assert (= bs!1614597 (and d!2013318 d!2013302)))

(declare-fun lambda!354860 () Int)

(assert (=> bs!1614597 (= lambda!354860 lambda!354848)))

(declare-fun bs!1614598 () Bool)

(assert (= bs!1614598 (and d!2013318 b!6421303)))

(assert (=> bs!1614598 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354860 lambda!354814))))

(declare-fun bs!1614600 () Bool)

(assert (= bs!1614600 (and d!2013318 b!6421294)))

(assert (=> bs!1614600 (not (= lambda!354860 lambda!354818))))

(declare-fun bs!1614601 () Bool)

(assert (= bs!1614601 (and d!2013318 b!6421322)))

(assert (=> bs!1614601 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354860 lambda!354819))))

(assert (=> bs!1614600 (= lambda!354860 lambda!354817)))

(assert (=> bs!1614598 (not (= lambda!354860 lambda!354815))))

(assert (=> d!2013318 true))

(assert (=> d!2013318 true))

(assert (=> d!2013318 true))

(declare-fun lambda!354861 () Int)

(assert (=> bs!1614597 (not (= lambda!354861 lambda!354848))))

(assert (=> bs!1614600 (= lambda!354861 lambda!354818)))

(assert (=> bs!1614601 (not (= lambda!354861 lambda!354819))))

(assert (=> bs!1614600 (not (= lambda!354861 lambda!354817))))

(assert (=> bs!1614598 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354861 lambda!354815))))

(declare-fun bs!1614603 () Bool)

(assert (= bs!1614603 d!2013318))

(assert (=> bs!1614603 (not (= lambda!354861 lambda!354860))))

(assert (=> bs!1614598 (not (= lambda!354861 lambda!354814))))

(assert (=> d!2013318 true))

(assert (=> d!2013318 true))

(assert (=> d!2013318 true))

(assert (=> d!2013318 (= (Exists!3395 lambda!354860) (Exists!3395 lambda!354861))))

(declare-fun lt!2377274 () Unit!158631)

(declare-fun choose!47721 (Regex!16325 Regex!16325 List!65274) Unit!158631)

(assert (=> d!2013318 (= lt!2377274 (choose!47721 lt!2377164 (regTwo!33162 r!7292) s!2326))))

(assert (=> d!2013318 (validRegex!8061 lt!2377164)))

(assert (=> d!2013318 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1932 lt!2377164 (regTwo!33162 r!7292) s!2326) lt!2377274)))

(declare-fun m!7216264 () Bool)

(assert (=> bs!1614603 m!7216264))

(declare-fun m!7216268 () Bool)

(assert (=> bs!1614603 m!7216268))

(declare-fun m!7216270 () Bool)

(assert (=> bs!1614603 m!7216270))

(assert (=> bs!1614603 m!7216180))

(assert (=> b!6421294 d!2013318))

(declare-fun bs!1614628 () Bool)

(declare-fun b!6421803 () Bool)

(assert (= bs!1614628 (and b!6421803 d!2013302)))

(declare-fun lambda!354869 () Int)

(assert (=> bs!1614628 (not (= lambda!354869 lambda!354848))))

(declare-fun bs!1614629 () Bool)

(assert (= bs!1614629 (and b!6421803 b!6421294)))

(assert (=> bs!1614629 (not (= lambda!354869 lambda!354818))))

(declare-fun bs!1614630 () Bool)

(assert (= bs!1614630 (and b!6421803 b!6421322)))

(assert (=> bs!1614630 (not (= lambda!354869 lambda!354819))))

(declare-fun bs!1614631 () Bool)

(assert (= bs!1614631 (and b!6421803 d!2013318)))

(assert (=> bs!1614631 (not (= lambda!354869 lambda!354861))))

(assert (=> bs!1614629 (not (= lambda!354869 lambda!354817))))

(declare-fun bs!1614632 () Bool)

(assert (= bs!1614632 (and b!6421803 b!6421303)))

(assert (=> bs!1614632 (not (= lambda!354869 lambda!354815))))

(assert (=> bs!1614631 (not (= lambda!354869 lambda!354860))))

(assert (=> bs!1614632 (not (= lambda!354869 lambda!354814))))

(assert (=> b!6421803 true))

(assert (=> b!6421803 true))

(declare-fun bs!1614633 () Bool)

(declare-fun b!6421798 () Bool)

(assert (= bs!1614633 (and b!6421798 b!6421803)))

(declare-fun lambda!354870 () Int)

(assert (=> bs!1614633 (not (= lambda!354870 lambda!354869))))

(declare-fun bs!1614634 () Bool)

(assert (= bs!1614634 (and b!6421798 d!2013302)))

(assert (=> bs!1614634 (not (= lambda!354870 lambda!354848))))

(declare-fun bs!1614635 () Bool)

(assert (= bs!1614635 (and b!6421798 b!6421294)))

(assert (=> bs!1614635 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354870 lambda!354818))))

(declare-fun bs!1614636 () Bool)

(assert (= bs!1614636 (and b!6421798 b!6421322)))

(assert (=> bs!1614636 (not (= lambda!354870 lambda!354819))))

(declare-fun bs!1614637 () Bool)

(assert (= bs!1614637 (and b!6421798 d!2013318)))

(assert (=> bs!1614637 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354870 lambda!354861))))

(assert (=> bs!1614635 (not (= lambda!354870 lambda!354817))))

(declare-fun bs!1614638 () Bool)

(assert (= bs!1614638 (and b!6421798 b!6421303)))

(assert (=> bs!1614638 (= lambda!354870 lambda!354815)))

(assert (=> bs!1614637 (not (= lambda!354870 lambda!354860))))

(assert (=> bs!1614638 (not (= lambda!354870 lambda!354814))))

(assert (=> b!6421798 true))

(assert (=> b!6421798 true))

(declare-fun b!6421795 () Bool)

(declare-fun e!3896306 () Bool)

(assert (=> b!6421795 (= e!3896306 (= s!2326 (Cons!65150 (c!1173074 r!7292) Nil!65150)))))

(declare-fun b!6421796 () Bool)

(declare-fun e!3896305 () Bool)

(declare-fun e!3896304 () Bool)

(assert (=> b!6421796 (= e!3896305 e!3896304)))

(declare-fun c!1173212 () Bool)

(assert (=> b!6421796 (= c!1173212 ((_ is Star!16325) r!7292))))

(declare-fun b!6421797 () Bool)

(declare-fun res!2639370 () Bool)

(declare-fun e!3896303 () Bool)

(assert (=> b!6421797 (=> res!2639370 e!3896303)))

(declare-fun call!552137 () Bool)

(assert (=> b!6421797 (= res!2639370 call!552137)))

(assert (=> b!6421797 (= e!3896304 e!3896303)))

(declare-fun call!552138 () Bool)

(assert (=> b!6421798 (= e!3896304 call!552138)))

(declare-fun b!6421799 () Bool)

(declare-fun e!3896300 () Bool)

(assert (=> b!6421799 (= e!3896305 e!3896300)))

(declare-fun res!2639368 () Bool)

(assert (=> b!6421799 (= res!2639368 (matchRSpec!3426 (regOne!33163 r!7292) s!2326))))

(assert (=> b!6421799 (=> res!2639368 e!3896300)))

(declare-fun b!6421800 () Bool)

(assert (=> b!6421800 (= e!3896300 (matchRSpec!3426 (regTwo!33163 r!7292) s!2326))))

(declare-fun b!6421801 () Bool)

(declare-fun c!1173210 () Bool)

(assert (=> b!6421801 (= c!1173210 ((_ is Union!16325) r!7292))))

(assert (=> b!6421801 (= e!3896306 e!3896305)))

(declare-fun d!2013328 () Bool)

(declare-fun c!1173211 () Bool)

(assert (=> d!2013328 (= c!1173211 ((_ is EmptyExpr!16325) r!7292))))

(declare-fun e!3896301 () Bool)

(assert (=> d!2013328 (= (matchRSpec!3426 r!7292 s!2326) e!3896301)))

(declare-fun b!6421802 () Bool)

(declare-fun e!3896302 () Bool)

(assert (=> b!6421802 (= e!3896301 e!3896302)))

(declare-fun res!2639369 () Bool)

(assert (=> b!6421802 (= res!2639369 (not ((_ is EmptyLang!16325) r!7292)))))

(assert (=> b!6421802 (=> (not res!2639369) (not e!3896302))))

(assert (=> b!6421803 (= e!3896303 call!552138)))

(declare-fun bm!552132 () Bool)

(assert (=> bm!552132 (= call!552138 (Exists!3395 (ite c!1173212 lambda!354869 lambda!354870)))))

(declare-fun b!6421804 () Bool)

(assert (=> b!6421804 (= e!3896301 call!552137)))

(declare-fun b!6421805 () Bool)

(declare-fun c!1173209 () Bool)

(assert (=> b!6421805 (= c!1173209 ((_ is ElementMatch!16325) r!7292))))

(assert (=> b!6421805 (= e!3896302 e!3896306)))

(declare-fun bm!552133 () Bool)

(assert (=> bm!552133 (= call!552137 (isEmpty!37310 s!2326))))

(assert (= (and d!2013328 c!1173211) b!6421804))

(assert (= (and d!2013328 (not c!1173211)) b!6421802))

(assert (= (and b!6421802 res!2639369) b!6421805))

(assert (= (and b!6421805 c!1173209) b!6421795))

(assert (= (and b!6421805 (not c!1173209)) b!6421801))

(assert (= (and b!6421801 c!1173210) b!6421799))

(assert (= (and b!6421801 (not c!1173210)) b!6421796))

(assert (= (and b!6421799 (not res!2639368)) b!6421800))

(assert (= (and b!6421796 c!1173212) b!6421797))

(assert (= (and b!6421796 (not c!1173212)) b!6421798))

(assert (= (and b!6421797 (not res!2639370)) b!6421803))

(assert (= (or b!6421803 b!6421798) bm!552132))

(assert (= (or b!6421804 b!6421797) bm!552133))

(declare-fun m!7216320 () Bool)

(assert (=> b!6421799 m!7216320))

(declare-fun m!7216322 () Bool)

(assert (=> b!6421800 m!7216322))

(declare-fun m!7216324 () Bool)

(assert (=> bm!552132 m!7216324))

(declare-fun m!7216326 () Bool)

(assert (=> bm!552133 m!7216326))

(assert (=> b!6421313 d!2013328))

(declare-fun b!6421881 () Bool)

(declare-fun res!2639414 () Bool)

(declare-fun e!3896356 () Bool)

(assert (=> b!6421881 (=> res!2639414 e!3896356)))

(declare-fun e!3896354 () Bool)

(assert (=> b!6421881 (= res!2639414 e!3896354)))

(declare-fun res!2639410 () Bool)

(assert (=> b!6421881 (=> (not res!2639410) (not e!3896354))))

(declare-fun lt!2377290 () Bool)

(assert (=> b!6421881 (= res!2639410 lt!2377290)))

(declare-fun b!6421882 () Bool)

(declare-fun res!2639415 () Bool)

(assert (=> b!6421882 (=> (not res!2639415) (not e!3896354))))

(declare-fun tail!12226 (List!65274) List!65274)

(assert (=> b!6421882 (= res!2639415 (isEmpty!37310 (tail!12226 s!2326)))))

(declare-fun b!6421883 () Bool)

(declare-fun e!3896358 () Bool)

(declare-fun e!3896355 () Bool)

(assert (=> b!6421883 (= e!3896358 e!3896355)))

(declare-fun c!1173233 () Bool)

(assert (=> b!6421883 (= c!1173233 ((_ is EmptyLang!16325) r!7292))))

(declare-fun b!6421884 () Bool)

(declare-fun res!2639416 () Bool)

(declare-fun e!3896359 () Bool)

(assert (=> b!6421884 (=> res!2639416 e!3896359)))

(assert (=> b!6421884 (= res!2639416 (not (isEmpty!37310 (tail!12226 s!2326))))))

(declare-fun d!2013348 () Bool)

(assert (=> d!2013348 e!3896358))

(declare-fun c!1173231 () Bool)

(assert (=> d!2013348 (= c!1173231 ((_ is EmptyExpr!16325) r!7292))))

(declare-fun e!3896357 () Bool)

(assert (=> d!2013348 (= lt!2377290 e!3896357)))

(declare-fun c!1173232 () Bool)

(assert (=> d!2013348 (= c!1173232 (isEmpty!37310 s!2326))))

(assert (=> d!2013348 (validRegex!8061 r!7292)))

(assert (=> d!2013348 (= (matchR!8508 r!7292 s!2326) lt!2377290)))

(declare-fun b!6421885 () Bool)

(declare-fun e!3896360 () Bool)

(assert (=> b!6421885 (= e!3896360 e!3896359)))

(declare-fun res!2639413 () Bool)

(assert (=> b!6421885 (=> res!2639413 e!3896359)))

(declare-fun call!552152 () Bool)

(assert (=> b!6421885 (= res!2639413 call!552152)))

(declare-fun b!6421886 () Bool)

(declare-fun head!13141 (List!65274) C!32920)

(assert (=> b!6421886 (= e!3896359 (not (= (head!13141 s!2326) (c!1173074 r!7292))))))

(declare-fun b!6421887 () Bool)

(declare-fun res!2639412 () Bool)

(assert (=> b!6421887 (=> res!2639412 e!3896356)))

(assert (=> b!6421887 (= res!2639412 (not ((_ is ElementMatch!16325) r!7292)))))

(assert (=> b!6421887 (= e!3896355 e!3896356)))

(declare-fun b!6421888 () Bool)

(assert (=> b!6421888 (= e!3896358 (= lt!2377290 call!552152))))

(declare-fun b!6421889 () Bool)

(declare-fun derivativeStep!5029 (Regex!16325 C!32920) Regex!16325)

(assert (=> b!6421889 (= e!3896357 (matchR!8508 (derivativeStep!5029 r!7292 (head!13141 s!2326)) (tail!12226 s!2326)))))

(declare-fun b!6421890 () Bool)

(assert (=> b!6421890 (= e!3896357 (nullable!6318 r!7292))))

(declare-fun bm!552147 () Bool)

(assert (=> bm!552147 (= call!552152 (isEmpty!37310 s!2326))))

(declare-fun b!6421891 () Bool)

(assert (=> b!6421891 (= e!3896354 (= (head!13141 s!2326) (c!1173074 r!7292)))))

(declare-fun b!6421892 () Bool)

(assert (=> b!6421892 (= e!3896355 (not lt!2377290))))

(declare-fun b!6421893 () Bool)

(declare-fun res!2639417 () Bool)

(assert (=> b!6421893 (=> (not res!2639417) (not e!3896354))))

(assert (=> b!6421893 (= res!2639417 (not call!552152))))

(declare-fun b!6421894 () Bool)

(assert (=> b!6421894 (= e!3896356 e!3896360)))

(declare-fun res!2639411 () Bool)

(assert (=> b!6421894 (=> (not res!2639411) (not e!3896360))))

(assert (=> b!6421894 (= res!2639411 (not lt!2377290))))

(assert (= (and d!2013348 c!1173232) b!6421890))

(assert (= (and d!2013348 (not c!1173232)) b!6421889))

(assert (= (and d!2013348 c!1173231) b!6421888))

(assert (= (and d!2013348 (not c!1173231)) b!6421883))

(assert (= (and b!6421883 c!1173233) b!6421892))

(assert (= (and b!6421883 (not c!1173233)) b!6421887))

(assert (= (and b!6421887 (not res!2639412)) b!6421881))

(assert (= (and b!6421881 res!2639410) b!6421893))

(assert (= (and b!6421893 res!2639417) b!6421882))

(assert (= (and b!6421882 res!2639415) b!6421891))

(assert (= (and b!6421881 (not res!2639414)) b!6421894))

(assert (= (and b!6421894 res!2639411) b!6421885))

(assert (= (and b!6421885 (not res!2639413)) b!6421884))

(assert (= (and b!6421884 (not res!2639416)) b!6421886))

(assert (= (or b!6421888 b!6421885 b!6421893) bm!552147))

(declare-fun m!7216358 () Bool)

(assert (=> b!6421882 m!7216358))

(assert (=> b!6421882 m!7216358))

(declare-fun m!7216360 () Bool)

(assert (=> b!6421882 m!7216360))

(assert (=> b!6421884 m!7216358))

(assert (=> b!6421884 m!7216358))

(assert (=> b!6421884 m!7216360))

(declare-fun m!7216362 () Bool)

(assert (=> b!6421891 m!7216362))

(assert (=> bm!552147 m!7216326))

(declare-fun m!7216364 () Bool)

(assert (=> b!6421890 m!7216364))

(assert (=> b!6421889 m!7216362))

(assert (=> b!6421889 m!7216362))

(declare-fun m!7216366 () Bool)

(assert (=> b!6421889 m!7216366))

(assert (=> b!6421889 m!7216358))

(assert (=> b!6421889 m!7216366))

(assert (=> b!6421889 m!7216358))

(declare-fun m!7216368 () Bool)

(assert (=> b!6421889 m!7216368))

(assert (=> b!6421886 m!7216362))

(assert (=> d!2013348 m!7216326))

(assert (=> d!2013348 m!7215910))

(assert (=> b!6421313 d!2013348))

(declare-fun d!2013356 () Bool)

(assert (=> d!2013356 (= (matchR!8508 r!7292 s!2326) (matchRSpec!3426 r!7292 s!2326))))

(declare-fun lt!2377294 () Unit!158631)

(declare-fun choose!47722 (Regex!16325 List!65274) Unit!158631)

(assert (=> d!2013356 (= lt!2377294 (choose!47722 r!7292 s!2326))))

(assert (=> d!2013356 (validRegex!8061 r!7292)))

(assert (=> d!2013356 (= (mainMatchTheorem!3426 r!7292 s!2326) lt!2377294)))

(declare-fun bs!1614679 () Bool)

(assert (= bs!1614679 d!2013356))

(assert (=> bs!1614679 m!7215902))

(assert (=> bs!1614679 m!7215900))

(declare-fun m!7216388 () Bool)

(assert (=> bs!1614679 m!7216388))

(assert (=> bs!1614679 m!7215910))

(assert (=> b!6421313 d!2013356))

(declare-fun d!2013366 () Bool)

(declare-fun lt!2377295 () Regex!16325)

(assert (=> d!2013366 (validRegex!8061 lt!2377295)))

(assert (=> d!2013366 (= lt!2377295 (generalisedUnion!2169 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152))))))

(assert (=> d!2013366 (= (unfocusZipper!2067 (Cons!65152 lt!2377188 Nil!65152)) lt!2377295)))

(declare-fun bs!1614680 () Bool)

(assert (= bs!1614680 d!2013366))

(declare-fun m!7216390 () Bool)

(assert (=> bs!1614680 m!7216390))

(declare-fun m!7216394 () Bool)

(assert (=> bs!1614680 m!7216394))

(assert (=> bs!1614680 m!7216394))

(declare-fun m!7216396 () Bool)

(assert (=> bs!1614680 m!7216396))

(assert (=> b!6421333 d!2013366))

(declare-fun d!2013368 () Bool)

(declare-fun c!1173238 () Bool)

(assert (=> d!2013368 (= c!1173238 (isEmpty!37310 s!2326))))

(declare-fun e!3896392 () Bool)

(assert (=> d!2013368 (= (matchZipper!2337 lt!2377200 s!2326) e!3896392)))

(declare-fun b!6421961 () Bool)

(declare-fun nullableZipper!2090 ((InoxSet Context!11418)) Bool)

(assert (=> b!6421961 (= e!3896392 (nullableZipper!2090 lt!2377200))))

(declare-fun b!6421962 () Bool)

(assert (=> b!6421962 (= e!3896392 (matchZipper!2337 (derivationStepZipper!2291 lt!2377200 (head!13141 s!2326)) (tail!12226 s!2326)))))

(assert (= (and d!2013368 c!1173238) b!6421961))

(assert (= (and d!2013368 (not c!1173238)) b!6421962))

(assert (=> d!2013368 m!7216326))

(declare-fun m!7216400 () Bool)

(assert (=> b!6421961 m!7216400))

(assert (=> b!6421962 m!7216362))

(assert (=> b!6421962 m!7216362))

(declare-fun m!7216402 () Bool)

(assert (=> b!6421962 m!7216402))

(assert (=> b!6421962 m!7216358))

(assert (=> b!6421962 m!7216402))

(assert (=> b!6421962 m!7216358))

(declare-fun m!7216404 () Bool)

(assert (=> b!6421962 m!7216404))

(assert (=> b!6421312 d!2013368))

(declare-fun d!2013372 () Bool)

(declare-fun c!1173239 () Bool)

(assert (=> d!2013372 (= c!1173239 (isEmpty!37310 (t!378888 s!2326)))))

(declare-fun e!3896394 () Bool)

(assert (=> d!2013372 (= (matchZipper!2337 lt!2377201 (t!378888 s!2326)) e!3896394)))

(declare-fun b!6421964 () Bool)

(assert (=> b!6421964 (= e!3896394 (nullableZipper!2090 lt!2377201))))

(declare-fun b!6421965 () Bool)

(assert (=> b!6421965 (= e!3896394 (matchZipper!2337 (derivationStepZipper!2291 lt!2377201 (head!13141 (t!378888 s!2326))) (tail!12226 (t!378888 s!2326))))))

(assert (= (and d!2013372 c!1173239) b!6421964))

(assert (= (and d!2013372 (not c!1173239)) b!6421965))

(declare-fun m!7216406 () Bool)

(assert (=> d!2013372 m!7216406))

(declare-fun m!7216408 () Bool)

(assert (=> b!6421964 m!7216408))

(declare-fun m!7216410 () Bool)

(assert (=> b!6421965 m!7216410))

(assert (=> b!6421965 m!7216410))

(declare-fun m!7216412 () Bool)

(assert (=> b!6421965 m!7216412))

(declare-fun m!7216414 () Bool)

(assert (=> b!6421965 m!7216414))

(assert (=> b!6421965 m!7216412))

(assert (=> b!6421965 m!7216414))

(declare-fun m!7216416 () Bool)

(assert (=> b!6421965 m!7216416))

(assert (=> b!6421312 d!2013372))

(declare-fun d!2013380 () Bool)

(declare-fun lt!2377296 () Regex!16325)

(assert (=> d!2013380 (validRegex!8061 lt!2377296)))

(assert (=> d!2013380 (= lt!2377296 (generalisedUnion!2169 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152))))))

(assert (=> d!2013380 (= (unfocusZipper!2067 (Cons!65152 lt!2377171 Nil!65152)) lt!2377296)))

(declare-fun bs!1614685 () Bool)

(assert (= bs!1614685 d!2013380))

(declare-fun m!7216418 () Bool)

(assert (=> bs!1614685 m!7216418))

(declare-fun m!7216420 () Bool)

(assert (=> bs!1614685 m!7216420))

(assert (=> bs!1614685 m!7216420))

(declare-fun m!7216422 () Bool)

(assert (=> bs!1614685 m!7216422))

(assert (=> b!6421321 d!2013380))

(declare-fun d!2013382 () Bool)

(declare-fun lambda!354876 () Int)

(declare-fun forall!15515 (List!65275 Int) Bool)

(assert (=> d!2013382 (= (inv!84059 (h!71600 zl!343)) (forall!15515 (exprs!6209 (h!71600 zl!343)) lambda!354876))))

(declare-fun bs!1614686 () Bool)

(assert (= bs!1614686 d!2013382))

(declare-fun m!7216424 () Bool)

(assert (=> bs!1614686 m!7216424))

(assert (=> b!6421301 d!2013382))

(declare-fun b!6421988 () Bool)

(declare-fun e!3896410 () (InoxSet Context!11418))

(declare-fun call!552171 () (InoxSet Context!11418))

(declare-fun call!552172 () (InoxSet Context!11418))

(assert (=> b!6421988 (= e!3896410 ((_ map or) call!552171 call!552172))))

(declare-fun b!6421989 () Bool)

(declare-fun c!1173253 () Bool)

(assert (=> b!6421989 (= c!1173253 ((_ is Star!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun e!3896409 () (InoxSet Context!11418))

(declare-fun e!3896408 () (InoxSet Context!11418))

(assert (=> b!6421989 (= e!3896409 e!3896408)))

(declare-fun b!6421990 () Bool)

(assert (=> b!6421990 (= e!3896408 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173252 () Bool)

(declare-fun c!1173251 () Bool)

(declare-fun call!552170 () List!65275)

(declare-fun c!1173254 () Bool)

(declare-fun bm!552163 () Bool)

(assert (=> bm!552163 (= call!552171 (derivationStepZipperDown!1573 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292)))))) (ite (or c!1173252 c!1173254) lt!2377188 (Context!11419 call!552170)) (h!71598 s!2326)))))

(declare-fun b!6421991 () Bool)

(declare-fun e!3896412 () Bool)

(assert (=> b!6421991 (= e!3896412 (nullable!6318 (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))

(declare-fun b!6421992 () Bool)

(declare-fun e!3896407 () (InoxSet Context!11418))

(assert (=> b!6421992 (= e!3896407 e!3896409)))

(assert (=> b!6421992 (= c!1173251 ((_ is Concat!25170) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun call!552173 () List!65275)

(declare-fun bm!552164 () Bool)

(assert (=> bm!552164 (= call!552172 (derivationStepZipperDown!1573 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))) (ite c!1173252 lt!2377188 (Context!11419 call!552173)) (h!71598 s!2326)))))

(declare-fun bm!552165 () Bool)

(declare-fun call!552169 () (InoxSet Context!11418))

(assert (=> bm!552165 (= call!552169 call!552171)))

(declare-fun d!2013384 () Bool)

(declare-fun c!1173250 () Bool)

(assert (=> d!2013384 (= c!1173250 (and ((_ is ElementMatch!16325) (reg!16654 (regOne!33162 r!7292))) (= (c!1173074 (reg!16654 (regOne!33162 r!7292))) (h!71598 s!2326))))))

(declare-fun e!3896411 () (InoxSet Context!11418))

(assert (=> d!2013384 (= (derivationStepZipperDown!1573 (reg!16654 (regOne!33162 r!7292)) lt!2377188 (h!71598 s!2326)) e!3896411)))

(declare-fun b!6421993 () Bool)

(assert (=> b!6421993 (= e!3896411 e!3896410)))

(assert (=> b!6421993 (= c!1173252 ((_ is Union!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun b!6421994 () Bool)

(declare-fun call!552168 () (InoxSet Context!11418))

(assert (=> b!6421994 (= e!3896409 call!552168)))

(declare-fun b!6421995 () Bool)

(assert (=> b!6421995 (= e!3896411 (store ((as const (Array Context!11418 Bool)) false) lt!2377188 true))))

(declare-fun b!6421996 () Bool)

(assert (=> b!6421996 (= c!1173254 e!3896412)))

(declare-fun res!2639425 () Bool)

(assert (=> b!6421996 (=> (not res!2639425) (not e!3896412))))

(assert (=> b!6421996 (= res!2639425 ((_ is Concat!25170) (reg!16654 (regOne!33162 r!7292))))))

(assert (=> b!6421996 (= e!3896410 e!3896407)))

(declare-fun b!6421997 () Bool)

(assert (=> b!6421997 (= e!3896407 ((_ map or) call!552172 call!552169))))

(declare-fun b!6421998 () Bool)

(assert (=> b!6421998 (= e!3896408 call!552168)))

(declare-fun bm!552166 () Bool)

(assert (=> bm!552166 (= call!552170 call!552173)))

(declare-fun bm!552167 () Bool)

(assert (=> bm!552167 (= call!552168 call!552169)))

(declare-fun bm!552168 () Bool)

(declare-fun $colon$colon!2186 (List!65275 Regex!16325) List!65275)

(assert (=> bm!552168 (= call!552173 ($colon$colon!2186 (exprs!6209 lt!2377188) (ite (or c!1173254 c!1173251) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (regOne!33162 r!7292)))))))

(assert (= (and d!2013384 c!1173250) b!6421995))

(assert (= (and d!2013384 (not c!1173250)) b!6421993))

(assert (= (and b!6421993 c!1173252) b!6421988))

(assert (= (and b!6421993 (not c!1173252)) b!6421996))

(assert (= (and b!6421996 res!2639425) b!6421991))

(assert (= (and b!6421996 c!1173254) b!6421997))

(assert (= (and b!6421996 (not c!1173254)) b!6421992))

(assert (= (and b!6421992 c!1173251) b!6421994))

(assert (= (and b!6421992 (not c!1173251)) b!6421989))

(assert (= (and b!6421989 c!1173253) b!6421998))

(assert (= (and b!6421989 (not c!1173253)) b!6421990))

(assert (= (or b!6421994 b!6421998) bm!552166))

(assert (= (or b!6421994 b!6421998) bm!552167))

(assert (= (or b!6421997 bm!552166) bm!552168))

(assert (= (or b!6421997 bm!552167) bm!552165))

(assert (= (or b!6421988 b!6421997) bm!552164))

(assert (= (or b!6421988 bm!552165) bm!552163))

(declare-fun m!7216426 () Bool)

(assert (=> bm!552168 m!7216426))

(declare-fun m!7216428 () Bool)

(assert (=> bm!552163 m!7216428))

(assert (=> b!6421995 m!7215896))

(declare-fun m!7216430 () Bool)

(assert (=> b!6421991 m!7216430))

(declare-fun m!7216432 () Bool)

(assert (=> bm!552164 m!7216432))

(assert (=> b!6421300 d!2013384))

(declare-fun d!2013386 () Bool)

(assert (=> d!2013386 (= (isEmpty!37309 (t!378890 zl!343)) ((_ is Nil!65152) (t!378890 zl!343)))))

(assert (=> b!6421320 d!2013386))

(declare-fun d!2013388 () Bool)

(assert (=> d!2013388 (= (isEmpty!37308 (t!378889 (exprs!6209 (h!71600 zl!343)))) ((_ is Nil!65151) (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> b!6421299 d!2013388))

(declare-fun d!2013390 () Bool)

(declare-fun nullableFct!2264 (Regex!16325) Bool)

(assert (=> d!2013390 (= (nullable!6318 (reg!16654 (regOne!33162 r!7292))) (nullableFct!2264 (reg!16654 (regOne!33162 r!7292))))))

(declare-fun bs!1614687 () Bool)

(assert (= bs!1614687 d!2013390))

(declare-fun m!7216434 () Bool)

(assert (=> bs!1614687 m!7216434))

(assert (=> b!6421298 d!2013390))

(declare-fun e!3896415 () Bool)

(declare-fun d!2013392 () Bool)

(assert (=> d!2013392 (= (matchZipper!2337 ((_ map or) lt!2377173 lt!2377180) (t!378888 s!2326)) e!3896415)))

(declare-fun res!2639428 () Bool)

(assert (=> d!2013392 (=> res!2639428 e!3896415)))

(assert (=> d!2013392 (= res!2639428 (matchZipper!2337 lt!2377173 (t!378888 s!2326)))))

(declare-fun lt!2377299 () Unit!158631)

(declare-fun choose!47723 ((InoxSet Context!11418) (InoxSet Context!11418) List!65274) Unit!158631)

(assert (=> d!2013392 (= lt!2377299 (choose!47723 lt!2377173 lt!2377180 (t!378888 s!2326)))))

(assert (=> d!2013392 (= (lemmaZipperConcatMatchesSameAsBothZippers!1156 lt!2377173 lt!2377180 (t!378888 s!2326)) lt!2377299)))

(declare-fun b!6422001 () Bool)

(assert (=> b!6422001 (= e!3896415 (matchZipper!2337 lt!2377180 (t!378888 s!2326)))))

(assert (= (and d!2013392 (not res!2639428)) b!6422001))

(assert (=> d!2013392 m!7215836))

(assert (=> d!2013392 m!7215834))

(declare-fun m!7216436 () Bool)

(assert (=> d!2013392 m!7216436))

(assert (=> b!6422001 m!7215772))

(assert (=> b!6421318 d!2013392))

(declare-fun d!2013394 () Bool)

(declare-fun c!1173255 () Bool)

(assert (=> d!2013394 (= c!1173255 (isEmpty!37310 (t!378888 s!2326)))))

(declare-fun e!3896416 () Bool)

(assert (=> d!2013394 (= (matchZipper!2337 lt!2377173 (t!378888 s!2326)) e!3896416)))

(declare-fun b!6422002 () Bool)

(assert (=> b!6422002 (= e!3896416 (nullableZipper!2090 lt!2377173))))

(declare-fun b!6422003 () Bool)

(assert (=> b!6422003 (= e!3896416 (matchZipper!2337 (derivationStepZipper!2291 lt!2377173 (head!13141 (t!378888 s!2326))) (tail!12226 (t!378888 s!2326))))))

(assert (= (and d!2013394 c!1173255) b!6422002))

(assert (= (and d!2013394 (not c!1173255)) b!6422003))

(assert (=> d!2013394 m!7216406))

(declare-fun m!7216438 () Bool)

(assert (=> b!6422002 m!7216438))

(assert (=> b!6422003 m!7216410))

(assert (=> b!6422003 m!7216410))

(declare-fun m!7216440 () Bool)

(assert (=> b!6422003 m!7216440))

(assert (=> b!6422003 m!7216414))

(assert (=> b!6422003 m!7216440))

(assert (=> b!6422003 m!7216414))

(declare-fun m!7216442 () Bool)

(assert (=> b!6422003 m!7216442))

(assert (=> b!6421318 d!2013394))

(declare-fun d!2013396 () Bool)

(declare-fun c!1173256 () Bool)

(assert (=> d!2013396 (= c!1173256 (isEmpty!37310 (t!378888 s!2326)))))

(declare-fun e!3896417 () Bool)

(assert (=> d!2013396 (= (matchZipper!2337 ((_ map or) lt!2377173 lt!2377180) (t!378888 s!2326)) e!3896417)))

(declare-fun b!6422004 () Bool)

(assert (=> b!6422004 (= e!3896417 (nullableZipper!2090 ((_ map or) lt!2377173 lt!2377180)))))

(declare-fun b!6422005 () Bool)

(assert (=> b!6422005 (= e!3896417 (matchZipper!2337 (derivationStepZipper!2291 ((_ map or) lt!2377173 lt!2377180) (head!13141 (t!378888 s!2326))) (tail!12226 (t!378888 s!2326))))))

(assert (= (and d!2013396 c!1173256) b!6422004))

(assert (= (and d!2013396 (not c!1173256)) b!6422005))

(assert (=> d!2013396 m!7216406))

(declare-fun m!7216444 () Bool)

(assert (=> b!6422004 m!7216444))

(assert (=> b!6422005 m!7216410))

(assert (=> b!6422005 m!7216410))

(declare-fun m!7216446 () Bool)

(assert (=> b!6422005 m!7216446))

(assert (=> b!6422005 m!7216414))

(assert (=> b!6422005 m!7216446))

(assert (=> b!6422005 m!7216414))

(declare-fun m!7216448 () Bool)

(assert (=> b!6422005 m!7216448))

(assert (=> b!6421318 d!2013396))

(declare-fun d!2013398 () Bool)

(declare-fun choose!47724 ((InoxSet Context!11418) Int) (InoxSet Context!11418))

(assert (=> d!2013398 (= (flatMap!1830 lt!2377190 lambda!354816) (choose!47724 lt!2377190 lambda!354816))))

(declare-fun bs!1614688 () Bool)

(assert (= bs!1614688 d!2013398))

(declare-fun m!7216450 () Bool)

(assert (=> bs!1614688 m!7216450))

(assert (=> b!6421296 d!2013398))

(declare-fun d!2013400 () Bool)

(declare-fun lt!2377300 () Regex!16325)

(assert (=> d!2013400 (validRegex!8061 lt!2377300)))

(assert (=> d!2013400 (= lt!2377300 (generalisedUnion!2169 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152))))))

(assert (=> d!2013400 (= (unfocusZipper!2067 (Cons!65152 lt!2377192 Nil!65152)) lt!2377300)))

(declare-fun bs!1614689 () Bool)

(assert (= bs!1614689 d!2013400))

(declare-fun m!7216452 () Bool)

(assert (=> bs!1614689 m!7216452))

(declare-fun m!7216454 () Bool)

(assert (=> bs!1614689 m!7216454))

(assert (=> bs!1614689 m!7216454))

(declare-fun m!7216456 () Bool)

(assert (=> bs!1614689 m!7216456))

(assert (=> b!6421296 d!2013400))

(declare-fun b!6422016 () Bool)

(declare-fun e!3896425 () (InoxSet Context!11418))

(assert (=> b!6422016 (= e!3896425 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013402 () Bool)

(declare-fun c!1173262 () Bool)

(declare-fun e!3896424 () Bool)

(assert (=> d!2013402 (= c!1173262 e!3896424)))

(declare-fun res!2639431 () Bool)

(assert (=> d!2013402 (=> (not res!2639431) (not e!3896424))))

(assert (=> d!2013402 (= res!2639431 ((_ is Cons!65151) (exprs!6209 lt!2377192)))))

(declare-fun e!3896426 () (InoxSet Context!11418))

(assert (=> d!2013402 (= (derivationStepZipperUp!1499 lt!2377192 (h!71598 s!2326)) e!3896426)))

(declare-fun b!6422017 () Bool)

(declare-fun call!552176 () (InoxSet Context!11418))

(assert (=> b!6422017 (= e!3896426 ((_ map or) call!552176 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 lt!2377192))) (h!71598 s!2326))))))

(declare-fun bm!552171 () Bool)

(assert (=> bm!552171 (= call!552176 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 lt!2377192)) (Context!11419 (t!378889 (exprs!6209 lt!2377192))) (h!71598 s!2326)))))

(declare-fun b!6422018 () Bool)

(assert (=> b!6422018 (= e!3896424 (nullable!6318 (h!71599 (exprs!6209 lt!2377192))))))

(declare-fun b!6422019 () Bool)

(assert (=> b!6422019 (= e!3896426 e!3896425)))

(declare-fun c!1173261 () Bool)

(assert (=> b!6422019 (= c!1173261 ((_ is Cons!65151) (exprs!6209 lt!2377192)))))

(declare-fun b!6422020 () Bool)

(assert (=> b!6422020 (= e!3896425 call!552176)))

(assert (= (and d!2013402 res!2639431) b!6422018))

(assert (= (and d!2013402 c!1173262) b!6422017))

(assert (= (and d!2013402 (not c!1173262)) b!6422019))

(assert (= (and b!6422019 c!1173261) b!6422020))

(assert (= (and b!6422019 (not c!1173261)) b!6422016))

(assert (= (or b!6422017 b!6422020) bm!552171))

(declare-fun m!7216458 () Bool)

(assert (=> b!6422017 m!7216458))

(declare-fun m!7216460 () Bool)

(assert (=> bm!552171 m!7216460))

(declare-fun m!7216462 () Bool)

(assert (=> b!6422018 m!7216462))

(assert (=> b!6421296 d!2013402))

(declare-fun b!6422021 () Bool)

(declare-fun e!3896428 () (InoxSet Context!11418))

(assert (=> b!6422021 (= e!3896428 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013404 () Bool)

(declare-fun c!1173264 () Bool)

(declare-fun e!3896427 () Bool)

(assert (=> d!2013404 (= c!1173264 e!3896427)))

(declare-fun res!2639432 () Bool)

(assert (=> d!2013404 (=> (not res!2639432) (not e!3896427))))

(assert (=> d!2013404 (= res!2639432 ((_ is Cons!65151) (exprs!6209 lt!2377188)))))

(declare-fun e!3896429 () (InoxSet Context!11418))

(assert (=> d!2013404 (= (derivationStepZipperUp!1499 lt!2377188 (h!71598 s!2326)) e!3896429)))

(declare-fun b!6422022 () Bool)

(declare-fun call!552177 () (InoxSet Context!11418))

(assert (=> b!6422022 (= e!3896429 ((_ map or) call!552177 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 lt!2377188))) (h!71598 s!2326))))))

(declare-fun bm!552172 () Bool)

(assert (=> bm!552172 (= call!552177 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 lt!2377188)) (Context!11419 (t!378889 (exprs!6209 lt!2377188))) (h!71598 s!2326)))))

(declare-fun b!6422023 () Bool)

(assert (=> b!6422023 (= e!3896427 (nullable!6318 (h!71599 (exprs!6209 lt!2377188))))))

(declare-fun b!6422024 () Bool)

(assert (=> b!6422024 (= e!3896429 e!3896428)))

(declare-fun c!1173263 () Bool)

(assert (=> b!6422024 (= c!1173263 ((_ is Cons!65151) (exprs!6209 lt!2377188)))))

(declare-fun b!6422025 () Bool)

(assert (=> b!6422025 (= e!3896428 call!552177)))

(assert (= (and d!2013404 res!2639432) b!6422023))

(assert (= (and d!2013404 c!1173264) b!6422022))

(assert (= (and d!2013404 (not c!1173264)) b!6422024))

(assert (= (and b!6422024 c!1173263) b!6422025))

(assert (= (and b!6422024 (not c!1173263)) b!6422021))

(assert (= (or b!6422022 b!6422025) bm!552172))

(declare-fun m!7216464 () Bool)

(assert (=> b!6422022 m!7216464))

(declare-fun m!7216466 () Bool)

(assert (=> bm!552172 m!7216466))

(declare-fun m!7216468 () Bool)

(assert (=> b!6422023 m!7216468))

(assert (=> b!6421296 d!2013404))

(declare-fun d!2013406 () Bool)

(declare-fun dynLambda!25880 (Int Context!11418) (InoxSet Context!11418))

(assert (=> d!2013406 (= (flatMap!1830 lt!2377190 lambda!354816) (dynLambda!25880 lambda!354816 lt!2377188))))

(declare-fun lt!2377303 () Unit!158631)

(declare-fun choose!47725 ((InoxSet Context!11418) Context!11418 Int) Unit!158631)

(assert (=> d!2013406 (= lt!2377303 (choose!47725 lt!2377190 lt!2377188 lambda!354816))))

(assert (=> d!2013406 (= lt!2377190 (store ((as const (Array Context!11418 Bool)) false) lt!2377188 true))))

(assert (=> d!2013406 (= (lemmaFlatMapOnSingletonSet!1356 lt!2377190 lt!2377188 lambda!354816) lt!2377303)))

(declare-fun b_lambda!244093 () Bool)

(assert (=> (not b_lambda!244093) (not d!2013406)))

(declare-fun bs!1614690 () Bool)

(assert (= bs!1614690 d!2013406))

(assert (=> bs!1614690 m!7215892))

(declare-fun m!7216470 () Bool)

(assert (=> bs!1614690 m!7216470))

(declare-fun m!7216472 () Bool)

(assert (=> bs!1614690 m!7216472))

(assert (=> bs!1614690 m!7215896))

(assert (=> b!6421296 d!2013406))

(declare-fun d!2013408 () Bool)

(assert (=> d!2013408 (= (flatMap!1830 lt!2377194 lambda!354816) (choose!47724 lt!2377194 lambda!354816))))

(declare-fun bs!1614691 () Bool)

(assert (= bs!1614691 d!2013408))

(declare-fun m!7216474 () Bool)

(assert (=> bs!1614691 m!7216474))

(assert (=> b!6421296 d!2013408))

(declare-fun d!2013410 () Bool)

(assert (=> d!2013410 (= (flatMap!1830 lt!2377194 lambda!354816) (dynLambda!25880 lambda!354816 lt!2377192))))

(declare-fun lt!2377304 () Unit!158631)

(assert (=> d!2013410 (= lt!2377304 (choose!47725 lt!2377194 lt!2377192 lambda!354816))))

(assert (=> d!2013410 (= lt!2377194 (store ((as const (Array Context!11418 Bool)) false) lt!2377192 true))))

(assert (=> d!2013410 (= (lemmaFlatMapOnSingletonSet!1356 lt!2377194 lt!2377192 lambda!354816) lt!2377304)))

(declare-fun b_lambda!244095 () Bool)

(assert (=> (not b_lambda!244095) (not d!2013410)))

(declare-fun bs!1614692 () Bool)

(assert (= bs!1614692 d!2013410))

(assert (=> bs!1614692 m!7215884))

(declare-fun m!7216476 () Bool)

(assert (=> bs!1614692 m!7216476))

(declare-fun m!7216478 () Bool)

(assert (=> bs!1614692 m!7216478))

(assert (=> bs!1614692 m!7215886))

(assert (=> b!6421296 d!2013410))

(declare-fun bs!1614693 () Bool)

(declare-fun d!2013412 () Bool)

(assert (= bs!1614693 (and d!2013412 d!2013382)))

(declare-fun lambda!354879 () Int)

(assert (=> bs!1614693 (= lambda!354879 lambda!354876)))

(declare-fun b!6422046 () Bool)

(declare-fun e!3896446 () Bool)

(declare-fun lt!2377307 () Regex!16325)

(declare-fun isEmptyExpr!1726 (Regex!16325) Bool)

(assert (=> b!6422046 (= e!3896446 (isEmptyExpr!1726 lt!2377307))))

(declare-fun b!6422047 () Bool)

(declare-fun e!3896442 () Regex!16325)

(assert (=> b!6422047 (= e!3896442 (h!71599 (exprs!6209 (h!71600 zl!343))))))

(declare-fun b!6422048 () Bool)

(declare-fun e!3896444 () Regex!16325)

(assert (=> b!6422048 (= e!3896444 EmptyExpr!16325)))

(declare-fun e!3896443 () Bool)

(assert (=> d!2013412 e!3896443))

(declare-fun res!2639438 () Bool)

(assert (=> d!2013412 (=> (not res!2639438) (not e!3896443))))

(assert (=> d!2013412 (= res!2639438 (validRegex!8061 lt!2377307))))

(assert (=> d!2013412 (= lt!2377307 e!3896442)))

(declare-fun c!1173275 () Bool)

(declare-fun e!3896447 () Bool)

(assert (=> d!2013412 (= c!1173275 e!3896447)))

(declare-fun res!2639437 () Bool)

(assert (=> d!2013412 (=> (not res!2639437) (not e!3896447))))

(assert (=> d!2013412 (= res!2639437 ((_ is Cons!65151) (exprs!6209 (h!71600 zl!343))))))

(assert (=> d!2013412 (forall!15515 (exprs!6209 (h!71600 zl!343)) lambda!354879)))

(assert (=> d!2013412 (= (generalisedConcat!1922 (exprs!6209 (h!71600 zl!343))) lt!2377307)))

(declare-fun b!6422049 () Bool)

(declare-fun e!3896445 () Bool)

(declare-fun head!13142 (List!65275) Regex!16325)

(assert (=> b!6422049 (= e!3896445 (= lt!2377307 (head!13142 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6422050 () Bool)

(assert (=> b!6422050 (= e!3896443 e!3896446)))

(declare-fun c!1173273 () Bool)

(assert (=> b!6422050 (= c!1173273 (isEmpty!37308 (exprs!6209 (h!71600 zl!343))))))

(declare-fun b!6422051 () Bool)

(declare-fun isConcat!1249 (Regex!16325) Bool)

(assert (=> b!6422051 (= e!3896445 (isConcat!1249 lt!2377307))))

(declare-fun b!6422052 () Bool)

(assert (=> b!6422052 (= e!3896444 (Concat!25170 (h!71599 (exprs!6209 (h!71600 zl!343))) (generalisedConcat!1922 (t!378889 (exprs!6209 (h!71600 zl!343))))))))

(declare-fun b!6422053 () Bool)

(assert (=> b!6422053 (= e!3896446 e!3896445)))

(declare-fun c!1173276 () Bool)

(declare-fun tail!12227 (List!65275) List!65275)

(assert (=> b!6422053 (= c!1173276 (isEmpty!37308 (tail!12227 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6422054 () Bool)

(assert (=> b!6422054 (= e!3896447 (isEmpty!37308 (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6422055 () Bool)

(assert (=> b!6422055 (= e!3896442 e!3896444)))

(declare-fun c!1173274 () Bool)

(assert (=> b!6422055 (= c!1173274 ((_ is Cons!65151) (exprs!6209 (h!71600 zl!343))))))

(assert (= (and d!2013412 res!2639437) b!6422054))

(assert (= (and d!2013412 c!1173275) b!6422047))

(assert (= (and d!2013412 (not c!1173275)) b!6422055))

(assert (= (and b!6422055 c!1173274) b!6422052))

(assert (= (and b!6422055 (not c!1173274)) b!6422048))

(assert (= (and d!2013412 res!2639438) b!6422050))

(assert (= (and b!6422050 c!1173273) b!6422046))

(assert (= (and b!6422050 (not c!1173273)) b!6422053))

(assert (= (and b!6422053 c!1173276) b!6422049))

(assert (= (and b!6422053 (not c!1173276)) b!6422051))

(declare-fun m!7216480 () Bool)

(assert (=> b!6422049 m!7216480))

(assert (=> b!6422054 m!7215830))

(declare-fun m!7216482 () Bool)

(assert (=> d!2013412 m!7216482))

(declare-fun m!7216484 () Bool)

(assert (=> d!2013412 m!7216484))

(declare-fun m!7216486 () Bool)

(assert (=> b!6422046 m!7216486))

(declare-fun m!7216488 () Bool)

(assert (=> b!6422053 m!7216488))

(assert (=> b!6422053 m!7216488))

(declare-fun m!7216490 () Bool)

(assert (=> b!6422053 m!7216490))

(declare-fun m!7216492 () Bool)

(assert (=> b!6422052 m!7216492))

(declare-fun m!7216494 () Bool)

(assert (=> b!6422050 m!7216494))

(declare-fun m!7216496 () Bool)

(assert (=> b!6422051 m!7216496))

(assert (=> b!6421306 d!2013412))

(declare-fun d!2013414 () Bool)

(assert (=> d!2013414 (= (flatMap!1830 lt!2377200 lambda!354816) (choose!47724 lt!2377200 lambda!354816))))

(declare-fun bs!1614694 () Bool)

(assert (= bs!1614694 d!2013414))

(declare-fun m!7216498 () Bool)

(assert (=> bs!1614694 m!7216498))

(assert (=> b!6421325 d!2013414))

(declare-fun b!6422056 () Bool)

(declare-fun e!3896449 () (InoxSet Context!11418))

(assert (=> b!6422056 (= e!3896449 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013416 () Bool)

(declare-fun c!1173278 () Bool)

(declare-fun e!3896448 () Bool)

(assert (=> d!2013416 (= c!1173278 e!3896448)))

(declare-fun res!2639439 () Bool)

(assert (=> d!2013416 (=> (not res!2639439) (not e!3896448))))

(assert (=> d!2013416 (= res!2639439 ((_ is Cons!65151) (exprs!6209 lt!2377171)))))

(declare-fun e!3896450 () (InoxSet Context!11418))

(assert (=> d!2013416 (= (derivationStepZipperUp!1499 lt!2377171 (h!71598 s!2326)) e!3896450)))

(declare-fun b!6422057 () Bool)

(declare-fun call!552178 () (InoxSet Context!11418))

(assert (=> b!6422057 (= e!3896450 ((_ map or) call!552178 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 lt!2377171))) (h!71598 s!2326))))))

(declare-fun bm!552173 () Bool)

(assert (=> bm!552173 (= call!552178 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 lt!2377171)) (Context!11419 (t!378889 (exprs!6209 lt!2377171))) (h!71598 s!2326)))))

(declare-fun b!6422058 () Bool)

(assert (=> b!6422058 (= e!3896448 (nullable!6318 (h!71599 (exprs!6209 lt!2377171))))))

(declare-fun b!6422059 () Bool)

(assert (=> b!6422059 (= e!3896450 e!3896449)))

(declare-fun c!1173277 () Bool)

(assert (=> b!6422059 (= c!1173277 ((_ is Cons!65151) (exprs!6209 lt!2377171)))))

(declare-fun b!6422060 () Bool)

(assert (=> b!6422060 (= e!3896449 call!552178)))

(assert (= (and d!2013416 res!2639439) b!6422058))

(assert (= (and d!2013416 c!1173278) b!6422057))

(assert (= (and d!2013416 (not c!1173278)) b!6422059))

(assert (= (and b!6422059 c!1173277) b!6422060))

(assert (= (and b!6422059 (not c!1173277)) b!6422056))

(assert (= (or b!6422057 b!6422060) bm!552173))

(declare-fun m!7216500 () Bool)

(assert (=> b!6422057 m!7216500))

(declare-fun m!7216502 () Bool)

(assert (=> bm!552173 m!7216502))

(declare-fun m!7216504 () Bool)

(assert (=> b!6422058 m!7216504))

(assert (=> b!6421325 d!2013416))

(declare-fun d!2013418 () Bool)

(assert (=> d!2013418 (= (flatMap!1830 lt!2377200 lambda!354816) (dynLambda!25880 lambda!354816 lt!2377171))))

(declare-fun lt!2377308 () Unit!158631)

(assert (=> d!2013418 (= lt!2377308 (choose!47725 lt!2377200 lt!2377171 lambda!354816))))

(assert (=> d!2013418 (= lt!2377200 (store ((as const (Array Context!11418 Bool)) false) lt!2377171 true))))

(assert (=> d!2013418 (= (lemmaFlatMapOnSingletonSet!1356 lt!2377200 lt!2377171 lambda!354816) lt!2377308)))

(declare-fun b_lambda!244097 () Bool)

(assert (=> (not b_lambda!244097) (not d!2013418)))

(declare-fun bs!1614695 () Bool)

(assert (= bs!1614695 d!2013418))

(assert (=> bs!1614695 m!7215842))

(declare-fun m!7216506 () Bool)

(assert (=> bs!1614695 m!7216506))

(declare-fun m!7216508 () Bool)

(assert (=> bs!1614695 m!7216508))

(assert (=> bs!1614695 m!7215848))

(assert (=> b!6421325 d!2013418))

(declare-fun bs!1614696 () Bool)

(declare-fun d!2013420 () Bool)

(assert (= bs!1614696 (and d!2013420 b!6421308)))

(declare-fun lambda!354882 () Int)

(assert (=> bs!1614696 (= lambda!354882 lambda!354816)))

(assert (=> d!2013420 true))

(assert (=> d!2013420 (= (derivationStepZipper!2291 lt!2377200 (h!71598 s!2326)) (flatMap!1830 lt!2377200 lambda!354882))))

(declare-fun bs!1614697 () Bool)

(assert (= bs!1614697 d!2013420))

(declare-fun m!7216510 () Bool)

(assert (=> bs!1614697 m!7216510))

(assert (=> b!6421325 d!2013420))

(declare-fun b!6422063 () Bool)

(declare-fun res!2639444 () Bool)

(declare-fun e!3896453 () Bool)

(assert (=> b!6422063 (=> res!2639444 e!3896453)))

(declare-fun e!3896451 () Bool)

(assert (=> b!6422063 (= res!2639444 e!3896451)))

(declare-fun res!2639440 () Bool)

(assert (=> b!6422063 (=> (not res!2639440) (not e!3896451))))

(declare-fun lt!2377309 () Bool)

(assert (=> b!6422063 (= res!2639440 lt!2377309)))

(declare-fun b!6422064 () Bool)

(declare-fun res!2639445 () Bool)

(assert (=> b!6422064 (=> (not res!2639445) (not e!3896451))))

(assert (=> b!6422064 (= res!2639445 (isEmpty!37310 (tail!12226 (_1!36607 lt!2377178))))))

(declare-fun b!6422065 () Bool)

(declare-fun e!3896455 () Bool)

(declare-fun e!3896452 () Bool)

(assert (=> b!6422065 (= e!3896455 e!3896452)))

(declare-fun c!1173283 () Bool)

(assert (=> b!6422065 (= c!1173283 ((_ is EmptyLang!16325) lt!2377164))))

(declare-fun b!6422066 () Bool)

(declare-fun res!2639446 () Bool)

(declare-fun e!3896456 () Bool)

(assert (=> b!6422066 (=> res!2639446 e!3896456)))

(assert (=> b!6422066 (= res!2639446 (not (isEmpty!37310 (tail!12226 (_1!36607 lt!2377178)))))))

(declare-fun d!2013422 () Bool)

(assert (=> d!2013422 e!3896455))

(declare-fun c!1173281 () Bool)

(assert (=> d!2013422 (= c!1173281 ((_ is EmptyExpr!16325) lt!2377164))))

(declare-fun e!3896454 () Bool)

(assert (=> d!2013422 (= lt!2377309 e!3896454)))

(declare-fun c!1173282 () Bool)

(assert (=> d!2013422 (= c!1173282 (isEmpty!37310 (_1!36607 lt!2377178)))))

(assert (=> d!2013422 (validRegex!8061 lt!2377164)))

(assert (=> d!2013422 (= (matchR!8508 lt!2377164 (_1!36607 lt!2377178)) lt!2377309)))

(declare-fun b!6422067 () Bool)

(declare-fun e!3896457 () Bool)

(assert (=> b!6422067 (= e!3896457 e!3896456)))

(declare-fun res!2639443 () Bool)

(assert (=> b!6422067 (=> res!2639443 e!3896456)))

(declare-fun call!552179 () Bool)

(assert (=> b!6422067 (= res!2639443 call!552179)))

(declare-fun b!6422068 () Bool)

(assert (=> b!6422068 (= e!3896456 (not (= (head!13141 (_1!36607 lt!2377178)) (c!1173074 lt!2377164))))))

(declare-fun b!6422069 () Bool)

(declare-fun res!2639442 () Bool)

(assert (=> b!6422069 (=> res!2639442 e!3896453)))

(assert (=> b!6422069 (= res!2639442 (not ((_ is ElementMatch!16325) lt!2377164)))))

(assert (=> b!6422069 (= e!3896452 e!3896453)))

(declare-fun b!6422070 () Bool)

(assert (=> b!6422070 (= e!3896455 (= lt!2377309 call!552179))))

(declare-fun b!6422071 () Bool)

(assert (=> b!6422071 (= e!3896454 (matchR!8508 (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178))) (tail!12226 (_1!36607 lt!2377178))))))

(declare-fun b!6422072 () Bool)

(assert (=> b!6422072 (= e!3896454 (nullable!6318 lt!2377164))))

(declare-fun bm!552174 () Bool)

(assert (=> bm!552174 (= call!552179 (isEmpty!37310 (_1!36607 lt!2377178)))))

(declare-fun b!6422073 () Bool)

(assert (=> b!6422073 (= e!3896451 (= (head!13141 (_1!36607 lt!2377178)) (c!1173074 lt!2377164)))))

(declare-fun b!6422074 () Bool)

(assert (=> b!6422074 (= e!3896452 (not lt!2377309))))

(declare-fun b!6422075 () Bool)

(declare-fun res!2639447 () Bool)

(assert (=> b!6422075 (=> (not res!2639447) (not e!3896451))))

(assert (=> b!6422075 (= res!2639447 (not call!552179))))

(declare-fun b!6422076 () Bool)

(assert (=> b!6422076 (= e!3896453 e!3896457)))

(declare-fun res!2639441 () Bool)

(assert (=> b!6422076 (=> (not res!2639441) (not e!3896457))))

(assert (=> b!6422076 (= res!2639441 (not lt!2377309))))

(assert (= (and d!2013422 c!1173282) b!6422072))

(assert (= (and d!2013422 (not c!1173282)) b!6422071))

(assert (= (and d!2013422 c!1173281) b!6422070))

(assert (= (and d!2013422 (not c!1173281)) b!6422065))

(assert (= (and b!6422065 c!1173283) b!6422074))

(assert (= (and b!6422065 (not c!1173283)) b!6422069))

(assert (= (and b!6422069 (not res!2639442)) b!6422063))

(assert (= (and b!6422063 res!2639440) b!6422075))

(assert (= (and b!6422075 res!2639447) b!6422064))

(assert (= (and b!6422064 res!2639445) b!6422073))

(assert (= (and b!6422063 (not res!2639444)) b!6422076))

(assert (= (and b!6422076 res!2639441) b!6422067))

(assert (= (and b!6422067 (not res!2639443)) b!6422066))

(assert (= (and b!6422066 (not res!2639446)) b!6422068))

(assert (= (or b!6422070 b!6422067 b!6422075) bm!552174))

(declare-fun m!7216512 () Bool)

(assert (=> b!6422064 m!7216512))

(assert (=> b!6422064 m!7216512))

(declare-fun m!7216514 () Bool)

(assert (=> b!6422064 m!7216514))

(assert (=> b!6422066 m!7216512))

(assert (=> b!6422066 m!7216512))

(assert (=> b!6422066 m!7216514))

(declare-fun m!7216516 () Bool)

(assert (=> b!6422073 m!7216516))

(assert (=> bm!552174 m!7215768))

(declare-fun m!7216518 () Bool)

(assert (=> b!6422072 m!7216518))

(assert (=> b!6422071 m!7216516))

(assert (=> b!6422071 m!7216516))

(declare-fun m!7216520 () Bool)

(assert (=> b!6422071 m!7216520))

(assert (=> b!6422071 m!7216512))

(assert (=> b!6422071 m!7216520))

(assert (=> b!6422071 m!7216512))

(declare-fun m!7216522 () Bool)

(assert (=> b!6422071 m!7216522))

(assert (=> b!6422068 m!7216516))

(assert (=> d!2013422 m!7215768))

(assert (=> d!2013422 m!7216180))

(assert (=> b!6421305 d!2013422))

(declare-fun b!6422077 () Bool)

(declare-fun res!2639452 () Bool)

(declare-fun e!3896460 () Bool)

(assert (=> b!6422077 (=> res!2639452 e!3896460)))

(declare-fun e!3896458 () Bool)

(assert (=> b!6422077 (= res!2639452 e!3896458)))

(declare-fun res!2639448 () Bool)

(assert (=> b!6422077 (=> (not res!2639448) (not e!3896458))))

(declare-fun lt!2377310 () Bool)

(assert (=> b!6422077 (= res!2639448 lt!2377310)))

(declare-fun b!6422078 () Bool)

(declare-fun res!2639453 () Bool)

(assert (=> b!6422078 (=> (not res!2639453) (not e!3896458))))

(assert (=> b!6422078 (= res!2639453 (isEmpty!37310 (tail!12226 (_2!36607 lt!2377178))))))

(declare-fun b!6422079 () Bool)

(declare-fun e!3896462 () Bool)

(declare-fun e!3896459 () Bool)

(assert (=> b!6422079 (= e!3896462 e!3896459)))

(declare-fun c!1173286 () Bool)

(assert (=> b!6422079 (= c!1173286 ((_ is EmptyLang!16325) (regTwo!33162 r!7292)))))

(declare-fun b!6422080 () Bool)

(declare-fun res!2639454 () Bool)

(declare-fun e!3896463 () Bool)

(assert (=> b!6422080 (=> res!2639454 e!3896463)))

(assert (=> b!6422080 (= res!2639454 (not (isEmpty!37310 (tail!12226 (_2!36607 lt!2377178)))))))

(declare-fun d!2013424 () Bool)

(assert (=> d!2013424 e!3896462))

(declare-fun c!1173284 () Bool)

(assert (=> d!2013424 (= c!1173284 ((_ is EmptyExpr!16325) (regTwo!33162 r!7292)))))

(declare-fun e!3896461 () Bool)

(assert (=> d!2013424 (= lt!2377310 e!3896461)))

(declare-fun c!1173285 () Bool)

(assert (=> d!2013424 (= c!1173285 (isEmpty!37310 (_2!36607 lt!2377178)))))

(assert (=> d!2013424 (validRegex!8061 (regTwo!33162 r!7292))))

(assert (=> d!2013424 (= (matchR!8508 (regTwo!33162 r!7292) (_2!36607 lt!2377178)) lt!2377310)))

(declare-fun b!6422081 () Bool)

(declare-fun e!3896464 () Bool)

(assert (=> b!6422081 (= e!3896464 e!3896463)))

(declare-fun res!2639451 () Bool)

(assert (=> b!6422081 (=> res!2639451 e!3896463)))

(declare-fun call!552180 () Bool)

(assert (=> b!6422081 (= res!2639451 call!552180)))

(declare-fun b!6422082 () Bool)

(assert (=> b!6422082 (= e!3896463 (not (= (head!13141 (_2!36607 lt!2377178)) (c!1173074 (regTwo!33162 r!7292)))))))

(declare-fun b!6422083 () Bool)

(declare-fun res!2639450 () Bool)

(assert (=> b!6422083 (=> res!2639450 e!3896460)))

(assert (=> b!6422083 (= res!2639450 (not ((_ is ElementMatch!16325) (regTwo!33162 r!7292))))))

(assert (=> b!6422083 (= e!3896459 e!3896460)))

(declare-fun b!6422084 () Bool)

(assert (=> b!6422084 (= e!3896462 (= lt!2377310 call!552180))))

(declare-fun b!6422085 () Bool)

(assert (=> b!6422085 (= e!3896461 (matchR!8508 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178))) (tail!12226 (_2!36607 lt!2377178))))))

(declare-fun b!6422086 () Bool)

(assert (=> b!6422086 (= e!3896461 (nullable!6318 (regTwo!33162 r!7292)))))

(declare-fun bm!552175 () Bool)

(assert (=> bm!552175 (= call!552180 (isEmpty!37310 (_2!36607 lt!2377178)))))

(declare-fun b!6422087 () Bool)

(assert (=> b!6422087 (= e!3896458 (= (head!13141 (_2!36607 lt!2377178)) (c!1173074 (regTwo!33162 r!7292))))))

(declare-fun b!6422088 () Bool)

(assert (=> b!6422088 (= e!3896459 (not lt!2377310))))

(declare-fun b!6422089 () Bool)

(declare-fun res!2639455 () Bool)

(assert (=> b!6422089 (=> (not res!2639455) (not e!3896458))))

(assert (=> b!6422089 (= res!2639455 (not call!552180))))

(declare-fun b!6422090 () Bool)

(assert (=> b!6422090 (= e!3896460 e!3896464)))

(declare-fun res!2639449 () Bool)

(assert (=> b!6422090 (=> (not res!2639449) (not e!3896464))))

(assert (=> b!6422090 (= res!2639449 (not lt!2377310))))

(assert (= (and d!2013424 c!1173285) b!6422086))

(assert (= (and d!2013424 (not c!1173285)) b!6422085))

(assert (= (and d!2013424 c!1173284) b!6422084))

(assert (= (and d!2013424 (not c!1173284)) b!6422079))

(assert (= (and b!6422079 c!1173286) b!6422088))

(assert (= (and b!6422079 (not c!1173286)) b!6422083))

(assert (= (and b!6422083 (not res!2639450)) b!6422077))

(assert (= (and b!6422077 res!2639448) b!6422089))

(assert (= (and b!6422089 res!2639455) b!6422078))

(assert (= (and b!6422078 res!2639453) b!6422087))

(assert (= (and b!6422077 (not res!2639452)) b!6422090))

(assert (= (and b!6422090 res!2639449) b!6422081))

(assert (= (and b!6422081 (not res!2639451)) b!6422080))

(assert (= (and b!6422080 (not res!2639454)) b!6422082))

(assert (= (or b!6422084 b!6422081 b!6422089) bm!552175))

(declare-fun m!7216524 () Bool)

(assert (=> b!6422078 m!7216524))

(assert (=> b!6422078 m!7216524))

(declare-fun m!7216526 () Bool)

(assert (=> b!6422078 m!7216526))

(assert (=> b!6422080 m!7216524))

(assert (=> b!6422080 m!7216524))

(assert (=> b!6422080 m!7216526))

(declare-fun m!7216528 () Bool)

(assert (=> b!6422087 m!7216528))

(declare-fun m!7216530 () Bool)

(assert (=> bm!552175 m!7216530))

(declare-fun m!7216532 () Bool)

(assert (=> b!6422086 m!7216532))

(assert (=> b!6422085 m!7216528))

(assert (=> b!6422085 m!7216528))

(declare-fun m!7216534 () Bool)

(assert (=> b!6422085 m!7216534))

(assert (=> b!6422085 m!7216524))

(assert (=> b!6422085 m!7216534))

(assert (=> b!6422085 m!7216524))

(declare-fun m!7216536 () Bool)

(assert (=> b!6422085 m!7216536))

(assert (=> b!6422082 m!7216528))

(assert (=> d!2013424 m!7216530))

(declare-fun m!7216538 () Bool)

(assert (=> d!2013424 m!7216538))

(assert (=> b!6421304 d!2013424))

(declare-fun bs!1614698 () Bool)

(declare-fun d!2013426 () Bool)

(assert (= bs!1614698 (and d!2013426 b!6421803)))

(declare-fun lambda!354883 () Int)

(assert (=> bs!1614698 (not (= lambda!354883 lambda!354869))))

(declare-fun bs!1614699 () Bool)

(assert (= bs!1614699 (and d!2013426 b!6421798)))

(assert (=> bs!1614699 (not (= lambda!354883 lambda!354870))))

(declare-fun bs!1614700 () Bool)

(assert (= bs!1614700 (and d!2013426 d!2013302)))

(assert (=> bs!1614700 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) lt!2377164) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354883 lambda!354848))))

(declare-fun bs!1614701 () Bool)

(assert (= bs!1614701 (and d!2013426 b!6421294)))

(assert (=> bs!1614701 (not (= lambda!354883 lambda!354818))))

(declare-fun bs!1614702 () Bool)

(assert (= bs!1614702 (and d!2013426 b!6421322)))

(assert (=> bs!1614702 (= lambda!354883 lambda!354819)))

(declare-fun bs!1614703 () Bool)

(assert (= bs!1614703 (and d!2013426 d!2013318)))

(assert (=> bs!1614703 (not (= lambda!354883 lambda!354861))))

(assert (=> bs!1614701 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) lt!2377164) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354883 lambda!354817))))

(declare-fun bs!1614704 () Bool)

(assert (= bs!1614704 (and d!2013426 b!6421303)))

(assert (=> bs!1614704 (not (= lambda!354883 lambda!354815))))

(assert (=> bs!1614703 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) lt!2377164) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354883 lambda!354860))))

(assert (=> bs!1614704 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) (regOne!33162 r!7292)) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354883 lambda!354814))))

(assert (=> d!2013426 true))

(assert (=> d!2013426 true))

(assert (=> d!2013426 true))

(assert (=> d!2013426 (= (isDefined!12919 (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 Nil!65150 (_1!36607 lt!2377178) (_1!36607 lt!2377178))) (Exists!3395 lambda!354883))))

(declare-fun lt!2377311 () Unit!158631)

(assert (=> d!2013426 (= lt!2377311 (choose!47720 (reg!16654 (regOne!33162 r!7292)) lt!2377164 (_1!36607 lt!2377178)))))

(assert (=> d!2013426 (validRegex!8061 (reg!16654 (regOne!33162 r!7292)))))

(assert (=> d!2013426 (= (lemmaFindConcatSeparationEquivalentToExists!2394 (reg!16654 (regOne!33162 r!7292)) lt!2377164 (_1!36607 lt!2377178)) lt!2377311)))

(declare-fun bs!1614705 () Bool)

(assert (= bs!1614705 d!2013426))

(declare-fun m!7216540 () Bool)

(assert (=> bs!1614705 m!7216540))

(assert (=> bs!1614705 m!7215810))

(assert (=> bs!1614705 m!7215814))

(declare-fun m!7216542 () Bool)

(assert (=> bs!1614705 m!7216542))

(assert (=> bs!1614705 m!7215814))

(assert (=> bs!1614705 m!7215816))

(assert (=> b!6421322 d!2013426))

(declare-fun b!6422109 () Bool)

(declare-fun e!3896482 () Bool)

(declare-fun call!552188 () Bool)

(assert (=> b!6422109 (= e!3896482 call!552188)))

(declare-fun bm!552182 () Bool)

(declare-fun c!1173292 () Bool)

(declare-fun c!1173291 () Bool)

(assert (=> bm!552182 (= call!552188 (validRegex!8061 (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))))

(declare-fun d!2013428 () Bool)

(declare-fun res!2639468 () Bool)

(declare-fun e!3896485 () Bool)

(assert (=> d!2013428 (=> res!2639468 e!3896485)))

(assert (=> d!2013428 (= res!2639468 ((_ is ElementMatch!16325) (reg!16654 (regOne!33162 r!7292))))))

(assert (=> d!2013428 (= (validRegex!8061 (reg!16654 (regOne!33162 r!7292))) e!3896485)))

(declare-fun bm!552183 () Bool)

(declare-fun call!552189 () Bool)

(assert (=> bm!552183 (= call!552189 call!552188)))

(declare-fun b!6422110 () Bool)

(declare-fun e!3896483 () Bool)

(declare-fun call!552187 () Bool)

(assert (=> b!6422110 (= e!3896483 call!552187)))

(declare-fun b!6422111 () Bool)

(declare-fun res!2639466 () Bool)

(declare-fun e!3896479 () Bool)

(assert (=> b!6422111 (=> res!2639466 e!3896479)))

(assert (=> b!6422111 (= res!2639466 (not ((_ is Concat!25170) (reg!16654 (regOne!33162 r!7292)))))))

(declare-fun e!3896480 () Bool)

(assert (=> b!6422111 (= e!3896480 e!3896479)))

(declare-fun b!6422112 () Bool)

(declare-fun e!3896484 () Bool)

(assert (=> b!6422112 (= e!3896485 e!3896484)))

(assert (=> b!6422112 (= c!1173292 ((_ is Star!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun b!6422113 () Bool)

(assert (=> b!6422113 (= e!3896484 e!3896482)))

(declare-fun res!2639469 () Bool)

(assert (=> b!6422113 (= res!2639469 (not (nullable!6318 (reg!16654 (reg!16654 (regOne!33162 r!7292))))))))

(assert (=> b!6422113 (=> (not res!2639469) (not e!3896482))))

(declare-fun b!6422114 () Bool)

(assert (=> b!6422114 (= e!3896484 e!3896480)))

(assert (=> b!6422114 (= c!1173291 ((_ is Union!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun b!6422115 () Bool)

(declare-fun e!3896481 () Bool)

(assert (=> b!6422115 (= e!3896481 call!552187)))

(declare-fun b!6422116 () Bool)

(declare-fun res!2639467 () Bool)

(assert (=> b!6422116 (=> (not res!2639467) (not e!3896481))))

(assert (=> b!6422116 (= res!2639467 call!552189)))

(assert (=> b!6422116 (= e!3896480 e!3896481)))

(declare-fun bm!552184 () Bool)

(assert (=> bm!552184 (= call!552187 (validRegex!8061 (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun b!6422117 () Bool)

(assert (=> b!6422117 (= e!3896479 e!3896483)))

(declare-fun res!2639470 () Bool)

(assert (=> b!6422117 (=> (not res!2639470) (not e!3896483))))

(assert (=> b!6422117 (= res!2639470 call!552189)))

(assert (= (and d!2013428 (not res!2639468)) b!6422112))

(assert (= (and b!6422112 c!1173292) b!6422113))

(assert (= (and b!6422112 (not c!1173292)) b!6422114))

(assert (= (and b!6422113 res!2639469) b!6422109))

(assert (= (and b!6422114 c!1173291) b!6422116))

(assert (= (and b!6422114 (not c!1173291)) b!6422111))

(assert (= (and b!6422116 res!2639467) b!6422115))

(assert (= (and b!6422111 (not res!2639466)) b!6422117))

(assert (= (and b!6422117 res!2639470) b!6422110))

(assert (= (or b!6422115 b!6422110) bm!552184))

(assert (= (or b!6422116 b!6422117) bm!552183))

(assert (= (or b!6422109 bm!552183) bm!552182))

(declare-fun m!7216544 () Bool)

(assert (=> bm!552182 m!7216544))

(declare-fun m!7216546 () Bool)

(assert (=> b!6422113 m!7216546))

(declare-fun m!7216548 () Bool)

(assert (=> bm!552184 m!7216548))

(assert (=> b!6421322 d!2013428))

(declare-fun d!2013430 () Bool)

(assert (=> d!2013430 (= (isDefined!12919 (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 Nil!65150 (_1!36607 lt!2377178) (_1!36607 lt!2377178))) (not (isEmpty!37311 (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 Nil!65150 (_1!36607 lt!2377178) (_1!36607 lt!2377178)))))))

(declare-fun bs!1614706 () Bool)

(assert (= bs!1614706 d!2013430))

(assert (=> bs!1614706 m!7215814))

(declare-fun m!7216550 () Bool)

(assert (=> bs!1614706 m!7216550))

(assert (=> b!6421322 d!2013430))

(declare-fun d!2013432 () Bool)

(assert (=> d!2013432 (= (Exists!3395 lambda!354819) (choose!47719 lambda!354819))))

(declare-fun bs!1614707 () Bool)

(assert (= bs!1614707 d!2013432))

(declare-fun m!7216552 () Bool)

(assert (=> bs!1614707 m!7216552))

(assert (=> b!6421322 d!2013432))

(declare-fun bs!1614708 () Bool)

(declare-fun b!6422126 () Bool)

(assert (= bs!1614708 (and b!6422126 b!6421803)))

(declare-fun lambda!354884 () Int)

(assert (=> bs!1614708 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 lt!2377164) (reg!16654 r!7292)) (= lt!2377164 r!7292)) (= lambda!354884 lambda!354869))))

(declare-fun bs!1614709 () Bool)

(assert (= bs!1614709 (and b!6422126 d!2013426)))

(assert (=> bs!1614709 (not (= lambda!354884 lambda!354883))))

(declare-fun bs!1614710 () Bool)

(assert (= bs!1614710 (and b!6422126 b!6421798)))

(assert (=> bs!1614710 (not (= lambda!354884 lambda!354870))))

(declare-fun bs!1614711 () Bool)

(assert (= bs!1614711 (and b!6422126 d!2013302)))

(assert (=> bs!1614711 (not (= lambda!354884 lambda!354848))))

(declare-fun bs!1614712 () Bool)

(assert (= bs!1614712 (and b!6422126 b!6421294)))

(assert (=> bs!1614712 (not (= lambda!354884 lambda!354818))))

(declare-fun bs!1614713 () Bool)

(assert (= bs!1614713 (and b!6422126 b!6421322)))

(assert (=> bs!1614713 (not (= lambda!354884 lambda!354819))))

(declare-fun bs!1614714 () Bool)

(assert (= bs!1614714 (and b!6422126 d!2013318)))

(assert (=> bs!1614714 (not (= lambda!354884 lambda!354861))))

(assert (=> bs!1614712 (not (= lambda!354884 lambda!354817))))

(declare-fun bs!1614715 () Bool)

(assert (= bs!1614715 (and b!6422126 b!6421303)))

(assert (=> bs!1614715 (not (= lambda!354884 lambda!354815))))

(assert (=> bs!1614714 (not (= lambda!354884 lambda!354860))))

(assert (=> bs!1614715 (not (= lambda!354884 lambda!354814))))

(assert (=> b!6422126 true))

(assert (=> b!6422126 true))

(declare-fun bs!1614716 () Bool)

(declare-fun b!6422121 () Bool)

(assert (= bs!1614716 (and b!6422121 b!6421803)))

(declare-fun lambda!354885 () Int)

(assert (=> bs!1614716 (not (= lambda!354885 lambda!354869))))

(declare-fun bs!1614717 () Bool)

(assert (= bs!1614717 (and b!6422121 d!2013426)))

(assert (=> bs!1614717 (not (= lambda!354885 lambda!354883))))

(declare-fun bs!1614718 () Bool)

(assert (= bs!1614718 (and b!6422121 b!6421798)))

(assert (=> bs!1614718 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 lt!2377164) (regOne!33162 r!7292)) (= (regTwo!33162 lt!2377164) (regTwo!33162 r!7292))) (= lambda!354885 lambda!354870))))

(declare-fun bs!1614719 () Bool)

(assert (= bs!1614719 (and b!6422121 d!2013302)))

(assert (=> bs!1614719 (not (= lambda!354885 lambda!354848))))

(declare-fun bs!1614720 () Bool)

(assert (= bs!1614720 (and b!6422121 b!6421294)))

(assert (=> bs!1614720 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 lt!2377164) lt!2377164) (= (regTwo!33162 lt!2377164) (regTwo!33162 r!7292))) (= lambda!354885 lambda!354818))))

(declare-fun bs!1614721 () Bool)

(assert (= bs!1614721 (and b!6422121 d!2013318)))

(assert (=> bs!1614721 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 lt!2377164) lt!2377164) (= (regTwo!33162 lt!2377164) (regTwo!33162 r!7292))) (= lambda!354885 lambda!354861))))

(assert (=> bs!1614720 (not (= lambda!354885 lambda!354817))))

(declare-fun bs!1614722 () Bool)

(assert (= bs!1614722 (and b!6422121 b!6421303)))

(assert (=> bs!1614722 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 lt!2377164) (regOne!33162 r!7292)) (= (regTwo!33162 lt!2377164) (regTwo!33162 r!7292))) (= lambda!354885 lambda!354815))))

(assert (=> bs!1614721 (not (= lambda!354885 lambda!354860))))

(assert (=> bs!1614722 (not (= lambda!354885 lambda!354814))))

(declare-fun bs!1614723 () Bool)

(assert (= bs!1614723 (and b!6422121 b!6421322)))

(assert (=> bs!1614723 (not (= lambda!354885 lambda!354819))))

(declare-fun bs!1614724 () Bool)

(assert (= bs!1614724 (and b!6422121 b!6422126)))

(assert (=> bs!1614724 (not (= lambda!354885 lambda!354884))))

(assert (=> b!6422121 true))

(assert (=> b!6422121 true))

(declare-fun b!6422118 () Bool)

(declare-fun e!3896492 () Bool)

(assert (=> b!6422118 (= e!3896492 (= (_1!36607 lt!2377178) (Cons!65150 (c!1173074 lt!2377164) Nil!65150)))))

(declare-fun b!6422119 () Bool)

(declare-fun e!3896491 () Bool)

(declare-fun e!3896490 () Bool)

(assert (=> b!6422119 (= e!3896491 e!3896490)))

(declare-fun c!1173296 () Bool)

(assert (=> b!6422119 (= c!1173296 ((_ is Star!16325) lt!2377164))))

(declare-fun b!6422120 () Bool)

(declare-fun res!2639473 () Bool)

(declare-fun e!3896489 () Bool)

(assert (=> b!6422120 (=> res!2639473 e!3896489)))

(declare-fun call!552190 () Bool)

(assert (=> b!6422120 (= res!2639473 call!552190)))

(assert (=> b!6422120 (= e!3896490 e!3896489)))

(declare-fun call!552191 () Bool)

(assert (=> b!6422121 (= e!3896490 call!552191)))

(declare-fun b!6422122 () Bool)

(declare-fun e!3896486 () Bool)

(assert (=> b!6422122 (= e!3896491 e!3896486)))

(declare-fun res!2639471 () Bool)

(assert (=> b!6422122 (= res!2639471 (matchRSpec!3426 (regOne!33163 lt!2377164) (_1!36607 lt!2377178)))))

(assert (=> b!6422122 (=> res!2639471 e!3896486)))

(declare-fun b!6422123 () Bool)

(assert (=> b!6422123 (= e!3896486 (matchRSpec!3426 (regTwo!33163 lt!2377164) (_1!36607 lt!2377178)))))

(declare-fun b!6422124 () Bool)

(declare-fun c!1173294 () Bool)

(assert (=> b!6422124 (= c!1173294 ((_ is Union!16325) lt!2377164))))

(assert (=> b!6422124 (= e!3896492 e!3896491)))

(declare-fun d!2013434 () Bool)

(declare-fun c!1173295 () Bool)

(assert (=> d!2013434 (= c!1173295 ((_ is EmptyExpr!16325) lt!2377164))))

(declare-fun e!3896487 () Bool)

(assert (=> d!2013434 (= (matchRSpec!3426 lt!2377164 (_1!36607 lt!2377178)) e!3896487)))

(declare-fun b!6422125 () Bool)

(declare-fun e!3896488 () Bool)

(assert (=> b!6422125 (= e!3896487 e!3896488)))

(declare-fun res!2639472 () Bool)

(assert (=> b!6422125 (= res!2639472 (not ((_ is EmptyLang!16325) lt!2377164)))))

(assert (=> b!6422125 (=> (not res!2639472) (not e!3896488))))

(assert (=> b!6422126 (= e!3896489 call!552191)))

(declare-fun bm!552185 () Bool)

(assert (=> bm!552185 (= call!552191 (Exists!3395 (ite c!1173296 lambda!354884 lambda!354885)))))

(declare-fun b!6422127 () Bool)

(assert (=> b!6422127 (= e!3896487 call!552190)))

(declare-fun b!6422128 () Bool)

(declare-fun c!1173293 () Bool)

(assert (=> b!6422128 (= c!1173293 ((_ is ElementMatch!16325) lt!2377164))))

(assert (=> b!6422128 (= e!3896488 e!3896492)))

(declare-fun bm!552186 () Bool)

(assert (=> bm!552186 (= call!552190 (isEmpty!37310 (_1!36607 lt!2377178)))))

(assert (= (and d!2013434 c!1173295) b!6422127))

(assert (= (and d!2013434 (not c!1173295)) b!6422125))

(assert (= (and b!6422125 res!2639472) b!6422128))

(assert (= (and b!6422128 c!1173293) b!6422118))

(assert (= (and b!6422128 (not c!1173293)) b!6422124))

(assert (= (and b!6422124 c!1173294) b!6422122))

(assert (= (and b!6422124 (not c!1173294)) b!6422119))

(assert (= (and b!6422122 (not res!2639471)) b!6422123))

(assert (= (and b!6422119 c!1173296) b!6422120))

(assert (= (and b!6422119 (not c!1173296)) b!6422121))

(assert (= (and b!6422120 (not res!2639473)) b!6422126))

(assert (= (or b!6422126 b!6422121) bm!552185))

(assert (= (or b!6422127 b!6422120) bm!552186))

(declare-fun m!7216554 () Bool)

(assert (=> b!6422122 m!7216554))

(declare-fun m!7216556 () Bool)

(assert (=> b!6422123 m!7216556))

(declare-fun m!7216558 () Bool)

(assert (=> bm!552185 m!7216558))

(assert (=> bm!552186 m!7215768))

(assert (=> b!6421322 d!2013434))

(declare-fun b!6422129 () Bool)

(declare-fun e!3896494 () Option!16216)

(declare-fun e!3896497 () Option!16216)

(assert (=> b!6422129 (= e!3896494 e!3896497)))

(declare-fun c!1173297 () Bool)

(assert (=> b!6422129 (= c!1173297 ((_ is Nil!65150) (_1!36607 lt!2377178)))))

(declare-fun b!6422130 () Bool)

(declare-fun e!3896495 () Bool)

(assert (=> b!6422130 (= e!3896495 (matchR!8508 lt!2377164 (_1!36607 lt!2377178)))))

(declare-fun d!2013436 () Bool)

(declare-fun e!3896496 () Bool)

(assert (=> d!2013436 e!3896496))

(declare-fun res!2639475 () Bool)

(assert (=> d!2013436 (=> res!2639475 e!3896496)))

(declare-fun e!3896493 () Bool)

(assert (=> d!2013436 (= res!2639475 e!3896493)))

(declare-fun res!2639476 () Bool)

(assert (=> d!2013436 (=> (not res!2639476) (not e!3896493))))

(declare-fun lt!2377314 () Option!16216)

(assert (=> d!2013436 (= res!2639476 (isDefined!12919 lt!2377314))))

(assert (=> d!2013436 (= lt!2377314 e!3896494)))

(declare-fun c!1173298 () Bool)

(assert (=> d!2013436 (= c!1173298 e!3896495)))

(declare-fun res!2639478 () Bool)

(assert (=> d!2013436 (=> (not res!2639478) (not e!3896495))))

(assert (=> d!2013436 (= res!2639478 (matchR!8508 (reg!16654 (regOne!33162 r!7292)) Nil!65150))))

(assert (=> d!2013436 (validRegex!8061 (reg!16654 (regOne!33162 r!7292)))))

(assert (=> d!2013436 (= (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 Nil!65150 (_1!36607 lt!2377178) (_1!36607 lt!2377178)) lt!2377314)))

(declare-fun b!6422131 () Bool)

(assert (=> b!6422131 (= e!3896497 None!16215)))

(declare-fun b!6422132 () Bool)

(declare-fun lt!2377313 () Unit!158631)

(declare-fun lt!2377312 () Unit!158631)

(assert (=> b!6422132 (= lt!2377313 lt!2377312)))

(assert (=> b!6422132 (= (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (t!378888 (_1!36607 lt!2377178))) (_1!36607 lt!2377178))))

(assert (=> b!6422132 (= lt!2377312 (lemmaMoveElementToOtherListKeepsConcatEq!2487 Nil!65150 (h!71598 (_1!36607 lt!2377178)) (t!378888 (_1!36607 lt!2377178)) (_1!36607 lt!2377178)))))

(assert (=> b!6422132 (= e!3896497 (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (t!378888 (_1!36607 lt!2377178)) (_1!36607 lt!2377178)))))

(declare-fun b!6422133 () Bool)

(assert (=> b!6422133 (= e!3896496 (not (isDefined!12919 lt!2377314)))))

(declare-fun b!6422134 () Bool)

(assert (=> b!6422134 (= e!3896494 (Some!16215 (tuple2!66609 Nil!65150 (_1!36607 lt!2377178))))))

(declare-fun b!6422135 () Bool)

(declare-fun res!2639474 () Bool)

(assert (=> b!6422135 (=> (not res!2639474) (not e!3896493))))

(assert (=> b!6422135 (= res!2639474 (matchR!8508 (reg!16654 (regOne!33162 r!7292)) (_1!36607 (get!22571 lt!2377314))))))

(declare-fun b!6422136 () Bool)

(assert (=> b!6422136 (= e!3896493 (= (++!14393 (_1!36607 (get!22571 lt!2377314)) (_2!36607 (get!22571 lt!2377314))) (_1!36607 lt!2377178)))))

(declare-fun b!6422137 () Bool)

(declare-fun res!2639477 () Bool)

(assert (=> b!6422137 (=> (not res!2639477) (not e!3896493))))

(assert (=> b!6422137 (= res!2639477 (matchR!8508 lt!2377164 (_2!36607 (get!22571 lt!2377314))))))

(assert (= (and d!2013436 res!2639478) b!6422130))

(assert (= (and d!2013436 c!1173298) b!6422134))

(assert (= (and d!2013436 (not c!1173298)) b!6422129))

(assert (= (and b!6422129 c!1173297) b!6422131))

(assert (= (and b!6422129 (not c!1173297)) b!6422132))

(assert (= (and d!2013436 res!2639476) b!6422135))

(assert (= (and b!6422135 res!2639474) b!6422137))

(assert (= (and b!6422137 res!2639477) b!6422136))

(assert (= (and d!2013436 (not res!2639475)) b!6422133))

(assert (=> b!6422130 m!7215868))

(declare-fun m!7216560 () Bool)

(assert (=> d!2013436 m!7216560))

(declare-fun m!7216562 () Bool)

(assert (=> d!2013436 m!7216562))

(assert (=> d!2013436 m!7215810))

(declare-fun m!7216564 () Bool)

(assert (=> b!6422136 m!7216564))

(declare-fun m!7216566 () Bool)

(assert (=> b!6422136 m!7216566))

(assert (=> b!6422133 m!7216560))

(assert (=> b!6422137 m!7216564))

(declare-fun m!7216568 () Bool)

(assert (=> b!6422137 m!7216568))

(declare-fun m!7216570 () Bool)

(assert (=> b!6422132 m!7216570))

(assert (=> b!6422132 m!7216570))

(declare-fun m!7216572 () Bool)

(assert (=> b!6422132 m!7216572))

(declare-fun m!7216574 () Bool)

(assert (=> b!6422132 m!7216574))

(assert (=> b!6422132 m!7216570))

(declare-fun m!7216576 () Bool)

(assert (=> b!6422132 m!7216576))

(assert (=> b!6422135 m!7216564))

(declare-fun m!7216578 () Bool)

(assert (=> b!6422135 m!7216578))

(assert (=> b!6421322 d!2013436))

(declare-fun d!2013438 () Bool)

(assert (=> d!2013438 (= (matchR!8508 lt!2377164 (_1!36607 lt!2377178)) (matchRSpec!3426 lt!2377164 (_1!36607 lt!2377178)))))

(declare-fun lt!2377315 () Unit!158631)

(assert (=> d!2013438 (= lt!2377315 (choose!47722 lt!2377164 (_1!36607 lt!2377178)))))

(assert (=> d!2013438 (validRegex!8061 lt!2377164)))

(assert (=> d!2013438 (= (mainMatchTheorem!3426 lt!2377164 (_1!36607 lt!2377178)) lt!2377315)))

(declare-fun bs!1614725 () Bool)

(assert (= bs!1614725 d!2013438))

(assert (=> bs!1614725 m!7215868))

(assert (=> bs!1614725 m!7215822))

(declare-fun m!7216580 () Bool)

(assert (=> bs!1614725 m!7216580))

(assert (=> bs!1614725 m!7216180))

(assert (=> b!6421322 d!2013438))

(declare-fun b!6422138 () Bool)

(declare-fun e!3896499 () Option!16216)

(declare-fun e!3896502 () Option!16216)

(assert (=> b!6422138 (= e!3896499 e!3896502)))

(declare-fun c!1173299 () Bool)

(assert (=> b!6422138 (= c!1173299 ((_ is Nil!65150) s!2326))))

(declare-fun b!6422139 () Bool)

(declare-fun e!3896500 () Bool)

(assert (=> b!6422139 (= e!3896500 (matchR!8508 (regTwo!33162 r!7292) s!2326))))

(declare-fun d!2013440 () Bool)

(declare-fun e!3896501 () Bool)

(assert (=> d!2013440 e!3896501))

(declare-fun res!2639480 () Bool)

(assert (=> d!2013440 (=> res!2639480 e!3896501)))

(declare-fun e!3896498 () Bool)

(assert (=> d!2013440 (= res!2639480 e!3896498)))

(declare-fun res!2639481 () Bool)

(assert (=> d!2013440 (=> (not res!2639481) (not e!3896498))))

(declare-fun lt!2377318 () Option!16216)

(assert (=> d!2013440 (= res!2639481 (isDefined!12919 lt!2377318))))

(assert (=> d!2013440 (= lt!2377318 e!3896499)))

(declare-fun c!1173300 () Bool)

(assert (=> d!2013440 (= c!1173300 e!3896500)))

(declare-fun res!2639483 () Bool)

(assert (=> d!2013440 (=> (not res!2639483) (not e!3896500))))

(assert (=> d!2013440 (= res!2639483 (matchR!8508 (regOne!33162 r!7292) Nil!65150))))

(assert (=> d!2013440 (validRegex!8061 (regOne!33162 r!7292))))

(assert (=> d!2013440 (= (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326) lt!2377318)))

(declare-fun b!6422140 () Bool)

(assert (=> b!6422140 (= e!3896502 None!16215)))

(declare-fun b!6422141 () Bool)

(declare-fun lt!2377317 () Unit!158631)

(declare-fun lt!2377316 () Unit!158631)

(assert (=> b!6422141 (= lt!2377317 lt!2377316)))

(assert (=> b!6422141 (= (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326)) s!2326)))

(assert (=> b!6422141 (= lt!2377316 (lemmaMoveElementToOtherListKeepsConcatEq!2487 Nil!65150 (h!71598 s!2326) (t!378888 s!2326) s!2326))))

(assert (=> b!6422141 (= e!3896502 (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326) s!2326))))

(declare-fun b!6422142 () Bool)

(assert (=> b!6422142 (= e!3896501 (not (isDefined!12919 lt!2377318)))))

(declare-fun b!6422143 () Bool)

(assert (=> b!6422143 (= e!3896499 (Some!16215 (tuple2!66609 Nil!65150 s!2326)))))

(declare-fun b!6422144 () Bool)

(declare-fun res!2639479 () Bool)

(assert (=> b!6422144 (=> (not res!2639479) (not e!3896498))))

(assert (=> b!6422144 (= res!2639479 (matchR!8508 (regOne!33162 r!7292) (_1!36607 (get!22571 lt!2377318))))))

(declare-fun b!6422145 () Bool)

(assert (=> b!6422145 (= e!3896498 (= (++!14393 (_1!36607 (get!22571 lt!2377318)) (_2!36607 (get!22571 lt!2377318))) s!2326))))

(declare-fun b!6422146 () Bool)

(declare-fun res!2639482 () Bool)

(assert (=> b!6422146 (=> (not res!2639482) (not e!3896498))))

(assert (=> b!6422146 (= res!2639482 (matchR!8508 (regTwo!33162 r!7292) (_2!36607 (get!22571 lt!2377318))))))

(assert (= (and d!2013440 res!2639483) b!6422139))

(assert (= (and d!2013440 c!1173300) b!6422143))

(assert (= (and d!2013440 (not c!1173300)) b!6422138))

(assert (= (and b!6422138 c!1173299) b!6422140))

(assert (= (and b!6422138 (not c!1173299)) b!6422141))

(assert (= (and d!2013440 res!2639481) b!6422144))

(assert (= (and b!6422144 res!2639479) b!6422146))

(assert (= (and b!6422146 res!2639482) b!6422145))

(assert (= (and d!2013440 (not res!2639480)) b!6422142))

(assert (=> b!6422139 m!7216174))

(declare-fun m!7216582 () Bool)

(assert (=> d!2013440 m!7216582))

(declare-fun m!7216584 () Bool)

(assert (=> d!2013440 m!7216584))

(declare-fun m!7216586 () Bool)

(assert (=> d!2013440 m!7216586))

(declare-fun m!7216588 () Bool)

(assert (=> b!6422145 m!7216588))

(declare-fun m!7216590 () Bool)

(assert (=> b!6422145 m!7216590))

(assert (=> b!6422142 m!7216582))

(assert (=> b!6422146 m!7216588))

(declare-fun m!7216592 () Bool)

(assert (=> b!6422146 m!7216592))

(assert (=> b!6422141 m!7216188))

(assert (=> b!6422141 m!7216188))

(assert (=> b!6422141 m!7216190))

(assert (=> b!6422141 m!7216192))

(assert (=> b!6422141 m!7216188))

(declare-fun m!7216594 () Bool)

(assert (=> b!6422141 m!7216594))

(assert (=> b!6422144 m!7216588))

(declare-fun m!7216596 () Bool)

(assert (=> b!6422144 m!7216596))

(assert (=> b!6421303 d!2013440))

(declare-fun d!2013442 () Bool)

(assert (=> d!2013442 (= (Exists!3395 lambda!354815) (choose!47719 lambda!354815))))

(declare-fun bs!1614726 () Bool)

(assert (= bs!1614726 d!2013442))

(declare-fun m!7216598 () Bool)

(assert (=> bs!1614726 m!7216598))

(assert (=> b!6421303 d!2013442))

(declare-fun d!2013444 () Bool)

(assert (=> d!2013444 (= (Exists!3395 lambda!354814) (choose!47719 lambda!354814))))

(declare-fun bs!1614727 () Bool)

(assert (= bs!1614727 d!2013444))

(declare-fun m!7216600 () Bool)

(assert (=> bs!1614727 m!7216600))

(assert (=> b!6421303 d!2013444))

(declare-fun bs!1614728 () Bool)

(declare-fun d!2013446 () Bool)

(assert (= bs!1614728 (and d!2013446 b!6421803)))

(declare-fun lambda!354886 () Int)

(assert (=> bs!1614728 (not (= lambda!354886 lambda!354869))))

(declare-fun bs!1614729 () Bool)

(assert (= bs!1614729 (and d!2013446 d!2013426)))

(assert (=> bs!1614729 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354886 lambda!354883))))

(declare-fun bs!1614730 () Bool)

(assert (= bs!1614730 (and d!2013446 b!6421798)))

(assert (=> bs!1614730 (not (= lambda!354886 lambda!354870))))

(declare-fun bs!1614731 () Bool)

(assert (= bs!1614731 (and d!2013446 d!2013302)))

(assert (=> bs!1614731 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354886 lambda!354848))))

(declare-fun bs!1614732 () Bool)

(assert (= bs!1614732 (and d!2013446 b!6422121)))

(assert (=> bs!1614732 (not (= lambda!354886 lambda!354885))))

(declare-fun bs!1614733 () Bool)

(assert (= bs!1614733 (and d!2013446 b!6421294)))

(assert (=> bs!1614733 (not (= lambda!354886 lambda!354818))))

(declare-fun bs!1614734 () Bool)

(assert (= bs!1614734 (and d!2013446 d!2013318)))

(assert (=> bs!1614734 (not (= lambda!354886 lambda!354861))))

(assert (=> bs!1614733 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354886 lambda!354817))))

(declare-fun bs!1614735 () Bool)

(assert (= bs!1614735 (and d!2013446 b!6421303)))

(assert (=> bs!1614735 (not (= lambda!354886 lambda!354815))))

(assert (=> bs!1614734 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354886 lambda!354860))))

(assert (=> bs!1614735 (= lambda!354886 lambda!354814)))

(declare-fun bs!1614736 () Bool)

(assert (= bs!1614736 (and d!2013446 b!6421322)))

(assert (=> bs!1614736 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354886 lambda!354819))))

(declare-fun bs!1614737 () Bool)

(assert (= bs!1614737 (and d!2013446 b!6422126)))

(assert (=> bs!1614737 (not (= lambda!354886 lambda!354884))))

(assert (=> d!2013446 true))

(assert (=> d!2013446 true))

(assert (=> d!2013446 true))

(assert (=> d!2013446 (= (isDefined!12919 (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326)) (Exists!3395 lambda!354886))))

(declare-fun lt!2377319 () Unit!158631)

(assert (=> d!2013446 (= lt!2377319 (choose!47720 (regOne!33162 r!7292) (regTwo!33162 r!7292) s!2326))))

(assert (=> d!2013446 (validRegex!8061 (regOne!33162 r!7292))))

(assert (=> d!2013446 (= (lemmaFindConcatSeparationEquivalentToExists!2394 (regOne!33162 r!7292) (regTwo!33162 r!7292) s!2326) lt!2377319)))

(declare-fun bs!1614738 () Bool)

(assert (= bs!1614738 d!2013446))

(declare-fun m!7216602 () Bool)

(assert (=> bs!1614738 m!7216602))

(assert (=> bs!1614738 m!7216586))

(assert (=> bs!1614738 m!7215850))

(declare-fun m!7216604 () Bool)

(assert (=> bs!1614738 m!7216604))

(assert (=> bs!1614738 m!7215850))

(assert (=> bs!1614738 m!7215852))

(assert (=> b!6421303 d!2013446))

(declare-fun bs!1614739 () Bool)

(declare-fun d!2013448 () Bool)

(assert (= bs!1614739 (and d!2013448 b!6421803)))

(declare-fun lambda!354887 () Int)

(assert (=> bs!1614739 (not (= lambda!354887 lambda!354869))))

(declare-fun bs!1614740 () Bool)

(assert (= bs!1614740 (and d!2013448 d!2013426)))

(assert (=> bs!1614740 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354887 lambda!354883))))

(declare-fun bs!1614741 () Bool)

(assert (= bs!1614741 (and d!2013448 b!6421798)))

(assert (=> bs!1614741 (not (= lambda!354887 lambda!354870))))

(declare-fun bs!1614742 () Bool)

(assert (= bs!1614742 (and d!2013448 d!2013302)))

(assert (=> bs!1614742 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354887 lambda!354848))))

(declare-fun bs!1614743 () Bool)

(assert (= bs!1614743 (and d!2013448 b!6422121)))

(assert (=> bs!1614743 (not (= lambda!354887 lambda!354885))))

(declare-fun bs!1614744 () Bool)

(assert (= bs!1614744 (and d!2013448 b!6421294)))

(assert (=> bs!1614744 (not (= lambda!354887 lambda!354818))))

(declare-fun bs!1614745 () Bool)

(assert (= bs!1614745 (and d!2013448 d!2013318)))

(assert (=> bs!1614745 (not (= lambda!354887 lambda!354861))))

(assert (=> bs!1614744 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354887 lambda!354817))))

(declare-fun bs!1614746 () Bool)

(assert (= bs!1614746 (and d!2013448 b!6421303)))

(assert (=> bs!1614746 (not (= lambda!354887 lambda!354815))))

(assert (=> bs!1614745 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354887 lambda!354860))))

(assert (=> bs!1614746 (= lambda!354887 lambda!354814)))

(declare-fun bs!1614747 () Bool)

(assert (= bs!1614747 (and d!2013448 d!2013446)))

(assert (=> bs!1614747 (= lambda!354887 lambda!354886)))

(declare-fun bs!1614748 () Bool)

(assert (= bs!1614748 (and d!2013448 b!6421322)))

(assert (=> bs!1614748 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354887 lambda!354819))))

(declare-fun bs!1614749 () Bool)

(assert (= bs!1614749 (and d!2013448 b!6422126)))

(assert (=> bs!1614749 (not (= lambda!354887 lambda!354884))))

(assert (=> d!2013448 true))

(assert (=> d!2013448 true))

(assert (=> d!2013448 true))

(declare-fun lambda!354888 () Int)

(assert (=> bs!1614739 (not (= lambda!354888 lambda!354869))))

(assert (=> bs!1614740 (not (= lambda!354888 lambda!354883))))

(declare-fun bs!1614750 () Bool)

(assert (= bs!1614750 d!2013448))

(assert (=> bs!1614750 (not (= lambda!354888 lambda!354887))))

(assert (=> bs!1614741 (= lambda!354888 lambda!354870)))

(assert (=> bs!1614742 (not (= lambda!354888 lambda!354848))))

(assert (=> bs!1614743 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (regOne!33162 lt!2377164)) (= (regTwo!33162 r!7292) (regTwo!33162 lt!2377164))) (= lambda!354888 lambda!354885))))

(assert (=> bs!1614744 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354888 lambda!354818))))

(assert (=> bs!1614745 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354888 lambda!354861))))

(assert (=> bs!1614744 (not (= lambda!354888 lambda!354817))))

(assert (=> bs!1614746 (= lambda!354888 lambda!354815)))

(assert (=> bs!1614745 (not (= lambda!354888 lambda!354860))))

(assert (=> bs!1614746 (not (= lambda!354888 lambda!354814))))

(assert (=> bs!1614747 (not (= lambda!354888 lambda!354886))))

(assert (=> bs!1614748 (not (= lambda!354888 lambda!354819))))

(assert (=> bs!1614749 (not (= lambda!354888 lambda!354884))))

(assert (=> d!2013448 true))

(assert (=> d!2013448 true))

(assert (=> d!2013448 true))

(assert (=> d!2013448 (= (Exists!3395 lambda!354887) (Exists!3395 lambda!354888))))

(declare-fun lt!2377320 () Unit!158631)

(assert (=> d!2013448 (= lt!2377320 (choose!47721 (regOne!33162 r!7292) (regTwo!33162 r!7292) s!2326))))

(assert (=> d!2013448 (validRegex!8061 (regOne!33162 r!7292))))

(assert (=> d!2013448 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1932 (regOne!33162 r!7292) (regTwo!33162 r!7292) s!2326) lt!2377320)))

(declare-fun m!7216606 () Bool)

(assert (=> bs!1614750 m!7216606))

(declare-fun m!7216608 () Bool)

(assert (=> bs!1614750 m!7216608))

(declare-fun m!7216610 () Bool)

(assert (=> bs!1614750 m!7216610))

(assert (=> bs!1614750 m!7216586))

(assert (=> b!6421303 d!2013448))

(declare-fun d!2013450 () Bool)

(assert (=> d!2013450 (= (isDefined!12919 (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326)) (not (isEmpty!37311 (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326))))))

(declare-fun bs!1614751 () Bool)

(assert (= bs!1614751 d!2013450))

(assert (=> bs!1614751 m!7215850))

(declare-fun m!7216612 () Bool)

(assert (=> bs!1614751 m!7216612))

(assert (=> b!6421303 d!2013450))

(declare-fun d!2013452 () Bool)

(declare-fun e!3896505 () Bool)

(assert (=> d!2013452 e!3896505))

(declare-fun res!2639486 () Bool)

(assert (=> d!2013452 (=> (not res!2639486) (not e!3896505))))

(declare-fun lt!2377323 () List!65276)

(declare-fun noDuplicate!2154 (List!65276) Bool)

(assert (=> d!2013452 (= res!2639486 (noDuplicate!2154 lt!2377323))))

(declare-fun choose!47729 ((InoxSet Context!11418)) List!65276)

(assert (=> d!2013452 (= lt!2377323 (choose!47729 z!1189))))

(assert (=> d!2013452 (= (toList!10109 z!1189) lt!2377323)))

(declare-fun b!6422149 () Bool)

(declare-fun content!12364 (List!65276) (InoxSet Context!11418))

(assert (=> b!6422149 (= e!3896505 (= (content!12364 lt!2377323) z!1189))))

(assert (= (and d!2013452 res!2639486) b!6422149))

(declare-fun m!7216614 () Bool)

(assert (=> d!2013452 m!7216614))

(declare-fun m!7216616 () Bool)

(assert (=> d!2013452 m!7216616))

(declare-fun m!7216618 () Bool)

(assert (=> b!6422149 m!7216618))

(assert (=> b!6421302 d!2013452))

(declare-fun b!6422150 () Bool)

(declare-fun e!3896509 () Bool)

(declare-fun call!552193 () Bool)

(assert (=> b!6422150 (= e!3896509 call!552193)))

(declare-fun c!1173302 () Bool)

(declare-fun bm!552187 () Bool)

(declare-fun c!1173301 () Bool)

(assert (=> bm!552187 (= call!552193 (validRegex!8061 (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))))))

(declare-fun d!2013454 () Bool)

(declare-fun res!2639489 () Bool)

(declare-fun e!3896512 () Bool)

(assert (=> d!2013454 (=> res!2639489 e!3896512)))

(assert (=> d!2013454 (= res!2639489 ((_ is ElementMatch!16325) r!7292))))

(assert (=> d!2013454 (= (validRegex!8061 r!7292) e!3896512)))

(declare-fun bm!552188 () Bool)

(declare-fun call!552194 () Bool)

(assert (=> bm!552188 (= call!552194 call!552193)))

(declare-fun b!6422151 () Bool)

(declare-fun e!3896510 () Bool)

(declare-fun call!552192 () Bool)

(assert (=> b!6422151 (= e!3896510 call!552192)))

(declare-fun b!6422152 () Bool)

(declare-fun res!2639487 () Bool)

(declare-fun e!3896506 () Bool)

(assert (=> b!6422152 (=> res!2639487 e!3896506)))

(assert (=> b!6422152 (= res!2639487 (not ((_ is Concat!25170) r!7292)))))

(declare-fun e!3896507 () Bool)

(assert (=> b!6422152 (= e!3896507 e!3896506)))

(declare-fun b!6422153 () Bool)

(declare-fun e!3896511 () Bool)

(assert (=> b!6422153 (= e!3896512 e!3896511)))

(assert (=> b!6422153 (= c!1173302 ((_ is Star!16325) r!7292))))

(declare-fun b!6422154 () Bool)

(assert (=> b!6422154 (= e!3896511 e!3896509)))

(declare-fun res!2639490 () Bool)

(assert (=> b!6422154 (= res!2639490 (not (nullable!6318 (reg!16654 r!7292))))))

(assert (=> b!6422154 (=> (not res!2639490) (not e!3896509))))

(declare-fun b!6422155 () Bool)

(assert (=> b!6422155 (= e!3896511 e!3896507)))

(assert (=> b!6422155 (= c!1173301 ((_ is Union!16325) r!7292))))

(declare-fun b!6422156 () Bool)

(declare-fun e!3896508 () Bool)

(assert (=> b!6422156 (= e!3896508 call!552192)))

(declare-fun b!6422157 () Bool)

(declare-fun res!2639488 () Bool)

(assert (=> b!6422157 (=> (not res!2639488) (not e!3896508))))

(assert (=> b!6422157 (= res!2639488 call!552194)))

(assert (=> b!6422157 (= e!3896507 e!3896508)))

(declare-fun bm!552189 () Bool)

(assert (=> bm!552189 (= call!552192 (validRegex!8061 (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))))))

(declare-fun b!6422158 () Bool)

(assert (=> b!6422158 (= e!3896506 e!3896510)))

(declare-fun res!2639491 () Bool)

(assert (=> b!6422158 (=> (not res!2639491) (not e!3896510))))

(assert (=> b!6422158 (= res!2639491 call!552194)))

(assert (= (and d!2013454 (not res!2639489)) b!6422153))

(assert (= (and b!6422153 c!1173302) b!6422154))

(assert (= (and b!6422153 (not c!1173302)) b!6422155))

(assert (= (and b!6422154 res!2639490) b!6422150))

(assert (= (and b!6422155 c!1173301) b!6422157))

(assert (= (and b!6422155 (not c!1173301)) b!6422152))

(assert (= (and b!6422157 res!2639488) b!6422156))

(assert (= (and b!6422152 (not res!2639487)) b!6422158))

(assert (= (and b!6422158 res!2639491) b!6422151))

(assert (= (or b!6422156 b!6422151) bm!552189))

(assert (= (or b!6422157 b!6422158) bm!552188))

(assert (= (or b!6422150 bm!552188) bm!552187))

(declare-fun m!7216620 () Bool)

(assert (=> bm!552187 m!7216620))

(declare-fun m!7216622 () Bool)

(assert (=> b!6422154 m!7216622))

(declare-fun m!7216624 () Bool)

(assert (=> bm!552189 m!7216624))

(assert (=> start!634510 d!2013454))

(declare-fun bs!1614752 () Bool)

(declare-fun d!2013456 () Bool)

(assert (= bs!1614752 (and d!2013456 d!2013382)))

(declare-fun lambda!354889 () Int)

(assert (=> bs!1614752 (= lambda!354889 lambda!354876)))

(declare-fun bs!1614753 () Bool)

(assert (= bs!1614753 (and d!2013456 d!2013412)))

(assert (=> bs!1614753 (= lambda!354889 lambda!354879)))

(assert (=> d!2013456 (= (inv!84059 setElem!43834) (forall!15515 (exprs!6209 setElem!43834) lambda!354889))))

(declare-fun bs!1614754 () Bool)

(assert (= bs!1614754 d!2013456))

(declare-fun m!7216626 () Bool)

(assert (=> bs!1614754 m!7216626))

(assert (=> setNonEmpty!43834 d!2013456))

(declare-fun b!6422159 () Bool)

(declare-fun res!2639496 () Bool)

(declare-fun e!3896515 () Bool)

(assert (=> b!6422159 (=> res!2639496 e!3896515)))

(declare-fun e!3896513 () Bool)

(assert (=> b!6422159 (= res!2639496 e!3896513)))

(declare-fun res!2639492 () Bool)

(assert (=> b!6422159 (=> (not res!2639492) (not e!3896513))))

(declare-fun lt!2377324 () Bool)

(assert (=> b!6422159 (= res!2639492 lt!2377324)))

(declare-fun b!6422160 () Bool)

(declare-fun res!2639497 () Bool)

(assert (=> b!6422160 (=> (not res!2639497) (not e!3896513))))

(assert (=> b!6422160 (= res!2639497 (isEmpty!37310 (tail!12226 s!2326)))))

(declare-fun b!6422161 () Bool)

(declare-fun e!3896517 () Bool)

(declare-fun e!3896514 () Bool)

(assert (=> b!6422161 (= e!3896517 e!3896514)))

(declare-fun c!1173305 () Bool)

(assert (=> b!6422161 (= c!1173305 ((_ is EmptyLang!16325) lt!2377183))))

(declare-fun b!6422162 () Bool)

(declare-fun res!2639498 () Bool)

(declare-fun e!3896518 () Bool)

(assert (=> b!6422162 (=> res!2639498 e!3896518)))

(assert (=> b!6422162 (= res!2639498 (not (isEmpty!37310 (tail!12226 s!2326))))))

(declare-fun d!2013458 () Bool)

(assert (=> d!2013458 e!3896517))

(declare-fun c!1173303 () Bool)

(assert (=> d!2013458 (= c!1173303 ((_ is EmptyExpr!16325) lt!2377183))))

(declare-fun e!3896516 () Bool)

(assert (=> d!2013458 (= lt!2377324 e!3896516)))

(declare-fun c!1173304 () Bool)

(assert (=> d!2013458 (= c!1173304 (isEmpty!37310 s!2326))))

(assert (=> d!2013458 (validRegex!8061 lt!2377183)))

(assert (=> d!2013458 (= (matchR!8508 lt!2377183 s!2326) lt!2377324)))

(declare-fun b!6422163 () Bool)

(declare-fun e!3896519 () Bool)

(assert (=> b!6422163 (= e!3896519 e!3896518)))

(declare-fun res!2639495 () Bool)

(assert (=> b!6422163 (=> res!2639495 e!3896518)))

(declare-fun call!552195 () Bool)

(assert (=> b!6422163 (= res!2639495 call!552195)))

(declare-fun b!6422164 () Bool)

(assert (=> b!6422164 (= e!3896518 (not (= (head!13141 s!2326) (c!1173074 lt!2377183))))))

(declare-fun b!6422165 () Bool)

(declare-fun res!2639494 () Bool)

(assert (=> b!6422165 (=> res!2639494 e!3896515)))

(assert (=> b!6422165 (= res!2639494 (not ((_ is ElementMatch!16325) lt!2377183)))))

(assert (=> b!6422165 (= e!3896514 e!3896515)))

(declare-fun b!6422166 () Bool)

(assert (=> b!6422166 (= e!3896517 (= lt!2377324 call!552195))))

(declare-fun b!6422167 () Bool)

(assert (=> b!6422167 (= e!3896516 (matchR!8508 (derivativeStep!5029 lt!2377183 (head!13141 s!2326)) (tail!12226 s!2326)))))

(declare-fun b!6422168 () Bool)

(assert (=> b!6422168 (= e!3896516 (nullable!6318 lt!2377183))))

(declare-fun bm!552190 () Bool)

(assert (=> bm!552190 (= call!552195 (isEmpty!37310 s!2326))))

(declare-fun b!6422169 () Bool)

(assert (=> b!6422169 (= e!3896513 (= (head!13141 s!2326) (c!1173074 lt!2377183)))))

(declare-fun b!6422170 () Bool)

(assert (=> b!6422170 (= e!3896514 (not lt!2377324))))

(declare-fun b!6422171 () Bool)

(declare-fun res!2639499 () Bool)

(assert (=> b!6422171 (=> (not res!2639499) (not e!3896513))))

(assert (=> b!6422171 (= res!2639499 (not call!552195))))

(declare-fun b!6422172 () Bool)

(assert (=> b!6422172 (= e!3896515 e!3896519)))

(declare-fun res!2639493 () Bool)

(assert (=> b!6422172 (=> (not res!2639493) (not e!3896519))))

(assert (=> b!6422172 (= res!2639493 (not lt!2377324))))

(assert (= (and d!2013458 c!1173304) b!6422168))

(assert (= (and d!2013458 (not c!1173304)) b!6422167))

(assert (= (and d!2013458 c!1173303) b!6422166))

(assert (= (and d!2013458 (not c!1173303)) b!6422161))

(assert (= (and b!6422161 c!1173305) b!6422170))

(assert (= (and b!6422161 (not c!1173305)) b!6422165))

(assert (= (and b!6422165 (not res!2639494)) b!6422159))

(assert (= (and b!6422159 res!2639492) b!6422171))

(assert (= (and b!6422171 res!2639499) b!6422160))

(assert (= (and b!6422160 res!2639497) b!6422169))

(assert (= (and b!6422159 (not res!2639496)) b!6422172))

(assert (= (and b!6422172 res!2639493) b!6422163))

(assert (= (and b!6422163 (not res!2639495)) b!6422162))

(assert (= (and b!6422162 (not res!2639498)) b!6422164))

(assert (= (or b!6422166 b!6422163 b!6422171) bm!552190))

(assert (=> b!6422160 m!7216358))

(assert (=> b!6422160 m!7216358))

(assert (=> b!6422160 m!7216360))

(assert (=> b!6422162 m!7216358))

(assert (=> b!6422162 m!7216358))

(assert (=> b!6422162 m!7216360))

(assert (=> b!6422169 m!7216362))

(assert (=> bm!552190 m!7216326))

(declare-fun m!7216628 () Bool)

(assert (=> b!6422168 m!7216628))

(assert (=> b!6422167 m!7216362))

(assert (=> b!6422167 m!7216362))

(declare-fun m!7216630 () Bool)

(assert (=> b!6422167 m!7216630))

(assert (=> b!6422167 m!7216358))

(assert (=> b!6422167 m!7216630))

(assert (=> b!6422167 m!7216358))

(declare-fun m!7216632 () Bool)

(assert (=> b!6422167 m!7216632))

(assert (=> b!6422164 m!7216362))

(assert (=> d!2013458 m!7216326))

(declare-fun m!7216634 () Bool)

(assert (=> d!2013458 m!7216634))

(assert (=> b!6421310 d!2013458))

(declare-fun bs!1614755 () Bool)

(declare-fun b!6422181 () Bool)

(assert (= bs!1614755 (and b!6422181 d!2013426)))

(declare-fun lambda!354890 () Int)

(assert (=> bs!1614755 (not (= lambda!354890 lambda!354883))))

(declare-fun bs!1614756 () Bool)

(assert (= bs!1614756 (and b!6422181 d!2013448)))

(assert (=> bs!1614756 (not (= lambda!354890 lambda!354887))))

(declare-fun bs!1614757 () Bool)

(assert (= bs!1614757 (and b!6422181 b!6421798)))

(assert (=> bs!1614757 (not (= lambda!354890 lambda!354870))))

(declare-fun bs!1614758 () Bool)

(assert (= bs!1614758 (and b!6422181 d!2013302)))

(assert (=> bs!1614758 (not (= lambda!354890 lambda!354848))))

(declare-fun bs!1614759 () Bool)

(assert (= bs!1614759 (and b!6422181 b!6422121)))

(assert (=> bs!1614759 (not (= lambda!354890 lambda!354885))))

(declare-fun bs!1614760 () Bool)

(assert (= bs!1614760 (and b!6422181 b!6421294)))

(assert (=> bs!1614760 (not (= lambda!354890 lambda!354818))))

(assert (=> bs!1614756 (not (= lambda!354890 lambda!354888))))

(declare-fun bs!1614761 () Bool)

(assert (= bs!1614761 (and b!6422181 b!6421803)))

(assert (=> bs!1614761 (= (and (= (reg!16654 lt!2377183) (reg!16654 r!7292)) (= lt!2377183 r!7292)) (= lambda!354890 lambda!354869))))

(declare-fun bs!1614762 () Bool)

(assert (= bs!1614762 (and b!6422181 d!2013318)))

(assert (=> bs!1614762 (not (= lambda!354890 lambda!354861))))

(assert (=> bs!1614760 (not (= lambda!354890 lambda!354817))))

(declare-fun bs!1614763 () Bool)

(assert (= bs!1614763 (and b!6422181 b!6421303)))

(assert (=> bs!1614763 (not (= lambda!354890 lambda!354815))))

(assert (=> bs!1614762 (not (= lambda!354890 lambda!354860))))

(assert (=> bs!1614763 (not (= lambda!354890 lambda!354814))))

(declare-fun bs!1614764 () Bool)

(assert (= bs!1614764 (and b!6422181 d!2013446)))

(assert (=> bs!1614764 (not (= lambda!354890 lambda!354886))))

(declare-fun bs!1614765 () Bool)

(assert (= bs!1614765 (and b!6422181 b!6421322)))

(assert (=> bs!1614765 (not (= lambda!354890 lambda!354819))))

(declare-fun bs!1614766 () Bool)

(assert (= bs!1614766 (and b!6422181 b!6422126)))

(assert (=> bs!1614766 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 lt!2377183) (reg!16654 lt!2377164)) (= lt!2377183 lt!2377164)) (= lambda!354890 lambda!354884))))

(assert (=> b!6422181 true))

(assert (=> b!6422181 true))

(declare-fun bs!1614767 () Bool)

(declare-fun b!6422176 () Bool)

(assert (= bs!1614767 (and b!6422176 d!2013426)))

(declare-fun lambda!354891 () Int)

(assert (=> bs!1614767 (not (= lambda!354891 lambda!354883))))

(declare-fun bs!1614768 () Bool)

(assert (= bs!1614768 (and b!6422176 d!2013448)))

(assert (=> bs!1614768 (not (= lambda!354891 lambda!354887))))

(declare-fun bs!1614769 () Bool)

(assert (= bs!1614769 (and b!6422176 b!6422181)))

(assert (=> bs!1614769 (not (= lambda!354891 lambda!354890))))

(declare-fun bs!1614770 () Bool)

(assert (= bs!1614770 (and b!6422176 b!6421798)))

(assert (=> bs!1614770 (= (and (= (regOne!33162 lt!2377183) (regOne!33162 r!7292)) (= (regTwo!33162 lt!2377183) (regTwo!33162 r!7292))) (= lambda!354891 lambda!354870))))

(declare-fun bs!1614771 () Bool)

(assert (= bs!1614771 (and b!6422176 d!2013302)))

(assert (=> bs!1614771 (not (= lambda!354891 lambda!354848))))

(declare-fun bs!1614772 () Bool)

(assert (= bs!1614772 (and b!6422176 b!6422121)))

(assert (=> bs!1614772 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 lt!2377183) (regOne!33162 lt!2377164)) (= (regTwo!33162 lt!2377183) (regTwo!33162 lt!2377164))) (= lambda!354891 lambda!354885))))

(declare-fun bs!1614773 () Bool)

(assert (= bs!1614773 (and b!6422176 b!6421294)))

(assert (=> bs!1614773 (= (and (= (regOne!33162 lt!2377183) lt!2377164) (= (regTwo!33162 lt!2377183) (regTwo!33162 r!7292))) (= lambda!354891 lambda!354818))))

(assert (=> bs!1614768 (= (and (= (regOne!33162 lt!2377183) (regOne!33162 r!7292)) (= (regTwo!33162 lt!2377183) (regTwo!33162 r!7292))) (= lambda!354891 lambda!354888))))

(declare-fun bs!1614774 () Bool)

(assert (= bs!1614774 (and b!6422176 b!6421803)))

(assert (=> bs!1614774 (not (= lambda!354891 lambda!354869))))

(declare-fun bs!1614775 () Bool)

(assert (= bs!1614775 (and b!6422176 d!2013318)))

(assert (=> bs!1614775 (= (and (= (regOne!33162 lt!2377183) lt!2377164) (= (regTwo!33162 lt!2377183) (regTwo!33162 r!7292))) (= lambda!354891 lambda!354861))))

(assert (=> bs!1614773 (not (= lambda!354891 lambda!354817))))

(declare-fun bs!1614776 () Bool)

(assert (= bs!1614776 (and b!6422176 b!6421303)))

(assert (=> bs!1614776 (= (and (= (regOne!33162 lt!2377183) (regOne!33162 r!7292)) (= (regTwo!33162 lt!2377183) (regTwo!33162 r!7292))) (= lambda!354891 lambda!354815))))

(assert (=> bs!1614775 (not (= lambda!354891 lambda!354860))))

(assert (=> bs!1614776 (not (= lambda!354891 lambda!354814))))

(declare-fun bs!1614777 () Bool)

(assert (= bs!1614777 (and b!6422176 d!2013446)))

(assert (=> bs!1614777 (not (= lambda!354891 lambda!354886))))

(declare-fun bs!1614778 () Bool)

(assert (= bs!1614778 (and b!6422176 b!6421322)))

(assert (=> bs!1614778 (not (= lambda!354891 lambda!354819))))

(declare-fun bs!1614779 () Bool)

(assert (= bs!1614779 (and b!6422176 b!6422126)))

(assert (=> bs!1614779 (not (= lambda!354891 lambda!354884))))

(assert (=> b!6422176 true))

(assert (=> b!6422176 true))

(declare-fun b!6422173 () Bool)

(declare-fun e!3896526 () Bool)

(assert (=> b!6422173 (= e!3896526 (= s!2326 (Cons!65150 (c!1173074 lt!2377183) Nil!65150)))))

(declare-fun b!6422174 () Bool)

(declare-fun e!3896525 () Bool)

(declare-fun e!3896524 () Bool)

(assert (=> b!6422174 (= e!3896525 e!3896524)))

(declare-fun c!1173309 () Bool)

(assert (=> b!6422174 (= c!1173309 ((_ is Star!16325) lt!2377183))))

(declare-fun b!6422175 () Bool)

(declare-fun res!2639502 () Bool)

(declare-fun e!3896523 () Bool)

(assert (=> b!6422175 (=> res!2639502 e!3896523)))

(declare-fun call!552196 () Bool)

(assert (=> b!6422175 (= res!2639502 call!552196)))

(assert (=> b!6422175 (= e!3896524 e!3896523)))

(declare-fun call!552197 () Bool)

(assert (=> b!6422176 (= e!3896524 call!552197)))

(declare-fun b!6422177 () Bool)

(declare-fun e!3896520 () Bool)

(assert (=> b!6422177 (= e!3896525 e!3896520)))

(declare-fun res!2639500 () Bool)

(assert (=> b!6422177 (= res!2639500 (matchRSpec!3426 (regOne!33163 lt!2377183) s!2326))))

(assert (=> b!6422177 (=> res!2639500 e!3896520)))

(declare-fun b!6422178 () Bool)

(assert (=> b!6422178 (= e!3896520 (matchRSpec!3426 (regTwo!33163 lt!2377183) s!2326))))

(declare-fun b!6422179 () Bool)

(declare-fun c!1173307 () Bool)

(assert (=> b!6422179 (= c!1173307 ((_ is Union!16325) lt!2377183))))

(assert (=> b!6422179 (= e!3896526 e!3896525)))

(declare-fun d!2013460 () Bool)

(declare-fun c!1173308 () Bool)

(assert (=> d!2013460 (= c!1173308 ((_ is EmptyExpr!16325) lt!2377183))))

(declare-fun e!3896521 () Bool)

(assert (=> d!2013460 (= (matchRSpec!3426 lt!2377183 s!2326) e!3896521)))

(declare-fun b!6422180 () Bool)

(declare-fun e!3896522 () Bool)

(assert (=> b!6422180 (= e!3896521 e!3896522)))

(declare-fun res!2639501 () Bool)

(assert (=> b!6422180 (= res!2639501 (not ((_ is EmptyLang!16325) lt!2377183)))))

(assert (=> b!6422180 (=> (not res!2639501) (not e!3896522))))

(assert (=> b!6422181 (= e!3896523 call!552197)))

(declare-fun bm!552191 () Bool)

(assert (=> bm!552191 (= call!552197 (Exists!3395 (ite c!1173309 lambda!354890 lambda!354891)))))

(declare-fun b!6422182 () Bool)

(assert (=> b!6422182 (= e!3896521 call!552196)))

(declare-fun b!6422183 () Bool)

(declare-fun c!1173306 () Bool)

(assert (=> b!6422183 (= c!1173306 ((_ is ElementMatch!16325) lt!2377183))))

(assert (=> b!6422183 (= e!3896522 e!3896526)))

(declare-fun bm!552192 () Bool)

(assert (=> bm!552192 (= call!552196 (isEmpty!37310 s!2326))))

(assert (= (and d!2013460 c!1173308) b!6422182))

(assert (= (and d!2013460 (not c!1173308)) b!6422180))

(assert (= (and b!6422180 res!2639501) b!6422183))

(assert (= (and b!6422183 c!1173306) b!6422173))

(assert (= (and b!6422183 (not c!1173306)) b!6422179))

(assert (= (and b!6422179 c!1173307) b!6422177))

(assert (= (and b!6422179 (not c!1173307)) b!6422174))

(assert (= (and b!6422177 (not res!2639500)) b!6422178))

(assert (= (and b!6422174 c!1173309) b!6422175))

(assert (= (and b!6422174 (not c!1173309)) b!6422176))

(assert (= (and b!6422175 (not res!2639502)) b!6422181))

(assert (= (or b!6422181 b!6422176) bm!552191))

(assert (= (or b!6422182 b!6422175) bm!552192))

(declare-fun m!7216636 () Bool)

(assert (=> b!6422177 m!7216636))

(declare-fun m!7216638 () Bool)

(assert (=> b!6422178 m!7216638))

(declare-fun m!7216640 () Bool)

(assert (=> bm!552191 m!7216640))

(assert (=> bm!552192 m!7216326))

(assert (=> b!6421310 d!2013460))

(declare-fun d!2013462 () Bool)

(assert (=> d!2013462 (= (matchR!8508 lt!2377183 s!2326) (matchRSpec!3426 lt!2377183 s!2326))))

(declare-fun lt!2377325 () Unit!158631)

(assert (=> d!2013462 (= lt!2377325 (choose!47722 lt!2377183 s!2326))))

(assert (=> d!2013462 (validRegex!8061 lt!2377183)))

(assert (=> d!2013462 (= (mainMatchTheorem!3426 lt!2377183 s!2326) lt!2377325)))

(declare-fun bs!1614780 () Bool)

(assert (= bs!1614780 d!2013462))

(assert (=> bs!1614780 m!7215824))

(assert (=> bs!1614780 m!7215826))

(declare-fun m!7216642 () Bool)

(assert (=> bs!1614780 m!7216642))

(assert (=> bs!1614780 m!7216634))

(assert (=> b!6421310 d!2013462))

(declare-fun d!2013464 () Bool)

(assert (=> d!2013464 (= (isEmpty!37310 (_1!36607 lt!2377178)) ((_ is Nil!65150) (_1!36607 lt!2377178)))))

(assert (=> b!6421329 d!2013464))

(declare-fun d!2013466 () Bool)

(assert (=> d!2013466 (= (nullable!6318 (regOne!33162 (regOne!33162 r!7292))) (nullableFct!2264 (regOne!33162 (regOne!33162 r!7292))))))

(declare-fun bs!1614781 () Bool)

(assert (= bs!1614781 d!2013466))

(declare-fun m!7216644 () Bool)

(assert (=> bs!1614781 m!7216644))

(assert (=> b!6421328 d!2013466))

(declare-fun b!6422184 () Bool)

(declare-fun e!3896530 () (InoxSet Context!11418))

(declare-fun call!552201 () (InoxSet Context!11418))

(declare-fun call!552202 () (InoxSet Context!11418))

(assert (=> b!6422184 (= e!3896530 ((_ map or) call!552201 call!552202))))

(declare-fun b!6422185 () Bool)

(declare-fun c!1173313 () Bool)

(assert (=> b!6422185 (= c!1173313 ((_ is Star!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun e!3896529 () (InoxSet Context!11418))

(declare-fun e!3896528 () (InoxSet Context!11418))

(assert (=> b!6422185 (= e!3896529 e!3896528)))

(declare-fun b!6422186 () Bool)

(assert (=> b!6422186 (= e!3896528 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173312 () Bool)

(declare-fun c!1173314 () Bool)

(declare-fun call!552200 () List!65275)

(declare-fun c!1173311 () Bool)

(declare-fun bm!552193 () Bool)

(assert (=> bm!552193 (= call!552201 (derivationStepZipperDown!1573 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343))))))) (ite (or c!1173312 c!1173314) lt!2377181 (Context!11419 call!552200)) (h!71598 s!2326)))))

(declare-fun b!6422187 () Bool)

(declare-fun e!3896532 () Bool)

(assert (=> b!6422187 (= e!3896532 (nullable!6318 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))))))

(declare-fun b!6422188 () Bool)

(declare-fun e!3896527 () (InoxSet Context!11418))

(assert (=> b!6422188 (= e!3896527 e!3896529)))

(assert (=> b!6422188 (= c!1173311 ((_ is Concat!25170) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun bm!552194 () Bool)

(declare-fun call!552203 () List!65275)

(assert (=> bm!552194 (= call!552202 (derivationStepZipperDown!1573 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))) (ite c!1173312 lt!2377181 (Context!11419 call!552203)) (h!71598 s!2326)))))

(declare-fun bm!552195 () Bool)

(declare-fun call!552199 () (InoxSet Context!11418))

(assert (=> bm!552195 (= call!552199 call!552201)))

(declare-fun d!2013468 () Bool)

(declare-fun c!1173310 () Bool)

(assert (=> d!2013468 (= c!1173310 (and ((_ is ElementMatch!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))) (= (c!1173074 (h!71599 (exprs!6209 (h!71600 zl!343)))) (h!71598 s!2326))))))

(declare-fun e!3896531 () (InoxSet Context!11418))

(assert (=> d!2013468 (= (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (h!71600 zl!343))) lt!2377181 (h!71598 s!2326)) e!3896531)))

(declare-fun b!6422189 () Bool)

(assert (=> b!6422189 (= e!3896531 e!3896530)))

(assert (=> b!6422189 (= c!1173312 ((_ is Union!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6422190 () Bool)

(declare-fun call!552198 () (InoxSet Context!11418))

(assert (=> b!6422190 (= e!3896529 call!552198)))

(declare-fun b!6422191 () Bool)

(assert (=> b!6422191 (= e!3896531 (store ((as const (Array Context!11418 Bool)) false) lt!2377181 true))))

(declare-fun b!6422192 () Bool)

(assert (=> b!6422192 (= c!1173314 e!3896532)))

(declare-fun res!2639503 () Bool)

(assert (=> b!6422192 (=> (not res!2639503) (not e!3896532))))

(assert (=> b!6422192 (= res!2639503 ((_ is Concat!25170) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> b!6422192 (= e!3896530 e!3896527)))

(declare-fun b!6422193 () Bool)

(assert (=> b!6422193 (= e!3896527 ((_ map or) call!552202 call!552199))))

(declare-fun b!6422194 () Bool)

(assert (=> b!6422194 (= e!3896528 call!552198)))

(declare-fun bm!552196 () Bool)

(assert (=> bm!552196 (= call!552200 call!552203)))

(declare-fun bm!552197 () Bool)

(assert (=> bm!552197 (= call!552198 call!552199)))

(declare-fun bm!552198 () Bool)

(assert (=> bm!552198 (= call!552203 ($colon$colon!2186 (exprs!6209 lt!2377181) (ite (or c!1173314 c!1173311) (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (h!71599 (exprs!6209 (h!71600 zl!343))))))))

(assert (= (and d!2013468 c!1173310) b!6422191))

(assert (= (and d!2013468 (not c!1173310)) b!6422189))

(assert (= (and b!6422189 c!1173312) b!6422184))

(assert (= (and b!6422189 (not c!1173312)) b!6422192))

(assert (= (and b!6422192 res!2639503) b!6422187))

(assert (= (and b!6422192 c!1173314) b!6422193))

(assert (= (and b!6422192 (not c!1173314)) b!6422188))

(assert (= (and b!6422188 c!1173311) b!6422190))

(assert (= (and b!6422188 (not c!1173311)) b!6422185))

(assert (= (and b!6422185 c!1173313) b!6422194))

(assert (= (and b!6422185 (not c!1173313)) b!6422186))

(assert (= (or b!6422190 b!6422194) bm!552196))

(assert (= (or b!6422190 b!6422194) bm!552197))

(assert (= (or b!6422193 bm!552196) bm!552198))

(assert (= (or b!6422193 bm!552197) bm!552195))

(assert (= (or b!6422184 b!6422193) bm!552194))

(assert (= (or b!6422184 bm!552195) bm!552193))

(declare-fun m!7216646 () Bool)

(assert (=> bm!552198 m!7216646))

(declare-fun m!7216648 () Bool)

(assert (=> bm!552193 m!7216648))

(declare-fun m!7216650 () Bool)

(assert (=> b!6422191 m!7216650))

(declare-fun m!7216652 () Bool)

(assert (=> b!6422187 m!7216652))

(declare-fun m!7216654 () Bool)

(assert (=> bm!552194 m!7216654))

(assert (=> b!6421308 d!2013468))

(declare-fun d!2013470 () Bool)

(assert (=> d!2013470 (= (nullable!6318 (h!71599 (exprs!6209 (h!71600 zl!343)))) (nullableFct!2264 (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun bs!1614782 () Bool)

(assert (= bs!1614782 d!2013470))

(declare-fun m!7216656 () Bool)

(assert (=> bs!1614782 m!7216656))

(assert (=> b!6421308 d!2013470))

(declare-fun b!6422195 () Bool)

(declare-fun e!3896534 () (InoxSet Context!11418))

(assert (=> b!6422195 (= e!3896534 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013472 () Bool)

(declare-fun c!1173316 () Bool)

(declare-fun e!3896533 () Bool)

(assert (=> d!2013472 (= c!1173316 e!3896533)))

(declare-fun res!2639504 () Bool)

(assert (=> d!2013472 (=> (not res!2639504) (not e!3896533))))

(assert (=> d!2013472 (= res!2639504 ((_ is Cons!65151) (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))))

(declare-fun e!3896535 () (InoxSet Context!11418))

(assert (=> d!2013472 (= (derivationStepZipperUp!1499 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))) (h!71598 s!2326)) e!3896535)))

(declare-fun b!6422196 () Bool)

(declare-fun call!552204 () (InoxSet Context!11418))

(assert (=> b!6422196 (= e!3896535 ((_ map or) call!552204 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (h!71598 s!2326))))))

(declare-fun bm!552199 () Bool)

(assert (=> bm!552199 (= call!552204 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (h!71598 s!2326)))))

(declare-fun b!6422197 () Bool)

(assert (=> b!6422197 (= e!3896533 (nullable!6318 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))))

(declare-fun b!6422198 () Bool)

(assert (=> b!6422198 (= e!3896535 e!3896534)))

(declare-fun c!1173315 () Bool)

(assert (=> b!6422198 (= c!1173315 ((_ is Cons!65151) (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))))

(declare-fun b!6422199 () Bool)

(assert (=> b!6422199 (= e!3896534 call!552204)))

(assert (= (and d!2013472 res!2639504) b!6422197))

(assert (= (and d!2013472 c!1173316) b!6422196))

(assert (= (and d!2013472 (not c!1173316)) b!6422198))

(assert (= (and b!6422198 c!1173315) b!6422199))

(assert (= (and b!6422198 (not c!1173315)) b!6422195))

(assert (= (or b!6422196 b!6422199) bm!552199))

(declare-fun m!7216658 () Bool)

(assert (=> b!6422196 m!7216658))

(declare-fun m!7216660 () Bool)

(assert (=> bm!552199 m!7216660))

(declare-fun m!7216662 () Bool)

(assert (=> b!6422197 m!7216662))

(assert (=> b!6421308 d!2013472))

(declare-fun d!2013474 () Bool)

(assert (=> d!2013474 (= (flatMap!1830 z!1189 lambda!354816) (choose!47724 z!1189 lambda!354816))))

(declare-fun bs!1614783 () Bool)

(assert (= bs!1614783 d!2013474))

(declare-fun m!7216664 () Bool)

(assert (=> bs!1614783 m!7216664))

(assert (=> b!6421308 d!2013474))

(declare-fun d!2013476 () Bool)

(assert (=> d!2013476 (= (flatMap!1830 z!1189 lambda!354816) (dynLambda!25880 lambda!354816 (h!71600 zl!343)))))

(declare-fun lt!2377326 () Unit!158631)

(assert (=> d!2013476 (= lt!2377326 (choose!47725 z!1189 (h!71600 zl!343) lambda!354816))))

(assert (=> d!2013476 (= z!1189 (store ((as const (Array Context!11418 Bool)) false) (h!71600 zl!343) true))))

(assert (=> d!2013476 (= (lemmaFlatMapOnSingletonSet!1356 z!1189 (h!71600 zl!343) lambda!354816) lt!2377326)))

(declare-fun b_lambda!244099 () Bool)

(assert (=> (not b_lambda!244099) (not d!2013476)))

(declare-fun bs!1614784 () Bool)

(assert (= bs!1614784 d!2013476))

(assert (=> bs!1614784 m!7215776))

(declare-fun m!7216666 () Bool)

(assert (=> bs!1614784 m!7216666))

(declare-fun m!7216668 () Bool)

(assert (=> bs!1614784 m!7216668))

(declare-fun m!7216670 () Bool)

(assert (=> bs!1614784 m!7216670))

(assert (=> b!6421308 d!2013476))

(declare-fun b!6422200 () Bool)

(declare-fun e!3896537 () (InoxSet Context!11418))

(assert (=> b!6422200 (= e!3896537 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013478 () Bool)

(declare-fun c!1173318 () Bool)

(declare-fun e!3896536 () Bool)

(assert (=> d!2013478 (= c!1173318 e!3896536)))

(declare-fun res!2639505 () Bool)

(assert (=> d!2013478 (=> (not res!2639505) (not e!3896536))))

(assert (=> d!2013478 (= res!2639505 ((_ is Cons!65151) (exprs!6209 (h!71600 zl!343))))))

(declare-fun e!3896538 () (InoxSet Context!11418))

(assert (=> d!2013478 (= (derivationStepZipperUp!1499 (h!71600 zl!343) (h!71598 s!2326)) e!3896538)))

(declare-fun b!6422201 () Bool)

(declare-fun call!552205 () (InoxSet Context!11418))

(assert (=> b!6422201 (= e!3896538 ((_ map or) call!552205 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))) (h!71598 s!2326))))))

(declare-fun bm!552200 () Bool)

(assert (=> bm!552200 (= call!552205 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (h!71600 zl!343))) (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))) (h!71598 s!2326)))))

(declare-fun b!6422202 () Bool)

(assert (=> b!6422202 (= e!3896536 (nullable!6318 (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6422203 () Bool)

(assert (=> b!6422203 (= e!3896538 e!3896537)))

(declare-fun c!1173317 () Bool)

(assert (=> b!6422203 (= c!1173317 ((_ is Cons!65151) (exprs!6209 (h!71600 zl!343))))))

(declare-fun b!6422204 () Bool)

(assert (=> b!6422204 (= e!3896537 call!552205)))

(assert (= (and d!2013478 res!2639505) b!6422202))

(assert (= (and d!2013478 c!1173318) b!6422201))

(assert (= (and d!2013478 (not c!1173318)) b!6422203))

(assert (= (and b!6422203 c!1173317) b!6422204))

(assert (= (and b!6422203 (not c!1173317)) b!6422200))

(assert (= (or b!6422201 b!6422204) bm!552200))

(declare-fun m!7216672 () Bool)

(assert (=> b!6422201 m!7216672))

(declare-fun m!7216674 () Bool)

(assert (=> bm!552200 m!7216674))

(assert (=> b!6422202 m!7215782))

(assert (=> b!6421308 d!2013478))

(declare-fun b!6422205 () Bool)

(declare-fun e!3896540 () (InoxSet Context!11418))

(assert (=> b!6422205 (= e!3896540 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013480 () Bool)

(declare-fun c!1173320 () Bool)

(declare-fun e!3896539 () Bool)

(assert (=> d!2013480 (= c!1173320 e!3896539)))

(declare-fun res!2639506 () Bool)

(assert (=> d!2013480 (=> (not res!2639506) (not e!3896539))))

(assert (=> d!2013480 (= res!2639506 ((_ is Cons!65151) (exprs!6209 lt!2377181)))))

(declare-fun e!3896541 () (InoxSet Context!11418))

(assert (=> d!2013480 (= (derivationStepZipperUp!1499 lt!2377181 (h!71598 s!2326)) e!3896541)))

(declare-fun call!552206 () (InoxSet Context!11418))

(declare-fun b!6422206 () Bool)

(assert (=> b!6422206 (= e!3896541 ((_ map or) call!552206 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 lt!2377181))) (h!71598 s!2326))))))

(declare-fun bm!552201 () Bool)

(assert (=> bm!552201 (= call!552206 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 lt!2377181)) (Context!11419 (t!378889 (exprs!6209 lt!2377181))) (h!71598 s!2326)))))

(declare-fun b!6422207 () Bool)

(assert (=> b!6422207 (= e!3896539 (nullable!6318 (h!71599 (exprs!6209 lt!2377181))))))

(declare-fun b!6422208 () Bool)

(assert (=> b!6422208 (= e!3896541 e!3896540)))

(declare-fun c!1173319 () Bool)

(assert (=> b!6422208 (= c!1173319 ((_ is Cons!65151) (exprs!6209 lt!2377181)))))

(declare-fun b!6422209 () Bool)

(assert (=> b!6422209 (= e!3896540 call!552206)))

(assert (= (and d!2013480 res!2639506) b!6422207))

(assert (= (and d!2013480 c!1173320) b!6422206))

(assert (= (and d!2013480 (not c!1173320)) b!6422208))

(assert (= (and b!6422208 c!1173319) b!6422209))

(assert (= (and b!6422208 (not c!1173319)) b!6422205))

(assert (= (or b!6422206 b!6422209) bm!552201))

(declare-fun m!7216676 () Bool)

(assert (=> b!6422206 m!7216676))

(declare-fun m!7216678 () Bool)

(assert (=> bm!552201 m!7216678))

(declare-fun m!7216680 () Bool)

(assert (=> b!6422207 m!7216680))

(assert (=> b!6421308 d!2013480))

(declare-fun bs!1614785 () Bool)

(declare-fun d!2013482 () Bool)

(assert (= bs!1614785 (and d!2013482 d!2013382)))

(declare-fun lambda!354894 () Int)

(assert (=> bs!1614785 (= lambda!354894 lambda!354876)))

(declare-fun bs!1614786 () Bool)

(assert (= bs!1614786 (and d!2013482 d!2013412)))

(assert (=> bs!1614786 (= lambda!354894 lambda!354879)))

(declare-fun bs!1614787 () Bool)

(assert (= bs!1614787 (and d!2013482 d!2013456)))

(assert (=> bs!1614787 (= lambda!354894 lambda!354889)))

(declare-fun b!6422230 () Bool)

(declare-fun e!3896555 () Bool)

(declare-fun e!3896559 () Bool)

(assert (=> b!6422230 (= e!3896555 e!3896559)))

(declare-fun c!1173329 () Bool)

(assert (=> b!6422230 (= c!1173329 (isEmpty!37308 (unfocusZipperList!1746 zl!343)))))

(declare-fun b!6422231 () Bool)

(declare-fun e!3896554 () Bool)

(assert (=> b!6422231 (= e!3896554 (isEmpty!37308 (t!378889 (unfocusZipperList!1746 zl!343))))))

(declare-fun b!6422232 () Bool)

(declare-fun e!3896557 () Bool)

(assert (=> b!6422232 (= e!3896559 e!3896557)))

(declare-fun c!1173330 () Bool)

(assert (=> b!6422232 (= c!1173330 (isEmpty!37308 (tail!12227 (unfocusZipperList!1746 zl!343))))))

(declare-fun b!6422233 () Bool)

(declare-fun lt!2377329 () Regex!16325)

(declare-fun isEmptyLang!1733 (Regex!16325) Bool)

(assert (=> b!6422233 (= e!3896559 (isEmptyLang!1733 lt!2377329))))

(declare-fun b!6422234 () Bool)

(declare-fun e!3896556 () Regex!16325)

(declare-fun e!3896558 () Regex!16325)

(assert (=> b!6422234 (= e!3896556 e!3896558)))

(declare-fun c!1173331 () Bool)

(assert (=> b!6422234 (= c!1173331 ((_ is Cons!65151) (unfocusZipperList!1746 zl!343)))))

(declare-fun b!6422235 () Bool)

(assert (=> b!6422235 (= e!3896557 (= lt!2377329 (head!13142 (unfocusZipperList!1746 zl!343))))))

(assert (=> d!2013482 e!3896555))

(declare-fun res!2639511 () Bool)

(assert (=> d!2013482 (=> (not res!2639511) (not e!3896555))))

(assert (=> d!2013482 (= res!2639511 (validRegex!8061 lt!2377329))))

(assert (=> d!2013482 (= lt!2377329 e!3896556)))

(declare-fun c!1173332 () Bool)

(assert (=> d!2013482 (= c!1173332 e!3896554)))

(declare-fun res!2639512 () Bool)

(assert (=> d!2013482 (=> (not res!2639512) (not e!3896554))))

(assert (=> d!2013482 (= res!2639512 ((_ is Cons!65151) (unfocusZipperList!1746 zl!343)))))

(assert (=> d!2013482 (forall!15515 (unfocusZipperList!1746 zl!343) lambda!354894)))

(assert (=> d!2013482 (= (generalisedUnion!2169 (unfocusZipperList!1746 zl!343)) lt!2377329)))

(declare-fun b!6422236 () Bool)

(declare-fun isUnion!1163 (Regex!16325) Bool)

(assert (=> b!6422236 (= e!3896557 (isUnion!1163 lt!2377329))))

(declare-fun b!6422237 () Bool)

(assert (=> b!6422237 (= e!3896558 (Union!16325 (h!71599 (unfocusZipperList!1746 zl!343)) (generalisedUnion!2169 (t!378889 (unfocusZipperList!1746 zl!343)))))))

(declare-fun b!6422238 () Bool)

(assert (=> b!6422238 (= e!3896556 (h!71599 (unfocusZipperList!1746 zl!343)))))

(declare-fun b!6422239 () Bool)

(assert (=> b!6422239 (= e!3896558 EmptyLang!16325)))

(assert (= (and d!2013482 res!2639512) b!6422231))

(assert (= (and d!2013482 c!1173332) b!6422238))

(assert (= (and d!2013482 (not c!1173332)) b!6422234))

(assert (= (and b!6422234 c!1173331) b!6422237))

(assert (= (and b!6422234 (not c!1173331)) b!6422239))

(assert (= (and d!2013482 res!2639511) b!6422230))

(assert (= (and b!6422230 c!1173329) b!6422233))

(assert (= (and b!6422230 (not c!1173329)) b!6422232))

(assert (= (and b!6422232 c!1173330) b!6422235))

(assert (= (and b!6422232 (not c!1173330)) b!6422236))

(declare-fun m!7216682 () Bool)

(assert (=> b!6422237 m!7216682))

(declare-fun m!7216684 () Bool)

(assert (=> b!6422231 m!7216684))

(declare-fun m!7216686 () Bool)

(assert (=> b!6422233 m!7216686))

(declare-fun m!7216688 () Bool)

(assert (=> d!2013482 m!7216688))

(assert (=> d!2013482 m!7215906))

(declare-fun m!7216690 () Bool)

(assert (=> d!2013482 m!7216690))

(assert (=> b!6422235 m!7215906))

(declare-fun m!7216692 () Bool)

(assert (=> b!6422235 m!7216692))

(declare-fun m!7216694 () Bool)

(assert (=> b!6422236 m!7216694))

(assert (=> b!6422232 m!7215906))

(declare-fun m!7216696 () Bool)

(assert (=> b!6422232 m!7216696))

(assert (=> b!6422232 m!7216696))

(declare-fun m!7216698 () Bool)

(assert (=> b!6422232 m!7216698))

(assert (=> b!6422230 m!7215906))

(declare-fun m!7216700 () Bool)

(assert (=> b!6422230 m!7216700))

(assert (=> b!6421326 d!2013482))

(declare-fun bs!1614788 () Bool)

(declare-fun d!2013484 () Bool)

(assert (= bs!1614788 (and d!2013484 d!2013382)))

(declare-fun lambda!354897 () Int)

(assert (=> bs!1614788 (= lambda!354897 lambda!354876)))

(declare-fun bs!1614789 () Bool)

(assert (= bs!1614789 (and d!2013484 d!2013412)))

(assert (=> bs!1614789 (= lambda!354897 lambda!354879)))

(declare-fun bs!1614790 () Bool)

(assert (= bs!1614790 (and d!2013484 d!2013456)))

(assert (=> bs!1614790 (= lambda!354897 lambda!354889)))

(declare-fun bs!1614791 () Bool)

(assert (= bs!1614791 (and d!2013484 d!2013482)))

(assert (=> bs!1614791 (= lambda!354897 lambda!354894)))

(declare-fun lt!2377332 () List!65275)

(assert (=> d!2013484 (forall!15515 lt!2377332 lambda!354897)))

(declare-fun e!3896562 () List!65275)

(assert (=> d!2013484 (= lt!2377332 e!3896562)))

(declare-fun c!1173335 () Bool)

(assert (=> d!2013484 (= c!1173335 ((_ is Cons!65152) zl!343))))

(assert (=> d!2013484 (= (unfocusZipperList!1746 zl!343) lt!2377332)))

(declare-fun b!6422244 () Bool)

(assert (=> b!6422244 (= e!3896562 (Cons!65151 (generalisedConcat!1922 (exprs!6209 (h!71600 zl!343))) (unfocusZipperList!1746 (t!378890 zl!343))))))

(declare-fun b!6422245 () Bool)

(assert (=> b!6422245 (= e!3896562 Nil!65151)))

(assert (= (and d!2013484 c!1173335) b!6422244))

(assert (= (and d!2013484 (not c!1173335)) b!6422245))

(declare-fun m!7216702 () Bool)

(assert (=> d!2013484 m!7216702))

(assert (=> b!6422244 m!7215792))

(declare-fun m!7216704 () Bool)

(assert (=> b!6422244 m!7216704))

(assert (=> b!6421326 d!2013484))

(declare-fun d!2013486 () Bool)

(declare-fun c!1173336 () Bool)

(assert (=> d!2013486 (= c!1173336 (isEmpty!37310 (t!378888 s!2326)))))

(declare-fun e!3896563 () Bool)

(assert (=> d!2013486 (= (matchZipper!2337 lt!2377180 (t!378888 s!2326)) e!3896563)))

(declare-fun b!6422246 () Bool)

(assert (=> b!6422246 (= e!3896563 (nullableZipper!2090 lt!2377180))))

(declare-fun b!6422247 () Bool)

(assert (=> b!6422247 (= e!3896563 (matchZipper!2337 (derivationStepZipper!2291 lt!2377180 (head!13141 (t!378888 s!2326))) (tail!12226 (t!378888 s!2326))))))

(assert (= (and d!2013486 c!1173336) b!6422246))

(assert (= (and d!2013486 (not c!1173336)) b!6422247))

(assert (=> d!2013486 m!7216406))

(declare-fun m!7216706 () Bool)

(assert (=> b!6422246 m!7216706))

(assert (=> b!6422247 m!7216410))

(assert (=> b!6422247 m!7216410))

(declare-fun m!7216708 () Bool)

(assert (=> b!6422247 m!7216708))

(assert (=> b!6422247 m!7216414))

(assert (=> b!6422247 m!7216708))

(assert (=> b!6422247 m!7216414))

(declare-fun m!7216710 () Bool)

(assert (=> b!6422247 m!7216710))

(assert (=> b!6421307 d!2013486))

(declare-fun b!6422252 () Bool)

(declare-fun e!3896566 () Bool)

(declare-fun tp!1782981 () Bool)

(declare-fun tp!1782982 () Bool)

(assert (=> b!6422252 (= e!3896566 (and tp!1782981 tp!1782982))))

(assert (=> b!6421331 (= tp!1782915 e!3896566)))

(assert (= (and b!6421331 ((_ is Cons!65151) (exprs!6209 setElem!43834))) b!6422252))

(declare-fun b!6422266 () Bool)

(declare-fun e!3896569 () Bool)

(declare-fun tp!1782994 () Bool)

(declare-fun tp!1782995 () Bool)

(assert (=> b!6422266 (= e!3896569 (and tp!1782994 tp!1782995))))

(assert (=> b!6421316 (= tp!1782916 e!3896569)))

(declare-fun b!6422263 () Bool)

(assert (=> b!6422263 (= e!3896569 tp_is_empty!41903)))

(declare-fun b!6422265 () Bool)

(declare-fun tp!1782996 () Bool)

(assert (=> b!6422265 (= e!3896569 tp!1782996)))

(declare-fun b!6422264 () Bool)

(declare-fun tp!1782997 () Bool)

(declare-fun tp!1782993 () Bool)

(assert (=> b!6422264 (= e!3896569 (and tp!1782997 tp!1782993))))

(assert (= (and b!6421316 ((_ is ElementMatch!16325) (regOne!33163 r!7292))) b!6422263))

(assert (= (and b!6421316 ((_ is Concat!25170) (regOne!33163 r!7292))) b!6422264))

(assert (= (and b!6421316 ((_ is Star!16325) (regOne!33163 r!7292))) b!6422265))

(assert (= (and b!6421316 ((_ is Union!16325) (regOne!33163 r!7292))) b!6422266))

(declare-fun b!6422270 () Bool)

(declare-fun e!3896570 () Bool)

(declare-fun tp!1782999 () Bool)

(declare-fun tp!1783000 () Bool)

(assert (=> b!6422270 (= e!3896570 (and tp!1782999 tp!1783000))))

(assert (=> b!6421316 (= tp!1782918 e!3896570)))

(declare-fun b!6422267 () Bool)

(assert (=> b!6422267 (= e!3896570 tp_is_empty!41903)))

(declare-fun b!6422269 () Bool)

(declare-fun tp!1783001 () Bool)

(assert (=> b!6422269 (= e!3896570 tp!1783001)))

(declare-fun b!6422268 () Bool)

(declare-fun tp!1783002 () Bool)

(declare-fun tp!1782998 () Bool)

(assert (=> b!6422268 (= e!3896570 (and tp!1783002 tp!1782998))))

(assert (= (and b!6421316 ((_ is ElementMatch!16325) (regTwo!33163 r!7292))) b!6422267))

(assert (= (and b!6421316 ((_ is Concat!25170) (regTwo!33163 r!7292))) b!6422268))

(assert (= (and b!6421316 ((_ is Star!16325) (regTwo!33163 r!7292))) b!6422269))

(assert (= (and b!6421316 ((_ is Union!16325) (regTwo!33163 r!7292))) b!6422270))

(declare-fun b!6422278 () Bool)

(declare-fun e!3896576 () Bool)

(declare-fun tp!1783007 () Bool)

(assert (=> b!6422278 (= e!3896576 tp!1783007)))

(declare-fun e!3896575 () Bool)

(declare-fun b!6422277 () Bool)

(declare-fun tp!1783008 () Bool)

(assert (=> b!6422277 (= e!3896575 (and (inv!84059 (h!71600 (t!378890 zl!343))) e!3896576 tp!1783008))))

(assert (=> b!6421301 (= tp!1782917 e!3896575)))

(assert (= b!6422277 b!6422278))

(assert (= (and b!6421301 ((_ is Cons!65152) (t!378890 zl!343))) b!6422277))

(declare-fun m!7216712 () Bool)

(assert (=> b!6422277 m!7216712))

(declare-fun b!6422282 () Bool)

(declare-fun e!3896577 () Bool)

(declare-fun tp!1783010 () Bool)

(declare-fun tp!1783011 () Bool)

(assert (=> b!6422282 (= e!3896577 (and tp!1783010 tp!1783011))))

(assert (=> b!6421330 (= tp!1782909 e!3896577)))

(declare-fun b!6422279 () Bool)

(assert (=> b!6422279 (= e!3896577 tp_is_empty!41903)))

(declare-fun b!6422281 () Bool)

(declare-fun tp!1783012 () Bool)

(assert (=> b!6422281 (= e!3896577 tp!1783012)))

(declare-fun b!6422280 () Bool)

(declare-fun tp!1783013 () Bool)

(declare-fun tp!1783009 () Bool)

(assert (=> b!6422280 (= e!3896577 (and tp!1783013 tp!1783009))))

(assert (= (and b!6421330 ((_ is ElementMatch!16325) (reg!16654 r!7292))) b!6422279))

(assert (= (and b!6421330 ((_ is Concat!25170) (reg!16654 r!7292))) b!6422280))

(assert (= (and b!6421330 ((_ is Star!16325) (reg!16654 r!7292))) b!6422281))

(assert (= (and b!6421330 ((_ is Union!16325) (reg!16654 r!7292))) b!6422282))

(declare-fun condSetEmpty!43840 () Bool)

(assert (=> setNonEmpty!43834 (= condSetEmpty!43840 (= setRest!43834 ((as const (Array Context!11418 Bool)) false)))))

(declare-fun setRes!43840 () Bool)

(assert (=> setNonEmpty!43834 (= tp!1782914 setRes!43840)))

(declare-fun setIsEmpty!43840 () Bool)

(assert (=> setIsEmpty!43840 setRes!43840))

(declare-fun setElem!43840 () Context!11418)

(declare-fun setNonEmpty!43840 () Bool)

(declare-fun e!3896580 () Bool)

(declare-fun tp!1783018 () Bool)

(assert (=> setNonEmpty!43840 (= setRes!43840 (and tp!1783018 (inv!84059 setElem!43840) e!3896580))))

(declare-fun setRest!43840 () (InoxSet Context!11418))

(assert (=> setNonEmpty!43840 (= setRest!43834 ((_ map or) (store ((as const (Array Context!11418 Bool)) false) setElem!43840 true) setRest!43840))))

(declare-fun b!6422287 () Bool)

(declare-fun tp!1783019 () Bool)

(assert (=> b!6422287 (= e!3896580 tp!1783019)))

(assert (= (and setNonEmpty!43834 condSetEmpty!43840) setIsEmpty!43840))

(assert (= (and setNonEmpty!43834 (not condSetEmpty!43840)) setNonEmpty!43840))

(assert (= setNonEmpty!43840 b!6422287))

(declare-fun m!7216714 () Bool)

(assert (=> setNonEmpty!43840 m!7216714))

(declare-fun b!6422291 () Bool)

(declare-fun e!3896581 () Bool)

(declare-fun tp!1783021 () Bool)

(declare-fun tp!1783022 () Bool)

(assert (=> b!6422291 (= e!3896581 (and tp!1783021 tp!1783022))))

(assert (=> b!6421324 (= tp!1782911 e!3896581)))

(declare-fun b!6422288 () Bool)

(assert (=> b!6422288 (= e!3896581 tp_is_empty!41903)))

(declare-fun b!6422290 () Bool)

(declare-fun tp!1783023 () Bool)

(assert (=> b!6422290 (= e!3896581 tp!1783023)))

(declare-fun b!6422289 () Bool)

(declare-fun tp!1783024 () Bool)

(declare-fun tp!1783020 () Bool)

(assert (=> b!6422289 (= e!3896581 (and tp!1783024 tp!1783020))))

(assert (= (and b!6421324 ((_ is ElementMatch!16325) (regOne!33162 r!7292))) b!6422288))

(assert (= (and b!6421324 ((_ is Concat!25170) (regOne!33162 r!7292))) b!6422289))

(assert (= (and b!6421324 ((_ is Star!16325) (regOne!33162 r!7292))) b!6422290))

(assert (= (and b!6421324 ((_ is Union!16325) (regOne!33162 r!7292))) b!6422291))

(declare-fun b!6422295 () Bool)

(declare-fun e!3896582 () Bool)

(declare-fun tp!1783026 () Bool)

(declare-fun tp!1783027 () Bool)

(assert (=> b!6422295 (= e!3896582 (and tp!1783026 tp!1783027))))

(assert (=> b!6421324 (= tp!1782913 e!3896582)))

(declare-fun b!6422292 () Bool)

(assert (=> b!6422292 (= e!3896582 tp_is_empty!41903)))

(declare-fun b!6422294 () Bool)

(declare-fun tp!1783028 () Bool)

(assert (=> b!6422294 (= e!3896582 tp!1783028)))

(declare-fun b!6422293 () Bool)

(declare-fun tp!1783029 () Bool)

(declare-fun tp!1783025 () Bool)

(assert (=> b!6422293 (= e!3896582 (and tp!1783029 tp!1783025))))

(assert (= (and b!6421324 ((_ is ElementMatch!16325) (regTwo!33162 r!7292))) b!6422292))

(assert (= (and b!6421324 ((_ is Concat!25170) (regTwo!33162 r!7292))) b!6422293))

(assert (= (and b!6421324 ((_ is Star!16325) (regTwo!33162 r!7292))) b!6422294))

(assert (= (and b!6421324 ((_ is Union!16325) (regTwo!33162 r!7292))) b!6422295))

(declare-fun b!6422300 () Bool)

(declare-fun e!3896585 () Bool)

(declare-fun tp!1783032 () Bool)

(assert (=> b!6422300 (= e!3896585 (and tp_is_empty!41903 tp!1783032))))

(assert (=> b!6421293 (= tp!1782912 e!3896585)))

(assert (= (and b!6421293 ((_ is Cons!65150) (t!378888 s!2326))) b!6422300))

(declare-fun b!6422301 () Bool)

(declare-fun e!3896586 () Bool)

(declare-fun tp!1783033 () Bool)

(declare-fun tp!1783034 () Bool)

(assert (=> b!6422301 (= e!3896586 (and tp!1783033 tp!1783034))))

(assert (=> b!6421311 (= tp!1782910 e!3896586)))

(assert (= (and b!6421311 ((_ is Cons!65151) (exprs!6209 (h!71600 zl!343)))) b!6422301))

(declare-fun b_lambda!244101 () Bool)

(assert (= b_lambda!244099 (or b!6421308 b_lambda!244101)))

(declare-fun bs!1614792 () Bool)

(declare-fun d!2013488 () Bool)

(assert (= bs!1614792 (and d!2013488 b!6421308)))

(assert (=> bs!1614792 (= (dynLambda!25880 lambda!354816 (h!71600 zl!343)) (derivationStepZipperUp!1499 (h!71600 zl!343) (h!71598 s!2326)))))

(assert (=> bs!1614792 m!7215778))

(assert (=> d!2013476 d!2013488))

(declare-fun b_lambda!244103 () Bool)

(assert (= b_lambda!244095 (or b!6421308 b_lambda!244103)))

(declare-fun bs!1614793 () Bool)

(declare-fun d!2013490 () Bool)

(assert (= bs!1614793 (and d!2013490 b!6421308)))

(assert (=> bs!1614793 (= (dynLambda!25880 lambda!354816 lt!2377192) (derivationStepZipperUp!1499 lt!2377192 (h!71598 s!2326)))))

(assert (=> bs!1614793 m!7215890))

(assert (=> d!2013410 d!2013490))

(declare-fun b_lambda!244105 () Bool)

(assert (= b_lambda!244093 (or b!6421308 b_lambda!244105)))

(declare-fun bs!1614794 () Bool)

(declare-fun d!2013492 () Bool)

(assert (= bs!1614794 (and d!2013492 b!6421308)))

(assert (=> bs!1614794 (= (dynLambda!25880 lambda!354816 lt!2377188) (derivationStepZipperUp!1499 lt!2377188 (h!71598 s!2326)))))

(assert (=> bs!1614794 m!7215888))

(assert (=> d!2013406 d!2013492))

(declare-fun b_lambda!244107 () Bool)

(assert (= b_lambda!244097 (or b!6421308 b_lambda!244107)))

(declare-fun bs!1614795 () Bool)

(declare-fun d!2013494 () Bool)

(assert (= bs!1614795 (and d!2013494 b!6421308)))

(assert (=> bs!1614795 (= (dynLambda!25880 lambda!354816 lt!2377171) (derivationStepZipperUp!1499 lt!2377171 (h!71598 s!2326)))))

(assert (=> bs!1614795 m!7215844))

(assert (=> d!2013418 d!2013494))

(check-sat (not b!6422201) (not b!6422244) (not d!2013484) (not b!6422207) (not bm!552191) (not b!6422154) (not bm!552190) (not bm!552193) (not b!6422087) (not b!6422022) (not b!6422160) (not d!2013410) (not b!6422054) (not b!6422295) (not b!6422282) (not b!6422018) (not b!6421882) (not b!6422187) (not b!6422162) (not b!6422232) (not b!6422050) (not b!6422023) (not b!6421891) (not b!6422230) (not bm!552189) (not b!6422058) (not b!6422281) (not b!6422049) (not b!6422080) (not b!6422266) (not bm!552187) (not b!6422136) (not b!6421884) (not d!2013414) (not d!2013456) (not b!6421687) (not b!6422202) (not d!2013302) (not b!6422177) (not d!2013368) (not bm!552133) (not bm!552201) (not bs!1614795) (not b!6422287) (not d!2013390) (not bm!552164) (not d!2013314) (not d!2013274) (not b!6421692) (not b!6422145) (not d!2013412) (not b!6422142) (not b!6422146) (not d!2013282) (not b!6422123) (not d!2013380) (not b!6422277) (not b!6422072) (not b!6422073) (not d!2013394) (not d!2013396) (not b!6421690) (not b!6421964) (not bm!552163) (not bs!1614792) (not b!6422280) (not d!2013430) (not b!6422017) (not d!2013426) (not d!2013422) (not d!2013392) (not d!2013382) (not b!6422164) (not b!6421889) (not b!6422137) (not b!6422237) (not b!6422144) (not bm!552184) (not b!6422268) (not d!2013450) (not bm!552168) (not b!6422168) (not bs!1614793) (not b!6422066) (not d!2013356) (not b!6422149) (not d!2013366) (not d!2013408) (not b!6421965) (not d!2013420) (not b!6422290) (not b!6422278) (not b!6422169) (not b!6422293) (not b!6422003) (not b_lambda!244105) (not b!6422301) (not b!6422264) (not b!6421961) (not b!6422113) (not d!2013406) (not d!2013486) (not d!2013470) (not d!2013452) (not b!6422289) (not b!6422246) (not b!6422265) (not d!2013444) (not bm!552198) (not d!2013288) (not b_lambda!244107) (not bm!552171) (not bm!552192) (not b!6422294) (not b!6422053) (not b!6422167) (not b!6422068) (not b!6422082) (not b!6422197) (not d!2013458) (not b!6422135) (not b!6421962) (not d!2013442) (not d!2013418) (not bm!552182) (not b!6422051) (not d!2013318) (not bm!552185) (not b!6421991) (not b!6422233) (not b!6422005) (not bm!552200) (not b!6422130) (not b!6422270) (not bm!552174) (not b!6422235) (not setNonEmpty!43840) (not d!2013432) (not b!6422269) (not d!2013466) (not b!6422064) (not b!6422078) (not b!6422052) (not b!6421689) (not b!6422206) (not d!2013424) (not b!6422002) (not b!6422300) (not bs!1614794) (not b!6422057) (not b!6422001) (not bm!552199) (not b!6422178) (not d!2013310) (not d!2013348) (not bm!552173) (not bm!552132) (not bm!552194) (not d!2013482) (not b!6422071) (not b!6422139) (not d!2013446) (not bm!552175) (not b!6422236) (not b!6421800) (not b!6422046) (not b!6421721) (not b_lambda!244101) tp_is_empty!41903 (not d!2013448) (not d!2013474) (not d!2013400) (not d!2013398) (not d!2013436) (not b!6422004) (not b!6422133) (not b!6421722) (not b!6422122) (not d!2013462) (not d!2013476) (not b!6421799) (not b!6421693) (not b!6422252) (not b!6421890) (not b!6422085) (not b!6422247) (not b!6421886) (not bm!552172) (not d!2013294) (not bm!552147) (not d!2013438) (not bm!552186) (not b!6422086) (not b!6422132) (not d!2013372) (not b!6422291) (not b!6421694) (not b!6422196) (not b!6422141) (not d!2013440) (not b_lambda!244103) (not b!6422231))
(check-sat)
(get-model)

(declare-fun d!2013886 () Bool)

(assert (=> d!2013886 (= (Exists!3395 lambda!354887) (choose!47719 lambda!354887))))

(declare-fun bs!1615364 () Bool)

(assert (= bs!1615364 d!2013886))

(declare-fun m!7217626 () Bool)

(assert (=> bs!1615364 m!7217626))

(assert (=> d!2013448 d!2013886))

(declare-fun d!2013888 () Bool)

(assert (=> d!2013888 (= (Exists!3395 lambda!354888) (choose!47719 lambda!354888))))

(declare-fun bs!1615365 () Bool)

(assert (= bs!1615365 d!2013888))

(declare-fun m!7217628 () Bool)

(assert (=> bs!1615365 m!7217628))

(assert (=> d!2013448 d!2013888))

(declare-fun bs!1615371 () Bool)

(declare-fun d!2013890 () Bool)

(assert (= bs!1615371 (and d!2013890 d!2013448)))

(declare-fun lambda!354950 () Int)

(assert (=> bs!1615371 (= lambda!354950 lambda!354887)))

(declare-fun bs!1615372 () Bool)

(assert (= bs!1615372 (and d!2013890 b!6422181)))

(assert (=> bs!1615372 (not (= lambda!354950 lambda!354890))))

(declare-fun bs!1615373 () Bool)

(assert (= bs!1615373 (and d!2013890 b!6421798)))

(assert (=> bs!1615373 (not (= lambda!354950 lambda!354870))))

(declare-fun bs!1615374 () Bool)

(assert (= bs!1615374 (and d!2013890 d!2013302)))

(assert (=> bs!1615374 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354950 lambda!354848))))

(declare-fun bs!1615375 () Bool)

(assert (= bs!1615375 (and d!2013890 b!6422121)))

(assert (=> bs!1615375 (not (= lambda!354950 lambda!354885))))

(declare-fun bs!1615376 () Bool)

(assert (= bs!1615376 (and d!2013890 b!6421294)))

(assert (=> bs!1615376 (not (= lambda!354950 lambda!354818))))

(assert (=> bs!1615371 (not (= lambda!354950 lambda!354888))))

(declare-fun bs!1615377 () Bool)

(assert (= bs!1615377 (and d!2013890 b!6421803)))

(assert (=> bs!1615377 (not (= lambda!354950 lambda!354869))))

(declare-fun bs!1615378 () Bool)

(assert (= bs!1615378 (and d!2013890 d!2013426)))

(assert (=> bs!1615378 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354950 lambda!354883))))

(declare-fun bs!1615379 () Bool)

(assert (= bs!1615379 (and d!2013890 b!6422176)))

(assert (=> bs!1615379 (not (= lambda!354950 lambda!354891))))

(declare-fun bs!1615380 () Bool)

(assert (= bs!1615380 (and d!2013890 d!2013318)))

(assert (=> bs!1615380 (not (= lambda!354950 lambda!354861))))

(assert (=> bs!1615376 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354950 lambda!354817))))

(declare-fun bs!1615381 () Bool)

(assert (= bs!1615381 (and d!2013890 b!6421303)))

(assert (=> bs!1615381 (not (= lambda!354950 lambda!354815))))

(assert (=> bs!1615380 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354950 lambda!354860))))

(assert (=> bs!1615381 (= lambda!354950 lambda!354814)))

(declare-fun bs!1615382 () Bool)

(assert (= bs!1615382 (and d!2013890 d!2013446)))

(assert (=> bs!1615382 (= lambda!354950 lambda!354886)))

(declare-fun bs!1615383 () Bool)

(assert (= bs!1615383 (and d!2013890 b!6421322)))

(assert (=> bs!1615383 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354950 lambda!354819))))

(declare-fun bs!1615384 () Bool)

(assert (= bs!1615384 (and d!2013890 b!6422126)))

(assert (=> bs!1615384 (not (= lambda!354950 lambda!354884))))

(assert (=> d!2013890 true))

(assert (=> d!2013890 true))

(assert (=> d!2013890 true))

(declare-fun lambda!354951 () Int)

(assert (=> bs!1615371 (not (= lambda!354951 lambda!354887))))

(declare-fun bs!1615385 () Bool)

(assert (= bs!1615385 d!2013890))

(assert (=> bs!1615385 (not (= lambda!354951 lambda!354950))))

(assert (=> bs!1615372 (not (= lambda!354951 lambda!354890))))

(assert (=> bs!1615373 (= lambda!354951 lambda!354870)))

(assert (=> bs!1615374 (not (= lambda!354951 lambda!354848))))

(assert (=> bs!1615375 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (regOne!33162 lt!2377164)) (= (regTwo!33162 r!7292) (regTwo!33162 lt!2377164))) (= lambda!354951 lambda!354885))))

(assert (=> bs!1615376 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354951 lambda!354818))))

(assert (=> bs!1615371 (= lambda!354951 lambda!354888)))

(assert (=> bs!1615377 (not (= lambda!354951 lambda!354869))))

(assert (=> bs!1615378 (not (= lambda!354951 lambda!354883))))

(assert (=> bs!1615379 (= (and (= (regOne!33162 r!7292) (regOne!33162 lt!2377183)) (= (regTwo!33162 r!7292) (regTwo!33162 lt!2377183))) (= lambda!354951 lambda!354891))))

(assert (=> bs!1615380 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354951 lambda!354861))))

(assert (=> bs!1615376 (not (= lambda!354951 lambda!354817))))

(assert (=> bs!1615381 (= lambda!354951 lambda!354815)))

(assert (=> bs!1615380 (not (= lambda!354951 lambda!354860))))

(assert (=> bs!1615381 (not (= lambda!354951 lambda!354814))))

(assert (=> bs!1615382 (not (= lambda!354951 lambda!354886))))

(assert (=> bs!1615383 (not (= lambda!354951 lambda!354819))))

(assert (=> bs!1615384 (not (= lambda!354951 lambda!354884))))

(assert (=> d!2013890 true))

(assert (=> d!2013890 true))

(assert (=> d!2013890 true))

(assert (=> d!2013890 (= (Exists!3395 lambda!354950) (Exists!3395 lambda!354951))))

(assert (=> d!2013890 true))

(declare-fun _$90!2288 () Unit!158631)

(assert (=> d!2013890 (= (choose!47721 (regOne!33162 r!7292) (regTwo!33162 r!7292) s!2326) _$90!2288)))

(declare-fun m!7217646 () Bool)

(assert (=> bs!1615385 m!7217646))

(declare-fun m!7217648 () Bool)

(assert (=> bs!1615385 m!7217648))

(assert (=> d!2013448 d!2013890))

(declare-fun b!6423252 () Bool)

(declare-fun e!3897132 () Bool)

(declare-fun call!552376 () Bool)

(assert (=> b!6423252 (= e!3897132 call!552376)))

(declare-fun c!1173587 () Bool)

(declare-fun bm!552370 () Bool)

(declare-fun c!1173586 () Bool)

(assert (=> bm!552370 (= call!552376 (validRegex!8061 (ite c!1173587 (reg!16654 (regOne!33162 r!7292)) (ite c!1173586 (regOne!33163 (regOne!33162 r!7292)) (regOne!33162 (regOne!33162 r!7292))))))))

(declare-fun d!2013902 () Bool)

(declare-fun res!2639859 () Bool)

(declare-fun e!3897135 () Bool)

(assert (=> d!2013902 (=> res!2639859 e!3897135)))

(assert (=> d!2013902 (= res!2639859 ((_ is ElementMatch!16325) (regOne!33162 r!7292)))))

(assert (=> d!2013902 (= (validRegex!8061 (regOne!33162 r!7292)) e!3897135)))

(declare-fun bm!552371 () Bool)

(declare-fun call!552377 () Bool)

(assert (=> bm!552371 (= call!552377 call!552376)))

(declare-fun b!6423253 () Bool)

(declare-fun e!3897133 () Bool)

(declare-fun call!552375 () Bool)

(assert (=> b!6423253 (= e!3897133 call!552375)))

(declare-fun b!6423254 () Bool)

(declare-fun res!2639857 () Bool)

(declare-fun e!3897129 () Bool)

(assert (=> b!6423254 (=> res!2639857 e!3897129)))

(assert (=> b!6423254 (= res!2639857 (not ((_ is Concat!25170) (regOne!33162 r!7292))))))

(declare-fun e!3897130 () Bool)

(assert (=> b!6423254 (= e!3897130 e!3897129)))

(declare-fun b!6423255 () Bool)

(declare-fun e!3897134 () Bool)

(assert (=> b!6423255 (= e!3897135 e!3897134)))

(assert (=> b!6423255 (= c!1173587 ((_ is Star!16325) (regOne!33162 r!7292)))))

(declare-fun b!6423256 () Bool)

(assert (=> b!6423256 (= e!3897134 e!3897132)))

(declare-fun res!2639860 () Bool)

(assert (=> b!6423256 (= res!2639860 (not (nullable!6318 (reg!16654 (regOne!33162 r!7292)))))))

(assert (=> b!6423256 (=> (not res!2639860) (not e!3897132))))

(declare-fun b!6423257 () Bool)

(assert (=> b!6423257 (= e!3897134 e!3897130)))

(assert (=> b!6423257 (= c!1173586 ((_ is Union!16325) (regOne!33162 r!7292)))))

(declare-fun b!6423258 () Bool)

(declare-fun e!3897131 () Bool)

(assert (=> b!6423258 (= e!3897131 call!552375)))

(declare-fun b!6423259 () Bool)

(declare-fun res!2639858 () Bool)

(assert (=> b!6423259 (=> (not res!2639858) (not e!3897131))))

(assert (=> b!6423259 (= res!2639858 call!552377)))

(assert (=> b!6423259 (= e!3897130 e!3897131)))

(declare-fun bm!552372 () Bool)

(assert (=> bm!552372 (= call!552375 (validRegex!8061 (ite c!1173586 (regTwo!33163 (regOne!33162 r!7292)) (regTwo!33162 (regOne!33162 r!7292)))))))

(declare-fun b!6423260 () Bool)

(assert (=> b!6423260 (= e!3897129 e!3897133)))

(declare-fun res!2639861 () Bool)

(assert (=> b!6423260 (=> (not res!2639861) (not e!3897133))))

(assert (=> b!6423260 (= res!2639861 call!552377)))

(assert (= (and d!2013902 (not res!2639859)) b!6423255))

(assert (= (and b!6423255 c!1173587) b!6423256))

(assert (= (and b!6423255 (not c!1173587)) b!6423257))

(assert (= (and b!6423256 res!2639860) b!6423252))

(assert (= (and b!6423257 c!1173586) b!6423259))

(assert (= (and b!6423257 (not c!1173586)) b!6423254))

(assert (= (and b!6423259 res!2639858) b!6423258))

(assert (= (and b!6423254 (not res!2639857)) b!6423260))

(assert (= (and b!6423260 res!2639861) b!6423253))

(assert (= (or b!6423258 b!6423253) bm!552372))

(assert (= (or b!6423259 b!6423260) bm!552371))

(assert (= (or b!6423252 bm!552371) bm!552370))

(declare-fun m!7217650 () Bool)

(assert (=> bm!552370 m!7217650))

(assert (=> b!6423256 m!7215838))

(declare-fun m!7217652 () Bool)

(assert (=> bm!552372 m!7217652))

(assert (=> d!2013448 d!2013902))

(declare-fun d!2013904 () Bool)

(assert (=> d!2013904 (= (isConcat!1249 lt!2377307) ((_ is Concat!25170) lt!2377307))))

(assert (=> b!6422051 d!2013904))

(declare-fun d!2013906 () Bool)

(assert (=> d!2013906 (= (isEmpty!37310 s!2326) ((_ is Nil!65150) s!2326))))

(assert (=> bm!552192 d!2013906))

(assert (=> bs!1614795 d!2013416))

(declare-fun d!2013908 () Bool)

(assert (=> d!2013908 true))

(assert (=> d!2013908 true))

(declare-fun res!2639864 () Bool)

(assert (=> d!2013908 (= (choose!47719 lambda!354817) res!2639864)))

(assert (=> d!2013314 d!2013908))

(assert (=> d!2013410 d!2013408))

(declare-fun d!2013910 () Bool)

(assert (=> d!2013910 (= (flatMap!1830 lt!2377194 lambda!354816) (dynLambda!25880 lambda!354816 lt!2377192))))

(assert (=> d!2013910 true))

(declare-fun _$13!3641 () Unit!158631)

(assert (=> d!2013910 (= (choose!47725 lt!2377194 lt!2377192 lambda!354816) _$13!3641)))

(declare-fun b_lambda!244145 () Bool)

(assert (=> (not b_lambda!244145) (not d!2013910)))

(declare-fun bs!1615386 () Bool)

(assert (= bs!1615386 d!2013910))

(assert (=> bs!1615386 m!7215884))

(assert (=> bs!1615386 m!7216476))

(assert (=> d!2013410 d!2013910))

(declare-fun d!2013912 () Bool)

(assert (=> d!2013912 (= (nullable!6318 (h!71599 (exprs!6209 lt!2377171))) (nullableFct!2264 (h!71599 (exprs!6209 lt!2377171))))))

(declare-fun bs!1615387 () Bool)

(assert (= bs!1615387 d!2013912))

(declare-fun m!7217654 () Bool)

(assert (=> bs!1615387 m!7217654))

(assert (=> b!6422058 d!2013912))

(assert (=> d!2013422 d!2013464))

(declare-fun b!6423261 () Bool)

(declare-fun e!3897139 () Bool)

(declare-fun call!552379 () Bool)

(assert (=> b!6423261 (= e!3897139 call!552379)))

(declare-fun c!1173589 () Bool)

(declare-fun bm!552373 () Bool)

(declare-fun c!1173588 () Bool)

(assert (=> bm!552373 (= call!552379 (validRegex!8061 (ite c!1173589 (reg!16654 lt!2377164) (ite c!1173588 (regOne!33163 lt!2377164) (regOne!33162 lt!2377164)))))))

(declare-fun d!2013914 () Bool)

(declare-fun res!2639867 () Bool)

(declare-fun e!3897142 () Bool)

(assert (=> d!2013914 (=> res!2639867 e!3897142)))

(assert (=> d!2013914 (= res!2639867 ((_ is ElementMatch!16325) lt!2377164))))

(assert (=> d!2013914 (= (validRegex!8061 lt!2377164) e!3897142)))

(declare-fun bm!552374 () Bool)

(declare-fun call!552380 () Bool)

(assert (=> bm!552374 (= call!552380 call!552379)))

(declare-fun b!6423262 () Bool)

(declare-fun e!3897140 () Bool)

(declare-fun call!552378 () Bool)

(assert (=> b!6423262 (= e!3897140 call!552378)))

(declare-fun b!6423263 () Bool)

(declare-fun res!2639865 () Bool)

(declare-fun e!3897136 () Bool)

(assert (=> b!6423263 (=> res!2639865 e!3897136)))

(assert (=> b!6423263 (= res!2639865 (not ((_ is Concat!25170) lt!2377164)))))

(declare-fun e!3897137 () Bool)

(assert (=> b!6423263 (= e!3897137 e!3897136)))

(declare-fun b!6423264 () Bool)

(declare-fun e!3897141 () Bool)

(assert (=> b!6423264 (= e!3897142 e!3897141)))

(assert (=> b!6423264 (= c!1173589 ((_ is Star!16325) lt!2377164))))

(declare-fun b!6423265 () Bool)

(assert (=> b!6423265 (= e!3897141 e!3897139)))

(declare-fun res!2639868 () Bool)

(assert (=> b!6423265 (= res!2639868 (not (nullable!6318 (reg!16654 lt!2377164))))))

(assert (=> b!6423265 (=> (not res!2639868) (not e!3897139))))

(declare-fun b!6423266 () Bool)

(assert (=> b!6423266 (= e!3897141 e!3897137)))

(assert (=> b!6423266 (= c!1173588 ((_ is Union!16325) lt!2377164))))

(declare-fun b!6423267 () Bool)

(declare-fun e!3897138 () Bool)

(assert (=> b!6423267 (= e!3897138 call!552378)))

(declare-fun b!6423268 () Bool)

(declare-fun res!2639866 () Bool)

(assert (=> b!6423268 (=> (not res!2639866) (not e!3897138))))

(assert (=> b!6423268 (= res!2639866 call!552380)))

(assert (=> b!6423268 (= e!3897137 e!3897138)))

(declare-fun bm!552375 () Bool)

(assert (=> bm!552375 (= call!552378 (validRegex!8061 (ite c!1173588 (regTwo!33163 lt!2377164) (regTwo!33162 lt!2377164))))))

(declare-fun b!6423269 () Bool)

(assert (=> b!6423269 (= e!3897136 e!3897140)))

(declare-fun res!2639869 () Bool)

(assert (=> b!6423269 (=> (not res!2639869) (not e!3897140))))

(assert (=> b!6423269 (= res!2639869 call!552380)))

(assert (= (and d!2013914 (not res!2639867)) b!6423264))

(assert (= (and b!6423264 c!1173589) b!6423265))

(assert (= (and b!6423264 (not c!1173589)) b!6423266))

(assert (= (and b!6423265 res!2639868) b!6423261))

(assert (= (and b!6423266 c!1173588) b!6423268))

(assert (= (and b!6423266 (not c!1173588)) b!6423263))

(assert (= (and b!6423268 res!2639866) b!6423267))

(assert (= (and b!6423263 (not res!2639865)) b!6423269))

(assert (= (and b!6423269 res!2639869) b!6423262))

(assert (= (or b!6423267 b!6423262) bm!552375))

(assert (= (or b!6423268 b!6423269) bm!552374))

(assert (= (or b!6423261 bm!552374) bm!552373))

(declare-fun m!7217656 () Bool)

(assert (=> bm!552373 m!7217656))

(declare-fun m!7217658 () Bool)

(assert (=> b!6423265 m!7217658))

(declare-fun m!7217660 () Bool)

(assert (=> bm!552375 m!7217660))

(assert (=> d!2013422 d!2013914))

(declare-fun d!2013916 () Bool)

(assert (=> d!2013916 (= (isEmptyLang!1733 lt!2377329) ((_ is EmptyLang!16325) lt!2377329))))

(assert (=> b!6422233 d!2013916))

(declare-fun b!6423270 () Bool)

(declare-fun res!2639874 () Bool)

(declare-fun e!3897145 () Bool)

(assert (=> b!6423270 (=> res!2639874 e!3897145)))

(declare-fun e!3897143 () Bool)

(assert (=> b!6423270 (= res!2639874 e!3897143)))

(declare-fun res!2639870 () Bool)

(assert (=> b!6423270 (=> (not res!2639870) (not e!3897143))))

(declare-fun lt!2377388 () Bool)

(assert (=> b!6423270 (= res!2639870 lt!2377388)))

(declare-fun b!6423271 () Bool)

(declare-fun res!2639875 () Bool)

(assert (=> b!6423271 (=> (not res!2639875) (not e!3897143))))

(assert (=> b!6423271 (= res!2639875 (isEmpty!37310 (tail!12226 (_1!36607 (get!22571 lt!2377314)))))))

(declare-fun b!6423272 () Bool)

(declare-fun e!3897147 () Bool)

(declare-fun e!3897144 () Bool)

(assert (=> b!6423272 (= e!3897147 e!3897144)))

(declare-fun c!1173592 () Bool)

(assert (=> b!6423272 (= c!1173592 ((_ is EmptyLang!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun b!6423273 () Bool)

(declare-fun res!2639876 () Bool)

(declare-fun e!3897148 () Bool)

(assert (=> b!6423273 (=> res!2639876 e!3897148)))

(assert (=> b!6423273 (= res!2639876 (not (isEmpty!37310 (tail!12226 (_1!36607 (get!22571 lt!2377314))))))))

(declare-fun d!2013918 () Bool)

(assert (=> d!2013918 e!3897147))

(declare-fun c!1173590 () Bool)

(assert (=> d!2013918 (= c!1173590 ((_ is EmptyExpr!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun e!3897146 () Bool)

(assert (=> d!2013918 (= lt!2377388 e!3897146)))

(declare-fun c!1173591 () Bool)

(assert (=> d!2013918 (= c!1173591 (isEmpty!37310 (_1!36607 (get!22571 lt!2377314))))))

(assert (=> d!2013918 (validRegex!8061 (reg!16654 (regOne!33162 r!7292)))))

(assert (=> d!2013918 (= (matchR!8508 (reg!16654 (regOne!33162 r!7292)) (_1!36607 (get!22571 lt!2377314))) lt!2377388)))

(declare-fun b!6423274 () Bool)

(declare-fun e!3897149 () Bool)

(assert (=> b!6423274 (= e!3897149 e!3897148)))

(declare-fun res!2639873 () Bool)

(assert (=> b!6423274 (=> res!2639873 e!3897148)))

(declare-fun call!552381 () Bool)

(assert (=> b!6423274 (= res!2639873 call!552381)))

(declare-fun b!6423275 () Bool)

(assert (=> b!6423275 (= e!3897148 (not (= (head!13141 (_1!36607 (get!22571 lt!2377314))) (c!1173074 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun b!6423276 () Bool)

(declare-fun res!2639872 () Bool)

(assert (=> b!6423276 (=> res!2639872 e!3897145)))

(assert (=> b!6423276 (= res!2639872 (not ((_ is ElementMatch!16325) (reg!16654 (regOne!33162 r!7292)))))))

(assert (=> b!6423276 (= e!3897144 e!3897145)))

(declare-fun b!6423277 () Bool)

(assert (=> b!6423277 (= e!3897147 (= lt!2377388 call!552381))))

(declare-fun b!6423278 () Bool)

(assert (=> b!6423278 (= e!3897146 (matchR!8508 (derivativeStep!5029 (reg!16654 (regOne!33162 r!7292)) (head!13141 (_1!36607 (get!22571 lt!2377314)))) (tail!12226 (_1!36607 (get!22571 lt!2377314)))))))

(declare-fun b!6423279 () Bool)

(assert (=> b!6423279 (= e!3897146 (nullable!6318 (reg!16654 (regOne!33162 r!7292))))))

(declare-fun bm!552376 () Bool)

(assert (=> bm!552376 (= call!552381 (isEmpty!37310 (_1!36607 (get!22571 lt!2377314))))))

(declare-fun b!6423280 () Bool)

(assert (=> b!6423280 (= e!3897143 (= (head!13141 (_1!36607 (get!22571 lt!2377314))) (c!1173074 (reg!16654 (regOne!33162 r!7292)))))))

(declare-fun b!6423281 () Bool)

(assert (=> b!6423281 (= e!3897144 (not lt!2377388))))

(declare-fun b!6423282 () Bool)

(declare-fun res!2639877 () Bool)

(assert (=> b!6423282 (=> (not res!2639877) (not e!3897143))))

(assert (=> b!6423282 (= res!2639877 (not call!552381))))

(declare-fun b!6423283 () Bool)

(assert (=> b!6423283 (= e!3897145 e!3897149)))

(declare-fun res!2639871 () Bool)

(assert (=> b!6423283 (=> (not res!2639871) (not e!3897149))))

(assert (=> b!6423283 (= res!2639871 (not lt!2377388))))

(assert (= (and d!2013918 c!1173591) b!6423279))

(assert (= (and d!2013918 (not c!1173591)) b!6423278))

(assert (= (and d!2013918 c!1173590) b!6423277))

(assert (= (and d!2013918 (not c!1173590)) b!6423272))

(assert (= (and b!6423272 c!1173592) b!6423281))

(assert (= (and b!6423272 (not c!1173592)) b!6423276))

(assert (= (and b!6423276 (not res!2639872)) b!6423270))

(assert (= (and b!6423270 res!2639870) b!6423282))

(assert (= (and b!6423282 res!2639877) b!6423271))

(assert (= (and b!6423271 res!2639875) b!6423280))

(assert (= (and b!6423270 (not res!2639874)) b!6423283))

(assert (= (and b!6423283 res!2639871) b!6423274))

(assert (= (and b!6423274 (not res!2639873)) b!6423273))

(assert (= (and b!6423273 (not res!2639876)) b!6423275))

(assert (= (or b!6423277 b!6423274 b!6423282) bm!552376))

(declare-fun m!7217662 () Bool)

(assert (=> b!6423271 m!7217662))

(assert (=> b!6423271 m!7217662))

(declare-fun m!7217664 () Bool)

(assert (=> b!6423271 m!7217664))

(assert (=> b!6423273 m!7217662))

(assert (=> b!6423273 m!7217662))

(assert (=> b!6423273 m!7217664))

(declare-fun m!7217666 () Bool)

(assert (=> b!6423280 m!7217666))

(declare-fun m!7217668 () Bool)

(assert (=> bm!552376 m!7217668))

(assert (=> b!6423279 m!7215838))

(assert (=> b!6423278 m!7217666))

(assert (=> b!6423278 m!7217666))

(declare-fun m!7217670 () Bool)

(assert (=> b!6423278 m!7217670))

(assert (=> b!6423278 m!7217662))

(assert (=> b!6423278 m!7217670))

(assert (=> b!6423278 m!7217662))

(declare-fun m!7217672 () Bool)

(assert (=> b!6423278 m!7217672))

(assert (=> b!6423275 m!7217666))

(assert (=> d!2013918 m!7217668))

(assert (=> d!2013918 m!7215810))

(assert (=> b!6422135 d!2013918))

(declare-fun d!2013920 () Bool)

(assert (=> d!2013920 (= (get!22571 lt!2377314) (v!52388 lt!2377314))))

(assert (=> b!6422135 d!2013920))

(declare-fun d!2013922 () Bool)

(declare-fun lambda!354954 () Int)

(declare-fun exists!2599 ((InoxSet Context!11418) Int) Bool)

(assert (=> d!2013922 (= (nullableZipper!2090 ((_ map or) lt!2377173 lt!2377180)) (exists!2599 ((_ map or) lt!2377173 lt!2377180) lambda!354954))))

(declare-fun bs!1615388 () Bool)

(assert (= bs!1615388 d!2013922))

(declare-fun m!7217674 () Bool)

(assert (=> bs!1615388 m!7217674))

(assert (=> b!6422004 d!2013922))

(declare-fun d!2013924 () Bool)

(declare-fun c!1173595 () Bool)

(assert (=> d!2013924 (= c!1173595 (isEmpty!37310 (tail!12226 s!2326)))))

(declare-fun e!3897150 () Bool)

(assert (=> d!2013924 (= (matchZipper!2337 (derivationStepZipper!2291 lt!2377200 (head!13141 s!2326)) (tail!12226 s!2326)) e!3897150)))

(declare-fun b!6423284 () Bool)

(assert (=> b!6423284 (= e!3897150 (nullableZipper!2090 (derivationStepZipper!2291 lt!2377200 (head!13141 s!2326))))))

(declare-fun b!6423285 () Bool)

(assert (=> b!6423285 (= e!3897150 (matchZipper!2337 (derivationStepZipper!2291 (derivationStepZipper!2291 lt!2377200 (head!13141 s!2326)) (head!13141 (tail!12226 s!2326))) (tail!12226 (tail!12226 s!2326))))))

(assert (= (and d!2013924 c!1173595) b!6423284))

(assert (= (and d!2013924 (not c!1173595)) b!6423285))

(assert (=> d!2013924 m!7216358))

(assert (=> d!2013924 m!7216360))

(assert (=> b!6423284 m!7216402))

(declare-fun m!7217676 () Bool)

(assert (=> b!6423284 m!7217676))

(assert (=> b!6423285 m!7216358))

(declare-fun m!7217678 () Bool)

(assert (=> b!6423285 m!7217678))

(assert (=> b!6423285 m!7216402))

(assert (=> b!6423285 m!7217678))

(declare-fun m!7217680 () Bool)

(assert (=> b!6423285 m!7217680))

(assert (=> b!6423285 m!7216358))

(declare-fun m!7217682 () Bool)

(assert (=> b!6423285 m!7217682))

(assert (=> b!6423285 m!7217680))

(assert (=> b!6423285 m!7217682))

(declare-fun m!7217684 () Bool)

(assert (=> b!6423285 m!7217684))

(assert (=> b!6421962 d!2013924))

(declare-fun bs!1615389 () Bool)

(declare-fun d!2013926 () Bool)

(assert (= bs!1615389 (and d!2013926 b!6421308)))

(declare-fun lambda!354955 () Int)

(assert (=> bs!1615389 (= (= (head!13141 s!2326) (h!71598 s!2326)) (= lambda!354955 lambda!354816))))

(declare-fun bs!1615390 () Bool)

(assert (= bs!1615390 (and d!2013926 d!2013420)))

(assert (=> bs!1615390 (= (= (head!13141 s!2326) (h!71598 s!2326)) (= lambda!354955 lambda!354882))))

(assert (=> d!2013926 true))

(assert (=> d!2013926 (= (derivationStepZipper!2291 lt!2377200 (head!13141 s!2326)) (flatMap!1830 lt!2377200 lambda!354955))))

(declare-fun bs!1615391 () Bool)

(assert (= bs!1615391 d!2013926))

(declare-fun m!7217686 () Bool)

(assert (=> bs!1615391 m!7217686))

(assert (=> b!6421962 d!2013926))

(declare-fun d!2013928 () Bool)

(assert (=> d!2013928 (= (head!13141 s!2326) (h!71598 s!2326))))

(assert (=> b!6421962 d!2013928))

(declare-fun d!2013930 () Bool)

(assert (=> d!2013930 (= (tail!12226 s!2326) (t!378888 s!2326))))

(assert (=> b!6421962 d!2013930))

(declare-fun d!2013932 () Bool)

(assert (=> d!2013932 (= (nullable!6318 (h!71599 (exprs!6209 lt!2377181))) (nullableFct!2264 (h!71599 (exprs!6209 lt!2377181))))))

(declare-fun bs!1615392 () Bool)

(assert (= bs!1615392 d!2013932))

(declare-fun m!7217688 () Bool)

(assert (=> bs!1615392 m!7217688))

(assert (=> b!6422207 d!2013932))

(declare-fun bs!1615393 () Bool)

(declare-fun b!6423294 () Bool)

(assert (= bs!1615393 (and b!6423294 d!2013448)))

(declare-fun lambda!354956 () Int)

(assert (=> bs!1615393 (not (= lambda!354956 lambda!354887))))

(declare-fun bs!1615394 () Bool)

(assert (= bs!1615394 (and b!6423294 d!2013890)))

(assert (=> bs!1615394 (not (= lambda!354956 lambda!354950))))

(declare-fun bs!1615395 () Bool)

(assert (= bs!1615395 (and b!6423294 b!6422181)))

(assert (=> bs!1615395 (= (and (= (reg!16654 (regOne!33163 r!7292)) (reg!16654 lt!2377183)) (= (regOne!33163 r!7292) lt!2377183)) (= lambda!354956 lambda!354890))))

(declare-fun bs!1615396 () Bool)

(assert (= bs!1615396 (and b!6423294 b!6421798)))

(assert (=> bs!1615396 (not (= lambda!354956 lambda!354870))))

(declare-fun bs!1615397 () Bool)

(assert (= bs!1615397 (and b!6423294 d!2013302)))

(assert (=> bs!1615397 (not (= lambda!354956 lambda!354848))))

(declare-fun bs!1615398 () Bool)

(assert (= bs!1615398 (and b!6423294 b!6422121)))

(assert (=> bs!1615398 (not (= lambda!354956 lambda!354885))))

(assert (=> bs!1615393 (not (= lambda!354956 lambda!354888))))

(declare-fun bs!1615399 () Bool)

(assert (= bs!1615399 (and b!6423294 b!6421803)))

(assert (=> bs!1615399 (= (and (= (reg!16654 (regOne!33163 r!7292)) (reg!16654 r!7292)) (= (regOne!33163 r!7292) r!7292)) (= lambda!354956 lambda!354869))))

(declare-fun bs!1615400 () Bool)

(assert (= bs!1615400 (and b!6423294 d!2013426)))

(assert (=> bs!1615400 (not (= lambda!354956 lambda!354883))))

(declare-fun bs!1615401 () Bool)

(assert (= bs!1615401 (and b!6423294 b!6422176)))

(assert (=> bs!1615401 (not (= lambda!354956 lambda!354891))))

(declare-fun bs!1615402 () Bool)

(assert (= bs!1615402 (and b!6423294 d!2013318)))

(assert (=> bs!1615402 (not (= lambda!354956 lambda!354861))))

(declare-fun bs!1615403 () Bool)

(assert (= bs!1615403 (and b!6423294 b!6421294)))

(assert (=> bs!1615403 (not (= lambda!354956 lambda!354817))))

(declare-fun bs!1615404 () Bool)

(assert (= bs!1615404 (and b!6423294 b!6421303)))

(assert (=> bs!1615404 (not (= lambda!354956 lambda!354815))))

(assert (=> bs!1615402 (not (= lambda!354956 lambda!354860))))

(assert (=> bs!1615404 (not (= lambda!354956 lambda!354814))))

(assert (=> bs!1615403 (not (= lambda!354956 lambda!354818))))

(assert (=> bs!1615394 (not (= lambda!354956 lambda!354951))))

(declare-fun bs!1615405 () Bool)

(assert (= bs!1615405 (and b!6423294 d!2013446)))

(assert (=> bs!1615405 (not (= lambda!354956 lambda!354886))))

(declare-fun bs!1615406 () Bool)

(assert (= bs!1615406 (and b!6423294 b!6421322)))

(assert (=> bs!1615406 (not (= lambda!354956 lambda!354819))))

(declare-fun bs!1615407 () Bool)

(assert (= bs!1615407 (and b!6423294 b!6422126)))

(assert (=> bs!1615407 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regOne!33163 r!7292)) (reg!16654 lt!2377164)) (= (regOne!33163 r!7292) lt!2377164)) (= lambda!354956 lambda!354884))))

(assert (=> b!6423294 true))

(assert (=> b!6423294 true))

(declare-fun bs!1615408 () Bool)

(declare-fun b!6423289 () Bool)

(assert (= bs!1615408 (and b!6423289 d!2013448)))

(declare-fun lambda!354957 () Int)

(assert (=> bs!1615408 (not (= lambda!354957 lambda!354887))))

(declare-fun bs!1615409 () Bool)

(assert (= bs!1615409 (and b!6423289 d!2013890)))

(assert (=> bs!1615409 (not (= lambda!354957 lambda!354950))))

(declare-fun bs!1615410 () Bool)

(assert (= bs!1615410 (and b!6423289 b!6422181)))

(assert (=> bs!1615410 (not (= lambda!354957 lambda!354890))))

(declare-fun bs!1615411 () Bool)

(assert (= bs!1615411 (and b!6423289 b!6421798)))

(assert (=> bs!1615411 (= (and (= (regOne!33162 (regOne!33163 r!7292)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354957 lambda!354870))))

(declare-fun bs!1615412 () Bool)

(assert (= bs!1615412 (and b!6423289 d!2013302)))

(assert (=> bs!1615412 (not (= lambda!354957 lambda!354848))))

(declare-fun bs!1615413 () Bool)

(assert (= bs!1615413 (and b!6423289 b!6422121)))

(assert (=> bs!1615413 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regOne!33163 r!7292)) (regOne!33162 lt!2377164)) (= (regTwo!33162 (regOne!33163 r!7292)) (regTwo!33162 lt!2377164))) (= lambda!354957 lambda!354885))))

(declare-fun bs!1615414 () Bool)

(assert (= bs!1615414 (and b!6423289 b!6423294)))

(assert (=> bs!1615414 (not (= lambda!354957 lambda!354956))))

(assert (=> bs!1615408 (= (and (= (regOne!33162 (regOne!33163 r!7292)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354957 lambda!354888))))

(declare-fun bs!1615415 () Bool)

(assert (= bs!1615415 (and b!6423289 b!6421803)))

(assert (=> bs!1615415 (not (= lambda!354957 lambda!354869))))

(declare-fun bs!1615416 () Bool)

(assert (= bs!1615416 (and b!6423289 d!2013426)))

(assert (=> bs!1615416 (not (= lambda!354957 lambda!354883))))

(declare-fun bs!1615417 () Bool)

(assert (= bs!1615417 (and b!6423289 b!6422176)))

(assert (=> bs!1615417 (= (and (= (regOne!33162 (regOne!33163 r!7292)) (regOne!33162 lt!2377183)) (= (regTwo!33162 (regOne!33163 r!7292)) (regTwo!33162 lt!2377183))) (= lambda!354957 lambda!354891))))

(declare-fun bs!1615418 () Bool)

(assert (= bs!1615418 (and b!6423289 d!2013318)))

(assert (=> bs!1615418 (= (and (= (regOne!33162 (regOne!33163 r!7292)) lt!2377164) (= (regTwo!33162 (regOne!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354957 lambda!354861))))

(declare-fun bs!1615419 () Bool)

(assert (= bs!1615419 (and b!6423289 b!6421294)))

(assert (=> bs!1615419 (not (= lambda!354957 lambda!354817))))

(declare-fun bs!1615420 () Bool)

(assert (= bs!1615420 (and b!6423289 b!6421303)))

(assert (=> bs!1615420 (= (and (= (regOne!33162 (regOne!33163 r!7292)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354957 lambda!354815))))

(assert (=> bs!1615418 (not (= lambda!354957 lambda!354860))))

(assert (=> bs!1615420 (not (= lambda!354957 lambda!354814))))

(assert (=> bs!1615419 (= (and (= (regOne!33162 (regOne!33163 r!7292)) lt!2377164) (= (regTwo!33162 (regOne!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354957 lambda!354818))))

(assert (=> bs!1615409 (= (and (= (regOne!33162 (regOne!33163 r!7292)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354957 lambda!354951))))

(declare-fun bs!1615421 () Bool)

(assert (= bs!1615421 (and b!6423289 d!2013446)))

(assert (=> bs!1615421 (not (= lambda!354957 lambda!354886))))

(declare-fun bs!1615422 () Bool)

(assert (= bs!1615422 (and b!6423289 b!6421322)))

(assert (=> bs!1615422 (not (= lambda!354957 lambda!354819))))

(declare-fun bs!1615423 () Bool)

(assert (= bs!1615423 (and b!6423289 b!6422126)))

(assert (=> bs!1615423 (not (= lambda!354957 lambda!354884))))

(assert (=> b!6423289 true))

(assert (=> b!6423289 true))

(declare-fun b!6423286 () Bool)

(declare-fun e!3897157 () Bool)

(assert (=> b!6423286 (= e!3897157 (= s!2326 (Cons!65150 (c!1173074 (regOne!33163 r!7292)) Nil!65150)))))

(declare-fun b!6423287 () Bool)

(declare-fun e!3897156 () Bool)

(declare-fun e!3897155 () Bool)

(assert (=> b!6423287 (= e!3897156 e!3897155)))

(declare-fun c!1173599 () Bool)

(assert (=> b!6423287 (= c!1173599 ((_ is Star!16325) (regOne!33163 r!7292)))))

(declare-fun b!6423288 () Bool)

(declare-fun res!2639880 () Bool)

(declare-fun e!3897154 () Bool)

(assert (=> b!6423288 (=> res!2639880 e!3897154)))

(declare-fun call!552382 () Bool)

(assert (=> b!6423288 (= res!2639880 call!552382)))

(assert (=> b!6423288 (= e!3897155 e!3897154)))

(declare-fun call!552383 () Bool)

(assert (=> b!6423289 (= e!3897155 call!552383)))

(declare-fun b!6423290 () Bool)

(declare-fun e!3897151 () Bool)

(assert (=> b!6423290 (= e!3897156 e!3897151)))

(declare-fun res!2639878 () Bool)

(assert (=> b!6423290 (= res!2639878 (matchRSpec!3426 (regOne!33163 (regOne!33163 r!7292)) s!2326))))

(assert (=> b!6423290 (=> res!2639878 e!3897151)))

(declare-fun b!6423291 () Bool)

(assert (=> b!6423291 (= e!3897151 (matchRSpec!3426 (regTwo!33163 (regOne!33163 r!7292)) s!2326))))

(declare-fun b!6423292 () Bool)

(declare-fun c!1173597 () Bool)

(assert (=> b!6423292 (= c!1173597 ((_ is Union!16325) (regOne!33163 r!7292)))))

(assert (=> b!6423292 (= e!3897157 e!3897156)))

(declare-fun d!2013934 () Bool)

(declare-fun c!1173598 () Bool)

(assert (=> d!2013934 (= c!1173598 ((_ is EmptyExpr!16325) (regOne!33163 r!7292)))))

(declare-fun e!3897152 () Bool)

(assert (=> d!2013934 (= (matchRSpec!3426 (regOne!33163 r!7292) s!2326) e!3897152)))

(declare-fun b!6423293 () Bool)

(declare-fun e!3897153 () Bool)

(assert (=> b!6423293 (= e!3897152 e!3897153)))

(declare-fun res!2639879 () Bool)

(assert (=> b!6423293 (= res!2639879 (not ((_ is EmptyLang!16325) (regOne!33163 r!7292))))))

(assert (=> b!6423293 (=> (not res!2639879) (not e!3897153))))

(assert (=> b!6423294 (= e!3897154 call!552383)))

(declare-fun bm!552377 () Bool)

(assert (=> bm!552377 (= call!552383 (Exists!3395 (ite c!1173599 lambda!354956 lambda!354957)))))

(declare-fun b!6423295 () Bool)

(assert (=> b!6423295 (= e!3897152 call!552382)))

(declare-fun b!6423296 () Bool)

(declare-fun c!1173596 () Bool)

(assert (=> b!6423296 (= c!1173596 ((_ is ElementMatch!16325) (regOne!33163 r!7292)))))

(assert (=> b!6423296 (= e!3897153 e!3897157)))

(declare-fun bm!552378 () Bool)

(assert (=> bm!552378 (= call!552382 (isEmpty!37310 s!2326))))

(assert (= (and d!2013934 c!1173598) b!6423295))

(assert (= (and d!2013934 (not c!1173598)) b!6423293))

(assert (= (and b!6423293 res!2639879) b!6423296))

(assert (= (and b!6423296 c!1173596) b!6423286))

(assert (= (and b!6423296 (not c!1173596)) b!6423292))

(assert (= (and b!6423292 c!1173597) b!6423290))

(assert (= (and b!6423292 (not c!1173597)) b!6423287))

(assert (= (and b!6423290 (not res!2639878)) b!6423291))

(assert (= (and b!6423287 c!1173599) b!6423288))

(assert (= (and b!6423287 (not c!1173599)) b!6423289))

(assert (= (and b!6423288 (not res!2639880)) b!6423294))

(assert (= (or b!6423294 b!6423289) bm!552377))

(assert (= (or b!6423295 b!6423288) bm!552378))

(declare-fun m!7217690 () Bool)

(assert (=> b!6423290 m!7217690))

(declare-fun m!7217692 () Bool)

(assert (=> b!6423291 m!7217692))

(declare-fun m!7217694 () Bool)

(assert (=> bm!552377 m!7217694))

(assert (=> bm!552378 m!7216326))

(assert (=> b!6421799 d!2013934))

(declare-fun b!6423297 () Bool)

(declare-fun e!3897159 () (InoxSet Context!11418))

(assert (=> b!6423297 (= e!3897159 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013936 () Bool)

(declare-fun c!1173601 () Bool)

(declare-fun e!3897158 () Bool)

(assert (=> d!2013936 (= c!1173601 e!3897158)))

(declare-fun res!2639881 () Bool)

(assert (=> d!2013936 (=> (not res!2639881) (not e!3897158))))

(assert (=> d!2013936 (= res!2639881 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))))))))

(declare-fun e!3897160 () (InoxSet Context!11418))

(assert (=> d!2013936 (= (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))) (h!71598 s!2326)) e!3897160)))

(declare-fun b!6423298 () Bool)

(declare-fun call!552384 () (InoxSet Context!11418))

(assert (=> b!6423298 (= e!3897160 ((_ map or) call!552384 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343))))))) (h!71598 s!2326))))))

(declare-fun bm!552379 () Bool)

(assert (=> bm!552379 (= call!552384 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))))) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343))))))) (h!71598 s!2326)))))

(declare-fun b!6423299 () Bool)

(assert (=> b!6423299 (= e!3897158 (nullable!6318 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343))))))))))

(declare-fun b!6423300 () Bool)

(assert (=> b!6423300 (= e!3897160 e!3897159)))

(declare-fun c!1173600 () Bool)

(assert (=> b!6423300 (= c!1173600 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))))))))

(declare-fun b!6423301 () Bool)

(assert (=> b!6423301 (= e!3897159 call!552384)))

(assert (= (and d!2013936 res!2639881) b!6423299))

(assert (= (and d!2013936 c!1173601) b!6423298))

(assert (= (and d!2013936 (not c!1173601)) b!6423300))

(assert (= (and b!6423300 c!1173600) b!6423301))

(assert (= (and b!6423300 (not c!1173600)) b!6423297))

(assert (= (or b!6423298 b!6423301) bm!552379))

(declare-fun m!7217696 () Bool)

(assert (=> b!6423298 m!7217696))

(declare-fun m!7217698 () Bool)

(assert (=> bm!552379 m!7217698))

(declare-fun m!7217700 () Bool)

(assert (=> b!6423299 m!7217700))

(assert (=> b!6422201 d!2013936))

(declare-fun b!6423302 () Bool)

(declare-fun res!2639886 () Bool)

(declare-fun e!3897163 () Bool)

(assert (=> b!6423302 (=> res!2639886 e!3897163)))

(declare-fun e!3897161 () Bool)

(assert (=> b!6423302 (= res!2639886 e!3897161)))

(declare-fun res!2639882 () Bool)

(assert (=> b!6423302 (=> (not res!2639882) (not e!3897161))))

(declare-fun lt!2377389 () Bool)

(assert (=> b!6423302 (= res!2639882 lt!2377389)))

(declare-fun b!6423303 () Bool)

(declare-fun res!2639887 () Bool)

(assert (=> b!6423303 (=> (not res!2639887) (not e!3897161))))

(assert (=> b!6423303 (= res!2639887 (isEmpty!37310 (tail!12226 (tail!12226 (_1!36607 lt!2377178)))))))

(declare-fun b!6423304 () Bool)

(declare-fun e!3897165 () Bool)

(declare-fun e!3897162 () Bool)

(assert (=> b!6423304 (= e!3897165 e!3897162)))

(declare-fun c!1173604 () Bool)

(assert (=> b!6423304 (= c!1173604 ((_ is EmptyLang!16325) (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178)))))))

(declare-fun b!6423305 () Bool)

(declare-fun res!2639888 () Bool)

(declare-fun e!3897166 () Bool)

(assert (=> b!6423305 (=> res!2639888 e!3897166)))

(assert (=> b!6423305 (= res!2639888 (not (isEmpty!37310 (tail!12226 (tail!12226 (_1!36607 lt!2377178))))))))

(declare-fun d!2013938 () Bool)

(assert (=> d!2013938 e!3897165))

(declare-fun c!1173602 () Bool)

(assert (=> d!2013938 (= c!1173602 ((_ is EmptyExpr!16325) (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178)))))))

(declare-fun e!3897164 () Bool)

(assert (=> d!2013938 (= lt!2377389 e!3897164)))

(declare-fun c!1173603 () Bool)

(assert (=> d!2013938 (= c!1173603 (isEmpty!37310 (tail!12226 (_1!36607 lt!2377178))))))

(assert (=> d!2013938 (validRegex!8061 (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178))))))

(assert (=> d!2013938 (= (matchR!8508 (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178))) (tail!12226 (_1!36607 lt!2377178))) lt!2377389)))

(declare-fun b!6423306 () Bool)

(declare-fun e!3897167 () Bool)

(assert (=> b!6423306 (= e!3897167 e!3897166)))

(declare-fun res!2639885 () Bool)

(assert (=> b!6423306 (=> res!2639885 e!3897166)))

(declare-fun call!552385 () Bool)

(assert (=> b!6423306 (= res!2639885 call!552385)))

(declare-fun b!6423307 () Bool)

(assert (=> b!6423307 (= e!3897166 (not (= (head!13141 (tail!12226 (_1!36607 lt!2377178))) (c!1173074 (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178)))))))))

(declare-fun b!6423308 () Bool)

(declare-fun res!2639884 () Bool)

(assert (=> b!6423308 (=> res!2639884 e!3897163)))

(assert (=> b!6423308 (= res!2639884 (not ((_ is ElementMatch!16325) (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178))))))))

(assert (=> b!6423308 (= e!3897162 e!3897163)))

(declare-fun b!6423309 () Bool)

(assert (=> b!6423309 (= e!3897165 (= lt!2377389 call!552385))))

(declare-fun b!6423310 () Bool)

(assert (=> b!6423310 (= e!3897164 (matchR!8508 (derivativeStep!5029 (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178))) (head!13141 (tail!12226 (_1!36607 lt!2377178)))) (tail!12226 (tail!12226 (_1!36607 lt!2377178)))))))

(declare-fun b!6423311 () Bool)

(assert (=> b!6423311 (= e!3897164 (nullable!6318 (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178)))))))

(declare-fun bm!552380 () Bool)

(assert (=> bm!552380 (= call!552385 (isEmpty!37310 (tail!12226 (_1!36607 lt!2377178))))))

(declare-fun b!6423312 () Bool)

(assert (=> b!6423312 (= e!3897161 (= (head!13141 (tail!12226 (_1!36607 lt!2377178))) (c!1173074 (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178))))))))

(declare-fun b!6423313 () Bool)

(assert (=> b!6423313 (= e!3897162 (not lt!2377389))))

(declare-fun b!6423314 () Bool)

(declare-fun res!2639889 () Bool)

(assert (=> b!6423314 (=> (not res!2639889) (not e!3897161))))

(assert (=> b!6423314 (= res!2639889 (not call!552385))))

(declare-fun b!6423315 () Bool)

(assert (=> b!6423315 (= e!3897163 e!3897167)))

(declare-fun res!2639883 () Bool)

(assert (=> b!6423315 (=> (not res!2639883) (not e!3897167))))

(assert (=> b!6423315 (= res!2639883 (not lt!2377389))))

(assert (= (and d!2013938 c!1173603) b!6423311))

(assert (= (and d!2013938 (not c!1173603)) b!6423310))

(assert (= (and d!2013938 c!1173602) b!6423309))

(assert (= (and d!2013938 (not c!1173602)) b!6423304))

(assert (= (and b!6423304 c!1173604) b!6423313))

(assert (= (and b!6423304 (not c!1173604)) b!6423308))

(assert (= (and b!6423308 (not res!2639884)) b!6423302))

(assert (= (and b!6423302 res!2639882) b!6423314))

(assert (= (and b!6423314 res!2639889) b!6423303))

(assert (= (and b!6423303 res!2639887) b!6423312))

(assert (= (and b!6423302 (not res!2639886)) b!6423315))

(assert (= (and b!6423315 res!2639883) b!6423306))

(assert (= (and b!6423306 (not res!2639885)) b!6423305))

(assert (= (and b!6423305 (not res!2639888)) b!6423307))

(assert (= (or b!6423309 b!6423306 b!6423314) bm!552380))

(assert (=> b!6423303 m!7216512))

(declare-fun m!7217702 () Bool)

(assert (=> b!6423303 m!7217702))

(assert (=> b!6423303 m!7217702))

(declare-fun m!7217704 () Bool)

(assert (=> b!6423303 m!7217704))

(assert (=> b!6423305 m!7216512))

(assert (=> b!6423305 m!7217702))

(assert (=> b!6423305 m!7217702))

(assert (=> b!6423305 m!7217704))

(assert (=> b!6423312 m!7216512))

(declare-fun m!7217706 () Bool)

(assert (=> b!6423312 m!7217706))

(assert (=> bm!552380 m!7216512))

(assert (=> bm!552380 m!7216514))

(assert (=> b!6423311 m!7216520))

(declare-fun m!7217708 () Bool)

(assert (=> b!6423311 m!7217708))

(assert (=> b!6423310 m!7216512))

(assert (=> b!6423310 m!7217706))

(assert (=> b!6423310 m!7216520))

(assert (=> b!6423310 m!7217706))

(declare-fun m!7217710 () Bool)

(assert (=> b!6423310 m!7217710))

(assert (=> b!6423310 m!7216512))

(assert (=> b!6423310 m!7217702))

(assert (=> b!6423310 m!7217710))

(assert (=> b!6423310 m!7217702))

(declare-fun m!7217712 () Bool)

(assert (=> b!6423310 m!7217712))

(assert (=> b!6423307 m!7216512))

(assert (=> b!6423307 m!7217706))

(assert (=> d!2013938 m!7216512))

(assert (=> d!2013938 m!7216514))

(assert (=> d!2013938 m!7216520))

(declare-fun m!7217714 () Bool)

(assert (=> d!2013938 m!7217714))

(assert (=> b!6422071 d!2013938))

(declare-fun bm!552389 () Bool)

(declare-fun call!552396 () Regex!16325)

(declare-fun call!552397 () Regex!16325)

(assert (=> bm!552389 (= call!552396 call!552397)))

(declare-fun b!6423336 () Bool)

(declare-fun c!1173616 () Bool)

(assert (=> b!6423336 (= c!1173616 ((_ is Union!16325) lt!2377164))))

(declare-fun e!3897182 () Regex!16325)

(declare-fun e!3897181 () Regex!16325)

(assert (=> b!6423336 (= e!3897182 e!3897181)))

(declare-fun c!1173617 () Bool)

(declare-fun c!1173615 () Bool)

(declare-fun bm!552390 () Bool)

(assert (=> bm!552390 (= call!552397 (derivativeStep!5029 (ite c!1173616 (regTwo!33163 lt!2377164) (ite c!1173615 (reg!16654 lt!2377164) (ite c!1173617 (regTwo!33162 lt!2377164) (regOne!33162 lt!2377164)))) (head!13141 (_1!36607 lt!2377178))))))

(declare-fun b!6423337 () Bool)

(declare-fun e!3897178 () Regex!16325)

(declare-fun call!552395 () Regex!16325)

(assert (=> b!6423337 (= e!3897178 (Union!16325 (Concat!25170 call!552395 (regTwo!33162 lt!2377164)) EmptyLang!16325))))

(declare-fun d!2013940 () Bool)

(declare-fun lt!2377392 () Regex!16325)

(assert (=> d!2013940 (validRegex!8061 lt!2377392)))

(declare-fun e!3897179 () Regex!16325)

(assert (=> d!2013940 (= lt!2377392 e!3897179)))

(declare-fun c!1173619 () Bool)

(assert (=> d!2013940 (= c!1173619 (or ((_ is EmptyExpr!16325) lt!2377164) ((_ is EmptyLang!16325) lt!2377164)))))

(assert (=> d!2013940 (validRegex!8061 lt!2377164)))

(assert (=> d!2013940 (= (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 lt!2377178))) lt!2377392)))

(declare-fun bm!552391 () Bool)

(declare-fun call!552394 () Regex!16325)

(assert (=> bm!552391 (= call!552394 (derivativeStep!5029 (ite c!1173616 (regOne!33163 lt!2377164) (regOne!33162 lt!2377164)) (head!13141 (_1!36607 lt!2377178))))))

(declare-fun b!6423338 () Bool)

(assert (=> b!6423338 (= e!3897182 (ite (= (head!13141 (_1!36607 lt!2377178)) (c!1173074 lt!2377164)) EmptyExpr!16325 EmptyLang!16325))))

(declare-fun b!6423339 () Bool)

(declare-fun e!3897180 () Regex!16325)

(assert (=> b!6423339 (= e!3897180 (Concat!25170 call!552396 lt!2377164))))

(declare-fun b!6423340 () Bool)

(assert (=> b!6423340 (= c!1173617 (nullable!6318 (regOne!33162 lt!2377164)))))

(assert (=> b!6423340 (= e!3897180 e!3897178)))

(declare-fun b!6423341 () Bool)

(assert (=> b!6423341 (= e!3897179 EmptyLang!16325)))

(declare-fun b!6423342 () Bool)

(assert (=> b!6423342 (= e!3897181 e!3897180)))

(assert (=> b!6423342 (= c!1173615 ((_ is Star!16325) lt!2377164))))

(declare-fun b!6423343 () Bool)

(assert (=> b!6423343 (= e!3897178 (Union!16325 (Concat!25170 call!552394 (regTwo!33162 lt!2377164)) call!552395))))

(declare-fun b!6423344 () Bool)

(assert (=> b!6423344 (= e!3897179 e!3897182)))

(declare-fun c!1173618 () Bool)

(assert (=> b!6423344 (= c!1173618 ((_ is ElementMatch!16325) lt!2377164))))

(declare-fun b!6423345 () Bool)

(assert (=> b!6423345 (= e!3897181 (Union!16325 call!552394 call!552397))))

(declare-fun bm!552392 () Bool)

(assert (=> bm!552392 (= call!552395 call!552396)))

(assert (= (and d!2013940 c!1173619) b!6423341))

(assert (= (and d!2013940 (not c!1173619)) b!6423344))

(assert (= (and b!6423344 c!1173618) b!6423338))

(assert (= (and b!6423344 (not c!1173618)) b!6423336))

(assert (= (and b!6423336 c!1173616) b!6423345))

(assert (= (and b!6423336 (not c!1173616)) b!6423342))

(assert (= (and b!6423342 c!1173615) b!6423339))

(assert (= (and b!6423342 (not c!1173615)) b!6423340))

(assert (= (and b!6423340 c!1173617) b!6423343))

(assert (= (and b!6423340 (not c!1173617)) b!6423337))

(assert (= (or b!6423343 b!6423337) bm!552392))

(assert (= (or b!6423339 bm!552392) bm!552389))

(assert (= (or b!6423345 bm!552389) bm!552390))

(assert (= (or b!6423345 b!6423343) bm!552391))

(assert (=> bm!552390 m!7216516))

(declare-fun m!7217716 () Bool)

(assert (=> bm!552390 m!7217716))

(declare-fun m!7217718 () Bool)

(assert (=> d!2013940 m!7217718))

(assert (=> d!2013940 m!7216180))

(assert (=> bm!552391 m!7216516))

(declare-fun m!7217720 () Bool)

(assert (=> bm!552391 m!7217720))

(declare-fun m!7217722 () Bool)

(assert (=> b!6423340 m!7217722))

(assert (=> b!6422071 d!2013940))

(declare-fun d!2013942 () Bool)

(assert (=> d!2013942 (= (head!13141 (_1!36607 lt!2377178)) (h!71598 (_1!36607 lt!2377178)))))

(assert (=> b!6422071 d!2013942))

(declare-fun d!2013944 () Bool)

(assert (=> d!2013944 (= (tail!12226 (_1!36607 lt!2377178)) (t!378888 (_1!36607 lt!2377178)))))

(assert (=> b!6422071 d!2013944))

(declare-fun d!2013946 () Bool)

(assert (=> d!2013946 (= (isEmpty!37311 (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 Nil!65150 (_1!36607 lt!2377178) (_1!36607 lt!2377178))) (not ((_ is Some!16215) (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 Nil!65150 (_1!36607 lt!2377178) (_1!36607 lt!2377178)))))))

(assert (=> d!2013430 d!2013946))

(declare-fun d!2013948 () Bool)

(declare-fun lt!2377395 () Int)

(assert (=> d!2013948 (>= lt!2377395 0)))

(declare-fun e!3897185 () Int)

(assert (=> d!2013948 (= lt!2377395 e!3897185)))

(declare-fun c!1173622 () Bool)

(assert (=> d!2013948 (= c!1173622 ((_ is Nil!65150) lt!2377268))))

(assert (=> d!2013948 (= (size!40383 lt!2377268) lt!2377395)))

(declare-fun b!6423350 () Bool)

(assert (=> b!6423350 (= e!3897185 0)))

(declare-fun b!6423351 () Bool)

(assert (=> b!6423351 (= e!3897185 (+ 1 (size!40383 (t!378888 lt!2377268))))))

(assert (= (and d!2013948 c!1173622) b!6423350))

(assert (= (and d!2013948 (not c!1173622)) b!6423351))

(declare-fun m!7217724 () Bool)

(assert (=> b!6423351 m!7217724))

(assert (=> b!6421722 d!2013948))

(declare-fun d!2013950 () Bool)

(declare-fun lt!2377396 () Int)

(assert (=> d!2013950 (>= lt!2377396 0)))

(declare-fun e!3897186 () Int)

(assert (=> d!2013950 (= lt!2377396 e!3897186)))

(declare-fun c!1173623 () Bool)

(assert (=> d!2013950 (= c!1173623 ((_ is Nil!65150) (_1!36607 lt!2377178)))))

(assert (=> d!2013950 (= (size!40383 (_1!36607 lt!2377178)) lt!2377396)))

(declare-fun b!6423352 () Bool)

(assert (=> b!6423352 (= e!3897186 0)))

(declare-fun b!6423353 () Bool)

(assert (=> b!6423353 (= e!3897186 (+ 1 (size!40383 (t!378888 (_1!36607 lt!2377178)))))))

(assert (= (and d!2013950 c!1173623) b!6423352))

(assert (= (and d!2013950 (not c!1173623)) b!6423353))

(declare-fun m!7217726 () Bool)

(assert (=> b!6423353 m!7217726))

(assert (=> b!6421722 d!2013950))

(declare-fun d!2013952 () Bool)

(declare-fun lt!2377397 () Int)

(assert (=> d!2013952 (>= lt!2377397 0)))

(declare-fun e!3897187 () Int)

(assert (=> d!2013952 (= lt!2377397 e!3897187)))

(declare-fun c!1173624 () Bool)

(assert (=> d!2013952 (= c!1173624 ((_ is Nil!65150) (_2!36607 lt!2377178)))))

(assert (=> d!2013952 (= (size!40383 (_2!36607 lt!2377178)) lt!2377397)))

(declare-fun b!6423354 () Bool)

(assert (=> b!6423354 (= e!3897187 0)))

(declare-fun b!6423355 () Bool)

(assert (=> b!6423355 (= e!3897187 (+ 1 (size!40383 (t!378888 (_2!36607 lt!2377178)))))))

(assert (= (and d!2013952 c!1173624) b!6423354))

(assert (= (and d!2013952 (not c!1173624)) b!6423355))

(declare-fun m!7217728 () Bool)

(assert (=> b!6423355 m!7217728))

(assert (=> b!6421722 d!2013952))

(assert (=> b!6422169 d!2013928))

(declare-fun d!2013954 () Bool)

(assert (=> d!2013954 (= (isEmpty!37310 (t!378888 s!2326)) ((_ is Nil!65150) (t!378888 s!2326)))))

(assert (=> d!2013372 d!2013954))

(declare-fun b!6423356 () Bool)

(declare-fun e!3897189 () (InoxSet Context!11418))

(assert (=> b!6423356 (= e!3897189 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013956 () Bool)

(declare-fun c!1173626 () Bool)

(declare-fun e!3897188 () Bool)

(assert (=> d!2013956 (= c!1173626 e!3897188)))

(declare-fun res!2639890 () Bool)

(assert (=> d!2013956 (=> (not res!2639890) (not e!3897188))))

(assert (=> d!2013956 (= res!2639890 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377192))))))))

(declare-fun e!3897190 () (InoxSet Context!11418))

(assert (=> d!2013956 (= (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 lt!2377192))) (h!71598 s!2326)) e!3897190)))

(declare-fun call!552398 () (InoxSet Context!11418))

(declare-fun b!6423357 () Bool)

(assert (=> b!6423357 (= e!3897190 ((_ map or) call!552398 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377192)))))) (h!71598 s!2326))))))

(declare-fun bm!552393 () Bool)

(assert (=> bm!552393 (= call!552398 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377192))))) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377192)))))) (h!71598 s!2326)))))

(declare-fun b!6423358 () Bool)

(assert (=> b!6423358 (= e!3897188 (nullable!6318 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377192)))))))))

(declare-fun b!6423359 () Bool)

(assert (=> b!6423359 (= e!3897190 e!3897189)))

(declare-fun c!1173625 () Bool)

(assert (=> b!6423359 (= c!1173625 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377192))))))))

(declare-fun b!6423360 () Bool)

(assert (=> b!6423360 (= e!3897189 call!552398)))

(assert (= (and d!2013956 res!2639890) b!6423358))

(assert (= (and d!2013956 c!1173626) b!6423357))

(assert (= (and d!2013956 (not c!1173626)) b!6423359))

(assert (= (and b!6423359 c!1173625) b!6423360))

(assert (= (and b!6423359 (not c!1173625)) b!6423356))

(assert (= (or b!6423357 b!6423360) bm!552393))

(declare-fun m!7217730 () Bool)

(assert (=> b!6423357 m!7217730))

(declare-fun m!7217732 () Bool)

(assert (=> bm!552393 m!7217732))

(declare-fun m!7217734 () Bool)

(assert (=> b!6423358 m!7217734))

(assert (=> b!6422017 d!2013956))

(declare-fun b!6423361 () Bool)

(declare-fun res!2639895 () Bool)

(declare-fun e!3897193 () Bool)

(assert (=> b!6423361 (=> res!2639895 e!3897193)))

(declare-fun e!3897191 () Bool)

(assert (=> b!6423361 (= res!2639895 e!3897191)))

(declare-fun res!2639891 () Bool)

(assert (=> b!6423361 (=> (not res!2639891) (not e!3897191))))

(declare-fun lt!2377398 () Bool)

(assert (=> b!6423361 (= res!2639891 lt!2377398)))

(declare-fun b!6423362 () Bool)

(declare-fun res!2639896 () Bool)

(assert (=> b!6423362 (=> (not res!2639896) (not e!3897191))))

(assert (=> b!6423362 (= res!2639896 (isEmpty!37310 (tail!12226 (tail!12226 s!2326))))))

(declare-fun b!6423363 () Bool)

(declare-fun e!3897195 () Bool)

(declare-fun e!3897192 () Bool)

(assert (=> b!6423363 (= e!3897195 e!3897192)))

(declare-fun c!1173629 () Bool)

(assert (=> b!6423363 (= c!1173629 ((_ is EmptyLang!16325) (derivativeStep!5029 r!7292 (head!13141 s!2326))))))

(declare-fun b!6423364 () Bool)

(declare-fun res!2639897 () Bool)

(declare-fun e!3897196 () Bool)

(assert (=> b!6423364 (=> res!2639897 e!3897196)))

(assert (=> b!6423364 (= res!2639897 (not (isEmpty!37310 (tail!12226 (tail!12226 s!2326)))))))

(declare-fun d!2013958 () Bool)

(assert (=> d!2013958 e!3897195))

(declare-fun c!1173627 () Bool)

(assert (=> d!2013958 (= c!1173627 ((_ is EmptyExpr!16325) (derivativeStep!5029 r!7292 (head!13141 s!2326))))))

(declare-fun e!3897194 () Bool)

(assert (=> d!2013958 (= lt!2377398 e!3897194)))

(declare-fun c!1173628 () Bool)

(assert (=> d!2013958 (= c!1173628 (isEmpty!37310 (tail!12226 s!2326)))))

(assert (=> d!2013958 (validRegex!8061 (derivativeStep!5029 r!7292 (head!13141 s!2326)))))

(assert (=> d!2013958 (= (matchR!8508 (derivativeStep!5029 r!7292 (head!13141 s!2326)) (tail!12226 s!2326)) lt!2377398)))

(declare-fun b!6423365 () Bool)

(declare-fun e!3897197 () Bool)

(assert (=> b!6423365 (= e!3897197 e!3897196)))

(declare-fun res!2639894 () Bool)

(assert (=> b!6423365 (=> res!2639894 e!3897196)))

(declare-fun call!552399 () Bool)

(assert (=> b!6423365 (= res!2639894 call!552399)))

(declare-fun b!6423366 () Bool)

(assert (=> b!6423366 (= e!3897196 (not (= (head!13141 (tail!12226 s!2326)) (c!1173074 (derivativeStep!5029 r!7292 (head!13141 s!2326))))))))

(declare-fun b!6423367 () Bool)

(declare-fun res!2639893 () Bool)

(assert (=> b!6423367 (=> res!2639893 e!3897193)))

(assert (=> b!6423367 (= res!2639893 (not ((_ is ElementMatch!16325) (derivativeStep!5029 r!7292 (head!13141 s!2326)))))))

(assert (=> b!6423367 (= e!3897192 e!3897193)))

(declare-fun b!6423368 () Bool)

(assert (=> b!6423368 (= e!3897195 (= lt!2377398 call!552399))))

(declare-fun b!6423369 () Bool)

(assert (=> b!6423369 (= e!3897194 (matchR!8508 (derivativeStep!5029 (derivativeStep!5029 r!7292 (head!13141 s!2326)) (head!13141 (tail!12226 s!2326))) (tail!12226 (tail!12226 s!2326))))))

(declare-fun b!6423370 () Bool)

(assert (=> b!6423370 (= e!3897194 (nullable!6318 (derivativeStep!5029 r!7292 (head!13141 s!2326))))))

(declare-fun bm!552394 () Bool)

(assert (=> bm!552394 (= call!552399 (isEmpty!37310 (tail!12226 s!2326)))))

(declare-fun b!6423371 () Bool)

(assert (=> b!6423371 (= e!3897191 (= (head!13141 (tail!12226 s!2326)) (c!1173074 (derivativeStep!5029 r!7292 (head!13141 s!2326)))))))

(declare-fun b!6423372 () Bool)

(assert (=> b!6423372 (= e!3897192 (not lt!2377398))))

(declare-fun b!6423373 () Bool)

(declare-fun res!2639898 () Bool)

(assert (=> b!6423373 (=> (not res!2639898) (not e!3897191))))

(assert (=> b!6423373 (= res!2639898 (not call!552399))))

(declare-fun b!6423374 () Bool)

(assert (=> b!6423374 (= e!3897193 e!3897197)))

(declare-fun res!2639892 () Bool)

(assert (=> b!6423374 (=> (not res!2639892) (not e!3897197))))

(assert (=> b!6423374 (= res!2639892 (not lt!2377398))))

(assert (= (and d!2013958 c!1173628) b!6423370))

(assert (= (and d!2013958 (not c!1173628)) b!6423369))

(assert (= (and d!2013958 c!1173627) b!6423368))

(assert (= (and d!2013958 (not c!1173627)) b!6423363))

(assert (= (and b!6423363 c!1173629) b!6423372))

(assert (= (and b!6423363 (not c!1173629)) b!6423367))

(assert (= (and b!6423367 (not res!2639893)) b!6423361))

(assert (= (and b!6423361 res!2639891) b!6423373))

(assert (= (and b!6423373 res!2639898) b!6423362))

(assert (= (and b!6423362 res!2639896) b!6423371))

(assert (= (and b!6423361 (not res!2639895)) b!6423374))

(assert (= (and b!6423374 res!2639892) b!6423365))

(assert (= (and b!6423365 (not res!2639894)) b!6423364))

(assert (= (and b!6423364 (not res!2639897)) b!6423366))

(assert (= (or b!6423368 b!6423365 b!6423373) bm!552394))

(assert (=> b!6423362 m!7216358))

(assert (=> b!6423362 m!7217682))

(assert (=> b!6423362 m!7217682))

(declare-fun m!7217736 () Bool)

(assert (=> b!6423362 m!7217736))

(assert (=> b!6423364 m!7216358))

(assert (=> b!6423364 m!7217682))

(assert (=> b!6423364 m!7217682))

(assert (=> b!6423364 m!7217736))

(assert (=> b!6423371 m!7216358))

(assert (=> b!6423371 m!7217678))

(assert (=> bm!552394 m!7216358))

(assert (=> bm!552394 m!7216360))

(assert (=> b!6423370 m!7216366))

(declare-fun m!7217738 () Bool)

(assert (=> b!6423370 m!7217738))

(assert (=> b!6423369 m!7216358))

(assert (=> b!6423369 m!7217678))

(assert (=> b!6423369 m!7216366))

(assert (=> b!6423369 m!7217678))

(declare-fun m!7217740 () Bool)

(assert (=> b!6423369 m!7217740))

(assert (=> b!6423369 m!7216358))

(assert (=> b!6423369 m!7217682))

(assert (=> b!6423369 m!7217740))

(assert (=> b!6423369 m!7217682))

(declare-fun m!7217742 () Bool)

(assert (=> b!6423369 m!7217742))

(assert (=> b!6423366 m!7216358))

(assert (=> b!6423366 m!7217678))

(assert (=> d!2013958 m!7216358))

(assert (=> d!2013958 m!7216360))

(assert (=> d!2013958 m!7216366))

(declare-fun m!7217744 () Bool)

(assert (=> d!2013958 m!7217744))

(assert (=> b!6421889 d!2013958))

(declare-fun bm!552395 () Bool)

(declare-fun call!552402 () Regex!16325)

(declare-fun call!552403 () Regex!16325)

(assert (=> bm!552395 (= call!552402 call!552403)))

(declare-fun b!6423375 () Bool)

(declare-fun c!1173631 () Bool)

(assert (=> b!6423375 (= c!1173631 ((_ is Union!16325) r!7292))))

(declare-fun e!3897202 () Regex!16325)

(declare-fun e!3897201 () Regex!16325)

(assert (=> b!6423375 (= e!3897202 e!3897201)))

(declare-fun c!1173630 () Bool)

(declare-fun bm!552396 () Bool)

(declare-fun c!1173632 () Bool)

(assert (=> bm!552396 (= call!552403 (derivativeStep!5029 (ite c!1173631 (regTwo!33163 r!7292) (ite c!1173630 (reg!16654 r!7292) (ite c!1173632 (regTwo!33162 r!7292) (regOne!33162 r!7292)))) (head!13141 s!2326)))))

(declare-fun b!6423376 () Bool)

(declare-fun e!3897198 () Regex!16325)

(declare-fun call!552401 () Regex!16325)

(assert (=> b!6423376 (= e!3897198 (Union!16325 (Concat!25170 call!552401 (regTwo!33162 r!7292)) EmptyLang!16325))))

(declare-fun d!2013960 () Bool)

(declare-fun lt!2377399 () Regex!16325)

(assert (=> d!2013960 (validRegex!8061 lt!2377399)))

(declare-fun e!3897199 () Regex!16325)

(assert (=> d!2013960 (= lt!2377399 e!3897199)))

(declare-fun c!1173634 () Bool)

(assert (=> d!2013960 (= c!1173634 (or ((_ is EmptyExpr!16325) r!7292) ((_ is EmptyLang!16325) r!7292)))))

(assert (=> d!2013960 (validRegex!8061 r!7292)))

(assert (=> d!2013960 (= (derivativeStep!5029 r!7292 (head!13141 s!2326)) lt!2377399)))

(declare-fun bm!552397 () Bool)

(declare-fun call!552400 () Regex!16325)

(assert (=> bm!552397 (= call!552400 (derivativeStep!5029 (ite c!1173631 (regOne!33163 r!7292) (regOne!33162 r!7292)) (head!13141 s!2326)))))

(declare-fun b!6423377 () Bool)

(assert (=> b!6423377 (= e!3897202 (ite (= (head!13141 s!2326) (c!1173074 r!7292)) EmptyExpr!16325 EmptyLang!16325))))

(declare-fun b!6423378 () Bool)

(declare-fun e!3897200 () Regex!16325)

(assert (=> b!6423378 (= e!3897200 (Concat!25170 call!552402 r!7292))))

(declare-fun b!6423379 () Bool)

(assert (=> b!6423379 (= c!1173632 (nullable!6318 (regOne!33162 r!7292)))))

(assert (=> b!6423379 (= e!3897200 e!3897198)))

(declare-fun b!6423380 () Bool)

(assert (=> b!6423380 (= e!3897199 EmptyLang!16325)))

(declare-fun b!6423381 () Bool)

(assert (=> b!6423381 (= e!3897201 e!3897200)))

(assert (=> b!6423381 (= c!1173630 ((_ is Star!16325) r!7292))))

(declare-fun b!6423382 () Bool)

(assert (=> b!6423382 (= e!3897198 (Union!16325 (Concat!25170 call!552400 (regTwo!33162 r!7292)) call!552401))))

(declare-fun b!6423383 () Bool)

(assert (=> b!6423383 (= e!3897199 e!3897202)))

(declare-fun c!1173633 () Bool)

(assert (=> b!6423383 (= c!1173633 ((_ is ElementMatch!16325) r!7292))))

(declare-fun b!6423384 () Bool)

(assert (=> b!6423384 (= e!3897201 (Union!16325 call!552400 call!552403))))

(declare-fun bm!552398 () Bool)

(assert (=> bm!552398 (= call!552401 call!552402)))

(assert (= (and d!2013960 c!1173634) b!6423380))

(assert (= (and d!2013960 (not c!1173634)) b!6423383))

(assert (= (and b!6423383 c!1173633) b!6423377))

(assert (= (and b!6423383 (not c!1173633)) b!6423375))

(assert (= (and b!6423375 c!1173631) b!6423384))

(assert (= (and b!6423375 (not c!1173631)) b!6423381))

(assert (= (and b!6423381 c!1173630) b!6423378))

(assert (= (and b!6423381 (not c!1173630)) b!6423379))

(assert (= (and b!6423379 c!1173632) b!6423382))

(assert (= (and b!6423379 (not c!1173632)) b!6423376))

(assert (= (or b!6423382 b!6423376) bm!552398))

(assert (= (or b!6423378 bm!552398) bm!552395))

(assert (= (or b!6423384 bm!552395) bm!552396))

(assert (= (or b!6423384 b!6423382) bm!552397))

(assert (=> bm!552396 m!7216362))

(declare-fun m!7217746 () Bool)

(assert (=> bm!552396 m!7217746))

(declare-fun m!7217748 () Bool)

(assert (=> d!2013960 m!7217748))

(assert (=> d!2013960 m!7215910))

(assert (=> bm!552397 m!7216362))

(declare-fun m!7217750 () Bool)

(assert (=> bm!552397 m!7217750))

(declare-fun m!7217752 () Bool)

(assert (=> b!6423379 m!7217752))

(assert (=> b!6421889 d!2013960))

(assert (=> b!6421889 d!2013928))

(assert (=> b!6421889 d!2013930))

(assert (=> d!2013348 d!2013906))

(assert (=> d!2013348 d!2013454))

(declare-fun b!6423385 () Bool)

(declare-fun e!3897204 () (InoxSet Context!11418))

(assert (=> b!6423385 (= e!3897204 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013962 () Bool)

(declare-fun c!1173636 () Bool)

(declare-fun e!3897203 () Bool)

(assert (=> d!2013962 (= c!1173636 e!3897203)))

(declare-fun res!2639899 () Bool)

(assert (=> d!2013962 (=> (not res!2639899) (not e!3897203))))

(assert (=> d!2013962 (= res!2639899 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))))))

(declare-fun e!3897205 () (InoxSet Context!11418))

(assert (=> d!2013962 (= (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (h!71598 s!2326)) e!3897205)))

(declare-fun b!6423386 () Bool)

(declare-fun call!552404 () (InoxSet Context!11418))

(assert (=> b!6423386 (= e!3897205 ((_ map or) call!552404 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))))) (h!71598 s!2326))))))

(declare-fun bm!552399 () Bool)

(assert (=> bm!552399 (= call!552404 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))))) (h!71598 s!2326)))))

(declare-fun b!6423387 () Bool)

(assert (=> b!6423387 (= e!3897203 (nullable!6318 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))))))))

(declare-fun b!6423388 () Bool)

(assert (=> b!6423388 (= e!3897205 e!3897204)))

(declare-fun c!1173635 () Bool)

(assert (=> b!6423388 (= c!1173635 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))))))

(declare-fun b!6423389 () Bool)

(assert (=> b!6423389 (= e!3897204 call!552404)))

(assert (= (and d!2013962 res!2639899) b!6423387))

(assert (= (and d!2013962 c!1173636) b!6423386))

(assert (= (and d!2013962 (not c!1173636)) b!6423388))

(assert (= (and b!6423388 c!1173635) b!6423389))

(assert (= (and b!6423388 (not c!1173635)) b!6423385))

(assert (= (or b!6423386 b!6423389) bm!552399))

(declare-fun m!7217754 () Bool)

(assert (=> b!6423386 m!7217754))

(declare-fun m!7217756 () Bool)

(assert (=> bm!552399 m!7217756))

(declare-fun m!7217758 () Bool)

(assert (=> b!6423387 m!7217758))

(assert (=> b!6422196 d!2013962))

(assert (=> d!2013476 d!2013474))

(declare-fun d!2013964 () Bool)

(assert (=> d!2013964 (= (flatMap!1830 z!1189 lambda!354816) (dynLambda!25880 lambda!354816 (h!71600 zl!343)))))

(assert (=> d!2013964 true))

(declare-fun _$13!3642 () Unit!158631)

(assert (=> d!2013964 (= (choose!47725 z!1189 (h!71600 zl!343) lambda!354816) _$13!3642)))

(declare-fun b_lambda!244147 () Bool)

(assert (=> (not b_lambda!244147) (not d!2013964)))

(declare-fun bs!1615424 () Bool)

(assert (= bs!1615424 d!2013964))

(assert (=> bs!1615424 m!7215776))

(assert (=> bs!1615424 m!7216666))

(assert (=> d!2013476 d!2013964))

(declare-fun b!6423390 () Bool)

(declare-fun e!3897207 () (InoxSet Context!11418))

(assert (=> b!6423390 (= e!3897207 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2013966 () Bool)

(declare-fun c!1173638 () Bool)

(declare-fun e!3897206 () Bool)

(assert (=> d!2013966 (= c!1173638 e!3897206)))

(declare-fun res!2639900 () Bool)

(assert (=> d!2013966 (=> (not res!2639900) (not e!3897206))))

(assert (=> d!2013966 (= res!2639900 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377188))))))))

(declare-fun e!3897208 () (InoxSet Context!11418))

(assert (=> d!2013966 (= (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 lt!2377188))) (h!71598 s!2326)) e!3897208)))

(declare-fun call!552405 () (InoxSet Context!11418))

(declare-fun b!6423391 () Bool)

(assert (=> b!6423391 (= e!3897208 ((_ map or) call!552405 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377188)))))) (h!71598 s!2326))))))

(declare-fun bm!552400 () Bool)

(assert (=> bm!552400 (= call!552405 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377188))))) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377188)))))) (h!71598 s!2326)))))

(declare-fun b!6423392 () Bool)

(assert (=> b!6423392 (= e!3897206 (nullable!6318 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377188)))))))))

(declare-fun b!6423393 () Bool)

(assert (=> b!6423393 (= e!3897208 e!3897207)))

(declare-fun c!1173637 () Bool)

(assert (=> b!6423393 (= c!1173637 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377188))))))))

(declare-fun b!6423394 () Bool)

(assert (=> b!6423394 (= e!3897207 call!552405)))

(assert (= (and d!2013966 res!2639900) b!6423392))

(assert (= (and d!2013966 c!1173638) b!6423391))

(assert (= (and d!2013966 (not c!1173638)) b!6423393))

(assert (= (and b!6423393 c!1173637) b!6423394))

(assert (= (and b!6423393 (not c!1173637)) b!6423390))

(assert (= (or b!6423391 b!6423394) bm!552400))

(declare-fun m!7217760 () Bool)

(assert (=> b!6423391 m!7217760))

(declare-fun m!7217762 () Bool)

(assert (=> bm!552400 m!7217762))

(declare-fun m!7217764 () Bool)

(assert (=> b!6423392 m!7217764))

(assert (=> b!6422022 d!2013966))

(declare-fun bs!1615425 () Bool)

(declare-fun d!2013968 () Bool)

(assert (= bs!1615425 (and d!2013968 d!2013484)))

(declare-fun lambda!354958 () Int)

(assert (=> bs!1615425 (= lambda!354958 lambda!354897)))

(declare-fun bs!1615426 () Bool)

(assert (= bs!1615426 (and d!2013968 d!2013412)))

(assert (=> bs!1615426 (= lambda!354958 lambda!354879)))

(declare-fun bs!1615427 () Bool)

(assert (= bs!1615427 (and d!2013968 d!2013456)))

(assert (=> bs!1615427 (= lambda!354958 lambda!354889)))

(declare-fun bs!1615428 () Bool)

(assert (= bs!1615428 (and d!2013968 d!2013482)))

(assert (=> bs!1615428 (= lambda!354958 lambda!354894)))

(declare-fun bs!1615429 () Bool)

(assert (= bs!1615429 (and d!2013968 d!2013382)))

(assert (=> bs!1615429 (= lambda!354958 lambda!354876)))

(declare-fun b!6423395 () Bool)

(declare-fun e!3897210 () Bool)

(declare-fun e!3897214 () Bool)

(assert (=> b!6423395 (= e!3897210 e!3897214)))

(declare-fun c!1173639 () Bool)

(assert (=> b!6423395 (= c!1173639 (isEmpty!37308 (t!378889 (unfocusZipperList!1746 zl!343))))))

(declare-fun b!6423396 () Bool)

(declare-fun e!3897209 () Bool)

(assert (=> b!6423396 (= e!3897209 (isEmpty!37308 (t!378889 (t!378889 (unfocusZipperList!1746 zl!343)))))))

(declare-fun b!6423397 () Bool)

(declare-fun e!3897212 () Bool)

(assert (=> b!6423397 (= e!3897214 e!3897212)))

(declare-fun c!1173640 () Bool)

(assert (=> b!6423397 (= c!1173640 (isEmpty!37308 (tail!12227 (t!378889 (unfocusZipperList!1746 zl!343)))))))

(declare-fun b!6423398 () Bool)

(declare-fun lt!2377400 () Regex!16325)

(assert (=> b!6423398 (= e!3897214 (isEmptyLang!1733 lt!2377400))))

(declare-fun b!6423399 () Bool)

(declare-fun e!3897211 () Regex!16325)

(declare-fun e!3897213 () Regex!16325)

(assert (=> b!6423399 (= e!3897211 e!3897213)))

(declare-fun c!1173641 () Bool)

(assert (=> b!6423399 (= c!1173641 ((_ is Cons!65151) (t!378889 (unfocusZipperList!1746 zl!343))))))

(declare-fun b!6423400 () Bool)

(assert (=> b!6423400 (= e!3897212 (= lt!2377400 (head!13142 (t!378889 (unfocusZipperList!1746 zl!343)))))))

(assert (=> d!2013968 e!3897210))

(declare-fun res!2639901 () Bool)

(assert (=> d!2013968 (=> (not res!2639901) (not e!3897210))))

(assert (=> d!2013968 (= res!2639901 (validRegex!8061 lt!2377400))))

(assert (=> d!2013968 (= lt!2377400 e!3897211)))

(declare-fun c!1173642 () Bool)

(assert (=> d!2013968 (= c!1173642 e!3897209)))

(declare-fun res!2639902 () Bool)

(assert (=> d!2013968 (=> (not res!2639902) (not e!3897209))))

(assert (=> d!2013968 (= res!2639902 ((_ is Cons!65151) (t!378889 (unfocusZipperList!1746 zl!343))))))

(assert (=> d!2013968 (forall!15515 (t!378889 (unfocusZipperList!1746 zl!343)) lambda!354958)))

(assert (=> d!2013968 (= (generalisedUnion!2169 (t!378889 (unfocusZipperList!1746 zl!343))) lt!2377400)))

(declare-fun b!6423401 () Bool)

(assert (=> b!6423401 (= e!3897212 (isUnion!1163 lt!2377400))))

(declare-fun b!6423402 () Bool)

(assert (=> b!6423402 (= e!3897213 (Union!16325 (h!71599 (t!378889 (unfocusZipperList!1746 zl!343))) (generalisedUnion!2169 (t!378889 (t!378889 (unfocusZipperList!1746 zl!343))))))))

(declare-fun b!6423403 () Bool)

(assert (=> b!6423403 (= e!3897211 (h!71599 (t!378889 (unfocusZipperList!1746 zl!343))))))

(declare-fun b!6423404 () Bool)

(assert (=> b!6423404 (= e!3897213 EmptyLang!16325)))

(assert (= (and d!2013968 res!2639902) b!6423396))

(assert (= (and d!2013968 c!1173642) b!6423403))

(assert (= (and d!2013968 (not c!1173642)) b!6423399))

(assert (= (and b!6423399 c!1173641) b!6423402))

(assert (= (and b!6423399 (not c!1173641)) b!6423404))

(assert (= (and d!2013968 res!2639901) b!6423395))

(assert (= (and b!6423395 c!1173639) b!6423398))

(assert (= (and b!6423395 (not c!1173639)) b!6423397))

(assert (= (and b!6423397 c!1173640) b!6423400))

(assert (= (and b!6423397 (not c!1173640)) b!6423401))

(declare-fun m!7217766 () Bool)

(assert (=> b!6423402 m!7217766))

(declare-fun m!7217768 () Bool)

(assert (=> b!6423396 m!7217768))

(declare-fun m!7217770 () Bool)

(assert (=> b!6423398 m!7217770))

(declare-fun m!7217772 () Bool)

(assert (=> d!2013968 m!7217772))

(declare-fun m!7217774 () Bool)

(assert (=> d!2013968 m!7217774))

(declare-fun m!7217776 () Bool)

(assert (=> b!6423400 m!7217776))

(declare-fun m!7217778 () Bool)

(assert (=> b!6423401 m!7217778))

(declare-fun m!7217780 () Bool)

(assert (=> b!6423397 m!7217780))

(assert (=> b!6423397 m!7217780))

(declare-fun m!7217782 () Bool)

(assert (=> b!6423397 m!7217782))

(assert (=> b!6423395 m!7216684))

(assert (=> b!6422237 d!2013968))

(declare-fun d!2013970 () Bool)

(assert (=> d!2013970 (= (nullable!6318 (regOne!33162 (reg!16654 (regOne!33162 r!7292)))) (nullableFct!2264 (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))

(declare-fun bs!1615430 () Bool)

(assert (= bs!1615430 d!2013970))

(declare-fun m!7217784 () Bool)

(assert (=> bs!1615430 m!7217784))

(assert (=> b!6421991 d!2013970))

(declare-fun d!2013972 () Bool)

(assert (=> d!2013972 (= (isEmptyExpr!1726 lt!2377307) ((_ is EmptyExpr!16325) lt!2377307))))

(assert (=> b!6422046 d!2013972))

(declare-fun d!2013974 () Bool)

(assert (=> d!2013974 (= (nullable!6318 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))) (nullableFct!2264 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))))))

(declare-fun bs!1615431 () Bool)

(assert (= bs!1615431 d!2013974))

(declare-fun m!7217786 () Bool)

(assert (=> bs!1615431 m!7217786))

(assert (=> b!6422187 d!2013974))

(declare-fun b!6423405 () Bool)

(declare-fun res!2639907 () Bool)

(declare-fun e!3897217 () Bool)

(assert (=> b!6423405 (=> res!2639907 e!3897217)))

(declare-fun e!3897215 () Bool)

(assert (=> b!6423405 (= res!2639907 e!3897215)))

(declare-fun res!2639903 () Bool)

(assert (=> b!6423405 (=> (not res!2639903) (not e!3897215))))

(declare-fun lt!2377401 () Bool)

(assert (=> b!6423405 (= res!2639903 lt!2377401)))

(declare-fun b!6423406 () Bool)

(declare-fun res!2639908 () Bool)

(assert (=> b!6423406 (=> (not res!2639908) (not e!3897215))))

(assert (=> b!6423406 (= res!2639908 (isEmpty!37310 (tail!12226 (_1!36607 (get!22571 lt!2377256)))))))

(declare-fun b!6423407 () Bool)

(declare-fun e!3897219 () Bool)

(declare-fun e!3897216 () Bool)

(assert (=> b!6423407 (= e!3897219 e!3897216)))

(declare-fun c!1173645 () Bool)

(assert (=> b!6423407 (= c!1173645 ((_ is EmptyLang!16325) lt!2377164))))

(declare-fun b!6423408 () Bool)

(declare-fun res!2639909 () Bool)

(declare-fun e!3897220 () Bool)

(assert (=> b!6423408 (=> res!2639909 e!3897220)))

(assert (=> b!6423408 (= res!2639909 (not (isEmpty!37310 (tail!12226 (_1!36607 (get!22571 lt!2377256))))))))

(declare-fun d!2013976 () Bool)

(assert (=> d!2013976 e!3897219))

(declare-fun c!1173643 () Bool)

(assert (=> d!2013976 (= c!1173643 ((_ is EmptyExpr!16325) lt!2377164))))

(declare-fun e!3897218 () Bool)

(assert (=> d!2013976 (= lt!2377401 e!3897218)))

(declare-fun c!1173644 () Bool)

(assert (=> d!2013976 (= c!1173644 (isEmpty!37310 (_1!36607 (get!22571 lt!2377256))))))

(assert (=> d!2013976 (validRegex!8061 lt!2377164)))

(assert (=> d!2013976 (= (matchR!8508 lt!2377164 (_1!36607 (get!22571 lt!2377256))) lt!2377401)))

(declare-fun b!6423409 () Bool)

(declare-fun e!3897221 () Bool)

(assert (=> b!6423409 (= e!3897221 e!3897220)))

(declare-fun res!2639906 () Bool)

(assert (=> b!6423409 (=> res!2639906 e!3897220)))

(declare-fun call!552406 () Bool)

(assert (=> b!6423409 (= res!2639906 call!552406)))

(declare-fun b!6423410 () Bool)

(assert (=> b!6423410 (= e!3897220 (not (= (head!13141 (_1!36607 (get!22571 lt!2377256))) (c!1173074 lt!2377164))))))

(declare-fun b!6423411 () Bool)

(declare-fun res!2639905 () Bool)

(assert (=> b!6423411 (=> res!2639905 e!3897217)))

(assert (=> b!6423411 (= res!2639905 (not ((_ is ElementMatch!16325) lt!2377164)))))

(assert (=> b!6423411 (= e!3897216 e!3897217)))

(declare-fun b!6423412 () Bool)

(assert (=> b!6423412 (= e!3897219 (= lt!2377401 call!552406))))

(declare-fun b!6423413 () Bool)

(assert (=> b!6423413 (= e!3897218 (matchR!8508 (derivativeStep!5029 lt!2377164 (head!13141 (_1!36607 (get!22571 lt!2377256)))) (tail!12226 (_1!36607 (get!22571 lt!2377256)))))))

(declare-fun b!6423414 () Bool)

(assert (=> b!6423414 (= e!3897218 (nullable!6318 lt!2377164))))

(declare-fun bm!552401 () Bool)

(assert (=> bm!552401 (= call!552406 (isEmpty!37310 (_1!36607 (get!22571 lt!2377256))))))

(declare-fun b!6423415 () Bool)

(assert (=> b!6423415 (= e!3897215 (= (head!13141 (_1!36607 (get!22571 lt!2377256))) (c!1173074 lt!2377164)))))

(declare-fun b!6423416 () Bool)

(assert (=> b!6423416 (= e!3897216 (not lt!2377401))))

(declare-fun b!6423417 () Bool)

(declare-fun res!2639910 () Bool)

(assert (=> b!6423417 (=> (not res!2639910) (not e!3897215))))

(assert (=> b!6423417 (= res!2639910 (not call!552406))))

(declare-fun b!6423418 () Bool)

(assert (=> b!6423418 (= e!3897217 e!3897221)))

(declare-fun res!2639904 () Bool)

(assert (=> b!6423418 (=> (not res!2639904) (not e!3897221))))

(assert (=> b!6423418 (= res!2639904 (not lt!2377401))))

(assert (= (and d!2013976 c!1173644) b!6423414))

(assert (= (and d!2013976 (not c!1173644)) b!6423413))

(assert (= (and d!2013976 c!1173643) b!6423412))

(assert (= (and d!2013976 (not c!1173643)) b!6423407))

(assert (= (and b!6423407 c!1173645) b!6423416))

(assert (= (and b!6423407 (not c!1173645)) b!6423411))

(assert (= (and b!6423411 (not res!2639905)) b!6423405))

(assert (= (and b!6423405 res!2639903) b!6423417))

(assert (= (and b!6423417 res!2639910) b!6423406))

(assert (= (and b!6423406 res!2639908) b!6423415))

(assert (= (and b!6423405 (not res!2639907)) b!6423418))

(assert (= (and b!6423418 res!2639904) b!6423409))

(assert (= (and b!6423409 (not res!2639906)) b!6423408))

(assert (= (and b!6423408 (not res!2639909)) b!6423410))

(assert (= (or b!6423412 b!6423409 b!6423417) bm!552401))

(declare-fun m!7217788 () Bool)

(assert (=> b!6423406 m!7217788))

(assert (=> b!6423406 m!7217788))

(declare-fun m!7217790 () Bool)

(assert (=> b!6423406 m!7217790))

(assert (=> b!6423408 m!7217788))

(assert (=> b!6423408 m!7217788))

(assert (=> b!6423408 m!7217790))

(declare-fun m!7217792 () Bool)

(assert (=> b!6423415 m!7217792))

(declare-fun m!7217794 () Bool)

(assert (=> bm!552401 m!7217794))

(assert (=> b!6423414 m!7216518))

(assert (=> b!6423413 m!7217792))

(assert (=> b!6423413 m!7217792))

(declare-fun m!7217796 () Bool)

(assert (=> b!6423413 m!7217796))

(assert (=> b!6423413 m!7217788))

(assert (=> b!6423413 m!7217796))

(assert (=> b!6423413 m!7217788))

(declare-fun m!7217798 () Bool)

(assert (=> b!6423413 m!7217798))

(assert (=> b!6423410 m!7217792))

(assert (=> d!2013976 m!7217794))

(assert (=> d!2013976 m!7216180))

(assert (=> b!6421692 d!2013976))

(declare-fun d!2013978 () Bool)

(assert (=> d!2013978 (= (get!22571 lt!2377256) (v!52388 lt!2377256))))

(assert (=> b!6421692 d!2013978))

(assert (=> d!2013368 d!2013906))

(declare-fun d!2013980 () Bool)

(assert (=> d!2013980 true))

(declare-fun setRes!43850 () Bool)

(assert (=> d!2013980 setRes!43850))

(declare-fun condSetEmpty!43850 () Bool)

(declare-fun res!2639913 () (InoxSet Context!11418))

(assert (=> d!2013980 (= condSetEmpty!43850 (= res!2639913 ((as const (Array Context!11418 Bool)) false)))))

(assert (=> d!2013980 (= (choose!47724 lt!2377194 lambda!354816) res!2639913)))

(declare-fun setIsEmpty!43850 () Bool)

(assert (=> setIsEmpty!43850 setRes!43850))

(declare-fun setNonEmpty!43850 () Bool)

(declare-fun setElem!43850 () Context!11418)

(declare-fun tp!1783206 () Bool)

(declare-fun e!3897224 () Bool)

(assert (=> setNonEmpty!43850 (= setRes!43850 (and tp!1783206 (inv!84059 setElem!43850) e!3897224))))

(declare-fun setRest!43850 () (InoxSet Context!11418))

(assert (=> setNonEmpty!43850 (= res!2639913 ((_ map or) (store ((as const (Array Context!11418 Bool)) false) setElem!43850 true) setRest!43850))))

(declare-fun b!6423421 () Bool)

(declare-fun tp!1783205 () Bool)

(assert (=> b!6423421 (= e!3897224 tp!1783205)))

(assert (= (and d!2013980 condSetEmpty!43850) setIsEmpty!43850))

(assert (= (and d!2013980 (not condSetEmpty!43850)) setNonEmpty!43850))

(assert (= setNonEmpty!43850 b!6423421))

(declare-fun m!7217800 () Bool)

(assert (=> setNonEmpty!43850 m!7217800))

(assert (=> d!2013408 d!2013980))

(assert (=> b!6422244 d!2013412))

(declare-fun bs!1615432 () Bool)

(declare-fun d!2013982 () Bool)

(assert (= bs!1615432 (and d!2013982 d!2013484)))

(declare-fun lambda!354959 () Int)

(assert (=> bs!1615432 (= lambda!354959 lambda!354897)))

(declare-fun bs!1615433 () Bool)

(assert (= bs!1615433 (and d!2013982 d!2013412)))

(assert (=> bs!1615433 (= lambda!354959 lambda!354879)))

(declare-fun bs!1615434 () Bool)

(assert (= bs!1615434 (and d!2013982 d!2013968)))

(assert (=> bs!1615434 (= lambda!354959 lambda!354958)))

(declare-fun bs!1615435 () Bool)

(assert (= bs!1615435 (and d!2013982 d!2013456)))

(assert (=> bs!1615435 (= lambda!354959 lambda!354889)))

(declare-fun bs!1615436 () Bool)

(assert (= bs!1615436 (and d!2013982 d!2013482)))

(assert (=> bs!1615436 (= lambda!354959 lambda!354894)))

(declare-fun bs!1615437 () Bool)

(assert (= bs!1615437 (and d!2013982 d!2013382)))

(assert (=> bs!1615437 (= lambda!354959 lambda!354876)))

(declare-fun lt!2377402 () List!65275)

(assert (=> d!2013982 (forall!15515 lt!2377402 lambda!354959)))

(declare-fun e!3897225 () List!65275)

(assert (=> d!2013982 (= lt!2377402 e!3897225)))

(declare-fun c!1173646 () Bool)

(assert (=> d!2013982 (= c!1173646 ((_ is Cons!65152) (t!378890 zl!343)))))

(assert (=> d!2013982 (= (unfocusZipperList!1746 (t!378890 zl!343)) lt!2377402)))

(declare-fun b!6423422 () Bool)

(assert (=> b!6423422 (= e!3897225 (Cons!65151 (generalisedConcat!1922 (exprs!6209 (h!71600 (t!378890 zl!343)))) (unfocusZipperList!1746 (t!378890 (t!378890 zl!343)))))))

(declare-fun b!6423423 () Bool)

(assert (=> b!6423423 (= e!3897225 Nil!65151)))

(assert (= (and d!2013982 c!1173646) b!6423422))

(assert (= (and d!2013982 (not c!1173646)) b!6423423))

(declare-fun m!7217802 () Bool)

(assert (=> d!2013982 m!7217802))

(declare-fun m!7217804 () Bool)

(assert (=> b!6423422 m!7217804))

(declare-fun m!7217806 () Bool)

(assert (=> b!6423422 m!7217806))

(assert (=> b!6422244 d!2013982))

(declare-fun b!6423424 () Bool)

(declare-fun res!2639918 () Bool)

(declare-fun e!3897228 () Bool)

(assert (=> b!6423424 (=> res!2639918 e!3897228)))

(declare-fun e!3897226 () Bool)

(assert (=> b!6423424 (= res!2639918 e!3897226)))

(declare-fun res!2639914 () Bool)

(assert (=> b!6423424 (=> (not res!2639914) (not e!3897226))))

(declare-fun lt!2377403 () Bool)

(assert (=> b!6423424 (= res!2639914 lt!2377403)))

(declare-fun b!6423425 () Bool)

(declare-fun res!2639919 () Bool)

(assert (=> b!6423425 (=> (not res!2639919) (not e!3897226))))

(assert (=> b!6423425 (= res!2639919 (isEmpty!37310 (tail!12226 (_2!36607 (get!22571 lt!2377318)))))))

(declare-fun b!6423426 () Bool)

(declare-fun e!3897230 () Bool)

(declare-fun e!3897227 () Bool)

(assert (=> b!6423426 (= e!3897230 e!3897227)))

(declare-fun c!1173649 () Bool)

(assert (=> b!6423426 (= c!1173649 ((_ is EmptyLang!16325) (regTwo!33162 r!7292)))))

(declare-fun b!6423427 () Bool)

(declare-fun res!2639920 () Bool)

(declare-fun e!3897231 () Bool)

(assert (=> b!6423427 (=> res!2639920 e!3897231)))

(assert (=> b!6423427 (= res!2639920 (not (isEmpty!37310 (tail!12226 (_2!36607 (get!22571 lt!2377318))))))))

(declare-fun d!2013984 () Bool)

(assert (=> d!2013984 e!3897230))

(declare-fun c!1173647 () Bool)

(assert (=> d!2013984 (= c!1173647 ((_ is EmptyExpr!16325) (regTwo!33162 r!7292)))))

(declare-fun e!3897229 () Bool)

(assert (=> d!2013984 (= lt!2377403 e!3897229)))

(declare-fun c!1173648 () Bool)

(assert (=> d!2013984 (= c!1173648 (isEmpty!37310 (_2!36607 (get!22571 lt!2377318))))))

(assert (=> d!2013984 (validRegex!8061 (regTwo!33162 r!7292))))

(assert (=> d!2013984 (= (matchR!8508 (regTwo!33162 r!7292) (_2!36607 (get!22571 lt!2377318))) lt!2377403)))

(declare-fun b!6423428 () Bool)

(declare-fun e!3897232 () Bool)

(assert (=> b!6423428 (= e!3897232 e!3897231)))

(declare-fun res!2639917 () Bool)

(assert (=> b!6423428 (=> res!2639917 e!3897231)))

(declare-fun call!552407 () Bool)

(assert (=> b!6423428 (= res!2639917 call!552407)))

(declare-fun b!6423429 () Bool)

(assert (=> b!6423429 (= e!3897231 (not (= (head!13141 (_2!36607 (get!22571 lt!2377318))) (c!1173074 (regTwo!33162 r!7292)))))))

(declare-fun b!6423430 () Bool)

(declare-fun res!2639916 () Bool)

(assert (=> b!6423430 (=> res!2639916 e!3897228)))

(assert (=> b!6423430 (= res!2639916 (not ((_ is ElementMatch!16325) (regTwo!33162 r!7292))))))

(assert (=> b!6423430 (= e!3897227 e!3897228)))

(declare-fun b!6423431 () Bool)

(assert (=> b!6423431 (= e!3897230 (= lt!2377403 call!552407))))

(declare-fun b!6423432 () Bool)

(assert (=> b!6423432 (= e!3897229 (matchR!8508 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 (get!22571 lt!2377318)))) (tail!12226 (_2!36607 (get!22571 lt!2377318)))))))

(declare-fun b!6423433 () Bool)

(assert (=> b!6423433 (= e!3897229 (nullable!6318 (regTwo!33162 r!7292)))))

(declare-fun bm!552402 () Bool)

(assert (=> bm!552402 (= call!552407 (isEmpty!37310 (_2!36607 (get!22571 lt!2377318))))))

(declare-fun b!6423434 () Bool)

(assert (=> b!6423434 (= e!3897226 (= (head!13141 (_2!36607 (get!22571 lt!2377318))) (c!1173074 (regTwo!33162 r!7292))))))

(declare-fun b!6423435 () Bool)

(assert (=> b!6423435 (= e!3897227 (not lt!2377403))))

(declare-fun b!6423436 () Bool)

(declare-fun res!2639921 () Bool)

(assert (=> b!6423436 (=> (not res!2639921) (not e!3897226))))

(assert (=> b!6423436 (= res!2639921 (not call!552407))))

(declare-fun b!6423437 () Bool)

(assert (=> b!6423437 (= e!3897228 e!3897232)))

(declare-fun res!2639915 () Bool)

(assert (=> b!6423437 (=> (not res!2639915) (not e!3897232))))

(assert (=> b!6423437 (= res!2639915 (not lt!2377403))))

(assert (= (and d!2013984 c!1173648) b!6423433))

(assert (= (and d!2013984 (not c!1173648)) b!6423432))

(assert (= (and d!2013984 c!1173647) b!6423431))

(assert (= (and d!2013984 (not c!1173647)) b!6423426))

(assert (= (and b!6423426 c!1173649) b!6423435))

(assert (= (and b!6423426 (not c!1173649)) b!6423430))

(assert (= (and b!6423430 (not res!2639916)) b!6423424))

(assert (= (and b!6423424 res!2639914) b!6423436))

(assert (= (and b!6423436 res!2639921) b!6423425))

(assert (= (and b!6423425 res!2639919) b!6423434))

(assert (= (and b!6423424 (not res!2639918)) b!6423437))

(assert (= (and b!6423437 res!2639915) b!6423428))

(assert (= (and b!6423428 (not res!2639917)) b!6423427))

(assert (= (and b!6423427 (not res!2639920)) b!6423429))

(assert (= (or b!6423431 b!6423428 b!6423436) bm!552402))

(declare-fun m!7217808 () Bool)

(assert (=> b!6423425 m!7217808))

(assert (=> b!6423425 m!7217808))

(declare-fun m!7217810 () Bool)

(assert (=> b!6423425 m!7217810))

(assert (=> b!6423427 m!7217808))

(assert (=> b!6423427 m!7217808))

(assert (=> b!6423427 m!7217810))

(declare-fun m!7217812 () Bool)

(assert (=> b!6423434 m!7217812))

(declare-fun m!7217814 () Bool)

(assert (=> bm!552402 m!7217814))

(assert (=> b!6423433 m!7216532))

(assert (=> b!6423432 m!7217812))

(assert (=> b!6423432 m!7217812))

(declare-fun m!7217816 () Bool)

(assert (=> b!6423432 m!7217816))

(assert (=> b!6423432 m!7217808))

(assert (=> b!6423432 m!7217816))

(assert (=> b!6423432 m!7217808))

(declare-fun m!7217818 () Bool)

(assert (=> b!6423432 m!7217818))

(assert (=> b!6423429 m!7217812))

(assert (=> d!2013984 m!7217814))

(assert (=> d!2013984 m!7216538))

(assert (=> b!6422146 d!2013984))

(declare-fun d!2013986 () Bool)

(assert (=> d!2013986 (= (get!22571 lt!2377318) (v!52388 lt!2377318))))

(assert (=> b!6422146 d!2013986))

(declare-fun d!2013988 () Bool)

(declare-fun res!2639926 () Bool)

(declare-fun e!3897237 () Bool)

(assert (=> d!2013988 (=> res!2639926 e!3897237)))

(assert (=> d!2013988 (= res!2639926 ((_ is Nil!65151) lt!2377332))))

(assert (=> d!2013988 (= (forall!15515 lt!2377332 lambda!354897) e!3897237)))

(declare-fun b!6423442 () Bool)

(declare-fun e!3897238 () Bool)

(assert (=> b!6423442 (= e!3897237 e!3897238)))

(declare-fun res!2639927 () Bool)

(assert (=> b!6423442 (=> (not res!2639927) (not e!3897238))))

(declare-fun dynLambda!25882 (Int Regex!16325) Bool)

(assert (=> b!6423442 (= res!2639927 (dynLambda!25882 lambda!354897 (h!71599 lt!2377332)))))

(declare-fun b!6423443 () Bool)

(assert (=> b!6423443 (= e!3897238 (forall!15515 (t!378889 lt!2377332) lambda!354897))))

(assert (= (and d!2013988 (not res!2639926)) b!6423442))

(assert (= (and b!6423442 res!2639927) b!6423443))

(declare-fun b_lambda!244149 () Bool)

(assert (=> (not b_lambda!244149) (not b!6423442)))

(declare-fun m!7217820 () Bool)

(assert (=> b!6423442 m!7217820))

(declare-fun m!7217822 () Bool)

(assert (=> b!6423443 m!7217822))

(assert (=> d!2013484 d!2013988))

(declare-fun b!6423444 () Bool)

(declare-fun res!2639932 () Bool)

(declare-fun e!3897241 () Bool)

(assert (=> b!6423444 (=> res!2639932 e!3897241)))

(declare-fun e!3897239 () Bool)

(assert (=> b!6423444 (= res!2639932 e!3897239)))

(declare-fun res!2639928 () Bool)

(assert (=> b!6423444 (=> (not res!2639928) (not e!3897239))))

(declare-fun lt!2377404 () Bool)

(assert (=> b!6423444 (= res!2639928 lt!2377404)))

(declare-fun b!6423445 () Bool)

(declare-fun res!2639933 () Bool)

(assert (=> b!6423445 (=> (not res!2639933) (not e!3897239))))

(assert (=> b!6423445 (= res!2639933 (isEmpty!37310 (tail!12226 (tail!12226 (_2!36607 lt!2377178)))))))

(declare-fun b!6423446 () Bool)

(declare-fun e!3897243 () Bool)

(declare-fun e!3897240 () Bool)

(assert (=> b!6423446 (= e!3897243 e!3897240)))

(declare-fun c!1173652 () Bool)

(assert (=> b!6423446 (= c!1173652 ((_ is EmptyLang!16325) (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178)))))))

(declare-fun b!6423447 () Bool)

(declare-fun res!2639934 () Bool)

(declare-fun e!3897244 () Bool)

(assert (=> b!6423447 (=> res!2639934 e!3897244)))

(assert (=> b!6423447 (= res!2639934 (not (isEmpty!37310 (tail!12226 (tail!12226 (_2!36607 lt!2377178))))))))

(declare-fun d!2013990 () Bool)

(assert (=> d!2013990 e!3897243))

(declare-fun c!1173650 () Bool)

(assert (=> d!2013990 (= c!1173650 ((_ is EmptyExpr!16325) (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178)))))))

(declare-fun e!3897242 () Bool)

(assert (=> d!2013990 (= lt!2377404 e!3897242)))

(declare-fun c!1173651 () Bool)

(assert (=> d!2013990 (= c!1173651 (isEmpty!37310 (tail!12226 (_2!36607 lt!2377178))))))

(assert (=> d!2013990 (validRegex!8061 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178))))))

(assert (=> d!2013990 (= (matchR!8508 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178))) (tail!12226 (_2!36607 lt!2377178))) lt!2377404)))

(declare-fun b!6423448 () Bool)

(declare-fun e!3897245 () Bool)

(assert (=> b!6423448 (= e!3897245 e!3897244)))

(declare-fun res!2639931 () Bool)

(assert (=> b!6423448 (=> res!2639931 e!3897244)))

(declare-fun call!552408 () Bool)

(assert (=> b!6423448 (= res!2639931 call!552408)))

(declare-fun b!6423449 () Bool)

(assert (=> b!6423449 (= e!3897244 (not (= (head!13141 (tail!12226 (_2!36607 lt!2377178))) (c!1173074 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178)))))))))

(declare-fun b!6423450 () Bool)

(declare-fun res!2639930 () Bool)

(assert (=> b!6423450 (=> res!2639930 e!3897241)))

(assert (=> b!6423450 (= res!2639930 (not ((_ is ElementMatch!16325) (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178))))))))

(assert (=> b!6423450 (= e!3897240 e!3897241)))

(declare-fun b!6423451 () Bool)

(assert (=> b!6423451 (= e!3897243 (= lt!2377404 call!552408))))

(declare-fun b!6423452 () Bool)

(assert (=> b!6423452 (= e!3897242 (matchR!8508 (derivativeStep!5029 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178))) (head!13141 (tail!12226 (_2!36607 lt!2377178)))) (tail!12226 (tail!12226 (_2!36607 lt!2377178)))))))

(declare-fun b!6423453 () Bool)

(assert (=> b!6423453 (= e!3897242 (nullable!6318 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178)))))))

(declare-fun bm!552403 () Bool)

(assert (=> bm!552403 (= call!552408 (isEmpty!37310 (tail!12226 (_2!36607 lt!2377178))))))

(declare-fun b!6423454 () Bool)

(assert (=> b!6423454 (= e!3897239 (= (head!13141 (tail!12226 (_2!36607 lt!2377178))) (c!1173074 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178))))))))

(declare-fun b!6423455 () Bool)

(assert (=> b!6423455 (= e!3897240 (not lt!2377404))))

(declare-fun b!6423456 () Bool)

(declare-fun res!2639935 () Bool)

(assert (=> b!6423456 (=> (not res!2639935) (not e!3897239))))

(assert (=> b!6423456 (= res!2639935 (not call!552408))))

(declare-fun b!6423457 () Bool)

(assert (=> b!6423457 (= e!3897241 e!3897245)))

(declare-fun res!2639929 () Bool)

(assert (=> b!6423457 (=> (not res!2639929) (not e!3897245))))

(assert (=> b!6423457 (= res!2639929 (not lt!2377404))))

(assert (= (and d!2013990 c!1173651) b!6423453))

(assert (= (and d!2013990 (not c!1173651)) b!6423452))

(assert (= (and d!2013990 c!1173650) b!6423451))

(assert (= (and d!2013990 (not c!1173650)) b!6423446))

(assert (= (and b!6423446 c!1173652) b!6423455))

(assert (= (and b!6423446 (not c!1173652)) b!6423450))

(assert (= (and b!6423450 (not res!2639930)) b!6423444))

(assert (= (and b!6423444 res!2639928) b!6423456))

(assert (= (and b!6423456 res!2639935) b!6423445))

(assert (= (and b!6423445 res!2639933) b!6423454))

(assert (= (and b!6423444 (not res!2639932)) b!6423457))

(assert (= (and b!6423457 res!2639929) b!6423448))

(assert (= (and b!6423448 (not res!2639931)) b!6423447))

(assert (= (and b!6423447 (not res!2639934)) b!6423449))

(assert (= (or b!6423451 b!6423448 b!6423456) bm!552403))

(assert (=> b!6423445 m!7216524))

(declare-fun m!7217824 () Bool)

(assert (=> b!6423445 m!7217824))

(assert (=> b!6423445 m!7217824))

(declare-fun m!7217826 () Bool)

(assert (=> b!6423445 m!7217826))

(assert (=> b!6423447 m!7216524))

(assert (=> b!6423447 m!7217824))

(assert (=> b!6423447 m!7217824))

(assert (=> b!6423447 m!7217826))

(assert (=> b!6423454 m!7216524))

(declare-fun m!7217828 () Bool)

(assert (=> b!6423454 m!7217828))

(assert (=> bm!552403 m!7216524))

(assert (=> bm!552403 m!7216526))

(assert (=> b!6423453 m!7216534))

(declare-fun m!7217830 () Bool)

(assert (=> b!6423453 m!7217830))

(assert (=> b!6423452 m!7216524))

(assert (=> b!6423452 m!7217828))

(assert (=> b!6423452 m!7216534))

(assert (=> b!6423452 m!7217828))

(declare-fun m!7217832 () Bool)

(assert (=> b!6423452 m!7217832))

(assert (=> b!6423452 m!7216524))

(assert (=> b!6423452 m!7217824))

(assert (=> b!6423452 m!7217832))

(assert (=> b!6423452 m!7217824))

(declare-fun m!7217834 () Bool)

(assert (=> b!6423452 m!7217834))

(assert (=> b!6423449 m!7216524))

(assert (=> b!6423449 m!7217828))

(assert (=> d!2013990 m!7216524))

(assert (=> d!2013990 m!7216526))

(assert (=> d!2013990 m!7216534))

(declare-fun m!7217836 () Bool)

(assert (=> d!2013990 m!7217836))

(assert (=> b!6422085 d!2013990))

(declare-fun bm!552404 () Bool)

(declare-fun call!552411 () Regex!16325)

(declare-fun call!552412 () Regex!16325)

(assert (=> bm!552404 (= call!552411 call!552412)))

(declare-fun b!6423458 () Bool)

(declare-fun c!1173654 () Bool)

(assert (=> b!6423458 (= c!1173654 ((_ is Union!16325) (regTwo!33162 r!7292)))))

(declare-fun e!3897250 () Regex!16325)

(declare-fun e!3897249 () Regex!16325)

(assert (=> b!6423458 (= e!3897250 e!3897249)))

(declare-fun bm!552405 () Bool)

(declare-fun c!1173655 () Bool)

(declare-fun c!1173653 () Bool)

(assert (=> bm!552405 (= call!552412 (derivativeStep!5029 (ite c!1173654 (regTwo!33163 (regTwo!33162 r!7292)) (ite c!1173653 (reg!16654 (regTwo!33162 r!7292)) (ite c!1173655 (regTwo!33162 (regTwo!33162 r!7292)) (regOne!33162 (regTwo!33162 r!7292))))) (head!13141 (_2!36607 lt!2377178))))))

(declare-fun b!6423459 () Bool)

(declare-fun e!3897246 () Regex!16325)

(declare-fun call!552410 () Regex!16325)

(assert (=> b!6423459 (= e!3897246 (Union!16325 (Concat!25170 call!552410 (regTwo!33162 (regTwo!33162 r!7292))) EmptyLang!16325))))

(declare-fun d!2013992 () Bool)

(declare-fun lt!2377405 () Regex!16325)

(assert (=> d!2013992 (validRegex!8061 lt!2377405)))

(declare-fun e!3897247 () Regex!16325)

(assert (=> d!2013992 (= lt!2377405 e!3897247)))

(declare-fun c!1173657 () Bool)

(assert (=> d!2013992 (= c!1173657 (or ((_ is EmptyExpr!16325) (regTwo!33162 r!7292)) ((_ is EmptyLang!16325) (regTwo!33162 r!7292))))))

(assert (=> d!2013992 (validRegex!8061 (regTwo!33162 r!7292))))

(assert (=> d!2013992 (= (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 lt!2377178))) lt!2377405)))

(declare-fun bm!552406 () Bool)

(declare-fun call!552409 () Regex!16325)

(assert (=> bm!552406 (= call!552409 (derivativeStep!5029 (ite c!1173654 (regOne!33163 (regTwo!33162 r!7292)) (regOne!33162 (regTwo!33162 r!7292))) (head!13141 (_2!36607 lt!2377178))))))

(declare-fun b!6423460 () Bool)

(assert (=> b!6423460 (= e!3897250 (ite (= (head!13141 (_2!36607 lt!2377178)) (c!1173074 (regTwo!33162 r!7292))) EmptyExpr!16325 EmptyLang!16325))))

(declare-fun b!6423461 () Bool)

(declare-fun e!3897248 () Regex!16325)

(assert (=> b!6423461 (= e!3897248 (Concat!25170 call!552411 (regTwo!33162 r!7292)))))

(declare-fun b!6423462 () Bool)

(assert (=> b!6423462 (= c!1173655 (nullable!6318 (regOne!33162 (regTwo!33162 r!7292))))))

(assert (=> b!6423462 (= e!3897248 e!3897246)))

(declare-fun b!6423463 () Bool)

(assert (=> b!6423463 (= e!3897247 EmptyLang!16325)))

(declare-fun b!6423464 () Bool)

(assert (=> b!6423464 (= e!3897249 e!3897248)))

(assert (=> b!6423464 (= c!1173653 ((_ is Star!16325) (regTwo!33162 r!7292)))))

(declare-fun b!6423465 () Bool)

(assert (=> b!6423465 (= e!3897246 (Union!16325 (Concat!25170 call!552409 (regTwo!33162 (regTwo!33162 r!7292))) call!552410))))

(declare-fun b!6423466 () Bool)

(assert (=> b!6423466 (= e!3897247 e!3897250)))

(declare-fun c!1173656 () Bool)

(assert (=> b!6423466 (= c!1173656 ((_ is ElementMatch!16325) (regTwo!33162 r!7292)))))

(declare-fun b!6423467 () Bool)

(assert (=> b!6423467 (= e!3897249 (Union!16325 call!552409 call!552412))))

(declare-fun bm!552407 () Bool)

(assert (=> bm!552407 (= call!552410 call!552411)))

(assert (= (and d!2013992 c!1173657) b!6423463))

(assert (= (and d!2013992 (not c!1173657)) b!6423466))

(assert (= (and b!6423466 c!1173656) b!6423460))

(assert (= (and b!6423466 (not c!1173656)) b!6423458))

(assert (= (and b!6423458 c!1173654) b!6423467))

(assert (= (and b!6423458 (not c!1173654)) b!6423464))

(assert (= (and b!6423464 c!1173653) b!6423461))

(assert (= (and b!6423464 (not c!1173653)) b!6423462))

(assert (= (and b!6423462 c!1173655) b!6423465))

(assert (= (and b!6423462 (not c!1173655)) b!6423459))

(assert (= (or b!6423465 b!6423459) bm!552407))

(assert (= (or b!6423461 bm!552407) bm!552404))

(assert (= (or b!6423467 bm!552404) bm!552405))

(assert (= (or b!6423467 b!6423465) bm!552406))

(assert (=> bm!552405 m!7216528))

(declare-fun m!7217838 () Bool)

(assert (=> bm!552405 m!7217838))

(declare-fun m!7217840 () Bool)

(assert (=> d!2013992 m!7217840))

(assert (=> d!2013992 m!7216538))

(assert (=> bm!552406 m!7216528))

(declare-fun m!7217842 () Bool)

(assert (=> bm!552406 m!7217842))

(declare-fun m!7217844 () Bool)

(assert (=> b!6423462 m!7217844))

(assert (=> b!6422085 d!2013992))

(declare-fun d!2013994 () Bool)

(assert (=> d!2013994 (= (head!13141 (_2!36607 lt!2377178)) (h!71598 (_2!36607 lt!2377178)))))

(assert (=> b!6422085 d!2013994))

(declare-fun d!2013996 () Bool)

(assert (=> d!2013996 (= (tail!12226 (_2!36607 lt!2377178)) (t!378888 (_2!36607 lt!2377178)))))

(assert (=> b!6422085 d!2013996))

(declare-fun d!2013998 () Bool)

(assert (=> d!2013998 (= (isDefined!12919 lt!2377318) (not (isEmpty!37311 lt!2377318)))))

(declare-fun bs!1615438 () Bool)

(assert (= bs!1615438 d!2013998))

(declare-fun m!7217846 () Bool)

(assert (=> bs!1615438 m!7217846))

(assert (=> b!6422142 d!2013998))

(assert (=> bs!1614792 d!2013478))

(assert (=> bm!552133 d!2013906))

(declare-fun d!2014000 () Bool)

(declare-fun c!1173658 () Bool)

(assert (=> d!2014000 (= c!1173658 (isEmpty!37310 (tail!12226 (t!378888 s!2326))))))

(declare-fun e!3897251 () Bool)

(assert (=> d!2014000 (= (matchZipper!2337 (derivationStepZipper!2291 lt!2377201 (head!13141 (t!378888 s!2326))) (tail!12226 (t!378888 s!2326))) e!3897251)))

(declare-fun b!6423468 () Bool)

(assert (=> b!6423468 (= e!3897251 (nullableZipper!2090 (derivationStepZipper!2291 lt!2377201 (head!13141 (t!378888 s!2326)))))))

(declare-fun b!6423469 () Bool)

(assert (=> b!6423469 (= e!3897251 (matchZipper!2337 (derivationStepZipper!2291 (derivationStepZipper!2291 lt!2377201 (head!13141 (t!378888 s!2326))) (head!13141 (tail!12226 (t!378888 s!2326)))) (tail!12226 (tail!12226 (t!378888 s!2326)))))))

(assert (= (and d!2014000 c!1173658) b!6423468))

(assert (= (and d!2014000 (not c!1173658)) b!6423469))

(assert (=> d!2014000 m!7216414))

(declare-fun m!7217848 () Bool)

(assert (=> d!2014000 m!7217848))

(assert (=> b!6423468 m!7216412))

(declare-fun m!7217850 () Bool)

(assert (=> b!6423468 m!7217850))

(assert (=> b!6423469 m!7216414))

(declare-fun m!7217852 () Bool)

(assert (=> b!6423469 m!7217852))

(assert (=> b!6423469 m!7216412))

(assert (=> b!6423469 m!7217852))

(declare-fun m!7217854 () Bool)

(assert (=> b!6423469 m!7217854))

(assert (=> b!6423469 m!7216414))

(declare-fun m!7217856 () Bool)

(assert (=> b!6423469 m!7217856))

(assert (=> b!6423469 m!7217854))

(assert (=> b!6423469 m!7217856))

(declare-fun m!7217858 () Bool)

(assert (=> b!6423469 m!7217858))

(assert (=> b!6421965 d!2014000))

(declare-fun bs!1615439 () Bool)

(declare-fun d!2014002 () Bool)

(assert (= bs!1615439 (and d!2014002 b!6421308)))

(declare-fun lambda!354960 () Int)

(assert (=> bs!1615439 (= (= (head!13141 (t!378888 s!2326)) (h!71598 s!2326)) (= lambda!354960 lambda!354816))))

(declare-fun bs!1615440 () Bool)

(assert (= bs!1615440 (and d!2014002 d!2013420)))

(assert (=> bs!1615440 (= (= (head!13141 (t!378888 s!2326)) (h!71598 s!2326)) (= lambda!354960 lambda!354882))))

(declare-fun bs!1615441 () Bool)

(assert (= bs!1615441 (and d!2014002 d!2013926)))

(assert (=> bs!1615441 (= (= (head!13141 (t!378888 s!2326)) (head!13141 s!2326)) (= lambda!354960 lambda!354955))))

(assert (=> d!2014002 true))

(assert (=> d!2014002 (= (derivationStepZipper!2291 lt!2377201 (head!13141 (t!378888 s!2326))) (flatMap!1830 lt!2377201 lambda!354960))))

(declare-fun bs!1615442 () Bool)

(assert (= bs!1615442 d!2014002))

(declare-fun m!7217860 () Bool)

(assert (=> bs!1615442 m!7217860))

(assert (=> b!6421965 d!2014002))

(declare-fun d!2014004 () Bool)

(assert (=> d!2014004 (= (head!13141 (t!378888 s!2326)) (h!71598 (t!378888 s!2326)))))

(assert (=> b!6421965 d!2014004))

(declare-fun d!2014006 () Bool)

(assert (=> d!2014006 (= (tail!12226 (t!378888 s!2326)) (t!378888 (t!378888 s!2326)))))

(assert (=> b!6421965 d!2014006))

(assert (=> d!2013406 d!2013398))

(declare-fun d!2014008 () Bool)

(assert (=> d!2014008 (= (flatMap!1830 lt!2377190 lambda!354816) (dynLambda!25880 lambda!354816 lt!2377188))))

(assert (=> d!2014008 true))

(declare-fun _$13!3643 () Unit!158631)

(assert (=> d!2014008 (= (choose!47725 lt!2377190 lt!2377188 lambda!354816) _$13!3643)))

(declare-fun b_lambda!244151 () Bool)

(assert (=> (not b_lambda!244151) (not d!2014008)))

(declare-fun bs!1615443 () Bool)

(assert (= bs!1615443 d!2014008))

(assert (=> bs!1615443 m!7215892))

(assert (=> bs!1615443 m!7216470))

(assert (=> d!2013406 d!2014008))

(assert (=> b!6422130 d!2013422))

(declare-fun d!2014010 () Bool)

(assert (=> d!2014010 (= (isEmpty!37310 (tail!12226 (_1!36607 lt!2377178))) ((_ is Nil!65150) (tail!12226 (_1!36607 lt!2377178))))))

(assert (=> b!6422066 d!2014010))

(assert (=> b!6422066 d!2013944))

(assert (=> bm!552190 d!2013906))

(declare-fun d!2014012 () Bool)

(assert (=> d!2014012 (= (flatMap!1830 lt!2377200 lambda!354882) (choose!47724 lt!2377200 lambda!354882))))

(declare-fun bs!1615444 () Bool)

(assert (= bs!1615444 d!2014012))

(declare-fun m!7217862 () Bool)

(assert (=> bs!1615444 m!7217862))

(assert (=> d!2013420 d!2014012))

(declare-fun bs!1615445 () Bool)

(declare-fun d!2014014 () Bool)

(assert (= bs!1615445 (and d!2014014 d!2013484)))

(declare-fun lambda!354961 () Int)

(assert (=> bs!1615445 (= lambda!354961 lambda!354897)))

(declare-fun bs!1615446 () Bool)

(assert (= bs!1615446 (and d!2014014 d!2013982)))

(assert (=> bs!1615446 (= lambda!354961 lambda!354959)))

(declare-fun bs!1615447 () Bool)

(assert (= bs!1615447 (and d!2014014 d!2013412)))

(assert (=> bs!1615447 (= lambda!354961 lambda!354879)))

(declare-fun bs!1615448 () Bool)

(assert (= bs!1615448 (and d!2014014 d!2013968)))

(assert (=> bs!1615448 (= lambda!354961 lambda!354958)))

(declare-fun bs!1615449 () Bool)

(assert (= bs!1615449 (and d!2014014 d!2013456)))

(assert (=> bs!1615449 (= lambda!354961 lambda!354889)))

(declare-fun bs!1615450 () Bool)

(assert (= bs!1615450 (and d!2014014 d!2013482)))

(assert (=> bs!1615450 (= lambda!354961 lambda!354894)))

(declare-fun bs!1615451 () Bool)

(assert (= bs!1615451 (and d!2014014 d!2013382)))

(assert (=> bs!1615451 (= lambda!354961 lambda!354876)))

(assert (=> d!2014014 (= (inv!84059 (h!71600 (t!378890 zl!343))) (forall!15515 (exprs!6209 (h!71600 (t!378890 zl!343))) lambda!354961))))

(declare-fun bs!1615452 () Bool)

(assert (= bs!1615452 d!2014014))

(declare-fun m!7217864 () Bool)

(assert (=> bs!1615452 m!7217864))

(assert (=> b!6422277 d!2014014))

(declare-fun d!2014016 () Bool)

(assert (=> d!2014016 (= (isEmpty!37308 (exprs!6209 (h!71600 zl!343))) ((_ is Nil!65151) (exprs!6209 (h!71600 zl!343))))))

(assert (=> b!6422050 d!2014016))

(declare-fun b!6423470 () Bool)

(declare-fun e!3897255 () (InoxSet Context!11418))

(declare-fun call!552416 () (InoxSet Context!11418))

(declare-fun call!552417 () (InoxSet Context!11418))

(assert (=> b!6423470 (= e!3897255 ((_ map or) call!552416 call!552417))))

(declare-fun b!6423471 () Bool)

(declare-fun c!1173662 () Bool)

(assert (=> b!6423471 (= c!1173662 ((_ is Star!16325) (h!71599 (exprs!6209 lt!2377171))))))

(declare-fun e!3897254 () (InoxSet Context!11418))

(declare-fun e!3897253 () (InoxSet Context!11418))

(assert (=> b!6423471 (= e!3897254 e!3897253)))

(declare-fun b!6423472 () Bool)

(assert (=> b!6423472 (= e!3897253 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173660 () Bool)

(declare-fun bm!552408 () Bool)

(declare-fun call!552415 () List!65275)

(declare-fun c!1173663 () Bool)

(declare-fun c!1173661 () Bool)

(assert (=> bm!552408 (= call!552416 (derivationStepZipperDown!1573 (ite c!1173661 (regOne!33163 (h!71599 (exprs!6209 lt!2377171))) (ite c!1173663 (regTwo!33162 (h!71599 (exprs!6209 lt!2377171))) (ite c!1173660 (regOne!33162 (h!71599 (exprs!6209 lt!2377171))) (reg!16654 (h!71599 (exprs!6209 lt!2377171)))))) (ite (or c!1173661 c!1173663) (Context!11419 (t!378889 (exprs!6209 lt!2377171))) (Context!11419 call!552415)) (h!71598 s!2326)))))

(declare-fun b!6423473 () Bool)

(declare-fun e!3897257 () Bool)

(assert (=> b!6423473 (= e!3897257 (nullable!6318 (regOne!33162 (h!71599 (exprs!6209 lt!2377171)))))))

(declare-fun b!6423474 () Bool)

(declare-fun e!3897252 () (InoxSet Context!11418))

(assert (=> b!6423474 (= e!3897252 e!3897254)))

(assert (=> b!6423474 (= c!1173660 ((_ is Concat!25170) (h!71599 (exprs!6209 lt!2377171))))))

(declare-fun bm!552409 () Bool)

(declare-fun call!552418 () List!65275)

(assert (=> bm!552409 (= call!552417 (derivationStepZipperDown!1573 (ite c!1173661 (regTwo!33163 (h!71599 (exprs!6209 lt!2377171))) (regOne!33162 (h!71599 (exprs!6209 lt!2377171)))) (ite c!1173661 (Context!11419 (t!378889 (exprs!6209 lt!2377171))) (Context!11419 call!552418)) (h!71598 s!2326)))))

(declare-fun bm!552410 () Bool)

(declare-fun call!552414 () (InoxSet Context!11418))

(assert (=> bm!552410 (= call!552414 call!552416)))

(declare-fun d!2014018 () Bool)

(declare-fun c!1173659 () Bool)

(assert (=> d!2014018 (= c!1173659 (and ((_ is ElementMatch!16325) (h!71599 (exprs!6209 lt!2377171))) (= (c!1173074 (h!71599 (exprs!6209 lt!2377171))) (h!71598 s!2326))))))

(declare-fun e!3897256 () (InoxSet Context!11418))

(assert (=> d!2014018 (= (derivationStepZipperDown!1573 (h!71599 (exprs!6209 lt!2377171)) (Context!11419 (t!378889 (exprs!6209 lt!2377171))) (h!71598 s!2326)) e!3897256)))

(declare-fun b!6423475 () Bool)

(assert (=> b!6423475 (= e!3897256 e!3897255)))

(assert (=> b!6423475 (= c!1173661 ((_ is Union!16325) (h!71599 (exprs!6209 lt!2377171))))))

(declare-fun b!6423476 () Bool)

(declare-fun call!552413 () (InoxSet Context!11418))

(assert (=> b!6423476 (= e!3897254 call!552413)))

(declare-fun b!6423477 () Bool)

(assert (=> b!6423477 (= e!3897256 (store ((as const (Array Context!11418 Bool)) false) (Context!11419 (t!378889 (exprs!6209 lt!2377171))) true))))

(declare-fun b!6423478 () Bool)

(assert (=> b!6423478 (= c!1173663 e!3897257)))

(declare-fun res!2639936 () Bool)

(assert (=> b!6423478 (=> (not res!2639936) (not e!3897257))))

(assert (=> b!6423478 (= res!2639936 ((_ is Concat!25170) (h!71599 (exprs!6209 lt!2377171))))))

(assert (=> b!6423478 (= e!3897255 e!3897252)))

(declare-fun b!6423479 () Bool)

(assert (=> b!6423479 (= e!3897252 ((_ map or) call!552417 call!552414))))

(declare-fun b!6423480 () Bool)

(assert (=> b!6423480 (= e!3897253 call!552413)))

(declare-fun bm!552411 () Bool)

(assert (=> bm!552411 (= call!552415 call!552418)))

(declare-fun bm!552412 () Bool)

(assert (=> bm!552412 (= call!552413 call!552414)))

(declare-fun bm!552413 () Bool)

(assert (=> bm!552413 (= call!552418 ($colon$colon!2186 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377171)))) (ite (or c!1173663 c!1173660) (regTwo!33162 (h!71599 (exprs!6209 lt!2377171))) (h!71599 (exprs!6209 lt!2377171)))))))

(assert (= (and d!2014018 c!1173659) b!6423477))

(assert (= (and d!2014018 (not c!1173659)) b!6423475))

(assert (= (and b!6423475 c!1173661) b!6423470))

(assert (= (and b!6423475 (not c!1173661)) b!6423478))

(assert (= (and b!6423478 res!2639936) b!6423473))

(assert (= (and b!6423478 c!1173663) b!6423479))

(assert (= (and b!6423478 (not c!1173663)) b!6423474))

(assert (= (and b!6423474 c!1173660) b!6423476))

(assert (= (and b!6423474 (not c!1173660)) b!6423471))

(assert (= (and b!6423471 c!1173662) b!6423480))

(assert (= (and b!6423471 (not c!1173662)) b!6423472))

(assert (= (or b!6423476 b!6423480) bm!552411))

(assert (= (or b!6423476 b!6423480) bm!552412))

(assert (= (or b!6423479 bm!552411) bm!552413))

(assert (= (or b!6423479 bm!552412) bm!552410))

(assert (= (or b!6423470 b!6423479) bm!552409))

(assert (= (or b!6423470 bm!552410) bm!552408))

(declare-fun m!7217866 () Bool)

(assert (=> bm!552413 m!7217866))

(declare-fun m!7217868 () Bool)

(assert (=> bm!552408 m!7217868))

(declare-fun m!7217870 () Bool)

(assert (=> b!6423477 m!7217870))

(declare-fun m!7217872 () Bool)

(assert (=> b!6423473 m!7217872))

(declare-fun m!7217874 () Bool)

(assert (=> bm!552409 m!7217874))

(assert (=> bm!552173 d!2014018))

(declare-fun d!2014020 () Bool)

(assert (=> d!2014020 true))

(assert (=> d!2014020 true))

(declare-fun res!2639937 () Bool)

(assert (=> d!2014020 (= (choose!47719 lambda!354818) res!2639937)))

(assert (=> d!2013288 d!2014020))

(declare-fun b!6423481 () Bool)

(declare-fun e!3897261 () (InoxSet Context!11418))

(declare-fun call!552422 () (InoxSet Context!11418))

(declare-fun call!552423 () (InoxSet Context!11418))

(assert (=> b!6423481 (= e!3897261 ((_ map or) call!552422 call!552423))))

(declare-fun b!6423482 () Bool)

(declare-fun c!1173667 () Bool)

(assert (=> b!6423482 (= c!1173667 ((_ is Star!16325) (h!71599 (exprs!6209 lt!2377181))))))

(declare-fun e!3897260 () (InoxSet Context!11418))

(declare-fun e!3897259 () (InoxSet Context!11418))

(assert (=> b!6423482 (= e!3897260 e!3897259)))

(declare-fun b!6423483 () Bool)

(assert (=> b!6423483 (= e!3897259 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173665 () Bool)

(declare-fun call!552421 () List!65275)

(declare-fun bm!552414 () Bool)

(declare-fun c!1173666 () Bool)

(declare-fun c!1173668 () Bool)

(assert (=> bm!552414 (= call!552422 (derivationStepZipperDown!1573 (ite c!1173666 (regOne!33163 (h!71599 (exprs!6209 lt!2377181))) (ite c!1173668 (regTwo!33162 (h!71599 (exprs!6209 lt!2377181))) (ite c!1173665 (regOne!33162 (h!71599 (exprs!6209 lt!2377181))) (reg!16654 (h!71599 (exprs!6209 lt!2377181)))))) (ite (or c!1173666 c!1173668) (Context!11419 (t!378889 (exprs!6209 lt!2377181))) (Context!11419 call!552421)) (h!71598 s!2326)))))

(declare-fun b!6423484 () Bool)

(declare-fun e!3897263 () Bool)

(assert (=> b!6423484 (= e!3897263 (nullable!6318 (regOne!33162 (h!71599 (exprs!6209 lt!2377181)))))))

(declare-fun b!6423485 () Bool)

(declare-fun e!3897258 () (InoxSet Context!11418))

(assert (=> b!6423485 (= e!3897258 e!3897260)))

(assert (=> b!6423485 (= c!1173665 ((_ is Concat!25170) (h!71599 (exprs!6209 lt!2377181))))))

(declare-fun call!552424 () List!65275)

(declare-fun bm!552415 () Bool)

(assert (=> bm!552415 (= call!552423 (derivationStepZipperDown!1573 (ite c!1173666 (regTwo!33163 (h!71599 (exprs!6209 lt!2377181))) (regOne!33162 (h!71599 (exprs!6209 lt!2377181)))) (ite c!1173666 (Context!11419 (t!378889 (exprs!6209 lt!2377181))) (Context!11419 call!552424)) (h!71598 s!2326)))))

(declare-fun bm!552416 () Bool)

(declare-fun call!552420 () (InoxSet Context!11418))

(assert (=> bm!552416 (= call!552420 call!552422)))

(declare-fun d!2014022 () Bool)

(declare-fun c!1173664 () Bool)

(assert (=> d!2014022 (= c!1173664 (and ((_ is ElementMatch!16325) (h!71599 (exprs!6209 lt!2377181))) (= (c!1173074 (h!71599 (exprs!6209 lt!2377181))) (h!71598 s!2326))))))

(declare-fun e!3897262 () (InoxSet Context!11418))

(assert (=> d!2014022 (= (derivationStepZipperDown!1573 (h!71599 (exprs!6209 lt!2377181)) (Context!11419 (t!378889 (exprs!6209 lt!2377181))) (h!71598 s!2326)) e!3897262)))

(declare-fun b!6423486 () Bool)

(assert (=> b!6423486 (= e!3897262 e!3897261)))

(assert (=> b!6423486 (= c!1173666 ((_ is Union!16325) (h!71599 (exprs!6209 lt!2377181))))))

(declare-fun b!6423487 () Bool)

(declare-fun call!552419 () (InoxSet Context!11418))

(assert (=> b!6423487 (= e!3897260 call!552419)))

(declare-fun b!6423488 () Bool)

(assert (=> b!6423488 (= e!3897262 (store ((as const (Array Context!11418 Bool)) false) (Context!11419 (t!378889 (exprs!6209 lt!2377181))) true))))

(declare-fun b!6423489 () Bool)

(assert (=> b!6423489 (= c!1173668 e!3897263)))

(declare-fun res!2639938 () Bool)

(assert (=> b!6423489 (=> (not res!2639938) (not e!3897263))))

(assert (=> b!6423489 (= res!2639938 ((_ is Concat!25170) (h!71599 (exprs!6209 lt!2377181))))))

(assert (=> b!6423489 (= e!3897261 e!3897258)))

(declare-fun b!6423490 () Bool)

(assert (=> b!6423490 (= e!3897258 ((_ map or) call!552423 call!552420))))

(declare-fun b!6423491 () Bool)

(assert (=> b!6423491 (= e!3897259 call!552419)))

(declare-fun bm!552417 () Bool)

(assert (=> bm!552417 (= call!552421 call!552424)))

(declare-fun bm!552418 () Bool)

(assert (=> bm!552418 (= call!552419 call!552420)))

(declare-fun bm!552419 () Bool)

(assert (=> bm!552419 (= call!552424 ($colon$colon!2186 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377181)))) (ite (or c!1173668 c!1173665) (regTwo!33162 (h!71599 (exprs!6209 lt!2377181))) (h!71599 (exprs!6209 lt!2377181)))))))

(assert (= (and d!2014022 c!1173664) b!6423488))

(assert (= (and d!2014022 (not c!1173664)) b!6423486))

(assert (= (and b!6423486 c!1173666) b!6423481))

(assert (= (and b!6423486 (not c!1173666)) b!6423489))

(assert (= (and b!6423489 res!2639938) b!6423484))

(assert (= (and b!6423489 c!1173668) b!6423490))

(assert (= (and b!6423489 (not c!1173668)) b!6423485))

(assert (= (and b!6423485 c!1173665) b!6423487))

(assert (= (and b!6423485 (not c!1173665)) b!6423482))

(assert (= (and b!6423482 c!1173667) b!6423491))

(assert (= (and b!6423482 (not c!1173667)) b!6423483))

(assert (= (or b!6423487 b!6423491) bm!552417))

(assert (= (or b!6423487 b!6423491) bm!552418))

(assert (= (or b!6423490 bm!552417) bm!552419))

(assert (= (or b!6423490 bm!552418) bm!552416))

(assert (= (or b!6423481 b!6423490) bm!552415))

(assert (= (or b!6423481 bm!552416) bm!552414))

(declare-fun m!7217876 () Bool)

(assert (=> bm!552419 m!7217876))

(declare-fun m!7217878 () Bool)

(assert (=> bm!552414 m!7217878))

(declare-fun m!7217880 () Bool)

(assert (=> b!6423488 m!7217880))

(declare-fun m!7217882 () Bool)

(assert (=> b!6423484 m!7217882))

(declare-fun m!7217884 () Bool)

(assert (=> bm!552415 m!7217884))

(assert (=> bm!552201 d!2014022))

(declare-fun d!2014024 () Bool)

(declare-fun res!2639939 () Bool)

(declare-fun e!3897264 () Bool)

(assert (=> d!2014024 (=> res!2639939 e!3897264)))

(assert (=> d!2014024 (= res!2639939 ((_ is Nil!65151) (exprs!6209 (h!71600 zl!343))))))

(assert (=> d!2014024 (= (forall!15515 (exprs!6209 (h!71600 zl!343)) lambda!354876) e!3897264)))

(declare-fun b!6423492 () Bool)

(declare-fun e!3897265 () Bool)

(assert (=> b!6423492 (= e!3897264 e!3897265)))

(declare-fun res!2639940 () Bool)

(assert (=> b!6423492 (=> (not res!2639940) (not e!3897265))))

(assert (=> b!6423492 (= res!2639940 (dynLambda!25882 lambda!354876 (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6423493 () Bool)

(assert (=> b!6423493 (= e!3897265 (forall!15515 (t!378889 (exprs!6209 (h!71600 zl!343))) lambda!354876))))

(assert (= (and d!2014024 (not res!2639939)) b!6423492))

(assert (= (and b!6423492 res!2639940) b!6423493))

(declare-fun b_lambda!244153 () Bool)

(assert (=> (not b_lambda!244153) (not b!6423492)))

(declare-fun m!7217886 () Bool)

(assert (=> b!6423492 m!7217886))

(declare-fun m!7217888 () Bool)

(assert (=> b!6423493 m!7217888))

(assert (=> d!2013382 d!2014024))

(declare-fun d!2014026 () Bool)

(assert (=> d!2014026 (= (isEmpty!37310 (_2!36607 lt!2377178)) ((_ is Nil!65150) (_2!36607 lt!2377178)))))

(assert (=> d!2013424 d!2014026))

(declare-fun b!6423494 () Bool)

(declare-fun e!3897269 () Bool)

(declare-fun call!552426 () Bool)

(assert (=> b!6423494 (= e!3897269 call!552426)))

(declare-fun bm!552420 () Bool)

(declare-fun c!1173670 () Bool)

(declare-fun c!1173669 () Bool)

(assert (=> bm!552420 (= call!552426 (validRegex!8061 (ite c!1173670 (reg!16654 (regTwo!33162 r!7292)) (ite c!1173669 (regOne!33163 (regTwo!33162 r!7292)) (regOne!33162 (regTwo!33162 r!7292))))))))

(declare-fun d!2014028 () Bool)

(declare-fun res!2639943 () Bool)

(declare-fun e!3897272 () Bool)

(assert (=> d!2014028 (=> res!2639943 e!3897272)))

(assert (=> d!2014028 (= res!2639943 ((_ is ElementMatch!16325) (regTwo!33162 r!7292)))))

(assert (=> d!2014028 (= (validRegex!8061 (regTwo!33162 r!7292)) e!3897272)))

(declare-fun bm!552421 () Bool)

(declare-fun call!552427 () Bool)

(assert (=> bm!552421 (= call!552427 call!552426)))

(declare-fun b!6423495 () Bool)

(declare-fun e!3897270 () Bool)

(declare-fun call!552425 () Bool)

(assert (=> b!6423495 (= e!3897270 call!552425)))

(declare-fun b!6423496 () Bool)

(declare-fun res!2639941 () Bool)

(declare-fun e!3897266 () Bool)

(assert (=> b!6423496 (=> res!2639941 e!3897266)))

(assert (=> b!6423496 (= res!2639941 (not ((_ is Concat!25170) (regTwo!33162 r!7292))))))

(declare-fun e!3897267 () Bool)

(assert (=> b!6423496 (= e!3897267 e!3897266)))

(declare-fun b!6423497 () Bool)

(declare-fun e!3897271 () Bool)

(assert (=> b!6423497 (= e!3897272 e!3897271)))

(assert (=> b!6423497 (= c!1173670 ((_ is Star!16325) (regTwo!33162 r!7292)))))

(declare-fun b!6423498 () Bool)

(assert (=> b!6423498 (= e!3897271 e!3897269)))

(declare-fun res!2639944 () Bool)

(assert (=> b!6423498 (= res!2639944 (not (nullable!6318 (reg!16654 (regTwo!33162 r!7292)))))))

(assert (=> b!6423498 (=> (not res!2639944) (not e!3897269))))

(declare-fun b!6423499 () Bool)

(assert (=> b!6423499 (= e!3897271 e!3897267)))

(assert (=> b!6423499 (= c!1173669 ((_ is Union!16325) (regTwo!33162 r!7292)))))

(declare-fun b!6423500 () Bool)

(declare-fun e!3897268 () Bool)

(assert (=> b!6423500 (= e!3897268 call!552425)))

(declare-fun b!6423501 () Bool)

(declare-fun res!2639942 () Bool)

(assert (=> b!6423501 (=> (not res!2639942) (not e!3897268))))

(assert (=> b!6423501 (= res!2639942 call!552427)))

(assert (=> b!6423501 (= e!3897267 e!3897268)))

(declare-fun bm!552422 () Bool)

(assert (=> bm!552422 (= call!552425 (validRegex!8061 (ite c!1173669 (regTwo!33163 (regTwo!33162 r!7292)) (regTwo!33162 (regTwo!33162 r!7292)))))))

(declare-fun b!6423502 () Bool)

(assert (=> b!6423502 (= e!3897266 e!3897270)))

(declare-fun res!2639945 () Bool)

(assert (=> b!6423502 (=> (not res!2639945) (not e!3897270))))

(assert (=> b!6423502 (= res!2639945 call!552427)))

(assert (= (and d!2014028 (not res!2639943)) b!6423497))

(assert (= (and b!6423497 c!1173670) b!6423498))

(assert (= (and b!6423497 (not c!1173670)) b!6423499))

(assert (= (and b!6423498 res!2639944) b!6423494))

(assert (= (and b!6423499 c!1173669) b!6423501))

(assert (= (and b!6423499 (not c!1173669)) b!6423496))

(assert (= (and b!6423501 res!2639942) b!6423500))

(assert (= (and b!6423496 (not res!2639941)) b!6423502))

(assert (= (and b!6423502 res!2639945) b!6423495))

(assert (= (or b!6423500 b!6423495) bm!552422))

(assert (= (or b!6423501 b!6423502) bm!552421))

(assert (= (or b!6423494 bm!552421) bm!552420))

(declare-fun m!7217890 () Bool)

(assert (=> bm!552420 m!7217890))

(declare-fun m!7217892 () Bool)

(assert (=> b!6423498 m!7217892))

(declare-fun m!7217894 () Bool)

(assert (=> bm!552422 m!7217894))

(assert (=> d!2013424 d!2014028))

(declare-fun d!2014030 () Bool)

(assert (=> d!2014030 (= (isDefined!12919 lt!2377314) (not (isEmpty!37311 lt!2377314)))))

(declare-fun bs!1615453 () Bool)

(assert (= bs!1615453 d!2014030))

(declare-fun m!7217896 () Bool)

(assert (=> bs!1615453 m!7217896))

(assert (=> d!2013436 d!2014030))

(declare-fun b!6423503 () Bool)

(declare-fun res!2639950 () Bool)

(declare-fun e!3897275 () Bool)

(assert (=> b!6423503 (=> res!2639950 e!3897275)))

(declare-fun e!3897273 () Bool)

(assert (=> b!6423503 (= res!2639950 e!3897273)))

(declare-fun res!2639946 () Bool)

(assert (=> b!6423503 (=> (not res!2639946) (not e!3897273))))

(declare-fun lt!2377406 () Bool)

(assert (=> b!6423503 (= res!2639946 lt!2377406)))

(declare-fun b!6423504 () Bool)

(declare-fun res!2639951 () Bool)

(assert (=> b!6423504 (=> (not res!2639951) (not e!3897273))))

(assert (=> b!6423504 (= res!2639951 (isEmpty!37310 (tail!12226 Nil!65150)))))

(declare-fun b!6423505 () Bool)

(declare-fun e!3897277 () Bool)

(declare-fun e!3897274 () Bool)

(assert (=> b!6423505 (= e!3897277 e!3897274)))

(declare-fun c!1173673 () Bool)

(assert (=> b!6423505 (= c!1173673 ((_ is EmptyLang!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun b!6423506 () Bool)

(declare-fun res!2639952 () Bool)

(declare-fun e!3897278 () Bool)

(assert (=> b!6423506 (=> res!2639952 e!3897278)))

(assert (=> b!6423506 (= res!2639952 (not (isEmpty!37310 (tail!12226 Nil!65150))))))

(declare-fun d!2014032 () Bool)

(assert (=> d!2014032 e!3897277))

(declare-fun c!1173671 () Bool)

(assert (=> d!2014032 (= c!1173671 ((_ is EmptyExpr!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun e!3897276 () Bool)

(assert (=> d!2014032 (= lt!2377406 e!3897276)))

(declare-fun c!1173672 () Bool)

(assert (=> d!2014032 (= c!1173672 (isEmpty!37310 Nil!65150))))

(assert (=> d!2014032 (validRegex!8061 (reg!16654 (regOne!33162 r!7292)))))

(assert (=> d!2014032 (= (matchR!8508 (reg!16654 (regOne!33162 r!7292)) Nil!65150) lt!2377406)))

(declare-fun b!6423507 () Bool)

(declare-fun e!3897279 () Bool)

(assert (=> b!6423507 (= e!3897279 e!3897278)))

(declare-fun res!2639949 () Bool)

(assert (=> b!6423507 (=> res!2639949 e!3897278)))

(declare-fun call!552428 () Bool)

(assert (=> b!6423507 (= res!2639949 call!552428)))

(declare-fun b!6423508 () Bool)

(assert (=> b!6423508 (= e!3897278 (not (= (head!13141 Nil!65150) (c!1173074 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun b!6423509 () Bool)

(declare-fun res!2639948 () Bool)

(assert (=> b!6423509 (=> res!2639948 e!3897275)))

(assert (=> b!6423509 (= res!2639948 (not ((_ is ElementMatch!16325) (reg!16654 (regOne!33162 r!7292)))))))

(assert (=> b!6423509 (= e!3897274 e!3897275)))

(declare-fun b!6423510 () Bool)

(assert (=> b!6423510 (= e!3897277 (= lt!2377406 call!552428))))

(declare-fun b!6423511 () Bool)

(assert (=> b!6423511 (= e!3897276 (matchR!8508 (derivativeStep!5029 (reg!16654 (regOne!33162 r!7292)) (head!13141 Nil!65150)) (tail!12226 Nil!65150)))))

(declare-fun b!6423512 () Bool)

(assert (=> b!6423512 (= e!3897276 (nullable!6318 (reg!16654 (regOne!33162 r!7292))))))

(declare-fun bm!552423 () Bool)

(assert (=> bm!552423 (= call!552428 (isEmpty!37310 Nil!65150))))

(declare-fun b!6423513 () Bool)

(assert (=> b!6423513 (= e!3897273 (= (head!13141 Nil!65150) (c!1173074 (reg!16654 (regOne!33162 r!7292)))))))

(declare-fun b!6423514 () Bool)

(assert (=> b!6423514 (= e!3897274 (not lt!2377406))))

(declare-fun b!6423515 () Bool)

(declare-fun res!2639953 () Bool)

(assert (=> b!6423515 (=> (not res!2639953) (not e!3897273))))

(assert (=> b!6423515 (= res!2639953 (not call!552428))))

(declare-fun b!6423516 () Bool)

(assert (=> b!6423516 (= e!3897275 e!3897279)))

(declare-fun res!2639947 () Bool)

(assert (=> b!6423516 (=> (not res!2639947) (not e!3897279))))

(assert (=> b!6423516 (= res!2639947 (not lt!2377406))))

(assert (= (and d!2014032 c!1173672) b!6423512))

(assert (= (and d!2014032 (not c!1173672)) b!6423511))

(assert (= (and d!2014032 c!1173671) b!6423510))

(assert (= (and d!2014032 (not c!1173671)) b!6423505))

(assert (= (and b!6423505 c!1173673) b!6423514))

(assert (= (and b!6423505 (not c!1173673)) b!6423509))

(assert (= (and b!6423509 (not res!2639948)) b!6423503))

(assert (= (and b!6423503 res!2639946) b!6423515))

(assert (= (and b!6423515 res!2639953) b!6423504))

(assert (= (and b!6423504 res!2639951) b!6423513))

(assert (= (and b!6423503 (not res!2639950)) b!6423516))

(assert (= (and b!6423516 res!2639947) b!6423507))

(assert (= (and b!6423507 (not res!2639949)) b!6423506))

(assert (= (and b!6423506 (not res!2639952)) b!6423508))

(assert (= (or b!6423510 b!6423507 b!6423515) bm!552423))

(declare-fun m!7217898 () Bool)

(assert (=> b!6423504 m!7217898))

(assert (=> b!6423504 m!7217898))

(declare-fun m!7217900 () Bool)

(assert (=> b!6423504 m!7217900))

(assert (=> b!6423506 m!7217898))

(assert (=> b!6423506 m!7217898))

(assert (=> b!6423506 m!7217900))

(declare-fun m!7217902 () Bool)

(assert (=> b!6423513 m!7217902))

(declare-fun m!7217904 () Bool)

(assert (=> bm!552423 m!7217904))

(assert (=> b!6423512 m!7215838))

(assert (=> b!6423511 m!7217902))

(assert (=> b!6423511 m!7217902))

(declare-fun m!7217906 () Bool)

(assert (=> b!6423511 m!7217906))

(assert (=> b!6423511 m!7217898))

(assert (=> b!6423511 m!7217906))

(assert (=> b!6423511 m!7217898))

(declare-fun m!7217908 () Bool)

(assert (=> b!6423511 m!7217908))

(assert (=> b!6423508 m!7217902))

(assert (=> d!2014032 m!7217904))

(assert (=> d!2014032 m!7215810))

(assert (=> d!2013436 d!2014032))

(assert (=> d!2013436 d!2013428))

(declare-fun d!2014034 () Bool)

(assert (=> d!2014034 (= ($colon$colon!2186 (exprs!6209 lt!2377188) (ite (or c!1173254 c!1173251) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (regOne!33162 r!7292)))) (Cons!65151 (ite (or c!1173254 c!1173251) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (regOne!33162 r!7292))) (exprs!6209 lt!2377188)))))

(assert (=> bm!552168 d!2014034))

(declare-fun d!2014036 () Bool)

(declare-fun res!2639958 () Bool)

(declare-fun e!3897284 () Bool)

(assert (=> d!2014036 (=> res!2639958 e!3897284)))

(assert (=> d!2014036 (= res!2639958 ((_ is Nil!65152) lt!2377323))))

(assert (=> d!2014036 (= (noDuplicate!2154 lt!2377323) e!3897284)))

(declare-fun b!6423521 () Bool)

(declare-fun e!3897285 () Bool)

(assert (=> b!6423521 (= e!3897284 e!3897285)))

(declare-fun res!2639959 () Bool)

(assert (=> b!6423521 (=> (not res!2639959) (not e!3897285))))

(declare-fun contains!20178 (List!65276 Context!11418) Bool)

(assert (=> b!6423521 (= res!2639959 (not (contains!20178 (t!378890 lt!2377323) (h!71600 lt!2377323))))))

(declare-fun b!6423522 () Bool)

(assert (=> b!6423522 (= e!3897285 (noDuplicate!2154 (t!378890 lt!2377323)))))

(assert (= (and d!2014036 (not res!2639958)) b!6423521))

(assert (= (and b!6423521 res!2639959) b!6423522))

(declare-fun m!7217910 () Bool)

(assert (=> b!6423521 m!7217910))

(declare-fun m!7217912 () Bool)

(assert (=> b!6423522 m!7217912))

(assert (=> d!2013452 d!2014036))

(declare-fun d!2014038 () Bool)

(declare-fun e!3897294 () Bool)

(assert (=> d!2014038 e!3897294))

(declare-fun res!2639965 () Bool)

(assert (=> d!2014038 (=> (not res!2639965) (not e!3897294))))

(declare-fun res!2639964 () List!65276)

(assert (=> d!2014038 (= res!2639965 (noDuplicate!2154 res!2639964))))

(declare-fun e!3897292 () Bool)

(assert (=> d!2014038 e!3897292))

(assert (=> d!2014038 (= (choose!47729 z!1189) res!2639964)))

(declare-fun b!6423530 () Bool)

(declare-fun e!3897293 () Bool)

(declare-fun tp!1783212 () Bool)

(assert (=> b!6423530 (= e!3897293 tp!1783212)))

(declare-fun b!6423529 () Bool)

(declare-fun tp!1783211 () Bool)

(assert (=> b!6423529 (= e!3897292 (and (inv!84059 (h!71600 res!2639964)) e!3897293 tp!1783211))))

(declare-fun b!6423531 () Bool)

(assert (=> b!6423531 (= e!3897294 (= (content!12364 res!2639964) z!1189))))

(assert (= b!6423529 b!6423530))

(assert (= (and d!2014038 ((_ is Cons!65152) res!2639964)) b!6423529))

(assert (= (and d!2014038 res!2639965) b!6423531))

(declare-fun m!7217914 () Bool)

(assert (=> d!2014038 m!7217914))

(declare-fun m!7217916 () Bool)

(assert (=> b!6423529 m!7217916))

(declare-fun m!7217918 () Bool)

(assert (=> b!6423531 m!7217918))

(assert (=> d!2013452 d!2014038))

(declare-fun d!2014040 () Bool)

(assert (=> d!2014040 (= (isEmpty!37310 (tail!12226 s!2326)) ((_ is Nil!65150) (tail!12226 s!2326)))))

(assert (=> b!6421884 d!2014040))

(assert (=> b!6421884 d!2013930))

(declare-fun d!2014042 () Bool)

(assert (=> d!2014042 (= ($colon$colon!2186 (exprs!6209 lt!2377181) (ite (or c!1173314 c!1173311) (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (h!71599 (exprs!6209 (h!71600 zl!343))))) (Cons!65151 (ite (or c!1173314 c!1173311) (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (h!71599 (exprs!6209 (h!71600 zl!343)))) (exprs!6209 lt!2377181)))))

(assert (=> bm!552198 d!2014042))

(declare-fun bs!1615454 () Bool)

(declare-fun d!2014044 () Bool)

(assert (= bs!1615454 (and d!2014044 d!2013922)))

(declare-fun lambda!354962 () Int)

(assert (=> bs!1615454 (= lambda!354962 lambda!354954)))

(assert (=> d!2014044 (= (nullableZipper!2090 lt!2377200) (exists!2599 lt!2377200 lambda!354962))))

(declare-fun bs!1615455 () Bool)

(assert (= bs!1615455 d!2014044))

(declare-fun m!7217920 () Bool)

(assert (=> bs!1615455 m!7217920))

(assert (=> b!6421961 d!2014044))

(assert (=> b!6422054 d!2013388))

(declare-fun d!2014046 () Bool)

(assert (=> d!2014046 true))

(declare-fun setRes!43851 () Bool)

(assert (=> d!2014046 setRes!43851))

(declare-fun condSetEmpty!43851 () Bool)

(declare-fun res!2639966 () (InoxSet Context!11418))

(assert (=> d!2014046 (= condSetEmpty!43851 (= res!2639966 ((as const (Array Context!11418 Bool)) false)))))

(assert (=> d!2014046 (= (choose!47724 z!1189 lambda!354816) res!2639966)))

(declare-fun setIsEmpty!43851 () Bool)

(assert (=> setIsEmpty!43851 setRes!43851))

(declare-fun tp!1783214 () Bool)

(declare-fun setNonEmpty!43851 () Bool)

(declare-fun setElem!43851 () Context!11418)

(declare-fun e!3897295 () Bool)

(assert (=> setNonEmpty!43851 (= setRes!43851 (and tp!1783214 (inv!84059 setElem!43851) e!3897295))))

(declare-fun setRest!43851 () (InoxSet Context!11418))

(assert (=> setNonEmpty!43851 (= res!2639966 ((_ map or) (store ((as const (Array Context!11418 Bool)) false) setElem!43851 true) setRest!43851))))

(declare-fun b!6423532 () Bool)

(declare-fun tp!1783213 () Bool)

(assert (=> b!6423532 (= e!3897295 tp!1783213)))

(assert (= (and d!2014046 condSetEmpty!43851) setIsEmpty!43851))

(assert (= (and d!2014046 (not condSetEmpty!43851)) setNonEmpty!43851))

(assert (= setNonEmpty!43851 b!6423532))

(declare-fun m!7217922 () Bool)

(assert (=> setNonEmpty!43851 m!7217922))

(assert (=> d!2013474 d!2014046))

(declare-fun d!2014048 () Bool)

(declare-fun c!1173676 () Bool)

(assert (=> d!2014048 (= c!1173676 ((_ is Nil!65152) lt!2377323))))

(declare-fun e!3897298 () (InoxSet Context!11418))

(assert (=> d!2014048 (= (content!12364 lt!2377323) e!3897298)))

(declare-fun b!6423537 () Bool)

(assert (=> b!6423537 (= e!3897298 ((as const (Array Context!11418 Bool)) false))))

(declare-fun b!6423538 () Bool)

(assert (=> b!6423538 (= e!3897298 ((_ map or) (store ((as const (Array Context!11418 Bool)) false) (h!71600 lt!2377323) true) (content!12364 (t!378890 lt!2377323))))))

(assert (= (and d!2014048 c!1173676) b!6423537))

(assert (= (and d!2014048 (not c!1173676)) b!6423538))

(declare-fun m!7217924 () Bool)

(assert (=> b!6423538 m!7217924))

(declare-fun m!7217926 () Bool)

(assert (=> b!6423538 m!7217926))

(assert (=> b!6422149 d!2014048))

(declare-fun d!2014050 () Bool)

(assert (=> d!2014050 (= (isEmpty!37308 (tail!12227 (unfocusZipperList!1746 zl!343))) ((_ is Nil!65151) (tail!12227 (unfocusZipperList!1746 zl!343))))))

(assert (=> b!6422232 d!2014050))

(declare-fun d!2014052 () Bool)

(assert (=> d!2014052 (= (tail!12227 (unfocusZipperList!1746 zl!343)) (t!378889 (unfocusZipperList!1746 zl!343)))))

(assert (=> b!6422232 d!2014052))

(declare-fun b!6423542 () Bool)

(declare-fun e!3897300 () Bool)

(declare-fun lt!2377407 () List!65274)

(assert (=> b!6423542 (= e!3897300 (or (not (= (_2!36607 lt!2377178) Nil!65150)) (= lt!2377407 (t!378888 (_1!36607 lt!2377178)))))))

(declare-fun b!6423539 () Bool)

(declare-fun e!3897299 () List!65274)

(assert (=> b!6423539 (= e!3897299 (_2!36607 lt!2377178))))

(declare-fun b!6423540 () Bool)

(assert (=> b!6423540 (= e!3897299 (Cons!65150 (h!71598 (t!378888 (_1!36607 lt!2377178))) (++!14393 (t!378888 (t!378888 (_1!36607 lt!2377178))) (_2!36607 lt!2377178))))))

(declare-fun d!2014054 () Bool)

(assert (=> d!2014054 e!3897300))

(declare-fun res!2639968 () Bool)

(assert (=> d!2014054 (=> (not res!2639968) (not e!3897300))))

(assert (=> d!2014054 (= res!2639968 (= (content!12363 lt!2377407) ((_ map or) (content!12363 (t!378888 (_1!36607 lt!2377178))) (content!12363 (_2!36607 lt!2377178)))))))

(assert (=> d!2014054 (= lt!2377407 e!3897299)))

(declare-fun c!1173677 () Bool)

(assert (=> d!2014054 (= c!1173677 ((_ is Nil!65150) (t!378888 (_1!36607 lt!2377178))))))

(assert (=> d!2014054 (= (++!14393 (t!378888 (_1!36607 lt!2377178)) (_2!36607 lt!2377178)) lt!2377407)))

(declare-fun b!6423541 () Bool)

(declare-fun res!2639967 () Bool)

(assert (=> b!6423541 (=> (not res!2639967) (not e!3897300))))

(assert (=> b!6423541 (= res!2639967 (= (size!40383 lt!2377407) (+ (size!40383 (t!378888 (_1!36607 lt!2377178))) (size!40383 (_2!36607 lt!2377178)))))))

(assert (= (and d!2014054 c!1173677) b!6423539))

(assert (= (and d!2014054 (not c!1173677)) b!6423540))

(assert (= (and d!2014054 res!2639968) b!6423541))

(assert (= (and b!6423541 res!2639967) b!6423542))

(declare-fun m!7217928 () Bool)

(assert (=> b!6423540 m!7217928))

(declare-fun m!7217930 () Bool)

(assert (=> d!2014054 m!7217930))

(declare-fun m!7217932 () Bool)

(assert (=> d!2014054 m!7217932))

(assert (=> d!2014054 m!7216242))

(declare-fun m!7217934 () Bool)

(assert (=> b!6423541 m!7217934))

(assert (=> b!6423541 m!7217726))

(assert (=> b!6423541 m!7216248))

(assert (=> b!6421721 d!2014054))

(declare-fun d!2014056 () Bool)

(assert (=> d!2014056 (= (nullable!6318 (reg!16654 (reg!16654 (regOne!33162 r!7292)))) (nullableFct!2264 (reg!16654 (reg!16654 (regOne!33162 r!7292)))))))

(declare-fun bs!1615456 () Bool)

(assert (= bs!1615456 d!2014056))

(declare-fun m!7217936 () Bool)

(assert (=> bs!1615456 m!7217936))

(assert (=> b!6422113 d!2014056))

(declare-fun b!6423546 () Bool)

(declare-fun e!3897302 () Bool)

(declare-fun lt!2377408 () List!65274)

(assert (=> b!6423546 (= e!3897302 (or (not (= (t!378888 s!2326) Nil!65150)) (= lt!2377408 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)))))))

(declare-fun b!6423543 () Bool)

(declare-fun e!3897301 () List!65274)

(assert (=> b!6423543 (= e!3897301 (t!378888 s!2326))))

(declare-fun b!6423544 () Bool)

(assert (=> b!6423544 (= e!3897301 (Cons!65150 (h!71598 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150))) (++!14393 (t!378888 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150))) (t!378888 s!2326))))))

(declare-fun d!2014058 () Bool)

(assert (=> d!2014058 e!3897302))

(declare-fun res!2639970 () Bool)

(assert (=> d!2014058 (=> (not res!2639970) (not e!3897302))))

(assert (=> d!2014058 (= res!2639970 (= (content!12363 lt!2377408) ((_ map or) (content!12363 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150))) (content!12363 (t!378888 s!2326)))))))

(assert (=> d!2014058 (= lt!2377408 e!3897301)))

(declare-fun c!1173678 () Bool)

(assert (=> d!2014058 (= c!1173678 ((_ is Nil!65150) (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150))))))

(assert (=> d!2014058 (= (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326)) lt!2377408)))

(declare-fun b!6423545 () Bool)

(declare-fun res!2639969 () Bool)

(assert (=> b!6423545 (=> (not res!2639969) (not e!3897302))))

(assert (=> b!6423545 (= res!2639969 (= (size!40383 lt!2377408) (+ (size!40383 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150))) (size!40383 (t!378888 s!2326)))))))

(assert (= (and d!2014058 c!1173678) b!6423543))

(assert (= (and d!2014058 (not c!1173678)) b!6423544))

(assert (= (and d!2014058 res!2639970) b!6423545))

(assert (= (and b!6423545 res!2639969) b!6423546))

(declare-fun m!7217938 () Bool)

(assert (=> b!6423544 m!7217938))

(declare-fun m!7217940 () Bool)

(assert (=> d!2014058 m!7217940))

(assert (=> d!2014058 m!7216188))

(declare-fun m!7217942 () Bool)

(assert (=> d!2014058 m!7217942))

(declare-fun m!7217944 () Bool)

(assert (=> d!2014058 m!7217944))

(declare-fun m!7217946 () Bool)

(assert (=> b!6423545 m!7217946))

(assert (=> b!6423545 m!7216188))

(declare-fun m!7217948 () Bool)

(assert (=> b!6423545 m!7217948))

(declare-fun m!7217950 () Bool)

(assert (=> b!6423545 m!7217950))

(assert (=> b!6422141 d!2014058))

(declare-fun b!6423550 () Bool)

(declare-fun e!3897304 () Bool)

(declare-fun lt!2377409 () List!65274)

(assert (=> b!6423550 (= e!3897304 (or (not (= (Cons!65150 (h!71598 s!2326) Nil!65150) Nil!65150)) (= lt!2377409 Nil!65150)))))

(declare-fun b!6423547 () Bool)

(declare-fun e!3897303 () List!65274)

(assert (=> b!6423547 (= e!3897303 (Cons!65150 (h!71598 s!2326) Nil!65150))))

(declare-fun b!6423548 () Bool)

(assert (=> b!6423548 (= e!3897303 (Cons!65150 (h!71598 Nil!65150) (++!14393 (t!378888 Nil!65150) (Cons!65150 (h!71598 s!2326) Nil!65150))))))

(declare-fun d!2014060 () Bool)

(assert (=> d!2014060 e!3897304))

(declare-fun res!2639972 () Bool)

(assert (=> d!2014060 (=> (not res!2639972) (not e!3897304))))

(assert (=> d!2014060 (= res!2639972 (= (content!12363 lt!2377409) ((_ map or) (content!12363 Nil!65150) (content!12363 (Cons!65150 (h!71598 s!2326) Nil!65150)))))))

(assert (=> d!2014060 (= lt!2377409 e!3897303)))

(declare-fun c!1173679 () Bool)

(assert (=> d!2014060 (= c!1173679 ((_ is Nil!65150) Nil!65150))))

(assert (=> d!2014060 (= (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) lt!2377409)))

(declare-fun b!6423549 () Bool)

(declare-fun res!2639971 () Bool)

(assert (=> b!6423549 (=> (not res!2639971) (not e!3897304))))

(assert (=> b!6423549 (= res!2639971 (= (size!40383 lt!2377409) (+ (size!40383 Nil!65150) (size!40383 (Cons!65150 (h!71598 s!2326) Nil!65150)))))))

(assert (= (and d!2014060 c!1173679) b!6423547))

(assert (= (and d!2014060 (not c!1173679)) b!6423548))

(assert (= (and d!2014060 res!2639972) b!6423549))

(assert (= (and b!6423549 res!2639971) b!6423550))

(declare-fun m!7217952 () Bool)

(assert (=> b!6423548 m!7217952))

(declare-fun m!7217954 () Bool)

(assert (=> d!2014060 m!7217954))

(declare-fun m!7217956 () Bool)

(assert (=> d!2014060 m!7217956))

(declare-fun m!7217958 () Bool)

(assert (=> d!2014060 m!7217958))

(declare-fun m!7217960 () Bool)

(assert (=> b!6423549 m!7217960))

(declare-fun m!7217962 () Bool)

(assert (=> b!6423549 m!7217962))

(declare-fun m!7217964 () Bool)

(assert (=> b!6423549 m!7217964))

(assert (=> b!6422141 d!2014060))

(declare-fun d!2014062 () Bool)

(assert (=> d!2014062 (= (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326)) s!2326)))

(declare-fun lt!2377412 () Unit!158631)

(declare-fun choose!47731 (List!65274 C!32920 List!65274 List!65274) Unit!158631)

(assert (=> d!2014062 (= lt!2377412 (choose!47731 Nil!65150 (h!71598 s!2326) (t!378888 s!2326) s!2326))))

(assert (=> d!2014062 (= (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) (t!378888 s!2326))) s!2326)))

(assert (=> d!2014062 (= (lemmaMoveElementToOtherListKeepsConcatEq!2487 Nil!65150 (h!71598 s!2326) (t!378888 s!2326) s!2326) lt!2377412)))

(declare-fun bs!1615457 () Bool)

(assert (= bs!1615457 d!2014062))

(assert (=> bs!1615457 m!7216188))

(assert (=> bs!1615457 m!7216188))

(assert (=> bs!1615457 m!7216190))

(declare-fun m!7217966 () Bool)

(assert (=> bs!1615457 m!7217966))

(declare-fun m!7217968 () Bool)

(assert (=> bs!1615457 m!7217968))

(assert (=> b!6422141 d!2014062))

(declare-fun b!6423551 () Bool)

(declare-fun e!3897306 () Option!16216)

(declare-fun e!3897309 () Option!16216)

(assert (=> b!6423551 (= e!3897306 e!3897309)))

(declare-fun c!1173680 () Bool)

(assert (=> b!6423551 (= c!1173680 ((_ is Nil!65150) (t!378888 s!2326)))))

(declare-fun b!6423552 () Bool)

(declare-fun e!3897307 () Bool)

(assert (=> b!6423552 (= e!3897307 (matchR!8508 (regTwo!33162 r!7292) (t!378888 s!2326)))))

(declare-fun d!2014064 () Bool)

(declare-fun e!3897308 () Bool)

(assert (=> d!2014064 e!3897308))

(declare-fun res!2639974 () Bool)

(assert (=> d!2014064 (=> res!2639974 e!3897308)))

(declare-fun e!3897305 () Bool)

(assert (=> d!2014064 (= res!2639974 e!3897305)))

(declare-fun res!2639975 () Bool)

(assert (=> d!2014064 (=> (not res!2639975) (not e!3897305))))

(declare-fun lt!2377415 () Option!16216)

(assert (=> d!2014064 (= res!2639975 (isDefined!12919 lt!2377415))))

(assert (=> d!2014064 (= lt!2377415 e!3897306)))

(declare-fun c!1173681 () Bool)

(assert (=> d!2014064 (= c!1173681 e!3897307)))

(declare-fun res!2639977 () Bool)

(assert (=> d!2014064 (=> (not res!2639977) (not e!3897307))))

(assert (=> d!2014064 (= res!2639977 (matchR!8508 (regOne!33162 r!7292) (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150))))))

(assert (=> d!2014064 (validRegex!8061 (regOne!33162 r!7292))))

(assert (=> d!2014064 (= (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326) s!2326) lt!2377415)))

(declare-fun b!6423553 () Bool)

(assert (=> b!6423553 (= e!3897309 None!16215)))

(declare-fun b!6423554 () Bool)

(declare-fun lt!2377414 () Unit!158631)

(declare-fun lt!2377413 () Unit!158631)

(assert (=> b!6423554 (= lt!2377414 lt!2377413)))

(assert (=> b!6423554 (= (++!14393 (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (Cons!65150 (h!71598 (t!378888 s!2326)) Nil!65150)) (t!378888 (t!378888 s!2326))) s!2326)))

(assert (=> b!6423554 (= lt!2377413 (lemmaMoveElementToOtherListKeepsConcatEq!2487 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (h!71598 (t!378888 s!2326)) (t!378888 (t!378888 s!2326)) s!2326))))

(assert (=> b!6423554 (= e!3897309 (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (Cons!65150 (h!71598 (t!378888 s!2326)) Nil!65150)) (t!378888 (t!378888 s!2326)) s!2326))))

(declare-fun b!6423555 () Bool)

(assert (=> b!6423555 (= e!3897308 (not (isDefined!12919 lt!2377415)))))

(declare-fun b!6423556 () Bool)

(assert (=> b!6423556 (= e!3897306 (Some!16215 (tuple2!66609 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326))))))

(declare-fun b!6423557 () Bool)

(declare-fun res!2639973 () Bool)

(assert (=> b!6423557 (=> (not res!2639973) (not e!3897305))))

(assert (=> b!6423557 (= res!2639973 (matchR!8508 (regOne!33162 r!7292) (_1!36607 (get!22571 lt!2377415))))))

(declare-fun b!6423558 () Bool)

(assert (=> b!6423558 (= e!3897305 (= (++!14393 (_1!36607 (get!22571 lt!2377415)) (_2!36607 (get!22571 lt!2377415))) s!2326))))

(declare-fun b!6423559 () Bool)

(declare-fun res!2639976 () Bool)

(assert (=> b!6423559 (=> (not res!2639976) (not e!3897305))))

(assert (=> b!6423559 (= res!2639976 (matchR!8508 (regTwo!33162 r!7292) (_2!36607 (get!22571 lt!2377415))))))

(assert (= (and d!2014064 res!2639977) b!6423552))

(assert (= (and d!2014064 c!1173681) b!6423556))

(assert (= (and d!2014064 (not c!1173681)) b!6423551))

(assert (= (and b!6423551 c!1173680) b!6423553))

(assert (= (and b!6423551 (not c!1173680)) b!6423554))

(assert (= (and d!2014064 res!2639975) b!6423557))

(assert (= (and b!6423557 res!2639973) b!6423559))

(assert (= (and b!6423559 res!2639976) b!6423558))

(assert (= (and d!2014064 (not res!2639974)) b!6423555))

(declare-fun m!7217970 () Bool)

(assert (=> b!6423552 m!7217970))

(declare-fun m!7217972 () Bool)

(assert (=> d!2014064 m!7217972))

(assert (=> d!2014064 m!7216188))

(declare-fun m!7217974 () Bool)

(assert (=> d!2014064 m!7217974))

(assert (=> d!2014064 m!7216586))

(declare-fun m!7217976 () Bool)

(assert (=> b!6423558 m!7217976))

(declare-fun m!7217978 () Bool)

(assert (=> b!6423558 m!7217978))

(assert (=> b!6423555 m!7217972))

(assert (=> b!6423559 m!7217976))

(declare-fun m!7217980 () Bool)

(assert (=> b!6423559 m!7217980))

(assert (=> b!6423554 m!7216188))

(declare-fun m!7217982 () Bool)

(assert (=> b!6423554 m!7217982))

(assert (=> b!6423554 m!7217982))

(declare-fun m!7217984 () Bool)

(assert (=> b!6423554 m!7217984))

(assert (=> b!6423554 m!7216188))

(declare-fun m!7217986 () Bool)

(assert (=> b!6423554 m!7217986))

(assert (=> b!6423554 m!7217982))

(declare-fun m!7217988 () Bool)

(assert (=> b!6423554 m!7217988))

(assert (=> b!6423557 m!7217976))

(declare-fun m!7217990 () Bool)

(assert (=> b!6423557 m!7217990))

(assert (=> b!6422141 d!2014064))

(declare-fun b!6423560 () Bool)

(declare-fun res!2639982 () Bool)

(declare-fun e!3897312 () Bool)

(assert (=> b!6423560 (=> res!2639982 e!3897312)))

(declare-fun e!3897310 () Bool)

(assert (=> b!6423560 (= res!2639982 e!3897310)))

(declare-fun res!2639978 () Bool)

(assert (=> b!6423560 (=> (not res!2639978) (not e!3897310))))

(declare-fun lt!2377416 () Bool)

(assert (=> b!6423560 (= res!2639978 lt!2377416)))

(declare-fun b!6423561 () Bool)

(declare-fun res!2639983 () Bool)

(assert (=> b!6423561 (=> (not res!2639983) (not e!3897310))))

(assert (=> b!6423561 (= res!2639983 (isEmpty!37310 (tail!12226 s!2326)))))

(declare-fun b!6423562 () Bool)

(declare-fun e!3897314 () Bool)

(declare-fun e!3897311 () Bool)

(assert (=> b!6423562 (= e!3897314 e!3897311)))

(declare-fun c!1173684 () Bool)

(assert (=> b!6423562 (= c!1173684 ((_ is EmptyLang!16325) (regTwo!33162 r!7292)))))

(declare-fun b!6423563 () Bool)

(declare-fun res!2639984 () Bool)

(declare-fun e!3897315 () Bool)

(assert (=> b!6423563 (=> res!2639984 e!3897315)))

(assert (=> b!6423563 (= res!2639984 (not (isEmpty!37310 (tail!12226 s!2326))))))

(declare-fun d!2014066 () Bool)

(assert (=> d!2014066 e!3897314))

(declare-fun c!1173682 () Bool)

(assert (=> d!2014066 (= c!1173682 ((_ is EmptyExpr!16325) (regTwo!33162 r!7292)))))

(declare-fun e!3897313 () Bool)

(assert (=> d!2014066 (= lt!2377416 e!3897313)))

(declare-fun c!1173683 () Bool)

(assert (=> d!2014066 (= c!1173683 (isEmpty!37310 s!2326))))

(assert (=> d!2014066 (validRegex!8061 (regTwo!33162 r!7292))))

(assert (=> d!2014066 (= (matchR!8508 (regTwo!33162 r!7292) s!2326) lt!2377416)))

(declare-fun b!6423564 () Bool)

(declare-fun e!3897316 () Bool)

(assert (=> b!6423564 (= e!3897316 e!3897315)))

(declare-fun res!2639981 () Bool)

(assert (=> b!6423564 (=> res!2639981 e!3897315)))

(declare-fun call!552429 () Bool)

(assert (=> b!6423564 (= res!2639981 call!552429)))

(declare-fun b!6423565 () Bool)

(assert (=> b!6423565 (= e!3897315 (not (= (head!13141 s!2326) (c!1173074 (regTwo!33162 r!7292)))))))

(declare-fun b!6423566 () Bool)

(declare-fun res!2639980 () Bool)

(assert (=> b!6423566 (=> res!2639980 e!3897312)))

(assert (=> b!6423566 (= res!2639980 (not ((_ is ElementMatch!16325) (regTwo!33162 r!7292))))))

(assert (=> b!6423566 (= e!3897311 e!3897312)))

(declare-fun b!6423567 () Bool)

(assert (=> b!6423567 (= e!3897314 (= lt!2377416 call!552429))))

(declare-fun b!6423568 () Bool)

(assert (=> b!6423568 (= e!3897313 (matchR!8508 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 s!2326)) (tail!12226 s!2326)))))

(declare-fun b!6423569 () Bool)

(assert (=> b!6423569 (= e!3897313 (nullable!6318 (regTwo!33162 r!7292)))))

(declare-fun bm!552424 () Bool)

(assert (=> bm!552424 (= call!552429 (isEmpty!37310 s!2326))))

(declare-fun b!6423570 () Bool)

(assert (=> b!6423570 (= e!3897310 (= (head!13141 s!2326) (c!1173074 (regTwo!33162 r!7292))))))

(declare-fun b!6423571 () Bool)

(assert (=> b!6423571 (= e!3897311 (not lt!2377416))))

(declare-fun b!6423572 () Bool)

(declare-fun res!2639985 () Bool)

(assert (=> b!6423572 (=> (not res!2639985) (not e!3897310))))

(assert (=> b!6423572 (= res!2639985 (not call!552429))))

(declare-fun b!6423573 () Bool)

(assert (=> b!6423573 (= e!3897312 e!3897316)))

(declare-fun res!2639979 () Bool)

(assert (=> b!6423573 (=> (not res!2639979) (not e!3897316))))

(assert (=> b!6423573 (= res!2639979 (not lt!2377416))))

(assert (= (and d!2014066 c!1173683) b!6423569))

(assert (= (and d!2014066 (not c!1173683)) b!6423568))

(assert (= (and d!2014066 c!1173682) b!6423567))

(assert (= (and d!2014066 (not c!1173682)) b!6423562))

(assert (= (and b!6423562 c!1173684) b!6423571))

(assert (= (and b!6423562 (not c!1173684)) b!6423566))

(assert (= (and b!6423566 (not res!2639980)) b!6423560))

(assert (= (and b!6423560 res!2639978) b!6423572))

(assert (= (and b!6423572 res!2639985) b!6423561))

(assert (= (and b!6423561 res!2639983) b!6423570))

(assert (= (and b!6423560 (not res!2639982)) b!6423573))

(assert (= (and b!6423573 res!2639979) b!6423564))

(assert (= (and b!6423564 (not res!2639981)) b!6423563))

(assert (= (and b!6423563 (not res!2639984)) b!6423565))

(assert (= (or b!6423567 b!6423564 b!6423572) bm!552424))

(assert (=> b!6423561 m!7216358))

(assert (=> b!6423561 m!7216358))

(assert (=> b!6423561 m!7216360))

(assert (=> b!6423563 m!7216358))

(assert (=> b!6423563 m!7216358))

(assert (=> b!6423563 m!7216360))

(assert (=> b!6423570 m!7216362))

(assert (=> bm!552424 m!7216326))

(assert (=> b!6423569 m!7216532))

(assert (=> b!6423568 m!7216362))

(assert (=> b!6423568 m!7216362))

(declare-fun m!7217992 () Bool)

(assert (=> b!6423568 m!7217992))

(assert (=> b!6423568 m!7216358))

(assert (=> b!6423568 m!7217992))

(assert (=> b!6423568 m!7216358))

(declare-fun m!7217994 () Bool)

(assert (=> b!6423568 m!7217994))

(assert (=> b!6423565 m!7216362))

(assert (=> d!2014066 m!7216326))

(assert (=> d!2014066 m!7216538))

(assert (=> b!6421687 d!2014066))

(declare-fun d!2014068 () Bool)

(declare-fun c!1173685 () Bool)

(assert (=> d!2014068 (= c!1173685 (isEmpty!37310 (tail!12226 (t!378888 s!2326))))))

(declare-fun e!3897317 () Bool)

(assert (=> d!2014068 (= (matchZipper!2337 (derivationStepZipper!2291 lt!2377180 (head!13141 (t!378888 s!2326))) (tail!12226 (t!378888 s!2326))) e!3897317)))

(declare-fun b!6423574 () Bool)

(assert (=> b!6423574 (= e!3897317 (nullableZipper!2090 (derivationStepZipper!2291 lt!2377180 (head!13141 (t!378888 s!2326)))))))

(declare-fun b!6423575 () Bool)

(assert (=> b!6423575 (= e!3897317 (matchZipper!2337 (derivationStepZipper!2291 (derivationStepZipper!2291 lt!2377180 (head!13141 (t!378888 s!2326))) (head!13141 (tail!12226 (t!378888 s!2326)))) (tail!12226 (tail!12226 (t!378888 s!2326)))))))

(assert (= (and d!2014068 c!1173685) b!6423574))

(assert (= (and d!2014068 (not c!1173685)) b!6423575))

(assert (=> d!2014068 m!7216414))

(assert (=> d!2014068 m!7217848))

(assert (=> b!6423574 m!7216708))

(declare-fun m!7217996 () Bool)

(assert (=> b!6423574 m!7217996))

(assert (=> b!6423575 m!7216414))

(assert (=> b!6423575 m!7217852))

(assert (=> b!6423575 m!7216708))

(assert (=> b!6423575 m!7217852))

(declare-fun m!7217998 () Bool)

(assert (=> b!6423575 m!7217998))

(assert (=> b!6423575 m!7216414))

(assert (=> b!6423575 m!7217856))

(assert (=> b!6423575 m!7217998))

(assert (=> b!6423575 m!7217856))

(declare-fun m!7218000 () Bool)

(assert (=> b!6423575 m!7218000))

(assert (=> b!6422247 d!2014068))

(declare-fun bs!1615458 () Bool)

(declare-fun d!2014070 () Bool)

(assert (= bs!1615458 (and d!2014070 b!6421308)))

(declare-fun lambda!354963 () Int)

(assert (=> bs!1615458 (= (= (head!13141 (t!378888 s!2326)) (h!71598 s!2326)) (= lambda!354963 lambda!354816))))

(declare-fun bs!1615459 () Bool)

(assert (= bs!1615459 (and d!2014070 d!2013420)))

(assert (=> bs!1615459 (= (= (head!13141 (t!378888 s!2326)) (h!71598 s!2326)) (= lambda!354963 lambda!354882))))

(declare-fun bs!1615460 () Bool)

(assert (= bs!1615460 (and d!2014070 d!2013926)))

(assert (=> bs!1615460 (= (= (head!13141 (t!378888 s!2326)) (head!13141 s!2326)) (= lambda!354963 lambda!354955))))

(declare-fun bs!1615461 () Bool)

(assert (= bs!1615461 (and d!2014070 d!2014002)))

(assert (=> bs!1615461 (= lambda!354963 lambda!354960)))

(assert (=> d!2014070 true))

(assert (=> d!2014070 (= (derivationStepZipper!2291 lt!2377180 (head!13141 (t!378888 s!2326))) (flatMap!1830 lt!2377180 lambda!354963))))

(declare-fun bs!1615462 () Bool)

(assert (= bs!1615462 d!2014070))

(declare-fun m!7218002 () Bool)

(assert (=> bs!1615462 m!7218002))

(assert (=> b!6422247 d!2014070))

(assert (=> b!6422247 d!2014004))

(assert (=> b!6422247 d!2014006))

(assert (=> d!2013438 d!2013422))

(assert (=> d!2013438 d!2013434))

(declare-fun d!2014072 () Bool)

(assert (=> d!2014072 (= (matchR!8508 lt!2377164 (_1!36607 lt!2377178)) (matchRSpec!3426 lt!2377164 (_1!36607 lt!2377178)))))

(assert (=> d!2014072 true))

(declare-fun _$88!5119 () Unit!158631)

(assert (=> d!2014072 (= (choose!47722 lt!2377164 (_1!36607 lt!2377178)) _$88!5119)))

(declare-fun bs!1615463 () Bool)

(assert (= bs!1615463 d!2014072))

(assert (=> bs!1615463 m!7215868))

(assert (=> bs!1615463 m!7215822))

(assert (=> d!2013438 d!2014072))

(assert (=> d!2013438 d!2013914))

(declare-fun d!2014074 () Bool)

(assert (=> d!2014074 (= (isEmpty!37310 (tail!12226 (_2!36607 lt!2377178))) ((_ is Nil!65150) (tail!12226 (_2!36607 lt!2377178))))))

(assert (=> b!6422080 d!2014074))

(assert (=> b!6422080 d!2013996))

(declare-fun d!2014076 () Bool)

(assert (=> d!2014076 (= (isUnion!1163 lt!2377329) ((_ is Union!16325) lt!2377329))))

(assert (=> b!6422236 d!2014076))

(assert (=> d!2013486 d!2013954))

(assert (=> b!6422073 d!2013942))

(declare-fun b!6423579 () Bool)

(declare-fun e!3897319 () Bool)

(declare-fun lt!2377417 () List!65274)

(assert (=> b!6423579 (= e!3897319 (or (not (= (_2!36607 (get!22571 lt!2377318)) Nil!65150)) (= lt!2377417 (_1!36607 (get!22571 lt!2377318)))))))

(declare-fun b!6423576 () Bool)

(declare-fun e!3897318 () List!65274)

(assert (=> b!6423576 (= e!3897318 (_2!36607 (get!22571 lt!2377318)))))

(declare-fun b!6423577 () Bool)

(assert (=> b!6423577 (= e!3897318 (Cons!65150 (h!71598 (_1!36607 (get!22571 lt!2377318))) (++!14393 (t!378888 (_1!36607 (get!22571 lt!2377318))) (_2!36607 (get!22571 lt!2377318)))))))

(declare-fun d!2014078 () Bool)

(assert (=> d!2014078 e!3897319))

(declare-fun res!2639987 () Bool)

(assert (=> d!2014078 (=> (not res!2639987) (not e!3897319))))

(assert (=> d!2014078 (= res!2639987 (= (content!12363 lt!2377417) ((_ map or) (content!12363 (_1!36607 (get!22571 lt!2377318))) (content!12363 (_2!36607 (get!22571 lt!2377318))))))))

(assert (=> d!2014078 (= lt!2377417 e!3897318)))

(declare-fun c!1173686 () Bool)

(assert (=> d!2014078 (= c!1173686 ((_ is Nil!65150) (_1!36607 (get!22571 lt!2377318))))))

(assert (=> d!2014078 (= (++!14393 (_1!36607 (get!22571 lt!2377318)) (_2!36607 (get!22571 lt!2377318))) lt!2377417)))

(declare-fun b!6423578 () Bool)

(declare-fun res!2639986 () Bool)

(assert (=> b!6423578 (=> (not res!2639986) (not e!3897319))))

(assert (=> b!6423578 (= res!2639986 (= (size!40383 lt!2377417) (+ (size!40383 (_1!36607 (get!22571 lt!2377318))) (size!40383 (_2!36607 (get!22571 lt!2377318))))))))

(assert (= (and d!2014078 c!1173686) b!6423576))

(assert (= (and d!2014078 (not c!1173686)) b!6423577))

(assert (= (and d!2014078 res!2639987) b!6423578))

(assert (= (and b!6423578 res!2639986) b!6423579))

(declare-fun m!7218004 () Bool)

(assert (=> b!6423577 m!7218004))

(declare-fun m!7218006 () Bool)

(assert (=> d!2014078 m!7218006))

(declare-fun m!7218008 () Bool)

(assert (=> d!2014078 m!7218008))

(declare-fun m!7218010 () Bool)

(assert (=> d!2014078 m!7218010))

(declare-fun m!7218012 () Bool)

(assert (=> b!6423578 m!7218012))

(declare-fun m!7218014 () Bool)

(assert (=> b!6423578 m!7218014))

(declare-fun m!7218016 () Bool)

(assert (=> b!6423578 m!7218016))

(assert (=> b!6422145 d!2014078))

(assert (=> b!6422145 d!2013986))

(declare-fun d!2014080 () Bool)

(assert (=> d!2014080 (= (Exists!3395 lambda!354883) (choose!47719 lambda!354883))))

(declare-fun bs!1615464 () Bool)

(assert (= bs!1615464 d!2014080))

(declare-fun m!7218018 () Bool)

(assert (=> bs!1615464 m!7218018))

(assert (=> d!2013426 d!2014080))

(assert (=> d!2013426 d!2013428))

(assert (=> d!2013426 d!2013430))

(declare-fun bs!1615465 () Bool)

(declare-fun d!2014082 () Bool)

(assert (= bs!1615465 (and d!2014082 d!2013890)))

(declare-fun lambda!354966 () Int)

(assert (=> bs!1615465 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) (regOne!33162 r!7292)) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354966 lambda!354950))))

(declare-fun bs!1615466 () Bool)

(assert (= bs!1615466 (and d!2014082 b!6422181)))

(assert (=> bs!1615466 (not (= lambda!354966 lambda!354890))))

(declare-fun bs!1615467 () Bool)

(assert (= bs!1615467 (and d!2014082 b!6421798)))

(assert (=> bs!1615467 (not (= lambda!354966 lambda!354870))))

(declare-fun bs!1615468 () Bool)

(assert (= bs!1615468 (and d!2014082 d!2013302)))

(assert (=> bs!1615468 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) lt!2377164) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354966 lambda!354848))))

(declare-fun bs!1615469 () Bool)

(assert (= bs!1615469 (and d!2014082 b!6422121)))

(assert (=> bs!1615469 (not (= lambda!354966 lambda!354885))))

(declare-fun bs!1615470 () Bool)

(assert (= bs!1615470 (and d!2014082 b!6423294)))

(assert (=> bs!1615470 (not (= lambda!354966 lambda!354956))))

(declare-fun bs!1615471 () Bool)

(assert (= bs!1615471 (and d!2014082 d!2013448)))

(assert (=> bs!1615471 (not (= lambda!354966 lambda!354888))))

(declare-fun bs!1615472 () Bool)

(assert (= bs!1615472 (and d!2014082 b!6421803)))

(assert (=> bs!1615472 (not (= lambda!354966 lambda!354869))))

(declare-fun bs!1615473 () Bool)

(assert (= bs!1615473 (and d!2014082 d!2013426)))

(assert (=> bs!1615473 (= lambda!354966 lambda!354883)))

(declare-fun bs!1615474 () Bool)

(assert (= bs!1615474 (and d!2014082 b!6422176)))

(assert (=> bs!1615474 (not (= lambda!354966 lambda!354891))))

(declare-fun bs!1615475 () Bool)

(assert (= bs!1615475 (and d!2014082 b!6423289)))

(assert (=> bs!1615475 (not (= lambda!354966 lambda!354957))))

(assert (=> bs!1615471 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) (regOne!33162 r!7292)) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354966 lambda!354887))))

(declare-fun bs!1615476 () Bool)

(assert (= bs!1615476 (and d!2014082 d!2013318)))

(assert (=> bs!1615476 (not (= lambda!354966 lambda!354861))))

(declare-fun bs!1615477 () Bool)

(assert (= bs!1615477 (and d!2014082 b!6421294)))

(assert (=> bs!1615477 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) lt!2377164) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354966 lambda!354817))))

(declare-fun bs!1615478 () Bool)

(assert (= bs!1615478 (and d!2014082 b!6421303)))

(assert (=> bs!1615478 (not (= lambda!354966 lambda!354815))))

(assert (=> bs!1615476 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) lt!2377164) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354966 lambda!354860))))

(assert (=> bs!1615478 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) (regOne!33162 r!7292)) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354966 lambda!354814))))

(assert (=> bs!1615477 (not (= lambda!354966 lambda!354818))))

(assert (=> bs!1615465 (not (= lambda!354966 lambda!354951))))

(declare-fun bs!1615479 () Bool)

(assert (= bs!1615479 (and d!2014082 d!2013446)))

(assert (=> bs!1615479 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33162 r!7292)) (regOne!33162 r!7292)) (= lt!2377164 (regTwo!33162 r!7292))) (= lambda!354966 lambda!354886))))

(declare-fun bs!1615480 () Bool)

(assert (= bs!1615480 (and d!2014082 b!6421322)))

(assert (=> bs!1615480 (= lambda!354966 lambda!354819)))

(declare-fun bs!1615481 () Bool)

(assert (= bs!1615481 (and d!2014082 b!6422126)))

(assert (=> bs!1615481 (not (= lambda!354966 lambda!354884))))

(assert (=> d!2014082 true))

(assert (=> d!2014082 true))

(assert (=> d!2014082 true))

(assert (=> d!2014082 (= (isDefined!12919 (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 Nil!65150 (_1!36607 lt!2377178) (_1!36607 lt!2377178))) (Exists!3395 lambda!354966))))

(assert (=> d!2014082 true))

(declare-fun _$89!2665 () Unit!158631)

(assert (=> d!2014082 (= (choose!47720 (reg!16654 (regOne!33162 r!7292)) lt!2377164 (_1!36607 lt!2377178)) _$89!2665)))

(declare-fun bs!1615482 () Bool)

(assert (= bs!1615482 d!2014082))

(assert (=> bs!1615482 m!7215814))

(assert (=> bs!1615482 m!7215814))

(assert (=> bs!1615482 m!7215816))

(declare-fun m!7218020 () Bool)

(assert (=> bs!1615482 m!7218020))

(assert (=> d!2013426 d!2014082))

(assert (=> d!2013426 d!2013436))

(assert (=> b!6422087 d!2013994))

(declare-fun b!6423584 () Bool)

(declare-fun e!3897325 () (InoxSet Context!11418))

(declare-fun call!552433 () (InoxSet Context!11418))

(declare-fun call!552434 () (InoxSet Context!11418))

(assert (=> b!6423584 (= e!3897325 ((_ map or) call!552433 call!552434))))

(declare-fun b!6423585 () Bool)

(declare-fun c!1173690 () Bool)

(assert (=> b!6423585 (= c!1173690 ((_ is Star!16325) (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))))

(declare-fun e!3897324 () (InoxSet Context!11418))

(declare-fun e!3897323 () (InoxSet Context!11418))

(assert (=> b!6423585 (= e!3897324 e!3897323)))

(declare-fun b!6423586 () Bool)

(assert (=> b!6423586 (= e!3897323 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173689 () Bool)

(declare-fun c!1173691 () Bool)

(declare-fun call!552432 () List!65275)

(declare-fun c!1173688 () Bool)

(declare-fun bm!552425 () Bool)

(assert (=> bm!552425 (= call!552433 (derivationStepZipperDown!1573 (ite c!1173689 (regOne!33163 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))) (ite c!1173691 (regTwo!33162 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))) (ite c!1173688 (regOne!33162 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))) (reg!16654 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343))))))))))) (ite (or c!1173689 c!1173691) (ite (or c!1173312 c!1173314) lt!2377181 (Context!11419 call!552200)) (Context!11419 call!552432)) (h!71598 s!2326)))))

(declare-fun b!6423587 () Bool)

(declare-fun e!3897327 () Bool)

(assert (=> b!6423587 (= e!3897327 (nullable!6318 (regOne!33162 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343))))))))))))

(declare-fun b!6423588 () Bool)

(declare-fun e!3897322 () (InoxSet Context!11418))

(assert (=> b!6423588 (= e!3897322 e!3897324)))

(assert (=> b!6423588 (= c!1173688 ((_ is Concat!25170) (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))))

(declare-fun bm!552426 () Bool)

(declare-fun call!552435 () List!65275)

(assert (=> bm!552426 (= call!552434 (derivationStepZipperDown!1573 (ite c!1173689 (regTwo!33163 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))) (regOne!33162 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343))))))))) (ite c!1173689 (ite (or c!1173312 c!1173314) lt!2377181 (Context!11419 call!552200)) (Context!11419 call!552435)) (h!71598 s!2326)))))

(declare-fun bm!552427 () Bool)

(declare-fun call!552431 () (InoxSet Context!11418))

(assert (=> bm!552427 (= call!552431 call!552433)))

(declare-fun d!2014084 () Bool)

(declare-fun c!1173687 () Bool)

(assert (=> d!2014084 (= c!1173687 (and ((_ is ElementMatch!16325) (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))) (= (c!1173074 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))) (h!71598 s!2326))))))

(declare-fun e!3897326 () (InoxSet Context!11418))

(assert (=> d!2014084 (= (derivationStepZipperDown!1573 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343))))))) (ite (or c!1173312 c!1173314) lt!2377181 (Context!11419 call!552200)) (h!71598 s!2326)) e!3897326)))

(declare-fun b!6423589 () Bool)

(assert (=> b!6423589 (= e!3897326 e!3897325)))

(assert (=> b!6423589 (= c!1173689 ((_ is Union!16325) (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))))

(declare-fun b!6423590 () Bool)

(declare-fun call!552430 () (InoxSet Context!11418))

(assert (=> b!6423590 (= e!3897324 call!552430)))

(declare-fun b!6423591 () Bool)

(assert (=> b!6423591 (= e!3897326 (store ((as const (Array Context!11418 Bool)) false) (ite (or c!1173312 c!1173314) lt!2377181 (Context!11419 call!552200)) true))))

(declare-fun b!6423592 () Bool)

(assert (=> b!6423592 (= c!1173691 e!3897327)))

(declare-fun res!2639992 () Bool)

(assert (=> b!6423592 (=> (not res!2639992) (not e!3897327))))

(assert (=> b!6423592 (= res!2639992 ((_ is Concat!25170) (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))))

(assert (=> b!6423592 (= e!3897325 e!3897322)))

(declare-fun b!6423593 () Bool)

(assert (=> b!6423593 (= e!3897322 ((_ map or) call!552434 call!552431))))

(declare-fun b!6423594 () Bool)

(assert (=> b!6423594 (= e!3897323 call!552430)))

(declare-fun bm!552428 () Bool)

(assert (=> bm!552428 (= call!552432 call!552435)))

(declare-fun bm!552429 () Bool)

(assert (=> bm!552429 (= call!552430 call!552431)))

(declare-fun bm!552430 () Bool)

(assert (=> bm!552430 (= call!552435 ($colon$colon!2186 (exprs!6209 (ite (or c!1173312 c!1173314) lt!2377181 (Context!11419 call!552200))) (ite (or c!1173691 c!1173688) (regTwo!33162 (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343)))))))) (ite c!1173312 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173314 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173311 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343))))))))))))

(assert (= (and d!2014084 c!1173687) b!6423591))

(assert (= (and d!2014084 (not c!1173687)) b!6423589))

(assert (= (and b!6423589 c!1173689) b!6423584))

(assert (= (and b!6423589 (not c!1173689)) b!6423592))

(assert (= (and b!6423592 res!2639992) b!6423587))

(assert (= (and b!6423592 c!1173691) b!6423593))

(assert (= (and b!6423592 (not c!1173691)) b!6423588))

(assert (= (and b!6423588 c!1173688) b!6423590))

(assert (= (and b!6423588 (not c!1173688)) b!6423585))

(assert (= (and b!6423585 c!1173690) b!6423594))

(assert (= (and b!6423585 (not c!1173690)) b!6423586))

(assert (= (or b!6423590 b!6423594) bm!552428))

(assert (= (or b!6423590 b!6423594) bm!552429))

(assert (= (or b!6423593 bm!552428) bm!552430))

(assert (= (or b!6423593 bm!552429) bm!552427))

(assert (= (or b!6423584 b!6423593) bm!552426))

(assert (= (or b!6423584 bm!552427) bm!552425))

(declare-fun m!7218022 () Bool)

(assert (=> bm!552430 m!7218022))

(declare-fun m!7218024 () Bool)

(assert (=> bm!552425 m!7218024))

(declare-fun m!7218026 () Bool)

(assert (=> b!6423591 m!7218026))

(declare-fun m!7218028 () Bool)

(assert (=> b!6423587 m!7218028))

(declare-fun m!7218030 () Bool)

(assert (=> bm!552426 m!7218030))

(assert (=> bm!552193 d!2014084))

(assert (=> bs!1614793 d!2013402))

(declare-fun d!2014086 () Bool)

(assert (=> d!2014086 (= (isDefined!12919 lt!2377256) (not (isEmpty!37311 lt!2377256)))))

(declare-fun bs!1615483 () Bool)

(assert (= bs!1615483 d!2014086))

(declare-fun m!7218032 () Bool)

(assert (=> bs!1615483 m!7218032))

(assert (=> d!2013294 d!2014086))

(declare-fun b!6423595 () Bool)

(declare-fun res!2639997 () Bool)

(declare-fun e!3897330 () Bool)

(assert (=> b!6423595 (=> res!2639997 e!3897330)))

(declare-fun e!3897328 () Bool)

(assert (=> b!6423595 (= res!2639997 e!3897328)))

(declare-fun res!2639993 () Bool)

(assert (=> b!6423595 (=> (not res!2639993) (not e!3897328))))

(declare-fun lt!2377418 () Bool)

(assert (=> b!6423595 (= res!2639993 lt!2377418)))

(declare-fun b!6423596 () Bool)

(declare-fun res!2639998 () Bool)

(assert (=> b!6423596 (=> (not res!2639998) (not e!3897328))))

(assert (=> b!6423596 (= res!2639998 (isEmpty!37310 (tail!12226 Nil!65150)))))

(declare-fun b!6423597 () Bool)

(declare-fun e!3897332 () Bool)

(declare-fun e!3897329 () Bool)

(assert (=> b!6423597 (= e!3897332 e!3897329)))

(declare-fun c!1173694 () Bool)

(assert (=> b!6423597 (= c!1173694 ((_ is EmptyLang!16325) lt!2377164))))

(declare-fun b!6423598 () Bool)

(declare-fun res!2639999 () Bool)

(declare-fun e!3897333 () Bool)

(assert (=> b!6423598 (=> res!2639999 e!3897333)))

(assert (=> b!6423598 (= res!2639999 (not (isEmpty!37310 (tail!12226 Nil!65150))))))

(declare-fun d!2014088 () Bool)

(assert (=> d!2014088 e!3897332))

(declare-fun c!1173692 () Bool)

(assert (=> d!2014088 (= c!1173692 ((_ is EmptyExpr!16325) lt!2377164))))

(declare-fun e!3897331 () Bool)

(assert (=> d!2014088 (= lt!2377418 e!3897331)))

(declare-fun c!1173693 () Bool)

(assert (=> d!2014088 (= c!1173693 (isEmpty!37310 Nil!65150))))

(assert (=> d!2014088 (validRegex!8061 lt!2377164)))

(assert (=> d!2014088 (= (matchR!8508 lt!2377164 Nil!65150) lt!2377418)))

(declare-fun b!6423599 () Bool)

(declare-fun e!3897334 () Bool)

(assert (=> b!6423599 (= e!3897334 e!3897333)))

(declare-fun res!2639996 () Bool)

(assert (=> b!6423599 (=> res!2639996 e!3897333)))

(declare-fun call!552436 () Bool)

(assert (=> b!6423599 (= res!2639996 call!552436)))

(declare-fun b!6423600 () Bool)

(assert (=> b!6423600 (= e!3897333 (not (= (head!13141 Nil!65150) (c!1173074 lt!2377164))))))

(declare-fun b!6423601 () Bool)

(declare-fun res!2639995 () Bool)

(assert (=> b!6423601 (=> res!2639995 e!3897330)))

(assert (=> b!6423601 (= res!2639995 (not ((_ is ElementMatch!16325) lt!2377164)))))

(assert (=> b!6423601 (= e!3897329 e!3897330)))

(declare-fun b!6423602 () Bool)

(assert (=> b!6423602 (= e!3897332 (= lt!2377418 call!552436))))

(declare-fun b!6423603 () Bool)

(assert (=> b!6423603 (= e!3897331 (matchR!8508 (derivativeStep!5029 lt!2377164 (head!13141 Nil!65150)) (tail!12226 Nil!65150)))))

(declare-fun b!6423604 () Bool)

(assert (=> b!6423604 (= e!3897331 (nullable!6318 lt!2377164))))

(declare-fun bm!552431 () Bool)

(assert (=> bm!552431 (= call!552436 (isEmpty!37310 Nil!65150))))

(declare-fun b!6423605 () Bool)

(assert (=> b!6423605 (= e!3897328 (= (head!13141 Nil!65150) (c!1173074 lt!2377164)))))

(declare-fun b!6423606 () Bool)

(assert (=> b!6423606 (= e!3897329 (not lt!2377418))))

(declare-fun b!6423607 () Bool)

(declare-fun res!2640000 () Bool)

(assert (=> b!6423607 (=> (not res!2640000) (not e!3897328))))

(assert (=> b!6423607 (= res!2640000 (not call!552436))))

(declare-fun b!6423608 () Bool)

(assert (=> b!6423608 (= e!3897330 e!3897334)))

(declare-fun res!2639994 () Bool)

(assert (=> b!6423608 (=> (not res!2639994) (not e!3897334))))

(assert (=> b!6423608 (= res!2639994 (not lt!2377418))))

(assert (= (and d!2014088 c!1173693) b!6423604))

(assert (= (and d!2014088 (not c!1173693)) b!6423603))

(assert (= (and d!2014088 c!1173692) b!6423602))

(assert (= (and d!2014088 (not c!1173692)) b!6423597))

(assert (= (and b!6423597 c!1173694) b!6423606))

(assert (= (and b!6423597 (not c!1173694)) b!6423601))

(assert (= (and b!6423601 (not res!2639995)) b!6423595))

(assert (= (and b!6423595 res!2639993) b!6423607))

(assert (= (and b!6423607 res!2640000) b!6423596))

(assert (= (and b!6423596 res!2639998) b!6423605))

(assert (= (and b!6423595 (not res!2639997)) b!6423608))

(assert (= (and b!6423608 res!2639994) b!6423599))

(assert (= (and b!6423599 (not res!2639996)) b!6423598))

(assert (= (and b!6423598 (not res!2639999)) b!6423600))

(assert (= (or b!6423602 b!6423599 b!6423607) bm!552431))

(assert (=> b!6423596 m!7217898))

(assert (=> b!6423596 m!7217898))

(assert (=> b!6423596 m!7217900))

(assert (=> b!6423598 m!7217898))

(assert (=> b!6423598 m!7217898))

(assert (=> b!6423598 m!7217900))

(assert (=> b!6423605 m!7217902))

(assert (=> bm!552431 m!7217904))

(assert (=> b!6423604 m!7216518))

(assert (=> b!6423603 m!7217902))

(assert (=> b!6423603 m!7217902))

(declare-fun m!7218034 () Bool)

(assert (=> b!6423603 m!7218034))

(assert (=> b!6423603 m!7217898))

(assert (=> b!6423603 m!7218034))

(assert (=> b!6423603 m!7217898))

(declare-fun m!7218036 () Bool)

(assert (=> b!6423603 m!7218036))

(assert (=> b!6423600 m!7217902))

(assert (=> d!2014088 m!7217904))

(assert (=> d!2014088 m!7216180))

(assert (=> d!2013294 d!2014088))

(assert (=> d!2013294 d!2013914))

(declare-fun b!6423609 () Bool)

(declare-fun e!3897338 () (InoxSet Context!11418))

(declare-fun call!552440 () (InoxSet Context!11418))

(declare-fun call!552441 () (InoxSet Context!11418))

(assert (=> b!6423609 (= e!3897338 ((_ map or) call!552440 call!552441))))

(declare-fun b!6423610 () Bool)

(declare-fun c!1173698 () Bool)

(assert (=> b!6423610 (= c!1173698 ((_ is Star!16325) (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))))))

(declare-fun e!3897337 () (InoxSet Context!11418))

(declare-fun e!3897336 () (InoxSet Context!11418))

(assert (=> b!6423610 (= e!3897337 e!3897336)))

(declare-fun b!6423611 () Bool)

(assert (=> b!6423611 (= e!3897336 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173699 () Bool)

(declare-fun call!552439 () List!65275)

(declare-fun bm!552432 () Bool)

(declare-fun c!1173697 () Bool)

(declare-fun c!1173696 () Bool)

(assert (=> bm!552432 (= call!552440 (derivationStepZipperDown!1573 (ite c!1173697 (regOne!33163 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))) (ite c!1173699 (regTwo!33162 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))) (ite c!1173696 (regOne!33162 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))) (reg!16654 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292)))))))))) (ite (or c!1173697 c!1173699) (ite (or c!1173252 c!1173254) lt!2377188 (Context!11419 call!552170)) (Context!11419 call!552439)) (h!71598 s!2326)))))

(declare-fun e!3897340 () Bool)

(declare-fun b!6423612 () Bool)

(assert (=> b!6423612 (= e!3897340 (nullable!6318 (regOne!33162 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292)))))))))))

(declare-fun b!6423613 () Bool)

(declare-fun e!3897335 () (InoxSet Context!11418))

(assert (=> b!6423613 (= e!3897335 e!3897337)))

(assert (=> b!6423613 (= c!1173696 ((_ is Concat!25170) (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))))))

(declare-fun call!552442 () List!65275)

(declare-fun bm!552433 () Bool)

(assert (=> bm!552433 (= call!552441 (derivationStepZipperDown!1573 (ite c!1173697 (regTwo!33163 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))) (regOne!33162 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292)))))))) (ite c!1173697 (ite (or c!1173252 c!1173254) lt!2377188 (Context!11419 call!552170)) (Context!11419 call!552442)) (h!71598 s!2326)))))

(declare-fun bm!552434 () Bool)

(declare-fun call!552438 () (InoxSet Context!11418))

(assert (=> bm!552434 (= call!552438 call!552440)))

(declare-fun d!2014090 () Bool)

(declare-fun c!1173695 () Bool)

(assert (=> d!2014090 (= c!1173695 (and ((_ is ElementMatch!16325) (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))) (= (c!1173074 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))) (h!71598 s!2326))))))

(declare-fun e!3897339 () (InoxSet Context!11418))

(assert (=> d!2014090 (= (derivationStepZipperDown!1573 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292)))))) (ite (or c!1173252 c!1173254) lt!2377188 (Context!11419 call!552170)) (h!71598 s!2326)) e!3897339)))

(declare-fun b!6423614 () Bool)

(assert (=> b!6423614 (= e!3897339 e!3897338)))

(assert (=> b!6423614 (= c!1173697 ((_ is Union!16325) (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))))))

(declare-fun b!6423615 () Bool)

(declare-fun call!552437 () (InoxSet Context!11418))

(assert (=> b!6423615 (= e!3897337 call!552437)))

(declare-fun b!6423616 () Bool)

(assert (=> b!6423616 (= e!3897339 (store ((as const (Array Context!11418 Bool)) false) (ite (or c!1173252 c!1173254) lt!2377188 (Context!11419 call!552170)) true))))

(declare-fun b!6423617 () Bool)

(assert (=> b!6423617 (= c!1173699 e!3897340)))

(declare-fun res!2640001 () Bool)

(assert (=> b!6423617 (=> (not res!2640001) (not e!3897340))))

(assert (=> b!6423617 (= res!2640001 ((_ is Concat!25170) (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))))))

(assert (=> b!6423617 (= e!3897338 e!3897335)))

(declare-fun b!6423618 () Bool)

(assert (=> b!6423618 (= e!3897335 ((_ map or) call!552441 call!552438))))

(declare-fun b!6423619 () Bool)

(assert (=> b!6423619 (= e!3897336 call!552437)))

(declare-fun bm!552435 () Bool)

(assert (=> bm!552435 (= call!552439 call!552442)))

(declare-fun bm!552436 () Bool)

(assert (=> bm!552436 (= call!552437 call!552438)))

(declare-fun bm!552437 () Bool)

(assert (=> bm!552437 (= call!552442 ($colon$colon!2186 (exprs!6209 (ite (or c!1173252 c!1173254) lt!2377188 (Context!11419 call!552170))) (ite (or c!1173699 c!1173696) (regTwo!33162 (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292))))))) (ite c!1173252 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (ite c!1173254 (regTwo!33162 (reg!16654 (regOne!33162 r!7292))) (ite c!1173251 (regOne!33162 (reg!16654 (regOne!33162 r!7292))) (reg!16654 (reg!16654 (regOne!33162 r!7292)))))))))))

(assert (= (and d!2014090 c!1173695) b!6423616))

(assert (= (and d!2014090 (not c!1173695)) b!6423614))

(assert (= (and b!6423614 c!1173697) b!6423609))

(assert (= (and b!6423614 (not c!1173697)) b!6423617))

(assert (= (and b!6423617 res!2640001) b!6423612))

(assert (= (and b!6423617 c!1173699) b!6423618))

(assert (= (and b!6423617 (not c!1173699)) b!6423613))

(assert (= (and b!6423613 c!1173696) b!6423615))

(assert (= (and b!6423613 (not c!1173696)) b!6423610))

(assert (= (and b!6423610 c!1173698) b!6423619))

(assert (= (and b!6423610 (not c!1173698)) b!6423611))

(assert (= (or b!6423615 b!6423619) bm!552435))

(assert (= (or b!6423615 b!6423619) bm!552436))

(assert (= (or b!6423618 bm!552435) bm!552437))

(assert (= (or b!6423618 bm!552436) bm!552434))

(assert (= (or b!6423609 b!6423618) bm!552433))

(assert (= (or b!6423609 bm!552434) bm!552432))

(declare-fun m!7218038 () Bool)

(assert (=> bm!552437 m!7218038))

(declare-fun m!7218040 () Bool)

(assert (=> bm!552432 m!7218040))

(declare-fun m!7218042 () Bool)

(assert (=> b!6423616 m!7218042))

(declare-fun m!7218044 () Bool)

(assert (=> b!6423612 m!7218044))

(declare-fun m!7218046 () Bool)

(assert (=> bm!552433 m!7218046))

(assert (=> bm!552163 d!2014090))

(assert (=> b!6422164 d!2013928))

(declare-fun d!2014092 () Bool)

(assert (=> d!2014092 (= (Exists!3395 (ite c!1173296 lambda!354884 lambda!354885)) (choose!47719 (ite c!1173296 lambda!354884 lambda!354885)))))

(declare-fun bs!1615484 () Bool)

(assert (= bs!1615484 d!2014092))

(declare-fun m!7218048 () Bool)

(assert (=> bs!1615484 m!7218048))

(assert (=> bm!552185 d!2014092))

(declare-fun b!6423620 () Bool)

(declare-fun e!3897344 () Bool)

(declare-fun call!552444 () Bool)

(assert (=> b!6423620 (= e!3897344 call!552444)))

(declare-fun c!1173701 () Bool)

(declare-fun c!1173700 () Bool)

(declare-fun bm!552438 () Bool)

(assert (=> bm!552438 (= call!552444 (validRegex!8061 (ite c!1173701 (reg!16654 lt!2377295) (ite c!1173700 (regOne!33163 lt!2377295) (regOne!33162 lt!2377295)))))))

(declare-fun d!2014094 () Bool)

(declare-fun res!2640004 () Bool)

(declare-fun e!3897347 () Bool)

(assert (=> d!2014094 (=> res!2640004 e!3897347)))

(assert (=> d!2014094 (= res!2640004 ((_ is ElementMatch!16325) lt!2377295))))

(assert (=> d!2014094 (= (validRegex!8061 lt!2377295) e!3897347)))

(declare-fun bm!552439 () Bool)

(declare-fun call!552445 () Bool)

(assert (=> bm!552439 (= call!552445 call!552444)))

(declare-fun b!6423621 () Bool)

(declare-fun e!3897345 () Bool)

(declare-fun call!552443 () Bool)

(assert (=> b!6423621 (= e!3897345 call!552443)))

(declare-fun b!6423622 () Bool)

(declare-fun res!2640002 () Bool)

(declare-fun e!3897341 () Bool)

(assert (=> b!6423622 (=> res!2640002 e!3897341)))

(assert (=> b!6423622 (= res!2640002 (not ((_ is Concat!25170) lt!2377295)))))

(declare-fun e!3897342 () Bool)

(assert (=> b!6423622 (= e!3897342 e!3897341)))

(declare-fun b!6423623 () Bool)

(declare-fun e!3897346 () Bool)

(assert (=> b!6423623 (= e!3897347 e!3897346)))

(assert (=> b!6423623 (= c!1173701 ((_ is Star!16325) lt!2377295))))

(declare-fun b!6423624 () Bool)

(assert (=> b!6423624 (= e!3897346 e!3897344)))

(declare-fun res!2640005 () Bool)

(assert (=> b!6423624 (= res!2640005 (not (nullable!6318 (reg!16654 lt!2377295))))))

(assert (=> b!6423624 (=> (not res!2640005) (not e!3897344))))

(declare-fun b!6423625 () Bool)

(assert (=> b!6423625 (= e!3897346 e!3897342)))

(assert (=> b!6423625 (= c!1173700 ((_ is Union!16325) lt!2377295))))

(declare-fun b!6423626 () Bool)

(declare-fun e!3897343 () Bool)

(assert (=> b!6423626 (= e!3897343 call!552443)))

(declare-fun b!6423627 () Bool)

(declare-fun res!2640003 () Bool)

(assert (=> b!6423627 (=> (not res!2640003) (not e!3897343))))

(assert (=> b!6423627 (= res!2640003 call!552445)))

(assert (=> b!6423627 (= e!3897342 e!3897343)))

(declare-fun bm!552440 () Bool)

(assert (=> bm!552440 (= call!552443 (validRegex!8061 (ite c!1173700 (regTwo!33163 lt!2377295) (regTwo!33162 lt!2377295))))))

(declare-fun b!6423628 () Bool)

(assert (=> b!6423628 (= e!3897341 e!3897345)))

(declare-fun res!2640006 () Bool)

(assert (=> b!6423628 (=> (not res!2640006) (not e!3897345))))

(assert (=> b!6423628 (= res!2640006 call!552445)))

(assert (= (and d!2014094 (not res!2640004)) b!6423623))

(assert (= (and b!6423623 c!1173701) b!6423624))

(assert (= (and b!6423623 (not c!1173701)) b!6423625))

(assert (= (and b!6423624 res!2640005) b!6423620))

(assert (= (and b!6423625 c!1173700) b!6423627))

(assert (= (and b!6423625 (not c!1173700)) b!6423622))

(assert (= (and b!6423627 res!2640003) b!6423626))

(assert (= (and b!6423622 (not res!2640002)) b!6423628))

(assert (= (and b!6423628 res!2640006) b!6423621))

(assert (= (or b!6423626 b!6423621) bm!552440))

(assert (= (or b!6423627 b!6423628) bm!552439))

(assert (= (or b!6423620 bm!552439) bm!552438))

(declare-fun m!7218050 () Bool)

(assert (=> bm!552438 m!7218050))

(declare-fun m!7218052 () Bool)

(assert (=> b!6423624 m!7218052))

(declare-fun m!7218054 () Bool)

(assert (=> bm!552440 m!7218054))

(assert (=> d!2013366 d!2014094))

(declare-fun bs!1615485 () Bool)

(declare-fun d!2014096 () Bool)

(assert (= bs!1615485 (and d!2014096 d!2013484)))

(declare-fun lambda!354967 () Int)

(assert (=> bs!1615485 (= lambda!354967 lambda!354897)))

(declare-fun bs!1615486 () Bool)

(assert (= bs!1615486 (and d!2014096 d!2013982)))

(assert (=> bs!1615486 (= lambda!354967 lambda!354959)))

(declare-fun bs!1615487 () Bool)

(assert (= bs!1615487 (and d!2014096 d!2014014)))

(assert (=> bs!1615487 (= lambda!354967 lambda!354961)))

(declare-fun bs!1615488 () Bool)

(assert (= bs!1615488 (and d!2014096 d!2013412)))

(assert (=> bs!1615488 (= lambda!354967 lambda!354879)))

(declare-fun bs!1615489 () Bool)

(assert (= bs!1615489 (and d!2014096 d!2013968)))

(assert (=> bs!1615489 (= lambda!354967 lambda!354958)))

(declare-fun bs!1615490 () Bool)

(assert (= bs!1615490 (and d!2014096 d!2013456)))

(assert (=> bs!1615490 (= lambda!354967 lambda!354889)))

(declare-fun bs!1615491 () Bool)

(assert (= bs!1615491 (and d!2014096 d!2013482)))

(assert (=> bs!1615491 (= lambda!354967 lambda!354894)))

(declare-fun bs!1615492 () Bool)

(assert (= bs!1615492 (and d!2014096 d!2013382)))

(assert (=> bs!1615492 (= lambda!354967 lambda!354876)))

(declare-fun b!6423629 () Bool)

(declare-fun e!3897349 () Bool)

(declare-fun e!3897353 () Bool)

(assert (=> b!6423629 (= e!3897349 e!3897353)))

(declare-fun c!1173702 () Bool)

(assert (=> b!6423629 (= c!1173702 (isEmpty!37308 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152))))))

(declare-fun b!6423630 () Bool)

(declare-fun e!3897348 () Bool)

(assert (=> b!6423630 (= e!3897348 (isEmpty!37308 (t!378889 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152)))))))

(declare-fun b!6423631 () Bool)

(declare-fun e!3897351 () Bool)

(assert (=> b!6423631 (= e!3897353 e!3897351)))

(declare-fun c!1173703 () Bool)

(assert (=> b!6423631 (= c!1173703 (isEmpty!37308 (tail!12227 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152)))))))

(declare-fun b!6423632 () Bool)

(declare-fun lt!2377419 () Regex!16325)

(assert (=> b!6423632 (= e!3897353 (isEmptyLang!1733 lt!2377419))))

(declare-fun b!6423633 () Bool)

(declare-fun e!3897350 () Regex!16325)

(declare-fun e!3897352 () Regex!16325)

(assert (=> b!6423633 (= e!3897350 e!3897352)))

(declare-fun c!1173704 () Bool)

(assert (=> b!6423633 (= c!1173704 ((_ is Cons!65151) (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152))))))

(declare-fun b!6423634 () Bool)

(assert (=> b!6423634 (= e!3897351 (= lt!2377419 (head!13142 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152)))))))

(assert (=> d!2014096 e!3897349))

(declare-fun res!2640007 () Bool)

(assert (=> d!2014096 (=> (not res!2640007) (not e!3897349))))

(assert (=> d!2014096 (= res!2640007 (validRegex!8061 lt!2377419))))

(assert (=> d!2014096 (= lt!2377419 e!3897350)))

(declare-fun c!1173705 () Bool)

(assert (=> d!2014096 (= c!1173705 e!3897348)))

(declare-fun res!2640008 () Bool)

(assert (=> d!2014096 (=> (not res!2640008) (not e!3897348))))

(assert (=> d!2014096 (= res!2640008 ((_ is Cons!65151) (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152))))))

(assert (=> d!2014096 (forall!15515 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152)) lambda!354967)))

(assert (=> d!2014096 (= (generalisedUnion!2169 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152))) lt!2377419)))

(declare-fun b!6423635 () Bool)

(assert (=> b!6423635 (= e!3897351 (isUnion!1163 lt!2377419))))

(declare-fun b!6423636 () Bool)

(assert (=> b!6423636 (= e!3897352 (Union!16325 (h!71599 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152))) (generalisedUnion!2169 (t!378889 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152))))))))

(declare-fun b!6423637 () Bool)

(assert (=> b!6423637 (= e!3897350 (h!71599 (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152))))))

(declare-fun b!6423638 () Bool)

(assert (=> b!6423638 (= e!3897352 EmptyLang!16325)))

(assert (= (and d!2014096 res!2640008) b!6423630))

(assert (= (and d!2014096 c!1173705) b!6423637))

(assert (= (and d!2014096 (not c!1173705)) b!6423633))

(assert (= (and b!6423633 c!1173704) b!6423636))

(assert (= (and b!6423633 (not c!1173704)) b!6423638))

(assert (= (and d!2014096 res!2640007) b!6423629))

(assert (= (and b!6423629 c!1173702) b!6423632))

(assert (= (and b!6423629 (not c!1173702)) b!6423631))

(assert (= (and b!6423631 c!1173703) b!6423634))

(assert (= (and b!6423631 (not c!1173703)) b!6423635))

(declare-fun m!7218056 () Bool)

(assert (=> b!6423636 m!7218056))

(declare-fun m!7218058 () Bool)

(assert (=> b!6423630 m!7218058))

(declare-fun m!7218060 () Bool)

(assert (=> b!6423632 m!7218060))

(declare-fun m!7218062 () Bool)

(assert (=> d!2014096 m!7218062))

(assert (=> d!2014096 m!7216394))

(declare-fun m!7218064 () Bool)

(assert (=> d!2014096 m!7218064))

(assert (=> b!6423634 m!7216394))

(declare-fun m!7218066 () Bool)

(assert (=> b!6423634 m!7218066))

(declare-fun m!7218068 () Bool)

(assert (=> b!6423635 m!7218068))

(assert (=> b!6423631 m!7216394))

(declare-fun m!7218070 () Bool)

(assert (=> b!6423631 m!7218070))

(assert (=> b!6423631 m!7218070))

(declare-fun m!7218072 () Bool)

(assert (=> b!6423631 m!7218072))

(assert (=> b!6423629 m!7216394))

(declare-fun m!7218074 () Bool)

(assert (=> b!6423629 m!7218074))

(assert (=> d!2013366 d!2014096))

(declare-fun bs!1615493 () Bool)

(declare-fun d!2014098 () Bool)

(assert (= bs!1615493 (and d!2014098 d!2013484)))

(declare-fun lambda!354968 () Int)

(assert (=> bs!1615493 (= lambda!354968 lambda!354897)))

(declare-fun bs!1615494 () Bool)

(assert (= bs!1615494 (and d!2014098 d!2013982)))

(assert (=> bs!1615494 (= lambda!354968 lambda!354959)))

(declare-fun bs!1615495 () Bool)

(assert (= bs!1615495 (and d!2014098 d!2014014)))

(assert (=> bs!1615495 (= lambda!354968 lambda!354961)))

(declare-fun bs!1615496 () Bool)

(assert (= bs!1615496 (and d!2014098 d!2013412)))

(assert (=> bs!1615496 (= lambda!354968 lambda!354879)))

(declare-fun bs!1615497 () Bool)

(assert (= bs!1615497 (and d!2014098 d!2013968)))

(assert (=> bs!1615497 (= lambda!354968 lambda!354958)))

(declare-fun bs!1615498 () Bool)

(assert (= bs!1615498 (and d!2014098 d!2013456)))

(assert (=> bs!1615498 (= lambda!354968 lambda!354889)))

(declare-fun bs!1615499 () Bool)

(assert (= bs!1615499 (and d!2014098 d!2013382)))

(assert (=> bs!1615499 (= lambda!354968 lambda!354876)))

(declare-fun bs!1615500 () Bool)

(assert (= bs!1615500 (and d!2014098 d!2014096)))

(assert (=> bs!1615500 (= lambda!354968 lambda!354967)))

(declare-fun bs!1615501 () Bool)

(assert (= bs!1615501 (and d!2014098 d!2013482)))

(assert (=> bs!1615501 (= lambda!354968 lambda!354894)))

(declare-fun lt!2377420 () List!65275)

(assert (=> d!2014098 (forall!15515 lt!2377420 lambda!354968)))

(declare-fun e!3897354 () List!65275)

(assert (=> d!2014098 (= lt!2377420 e!3897354)))

(declare-fun c!1173706 () Bool)

(assert (=> d!2014098 (= c!1173706 ((_ is Cons!65152) (Cons!65152 lt!2377188 Nil!65152)))))

(assert (=> d!2014098 (= (unfocusZipperList!1746 (Cons!65152 lt!2377188 Nil!65152)) lt!2377420)))

(declare-fun b!6423639 () Bool)

(assert (=> b!6423639 (= e!3897354 (Cons!65151 (generalisedConcat!1922 (exprs!6209 (h!71600 (Cons!65152 lt!2377188 Nil!65152)))) (unfocusZipperList!1746 (t!378890 (Cons!65152 lt!2377188 Nil!65152)))))))

(declare-fun b!6423640 () Bool)

(assert (=> b!6423640 (= e!3897354 Nil!65151)))

(assert (= (and d!2014098 c!1173706) b!6423639))

(assert (= (and d!2014098 (not c!1173706)) b!6423640))

(declare-fun m!7218076 () Bool)

(assert (=> d!2014098 m!7218076))

(declare-fun m!7218078 () Bool)

(assert (=> b!6423639 m!7218078))

(declare-fun m!7218080 () Bool)

(assert (=> b!6423639 m!7218080))

(assert (=> d!2013366 d!2014098))

(declare-fun bs!1615502 () Bool)

(declare-fun d!2014100 () Bool)

(assert (= bs!1615502 (and d!2014100 d!2013922)))

(declare-fun lambda!354969 () Int)

(assert (=> bs!1615502 (= lambda!354969 lambda!354954)))

(declare-fun bs!1615503 () Bool)

(assert (= bs!1615503 (and d!2014100 d!2014044)))

(assert (=> bs!1615503 (= lambda!354969 lambda!354962)))

(assert (=> d!2014100 (= (nullableZipper!2090 lt!2377201) (exists!2599 lt!2377201 lambda!354969))))

(declare-fun bs!1615504 () Bool)

(assert (= bs!1615504 d!2014100))

(declare-fun m!7218082 () Bool)

(assert (=> bs!1615504 m!7218082))

(assert (=> b!6421964 d!2014100))

(assert (=> b!6422160 d!2014040))

(assert (=> b!6422160 d!2013930))

(declare-fun bs!1615505 () Bool)

(declare-fun b!6423649 () Bool)

(assert (= bs!1615505 (and b!6423649 d!2013890)))

(declare-fun lambda!354970 () Int)

(assert (=> bs!1615505 (not (= lambda!354970 lambda!354950))))

(declare-fun bs!1615506 () Bool)

(assert (= bs!1615506 (and b!6423649 b!6422181)))

(assert (=> bs!1615506 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regTwo!33163 lt!2377164)) (reg!16654 lt!2377183)) (= (regTwo!33163 lt!2377164) lt!2377183)) (= lambda!354970 lambda!354890))))

(declare-fun bs!1615507 () Bool)

(assert (= bs!1615507 (and b!6423649 b!6421798)))

(assert (=> bs!1615507 (not (= lambda!354970 lambda!354870))))

(declare-fun bs!1615508 () Bool)

(assert (= bs!1615508 (and b!6423649 d!2013302)))

(assert (=> bs!1615508 (not (= lambda!354970 lambda!354848))))

(declare-fun bs!1615509 () Bool)

(assert (= bs!1615509 (and b!6423649 b!6423294)))

(assert (=> bs!1615509 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regTwo!33163 lt!2377164)) (reg!16654 (regOne!33163 r!7292))) (= (regTwo!33163 lt!2377164) (regOne!33163 r!7292))) (= lambda!354970 lambda!354956))))

(declare-fun bs!1615510 () Bool)

(assert (= bs!1615510 (and b!6423649 d!2013448)))

(assert (=> bs!1615510 (not (= lambda!354970 lambda!354888))))

(declare-fun bs!1615511 () Bool)

(assert (= bs!1615511 (and b!6423649 b!6421803)))

(assert (=> bs!1615511 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regTwo!33163 lt!2377164)) (reg!16654 r!7292)) (= (regTwo!33163 lt!2377164) r!7292)) (= lambda!354970 lambda!354869))))

(declare-fun bs!1615512 () Bool)

(assert (= bs!1615512 (and b!6423649 d!2013426)))

(assert (=> bs!1615512 (not (= lambda!354970 lambda!354883))))

(declare-fun bs!1615513 () Bool)

(assert (= bs!1615513 (and b!6423649 b!6422176)))

(assert (=> bs!1615513 (not (= lambda!354970 lambda!354891))))

(declare-fun bs!1615514 () Bool)

(assert (= bs!1615514 (and b!6423649 b!6423289)))

(assert (=> bs!1615514 (not (= lambda!354970 lambda!354957))))

(assert (=> bs!1615510 (not (= lambda!354970 lambda!354887))))

(declare-fun bs!1615515 () Bool)

(assert (= bs!1615515 (and b!6423649 d!2013318)))

(assert (=> bs!1615515 (not (= lambda!354970 lambda!354861))))

(declare-fun bs!1615516 () Bool)

(assert (= bs!1615516 (and b!6423649 b!6421294)))

(assert (=> bs!1615516 (not (= lambda!354970 lambda!354817))))

(declare-fun bs!1615517 () Bool)

(assert (= bs!1615517 (and b!6423649 b!6421303)))

(assert (=> bs!1615517 (not (= lambda!354970 lambda!354815))))

(declare-fun bs!1615518 () Bool)

(assert (= bs!1615518 (and b!6423649 d!2014082)))

(assert (=> bs!1615518 (not (= lambda!354970 lambda!354966))))

(declare-fun bs!1615519 () Bool)

(assert (= bs!1615519 (and b!6423649 b!6422121)))

(assert (=> bs!1615519 (not (= lambda!354970 lambda!354885))))

(assert (=> bs!1615515 (not (= lambda!354970 lambda!354860))))

(assert (=> bs!1615517 (not (= lambda!354970 lambda!354814))))

(assert (=> bs!1615516 (not (= lambda!354970 lambda!354818))))

(assert (=> bs!1615505 (not (= lambda!354970 lambda!354951))))

(declare-fun bs!1615520 () Bool)

(assert (= bs!1615520 (and b!6423649 d!2013446)))

(assert (=> bs!1615520 (not (= lambda!354970 lambda!354886))))

(declare-fun bs!1615521 () Bool)

(assert (= bs!1615521 (and b!6423649 b!6421322)))

(assert (=> bs!1615521 (not (= lambda!354970 lambda!354819))))

(declare-fun bs!1615522 () Bool)

(assert (= bs!1615522 (and b!6423649 b!6422126)))

(assert (=> bs!1615522 (= (and (= (reg!16654 (regTwo!33163 lt!2377164)) (reg!16654 lt!2377164)) (= (regTwo!33163 lt!2377164) lt!2377164)) (= lambda!354970 lambda!354884))))

(assert (=> b!6423649 true))

(assert (=> b!6423649 true))

(declare-fun bs!1615523 () Bool)

(declare-fun b!6423644 () Bool)

(assert (= bs!1615523 (and b!6423644 d!2013890)))

(declare-fun lambda!354971 () Int)

(assert (=> bs!1615523 (not (= lambda!354971 lambda!354950))))

(declare-fun bs!1615524 () Bool)

(assert (= bs!1615524 (and b!6423644 b!6422181)))

(assert (=> bs!1615524 (not (= lambda!354971 lambda!354890))))

(declare-fun bs!1615525 () Bool)

(assert (= bs!1615525 (and b!6423644 b!6421798)))

(assert (=> bs!1615525 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regTwo!33163 lt!2377164)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354971 lambda!354870))))

(declare-fun bs!1615526 () Bool)

(assert (= bs!1615526 (and b!6423644 d!2013302)))

(assert (=> bs!1615526 (not (= lambda!354971 lambda!354848))))

(declare-fun bs!1615527 () Bool)

(assert (= bs!1615527 (and b!6423644 b!6423294)))

(assert (=> bs!1615527 (not (= lambda!354971 lambda!354956))))

(declare-fun bs!1615528 () Bool)

(assert (= bs!1615528 (and b!6423644 b!6423649)))

(assert (=> bs!1615528 (not (= lambda!354971 lambda!354970))))

(declare-fun bs!1615529 () Bool)

(assert (= bs!1615529 (and b!6423644 d!2013448)))

(assert (=> bs!1615529 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regTwo!33163 lt!2377164)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354971 lambda!354888))))

(declare-fun bs!1615530 () Bool)

(assert (= bs!1615530 (and b!6423644 b!6421803)))

(assert (=> bs!1615530 (not (= lambda!354971 lambda!354869))))

(declare-fun bs!1615531 () Bool)

(assert (= bs!1615531 (and b!6423644 d!2013426)))

(assert (=> bs!1615531 (not (= lambda!354971 lambda!354883))))

(declare-fun bs!1615532 () Bool)

(assert (= bs!1615532 (and b!6423644 b!6422176)))

(assert (=> bs!1615532 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regTwo!33163 lt!2377164)) (regOne!33162 lt!2377183)) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 lt!2377183))) (= lambda!354971 lambda!354891))))

(declare-fun bs!1615533 () Bool)

(assert (= bs!1615533 (and b!6423644 b!6423289)))

(assert (=> bs!1615533 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regTwo!33163 lt!2377164)) (regOne!33162 (regOne!33163 r!7292))) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 (regOne!33163 r!7292)))) (= lambda!354971 lambda!354957))))

(assert (=> bs!1615529 (not (= lambda!354971 lambda!354887))))

(declare-fun bs!1615534 () Bool)

(assert (= bs!1615534 (and b!6423644 d!2013318)))

(assert (=> bs!1615534 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regTwo!33163 lt!2377164)) lt!2377164) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354971 lambda!354861))))

(declare-fun bs!1615535 () Bool)

(assert (= bs!1615535 (and b!6423644 b!6421294)))

(assert (=> bs!1615535 (not (= lambda!354971 lambda!354817))))

(declare-fun bs!1615536 () Bool)

(assert (= bs!1615536 (and b!6423644 b!6421303)))

(assert (=> bs!1615536 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regTwo!33163 lt!2377164)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354971 lambda!354815))))

(declare-fun bs!1615537 () Bool)

(assert (= bs!1615537 (and b!6423644 d!2014082)))

(assert (=> bs!1615537 (not (= lambda!354971 lambda!354966))))

(declare-fun bs!1615538 () Bool)

(assert (= bs!1615538 (and b!6423644 b!6422121)))

(assert (=> bs!1615538 (= (and (= (regOne!33162 (regTwo!33163 lt!2377164)) (regOne!33162 lt!2377164)) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 lt!2377164))) (= lambda!354971 lambda!354885))))

(assert (=> bs!1615534 (not (= lambda!354971 lambda!354860))))

(assert (=> bs!1615536 (not (= lambda!354971 lambda!354814))))

(assert (=> bs!1615535 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regTwo!33163 lt!2377164)) lt!2377164) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354971 lambda!354818))))

(assert (=> bs!1615523 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regTwo!33163 lt!2377164)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354971 lambda!354951))))

(declare-fun bs!1615539 () Bool)

(assert (= bs!1615539 (and b!6423644 d!2013446)))

(assert (=> bs!1615539 (not (= lambda!354971 lambda!354886))))

(declare-fun bs!1615540 () Bool)

(assert (= bs!1615540 (and b!6423644 b!6421322)))

(assert (=> bs!1615540 (not (= lambda!354971 lambda!354819))))

(declare-fun bs!1615541 () Bool)

(assert (= bs!1615541 (and b!6423644 b!6422126)))

(assert (=> bs!1615541 (not (= lambda!354971 lambda!354884))))

(assert (=> b!6423644 true))

(assert (=> b!6423644 true))

(declare-fun b!6423641 () Bool)

(declare-fun e!3897361 () Bool)

(assert (=> b!6423641 (= e!3897361 (= (_1!36607 lt!2377178) (Cons!65150 (c!1173074 (regTwo!33163 lt!2377164)) Nil!65150)))))

(declare-fun b!6423642 () Bool)

(declare-fun e!3897360 () Bool)

(declare-fun e!3897359 () Bool)

(assert (=> b!6423642 (= e!3897360 e!3897359)))

(declare-fun c!1173710 () Bool)

(assert (=> b!6423642 (= c!1173710 ((_ is Star!16325) (regTwo!33163 lt!2377164)))))

(declare-fun b!6423643 () Bool)

(declare-fun res!2640011 () Bool)

(declare-fun e!3897358 () Bool)

(assert (=> b!6423643 (=> res!2640011 e!3897358)))

(declare-fun call!552446 () Bool)

(assert (=> b!6423643 (= res!2640011 call!552446)))

(assert (=> b!6423643 (= e!3897359 e!3897358)))

(declare-fun call!552447 () Bool)

(assert (=> b!6423644 (= e!3897359 call!552447)))

(declare-fun b!6423645 () Bool)

(declare-fun e!3897355 () Bool)

(assert (=> b!6423645 (= e!3897360 e!3897355)))

(declare-fun res!2640009 () Bool)

(assert (=> b!6423645 (= res!2640009 (matchRSpec!3426 (regOne!33163 (regTwo!33163 lt!2377164)) (_1!36607 lt!2377178)))))

(assert (=> b!6423645 (=> res!2640009 e!3897355)))

(declare-fun b!6423646 () Bool)

(assert (=> b!6423646 (= e!3897355 (matchRSpec!3426 (regTwo!33163 (regTwo!33163 lt!2377164)) (_1!36607 lt!2377178)))))

(declare-fun b!6423647 () Bool)

(declare-fun c!1173708 () Bool)

(assert (=> b!6423647 (= c!1173708 ((_ is Union!16325) (regTwo!33163 lt!2377164)))))

(assert (=> b!6423647 (= e!3897361 e!3897360)))

(declare-fun d!2014102 () Bool)

(declare-fun c!1173709 () Bool)

(assert (=> d!2014102 (= c!1173709 ((_ is EmptyExpr!16325) (regTwo!33163 lt!2377164)))))

(declare-fun e!3897356 () Bool)

(assert (=> d!2014102 (= (matchRSpec!3426 (regTwo!33163 lt!2377164) (_1!36607 lt!2377178)) e!3897356)))

(declare-fun b!6423648 () Bool)

(declare-fun e!3897357 () Bool)

(assert (=> b!6423648 (= e!3897356 e!3897357)))

(declare-fun res!2640010 () Bool)

(assert (=> b!6423648 (= res!2640010 (not ((_ is EmptyLang!16325) (regTwo!33163 lt!2377164))))))

(assert (=> b!6423648 (=> (not res!2640010) (not e!3897357))))

(assert (=> b!6423649 (= e!3897358 call!552447)))

(declare-fun bm!552441 () Bool)

(assert (=> bm!552441 (= call!552447 (Exists!3395 (ite c!1173710 lambda!354970 lambda!354971)))))

(declare-fun b!6423650 () Bool)

(assert (=> b!6423650 (= e!3897356 call!552446)))

(declare-fun b!6423651 () Bool)

(declare-fun c!1173707 () Bool)

(assert (=> b!6423651 (= c!1173707 ((_ is ElementMatch!16325) (regTwo!33163 lt!2377164)))))

(assert (=> b!6423651 (= e!3897357 e!3897361)))

(declare-fun bm!552442 () Bool)

(assert (=> bm!552442 (= call!552446 (isEmpty!37310 (_1!36607 lt!2377178)))))

(assert (= (and d!2014102 c!1173709) b!6423650))

(assert (= (and d!2014102 (not c!1173709)) b!6423648))

(assert (= (and b!6423648 res!2640010) b!6423651))

(assert (= (and b!6423651 c!1173707) b!6423641))

(assert (= (and b!6423651 (not c!1173707)) b!6423647))

(assert (= (and b!6423647 c!1173708) b!6423645))

(assert (= (and b!6423647 (not c!1173708)) b!6423642))

(assert (= (and b!6423645 (not res!2640009)) b!6423646))

(assert (= (and b!6423642 c!1173710) b!6423643))

(assert (= (and b!6423642 (not c!1173710)) b!6423644))

(assert (= (and b!6423643 (not res!2640011)) b!6423649))

(assert (= (or b!6423649 b!6423644) bm!552441))

(assert (= (or b!6423650 b!6423643) bm!552442))

(declare-fun m!7218084 () Bool)

(assert (=> b!6423645 m!7218084))

(declare-fun m!7218086 () Bool)

(assert (=> b!6423646 m!7218086))

(declare-fun m!7218088 () Bool)

(assert (=> bm!552441 m!7218088))

(assert (=> bm!552442 m!7215768))

(assert (=> b!6422123 d!2014102))

(assert (=> b!6421891 d!2013928))

(declare-fun b!6423652 () Bool)

(declare-fun e!3897365 () Bool)

(declare-fun call!552449 () Bool)

(assert (=> b!6423652 (= e!3897365 call!552449)))

(declare-fun bm!552443 () Bool)

(declare-fun c!1173712 () Bool)

(declare-fun c!1173711 () Bool)

(assert (=> bm!552443 (= call!552449 (validRegex!8061 (ite c!1173712 (reg!16654 (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))) (ite c!1173711 (regOne!33163 (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))) (regOne!33162 (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292)))))))))))

(declare-fun d!2014104 () Bool)

(declare-fun res!2640014 () Bool)

(declare-fun e!3897368 () Bool)

(assert (=> d!2014104 (=> res!2640014 e!3897368)))

(assert (=> d!2014104 (= res!2640014 ((_ is ElementMatch!16325) (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))))))

(assert (=> d!2014104 (= (validRegex!8061 (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))) e!3897368)))

(declare-fun bm!552444 () Bool)

(declare-fun call!552450 () Bool)

(assert (=> bm!552444 (= call!552450 call!552449)))

(declare-fun b!6423653 () Bool)

(declare-fun e!3897366 () Bool)

(declare-fun call!552448 () Bool)

(assert (=> b!6423653 (= e!3897366 call!552448)))

(declare-fun b!6423654 () Bool)

(declare-fun res!2640012 () Bool)

(declare-fun e!3897362 () Bool)

(assert (=> b!6423654 (=> res!2640012 e!3897362)))

(assert (=> b!6423654 (= res!2640012 (not ((_ is Concat!25170) (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292)))))))))

(declare-fun e!3897363 () Bool)

(assert (=> b!6423654 (= e!3897363 e!3897362)))

(declare-fun b!6423655 () Bool)

(declare-fun e!3897367 () Bool)

(assert (=> b!6423655 (= e!3897368 e!3897367)))

(assert (=> b!6423655 (= c!1173712 ((_ is Star!16325) (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun b!6423656 () Bool)

(assert (=> b!6423656 (= e!3897367 e!3897365)))

(declare-fun res!2640015 () Bool)

(assert (=> b!6423656 (= res!2640015 (not (nullable!6318 (reg!16654 (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))))))))

(assert (=> b!6423656 (=> (not res!2640015) (not e!3897365))))

(declare-fun b!6423657 () Bool)

(assert (=> b!6423657 (= e!3897367 e!3897363)))

(assert (=> b!6423657 (= c!1173711 ((_ is Union!16325) (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun b!6423658 () Bool)

(declare-fun e!3897364 () Bool)

(assert (=> b!6423658 (= e!3897364 call!552448)))

(declare-fun b!6423659 () Bool)

(declare-fun res!2640013 () Bool)

(assert (=> b!6423659 (=> (not res!2640013) (not e!3897364))))

(assert (=> b!6423659 (= res!2640013 call!552450)))

(assert (=> b!6423659 (= e!3897363 e!3897364)))

(declare-fun bm!552445 () Bool)

(assert (=> bm!552445 (= call!552448 (validRegex!8061 (ite c!1173711 (regTwo!33163 (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))) (regTwo!33162 (ite c!1173291 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))))))))

(declare-fun b!6423660 () Bool)

(assert (=> b!6423660 (= e!3897362 e!3897366)))

(declare-fun res!2640016 () Bool)

(assert (=> b!6423660 (=> (not res!2640016) (not e!3897366))))

(assert (=> b!6423660 (= res!2640016 call!552450)))

(assert (= (and d!2014104 (not res!2640014)) b!6423655))

(assert (= (and b!6423655 c!1173712) b!6423656))

(assert (= (and b!6423655 (not c!1173712)) b!6423657))

(assert (= (and b!6423656 res!2640015) b!6423652))

(assert (= (and b!6423657 c!1173711) b!6423659))

(assert (= (and b!6423657 (not c!1173711)) b!6423654))

(assert (= (and b!6423659 res!2640013) b!6423658))

(assert (= (and b!6423654 (not res!2640012)) b!6423660))

(assert (= (and b!6423660 res!2640016) b!6423653))

(assert (= (or b!6423658 b!6423653) bm!552445))

(assert (= (or b!6423659 b!6423660) bm!552444))

(assert (= (or b!6423652 bm!552444) bm!552443))

(declare-fun m!7218090 () Bool)

(assert (=> bm!552443 m!7218090))

(declare-fun m!7218092 () Bool)

(assert (=> b!6423656 m!7218092))

(declare-fun m!7218094 () Bool)

(assert (=> bm!552445 m!7218094))

(assert (=> bm!552184 d!2014104))

(declare-fun d!2014106 () Bool)

(assert (=> d!2014106 (= (nullable!6318 lt!2377183) (nullableFct!2264 lt!2377183))))

(declare-fun bs!1615542 () Bool)

(assert (= bs!1615542 d!2014106))

(declare-fun m!7218096 () Bool)

(assert (=> bs!1615542 m!7218096))

(assert (=> b!6422168 d!2014106))

(declare-fun d!2014108 () Bool)

(assert (=> d!2014108 (= (isEmpty!37311 lt!2377195) (not ((_ is Some!16215) lt!2377195)))))

(assert (=> d!2013282 d!2014108))

(declare-fun d!2014110 () Bool)

(assert (=> d!2014110 (= (isEmpty!37311 (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326)) (not ((_ is Some!16215) (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326))))))

(assert (=> d!2013450 d!2014110))

(declare-fun d!2014112 () Bool)

(assert (=> d!2014112 (= (isEmpty!37308 (tail!12227 (exprs!6209 (h!71600 zl!343)))) ((_ is Nil!65151) (tail!12227 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> b!6422053 d!2014112))

(declare-fun d!2014114 () Bool)

(assert (=> d!2014114 (= (tail!12227 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))

(assert (=> b!6422053 d!2014114))

(declare-fun d!2014116 () Bool)

(assert (=> d!2014116 (= (head!13142 (exprs!6209 (h!71600 zl!343))) (h!71599 (exprs!6209 (h!71600 zl!343))))))

(assert (=> b!6422049 d!2014116))

(declare-fun b!6423675 () Bool)

(declare-fun e!3897381 () Bool)

(declare-fun e!3897385 () Bool)

(assert (=> b!6423675 (= e!3897381 e!3897385)))

(declare-fun c!1173715 () Bool)

(assert (=> b!6423675 (= c!1173715 ((_ is Union!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6423676 () Bool)

(declare-fun e!3897384 () Bool)

(assert (=> b!6423676 (= e!3897385 e!3897384)))

(declare-fun res!2640031 () Bool)

(declare-fun call!552455 () Bool)

(assert (=> b!6423676 (= res!2640031 call!552455)))

(assert (=> b!6423676 (=> res!2640031 e!3897384)))

(declare-fun b!6423677 () Bool)

(declare-fun call!552456 () Bool)

(assert (=> b!6423677 (= e!3897384 call!552456)))

(declare-fun d!2014118 () Bool)

(declare-fun res!2640030 () Bool)

(declare-fun e!3897383 () Bool)

(assert (=> d!2014118 (=> res!2640030 e!3897383)))

(assert (=> d!2014118 (= res!2640030 ((_ is EmptyExpr!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> d!2014118 (= (nullableFct!2264 (h!71599 (exprs!6209 (h!71600 zl!343)))) e!3897383)))

(declare-fun bm!552450 () Bool)

(assert (=> bm!552450 (= call!552456 (nullable!6318 (ite c!1173715 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))

(declare-fun b!6423678 () Bool)

(declare-fun e!3897386 () Bool)

(assert (=> b!6423678 (= e!3897386 call!552456)))

(declare-fun b!6423679 () Bool)

(declare-fun e!3897382 () Bool)

(assert (=> b!6423679 (= e!3897383 e!3897382)))

(declare-fun res!2640028 () Bool)

(assert (=> b!6423679 (=> (not res!2640028) (not e!3897382))))

(assert (=> b!6423679 (= res!2640028 (and (not ((_ is EmptyLang!16325) (h!71599 (exprs!6209 (h!71600 zl!343))))) (not ((_ is ElementMatch!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))))))))

(declare-fun b!6423680 () Bool)

(assert (=> b!6423680 (= e!3897385 e!3897386)))

(declare-fun res!2640027 () Bool)

(assert (=> b!6423680 (= res!2640027 call!552455)))

(assert (=> b!6423680 (=> (not res!2640027) (not e!3897386))))

(declare-fun b!6423681 () Bool)

(assert (=> b!6423681 (= e!3897382 e!3897381)))

(declare-fun res!2640029 () Bool)

(assert (=> b!6423681 (=> res!2640029 e!3897381)))

(assert (=> b!6423681 (= res!2640029 ((_ is Star!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun bm!552451 () Bool)

(assert (=> bm!552451 (= call!552455 (nullable!6318 (ite c!1173715 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))

(assert (= (and d!2014118 (not res!2640030)) b!6423679))

(assert (= (and b!6423679 res!2640028) b!6423681))

(assert (= (and b!6423681 (not res!2640029)) b!6423675))

(assert (= (and b!6423675 c!1173715) b!6423676))

(assert (= (and b!6423675 (not c!1173715)) b!6423680))

(assert (= (and b!6423676 (not res!2640031)) b!6423677))

(assert (= (and b!6423680 res!2640027) b!6423678))

(assert (= (or b!6423677 b!6423678) bm!552450))

(assert (= (or b!6423676 b!6423680) bm!552451))

(declare-fun m!7218098 () Bool)

(assert (=> bm!552450 m!7218098))

(declare-fun m!7218100 () Bool)

(assert (=> bm!552451 m!7218100))

(assert (=> d!2013470 d!2014118))

(declare-fun d!2014120 () Bool)

(declare-fun c!1173718 () Bool)

(assert (=> d!2014120 (= c!1173718 ((_ is Nil!65150) lt!2377268))))

(declare-fun e!3897389 () (InoxSet C!32920))

(assert (=> d!2014120 (= (content!12363 lt!2377268) e!3897389)))

(declare-fun b!6423686 () Bool)

(assert (=> b!6423686 (= e!3897389 ((as const (Array C!32920 Bool)) false))))

(declare-fun b!6423687 () Bool)

(assert (=> b!6423687 (= e!3897389 ((_ map or) (store ((as const (Array C!32920 Bool)) false) (h!71598 lt!2377268) true) (content!12363 (t!378888 lt!2377268))))))

(assert (= (and d!2014120 c!1173718) b!6423686))

(assert (= (and d!2014120 (not c!1173718)) b!6423687))

(declare-fun m!7218102 () Bool)

(assert (=> b!6423687 m!7218102))

(declare-fun m!7218104 () Bool)

(assert (=> b!6423687 m!7218104))

(assert (=> d!2013310 d!2014120))

(declare-fun d!2014122 () Bool)

(declare-fun c!1173719 () Bool)

(assert (=> d!2014122 (= c!1173719 ((_ is Nil!65150) (_1!36607 lt!2377178)))))

(declare-fun e!3897390 () (InoxSet C!32920))

(assert (=> d!2014122 (= (content!12363 (_1!36607 lt!2377178)) e!3897390)))

(declare-fun b!6423688 () Bool)

(assert (=> b!6423688 (= e!3897390 ((as const (Array C!32920 Bool)) false))))

(declare-fun b!6423689 () Bool)

(assert (=> b!6423689 (= e!3897390 ((_ map or) (store ((as const (Array C!32920 Bool)) false) (h!71598 (_1!36607 lt!2377178)) true) (content!12363 (t!378888 (_1!36607 lt!2377178)))))))

(assert (= (and d!2014122 c!1173719) b!6423688))

(assert (= (and d!2014122 (not c!1173719)) b!6423689))

(declare-fun m!7218106 () Bool)

(assert (=> b!6423689 m!7218106))

(assert (=> b!6423689 m!7217932))

(assert (=> d!2013310 d!2014122))

(declare-fun d!2014124 () Bool)

(declare-fun c!1173720 () Bool)

(assert (=> d!2014124 (= c!1173720 ((_ is Nil!65150) (_2!36607 lt!2377178)))))

(declare-fun e!3897391 () (InoxSet C!32920))

(assert (=> d!2014124 (= (content!12363 (_2!36607 lt!2377178)) e!3897391)))

(declare-fun b!6423690 () Bool)

(assert (=> b!6423690 (= e!3897391 ((as const (Array C!32920 Bool)) false))))

(declare-fun b!6423691 () Bool)

(assert (=> b!6423691 (= e!3897391 ((_ map or) (store ((as const (Array C!32920 Bool)) false) (h!71598 (_2!36607 lt!2377178)) true) (content!12363 (t!378888 (_2!36607 lt!2377178)))))))

(assert (= (and d!2014124 c!1173720) b!6423690))

(assert (= (and d!2014124 (not c!1173720)) b!6423691))

(declare-fun m!7218108 () Bool)

(assert (=> b!6423691 m!7218108))

(declare-fun m!7218110 () Bool)

(assert (=> b!6423691 m!7218110))

(assert (=> d!2013310 d!2014124))

(declare-fun b!6423692 () Bool)

(declare-fun e!3897393 () (InoxSet Context!11418))

(assert (=> b!6423692 (= e!3897393 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2014126 () Bool)

(declare-fun c!1173722 () Bool)

(declare-fun e!3897392 () Bool)

(assert (=> d!2014126 (= c!1173722 e!3897392)))

(declare-fun res!2640032 () Bool)

(assert (=> d!2014126 (=> (not res!2640032) (not e!3897392))))

(assert (=> d!2014126 (= res!2640032 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377171))))))))

(declare-fun e!3897394 () (InoxSet Context!11418))

(assert (=> d!2014126 (= (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 lt!2377171))) (h!71598 s!2326)) e!3897394)))

(declare-fun call!552457 () (InoxSet Context!11418))

(declare-fun b!6423693 () Bool)

(assert (=> b!6423693 (= e!3897394 ((_ map or) call!552457 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377171)))))) (h!71598 s!2326))))))

(declare-fun bm!552452 () Bool)

(assert (=> bm!552452 (= call!552457 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377171))))) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377171)))))) (h!71598 s!2326)))))

(declare-fun b!6423694 () Bool)

(assert (=> b!6423694 (= e!3897392 (nullable!6318 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377171)))))))))

(declare-fun b!6423695 () Bool)

(assert (=> b!6423695 (= e!3897394 e!3897393)))

(declare-fun c!1173721 () Bool)

(assert (=> b!6423695 (= c!1173721 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377171))))))))

(declare-fun b!6423696 () Bool)

(assert (=> b!6423696 (= e!3897393 call!552457)))

(assert (= (and d!2014126 res!2640032) b!6423694))

(assert (= (and d!2014126 c!1173722) b!6423693))

(assert (= (and d!2014126 (not c!1173722)) b!6423695))

(assert (= (and b!6423695 c!1173721) b!6423696))

(assert (= (and b!6423695 (not c!1173721)) b!6423692))

(assert (= (or b!6423693 b!6423696) bm!552452))

(declare-fun m!7218112 () Bool)

(assert (=> b!6423693 m!7218112))

(declare-fun m!7218114 () Bool)

(assert (=> bm!552452 m!7218114))

(declare-fun m!7218116 () Bool)

(assert (=> b!6423694 m!7218116))

(assert (=> b!6422057 d!2014126))

(declare-fun b!6423697 () Bool)

(declare-fun e!3897395 () Bool)

(declare-fun e!3897399 () Bool)

(assert (=> b!6423697 (= e!3897395 e!3897399)))

(declare-fun c!1173723 () Bool)

(assert (=> b!6423697 (= c!1173723 ((_ is Union!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun b!6423698 () Bool)

(declare-fun e!3897398 () Bool)

(assert (=> b!6423698 (= e!3897399 e!3897398)))

(declare-fun res!2640037 () Bool)

(declare-fun call!552458 () Bool)

(assert (=> b!6423698 (= res!2640037 call!552458)))

(assert (=> b!6423698 (=> res!2640037 e!3897398)))

(declare-fun b!6423699 () Bool)

(declare-fun call!552459 () Bool)

(assert (=> b!6423699 (= e!3897398 call!552459)))

(declare-fun d!2014128 () Bool)

(declare-fun res!2640036 () Bool)

(declare-fun e!3897397 () Bool)

(assert (=> d!2014128 (=> res!2640036 e!3897397)))

(assert (=> d!2014128 (= res!2640036 ((_ is EmptyExpr!16325) (reg!16654 (regOne!33162 r!7292))))))

(assert (=> d!2014128 (= (nullableFct!2264 (reg!16654 (regOne!33162 r!7292))) e!3897397)))

(declare-fun bm!552453 () Bool)

(assert (=> bm!552453 (= call!552459 (nullable!6318 (ite c!1173723 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regTwo!33162 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun b!6423700 () Bool)

(declare-fun e!3897400 () Bool)

(assert (=> b!6423700 (= e!3897400 call!552459)))

(declare-fun b!6423701 () Bool)

(declare-fun e!3897396 () Bool)

(assert (=> b!6423701 (= e!3897397 e!3897396)))

(declare-fun res!2640034 () Bool)

(assert (=> b!6423701 (=> (not res!2640034) (not e!3897396))))

(assert (=> b!6423701 (= res!2640034 (and (not ((_ is EmptyLang!16325) (reg!16654 (regOne!33162 r!7292)))) (not ((_ is ElementMatch!16325) (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun b!6423702 () Bool)

(assert (=> b!6423702 (= e!3897399 e!3897400)))

(declare-fun res!2640033 () Bool)

(assert (=> b!6423702 (= res!2640033 call!552458)))

(assert (=> b!6423702 (=> (not res!2640033) (not e!3897400))))

(declare-fun b!6423703 () Bool)

(assert (=> b!6423703 (= e!3897396 e!3897395)))

(declare-fun res!2640035 () Bool)

(assert (=> b!6423703 (=> res!2640035 e!3897395)))

(assert (=> b!6423703 (= res!2640035 ((_ is Star!16325) (reg!16654 (regOne!33162 r!7292))))))

(declare-fun bm!552454 () Bool)

(assert (=> bm!552454 (= call!552458 (nullable!6318 (ite c!1173723 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))))))

(assert (= (and d!2014128 (not res!2640036)) b!6423701))

(assert (= (and b!6423701 res!2640034) b!6423703))

(assert (= (and b!6423703 (not res!2640035)) b!6423697))

(assert (= (and b!6423697 c!1173723) b!6423698))

(assert (= (and b!6423697 (not c!1173723)) b!6423702))

(assert (= (and b!6423698 (not res!2640037)) b!6423699))

(assert (= (and b!6423702 res!2640033) b!6423700))

(assert (= (or b!6423699 b!6423700) bm!552453))

(assert (= (or b!6423698 b!6423702) bm!552454))

(declare-fun m!7218118 () Bool)

(assert (=> bm!552453 m!7218118))

(declare-fun m!7218120 () Bool)

(assert (=> bm!552454 m!7218120))

(assert (=> d!2013390 d!2014128))

(declare-fun b!6423704 () Bool)

(declare-fun e!3897404 () Bool)

(declare-fun call!552461 () Bool)

(assert (=> b!6423704 (= e!3897404 call!552461)))

(declare-fun c!1173724 () Bool)

(declare-fun bm!552455 () Bool)

(declare-fun c!1173725 () Bool)

(assert (=> bm!552455 (= call!552461 (validRegex!8061 (ite c!1173725 (reg!16654 (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))) (ite c!1173724 (regOne!33163 (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))) (regOne!33162 (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))))))))))

(declare-fun d!2014130 () Bool)

(declare-fun res!2640040 () Bool)

(declare-fun e!3897407 () Bool)

(assert (=> d!2014130 (=> res!2640040 e!3897407)))

(assert (=> d!2014130 (= res!2640040 ((_ is ElementMatch!16325) (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))))

(assert (=> d!2014130 (= (validRegex!8061 (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))) e!3897407)))

(declare-fun bm!552456 () Bool)

(declare-fun call!552462 () Bool)

(assert (=> bm!552456 (= call!552462 call!552461)))

(declare-fun b!6423705 () Bool)

(declare-fun e!3897405 () Bool)

(declare-fun call!552460 () Bool)

(assert (=> b!6423705 (= e!3897405 call!552460)))

(declare-fun b!6423706 () Bool)

(declare-fun res!2640038 () Bool)

(declare-fun e!3897401 () Bool)

(assert (=> b!6423706 (=> res!2640038 e!3897401)))

(assert (=> b!6423706 (= res!2640038 (not ((_ is Concat!25170) (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))))))))

(declare-fun e!3897402 () Bool)

(assert (=> b!6423706 (= e!3897402 e!3897401)))

(declare-fun b!6423707 () Bool)

(declare-fun e!3897406 () Bool)

(assert (=> b!6423707 (= e!3897407 e!3897406)))

(assert (=> b!6423707 (= c!1173725 ((_ is Star!16325) (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))))

(declare-fun b!6423708 () Bool)

(assert (=> b!6423708 (= e!3897406 e!3897404)))

(declare-fun res!2640041 () Bool)

(assert (=> b!6423708 (= res!2640041 (not (nullable!6318 (reg!16654 (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))))))

(assert (=> b!6423708 (=> (not res!2640041) (not e!3897404))))

(declare-fun b!6423709 () Bool)

(assert (=> b!6423709 (= e!3897406 e!3897402)))

(assert (=> b!6423709 (= c!1173724 ((_ is Union!16325) (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))))

(declare-fun b!6423710 () Bool)

(declare-fun e!3897403 () Bool)

(assert (=> b!6423710 (= e!3897403 call!552460)))

(declare-fun b!6423711 () Bool)

(declare-fun res!2640039 () Bool)

(assert (=> b!6423711 (=> (not res!2640039) (not e!3897403))))

(assert (=> b!6423711 (= res!2640039 call!552462)))

(assert (=> b!6423711 (= e!3897402 e!3897403)))

(declare-fun bm!552457 () Bool)

(assert (=> bm!552457 (= call!552460 (validRegex!8061 (ite c!1173724 (regTwo!33163 (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))) (regTwo!33162 (ite c!1173292 (reg!16654 (reg!16654 (regOne!33162 r!7292))) (ite c!1173291 (regOne!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))))))

(declare-fun b!6423712 () Bool)

(assert (=> b!6423712 (= e!3897401 e!3897405)))

(declare-fun res!2640042 () Bool)

(assert (=> b!6423712 (=> (not res!2640042) (not e!3897405))))

(assert (=> b!6423712 (= res!2640042 call!552462)))

(assert (= (and d!2014130 (not res!2640040)) b!6423707))

(assert (= (and b!6423707 c!1173725) b!6423708))

(assert (= (and b!6423707 (not c!1173725)) b!6423709))

(assert (= (and b!6423708 res!2640041) b!6423704))

(assert (= (and b!6423709 c!1173724) b!6423711))

(assert (= (and b!6423709 (not c!1173724)) b!6423706))

(assert (= (and b!6423711 res!2640039) b!6423710))

(assert (= (and b!6423706 (not res!2640038)) b!6423712))

(assert (= (and b!6423712 res!2640042) b!6423705))

(assert (= (or b!6423710 b!6423705) bm!552457))

(assert (= (or b!6423711 b!6423712) bm!552456))

(assert (= (or b!6423704 bm!552456) bm!552455))

(declare-fun m!7218122 () Bool)

(assert (=> bm!552455 m!7218122))

(declare-fun m!7218124 () Bool)

(assert (=> b!6423708 m!7218124))

(declare-fun m!7218126 () Bool)

(assert (=> bm!552457 m!7218126))

(assert (=> bm!552182 d!2014130))

(declare-fun b!6423713 () Bool)

(declare-fun e!3897409 () (InoxSet Context!11418))

(assert (=> b!6423713 (= e!3897409 ((as const (Array Context!11418 Bool)) false))))

(declare-fun d!2014132 () Bool)

(declare-fun c!1173727 () Bool)

(declare-fun e!3897408 () Bool)

(assert (=> d!2014132 (= c!1173727 e!3897408)))

(declare-fun res!2640043 () Bool)

(assert (=> d!2014132 (=> (not res!2640043) (not e!3897408))))

(assert (=> d!2014132 (= res!2640043 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377181))))))))

(declare-fun e!3897410 () (InoxSet Context!11418))

(assert (=> d!2014132 (= (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 lt!2377181))) (h!71598 s!2326)) e!3897410)))

(declare-fun b!6423714 () Bool)

(declare-fun call!552463 () (InoxSet Context!11418))

(assert (=> b!6423714 (= e!3897410 ((_ map or) call!552463 (derivationStepZipperUp!1499 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377181)))))) (h!71598 s!2326))))))

(declare-fun bm!552458 () Bool)

(assert (=> bm!552458 (= call!552463 (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377181))))) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377181)))))) (h!71598 s!2326)))))

(declare-fun b!6423715 () Bool)

(assert (=> b!6423715 (= e!3897408 (nullable!6318 (h!71599 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377181)))))))))

(declare-fun b!6423716 () Bool)

(assert (=> b!6423716 (= e!3897410 e!3897409)))

(declare-fun c!1173726 () Bool)

(assert (=> b!6423716 (= c!1173726 ((_ is Cons!65151) (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377181))))))))

(declare-fun b!6423717 () Bool)

(assert (=> b!6423717 (= e!3897409 call!552463)))

(assert (= (and d!2014132 res!2640043) b!6423715))

(assert (= (and d!2014132 c!1173727) b!6423714))

(assert (= (and d!2014132 (not c!1173727)) b!6423716))

(assert (= (and b!6423716 c!1173726) b!6423717))

(assert (= (and b!6423716 (not c!1173726)) b!6423713))

(assert (= (or b!6423714 b!6423717) bm!552458))

(declare-fun m!7218128 () Bool)

(assert (=> b!6423714 m!7218128))

(declare-fun m!7218130 () Bool)

(assert (=> bm!552458 m!7218130))

(declare-fun m!7218132 () Bool)

(assert (=> b!6423715 m!7218132))

(assert (=> b!6422206 d!2014132))

(declare-fun d!2014134 () Bool)

(declare-fun res!2640044 () Bool)

(declare-fun e!3897411 () Bool)

(assert (=> d!2014134 (=> res!2640044 e!3897411)))

(assert (=> d!2014134 (= res!2640044 ((_ is Nil!65151) (exprs!6209 setElem!43834)))))

(assert (=> d!2014134 (= (forall!15515 (exprs!6209 setElem!43834) lambda!354889) e!3897411)))

(declare-fun b!6423718 () Bool)

(declare-fun e!3897412 () Bool)

(assert (=> b!6423718 (= e!3897411 e!3897412)))

(declare-fun res!2640045 () Bool)

(assert (=> b!6423718 (=> (not res!2640045) (not e!3897412))))

(assert (=> b!6423718 (= res!2640045 (dynLambda!25882 lambda!354889 (h!71599 (exprs!6209 setElem!43834))))))

(declare-fun b!6423719 () Bool)

(assert (=> b!6423719 (= e!3897412 (forall!15515 (t!378889 (exprs!6209 setElem!43834)) lambda!354889))))

(assert (= (and d!2014134 (not res!2640044)) b!6423718))

(assert (= (and b!6423718 res!2640045) b!6423719))

(declare-fun b_lambda!244155 () Bool)

(assert (=> (not b_lambda!244155) (not b!6423718)))

(declare-fun m!7218134 () Bool)

(assert (=> b!6423718 m!7218134))

(declare-fun m!7218136 () Bool)

(assert (=> b!6423719 m!7218136))

(assert (=> d!2013456 d!2014134))

(assert (=> d!2013446 d!2013440))

(assert (=> d!2013446 d!2013902))

(assert (=> d!2013446 d!2013450))

(declare-fun d!2014136 () Bool)

(assert (=> d!2014136 (= (Exists!3395 lambda!354886) (choose!47719 lambda!354886))))

(declare-fun bs!1615543 () Bool)

(assert (= bs!1615543 d!2014136))

(declare-fun m!7218138 () Bool)

(assert (=> bs!1615543 m!7218138))

(assert (=> d!2013446 d!2014136))

(declare-fun bs!1615544 () Bool)

(declare-fun d!2014138 () Bool)

(assert (= bs!1615544 (and d!2014138 d!2013890)))

(declare-fun lambda!354972 () Int)

(assert (=> bs!1615544 (= lambda!354972 lambda!354950)))

(declare-fun bs!1615545 () Bool)

(assert (= bs!1615545 (and d!2014138 b!6422181)))

(assert (=> bs!1615545 (not (= lambda!354972 lambda!354890))))

(declare-fun bs!1615546 () Bool)

(assert (= bs!1615546 (and d!2014138 b!6421798)))

(assert (=> bs!1615546 (not (= lambda!354972 lambda!354870))))

(declare-fun bs!1615547 () Bool)

(assert (= bs!1615547 (and d!2014138 d!2013302)))

(assert (=> bs!1615547 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354972 lambda!354848))))

(declare-fun bs!1615548 () Bool)

(assert (= bs!1615548 (and d!2014138 b!6423644)))

(assert (=> bs!1615548 (not (= lambda!354972 lambda!354971))))

(declare-fun bs!1615549 () Bool)

(assert (= bs!1615549 (and d!2014138 b!6423294)))

(assert (=> bs!1615549 (not (= lambda!354972 lambda!354956))))

(declare-fun bs!1615550 () Bool)

(assert (= bs!1615550 (and d!2014138 b!6423649)))

(assert (=> bs!1615550 (not (= lambda!354972 lambda!354970))))

(declare-fun bs!1615551 () Bool)

(assert (= bs!1615551 (and d!2014138 d!2013448)))

(assert (=> bs!1615551 (not (= lambda!354972 lambda!354888))))

(declare-fun bs!1615552 () Bool)

(assert (= bs!1615552 (and d!2014138 b!6421803)))

(assert (=> bs!1615552 (not (= lambda!354972 lambda!354869))))

(declare-fun bs!1615553 () Bool)

(assert (= bs!1615553 (and d!2014138 d!2013426)))

(assert (=> bs!1615553 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354972 lambda!354883))))

(declare-fun bs!1615554 () Bool)

(assert (= bs!1615554 (and d!2014138 b!6422176)))

(assert (=> bs!1615554 (not (= lambda!354972 lambda!354891))))

(declare-fun bs!1615555 () Bool)

(assert (= bs!1615555 (and d!2014138 b!6423289)))

(assert (=> bs!1615555 (not (= lambda!354972 lambda!354957))))

(assert (=> bs!1615551 (= lambda!354972 lambda!354887)))

(declare-fun bs!1615556 () Bool)

(assert (= bs!1615556 (and d!2014138 d!2013318)))

(assert (=> bs!1615556 (not (= lambda!354972 lambda!354861))))

(declare-fun bs!1615557 () Bool)

(assert (= bs!1615557 (and d!2014138 b!6421294)))

(assert (=> bs!1615557 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354972 lambda!354817))))

(declare-fun bs!1615558 () Bool)

(assert (= bs!1615558 (and d!2014138 b!6421303)))

(assert (=> bs!1615558 (not (= lambda!354972 lambda!354815))))

(declare-fun bs!1615559 () Bool)

(assert (= bs!1615559 (and d!2014138 d!2014082)))

(assert (=> bs!1615559 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354972 lambda!354966))))

(declare-fun bs!1615560 () Bool)

(assert (= bs!1615560 (and d!2014138 b!6422121)))

(assert (=> bs!1615560 (not (= lambda!354972 lambda!354885))))

(assert (=> bs!1615556 (= (= (regOne!33162 r!7292) lt!2377164) (= lambda!354972 lambda!354860))))

(assert (=> bs!1615558 (= lambda!354972 lambda!354814)))

(assert (=> bs!1615557 (not (= lambda!354972 lambda!354818))))

(assert (=> bs!1615544 (not (= lambda!354972 lambda!354951))))

(declare-fun bs!1615561 () Bool)

(assert (= bs!1615561 (and d!2014138 d!2013446)))

(assert (=> bs!1615561 (= lambda!354972 lambda!354886)))

(declare-fun bs!1615562 () Bool)

(assert (= bs!1615562 (and d!2014138 b!6421322)))

(assert (=> bs!1615562 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 r!7292) (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354972 lambda!354819))))

(declare-fun bs!1615563 () Bool)

(assert (= bs!1615563 (and d!2014138 b!6422126)))

(assert (=> bs!1615563 (not (= lambda!354972 lambda!354884))))

(assert (=> d!2014138 true))

(assert (=> d!2014138 true))

(assert (=> d!2014138 true))

(assert (=> d!2014138 (= (isDefined!12919 (findConcatSeparation!2630 (regOne!33162 r!7292) (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326)) (Exists!3395 lambda!354972))))

(assert (=> d!2014138 true))

(declare-fun _$89!2666 () Unit!158631)

(assert (=> d!2014138 (= (choose!47720 (regOne!33162 r!7292) (regTwo!33162 r!7292) s!2326) _$89!2666)))

(declare-fun bs!1615564 () Bool)

(assert (= bs!1615564 d!2014138))

(assert (=> bs!1615564 m!7215850))

(assert (=> bs!1615564 m!7215850))

(assert (=> bs!1615564 m!7215852))

(declare-fun m!7218140 () Bool)

(assert (=> bs!1615564 m!7218140))

(assert (=> d!2013446 d!2014138))

(declare-fun d!2014140 () Bool)

(assert (=> d!2014140 (= (isEmpty!37308 (t!378889 (unfocusZipperList!1746 zl!343))) ((_ is Nil!65151) (t!378889 (unfocusZipperList!1746 zl!343))))))

(assert (=> b!6422231 d!2014140))

(assert (=> b!6422133 d!2014030))

(declare-fun b!6423720 () Bool)

(declare-fun e!3897416 () Bool)

(declare-fun call!552465 () Bool)

(assert (=> b!6423720 (= e!3897416 call!552465)))

(declare-fun c!1173729 () Bool)

(declare-fun c!1173728 () Bool)

(declare-fun bm!552459 () Bool)

(assert (=> bm!552459 (= call!552465 (validRegex!8061 (ite c!1173729 (reg!16654 lt!2377307) (ite c!1173728 (regOne!33163 lt!2377307) (regOne!33162 lt!2377307)))))))

(declare-fun d!2014142 () Bool)

(declare-fun res!2640048 () Bool)

(declare-fun e!3897419 () Bool)

(assert (=> d!2014142 (=> res!2640048 e!3897419)))

(assert (=> d!2014142 (= res!2640048 ((_ is ElementMatch!16325) lt!2377307))))

(assert (=> d!2014142 (= (validRegex!8061 lt!2377307) e!3897419)))

(declare-fun bm!552460 () Bool)

(declare-fun call!552466 () Bool)

(assert (=> bm!552460 (= call!552466 call!552465)))

(declare-fun b!6423721 () Bool)

(declare-fun e!3897417 () Bool)

(declare-fun call!552464 () Bool)

(assert (=> b!6423721 (= e!3897417 call!552464)))

(declare-fun b!6423722 () Bool)

(declare-fun res!2640046 () Bool)

(declare-fun e!3897413 () Bool)

(assert (=> b!6423722 (=> res!2640046 e!3897413)))

(assert (=> b!6423722 (= res!2640046 (not ((_ is Concat!25170) lt!2377307)))))

(declare-fun e!3897414 () Bool)

(assert (=> b!6423722 (= e!3897414 e!3897413)))

(declare-fun b!6423723 () Bool)

(declare-fun e!3897418 () Bool)

(assert (=> b!6423723 (= e!3897419 e!3897418)))

(assert (=> b!6423723 (= c!1173729 ((_ is Star!16325) lt!2377307))))

(declare-fun b!6423724 () Bool)

(assert (=> b!6423724 (= e!3897418 e!3897416)))

(declare-fun res!2640049 () Bool)

(assert (=> b!6423724 (= res!2640049 (not (nullable!6318 (reg!16654 lt!2377307))))))

(assert (=> b!6423724 (=> (not res!2640049) (not e!3897416))))

(declare-fun b!6423725 () Bool)

(assert (=> b!6423725 (= e!3897418 e!3897414)))

(assert (=> b!6423725 (= c!1173728 ((_ is Union!16325) lt!2377307))))

(declare-fun b!6423726 () Bool)

(declare-fun e!3897415 () Bool)

(assert (=> b!6423726 (= e!3897415 call!552464)))

(declare-fun b!6423727 () Bool)

(declare-fun res!2640047 () Bool)

(assert (=> b!6423727 (=> (not res!2640047) (not e!3897415))))

(assert (=> b!6423727 (= res!2640047 call!552466)))

(assert (=> b!6423727 (= e!3897414 e!3897415)))

(declare-fun bm!552461 () Bool)

(assert (=> bm!552461 (= call!552464 (validRegex!8061 (ite c!1173728 (regTwo!33163 lt!2377307) (regTwo!33162 lt!2377307))))))

(declare-fun b!6423728 () Bool)

(assert (=> b!6423728 (= e!3897413 e!3897417)))

(declare-fun res!2640050 () Bool)

(assert (=> b!6423728 (=> (not res!2640050) (not e!3897417))))

(assert (=> b!6423728 (= res!2640050 call!552466)))

(assert (= (and d!2014142 (not res!2640048)) b!6423723))

(assert (= (and b!6423723 c!1173729) b!6423724))

(assert (= (and b!6423723 (not c!1173729)) b!6423725))

(assert (= (and b!6423724 res!2640049) b!6423720))

(assert (= (and b!6423725 c!1173728) b!6423727))

(assert (= (and b!6423725 (not c!1173728)) b!6423722))

(assert (= (and b!6423727 res!2640047) b!6423726))

(assert (= (and b!6423722 (not res!2640046)) b!6423728))

(assert (= (and b!6423728 res!2640050) b!6423721))

(assert (= (or b!6423726 b!6423721) bm!552461))

(assert (= (or b!6423727 b!6423728) bm!552460))

(assert (= (or b!6423720 bm!552460) bm!552459))

(declare-fun m!7218142 () Bool)

(assert (=> bm!552459 m!7218142))

(declare-fun m!7218144 () Bool)

(assert (=> b!6423724 m!7218144))

(declare-fun m!7218146 () Bool)

(assert (=> bm!552461 m!7218146))

(assert (=> d!2013412 d!2014142))

(declare-fun d!2014144 () Bool)

(declare-fun res!2640051 () Bool)

(declare-fun e!3897420 () Bool)

(assert (=> d!2014144 (=> res!2640051 e!3897420)))

(assert (=> d!2014144 (= res!2640051 ((_ is Nil!65151) (exprs!6209 (h!71600 zl!343))))))

(assert (=> d!2014144 (= (forall!15515 (exprs!6209 (h!71600 zl!343)) lambda!354879) e!3897420)))

(declare-fun b!6423729 () Bool)

(declare-fun e!3897421 () Bool)

(assert (=> b!6423729 (= e!3897420 e!3897421)))

(declare-fun res!2640052 () Bool)

(assert (=> b!6423729 (=> (not res!2640052) (not e!3897421))))

(assert (=> b!6423729 (= res!2640052 (dynLambda!25882 lambda!354879 (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6423730 () Bool)

(assert (=> b!6423730 (= e!3897421 (forall!15515 (t!378889 (exprs!6209 (h!71600 zl!343))) lambda!354879))))

(assert (= (and d!2014144 (not res!2640051)) b!6423729))

(assert (= (and b!6423729 res!2640052) b!6423730))

(declare-fun b_lambda!244157 () Bool)

(assert (=> (not b_lambda!244157) (not b!6423729)))

(declare-fun m!7218148 () Bool)

(assert (=> b!6423729 m!7218148))

(declare-fun m!7218150 () Bool)

(assert (=> b!6423730 m!7218150))

(assert (=> d!2013412 d!2014144))

(declare-fun bs!1615565 () Bool)

(declare-fun d!2014146 () Bool)

(assert (= bs!1615565 (and d!2014146 d!2013922)))

(declare-fun lambda!354973 () Int)

(assert (=> bs!1615565 (= lambda!354973 lambda!354954)))

(declare-fun bs!1615566 () Bool)

(assert (= bs!1615566 (and d!2014146 d!2014044)))

(assert (=> bs!1615566 (= lambda!354973 lambda!354962)))

(declare-fun bs!1615567 () Bool)

(assert (= bs!1615567 (and d!2014146 d!2014100)))

(assert (=> bs!1615567 (= lambda!354973 lambda!354969)))

(assert (=> d!2014146 (= (nullableZipper!2090 lt!2377180) (exists!2599 lt!2377180 lambda!354973))))

(declare-fun bs!1615568 () Bool)

(assert (= bs!1615568 d!2014146))

(declare-fun m!7218152 () Bool)

(assert (=> bs!1615568 m!7218152))

(assert (=> b!6422246 d!2014146))

(declare-fun d!2014148 () Bool)

(assert (=> d!2014148 (= (nullable!6318 (h!71599 (exprs!6209 lt!2377192))) (nullableFct!2264 (h!71599 (exprs!6209 lt!2377192))))))

(declare-fun bs!1615569 () Bool)

(assert (= bs!1615569 d!2014148))

(declare-fun m!7218154 () Bool)

(assert (=> bs!1615569 m!7218154))

(assert (=> b!6422018 d!2014148))

(declare-fun d!2014150 () Bool)

(assert (=> d!2014150 (= (nullable!6318 (h!71599 (exprs!6209 lt!2377188))) (nullableFct!2264 (h!71599 (exprs!6209 lt!2377188))))))

(declare-fun bs!1615570 () Bool)

(assert (= bs!1615570 d!2014150))

(declare-fun m!7218156 () Bool)

(assert (=> bs!1615570 m!7218156))

(assert (=> b!6422023 d!2014150))

(assert (=> bm!552174 d!2013464))

(declare-fun d!2014152 () Bool)

(assert (=> d!2014152 (= (head!13142 (unfocusZipperList!1746 zl!343)) (h!71599 (unfocusZipperList!1746 zl!343)))))

(assert (=> b!6422235 d!2014152))

(declare-fun d!2014154 () Bool)

(assert (=> d!2014154 (= (Exists!3395 lambda!354860) (choose!47719 lambda!354860))))

(declare-fun bs!1615571 () Bool)

(assert (= bs!1615571 d!2014154))

(declare-fun m!7218158 () Bool)

(assert (=> bs!1615571 m!7218158))

(assert (=> d!2013318 d!2014154))

(declare-fun d!2014156 () Bool)

(assert (=> d!2014156 (= (Exists!3395 lambda!354861) (choose!47719 lambda!354861))))

(declare-fun bs!1615572 () Bool)

(assert (= bs!1615572 d!2014156))

(declare-fun m!7218160 () Bool)

(assert (=> bs!1615572 m!7218160))

(assert (=> d!2013318 d!2014156))

(declare-fun bs!1615573 () Bool)

(declare-fun d!2014158 () Bool)

(assert (= bs!1615573 (and d!2014158 d!2013890)))

(declare-fun lambda!354974 () Int)

(assert (=> bs!1615573 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354974 lambda!354950))))

(declare-fun bs!1615574 () Bool)

(assert (= bs!1615574 (and d!2014158 b!6422181)))

(assert (=> bs!1615574 (not (= lambda!354974 lambda!354890))))

(declare-fun bs!1615575 () Bool)

(assert (= bs!1615575 (and d!2014158 b!6421798)))

(assert (=> bs!1615575 (not (= lambda!354974 lambda!354870))))

(declare-fun bs!1615576 () Bool)

(assert (= bs!1615576 (and d!2014158 d!2013302)))

(assert (=> bs!1615576 (= lambda!354974 lambda!354848)))

(declare-fun bs!1615577 () Bool)

(assert (= bs!1615577 (and d!2014158 b!6423644)))

(assert (=> bs!1615577 (not (= lambda!354974 lambda!354971))))

(declare-fun bs!1615578 () Bool)

(assert (= bs!1615578 (and d!2014158 b!6423294)))

(assert (=> bs!1615578 (not (= lambda!354974 lambda!354956))))

(declare-fun bs!1615579 () Bool)

(assert (= bs!1615579 (and d!2014158 b!6423649)))

(assert (=> bs!1615579 (not (= lambda!354974 lambda!354970))))

(declare-fun bs!1615580 () Bool)

(assert (= bs!1615580 (and d!2014158 d!2014138)))

(assert (=> bs!1615580 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354974 lambda!354972))))

(declare-fun bs!1615581 () Bool)

(assert (= bs!1615581 (and d!2014158 d!2013448)))

(assert (=> bs!1615581 (not (= lambda!354974 lambda!354888))))

(declare-fun bs!1615582 () Bool)

(assert (= bs!1615582 (and d!2014158 b!6421803)))

(assert (=> bs!1615582 (not (= lambda!354974 lambda!354869))))

(declare-fun bs!1615583 () Bool)

(assert (= bs!1615583 (and d!2014158 d!2013426)))

(assert (=> bs!1615583 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354974 lambda!354883))))

(declare-fun bs!1615584 () Bool)

(assert (= bs!1615584 (and d!2014158 b!6422176)))

(assert (=> bs!1615584 (not (= lambda!354974 lambda!354891))))

(declare-fun bs!1615585 () Bool)

(assert (= bs!1615585 (and d!2014158 b!6423289)))

(assert (=> bs!1615585 (not (= lambda!354974 lambda!354957))))

(assert (=> bs!1615581 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354974 lambda!354887))))

(declare-fun bs!1615586 () Bool)

(assert (= bs!1615586 (and d!2014158 d!2013318)))

(assert (=> bs!1615586 (not (= lambda!354974 lambda!354861))))

(declare-fun bs!1615587 () Bool)

(assert (= bs!1615587 (and d!2014158 b!6421294)))

(assert (=> bs!1615587 (= lambda!354974 lambda!354817)))

(declare-fun bs!1615588 () Bool)

(assert (= bs!1615588 (and d!2014158 b!6421303)))

(assert (=> bs!1615588 (not (= lambda!354974 lambda!354815))))

(declare-fun bs!1615589 () Bool)

(assert (= bs!1615589 (and d!2014158 d!2014082)))

(assert (=> bs!1615589 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354974 lambda!354966))))

(declare-fun bs!1615590 () Bool)

(assert (= bs!1615590 (and d!2014158 b!6422121)))

(assert (=> bs!1615590 (not (= lambda!354974 lambda!354885))))

(assert (=> bs!1615586 (= lambda!354974 lambda!354860)))

(assert (=> bs!1615588 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354974 lambda!354814))))

(assert (=> bs!1615587 (not (= lambda!354974 lambda!354818))))

(assert (=> bs!1615573 (not (= lambda!354974 lambda!354951))))

(declare-fun bs!1615591 () Bool)

(assert (= bs!1615591 (and d!2014158 d!2013446)))

(assert (=> bs!1615591 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354974 lambda!354886))))

(declare-fun bs!1615592 () Bool)

(assert (= bs!1615592 (and d!2014158 b!6421322)))

(assert (=> bs!1615592 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354974 lambda!354819))))

(declare-fun bs!1615593 () Bool)

(assert (= bs!1615593 (and d!2014158 b!6422126)))

(assert (=> bs!1615593 (not (= lambda!354974 lambda!354884))))

(assert (=> d!2014158 true))

(assert (=> d!2014158 true))

(assert (=> d!2014158 true))

(declare-fun lambda!354975 () Int)

(assert (=> bs!1615573 (not (= lambda!354975 lambda!354950))))

(assert (=> bs!1615574 (not (= lambda!354975 lambda!354890))))

(assert (=> bs!1615575 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354975 lambda!354870))))

(assert (=> bs!1615576 (not (= lambda!354975 lambda!354848))))

(assert (=> bs!1615577 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (regOne!33162 (regTwo!33163 lt!2377164))) (= (regTwo!33162 r!7292) (regTwo!33162 (regTwo!33163 lt!2377164)))) (= lambda!354975 lambda!354971))))

(assert (=> bs!1615579 (not (= lambda!354975 lambda!354970))))

(assert (=> bs!1615580 (not (= lambda!354975 lambda!354972))))

(assert (=> bs!1615581 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354975 lambda!354888))))

(assert (=> bs!1615582 (not (= lambda!354975 lambda!354869))))

(assert (=> bs!1615583 (not (= lambda!354975 lambda!354883))))

(assert (=> bs!1615584 (= (and (= lt!2377164 (regOne!33162 lt!2377183)) (= (regTwo!33162 r!7292) (regTwo!33162 lt!2377183))) (= lambda!354975 lambda!354891))))

(assert (=> bs!1615585 (= (and (= lt!2377164 (regOne!33162 (regOne!33163 r!7292))) (= (regTwo!33162 r!7292) (regTwo!33162 (regOne!33163 r!7292)))) (= lambda!354975 lambda!354957))))

(assert (=> bs!1615581 (not (= lambda!354975 lambda!354887))))

(assert (=> bs!1615586 (= lambda!354975 lambda!354861)))

(assert (=> bs!1615587 (not (= lambda!354975 lambda!354817))))

(assert (=> bs!1615588 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354975 lambda!354815))))

(assert (=> bs!1615589 (not (= lambda!354975 lambda!354966))))

(assert (=> bs!1615590 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (regOne!33162 lt!2377164)) (= (regTwo!33162 r!7292) (regTwo!33162 lt!2377164))) (= lambda!354975 lambda!354885))))

(assert (=> bs!1615586 (not (= lambda!354975 lambda!354860))))

(assert (=> bs!1615588 (not (= lambda!354975 lambda!354814))))

(declare-fun bs!1615594 () Bool)

(assert (= bs!1615594 d!2014158))

(assert (=> bs!1615594 (not (= lambda!354975 lambda!354974))))

(assert (=> bs!1615578 (not (= lambda!354975 lambda!354956))))

(assert (=> bs!1615587 (= lambda!354975 lambda!354818)))

(assert (=> bs!1615573 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354975 lambda!354951))))

(assert (=> bs!1615591 (not (= lambda!354975 lambda!354886))))

(assert (=> bs!1615592 (not (= lambda!354975 lambda!354819))))

(assert (=> bs!1615593 (not (= lambda!354975 lambda!354884))))

(assert (=> d!2014158 true))

(assert (=> d!2014158 true))

(assert (=> d!2014158 true))

(assert (=> d!2014158 (= (Exists!3395 lambda!354974) (Exists!3395 lambda!354975))))

(assert (=> d!2014158 true))

(declare-fun _$90!2289 () Unit!158631)

(assert (=> d!2014158 (= (choose!47721 lt!2377164 (regTwo!33162 r!7292) s!2326) _$90!2289)))

(declare-fun m!7218162 () Bool)

(assert (=> bs!1615594 m!7218162))

(declare-fun m!7218164 () Bool)

(assert (=> bs!1615594 m!7218164))

(assert (=> d!2013318 d!2014158))

(assert (=> d!2013318 d!2013914))

(declare-fun b!6423731 () Bool)

(declare-fun res!2640057 () Bool)

(declare-fun e!3897424 () Bool)

(assert (=> b!6423731 (=> res!2640057 e!3897424)))

(declare-fun e!3897422 () Bool)

(assert (=> b!6423731 (= res!2640057 e!3897422)))

(declare-fun res!2640053 () Bool)

(assert (=> b!6423731 (=> (not res!2640053) (not e!3897422))))

(declare-fun lt!2377421 () Bool)

(assert (=> b!6423731 (= res!2640053 lt!2377421)))

(declare-fun b!6423732 () Bool)

(declare-fun res!2640058 () Bool)

(assert (=> b!6423732 (=> (not res!2640058) (not e!3897422))))

(assert (=> b!6423732 (= res!2640058 (isEmpty!37310 (tail!12226 (_2!36607 (get!22571 lt!2377314)))))))

(declare-fun b!6423733 () Bool)

(declare-fun e!3897426 () Bool)

(declare-fun e!3897423 () Bool)

(assert (=> b!6423733 (= e!3897426 e!3897423)))

(declare-fun c!1173732 () Bool)

(assert (=> b!6423733 (= c!1173732 ((_ is EmptyLang!16325) lt!2377164))))

(declare-fun b!6423734 () Bool)

(declare-fun res!2640059 () Bool)

(declare-fun e!3897427 () Bool)

(assert (=> b!6423734 (=> res!2640059 e!3897427)))

(assert (=> b!6423734 (= res!2640059 (not (isEmpty!37310 (tail!12226 (_2!36607 (get!22571 lt!2377314))))))))

(declare-fun d!2014160 () Bool)

(assert (=> d!2014160 e!3897426))

(declare-fun c!1173730 () Bool)

(assert (=> d!2014160 (= c!1173730 ((_ is EmptyExpr!16325) lt!2377164))))

(declare-fun e!3897425 () Bool)

(assert (=> d!2014160 (= lt!2377421 e!3897425)))

(declare-fun c!1173731 () Bool)

(assert (=> d!2014160 (= c!1173731 (isEmpty!37310 (_2!36607 (get!22571 lt!2377314))))))

(assert (=> d!2014160 (validRegex!8061 lt!2377164)))

(assert (=> d!2014160 (= (matchR!8508 lt!2377164 (_2!36607 (get!22571 lt!2377314))) lt!2377421)))

(declare-fun b!6423735 () Bool)

(declare-fun e!3897428 () Bool)

(assert (=> b!6423735 (= e!3897428 e!3897427)))

(declare-fun res!2640056 () Bool)

(assert (=> b!6423735 (=> res!2640056 e!3897427)))

(declare-fun call!552467 () Bool)

(assert (=> b!6423735 (= res!2640056 call!552467)))

(declare-fun b!6423736 () Bool)

(assert (=> b!6423736 (= e!3897427 (not (= (head!13141 (_2!36607 (get!22571 lt!2377314))) (c!1173074 lt!2377164))))))

(declare-fun b!6423737 () Bool)

(declare-fun res!2640055 () Bool)

(assert (=> b!6423737 (=> res!2640055 e!3897424)))

(assert (=> b!6423737 (= res!2640055 (not ((_ is ElementMatch!16325) lt!2377164)))))

(assert (=> b!6423737 (= e!3897423 e!3897424)))

(declare-fun b!6423738 () Bool)

(assert (=> b!6423738 (= e!3897426 (= lt!2377421 call!552467))))

(declare-fun b!6423739 () Bool)

(assert (=> b!6423739 (= e!3897425 (matchR!8508 (derivativeStep!5029 lt!2377164 (head!13141 (_2!36607 (get!22571 lt!2377314)))) (tail!12226 (_2!36607 (get!22571 lt!2377314)))))))

(declare-fun b!6423740 () Bool)

(assert (=> b!6423740 (= e!3897425 (nullable!6318 lt!2377164))))

(declare-fun bm!552462 () Bool)

(assert (=> bm!552462 (= call!552467 (isEmpty!37310 (_2!36607 (get!22571 lt!2377314))))))

(declare-fun b!6423741 () Bool)

(assert (=> b!6423741 (= e!3897422 (= (head!13141 (_2!36607 (get!22571 lt!2377314))) (c!1173074 lt!2377164)))))

(declare-fun b!6423742 () Bool)

(assert (=> b!6423742 (= e!3897423 (not lt!2377421))))

(declare-fun b!6423743 () Bool)

(declare-fun res!2640060 () Bool)

(assert (=> b!6423743 (=> (not res!2640060) (not e!3897422))))

(assert (=> b!6423743 (= res!2640060 (not call!552467))))

(declare-fun b!6423744 () Bool)

(assert (=> b!6423744 (= e!3897424 e!3897428)))

(declare-fun res!2640054 () Bool)

(assert (=> b!6423744 (=> (not res!2640054) (not e!3897428))))

(assert (=> b!6423744 (= res!2640054 (not lt!2377421))))

(assert (= (and d!2014160 c!1173731) b!6423740))

(assert (= (and d!2014160 (not c!1173731)) b!6423739))

(assert (= (and d!2014160 c!1173730) b!6423738))

(assert (= (and d!2014160 (not c!1173730)) b!6423733))

(assert (= (and b!6423733 c!1173732) b!6423742))

(assert (= (and b!6423733 (not c!1173732)) b!6423737))

(assert (= (and b!6423737 (not res!2640055)) b!6423731))

(assert (= (and b!6423731 res!2640053) b!6423743))

(assert (= (and b!6423743 res!2640060) b!6423732))

(assert (= (and b!6423732 res!2640058) b!6423741))

(assert (= (and b!6423731 (not res!2640057)) b!6423744))

(assert (= (and b!6423744 res!2640054) b!6423735))

(assert (= (and b!6423735 (not res!2640056)) b!6423734))

(assert (= (and b!6423734 (not res!2640059)) b!6423736))

(assert (= (or b!6423738 b!6423735 b!6423743) bm!552462))

(declare-fun m!7218166 () Bool)

(assert (=> b!6423732 m!7218166))

(assert (=> b!6423732 m!7218166))

(declare-fun m!7218168 () Bool)

(assert (=> b!6423732 m!7218168))

(assert (=> b!6423734 m!7218166))

(assert (=> b!6423734 m!7218166))

(assert (=> b!6423734 m!7218168))

(declare-fun m!7218170 () Bool)

(assert (=> b!6423741 m!7218170))

(declare-fun m!7218172 () Bool)

(assert (=> bm!552462 m!7218172))

(assert (=> b!6423740 m!7216518))

(assert (=> b!6423739 m!7218170))

(assert (=> b!6423739 m!7218170))

(declare-fun m!7218174 () Bool)

(assert (=> b!6423739 m!7218174))

(assert (=> b!6423739 m!7218166))

(assert (=> b!6423739 m!7218174))

(assert (=> b!6423739 m!7218166))

(declare-fun m!7218176 () Bool)

(assert (=> b!6423739 m!7218176))

(assert (=> b!6423736 m!7218170))

(assert (=> d!2014160 m!7218172))

(assert (=> d!2014160 m!7216180))

(assert (=> b!6422137 d!2014160))

(assert (=> b!6422137 d!2013920))

(declare-fun b!6423745 () Bool)

(declare-fun e!3897432 () Bool)

(declare-fun call!552469 () Bool)

(assert (=> b!6423745 (= e!3897432 call!552469)))

(declare-fun c!1173733 () Bool)

(declare-fun bm!552463 () Bool)

(declare-fun c!1173734 () Bool)

(assert (=> bm!552463 (= call!552469 (validRegex!8061 (ite c!1173734 (reg!16654 lt!2377236) (ite c!1173733 (regOne!33163 lt!2377236) (regOne!33162 lt!2377236)))))))

(declare-fun d!2014162 () Bool)

(declare-fun res!2640063 () Bool)

(declare-fun e!3897435 () Bool)

(assert (=> d!2014162 (=> res!2640063 e!3897435)))

(assert (=> d!2014162 (= res!2640063 ((_ is ElementMatch!16325) lt!2377236))))

(assert (=> d!2014162 (= (validRegex!8061 lt!2377236) e!3897435)))

(declare-fun bm!552464 () Bool)

(declare-fun call!552470 () Bool)

(assert (=> bm!552464 (= call!552470 call!552469)))

(declare-fun b!6423746 () Bool)

(declare-fun e!3897433 () Bool)

(declare-fun call!552468 () Bool)

(assert (=> b!6423746 (= e!3897433 call!552468)))

(declare-fun b!6423747 () Bool)

(declare-fun res!2640061 () Bool)

(declare-fun e!3897429 () Bool)

(assert (=> b!6423747 (=> res!2640061 e!3897429)))

(assert (=> b!6423747 (= res!2640061 (not ((_ is Concat!25170) lt!2377236)))))

(declare-fun e!3897430 () Bool)

(assert (=> b!6423747 (= e!3897430 e!3897429)))

(declare-fun b!6423748 () Bool)

(declare-fun e!3897434 () Bool)

(assert (=> b!6423748 (= e!3897435 e!3897434)))

(assert (=> b!6423748 (= c!1173734 ((_ is Star!16325) lt!2377236))))

(declare-fun b!6423749 () Bool)

(assert (=> b!6423749 (= e!3897434 e!3897432)))

(declare-fun res!2640064 () Bool)

(assert (=> b!6423749 (= res!2640064 (not (nullable!6318 (reg!16654 lt!2377236))))))

(assert (=> b!6423749 (=> (not res!2640064) (not e!3897432))))

(declare-fun b!6423750 () Bool)

(assert (=> b!6423750 (= e!3897434 e!3897430)))

(assert (=> b!6423750 (= c!1173733 ((_ is Union!16325) lt!2377236))))

(declare-fun b!6423751 () Bool)

(declare-fun e!3897431 () Bool)

(assert (=> b!6423751 (= e!3897431 call!552468)))

(declare-fun b!6423752 () Bool)

(declare-fun res!2640062 () Bool)

(assert (=> b!6423752 (=> (not res!2640062) (not e!3897431))))

(assert (=> b!6423752 (= res!2640062 call!552470)))

(assert (=> b!6423752 (= e!3897430 e!3897431)))

(declare-fun bm!552465 () Bool)

(assert (=> bm!552465 (= call!552468 (validRegex!8061 (ite c!1173733 (regTwo!33163 lt!2377236) (regTwo!33162 lt!2377236))))))

(declare-fun b!6423753 () Bool)

(assert (=> b!6423753 (= e!3897429 e!3897433)))

(declare-fun res!2640065 () Bool)

(assert (=> b!6423753 (=> (not res!2640065) (not e!3897433))))

(assert (=> b!6423753 (= res!2640065 call!552470)))

(assert (= (and d!2014162 (not res!2640063)) b!6423748))

(assert (= (and b!6423748 c!1173734) b!6423749))

(assert (= (and b!6423748 (not c!1173734)) b!6423750))

(assert (= (and b!6423749 res!2640064) b!6423745))

(assert (= (and b!6423750 c!1173733) b!6423752))

(assert (= (and b!6423750 (not c!1173733)) b!6423747))

(assert (= (and b!6423752 res!2640062) b!6423751))

(assert (= (and b!6423747 (not res!2640061)) b!6423753))

(assert (= (and b!6423753 res!2640065) b!6423746))

(assert (= (or b!6423751 b!6423746) bm!552465))

(assert (= (or b!6423752 b!6423753) bm!552464))

(assert (= (or b!6423745 bm!552464) bm!552463))

(declare-fun m!7218178 () Bool)

(assert (=> bm!552463 m!7218178))

(declare-fun m!7218180 () Bool)

(assert (=> b!6423749 m!7218180))

(declare-fun m!7218182 () Bool)

(assert (=> bm!552465 m!7218182))

(assert (=> d!2013274 d!2014162))

(assert (=> d!2013274 d!2013482))

(assert (=> d!2013274 d!2013484))

(assert (=> b!6422001 d!2013486))

(assert (=> d!2013418 d!2013414))

(declare-fun d!2014164 () Bool)

(assert (=> d!2014164 (= (flatMap!1830 lt!2377200 lambda!354816) (dynLambda!25880 lambda!354816 lt!2377171))))

(assert (=> d!2014164 true))

(declare-fun _$13!3644 () Unit!158631)

(assert (=> d!2014164 (= (choose!47725 lt!2377200 lt!2377171 lambda!354816) _$13!3644)))

(declare-fun b_lambda!244159 () Bool)

(assert (=> (not b_lambda!244159) (not d!2014164)))

(declare-fun bs!1615595 () Bool)

(assert (= bs!1615595 d!2014164))

(assert (=> bs!1615595 m!7215842))

(assert (=> bs!1615595 m!7216506))

(assert (=> d!2013418 d!2014164))

(assert (=> b!6422202 d!2013470))

(declare-fun b!6423754 () Bool)

(declare-fun e!3897439 () Bool)

(declare-fun call!552472 () Bool)

(assert (=> b!6423754 (= e!3897439 call!552472)))

(declare-fun c!1173735 () Bool)

(declare-fun c!1173736 () Bool)

(declare-fun bm!552466 () Bool)

(assert (=> bm!552466 (= call!552472 (validRegex!8061 (ite c!1173736 (reg!16654 lt!2377296) (ite c!1173735 (regOne!33163 lt!2377296) (regOne!33162 lt!2377296)))))))

(declare-fun d!2014166 () Bool)

(declare-fun res!2640068 () Bool)

(declare-fun e!3897442 () Bool)

(assert (=> d!2014166 (=> res!2640068 e!3897442)))

(assert (=> d!2014166 (= res!2640068 ((_ is ElementMatch!16325) lt!2377296))))

(assert (=> d!2014166 (= (validRegex!8061 lt!2377296) e!3897442)))

(declare-fun bm!552467 () Bool)

(declare-fun call!552473 () Bool)

(assert (=> bm!552467 (= call!552473 call!552472)))

(declare-fun b!6423755 () Bool)

(declare-fun e!3897440 () Bool)

(declare-fun call!552471 () Bool)

(assert (=> b!6423755 (= e!3897440 call!552471)))

(declare-fun b!6423756 () Bool)

(declare-fun res!2640066 () Bool)

(declare-fun e!3897436 () Bool)

(assert (=> b!6423756 (=> res!2640066 e!3897436)))

(assert (=> b!6423756 (= res!2640066 (not ((_ is Concat!25170) lt!2377296)))))

(declare-fun e!3897437 () Bool)

(assert (=> b!6423756 (= e!3897437 e!3897436)))

(declare-fun b!6423757 () Bool)

(declare-fun e!3897441 () Bool)

(assert (=> b!6423757 (= e!3897442 e!3897441)))

(assert (=> b!6423757 (= c!1173736 ((_ is Star!16325) lt!2377296))))

(declare-fun b!6423758 () Bool)

(assert (=> b!6423758 (= e!3897441 e!3897439)))

(declare-fun res!2640069 () Bool)

(assert (=> b!6423758 (= res!2640069 (not (nullable!6318 (reg!16654 lt!2377296))))))

(assert (=> b!6423758 (=> (not res!2640069) (not e!3897439))))

(declare-fun b!6423759 () Bool)

(assert (=> b!6423759 (= e!3897441 e!3897437)))

(assert (=> b!6423759 (= c!1173735 ((_ is Union!16325) lt!2377296))))

(declare-fun b!6423760 () Bool)

(declare-fun e!3897438 () Bool)

(assert (=> b!6423760 (= e!3897438 call!552471)))

(declare-fun b!6423761 () Bool)

(declare-fun res!2640067 () Bool)

(assert (=> b!6423761 (=> (not res!2640067) (not e!3897438))))

(assert (=> b!6423761 (= res!2640067 call!552473)))

(assert (=> b!6423761 (= e!3897437 e!3897438)))

(declare-fun bm!552468 () Bool)

(assert (=> bm!552468 (= call!552471 (validRegex!8061 (ite c!1173735 (regTwo!33163 lt!2377296) (regTwo!33162 lt!2377296))))))

(declare-fun b!6423762 () Bool)

(assert (=> b!6423762 (= e!3897436 e!3897440)))

(declare-fun res!2640070 () Bool)

(assert (=> b!6423762 (=> (not res!2640070) (not e!3897440))))

(assert (=> b!6423762 (= res!2640070 call!552473)))

(assert (= (and d!2014166 (not res!2640068)) b!6423757))

(assert (= (and b!6423757 c!1173736) b!6423758))

(assert (= (and b!6423757 (not c!1173736)) b!6423759))

(assert (= (and b!6423758 res!2640069) b!6423754))

(assert (= (and b!6423759 c!1173735) b!6423761))

(assert (= (and b!6423759 (not c!1173735)) b!6423756))

(assert (= (and b!6423761 res!2640067) b!6423760))

(assert (= (and b!6423756 (not res!2640066)) b!6423762))

(assert (= (and b!6423762 res!2640070) b!6423755))

(assert (= (or b!6423760 b!6423755) bm!552468))

(assert (= (or b!6423761 b!6423762) bm!552467))

(assert (= (or b!6423754 bm!552467) bm!552466))

(declare-fun m!7218184 () Bool)

(assert (=> bm!552466 m!7218184))

(declare-fun m!7218186 () Bool)

(assert (=> b!6423758 m!7218186))

(declare-fun m!7218188 () Bool)

(assert (=> bm!552468 m!7218188))

(assert (=> d!2013380 d!2014166))

(declare-fun bs!1615596 () Bool)

(declare-fun d!2014168 () Bool)

(assert (= bs!1615596 (and d!2014168 d!2013484)))

(declare-fun lambda!354976 () Int)

(assert (=> bs!1615596 (= lambda!354976 lambda!354897)))

(declare-fun bs!1615597 () Bool)

(assert (= bs!1615597 (and d!2014168 d!2013982)))

(assert (=> bs!1615597 (= lambda!354976 lambda!354959)))

(declare-fun bs!1615598 () Bool)

(assert (= bs!1615598 (and d!2014168 d!2014014)))

(assert (=> bs!1615598 (= lambda!354976 lambda!354961)))

(declare-fun bs!1615599 () Bool)

(assert (= bs!1615599 (and d!2014168 d!2013412)))

(assert (=> bs!1615599 (= lambda!354976 lambda!354879)))

(declare-fun bs!1615600 () Bool)

(assert (= bs!1615600 (and d!2014168 d!2013968)))

(assert (=> bs!1615600 (= lambda!354976 lambda!354958)))

(declare-fun bs!1615601 () Bool)

(assert (= bs!1615601 (and d!2014168 d!2013456)))

(assert (=> bs!1615601 (= lambda!354976 lambda!354889)))

(declare-fun bs!1615602 () Bool)

(assert (= bs!1615602 (and d!2014168 d!2014098)))

(assert (=> bs!1615602 (= lambda!354976 lambda!354968)))

(declare-fun bs!1615603 () Bool)

(assert (= bs!1615603 (and d!2014168 d!2013382)))

(assert (=> bs!1615603 (= lambda!354976 lambda!354876)))

(declare-fun bs!1615604 () Bool)

(assert (= bs!1615604 (and d!2014168 d!2014096)))

(assert (=> bs!1615604 (= lambda!354976 lambda!354967)))

(declare-fun bs!1615605 () Bool)

(assert (= bs!1615605 (and d!2014168 d!2013482)))

(assert (=> bs!1615605 (= lambda!354976 lambda!354894)))

(declare-fun b!6423763 () Bool)

(declare-fun e!3897444 () Bool)

(declare-fun e!3897448 () Bool)

(assert (=> b!6423763 (= e!3897444 e!3897448)))

(declare-fun c!1173737 () Bool)

(assert (=> b!6423763 (= c!1173737 (isEmpty!37308 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152))))))

(declare-fun b!6423764 () Bool)

(declare-fun e!3897443 () Bool)

(assert (=> b!6423764 (= e!3897443 (isEmpty!37308 (t!378889 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152)))))))

(declare-fun b!6423765 () Bool)

(declare-fun e!3897446 () Bool)

(assert (=> b!6423765 (= e!3897448 e!3897446)))

(declare-fun c!1173738 () Bool)

(assert (=> b!6423765 (= c!1173738 (isEmpty!37308 (tail!12227 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152)))))))

(declare-fun b!6423766 () Bool)

(declare-fun lt!2377422 () Regex!16325)

(assert (=> b!6423766 (= e!3897448 (isEmptyLang!1733 lt!2377422))))

(declare-fun b!6423767 () Bool)

(declare-fun e!3897445 () Regex!16325)

(declare-fun e!3897447 () Regex!16325)

(assert (=> b!6423767 (= e!3897445 e!3897447)))

(declare-fun c!1173739 () Bool)

(assert (=> b!6423767 (= c!1173739 ((_ is Cons!65151) (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152))))))

(declare-fun b!6423768 () Bool)

(assert (=> b!6423768 (= e!3897446 (= lt!2377422 (head!13142 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152)))))))

(assert (=> d!2014168 e!3897444))

(declare-fun res!2640071 () Bool)

(assert (=> d!2014168 (=> (not res!2640071) (not e!3897444))))

(assert (=> d!2014168 (= res!2640071 (validRegex!8061 lt!2377422))))

(assert (=> d!2014168 (= lt!2377422 e!3897445)))

(declare-fun c!1173740 () Bool)

(assert (=> d!2014168 (= c!1173740 e!3897443)))

(declare-fun res!2640072 () Bool)

(assert (=> d!2014168 (=> (not res!2640072) (not e!3897443))))

(assert (=> d!2014168 (= res!2640072 ((_ is Cons!65151) (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152))))))

(assert (=> d!2014168 (forall!15515 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152)) lambda!354976)))

(assert (=> d!2014168 (= (generalisedUnion!2169 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152))) lt!2377422)))

(declare-fun b!6423769 () Bool)

(assert (=> b!6423769 (= e!3897446 (isUnion!1163 lt!2377422))))

(declare-fun b!6423770 () Bool)

(assert (=> b!6423770 (= e!3897447 (Union!16325 (h!71599 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152))) (generalisedUnion!2169 (t!378889 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152))))))))

(declare-fun b!6423771 () Bool)

(assert (=> b!6423771 (= e!3897445 (h!71599 (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152))))))

(declare-fun b!6423772 () Bool)

(assert (=> b!6423772 (= e!3897447 EmptyLang!16325)))

(assert (= (and d!2014168 res!2640072) b!6423764))

(assert (= (and d!2014168 c!1173740) b!6423771))

(assert (= (and d!2014168 (not c!1173740)) b!6423767))

(assert (= (and b!6423767 c!1173739) b!6423770))

(assert (= (and b!6423767 (not c!1173739)) b!6423772))

(assert (= (and d!2014168 res!2640071) b!6423763))

(assert (= (and b!6423763 c!1173737) b!6423766))

(assert (= (and b!6423763 (not c!1173737)) b!6423765))

(assert (= (and b!6423765 c!1173738) b!6423768))

(assert (= (and b!6423765 (not c!1173738)) b!6423769))

(declare-fun m!7218190 () Bool)

(assert (=> b!6423770 m!7218190))

(declare-fun m!7218192 () Bool)

(assert (=> b!6423764 m!7218192))

(declare-fun m!7218194 () Bool)

(assert (=> b!6423766 m!7218194))

(declare-fun m!7218196 () Bool)

(assert (=> d!2014168 m!7218196))

(assert (=> d!2014168 m!7216420))

(declare-fun m!7218198 () Bool)

(assert (=> d!2014168 m!7218198))

(assert (=> b!6423768 m!7216420))

(declare-fun m!7218200 () Bool)

(assert (=> b!6423768 m!7218200))

(declare-fun m!7218202 () Bool)

(assert (=> b!6423769 m!7218202))

(assert (=> b!6423765 m!7216420))

(declare-fun m!7218204 () Bool)

(assert (=> b!6423765 m!7218204))

(assert (=> b!6423765 m!7218204))

(declare-fun m!7218206 () Bool)

(assert (=> b!6423765 m!7218206))

(assert (=> b!6423763 m!7216420))

(declare-fun m!7218208 () Bool)

(assert (=> b!6423763 m!7218208))

(assert (=> d!2013380 d!2014168))

(declare-fun bs!1615606 () Bool)

(declare-fun d!2014170 () Bool)

(assert (= bs!1615606 (and d!2014170 d!2013484)))

(declare-fun lambda!354977 () Int)

(assert (=> bs!1615606 (= lambda!354977 lambda!354897)))

(declare-fun bs!1615607 () Bool)

(assert (= bs!1615607 (and d!2014170 d!2013982)))

(assert (=> bs!1615607 (= lambda!354977 lambda!354959)))

(declare-fun bs!1615608 () Bool)

(assert (= bs!1615608 (and d!2014170 d!2014168)))

(assert (=> bs!1615608 (= lambda!354977 lambda!354976)))

(declare-fun bs!1615609 () Bool)

(assert (= bs!1615609 (and d!2014170 d!2014014)))

(assert (=> bs!1615609 (= lambda!354977 lambda!354961)))

(declare-fun bs!1615610 () Bool)

(assert (= bs!1615610 (and d!2014170 d!2013412)))

(assert (=> bs!1615610 (= lambda!354977 lambda!354879)))

(declare-fun bs!1615611 () Bool)

(assert (= bs!1615611 (and d!2014170 d!2013968)))

(assert (=> bs!1615611 (= lambda!354977 lambda!354958)))

(declare-fun bs!1615612 () Bool)

(assert (= bs!1615612 (and d!2014170 d!2013456)))

(assert (=> bs!1615612 (= lambda!354977 lambda!354889)))

(declare-fun bs!1615613 () Bool)

(assert (= bs!1615613 (and d!2014170 d!2014098)))

(assert (=> bs!1615613 (= lambda!354977 lambda!354968)))

(declare-fun bs!1615614 () Bool)

(assert (= bs!1615614 (and d!2014170 d!2013382)))

(assert (=> bs!1615614 (= lambda!354977 lambda!354876)))

(declare-fun bs!1615615 () Bool)

(assert (= bs!1615615 (and d!2014170 d!2014096)))

(assert (=> bs!1615615 (= lambda!354977 lambda!354967)))

(declare-fun bs!1615616 () Bool)

(assert (= bs!1615616 (and d!2014170 d!2013482)))

(assert (=> bs!1615616 (= lambda!354977 lambda!354894)))

(declare-fun lt!2377423 () List!65275)

(assert (=> d!2014170 (forall!15515 lt!2377423 lambda!354977)))

(declare-fun e!3897449 () List!65275)

(assert (=> d!2014170 (= lt!2377423 e!3897449)))

(declare-fun c!1173741 () Bool)

(assert (=> d!2014170 (= c!1173741 ((_ is Cons!65152) (Cons!65152 lt!2377171 Nil!65152)))))

(assert (=> d!2014170 (= (unfocusZipperList!1746 (Cons!65152 lt!2377171 Nil!65152)) lt!2377423)))

(declare-fun b!6423773 () Bool)

(assert (=> b!6423773 (= e!3897449 (Cons!65151 (generalisedConcat!1922 (exprs!6209 (h!71600 (Cons!65152 lt!2377171 Nil!65152)))) (unfocusZipperList!1746 (t!378890 (Cons!65152 lt!2377171 Nil!65152)))))))

(declare-fun b!6423774 () Bool)

(assert (=> b!6423774 (= e!3897449 Nil!65151)))

(assert (= (and d!2014170 c!1173741) b!6423773))

(assert (= (and d!2014170 (not c!1173741)) b!6423774))

(declare-fun m!7218210 () Bool)

(assert (=> d!2014170 m!7218210))

(declare-fun m!7218212 () Bool)

(assert (=> b!6423773 m!7218212))

(declare-fun m!7218214 () Bool)

(assert (=> b!6423773 m!7218214))

(assert (=> d!2013380 d!2014170))

(declare-fun b!6423775 () Bool)

(declare-fun res!2640077 () Bool)

(declare-fun e!3897452 () Bool)

(assert (=> b!6423775 (=> res!2640077 e!3897452)))

(declare-fun e!3897450 () Bool)

(assert (=> b!6423775 (= res!2640077 e!3897450)))

(declare-fun res!2640073 () Bool)

(assert (=> b!6423775 (=> (not res!2640073) (not e!3897450))))

(declare-fun lt!2377424 () Bool)

(assert (=> b!6423775 (= res!2640073 lt!2377424)))

(declare-fun b!6423776 () Bool)

(declare-fun res!2640078 () Bool)

(assert (=> b!6423776 (=> (not res!2640078) (not e!3897450))))

(assert (=> b!6423776 (= res!2640078 (isEmpty!37310 (tail!12226 (_2!36607 (get!22571 lt!2377256)))))))

(declare-fun b!6423777 () Bool)

(declare-fun e!3897454 () Bool)

(declare-fun e!3897451 () Bool)

(assert (=> b!6423777 (= e!3897454 e!3897451)))

(declare-fun c!1173744 () Bool)

(assert (=> b!6423777 (= c!1173744 ((_ is EmptyLang!16325) (regTwo!33162 r!7292)))))

(declare-fun b!6423778 () Bool)

(declare-fun res!2640079 () Bool)

(declare-fun e!3897455 () Bool)

(assert (=> b!6423778 (=> res!2640079 e!3897455)))

(assert (=> b!6423778 (= res!2640079 (not (isEmpty!37310 (tail!12226 (_2!36607 (get!22571 lt!2377256))))))))

(declare-fun d!2014172 () Bool)

(assert (=> d!2014172 e!3897454))

(declare-fun c!1173742 () Bool)

(assert (=> d!2014172 (= c!1173742 ((_ is EmptyExpr!16325) (regTwo!33162 r!7292)))))

(declare-fun e!3897453 () Bool)

(assert (=> d!2014172 (= lt!2377424 e!3897453)))

(declare-fun c!1173743 () Bool)

(assert (=> d!2014172 (= c!1173743 (isEmpty!37310 (_2!36607 (get!22571 lt!2377256))))))

(assert (=> d!2014172 (validRegex!8061 (regTwo!33162 r!7292))))

(assert (=> d!2014172 (= (matchR!8508 (regTwo!33162 r!7292) (_2!36607 (get!22571 lt!2377256))) lt!2377424)))

(declare-fun b!6423779 () Bool)

(declare-fun e!3897456 () Bool)

(assert (=> b!6423779 (= e!3897456 e!3897455)))

(declare-fun res!2640076 () Bool)

(assert (=> b!6423779 (=> res!2640076 e!3897455)))

(declare-fun call!552474 () Bool)

(assert (=> b!6423779 (= res!2640076 call!552474)))

(declare-fun b!6423780 () Bool)

(assert (=> b!6423780 (= e!3897455 (not (= (head!13141 (_2!36607 (get!22571 lt!2377256))) (c!1173074 (regTwo!33162 r!7292)))))))

(declare-fun b!6423781 () Bool)

(declare-fun res!2640075 () Bool)

(assert (=> b!6423781 (=> res!2640075 e!3897452)))

(assert (=> b!6423781 (= res!2640075 (not ((_ is ElementMatch!16325) (regTwo!33162 r!7292))))))

(assert (=> b!6423781 (= e!3897451 e!3897452)))

(declare-fun b!6423782 () Bool)

(assert (=> b!6423782 (= e!3897454 (= lt!2377424 call!552474))))

(declare-fun b!6423783 () Bool)

(assert (=> b!6423783 (= e!3897453 (matchR!8508 (derivativeStep!5029 (regTwo!33162 r!7292) (head!13141 (_2!36607 (get!22571 lt!2377256)))) (tail!12226 (_2!36607 (get!22571 lt!2377256)))))))

(declare-fun b!6423784 () Bool)

(assert (=> b!6423784 (= e!3897453 (nullable!6318 (regTwo!33162 r!7292)))))

(declare-fun bm!552469 () Bool)

(assert (=> bm!552469 (= call!552474 (isEmpty!37310 (_2!36607 (get!22571 lt!2377256))))))

(declare-fun b!6423785 () Bool)

(assert (=> b!6423785 (= e!3897450 (= (head!13141 (_2!36607 (get!22571 lt!2377256))) (c!1173074 (regTwo!33162 r!7292))))))

(declare-fun b!6423786 () Bool)

(assert (=> b!6423786 (= e!3897451 (not lt!2377424))))

(declare-fun b!6423787 () Bool)

(declare-fun res!2640080 () Bool)

(assert (=> b!6423787 (=> (not res!2640080) (not e!3897450))))

(assert (=> b!6423787 (= res!2640080 (not call!552474))))

(declare-fun b!6423788 () Bool)

(assert (=> b!6423788 (= e!3897452 e!3897456)))

(declare-fun res!2640074 () Bool)

(assert (=> b!6423788 (=> (not res!2640074) (not e!3897456))))

(assert (=> b!6423788 (= res!2640074 (not lt!2377424))))

(assert (= (and d!2014172 c!1173743) b!6423784))

(assert (= (and d!2014172 (not c!1173743)) b!6423783))

(assert (= (and d!2014172 c!1173742) b!6423782))

(assert (= (and d!2014172 (not c!1173742)) b!6423777))

(assert (= (and b!6423777 c!1173744) b!6423786))

(assert (= (and b!6423777 (not c!1173744)) b!6423781))

(assert (= (and b!6423781 (not res!2640075)) b!6423775))

(assert (= (and b!6423775 res!2640073) b!6423787))

(assert (= (and b!6423787 res!2640080) b!6423776))

(assert (= (and b!6423776 res!2640078) b!6423785))

(assert (= (and b!6423775 (not res!2640077)) b!6423788))

(assert (= (and b!6423788 res!2640074) b!6423779))

(assert (= (and b!6423779 (not res!2640076)) b!6423778))

(assert (= (and b!6423778 (not res!2640079)) b!6423780))

(assert (= (or b!6423782 b!6423779 b!6423787) bm!552469))

(declare-fun m!7218216 () Bool)

(assert (=> b!6423776 m!7218216))

(assert (=> b!6423776 m!7218216))

(declare-fun m!7218218 () Bool)

(assert (=> b!6423776 m!7218218))

(assert (=> b!6423778 m!7218216))

(assert (=> b!6423778 m!7218216))

(assert (=> b!6423778 m!7218218))

(declare-fun m!7218220 () Bool)

(assert (=> b!6423785 m!7218220))

(declare-fun m!7218222 () Bool)

(assert (=> bm!552469 m!7218222))

(assert (=> b!6423784 m!7216532))

(assert (=> b!6423783 m!7218220))

(assert (=> b!6423783 m!7218220))

(declare-fun m!7218224 () Bool)

(assert (=> b!6423783 m!7218224))

(assert (=> b!6423783 m!7218216))

(assert (=> b!6423783 m!7218224))

(assert (=> b!6423783 m!7218216))

(declare-fun m!7218226 () Bool)

(assert (=> b!6423783 m!7218226))

(assert (=> b!6423780 m!7218220))

(assert (=> d!2014172 m!7218222))

(assert (=> d!2014172 m!7216538))

(assert (=> b!6421694 d!2014172))

(assert (=> b!6421694 d!2013978))

(assert (=> bm!552175 d!2014026))

(declare-fun bs!1615617 () Bool)

(declare-fun b!6423797 () Bool)

(assert (= bs!1615617 (and b!6423797 d!2014158)))

(declare-fun lambda!354978 () Int)

(assert (=> bs!1615617 (not (= lambda!354978 lambda!354975))))

(declare-fun bs!1615618 () Bool)

(assert (= bs!1615618 (and b!6423797 d!2013890)))

(assert (=> bs!1615618 (not (= lambda!354978 lambda!354950))))

(declare-fun bs!1615619 () Bool)

(assert (= bs!1615619 (and b!6423797 b!6422181)))

(assert (=> bs!1615619 (= (and (= (reg!16654 (regTwo!33163 lt!2377183)) (reg!16654 lt!2377183)) (= (regTwo!33163 lt!2377183) lt!2377183)) (= lambda!354978 lambda!354890))))

(declare-fun bs!1615620 () Bool)

(assert (= bs!1615620 (and b!6423797 b!6421798)))

(assert (=> bs!1615620 (not (= lambda!354978 lambda!354870))))

(declare-fun bs!1615621 () Bool)

(assert (= bs!1615621 (and b!6423797 d!2013302)))

(assert (=> bs!1615621 (not (= lambda!354978 lambda!354848))))

(declare-fun bs!1615622 () Bool)

(assert (= bs!1615622 (and b!6423797 b!6423644)))

(assert (=> bs!1615622 (not (= lambda!354978 lambda!354971))))

(declare-fun bs!1615623 () Bool)

(assert (= bs!1615623 (and b!6423797 b!6423649)))

(assert (=> bs!1615623 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regTwo!33163 lt!2377183)) (reg!16654 (regTwo!33163 lt!2377164))) (= (regTwo!33163 lt!2377183) (regTwo!33163 lt!2377164))) (= lambda!354978 lambda!354970))))

(declare-fun bs!1615624 () Bool)

(assert (= bs!1615624 (and b!6423797 d!2014138)))

(assert (=> bs!1615624 (not (= lambda!354978 lambda!354972))))

(declare-fun bs!1615625 () Bool)

(assert (= bs!1615625 (and b!6423797 d!2013448)))

(assert (=> bs!1615625 (not (= lambda!354978 lambda!354888))))

(declare-fun bs!1615626 () Bool)

(assert (= bs!1615626 (and b!6423797 b!6421803)))

(assert (=> bs!1615626 (= (and (= (reg!16654 (regTwo!33163 lt!2377183)) (reg!16654 r!7292)) (= (regTwo!33163 lt!2377183) r!7292)) (= lambda!354978 lambda!354869))))

(declare-fun bs!1615627 () Bool)

(assert (= bs!1615627 (and b!6423797 d!2013426)))

(assert (=> bs!1615627 (not (= lambda!354978 lambda!354883))))

(declare-fun bs!1615628 () Bool)

(assert (= bs!1615628 (and b!6423797 b!6422176)))

(assert (=> bs!1615628 (not (= lambda!354978 lambda!354891))))

(declare-fun bs!1615629 () Bool)

(assert (= bs!1615629 (and b!6423797 b!6423289)))

(assert (=> bs!1615629 (not (= lambda!354978 lambda!354957))))

(assert (=> bs!1615625 (not (= lambda!354978 lambda!354887))))

(declare-fun bs!1615630 () Bool)

(assert (= bs!1615630 (and b!6423797 d!2013318)))

(assert (=> bs!1615630 (not (= lambda!354978 lambda!354861))))

(declare-fun bs!1615631 () Bool)

(assert (= bs!1615631 (and b!6423797 b!6421294)))

(assert (=> bs!1615631 (not (= lambda!354978 lambda!354817))))

(declare-fun bs!1615632 () Bool)

(assert (= bs!1615632 (and b!6423797 b!6421303)))

(assert (=> bs!1615632 (not (= lambda!354978 lambda!354815))))

(declare-fun bs!1615633 () Bool)

(assert (= bs!1615633 (and b!6423797 d!2014082)))

(assert (=> bs!1615633 (not (= lambda!354978 lambda!354966))))

(declare-fun bs!1615634 () Bool)

(assert (= bs!1615634 (and b!6423797 b!6422121)))

(assert (=> bs!1615634 (not (= lambda!354978 lambda!354885))))

(assert (=> bs!1615630 (not (= lambda!354978 lambda!354860))))

(assert (=> bs!1615632 (not (= lambda!354978 lambda!354814))))

(assert (=> bs!1615617 (not (= lambda!354978 lambda!354974))))

(declare-fun bs!1615635 () Bool)

(assert (= bs!1615635 (and b!6423797 b!6423294)))

(assert (=> bs!1615635 (= (and (= (reg!16654 (regTwo!33163 lt!2377183)) (reg!16654 (regOne!33163 r!7292))) (= (regTwo!33163 lt!2377183) (regOne!33163 r!7292))) (= lambda!354978 lambda!354956))))

(assert (=> bs!1615631 (not (= lambda!354978 lambda!354818))))

(assert (=> bs!1615618 (not (= lambda!354978 lambda!354951))))

(declare-fun bs!1615636 () Bool)

(assert (= bs!1615636 (and b!6423797 d!2013446)))

(assert (=> bs!1615636 (not (= lambda!354978 lambda!354886))))

(declare-fun bs!1615637 () Bool)

(assert (= bs!1615637 (and b!6423797 b!6421322)))

(assert (=> bs!1615637 (not (= lambda!354978 lambda!354819))))

(declare-fun bs!1615638 () Bool)

(assert (= bs!1615638 (and b!6423797 b!6422126)))

(assert (=> bs!1615638 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regTwo!33163 lt!2377183)) (reg!16654 lt!2377164)) (= (regTwo!33163 lt!2377183) lt!2377164)) (= lambda!354978 lambda!354884))))

(assert (=> b!6423797 true))

(assert (=> b!6423797 true))

(declare-fun bs!1615639 () Bool)

(declare-fun b!6423792 () Bool)

(assert (= bs!1615639 (and b!6423792 d!2014158)))

(declare-fun lambda!354979 () Int)

(assert (=> bs!1615639 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) lt!2377164) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354979 lambda!354975))))

(declare-fun bs!1615640 () Bool)

(assert (= bs!1615640 (and b!6423792 d!2013890)))

(assert (=> bs!1615640 (not (= lambda!354979 lambda!354950))))

(declare-fun bs!1615641 () Bool)

(assert (= bs!1615641 (and b!6423792 b!6422181)))

(assert (=> bs!1615641 (not (= lambda!354979 lambda!354890))))

(declare-fun bs!1615642 () Bool)

(assert (= bs!1615642 (and b!6423792 b!6421798)))

(assert (=> bs!1615642 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354979 lambda!354870))))

(declare-fun bs!1615643 () Bool)

(assert (= bs!1615643 (and b!6423792 d!2013302)))

(assert (=> bs!1615643 (not (= lambda!354979 lambda!354848))))

(declare-fun bs!1615644 () Bool)

(assert (= bs!1615644 (and b!6423792 b!6423644)))

(assert (=> bs!1615644 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regTwo!33163 lt!2377183)) (regOne!33162 (regTwo!33163 lt!2377164))) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 (regTwo!33163 lt!2377164)))) (= lambda!354979 lambda!354971))))

(declare-fun bs!1615645 () Bool)

(assert (= bs!1615645 (and b!6423792 b!6423649)))

(assert (=> bs!1615645 (not (= lambda!354979 lambda!354970))))

(declare-fun bs!1615646 () Bool)

(assert (= bs!1615646 (and b!6423792 d!2014138)))

(assert (=> bs!1615646 (not (= lambda!354979 lambda!354972))))

(declare-fun bs!1615647 () Bool)

(assert (= bs!1615647 (and b!6423792 d!2013448)))

(assert (=> bs!1615647 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354979 lambda!354888))))

(declare-fun bs!1615648 () Bool)

(assert (= bs!1615648 (and b!6423792 b!6421803)))

(assert (=> bs!1615648 (not (= lambda!354979 lambda!354869))))

(declare-fun bs!1615649 () Bool)

(assert (= bs!1615649 (and b!6423792 d!2013426)))

(assert (=> bs!1615649 (not (= lambda!354979 lambda!354883))))

(declare-fun bs!1615650 () Bool)

(assert (= bs!1615650 (and b!6423792 b!6422176)))

(assert (=> bs!1615650 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) (regOne!33162 lt!2377183)) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 lt!2377183))) (= lambda!354979 lambda!354891))))

(declare-fun bs!1615651 () Bool)

(assert (= bs!1615651 (and b!6423792 b!6423289)))

(assert (=> bs!1615651 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) (regOne!33162 (regOne!33163 r!7292))) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 (regOne!33163 r!7292)))) (= lambda!354979 lambda!354957))))

(assert (=> bs!1615647 (not (= lambda!354979 lambda!354887))))

(declare-fun bs!1615652 () Bool)

(assert (= bs!1615652 (and b!6423792 d!2013318)))

(assert (=> bs!1615652 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) lt!2377164) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354979 lambda!354861))))

(declare-fun bs!1615653 () Bool)

(assert (= bs!1615653 (and b!6423792 b!6423797)))

(assert (=> bs!1615653 (not (= lambda!354979 lambda!354978))))

(declare-fun bs!1615654 () Bool)

(assert (= bs!1615654 (and b!6423792 b!6421294)))

(assert (=> bs!1615654 (not (= lambda!354979 lambda!354817))))

(declare-fun bs!1615655 () Bool)

(assert (= bs!1615655 (and b!6423792 b!6421303)))

(assert (=> bs!1615655 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354979 lambda!354815))))

(declare-fun bs!1615656 () Bool)

(assert (= bs!1615656 (and b!6423792 d!2014082)))

(assert (=> bs!1615656 (not (= lambda!354979 lambda!354966))))

(declare-fun bs!1615657 () Bool)

(assert (= bs!1615657 (and b!6423792 b!6422121)))

(assert (=> bs!1615657 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regTwo!33163 lt!2377183)) (regOne!33162 lt!2377164)) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 lt!2377164))) (= lambda!354979 lambda!354885))))

(assert (=> bs!1615652 (not (= lambda!354979 lambda!354860))))

(assert (=> bs!1615655 (not (= lambda!354979 lambda!354814))))

(assert (=> bs!1615639 (not (= lambda!354979 lambda!354974))))

(declare-fun bs!1615658 () Bool)

(assert (= bs!1615658 (and b!6423792 b!6423294)))

(assert (=> bs!1615658 (not (= lambda!354979 lambda!354956))))

(assert (=> bs!1615654 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) lt!2377164) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354979 lambda!354818))))

(assert (=> bs!1615640 (= (and (= (regOne!33162 (regTwo!33163 lt!2377183)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354979 lambda!354951))))

(declare-fun bs!1615659 () Bool)

(assert (= bs!1615659 (and b!6423792 d!2013446)))

(assert (=> bs!1615659 (not (= lambda!354979 lambda!354886))))

(declare-fun bs!1615660 () Bool)

(assert (= bs!1615660 (and b!6423792 b!6421322)))

(assert (=> bs!1615660 (not (= lambda!354979 lambda!354819))))

(declare-fun bs!1615661 () Bool)

(assert (= bs!1615661 (and b!6423792 b!6422126)))

(assert (=> bs!1615661 (not (= lambda!354979 lambda!354884))))

(assert (=> b!6423792 true))

(assert (=> b!6423792 true))

(declare-fun b!6423789 () Bool)

(declare-fun e!3897463 () Bool)

(assert (=> b!6423789 (= e!3897463 (= s!2326 (Cons!65150 (c!1173074 (regTwo!33163 lt!2377183)) Nil!65150)))))

(declare-fun b!6423790 () Bool)

(declare-fun e!3897462 () Bool)

(declare-fun e!3897461 () Bool)

(assert (=> b!6423790 (= e!3897462 e!3897461)))

(declare-fun c!1173748 () Bool)

(assert (=> b!6423790 (= c!1173748 ((_ is Star!16325) (regTwo!33163 lt!2377183)))))

(declare-fun b!6423791 () Bool)

(declare-fun res!2640083 () Bool)

(declare-fun e!3897460 () Bool)

(assert (=> b!6423791 (=> res!2640083 e!3897460)))

(declare-fun call!552475 () Bool)

(assert (=> b!6423791 (= res!2640083 call!552475)))

(assert (=> b!6423791 (= e!3897461 e!3897460)))

(declare-fun call!552476 () Bool)

(assert (=> b!6423792 (= e!3897461 call!552476)))

(declare-fun b!6423793 () Bool)

(declare-fun e!3897457 () Bool)

(assert (=> b!6423793 (= e!3897462 e!3897457)))

(declare-fun res!2640081 () Bool)

(assert (=> b!6423793 (= res!2640081 (matchRSpec!3426 (regOne!33163 (regTwo!33163 lt!2377183)) s!2326))))

(assert (=> b!6423793 (=> res!2640081 e!3897457)))

(declare-fun b!6423794 () Bool)

(assert (=> b!6423794 (= e!3897457 (matchRSpec!3426 (regTwo!33163 (regTwo!33163 lt!2377183)) s!2326))))

(declare-fun b!6423795 () Bool)

(declare-fun c!1173746 () Bool)

(assert (=> b!6423795 (= c!1173746 ((_ is Union!16325) (regTwo!33163 lt!2377183)))))

(assert (=> b!6423795 (= e!3897463 e!3897462)))

(declare-fun d!2014174 () Bool)

(declare-fun c!1173747 () Bool)

(assert (=> d!2014174 (= c!1173747 ((_ is EmptyExpr!16325) (regTwo!33163 lt!2377183)))))

(declare-fun e!3897458 () Bool)

(assert (=> d!2014174 (= (matchRSpec!3426 (regTwo!33163 lt!2377183) s!2326) e!3897458)))

(declare-fun b!6423796 () Bool)

(declare-fun e!3897459 () Bool)

(assert (=> b!6423796 (= e!3897458 e!3897459)))

(declare-fun res!2640082 () Bool)

(assert (=> b!6423796 (= res!2640082 (not ((_ is EmptyLang!16325) (regTwo!33163 lt!2377183))))))

(assert (=> b!6423796 (=> (not res!2640082) (not e!3897459))))

(assert (=> b!6423797 (= e!3897460 call!552476)))

(declare-fun bm!552470 () Bool)

(assert (=> bm!552470 (= call!552476 (Exists!3395 (ite c!1173748 lambda!354978 lambda!354979)))))

(declare-fun b!6423798 () Bool)

(assert (=> b!6423798 (= e!3897458 call!552475)))

(declare-fun b!6423799 () Bool)

(declare-fun c!1173745 () Bool)

(assert (=> b!6423799 (= c!1173745 ((_ is ElementMatch!16325) (regTwo!33163 lt!2377183)))))

(assert (=> b!6423799 (= e!3897459 e!3897463)))

(declare-fun bm!552471 () Bool)

(assert (=> bm!552471 (= call!552475 (isEmpty!37310 s!2326))))

(assert (= (and d!2014174 c!1173747) b!6423798))

(assert (= (and d!2014174 (not c!1173747)) b!6423796))

(assert (= (and b!6423796 res!2640082) b!6423799))

(assert (= (and b!6423799 c!1173745) b!6423789))

(assert (= (and b!6423799 (not c!1173745)) b!6423795))

(assert (= (and b!6423795 c!1173746) b!6423793))

(assert (= (and b!6423795 (not c!1173746)) b!6423790))

(assert (= (and b!6423793 (not res!2640081)) b!6423794))

(assert (= (and b!6423790 c!1173748) b!6423791))

(assert (= (and b!6423790 (not c!1173748)) b!6423792))

(assert (= (and b!6423791 (not res!2640083)) b!6423797))

(assert (= (or b!6423797 b!6423792) bm!552470))

(assert (= (or b!6423798 b!6423791) bm!552471))

(declare-fun m!7218228 () Bool)

(assert (=> b!6423793 m!7218228))

(declare-fun m!7218230 () Bool)

(assert (=> b!6423794 m!7218230))

(declare-fun m!7218232 () Bool)

(assert (=> bm!552470 m!7218232))

(assert (=> bm!552471 m!7216326))

(assert (=> b!6422178 d!2014174))

(declare-fun d!2014176 () Bool)

(declare-fun c!1173749 () Bool)

(assert (=> d!2014176 (= c!1173749 (isEmpty!37310 (tail!12226 (t!378888 s!2326))))))

(declare-fun e!3897464 () Bool)

(assert (=> d!2014176 (= (matchZipper!2337 (derivationStepZipper!2291 lt!2377173 (head!13141 (t!378888 s!2326))) (tail!12226 (t!378888 s!2326))) e!3897464)))

(declare-fun b!6423800 () Bool)

(assert (=> b!6423800 (= e!3897464 (nullableZipper!2090 (derivationStepZipper!2291 lt!2377173 (head!13141 (t!378888 s!2326)))))))

(declare-fun b!6423801 () Bool)

(assert (=> b!6423801 (= e!3897464 (matchZipper!2337 (derivationStepZipper!2291 (derivationStepZipper!2291 lt!2377173 (head!13141 (t!378888 s!2326))) (head!13141 (tail!12226 (t!378888 s!2326)))) (tail!12226 (tail!12226 (t!378888 s!2326)))))))

(assert (= (and d!2014176 c!1173749) b!6423800))

(assert (= (and d!2014176 (not c!1173749)) b!6423801))

(assert (=> d!2014176 m!7216414))

(assert (=> d!2014176 m!7217848))

(assert (=> b!6423800 m!7216440))

(declare-fun m!7218234 () Bool)

(assert (=> b!6423800 m!7218234))

(assert (=> b!6423801 m!7216414))

(assert (=> b!6423801 m!7217852))

(assert (=> b!6423801 m!7216440))

(assert (=> b!6423801 m!7217852))

(declare-fun m!7218236 () Bool)

(assert (=> b!6423801 m!7218236))

(assert (=> b!6423801 m!7216414))

(assert (=> b!6423801 m!7217856))

(assert (=> b!6423801 m!7218236))

(assert (=> b!6423801 m!7217856))

(declare-fun m!7218238 () Bool)

(assert (=> b!6423801 m!7218238))

(assert (=> b!6422003 d!2014176))

(declare-fun bs!1615662 () Bool)

(declare-fun d!2014178 () Bool)

(assert (= bs!1615662 (and d!2014178 d!2013420)))

(declare-fun lambda!354980 () Int)

(assert (=> bs!1615662 (= (= (head!13141 (t!378888 s!2326)) (h!71598 s!2326)) (= lambda!354980 lambda!354882))))

(declare-fun bs!1615663 () Bool)

(assert (= bs!1615663 (and d!2014178 d!2013926)))

(assert (=> bs!1615663 (= (= (head!13141 (t!378888 s!2326)) (head!13141 s!2326)) (= lambda!354980 lambda!354955))))

(declare-fun bs!1615664 () Bool)

(assert (= bs!1615664 (and d!2014178 b!6421308)))

(assert (=> bs!1615664 (= (= (head!13141 (t!378888 s!2326)) (h!71598 s!2326)) (= lambda!354980 lambda!354816))))

(declare-fun bs!1615665 () Bool)

(assert (= bs!1615665 (and d!2014178 d!2014070)))

(assert (=> bs!1615665 (= lambda!354980 lambda!354963)))

(declare-fun bs!1615666 () Bool)

(assert (= bs!1615666 (and d!2014178 d!2014002)))

(assert (=> bs!1615666 (= lambda!354980 lambda!354960)))

(assert (=> d!2014178 true))

(assert (=> d!2014178 (= (derivationStepZipper!2291 lt!2377173 (head!13141 (t!378888 s!2326))) (flatMap!1830 lt!2377173 lambda!354980))))

(declare-fun bs!1615667 () Bool)

(assert (= bs!1615667 d!2014178))

(declare-fun m!7218240 () Bool)

(assert (=> bs!1615667 m!7218240))

(assert (=> b!6422003 d!2014178))

(assert (=> b!6422003 d!2014004))

(assert (=> b!6422003 d!2014006))

(declare-fun b!6423802 () Bool)

(declare-fun e!3897468 () Bool)

(declare-fun call!552478 () Bool)

(assert (=> b!6423802 (= e!3897468 call!552478)))

(declare-fun bm!552472 () Bool)

(declare-fun c!1173751 () Bool)

(declare-fun c!1173750 () Bool)

(assert (=> bm!552472 (= call!552478 (validRegex!8061 (ite c!1173751 (reg!16654 lt!2377329) (ite c!1173750 (regOne!33163 lt!2377329) (regOne!33162 lt!2377329)))))))

(declare-fun d!2014180 () Bool)

(declare-fun res!2640086 () Bool)

(declare-fun e!3897471 () Bool)

(assert (=> d!2014180 (=> res!2640086 e!3897471)))

(assert (=> d!2014180 (= res!2640086 ((_ is ElementMatch!16325) lt!2377329))))

(assert (=> d!2014180 (= (validRegex!8061 lt!2377329) e!3897471)))

(declare-fun bm!552473 () Bool)

(declare-fun call!552479 () Bool)

(assert (=> bm!552473 (= call!552479 call!552478)))

(declare-fun b!6423803 () Bool)

(declare-fun e!3897469 () Bool)

(declare-fun call!552477 () Bool)

(assert (=> b!6423803 (= e!3897469 call!552477)))

(declare-fun b!6423804 () Bool)

(declare-fun res!2640084 () Bool)

(declare-fun e!3897465 () Bool)

(assert (=> b!6423804 (=> res!2640084 e!3897465)))

(assert (=> b!6423804 (= res!2640084 (not ((_ is Concat!25170) lt!2377329)))))

(declare-fun e!3897466 () Bool)

(assert (=> b!6423804 (= e!3897466 e!3897465)))

(declare-fun b!6423805 () Bool)

(declare-fun e!3897470 () Bool)

(assert (=> b!6423805 (= e!3897471 e!3897470)))

(assert (=> b!6423805 (= c!1173751 ((_ is Star!16325) lt!2377329))))

(declare-fun b!6423806 () Bool)

(assert (=> b!6423806 (= e!3897470 e!3897468)))

(declare-fun res!2640087 () Bool)

(assert (=> b!6423806 (= res!2640087 (not (nullable!6318 (reg!16654 lt!2377329))))))

(assert (=> b!6423806 (=> (not res!2640087) (not e!3897468))))

(declare-fun b!6423807 () Bool)

(assert (=> b!6423807 (= e!3897470 e!3897466)))

(assert (=> b!6423807 (= c!1173750 ((_ is Union!16325) lt!2377329))))

(declare-fun b!6423808 () Bool)

(declare-fun e!3897467 () Bool)

(assert (=> b!6423808 (= e!3897467 call!552477)))

(declare-fun b!6423809 () Bool)

(declare-fun res!2640085 () Bool)

(assert (=> b!6423809 (=> (not res!2640085) (not e!3897467))))

(assert (=> b!6423809 (= res!2640085 call!552479)))

(assert (=> b!6423809 (= e!3897466 e!3897467)))

(declare-fun bm!552474 () Bool)

(assert (=> bm!552474 (= call!552477 (validRegex!8061 (ite c!1173750 (regTwo!33163 lt!2377329) (regTwo!33162 lt!2377329))))))

(declare-fun b!6423810 () Bool)

(assert (=> b!6423810 (= e!3897465 e!3897469)))

(declare-fun res!2640088 () Bool)

(assert (=> b!6423810 (=> (not res!2640088) (not e!3897469))))

(assert (=> b!6423810 (= res!2640088 call!552479)))

(assert (= (and d!2014180 (not res!2640086)) b!6423805))

(assert (= (and b!6423805 c!1173751) b!6423806))

(assert (= (and b!6423805 (not c!1173751)) b!6423807))

(assert (= (and b!6423806 res!2640087) b!6423802))

(assert (= (and b!6423807 c!1173750) b!6423809))

(assert (= (and b!6423807 (not c!1173750)) b!6423804))

(assert (= (and b!6423809 res!2640085) b!6423808))

(assert (= (and b!6423804 (not res!2640084)) b!6423810))

(assert (= (and b!6423810 res!2640088) b!6423803))

(assert (= (or b!6423808 b!6423803) bm!552474))

(assert (= (or b!6423809 b!6423810) bm!552473))

(assert (= (or b!6423802 bm!552473) bm!552472))

(declare-fun m!7218242 () Bool)

(assert (=> bm!552472 m!7218242))

(declare-fun m!7218244 () Bool)

(assert (=> b!6423806 m!7218244))

(declare-fun m!7218246 () Bool)

(assert (=> bm!552474 m!7218246))

(assert (=> d!2013482 d!2014180))

(declare-fun d!2014182 () Bool)

(declare-fun res!2640089 () Bool)

(declare-fun e!3897472 () Bool)

(assert (=> d!2014182 (=> res!2640089 e!3897472)))

(assert (=> d!2014182 (= res!2640089 ((_ is Nil!65151) (unfocusZipperList!1746 zl!343)))))

(assert (=> d!2014182 (= (forall!15515 (unfocusZipperList!1746 zl!343) lambda!354894) e!3897472)))

(declare-fun b!6423811 () Bool)

(declare-fun e!3897473 () Bool)

(assert (=> b!6423811 (= e!3897472 e!3897473)))

(declare-fun res!2640090 () Bool)

(assert (=> b!6423811 (=> (not res!2640090) (not e!3897473))))

(assert (=> b!6423811 (= res!2640090 (dynLambda!25882 lambda!354894 (h!71599 (unfocusZipperList!1746 zl!343))))))

(declare-fun b!6423812 () Bool)

(assert (=> b!6423812 (= e!3897473 (forall!15515 (t!378889 (unfocusZipperList!1746 zl!343)) lambda!354894))))

(assert (= (and d!2014182 (not res!2640089)) b!6423811))

(assert (= (and b!6423811 res!2640090) b!6423812))

(declare-fun b_lambda!244161 () Bool)

(assert (=> (not b_lambda!244161) (not b!6423811)))

(declare-fun m!7218248 () Bool)

(assert (=> b!6423811 m!7218248))

(declare-fun m!7218250 () Bool)

(assert (=> b!6423812 m!7218250))

(assert (=> d!2013482 d!2014182))

(declare-fun b!6423813 () Bool)

(declare-fun e!3897477 () Bool)

(declare-fun call!552481 () Bool)

(assert (=> b!6423813 (= e!3897477 call!552481)))

(declare-fun c!1173753 () Bool)

(declare-fun c!1173752 () Bool)

(declare-fun bm!552475 () Bool)

(assert (=> bm!552475 (= call!552481 (validRegex!8061 (ite c!1173753 (reg!16654 (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))) (ite c!1173752 (regOne!33163 (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))) (regOne!33162 (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292)))))))))

(declare-fun d!2014184 () Bool)

(declare-fun res!2640093 () Bool)

(declare-fun e!3897480 () Bool)

(assert (=> d!2014184 (=> res!2640093 e!3897480)))

(assert (=> d!2014184 (= res!2640093 ((_ is ElementMatch!16325) (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))))))

(assert (=> d!2014184 (= (validRegex!8061 (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))) e!3897480)))

(declare-fun bm!552476 () Bool)

(declare-fun call!552482 () Bool)

(assert (=> bm!552476 (= call!552482 call!552481)))

(declare-fun b!6423814 () Bool)

(declare-fun e!3897478 () Bool)

(declare-fun call!552480 () Bool)

(assert (=> b!6423814 (= e!3897478 call!552480)))

(declare-fun b!6423815 () Bool)

(declare-fun res!2640091 () Bool)

(declare-fun e!3897474 () Bool)

(assert (=> b!6423815 (=> res!2640091 e!3897474)))

(assert (=> b!6423815 (= res!2640091 (not ((_ is Concat!25170) (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292)))))))

(declare-fun e!3897475 () Bool)

(assert (=> b!6423815 (= e!3897475 e!3897474)))

(declare-fun b!6423816 () Bool)

(declare-fun e!3897479 () Bool)

(assert (=> b!6423816 (= e!3897480 e!3897479)))

(assert (=> b!6423816 (= c!1173753 ((_ is Star!16325) (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))))))

(declare-fun b!6423817 () Bool)

(assert (=> b!6423817 (= e!3897479 e!3897477)))

(declare-fun res!2640094 () Bool)

(assert (=> b!6423817 (= res!2640094 (not (nullable!6318 (reg!16654 (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))))))))

(assert (=> b!6423817 (=> (not res!2640094) (not e!3897477))))

(declare-fun b!6423818 () Bool)

(assert (=> b!6423818 (= e!3897479 e!3897475)))

(assert (=> b!6423818 (= c!1173752 ((_ is Union!16325) (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))))))

(declare-fun b!6423819 () Bool)

(declare-fun e!3897476 () Bool)

(assert (=> b!6423819 (= e!3897476 call!552480)))

(declare-fun b!6423820 () Bool)

(declare-fun res!2640092 () Bool)

(assert (=> b!6423820 (=> (not res!2640092) (not e!3897476))))

(assert (=> b!6423820 (= res!2640092 call!552482)))

(assert (=> b!6423820 (= e!3897475 e!3897476)))

(declare-fun bm!552477 () Bool)

(assert (=> bm!552477 (= call!552480 (validRegex!8061 (ite c!1173752 (regTwo!33163 (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))) (regTwo!33162 (ite c!1173301 (regTwo!33163 r!7292) (regTwo!33162 r!7292))))))))

(declare-fun b!6423821 () Bool)

(assert (=> b!6423821 (= e!3897474 e!3897478)))

(declare-fun res!2640095 () Bool)

(assert (=> b!6423821 (=> (not res!2640095) (not e!3897478))))

(assert (=> b!6423821 (= res!2640095 call!552482)))

(assert (= (and d!2014184 (not res!2640093)) b!6423816))

(assert (= (and b!6423816 c!1173753) b!6423817))

(assert (= (and b!6423816 (not c!1173753)) b!6423818))

(assert (= (and b!6423817 res!2640094) b!6423813))

(assert (= (and b!6423818 c!1173752) b!6423820))

(assert (= (and b!6423818 (not c!1173752)) b!6423815))

(assert (= (and b!6423820 res!2640092) b!6423819))

(assert (= (and b!6423815 (not res!2640091)) b!6423821))

(assert (= (and b!6423821 res!2640095) b!6423814))

(assert (= (or b!6423819 b!6423814) bm!552477))

(assert (= (or b!6423820 b!6423821) bm!552476))

(assert (= (or b!6423813 bm!552476) bm!552475))

(declare-fun m!7218252 () Bool)

(assert (=> bm!552475 m!7218252))

(declare-fun m!7218254 () Bool)

(assert (=> b!6423817 m!7218254))

(declare-fun m!7218256 () Bool)

(assert (=> bm!552477 m!7218256))

(assert (=> bm!552189 d!2014184))

(assert (=> bm!552147 d!2013906))

(assert (=> d!2013392 d!2013396))

(assert (=> d!2013392 d!2013394))

(declare-fun e!3897483 () Bool)

(declare-fun d!2014186 () Bool)

(assert (=> d!2014186 (= (matchZipper!2337 ((_ map or) lt!2377173 lt!2377180) (t!378888 s!2326)) e!3897483)))

(declare-fun res!2640098 () Bool)

(assert (=> d!2014186 (=> res!2640098 e!3897483)))

(assert (=> d!2014186 (= res!2640098 (matchZipper!2337 lt!2377173 (t!378888 s!2326)))))

(assert (=> d!2014186 true))

(declare-fun _$48!2210 () Unit!158631)

(assert (=> d!2014186 (= (choose!47723 lt!2377173 lt!2377180 (t!378888 s!2326)) _$48!2210)))

(declare-fun b!6423824 () Bool)

(assert (=> b!6423824 (= e!3897483 (matchZipper!2337 lt!2377180 (t!378888 s!2326)))))

(assert (= (and d!2014186 (not res!2640098)) b!6423824))

(assert (=> d!2014186 m!7215836))

(assert (=> d!2014186 m!7215834))

(assert (=> b!6423824 m!7215772))

(assert (=> d!2013392 d!2014186))

(assert (=> d!2013394 d!2013954))

(declare-fun d!2014188 () Bool)

(assert (=> d!2014188 (= (nullable!6318 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (nullableFct!2264 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))))

(declare-fun bs!1615668 () Bool)

(assert (= bs!1615668 d!2014188))

(declare-fun m!7218258 () Bool)

(assert (=> bs!1615668 m!7218258))

(assert (=> b!6422197 d!2014188))

(declare-fun bs!1615669 () Bool)

(declare-fun b!6423833 () Bool)

(assert (= bs!1615669 (and b!6423833 d!2014158)))

(declare-fun lambda!354981 () Int)

(assert (=> bs!1615669 (not (= lambda!354981 lambda!354975))))

(declare-fun bs!1615670 () Bool)

(assert (= bs!1615670 (and b!6423833 d!2013890)))

(assert (=> bs!1615670 (not (= lambda!354981 lambda!354950))))

(declare-fun bs!1615671 () Bool)

(assert (= bs!1615671 (and b!6423833 b!6422181)))

(assert (=> bs!1615671 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33163 lt!2377164)) (reg!16654 lt!2377183)) (= (regOne!33163 lt!2377164) lt!2377183)) (= lambda!354981 lambda!354890))))

(declare-fun bs!1615672 () Bool)

(assert (= bs!1615672 (and b!6423833 b!6421798)))

(assert (=> bs!1615672 (not (= lambda!354981 lambda!354870))))

(declare-fun bs!1615673 () Bool)

(assert (= bs!1615673 (and b!6423833 b!6423792)))

(assert (=> bs!1615673 (not (= lambda!354981 lambda!354979))))

(declare-fun bs!1615674 () Bool)

(assert (= bs!1615674 (and b!6423833 d!2013302)))

(assert (=> bs!1615674 (not (= lambda!354981 lambda!354848))))

(declare-fun bs!1615675 () Bool)

(assert (= bs!1615675 (and b!6423833 b!6423644)))

(assert (=> bs!1615675 (not (= lambda!354981 lambda!354971))))

(declare-fun bs!1615676 () Bool)

(assert (= bs!1615676 (and b!6423833 b!6423649)))

(assert (=> bs!1615676 (= (and (= (reg!16654 (regOne!33163 lt!2377164)) (reg!16654 (regTwo!33163 lt!2377164))) (= (regOne!33163 lt!2377164) (regTwo!33163 lt!2377164))) (= lambda!354981 lambda!354970))))

(declare-fun bs!1615677 () Bool)

(assert (= bs!1615677 (and b!6423833 d!2014138)))

(assert (=> bs!1615677 (not (= lambda!354981 lambda!354972))))

(declare-fun bs!1615678 () Bool)

(assert (= bs!1615678 (and b!6423833 d!2013448)))

(assert (=> bs!1615678 (not (= lambda!354981 lambda!354888))))

(declare-fun bs!1615679 () Bool)

(assert (= bs!1615679 (and b!6423833 b!6421803)))

(assert (=> bs!1615679 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33163 lt!2377164)) (reg!16654 r!7292)) (= (regOne!33163 lt!2377164) r!7292)) (= lambda!354981 lambda!354869))))

(declare-fun bs!1615680 () Bool)

(assert (= bs!1615680 (and b!6423833 d!2013426)))

(assert (=> bs!1615680 (not (= lambda!354981 lambda!354883))))

(declare-fun bs!1615681 () Bool)

(assert (= bs!1615681 (and b!6423833 b!6422176)))

(assert (=> bs!1615681 (not (= lambda!354981 lambda!354891))))

(declare-fun bs!1615682 () Bool)

(assert (= bs!1615682 (and b!6423833 b!6423289)))

(assert (=> bs!1615682 (not (= lambda!354981 lambda!354957))))

(assert (=> bs!1615678 (not (= lambda!354981 lambda!354887))))

(declare-fun bs!1615683 () Bool)

(assert (= bs!1615683 (and b!6423833 d!2013318)))

(assert (=> bs!1615683 (not (= lambda!354981 lambda!354861))))

(declare-fun bs!1615684 () Bool)

(assert (= bs!1615684 (and b!6423833 b!6423797)))

(assert (=> bs!1615684 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33163 lt!2377164)) (reg!16654 (regTwo!33163 lt!2377183))) (= (regOne!33163 lt!2377164) (regTwo!33163 lt!2377183))) (= lambda!354981 lambda!354978))))

(declare-fun bs!1615685 () Bool)

(assert (= bs!1615685 (and b!6423833 b!6421294)))

(assert (=> bs!1615685 (not (= lambda!354981 lambda!354817))))

(declare-fun bs!1615686 () Bool)

(assert (= bs!1615686 (and b!6423833 b!6421303)))

(assert (=> bs!1615686 (not (= lambda!354981 lambda!354815))))

(declare-fun bs!1615687 () Bool)

(assert (= bs!1615687 (and b!6423833 d!2014082)))

(assert (=> bs!1615687 (not (= lambda!354981 lambda!354966))))

(declare-fun bs!1615688 () Bool)

(assert (= bs!1615688 (and b!6423833 b!6422121)))

(assert (=> bs!1615688 (not (= lambda!354981 lambda!354885))))

(assert (=> bs!1615683 (not (= lambda!354981 lambda!354860))))

(assert (=> bs!1615686 (not (= lambda!354981 lambda!354814))))

(assert (=> bs!1615669 (not (= lambda!354981 lambda!354974))))

(declare-fun bs!1615689 () Bool)

(assert (= bs!1615689 (and b!6423833 b!6423294)))

(assert (=> bs!1615689 (= (and (= (_1!36607 lt!2377178) s!2326) (= (reg!16654 (regOne!33163 lt!2377164)) (reg!16654 (regOne!33163 r!7292))) (= (regOne!33163 lt!2377164) (regOne!33163 r!7292))) (= lambda!354981 lambda!354956))))

(assert (=> bs!1615685 (not (= lambda!354981 lambda!354818))))

(assert (=> bs!1615670 (not (= lambda!354981 lambda!354951))))

(declare-fun bs!1615690 () Bool)

(assert (= bs!1615690 (and b!6423833 d!2013446)))

(assert (=> bs!1615690 (not (= lambda!354981 lambda!354886))))

(declare-fun bs!1615691 () Bool)

(assert (= bs!1615691 (and b!6423833 b!6421322)))

(assert (=> bs!1615691 (not (= lambda!354981 lambda!354819))))

(declare-fun bs!1615692 () Bool)

(assert (= bs!1615692 (and b!6423833 b!6422126)))

(assert (=> bs!1615692 (= (and (= (reg!16654 (regOne!33163 lt!2377164)) (reg!16654 lt!2377164)) (= (regOne!33163 lt!2377164) lt!2377164)) (= lambda!354981 lambda!354884))))

(assert (=> b!6423833 true))

(assert (=> b!6423833 true))

(declare-fun bs!1615693 () Bool)

(declare-fun b!6423828 () Bool)

(assert (= bs!1615693 (and b!6423828 d!2014158)))

(declare-fun lambda!354982 () Int)

(assert (=> bs!1615693 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) lt!2377164) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354982 lambda!354975))))

(declare-fun bs!1615694 () Bool)

(assert (= bs!1615694 (and b!6423828 d!2013890)))

(assert (=> bs!1615694 (not (= lambda!354982 lambda!354950))))

(declare-fun bs!1615695 () Bool)

(assert (= bs!1615695 (and b!6423828 b!6421798)))

(assert (=> bs!1615695 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354982 lambda!354870))))

(declare-fun bs!1615696 () Bool)

(assert (= bs!1615696 (and b!6423828 b!6423792)))

(assert (=> bs!1615696 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 (regTwo!33163 lt!2377183))) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 (regTwo!33163 lt!2377183)))) (= lambda!354982 lambda!354979))))

(declare-fun bs!1615697 () Bool)

(assert (= bs!1615697 (and b!6423828 d!2013302)))

(assert (=> bs!1615697 (not (= lambda!354982 lambda!354848))))

(declare-fun bs!1615698 () Bool)

(assert (= bs!1615698 (and b!6423828 b!6423644)))

(assert (=> bs!1615698 (= (and (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 (regTwo!33163 lt!2377164))) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 (regTwo!33163 lt!2377164)))) (= lambda!354982 lambda!354971))))

(declare-fun bs!1615699 () Bool)

(assert (= bs!1615699 (and b!6423828 b!6423649)))

(assert (=> bs!1615699 (not (= lambda!354982 lambda!354970))))

(declare-fun bs!1615700 () Bool)

(assert (= bs!1615700 (and b!6423828 d!2014138)))

(assert (=> bs!1615700 (not (= lambda!354982 lambda!354972))))

(declare-fun bs!1615701 () Bool)

(assert (= bs!1615701 (and b!6423828 d!2013448)))

(assert (=> bs!1615701 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354982 lambda!354888))))

(declare-fun bs!1615702 () Bool)

(assert (= bs!1615702 (and b!6423828 b!6421803)))

(assert (=> bs!1615702 (not (= lambda!354982 lambda!354869))))

(declare-fun bs!1615703 () Bool)

(assert (= bs!1615703 (and b!6423828 d!2013426)))

(assert (=> bs!1615703 (not (= lambda!354982 lambda!354883))))

(declare-fun bs!1615704 () Bool)

(assert (= bs!1615704 (and b!6423828 b!6422176)))

(assert (=> bs!1615704 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 lt!2377183)) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 lt!2377183))) (= lambda!354982 lambda!354891))))

(declare-fun bs!1615705 () Bool)

(assert (= bs!1615705 (and b!6423828 b!6423289)))

(assert (=> bs!1615705 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 (regOne!33163 r!7292))) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 (regOne!33163 r!7292)))) (= lambda!354982 lambda!354957))))

(assert (=> bs!1615701 (not (= lambda!354982 lambda!354887))))

(declare-fun bs!1615706 () Bool)

(assert (= bs!1615706 (and b!6423828 b!6422181)))

(assert (=> bs!1615706 (not (= lambda!354982 lambda!354890))))

(declare-fun bs!1615707 () Bool)

(assert (= bs!1615707 (and b!6423828 b!6423833)))

(assert (=> bs!1615707 (not (= lambda!354982 lambda!354981))))

(declare-fun bs!1615708 () Bool)

(assert (= bs!1615708 (and b!6423828 d!2013318)))

(assert (=> bs!1615708 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) lt!2377164) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354982 lambda!354861))))

(declare-fun bs!1615709 () Bool)

(assert (= bs!1615709 (and b!6423828 b!6423797)))

(assert (=> bs!1615709 (not (= lambda!354982 lambda!354978))))

(declare-fun bs!1615710 () Bool)

(assert (= bs!1615710 (and b!6423828 b!6421294)))

(assert (=> bs!1615710 (not (= lambda!354982 lambda!354817))))

(declare-fun bs!1615711 () Bool)

(assert (= bs!1615711 (and b!6423828 b!6421303)))

(assert (=> bs!1615711 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354982 lambda!354815))))

(declare-fun bs!1615712 () Bool)

(assert (= bs!1615712 (and b!6423828 d!2014082)))

(assert (=> bs!1615712 (not (= lambda!354982 lambda!354966))))

(declare-fun bs!1615713 () Bool)

(assert (= bs!1615713 (and b!6423828 b!6422121)))

(assert (=> bs!1615713 (= (and (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 lt!2377164)) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 lt!2377164))) (= lambda!354982 lambda!354885))))

(assert (=> bs!1615708 (not (= lambda!354982 lambda!354860))))

(assert (=> bs!1615711 (not (= lambda!354982 lambda!354814))))

(assert (=> bs!1615693 (not (= lambda!354982 lambda!354974))))

(declare-fun bs!1615714 () Bool)

(assert (= bs!1615714 (and b!6423828 b!6423294)))

(assert (=> bs!1615714 (not (= lambda!354982 lambda!354956))))

(assert (=> bs!1615710 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) lt!2377164) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354982 lambda!354818))))

(assert (=> bs!1615694 (= (and (= (_1!36607 lt!2377178) s!2326) (= (regOne!33162 (regOne!33163 lt!2377164)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 lt!2377164)) (regTwo!33162 r!7292))) (= lambda!354982 lambda!354951))))

(declare-fun bs!1615715 () Bool)

(assert (= bs!1615715 (and b!6423828 d!2013446)))

(assert (=> bs!1615715 (not (= lambda!354982 lambda!354886))))

(declare-fun bs!1615716 () Bool)

(assert (= bs!1615716 (and b!6423828 b!6421322)))

(assert (=> bs!1615716 (not (= lambda!354982 lambda!354819))))

(declare-fun bs!1615717 () Bool)

(assert (= bs!1615717 (and b!6423828 b!6422126)))

(assert (=> bs!1615717 (not (= lambda!354982 lambda!354884))))

(assert (=> b!6423828 true))

(assert (=> b!6423828 true))

(declare-fun b!6423825 () Bool)

(declare-fun e!3897490 () Bool)

(assert (=> b!6423825 (= e!3897490 (= (_1!36607 lt!2377178) (Cons!65150 (c!1173074 (regOne!33163 lt!2377164)) Nil!65150)))))

(declare-fun b!6423826 () Bool)

(declare-fun e!3897489 () Bool)

(declare-fun e!3897488 () Bool)

(assert (=> b!6423826 (= e!3897489 e!3897488)))

(declare-fun c!1173757 () Bool)

(assert (=> b!6423826 (= c!1173757 ((_ is Star!16325) (regOne!33163 lt!2377164)))))

(declare-fun b!6423827 () Bool)

(declare-fun res!2640101 () Bool)

(declare-fun e!3897487 () Bool)

(assert (=> b!6423827 (=> res!2640101 e!3897487)))

(declare-fun call!552483 () Bool)

(assert (=> b!6423827 (= res!2640101 call!552483)))

(assert (=> b!6423827 (= e!3897488 e!3897487)))

(declare-fun call!552484 () Bool)

(assert (=> b!6423828 (= e!3897488 call!552484)))

(declare-fun b!6423829 () Bool)

(declare-fun e!3897484 () Bool)

(assert (=> b!6423829 (= e!3897489 e!3897484)))

(declare-fun res!2640099 () Bool)

(assert (=> b!6423829 (= res!2640099 (matchRSpec!3426 (regOne!33163 (regOne!33163 lt!2377164)) (_1!36607 lt!2377178)))))

(assert (=> b!6423829 (=> res!2640099 e!3897484)))

(declare-fun b!6423830 () Bool)

(assert (=> b!6423830 (= e!3897484 (matchRSpec!3426 (regTwo!33163 (regOne!33163 lt!2377164)) (_1!36607 lt!2377178)))))

(declare-fun b!6423831 () Bool)

(declare-fun c!1173755 () Bool)

(assert (=> b!6423831 (= c!1173755 ((_ is Union!16325) (regOne!33163 lt!2377164)))))

(assert (=> b!6423831 (= e!3897490 e!3897489)))

(declare-fun d!2014190 () Bool)

(declare-fun c!1173756 () Bool)

(assert (=> d!2014190 (= c!1173756 ((_ is EmptyExpr!16325) (regOne!33163 lt!2377164)))))

(declare-fun e!3897485 () Bool)

(assert (=> d!2014190 (= (matchRSpec!3426 (regOne!33163 lt!2377164) (_1!36607 lt!2377178)) e!3897485)))

(declare-fun b!6423832 () Bool)

(declare-fun e!3897486 () Bool)

(assert (=> b!6423832 (= e!3897485 e!3897486)))

(declare-fun res!2640100 () Bool)

(assert (=> b!6423832 (= res!2640100 (not ((_ is EmptyLang!16325) (regOne!33163 lt!2377164))))))

(assert (=> b!6423832 (=> (not res!2640100) (not e!3897486))))

(assert (=> b!6423833 (= e!3897487 call!552484)))

(declare-fun bm!552478 () Bool)

(assert (=> bm!552478 (= call!552484 (Exists!3395 (ite c!1173757 lambda!354981 lambda!354982)))))

(declare-fun b!6423834 () Bool)

(assert (=> b!6423834 (= e!3897485 call!552483)))

(declare-fun b!6423835 () Bool)

(declare-fun c!1173754 () Bool)

(assert (=> b!6423835 (= c!1173754 ((_ is ElementMatch!16325) (regOne!33163 lt!2377164)))))

(assert (=> b!6423835 (= e!3897486 e!3897490)))

(declare-fun bm!552479 () Bool)

(assert (=> bm!552479 (= call!552483 (isEmpty!37310 (_1!36607 lt!2377178)))))

(assert (= (and d!2014190 c!1173756) b!6423834))

(assert (= (and d!2014190 (not c!1173756)) b!6423832))

(assert (= (and b!6423832 res!2640100) b!6423835))

(assert (= (and b!6423835 c!1173754) b!6423825))

(assert (= (and b!6423835 (not c!1173754)) b!6423831))

(assert (= (and b!6423831 c!1173755) b!6423829))

(assert (= (and b!6423831 (not c!1173755)) b!6423826))

(assert (= (and b!6423829 (not res!2640099)) b!6423830))

(assert (= (and b!6423826 c!1173757) b!6423827))

(assert (= (and b!6423826 (not c!1173757)) b!6423828))

(assert (= (and b!6423827 (not res!2640101)) b!6423833))

(assert (= (or b!6423833 b!6423828) bm!552478))

(assert (= (or b!6423834 b!6423827) bm!552479))

(declare-fun m!7218260 () Bool)

(assert (=> b!6423829 m!7218260))

(declare-fun m!7218262 () Bool)

(assert (=> b!6423830 m!7218262))

(declare-fun m!7218264 () Bool)

(assert (=> bm!552478 m!7218264))

(assert (=> bm!552479 m!7215768))

(assert (=> b!6422122 d!2014190))

(assert (=> d!2013458 d!2013906))

(declare-fun b!6423836 () Bool)

(declare-fun e!3897494 () Bool)

(declare-fun call!552486 () Bool)

(assert (=> b!6423836 (= e!3897494 call!552486)))

(declare-fun c!1173759 () Bool)

(declare-fun c!1173758 () Bool)

(declare-fun bm!552480 () Bool)

(assert (=> bm!552480 (= call!552486 (validRegex!8061 (ite c!1173759 (reg!16654 lt!2377183) (ite c!1173758 (regOne!33163 lt!2377183) (regOne!33162 lt!2377183)))))))

(declare-fun d!2014192 () Bool)

(declare-fun res!2640104 () Bool)

(declare-fun e!3897497 () Bool)

(assert (=> d!2014192 (=> res!2640104 e!3897497)))

(assert (=> d!2014192 (= res!2640104 ((_ is ElementMatch!16325) lt!2377183))))

(assert (=> d!2014192 (= (validRegex!8061 lt!2377183) e!3897497)))

(declare-fun bm!552481 () Bool)

(declare-fun call!552487 () Bool)

(assert (=> bm!552481 (= call!552487 call!552486)))

(declare-fun b!6423837 () Bool)

(declare-fun e!3897495 () Bool)

(declare-fun call!552485 () Bool)

(assert (=> b!6423837 (= e!3897495 call!552485)))

(declare-fun b!6423838 () Bool)

(declare-fun res!2640102 () Bool)

(declare-fun e!3897491 () Bool)

(assert (=> b!6423838 (=> res!2640102 e!3897491)))

(assert (=> b!6423838 (= res!2640102 (not ((_ is Concat!25170) lt!2377183)))))

(declare-fun e!3897492 () Bool)

(assert (=> b!6423838 (= e!3897492 e!3897491)))

(declare-fun b!6423839 () Bool)

(declare-fun e!3897496 () Bool)

(assert (=> b!6423839 (= e!3897497 e!3897496)))

(assert (=> b!6423839 (= c!1173759 ((_ is Star!16325) lt!2377183))))

(declare-fun b!6423840 () Bool)

(assert (=> b!6423840 (= e!3897496 e!3897494)))

(declare-fun res!2640105 () Bool)

(assert (=> b!6423840 (= res!2640105 (not (nullable!6318 (reg!16654 lt!2377183))))))

(assert (=> b!6423840 (=> (not res!2640105) (not e!3897494))))

(declare-fun b!6423841 () Bool)

(assert (=> b!6423841 (= e!3897496 e!3897492)))

(assert (=> b!6423841 (= c!1173758 ((_ is Union!16325) lt!2377183))))

(declare-fun b!6423842 () Bool)

(declare-fun e!3897493 () Bool)

(assert (=> b!6423842 (= e!3897493 call!552485)))

(declare-fun b!6423843 () Bool)

(declare-fun res!2640103 () Bool)

(assert (=> b!6423843 (=> (not res!2640103) (not e!3897493))))

(assert (=> b!6423843 (= res!2640103 call!552487)))

(assert (=> b!6423843 (= e!3897492 e!3897493)))

(declare-fun bm!552482 () Bool)

(assert (=> bm!552482 (= call!552485 (validRegex!8061 (ite c!1173758 (regTwo!33163 lt!2377183) (regTwo!33162 lt!2377183))))))

(declare-fun b!6423844 () Bool)

(assert (=> b!6423844 (= e!3897491 e!3897495)))

(declare-fun res!2640106 () Bool)

(assert (=> b!6423844 (=> (not res!2640106) (not e!3897495))))

(assert (=> b!6423844 (= res!2640106 call!552487)))

(assert (= (and d!2014192 (not res!2640104)) b!6423839))

(assert (= (and b!6423839 c!1173759) b!6423840))

(assert (= (and b!6423839 (not c!1173759)) b!6423841))

(assert (= (and b!6423840 res!2640105) b!6423836))

(assert (= (and b!6423841 c!1173758) b!6423843))

(assert (= (and b!6423841 (not c!1173758)) b!6423838))

(assert (= (and b!6423843 res!2640103) b!6423842))

(assert (= (and b!6423838 (not res!2640102)) b!6423844))

(assert (= (and b!6423844 res!2640106) b!6423837))

(assert (= (or b!6423842 b!6423837) bm!552482))

(assert (= (or b!6423843 b!6423844) bm!552481))

(assert (= (or b!6423836 bm!552481) bm!552480))

(declare-fun m!7218266 () Bool)

(assert (=> bm!552480 m!7218266))

(declare-fun m!7218268 () Bool)

(assert (=> b!6423840 m!7218268))

(declare-fun m!7218270 () Bool)

(assert (=> bm!552482 m!7218270))

(assert (=> d!2013458 d!2014192))

(declare-fun d!2014194 () Bool)

(assert (=> d!2014194 (= (nullable!6318 (reg!16654 r!7292)) (nullableFct!2264 (reg!16654 r!7292)))))

(declare-fun bs!1615718 () Bool)

(assert (= bs!1615718 d!2014194))

(declare-fun m!7218272 () Bool)

(assert (=> bs!1615718 m!7218272))

(assert (=> b!6422154 d!2014194))

(declare-fun b!6423845 () Bool)

(declare-fun res!2640111 () Bool)

(declare-fun e!3897500 () Bool)

(assert (=> b!6423845 (=> res!2640111 e!3897500)))

(declare-fun e!3897498 () Bool)

(assert (=> b!6423845 (= res!2640111 e!3897498)))

(declare-fun res!2640107 () Bool)

(assert (=> b!6423845 (=> (not res!2640107) (not e!3897498))))

(declare-fun lt!2377425 () Bool)

(assert (=> b!6423845 (= res!2640107 lt!2377425)))

(declare-fun b!6423846 () Bool)

(declare-fun res!2640112 () Bool)

(assert (=> b!6423846 (=> (not res!2640112) (not e!3897498))))

(assert (=> b!6423846 (= res!2640112 (isEmpty!37310 (tail!12226 (_1!36607 (get!22571 lt!2377318)))))))

(declare-fun b!6423847 () Bool)

(declare-fun e!3897502 () Bool)

(declare-fun e!3897499 () Bool)

(assert (=> b!6423847 (= e!3897502 e!3897499)))

(declare-fun c!1173762 () Bool)

(assert (=> b!6423847 (= c!1173762 ((_ is EmptyLang!16325) (regOne!33162 r!7292)))))

(declare-fun b!6423848 () Bool)

(declare-fun res!2640113 () Bool)

(declare-fun e!3897503 () Bool)

(assert (=> b!6423848 (=> res!2640113 e!3897503)))

(assert (=> b!6423848 (= res!2640113 (not (isEmpty!37310 (tail!12226 (_1!36607 (get!22571 lt!2377318))))))))

(declare-fun d!2014196 () Bool)

(assert (=> d!2014196 e!3897502))

(declare-fun c!1173760 () Bool)

(assert (=> d!2014196 (= c!1173760 ((_ is EmptyExpr!16325) (regOne!33162 r!7292)))))

(declare-fun e!3897501 () Bool)

(assert (=> d!2014196 (= lt!2377425 e!3897501)))

(declare-fun c!1173761 () Bool)

(assert (=> d!2014196 (= c!1173761 (isEmpty!37310 (_1!36607 (get!22571 lt!2377318))))))

(assert (=> d!2014196 (validRegex!8061 (regOne!33162 r!7292))))

(assert (=> d!2014196 (= (matchR!8508 (regOne!33162 r!7292) (_1!36607 (get!22571 lt!2377318))) lt!2377425)))

(declare-fun b!6423849 () Bool)

(declare-fun e!3897504 () Bool)

(assert (=> b!6423849 (= e!3897504 e!3897503)))

(declare-fun res!2640110 () Bool)

(assert (=> b!6423849 (=> res!2640110 e!3897503)))

(declare-fun call!552488 () Bool)

(assert (=> b!6423849 (= res!2640110 call!552488)))

(declare-fun b!6423850 () Bool)

(assert (=> b!6423850 (= e!3897503 (not (= (head!13141 (_1!36607 (get!22571 lt!2377318))) (c!1173074 (regOne!33162 r!7292)))))))

(declare-fun b!6423851 () Bool)

(declare-fun res!2640109 () Bool)

(assert (=> b!6423851 (=> res!2640109 e!3897500)))

(assert (=> b!6423851 (= res!2640109 (not ((_ is ElementMatch!16325) (regOne!33162 r!7292))))))

(assert (=> b!6423851 (= e!3897499 e!3897500)))

(declare-fun b!6423852 () Bool)

(assert (=> b!6423852 (= e!3897502 (= lt!2377425 call!552488))))

(declare-fun b!6423853 () Bool)

(assert (=> b!6423853 (= e!3897501 (matchR!8508 (derivativeStep!5029 (regOne!33162 r!7292) (head!13141 (_1!36607 (get!22571 lt!2377318)))) (tail!12226 (_1!36607 (get!22571 lt!2377318)))))))

(declare-fun b!6423854 () Bool)

(assert (=> b!6423854 (= e!3897501 (nullable!6318 (regOne!33162 r!7292)))))

(declare-fun bm!552483 () Bool)

(assert (=> bm!552483 (= call!552488 (isEmpty!37310 (_1!36607 (get!22571 lt!2377318))))))

(declare-fun b!6423855 () Bool)

(assert (=> b!6423855 (= e!3897498 (= (head!13141 (_1!36607 (get!22571 lt!2377318))) (c!1173074 (regOne!33162 r!7292))))))

(declare-fun b!6423856 () Bool)

(assert (=> b!6423856 (= e!3897499 (not lt!2377425))))

(declare-fun b!6423857 () Bool)

(declare-fun res!2640114 () Bool)

(assert (=> b!6423857 (=> (not res!2640114) (not e!3897498))))

(assert (=> b!6423857 (= res!2640114 (not call!552488))))

(declare-fun b!6423858 () Bool)

(assert (=> b!6423858 (= e!3897500 e!3897504)))

(declare-fun res!2640108 () Bool)

(assert (=> b!6423858 (=> (not res!2640108) (not e!3897504))))

(assert (=> b!6423858 (= res!2640108 (not lt!2377425))))

(assert (= (and d!2014196 c!1173761) b!6423854))

(assert (= (and d!2014196 (not c!1173761)) b!6423853))

(assert (= (and d!2014196 c!1173760) b!6423852))

(assert (= (and d!2014196 (not c!1173760)) b!6423847))

(assert (= (and b!6423847 c!1173762) b!6423856))

(assert (= (and b!6423847 (not c!1173762)) b!6423851))

(assert (= (and b!6423851 (not res!2640109)) b!6423845))

(assert (= (and b!6423845 res!2640107) b!6423857))

(assert (= (and b!6423857 res!2640114) b!6423846))

(assert (= (and b!6423846 res!2640112) b!6423855))

(assert (= (and b!6423845 (not res!2640111)) b!6423858))

(assert (= (and b!6423858 res!2640108) b!6423849))

(assert (= (and b!6423849 (not res!2640110)) b!6423848))

(assert (= (and b!6423848 (not res!2640113)) b!6423850))

(assert (= (or b!6423852 b!6423849 b!6423857) bm!552483))

(declare-fun m!7218274 () Bool)

(assert (=> b!6423846 m!7218274))

(assert (=> b!6423846 m!7218274))

(declare-fun m!7218276 () Bool)

(assert (=> b!6423846 m!7218276))

(assert (=> b!6423848 m!7218274))

(assert (=> b!6423848 m!7218274))

(assert (=> b!6423848 m!7218276))

(declare-fun m!7218278 () Bool)

(assert (=> b!6423855 m!7218278))

(declare-fun m!7218280 () Bool)

(assert (=> bm!552483 m!7218280))

(assert (=> b!6423854 m!7217752))

(assert (=> b!6423853 m!7218278))

(assert (=> b!6423853 m!7218278))

(declare-fun m!7218282 () Bool)

(assert (=> b!6423853 m!7218282))

(assert (=> b!6423853 m!7218274))

(assert (=> b!6423853 m!7218282))

(assert (=> b!6423853 m!7218274))

(declare-fun m!7218284 () Bool)

(assert (=> b!6423853 m!7218284))

(assert (=> b!6423850 m!7218278))

(assert (=> d!2014196 m!7218280))

(assert (=> d!2014196 m!7216586))

(assert (=> b!6422144 d!2014196))

(assert (=> b!6422144 d!2013986))

(assert (=> b!6421690 d!2014086))

(assert (=> bm!552186 d!2013464))

(declare-fun bs!1615719 () Bool)

(declare-fun d!2014198 () Bool)

(assert (= bs!1615719 (and d!2014198 d!2013484)))

(declare-fun lambda!354983 () Int)

(assert (=> bs!1615719 (= lambda!354983 lambda!354897)))

(declare-fun bs!1615720 () Bool)

(assert (= bs!1615720 (and d!2014198 d!2013982)))

(assert (=> bs!1615720 (= lambda!354983 lambda!354959)))

(declare-fun bs!1615721 () Bool)

(assert (= bs!1615721 (and d!2014198 d!2014168)))

(assert (=> bs!1615721 (= lambda!354983 lambda!354976)))

(declare-fun bs!1615722 () Bool)

(assert (= bs!1615722 (and d!2014198 d!2014014)))

(assert (=> bs!1615722 (= lambda!354983 lambda!354961)))

(declare-fun bs!1615723 () Bool)

(assert (= bs!1615723 (and d!2014198 d!2014170)))

(assert (=> bs!1615723 (= lambda!354983 lambda!354977)))

(declare-fun bs!1615724 () Bool)

(assert (= bs!1615724 (and d!2014198 d!2013412)))

(assert (=> bs!1615724 (= lambda!354983 lambda!354879)))

(declare-fun bs!1615725 () Bool)

(assert (= bs!1615725 (and d!2014198 d!2013968)))

(assert (=> bs!1615725 (= lambda!354983 lambda!354958)))

(declare-fun bs!1615726 () Bool)

(assert (= bs!1615726 (and d!2014198 d!2013456)))

(assert (=> bs!1615726 (= lambda!354983 lambda!354889)))

(declare-fun bs!1615727 () Bool)

(assert (= bs!1615727 (and d!2014198 d!2014098)))

(assert (=> bs!1615727 (= lambda!354983 lambda!354968)))

(declare-fun bs!1615728 () Bool)

(assert (= bs!1615728 (and d!2014198 d!2013382)))

(assert (=> bs!1615728 (= lambda!354983 lambda!354876)))

(declare-fun bs!1615729 () Bool)

(assert (= bs!1615729 (and d!2014198 d!2014096)))

(assert (=> bs!1615729 (= lambda!354983 lambda!354967)))

(declare-fun bs!1615730 () Bool)

(assert (= bs!1615730 (and d!2014198 d!2013482)))

(assert (=> bs!1615730 (= lambda!354983 lambda!354894)))

(declare-fun b!6423859 () Bool)

(declare-fun e!3897509 () Bool)

(declare-fun lt!2377426 () Regex!16325)

(assert (=> b!6423859 (= e!3897509 (isEmptyExpr!1726 lt!2377426))))

(declare-fun b!6423860 () Bool)

(declare-fun e!3897505 () Regex!16325)

(assert (=> b!6423860 (= e!3897505 (h!71599 (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6423861 () Bool)

(declare-fun e!3897507 () Regex!16325)

(assert (=> b!6423861 (= e!3897507 EmptyExpr!16325)))

(declare-fun e!3897506 () Bool)

(assert (=> d!2014198 e!3897506))

(declare-fun res!2640116 () Bool)

(assert (=> d!2014198 (=> (not res!2640116) (not e!3897506))))

(assert (=> d!2014198 (= res!2640116 (validRegex!8061 lt!2377426))))

(assert (=> d!2014198 (= lt!2377426 e!3897505)))

(declare-fun c!1173765 () Bool)

(declare-fun e!3897510 () Bool)

(assert (=> d!2014198 (= c!1173765 e!3897510)))

(declare-fun res!2640115 () Bool)

(assert (=> d!2014198 (=> (not res!2640115) (not e!3897510))))

(assert (=> d!2014198 (= res!2640115 ((_ is Cons!65151) (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> d!2014198 (forall!15515 (t!378889 (exprs!6209 (h!71600 zl!343))) lambda!354983)))

(assert (=> d!2014198 (= (generalisedConcat!1922 (t!378889 (exprs!6209 (h!71600 zl!343)))) lt!2377426)))

(declare-fun b!6423862 () Bool)

(declare-fun e!3897508 () Bool)

(assert (=> b!6423862 (= e!3897508 (= lt!2377426 (head!13142 (t!378889 (exprs!6209 (h!71600 zl!343))))))))

(declare-fun b!6423863 () Bool)

(assert (=> b!6423863 (= e!3897506 e!3897509)))

(declare-fun c!1173763 () Bool)

(assert (=> b!6423863 (= c!1173763 (isEmpty!37308 (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6423864 () Bool)

(assert (=> b!6423864 (= e!3897508 (isConcat!1249 lt!2377426))))

(declare-fun b!6423865 () Bool)

(assert (=> b!6423865 (= e!3897507 (Concat!25170 (h!71599 (t!378889 (exprs!6209 (h!71600 zl!343)))) (generalisedConcat!1922 (t!378889 (t!378889 (exprs!6209 (h!71600 zl!343)))))))))

(declare-fun b!6423866 () Bool)

(assert (=> b!6423866 (= e!3897509 e!3897508)))

(declare-fun c!1173766 () Bool)

(assert (=> b!6423866 (= c!1173766 (isEmpty!37308 (tail!12227 (t!378889 (exprs!6209 (h!71600 zl!343))))))))

(declare-fun b!6423867 () Bool)

(assert (=> b!6423867 (= e!3897510 (isEmpty!37308 (t!378889 (t!378889 (exprs!6209 (h!71600 zl!343))))))))

(declare-fun b!6423868 () Bool)

(assert (=> b!6423868 (= e!3897505 e!3897507)))

(declare-fun c!1173764 () Bool)

(assert (=> b!6423868 (= c!1173764 ((_ is Cons!65151) (t!378889 (exprs!6209 (h!71600 zl!343)))))))

(assert (= (and d!2014198 res!2640115) b!6423867))

(assert (= (and d!2014198 c!1173765) b!6423860))

(assert (= (and d!2014198 (not c!1173765)) b!6423868))

(assert (= (and b!6423868 c!1173764) b!6423865))

(assert (= (and b!6423868 (not c!1173764)) b!6423861))

(assert (= (and d!2014198 res!2640116) b!6423863))

(assert (= (and b!6423863 c!1173763) b!6423859))

(assert (= (and b!6423863 (not c!1173763)) b!6423866))

(assert (= (and b!6423866 c!1173766) b!6423862))

(assert (= (and b!6423866 (not c!1173766)) b!6423864))

(declare-fun m!7218286 () Bool)

(assert (=> b!6423862 m!7218286))

(declare-fun m!7218288 () Bool)

(assert (=> b!6423867 m!7218288))

(declare-fun m!7218290 () Bool)

(assert (=> d!2014198 m!7218290))

(declare-fun m!7218292 () Bool)

(assert (=> d!2014198 m!7218292))

(declare-fun m!7218294 () Bool)

(assert (=> b!6423859 m!7218294))

(declare-fun m!7218296 () Bool)

(assert (=> b!6423866 m!7218296))

(assert (=> b!6423866 m!7218296))

(declare-fun m!7218298 () Bool)

(assert (=> b!6423866 m!7218298))

(declare-fun m!7218300 () Bool)

(assert (=> b!6423865 m!7218300))

(assert (=> b!6423863 m!7215830))

(declare-fun m!7218302 () Bool)

(assert (=> b!6423864 m!7218302))

(assert (=> b!6422052 d!2014198))

(declare-fun d!2014200 () Bool)

(assert (=> d!2014200 true))

(assert (=> d!2014200 true))

(declare-fun res!2640117 () Bool)

(assert (=> d!2014200 (= (choose!47719 lambda!354814) res!2640117)))

(assert (=> d!2013444 d!2014200))

(assert (=> d!2013462 d!2013458))

(assert (=> d!2013462 d!2013460))

(declare-fun d!2014202 () Bool)

(assert (=> d!2014202 (= (matchR!8508 lt!2377183 s!2326) (matchRSpec!3426 lt!2377183 s!2326))))

(assert (=> d!2014202 true))

(declare-fun _$88!5120 () Unit!158631)

(assert (=> d!2014202 (= (choose!47722 lt!2377183 s!2326) _$88!5120)))

(declare-fun bs!1615731 () Bool)

(assert (= bs!1615731 d!2014202))

(assert (=> bs!1615731 m!7215824))

(assert (=> bs!1615731 m!7215826))

(assert (=> d!2013462 d!2014202))

(assert (=> d!2013462 d!2014192))

(declare-fun b!6423869 () Bool)

(declare-fun e!3897514 () (InoxSet Context!11418))

(declare-fun call!552492 () (InoxSet Context!11418))

(declare-fun call!552493 () (InoxSet Context!11418))

(assert (=> b!6423869 (= e!3897514 ((_ map or) call!552492 call!552493))))

(declare-fun b!6423870 () Bool)

(declare-fun c!1173770 () Bool)

(assert (=> b!6423870 (= c!1173770 ((_ is Star!16325) (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun e!3897513 () (InoxSet Context!11418))

(declare-fun e!3897512 () (InoxSet Context!11418))

(assert (=> b!6423870 (= e!3897513 e!3897512)))

(declare-fun b!6423871 () Bool)

(assert (=> b!6423871 (= e!3897512 ((as const (Array Context!11418 Bool)) false))))

(declare-fun call!552491 () List!65275)

(declare-fun c!1173771 () Bool)

(declare-fun c!1173769 () Bool)

(declare-fun c!1173768 () Bool)

(declare-fun bm!552484 () Bool)

(assert (=> bm!552484 (= call!552492 (derivationStepZipperDown!1573 (ite c!1173769 (regOne!33163 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))) (ite c!1173771 (regTwo!33162 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))) (ite c!1173768 (regOne!33162 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))) (reg!16654 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))) (ite (or c!1173769 c!1173771) (ite c!1173252 lt!2377188 (Context!11419 call!552173)) (Context!11419 call!552491)) (h!71598 s!2326)))))

(declare-fun b!6423872 () Bool)

(declare-fun e!3897516 () Bool)

(assert (=> b!6423872 (= e!3897516 (nullable!6318 (regOne!33162 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))))

(declare-fun b!6423873 () Bool)

(declare-fun e!3897511 () (InoxSet Context!11418))

(assert (=> b!6423873 (= e!3897511 e!3897513)))

(assert (=> b!6423873 (= c!1173768 ((_ is Concat!25170) (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun bm!552485 () Bool)

(declare-fun call!552494 () List!65275)

(assert (=> bm!552485 (= call!552493 (derivationStepZipperDown!1573 (ite c!1173769 (regTwo!33163 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))) (regOne!33162 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))) (ite c!1173769 (ite c!1173252 lt!2377188 (Context!11419 call!552173)) (Context!11419 call!552494)) (h!71598 s!2326)))))

(declare-fun bm!552486 () Bool)

(declare-fun call!552490 () (InoxSet Context!11418))

(assert (=> bm!552486 (= call!552490 call!552492)))

(declare-fun d!2014204 () Bool)

(declare-fun c!1173767 () Bool)

(assert (=> d!2014204 (= c!1173767 (and ((_ is ElementMatch!16325) (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))) (= (c!1173074 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))) (h!71598 s!2326))))))

(declare-fun e!3897515 () (InoxSet Context!11418))

(assert (=> d!2014204 (= (derivationStepZipperDown!1573 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))) (ite c!1173252 lt!2377188 (Context!11419 call!552173)) (h!71598 s!2326)) e!3897515)))

(declare-fun b!6423874 () Bool)

(assert (=> b!6423874 (= e!3897515 e!3897514)))

(assert (=> b!6423874 (= c!1173769 ((_ is Union!16325) (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))))))

(declare-fun b!6423875 () Bool)

(declare-fun call!552489 () (InoxSet Context!11418))

(assert (=> b!6423875 (= e!3897513 call!552489)))

(declare-fun b!6423876 () Bool)

(assert (=> b!6423876 (= e!3897515 (store ((as const (Array Context!11418 Bool)) false) (ite c!1173252 lt!2377188 (Context!11419 call!552173)) true))))

(declare-fun b!6423877 () Bool)

(assert (=> b!6423877 (= c!1173771 e!3897516)))

(declare-fun res!2640118 () Bool)

(assert (=> b!6423877 (=> (not res!2640118) (not e!3897516))))

(assert (=> b!6423877 (= res!2640118 ((_ is Concat!25170) (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))))))

(assert (=> b!6423877 (= e!3897514 e!3897511)))

(declare-fun b!6423878 () Bool)

(assert (=> b!6423878 (= e!3897511 ((_ map or) call!552493 call!552490))))

(declare-fun b!6423879 () Bool)

(assert (=> b!6423879 (= e!3897512 call!552489)))

(declare-fun bm!552487 () Bool)

(assert (=> bm!552487 (= call!552491 call!552494)))

(declare-fun bm!552488 () Bool)

(assert (=> bm!552488 (= call!552489 call!552490)))

(declare-fun bm!552489 () Bool)

(assert (=> bm!552489 (= call!552494 ($colon$colon!2186 (exprs!6209 (ite c!1173252 lt!2377188 (Context!11419 call!552173))) (ite (or c!1173771 c!1173768) (regTwo!33162 (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292))))) (ite c!1173252 (regTwo!33163 (reg!16654 (regOne!33162 r!7292))) (regOne!33162 (reg!16654 (regOne!33162 r!7292)))))))))

(assert (= (and d!2014204 c!1173767) b!6423876))

(assert (= (and d!2014204 (not c!1173767)) b!6423874))

(assert (= (and b!6423874 c!1173769) b!6423869))

(assert (= (and b!6423874 (not c!1173769)) b!6423877))

(assert (= (and b!6423877 res!2640118) b!6423872))

(assert (= (and b!6423877 c!1173771) b!6423878))

(assert (= (and b!6423877 (not c!1173771)) b!6423873))

(assert (= (and b!6423873 c!1173768) b!6423875))

(assert (= (and b!6423873 (not c!1173768)) b!6423870))

(assert (= (and b!6423870 c!1173770) b!6423879))

(assert (= (and b!6423870 (not c!1173770)) b!6423871))

(assert (= (or b!6423875 b!6423879) bm!552487))

(assert (= (or b!6423875 b!6423879) bm!552488))

(assert (= (or b!6423878 bm!552487) bm!552489))

(assert (= (or b!6423878 bm!552488) bm!552486))

(assert (= (or b!6423869 b!6423878) bm!552485))

(assert (= (or b!6423869 bm!552486) bm!552484))

(declare-fun m!7218304 () Bool)

(assert (=> bm!552489 m!7218304))

(declare-fun m!7218306 () Bool)

(assert (=> bm!552484 m!7218306))

(declare-fun m!7218308 () Bool)

(assert (=> b!6423876 m!7218308))

(declare-fun m!7218310 () Bool)

(assert (=> b!6423872 m!7218310))

(declare-fun m!7218312 () Bool)

(assert (=> bm!552485 m!7218312))

(assert (=> bm!552164 d!2014204))

(declare-fun b!6423880 () Bool)

(declare-fun e!3897520 () (InoxSet Context!11418))

(declare-fun call!552498 () (InoxSet Context!11418))

(declare-fun call!552499 () (InoxSet Context!11418))

(assert (=> b!6423880 (= e!3897520 ((_ map or) call!552498 call!552499))))

(declare-fun b!6423881 () Bool)

(declare-fun c!1173775 () Bool)

(assert (=> b!6423881 (= c!1173775 ((_ is Star!16325) (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))

(declare-fun e!3897519 () (InoxSet Context!11418))

(declare-fun e!3897518 () (InoxSet Context!11418))

(assert (=> b!6423881 (= e!3897519 e!3897518)))

(declare-fun b!6423882 () Bool)

(assert (=> b!6423882 (= e!3897518 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173774 () Bool)

(declare-fun c!1173773 () Bool)

(declare-fun c!1173776 () Bool)

(declare-fun bm!552490 () Bool)

(declare-fun call!552497 () List!65275)

(assert (=> bm!552490 (= call!552498 (derivationStepZipperDown!1573 (ite c!1173774 (regOne!33163 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))) (ite c!1173776 (regTwo!33162 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))) (ite c!1173773 (regOne!33162 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))) (reg!16654 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))))))) (ite (or c!1173774 c!1173776) (ite c!1173312 lt!2377181 (Context!11419 call!552203)) (Context!11419 call!552497)) (h!71598 s!2326)))))

(declare-fun b!6423883 () Bool)

(declare-fun e!3897522 () Bool)

(assert (=> b!6423883 (= e!3897522 (nullable!6318 (regOne!33162 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))))))))

(declare-fun b!6423884 () Bool)

(declare-fun e!3897517 () (InoxSet Context!11418))

(assert (=> b!6423884 (= e!3897517 e!3897519)))

(assert (=> b!6423884 (= c!1173773 ((_ is Concat!25170) (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))

(declare-fun bm!552491 () Bool)

(declare-fun call!552500 () List!65275)

(assert (=> bm!552491 (= call!552499 (derivationStepZipperDown!1573 (ite c!1173774 (regTwo!33163 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))) (regOne!33162 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))))) (ite c!1173774 (ite c!1173312 lt!2377181 (Context!11419 call!552203)) (Context!11419 call!552500)) (h!71598 s!2326)))))

(declare-fun bm!552492 () Bool)

(declare-fun call!552496 () (InoxSet Context!11418))

(assert (=> bm!552492 (= call!552496 call!552498)))

(declare-fun d!2014206 () Bool)

(declare-fun c!1173772 () Bool)

(assert (=> d!2014206 (= c!1173772 (and ((_ is ElementMatch!16325) (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))) (= (c!1173074 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))) (h!71598 s!2326))))))

(declare-fun e!3897521 () (InoxSet Context!11418))

(assert (=> d!2014206 (= (derivationStepZipperDown!1573 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))) (ite c!1173312 lt!2377181 (Context!11419 call!552203)) (h!71598 s!2326)) e!3897521)))

(declare-fun b!6423885 () Bool)

(assert (=> b!6423885 (= e!3897521 e!3897520)))

(assert (=> b!6423885 (= c!1173774 ((_ is Union!16325) (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))

(declare-fun b!6423886 () Bool)

(declare-fun call!552495 () (InoxSet Context!11418))

(assert (=> b!6423886 (= e!3897519 call!552495)))

(declare-fun b!6423887 () Bool)

(assert (=> b!6423887 (= e!3897521 (store ((as const (Array Context!11418 Bool)) false) (ite c!1173312 lt!2377181 (Context!11419 call!552203)) true))))

(declare-fun b!6423888 () Bool)

(assert (=> b!6423888 (= c!1173776 e!3897522)))

(declare-fun res!2640119 () Bool)

(assert (=> b!6423888 (=> (not res!2640119) (not e!3897522))))

(assert (=> b!6423888 (= res!2640119 ((_ is Concat!25170) (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))))))

(assert (=> b!6423888 (= e!3897520 e!3897517)))

(declare-fun b!6423889 () Bool)

(assert (=> b!6423889 (= e!3897517 ((_ map or) call!552499 call!552496))))

(declare-fun b!6423890 () Bool)

(assert (=> b!6423890 (= e!3897518 call!552495)))

(declare-fun bm!552493 () Bool)

(assert (=> bm!552493 (= call!552497 call!552500)))

(declare-fun bm!552494 () Bool)

(assert (=> bm!552494 (= call!552495 call!552496)))

(declare-fun bm!552495 () Bool)

(assert (=> bm!552495 (= call!552500 ($colon$colon!2186 (exprs!6209 (ite c!1173312 lt!2377181 (Context!11419 call!552203))) (ite (or c!1173776 c!1173773) (regTwo!33162 (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))))) (ite c!1173312 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))))))))

(assert (= (and d!2014206 c!1173772) b!6423887))

(assert (= (and d!2014206 (not c!1173772)) b!6423885))

(assert (= (and b!6423885 c!1173774) b!6423880))

(assert (= (and b!6423885 (not c!1173774)) b!6423888))

(assert (= (and b!6423888 res!2640119) b!6423883))

(assert (= (and b!6423888 c!1173776) b!6423889))

(assert (= (and b!6423888 (not c!1173776)) b!6423884))

(assert (= (and b!6423884 c!1173773) b!6423886))

(assert (= (and b!6423884 (not c!1173773)) b!6423881))

(assert (= (and b!6423881 c!1173775) b!6423890))

(assert (= (and b!6423881 (not c!1173775)) b!6423882))

(assert (= (or b!6423886 b!6423890) bm!552493))

(assert (= (or b!6423886 b!6423890) bm!552494))

(assert (= (or b!6423889 bm!552493) bm!552495))

(assert (= (or b!6423889 bm!552494) bm!552492))

(assert (= (or b!6423880 b!6423889) bm!552491))

(assert (= (or b!6423880 bm!552492) bm!552490))

(declare-fun m!7218314 () Bool)

(assert (=> bm!552495 m!7218314))

(declare-fun m!7218316 () Bool)

(assert (=> bm!552490 m!7218316))

(declare-fun m!7218318 () Bool)

(assert (=> b!6423887 m!7218318))

(declare-fun m!7218320 () Bool)

(assert (=> b!6423883 m!7218320))

(declare-fun m!7218322 () Bool)

(assert (=> bm!552491 m!7218322))

(assert (=> bm!552194 d!2014206))

(assert (=> b!6422064 d!2014010))

(assert (=> b!6422064 d!2013944))

(declare-fun b!6423891 () Bool)

(declare-fun res!2640124 () Bool)

(declare-fun e!3897525 () Bool)

(assert (=> b!6423891 (=> res!2640124 e!3897525)))

(declare-fun e!3897523 () Bool)

(assert (=> b!6423891 (= res!2640124 e!3897523)))

(declare-fun res!2640120 () Bool)

(assert (=> b!6423891 (=> (not res!2640120) (not e!3897523))))

(declare-fun lt!2377427 () Bool)

(assert (=> b!6423891 (= res!2640120 lt!2377427)))

(declare-fun b!6423892 () Bool)

(declare-fun res!2640125 () Bool)

(assert (=> b!6423892 (=> (not res!2640125) (not e!3897523))))

(assert (=> b!6423892 (= res!2640125 (isEmpty!37310 (tail!12226 (tail!12226 s!2326))))))

(declare-fun b!6423893 () Bool)

(declare-fun e!3897527 () Bool)

(declare-fun e!3897524 () Bool)

(assert (=> b!6423893 (= e!3897527 e!3897524)))

(declare-fun c!1173779 () Bool)

(assert (=> b!6423893 (= c!1173779 ((_ is EmptyLang!16325) (derivativeStep!5029 lt!2377183 (head!13141 s!2326))))))

(declare-fun b!6423894 () Bool)

(declare-fun res!2640126 () Bool)

(declare-fun e!3897528 () Bool)

(assert (=> b!6423894 (=> res!2640126 e!3897528)))

(assert (=> b!6423894 (= res!2640126 (not (isEmpty!37310 (tail!12226 (tail!12226 s!2326)))))))

(declare-fun d!2014208 () Bool)

(assert (=> d!2014208 e!3897527))

(declare-fun c!1173777 () Bool)

(assert (=> d!2014208 (= c!1173777 ((_ is EmptyExpr!16325) (derivativeStep!5029 lt!2377183 (head!13141 s!2326))))))

(declare-fun e!3897526 () Bool)

(assert (=> d!2014208 (= lt!2377427 e!3897526)))

(declare-fun c!1173778 () Bool)

(assert (=> d!2014208 (= c!1173778 (isEmpty!37310 (tail!12226 s!2326)))))

(assert (=> d!2014208 (validRegex!8061 (derivativeStep!5029 lt!2377183 (head!13141 s!2326)))))

(assert (=> d!2014208 (= (matchR!8508 (derivativeStep!5029 lt!2377183 (head!13141 s!2326)) (tail!12226 s!2326)) lt!2377427)))

(declare-fun b!6423895 () Bool)

(declare-fun e!3897529 () Bool)

(assert (=> b!6423895 (= e!3897529 e!3897528)))

(declare-fun res!2640123 () Bool)

(assert (=> b!6423895 (=> res!2640123 e!3897528)))

(declare-fun call!552501 () Bool)

(assert (=> b!6423895 (= res!2640123 call!552501)))

(declare-fun b!6423896 () Bool)

(assert (=> b!6423896 (= e!3897528 (not (= (head!13141 (tail!12226 s!2326)) (c!1173074 (derivativeStep!5029 lt!2377183 (head!13141 s!2326))))))))

(declare-fun b!6423897 () Bool)

(declare-fun res!2640122 () Bool)

(assert (=> b!6423897 (=> res!2640122 e!3897525)))

(assert (=> b!6423897 (= res!2640122 (not ((_ is ElementMatch!16325) (derivativeStep!5029 lt!2377183 (head!13141 s!2326)))))))

(assert (=> b!6423897 (= e!3897524 e!3897525)))

(declare-fun b!6423898 () Bool)

(assert (=> b!6423898 (= e!3897527 (= lt!2377427 call!552501))))

(declare-fun b!6423899 () Bool)

(assert (=> b!6423899 (= e!3897526 (matchR!8508 (derivativeStep!5029 (derivativeStep!5029 lt!2377183 (head!13141 s!2326)) (head!13141 (tail!12226 s!2326))) (tail!12226 (tail!12226 s!2326))))))

(declare-fun b!6423900 () Bool)

(assert (=> b!6423900 (= e!3897526 (nullable!6318 (derivativeStep!5029 lt!2377183 (head!13141 s!2326))))))

(declare-fun bm!552496 () Bool)

(assert (=> bm!552496 (= call!552501 (isEmpty!37310 (tail!12226 s!2326)))))

(declare-fun b!6423901 () Bool)

(assert (=> b!6423901 (= e!3897523 (= (head!13141 (tail!12226 s!2326)) (c!1173074 (derivativeStep!5029 lt!2377183 (head!13141 s!2326)))))))

(declare-fun b!6423902 () Bool)

(assert (=> b!6423902 (= e!3897524 (not lt!2377427))))

(declare-fun b!6423903 () Bool)

(declare-fun res!2640127 () Bool)

(assert (=> b!6423903 (=> (not res!2640127) (not e!3897523))))

(assert (=> b!6423903 (= res!2640127 (not call!552501))))

(declare-fun b!6423904 () Bool)

(assert (=> b!6423904 (= e!3897525 e!3897529)))

(declare-fun res!2640121 () Bool)

(assert (=> b!6423904 (=> (not res!2640121) (not e!3897529))))

(assert (=> b!6423904 (= res!2640121 (not lt!2377427))))

(assert (= (and d!2014208 c!1173778) b!6423900))

(assert (= (and d!2014208 (not c!1173778)) b!6423899))

(assert (= (and d!2014208 c!1173777) b!6423898))

(assert (= (and d!2014208 (not c!1173777)) b!6423893))

(assert (= (and b!6423893 c!1173779) b!6423902))

(assert (= (and b!6423893 (not c!1173779)) b!6423897))

(assert (= (and b!6423897 (not res!2640122)) b!6423891))

(assert (= (and b!6423891 res!2640120) b!6423903))

(assert (= (and b!6423903 res!2640127) b!6423892))

(assert (= (and b!6423892 res!2640125) b!6423901))

(assert (= (and b!6423891 (not res!2640124)) b!6423904))

(assert (= (and b!6423904 res!2640121) b!6423895))

(assert (= (and b!6423895 (not res!2640123)) b!6423894))

(assert (= (and b!6423894 (not res!2640126)) b!6423896))

(assert (= (or b!6423898 b!6423895 b!6423903) bm!552496))

(assert (=> b!6423892 m!7216358))

(assert (=> b!6423892 m!7217682))

(assert (=> b!6423892 m!7217682))

(assert (=> b!6423892 m!7217736))

(assert (=> b!6423894 m!7216358))

(assert (=> b!6423894 m!7217682))

(assert (=> b!6423894 m!7217682))

(assert (=> b!6423894 m!7217736))

(assert (=> b!6423901 m!7216358))

(assert (=> b!6423901 m!7217678))

(assert (=> bm!552496 m!7216358))

(assert (=> bm!552496 m!7216360))

(assert (=> b!6423900 m!7216630))

(declare-fun m!7218324 () Bool)

(assert (=> b!6423900 m!7218324))

(assert (=> b!6423899 m!7216358))

(assert (=> b!6423899 m!7217678))

(assert (=> b!6423899 m!7216630))

(assert (=> b!6423899 m!7217678))

(declare-fun m!7218326 () Bool)

(assert (=> b!6423899 m!7218326))

(assert (=> b!6423899 m!7216358))

(assert (=> b!6423899 m!7217682))

(assert (=> b!6423899 m!7218326))

(assert (=> b!6423899 m!7217682))

(declare-fun m!7218328 () Bool)

(assert (=> b!6423899 m!7218328))

(assert (=> b!6423896 m!7216358))

(assert (=> b!6423896 m!7217678))

(assert (=> d!2014208 m!7216358))

(assert (=> d!2014208 m!7216360))

(assert (=> d!2014208 m!7216630))

(declare-fun m!7218330 () Bool)

(assert (=> d!2014208 m!7218330))

(assert (=> b!6422167 d!2014208))

(declare-fun bm!552497 () Bool)

(declare-fun call!552504 () Regex!16325)

(declare-fun call!552505 () Regex!16325)

(assert (=> bm!552497 (= call!552504 call!552505)))

(declare-fun b!6423905 () Bool)

(declare-fun c!1173781 () Bool)

(assert (=> b!6423905 (= c!1173781 ((_ is Union!16325) lt!2377183))))

(declare-fun e!3897534 () Regex!16325)

(declare-fun e!3897533 () Regex!16325)

(assert (=> b!6423905 (= e!3897534 e!3897533)))

(declare-fun bm!552498 () Bool)

(declare-fun c!1173780 () Bool)

(declare-fun c!1173782 () Bool)

(assert (=> bm!552498 (= call!552505 (derivativeStep!5029 (ite c!1173781 (regTwo!33163 lt!2377183) (ite c!1173780 (reg!16654 lt!2377183) (ite c!1173782 (regTwo!33162 lt!2377183) (regOne!33162 lt!2377183)))) (head!13141 s!2326)))))

(declare-fun b!6423906 () Bool)

(declare-fun e!3897530 () Regex!16325)

(declare-fun call!552503 () Regex!16325)

(assert (=> b!6423906 (= e!3897530 (Union!16325 (Concat!25170 call!552503 (regTwo!33162 lt!2377183)) EmptyLang!16325))))

(declare-fun d!2014210 () Bool)

(declare-fun lt!2377428 () Regex!16325)

(assert (=> d!2014210 (validRegex!8061 lt!2377428)))

(declare-fun e!3897531 () Regex!16325)

(assert (=> d!2014210 (= lt!2377428 e!3897531)))

(declare-fun c!1173784 () Bool)

(assert (=> d!2014210 (= c!1173784 (or ((_ is EmptyExpr!16325) lt!2377183) ((_ is EmptyLang!16325) lt!2377183)))))

(assert (=> d!2014210 (validRegex!8061 lt!2377183)))

(assert (=> d!2014210 (= (derivativeStep!5029 lt!2377183 (head!13141 s!2326)) lt!2377428)))

(declare-fun call!552502 () Regex!16325)

(declare-fun bm!552499 () Bool)

(assert (=> bm!552499 (= call!552502 (derivativeStep!5029 (ite c!1173781 (regOne!33163 lt!2377183) (regOne!33162 lt!2377183)) (head!13141 s!2326)))))

(declare-fun b!6423907 () Bool)

(assert (=> b!6423907 (= e!3897534 (ite (= (head!13141 s!2326) (c!1173074 lt!2377183)) EmptyExpr!16325 EmptyLang!16325))))

(declare-fun b!6423908 () Bool)

(declare-fun e!3897532 () Regex!16325)

(assert (=> b!6423908 (= e!3897532 (Concat!25170 call!552504 lt!2377183))))

(declare-fun b!6423909 () Bool)

(assert (=> b!6423909 (= c!1173782 (nullable!6318 (regOne!33162 lt!2377183)))))

(assert (=> b!6423909 (= e!3897532 e!3897530)))

(declare-fun b!6423910 () Bool)

(assert (=> b!6423910 (= e!3897531 EmptyLang!16325)))

(declare-fun b!6423911 () Bool)

(assert (=> b!6423911 (= e!3897533 e!3897532)))

(assert (=> b!6423911 (= c!1173780 ((_ is Star!16325) lt!2377183))))

(declare-fun b!6423912 () Bool)

(assert (=> b!6423912 (= e!3897530 (Union!16325 (Concat!25170 call!552502 (regTwo!33162 lt!2377183)) call!552503))))

(declare-fun b!6423913 () Bool)

(assert (=> b!6423913 (= e!3897531 e!3897534)))

(declare-fun c!1173783 () Bool)

(assert (=> b!6423913 (= c!1173783 ((_ is ElementMatch!16325) lt!2377183))))

(declare-fun b!6423914 () Bool)

(assert (=> b!6423914 (= e!3897533 (Union!16325 call!552502 call!552505))))

(declare-fun bm!552500 () Bool)

(assert (=> bm!552500 (= call!552503 call!552504)))

(assert (= (and d!2014210 c!1173784) b!6423910))

(assert (= (and d!2014210 (not c!1173784)) b!6423913))

(assert (= (and b!6423913 c!1173783) b!6423907))

(assert (= (and b!6423913 (not c!1173783)) b!6423905))

(assert (= (and b!6423905 c!1173781) b!6423914))

(assert (= (and b!6423905 (not c!1173781)) b!6423911))

(assert (= (and b!6423911 c!1173780) b!6423908))

(assert (= (and b!6423911 (not c!1173780)) b!6423909))

(assert (= (and b!6423909 c!1173782) b!6423912))

(assert (= (and b!6423909 (not c!1173782)) b!6423906))

(assert (= (or b!6423912 b!6423906) bm!552500))

(assert (= (or b!6423908 bm!552500) bm!552497))

(assert (= (or b!6423914 bm!552497) bm!552498))

(assert (= (or b!6423914 b!6423912) bm!552499))

(assert (=> bm!552498 m!7216362))

(declare-fun m!7218332 () Bool)

(assert (=> bm!552498 m!7218332))

(declare-fun m!7218334 () Bool)

(assert (=> d!2014210 m!7218334))

(assert (=> d!2014210 m!7216634))

(assert (=> bm!552499 m!7216362))

(declare-fun m!7218336 () Bool)

(assert (=> bm!552499 m!7218336))

(declare-fun m!7218338 () Bool)

(assert (=> b!6423909 m!7218338))

(assert (=> b!6422167 d!2014210))

(assert (=> b!6422167 d!2013928))

(assert (=> b!6422167 d!2013930))

(assert (=> bs!1614794 d!2013404))

(declare-fun d!2014212 () Bool)

(assert (=> d!2014212 (= (Exists!3395 (ite c!1173309 lambda!354890 lambda!354891)) (choose!47719 (ite c!1173309 lambda!354890 lambda!354891)))))

(declare-fun bs!1615732 () Bool)

(assert (= bs!1615732 d!2014212))

(declare-fun m!7218340 () Bool)

(assert (=> bs!1615732 m!7218340))

(assert (=> bm!552191 d!2014212))

(declare-fun bs!1615733 () Bool)

(declare-fun b!6423923 () Bool)

(assert (= bs!1615733 (and b!6423923 d!2013890)))

(declare-fun lambda!354984 () Int)

(assert (=> bs!1615733 (not (= lambda!354984 lambda!354950))))

(declare-fun bs!1615734 () Bool)

(assert (= bs!1615734 (and b!6423923 b!6421798)))

(assert (=> bs!1615734 (not (= lambda!354984 lambda!354870))))

(declare-fun bs!1615735 () Bool)

(assert (= bs!1615735 (and b!6423923 b!6423792)))

(assert (=> bs!1615735 (not (= lambda!354984 lambda!354979))))

(declare-fun bs!1615736 () Bool)

(assert (= bs!1615736 (and b!6423923 d!2013302)))

(assert (=> bs!1615736 (not (= lambda!354984 lambda!354848))))

(declare-fun bs!1615737 () Bool)

(assert (= bs!1615737 (and b!6423923 b!6423644)))

(assert (=> bs!1615737 (not (= lambda!354984 lambda!354971))))

(declare-fun bs!1615738 () Bool)

(assert (= bs!1615738 (and b!6423923 b!6423649)))

(assert (=> bs!1615738 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regTwo!33163 r!7292)) (reg!16654 (regTwo!33163 lt!2377164))) (= (regTwo!33163 r!7292) (regTwo!33163 lt!2377164))) (= lambda!354984 lambda!354970))))

(declare-fun bs!1615739 () Bool)

(assert (= bs!1615739 (and b!6423923 d!2014138)))

(assert (=> bs!1615739 (not (= lambda!354984 lambda!354972))))

(declare-fun bs!1615740 () Bool)

(assert (= bs!1615740 (and b!6423923 b!6423828)))

(assert (=> bs!1615740 (not (= lambda!354984 lambda!354982))))

(declare-fun bs!1615741 () Bool)

(assert (= bs!1615741 (and b!6423923 d!2014158)))

(assert (=> bs!1615741 (not (= lambda!354984 lambda!354975))))

(declare-fun bs!1615742 () Bool)

(assert (= bs!1615742 (and b!6423923 d!2013448)))

(assert (=> bs!1615742 (not (= lambda!354984 lambda!354888))))

(declare-fun bs!1615743 () Bool)

(assert (= bs!1615743 (and b!6423923 b!6421803)))

(assert (=> bs!1615743 (= (and (= (reg!16654 (regTwo!33163 r!7292)) (reg!16654 r!7292)) (= (regTwo!33163 r!7292) r!7292)) (= lambda!354984 lambda!354869))))

(declare-fun bs!1615744 () Bool)

(assert (= bs!1615744 (and b!6423923 d!2013426)))

(assert (=> bs!1615744 (not (= lambda!354984 lambda!354883))))

(declare-fun bs!1615745 () Bool)

(assert (= bs!1615745 (and b!6423923 b!6422176)))

(assert (=> bs!1615745 (not (= lambda!354984 lambda!354891))))

(declare-fun bs!1615746 () Bool)

(assert (= bs!1615746 (and b!6423923 b!6423289)))

(assert (=> bs!1615746 (not (= lambda!354984 lambda!354957))))

(assert (=> bs!1615742 (not (= lambda!354984 lambda!354887))))

(declare-fun bs!1615747 () Bool)

(assert (= bs!1615747 (and b!6423923 b!6422181)))

(assert (=> bs!1615747 (= (and (= (reg!16654 (regTwo!33163 r!7292)) (reg!16654 lt!2377183)) (= (regTwo!33163 r!7292) lt!2377183)) (= lambda!354984 lambda!354890))))

(declare-fun bs!1615748 () Bool)

(assert (= bs!1615748 (and b!6423923 b!6423833)))

(assert (=> bs!1615748 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regTwo!33163 r!7292)) (reg!16654 (regOne!33163 lt!2377164))) (= (regTwo!33163 r!7292) (regOne!33163 lt!2377164))) (= lambda!354984 lambda!354981))))

(declare-fun bs!1615749 () Bool)

(assert (= bs!1615749 (and b!6423923 d!2013318)))

(assert (=> bs!1615749 (not (= lambda!354984 lambda!354861))))

(declare-fun bs!1615750 () Bool)

(assert (= bs!1615750 (and b!6423923 b!6423797)))

(assert (=> bs!1615750 (= (and (= (reg!16654 (regTwo!33163 r!7292)) (reg!16654 (regTwo!33163 lt!2377183))) (= (regTwo!33163 r!7292) (regTwo!33163 lt!2377183))) (= lambda!354984 lambda!354978))))

(declare-fun bs!1615751 () Bool)

(assert (= bs!1615751 (and b!6423923 b!6421294)))

(assert (=> bs!1615751 (not (= lambda!354984 lambda!354817))))

(declare-fun bs!1615752 () Bool)

(assert (= bs!1615752 (and b!6423923 b!6421303)))

(assert (=> bs!1615752 (not (= lambda!354984 lambda!354815))))

(declare-fun bs!1615753 () Bool)

(assert (= bs!1615753 (and b!6423923 d!2014082)))

(assert (=> bs!1615753 (not (= lambda!354984 lambda!354966))))

(declare-fun bs!1615754 () Bool)

(assert (= bs!1615754 (and b!6423923 b!6422121)))

(assert (=> bs!1615754 (not (= lambda!354984 lambda!354885))))

(assert (=> bs!1615749 (not (= lambda!354984 lambda!354860))))

(assert (=> bs!1615752 (not (= lambda!354984 lambda!354814))))

(assert (=> bs!1615741 (not (= lambda!354984 lambda!354974))))

(declare-fun bs!1615755 () Bool)

(assert (= bs!1615755 (and b!6423923 b!6423294)))

(assert (=> bs!1615755 (= (and (= (reg!16654 (regTwo!33163 r!7292)) (reg!16654 (regOne!33163 r!7292))) (= (regTwo!33163 r!7292) (regOne!33163 r!7292))) (= lambda!354984 lambda!354956))))

(assert (=> bs!1615751 (not (= lambda!354984 lambda!354818))))

(assert (=> bs!1615733 (not (= lambda!354984 lambda!354951))))

(declare-fun bs!1615756 () Bool)

(assert (= bs!1615756 (and b!6423923 d!2013446)))

(assert (=> bs!1615756 (not (= lambda!354984 lambda!354886))))

(declare-fun bs!1615757 () Bool)

(assert (= bs!1615757 (and b!6423923 b!6421322)))

(assert (=> bs!1615757 (not (= lambda!354984 lambda!354819))))

(declare-fun bs!1615758 () Bool)

(assert (= bs!1615758 (and b!6423923 b!6422126)))

(assert (=> bs!1615758 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regTwo!33163 r!7292)) (reg!16654 lt!2377164)) (= (regTwo!33163 r!7292) lt!2377164)) (= lambda!354984 lambda!354884))))

(assert (=> b!6423923 true))

(assert (=> b!6423923 true))

(declare-fun bs!1615759 () Bool)

(declare-fun b!6423918 () Bool)

(assert (= bs!1615759 (and b!6423918 d!2013890)))

(declare-fun lambda!354985 () Int)

(assert (=> bs!1615759 (not (= lambda!354985 lambda!354950))))

(declare-fun bs!1615760 () Bool)

(assert (= bs!1615760 (and b!6423918 b!6421798)))

(assert (=> bs!1615760 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354985 lambda!354870))))

(declare-fun bs!1615761 () Bool)

(assert (= bs!1615761 (and b!6423918 b!6423792)))

(assert (=> bs!1615761 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 (regTwo!33163 lt!2377183))) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 (regTwo!33163 lt!2377183)))) (= lambda!354985 lambda!354979))))

(declare-fun bs!1615762 () Bool)

(assert (= bs!1615762 (and b!6423918 d!2013302)))

(assert (=> bs!1615762 (not (= lambda!354985 lambda!354848))))

(declare-fun bs!1615763 () Bool)

(assert (= bs!1615763 (and b!6423918 b!6423644)))

(assert (=> bs!1615763 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 (regTwo!33163 lt!2377164))) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 (regTwo!33163 lt!2377164)))) (= lambda!354985 lambda!354971))))

(declare-fun bs!1615764 () Bool)

(assert (= bs!1615764 (and b!6423918 b!6423923)))

(assert (=> bs!1615764 (not (= lambda!354985 lambda!354984))))

(declare-fun bs!1615765 () Bool)

(assert (= bs!1615765 (and b!6423918 b!6423649)))

(assert (=> bs!1615765 (not (= lambda!354985 lambda!354970))))

(declare-fun bs!1615766 () Bool)

(assert (= bs!1615766 (and b!6423918 d!2014138)))

(assert (=> bs!1615766 (not (= lambda!354985 lambda!354972))))

(declare-fun bs!1615767 () Bool)

(assert (= bs!1615767 (and b!6423918 b!6423828)))

(assert (=> bs!1615767 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 (regOne!33163 lt!2377164))) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 (regOne!33163 lt!2377164)))) (= lambda!354985 lambda!354982))))

(declare-fun bs!1615768 () Bool)

(assert (= bs!1615768 (and b!6423918 d!2014158)))

(assert (=> bs!1615768 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) lt!2377164) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354985 lambda!354975))))

(declare-fun bs!1615769 () Bool)

(assert (= bs!1615769 (and b!6423918 d!2013448)))

(assert (=> bs!1615769 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354985 lambda!354888))))

(declare-fun bs!1615770 () Bool)

(assert (= bs!1615770 (and b!6423918 b!6421803)))

(assert (=> bs!1615770 (not (= lambda!354985 lambda!354869))))

(declare-fun bs!1615771 () Bool)

(assert (= bs!1615771 (and b!6423918 d!2013426)))

(assert (=> bs!1615771 (not (= lambda!354985 lambda!354883))))

(declare-fun bs!1615772 () Bool)

(assert (= bs!1615772 (and b!6423918 b!6422176)))

(assert (=> bs!1615772 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 lt!2377183)) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 lt!2377183))) (= lambda!354985 lambda!354891))))

(declare-fun bs!1615773 () Bool)

(assert (= bs!1615773 (and b!6423918 b!6423289)))

(assert (=> bs!1615773 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 (regOne!33163 r!7292))) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 (regOne!33163 r!7292)))) (= lambda!354985 lambda!354957))))

(assert (=> bs!1615769 (not (= lambda!354985 lambda!354887))))

(declare-fun bs!1615774 () Bool)

(assert (= bs!1615774 (and b!6423918 b!6422181)))

(assert (=> bs!1615774 (not (= lambda!354985 lambda!354890))))

(declare-fun bs!1615775 () Bool)

(assert (= bs!1615775 (and b!6423918 b!6423833)))

(assert (=> bs!1615775 (not (= lambda!354985 lambda!354981))))

(declare-fun bs!1615776 () Bool)

(assert (= bs!1615776 (and b!6423918 d!2013318)))

(assert (=> bs!1615776 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) lt!2377164) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354985 lambda!354861))))

(declare-fun bs!1615777 () Bool)

(assert (= bs!1615777 (and b!6423918 b!6423797)))

(assert (=> bs!1615777 (not (= lambda!354985 lambda!354978))))

(declare-fun bs!1615778 () Bool)

(assert (= bs!1615778 (and b!6423918 b!6421294)))

(assert (=> bs!1615778 (not (= lambda!354985 lambda!354817))))

(declare-fun bs!1615779 () Bool)

(assert (= bs!1615779 (and b!6423918 b!6421303)))

(assert (=> bs!1615779 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354985 lambda!354815))))

(declare-fun bs!1615780 () Bool)

(assert (= bs!1615780 (and b!6423918 d!2014082)))

(assert (=> bs!1615780 (not (= lambda!354985 lambda!354966))))

(declare-fun bs!1615781 () Bool)

(assert (= bs!1615781 (and b!6423918 b!6422121)))

(assert (=> bs!1615781 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 lt!2377164)) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 lt!2377164))) (= lambda!354985 lambda!354885))))

(assert (=> bs!1615776 (not (= lambda!354985 lambda!354860))))

(assert (=> bs!1615779 (not (= lambda!354985 lambda!354814))))

(assert (=> bs!1615768 (not (= lambda!354985 lambda!354974))))

(declare-fun bs!1615782 () Bool)

(assert (= bs!1615782 (and b!6423918 b!6423294)))

(assert (=> bs!1615782 (not (= lambda!354985 lambda!354956))))

(assert (=> bs!1615778 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) lt!2377164) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354985 lambda!354818))))

(assert (=> bs!1615759 (= (and (= (regOne!33162 (regTwo!33163 r!7292)) (regOne!33162 r!7292)) (= (regTwo!33162 (regTwo!33163 r!7292)) (regTwo!33162 r!7292))) (= lambda!354985 lambda!354951))))

(declare-fun bs!1615783 () Bool)

(assert (= bs!1615783 (and b!6423918 d!2013446)))

(assert (=> bs!1615783 (not (= lambda!354985 lambda!354886))))

(declare-fun bs!1615784 () Bool)

(assert (= bs!1615784 (and b!6423918 b!6421322)))

(assert (=> bs!1615784 (not (= lambda!354985 lambda!354819))))

(declare-fun bs!1615785 () Bool)

(assert (= bs!1615785 (and b!6423918 b!6422126)))

(assert (=> bs!1615785 (not (= lambda!354985 lambda!354884))))

(assert (=> b!6423918 true))

(assert (=> b!6423918 true))

(declare-fun b!6423915 () Bool)

(declare-fun e!3897541 () Bool)

(assert (=> b!6423915 (= e!3897541 (= s!2326 (Cons!65150 (c!1173074 (regTwo!33163 r!7292)) Nil!65150)))))

(declare-fun b!6423916 () Bool)

(declare-fun e!3897540 () Bool)

(declare-fun e!3897539 () Bool)

(assert (=> b!6423916 (= e!3897540 e!3897539)))

(declare-fun c!1173788 () Bool)

(assert (=> b!6423916 (= c!1173788 ((_ is Star!16325) (regTwo!33163 r!7292)))))

(declare-fun b!6423917 () Bool)

(declare-fun res!2640130 () Bool)

(declare-fun e!3897538 () Bool)

(assert (=> b!6423917 (=> res!2640130 e!3897538)))

(declare-fun call!552506 () Bool)

(assert (=> b!6423917 (= res!2640130 call!552506)))

(assert (=> b!6423917 (= e!3897539 e!3897538)))

(declare-fun call!552507 () Bool)

(assert (=> b!6423918 (= e!3897539 call!552507)))

(declare-fun b!6423919 () Bool)

(declare-fun e!3897535 () Bool)

(assert (=> b!6423919 (= e!3897540 e!3897535)))

(declare-fun res!2640128 () Bool)

(assert (=> b!6423919 (= res!2640128 (matchRSpec!3426 (regOne!33163 (regTwo!33163 r!7292)) s!2326))))

(assert (=> b!6423919 (=> res!2640128 e!3897535)))

(declare-fun b!6423920 () Bool)

(assert (=> b!6423920 (= e!3897535 (matchRSpec!3426 (regTwo!33163 (regTwo!33163 r!7292)) s!2326))))

(declare-fun b!6423921 () Bool)

(declare-fun c!1173786 () Bool)

(assert (=> b!6423921 (= c!1173786 ((_ is Union!16325) (regTwo!33163 r!7292)))))

(assert (=> b!6423921 (= e!3897541 e!3897540)))

(declare-fun d!2014214 () Bool)

(declare-fun c!1173787 () Bool)

(assert (=> d!2014214 (= c!1173787 ((_ is EmptyExpr!16325) (regTwo!33163 r!7292)))))

(declare-fun e!3897536 () Bool)

(assert (=> d!2014214 (= (matchRSpec!3426 (regTwo!33163 r!7292) s!2326) e!3897536)))

(declare-fun b!6423922 () Bool)

(declare-fun e!3897537 () Bool)

(assert (=> b!6423922 (= e!3897536 e!3897537)))

(declare-fun res!2640129 () Bool)

(assert (=> b!6423922 (= res!2640129 (not ((_ is EmptyLang!16325) (regTwo!33163 r!7292))))))

(assert (=> b!6423922 (=> (not res!2640129) (not e!3897537))))

(assert (=> b!6423923 (= e!3897538 call!552507)))

(declare-fun bm!552501 () Bool)

(assert (=> bm!552501 (= call!552507 (Exists!3395 (ite c!1173788 lambda!354984 lambda!354985)))))

(declare-fun b!6423924 () Bool)

(assert (=> b!6423924 (= e!3897536 call!552506)))

(declare-fun b!6423925 () Bool)

(declare-fun c!1173785 () Bool)

(assert (=> b!6423925 (= c!1173785 ((_ is ElementMatch!16325) (regTwo!33163 r!7292)))))

(assert (=> b!6423925 (= e!3897537 e!3897541)))

(declare-fun bm!552502 () Bool)

(assert (=> bm!552502 (= call!552506 (isEmpty!37310 s!2326))))

(assert (= (and d!2014214 c!1173787) b!6423924))

(assert (= (and d!2014214 (not c!1173787)) b!6423922))

(assert (= (and b!6423922 res!2640129) b!6423925))

(assert (= (and b!6423925 c!1173785) b!6423915))

(assert (= (and b!6423925 (not c!1173785)) b!6423921))

(assert (= (and b!6423921 c!1173786) b!6423919))

(assert (= (and b!6423921 (not c!1173786)) b!6423916))

(assert (= (and b!6423919 (not res!2640128)) b!6423920))

(assert (= (and b!6423916 c!1173788) b!6423917))

(assert (= (and b!6423916 (not c!1173788)) b!6423918))

(assert (= (and b!6423917 (not res!2640130)) b!6423923))

(assert (= (or b!6423923 b!6423918) bm!552501))

(assert (= (or b!6423924 b!6423917) bm!552502))

(declare-fun m!7218342 () Bool)

(assert (=> b!6423919 m!7218342))

(declare-fun m!7218344 () Bool)

(assert (=> b!6423920 m!7218344))

(declare-fun m!7218346 () Bool)

(assert (=> bm!552501 m!7218346))

(assert (=> bm!552502 m!7216326))

(assert (=> b!6421800 d!2014214))

(assert (=> b!6421882 d!2014040))

(assert (=> b!6421882 d!2013930))

(declare-fun b!6423929 () Bool)

(declare-fun e!3897543 () Bool)

(declare-fun lt!2377429 () List!65274)

(assert (=> b!6423929 (= e!3897543 (or (not (= (_2!36607 (get!22571 lt!2377314)) Nil!65150)) (= lt!2377429 (_1!36607 (get!22571 lt!2377314)))))))

(declare-fun b!6423926 () Bool)

(declare-fun e!3897542 () List!65274)

(assert (=> b!6423926 (= e!3897542 (_2!36607 (get!22571 lt!2377314)))))

(declare-fun b!6423927 () Bool)

(assert (=> b!6423927 (= e!3897542 (Cons!65150 (h!71598 (_1!36607 (get!22571 lt!2377314))) (++!14393 (t!378888 (_1!36607 (get!22571 lt!2377314))) (_2!36607 (get!22571 lt!2377314)))))))

(declare-fun d!2014216 () Bool)

(assert (=> d!2014216 e!3897543))

(declare-fun res!2640132 () Bool)

(assert (=> d!2014216 (=> (not res!2640132) (not e!3897543))))

(assert (=> d!2014216 (= res!2640132 (= (content!12363 lt!2377429) ((_ map or) (content!12363 (_1!36607 (get!22571 lt!2377314))) (content!12363 (_2!36607 (get!22571 lt!2377314))))))))

(assert (=> d!2014216 (= lt!2377429 e!3897542)))

(declare-fun c!1173789 () Bool)

(assert (=> d!2014216 (= c!1173789 ((_ is Nil!65150) (_1!36607 (get!22571 lt!2377314))))))

(assert (=> d!2014216 (= (++!14393 (_1!36607 (get!22571 lt!2377314)) (_2!36607 (get!22571 lt!2377314))) lt!2377429)))

(declare-fun b!6423928 () Bool)

(declare-fun res!2640131 () Bool)

(assert (=> b!6423928 (=> (not res!2640131) (not e!3897543))))

(assert (=> b!6423928 (= res!2640131 (= (size!40383 lt!2377429) (+ (size!40383 (_1!36607 (get!22571 lt!2377314))) (size!40383 (_2!36607 (get!22571 lt!2377314))))))))

(assert (= (and d!2014216 c!1173789) b!6423926))

(assert (= (and d!2014216 (not c!1173789)) b!6423927))

(assert (= (and d!2014216 res!2640132) b!6423928))

(assert (= (and b!6423928 res!2640131) b!6423929))

(declare-fun m!7218348 () Bool)

(assert (=> b!6423927 m!7218348))

(declare-fun m!7218350 () Bool)

(assert (=> d!2014216 m!7218350))

(declare-fun m!7218352 () Bool)

(assert (=> d!2014216 m!7218352))

(declare-fun m!7218354 () Bool)

(assert (=> d!2014216 m!7218354))

(declare-fun m!7218356 () Bool)

(assert (=> b!6423928 m!7218356))

(declare-fun m!7218358 () Bool)

(assert (=> b!6423928 m!7218358))

(declare-fun m!7218360 () Bool)

(assert (=> b!6423928 m!7218360))

(assert (=> b!6422136 d!2014216))

(assert (=> b!6422136 d!2013920))

(declare-fun d!2014218 () Bool)

(assert (=> d!2014218 (= (nullable!6318 lt!2377164) (nullableFct!2264 lt!2377164))))

(declare-fun bs!1615786 () Bool)

(assert (= bs!1615786 d!2014218))

(declare-fun m!7218362 () Bool)

(assert (=> bs!1615786 m!7218362))

(assert (=> b!6422072 d!2014218))

(assert (=> b!6422078 d!2014074))

(assert (=> b!6422078 d!2013996))

(declare-fun d!2014220 () Bool)

(assert (=> d!2014220 (= (isDefined!12919 (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326)) (not (isEmpty!37311 (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326))))))

(declare-fun bs!1615787 () Bool)

(assert (= bs!1615787 d!2014220))

(assert (=> bs!1615787 m!7215796))

(declare-fun m!7218364 () Bool)

(assert (=> bs!1615787 m!7218364))

(assert (=> d!2013302 d!2014220))

(declare-fun d!2014222 () Bool)

(assert (=> d!2014222 (= (Exists!3395 lambda!354848) (choose!47719 lambda!354848))))

(declare-fun bs!1615788 () Bool)

(assert (= bs!1615788 d!2014222))

(declare-fun m!7218366 () Bool)

(assert (=> bs!1615788 m!7218366))

(assert (=> d!2013302 d!2014222))

(assert (=> d!2013302 d!2013294))

(assert (=> d!2013302 d!2013914))

(declare-fun bs!1615789 () Bool)

(declare-fun d!2014224 () Bool)

(assert (= bs!1615789 (and d!2014224 d!2013890)))

(declare-fun lambda!354986 () Int)

(assert (=> bs!1615789 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354986 lambda!354950))))

(declare-fun bs!1615790 () Bool)

(assert (= bs!1615790 (and d!2014224 b!6421798)))

(assert (=> bs!1615790 (not (= lambda!354986 lambda!354870))))

(declare-fun bs!1615791 () Bool)

(assert (= bs!1615791 (and d!2014224 b!6423792)))

(assert (=> bs!1615791 (not (= lambda!354986 lambda!354979))))

(declare-fun bs!1615792 () Bool)

(assert (= bs!1615792 (and d!2014224 d!2013302)))

(assert (=> bs!1615792 (= lambda!354986 lambda!354848)))

(declare-fun bs!1615793 () Bool)

(assert (= bs!1615793 (and d!2014224 b!6423644)))

(assert (=> bs!1615793 (not (= lambda!354986 lambda!354971))))

(declare-fun bs!1615794 () Bool)

(assert (= bs!1615794 (and d!2014224 b!6423923)))

(assert (=> bs!1615794 (not (= lambda!354986 lambda!354984))))

(declare-fun bs!1615795 () Bool)

(assert (= bs!1615795 (and d!2014224 b!6423649)))

(assert (=> bs!1615795 (not (= lambda!354986 lambda!354970))))

(declare-fun bs!1615796 () Bool)

(assert (= bs!1615796 (and d!2014224 d!2014138)))

(assert (=> bs!1615796 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354986 lambda!354972))))

(declare-fun bs!1615797 () Bool)

(assert (= bs!1615797 (and d!2014224 b!6423828)))

(assert (=> bs!1615797 (not (= lambda!354986 lambda!354982))))

(declare-fun bs!1615798 () Bool)

(assert (= bs!1615798 (and d!2014224 d!2014158)))

(assert (=> bs!1615798 (not (= lambda!354986 lambda!354975))))

(declare-fun bs!1615799 () Bool)

(assert (= bs!1615799 (and d!2014224 d!2013448)))

(assert (=> bs!1615799 (not (= lambda!354986 lambda!354888))))

(declare-fun bs!1615800 () Bool)

(assert (= bs!1615800 (and d!2014224 b!6421803)))

(assert (=> bs!1615800 (not (= lambda!354986 lambda!354869))))

(declare-fun bs!1615801 () Bool)

(assert (= bs!1615801 (and d!2014224 d!2013426)))

(assert (=> bs!1615801 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354986 lambda!354883))))

(declare-fun bs!1615802 () Bool)

(assert (= bs!1615802 (and d!2014224 b!6422176)))

(assert (=> bs!1615802 (not (= lambda!354986 lambda!354891))))

(declare-fun bs!1615803 () Bool)

(assert (= bs!1615803 (and d!2014224 b!6423289)))

(assert (=> bs!1615803 (not (= lambda!354986 lambda!354957))))

(assert (=> bs!1615799 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354986 lambda!354887))))

(declare-fun bs!1615804 () Bool)

(assert (= bs!1615804 (and d!2014224 b!6422181)))

(assert (=> bs!1615804 (not (= lambda!354986 lambda!354890))))

(declare-fun bs!1615805 () Bool)

(assert (= bs!1615805 (and d!2014224 b!6423833)))

(assert (=> bs!1615805 (not (= lambda!354986 lambda!354981))))

(declare-fun bs!1615806 () Bool)

(assert (= bs!1615806 (and d!2014224 d!2013318)))

(assert (=> bs!1615806 (not (= lambda!354986 lambda!354861))))

(declare-fun bs!1615807 () Bool)

(assert (= bs!1615807 (and d!2014224 b!6423797)))

(assert (=> bs!1615807 (not (= lambda!354986 lambda!354978))))

(declare-fun bs!1615808 () Bool)

(assert (= bs!1615808 (and d!2014224 b!6421294)))

(assert (=> bs!1615808 (= lambda!354986 lambda!354817)))

(declare-fun bs!1615809 () Bool)

(assert (= bs!1615809 (and d!2014224 b!6421303)))

(assert (=> bs!1615809 (not (= lambda!354986 lambda!354815))))

(declare-fun bs!1615810 () Bool)

(assert (= bs!1615810 (and d!2014224 d!2014082)))

(assert (=> bs!1615810 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354986 lambda!354966))))

(declare-fun bs!1615811 () Bool)

(assert (= bs!1615811 (and d!2014224 b!6422121)))

(assert (=> bs!1615811 (not (= lambda!354986 lambda!354885))))

(assert (=> bs!1615806 (= lambda!354986 lambda!354860)))

(assert (=> bs!1615809 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354986 lambda!354814))))

(assert (=> bs!1615798 (= lambda!354986 lambda!354974)))

(declare-fun bs!1615812 () Bool)

(assert (= bs!1615812 (and d!2014224 b!6423294)))

(assert (=> bs!1615812 (not (= lambda!354986 lambda!354956))))

(assert (=> bs!1615808 (not (= lambda!354986 lambda!354818))))

(declare-fun bs!1615813 () Bool)

(assert (= bs!1615813 (and d!2014224 b!6423918)))

(assert (=> bs!1615813 (not (= lambda!354986 lambda!354985))))

(assert (=> bs!1615789 (not (= lambda!354986 lambda!354951))))

(declare-fun bs!1615814 () Bool)

(assert (= bs!1615814 (and d!2014224 d!2013446)))

(assert (=> bs!1615814 (= (= lt!2377164 (regOne!33162 r!7292)) (= lambda!354986 lambda!354886))))

(declare-fun bs!1615815 () Bool)

(assert (= bs!1615815 (and d!2014224 b!6421322)))

(assert (=> bs!1615815 (= (and (= s!2326 (_1!36607 lt!2377178)) (= lt!2377164 (reg!16654 (regOne!33162 r!7292))) (= (regTwo!33162 r!7292) lt!2377164)) (= lambda!354986 lambda!354819))))

(declare-fun bs!1615816 () Bool)

(assert (= bs!1615816 (and d!2014224 b!6422126)))

(assert (=> bs!1615816 (not (= lambda!354986 lambda!354884))))

(assert (=> d!2014224 true))

(assert (=> d!2014224 true))

(assert (=> d!2014224 true))

(assert (=> d!2014224 (= (isDefined!12919 (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) Nil!65150 s!2326 s!2326)) (Exists!3395 lambda!354986))))

(assert (=> d!2014224 true))

(declare-fun _$89!2667 () Unit!158631)

(assert (=> d!2014224 (= (choose!47720 lt!2377164 (regTwo!33162 r!7292) s!2326) _$89!2667)))

(declare-fun bs!1615817 () Bool)

(assert (= bs!1615817 d!2014224))

(assert (=> bs!1615817 m!7215796))

(assert (=> bs!1615817 m!7215796))

(assert (=> bs!1615817 m!7216230))

(declare-fun m!7218368 () Bool)

(assert (=> bs!1615817 m!7218368))

(assert (=> d!2013302 d!2014224))

(declare-fun b!6423933 () Bool)

(declare-fun e!3897545 () Bool)

(declare-fun lt!2377430 () List!65274)

(assert (=> b!6423933 (= e!3897545 (or (not (= (t!378888 (_1!36607 lt!2377178)) Nil!65150)) (= lt!2377430 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)))))))

(declare-fun b!6423930 () Bool)

(declare-fun e!3897544 () List!65274)

(assert (=> b!6423930 (= e!3897544 (t!378888 (_1!36607 lt!2377178)))))

(declare-fun b!6423931 () Bool)

(assert (=> b!6423931 (= e!3897544 (Cons!65150 (h!71598 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150))) (++!14393 (t!378888 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150))) (t!378888 (_1!36607 lt!2377178)))))))

(declare-fun d!2014226 () Bool)

(assert (=> d!2014226 e!3897545))

(declare-fun res!2640134 () Bool)

(assert (=> d!2014226 (=> (not res!2640134) (not e!3897545))))

(assert (=> d!2014226 (= res!2640134 (= (content!12363 lt!2377430) ((_ map or) (content!12363 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150))) (content!12363 (t!378888 (_1!36607 lt!2377178))))))))

(assert (=> d!2014226 (= lt!2377430 e!3897544)))

(declare-fun c!1173790 () Bool)

(assert (=> d!2014226 (= c!1173790 ((_ is Nil!65150) (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150))))))

(assert (=> d!2014226 (= (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (t!378888 (_1!36607 lt!2377178))) lt!2377430)))

(declare-fun b!6423932 () Bool)

(declare-fun res!2640133 () Bool)

(assert (=> b!6423932 (=> (not res!2640133) (not e!3897545))))

(assert (=> b!6423932 (= res!2640133 (= (size!40383 lt!2377430) (+ (size!40383 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150))) (size!40383 (t!378888 (_1!36607 lt!2377178))))))))

(assert (= (and d!2014226 c!1173790) b!6423930))

(assert (= (and d!2014226 (not c!1173790)) b!6423931))

(assert (= (and d!2014226 res!2640134) b!6423932))

(assert (= (and b!6423932 res!2640133) b!6423933))

(declare-fun m!7218370 () Bool)

(assert (=> b!6423931 m!7218370))

(declare-fun m!7218372 () Bool)

(assert (=> d!2014226 m!7218372))

(assert (=> d!2014226 m!7216570))

(declare-fun m!7218374 () Bool)

(assert (=> d!2014226 m!7218374))

(assert (=> d!2014226 m!7217932))

(declare-fun m!7218376 () Bool)

(assert (=> b!6423932 m!7218376))

(assert (=> b!6423932 m!7216570))

(declare-fun m!7218378 () Bool)

(assert (=> b!6423932 m!7218378))

(assert (=> b!6423932 m!7217726))

(assert (=> b!6422132 d!2014226))

(declare-fun b!6423937 () Bool)

(declare-fun e!3897547 () Bool)

(declare-fun lt!2377431 () List!65274)

(assert (=> b!6423937 (= e!3897547 (or (not (= (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150) Nil!65150)) (= lt!2377431 Nil!65150)))))

(declare-fun b!6423934 () Bool)

(declare-fun e!3897546 () List!65274)

(assert (=> b!6423934 (= e!3897546 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150))))

(declare-fun b!6423935 () Bool)

(assert (=> b!6423935 (= e!3897546 (Cons!65150 (h!71598 Nil!65150) (++!14393 (t!378888 Nil!65150) (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150))))))

(declare-fun d!2014228 () Bool)

(assert (=> d!2014228 e!3897547))

(declare-fun res!2640136 () Bool)

(assert (=> d!2014228 (=> (not res!2640136) (not e!3897547))))

(assert (=> d!2014228 (= res!2640136 (= (content!12363 lt!2377431) ((_ map or) (content!12363 Nil!65150) (content!12363 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)))))))

(assert (=> d!2014228 (= lt!2377431 e!3897546)))

(declare-fun c!1173791 () Bool)

(assert (=> d!2014228 (= c!1173791 ((_ is Nil!65150) Nil!65150))))

(assert (=> d!2014228 (= (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) lt!2377431)))

(declare-fun b!6423936 () Bool)

(declare-fun res!2640135 () Bool)

(assert (=> b!6423936 (=> (not res!2640135) (not e!3897547))))

(assert (=> b!6423936 (= res!2640135 (= (size!40383 lt!2377431) (+ (size!40383 Nil!65150) (size!40383 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)))))))

(assert (= (and d!2014228 c!1173791) b!6423934))

(assert (= (and d!2014228 (not c!1173791)) b!6423935))

(assert (= (and d!2014228 res!2640136) b!6423936))

(assert (= (and b!6423936 res!2640135) b!6423937))

(declare-fun m!7218380 () Bool)

(assert (=> b!6423935 m!7218380))

(declare-fun m!7218382 () Bool)

(assert (=> d!2014228 m!7218382))

(assert (=> d!2014228 m!7217956))

(declare-fun m!7218384 () Bool)

(assert (=> d!2014228 m!7218384))

(declare-fun m!7218386 () Bool)

(assert (=> b!6423936 m!7218386))

(assert (=> b!6423936 m!7217962))

(declare-fun m!7218388 () Bool)

(assert (=> b!6423936 m!7218388))

(assert (=> b!6422132 d!2014228))

(declare-fun d!2014230 () Bool)

(assert (=> d!2014230 (= (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (t!378888 (_1!36607 lt!2377178))) (_1!36607 lt!2377178))))

(declare-fun lt!2377432 () Unit!158631)

(assert (=> d!2014230 (= lt!2377432 (choose!47731 Nil!65150 (h!71598 (_1!36607 lt!2377178)) (t!378888 (_1!36607 lt!2377178)) (_1!36607 lt!2377178)))))

(assert (=> d!2014230 (= (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) (t!378888 (_1!36607 lt!2377178)))) (_1!36607 lt!2377178))))

(assert (=> d!2014230 (= (lemmaMoveElementToOtherListKeepsConcatEq!2487 Nil!65150 (h!71598 (_1!36607 lt!2377178)) (t!378888 (_1!36607 lt!2377178)) (_1!36607 lt!2377178)) lt!2377432)))

(declare-fun bs!1615818 () Bool)

(assert (= bs!1615818 d!2014230))

(assert (=> bs!1615818 m!7216570))

(assert (=> bs!1615818 m!7216570))

(assert (=> bs!1615818 m!7216572))

(declare-fun m!7218390 () Bool)

(assert (=> bs!1615818 m!7218390))

(declare-fun m!7218392 () Bool)

(assert (=> bs!1615818 m!7218392))

(assert (=> b!6422132 d!2014230))

(declare-fun b!6423938 () Bool)

(declare-fun e!3897549 () Option!16216)

(declare-fun e!3897552 () Option!16216)

(assert (=> b!6423938 (= e!3897549 e!3897552)))

(declare-fun c!1173792 () Bool)

(assert (=> b!6423938 (= c!1173792 ((_ is Nil!65150) (t!378888 (_1!36607 lt!2377178))))))

(declare-fun b!6423939 () Bool)

(declare-fun e!3897550 () Bool)

(assert (=> b!6423939 (= e!3897550 (matchR!8508 lt!2377164 (t!378888 (_1!36607 lt!2377178))))))

(declare-fun d!2014232 () Bool)

(declare-fun e!3897551 () Bool)

(assert (=> d!2014232 e!3897551))

(declare-fun res!2640138 () Bool)

(assert (=> d!2014232 (=> res!2640138 e!3897551)))

(declare-fun e!3897548 () Bool)

(assert (=> d!2014232 (= res!2640138 e!3897548)))

(declare-fun res!2640139 () Bool)

(assert (=> d!2014232 (=> (not res!2640139) (not e!3897548))))

(declare-fun lt!2377435 () Option!16216)

(assert (=> d!2014232 (= res!2640139 (isDefined!12919 lt!2377435))))

(assert (=> d!2014232 (= lt!2377435 e!3897549)))

(declare-fun c!1173793 () Bool)

(assert (=> d!2014232 (= c!1173793 e!3897550)))

(declare-fun res!2640141 () Bool)

(assert (=> d!2014232 (=> (not res!2640141) (not e!3897550))))

(assert (=> d!2014232 (= res!2640141 (matchR!8508 (reg!16654 (regOne!33162 r!7292)) (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150))))))

(assert (=> d!2014232 (validRegex!8061 (reg!16654 (regOne!33162 r!7292)))))

(assert (=> d!2014232 (= (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (t!378888 (_1!36607 lt!2377178)) (_1!36607 lt!2377178)) lt!2377435)))

(declare-fun b!6423940 () Bool)

(assert (=> b!6423940 (= e!3897552 None!16215)))

(declare-fun b!6423941 () Bool)

(declare-fun lt!2377434 () Unit!158631)

(declare-fun lt!2377433 () Unit!158631)

(assert (=> b!6423941 (= lt!2377434 lt!2377433)))

(assert (=> b!6423941 (= (++!14393 (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (Cons!65150 (h!71598 (t!378888 (_1!36607 lt!2377178))) Nil!65150)) (t!378888 (t!378888 (_1!36607 lt!2377178)))) (_1!36607 lt!2377178))))

(assert (=> b!6423941 (= lt!2377433 (lemmaMoveElementToOtherListKeepsConcatEq!2487 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (h!71598 (t!378888 (_1!36607 lt!2377178))) (t!378888 (t!378888 (_1!36607 lt!2377178))) (_1!36607 lt!2377178)))))

(assert (=> b!6423941 (= e!3897552 (findConcatSeparation!2630 (reg!16654 (regOne!33162 r!7292)) lt!2377164 (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (Cons!65150 (h!71598 (t!378888 (_1!36607 lt!2377178))) Nil!65150)) (t!378888 (t!378888 (_1!36607 lt!2377178))) (_1!36607 lt!2377178)))))

(declare-fun b!6423942 () Bool)

(assert (=> b!6423942 (= e!3897551 (not (isDefined!12919 lt!2377435)))))

(declare-fun b!6423943 () Bool)

(assert (=> b!6423943 (= e!3897549 (Some!16215 (tuple2!66609 (++!14393 Nil!65150 (Cons!65150 (h!71598 (_1!36607 lt!2377178)) Nil!65150)) (t!378888 (_1!36607 lt!2377178)))))))

(declare-fun b!6423944 () Bool)

(declare-fun res!2640137 () Bool)

(assert (=> b!6423944 (=> (not res!2640137) (not e!3897548))))

(assert (=> b!6423944 (= res!2640137 (matchR!8508 (reg!16654 (regOne!33162 r!7292)) (_1!36607 (get!22571 lt!2377435))))))

(declare-fun b!6423945 () Bool)

(assert (=> b!6423945 (= e!3897548 (= (++!14393 (_1!36607 (get!22571 lt!2377435)) (_2!36607 (get!22571 lt!2377435))) (_1!36607 lt!2377178)))))

(declare-fun b!6423946 () Bool)

(declare-fun res!2640140 () Bool)

(assert (=> b!6423946 (=> (not res!2640140) (not e!3897548))))

(assert (=> b!6423946 (= res!2640140 (matchR!8508 lt!2377164 (_2!36607 (get!22571 lt!2377435))))))

(assert (= (and d!2014232 res!2640141) b!6423939))

(assert (= (and d!2014232 c!1173793) b!6423943))

(assert (= (and d!2014232 (not c!1173793)) b!6423938))

(assert (= (and b!6423938 c!1173792) b!6423940))

(assert (= (and b!6423938 (not c!1173792)) b!6423941))

(assert (= (and d!2014232 res!2640139) b!6423944))

(assert (= (and b!6423944 res!2640137) b!6423946))

(assert (= (and b!6423946 res!2640140) b!6423945))

(assert (= (and d!2014232 (not res!2640138)) b!6423942))

(declare-fun m!7218394 () Bool)

(assert (=> b!6423939 m!7218394))

(declare-fun m!7218396 () Bool)

(assert (=> d!2014232 m!7218396))

(assert (=> d!2014232 m!7216570))

(declare-fun m!7218398 () Bool)

(assert (=> d!2014232 m!7218398))

(assert (=> d!2014232 m!7215810))

(declare-fun m!7218400 () Bool)

(assert (=> b!6423945 m!7218400))

(declare-fun m!7218402 () Bool)

(assert (=> b!6423945 m!7218402))

(assert (=> b!6423942 m!7218396))

(assert (=> b!6423946 m!7218400))

(declare-fun m!7218404 () Bool)

(assert (=> b!6423946 m!7218404))

(assert (=> b!6423941 m!7216570))

(declare-fun m!7218406 () Bool)

(assert (=> b!6423941 m!7218406))

(assert (=> b!6423941 m!7218406))

(declare-fun m!7218408 () Bool)

(assert (=> b!6423941 m!7218408))

(assert (=> b!6423941 m!7216570))

(declare-fun m!7218410 () Bool)

(assert (=> b!6423941 m!7218410))

(assert (=> b!6423941 m!7218406))

(declare-fun m!7218412 () Bool)

(assert (=> b!6423941 m!7218412))

(assert (=> b!6423944 m!7218400))

(declare-fun m!7218414 () Bool)

(assert (=> b!6423944 m!7218414))

(assert (=> b!6422132 d!2014232))

(assert (=> b!6422068 d!2013942))

(declare-fun bs!1615819 () Bool)

(declare-fun d!2014234 () Bool)

(assert (= bs!1615819 (and d!2014234 d!2013484)))

(declare-fun lambda!354987 () Int)

(assert (=> bs!1615819 (= lambda!354987 lambda!354897)))

(declare-fun bs!1615820 () Bool)

(assert (= bs!1615820 (and d!2014234 d!2014198)))

(assert (=> bs!1615820 (= lambda!354987 lambda!354983)))

(declare-fun bs!1615821 () Bool)

(assert (= bs!1615821 (and d!2014234 d!2013982)))

(assert (=> bs!1615821 (= lambda!354987 lambda!354959)))

(declare-fun bs!1615822 () Bool)

(assert (= bs!1615822 (and d!2014234 d!2014168)))

(assert (=> bs!1615822 (= lambda!354987 lambda!354976)))

(declare-fun bs!1615823 () Bool)

(assert (= bs!1615823 (and d!2014234 d!2014014)))

(assert (=> bs!1615823 (= lambda!354987 lambda!354961)))

(declare-fun bs!1615824 () Bool)

(assert (= bs!1615824 (and d!2014234 d!2014170)))

(assert (=> bs!1615824 (= lambda!354987 lambda!354977)))

(declare-fun bs!1615825 () Bool)

(assert (= bs!1615825 (and d!2014234 d!2013412)))

(assert (=> bs!1615825 (= lambda!354987 lambda!354879)))

(declare-fun bs!1615826 () Bool)

(assert (= bs!1615826 (and d!2014234 d!2013968)))

(assert (=> bs!1615826 (= lambda!354987 lambda!354958)))

(declare-fun bs!1615827 () Bool)

(assert (= bs!1615827 (and d!2014234 d!2013456)))

(assert (=> bs!1615827 (= lambda!354987 lambda!354889)))

(declare-fun bs!1615828 () Bool)

(assert (= bs!1615828 (and d!2014234 d!2014098)))

(assert (=> bs!1615828 (= lambda!354987 lambda!354968)))

(declare-fun bs!1615829 () Bool)

(assert (= bs!1615829 (and d!2014234 d!2013382)))

(assert (=> bs!1615829 (= lambda!354987 lambda!354876)))

(declare-fun bs!1615830 () Bool)

(assert (= bs!1615830 (and d!2014234 d!2014096)))

(assert (=> bs!1615830 (= lambda!354987 lambda!354967)))

(declare-fun bs!1615831 () Bool)

(assert (= bs!1615831 (and d!2014234 d!2013482)))

(assert (=> bs!1615831 (= lambda!354987 lambda!354894)))

(assert (=> d!2014234 (= (inv!84059 setElem!43840) (forall!15515 (exprs!6209 setElem!43840) lambda!354987))))

(declare-fun bs!1615832 () Bool)

(assert (= bs!1615832 d!2014234))

(declare-fun m!7218416 () Bool)

(assert (=> bs!1615832 m!7218416))

(assert (=> setNonEmpty!43840 d!2014234))

(declare-fun d!2014236 () Bool)

(assert (=> d!2014236 (= (isEmpty!37308 (unfocusZipperList!1746 zl!343)) ((_ is Nil!65151) (unfocusZipperList!1746 zl!343)))))

(assert (=> b!6422230 d!2014236))

(assert (=> d!2013396 d!2013954))

(declare-fun d!2014238 () Bool)

(assert (=> d!2014238 true))

(declare-fun setRes!43852 () Bool)

(assert (=> d!2014238 setRes!43852))

(declare-fun condSetEmpty!43852 () Bool)

(declare-fun res!2640142 () (InoxSet Context!11418))

(assert (=> d!2014238 (= condSetEmpty!43852 (= res!2640142 ((as const (Array Context!11418 Bool)) false)))))

(assert (=> d!2014238 (= (choose!47724 lt!2377200 lambda!354816) res!2640142)))

(declare-fun setIsEmpty!43852 () Bool)

(assert (=> setIsEmpty!43852 setRes!43852))

(declare-fun setElem!43852 () Context!11418)

(declare-fun e!3897553 () Bool)

(declare-fun tp!1783216 () Bool)

(declare-fun setNonEmpty!43852 () Bool)

(assert (=> setNonEmpty!43852 (= setRes!43852 (and tp!1783216 (inv!84059 setElem!43852) e!3897553))))

(declare-fun setRest!43852 () (InoxSet Context!11418))

(assert (=> setNonEmpty!43852 (= res!2640142 ((_ map or) (store ((as const (Array Context!11418 Bool)) false) setElem!43852 true) setRest!43852))))

(declare-fun b!6423947 () Bool)

(declare-fun tp!1783215 () Bool)

(assert (=> b!6423947 (= e!3897553 tp!1783215)))

(assert (= (and d!2014238 condSetEmpty!43852) setIsEmpty!43852))

(assert (= (and d!2014238 (not condSetEmpty!43852)) setNonEmpty!43852))

(assert (= setNonEmpty!43852 b!6423947))

(declare-fun m!7218418 () Bool)

(assert (=> setNonEmpty!43852 m!7218418))

(assert (=> d!2013414 d!2014238))

(declare-fun b!6423948 () Bool)

(declare-fun e!3897557 () Bool)

(declare-fun call!552509 () Bool)

(assert (=> b!6423948 (= e!3897557 call!552509)))

(declare-fun c!1173795 () Bool)

(declare-fun bm!552503 () Bool)

(declare-fun c!1173794 () Bool)

(assert (=> bm!552503 (= call!552509 (validRegex!8061 (ite c!1173795 (reg!16654 lt!2377300) (ite c!1173794 (regOne!33163 lt!2377300) (regOne!33162 lt!2377300)))))))

(declare-fun d!2014240 () Bool)

(declare-fun res!2640145 () Bool)

(declare-fun e!3897560 () Bool)

(assert (=> d!2014240 (=> res!2640145 e!3897560)))

(assert (=> d!2014240 (= res!2640145 ((_ is ElementMatch!16325) lt!2377300))))

(assert (=> d!2014240 (= (validRegex!8061 lt!2377300) e!3897560)))

(declare-fun bm!552504 () Bool)

(declare-fun call!552510 () Bool)

(assert (=> bm!552504 (= call!552510 call!552509)))

(declare-fun b!6423949 () Bool)

(declare-fun e!3897558 () Bool)

(declare-fun call!552508 () Bool)

(assert (=> b!6423949 (= e!3897558 call!552508)))

(declare-fun b!6423950 () Bool)

(declare-fun res!2640143 () Bool)

(declare-fun e!3897554 () Bool)

(assert (=> b!6423950 (=> res!2640143 e!3897554)))

(assert (=> b!6423950 (= res!2640143 (not ((_ is Concat!25170) lt!2377300)))))

(declare-fun e!3897555 () Bool)

(assert (=> b!6423950 (= e!3897555 e!3897554)))

(declare-fun b!6423951 () Bool)

(declare-fun e!3897559 () Bool)

(assert (=> b!6423951 (= e!3897560 e!3897559)))

(assert (=> b!6423951 (= c!1173795 ((_ is Star!16325) lt!2377300))))

(declare-fun b!6423952 () Bool)

(assert (=> b!6423952 (= e!3897559 e!3897557)))

(declare-fun res!2640146 () Bool)

(assert (=> b!6423952 (= res!2640146 (not (nullable!6318 (reg!16654 lt!2377300))))))

(assert (=> b!6423952 (=> (not res!2640146) (not e!3897557))))

(declare-fun b!6423953 () Bool)

(assert (=> b!6423953 (= e!3897559 e!3897555)))

(assert (=> b!6423953 (= c!1173794 ((_ is Union!16325) lt!2377300))))

(declare-fun b!6423954 () Bool)

(declare-fun e!3897556 () Bool)

(assert (=> b!6423954 (= e!3897556 call!552508)))

(declare-fun b!6423955 () Bool)

(declare-fun res!2640144 () Bool)

(assert (=> b!6423955 (=> (not res!2640144) (not e!3897556))))

(assert (=> b!6423955 (= res!2640144 call!552510)))

(assert (=> b!6423955 (= e!3897555 e!3897556)))

(declare-fun bm!552505 () Bool)

(assert (=> bm!552505 (= call!552508 (validRegex!8061 (ite c!1173794 (regTwo!33163 lt!2377300) (regTwo!33162 lt!2377300))))))

(declare-fun b!6423956 () Bool)

(assert (=> b!6423956 (= e!3897554 e!3897558)))

(declare-fun res!2640147 () Bool)

(assert (=> b!6423956 (=> (not res!2640147) (not e!3897558))))

(assert (=> b!6423956 (= res!2640147 call!552510)))

(assert (= (and d!2014240 (not res!2640145)) b!6423951))

(assert (= (and b!6423951 c!1173795) b!6423952))

(assert (= (and b!6423951 (not c!1173795)) b!6423953))

(assert (= (and b!6423952 res!2640146) b!6423948))

(assert (= (and b!6423953 c!1173794) b!6423955))

(assert (= (and b!6423953 (not c!1173794)) b!6423950))

(assert (= (and b!6423955 res!2640144) b!6423954))

(assert (= (and b!6423950 (not res!2640143)) b!6423956))

(assert (= (and b!6423956 res!2640147) b!6423949))

(assert (= (or b!6423954 b!6423949) bm!552505))

(assert (= (or b!6423955 b!6423956) bm!552504))

(assert (= (or b!6423948 bm!552504) bm!552503))

(declare-fun m!7218420 () Bool)

(assert (=> bm!552503 m!7218420))

(declare-fun m!7218422 () Bool)

(assert (=> b!6423952 m!7218422))

(declare-fun m!7218424 () Bool)

(assert (=> bm!552505 m!7218424))

(assert (=> d!2013400 d!2014240))

(declare-fun bs!1615833 () Bool)

(declare-fun d!2014242 () Bool)

(assert (= bs!1615833 (and d!2014242 d!2014198)))

(declare-fun lambda!354988 () Int)

(assert (=> bs!1615833 (= lambda!354988 lambda!354983)))

(declare-fun bs!1615834 () Bool)

(assert (= bs!1615834 (and d!2014242 d!2013982)))

(assert (=> bs!1615834 (= lambda!354988 lambda!354959)))

(declare-fun bs!1615835 () Bool)

(assert (= bs!1615835 (and d!2014242 d!2014168)))

(assert (=> bs!1615835 (= lambda!354988 lambda!354976)))

(declare-fun bs!1615836 () Bool)

(assert (= bs!1615836 (and d!2014242 d!2014014)))

(assert (=> bs!1615836 (= lambda!354988 lambda!354961)))

(declare-fun bs!1615837 () Bool)

(assert (= bs!1615837 (and d!2014242 d!2014170)))

(assert (=> bs!1615837 (= lambda!354988 lambda!354977)))

(declare-fun bs!1615838 () Bool)

(assert (= bs!1615838 (and d!2014242 d!2013412)))

(assert (=> bs!1615838 (= lambda!354988 lambda!354879)))

(declare-fun bs!1615839 () Bool)

(assert (= bs!1615839 (and d!2014242 d!2013968)))

(assert (=> bs!1615839 (= lambda!354988 lambda!354958)))

(declare-fun bs!1615840 () Bool)

(assert (= bs!1615840 (and d!2014242 d!2013456)))

(assert (=> bs!1615840 (= lambda!354988 lambda!354889)))

(declare-fun bs!1615841 () Bool)

(assert (= bs!1615841 (and d!2014242 d!2014098)))

(assert (=> bs!1615841 (= lambda!354988 lambda!354968)))

(declare-fun bs!1615842 () Bool)

(assert (= bs!1615842 (and d!2014242 d!2013382)))

(assert (=> bs!1615842 (= lambda!354988 lambda!354876)))

(declare-fun bs!1615843 () Bool)

(assert (= bs!1615843 (and d!2014242 d!2014234)))

(assert (=> bs!1615843 (= lambda!354988 lambda!354987)))

(declare-fun bs!1615844 () Bool)

(assert (= bs!1615844 (and d!2014242 d!2013484)))

(assert (=> bs!1615844 (= lambda!354988 lambda!354897)))

(declare-fun bs!1615845 () Bool)

(assert (= bs!1615845 (and d!2014242 d!2014096)))

(assert (=> bs!1615845 (= lambda!354988 lambda!354967)))

(declare-fun bs!1615846 () Bool)

(assert (= bs!1615846 (and d!2014242 d!2013482)))

(assert (=> bs!1615846 (= lambda!354988 lambda!354894)))

(declare-fun b!6423957 () Bool)

(declare-fun e!3897562 () Bool)

(declare-fun e!3897566 () Bool)

(assert (=> b!6423957 (= e!3897562 e!3897566)))

(declare-fun c!1173796 () Bool)

(assert (=> b!6423957 (= c!1173796 (isEmpty!37308 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152))))))

(declare-fun b!6423958 () Bool)

(declare-fun e!3897561 () Bool)

(assert (=> b!6423958 (= e!3897561 (isEmpty!37308 (t!378889 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152)))))))

(declare-fun b!6423959 () Bool)

(declare-fun e!3897564 () Bool)

(assert (=> b!6423959 (= e!3897566 e!3897564)))

(declare-fun c!1173797 () Bool)

(assert (=> b!6423959 (= c!1173797 (isEmpty!37308 (tail!12227 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152)))))))

(declare-fun b!6423960 () Bool)

(declare-fun lt!2377436 () Regex!16325)

(assert (=> b!6423960 (= e!3897566 (isEmptyLang!1733 lt!2377436))))

(declare-fun b!6423961 () Bool)

(declare-fun e!3897563 () Regex!16325)

(declare-fun e!3897565 () Regex!16325)

(assert (=> b!6423961 (= e!3897563 e!3897565)))

(declare-fun c!1173798 () Bool)

(assert (=> b!6423961 (= c!1173798 ((_ is Cons!65151) (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152))))))

(declare-fun b!6423962 () Bool)

(assert (=> b!6423962 (= e!3897564 (= lt!2377436 (head!13142 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152)))))))

(assert (=> d!2014242 e!3897562))

(declare-fun res!2640148 () Bool)

(assert (=> d!2014242 (=> (not res!2640148) (not e!3897562))))

(assert (=> d!2014242 (= res!2640148 (validRegex!8061 lt!2377436))))

(assert (=> d!2014242 (= lt!2377436 e!3897563)))

(declare-fun c!1173799 () Bool)

(assert (=> d!2014242 (= c!1173799 e!3897561)))

(declare-fun res!2640149 () Bool)

(assert (=> d!2014242 (=> (not res!2640149) (not e!3897561))))

(assert (=> d!2014242 (= res!2640149 ((_ is Cons!65151) (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152))))))

(assert (=> d!2014242 (forall!15515 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152)) lambda!354988)))

(assert (=> d!2014242 (= (generalisedUnion!2169 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152))) lt!2377436)))

(declare-fun b!6423963 () Bool)

(assert (=> b!6423963 (= e!3897564 (isUnion!1163 lt!2377436))))

(declare-fun b!6423964 () Bool)

(assert (=> b!6423964 (= e!3897565 (Union!16325 (h!71599 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152))) (generalisedUnion!2169 (t!378889 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152))))))))

(declare-fun b!6423965 () Bool)

(assert (=> b!6423965 (= e!3897563 (h!71599 (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152))))))

(declare-fun b!6423966 () Bool)

(assert (=> b!6423966 (= e!3897565 EmptyLang!16325)))

(assert (= (and d!2014242 res!2640149) b!6423958))

(assert (= (and d!2014242 c!1173799) b!6423965))

(assert (= (and d!2014242 (not c!1173799)) b!6423961))

(assert (= (and b!6423961 c!1173798) b!6423964))

(assert (= (and b!6423961 (not c!1173798)) b!6423966))

(assert (= (and d!2014242 res!2640148) b!6423957))

(assert (= (and b!6423957 c!1173796) b!6423960))

(assert (= (and b!6423957 (not c!1173796)) b!6423959))

(assert (= (and b!6423959 c!1173797) b!6423962))

(assert (= (and b!6423959 (not c!1173797)) b!6423963))

(declare-fun m!7218426 () Bool)

(assert (=> b!6423964 m!7218426))

(declare-fun m!7218428 () Bool)

(assert (=> b!6423958 m!7218428))

(declare-fun m!7218430 () Bool)

(assert (=> b!6423960 m!7218430))

(declare-fun m!7218432 () Bool)

(assert (=> d!2014242 m!7218432))

(assert (=> d!2014242 m!7216454))

(declare-fun m!7218434 () Bool)

(assert (=> d!2014242 m!7218434))

(assert (=> b!6423962 m!7216454))

(declare-fun m!7218436 () Bool)

(assert (=> b!6423962 m!7218436))

(declare-fun m!7218438 () Bool)

(assert (=> b!6423963 m!7218438))

(assert (=> b!6423959 m!7216454))

(declare-fun m!7218440 () Bool)

(assert (=> b!6423959 m!7218440))

(assert (=> b!6423959 m!7218440))

(declare-fun m!7218442 () Bool)

(assert (=> b!6423959 m!7218442))

(assert (=> b!6423957 m!7216454))

(declare-fun m!7218444 () Bool)

(assert (=> b!6423957 m!7218444))

(assert (=> d!2013400 d!2014242))

(declare-fun bs!1615847 () Bool)

(declare-fun d!2014244 () Bool)

(assert (= bs!1615847 (and d!2014244 d!2014198)))

(declare-fun lambda!354989 () Int)

(assert (=> bs!1615847 (= lambda!354989 lambda!354983)))

(declare-fun bs!1615848 () Bool)

(assert (= bs!1615848 (and d!2014244 d!2013982)))

(assert (=> bs!1615848 (= lambda!354989 lambda!354959)))

(declare-fun bs!1615849 () Bool)

(assert (= bs!1615849 (and d!2014244 d!2014168)))

(assert (=> bs!1615849 (= lambda!354989 lambda!354976)))

(declare-fun bs!1615850 () Bool)

(assert (= bs!1615850 (and d!2014244 d!2014242)))

(assert (=> bs!1615850 (= lambda!354989 lambda!354988)))

(declare-fun bs!1615851 () Bool)

(assert (= bs!1615851 (and d!2014244 d!2014014)))

(assert (=> bs!1615851 (= lambda!354989 lambda!354961)))

(declare-fun bs!1615852 () Bool)

(assert (= bs!1615852 (and d!2014244 d!2014170)))

(assert (=> bs!1615852 (= lambda!354989 lambda!354977)))

(declare-fun bs!1615853 () Bool)

(assert (= bs!1615853 (and d!2014244 d!2013412)))

(assert (=> bs!1615853 (= lambda!354989 lambda!354879)))

(declare-fun bs!1615854 () Bool)

(assert (= bs!1615854 (and d!2014244 d!2013968)))

(assert (=> bs!1615854 (= lambda!354989 lambda!354958)))

(declare-fun bs!1615855 () Bool)

(assert (= bs!1615855 (and d!2014244 d!2013456)))

(assert (=> bs!1615855 (= lambda!354989 lambda!354889)))

(declare-fun bs!1615856 () Bool)

(assert (= bs!1615856 (and d!2014244 d!2014098)))

(assert (=> bs!1615856 (= lambda!354989 lambda!354968)))

(declare-fun bs!1615857 () Bool)

(assert (= bs!1615857 (and d!2014244 d!2013382)))

(assert (=> bs!1615857 (= lambda!354989 lambda!354876)))

(declare-fun bs!1615858 () Bool)

(assert (= bs!1615858 (and d!2014244 d!2014234)))

(assert (=> bs!1615858 (= lambda!354989 lambda!354987)))

(declare-fun bs!1615859 () Bool)

(assert (= bs!1615859 (and d!2014244 d!2013484)))

(assert (=> bs!1615859 (= lambda!354989 lambda!354897)))

(declare-fun bs!1615860 () Bool)

(assert (= bs!1615860 (and d!2014244 d!2014096)))

(assert (=> bs!1615860 (= lambda!354989 lambda!354967)))

(declare-fun bs!1615861 () Bool)

(assert (= bs!1615861 (and d!2014244 d!2013482)))

(assert (=> bs!1615861 (= lambda!354989 lambda!354894)))

(declare-fun lt!2377437 () List!65275)

(assert (=> d!2014244 (forall!15515 lt!2377437 lambda!354989)))

(declare-fun e!3897567 () List!65275)

(assert (=> d!2014244 (= lt!2377437 e!3897567)))

(declare-fun c!1173800 () Bool)

(assert (=> d!2014244 (= c!1173800 ((_ is Cons!65152) (Cons!65152 lt!2377192 Nil!65152)))))

(assert (=> d!2014244 (= (unfocusZipperList!1746 (Cons!65152 lt!2377192 Nil!65152)) lt!2377437)))

(declare-fun b!6423967 () Bool)

(assert (=> b!6423967 (= e!3897567 (Cons!65151 (generalisedConcat!1922 (exprs!6209 (h!71600 (Cons!65152 lt!2377192 Nil!65152)))) (unfocusZipperList!1746 (t!378890 (Cons!65152 lt!2377192 Nil!65152)))))))

(declare-fun b!6423968 () Bool)

(assert (=> b!6423968 (= e!3897567 Nil!65151)))

(assert (= (and d!2014244 c!1173800) b!6423967))

(assert (= (and d!2014244 (not c!1173800)) b!6423968))

(declare-fun m!7218446 () Bool)

(assert (=> d!2014244 m!7218446))

(declare-fun m!7218448 () Bool)

(assert (=> b!6423967 m!7218448))

(declare-fun m!7218450 () Bool)

(assert (=> b!6423967 m!7218450))

(assert (=> d!2013400 d!2014244))

(declare-fun b!6423969 () Bool)

(declare-fun e!3897571 () (InoxSet Context!11418))

(declare-fun call!552514 () (InoxSet Context!11418))

(declare-fun call!552515 () (InoxSet Context!11418))

(assert (=> b!6423969 (= e!3897571 ((_ map or) call!552514 call!552515))))

(declare-fun b!6423970 () Bool)

(declare-fun c!1173804 () Bool)

(assert (=> b!6423970 (= c!1173804 ((_ is Star!16325) (h!71599 (exprs!6209 lt!2377192))))))

(declare-fun e!3897570 () (InoxSet Context!11418))

(declare-fun e!3897569 () (InoxSet Context!11418))

(assert (=> b!6423970 (= e!3897570 e!3897569)))

(declare-fun b!6423971 () Bool)

(assert (=> b!6423971 (= e!3897569 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173805 () Bool)

(declare-fun c!1173803 () Bool)

(declare-fun c!1173802 () Bool)

(declare-fun bm!552506 () Bool)

(declare-fun call!552513 () List!65275)

(assert (=> bm!552506 (= call!552514 (derivationStepZipperDown!1573 (ite c!1173803 (regOne!33163 (h!71599 (exprs!6209 lt!2377192))) (ite c!1173805 (regTwo!33162 (h!71599 (exprs!6209 lt!2377192))) (ite c!1173802 (regOne!33162 (h!71599 (exprs!6209 lt!2377192))) (reg!16654 (h!71599 (exprs!6209 lt!2377192)))))) (ite (or c!1173803 c!1173805) (Context!11419 (t!378889 (exprs!6209 lt!2377192))) (Context!11419 call!552513)) (h!71598 s!2326)))))

(declare-fun b!6423972 () Bool)

(declare-fun e!3897573 () Bool)

(assert (=> b!6423972 (= e!3897573 (nullable!6318 (regOne!33162 (h!71599 (exprs!6209 lt!2377192)))))))

(declare-fun b!6423973 () Bool)

(declare-fun e!3897568 () (InoxSet Context!11418))

(assert (=> b!6423973 (= e!3897568 e!3897570)))

(assert (=> b!6423973 (= c!1173802 ((_ is Concat!25170) (h!71599 (exprs!6209 lt!2377192))))))

(declare-fun bm!552507 () Bool)

(declare-fun call!552516 () List!65275)

(assert (=> bm!552507 (= call!552515 (derivationStepZipperDown!1573 (ite c!1173803 (regTwo!33163 (h!71599 (exprs!6209 lt!2377192))) (regOne!33162 (h!71599 (exprs!6209 lt!2377192)))) (ite c!1173803 (Context!11419 (t!378889 (exprs!6209 lt!2377192))) (Context!11419 call!552516)) (h!71598 s!2326)))))

(declare-fun bm!552508 () Bool)

(declare-fun call!552512 () (InoxSet Context!11418))

(assert (=> bm!552508 (= call!552512 call!552514)))

(declare-fun d!2014246 () Bool)

(declare-fun c!1173801 () Bool)

(assert (=> d!2014246 (= c!1173801 (and ((_ is ElementMatch!16325) (h!71599 (exprs!6209 lt!2377192))) (= (c!1173074 (h!71599 (exprs!6209 lt!2377192))) (h!71598 s!2326))))))

(declare-fun e!3897572 () (InoxSet Context!11418))

(assert (=> d!2014246 (= (derivationStepZipperDown!1573 (h!71599 (exprs!6209 lt!2377192)) (Context!11419 (t!378889 (exprs!6209 lt!2377192))) (h!71598 s!2326)) e!3897572)))

(declare-fun b!6423974 () Bool)

(assert (=> b!6423974 (= e!3897572 e!3897571)))

(assert (=> b!6423974 (= c!1173803 ((_ is Union!16325) (h!71599 (exprs!6209 lt!2377192))))))

(declare-fun b!6423975 () Bool)

(declare-fun call!552511 () (InoxSet Context!11418))

(assert (=> b!6423975 (= e!3897570 call!552511)))

(declare-fun b!6423976 () Bool)

(assert (=> b!6423976 (= e!3897572 (store ((as const (Array Context!11418 Bool)) false) (Context!11419 (t!378889 (exprs!6209 lt!2377192))) true))))

(declare-fun b!6423977 () Bool)

(assert (=> b!6423977 (= c!1173805 e!3897573)))

(declare-fun res!2640150 () Bool)

(assert (=> b!6423977 (=> (not res!2640150) (not e!3897573))))

(assert (=> b!6423977 (= res!2640150 ((_ is Concat!25170) (h!71599 (exprs!6209 lt!2377192))))))

(assert (=> b!6423977 (= e!3897571 e!3897568)))

(declare-fun b!6423978 () Bool)

(assert (=> b!6423978 (= e!3897568 ((_ map or) call!552515 call!552512))))

(declare-fun b!6423979 () Bool)

(assert (=> b!6423979 (= e!3897569 call!552511)))

(declare-fun bm!552509 () Bool)

(assert (=> bm!552509 (= call!552513 call!552516)))

(declare-fun bm!552510 () Bool)

(assert (=> bm!552510 (= call!552511 call!552512)))

(declare-fun bm!552511 () Bool)

(assert (=> bm!552511 (= call!552516 ($colon$colon!2186 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377192)))) (ite (or c!1173805 c!1173802) (regTwo!33162 (h!71599 (exprs!6209 lt!2377192))) (h!71599 (exprs!6209 lt!2377192)))))))

(assert (= (and d!2014246 c!1173801) b!6423976))

(assert (= (and d!2014246 (not c!1173801)) b!6423974))

(assert (= (and b!6423974 c!1173803) b!6423969))

(assert (= (and b!6423974 (not c!1173803)) b!6423977))

(assert (= (and b!6423977 res!2640150) b!6423972))

(assert (= (and b!6423977 c!1173805) b!6423978))

(assert (= (and b!6423977 (not c!1173805)) b!6423973))

(assert (= (and b!6423973 c!1173802) b!6423975))

(assert (= (and b!6423973 (not c!1173802)) b!6423970))

(assert (= (and b!6423970 c!1173804) b!6423979))

(assert (= (and b!6423970 (not c!1173804)) b!6423971))

(assert (= (or b!6423975 b!6423979) bm!552509))

(assert (= (or b!6423975 b!6423979) bm!552510))

(assert (= (or b!6423978 bm!552509) bm!552511))

(assert (= (or b!6423978 bm!552510) bm!552508))

(assert (= (or b!6423969 b!6423978) bm!552507))

(assert (= (or b!6423969 bm!552508) bm!552506))

(declare-fun m!7218452 () Bool)

(assert (=> bm!552511 m!7218452))

(declare-fun m!7218454 () Bool)

(assert (=> bm!552506 m!7218454))

(declare-fun m!7218456 () Bool)

(assert (=> b!6423976 m!7218456))

(declare-fun m!7218458 () Bool)

(assert (=> b!6423972 m!7218458))

(declare-fun m!7218460 () Bool)

(assert (=> bm!552507 m!7218460))

(assert (=> bm!552171 d!2014246))

(declare-fun b!6423980 () Bool)

(declare-fun e!3897577 () (InoxSet Context!11418))

(declare-fun call!552520 () (InoxSet Context!11418))

(declare-fun call!552521 () (InoxSet Context!11418))

(assert (=> b!6423980 (= e!3897577 ((_ map or) call!552520 call!552521))))

(declare-fun b!6423981 () Bool)

(declare-fun c!1173809 () Bool)

(assert (=> b!6423981 (= c!1173809 ((_ is Star!16325) (h!71599 (exprs!6209 lt!2377188))))))

(declare-fun e!3897576 () (InoxSet Context!11418))

(declare-fun e!3897575 () (InoxSet Context!11418))

(assert (=> b!6423981 (= e!3897576 e!3897575)))

(declare-fun b!6423982 () Bool)

(assert (=> b!6423982 (= e!3897575 ((as const (Array Context!11418 Bool)) false))))

(declare-fun call!552519 () List!65275)

(declare-fun c!1173810 () Bool)

(declare-fun bm!552512 () Bool)

(declare-fun c!1173807 () Bool)

(declare-fun c!1173808 () Bool)

(assert (=> bm!552512 (= call!552520 (derivationStepZipperDown!1573 (ite c!1173808 (regOne!33163 (h!71599 (exprs!6209 lt!2377188))) (ite c!1173810 (regTwo!33162 (h!71599 (exprs!6209 lt!2377188))) (ite c!1173807 (regOne!33162 (h!71599 (exprs!6209 lt!2377188))) (reg!16654 (h!71599 (exprs!6209 lt!2377188)))))) (ite (or c!1173808 c!1173810) (Context!11419 (t!378889 (exprs!6209 lt!2377188))) (Context!11419 call!552519)) (h!71598 s!2326)))))

(declare-fun b!6423983 () Bool)

(declare-fun e!3897579 () Bool)

(assert (=> b!6423983 (= e!3897579 (nullable!6318 (regOne!33162 (h!71599 (exprs!6209 lt!2377188)))))))

(declare-fun b!6423984 () Bool)

(declare-fun e!3897574 () (InoxSet Context!11418))

(assert (=> b!6423984 (= e!3897574 e!3897576)))

(assert (=> b!6423984 (= c!1173807 ((_ is Concat!25170) (h!71599 (exprs!6209 lt!2377188))))))

(declare-fun call!552522 () List!65275)

(declare-fun bm!552513 () Bool)

(assert (=> bm!552513 (= call!552521 (derivationStepZipperDown!1573 (ite c!1173808 (regTwo!33163 (h!71599 (exprs!6209 lt!2377188))) (regOne!33162 (h!71599 (exprs!6209 lt!2377188)))) (ite c!1173808 (Context!11419 (t!378889 (exprs!6209 lt!2377188))) (Context!11419 call!552522)) (h!71598 s!2326)))))

(declare-fun bm!552514 () Bool)

(declare-fun call!552518 () (InoxSet Context!11418))

(assert (=> bm!552514 (= call!552518 call!552520)))

(declare-fun d!2014248 () Bool)

(declare-fun c!1173806 () Bool)

(assert (=> d!2014248 (= c!1173806 (and ((_ is ElementMatch!16325) (h!71599 (exprs!6209 lt!2377188))) (= (c!1173074 (h!71599 (exprs!6209 lt!2377188))) (h!71598 s!2326))))))

(declare-fun e!3897578 () (InoxSet Context!11418))

(assert (=> d!2014248 (= (derivationStepZipperDown!1573 (h!71599 (exprs!6209 lt!2377188)) (Context!11419 (t!378889 (exprs!6209 lt!2377188))) (h!71598 s!2326)) e!3897578)))

(declare-fun b!6423985 () Bool)

(assert (=> b!6423985 (= e!3897578 e!3897577)))

(assert (=> b!6423985 (= c!1173808 ((_ is Union!16325) (h!71599 (exprs!6209 lt!2377188))))))

(declare-fun b!6423986 () Bool)

(declare-fun call!552517 () (InoxSet Context!11418))

(assert (=> b!6423986 (= e!3897576 call!552517)))

(declare-fun b!6423987 () Bool)

(assert (=> b!6423987 (= e!3897578 (store ((as const (Array Context!11418 Bool)) false) (Context!11419 (t!378889 (exprs!6209 lt!2377188))) true))))

(declare-fun b!6423988 () Bool)

(assert (=> b!6423988 (= c!1173810 e!3897579)))

(declare-fun res!2640151 () Bool)

(assert (=> b!6423988 (=> (not res!2640151) (not e!3897579))))

(assert (=> b!6423988 (= res!2640151 ((_ is Concat!25170) (h!71599 (exprs!6209 lt!2377188))))))

(assert (=> b!6423988 (= e!3897577 e!3897574)))

(declare-fun b!6423989 () Bool)

(assert (=> b!6423989 (= e!3897574 ((_ map or) call!552521 call!552518))))

(declare-fun b!6423990 () Bool)

(assert (=> b!6423990 (= e!3897575 call!552517)))

(declare-fun bm!552515 () Bool)

(assert (=> bm!552515 (= call!552519 call!552522)))

(declare-fun bm!552516 () Bool)

(assert (=> bm!552516 (= call!552517 call!552518)))

(declare-fun bm!552517 () Bool)

(assert (=> bm!552517 (= call!552522 ($colon$colon!2186 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 lt!2377188)))) (ite (or c!1173810 c!1173807) (regTwo!33162 (h!71599 (exprs!6209 lt!2377188))) (h!71599 (exprs!6209 lt!2377188)))))))

(assert (= (and d!2014248 c!1173806) b!6423987))

(assert (= (and d!2014248 (not c!1173806)) b!6423985))

(assert (= (and b!6423985 c!1173808) b!6423980))

(assert (= (and b!6423985 (not c!1173808)) b!6423988))

(assert (= (and b!6423988 res!2640151) b!6423983))

(assert (= (and b!6423988 c!1173810) b!6423989))

(assert (= (and b!6423988 (not c!1173810)) b!6423984))

(assert (= (and b!6423984 c!1173807) b!6423986))

(assert (= (and b!6423984 (not c!1173807)) b!6423981))

(assert (= (and b!6423981 c!1173809) b!6423990))

(assert (= (and b!6423981 (not c!1173809)) b!6423982))

(assert (= (or b!6423986 b!6423990) bm!552515))

(assert (= (or b!6423986 b!6423990) bm!552516))

(assert (= (or b!6423989 bm!552515) bm!552517))

(assert (= (or b!6423989 bm!552516) bm!552514))

(assert (= (or b!6423980 b!6423989) bm!552513))

(assert (= (or b!6423980 bm!552514) bm!552512))

(declare-fun m!7218462 () Bool)

(assert (=> bm!552517 m!7218462))

(declare-fun m!7218464 () Bool)

(assert (=> bm!552512 m!7218464))

(declare-fun m!7218466 () Bool)

(assert (=> b!6423987 m!7218466))

(declare-fun m!7218468 () Bool)

(assert (=> b!6423983 m!7218468))

(declare-fun m!7218470 () Bool)

(assert (=> bm!552513 m!7218470))

(assert (=> bm!552172 d!2014248))

(assert (=> b!6422139 d!2014066))

(assert (=> b!6421689 d!2014058))

(assert (=> b!6421689 d!2014060))

(assert (=> b!6421689 d!2014062))

(declare-fun b!6423991 () Bool)

(declare-fun e!3897581 () Option!16216)

(declare-fun e!3897584 () Option!16216)

(assert (=> b!6423991 (= e!3897581 e!3897584)))

(declare-fun c!1173811 () Bool)

(assert (=> b!6423991 (= c!1173811 ((_ is Nil!65150) (t!378888 s!2326)))))

(declare-fun b!6423992 () Bool)

(declare-fun e!3897582 () Bool)

(assert (=> b!6423992 (= e!3897582 (matchR!8508 (regTwo!33162 r!7292) (t!378888 s!2326)))))

(declare-fun d!2014250 () Bool)

(declare-fun e!3897583 () Bool)

(assert (=> d!2014250 e!3897583))

(declare-fun res!2640153 () Bool)

(assert (=> d!2014250 (=> res!2640153 e!3897583)))

(declare-fun e!3897580 () Bool)

(assert (=> d!2014250 (= res!2640153 e!3897580)))

(declare-fun res!2640154 () Bool)

(assert (=> d!2014250 (=> (not res!2640154) (not e!3897580))))

(declare-fun lt!2377440 () Option!16216)

(assert (=> d!2014250 (= res!2640154 (isDefined!12919 lt!2377440))))

(assert (=> d!2014250 (= lt!2377440 e!3897581)))

(declare-fun c!1173812 () Bool)

(assert (=> d!2014250 (= c!1173812 e!3897582)))

(declare-fun res!2640156 () Bool)

(assert (=> d!2014250 (=> (not res!2640156) (not e!3897582))))

(assert (=> d!2014250 (= res!2640156 (matchR!8508 lt!2377164 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150))))))

(assert (=> d!2014250 (validRegex!8061 lt!2377164)))

(assert (=> d!2014250 (= (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326) s!2326) lt!2377440)))

(declare-fun b!6423993 () Bool)

(assert (=> b!6423993 (= e!3897584 None!16215)))

(declare-fun b!6423994 () Bool)

(declare-fun lt!2377439 () Unit!158631)

(declare-fun lt!2377438 () Unit!158631)

(assert (=> b!6423994 (= lt!2377439 lt!2377438)))

(assert (=> b!6423994 (= (++!14393 (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (Cons!65150 (h!71598 (t!378888 s!2326)) Nil!65150)) (t!378888 (t!378888 s!2326))) s!2326)))

(assert (=> b!6423994 (= lt!2377438 (lemmaMoveElementToOtherListKeepsConcatEq!2487 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (h!71598 (t!378888 s!2326)) (t!378888 (t!378888 s!2326)) s!2326))))

(assert (=> b!6423994 (= e!3897584 (findConcatSeparation!2630 lt!2377164 (regTwo!33162 r!7292) (++!14393 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (Cons!65150 (h!71598 (t!378888 s!2326)) Nil!65150)) (t!378888 (t!378888 s!2326)) s!2326))))

(declare-fun b!6423995 () Bool)

(assert (=> b!6423995 (= e!3897583 (not (isDefined!12919 lt!2377440)))))

(declare-fun b!6423996 () Bool)

(assert (=> b!6423996 (= e!3897581 (Some!16215 (tuple2!66609 (++!14393 Nil!65150 (Cons!65150 (h!71598 s!2326) Nil!65150)) (t!378888 s!2326))))))

(declare-fun b!6423997 () Bool)

(declare-fun res!2640152 () Bool)

(assert (=> b!6423997 (=> (not res!2640152) (not e!3897580))))

(assert (=> b!6423997 (= res!2640152 (matchR!8508 lt!2377164 (_1!36607 (get!22571 lt!2377440))))))

(declare-fun b!6423998 () Bool)

(assert (=> b!6423998 (= e!3897580 (= (++!14393 (_1!36607 (get!22571 lt!2377440)) (_2!36607 (get!22571 lt!2377440))) s!2326))))

(declare-fun b!6423999 () Bool)

(declare-fun res!2640155 () Bool)

(assert (=> b!6423999 (=> (not res!2640155) (not e!3897580))))

(assert (=> b!6423999 (= res!2640155 (matchR!8508 (regTwo!33162 r!7292) (_2!36607 (get!22571 lt!2377440))))))

(assert (= (and d!2014250 res!2640156) b!6423992))

(assert (= (and d!2014250 c!1173812) b!6423996))

(assert (= (and d!2014250 (not c!1173812)) b!6423991))

(assert (= (and b!6423991 c!1173811) b!6423993))

(assert (= (and b!6423991 (not c!1173811)) b!6423994))

(assert (= (and d!2014250 res!2640154) b!6423997))

(assert (= (and b!6423997 res!2640152) b!6423999))

(assert (= (and b!6423999 res!2640155) b!6423998))

(assert (= (and d!2014250 (not res!2640153)) b!6423995))

(assert (=> b!6423992 m!7217970))

(declare-fun m!7218472 () Bool)

(assert (=> d!2014250 m!7218472))

(assert (=> d!2014250 m!7216188))

(declare-fun m!7218474 () Bool)

(assert (=> d!2014250 m!7218474))

(assert (=> d!2014250 m!7216180))

(declare-fun m!7218476 () Bool)

(assert (=> b!6423998 m!7218476))

(declare-fun m!7218478 () Bool)

(assert (=> b!6423998 m!7218478))

(assert (=> b!6423995 m!7218472))

(assert (=> b!6423999 m!7218476))

(declare-fun m!7218480 () Bool)

(assert (=> b!6423999 m!7218480))

(assert (=> b!6423994 m!7216188))

(assert (=> b!6423994 m!7217982))

(assert (=> b!6423994 m!7217982))

(assert (=> b!6423994 m!7217984))

(assert (=> b!6423994 m!7216188))

(assert (=> b!6423994 m!7217986))

(assert (=> b!6423994 m!7217982))

(declare-fun m!7218482 () Bool)

(assert (=> b!6423994 m!7218482))

(assert (=> b!6423997 m!7218476))

(declare-fun m!7218484 () Bool)

(assert (=> b!6423997 m!7218484))

(assert (=> b!6421689 d!2014250))

(assert (=> b!6422082 d!2013994))

(declare-fun d!2014252 () Bool)

(assert (=> d!2014252 (= (Exists!3395 (ite c!1173212 lambda!354869 lambda!354870)) (choose!47719 (ite c!1173212 lambda!354869 lambda!354870)))))

(declare-fun bs!1615862 () Bool)

(assert (= bs!1615862 d!2014252))

(declare-fun m!7218486 () Bool)

(assert (=> bs!1615862 m!7218486))

(assert (=> bm!552132 d!2014252))

(declare-fun d!2014254 () Bool)

(assert (=> d!2014254 true))

(assert (=> d!2014254 true))

(declare-fun res!2640157 () Bool)

(assert (=> d!2014254 (= (choose!47719 lambda!354819) res!2640157)))

(assert (=> d!2013432 d!2014254))

(declare-fun b!6424000 () Bool)

(declare-fun e!3897588 () (InoxSet Context!11418))

(declare-fun call!552526 () (InoxSet Context!11418))

(declare-fun call!552527 () (InoxSet Context!11418))

(assert (=> b!6424000 (= e!3897588 ((_ map or) call!552526 call!552527))))

(declare-fun b!6424001 () Bool)

(declare-fun c!1173816 () Bool)

(assert (=> b!6424001 (= c!1173816 ((_ is Star!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun e!3897587 () (InoxSet Context!11418))

(declare-fun e!3897586 () (InoxSet Context!11418))

(assert (=> b!6424001 (= e!3897587 e!3897586)))

(declare-fun b!6424002 () Bool)

(assert (=> b!6424002 (= e!3897586 ((as const (Array Context!11418 Bool)) false))))

(declare-fun bm!552518 () Bool)

(declare-fun c!1173815 () Bool)

(declare-fun c!1173814 () Bool)

(declare-fun call!552525 () List!65275)

(declare-fun c!1173817 () Bool)

(assert (=> bm!552518 (= call!552526 (derivationStepZipperDown!1573 (ite c!1173815 (regOne!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173817 (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (ite c!1173814 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (reg!16654 (h!71599 (exprs!6209 (h!71600 zl!343))))))) (ite (or c!1173815 c!1173817) (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))) (Context!11419 call!552525)) (h!71598 s!2326)))))

(declare-fun b!6424003 () Bool)

(declare-fun e!3897590 () Bool)

(assert (=> b!6424003 (= e!3897590 (nullable!6318 (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))))))

(declare-fun b!6424004 () Bool)

(declare-fun e!3897585 () (InoxSet Context!11418))

(assert (=> b!6424004 (= e!3897585 e!3897587)))

(assert (=> b!6424004 (= c!1173814 ((_ is Concat!25170) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun bm!552519 () Bool)

(declare-fun call!552528 () List!65275)

(assert (=> bm!552519 (= call!552527 (derivationStepZipperDown!1573 (ite c!1173815 (regTwo!33163 (h!71599 (exprs!6209 (h!71600 zl!343)))) (regOne!33162 (h!71599 (exprs!6209 (h!71600 zl!343))))) (ite c!1173815 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))) (Context!11419 call!552528)) (h!71598 s!2326)))))

(declare-fun bm!552520 () Bool)

(declare-fun call!552524 () (InoxSet Context!11418))

(assert (=> bm!552520 (= call!552524 call!552526)))

(declare-fun d!2014256 () Bool)

(declare-fun c!1173813 () Bool)

(assert (=> d!2014256 (= c!1173813 (and ((_ is ElementMatch!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))) (= (c!1173074 (h!71599 (exprs!6209 (h!71600 zl!343)))) (h!71598 s!2326))))))

(declare-fun e!3897589 () (InoxSet Context!11418))

(assert (=> d!2014256 (= (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (h!71600 zl!343))) (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))) (h!71598 s!2326)) e!3897589)))

(declare-fun b!6424005 () Bool)

(assert (=> b!6424005 (= e!3897589 e!3897588)))

(assert (=> b!6424005 (= c!1173815 ((_ is Union!16325) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun b!6424006 () Bool)

(declare-fun call!552523 () (InoxSet Context!11418))

(assert (=> b!6424006 (= e!3897587 call!552523)))

(declare-fun b!6424007 () Bool)

(assert (=> b!6424007 (= e!3897589 (store ((as const (Array Context!11418 Bool)) false) (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343)))) true))))

(declare-fun b!6424008 () Bool)

(assert (=> b!6424008 (= c!1173817 e!3897590)))

(declare-fun res!2640158 () Bool)

(assert (=> b!6424008 (=> (not res!2640158) (not e!3897590))))

(assert (=> b!6424008 (= res!2640158 ((_ is Concat!25170) (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> b!6424008 (= e!3897588 e!3897585)))

(declare-fun b!6424009 () Bool)

(assert (=> b!6424009 (= e!3897585 ((_ map or) call!552527 call!552524))))

(declare-fun b!6424010 () Bool)

(assert (=> b!6424010 (= e!3897586 call!552523)))

(declare-fun bm!552521 () Bool)

(assert (=> bm!552521 (= call!552525 call!552528)))

(declare-fun bm!552522 () Bool)

(assert (=> bm!552522 (= call!552523 call!552524)))

(declare-fun bm!552523 () Bool)

(assert (=> bm!552523 (= call!552528 ($colon$colon!2186 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (h!71600 zl!343))))) (ite (or c!1173817 c!1173814) (regTwo!33162 (h!71599 (exprs!6209 (h!71600 zl!343)))) (h!71599 (exprs!6209 (h!71600 zl!343))))))))

(assert (= (and d!2014256 c!1173813) b!6424007))

(assert (= (and d!2014256 (not c!1173813)) b!6424005))

(assert (= (and b!6424005 c!1173815) b!6424000))

(assert (= (and b!6424005 (not c!1173815)) b!6424008))

(assert (= (and b!6424008 res!2640158) b!6424003))

(assert (= (and b!6424008 c!1173817) b!6424009))

(assert (= (and b!6424008 (not c!1173817)) b!6424004))

(assert (= (and b!6424004 c!1173814) b!6424006))

(assert (= (and b!6424004 (not c!1173814)) b!6424001))

(assert (= (and b!6424001 c!1173816) b!6424010))

(assert (= (and b!6424001 (not c!1173816)) b!6424002))

(assert (= (or b!6424006 b!6424010) bm!552521))

(assert (= (or b!6424006 b!6424010) bm!552522))

(assert (= (or b!6424009 bm!552521) bm!552523))

(assert (= (or b!6424009 bm!552522) bm!552520))

(assert (= (or b!6424000 b!6424009) bm!552519))

(assert (= (or b!6424000 bm!552520) bm!552518))

(declare-fun m!7218488 () Bool)

(assert (=> bm!552523 m!7218488))

(declare-fun m!7218490 () Bool)

(assert (=> bm!552518 m!7218490))

(declare-fun m!7218492 () Bool)

(assert (=> b!6424007 m!7218492))

(assert (=> b!6424003 m!7216652))

(declare-fun m!7218494 () Bool)

(assert (=> bm!552519 m!7218494))

(assert (=> bm!552200 d!2014256))

(declare-fun b!6424011 () Bool)

(declare-fun e!3897594 () Bool)

(declare-fun call!552530 () Bool)

(assert (=> b!6424011 (= e!3897594 call!552530)))

(declare-fun c!1173818 () Bool)

(declare-fun c!1173819 () Bool)

(declare-fun bm!552524 () Bool)

(assert (=> bm!552524 (= call!552530 (validRegex!8061 (ite c!1173819 (reg!16654 (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))) (ite c!1173818 (regOne!33163 (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))) (regOne!33162 (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292))))))))))

(declare-fun d!2014258 () Bool)

(declare-fun res!2640161 () Bool)

(declare-fun e!3897597 () Bool)

(assert (=> d!2014258 (=> res!2640161 e!3897597)))

(assert (=> d!2014258 (= res!2640161 ((_ is ElementMatch!16325) (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))))))

(assert (=> d!2014258 (= (validRegex!8061 (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))) e!3897597)))

(declare-fun bm!552525 () Bool)

(declare-fun call!552531 () Bool)

(assert (=> bm!552525 (= call!552531 call!552530)))

(declare-fun b!6424012 () Bool)

(declare-fun e!3897595 () Bool)

(declare-fun call!552529 () Bool)

(assert (=> b!6424012 (= e!3897595 call!552529)))

(declare-fun b!6424013 () Bool)

(declare-fun res!2640159 () Bool)

(declare-fun e!3897591 () Bool)

(assert (=> b!6424013 (=> res!2640159 e!3897591)))

(assert (=> b!6424013 (= res!2640159 (not ((_ is Concat!25170) (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292))))))))

(declare-fun e!3897592 () Bool)

(assert (=> b!6424013 (= e!3897592 e!3897591)))

(declare-fun b!6424014 () Bool)

(declare-fun e!3897596 () Bool)

(assert (=> b!6424014 (= e!3897597 e!3897596)))

(assert (=> b!6424014 (= c!1173819 ((_ is Star!16325) (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))))))

(declare-fun b!6424015 () Bool)

(assert (=> b!6424015 (= e!3897596 e!3897594)))

(declare-fun res!2640162 () Bool)

(assert (=> b!6424015 (= res!2640162 (not (nullable!6318 (reg!16654 (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))))))))

(assert (=> b!6424015 (=> (not res!2640162) (not e!3897594))))

(declare-fun b!6424016 () Bool)

(assert (=> b!6424016 (= e!3897596 e!3897592)))

(assert (=> b!6424016 (= c!1173818 ((_ is Union!16325) (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))))))

(declare-fun b!6424017 () Bool)

(declare-fun e!3897593 () Bool)

(assert (=> b!6424017 (= e!3897593 call!552529)))

(declare-fun b!6424018 () Bool)

(declare-fun res!2640160 () Bool)

(assert (=> b!6424018 (=> (not res!2640160) (not e!3897593))))

(assert (=> b!6424018 (= res!2640160 call!552531)))

(assert (=> b!6424018 (= e!3897592 e!3897593)))

(declare-fun bm!552526 () Bool)

(assert (=> bm!552526 (= call!552529 (validRegex!8061 (ite c!1173818 (regTwo!33163 (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))) (regTwo!33162 (ite c!1173302 (reg!16654 r!7292) (ite c!1173301 (regOne!33163 r!7292) (regOne!33162 r!7292)))))))))

(declare-fun b!6424019 () Bool)

(assert (=> b!6424019 (= e!3897591 e!3897595)))

(declare-fun res!2640163 () Bool)

(assert (=> b!6424019 (=> (not res!2640163) (not e!3897595))))

(assert (=> b!6424019 (= res!2640163 call!552531)))

(assert (= (and d!2014258 (not res!2640161)) b!6424014))

(assert (= (and b!6424014 c!1173819) b!6424015))

(assert (= (and b!6424014 (not c!1173819)) b!6424016))

(assert (= (and b!6424015 res!2640162) b!6424011))

(assert (= (and b!6424016 c!1173818) b!6424018))

(assert (= (and b!6424016 (not c!1173818)) b!6424013))

(assert (= (and b!6424018 res!2640160) b!6424017))

(assert (= (and b!6424013 (not res!2640159)) b!6424019))

(assert (= (and b!6424019 res!2640163) b!6424012))

(assert (= (or b!6424017 b!6424012) bm!552526))

(assert (= (or b!6424018 b!6424019) bm!552525))

(assert (= (or b!6424011 bm!552525) bm!552524))

(declare-fun m!7218496 () Bool)

(assert (=> bm!552524 m!7218496))

(declare-fun m!7218498 () Bool)

(assert (=> b!6424015 m!7218498))

(declare-fun m!7218500 () Bool)

(assert (=> bm!552526 m!7218500))

(assert (=> bm!552187 d!2014258))

(declare-fun d!2014260 () Bool)

(declare-fun c!1173820 () Bool)

(assert (=> d!2014260 (= c!1173820 (isEmpty!37310 (tail!12226 (t!378888 s!2326))))))

(declare-fun e!3897598 () Bool)

(assert (=> d!2014260 (= (matchZipper!2337 (derivationStepZipper!2291 ((_ map or) lt!2377173 lt!2377180) (head!13141 (t!378888 s!2326))) (tail!12226 (t!378888 s!2326))) e!3897598)))

(declare-fun b!6424020 () Bool)

(assert (=> b!6424020 (= e!3897598 (nullableZipper!2090 (derivationStepZipper!2291 ((_ map or) lt!2377173 lt!2377180) (head!13141 (t!378888 s!2326)))))))

(declare-fun b!6424021 () Bool)

(assert (=> b!6424021 (= e!3897598 (matchZipper!2337 (derivationStepZipper!2291 (derivationStepZipper!2291 ((_ map or) lt!2377173 lt!2377180) (head!13141 (t!378888 s!2326))) (head!13141 (tail!12226 (t!378888 s!2326)))) (tail!12226 (tail!12226 (t!378888 s!2326)))))))

(assert (= (and d!2014260 c!1173820) b!6424020))

(assert (= (and d!2014260 (not c!1173820)) b!6424021))

(assert (=> d!2014260 m!7216414))

(assert (=> d!2014260 m!7217848))

(assert (=> b!6424020 m!7216446))

(declare-fun m!7218502 () Bool)

(assert (=> b!6424020 m!7218502))

(assert (=> b!6424021 m!7216414))

(assert (=> b!6424021 m!7217852))

(assert (=> b!6424021 m!7216446))

(assert (=> b!6424021 m!7217852))

(declare-fun m!7218504 () Bool)

(assert (=> b!6424021 m!7218504))

(assert (=> b!6424021 m!7216414))

(assert (=> b!6424021 m!7217856))

(assert (=> b!6424021 m!7218504))

(assert (=> b!6424021 m!7217856))

(declare-fun m!7218506 () Bool)

(assert (=> b!6424021 m!7218506))

(assert (=> b!6422005 d!2014260))

(declare-fun bs!1615863 () Bool)

(declare-fun d!2014262 () Bool)

(assert (= bs!1615863 (and d!2014262 d!2013420)))

(declare-fun lambda!354990 () Int)

(assert (=> bs!1615863 (= (= (head!13141 (t!378888 s!2326)) (h!71598 s!2326)) (= lambda!354990 lambda!354882))))

(declare-fun bs!1615864 () Bool)

(assert (= bs!1615864 (and d!2014262 d!2014178)))

(assert (=> bs!1615864 (= lambda!354990 lambda!354980)))

(declare-fun bs!1615865 () Bool)

(assert (= bs!1615865 (and d!2014262 d!2013926)))

(assert (=> bs!1615865 (= (= (head!13141 (t!378888 s!2326)) (head!13141 s!2326)) (= lambda!354990 lambda!354955))))

(declare-fun bs!1615866 () Bool)

(assert (= bs!1615866 (and d!2014262 b!6421308)))

(assert (=> bs!1615866 (= (= (head!13141 (t!378888 s!2326)) (h!71598 s!2326)) (= lambda!354990 lambda!354816))))

(declare-fun bs!1615867 () Bool)

(assert (= bs!1615867 (and d!2014262 d!2014070)))

(assert (=> bs!1615867 (= lambda!354990 lambda!354963)))

(declare-fun bs!1615868 () Bool)

(assert (= bs!1615868 (and d!2014262 d!2014002)))

(assert (=> bs!1615868 (= lambda!354990 lambda!354960)))

(assert (=> d!2014262 true))

(assert (=> d!2014262 (= (derivationStepZipper!2291 ((_ map or) lt!2377173 lt!2377180) (head!13141 (t!378888 s!2326))) (flatMap!1830 ((_ map or) lt!2377173 lt!2377180) lambda!354990))))

(declare-fun bs!1615869 () Bool)

(assert (= bs!1615869 d!2014262))

(declare-fun m!7218508 () Bool)

(assert (=> bs!1615869 m!7218508))

(assert (=> b!6422005 d!2014262))

(assert (=> b!6422005 d!2014004))

(assert (=> b!6422005 d!2014006))

(declare-fun b!6424022 () Bool)

(declare-fun e!3897599 () Bool)

(declare-fun e!3897603 () Bool)

(assert (=> b!6424022 (= e!3897599 e!3897603)))

(declare-fun c!1173821 () Bool)

(assert (=> b!6424022 (= c!1173821 ((_ is Union!16325) (regOne!33162 (regOne!33162 r!7292))))))

(declare-fun b!6424023 () Bool)

(declare-fun e!3897602 () Bool)

(assert (=> b!6424023 (= e!3897603 e!3897602)))

(declare-fun res!2640168 () Bool)

(declare-fun call!552532 () Bool)

(assert (=> b!6424023 (= res!2640168 call!552532)))

(assert (=> b!6424023 (=> res!2640168 e!3897602)))

(declare-fun b!6424024 () Bool)

(declare-fun call!552533 () Bool)

(assert (=> b!6424024 (= e!3897602 call!552533)))

(declare-fun d!2014264 () Bool)

(declare-fun res!2640167 () Bool)

(declare-fun e!3897601 () Bool)

(assert (=> d!2014264 (=> res!2640167 e!3897601)))

(assert (=> d!2014264 (= res!2640167 ((_ is EmptyExpr!16325) (regOne!33162 (regOne!33162 r!7292))))))

(assert (=> d!2014264 (= (nullableFct!2264 (regOne!33162 (regOne!33162 r!7292))) e!3897601)))

(declare-fun bm!552527 () Bool)

(assert (=> bm!552527 (= call!552533 (nullable!6318 (ite c!1173821 (regTwo!33163 (regOne!33162 (regOne!33162 r!7292))) (regTwo!33162 (regOne!33162 (regOne!33162 r!7292))))))))

(declare-fun b!6424025 () Bool)

(declare-fun e!3897604 () Bool)

(assert (=> b!6424025 (= e!3897604 call!552533)))

(declare-fun b!6424026 () Bool)

(declare-fun e!3897600 () Bool)

(assert (=> b!6424026 (= e!3897601 e!3897600)))

(declare-fun res!2640165 () Bool)

(assert (=> b!6424026 (=> (not res!2640165) (not e!3897600))))

(assert (=> b!6424026 (= res!2640165 (and (not ((_ is EmptyLang!16325) (regOne!33162 (regOne!33162 r!7292)))) (not ((_ is ElementMatch!16325) (regOne!33162 (regOne!33162 r!7292))))))))

(declare-fun b!6424027 () Bool)

(assert (=> b!6424027 (= e!3897603 e!3897604)))

(declare-fun res!2640164 () Bool)

(assert (=> b!6424027 (= res!2640164 call!552532)))

(assert (=> b!6424027 (=> (not res!2640164) (not e!3897604))))

(declare-fun b!6424028 () Bool)

(assert (=> b!6424028 (= e!3897600 e!3897599)))

(declare-fun res!2640166 () Bool)

(assert (=> b!6424028 (=> res!2640166 e!3897599)))

(assert (=> b!6424028 (= res!2640166 ((_ is Star!16325) (regOne!33162 (regOne!33162 r!7292))))))

(declare-fun bm!552528 () Bool)

(assert (=> bm!552528 (= call!552532 (nullable!6318 (ite c!1173821 (regOne!33163 (regOne!33162 (regOne!33162 r!7292))) (regOne!33162 (regOne!33162 (regOne!33162 r!7292))))))))

(assert (= (and d!2014264 (not res!2640167)) b!6424026))

(assert (= (and b!6424026 res!2640165) b!6424028))

(assert (= (and b!6424028 (not res!2640166)) b!6424022))

(assert (= (and b!6424022 c!1173821) b!6424023))

(assert (= (and b!6424022 (not c!1173821)) b!6424027))

(assert (= (and b!6424023 (not res!2640168)) b!6424024))

(assert (= (and b!6424027 res!2640164) b!6424025))

(assert (= (or b!6424024 b!6424025) bm!552527))

(assert (= (or b!6424023 b!6424027) bm!552528))

(declare-fun m!7218510 () Bool)

(assert (=> bm!552527 m!7218510))

(declare-fun m!7218512 () Bool)

(assert (=> bm!552528 m!7218512))

(assert (=> d!2013466 d!2014264))

(assert (=> b!6421886 d!2013928))

(assert (=> d!2013356 d!2013348))

(assert (=> d!2013356 d!2013328))

(declare-fun d!2014266 () Bool)

(assert (=> d!2014266 (= (matchR!8508 r!7292 s!2326) (matchRSpec!3426 r!7292 s!2326))))

(assert (=> d!2014266 true))

(declare-fun _$88!5121 () Unit!158631)

(assert (=> d!2014266 (= (choose!47722 r!7292 s!2326) _$88!5121)))

(declare-fun bs!1615870 () Bool)

(assert (= bs!1615870 d!2014266))

(assert (=> bs!1615870 m!7215902))

(assert (=> bs!1615870 m!7215900))

(assert (=> d!2013356 d!2014266))

(assert (=> d!2013356 d!2013454))

(declare-fun bs!1615871 () Bool)

(declare-fun d!2014268 () Bool)

(assert (= bs!1615871 (and d!2014268 d!2013922)))

(declare-fun lambda!354991 () Int)

(assert (=> bs!1615871 (= lambda!354991 lambda!354954)))

(declare-fun bs!1615872 () Bool)

(assert (= bs!1615872 (and d!2014268 d!2014044)))

(assert (=> bs!1615872 (= lambda!354991 lambda!354962)))

(declare-fun bs!1615873 () Bool)

(assert (= bs!1615873 (and d!2014268 d!2014100)))

(assert (=> bs!1615873 (= lambda!354991 lambda!354969)))

(declare-fun bs!1615874 () Bool)

(assert (= bs!1615874 (and d!2014268 d!2014146)))

(assert (=> bs!1615874 (= lambda!354991 lambda!354973)))

(assert (=> d!2014268 (= (nullableZipper!2090 lt!2377173) (exists!2599 lt!2377173 lambda!354991))))

(declare-fun bs!1615875 () Bool)

(assert (= bs!1615875 d!2014268))

(declare-fun m!7218514 () Bool)

(assert (=> bs!1615875 m!7218514))

(assert (=> b!6422002 d!2014268))

(declare-fun d!2014270 () Bool)

(assert (=> d!2014270 true))

(declare-fun setRes!43853 () Bool)

(assert (=> d!2014270 setRes!43853))

(declare-fun condSetEmpty!43853 () Bool)

(declare-fun res!2640169 () (InoxSet Context!11418))

(assert (=> d!2014270 (= condSetEmpty!43853 (= res!2640169 ((as const (Array Context!11418 Bool)) false)))))

(assert (=> d!2014270 (= (choose!47724 lt!2377190 lambda!354816) res!2640169)))

(declare-fun setIsEmpty!43853 () Bool)

(assert (=> setIsEmpty!43853 setRes!43853))

(declare-fun e!3897605 () Bool)

(declare-fun tp!1783218 () Bool)

(declare-fun setElem!43853 () Context!11418)

(declare-fun setNonEmpty!43853 () Bool)

(assert (=> setNonEmpty!43853 (= setRes!43853 (and tp!1783218 (inv!84059 setElem!43853) e!3897605))))

(declare-fun setRest!43853 () (InoxSet Context!11418))

(assert (=> setNonEmpty!43853 (= res!2640169 ((_ map or) (store ((as const (Array Context!11418 Bool)) false) setElem!43853 true) setRest!43853))))

(declare-fun b!6424029 () Bool)

(declare-fun tp!1783217 () Bool)

(assert (=> b!6424029 (= e!3897605 tp!1783217)))

(assert (= (and d!2014270 condSetEmpty!43853) setIsEmpty!43853))

(assert (= (and d!2014270 (not condSetEmpty!43853)) setNonEmpty!43853))

(assert (= setNonEmpty!43853 b!6424029))

(declare-fun m!7218516 () Bool)

(assert (=> setNonEmpty!43853 m!7218516))

(assert (=> d!2013398 d!2014270))

(assert (=> b!6422162 d!2014040))

(assert (=> b!6422162 d!2013930))

(declare-fun b!6424033 () Bool)

(declare-fun e!3897607 () Bool)

(declare-fun lt!2377441 () List!65274)

(assert (=> b!6424033 (= e!3897607 (or (not (= (_2!36607 (get!22571 lt!2377256)) Nil!65150)) (= lt!2377441 (_1!36607 (get!22571 lt!2377256)))))))

(declare-fun b!6424030 () Bool)

(declare-fun e!3897606 () List!65274)

(assert (=> b!6424030 (= e!3897606 (_2!36607 (get!22571 lt!2377256)))))

(declare-fun b!6424031 () Bool)

(assert (=> b!6424031 (= e!3897606 (Cons!65150 (h!71598 (_1!36607 (get!22571 lt!2377256))) (++!14393 (t!378888 (_1!36607 (get!22571 lt!2377256))) (_2!36607 (get!22571 lt!2377256)))))))

(declare-fun d!2014272 () Bool)

(assert (=> d!2014272 e!3897607))

(declare-fun res!2640171 () Bool)

(assert (=> d!2014272 (=> (not res!2640171) (not e!3897607))))

(assert (=> d!2014272 (= res!2640171 (= (content!12363 lt!2377441) ((_ map or) (content!12363 (_1!36607 (get!22571 lt!2377256))) (content!12363 (_2!36607 (get!22571 lt!2377256))))))))

(assert (=> d!2014272 (= lt!2377441 e!3897606)))

(declare-fun c!1173822 () Bool)

(assert (=> d!2014272 (= c!1173822 ((_ is Nil!65150) (_1!36607 (get!22571 lt!2377256))))))

(assert (=> d!2014272 (= (++!14393 (_1!36607 (get!22571 lt!2377256)) (_2!36607 (get!22571 lt!2377256))) lt!2377441)))

(declare-fun b!6424032 () Bool)

(declare-fun res!2640170 () Bool)

(assert (=> b!6424032 (=> (not res!2640170) (not e!3897607))))

(assert (=> b!6424032 (= res!2640170 (= (size!40383 lt!2377441) (+ (size!40383 (_1!36607 (get!22571 lt!2377256))) (size!40383 (_2!36607 (get!22571 lt!2377256))))))))

(assert (= (and d!2014272 c!1173822) b!6424030))

(assert (= (and d!2014272 (not c!1173822)) b!6424031))

(assert (= (and d!2014272 res!2640171) b!6424032))

(assert (= (and b!6424032 res!2640170) b!6424033))

(declare-fun m!7218518 () Bool)

(assert (=> b!6424031 m!7218518))

(declare-fun m!7218520 () Bool)

(assert (=> d!2014272 m!7218520))

(declare-fun m!7218522 () Bool)

(assert (=> d!2014272 m!7218522))

(declare-fun m!7218524 () Bool)

(assert (=> d!2014272 m!7218524))

(declare-fun m!7218526 () Bool)

(assert (=> b!6424032 m!7218526))

(declare-fun m!7218528 () Bool)

(assert (=> b!6424032 m!7218528))

(declare-fun m!7218530 () Bool)

(assert (=> b!6424032 m!7218530))

(assert (=> b!6421693 d!2014272))

(assert (=> b!6421693 d!2013978))

(declare-fun d!2014274 () Bool)

(assert (=> d!2014274 true))

(assert (=> d!2014274 true))

(declare-fun res!2640172 () Bool)

(assert (=> d!2014274 (= (choose!47719 lambda!354815) res!2640172)))

(assert (=> d!2013442 d!2014274))

(declare-fun b!6424034 () Bool)

(declare-fun e!3897611 () (InoxSet Context!11418))

(declare-fun call!552537 () (InoxSet Context!11418))

(declare-fun call!552538 () (InoxSet Context!11418))

(assert (=> b!6424034 (= e!3897611 ((_ map or) call!552537 call!552538))))

(declare-fun b!6424035 () Bool)

(declare-fun c!1173826 () Bool)

(assert (=> b!6424035 (= c!1173826 ((_ is Star!16325) (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))))

(declare-fun e!3897610 () (InoxSet Context!11418))

(declare-fun e!3897609 () (InoxSet Context!11418))

(assert (=> b!6424035 (= e!3897610 e!3897609)))

(declare-fun b!6424036 () Bool)

(assert (=> b!6424036 (= e!3897609 ((as const (Array Context!11418 Bool)) false))))

(declare-fun c!1173825 () Bool)

(declare-fun bm!552529 () Bool)

(declare-fun c!1173824 () Bool)

(declare-fun call!552536 () List!65275)

(declare-fun c!1173827 () Bool)

(assert (=> bm!552529 (= call!552537 (derivationStepZipperDown!1573 (ite c!1173825 (regOne!33163 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (ite c!1173827 (regTwo!33162 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (ite c!1173824 (regOne!33162 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (reg!16654 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))))) (ite (or c!1173825 c!1173827) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (Context!11419 call!552536)) (h!71598 s!2326)))))

(declare-fun b!6424037 () Bool)

(declare-fun e!3897613 () Bool)

(assert (=> b!6424037 (= e!3897613 (nullable!6318 (regOne!33162 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))))))

(declare-fun b!6424038 () Bool)

(declare-fun e!3897608 () (InoxSet Context!11418))

(assert (=> b!6424038 (= e!3897608 e!3897610)))

(assert (=> b!6424038 (= c!1173824 ((_ is Concat!25170) (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))))

(declare-fun bm!552530 () Bool)

(declare-fun call!552539 () List!65275)

(assert (=> bm!552530 (= call!552538 (derivationStepZipperDown!1573 (ite c!1173825 (regTwo!33163 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (regOne!33162 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))) (ite c!1173825 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (Context!11419 call!552539)) (h!71598 s!2326)))))

(declare-fun bm!552531 () Bool)

(declare-fun call!552535 () (InoxSet Context!11418))

(assert (=> bm!552531 (= call!552535 call!552537)))

(declare-fun d!2014276 () Bool)

(declare-fun c!1173823 () Bool)

(assert (=> d!2014276 (= c!1173823 (and ((_ is ElementMatch!16325) (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (= (c!1173074 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (h!71598 s!2326))))))

(declare-fun e!3897612 () (InoxSet Context!11418))

(assert (=> d!2014276 (= (derivationStepZipperDown!1573 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (h!71598 s!2326)) e!3897612)))

(declare-fun b!6424039 () Bool)

(assert (=> b!6424039 (= e!3897612 e!3897611)))

(assert (=> b!6424039 (= c!1173825 ((_ is Union!16325) (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))))

(declare-fun b!6424040 () Bool)

(declare-fun call!552534 () (InoxSet Context!11418))

(assert (=> b!6424040 (= e!3897610 call!552534)))

(declare-fun b!6424041 () Bool)

(assert (=> b!6424041 (= e!3897612 (store ((as const (Array Context!11418 Bool)) false) (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) true))))

(declare-fun b!6424042 () Bool)

(assert (=> b!6424042 (= c!1173827 e!3897613)))

(declare-fun res!2640173 () Bool)

(assert (=> b!6424042 (=> (not res!2640173) (not e!3897613))))

(assert (=> b!6424042 (= res!2640173 ((_ is Concat!25170) (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))))))

(assert (=> b!6424042 (= e!3897611 e!3897608)))

(declare-fun b!6424043 () Bool)

(assert (=> b!6424043 (= e!3897608 ((_ map or) call!552538 call!552535))))

(declare-fun b!6424044 () Bool)

(assert (=> b!6424044 (= e!3897609 call!552534)))

(declare-fun bm!552532 () Bool)

(assert (=> bm!552532 (= call!552536 call!552539)))

(declare-fun bm!552533 () Bool)

(assert (=> bm!552533 (= call!552534 call!552535)))

(declare-fun bm!552534 () Bool)

(assert (=> bm!552534 (= call!552539 ($colon$colon!2186 (exprs!6209 (Context!11419 (t!378889 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))) (ite (or c!1173827 c!1173824) (regTwo!33162 (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343)))))))) (h!71599 (exprs!6209 (Context!11419 (Cons!65151 (h!71599 (exprs!6209 (h!71600 zl!343))) (t!378889 (exprs!6209 (h!71600 zl!343))))))))))))

(assert (= (and d!2014276 c!1173823) b!6424041))

(assert (= (and d!2014276 (not c!1173823)) b!6424039))

(assert (= (and b!6424039 c!1173825) b!6424034))

(assert (= (and b!6424039 (not c!1173825)) b!6424042))

(assert (= (and b!6424042 res!2640173) b!6424037))

(assert (= (and b!6424042 c!1173827) b!6424043))

(assert (= (and b!6424042 (not c!1173827)) b!6424038))

(assert (= (and b!6424038 c!1173824) b!6424040))

(assert (= (and b!6424038 (not c!1173824)) b!6424035))

(assert (= (and b!6424035 c!1173826) b!6424044))

(assert (= (and b!6424035 (not c!1173826)) b!6424036))

(assert (= (or b!6424040 b!6424044) bm!552532))

(assert (= (or b!6424040 b!6424044) bm!552533))

(assert (= (or b!6424043 bm!552532) bm!552534))

(assert (= (or b!6424043 bm!552533) bm!552531))

(assert (= (or b!6424034 b!6424043) bm!552530))

(assert (= (or b!6424034 bm!552531) bm!552529))

(declare-fun m!7218532 () Bool)

(assert (=> bm!552534 m!7218532))

(declare-fun m!7218534 () Bool)

(assert (=> bm!552529 m!7218534))

(declare-fun m!7218536 () Bool)

(assert (=> b!6424041 m!7218536))

(declare-fun m!7218538 () Bool)

(assert (=> b!6424037 m!7218538))

(declare-fun m!7218540 () Bool)

(assert (=> bm!552530 m!7218540))

(assert (=> bm!552199 d!2014276))

(declare-fun d!2014278 () Bool)

(assert (=> d!2014278 (= (nullable!6318 r!7292) (nullableFct!2264 r!7292))))

(declare-fun bs!1615876 () Bool)

(assert (= bs!1615876 d!2014278))

(declare-fun m!7218542 () Bool)

(assert (=> bs!1615876 m!7218542))

(assert (=> b!6421890 d!2014278))

(declare-fun bs!1615877 () Bool)

(declare-fun b!6424053 () Bool)

(assert (= bs!1615877 (and b!6424053 d!2013890)))

(declare-fun lambda!354992 () Int)

(assert (=> bs!1615877 (not (= lambda!354992 lambda!354950))))

(declare-fun bs!1615878 () Bool)

(assert (= bs!1615878 (and b!6424053 b!6421798)))

(assert (=> bs!1615878 (not (= lambda!354992 lambda!354870))))

(declare-fun bs!1615879 () Bool)

(assert (= bs!1615879 (and b!6424053 b!6423792)))

(assert (=> bs!1615879 (not (= lambda!354992 lambda!354979))))

(declare-fun bs!1615880 () Bool)

(assert (= bs!1615880 (and b!6424053 d!2013302)))

(assert (=> bs!1615880 (not (= lambda!354992 lambda!354848))))

(declare-fun bs!1615881 () Bool)

(assert (= bs!1615881 (and b!6424053 b!6423644)))

(assert (=> bs!1615881 (not (= lambda!354992 lambda!354971))))

(declare-fun bs!1615882 () Bool)

(assert (= bs!1615882 (and b!6424053 b!6423923)))

(assert (=> bs!1615882 (= (and (= (reg!16654 (regOne!33163 lt!2377183)) (reg!16654 (regTwo!33163 r!7292))) (= (regOne!33163 lt!2377183) (regTwo!33163 r!7292))) (= lambda!354992 lambda!354984))))

(declare-fun bs!1615883 () Bool)

(assert (= bs!1615883 (and b!6424053 b!6423649)))

(assert (=> bs!1615883 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regOne!33163 lt!2377183)) (reg!16654 (regTwo!33163 lt!2377164))) (= (regOne!33163 lt!2377183) (regTwo!33163 lt!2377164))) (= lambda!354992 lambda!354970))))

(declare-fun bs!1615884 () Bool)

(assert (= bs!1615884 (and b!6424053 d!2014138)))

(assert (=> bs!1615884 (not (= lambda!354992 lambda!354972))))

(declare-fun bs!1615885 () Bool)

(assert (= bs!1615885 (and b!6424053 b!6423828)))

(assert (=> bs!1615885 (not (= lambda!354992 lambda!354982))))

(declare-fun bs!1615886 () Bool)

(assert (= bs!1615886 (and b!6424053 d!2014158)))

(assert (=> bs!1615886 (not (= lambda!354992 lambda!354975))))

(declare-fun bs!1615887 () Bool)

(assert (= bs!1615887 (and b!6424053 d!2013448)))

(assert (=> bs!1615887 (not (= lambda!354992 lambda!354888))))

(declare-fun bs!1615888 () Bool)

(assert (= bs!1615888 (and b!6424053 b!6421803)))

(assert (=> bs!1615888 (= (and (= (reg!16654 (regOne!33163 lt!2377183)) (reg!16654 r!7292)) (= (regOne!33163 lt!2377183) r!7292)) (= lambda!354992 lambda!354869))))

(declare-fun bs!1615889 () Bool)

(assert (= bs!1615889 (and b!6424053 d!2013426)))

(assert (=> bs!1615889 (not (= lambda!354992 lambda!354883))))

(declare-fun bs!1615890 () Bool)

(assert (= bs!1615890 (and b!6424053 b!6422176)))

(assert (=> bs!1615890 (not (= lambda!354992 lambda!354891))))

(declare-fun bs!1615891 () Bool)

(assert (= bs!1615891 (and b!6424053 b!6423289)))

(assert (=> bs!1615891 (not (= lambda!354992 lambda!354957))))

(assert (=> bs!1615887 (not (= lambda!354992 lambda!354887))))

(declare-fun bs!1615892 () Bool)

(assert (= bs!1615892 (and b!6424053 b!6422181)))

(assert (=> bs!1615892 (= (and (= (reg!16654 (regOne!33163 lt!2377183)) (reg!16654 lt!2377183)) (= (regOne!33163 lt!2377183) lt!2377183)) (= lambda!354992 lambda!354890))))

(declare-fun bs!1615893 () Bool)

(assert (= bs!1615893 (and b!6424053 b!6423833)))

(assert (=> bs!1615893 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regOne!33163 lt!2377183)) (reg!16654 (regOne!33163 lt!2377164))) (= (regOne!33163 lt!2377183) (regOne!33163 lt!2377164))) (= lambda!354992 lambda!354981))))

(declare-fun bs!1615894 () Bool)

(assert (= bs!1615894 (and b!6424053 d!2013318)))

(assert (=> bs!1615894 (not (= lambda!354992 lambda!354861))))

(declare-fun bs!1615895 () Bool)

(assert (= bs!1615895 (and b!6424053 b!6423797)))

(assert (=> bs!1615895 (= (and (= (reg!16654 (regOne!33163 lt!2377183)) (reg!16654 (regTwo!33163 lt!2377183))) (= (regOne!33163 lt!2377183) (regTwo!33163 lt!2377183))) (= lambda!354992 lambda!354978))))

(declare-fun bs!1615896 () Bool)

(assert (= bs!1615896 (and b!6424053 b!6421294)))

(assert (=> bs!1615896 (not (= lambda!354992 lambda!354817))))

(declare-fun bs!1615897 () Bool)

(assert (= bs!1615897 (and b!6424053 b!6421303)))

(assert (=> bs!1615897 (not (= lambda!354992 lambda!354815))))

(declare-fun bs!1615898 () Bool)

(assert (= bs!1615898 (and b!6424053 d!2014082)))

(assert (=> bs!1615898 (not (= lambda!354992 lambda!354966))))

(declare-fun bs!1615899 () Bool)

(assert (= bs!1615899 (and b!6424053 b!6422121)))

(assert (=> bs!1615899 (not (= lambda!354992 lambda!354885))))

(assert (=> bs!1615894 (not (= lambda!354992 lambda!354860))))

(assert (=> bs!1615897 (not (= lambda!354992 lambda!354814))))

(assert (=> bs!1615886 (not (= lambda!354992 lambda!354974))))

(declare-fun bs!1615900 () Bool)

(assert (= bs!1615900 (and b!6424053 b!6423294)))

(assert (=> bs!1615900 (= (and (= (reg!16654 (regOne!33163 lt!2377183)) (reg!16654 (regOne!33163 r!7292))) (= (regOne!33163 lt!2377183) (regOne!33163 r!7292))) (= lambda!354992 lambda!354956))))

(assert (=> bs!1615896 (not (= lambda!354992 lambda!354818))))

(declare-fun bs!1615901 () Bool)

(assert (= bs!1615901 (and b!6424053 b!6423918)))

(assert (=> bs!1615901 (not (= lambda!354992 lambda!354985))))

(assert (=> bs!1615877 (not (= lambda!354992 lambda!354951))))

(declare-fun bs!1615902 () Bool)

(assert (= bs!1615902 (and b!6424053 d!2014224)))

(assert (=> bs!1615902 (not (= lambda!354992 lambda!354986))))

(declare-fun bs!1615903 () Bool)

(assert (= bs!1615903 (and b!6424053 d!2013446)))

(assert (=> bs!1615903 (not (= lambda!354992 lambda!354886))))

(declare-fun bs!1615904 () Bool)

(assert (= bs!1615904 (and b!6424053 b!6421322)))

(assert (=> bs!1615904 (not (= lambda!354992 lambda!354819))))

(declare-fun bs!1615905 () Bool)

(assert (= bs!1615905 (and b!6424053 b!6422126)))

(assert (=> bs!1615905 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (reg!16654 (regOne!33163 lt!2377183)) (reg!16654 lt!2377164)) (= (regOne!33163 lt!2377183) lt!2377164)) (= lambda!354992 lambda!354884))))

(assert (=> b!6424053 true))

(assert (=> b!6424053 true))

(declare-fun bs!1615906 () Bool)

(declare-fun b!6424048 () Bool)

(assert (= bs!1615906 (and b!6424048 d!2013890)))

(declare-fun lambda!354993 () Int)

(assert (=> bs!1615906 (not (= lambda!354993 lambda!354950))))

(declare-fun bs!1615907 () Bool)

(assert (= bs!1615907 (and b!6424048 b!6421798)))

(assert (=> bs!1615907 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354993 lambda!354870))))

(declare-fun bs!1615908 () Bool)

(assert (= bs!1615908 (and b!6424048 b!6423792)))

(assert (=> bs!1615908 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 (regTwo!33163 lt!2377183))) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 (regTwo!33163 lt!2377183)))) (= lambda!354993 lambda!354979))))

(declare-fun bs!1615909 () Bool)

(assert (= bs!1615909 (and b!6424048 d!2013302)))

(assert (=> bs!1615909 (not (= lambda!354993 lambda!354848))))

(declare-fun bs!1615910 () Bool)

(assert (= bs!1615910 (and b!6424048 b!6423644)))

(assert (=> bs!1615910 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 (regTwo!33163 lt!2377164))) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 (regTwo!33163 lt!2377164)))) (= lambda!354993 lambda!354971))))

(declare-fun bs!1615911 () Bool)

(assert (= bs!1615911 (and b!6424048 b!6423923)))

(assert (=> bs!1615911 (not (= lambda!354993 lambda!354984))))

(declare-fun bs!1615912 () Bool)

(assert (= bs!1615912 (and b!6424048 b!6423649)))

(assert (=> bs!1615912 (not (= lambda!354993 lambda!354970))))

(declare-fun bs!1615913 () Bool)

(assert (= bs!1615913 (and b!6424048 d!2014138)))

(assert (=> bs!1615913 (not (= lambda!354993 lambda!354972))))

(declare-fun bs!1615914 () Bool)

(assert (= bs!1615914 (and b!6424048 b!6423828)))

(assert (=> bs!1615914 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 (regOne!33163 lt!2377164))) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 (regOne!33163 lt!2377164)))) (= lambda!354993 lambda!354982))))

(declare-fun bs!1615915 () Bool)

(assert (= bs!1615915 (and b!6424048 d!2014158)))

(assert (=> bs!1615915 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) lt!2377164) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354993 lambda!354975))))

(declare-fun bs!1615916 () Bool)

(assert (= bs!1615916 (and b!6424048 b!6424053)))

(assert (=> bs!1615916 (not (= lambda!354993 lambda!354992))))

(declare-fun bs!1615917 () Bool)

(assert (= bs!1615917 (and b!6424048 d!2013448)))

(assert (=> bs!1615917 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354993 lambda!354888))))

(declare-fun bs!1615918 () Bool)

(assert (= bs!1615918 (and b!6424048 b!6421803)))

(assert (=> bs!1615918 (not (= lambda!354993 lambda!354869))))

(declare-fun bs!1615919 () Bool)

(assert (= bs!1615919 (and b!6424048 d!2013426)))

(assert (=> bs!1615919 (not (= lambda!354993 lambda!354883))))

(declare-fun bs!1615920 () Bool)

(assert (= bs!1615920 (and b!6424048 b!6422176)))

(assert (=> bs!1615920 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 lt!2377183)) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 lt!2377183))) (= lambda!354993 lambda!354891))))

(declare-fun bs!1615921 () Bool)

(assert (= bs!1615921 (and b!6424048 b!6423289)))

(assert (=> bs!1615921 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 (regOne!33163 r!7292))) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 (regOne!33163 r!7292)))) (= lambda!354993 lambda!354957))))

(assert (=> bs!1615917 (not (= lambda!354993 lambda!354887))))

(declare-fun bs!1615922 () Bool)

(assert (= bs!1615922 (and b!6424048 b!6422181)))

(assert (=> bs!1615922 (not (= lambda!354993 lambda!354890))))

(declare-fun bs!1615923 () Bool)

(assert (= bs!1615923 (and b!6424048 b!6423833)))

(assert (=> bs!1615923 (not (= lambda!354993 lambda!354981))))

(declare-fun bs!1615924 () Bool)

(assert (= bs!1615924 (and b!6424048 d!2013318)))

(assert (=> bs!1615924 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) lt!2377164) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354993 lambda!354861))))

(declare-fun bs!1615925 () Bool)

(assert (= bs!1615925 (and b!6424048 b!6423797)))

(assert (=> bs!1615925 (not (= lambda!354993 lambda!354978))))

(declare-fun bs!1615926 () Bool)

(assert (= bs!1615926 (and b!6424048 b!6421294)))

(assert (=> bs!1615926 (not (= lambda!354993 lambda!354817))))

(declare-fun bs!1615927 () Bool)

(assert (= bs!1615927 (and b!6424048 b!6421303)))

(assert (=> bs!1615927 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354993 lambda!354815))))

(declare-fun bs!1615928 () Bool)

(assert (= bs!1615928 (and b!6424048 d!2014082)))

(assert (=> bs!1615928 (not (= lambda!354993 lambda!354966))))

(declare-fun bs!1615929 () Bool)

(assert (= bs!1615929 (and b!6424048 b!6422121)))

(assert (=> bs!1615929 (= (and (= s!2326 (_1!36607 lt!2377178)) (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 lt!2377164)) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 lt!2377164))) (= lambda!354993 lambda!354885))))

(assert (=> bs!1615924 (not (= lambda!354993 lambda!354860))))

(assert (=> bs!1615927 (not (= lambda!354993 lambda!354814))))

(assert (=> bs!1615915 (not (= lambda!354993 lambda!354974))))

(declare-fun bs!1615930 () Bool)

(assert (= bs!1615930 (and b!6424048 b!6423294)))

(assert (=> bs!1615930 (not (= lambda!354993 lambda!354956))))

(assert (=> bs!1615926 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) lt!2377164) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354993 lambda!354818))))

(declare-fun bs!1615931 () Bool)

(assert (= bs!1615931 (and b!6424048 b!6423918)))

(assert (=> bs!1615931 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 (regTwo!33163 r!7292))) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 (regTwo!33163 r!7292)))) (= lambda!354993 lambda!354985))))

(assert (=> bs!1615906 (= (and (= (regOne!33162 (regOne!33163 lt!2377183)) (regOne!33162 r!7292)) (= (regTwo!33162 (regOne!33163 lt!2377183)) (regTwo!33162 r!7292))) (= lambda!354993 lambda!354951))))

(declare-fun bs!1615932 () Bool)

(assert (= bs!1615932 (and b!6424048 d!2014224)))

(assert (=> bs!1615932 (not (= lambda!354993 lambda!354986))))

(declare-fun bs!1615933 () Bool)

(assert (= bs!1615933 (and b!6424048 d!2013446)))

(assert (=> bs!1615933 (not (= lambda!354993 lambda!354886))))

(declare-fun bs!1615934 () Bool)

(assert (= bs!1615934 (and b!6424048 b!6421322)))

(assert (=> bs!1615934 (not (= lambda!354993 lambda!354819))))

(declare-fun bs!1615935 () Bool)

(assert (= bs!1615935 (and b!6424048 b!6422126)))

(assert (=> bs!1615935 (not (= lambda!354993 lambda!354884))))

(assert (=> b!6424048 true))

(assert (=> b!6424048 true))

(declare-fun b!6424045 () Bool)

(declare-fun e!3897620 () Bool)

(assert (=> b!6424045 (= e!3897620 (= s!2326 (Cons!65150 (c!1173074 (regOne!33163 lt!2377183)) Nil!65150)))))

(declare-fun b!6424046 () Bool)

(declare-fun e!3897619 () Bool)

(declare-fun e!3897618 () Bool)

(assert (=> b!6424046 (= e!3897619 e!3897618)))

(declare-fun c!1173831 () Bool)

(assert (=> b!6424046 (= c!1173831 ((_ is Star!16325) (regOne!33163 lt!2377183)))))

(declare-fun b!6424047 () Bool)

(declare-fun res!2640176 () Bool)

(declare-fun e!3897617 () Bool)

(assert (=> b!6424047 (=> res!2640176 e!3897617)))

(declare-fun call!552540 () Bool)

(assert (=> b!6424047 (= res!2640176 call!552540)))

(assert (=> b!6424047 (= e!3897618 e!3897617)))

(declare-fun call!552541 () Bool)

(assert (=> b!6424048 (= e!3897618 call!552541)))

(declare-fun b!6424049 () Bool)

(declare-fun e!3897614 () Bool)

(assert (=> b!6424049 (= e!3897619 e!3897614)))

(declare-fun res!2640174 () Bool)

(assert (=> b!6424049 (= res!2640174 (matchRSpec!3426 (regOne!33163 (regOne!33163 lt!2377183)) s!2326))))

(assert (=> b!6424049 (=> res!2640174 e!3897614)))

(declare-fun b!6424050 () Bool)

(assert (=> b!6424050 (= e!3897614 (matchRSpec!3426 (regTwo!33163 (regOne!33163 lt!2377183)) s!2326))))

(declare-fun b!6424051 () Bool)

(declare-fun c!1173829 () Bool)

(assert (=> b!6424051 (= c!1173829 ((_ is Union!16325) (regOne!33163 lt!2377183)))))

(assert (=> b!6424051 (= e!3897620 e!3897619)))

(declare-fun d!2014280 () Bool)

(declare-fun c!1173830 () Bool)

(assert (=> d!2014280 (= c!1173830 ((_ is EmptyExpr!16325) (regOne!33163 lt!2377183)))))

(declare-fun e!3897615 () Bool)

(assert (=> d!2014280 (= (matchRSpec!3426 (regOne!33163 lt!2377183) s!2326) e!3897615)))

(declare-fun b!6424052 () Bool)

(declare-fun e!3897616 () Bool)

(assert (=> b!6424052 (= e!3897615 e!3897616)))

(declare-fun res!2640175 () Bool)

(assert (=> b!6424052 (= res!2640175 (not ((_ is EmptyLang!16325) (regOne!33163 lt!2377183))))))

(assert (=> b!6424052 (=> (not res!2640175) (not e!3897616))))

(assert (=> b!6424053 (= e!3897617 call!552541)))

(declare-fun bm!552535 () Bool)

(assert (=> bm!552535 (= call!552541 (Exists!3395 (ite c!1173831 lambda!354992 lambda!354993)))))

(declare-fun b!6424054 () Bool)

(assert (=> b!6424054 (= e!3897615 call!552540)))

(declare-fun b!6424055 () Bool)

(declare-fun c!1173828 () Bool)

(assert (=> b!6424055 (= c!1173828 ((_ is ElementMatch!16325) (regOne!33163 lt!2377183)))))

(assert (=> b!6424055 (= e!3897616 e!3897620)))

(declare-fun bm!552536 () Bool)

(assert (=> bm!552536 (= call!552540 (isEmpty!37310 s!2326))))

(assert (= (and d!2014280 c!1173830) b!6424054))

(assert (= (and d!2014280 (not c!1173830)) b!6424052))

(assert (= (and b!6424052 res!2640175) b!6424055))

(assert (= (and b!6424055 c!1173828) b!6424045))

(assert (= (and b!6424055 (not c!1173828)) b!6424051))

(assert (= (and b!6424051 c!1173829) b!6424049))

(assert (= (and b!6424051 (not c!1173829)) b!6424046))

(assert (= (and b!6424049 (not res!2640174)) b!6424050))

(assert (= (and b!6424046 c!1173831) b!6424047))

(assert (= (and b!6424046 (not c!1173831)) b!6424048))

(assert (= (and b!6424047 (not res!2640176)) b!6424053))

(assert (= (or b!6424053 b!6424048) bm!552535))

(assert (= (or b!6424054 b!6424047) bm!552536))

(declare-fun m!7218544 () Bool)

(assert (=> b!6424049 m!7218544))

(declare-fun m!7218546 () Bool)

(assert (=> b!6424050 m!7218546))

(declare-fun m!7218548 () Bool)

(assert (=> bm!552535 m!7218548))

(assert (=> bm!552536 m!7216326))

(assert (=> b!6422177 d!2014280))

(assert (=> d!2013440 d!2013998))

(declare-fun b!6424056 () Bool)

(declare-fun res!2640181 () Bool)

(declare-fun e!3897623 () Bool)

(assert (=> b!6424056 (=> res!2640181 e!3897623)))

(declare-fun e!3897621 () Bool)

(assert (=> b!6424056 (= res!2640181 e!3897621)))

(declare-fun res!2640177 () Bool)

(assert (=> b!6424056 (=> (not res!2640177) (not e!3897621))))

(declare-fun lt!2377442 () Bool)

(assert (=> b!6424056 (= res!2640177 lt!2377442)))

(declare-fun b!6424057 () Bool)

(declare-fun res!2640182 () Bool)

(assert (=> b!6424057 (=> (not res!2640182) (not e!3897621))))

(assert (=> b!6424057 (= res!2640182 (isEmpty!37310 (tail!12226 Nil!65150)))))

(declare-fun b!6424058 () Bool)

(declare-fun e!3897625 () Bool)

(declare-fun e!3897622 () Bool)

(assert (=> b!6424058 (= e!3897625 e!3897622)))

(declare-fun c!1173834 () Bool)

(assert (=> b!6424058 (= c!1173834 ((_ is EmptyLang!16325) (regOne!33162 r!7292)))))

(declare-fun b!6424059 () Bool)

(declare-fun res!2640183 () Bool)

(declare-fun e!3897626 () Bool)

(assert (=> b!6424059 (=> res!2640183 e!3897626)))

(assert (=> b!6424059 (= res!2640183 (not (isEmpty!37310 (tail!12226 Nil!65150))))))

(declare-fun d!2014282 () Bool)

(assert (=> d!2014282 e!3897625))

(declare-fun c!1173832 () Bool)

(assert (=> d!2014282 (= c!1173832 ((_ is EmptyExpr!16325) (regOne!33162 r!7292)))))

(declare-fun e!3897624 () Bool)

(assert (=> d!2014282 (= lt!2377442 e!3897624)))

(declare-fun c!1173833 () Bool)

(assert (=> d!2014282 (= c!1173833 (isEmpty!37310 Nil!65150))))

(assert (=> d!2014282 (validRegex!8061 (regOne!33162 r!7292))))

(assert (=> d!2014282 (= (matchR!8508 (regOne!33162 r!7292) Nil!65150) lt!2377442)))

(declare-fun b!6424060 () Bool)

(declare-fun e!3897627 () Bool)

(assert (=> b!6424060 (= e!3897627 e!3897626)))

(declare-fun res!2640180 () Bool)

(assert (=> b!6424060 (=> res!2640180 e!3897626)))

(declare-fun call!552542 () Bool)

(assert (=> b!6424060 (= res!2640180 call!552542)))

(declare-fun b!6424061 () Bool)

(assert (=> b!6424061 (= e!3897626 (not (= (head!13141 Nil!65150) (c!1173074 (regOne!33162 r!7292)))))))

(declare-fun b!6424062 () Bool)

(declare-fun res!2640179 () Bool)

(assert (=> b!6424062 (=> res!2640179 e!3897623)))

(assert (=> b!6424062 (= res!2640179 (not ((_ is ElementMatch!16325) (regOne!33162 r!7292))))))

(assert (=> b!6424062 (= e!3897622 e!3897623)))

(declare-fun b!6424063 () Bool)

(assert (=> b!6424063 (= e!3897625 (= lt!2377442 call!552542))))

(declare-fun b!6424064 () Bool)

(assert (=> b!6424064 (= e!3897624 (matchR!8508 (derivativeStep!5029 (regOne!33162 r!7292) (head!13141 Nil!65150)) (tail!12226 Nil!65150)))))

(declare-fun b!6424065 () Bool)

(assert (=> b!6424065 (= e!3897624 (nullable!6318 (regOne!33162 r!7292)))))

(declare-fun bm!552537 () Bool)

(assert (=> bm!552537 (= call!552542 (isEmpty!37310 Nil!65150))))

(declare-fun b!6424066 () Bool)

(assert (=> b!6424066 (= e!3897621 (= (head!13141 Nil!65150) (c!1173074 (regOne!33162 r!7292))))))

(declare-fun b!6424067 () Bool)

(assert (=> b!6424067 (= e!3897622 (not lt!2377442))))

(declare-fun b!6424068 () Bool)

(declare-fun res!2640184 () Bool)

(assert (=> b!6424068 (=> (not res!2640184) (not e!3897621))))

(assert (=> b!6424068 (= res!2640184 (not call!552542))))

(declare-fun b!6424069 () Bool)

(assert (=> b!6424069 (= e!3897623 e!3897627)))

(declare-fun res!2640178 () Bool)

(assert (=> b!6424069 (=> (not res!2640178) (not e!3897627))))

(assert (=> b!6424069 (= res!2640178 (not lt!2377442))))

(assert (= (and d!2014282 c!1173833) b!6424065))

(assert (= (and d!2014282 (not c!1173833)) b!6424064))

(assert (= (and d!2014282 c!1173832) b!6424063))

(assert (= (and d!2014282 (not c!1173832)) b!6424058))

(assert (= (and b!6424058 c!1173834) b!6424067))

(assert (= (and b!6424058 (not c!1173834)) b!6424062))

(assert (= (and b!6424062 (not res!2640179)) b!6424056))

(assert (= (and b!6424056 res!2640177) b!6424068))

(assert (= (and b!6424068 res!2640184) b!6424057))

(assert (= (and b!6424057 res!2640182) b!6424066))

(assert (= (and b!6424056 (not res!2640181)) b!6424069))

(assert (= (and b!6424069 res!2640178) b!6424060))

(assert (= (and b!6424060 (not res!2640180)) b!6424059))

(assert (= (and b!6424059 (not res!2640183)) b!6424061))

(assert (= (or b!6424063 b!6424060 b!6424068) bm!552537))

(assert (=> b!6424057 m!7217898))

(assert (=> b!6424057 m!7217898))

(assert (=> b!6424057 m!7217900))

(assert (=> b!6424059 m!7217898))

(assert (=> b!6424059 m!7217898))

(assert (=> b!6424059 m!7217900))

(assert (=> b!6424066 m!7217902))

(assert (=> bm!552537 m!7217904))

(assert (=> b!6424065 m!7217752))

(assert (=> b!6424064 m!7217902))

(assert (=> b!6424064 m!7217902))

(declare-fun m!7218550 () Bool)

(assert (=> b!6424064 m!7218550))

(assert (=> b!6424064 m!7217898))

(assert (=> b!6424064 m!7218550))

(assert (=> b!6424064 m!7217898))

(declare-fun m!7218552 () Bool)

(assert (=> b!6424064 m!7218552))

(assert (=> b!6424061 m!7217902))

(assert (=> d!2014282 m!7217904))

(assert (=> d!2014282 m!7216586))

(assert (=> d!2013440 d!2014282))

(assert (=> d!2013440 d!2013902))

(declare-fun d!2014284 () Bool)

(assert (=> d!2014284 (= (nullable!6318 (regTwo!33162 r!7292)) (nullableFct!2264 (regTwo!33162 r!7292)))))

(declare-fun bs!1615936 () Bool)

(assert (= bs!1615936 d!2014284))

(declare-fun m!7218554 () Bool)

(assert (=> bs!1615936 m!7218554))

(assert (=> b!6422086 d!2014284))

(declare-fun b!6424071 () Bool)

(declare-fun e!3897629 () Bool)

(declare-fun tp!1783219 () Bool)

(assert (=> b!6424071 (= e!3897629 tp!1783219)))

(declare-fun b!6424070 () Bool)

(declare-fun tp!1783220 () Bool)

(declare-fun e!3897628 () Bool)

(assert (=> b!6424070 (= e!3897628 (and (inv!84059 (h!71600 (t!378890 (t!378890 zl!343)))) e!3897629 tp!1783220))))

(assert (=> b!6422277 (= tp!1783008 e!3897628)))

(assert (= b!6424070 b!6424071))

(assert (= (and b!6422277 ((_ is Cons!65152) (t!378890 (t!378890 zl!343)))) b!6424070))

(declare-fun m!7218556 () Bool)

(assert (=> b!6424070 m!7218556))

(declare-fun b!6424072 () Bool)

(declare-fun e!3897630 () Bool)

(declare-fun tp!1783221 () Bool)

(assert (=> b!6424072 (= e!3897630 (and tp_is_empty!41903 tp!1783221))))

(assert (=> b!6422300 (= tp!1783032 e!3897630)))

(assert (= (and b!6422300 ((_ is Cons!65150) (t!378888 (t!378888 s!2326)))) b!6424072))

(declare-fun b!6424073 () Bool)

(declare-fun e!3897631 () Bool)

(declare-fun tp!1783222 () Bool)

(declare-fun tp!1783223 () Bool)

(assert (=> b!6424073 (= e!3897631 (and tp!1783222 tp!1783223))))

(assert (=> b!6422278 (= tp!1783007 e!3897631)))

(assert (= (and b!6422278 ((_ is Cons!65151) (exprs!6209 (h!71600 (t!378890 zl!343))))) b!6424073))

(declare-fun b!6424077 () Bool)

(declare-fun e!3897632 () Bool)

(declare-fun tp!1783225 () Bool)

(declare-fun tp!1783226 () Bool)

(assert (=> b!6424077 (= e!3897632 (and tp!1783225 tp!1783226))))

(assert (=> b!6422264 (= tp!1782997 e!3897632)))

(declare-fun b!6424074 () Bool)

(assert (=> b!6424074 (= e!3897632 tp_is_empty!41903)))

(declare-fun b!6424076 () Bool)

(declare-fun tp!1783227 () Bool)

(assert (=> b!6424076 (= e!3897632 tp!1783227)))

(declare-fun b!6424075 () Bool)

(declare-fun tp!1783228 () Bool)

(declare-fun tp!1783224 () Bool)

(assert (=> b!6424075 (= e!3897632 (and tp!1783228 tp!1783224))))

(assert (= (and b!6422264 ((_ is ElementMatch!16325) (regOne!33162 (regOne!33163 r!7292)))) b!6424074))

(assert (= (and b!6422264 ((_ is Concat!25170) (regOne!33162 (regOne!33163 r!7292)))) b!6424075))

(assert (= (and b!6422264 ((_ is Star!16325) (regOne!33162 (regOne!33163 r!7292)))) b!6424076))

(assert (= (and b!6422264 ((_ is Union!16325) (regOne!33162 (regOne!33163 r!7292)))) b!6424077))

(declare-fun b!6424081 () Bool)

(declare-fun e!3897633 () Bool)

(declare-fun tp!1783230 () Bool)

(declare-fun tp!1783231 () Bool)

(assert (=> b!6424081 (= e!3897633 (and tp!1783230 tp!1783231))))

(assert (=> b!6422264 (= tp!1782993 e!3897633)))

(declare-fun b!6424078 () Bool)

(assert (=> b!6424078 (= e!3897633 tp_is_empty!41903)))

(declare-fun b!6424080 () Bool)

(declare-fun tp!1783232 () Bool)

(assert (=> b!6424080 (= e!3897633 tp!1783232)))

(declare-fun b!6424079 () Bool)

(declare-fun tp!1783233 () Bool)

(declare-fun tp!1783229 () Bool)

(assert (=> b!6424079 (= e!3897633 (and tp!1783233 tp!1783229))))

(assert (= (and b!6422264 ((_ is ElementMatch!16325) (regTwo!33162 (regOne!33163 r!7292)))) b!6424078))

(assert (= (and b!6422264 ((_ is Concat!25170) (regTwo!33162 (regOne!33163 r!7292)))) b!6424079))

(assert (= (and b!6422264 ((_ is Star!16325) (regTwo!33162 (regOne!33163 r!7292)))) b!6424080))

(assert (= (and b!6422264 ((_ is Union!16325) (regTwo!33162 (regOne!33163 r!7292)))) b!6424081))

(declare-fun b!6424085 () Bool)

(declare-fun e!3897634 () Bool)

(declare-fun tp!1783235 () Bool)

(declare-fun tp!1783236 () Bool)

(assert (=> b!6424085 (= e!3897634 (and tp!1783235 tp!1783236))))

(assert (=> b!6422295 (= tp!1783026 e!3897634)))

(declare-fun b!6424082 () Bool)

(assert (=> b!6424082 (= e!3897634 tp_is_empty!41903)))

(declare-fun b!6424084 () Bool)

(declare-fun tp!1783237 () Bool)

(assert (=> b!6424084 (= e!3897634 tp!1783237)))

(declare-fun b!6424083 () Bool)

(declare-fun tp!1783238 () Bool)

(declare-fun tp!1783234 () Bool)

(assert (=> b!6424083 (= e!3897634 (and tp!1783238 tp!1783234))))

(assert (= (and b!6422295 ((_ is ElementMatch!16325) (regOne!33163 (regTwo!33162 r!7292)))) b!6424082))

(assert (= (and b!6422295 ((_ is Concat!25170) (regOne!33163 (regTwo!33162 r!7292)))) b!6424083))

(assert (= (and b!6422295 ((_ is Star!16325) (regOne!33163 (regTwo!33162 r!7292)))) b!6424084))

(assert (= (and b!6422295 ((_ is Union!16325) (regOne!33163 (regTwo!33162 r!7292)))) b!6424085))

(declare-fun b!6424089 () Bool)

(declare-fun e!3897635 () Bool)

(declare-fun tp!1783240 () Bool)

(declare-fun tp!1783241 () Bool)

(assert (=> b!6424089 (= e!3897635 (and tp!1783240 tp!1783241))))

(assert (=> b!6422295 (= tp!1783027 e!3897635)))

(declare-fun b!6424086 () Bool)

(assert (=> b!6424086 (= e!3897635 tp_is_empty!41903)))

(declare-fun b!6424088 () Bool)

(declare-fun tp!1783242 () Bool)

(assert (=> b!6424088 (= e!3897635 tp!1783242)))

(declare-fun b!6424087 () Bool)

(declare-fun tp!1783243 () Bool)

(declare-fun tp!1783239 () Bool)

(assert (=> b!6424087 (= e!3897635 (and tp!1783243 tp!1783239))))

(assert (= (and b!6422295 ((_ is ElementMatch!16325) (regTwo!33163 (regTwo!33162 r!7292)))) b!6424086))

(assert (= (and b!6422295 ((_ is Concat!25170) (regTwo!33163 (regTwo!33162 r!7292)))) b!6424087))

(assert (= (and b!6422295 ((_ is Star!16325) (regTwo!33163 (regTwo!33162 r!7292)))) b!6424088))

(assert (= (and b!6422295 ((_ is Union!16325) (regTwo!33163 (regTwo!33162 r!7292)))) b!6424089))

(declare-fun b!6424093 () Bool)

(declare-fun e!3897636 () Bool)

(declare-fun tp!1783245 () Bool)

(declare-fun tp!1783246 () Bool)

(assert (=> b!6424093 (= e!3897636 (and tp!1783245 tp!1783246))))

(assert (=> b!6422265 (= tp!1782996 e!3897636)))

(declare-fun b!6424090 () Bool)

(assert (=> b!6424090 (= e!3897636 tp_is_empty!41903)))

(declare-fun b!6424092 () Bool)

(declare-fun tp!1783247 () Bool)

(assert (=> b!6424092 (= e!3897636 tp!1783247)))

(declare-fun b!6424091 () Bool)

(declare-fun tp!1783248 () Bool)

(declare-fun tp!1783244 () Bool)

(assert (=> b!6424091 (= e!3897636 (and tp!1783248 tp!1783244))))

(assert (= (and b!6422265 ((_ is ElementMatch!16325) (reg!16654 (regOne!33163 r!7292)))) b!6424090))

(assert (= (and b!6422265 ((_ is Concat!25170) (reg!16654 (regOne!33163 r!7292)))) b!6424091))

(assert (= (and b!6422265 ((_ is Star!16325) (reg!16654 (regOne!33163 r!7292)))) b!6424092))

(assert (= (and b!6422265 ((_ is Union!16325) (reg!16654 (regOne!33163 r!7292)))) b!6424093))

(declare-fun b!6424097 () Bool)

(declare-fun e!3897637 () Bool)

(declare-fun tp!1783250 () Bool)

(declare-fun tp!1783251 () Bool)

(assert (=> b!6424097 (= e!3897637 (and tp!1783250 tp!1783251))))

(assert (=> b!6422301 (= tp!1783033 e!3897637)))

(declare-fun b!6424094 () Bool)

(assert (=> b!6424094 (= e!3897637 tp_is_empty!41903)))

(declare-fun b!6424096 () Bool)

(declare-fun tp!1783252 () Bool)

(assert (=> b!6424096 (= e!3897637 tp!1783252)))

(declare-fun b!6424095 () Bool)

(declare-fun tp!1783253 () Bool)

(declare-fun tp!1783249 () Bool)

(assert (=> b!6424095 (= e!3897637 (and tp!1783253 tp!1783249))))

(assert (= (and b!6422301 ((_ is ElementMatch!16325) (h!71599 (exprs!6209 (h!71600 zl!343))))) b!6424094))

(assert (= (and b!6422301 ((_ is Concat!25170) (h!71599 (exprs!6209 (h!71600 zl!343))))) b!6424095))

(assert (= (and b!6422301 ((_ is Star!16325) (h!71599 (exprs!6209 (h!71600 zl!343))))) b!6424096))

(assert (= (and b!6422301 ((_ is Union!16325) (h!71599 (exprs!6209 (h!71600 zl!343))))) b!6424097))

(declare-fun b!6424098 () Bool)

(declare-fun e!3897638 () Bool)

(declare-fun tp!1783254 () Bool)

(declare-fun tp!1783255 () Bool)

(assert (=> b!6424098 (= e!3897638 (and tp!1783254 tp!1783255))))

(assert (=> b!6422301 (= tp!1783034 e!3897638)))

(assert (= (and b!6422301 ((_ is Cons!65151) (t!378889 (exprs!6209 (h!71600 zl!343))))) b!6424098))

(declare-fun condSetEmpty!43854 () Bool)

(assert (=> setNonEmpty!43840 (= condSetEmpty!43854 (= setRest!43840 ((as const (Array Context!11418 Bool)) false)))))

(declare-fun setRes!43854 () Bool)

(assert (=> setNonEmpty!43840 (= tp!1783018 setRes!43854)))

(declare-fun setIsEmpty!43854 () Bool)

(assert (=> setIsEmpty!43854 setRes!43854))

(declare-fun tp!1783256 () Bool)

(declare-fun setElem!43854 () Context!11418)

(declare-fun setNonEmpty!43854 () Bool)

(declare-fun e!3897639 () Bool)

(assert (=> setNonEmpty!43854 (= setRes!43854 (and tp!1783256 (inv!84059 setElem!43854) e!3897639))))

(declare-fun setRest!43854 () (InoxSet Context!11418))

(assert (=> setNonEmpty!43854 (= setRest!43840 ((_ map or) (store ((as const (Array Context!11418 Bool)) false) setElem!43854 true) setRest!43854))))

(declare-fun b!6424099 () Bool)

(declare-fun tp!1783257 () Bool)

(assert (=> b!6424099 (= e!3897639 tp!1783257)))

(assert (= (and setNonEmpty!43840 condSetEmpty!43854) setIsEmpty!43854))

(assert (= (and setNonEmpty!43840 (not condSetEmpty!43854)) setNonEmpty!43854))

(assert (= setNonEmpty!43854 b!6424099))

(declare-fun m!7218558 () Bool)

(assert (=> setNonEmpty!43854 m!7218558))

(declare-fun b!6424103 () Bool)

(declare-fun e!3897640 () Bool)

(declare-fun tp!1783259 () Bool)

(declare-fun tp!1783260 () Bool)

(assert (=> b!6424103 (= e!3897640 (and tp!1783259 tp!1783260))))

(assert (=> b!6422293 (= tp!1783029 e!3897640)))

(declare-fun b!6424100 () Bool)

(assert (=> b!6424100 (= e!3897640 tp_is_empty!41903)))

(declare-fun b!6424102 () Bool)

(declare-fun tp!1783261 () Bool)

(assert (=> b!6424102 (= e!3897640 tp!1783261)))

(declare-fun b!6424101 () Bool)

(declare-fun tp!1783262 () Bool)

(declare-fun tp!1783258 () Bool)

(assert (=> b!6424101 (= e!3897640 (and tp!1783262 tp!1783258))))

(assert (= (and b!6422293 ((_ is ElementMatch!16325) (regOne!33162 (regTwo!33162 r!7292)))) b!6424100))

(assert (= (and b!6422293 ((_ is Concat!25170) (regOne!33162 (regTwo!33162 r!7292)))) b!6424101))

(assert (= (and b!6422293 ((_ is Star!16325) (regOne!33162 (regTwo!33162 r!7292)))) b!6424102))

(assert (= (and b!6422293 ((_ is Union!16325) (regOne!33162 (regTwo!33162 r!7292)))) b!6424103))

(declare-fun b!6424107 () Bool)

(declare-fun e!3897641 () Bool)

(declare-fun tp!1783264 () Bool)

(declare-fun tp!1783265 () Bool)

(assert (=> b!6424107 (= e!3897641 (and tp!1783264 tp!1783265))))

(assert (=> b!6422293 (= tp!1783025 e!3897641)))

(declare-fun b!6424104 () Bool)

(assert (=> b!6424104 (= e!3897641 tp_is_empty!41903)))

(declare-fun b!6424106 () Bool)

(declare-fun tp!1783266 () Bool)

(assert (=> b!6424106 (= e!3897641 tp!1783266)))

(declare-fun b!6424105 () Bool)

(declare-fun tp!1783267 () Bool)

(declare-fun tp!1783263 () Bool)

(assert (=> b!6424105 (= e!3897641 (and tp!1783267 tp!1783263))))

(assert (= (and b!6422293 ((_ is ElementMatch!16325) (regTwo!33162 (regTwo!33162 r!7292)))) b!6424104))

(assert (= (and b!6422293 ((_ is Concat!25170) (regTwo!33162 (regTwo!33162 r!7292)))) b!6424105))

(assert (= (and b!6422293 ((_ is Star!16325) (regTwo!33162 (regTwo!33162 r!7292)))) b!6424106))

(assert (= (and b!6422293 ((_ is Union!16325) (regTwo!33162 (regTwo!33162 r!7292)))) b!6424107))

(declare-fun b!6424111 () Bool)

(declare-fun e!3897642 () Bool)

(declare-fun tp!1783269 () Bool)

(declare-fun tp!1783270 () Bool)

(assert (=> b!6424111 (= e!3897642 (and tp!1783269 tp!1783270))))

(assert (=> b!6422294 (= tp!1783028 e!3897642)))

(declare-fun b!6424108 () Bool)

(assert (=> b!6424108 (= e!3897642 tp_is_empty!41903)))

(declare-fun b!6424110 () Bool)

(declare-fun tp!1783271 () Bool)

(assert (=> b!6424110 (= e!3897642 tp!1783271)))

(declare-fun b!6424109 () Bool)

(declare-fun tp!1783272 () Bool)

(declare-fun tp!1783268 () Bool)

(assert (=> b!6424109 (= e!3897642 (and tp!1783272 tp!1783268))))

(assert (= (and b!6422294 ((_ is ElementMatch!16325) (reg!16654 (regTwo!33162 r!7292)))) b!6424108))

(assert (= (and b!6422294 ((_ is Concat!25170) (reg!16654 (regTwo!33162 r!7292)))) b!6424109))

(assert (= (and b!6422294 ((_ is Star!16325) (reg!16654 (regTwo!33162 r!7292)))) b!6424110))

(assert (= (and b!6422294 ((_ is Union!16325) (reg!16654 (regTwo!33162 r!7292)))) b!6424111))

(declare-fun b!6424112 () Bool)

(declare-fun e!3897643 () Bool)

(declare-fun tp!1783273 () Bool)

(declare-fun tp!1783274 () Bool)

(assert (=> b!6424112 (= e!3897643 (and tp!1783273 tp!1783274))))

(assert (=> b!6422287 (= tp!1783019 e!3897643)))

(assert (= (and b!6422287 ((_ is Cons!65151) (exprs!6209 setElem!43840))) b!6424112))

(declare-fun b!6424116 () Bool)

(declare-fun e!3897644 () Bool)

(declare-fun tp!1783276 () Bool)

(declare-fun tp!1783277 () Bool)

(assert (=> b!6424116 (= e!3897644 (and tp!1783276 tp!1783277))))

(assert (=> b!6422282 (= tp!1783010 e!3897644)))

(declare-fun b!6424113 () Bool)

(assert (=> b!6424113 (= e!3897644 tp_is_empty!41903)))

(declare-fun b!6424115 () Bool)

(declare-fun tp!1783278 () Bool)

(assert (=> b!6424115 (= e!3897644 tp!1783278)))

(declare-fun b!6424114 () Bool)

(declare-fun tp!1783279 () Bool)

(declare-fun tp!1783275 () Bool)

(assert (=> b!6424114 (= e!3897644 (and tp!1783279 tp!1783275))))

(assert (= (and b!6422282 ((_ is ElementMatch!16325) (regOne!33163 (reg!16654 r!7292)))) b!6424113))

(assert (= (and b!6422282 ((_ is Concat!25170) (regOne!33163 (reg!16654 r!7292)))) b!6424114))

(assert (= (and b!6422282 ((_ is Star!16325) (regOne!33163 (reg!16654 r!7292)))) b!6424115))

(assert (= (and b!6422282 ((_ is Union!16325) (regOne!33163 (reg!16654 r!7292)))) b!6424116))

(declare-fun b!6424120 () Bool)

(declare-fun e!3897645 () Bool)

(declare-fun tp!1783281 () Bool)

(declare-fun tp!1783282 () Bool)

(assert (=> b!6424120 (= e!3897645 (and tp!1783281 tp!1783282))))

(assert (=> b!6422282 (= tp!1783011 e!3897645)))

(declare-fun b!6424117 () Bool)

(assert (=> b!6424117 (= e!3897645 tp_is_empty!41903)))

(declare-fun b!6424119 () Bool)

(declare-fun tp!1783283 () Bool)

(assert (=> b!6424119 (= e!3897645 tp!1783283)))

(declare-fun b!6424118 () Bool)

(declare-fun tp!1783284 () Bool)

(declare-fun tp!1783280 () Bool)

(assert (=> b!6424118 (= e!3897645 (and tp!1783284 tp!1783280))))

(assert (= (and b!6422282 ((_ is ElementMatch!16325) (regTwo!33163 (reg!16654 r!7292)))) b!6424117))

(assert (= (and b!6422282 ((_ is Concat!25170) (regTwo!33163 (reg!16654 r!7292)))) b!6424118))

(assert (= (and b!6422282 ((_ is Star!16325) (regTwo!33163 (reg!16654 r!7292)))) b!6424119))

(assert (= (and b!6422282 ((_ is Union!16325) (regTwo!33163 (reg!16654 r!7292)))) b!6424120))

(declare-fun b!6424124 () Bool)

(declare-fun e!3897646 () Bool)

(declare-fun tp!1783286 () Bool)

(declare-fun tp!1783287 () Bool)

(assert (=> b!6424124 (= e!3897646 (and tp!1783286 tp!1783287))))

(assert (=> b!6422266 (= tp!1782994 e!3897646)))

(declare-fun b!6424121 () Bool)

(assert (=> b!6424121 (= e!3897646 tp_is_empty!41903)))

(declare-fun b!6424123 () Bool)

(declare-fun tp!1783288 () Bool)

(assert (=> b!6424123 (= e!3897646 tp!1783288)))

(declare-fun b!6424122 () Bool)

(declare-fun tp!1783289 () Bool)

(declare-fun tp!1783285 () Bool)

(assert (=> b!6424122 (= e!3897646 (and tp!1783289 tp!1783285))))

(assert (= (and b!6422266 ((_ is ElementMatch!16325) (regOne!33163 (regOne!33163 r!7292)))) b!6424121))

(assert (= (and b!6422266 ((_ is Concat!25170) (regOne!33163 (regOne!33163 r!7292)))) b!6424122))

(assert (= (and b!6422266 ((_ is Star!16325) (regOne!33163 (regOne!33163 r!7292)))) b!6424123))

(assert (= (and b!6422266 ((_ is Union!16325) (regOne!33163 (regOne!33163 r!7292)))) b!6424124))

(declare-fun b!6424128 () Bool)

(declare-fun e!3897647 () Bool)

(declare-fun tp!1783291 () Bool)

(declare-fun tp!1783292 () Bool)

(assert (=> b!6424128 (= e!3897647 (and tp!1783291 tp!1783292))))

(assert (=> b!6422266 (= tp!1782995 e!3897647)))

(declare-fun b!6424125 () Bool)

(assert (=> b!6424125 (= e!3897647 tp_is_empty!41903)))

(declare-fun b!6424127 () Bool)

(declare-fun tp!1783293 () Bool)

(assert (=> b!6424127 (= e!3897647 tp!1783293)))

(declare-fun b!6424126 () Bool)

(declare-fun tp!1783294 () Bool)

(declare-fun tp!1783290 () Bool)

(assert (=> b!6424126 (= e!3897647 (and tp!1783294 tp!1783290))))

(assert (= (and b!6422266 ((_ is ElementMatch!16325) (regTwo!33163 (regOne!33163 r!7292)))) b!6424125))

(assert (= (and b!6422266 ((_ is Concat!25170) (regTwo!33163 (regOne!33163 r!7292)))) b!6424126))

(assert (= (and b!6422266 ((_ is Star!16325) (regTwo!33163 (regOne!33163 r!7292)))) b!6424127))

(assert (= (and b!6422266 ((_ is Union!16325) (regTwo!33163 (regOne!33163 r!7292)))) b!6424128))

(declare-fun b!6424132 () Bool)

(declare-fun e!3897648 () Bool)

(declare-fun tp!1783296 () Bool)

(declare-fun tp!1783297 () Bool)

(assert (=> b!6424132 (= e!3897648 (and tp!1783296 tp!1783297))))

(assert (=> b!6422280 (= tp!1783013 e!3897648)))

(declare-fun b!6424129 () Bool)

(assert (=> b!6424129 (= e!3897648 tp_is_empty!41903)))

(declare-fun b!6424131 () Bool)

(declare-fun tp!1783298 () Bool)

(assert (=> b!6424131 (= e!3897648 tp!1783298)))

(declare-fun b!6424130 () Bool)

(declare-fun tp!1783299 () Bool)

(declare-fun tp!1783295 () Bool)

(assert (=> b!6424130 (= e!3897648 (and tp!1783299 tp!1783295))))

(assert (= (and b!6422280 ((_ is ElementMatch!16325) (regOne!33162 (reg!16654 r!7292)))) b!6424129))

(assert (= (and b!6422280 ((_ is Concat!25170) (regOne!33162 (reg!16654 r!7292)))) b!6424130))

(assert (= (and b!6422280 ((_ is Star!16325) (regOne!33162 (reg!16654 r!7292)))) b!6424131))

(assert (= (and b!6422280 ((_ is Union!16325) (regOne!33162 (reg!16654 r!7292)))) b!6424132))

(declare-fun b!6424136 () Bool)

(declare-fun e!3897649 () Bool)

(declare-fun tp!1783301 () Bool)

(declare-fun tp!1783302 () Bool)

(assert (=> b!6424136 (= e!3897649 (and tp!1783301 tp!1783302))))

(assert (=> b!6422280 (= tp!1783009 e!3897649)))

(declare-fun b!6424133 () Bool)

(assert (=> b!6424133 (= e!3897649 tp_is_empty!41903)))

(declare-fun b!6424135 () Bool)

(declare-fun tp!1783303 () Bool)

(assert (=> b!6424135 (= e!3897649 tp!1783303)))

(declare-fun b!6424134 () Bool)

(declare-fun tp!1783304 () Bool)

(declare-fun tp!1783300 () Bool)

(assert (=> b!6424134 (= e!3897649 (and tp!1783304 tp!1783300))))

(assert (= (and b!6422280 ((_ is ElementMatch!16325) (regTwo!33162 (reg!16654 r!7292)))) b!6424133))

(assert (= (and b!6422280 ((_ is Concat!25170) (regTwo!33162 (reg!16654 r!7292)))) b!6424134))

(assert (= (and b!6422280 ((_ is Star!16325) (regTwo!33162 (reg!16654 r!7292)))) b!6424135))

(assert (= (and b!6422280 ((_ is Union!16325) (regTwo!33162 (reg!16654 r!7292)))) b!6424136))

(declare-fun b!6424140 () Bool)

(declare-fun e!3897650 () Bool)

(declare-fun tp!1783306 () Bool)

(declare-fun tp!1783307 () Bool)

(assert (=> b!6424140 (= e!3897650 (and tp!1783306 tp!1783307))))

(assert (=> b!6422281 (= tp!1783012 e!3897650)))

(declare-fun b!6424137 () Bool)

(assert (=> b!6424137 (= e!3897650 tp_is_empty!41903)))

(declare-fun b!6424139 () Bool)

(declare-fun tp!1783308 () Bool)

(assert (=> b!6424139 (= e!3897650 tp!1783308)))

(declare-fun b!6424138 () Bool)

(declare-fun tp!1783309 () Bool)

(declare-fun tp!1783305 () Bool)

(assert (=> b!6424138 (= e!3897650 (and tp!1783309 tp!1783305))))

(assert (= (and b!6422281 ((_ is ElementMatch!16325) (reg!16654 (reg!16654 r!7292)))) b!6424137))

(assert (= (and b!6422281 ((_ is Concat!25170) (reg!16654 (reg!16654 r!7292)))) b!6424138))

(assert (= (and b!6422281 ((_ is Star!16325) (reg!16654 (reg!16654 r!7292)))) b!6424139))

(assert (= (and b!6422281 ((_ is Union!16325) (reg!16654 (reg!16654 r!7292)))) b!6424140))

(declare-fun b!6424144 () Bool)

(declare-fun e!3897651 () Bool)

(declare-fun tp!1783311 () Bool)

(declare-fun tp!1783312 () Bool)

(assert (=> b!6424144 (= e!3897651 (and tp!1783311 tp!1783312))))

(assert (=> b!6422268 (= tp!1783002 e!3897651)))

(declare-fun b!6424141 () Bool)

(assert (=> b!6424141 (= e!3897651 tp_is_empty!41903)))

(declare-fun b!6424143 () Bool)

(declare-fun tp!1783313 () Bool)

(assert (=> b!6424143 (= e!3897651 tp!1783313)))

(declare-fun b!6424142 () Bool)

(declare-fun tp!1783314 () Bool)

(declare-fun tp!1783310 () Bool)

(assert (=> b!6424142 (= e!3897651 (and tp!1783314 tp!1783310))))

(assert (= (and b!6422268 ((_ is ElementMatch!16325) (regOne!33162 (regTwo!33163 r!7292)))) b!6424141))

(assert (= (and b!6422268 ((_ is Concat!25170) (regOne!33162 (regTwo!33163 r!7292)))) b!6424142))

(assert (= (and b!6422268 ((_ is Star!16325) (regOne!33162 (regTwo!33163 r!7292)))) b!6424143))

(assert (= (and b!6422268 ((_ is Union!16325) (regOne!33162 (regTwo!33163 r!7292)))) b!6424144))

(declare-fun b!6424148 () Bool)

(declare-fun e!3897652 () Bool)

(declare-fun tp!1783316 () Bool)

(declare-fun tp!1783317 () Bool)

(assert (=> b!6424148 (= e!3897652 (and tp!1783316 tp!1783317))))

(assert (=> b!6422268 (= tp!1782998 e!3897652)))

(declare-fun b!6424145 () Bool)

(assert (=> b!6424145 (= e!3897652 tp_is_empty!41903)))

(declare-fun b!6424147 () Bool)

(declare-fun tp!1783318 () Bool)

(assert (=> b!6424147 (= e!3897652 tp!1783318)))

(declare-fun b!6424146 () Bool)

(declare-fun tp!1783319 () Bool)

(declare-fun tp!1783315 () Bool)

(assert (=> b!6424146 (= e!3897652 (and tp!1783319 tp!1783315))))

(assert (= (and b!6422268 ((_ is ElementMatch!16325) (regTwo!33162 (regTwo!33163 r!7292)))) b!6424145))

(assert (= (and b!6422268 ((_ is Concat!25170) (regTwo!33162 (regTwo!33163 r!7292)))) b!6424146))

(assert (= (and b!6422268 ((_ is Star!16325) (regTwo!33162 (regTwo!33163 r!7292)))) b!6424147))

(assert (= (and b!6422268 ((_ is Union!16325) (regTwo!33162 (regTwo!33163 r!7292)))) b!6424148))

(declare-fun b!6424152 () Bool)

(declare-fun e!3897653 () Bool)

(declare-fun tp!1783321 () Bool)

(declare-fun tp!1783322 () Bool)

(assert (=> b!6424152 (= e!3897653 (and tp!1783321 tp!1783322))))

(assert (=> b!6422269 (= tp!1783001 e!3897653)))

(declare-fun b!6424149 () Bool)

(assert (=> b!6424149 (= e!3897653 tp_is_empty!41903)))

(declare-fun b!6424151 () Bool)

(declare-fun tp!1783323 () Bool)

(assert (=> b!6424151 (= e!3897653 tp!1783323)))

(declare-fun b!6424150 () Bool)

(declare-fun tp!1783324 () Bool)

(declare-fun tp!1783320 () Bool)

(assert (=> b!6424150 (= e!3897653 (and tp!1783324 tp!1783320))))

(assert (= (and b!6422269 ((_ is ElementMatch!16325) (reg!16654 (regTwo!33163 r!7292)))) b!6424149))

(assert (= (and b!6422269 ((_ is Concat!25170) (reg!16654 (regTwo!33163 r!7292)))) b!6424150))

(assert (= (and b!6422269 ((_ is Star!16325) (reg!16654 (regTwo!33163 r!7292)))) b!6424151))

(assert (= (and b!6422269 ((_ is Union!16325) (reg!16654 (regTwo!33163 r!7292)))) b!6424152))

(declare-fun b!6424156 () Bool)

(declare-fun e!3897654 () Bool)

(declare-fun tp!1783326 () Bool)

(declare-fun tp!1783327 () Bool)

(assert (=> b!6424156 (= e!3897654 (and tp!1783326 tp!1783327))))

(assert (=> b!6422291 (= tp!1783021 e!3897654)))

(declare-fun b!6424153 () Bool)

(assert (=> b!6424153 (= e!3897654 tp_is_empty!41903)))

(declare-fun b!6424155 () Bool)

(declare-fun tp!1783328 () Bool)

(assert (=> b!6424155 (= e!3897654 tp!1783328)))

(declare-fun b!6424154 () Bool)

(declare-fun tp!1783329 () Bool)

(declare-fun tp!1783325 () Bool)

(assert (=> b!6424154 (= e!3897654 (and tp!1783329 tp!1783325))))

(assert (= (and b!6422291 ((_ is ElementMatch!16325) (regOne!33163 (regOne!33162 r!7292)))) b!6424153))

(assert (= (and b!6422291 ((_ is Concat!25170) (regOne!33163 (regOne!33162 r!7292)))) b!6424154))

(assert (= (and b!6422291 ((_ is Star!16325) (regOne!33163 (regOne!33162 r!7292)))) b!6424155))

(assert (= (and b!6422291 ((_ is Union!16325) (regOne!33163 (regOne!33162 r!7292)))) b!6424156))

(declare-fun b!6424160 () Bool)

(declare-fun e!3897655 () Bool)

(declare-fun tp!1783331 () Bool)

(declare-fun tp!1783332 () Bool)

(assert (=> b!6424160 (= e!3897655 (and tp!1783331 tp!1783332))))

(assert (=> b!6422291 (= tp!1783022 e!3897655)))

(declare-fun b!6424157 () Bool)

(assert (=> b!6424157 (= e!3897655 tp_is_empty!41903)))

(declare-fun b!6424159 () Bool)

(declare-fun tp!1783333 () Bool)

(assert (=> b!6424159 (= e!3897655 tp!1783333)))

(declare-fun b!6424158 () Bool)

(declare-fun tp!1783334 () Bool)

(declare-fun tp!1783330 () Bool)

(assert (=> b!6424158 (= e!3897655 (and tp!1783334 tp!1783330))))

(assert (= (and b!6422291 ((_ is ElementMatch!16325) (regTwo!33163 (regOne!33162 r!7292)))) b!6424157))

(assert (= (and b!6422291 ((_ is Concat!25170) (regTwo!33163 (regOne!33162 r!7292)))) b!6424158))

(assert (= (and b!6422291 ((_ is Star!16325) (regTwo!33163 (regOne!33162 r!7292)))) b!6424159))

(assert (= (and b!6422291 ((_ is Union!16325) (regTwo!33163 (regOne!33162 r!7292)))) b!6424160))

(declare-fun b!6424164 () Bool)

(declare-fun e!3897656 () Bool)

(declare-fun tp!1783336 () Bool)

(declare-fun tp!1783337 () Bool)

(assert (=> b!6424164 (= e!3897656 (and tp!1783336 tp!1783337))))

(assert (=> b!6422270 (= tp!1782999 e!3897656)))

(declare-fun b!6424161 () Bool)

(assert (=> b!6424161 (= e!3897656 tp_is_empty!41903)))

(declare-fun b!6424163 () Bool)

(declare-fun tp!1783338 () Bool)

(assert (=> b!6424163 (= e!3897656 tp!1783338)))

(declare-fun b!6424162 () Bool)

(declare-fun tp!1783339 () Bool)

(declare-fun tp!1783335 () Bool)

(assert (=> b!6424162 (= e!3897656 (and tp!1783339 tp!1783335))))

(assert (= (and b!6422270 ((_ is ElementMatch!16325) (regOne!33163 (regTwo!33163 r!7292)))) b!6424161))

(assert (= (and b!6422270 ((_ is Concat!25170) (regOne!33163 (regTwo!33163 r!7292)))) b!6424162))

(assert (= (and b!6422270 ((_ is Star!16325) (regOne!33163 (regTwo!33163 r!7292)))) b!6424163))

(assert (= (and b!6422270 ((_ is Union!16325) (regOne!33163 (regTwo!33163 r!7292)))) b!6424164))

(declare-fun b!6424168 () Bool)

(declare-fun e!3897657 () Bool)

(declare-fun tp!1783341 () Bool)

(declare-fun tp!1783342 () Bool)

(assert (=> b!6424168 (= e!3897657 (and tp!1783341 tp!1783342))))

(assert (=> b!6422270 (= tp!1783000 e!3897657)))

(declare-fun b!6424165 () Bool)

(assert (=> b!6424165 (= e!3897657 tp_is_empty!41903)))

(declare-fun b!6424167 () Bool)

(declare-fun tp!1783343 () Bool)

(assert (=> b!6424167 (= e!3897657 tp!1783343)))

(declare-fun b!6424166 () Bool)

(declare-fun tp!1783344 () Bool)

(declare-fun tp!1783340 () Bool)

(assert (=> b!6424166 (= e!3897657 (and tp!1783344 tp!1783340))))

(assert (= (and b!6422270 ((_ is ElementMatch!16325) (regTwo!33163 (regTwo!33163 r!7292)))) b!6424165))

(assert (= (and b!6422270 ((_ is Concat!25170) (regTwo!33163 (regTwo!33163 r!7292)))) b!6424166))

(assert (= (and b!6422270 ((_ is Star!16325) (regTwo!33163 (regTwo!33163 r!7292)))) b!6424167))

(assert (= (and b!6422270 ((_ is Union!16325) (regTwo!33163 (regTwo!33163 r!7292)))) b!6424168))

(declare-fun b!6424172 () Bool)

(declare-fun e!3897658 () Bool)

(declare-fun tp!1783346 () Bool)

(declare-fun tp!1783347 () Bool)

(assert (=> b!6424172 (= e!3897658 (and tp!1783346 tp!1783347))))

(assert (=> b!6422289 (= tp!1783024 e!3897658)))

(declare-fun b!6424169 () Bool)

(assert (=> b!6424169 (= e!3897658 tp_is_empty!41903)))

(declare-fun b!6424171 () Bool)

(declare-fun tp!1783348 () Bool)

(assert (=> b!6424171 (= e!3897658 tp!1783348)))

(declare-fun b!6424170 () Bool)

(declare-fun tp!1783349 () Bool)

(declare-fun tp!1783345 () Bool)

(assert (=> b!6424170 (= e!3897658 (and tp!1783349 tp!1783345))))

(assert (= (and b!6422289 ((_ is ElementMatch!16325) (regOne!33162 (regOne!33162 r!7292)))) b!6424169))

(assert (= (and b!6422289 ((_ is Concat!25170) (regOne!33162 (regOne!33162 r!7292)))) b!6424170))

(assert (= (and b!6422289 ((_ is Star!16325) (regOne!33162 (regOne!33162 r!7292)))) b!6424171))

(assert (= (and b!6422289 ((_ is Union!16325) (regOne!33162 (regOne!33162 r!7292)))) b!6424172))

(declare-fun b!6424176 () Bool)

(declare-fun e!3897659 () Bool)

(declare-fun tp!1783351 () Bool)

(declare-fun tp!1783352 () Bool)

(assert (=> b!6424176 (= e!3897659 (and tp!1783351 tp!1783352))))

(assert (=> b!6422289 (= tp!1783020 e!3897659)))

(declare-fun b!6424173 () Bool)

(assert (=> b!6424173 (= e!3897659 tp_is_empty!41903)))

(declare-fun b!6424175 () Bool)

(declare-fun tp!1783353 () Bool)

(assert (=> b!6424175 (= e!3897659 tp!1783353)))

(declare-fun b!6424174 () Bool)

(declare-fun tp!1783354 () Bool)

(declare-fun tp!1783350 () Bool)

(assert (=> b!6424174 (= e!3897659 (and tp!1783354 tp!1783350))))

(assert (= (and b!6422289 ((_ is ElementMatch!16325) (regTwo!33162 (regOne!33162 r!7292)))) b!6424173))

(assert (= (and b!6422289 ((_ is Concat!25170) (regTwo!33162 (regOne!33162 r!7292)))) b!6424174))

(assert (= (and b!6422289 ((_ is Star!16325) (regTwo!33162 (regOne!33162 r!7292)))) b!6424175))

(assert (= (and b!6422289 ((_ is Union!16325) (regTwo!33162 (regOne!33162 r!7292)))) b!6424176))

(declare-fun b!6424180 () Bool)

(declare-fun e!3897660 () Bool)

(declare-fun tp!1783356 () Bool)

(declare-fun tp!1783357 () Bool)

(assert (=> b!6424180 (= e!3897660 (and tp!1783356 tp!1783357))))

(assert (=> b!6422252 (= tp!1782981 e!3897660)))

(declare-fun b!6424177 () Bool)

(assert (=> b!6424177 (= e!3897660 tp_is_empty!41903)))

(declare-fun b!6424179 () Bool)

(declare-fun tp!1783358 () Bool)

(assert (=> b!6424179 (= e!3897660 tp!1783358)))

(declare-fun b!6424178 () Bool)

(declare-fun tp!1783359 () Bool)

(declare-fun tp!1783355 () Bool)

(assert (=> b!6424178 (= e!3897660 (and tp!1783359 tp!1783355))))

(assert (= (and b!6422252 ((_ is ElementMatch!16325) (h!71599 (exprs!6209 setElem!43834)))) b!6424177))

(assert (= (and b!6422252 ((_ is Concat!25170) (h!71599 (exprs!6209 setElem!43834)))) b!6424178))

(assert (= (and b!6422252 ((_ is Star!16325) (h!71599 (exprs!6209 setElem!43834)))) b!6424179))

(assert (= (and b!6422252 ((_ is Union!16325) (h!71599 (exprs!6209 setElem!43834)))) b!6424180))

(declare-fun b!6424181 () Bool)

(declare-fun e!3897661 () Bool)

(declare-fun tp!1783360 () Bool)

(declare-fun tp!1783361 () Bool)

(assert (=> b!6424181 (= e!3897661 (and tp!1783360 tp!1783361))))

(assert (=> b!6422252 (= tp!1782982 e!3897661)))

(assert (= (and b!6422252 ((_ is Cons!65151) (t!378889 (exprs!6209 setElem!43834)))) b!6424181))

(declare-fun b!6424185 () Bool)

(declare-fun e!3897662 () Bool)

(declare-fun tp!1783363 () Bool)

(declare-fun tp!1783364 () Bool)

(assert (=> b!6424185 (= e!3897662 (and tp!1783363 tp!1783364))))

(assert (=> b!6422290 (= tp!1783023 e!3897662)))

(declare-fun b!6424182 () Bool)

(assert (=> b!6424182 (= e!3897662 tp_is_empty!41903)))

(declare-fun b!6424184 () Bool)

(declare-fun tp!1783365 () Bool)

(assert (=> b!6424184 (= e!3897662 tp!1783365)))

(declare-fun b!6424183 () Bool)

(declare-fun tp!1783366 () Bool)

(declare-fun tp!1783362 () Bool)

(assert (=> b!6424183 (= e!3897662 (and tp!1783366 tp!1783362))))

(assert (= (and b!6422290 ((_ is ElementMatch!16325) (reg!16654 (regOne!33162 r!7292)))) b!6424182))

(assert (= (and b!6422290 ((_ is Concat!25170) (reg!16654 (regOne!33162 r!7292)))) b!6424183))

(assert (= (and b!6422290 ((_ is Star!16325) (reg!16654 (regOne!33162 r!7292)))) b!6424184))

(assert (= (and b!6422290 ((_ is Union!16325) (reg!16654 (regOne!33162 r!7292)))) b!6424185))

(declare-fun b_lambda!244163 () Bool)

(assert (= b_lambda!244151 (or b!6421308 b_lambda!244163)))

(assert (=> d!2014008 d!2013492))

(declare-fun b_lambda!244165 () Bool)

(assert (= b_lambda!244145 (or b!6421308 b_lambda!244165)))

(assert (=> d!2013910 d!2013490))

(declare-fun b_lambda!244167 () Bool)

(assert (= b_lambda!244161 (or d!2013482 b_lambda!244167)))

(declare-fun bs!1615937 () Bool)

(declare-fun d!2014286 () Bool)

(assert (= bs!1615937 (and d!2014286 d!2013482)))

(assert (=> bs!1615937 (= (dynLambda!25882 lambda!354894 (h!71599 (unfocusZipperList!1746 zl!343))) (validRegex!8061 (h!71599 (unfocusZipperList!1746 zl!343))))))

(declare-fun m!7218560 () Bool)

(assert (=> bs!1615937 m!7218560))

(assert (=> b!6423811 d!2014286))

(declare-fun b_lambda!244169 () Bool)

(assert (= b_lambda!244157 (or d!2013412 b_lambda!244169)))

(declare-fun bs!1615938 () Bool)

(declare-fun d!2014288 () Bool)

(assert (= bs!1615938 (and d!2014288 d!2013412)))

(assert (=> bs!1615938 (= (dynLambda!25882 lambda!354879 (h!71599 (exprs!6209 (h!71600 zl!343)))) (validRegex!8061 (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(declare-fun m!7218562 () Bool)

(assert (=> bs!1615938 m!7218562))

(assert (=> b!6423729 d!2014288))

(declare-fun b_lambda!244171 () Bool)

(assert (= b_lambda!244159 (or b!6421308 b_lambda!244171)))

(assert (=> d!2014164 d!2013494))

(declare-fun b_lambda!244173 () Bool)

(assert (= b_lambda!244153 (or d!2013382 b_lambda!244173)))

(declare-fun bs!1615939 () Bool)

(declare-fun d!2014290 () Bool)

(assert (= bs!1615939 (and d!2014290 d!2013382)))

(assert (=> bs!1615939 (= (dynLambda!25882 lambda!354876 (h!71599 (exprs!6209 (h!71600 zl!343)))) (validRegex!8061 (h!71599 (exprs!6209 (h!71600 zl!343)))))))

(assert (=> bs!1615939 m!7218562))

(assert (=> b!6423492 d!2014290))

(declare-fun b_lambda!244175 () Bool)

(assert (= b_lambda!244147 (or b!6421308 b_lambda!244175)))

(assert (=> d!2013964 d!2013488))

(declare-fun b_lambda!244177 () Bool)

(assert (= b_lambda!244149 (or d!2013484 b_lambda!244177)))

(declare-fun bs!1615940 () Bool)

(declare-fun d!2014292 () Bool)

(assert (= bs!1615940 (and d!2014292 d!2013484)))

(assert (=> bs!1615940 (= (dynLambda!25882 lambda!354897 (h!71599 lt!2377332)) (validRegex!8061 (h!71599 lt!2377332)))))

(declare-fun m!7218564 () Bool)

(assert (=> bs!1615940 m!7218564))

(assert (=> b!6423442 d!2014292))

(declare-fun b_lambda!244179 () Bool)

(assert (= b_lambda!244155 (or d!2013456 b_lambda!244179)))

(declare-fun bs!1615941 () Bool)

(declare-fun d!2014294 () Bool)

(assert (= bs!1615941 (and d!2014294 d!2013456)))

(assert (=> bs!1615941 (= (dynLambda!25882 lambda!354889 (h!71599 (exprs!6209 setElem!43834))) (validRegex!8061 (h!71599 (exprs!6209 setElem!43834))))))

(declare-fun m!7218566 () Bool)

(assert (=> bs!1615941 m!7218566))

(assert (=> b!6423718 d!2014294))

(check-sat (not b!6423715) (not b!6423425) (not bm!552414) (not b!6423656) (not b!6423645) (not b!6423634) (not b!6423387) (not b!6423447) (not b!6423386) (not b!6423522) (not b!6423449) (not setNonEmpty!43851) (not bm!552489) (not bm!552511) (not b!6423920) (not b!6423997) (not b!6424093) (not d!2014220) (not b!6424139) (not d!2013968) (not b!6423256) (not b!6424136) (not b!6423574) (not b!6423545) (not b!6424132) (not b!6423635) (not b!6424116) (not bm!552517) (not b!6423370) (not b!6423946) (not b!6423402) (not b!6423469) (not b!6424076) (not setNonEmpty!43854) (not d!2014210) (not bm!552425) (not b!6424037) (not bm!552479) (not b!6424079) (not d!2014014) (not b!6424152) (not b!6423512) (not bm!552401) (not d!2014284) (not b!6423766) (not b!6423995) (not bm!552477) (not bm!552453) (not bm!552506) (not bm!552478) (not bm!552472) (not b!6424147) (not bm!552400) (not bm!552396) (not b!6424050) (not b!6423473) (not b!6423636) (not b!6423900) (not b!6423632) (not b!6423945) (not d!2013910) (not b!6424127) (not d!2014060) (not b!6423532) (not bm!552403) (not b!6423513) (not bm!552423) (not bm!552461) (not b!6423413) (not b!6423549) (not b!6423927) (not bm!552408) (not b!6423817) (not b!6423883) (not b!6423899) (not d!2014000) (not b!6423952) (not b!6423506) (not b!6423947) (not bm!552513) (not bm!552505) (not b!6424049) (not b!6423362) (not b!6424077) (not bm!552474) (not b!6423555) (not b!6423894) (not d!2014154) (not d!2013990) (not bm!552536) (not b_lambda!244175) (not b!6424085) (not bm!552445) (not b!6423280) (not b!6424065) (not b!6423312) (not d!2014150) (not d!2014250) (not d!2014054) (not b!6423275) (not b!6423305) (not b!6423357) (not b!6423962) (not bm!552394) (not b!6423395) (not bm!552376) (not bm!552441) (not d!2014170) (not b!6424124) (not b!6423691) (not d!2014212) (not d!2014064) (not b!6423371) (not d!2014164) (not b!6423531) (not b!6424160) (not b!6423763) (not b!6424097) (not bm!552523) (not b!6423340) (not b!6423800) (not b!6423273) (not bm!552455) (not bm!552454) (not d!2014244) (not bm!552440) (not b!6424029) (not d!2014272) (not d!2013976) (not d!2014056) (not b!6423909) (not b!6423864) (not bm!552370) (not b!6423454) (not b!6423453) (not d!2014168) (not b!6424131) (not b!6423311) (not bm!552482) (not bm!552519) (not d!2014224) (not bm!552484) (not bm!552390) (not bm!552465) (not bm!552466) (not setNonEmpty!43853) (not b!6423999) (not b!6423310) (not b!6424126) (not d!2013974) (not b!6423298) (not bm!552450) (not b!6423432) (not b!6423565) (not d!2013918) (not b!6423596) (not d!2014044) (not b!6424171) (not b!6423353) (not b!6424174) (not b!6424164) (not b!6424143) (not bm!552399) (not b!6423901) (not b!6424170) (not b!6424142) (not b!6423959) (not bm!552422) (not b!6423303) (not b!6424098) (not b!6424057) (not bm!552507) (not b!6424091) (not b!6424140) (not bm!552391) (not d!2013970) (not d!2014146) (not d!2013932) (not d!2013982) (not d!2014226) (not b!6423859) (not b!6423530) (not bm!552470) (not d!2014268) (not b!6424180) (not b!6424120) (not b!6424163) (not bm!552498) (not b!6423794) (not bm!552537) (not b!6423605) (not b_lambda!244163) (not b!6424088) (not bm!552426) (not b!6423741) (not b!6423693) (not bm!552462) (not d!2014178) (not b!6423548) (not b!6424080) (not b!6423351) (not d!2014266) (not b!6424179) (not bm!552471) (not b!6424176) (not b!6423896) (not b_lambda!244171) (not setNonEmpty!43852) (not b!6423392) (not b!6423769) (not d!2014232) (not b!6423941) (not b_lambda!244177) (not b!6424130) (not d!2014160) (not d!2014242) (not b!6424185) (not d!2013992) (not b!6423770) (not b!6424101) (not b!6423369) (not b!6423577) (not d!2014228) (not b!6423521) (not b!6423892) (not d!2013924) (not b!6423559) (not d!2014194) (not bm!552402) (not bm!552442) (not b!6424021) (not bs!1615937) (not d!2013926) (not b!6423998) (not b!6423364) (not b!6424166) (not b_lambda!244167) (not b!6424103) (not b!6423624) (not b!6423538) (not b!6423630) (not b!6424184) (not b!6423414) (not bm!552480) (not d!2014222) (not bm!552526) (not b!6423421) (not bm!552419) (not b!6423739) (not d!2014100) (not b!6424172) (not b!6423366) (not d!2013912) (not d!2014062) (not b!6423812) (not b!6423963) (not bm!552420) (not b!6423928) (not b!6423724) (not b!6423867) (not b!6423806) (not d!2014088) (not b!6424178) (not b!6424148) (not b!6424114) (not bm!552406) (not b!6423850) (not b_lambda!244165) (not d!2014078) (not b!6423578) (not setNonEmpty!43850) (not d!2014068) (not b!6423992) (not bm!552512) (not b!6424071) (not b!6424081) (not b!6424106) (not b!6423719) (not b_lambda!244173) (not b!6423783) (not bm!552372) (not b!6423776) (not d!2013888) (not bm!552452) (not b!6424167) (not b!6424155) (not b!6424084) (not b!6423561) (not b!6423778) (not bm!552438) (not bm!552503) (not b!6423284) (not b!6423785) (not b!6423846) (not b!6423379) (not bm!552463) (not b!6424031) (not b!6423863) (not bm!552373) (not bm!552483) (not b!6423484) (not b_lambda!244105) (not d!2013890) (not b!6424089) (not d!2014148) (not bm!552530) (not b!6424159) (not b!6424110) (not d!2014282) (not b!6423646) (not b!6424099) (not b_lambda!244169) (not d!2014066) (not b!6424154) (not b!6423848) (not bm!552430) (not d!2014278) (not bm!552378) (not b!6423557) (not bm!552524) (not d!2014234) (not d!2013958) (not d!2013964) (not b!6423570) (not b!6423944) (not b!6423396) (not b!6424107) (not b_lambda!244107) (not b!6424102) (not d!2014038) (not d!2014012) (not bm!552459) (not b!6423265) (not d!2013938) (not b!6423793) (not b!6424183) (not b!6423391) (not b!6424087) (not b!6423358) (not b!6423983) (not d!2014106) (not b!6423397) (not bs!1615938) (not b!6423829) (not b!6423452) (not bm!552375) (not bm!552432) (not d!2014216) (not b!6423468) (not b!6424070) (not bm!552397) (not bm!552527) (not d!2014196) (not bm!552380) (not b!6423734) (not b!6423801) (not bm!552475) (not bm!552518) (not b!6424066) (not bm!552491) (not b!6423872) (not bs!1615940) (not b!6423285) (not b!6423931) (not b!6423598) (not b!6423575) (not b!6423865) (not d!2014002) (not b!6424032) (not bm!552409) (not b!6423498) (not b!6423563) (not b!6424168) (not d!2014136) (not b!6423732) (not d!2014092) (not b!6424083) (not b!6424122) (not d!2014030) (not b!6423629) (not d!2014230) (not bm!552431) (not b!6423410) (not b!6423604) (not b!6423932) (not b!6423957) (not b!6424119) (not b!6423639) (not b!6424072) (not bm!552502) (not b!6423694) (not b!6424112) (not b!6424118) (not d!2014086) (not d!2014260) (not b!6423866) (not b!6423552) (not d!2014252) (not b!6423587) (not b!6423708) (not bm!552415) (not b!6423824) (not b!6423939) (not b!6423462) (not d!2014176) (not d!2014032) (not d!2014072) (not b!6424061) (not b!6423687) (not bm!552451) (not b!6424096) (not d!2013940) (not b!6423278) (not b!6423271) (not d!2014138) (not b!6423935) (not b!6423400) (not b!6423942) (not d!2014096) (not d!2014082) (not b!6424156) (not b!6423730) (not b!6423853) (not bm!552534) (not b!6423511) (not bm!552433) (not b!6423736) (not d!2014218) (not bm!552377) (not b!6423855) (not d!2013960) (not b!6423600) (not bm!552457) (not d!2013984) (not bm!552495) (not b_lambda!244179) (not b!6423568) (not b!6423936) (not d!2013998) (not b!6423631) (not d!2014186) (not bm!552529) (not b!6423433) (not b!6424146) (not b!6423758) (not bm!552499) (not b!6423765) (not b!6424105) (not b!6424073) (not bm!552528) (not d!2014156) (not d!2014158) (not bm!552469) (not d!2014172) (not d!2014098) (not b_lambda!244101) (not d!2014188) tp_is_empty!41903 (not b!6423544) (not bm!552413) (not b!6423540) (not b!6424144) (not b!6423994) (not b!6423307) (not bm!552379) (not bm!552393) (not b!6423290) (not b!6423749) (not b!6424128) (not b!6423422) (not b!6423780) (not b!6423554) (not d!2014202) (not b!6424175) (not b!6423299) (not b!6423398) (not b!6423764) (not bm!552437) (not b!6423541) (not b!6423967) (not b!6424115) (not b!6424109) (not bm!552405) (not b!6423406) (not d!2014208) (not d!2013886) (not b!6423854) (not b!6424003) (not b!6423427) (not b!6424075) (not b!6423415) (not b!6423429) (not bm!552535) (not b!6423445) (not bm!552468) (not b!6423773) (not d!2014070) (not b!6423862) (not d!2014058) (not b!6424162) (not b!6424150) (not b!6424095) (not b!6423355) (not b!6423529) (not d!2014008) (not d!2014262) (not b!6423401) (not b!6424020) (not bm!552458) (not b!6423830) (not b!6424015) (not b!6423603) (not d!2014198) (not b!6424059) (not b!6423964) (not b!6423958) (not bm!552485) (not b!6424092) (not b!6423443) (not b!6423569) (not bm!552424) (not b!6423504) (not b!6424181) (not b!6424123) (not bm!552490) (not b!6423508) (not b!6424134) (not b!6423291) (not d!2013922) (not bm!552501) (not bs!1615941) (not b!6424111) (not b!6423558) (not b!6423960) (not b!6423493) (not b!6423740) (not b!6423784) (not bs!1615939) (not b!6424064) (not b!6424151) (not bm!552496) (not b!6423408) (not bm!552443) (not b!6423689) (not b_lambda!244103) (not b!6423714) (not b!6423434) (not b!6423768) (not b!6423612) (not b!6424138) (not d!2014080) (not b!6423279) (not b!6424135) (not b!6423840) (not b!6424158) (not b!6423972) (not b!6423919))
(check-sat)

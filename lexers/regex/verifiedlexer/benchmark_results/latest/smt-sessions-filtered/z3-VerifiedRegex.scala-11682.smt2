; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!657172 () Bool)

(assert start!657172)

(declare-fun b!6790216 () Bool)

(assert (=> b!6790216 true))

(assert (=> b!6790216 true))

(declare-fun lambda!382512 () Int)

(declare-fun lambda!382511 () Int)

(assert (=> b!6790216 (not (= lambda!382512 lambda!382511))))

(assert (=> b!6790216 true))

(assert (=> b!6790216 true))

(declare-fun lambda!382513 () Int)

(assert (=> b!6790216 (not (= lambda!382513 lambda!382511))))

(assert (=> b!6790216 (not (= lambda!382513 lambda!382512))))

(assert (=> b!6790216 true))

(assert (=> b!6790216 true))

(declare-fun b!6790215 () Bool)

(assert (=> b!6790215 true))

(declare-fun b!6790210 () Bool)

(declare-fun e!4098484 () Bool)

(declare-datatypes ((C!33492 0))(
  ( (C!33493 (val!26448 Int)) )
))
(declare-datatypes ((Regex!16611 0))(
  ( (ElementMatch!16611 (c!1261957 C!33492)) (Concat!25456 (regOne!33734 Regex!16611) (regTwo!33734 Regex!16611)) (EmptyExpr!16611) (Star!16611 (reg!16940 Regex!16611)) (EmptyLang!16611) (Union!16611 (regOne!33735 Regex!16611) (regTwo!33735 Regex!16611)) )
))
(declare-datatypes ((List!66132 0))(
  ( (Nil!66008) (Cons!66008 (h!72456 Regex!16611) (t!379855 List!66132)) )
))
(declare-datatypes ((Context!11990 0))(
  ( (Context!11991 (exprs!6495 List!66132)) )
))
(declare-datatypes ((List!66133 0))(
  ( (Nil!66009) (Cons!66009 (h!72457 Context!11990) (t!379856 List!66133)) )
))
(declare-fun zl!343 () List!66133)

(declare-fun tp!1859846 () Bool)

(declare-fun e!4098486 () Bool)

(declare-fun inv!84774 (Context!11990) Bool)

(assert (=> b!6790210 (= e!4098486 (and (inv!84774 (h!72457 zl!343)) e!4098484 tp!1859846))))

(declare-fun b!6790211 () Bool)

(declare-fun e!4098472 () Bool)

(declare-fun e!4098487 () Bool)

(assert (=> b!6790211 (= e!4098472 e!4098487)))

(declare-fun res!2775233 () Bool)

(assert (=> b!6790211 (=> res!2775233 e!4098487)))

(declare-fun lt!2446225 () Bool)

(assert (=> b!6790211 (= res!2775233 lt!2446225)))

(declare-fun lt!2446245 () Regex!16611)

(declare-datatypes ((List!66134 0))(
  ( (Nil!66010) (Cons!66010 (h!72458 C!33492) (t!379857 List!66134)) )
))
(declare-fun s!2326 () List!66134)

(declare-fun matchRSpec!3712 (Regex!16611 List!66134) Bool)

(assert (=> b!6790211 (= lt!2446225 (matchRSpec!3712 lt!2446245 s!2326))))

(declare-fun matchR!8794 (Regex!16611 List!66134) Bool)

(assert (=> b!6790211 (= lt!2446225 (matchR!8794 lt!2446245 s!2326))))

(declare-datatypes ((Unit!159913 0))(
  ( (Unit!159914) )
))
(declare-fun lt!2446248 () Unit!159913)

(declare-fun mainMatchTheorem!3712 (Regex!16611 List!66134) Unit!159913)

(assert (=> b!6790211 (= lt!2446248 (mainMatchTheorem!3712 lt!2446245 s!2326))))

(declare-fun b!6790212 () Bool)

(declare-fun e!4098473 () Bool)

(declare-fun tp_is_empty!42475 () Bool)

(declare-fun tp!1859855 () Bool)

(assert (=> b!6790212 (= e!4098473 (and tp_is_empty!42475 tp!1859855))))

(declare-fun setIsEmpty!46481 () Bool)

(declare-fun setRes!46481 () Bool)

(assert (=> setIsEmpty!46481 setRes!46481))

(declare-fun b!6790213 () Bool)

(declare-fun e!4098476 () Bool)

(assert (=> b!6790213 (= e!4098476 tp_is_empty!42475)))

(declare-fun b!6790214 () Bool)

(declare-fun res!2775220 () Bool)

(declare-fun e!4098479 () Bool)

(assert (=> b!6790214 (=> res!2775220 e!4098479)))

(declare-fun r!7292 () Regex!16611)

(declare-fun generalisedUnion!2455 (List!66132) Regex!16611)

(declare-fun unfocusZipperList!2032 (List!66133) List!66132)

(assert (=> b!6790214 (= res!2775220 (not (= r!7292 (generalisedUnion!2455 (unfocusZipperList!2032 zl!343)))))))

(declare-fun e!4098482 () Bool)

(declare-fun e!4098478 () Bool)

(assert (=> b!6790215 (= e!4098482 e!4098478)))

(declare-fun res!2775224 () Bool)

(assert (=> b!6790215 (=> res!2775224 e!4098478)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2446228 () (InoxSet Context!11990))

(declare-fun lt!2446231 () (InoxSet Context!11990))

(assert (=> b!6790215 (= res!2775224 (not (= lt!2446228 lt!2446231)))))

(declare-fun z!1189 () (InoxSet Context!11990))

(declare-fun lambda!382514 () Int)

(declare-fun flatMap!2092 ((InoxSet Context!11990) Int) (InoxSet Context!11990))

(declare-fun derivationStepZipperUp!1765 (Context!11990 C!33492) (InoxSet Context!11990))

(assert (=> b!6790215 (= (flatMap!2092 z!1189 lambda!382514) (derivationStepZipperUp!1765 (h!72457 zl!343) (h!72458 s!2326)))))

(declare-fun lt!2446233 () Unit!159913)

(declare-fun lemmaFlatMapOnSingletonSet!1618 ((InoxSet Context!11990) Context!11990 Int) Unit!159913)

(assert (=> b!6790215 (= lt!2446233 (lemmaFlatMapOnSingletonSet!1618 z!1189 (h!72457 zl!343) lambda!382514))))

(declare-fun e!4098483 () Bool)

(assert (=> b!6790216 (= e!4098479 e!4098483)))

(declare-fun res!2775212 () Bool)

(assert (=> b!6790216 (=> res!2775212 e!4098483)))

(declare-fun lt!2446238 () Bool)

(declare-fun e!4098474 () Bool)

(assert (=> b!6790216 (= res!2775212 (not (= lt!2446238 e!4098474)))))

(declare-fun res!2775218 () Bool)

(assert (=> b!6790216 (=> res!2775218 e!4098474)))

(declare-fun isEmpty!38377 (List!66134) Bool)

(assert (=> b!6790216 (= res!2775218 (isEmpty!38377 s!2326))))

(declare-fun Exists!3679 (Int) Bool)

(assert (=> b!6790216 (= (Exists!3679 lambda!382511) (Exists!3679 lambda!382513))))

(declare-fun lt!2446244 () Unit!159913)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2206 (Regex!16611 Regex!16611 List!66134) Unit!159913)

(assert (=> b!6790216 (= lt!2446244 (lemmaExistCutMatchRandMatchRSpecEquivalent!2206 (reg!16940 r!7292) r!7292 s!2326))))

(assert (=> b!6790216 (= (Exists!3679 lambda!382511) (Exists!3679 lambda!382512))))

(declare-fun lt!2446237 () Unit!159913)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!770 (Regex!16611 List!66134) Unit!159913)

(assert (=> b!6790216 (= lt!2446237 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!770 (reg!16940 r!7292) s!2326))))

(declare-fun lt!2446232 () Bool)

(assert (=> b!6790216 (= lt!2446232 (Exists!3679 lambda!382511))))

(declare-datatypes ((tuple2!67172 0))(
  ( (tuple2!67173 (_1!36889 List!66134) (_2!36889 List!66134)) )
))
(declare-datatypes ((Option!16498 0))(
  ( (None!16497) (Some!16497 (v!52703 tuple2!67172)) )
))
(declare-fun isDefined!13201 (Option!16498) Bool)

(declare-fun findConcatSeparation!2912 (Regex!16611 Regex!16611 List!66134 List!66134 List!66134) Option!16498)

(assert (=> b!6790216 (= lt!2446232 (isDefined!13201 (findConcatSeparation!2912 (reg!16940 r!7292) r!7292 Nil!66010 s!2326 s!2326)))))

(declare-fun lt!2446226 () Unit!159913)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2676 (Regex!16611 Regex!16611 List!66134) Unit!159913)

(assert (=> b!6790216 (= lt!2446226 (lemmaFindConcatSeparationEquivalentToExists!2676 (reg!16940 r!7292) r!7292 s!2326))))

(declare-fun b!6790217 () Bool)

(declare-fun tp!1859850 () Bool)

(assert (=> b!6790217 (= e!4098476 tp!1859850)))

(declare-fun b!6790218 () Bool)

(declare-fun tp!1859848 () Bool)

(declare-fun tp!1859854 () Bool)

(assert (=> b!6790218 (= e!4098476 (and tp!1859848 tp!1859854))))

(declare-fun b!6790219 () Bool)

(assert (=> b!6790219 (= e!4098483 e!4098482)))

(declare-fun res!2775222 () Bool)

(assert (=> b!6790219 (=> res!2775222 e!4098482)))

(declare-fun lt!2446222 () (InoxSet Context!11990))

(assert (=> b!6790219 (= res!2775222 (not (= lt!2446222 lt!2446231)))))

(declare-fun derivationStepZipperDown!1839 (Regex!16611 Context!11990 C!33492) (InoxSet Context!11990))

(assert (=> b!6790219 (= lt!2446231 (derivationStepZipperDown!1839 r!7292 (Context!11991 Nil!66008) (h!72458 s!2326)))))

(assert (=> b!6790219 (= lt!2446222 (derivationStepZipperUp!1765 (Context!11991 (Cons!66008 r!7292 Nil!66008)) (h!72458 s!2326)))))

(declare-fun derivationStepZipper!2555 ((InoxSet Context!11990) C!33492) (InoxSet Context!11990))

(assert (=> b!6790219 (= lt!2446228 (derivationStepZipper!2555 z!1189 (h!72458 s!2326)))))

(declare-fun b!6790220 () Bool)

(declare-fun res!2775221 () Bool)

(declare-fun e!4098475 () Bool)

(assert (=> b!6790220 (=> res!2775221 e!4098475)))

(declare-fun lt!2446240 () Regex!16611)

(assert (=> b!6790220 (= res!2775221 (or (not (= lt!2446240 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6790221 () Bool)

(declare-fun c!332 () Context!11990)

(declare-fun lt!2446224 () List!66132)

(declare-fun ++!14767 (List!66132 List!66132) List!66132)

(assert (=> b!6790221 (= e!4098487 (inv!84774 (Context!11991 (++!14767 (exprs!6495 c!332) lt!2446224))))))

(declare-fun lt!2446241 () Unit!159913)

(declare-fun lambda!382515 () Int)

(declare-fun lemmaConcatPreservesForall!440 (List!66132 List!66132 Int) Unit!159913)

(assert (=> b!6790221 (= lt!2446241 (lemmaConcatPreservesForall!440 (exprs!6495 c!332) lt!2446224 lambda!382515))))

(declare-fun res!2775216 () Bool)

(declare-fun e!4098477 () Bool)

(assert (=> start!657172 (=> (not res!2775216) (not e!4098477))))

(declare-fun validRegex!8347 (Regex!16611) Bool)

(assert (=> start!657172 (= res!2775216 (validRegex!8347 r!7292))))

(assert (=> start!657172 e!4098477))

(assert (=> start!657172 e!4098476))

(assert (=> start!657172 e!4098473))

(declare-fun e!4098485 () Bool)

(assert (=> start!657172 (and (inv!84774 c!332) e!4098485)))

(declare-fun condSetEmpty!46481 () Bool)

(assert (=> start!657172 (= condSetEmpty!46481 (= z!1189 ((as const (Array Context!11990 Bool)) false)))))

(assert (=> start!657172 setRes!46481))

(assert (=> start!657172 e!4098486))

(declare-fun b!6790222 () Bool)

(declare-fun res!2775229 () Bool)

(assert (=> b!6790222 (=> res!2775229 e!4098475)))

(declare-fun lt!2446242 () (InoxSet Context!11990))

(declare-fun matchZipper!2597 ((InoxSet Context!11990) List!66134) Bool)

(assert (=> b!6790222 (= res!2775229 (not (= (matchZipper!2597 lt!2446242 s!2326) (matchZipper!2597 (derivationStepZipper!2555 lt!2446242 (h!72458 s!2326)) (t!379857 s!2326)))))))

(declare-fun setElem!46481 () Context!11990)

(declare-fun e!4098481 () Bool)

(declare-fun tp!1859849 () Bool)

(declare-fun setNonEmpty!46481 () Bool)

(assert (=> setNonEmpty!46481 (= setRes!46481 (and tp!1859849 (inv!84774 setElem!46481) e!4098481))))

(declare-fun setRest!46481 () (InoxSet Context!11990))

(assert (=> setNonEmpty!46481 (= z!1189 ((_ map or) (store ((as const (Array Context!11990 Bool)) false) setElem!46481 true) setRest!46481))))

(declare-fun b!6790223 () Bool)

(declare-fun e!4098480 () Bool)

(assert (=> b!6790223 (= e!4098477 e!4098480)))

(declare-fun res!2775234 () Bool)

(assert (=> b!6790223 (=> (not res!2775234) (not e!4098480))))

(assert (=> b!6790223 (= res!2775234 (= r!7292 lt!2446240))))

(declare-fun unfocusZipper!2353 (List!66133) Regex!16611)

(assert (=> b!6790223 (= lt!2446240 (unfocusZipper!2353 zl!343))))

(declare-fun b!6790224 () Bool)

(assert (=> b!6790224 (= e!4098478 e!4098475)))

(declare-fun res!2775215 () Bool)

(assert (=> b!6790224 (=> res!2775215 e!4098475)))

(declare-fun lt!2446223 () Context!11990)

(assert (=> b!6790224 (= res!2775215 (not (= lt!2446228 (derivationStepZipperDown!1839 (reg!16940 r!7292) lt!2446223 (h!72458 s!2326)))))))

(assert (=> b!6790224 (= lt!2446223 (Context!11991 lt!2446224))))

(declare-fun lt!2446239 () Context!11990)

(assert (=> b!6790224 (= (flatMap!2092 lt!2446242 lambda!382514) (derivationStepZipperUp!1765 lt!2446239 (h!72458 s!2326)))))

(declare-fun lt!2446234 () Unit!159913)

(assert (=> b!6790224 (= lt!2446234 (lemmaFlatMapOnSingletonSet!1618 lt!2446242 lt!2446239 lambda!382514))))

(declare-fun lt!2446236 () (InoxSet Context!11990))

(assert (=> b!6790224 (= lt!2446236 (derivationStepZipperUp!1765 lt!2446239 (h!72458 s!2326)))))

(assert (=> b!6790224 (= lt!2446242 (store ((as const (Array Context!11990 Bool)) false) lt!2446239 true))))

(assert (=> b!6790224 (= lt!2446239 (Context!11991 (Cons!66008 (reg!16940 r!7292) lt!2446224)))))

(assert (=> b!6790224 (= lt!2446224 (Cons!66008 r!7292 Nil!66008))))

(declare-fun b!6790225 () Bool)

(declare-fun e!4098488 () Bool)

(assert (=> b!6790225 (= e!4098488 e!4098472)))

(declare-fun res!2775226 () Bool)

(assert (=> b!6790225 (=> res!2775226 e!4098472)))

(declare-fun lt!2446230 () (InoxSet Context!11990))

(assert (=> b!6790225 (= res!2775226 (not (= lt!2446228 (derivationStepZipper!2555 lt!2446230 (h!72458 s!2326)))))))

(assert (=> b!6790225 (= (flatMap!2092 lt!2446230 lambda!382514) (derivationStepZipperUp!1765 lt!2446223 (h!72458 s!2326)))))

(declare-fun lt!2446229 () Unit!159913)

(assert (=> b!6790225 (= lt!2446229 (lemmaFlatMapOnSingletonSet!1618 lt!2446230 lt!2446223 lambda!382514))))

(declare-fun lt!2446246 () Context!11990)

(declare-fun lt!2446221 () (InoxSet Context!11990))

(assert (=> b!6790225 (= (flatMap!2092 lt!2446221 lambda!382514) (derivationStepZipperUp!1765 lt!2446246 (h!72458 s!2326)))))

(declare-fun lt!2446243 () Unit!159913)

(assert (=> b!6790225 (= lt!2446243 (lemmaFlatMapOnSingletonSet!1618 lt!2446221 lt!2446246 lambda!382514))))

(declare-fun lt!2446227 () (InoxSet Context!11990))

(assert (=> b!6790225 (= lt!2446227 (derivationStepZipperUp!1765 lt!2446223 (h!72458 s!2326)))))

(declare-fun lt!2446247 () (InoxSet Context!11990))

(assert (=> b!6790225 (= lt!2446247 (derivationStepZipperUp!1765 lt!2446246 (h!72458 s!2326)))))

(assert (=> b!6790225 (= lt!2446230 (store ((as const (Array Context!11990 Bool)) false) lt!2446223 true))))

(assert (=> b!6790225 (= lt!2446221 (store ((as const (Array Context!11990 Bool)) false) lt!2446246 true))))

(assert (=> b!6790225 (= lt!2446246 (Context!11991 (Cons!66008 (reg!16940 r!7292) Nil!66008)))))

(declare-fun b!6790226 () Bool)

(declare-fun res!2775213 () Bool)

(assert (=> b!6790226 (=> res!2775213 e!4098472)))

(assert (=> b!6790226 (= res!2775213 (not (= (unfocusZipper!2353 (Cons!66009 lt!2446246 Nil!66009)) (reg!16940 r!7292))))))

(declare-fun b!6790227 () Bool)

(declare-fun tp!1859852 () Bool)

(assert (=> b!6790227 (= e!4098484 tp!1859852)))

(declare-fun b!6790228 () Bool)

(declare-fun res!2775228 () Bool)

(assert (=> b!6790228 (=> res!2775228 e!4098479)))

(declare-fun generalisedConcat!2208 (List!66132) Regex!16611)

(assert (=> b!6790228 (= res!2775228 (not (= r!7292 (generalisedConcat!2208 (exprs!6495 (h!72457 zl!343))))))))

(declare-fun b!6790229 () Bool)

(declare-fun tp!1859845 () Bool)

(declare-fun tp!1859851 () Bool)

(assert (=> b!6790229 (= e!4098476 (and tp!1859845 tp!1859851))))

(declare-fun b!6790230 () Bool)

(declare-fun tp!1859853 () Bool)

(assert (=> b!6790230 (= e!4098481 tp!1859853)))

(declare-fun b!6790231 () Bool)

(declare-fun res!2775227 () Bool)

(assert (=> b!6790231 (=> res!2775227 e!4098479)))

(get-info :version)

(assert (=> b!6790231 (= res!2775227 (or ((_ is EmptyExpr!16611) r!7292) ((_ is EmptyLang!16611) r!7292) ((_ is ElementMatch!16611) r!7292) ((_ is Union!16611) r!7292) ((_ is Concat!25456) r!7292)))))

(declare-fun b!6790232 () Bool)

(declare-fun tp!1859847 () Bool)

(assert (=> b!6790232 (= e!4098485 tp!1859847)))

(declare-fun b!6790233 () Bool)

(assert (=> b!6790233 (= e!4098474 lt!2446232)))

(declare-fun b!6790234 () Bool)

(assert (=> b!6790234 (= e!4098480 (not e!4098479))))

(declare-fun res!2775230 () Bool)

(assert (=> b!6790234 (=> res!2775230 e!4098479)))

(assert (=> b!6790234 (= res!2775230 (not ((_ is Cons!66009) zl!343)))))

(assert (=> b!6790234 (= lt!2446238 (matchRSpec!3712 r!7292 s!2326))))

(assert (=> b!6790234 (= lt!2446238 (matchR!8794 r!7292 s!2326))))

(declare-fun lt!2446235 () Unit!159913)

(assert (=> b!6790234 (= lt!2446235 (mainMatchTheorem!3712 r!7292 s!2326))))

(declare-fun b!6790235 () Bool)

(declare-fun res!2775231 () Bool)

(assert (=> b!6790235 (=> res!2775231 e!4098483)))

(assert (=> b!6790235 (= res!2775231 ((_ is Nil!66010) s!2326))))

(declare-fun b!6790236 () Bool)

(declare-fun res!2775232 () Bool)

(assert (=> b!6790236 (=> res!2775232 e!4098472)))

(assert (=> b!6790236 (= res!2775232 (not (= (unfocusZipper!2353 (Cons!66009 lt!2446223 Nil!66009)) r!7292)))))

(declare-fun b!6790237 () Bool)

(declare-fun res!2775217 () Bool)

(assert (=> b!6790237 (=> res!2775217 e!4098479)))

(assert (=> b!6790237 (= res!2775217 (not ((_ is Cons!66008) (exprs!6495 (h!72457 zl!343)))))))

(declare-fun b!6790238 () Bool)

(assert (=> b!6790238 (= e!4098475 e!4098488)))

(declare-fun res!2775223 () Bool)

(assert (=> b!6790238 (=> res!2775223 e!4098488)))

(assert (=> b!6790238 (= res!2775223 (not (= (unfocusZipper!2353 (Cons!66009 lt!2446239 Nil!66009)) lt!2446245)))))

(assert (=> b!6790238 (= lt!2446245 (Concat!25456 (reg!16940 r!7292) r!7292))))

(declare-fun b!6790239 () Bool)

(declare-fun res!2775219 () Bool)

(assert (=> b!6790239 (=> res!2775219 e!4098479)))

(declare-fun isEmpty!38378 (List!66133) Bool)

(assert (=> b!6790239 (= res!2775219 (not (isEmpty!38378 (t!379856 zl!343))))))

(declare-fun b!6790240 () Bool)

(declare-fun res!2775225 () Bool)

(assert (=> b!6790240 (=> (not res!2775225) (not e!4098477))))

(declare-fun toList!10395 ((InoxSet Context!11990)) List!66133)

(assert (=> b!6790240 (= res!2775225 (= (toList!10395 z!1189) zl!343))))

(declare-fun b!6790241 () Bool)

(declare-fun res!2775214 () Bool)

(assert (=> b!6790241 (=> res!2775214 e!4098487)))

(assert (=> b!6790241 (= res!2775214 (not (matchZipper!2597 z!1189 s!2326)))))

(assert (= (and start!657172 res!2775216) b!6790240))

(assert (= (and b!6790240 res!2775225) b!6790223))

(assert (= (and b!6790223 res!2775234) b!6790234))

(assert (= (and b!6790234 (not res!2775230)) b!6790239))

(assert (= (and b!6790239 (not res!2775219)) b!6790228))

(assert (= (and b!6790228 (not res!2775228)) b!6790237))

(assert (= (and b!6790237 (not res!2775217)) b!6790214))

(assert (= (and b!6790214 (not res!2775220)) b!6790231))

(assert (= (and b!6790231 (not res!2775227)) b!6790216))

(assert (= (and b!6790216 (not res!2775218)) b!6790233))

(assert (= (and b!6790216 (not res!2775212)) b!6790235))

(assert (= (and b!6790235 (not res!2775231)) b!6790219))

(assert (= (and b!6790219 (not res!2775222)) b!6790215))

(assert (= (and b!6790215 (not res!2775224)) b!6790224))

(assert (= (and b!6790224 (not res!2775215)) b!6790222))

(assert (= (and b!6790222 (not res!2775229)) b!6790220))

(assert (= (and b!6790220 (not res!2775221)) b!6790238))

(assert (= (and b!6790238 (not res!2775223)) b!6790225))

(assert (= (and b!6790225 (not res!2775226)) b!6790226))

(assert (= (and b!6790226 (not res!2775213)) b!6790236))

(assert (= (and b!6790236 (not res!2775232)) b!6790211))

(assert (= (and b!6790211 (not res!2775233)) b!6790241))

(assert (= (and b!6790241 (not res!2775214)) b!6790221))

(assert (= (and start!657172 ((_ is ElementMatch!16611) r!7292)) b!6790213))

(assert (= (and start!657172 ((_ is Concat!25456) r!7292)) b!6790229))

(assert (= (and start!657172 ((_ is Star!16611) r!7292)) b!6790217))

(assert (= (and start!657172 ((_ is Union!16611) r!7292)) b!6790218))

(assert (= (and start!657172 ((_ is Cons!66010) s!2326)) b!6790212))

(assert (= start!657172 b!6790232))

(assert (= (and start!657172 condSetEmpty!46481) setIsEmpty!46481))

(assert (= (and start!657172 (not condSetEmpty!46481)) setNonEmpty!46481))

(assert (= setNonEmpty!46481 b!6790230))

(assert (= b!6790210 b!6790227))

(assert (= (and start!657172 ((_ is Cons!66009) zl!343)) b!6790210))

(declare-fun m!7537842 () Bool)

(assert (=> b!6790221 m!7537842))

(declare-fun m!7537844 () Bool)

(assert (=> b!6790221 m!7537844))

(declare-fun m!7537846 () Bool)

(assert (=> b!6790221 m!7537846))

(declare-fun m!7537848 () Bool)

(assert (=> b!6790210 m!7537848))

(declare-fun m!7537850 () Bool)

(assert (=> b!6790240 m!7537850))

(declare-fun m!7537852 () Bool)

(assert (=> b!6790215 m!7537852))

(declare-fun m!7537854 () Bool)

(assert (=> b!6790215 m!7537854))

(declare-fun m!7537856 () Bool)

(assert (=> b!6790215 m!7537856))

(declare-fun m!7537858 () Bool)

(assert (=> b!6790219 m!7537858))

(declare-fun m!7537860 () Bool)

(assert (=> b!6790219 m!7537860))

(declare-fun m!7537862 () Bool)

(assert (=> b!6790219 m!7537862))

(declare-fun m!7537864 () Bool)

(assert (=> b!6790223 m!7537864))

(declare-fun m!7537866 () Bool)

(assert (=> b!6790241 m!7537866))

(declare-fun m!7537868 () Bool)

(assert (=> b!6790228 m!7537868))

(declare-fun m!7537870 () Bool)

(assert (=> b!6790239 m!7537870))

(declare-fun m!7537872 () Bool)

(assert (=> b!6790225 m!7537872))

(declare-fun m!7537874 () Bool)

(assert (=> b!6790225 m!7537874))

(declare-fun m!7537876 () Bool)

(assert (=> b!6790225 m!7537876))

(declare-fun m!7537878 () Bool)

(assert (=> b!6790225 m!7537878))

(declare-fun m!7537880 () Bool)

(assert (=> b!6790225 m!7537880))

(declare-fun m!7537882 () Bool)

(assert (=> b!6790225 m!7537882))

(declare-fun m!7537884 () Bool)

(assert (=> b!6790225 m!7537884))

(declare-fun m!7537886 () Bool)

(assert (=> b!6790225 m!7537886))

(declare-fun m!7537888 () Bool)

(assert (=> b!6790225 m!7537888))

(declare-fun m!7537890 () Bool)

(assert (=> b!6790226 m!7537890))

(declare-fun m!7537892 () Bool)

(assert (=> b!6790216 m!7537892))

(declare-fun m!7537894 () Bool)

(assert (=> b!6790216 m!7537894))

(declare-fun m!7537896 () Bool)

(assert (=> b!6790216 m!7537896))

(declare-fun m!7537898 () Bool)

(assert (=> b!6790216 m!7537898))

(declare-fun m!7537900 () Bool)

(assert (=> b!6790216 m!7537900))

(assert (=> b!6790216 m!7537900))

(declare-fun m!7537902 () Bool)

(assert (=> b!6790216 m!7537902))

(assert (=> b!6790216 m!7537900))

(declare-fun m!7537904 () Bool)

(assert (=> b!6790216 m!7537904))

(assert (=> b!6790216 m!7537904))

(declare-fun m!7537906 () Bool)

(assert (=> b!6790216 m!7537906))

(declare-fun m!7537908 () Bool)

(assert (=> b!6790216 m!7537908))

(declare-fun m!7537910 () Bool)

(assert (=> b!6790234 m!7537910))

(declare-fun m!7537912 () Bool)

(assert (=> b!6790234 m!7537912))

(declare-fun m!7537914 () Bool)

(assert (=> b!6790234 m!7537914))

(declare-fun m!7537916 () Bool)

(assert (=> setNonEmpty!46481 m!7537916))

(declare-fun m!7537918 () Bool)

(assert (=> b!6790211 m!7537918))

(declare-fun m!7537920 () Bool)

(assert (=> b!6790211 m!7537920))

(declare-fun m!7537922 () Bool)

(assert (=> b!6790211 m!7537922))

(declare-fun m!7537924 () Bool)

(assert (=> b!6790224 m!7537924))

(declare-fun m!7537926 () Bool)

(assert (=> b!6790224 m!7537926))

(declare-fun m!7537928 () Bool)

(assert (=> b!6790224 m!7537928))

(declare-fun m!7537930 () Bool)

(assert (=> b!6790224 m!7537930))

(declare-fun m!7537932 () Bool)

(assert (=> b!6790224 m!7537932))

(declare-fun m!7537934 () Bool)

(assert (=> b!6790238 m!7537934))

(declare-fun m!7537936 () Bool)

(assert (=> start!657172 m!7537936))

(declare-fun m!7537938 () Bool)

(assert (=> start!657172 m!7537938))

(declare-fun m!7537940 () Bool)

(assert (=> b!6790236 m!7537940))

(declare-fun m!7537942 () Bool)

(assert (=> b!6790214 m!7537942))

(assert (=> b!6790214 m!7537942))

(declare-fun m!7537944 () Bool)

(assert (=> b!6790214 m!7537944))

(declare-fun m!7537946 () Bool)

(assert (=> b!6790222 m!7537946))

(declare-fun m!7537948 () Bool)

(assert (=> b!6790222 m!7537948))

(assert (=> b!6790222 m!7537948))

(declare-fun m!7537950 () Bool)

(assert (=> b!6790222 m!7537950))

(check-sat (not b!6790225) (not b!6790229) (not b!6790211) (not b!6790239) tp_is_empty!42475 (not b!6790222) (not b!6790224) (not b!6790221) (not b!6790234) (not b!6790214) (not b!6790230) (not b!6790240) (not b!6790228) (not b!6790236) (not start!657172) (not setNonEmpty!46481) (not b!6790215) (not b!6790232) (not b!6790216) (not b!6790210) (not b!6790212) (not b!6790219) (not b!6790238) (not b!6790227) (not b!6790217) (not b!6790226) (not b!6790223) (not b!6790218) (not b!6790241))
(check-sat)
(get-model)

(declare-fun d!2133547 () Bool)

(declare-fun lt!2446251 () Regex!16611)

(assert (=> d!2133547 (validRegex!8347 lt!2446251)))

(assert (=> d!2133547 (= lt!2446251 (generalisedUnion!2455 (unfocusZipperList!2032 (Cons!66009 lt!2446246 Nil!66009))))))

(assert (=> d!2133547 (= (unfocusZipper!2353 (Cons!66009 lt!2446246 Nil!66009)) lt!2446251)))

(declare-fun bs!1809242 () Bool)

(assert (= bs!1809242 d!2133547))

(declare-fun m!7537952 () Bool)

(assert (=> bs!1809242 m!7537952))

(declare-fun m!7537954 () Bool)

(assert (=> bs!1809242 m!7537954))

(assert (=> bs!1809242 m!7537954))

(declare-fun m!7537956 () Bool)

(assert (=> bs!1809242 m!7537956))

(assert (=> b!6790226 d!2133547))

(declare-fun d!2133549 () Bool)

(declare-fun lt!2446252 () Regex!16611)

(assert (=> d!2133549 (validRegex!8347 lt!2446252)))

(assert (=> d!2133549 (= lt!2446252 (generalisedUnion!2455 (unfocusZipperList!2032 (Cons!66009 lt!2446223 Nil!66009))))))

(assert (=> d!2133549 (= (unfocusZipper!2353 (Cons!66009 lt!2446223 Nil!66009)) lt!2446252)))

(declare-fun bs!1809243 () Bool)

(assert (= bs!1809243 d!2133549))

(declare-fun m!7537958 () Bool)

(assert (=> bs!1809243 m!7537958))

(declare-fun m!7537960 () Bool)

(assert (=> bs!1809243 m!7537960))

(assert (=> bs!1809243 m!7537960))

(declare-fun m!7537962 () Bool)

(assert (=> bs!1809243 m!7537962))

(assert (=> b!6790236 d!2133549))

(declare-fun d!2133551 () Bool)

(declare-fun choose!50572 (Int) Bool)

(assert (=> d!2133551 (= (Exists!3679 lambda!382512) (choose!50572 lambda!382512))))

(declare-fun bs!1809244 () Bool)

(assert (= bs!1809244 d!2133551))

(declare-fun m!7537964 () Bool)

(assert (=> bs!1809244 m!7537964))

(assert (=> b!6790216 d!2133551))

(declare-fun d!2133553 () Bool)

(declare-fun isEmpty!38379 (Option!16498) Bool)

(assert (=> d!2133553 (= (isDefined!13201 (findConcatSeparation!2912 (reg!16940 r!7292) r!7292 Nil!66010 s!2326 s!2326)) (not (isEmpty!38379 (findConcatSeparation!2912 (reg!16940 r!7292) r!7292 Nil!66010 s!2326 s!2326))))))

(declare-fun bs!1809245 () Bool)

(assert (= bs!1809245 d!2133553))

(assert (=> bs!1809245 m!7537904))

(declare-fun m!7537966 () Bool)

(assert (=> bs!1809245 m!7537966))

(assert (=> b!6790216 d!2133553))

(declare-fun bs!1809246 () Bool)

(declare-fun d!2133555 () Bool)

(assert (= bs!1809246 (and d!2133555 b!6790216)))

(declare-fun lambda!382520 () Int)

(assert (=> bs!1809246 (= lambda!382520 lambda!382511)))

(assert (=> bs!1809246 (not (= lambda!382520 lambda!382512))))

(assert (=> bs!1809246 (not (= lambda!382520 lambda!382513))))

(assert (=> d!2133555 true))

(assert (=> d!2133555 true))

(assert (=> d!2133555 true))

(declare-fun lambda!382521 () Int)

(assert (=> bs!1809246 (not (= lambda!382521 lambda!382511))))

(assert (=> bs!1809246 (not (= lambda!382521 lambda!382512))))

(assert (=> bs!1809246 (= lambda!382521 lambda!382513)))

(declare-fun bs!1809247 () Bool)

(assert (= bs!1809247 d!2133555))

(assert (=> bs!1809247 (not (= lambda!382521 lambda!382520))))

(assert (=> d!2133555 true))

(assert (=> d!2133555 true))

(assert (=> d!2133555 true))

(assert (=> d!2133555 (= (Exists!3679 lambda!382520) (Exists!3679 lambda!382521))))

(declare-fun lt!2446255 () Unit!159913)

(declare-fun choose!50573 (Regex!16611 Regex!16611 List!66134) Unit!159913)

(assert (=> d!2133555 (= lt!2446255 (choose!50573 (reg!16940 r!7292) r!7292 s!2326))))

(assert (=> d!2133555 (validRegex!8347 (reg!16940 r!7292))))

(assert (=> d!2133555 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2206 (reg!16940 r!7292) r!7292 s!2326) lt!2446255)))

(declare-fun m!7537968 () Bool)

(assert (=> bs!1809247 m!7537968))

(declare-fun m!7537970 () Bool)

(assert (=> bs!1809247 m!7537970))

(declare-fun m!7537972 () Bool)

(assert (=> bs!1809247 m!7537972))

(declare-fun m!7537974 () Bool)

(assert (=> bs!1809247 m!7537974))

(assert (=> b!6790216 d!2133555))

(declare-fun d!2133557 () Bool)

(assert (=> d!2133557 (= (Exists!3679 lambda!382511) (choose!50572 lambda!382511))))

(declare-fun bs!1809248 () Bool)

(assert (= bs!1809248 d!2133557))

(declare-fun m!7537976 () Bool)

(assert (=> bs!1809248 m!7537976))

(assert (=> b!6790216 d!2133557))

(declare-fun bs!1809254 () Bool)

(declare-fun d!2133559 () Bool)

(assert (= bs!1809254 (and d!2133559 b!6790216)))

(declare-fun lambda!382532 () Int)

(assert (=> bs!1809254 (not (= lambda!382532 lambda!382513))))

(assert (=> bs!1809254 (= (= (Star!16611 (reg!16940 r!7292)) r!7292) (= lambda!382532 lambda!382511))))

(declare-fun bs!1809255 () Bool)

(assert (= bs!1809255 (and d!2133559 d!2133555)))

(assert (=> bs!1809255 (= (= (Star!16611 (reg!16940 r!7292)) r!7292) (= lambda!382532 lambda!382520))))

(assert (=> bs!1809254 (not (= lambda!382532 lambda!382512))))

(assert (=> bs!1809255 (not (= lambda!382532 lambda!382521))))

(assert (=> d!2133559 true))

(assert (=> d!2133559 true))

(declare-fun lambda!382533 () Int)

(assert (=> bs!1809254 (not (= lambda!382533 lambda!382513))))

(declare-fun bs!1809256 () Bool)

(assert (= bs!1809256 d!2133559))

(assert (=> bs!1809256 (not (= lambda!382533 lambda!382532))))

(assert (=> bs!1809254 (not (= lambda!382533 lambda!382511))))

(assert (=> bs!1809255 (not (= lambda!382533 lambda!382520))))

(assert (=> bs!1809254 (= (= (Star!16611 (reg!16940 r!7292)) r!7292) (= lambda!382533 lambda!382512))))

(assert (=> bs!1809255 (not (= lambda!382533 lambda!382521))))

(assert (=> d!2133559 true))

(assert (=> d!2133559 true))

(assert (=> d!2133559 (= (Exists!3679 lambda!382532) (Exists!3679 lambda!382533))))

(declare-fun lt!2446260 () Unit!159913)

(declare-fun choose!50574 (Regex!16611 List!66134) Unit!159913)

(assert (=> d!2133559 (= lt!2446260 (choose!50574 (reg!16940 r!7292) s!2326))))

(assert (=> d!2133559 (validRegex!8347 (reg!16940 r!7292))))

(assert (=> d!2133559 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!770 (reg!16940 r!7292) s!2326) lt!2446260)))

(declare-fun m!7538026 () Bool)

(assert (=> bs!1809256 m!7538026))

(declare-fun m!7538028 () Bool)

(assert (=> bs!1809256 m!7538028))

(declare-fun m!7538030 () Bool)

(assert (=> bs!1809256 m!7538030))

(assert (=> bs!1809256 m!7537974))

(assert (=> b!6790216 d!2133559))

(declare-fun d!2133579 () Bool)

(assert (=> d!2133579 (= (isEmpty!38377 s!2326) ((_ is Nil!66010) s!2326))))

(assert (=> b!6790216 d!2133579))

(declare-fun d!2133585 () Bool)

(assert (=> d!2133585 (= (Exists!3679 lambda!382513) (choose!50572 lambda!382513))))

(declare-fun bs!1809263 () Bool)

(assert (= bs!1809263 d!2133585))

(declare-fun m!7538042 () Bool)

(assert (=> bs!1809263 m!7538042))

(assert (=> b!6790216 d!2133585))

(declare-fun b!6790429 () Bool)

(declare-fun e!4098599 () Option!16498)

(assert (=> b!6790429 (= e!4098599 None!16497)))

(declare-fun d!2133591 () Bool)

(declare-fun e!4098595 () Bool)

(assert (=> d!2133591 e!4098595))

(declare-fun res!2775296 () Bool)

(assert (=> d!2133591 (=> res!2775296 e!4098595)))

(declare-fun e!4098596 () Bool)

(assert (=> d!2133591 (= res!2775296 e!4098596)))

(declare-fun res!2775298 () Bool)

(assert (=> d!2133591 (=> (not res!2775298) (not e!4098596))))

(declare-fun lt!2446278 () Option!16498)

(assert (=> d!2133591 (= res!2775298 (isDefined!13201 lt!2446278))))

(declare-fun e!4098597 () Option!16498)

(assert (=> d!2133591 (= lt!2446278 e!4098597)))

(declare-fun c!1262020 () Bool)

(declare-fun e!4098598 () Bool)

(assert (=> d!2133591 (= c!1262020 e!4098598)))

(declare-fun res!2775299 () Bool)

(assert (=> d!2133591 (=> (not res!2775299) (not e!4098598))))

(assert (=> d!2133591 (= res!2775299 (matchR!8794 (reg!16940 r!7292) Nil!66010))))

(assert (=> d!2133591 (validRegex!8347 (reg!16940 r!7292))))

(assert (=> d!2133591 (= (findConcatSeparation!2912 (reg!16940 r!7292) r!7292 Nil!66010 s!2326 s!2326) lt!2446278)))

(declare-fun b!6790430 () Bool)

(declare-fun res!2775300 () Bool)

(assert (=> b!6790430 (=> (not res!2775300) (not e!4098596))))

(declare-fun get!22985 (Option!16498) tuple2!67172)

(assert (=> b!6790430 (= res!2775300 (matchR!8794 (reg!16940 r!7292) (_1!36889 (get!22985 lt!2446278))))))

(declare-fun b!6790431 () Bool)

(declare-fun res!2775297 () Bool)

(assert (=> b!6790431 (=> (not res!2775297) (not e!4098596))))

(assert (=> b!6790431 (= res!2775297 (matchR!8794 r!7292 (_2!36889 (get!22985 lt!2446278))))))

(declare-fun b!6790432 () Bool)

(assert (=> b!6790432 (= e!4098597 (Some!16497 (tuple2!67173 Nil!66010 s!2326)))))

(declare-fun b!6790433 () Bool)

(assert (=> b!6790433 (= e!4098595 (not (isDefined!13201 lt!2446278)))))

(declare-fun b!6790434 () Bool)

(declare-fun ++!14768 (List!66134 List!66134) List!66134)

(assert (=> b!6790434 (= e!4098596 (= (++!14768 (_1!36889 (get!22985 lt!2446278)) (_2!36889 (get!22985 lt!2446278))) s!2326))))

(declare-fun b!6790435 () Bool)

(declare-fun lt!2446280 () Unit!159913)

(declare-fun lt!2446279 () Unit!159913)

(assert (=> b!6790435 (= lt!2446280 lt!2446279)))

(assert (=> b!6790435 (= (++!14768 (++!14768 Nil!66010 (Cons!66010 (h!72458 s!2326) Nil!66010)) (t!379857 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2731 (List!66134 C!33492 List!66134 List!66134) Unit!159913)

(assert (=> b!6790435 (= lt!2446279 (lemmaMoveElementToOtherListKeepsConcatEq!2731 Nil!66010 (h!72458 s!2326) (t!379857 s!2326) s!2326))))

(assert (=> b!6790435 (= e!4098599 (findConcatSeparation!2912 (reg!16940 r!7292) r!7292 (++!14768 Nil!66010 (Cons!66010 (h!72458 s!2326) Nil!66010)) (t!379857 s!2326) s!2326))))

(declare-fun b!6790436 () Bool)

(assert (=> b!6790436 (= e!4098597 e!4098599)))

(declare-fun c!1262019 () Bool)

(assert (=> b!6790436 (= c!1262019 ((_ is Nil!66010) s!2326))))

(declare-fun b!6790437 () Bool)

(assert (=> b!6790437 (= e!4098598 (matchR!8794 r!7292 s!2326))))

(assert (= (and d!2133591 res!2775299) b!6790437))

(assert (= (and d!2133591 c!1262020) b!6790432))

(assert (= (and d!2133591 (not c!1262020)) b!6790436))

(assert (= (and b!6790436 c!1262019) b!6790429))

(assert (= (and b!6790436 (not c!1262019)) b!6790435))

(assert (= (and d!2133591 res!2775298) b!6790430))

(assert (= (and b!6790430 res!2775300) b!6790431))

(assert (= (and b!6790431 res!2775297) b!6790434))

(assert (= (and d!2133591 (not res!2775296)) b!6790433))

(assert (=> b!6790437 m!7537912))

(declare-fun m!7538088 () Bool)

(assert (=> b!6790433 m!7538088))

(declare-fun m!7538090 () Bool)

(assert (=> b!6790430 m!7538090))

(declare-fun m!7538092 () Bool)

(assert (=> b!6790430 m!7538092))

(assert (=> b!6790434 m!7538090))

(declare-fun m!7538094 () Bool)

(assert (=> b!6790434 m!7538094))

(assert (=> b!6790431 m!7538090))

(declare-fun m!7538096 () Bool)

(assert (=> b!6790431 m!7538096))

(assert (=> d!2133591 m!7538088))

(declare-fun m!7538098 () Bool)

(assert (=> d!2133591 m!7538098))

(assert (=> d!2133591 m!7537974))

(declare-fun m!7538100 () Bool)

(assert (=> b!6790435 m!7538100))

(assert (=> b!6790435 m!7538100))

(declare-fun m!7538102 () Bool)

(assert (=> b!6790435 m!7538102))

(declare-fun m!7538104 () Bool)

(assert (=> b!6790435 m!7538104))

(assert (=> b!6790435 m!7538100))

(declare-fun m!7538106 () Bool)

(assert (=> b!6790435 m!7538106))

(assert (=> b!6790216 d!2133591))

(declare-fun bs!1809277 () Bool)

(declare-fun d!2133599 () Bool)

(assert (= bs!1809277 (and d!2133599 b!6790216)))

(declare-fun lambda!382551 () Int)

(assert (=> bs!1809277 (not (= lambda!382551 lambda!382513))))

(declare-fun bs!1809278 () Bool)

(assert (= bs!1809278 (and d!2133599 d!2133559)))

(assert (=> bs!1809278 (= (= r!7292 (Star!16611 (reg!16940 r!7292))) (= lambda!382551 lambda!382532))))

(assert (=> bs!1809278 (not (= lambda!382551 lambda!382533))))

(assert (=> bs!1809277 (= lambda!382551 lambda!382511)))

(declare-fun bs!1809279 () Bool)

(assert (= bs!1809279 (and d!2133599 d!2133555)))

(assert (=> bs!1809279 (= lambda!382551 lambda!382520)))

(assert (=> bs!1809277 (not (= lambda!382551 lambda!382512))))

(assert (=> bs!1809279 (not (= lambda!382551 lambda!382521))))

(assert (=> d!2133599 true))

(assert (=> d!2133599 true))

(assert (=> d!2133599 true))

(assert (=> d!2133599 (= (isDefined!13201 (findConcatSeparation!2912 (reg!16940 r!7292) r!7292 Nil!66010 s!2326 s!2326)) (Exists!3679 lambda!382551))))

(declare-fun lt!2446283 () Unit!159913)

(declare-fun choose!50575 (Regex!16611 Regex!16611 List!66134) Unit!159913)

(assert (=> d!2133599 (= lt!2446283 (choose!50575 (reg!16940 r!7292) r!7292 s!2326))))

(assert (=> d!2133599 (validRegex!8347 (reg!16940 r!7292))))

(assert (=> d!2133599 (= (lemmaFindConcatSeparationEquivalentToExists!2676 (reg!16940 r!7292) r!7292 s!2326) lt!2446283)))

(declare-fun bs!1809281 () Bool)

(assert (= bs!1809281 d!2133599))

(declare-fun m!7538126 () Bool)

(assert (=> bs!1809281 m!7538126))

(declare-fun m!7538128 () Bool)

(assert (=> bs!1809281 m!7538128))

(assert (=> bs!1809281 m!7537904))

(assert (=> bs!1809281 m!7537904))

(assert (=> bs!1809281 m!7537906))

(assert (=> bs!1809281 m!7537974))

(assert (=> b!6790216 d!2133599))

(declare-fun d!2133607 () Bool)

(declare-fun choose!50576 ((InoxSet Context!11990) Int) (InoxSet Context!11990))

(assert (=> d!2133607 (= (flatMap!2092 z!1189 lambda!382514) (choose!50576 z!1189 lambda!382514))))

(declare-fun bs!1809284 () Bool)

(assert (= bs!1809284 d!2133607))

(declare-fun m!7538130 () Bool)

(assert (=> bs!1809284 m!7538130))

(assert (=> b!6790215 d!2133607))

(declare-fun bm!616547 () Bool)

(declare-fun call!616552 () (InoxSet Context!11990))

(assert (=> bm!616547 (= call!616552 (derivationStepZipperDown!1839 (h!72456 (exprs!6495 (h!72457 zl!343))) (Context!11991 (t!379855 (exprs!6495 (h!72457 zl!343)))) (h!72458 s!2326)))))

(declare-fun d!2133609 () Bool)

(declare-fun c!1262051 () Bool)

(declare-fun e!4098658 () Bool)

(assert (=> d!2133609 (= c!1262051 e!4098658)))

(declare-fun res!2775344 () Bool)

(assert (=> d!2133609 (=> (not res!2775344) (not e!4098658))))

(assert (=> d!2133609 (= res!2775344 ((_ is Cons!66008) (exprs!6495 (h!72457 zl!343))))))

(declare-fun e!4098657 () (InoxSet Context!11990))

(assert (=> d!2133609 (= (derivationStepZipperUp!1765 (h!72457 zl!343) (h!72458 s!2326)) e!4098657)))

(declare-fun b!6790539 () Bool)

(declare-fun e!4098656 () (InoxSet Context!11990))

(assert (=> b!6790539 (= e!4098656 call!616552)))

(declare-fun b!6790540 () Bool)

(assert (=> b!6790540 (= e!4098657 e!4098656)))

(declare-fun c!1262050 () Bool)

(assert (=> b!6790540 (= c!1262050 ((_ is Cons!66008) (exprs!6495 (h!72457 zl!343))))))

(declare-fun b!6790541 () Bool)

(assert (=> b!6790541 (= e!4098657 ((_ map or) call!616552 (derivationStepZipperUp!1765 (Context!11991 (t!379855 (exprs!6495 (h!72457 zl!343)))) (h!72458 s!2326))))))

(declare-fun b!6790542 () Bool)

(assert (=> b!6790542 (= e!4098656 ((as const (Array Context!11990 Bool)) false))))

(declare-fun b!6790543 () Bool)

(declare-fun nullable!6590 (Regex!16611) Bool)

(assert (=> b!6790543 (= e!4098658 (nullable!6590 (h!72456 (exprs!6495 (h!72457 zl!343)))))))

(assert (= (and d!2133609 res!2775344) b!6790543))

(assert (= (and d!2133609 c!1262051) b!6790541))

(assert (= (and d!2133609 (not c!1262051)) b!6790540))

(assert (= (and b!6790540 c!1262050) b!6790539))

(assert (= (and b!6790540 (not c!1262050)) b!6790542))

(assert (= (or b!6790541 b!6790539) bm!616547))

(declare-fun m!7538138 () Bool)

(assert (=> bm!616547 m!7538138))

(declare-fun m!7538140 () Bool)

(assert (=> b!6790541 m!7538140))

(declare-fun m!7538142 () Bool)

(assert (=> b!6790543 m!7538142))

(assert (=> b!6790215 d!2133609))

(declare-fun d!2133613 () Bool)

(declare-fun dynLambda!26346 (Int Context!11990) (InoxSet Context!11990))

(assert (=> d!2133613 (= (flatMap!2092 z!1189 lambda!382514) (dynLambda!26346 lambda!382514 (h!72457 zl!343)))))

(declare-fun lt!2446289 () Unit!159913)

(declare-fun choose!50577 ((InoxSet Context!11990) Context!11990 Int) Unit!159913)

(assert (=> d!2133613 (= lt!2446289 (choose!50577 z!1189 (h!72457 zl!343) lambda!382514))))

(assert (=> d!2133613 (= z!1189 (store ((as const (Array Context!11990 Bool)) false) (h!72457 zl!343) true))))

(assert (=> d!2133613 (= (lemmaFlatMapOnSingletonSet!1618 z!1189 (h!72457 zl!343) lambda!382514) lt!2446289)))

(declare-fun b_lambda!255767 () Bool)

(assert (=> (not b_lambda!255767) (not d!2133613)))

(declare-fun bs!1809285 () Bool)

(assert (= bs!1809285 d!2133613))

(assert (=> bs!1809285 m!7537852))

(declare-fun m!7538154 () Bool)

(assert (=> bs!1809285 m!7538154))

(declare-fun m!7538156 () Bool)

(assert (=> bs!1809285 m!7538156))

(declare-fun m!7538158 () Bool)

(assert (=> bs!1809285 m!7538158))

(assert (=> b!6790215 d!2133613))

(declare-fun d!2133617 () Bool)

(assert (=> d!2133617 (= (flatMap!2092 lt!2446230 lambda!382514) (choose!50576 lt!2446230 lambda!382514))))

(declare-fun bs!1809286 () Bool)

(assert (= bs!1809286 d!2133617))

(declare-fun m!7538160 () Bool)

(assert (=> bs!1809286 m!7538160))

(assert (=> b!6790225 d!2133617))

(declare-fun bm!616549 () Bool)

(declare-fun call!616554 () (InoxSet Context!11990))

(assert (=> bm!616549 (= call!616554 (derivationStepZipperDown!1839 (h!72456 (exprs!6495 lt!2446223)) (Context!11991 (t!379855 (exprs!6495 lt!2446223))) (h!72458 s!2326)))))

(declare-fun d!2133619 () Bool)

(declare-fun c!1262056 () Bool)

(declare-fun e!4098668 () Bool)

(assert (=> d!2133619 (= c!1262056 e!4098668)))

(declare-fun res!2775353 () Bool)

(assert (=> d!2133619 (=> (not res!2775353) (not e!4098668))))

(assert (=> d!2133619 (= res!2775353 ((_ is Cons!66008) (exprs!6495 lt!2446223)))))

(declare-fun e!4098667 () (InoxSet Context!11990))

(assert (=> d!2133619 (= (derivationStepZipperUp!1765 lt!2446223 (h!72458 s!2326)) e!4098667)))

(declare-fun b!6790558 () Bool)

(declare-fun e!4098666 () (InoxSet Context!11990))

(assert (=> b!6790558 (= e!4098666 call!616554)))

(declare-fun b!6790559 () Bool)

(assert (=> b!6790559 (= e!4098667 e!4098666)))

(declare-fun c!1262055 () Bool)

(assert (=> b!6790559 (= c!1262055 ((_ is Cons!66008) (exprs!6495 lt!2446223)))))

(declare-fun b!6790560 () Bool)

(assert (=> b!6790560 (= e!4098667 ((_ map or) call!616554 (derivationStepZipperUp!1765 (Context!11991 (t!379855 (exprs!6495 lt!2446223))) (h!72458 s!2326))))))

(declare-fun b!6790561 () Bool)

(assert (=> b!6790561 (= e!4098666 ((as const (Array Context!11990 Bool)) false))))

(declare-fun b!6790562 () Bool)

(assert (=> b!6790562 (= e!4098668 (nullable!6590 (h!72456 (exprs!6495 lt!2446223))))))

(assert (= (and d!2133619 res!2775353) b!6790562))

(assert (= (and d!2133619 c!1262056) b!6790560))

(assert (= (and d!2133619 (not c!1262056)) b!6790559))

(assert (= (and b!6790559 c!1262055) b!6790558))

(assert (= (and b!6790559 (not c!1262055)) b!6790561))

(assert (= (or b!6790560 b!6790558) bm!616549))

(declare-fun m!7538164 () Bool)

(assert (=> bm!616549 m!7538164))

(declare-fun m!7538166 () Bool)

(assert (=> b!6790560 m!7538166))

(declare-fun m!7538168 () Bool)

(assert (=> b!6790562 m!7538168))

(assert (=> b!6790225 d!2133619))

(declare-fun d!2133623 () Bool)

(assert (=> d!2133623 (= (flatMap!2092 lt!2446230 lambda!382514) (dynLambda!26346 lambda!382514 lt!2446223))))

(declare-fun lt!2446293 () Unit!159913)

(assert (=> d!2133623 (= lt!2446293 (choose!50577 lt!2446230 lt!2446223 lambda!382514))))

(assert (=> d!2133623 (= lt!2446230 (store ((as const (Array Context!11990 Bool)) false) lt!2446223 true))))

(assert (=> d!2133623 (= (lemmaFlatMapOnSingletonSet!1618 lt!2446230 lt!2446223 lambda!382514) lt!2446293)))

(declare-fun b_lambda!255769 () Bool)

(assert (=> (not b_lambda!255769) (not d!2133623)))

(declare-fun bs!1809288 () Bool)

(assert (= bs!1809288 d!2133623))

(assert (=> bs!1809288 m!7537878))

(declare-fun m!7538170 () Bool)

(assert (=> bs!1809288 m!7538170))

(declare-fun m!7538174 () Bool)

(assert (=> bs!1809288 m!7538174))

(assert (=> bs!1809288 m!7537876))

(assert (=> b!6790225 d!2133623))

(declare-fun bm!616556 () Bool)

(declare-fun call!616561 () (InoxSet Context!11990))

(assert (=> bm!616556 (= call!616561 (derivationStepZipperDown!1839 (h!72456 (exprs!6495 lt!2446246)) (Context!11991 (t!379855 (exprs!6495 lt!2446246))) (h!72458 s!2326)))))

(declare-fun d!2133625 () Bool)

(declare-fun c!1262063 () Bool)

(declare-fun e!4098677 () Bool)

(assert (=> d!2133625 (= c!1262063 e!4098677)))

(declare-fun res!2775355 () Bool)

(assert (=> d!2133625 (=> (not res!2775355) (not e!4098677))))

(assert (=> d!2133625 (= res!2775355 ((_ is Cons!66008) (exprs!6495 lt!2446246)))))

(declare-fun e!4098676 () (InoxSet Context!11990))

(assert (=> d!2133625 (= (derivationStepZipperUp!1765 lt!2446246 (h!72458 s!2326)) e!4098676)))

(declare-fun b!6790574 () Bool)

(declare-fun e!4098675 () (InoxSet Context!11990))

(assert (=> b!6790574 (= e!4098675 call!616561)))

(declare-fun b!6790575 () Bool)

(assert (=> b!6790575 (= e!4098676 e!4098675)))

(declare-fun c!1262062 () Bool)

(assert (=> b!6790575 (= c!1262062 ((_ is Cons!66008) (exprs!6495 lt!2446246)))))

(declare-fun b!6790576 () Bool)

(assert (=> b!6790576 (= e!4098676 ((_ map or) call!616561 (derivationStepZipperUp!1765 (Context!11991 (t!379855 (exprs!6495 lt!2446246))) (h!72458 s!2326))))))

(declare-fun b!6790577 () Bool)

(assert (=> b!6790577 (= e!4098675 ((as const (Array Context!11990 Bool)) false))))

(declare-fun b!6790578 () Bool)

(assert (=> b!6790578 (= e!4098677 (nullable!6590 (h!72456 (exprs!6495 lt!2446246))))))

(assert (= (and d!2133625 res!2775355) b!6790578))

(assert (= (and d!2133625 c!1262063) b!6790576))

(assert (= (and d!2133625 (not c!1262063)) b!6790575))

(assert (= (and b!6790575 c!1262062) b!6790574))

(assert (= (and b!6790575 (not c!1262062)) b!6790577))

(assert (= (or b!6790576 b!6790574) bm!616556))

(declare-fun m!7538188 () Bool)

(assert (=> bm!616556 m!7538188))

(declare-fun m!7538192 () Bool)

(assert (=> b!6790576 m!7538192))

(declare-fun m!7538194 () Bool)

(assert (=> b!6790578 m!7538194))

(assert (=> b!6790225 d!2133625))

(declare-fun d!2133633 () Bool)

(assert (=> d!2133633 (= (flatMap!2092 lt!2446221 lambda!382514) (dynLambda!26346 lambda!382514 lt!2446246))))

(declare-fun lt!2446295 () Unit!159913)

(assert (=> d!2133633 (= lt!2446295 (choose!50577 lt!2446221 lt!2446246 lambda!382514))))

(assert (=> d!2133633 (= lt!2446221 (store ((as const (Array Context!11990 Bool)) false) lt!2446246 true))))

(assert (=> d!2133633 (= (lemmaFlatMapOnSingletonSet!1618 lt!2446221 lt!2446246 lambda!382514) lt!2446295)))

(declare-fun b_lambda!255773 () Bool)

(assert (=> (not b_lambda!255773) (not d!2133633)))

(declare-fun bs!1809291 () Bool)

(assert (= bs!1809291 d!2133633))

(assert (=> bs!1809291 m!7537880))

(declare-fun m!7538200 () Bool)

(assert (=> bs!1809291 m!7538200))

(declare-fun m!7538202 () Bool)

(assert (=> bs!1809291 m!7538202))

(assert (=> bs!1809291 m!7537884))

(assert (=> b!6790225 d!2133633))

(declare-fun bs!1809299 () Bool)

(declare-fun d!2133637 () Bool)

(assert (= bs!1809299 (and d!2133637 b!6790215)))

(declare-fun lambda!382557 () Int)

(assert (=> bs!1809299 (= lambda!382557 lambda!382514)))

(assert (=> d!2133637 true))

(assert (=> d!2133637 (= (derivationStepZipper!2555 lt!2446230 (h!72458 s!2326)) (flatMap!2092 lt!2446230 lambda!382557))))

(declare-fun bs!1809300 () Bool)

(assert (= bs!1809300 d!2133637))

(declare-fun m!7538212 () Bool)

(assert (=> bs!1809300 m!7538212))

(assert (=> b!6790225 d!2133637))

(declare-fun d!2133643 () Bool)

(assert (=> d!2133643 (= (flatMap!2092 lt!2446221 lambda!382514) (choose!50576 lt!2446221 lambda!382514))))

(declare-fun bs!1809301 () Bool)

(assert (= bs!1809301 d!2133643))

(declare-fun m!7538214 () Bool)

(assert (=> bs!1809301 m!7538214))

(assert (=> b!6790225 d!2133643))

(declare-fun bm!616573 () Bool)

(declare-fun call!616579 () (InoxSet Context!11990))

(declare-fun call!616580 () (InoxSet Context!11990))

(assert (=> bm!616573 (= call!616579 call!616580)))

(declare-fun b!6790646 () Bool)

(declare-fun e!4098718 () (InoxSet Context!11990))

(declare-fun e!4098714 () (InoxSet Context!11990))

(assert (=> b!6790646 (= e!4098718 e!4098714)))

(declare-fun c!1262087 () Bool)

(assert (=> b!6790646 (= c!1262087 ((_ is Union!16611) (reg!16940 r!7292)))))

(declare-fun bm!616574 () Bool)

(declare-fun call!616582 () (InoxSet Context!11990))

(assert (=> bm!616574 (= call!616582 call!616579)))

(declare-fun b!6790647 () Bool)

(declare-fun e!4098717 () Bool)

(assert (=> b!6790647 (= e!4098717 (nullable!6590 (regOne!33734 (reg!16940 r!7292))))))

(declare-fun b!6790648 () Bool)

(declare-fun e!4098719 () (InoxSet Context!11990))

(assert (=> b!6790648 (= e!4098719 call!616582)))

(declare-fun b!6790649 () Bool)

(declare-fun call!616578 () (InoxSet Context!11990))

(assert (=> b!6790649 (= e!4098714 ((_ map or) call!616580 call!616578))))

(declare-fun call!616581 () List!66132)

(declare-fun c!1262089 () Bool)

(declare-fun c!1262088 () Bool)

(declare-fun bm!616576 () Bool)

(declare-fun $colon$colon!2420 (List!66132 Regex!16611) List!66132)

(assert (=> bm!616576 (= call!616581 ($colon$colon!2420 (exprs!6495 lt!2446223) (ite (or c!1262088 c!1262089) (regTwo!33734 (reg!16940 r!7292)) (reg!16940 r!7292))))))

(declare-fun b!6790650 () Bool)

(declare-fun e!4098716 () (InoxSet Context!11990))

(declare-fun e!4098715 () (InoxSet Context!11990))

(assert (=> b!6790650 (= e!4098716 e!4098715)))

(assert (=> b!6790650 (= c!1262089 ((_ is Concat!25456) (reg!16940 r!7292)))))

(declare-fun b!6790651 () Bool)

(assert (=> b!6790651 (= e!4098716 ((_ map or) call!616578 call!616579))))

(declare-fun b!6790652 () Bool)

(assert (=> b!6790652 (= c!1262088 e!4098717)))

(declare-fun res!2775383 () Bool)

(assert (=> b!6790652 (=> (not res!2775383) (not e!4098717))))

(assert (=> b!6790652 (= res!2775383 ((_ is Concat!25456) (reg!16940 r!7292)))))

(assert (=> b!6790652 (= e!4098714 e!4098716)))

(declare-fun b!6790653 () Bool)

(declare-fun c!1262085 () Bool)

(assert (=> b!6790653 (= c!1262085 ((_ is Star!16611) (reg!16940 r!7292)))))

(assert (=> b!6790653 (= e!4098715 e!4098719)))

(declare-fun b!6790654 () Bool)

(assert (=> b!6790654 (= e!4098719 ((as const (Array Context!11990 Bool)) false))))

(declare-fun b!6790655 () Bool)

(assert (=> b!6790655 (= e!4098718 (store ((as const (Array Context!11990 Bool)) false) lt!2446223 true))))

(declare-fun call!616583 () List!66132)

(declare-fun bm!616577 () Bool)

(assert (=> bm!616577 (= call!616580 (derivationStepZipperDown!1839 (ite c!1262087 (regOne!33735 (reg!16940 r!7292)) (ite c!1262088 (regTwo!33734 (reg!16940 r!7292)) (ite c!1262089 (regOne!33734 (reg!16940 r!7292)) (reg!16940 (reg!16940 r!7292))))) (ite (or c!1262087 c!1262088) lt!2446223 (Context!11991 call!616583)) (h!72458 s!2326)))))

(declare-fun d!2133645 () Bool)

(declare-fun c!1262086 () Bool)

(assert (=> d!2133645 (= c!1262086 (and ((_ is ElementMatch!16611) (reg!16940 r!7292)) (= (c!1261957 (reg!16940 r!7292)) (h!72458 s!2326))))))

(assert (=> d!2133645 (= (derivationStepZipperDown!1839 (reg!16940 r!7292) lt!2446223 (h!72458 s!2326)) e!4098718)))

(declare-fun bm!616575 () Bool)

(assert (=> bm!616575 (= call!616583 call!616581)))

(declare-fun b!6790656 () Bool)

(assert (=> b!6790656 (= e!4098715 call!616582)))

(declare-fun bm!616578 () Bool)

(assert (=> bm!616578 (= call!616578 (derivationStepZipperDown!1839 (ite c!1262087 (regTwo!33735 (reg!16940 r!7292)) (regOne!33734 (reg!16940 r!7292))) (ite c!1262087 lt!2446223 (Context!11991 call!616581)) (h!72458 s!2326)))))

(assert (= (and d!2133645 c!1262086) b!6790655))

(assert (= (and d!2133645 (not c!1262086)) b!6790646))

(assert (= (and b!6790646 c!1262087) b!6790649))

(assert (= (and b!6790646 (not c!1262087)) b!6790652))

(assert (= (and b!6790652 res!2775383) b!6790647))

(assert (= (and b!6790652 c!1262088) b!6790651))

(assert (= (and b!6790652 (not c!1262088)) b!6790650))

(assert (= (and b!6790650 c!1262089) b!6790656))

(assert (= (and b!6790650 (not c!1262089)) b!6790653))

(assert (= (and b!6790653 c!1262085) b!6790648))

(assert (= (and b!6790653 (not c!1262085)) b!6790654))

(assert (= (or b!6790656 b!6790648) bm!616575))

(assert (= (or b!6790656 b!6790648) bm!616574))

(assert (= (or b!6790651 bm!616575) bm!616576))

(assert (= (or b!6790651 bm!616574) bm!616573))

(assert (= (or b!6790649 b!6790651) bm!616578))

(assert (= (or b!6790649 bm!616573) bm!616577))

(assert (=> b!6790655 m!7537876))

(declare-fun m!7538240 () Bool)

(assert (=> b!6790647 m!7538240))

(declare-fun m!7538242 () Bool)

(assert (=> bm!616577 m!7538242))

(declare-fun m!7538244 () Bool)

(assert (=> bm!616578 m!7538244))

(declare-fun m!7538246 () Bool)

(assert (=> bm!616576 m!7538246))

(assert (=> b!6790224 d!2133645))

(declare-fun d!2133659 () Bool)

(assert (=> d!2133659 (= (flatMap!2092 lt!2446242 lambda!382514) (choose!50576 lt!2446242 lambda!382514))))

(declare-fun bs!1809317 () Bool)

(assert (= bs!1809317 d!2133659))

(declare-fun m!7538248 () Bool)

(assert (=> bs!1809317 m!7538248))

(assert (=> b!6790224 d!2133659))

(declare-fun bm!616579 () Bool)

(declare-fun call!616584 () (InoxSet Context!11990))

(assert (=> bm!616579 (= call!616584 (derivationStepZipperDown!1839 (h!72456 (exprs!6495 lt!2446239)) (Context!11991 (t!379855 (exprs!6495 lt!2446239))) (h!72458 s!2326)))))

(declare-fun d!2133661 () Bool)

(declare-fun c!1262091 () Bool)

(declare-fun e!4098722 () Bool)

(assert (=> d!2133661 (= c!1262091 e!4098722)))

(declare-fun res!2775384 () Bool)

(assert (=> d!2133661 (=> (not res!2775384) (not e!4098722))))

(assert (=> d!2133661 (= res!2775384 ((_ is Cons!66008) (exprs!6495 lt!2446239)))))

(declare-fun e!4098721 () (InoxSet Context!11990))

(assert (=> d!2133661 (= (derivationStepZipperUp!1765 lt!2446239 (h!72458 s!2326)) e!4098721)))

(declare-fun b!6790657 () Bool)

(declare-fun e!4098720 () (InoxSet Context!11990))

(assert (=> b!6790657 (= e!4098720 call!616584)))

(declare-fun b!6790658 () Bool)

(assert (=> b!6790658 (= e!4098721 e!4098720)))

(declare-fun c!1262090 () Bool)

(assert (=> b!6790658 (= c!1262090 ((_ is Cons!66008) (exprs!6495 lt!2446239)))))

(declare-fun b!6790659 () Bool)

(assert (=> b!6790659 (= e!4098721 ((_ map or) call!616584 (derivationStepZipperUp!1765 (Context!11991 (t!379855 (exprs!6495 lt!2446239))) (h!72458 s!2326))))))

(declare-fun b!6790660 () Bool)

(assert (=> b!6790660 (= e!4098720 ((as const (Array Context!11990 Bool)) false))))

(declare-fun b!6790661 () Bool)

(assert (=> b!6790661 (= e!4098722 (nullable!6590 (h!72456 (exprs!6495 lt!2446239))))))

(assert (= (and d!2133661 res!2775384) b!6790661))

(assert (= (and d!2133661 c!1262091) b!6790659))

(assert (= (and d!2133661 (not c!1262091)) b!6790658))

(assert (= (and b!6790658 c!1262090) b!6790657))

(assert (= (and b!6790658 (not c!1262090)) b!6790660))

(assert (= (or b!6790659 b!6790657) bm!616579))

(declare-fun m!7538250 () Bool)

(assert (=> bm!616579 m!7538250))

(declare-fun m!7538252 () Bool)

(assert (=> b!6790659 m!7538252))

(declare-fun m!7538254 () Bool)

(assert (=> b!6790661 m!7538254))

(assert (=> b!6790224 d!2133661))

(declare-fun d!2133663 () Bool)

(assert (=> d!2133663 (= (flatMap!2092 lt!2446242 lambda!382514) (dynLambda!26346 lambda!382514 lt!2446239))))

(declare-fun lt!2446307 () Unit!159913)

(assert (=> d!2133663 (= lt!2446307 (choose!50577 lt!2446242 lt!2446239 lambda!382514))))

(assert (=> d!2133663 (= lt!2446242 (store ((as const (Array Context!11990 Bool)) false) lt!2446239 true))))

(assert (=> d!2133663 (= (lemmaFlatMapOnSingletonSet!1618 lt!2446242 lt!2446239 lambda!382514) lt!2446307)))

(declare-fun b_lambda!255775 () Bool)

(assert (=> (not b_lambda!255775) (not d!2133663)))

(declare-fun bs!1809319 () Bool)

(assert (= bs!1809319 d!2133663))

(assert (=> bs!1809319 m!7537924))

(declare-fun m!7538256 () Bool)

(assert (=> bs!1809319 m!7538256))

(declare-fun m!7538258 () Bool)

(assert (=> bs!1809319 m!7538258))

(assert (=> bs!1809319 m!7537926))

(assert (=> b!6790224 d!2133663))

(declare-fun bs!1809329 () Bool)

(declare-fun b!6790702 () Bool)

(assert (= bs!1809329 (and b!6790702 b!6790216)))

(declare-fun lambda!382576 () Int)

(assert (=> bs!1809329 (not (= lambda!382576 lambda!382513))))

(declare-fun bs!1809330 () Bool)

(assert (= bs!1809330 (and b!6790702 d!2133559)))

(assert (=> bs!1809330 (not (= lambda!382576 lambda!382532))))

(assert (=> bs!1809330 (= (= r!7292 (Star!16611 (reg!16940 r!7292))) (= lambda!382576 lambda!382533))))

(assert (=> bs!1809329 (not (= lambda!382576 lambda!382511))))

(declare-fun bs!1809331 () Bool)

(assert (= bs!1809331 (and b!6790702 d!2133599)))

(assert (=> bs!1809331 (not (= lambda!382576 lambda!382551))))

(declare-fun bs!1809332 () Bool)

(assert (= bs!1809332 (and b!6790702 d!2133555)))

(assert (=> bs!1809332 (not (= lambda!382576 lambda!382520))))

(assert (=> bs!1809329 (= lambda!382576 lambda!382512)))

(assert (=> bs!1809332 (not (= lambda!382576 lambda!382521))))

(assert (=> b!6790702 true))

(assert (=> b!6790702 true))

(declare-fun bs!1809333 () Bool)

(declare-fun b!6790706 () Bool)

(assert (= bs!1809333 (and b!6790706 b!6790702)))

(declare-fun lambda!382577 () Int)

(assert (=> bs!1809333 (not (= lambda!382577 lambda!382576))))

(declare-fun bs!1809334 () Bool)

(assert (= bs!1809334 (and b!6790706 b!6790216)))

(assert (=> bs!1809334 (= (and (= (regOne!33734 r!7292) (reg!16940 r!7292)) (= (regTwo!33734 r!7292) r!7292)) (= lambda!382577 lambda!382513))))

(declare-fun bs!1809335 () Bool)

(assert (= bs!1809335 (and b!6790706 d!2133559)))

(assert (=> bs!1809335 (not (= lambda!382577 lambda!382532))))

(assert (=> bs!1809335 (not (= lambda!382577 lambda!382533))))

(assert (=> bs!1809334 (not (= lambda!382577 lambda!382511))))

(declare-fun bs!1809336 () Bool)

(assert (= bs!1809336 (and b!6790706 d!2133599)))

(assert (=> bs!1809336 (not (= lambda!382577 lambda!382551))))

(declare-fun bs!1809337 () Bool)

(assert (= bs!1809337 (and b!6790706 d!2133555)))

(assert (=> bs!1809337 (not (= lambda!382577 lambda!382520))))

(assert (=> bs!1809334 (not (= lambda!382577 lambda!382512))))

(assert (=> bs!1809337 (= (and (= (regOne!33734 r!7292) (reg!16940 r!7292)) (= (regTwo!33734 r!7292) r!7292)) (= lambda!382577 lambda!382521))))

(assert (=> b!6790706 true))

(assert (=> b!6790706 true))

(declare-fun e!4098747 () Bool)

(declare-fun call!616589 () Bool)

(assert (=> b!6790702 (= e!4098747 call!616589)))

(declare-fun bm!616584 () Bool)

(declare-fun call!616590 () Bool)

(assert (=> bm!616584 (= call!616590 (isEmpty!38377 s!2326))))

(declare-fun b!6790703 () Bool)

(declare-fun e!4098749 () Bool)

(assert (=> b!6790703 (= e!4098749 (matchRSpec!3712 (regTwo!33735 r!7292) s!2326))))

(declare-fun d!2133665 () Bool)

(declare-fun c!1262100 () Bool)

(assert (=> d!2133665 (= c!1262100 ((_ is EmptyExpr!16611) r!7292))))

(declare-fun e!4098750 () Bool)

(assert (=> d!2133665 (= (matchRSpec!3712 r!7292 s!2326) e!4098750)))

(declare-fun b!6790704 () Bool)

(declare-fun e!4098748 () Bool)

(assert (=> b!6790704 (= e!4098748 (= s!2326 (Cons!66010 (c!1261957 r!7292) Nil!66010)))))

(declare-fun b!6790705 () Bool)

(assert (=> b!6790705 (= e!4098750 call!616590)))

(declare-fun e!4098751 () Bool)

(assert (=> b!6790706 (= e!4098751 call!616589)))

(declare-fun b!6790707 () Bool)

(declare-fun c!1262103 () Bool)

(assert (=> b!6790707 (= c!1262103 ((_ is Union!16611) r!7292))))

(declare-fun e!4098746 () Bool)

(assert (=> b!6790707 (= e!4098748 e!4098746)))

(declare-fun b!6790708 () Bool)

(declare-fun res!2775410 () Bool)

(assert (=> b!6790708 (=> res!2775410 e!4098747)))

(assert (=> b!6790708 (= res!2775410 call!616590)))

(assert (=> b!6790708 (= e!4098751 e!4098747)))

(declare-fun b!6790709 () Bool)

(assert (=> b!6790709 (= e!4098746 e!4098749)))

(declare-fun res!2775409 () Bool)

(assert (=> b!6790709 (= res!2775409 (matchRSpec!3712 (regOne!33735 r!7292) s!2326))))

(assert (=> b!6790709 (=> res!2775409 e!4098749)))

(declare-fun b!6790710 () Bool)

(declare-fun c!1262102 () Bool)

(assert (=> b!6790710 (= c!1262102 ((_ is ElementMatch!16611) r!7292))))

(declare-fun e!4098745 () Bool)

(assert (=> b!6790710 (= e!4098745 e!4098748)))

(declare-fun bm!616585 () Bool)

(declare-fun c!1262101 () Bool)

(assert (=> bm!616585 (= call!616589 (Exists!3679 (ite c!1262101 lambda!382576 lambda!382577)))))

(declare-fun b!6790711 () Bool)

(assert (=> b!6790711 (= e!4098750 e!4098745)))

(declare-fun res!2775411 () Bool)

(assert (=> b!6790711 (= res!2775411 (not ((_ is EmptyLang!16611) r!7292)))))

(assert (=> b!6790711 (=> (not res!2775411) (not e!4098745))))

(declare-fun b!6790712 () Bool)

(assert (=> b!6790712 (= e!4098746 e!4098751)))

(assert (=> b!6790712 (= c!1262101 ((_ is Star!16611) r!7292))))

(assert (= (and d!2133665 c!1262100) b!6790705))

(assert (= (and d!2133665 (not c!1262100)) b!6790711))

(assert (= (and b!6790711 res!2775411) b!6790710))

(assert (= (and b!6790710 c!1262102) b!6790704))

(assert (= (and b!6790710 (not c!1262102)) b!6790707))

(assert (= (and b!6790707 c!1262103) b!6790709))

(assert (= (and b!6790707 (not c!1262103)) b!6790712))

(assert (= (and b!6790709 (not res!2775409)) b!6790703))

(assert (= (and b!6790712 c!1262101) b!6790708))

(assert (= (and b!6790712 (not c!1262101)) b!6790706))

(assert (= (and b!6790708 (not res!2775410)) b!6790702))

(assert (= (or b!6790702 b!6790706) bm!616585))

(assert (= (or b!6790705 b!6790708) bm!616584))

(assert (=> bm!616584 m!7537894))

(declare-fun m!7538278 () Bool)

(assert (=> b!6790703 m!7538278))

(declare-fun m!7538280 () Bool)

(assert (=> b!6790709 m!7538280))

(declare-fun m!7538282 () Bool)

(assert (=> bm!616585 m!7538282))

(assert (=> b!6790234 d!2133665))

(declare-fun b!6790768 () Bool)

(declare-fun res!2775450 () Bool)

(declare-fun e!4098783 () Bool)

(assert (=> b!6790768 (=> res!2775450 e!4098783)))

(assert (=> b!6790768 (= res!2775450 (not ((_ is ElementMatch!16611) r!7292)))))

(declare-fun e!4098784 () Bool)

(assert (=> b!6790768 (= e!4098784 e!4098783)))

(declare-fun b!6790769 () Bool)

(declare-fun e!4098787 () Bool)

(declare-fun head!13633 (List!66134) C!33492)

(assert (=> b!6790769 (= e!4098787 (= (head!13633 s!2326) (c!1261957 r!7292)))))

(declare-fun b!6790770 () Bool)

(declare-fun res!2775443 () Bool)

(assert (=> b!6790770 (=> res!2775443 e!4098783)))

(assert (=> b!6790770 (= res!2775443 e!4098787)))

(declare-fun res!2775448 () Bool)

(assert (=> b!6790770 (=> (not res!2775448) (not e!4098787))))

(declare-fun lt!2446322 () Bool)

(assert (=> b!6790770 (= res!2775448 lt!2446322)))

(declare-fun b!6790771 () Bool)

(declare-fun res!2775446 () Bool)

(assert (=> b!6790771 (=> (not res!2775446) (not e!4098787))))

(declare-fun tail!12718 (List!66134) List!66134)

(assert (=> b!6790771 (= res!2775446 (isEmpty!38377 (tail!12718 s!2326)))))

(declare-fun b!6790773 () Bool)

(declare-fun e!4098786 () Bool)

(declare-fun e!4098785 () Bool)

(assert (=> b!6790773 (= e!4098786 e!4098785)))

(declare-fun res!2775445 () Bool)

(assert (=> b!6790773 (=> res!2775445 e!4098785)))

(declare-fun call!616593 () Bool)

(assert (=> b!6790773 (= res!2775445 call!616593)))

(declare-fun b!6790774 () Bool)

(assert (=> b!6790774 (= e!4098785 (not (= (head!13633 s!2326) (c!1261957 r!7292))))))

(declare-fun b!6790775 () Bool)

(declare-fun e!4098782 () Bool)

(declare-fun derivativeStep!5275 (Regex!16611 C!33492) Regex!16611)

(assert (=> b!6790775 (= e!4098782 (matchR!8794 (derivativeStep!5275 r!7292 (head!13633 s!2326)) (tail!12718 s!2326)))))

(declare-fun b!6790776 () Bool)

(assert (=> b!6790776 (= e!4098783 e!4098786)))

(declare-fun res!2775447 () Bool)

(assert (=> b!6790776 (=> (not res!2775447) (not e!4098786))))

(assert (=> b!6790776 (= res!2775447 (not lt!2446322))))

(declare-fun bm!616588 () Bool)

(assert (=> bm!616588 (= call!616593 (isEmpty!38377 s!2326))))

(declare-fun b!6790777 () Bool)

(declare-fun e!4098781 () Bool)

(assert (=> b!6790777 (= e!4098781 e!4098784)))

(declare-fun c!1262118 () Bool)

(assert (=> b!6790777 (= c!1262118 ((_ is EmptyLang!16611) r!7292))))

(declare-fun d!2133677 () Bool)

(assert (=> d!2133677 e!4098781))

(declare-fun c!1262116 () Bool)

(assert (=> d!2133677 (= c!1262116 ((_ is EmptyExpr!16611) r!7292))))

(assert (=> d!2133677 (= lt!2446322 e!4098782)))

(declare-fun c!1262117 () Bool)

(assert (=> d!2133677 (= c!1262117 (isEmpty!38377 s!2326))))

(assert (=> d!2133677 (validRegex!8347 r!7292)))

(assert (=> d!2133677 (= (matchR!8794 r!7292 s!2326) lt!2446322)))

(declare-fun b!6790772 () Bool)

(assert (=> b!6790772 (= e!4098781 (= lt!2446322 call!616593))))

(declare-fun b!6790778 () Bool)

(declare-fun res!2775449 () Bool)

(assert (=> b!6790778 (=> (not res!2775449) (not e!4098787))))

(assert (=> b!6790778 (= res!2775449 (not call!616593))))

(declare-fun b!6790779 () Bool)

(assert (=> b!6790779 (= e!4098782 (nullable!6590 r!7292))))

(declare-fun b!6790780 () Bool)

(assert (=> b!6790780 (= e!4098784 (not lt!2446322))))

(declare-fun b!6790781 () Bool)

(declare-fun res!2775444 () Bool)

(assert (=> b!6790781 (=> res!2775444 e!4098785)))

(assert (=> b!6790781 (= res!2775444 (not (isEmpty!38377 (tail!12718 s!2326))))))

(assert (= (and d!2133677 c!1262117) b!6790779))

(assert (= (and d!2133677 (not c!1262117)) b!6790775))

(assert (= (and d!2133677 c!1262116) b!6790772))

(assert (= (and d!2133677 (not c!1262116)) b!6790777))

(assert (= (and b!6790777 c!1262118) b!6790780))

(assert (= (and b!6790777 (not c!1262118)) b!6790768))

(assert (= (and b!6790768 (not res!2775450)) b!6790770))

(assert (= (and b!6790770 res!2775448) b!6790778))

(assert (= (and b!6790778 res!2775449) b!6790771))

(assert (= (and b!6790771 res!2775446) b!6790769))

(assert (= (and b!6790770 (not res!2775443)) b!6790776))

(assert (= (and b!6790776 res!2775447) b!6790773))

(assert (= (and b!6790773 (not res!2775445)) b!6790781))

(assert (= (and b!6790781 (not res!2775444)) b!6790774))

(assert (= (or b!6790772 b!6790773 b!6790778) bm!616588))

(declare-fun m!7538302 () Bool)

(assert (=> b!6790779 m!7538302))

(declare-fun m!7538304 () Bool)

(assert (=> b!6790775 m!7538304))

(assert (=> b!6790775 m!7538304))

(declare-fun m!7538306 () Bool)

(assert (=> b!6790775 m!7538306))

(declare-fun m!7538310 () Bool)

(assert (=> b!6790775 m!7538310))

(assert (=> b!6790775 m!7538306))

(assert (=> b!6790775 m!7538310))

(declare-fun m!7538312 () Bool)

(assert (=> b!6790775 m!7538312))

(assert (=> b!6790769 m!7538304))

(assert (=> bm!616588 m!7537894))

(assert (=> b!6790771 m!7538310))

(assert (=> b!6790771 m!7538310))

(declare-fun m!7538314 () Bool)

(assert (=> b!6790771 m!7538314))

(assert (=> d!2133677 m!7537894))

(assert (=> d!2133677 m!7537936))

(assert (=> b!6790774 m!7538304))

(assert (=> b!6790781 m!7538310))

(assert (=> b!6790781 m!7538310))

(assert (=> b!6790781 m!7538314))

(assert (=> b!6790234 d!2133677))

(declare-fun d!2133681 () Bool)

(assert (=> d!2133681 (= (matchR!8794 r!7292 s!2326) (matchRSpec!3712 r!7292 s!2326))))

(declare-fun lt!2446325 () Unit!159913)

(declare-fun choose!50579 (Regex!16611 List!66134) Unit!159913)

(assert (=> d!2133681 (= lt!2446325 (choose!50579 r!7292 s!2326))))

(assert (=> d!2133681 (validRegex!8347 r!7292)))

(assert (=> d!2133681 (= (mainMatchTheorem!3712 r!7292 s!2326) lt!2446325)))

(declare-fun bs!1809338 () Bool)

(assert (= bs!1809338 d!2133681))

(assert (=> bs!1809338 m!7537912))

(assert (=> bs!1809338 m!7537910))

(declare-fun m!7538316 () Bool)

(assert (=> bs!1809338 m!7538316))

(assert (=> bs!1809338 m!7537936))

(assert (=> b!6790234 d!2133681))

(declare-fun bs!1809354 () Bool)

(declare-fun d!2133683 () Bool)

(assert (= bs!1809354 (and d!2133683 b!6790221)))

(declare-fun lambda!382584 () Int)

(assert (=> bs!1809354 (= lambda!382584 lambda!382515)))

(declare-fun b!6790808 () Bool)

(declare-fun e!4098807 () Bool)

(declare-fun lt!2446331 () Regex!16611)

(declare-fun isUnion!1407 (Regex!16611) Bool)

(assert (=> b!6790808 (= e!4098807 (isUnion!1407 lt!2446331))))

(declare-fun b!6790809 () Bool)

(declare-fun e!4098804 () Regex!16611)

(assert (=> b!6790809 (= e!4098804 EmptyLang!16611)))

(declare-fun b!6790810 () Bool)

(declare-fun e!4098805 () Bool)

(declare-fun e!4098808 () Bool)

(assert (=> b!6790810 (= e!4098805 e!4098808)))

(declare-fun c!1262128 () Bool)

(declare-fun isEmpty!38381 (List!66132) Bool)

(assert (=> b!6790810 (= c!1262128 (isEmpty!38381 (unfocusZipperList!2032 zl!343)))))

(assert (=> d!2133683 e!4098805))

(declare-fun res!2775459 () Bool)

(assert (=> d!2133683 (=> (not res!2775459) (not e!4098805))))

(assert (=> d!2133683 (= res!2775459 (validRegex!8347 lt!2446331))))

(declare-fun e!4098806 () Regex!16611)

(assert (=> d!2133683 (= lt!2446331 e!4098806)))

(declare-fun c!1262131 () Bool)

(declare-fun e!4098803 () Bool)

(assert (=> d!2133683 (= c!1262131 e!4098803)))

(declare-fun res!2775460 () Bool)

(assert (=> d!2133683 (=> (not res!2775460) (not e!4098803))))

(assert (=> d!2133683 (= res!2775460 ((_ is Cons!66008) (unfocusZipperList!2032 zl!343)))))

(declare-fun forall!15803 (List!66132 Int) Bool)

(assert (=> d!2133683 (forall!15803 (unfocusZipperList!2032 zl!343) lambda!382584)))

(assert (=> d!2133683 (= (generalisedUnion!2455 (unfocusZipperList!2032 zl!343)) lt!2446331)))

(declare-fun b!6790811 () Bool)

(assert (=> b!6790811 (= e!4098806 (h!72456 (unfocusZipperList!2032 zl!343)))))

(declare-fun b!6790812 () Bool)

(assert (=> b!6790812 (= e!4098803 (isEmpty!38381 (t!379855 (unfocusZipperList!2032 zl!343))))))

(declare-fun b!6790813 () Bool)

(assert (=> b!6790813 (= e!4098804 (Union!16611 (h!72456 (unfocusZipperList!2032 zl!343)) (generalisedUnion!2455 (t!379855 (unfocusZipperList!2032 zl!343)))))))

(declare-fun b!6790814 () Bool)

(assert (=> b!6790814 (= e!4098808 e!4098807)))

(declare-fun c!1262130 () Bool)

(declare-fun tail!12719 (List!66132) List!66132)

(assert (=> b!6790814 (= c!1262130 (isEmpty!38381 (tail!12719 (unfocusZipperList!2032 zl!343))))))

(declare-fun b!6790815 () Bool)

(declare-fun head!13634 (List!66132) Regex!16611)

(assert (=> b!6790815 (= e!4098807 (= lt!2446331 (head!13634 (unfocusZipperList!2032 zl!343))))))

(declare-fun b!6790816 () Bool)

(declare-fun isEmptyLang!1977 (Regex!16611) Bool)

(assert (=> b!6790816 (= e!4098808 (isEmptyLang!1977 lt!2446331))))

(declare-fun b!6790817 () Bool)

(assert (=> b!6790817 (= e!4098806 e!4098804)))

(declare-fun c!1262129 () Bool)

(assert (=> b!6790817 (= c!1262129 ((_ is Cons!66008) (unfocusZipperList!2032 zl!343)))))

(assert (= (and d!2133683 res!2775460) b!6790812))

(assert (= (and d!2133683 c!1262131) b!6790811))

(assert (= (and d!2133683 (not c!1262131)) b!6790817))

(assert (= (and b!6790817 c!1262129) b!6790813))

(assert (= (and b!6790817 (not c!1262129)) b!6790809))

(assert (= (and d!2133683 res!2775459) b!6790810))

(assert (= (and b!6790810 c!1262128) b!6790816))

(assert (= (and b!6790810 (not c!1262128)) b!6790814))

(assert (= (and b!6790814 c!1262130) b!6790815))

(assert (= (and b!6790814 (not c!1262130)) b!6790808))

(declare-fun m!7538330 () Bool)

(assert (=> b!6790816 m!7538330))

(declare-fun m!7538332 () Bool)

(assert (=> b!6790812 m!7538332))

(declare-fun m!7538334 () Bool)

(assert (=> b!6790813 m!7538334))

(declare-fun m!7538336 () Bool)

(assert (=> d!2133683 m!7538336))

(assert (=> d!2133683 m!7537942))

(declare-fun m!7538338 () Bool)

(assert (=> d!2133683 m!7538338))

(declare-fun m!7538340 () Bool)

(assert (=> b!6790808 m!7538340))

(assert (=> b!6790815 m!7537942))

(declare-fun m!7538342 () Bool)

(assert (=> b!6790815 m!7538342))

(assert (=> b!6790810 m!7537942))

(declare-fun m!7538344 () Bool)

(assert (=> b!6790810 m!7538344))

(assert (=> b!6790814 m!7537942))

(declare-fun m!7538346 () Bool)

(assert (=> b!6790814 m!7538346))

(assert (=> b!6790814 m!7538346))

(declare-fun m!7538348 () Bool)

(assert (=> b!6790814 m!7538348))

(assert (=> b!6790214 d!2133683))

(declare-fun bs!1809355 () Bool)

(declare-fun d!2133691 () Bool)

(assert (= bs!1809355 (and d!2133691 b!6790221)))

(declare-fun lambda!382587 () Int)

(assert (=> bs!1809355 (= lambda!382587 lambda!382515)))

(declare-fun bs!1809356 () Bool)

(assert (= bs!1809356 (and d!2133691 d!2133683)))

(assert (=> bs!1809356 (= lambda!382587 lambda!382584)))

(declare-fun lt!2446337 () List!66132)

(assert (=> d!2133691 (forall!15803 lt!2446337 lambda!382587)))

(declare-fun e!4098817 () List!66132)

(assert (=> d!2133691 (= lt!2446337 e!4098817)))

(declare-fun c!1262137 () Bool)

(assert (=> d!2133691 (= c!1262137 ((_ is Cons!66009) zl!343))))

(assert (=> d!2133691 (= (unfocusZipperList!2032 zl!343) lt!2446337)))

(declare-fun b!6790834 () Bool)

(assert (=> b!6790834 (= e!4098817 (Cons!66008 (generalisedConcat!2208 (exprs!6495 (h!72457 zl!343))) (unfocusZipperList!2032 (t!379856 zl!343))))))

(declare-fun b!6790835 () Bool)

(assert (=> b!6790835 (= e!4098817 Nil!66008)))

(assert (= (and d!2133691 c!1262137) b!6790834))

(assert (= (and d!2133691 (not c!1262137)) b!6790835))

(declare-fun m!7538364 () Bool)

(assert (=> d!2133691 m!7538364))

(assert (=> b!6790834 m!7537868))

(declare-fun m!7538366 () Bool)

(assert (=> b!6790834 m!7538366))

(assert (=> b!6790214 d!2133691))

(declare-fun d!2133695 () Bool)

(declare-fun lt!2446338 () Regex!16611)

(assert (=> d!2133695 (validRegex!8347 lt!2446338)))

(assert (=> d!2133695 (= lt!2446338 (generalisedUnion!2455 (unfocusZipperList!2032 zl!343)))))

(assert (=> d!2133695 (= (unfocusZipper!2353 zl!343) lt!2446338)))

(declare-fun bs!1809357 () Bool)

(assert (= bs!1809357 d!2133695))

(declare-fun m!7538368 () Bool)

(assert (=> bs!1809357 m!7538368))

(assert (=> bs!1809357 m!7537942))

(assert (=> bs!1809357 m!7537942))

(assert (=> bs!1809357 m!7537944))

(assert (=> b!6790223 d!2133695))

(declare-fun bs!1809366 () Bool)

(declare-fun d!2133697 () Bool)

(assert (= bs!1809366 (and d!2133697 b!6790221)))

(declare-fun lambda!382591 () Int)

(assert (=> bs!1809366 (= lambda!382591 lambda!382515)))

(declare-fun bs!1809367 () Bool)

(assert (= bs!1809367 (and d!2133697 d!2133683)))

(assert (=> bs!1809367 (= lambda!382591 lambda!382584)))

(declare-fun bs!1809369 () Bool)

(assert (= bs!1809369 (and d!2133697 d!2133691)))

(assert (=> bs!1809369 (= lambda!382591 lambda!382587)))

(assert (=> d!2133697 (= (inv!84774 setElem!46481) (forall!15803 (exprs!6495 setElem!46481) lambda!382591))))

(declare-fun bs!1809371 () Bool)

(assert (= bs!1809371 d!2133697))

(declare-fun m!7538382 () Bool)

(assert (=> bs!1809371 m!7538382))

(assert (=> setNonEmpty!46481 d!2133697))

(declare-fun b!6790904 () Bool)

(declare-fun e!4098858 () Bool)

(declare-fun call!616601 () Bool)

(assert (=> b!6790904 (= e!4098858 call!616601)))

(declare-fun b!6790905 () Bool)

(declare-fun e!4098860 () Bool)

(declare-fun call!616602 () Bool)

(assert (=> b!6790905 (= e!4098860 call!616602)))

(declare-fun b!6790906 () Bool)

(declare-fun res!2775481 () Bool)

(declare-fun e!4098859 () Bool)

(assert (=> b!6790906 (=> res!2775481 e!4098859)))

(assert (=> b!6790906 (= res!2775481 (not ((_ is Concat!25456) r!7292)))))

(declare-fun e!4098854 () Bool)

(assert (=> b!6790906 (= e!4098854 e!4098859)))

(declare-fun d!2133703 () Bool)

(declare-fun res!2775482 () Bool)

(declare-fun e!4098855 () Bool)

(assert (=> d!2133703 (=> res!2775482 e!4098855)))

(assert (=> d!2133703 (= res!2775482 ((_ is ElementMatch!16611) r!7292))))

(assert (=> d!2133703 (= (validRegex!8347 r!7292) e!4098855)))

(declare-fun b!6790907 () Bool)

(declare-fun e!4098856 () Bool)

(assert (=> b!6790907 (= e!4098856 e!4098860)))

(declare-fun res!2775479 () Bool)

(assert (=> b!6790907 (= res!2775479 (not (nullable!6590 (reg!16940 r!7292))))))

(assert (=> b!6790907 (=> (not res!2775479) (not e!4098860))))

(declare-fun b!6790908 () Bool)

(assert (=> b!6790908 (= e!4098856 e!4098854)))

(declare-fun c!1262144 () Bool)

(assert (=> b!6790908 (= c!1262144 ((_ is Union!16611) r!7292))))

(declare-fun bm!616596 () Bool)

(assert (=> bm!616596 (= call!616601 call!616602)))

(declare-fun bm!616597 () Bool)

(declare-fun call!616603 () Bool)

(assert (=> bm!616597 (= call!616603 (validRegex!8347 (ite c!1262144 (regOne!33735 r!7292) (regOne!33734 r!7292))))))

(declare-fun b!6790909 () Bool)

(declare-fun e!4098857 () Bool)

(assert (=> b!6790909 (= e!4098859 e!4098857)))

(declare-fun res!2775478 () Bool)

(assert (=> b!6790909 (=> (not res!2775478) (not e!4098857))))

(assert (=> b!6790909 (= res!2775478 call!616603)))

(declare-fun b!6790910 () Bool)

(assert (=> b!6790910 (= e!4098857 call!616601)))

(declare-fun b!6790911 () Bool)

(assert (=> b!6790911 (= e!4098855 e!4098856)))

(declare-fun c!1262145 () Bool)

(assert (=> b!6790911 (= c!1262145 ((_ is Star!16611) r!7292))))

(declare-fun bm!616598 () Bool)

(assert (=> bm!616598 (= call!616602 (validRegex!8347 (ite c!1262145 (reg!16940 r!7292) (ite c!1262144 (regTwo!33735 r!7292) (regTwo!33734 r!7292)))))))

(declare-fun b!6790912 () Bool)

(declare-fun res!2775480 () Bool)

(assert (=> b!6790912 (=> (not res!2775480) (not e!4098858))))

(assert (=> b!6790912 (= res!2775480 call!616603)))

(assert (=> b!6790912 (= e!4098854 e!4098858)))

(assert (= (and d!2133703 (not res!2775482)) b!6790911))

(assert (= (and b!6790911 c!1262145) b!6790907))

(assert (= (and b!6790911 (not c!1262145)) b!6790908))

(assert (= (and b!6790907 res!2775479) b!6790905))

(assert (= (and b!6790908 c!1262144) b!6790912))

(assert (= (and b!6790908 (not c!1262144)) b!6790906))

(assert (= (and b!6790912 res!2775480) b!6790904))

(assert (= (and b!6790906 (not res!2775481)) b!6790909))

(assert (= (and b!6790909 res!2775478) b!6790910))

(assert (= (or b!6790904 b!6790910) bm!616596))

(assert (= (or b!6790912 b!6790909) bm!616597))

(assert (= (or b!6790905 bm!616596) bm!616598))

(declare-fun m!7538410 () Bool)

(assert (=> b!6790907 m!7538410))

(declare-fun m!7538412 () Bool)

(assert (=> bm!616597 m!7538412))

(declare-fun m!7538414 () Bool)

(assert (=> bm!616598 m!7538414))

(assert (=> start!657172 d!2133703))

(declare-fun bs!1809376 () Bool)

(declare-fun d!2133717 () Bool)

(assert (= bs!1809376 (and d!2133717 b!6790221)))

(declare-fun lambda!382592 () Int)

(assert (=> bs!1809376 (= lambda!382592 lambda!382515)))

(declare-fun bs!1809377 () Bool)

(assert (= bs!1809377 (and d!2133717 d!2133683)))

(assert (=> bs!1809377 (= lambda!382592 lambda!382584)))

(declare-fun bs!1809378 () Bool)

(assert (= bs!1809378 (and d!2133717 d!2133691)))

(assert (=> bs!1809378 (= lambda!382592 lambda!382587)))

(declare-fun bs!1809379 () Bool)

(assert (= bs!1809379 (and d!2133717 d!2133697)))

(assert (=> bs!1809379 (= lambda!382592 lambda!382591)))

(assert (=> d!2133717 (= (inv!84774 c!332) (forall!15803 (exprs!6495 c!332) lambda!382592))))

(declare-fun bs!1809380 () Bool)

(assert (= bs!1809380 d!2133717))

(declare-fun m!7538416 () Bool)

(assert (=> bs!1809380 m!7538416))

(assert (=> start!657172 d!2133717))

(declare-fun d!2133719 () Bool)

(declare-fun c!1262148 () Bool)

(assert (=> d!2133719 (= c!1262148 (isEmpty!38377 s!2326))))

(declare-fun e!4098868 () Bool)

(assert (=> d!2133719 (= (matchZipper!2597 lt!2446242 s!2326) e!4098868)))

(declare-fun b!6790927 () Bool)

(declare-fun nullableZipper!2318 ((InoxSet Context!11990)) Bool)

(assert (=> b!6790927 (= e!4098868 (nullableZipper!2318 lt!2446242))))

(declare-fun b!6790928 () Bool)

(assert (=> b!6790928 (= e!4098868 (matchZipper!2597 (derivationStepZipper!2555 lt!2446242 (head!13633 s!2326)) (tail!12718 s!2326)))))

(assert (= (and d!2133719 c!1262148) b!6790927))

(assert (= (and d!2133719 (not c!1262148)) b!6790928))

(assert (=> d!2133719 m!7537894))

(declare-fun m!7538420 () Bool)

(assert (=> b!6790927 m!7538420))

(assert (=> b!6790928 m!7538304))

(assert (=> b!6790928 m!7538304))

(declare-fun m!7538422 () Bool)

(assert (=> b!6790928 m!7538422))

(assert (=> b!6790928 m!7538310))

(assert (=> b!6790928 m!7538422))

(assert (=> b!6790928 m!7538310))

(declare-fun m!7538424 () Bool)

(assert (=> b!6790928 m!7538424))

(assert (=> b!6790222 d!2133719))

(declare-fun d!2133729 () Bool)

(declare-fun c!1262149 () Bool)

(assert (=> d!2133729 (= c!1262149 (isEmpty!38377 (t!379857 s!2326)))))

(declare-fun e!4098869 () Bool)

(assert (=> d!2133729 (= (matchZipper!2597 (derivationStepZipper!2555 lt!2446242 (h!72458 s!2326)) (t!379857 s!2326)) e!4098869)))

(declare-fun b!6790929 () Bool)

(assert (=> b!6790929 (= e!4098869 (nullableZipper!2318 (derivationStepZipper!2555 lt!2446242 (h!72458 s!2326))))))

(declare-fun b!6790930 () Bool)

(assert (=> b!6790930 (= e!4098869 (matchZipper!2597 (derivationStepZipper!2555 (derivationStepZipper!2555 lt!2446242 (h!72458 s!2326)) (head!13633 (t!379857 s!2326))) (tail!12718 (t!379857 s!2326))))))

(assert (= (and d!2133729 c!1262149) b!6790929))

(assert (= (and d!2133729 (not c!1262149)) b!6790930))

(declare-fun m!7538426 () Bool)

(assert (=> d!2133729 m!7538426))

(assert (=> b!6790929 m!7537948))

(declare-fun m!7538428 () Bool)

(assert (=> b!6790929 m!7538428))

(declare-fun m!7538430 () Bool)

(assert (=> b!6790930 m!7538430))

(assert (=> b!6790930 m!7537948))

(assert (=> b!6790930 m!7538430))

(declare-fun m!7538432 () Bool)

(assert (=> b!6790930 m!7538432))

(declare-fun m!7538434 () Bool)

(assert (=> b!6790930 m!7538434))

(assert (=> b!6790930 m!7538432))

(assert (=> b!6790930 m!7538434))

(declare-fun m!7538436 () Bool)

(assert (=> b!6790930 m!7538436))

(assert (=> b!6790222 d!2133729))

(declare-fun bs!1809385 () Bool)

(declare-fun d!2133731 () Bool)

(assert (= bs!1809385 (and d!2133731 b!6790215)))

(declare-fun lambda!382593 () Int)

(assert (=> bs!1809385 (= lambda!382593 lambda!382514)))

(declare-fun bs!1809386 () Bool)

(assert (= bs!1809386 (and d!2133731 d!2133637)))

(assert (=> bs!1809386 (= lambda!382593 lambda!382557)))

(assert (=> d!2133731 true))

(assert (=> d!2133731 (= (derivationStepZipper!2555 lt!2446242 (h!72458 s!2326)) (flatMap!2092 lt!2446242 lambda!382593))))

(declare-fun bs!1809387 () Bool)

(assert (= bs!1809387 d!2133731))

(declare-fun m!7538438 () Bool)

(assert (=> bs!1809387 m!7538438))

(assert (=> b!6790222 d!2133731))

(declare-fun bs!1809388 () Bool)

(declare-fun d!2133733 () Bool)

(assert (= bs!1809388 (and d!2133733 d!2133683)))

(declare-fun lambda!382594 () Int)

(assert (=> bs!1809388 (= lambda!382594 lambda!382584)))

(declare-fun bs!1809389 () Bool)

(assert (= bs!1809389 (and d!2133733 d!2133691)))

(assert (=> bs!1809389 (= lambda!382594 lambda!382587)))

(declare-fun bs!1809390 () Bool)

(assert (= bs!1809390 (and d!2133733 b!6790221)))

(assert (=> bs!1809390 (= lambda!382594 lambda!382515)))

(declare-fun bs!1809391 () Bool)

(assert (= bs!1809391 (and d!2133733 d!2133717)))

(assert (=> bs!1809391 (= lambda!382594 lambda!382592)))

(declare-fun bs!1809392 () Bool)

(assert (= bs!1809392 (and d!2133733 d!2133697)))

(assert (=> bs!1809392 (= lambda!382594 lambda!382591)))

(assert (=> d!2133733 (= (inv!84774 (Context!11991 (++!14767 (exprs!6495 c!332) lt!2446224))) (forall!15803 (exprs!6495 (Context!11991 (++!14767 (exprs!6495 c!332) lt!2446224))) lambda!382594))))

(declare-fun bs!1809393 () Bool)

(assert (= bs!1809393 d!2133733))

(declare-fun m!7538440 () Bool)

(assert (=> bs!1809393 m!7538440))

(assert (=> b!6790221 d!2133733))

(declare-fun b!6790940 () Bool)

(declare-fun e!4098875 () List!66132)

(assert (=> b!6790940 (= e!4098875 (Cons!66008 (h!72456 (exprs!6495 c!332)) (++!14767 (t!379855 (exprs!6495 c!332)) lt!2446224)))))

(declare-fun e!4098874 () Bool)

(declare-fun b!6790942 () Bool)

(declare-fun lt!2446348 () List!66132)

(assert (=> b!6790942 (= e!4098874 (or (not (= lt!2446224 Nil!66008)) (= lt!2446348 (exprs!6495 c!332))))))

(declare-fun b!6790941 () Bool)

(declare-fun res!2775487 () Bool)

(assert (=> b!6790941 (=> (not res!2775487) (not e!4098874))))

(declare-fun size!40646 (List!66132) Int)

(assert (=> b!6790941 (= res!2775487 (= (size!40646 lt!2446348) (+ (size!40646 (exprs!6495 c!332)) (size!40646 lt!2446224))))))

(declare-fun d!2133735 () Bool)

(assert (=> d!2133735 e!4098874))

(declare-fun res!2775488 () Bool)

(assert (=> d!2133735 (=> (not res!2775488) (not e!4098874))))

(declare-fun content!12869 (List!66132) (InoxSet Regex!16611))

(assert (=> d!2133735 (= res!2775488 (= (content!12869 lt!2446348) ((_ map or) (content!12869 (exprs!6495 c!332)) (content!12869 lt!2446224))))))

(assert (=> d!2133735 (= lt!2446348 e!4098875)))

(declare-fun c!1262152 () Bool)

(assert (=> d!2133735 (= c!1262152 ((_ is Nil!66008) (exprs!6495 c!332)))))

(assert (=> d!2133735 (= (++!14767 (exprs!6495 c!332) lt!2446224) lt!2446348)))

(declare-fun b!6790939 () Bool)

(assert (=> b!6790939 (= e!4098875 lt!2446224)))

(assert (= (and d!2133735 c!1262152) b!6790939))

(assert (= (and d!2133735 (not c!1262152)) b!6790940))

(assert (= (and d!2133735 res!2775488) b!6790941))

(assert (= (and b!6790941 res!2775487) b!6790942))

(declare-fun m!7538442 () Bool)

(assert (=> b!6790940 m!7538442))

(declare-fun m!7538444 () Bool)

(assert (=> b!6790941 m!7538444))

(declare-fun m!7538446 () Bool)

(assert (=> b!6790941 m!7538446))

(declare-fun m!7538448 () Bool)

(assert (=> b!6790941 m!7538448))

(declare-fun m!7538450 () Bool)

(assert (=> d!2133735 m!7538450))

(declare-fun m!7538452 () Bool)

(assert (=> d!2133735 m!7538452))

(declare-fun m!7538454 () Bool)

(assert (=> d!2133735 m!7538454))

(assert (=> b!6790221 d!2133735))

(declare-fun d!2133737 () Bool)

(assert (=> d!2133737 (forall!15803 (++!14767 (exprs!6495 c!332) lt!2446224) lambda!382515)))

(declare-fun lt!2446351 () Unit!159913)

(declare-fun choose!50582 (List!66132 List!66132 Int) Unit!159913)

(assert (=> d!2133737 (= lt!2446351 (choose!50582 (exprs!6495 c!332) lt!2446224 lambda!382515))))

(assert (=> d!2133737 (forall!15803 (exprs!6495 c!332) lambda!382515)))

(assert (=> d!2133737 (= (lemmaConcatPreservesForall!440 (exprs!6495 c!332) lt!2446224 lambda!382515) lt!2446351)))

(declare-fun bs!1809394 () Bool)

(assert (= bs!1809394 d!2133737))

(assert (=> bs!1809394 m!7537842))

(assert (=> bs!1809394 m!7537842))

(declare-fun m!7538456 () Bool)

(assert (=> bs!1809394 m!7538456))

(declare-fun m!7538458 () Bool)

(assert (=> bs!1809394 m!7538458))

(declare-fun m!7538460 () Bool)

(assert (=> bs!1809394 m!7538460))

(assert (=> b!6790221 d!2133737))

(declare-fun bs!1809395 () Bool)

(declare-fun b!6790943 () Bool)

(assert (= bs!1809395 (and b!6790943 b!6790702)))

(declare-fun lambda!382595 () Int)

(assert (=> bs!1809395 (= (and (= (reg!16940 lt!2446245) (reg!16940 r!7292)) (= lt!2446245 r!7292)) (= lambda!382595 lambda!382576))))

(declare-fun bs!1809396 () Bool)

(assert (= bs!1809396 (and b!6790943 b!6790216)))

(assert (=> bs!1809396 (not (= lambda!382595 lambda!382513))))

(declare-fun bs!1809397 () Bool)

(assert (= bs!1809397 (and b!6790943 d!2133559)))

(assert (=> bs!1809397 (not (= lambda!382595 lambda!382532))))

(assert (=> bs!1809397 (= (and (= (reg!16940 lt!2446245) (reg!16940 r!7292)) (= lt!2446245 (Star!16611 (reg!16940 r!7292)))) (= lambda!382595 lambda!382533))))

(assert (=> bs!1809396 (not (= lambda!382595 lambda!382511))))

(declare-fun bs!1809398 () Bool)

(assert (= bs!1809398 (and b!6790943 b!6790706)))

(assert (=> bs!1809398 (not (= lambda!382595 lambda!382577))))

(declare-fun bs!1809399 () Bool)

(assert (= bs!1809399 (and b!6790943 d!2133599)))

(assert (=> bs!1809399 (not (= lambda!382595 lambda!382551))))

(declare-fun bs!1809400 () Bool)

(assert (= bs!1809400 (and b!6790943 d!2133555)))

(assert (=> bs!1809400 (not (= lambda!382595 lambda!382520))))

(assert (=> bs!1809396 (= (and (= (reg!16940 lt!2446245) (reg!16940 r!7292)) (= lt!2446245 r!7292)) (= lambda!382595 lambda!382512))))

(assert (=> bs!1809400 (not (= lambda!382595 lambda!382521))))

(assert (=> b!6790943 true))

(assert (=> b!6790943 true))

(declare-fun bs!1809401 () Bool)

(declare-fun b!6790947 () Bool)

(assert (= bs!1809401 (and b!6790947 b!6790702)))

(declare-fun lambda!382596 () Int)

(assert (=> bs!1809401 (not (= lambda!382596 lambda!382576))))

(declare-fun bs!1809402 () Bool)

(assert (= bs!1809402 (and b!6790947 b!6790216)))

(assert (=> bs!1809402 (= (and (= (regOne!33734 lt!2446245) (reg!16940 r!7292)) (= (regTwo!33734 lt!2446245) r!7292)) (= lambda!382596 lambda!382513))))

(declare-fun bs!1809403 () Bool)

(assert (= bs!1809403 (and b!6790947 d!2133559)))

(assert (=> bs!1809403 (not (= lambda!382596 lambda!382532))))

(assert (=> bs!1809403 (not (= lambda!382596 lambda!382533))))

(assert (=> bs!1809402 (not (= lambda!382596 lambda!382511))))

(declare-fun bs!1809404 () Bool)

(assert (= bs!1809404 (and b!6790947 b!6790706)))

(assert (=> bs!1809404 (= (and (= (regOne!33734 lt!2446245) (regOne!33734 r!7292)) (= (regTwo!33734 lt!2446245) (regTwo!33734 r!7292))) (= lambda!382596 lambda!382577))))

(declare-fun bs!1809405 () Bool)

(assert (= bs!1809405 (and b!6790947 b!6790943)))

(assert (=> bs!1809405 (not (= lambda!382596 lambda!382595))))

(declare-fun bs!1809406 () Bool)

(assert (= bs!1809406 (and b!6790947 d!2133599)))

(assert (=> bs!1809406 (not (= lambda!382596 lambda!382551))))

(declare-fun bs!1809407 () Bool)

(assert (= bs!1809407 (and b!6790947 d!2133555)))

(assert (=> bs!1809407 (not (= lambda!382596 lambda!382520))))

(assert (=> bs!1809402 (not (= lambda!382596 lambda!382512))))

(assert (=> bs!1809407 (= (and (= (regOne!33734 lt!2446245) (reg!16940 r!7292)) (= (regTwo!33734 lt!2446245) r!7292)) (= lambda!382596 lambda!382521))))

(assert (=> b!6790947 true))

(assert (=> b!6790947 true))

(declare-fun e!4098878 () Bool)

(declare-fun call!616604 () Bool)

(assert (=> b!6790943 (= e!4098878 call!616604)))

(declare-fun bm!616599 () Bool)

(declare-fun call!616605 () Bool)

(assert (=> bm!616599 (= call!616605 (isEmpty!38377 s!2326))))

(declare-fun b!6790944 () Bool)

(declare-fun e!4098880 () Bool)

(assert (=> b!6790944 (= e!4098880 (matchRSpec!3712 (regTwo!33735 lt!2446245) s!2326))))

(declare-fun d!2133739 () Bool)

(declare-fun c!1262153 () Bool)

(assert (=> d!2133739 (= c!1262153 ((_ is EmptyExpr!16611) lt!2446245))))

(declare-fun e!4098881 () Bool)

(assert (=> d!2133739 (= (matchRSpec!3712 lt!2446245 s!2326) e!4098881)))

(declare-fun b!6790945 () Bool)

(declare-fun e!4098879 () Bool)

(assert (=> b!6790945 (= e!4098879 (= s!2326 (Cons!66010 (c!1261957 lt!2446245) Nil!66010)))))

(declare-fun b!6790946 () Bool)

(assert (=> b!6790946 (= e!4098881 call!616605)))

(declare-fun e!4098882 () Bool)

(assert (=> b!6790947 (= e!4098882 call!616604)))

(declare-fun b!6790948 () Bool)

(declare-fun c!1262156 () Bool)

(assert (=> b!6790948 (= c!1262156 ((_ is Union!16611) lt!2446245))))

(declare-fun e!4098877 () Bool)

(assert (=> b!6790948 (= e!4098879 e!4098877)))

(declare-fun b!6790949 () Bool)

(declare-fun res!2775490 () Bool)

(assert (=> b!6790949 (=> res!2775490 e!4098878)))

(assert (=> b!6790949 (= res!2775490 call!616605)))

(assert (=> b!6790949 (= e!4098882 e!4098878)))

(declare-fun b!6790950 () Bool)

(assert (=> b!6790950 (= e!4098877 e!4098880)))

(declare-fun res!2775489 () Bool)

(assert (=> b!6790950 (= res!2775489 (matchRSpec!3712 (regOne!33735 lt!2446245) s!2326))))

(assert (=> b!6790950 (=> res!2775489 e!4098880)))

(declare-fun b!6790951 () Bool)

(declare-fun c!1262155 () Bool)

(assert (=> b!6790951 (= c!1262155 ((_ is ElementMatch!16611) lt!2446245))))

(declare-fun e!4098876 () Bool)

(assert (=> b!6790951 (= e!4098876 e!4098879)))

(declare-fun bm!616600 () Bool)

(declare-fun c!1262154 () Bool)

(assert (=> bm!616600 (= call!616604 (Exists!3679 (ite c!1262154 lambda!382595 lambda!382596)))))

(declare-fun b!6790952 () Bool)

(assert (=> b!6790952 (= e!4098881 e!4098876)))

(declare-fun res!2775491 () Bool)

(assert (=> b!6790952 (= res!2775491 (not ((_ is EmptyLang!16611) lt!2446245)))))

(assert (=> b!6790952 (=> (not res!2775491) (not e!4098876))))

(declare-fun b!6790953 () Bool)

(assert (=> b!6790953 (= e!4098877 e!4098882)))

(assert (=> b!6790953 (= c!1262154 ((_ is Star!16611) lt!2446245))))

(assert (= (and d!2133739 c!1262153) b!6790946))

(assert (= (and d!2133739 (not c!1262153)) b!6790952))

(assert (= (and b!6790952 res!2775491) b!6790951))

(assert (= (and b!6790951 c!1262155) b!6790945))

(assert (= (and b!6790951 (not c!1262155)) b!6790948))

(assert (= (and b!6790948 c!1262156) b!6790950))

(assert (= (and b!6790948 (not c!1262156)) b!6790953))

(assert (= (and b!6790950 (not res!2775489)) b!6790944))

(assert (= (and b!6790953 c!1262154) b!6790949))

(assert (= (and b!6790953 (not c!1262154)) b!6790947))

(assert (= (and b!6790949 (not res!2775490)) b!6790943))

(assert (= (or b!6790943 b!6790947) bm!616600))

(assert (= (or b!6790946 b!6790949) bm!616599))

(assert (=> bm!616599 m!7537894))

(declare-fun m!7538462 () Bool)

(assert (=> b!6790944 m!7538462))

(declare-fun m!7538464 () Bool)

(assert (=> b!6790950 m!7538464))

(declare-fun m!7538466 () Bool)

(assert (=> bm!616600 m!7538466))

(assert (=> b!6790211 d!2133739))

(declare-fun b!6790954 () Bool)

(declare-fun res!2775499 () Bool)

(declare-fun e!4098885 () Bool)

(assert (=> b!6790954 (=> res!2775499 e!4098885)))

(assert (=> b!6790954 (= res!2775499 (not ((_ is ElementMatch!16611) lt!2446245)))))

(declare-fun e!4098886 () Bool)

(assert (=> b!6790954 (= e!4098886 e!4098885)))

(declare-fun b!6790955 () Bool)

(declare-fun e!4098889 () Bool)

(assert (=> b!6790955 (= e!4098889 (= (head!13633 s!2326) (c!1261957 lt!2446245)))))

(declare-fun b!6790956 () Bool)

(declare-fun res!2775492 () Bool)

(assert (=> b!6790956 (=> res!2775492 e!4098885)))

(assert (=> b!6790956 (= res!2775492 e!4098889)))

(declare-fun res!2775497 () Bool)

(assert (=> b!6790956 (=> (not res!2775497) (not e!4098889))))

(declare-fun lt!2446352 () Bool)

(assert (=> b!6790956 (= res!2775497 lt!2446352)))

(declare-fun b!6790957 () Bool)

(declare-fun res!2775495 () Bool)

(assert (=> b!6790957 (=> (not res!2775495) (not e!4098889))))

(assert (=> b!6790957 (= res!2775495 (isEmpty!38377 (tail!12718 s!2326)))))

(declare-fun b!6790959 () Bool)

(declare-fun e!4098888 () Bool)

(declare-fun e!4098887 () Bool)

(assert (=> b!6790959 (= e!4098888 e!4098887)))

(declare-fun res!2775494 () Bool)

(assert (=> b!6790959 (=> res!2775494 e!4098887)))

(declare-fun call!616606 () Bool)

(assert (=> b!6790959 (= res!2775494 call!616606)))

(declare-fun b!6790960 () Bool)

(assert (=> b!6790960 (= e!4098887 (not (= (head!13633 s!2326) (c!1261957 lt!2446245))))))

(declare-fun b!6790961 () Bool)

(declare-fun e!4098884 () Bool)

(assert (=> b!6790961 (= e!4098884 (matchR!8794 (derivativeStep!5275 lt!2446245 (head!13633 s!2326)) (tail!12718 s!2326)))))

(declare-fun b!6790962 () Bool)

(assert (=> b!6790962 (= e!4098885 e!4098888)))

(declare-fun res!2775496 () Bool)

(assert (=> b!6790962 (=> (not res!2775496) (not e!4098888))))

(assert (=> b!6790962 (= res!2775496 (not lt!2446352))))

(declare-fun bm!616601 () Bool)

(assert (=> bm!616601 (= call!616606 (isEmpty!38377 s!2326))))

(declare-fun b!6790963 () Bool)

(declare-fun e!4098883 () Bool)

(assert (=> b!6790963 (= e!4098883 e!4098886)))

(declare-fun c!1262159 () Bool)

(assert (=> b!6790963 (= c!1262159 ((_ is EmptyLang!16611) lt!2446245))))

(declare-fun d!2133741 () Bool)

(assert (=> d!2133741 e!4098883))

(declare-fun c!1262157 () Bool)

(assert (=> d!2133741 (= c!1262157 ((_ is EmptyExpr!16611) lt!2446245))))

(assert (=> d!2133741 (= lt!2446352 e!4098884)))

(declare-fun c!1262158 () Bool)

(assert (=> d!2133741 (= c!1262158 (isEmpty!38377 s!2326))))

(assert (=> d!2133741 (validRegex!8347 lt!2446245)))

(assert (=> d!2133741 (= (matchR!8794 lt!2446245 s!2326) lt!2446352)))

(declare-fun b!6790958 () Bool)

(assert (=> b!6790958 (= e!4098883 (= lt!2446352 call!616606))))

(declare-fun b!6790964 () Bool)

(declare-fun res!2775498 () Bool)

(assert (=> b!6790964 (=> (not res!2775498) (not e!4098889))))

(assert (=> b!6790964 (= res!2775498 (not call!616606))))

(declare-fun b!6790965 () Bool)

(assert (=> b!6790965 (= e!4098884 (nullable!6590 lt!2446245))))

(declare-fun b!6790966 () Bool)

(assert (=> b!6790966 (= e!4098886 (not lt!2446352))))

(declare-fun b!6790967 () Bool)

(declare-fun res!2775493 () Bool)

(assert (=> b!6790967 (=> res!2775493 e!4098887)))

(assert (=> b!6790967 (= res!2775493 (not (isEmpty!38377 (tail!12718 s!2326))))))

(assert (= (and d!2133741 c!1262158) b!6790965))

(assert (= (and d!2133741 (not c!1262158)) b!6790961))

(assert (= (and d!2133741 c!1262157) b!6790958))

(assert (= (and d!2133741 (not c!1262157)) b!6790963))

(assert (= (and b!6790963 c!1262159) b!6790966))

(assert (= (and b!6790963 (not c!1262159)) b!6790954))

(assert (= (and b!6790954 (not res!2775499)) b!6790956))

(assert (= (and b!6790956 res!2775497) b!6790964))

(assert (= (and b!6790964 res!2775498) b!6790957))

(assert (= (and b!6790957 res!2775495) b!6790955))

(assert (= (and b!6790956 (not res!2775492)) b!6790962))

(assert (= (and b!6790962 res!2775496) b!6790959))

(assert (= (and b!6790959 (not res!2775494)) b!6790967))

(assert (= (and b!6790967 (not res!2775493)) b!6790960))

(assert (= (or b!6790958 b!6790959 b!6790964) bm!616601))

(declare-fun m!7538468 () Bool)

(assert (=> b!6790965 m!7538468))

(assert (=> b!6790961 m!7538304))

(assert (=> b!6790961 m!7538304))

(declare-fun m!7538470 () Bool)

(assert (=> b!6790961 m!7538470))

(assert (=> b!6790961 m!7538310))

(assert (=> b!6790961 m!7538470))

(assert (=> b!6790961 m!7538310))

(declare-fun m!7538472 () Bool)

(assert (=> b!6790961 m!7538472))

(assert (=> b!6790955 m!7538304))

(assert (=> bm!616601 m!7537894))

(assert (=> b!6790957 m!7538310))

(assert (=> b!6790957 m!7538310))

(assert (=> b!6790957 m!7538314))

(assert (=> d!2133741 m!7537894))

(declare-fun m!7538474 () Bool)

(assert (=> d!2133741 m!7538474))

(assert (=> b!6790960 m!7538304))

(assert (=> b!6790967 m!7538310))

(assert (=> b!6790967 m!7538310))

(assert (=> b!6790967 m!7538314))

(assert (=> b!6790211 d!2133741))

(declare-fun d!2133743 () Bool)

(assert (=> d!2133743 (= (matchR!8794 lt!2446245 s!2326) (matchRSpec!3712 lt!2446245 s!2326))))

(declare-fun lt!2446353 () Unit!159913)

(assert (=> d!2133743 (= lt!2446353 (choose!50579 lt!2446245 s!2326))))

(assert (=> d!2133743 (validRegex!8347 lt!2446245)))

(assert (=> d!2133743 (= (mainMatchTheorem!3712 lt!2446245 s!2326) lt!2446353)))

(declare-fun bs!1809408 () Bool)

(assert (= bs!1809408 d!2133743))

(assert (=> bs!1809408 m!7537920))

(assert (=> bs!1809408 m!7537918))

(declare-fun m!7538476 () Bool)

(assert (=> bs!1809408 m!7538476))

(assert (=> bs!1809408 m!7538474))

(assert (=> b!6790211 d!2133743))

(declare-fun d!2133745 () Bool)

(declare-fun c!1262160 () Bool)

(assert (=> d!2133745 (= c!1262160 (isEmpty!38377 s!2326))))

(declare-fun e!4098890 () Bool)

(assert (=> d!2133745 (= (matchZipper!2597 z!1189 s!2326) e!4098890)))

(declare-fun b!6790968 () Bool)

(assert (=> b!6790968 (= e!4098890 (nullableZipper!2318 z!1189))))

(declare-fun b!6790969 () Bool)

(assert (=> b!6790969 (= e!4098890 (matchZipper!2597 (derivationStepZipper!2555 z!1189 (head!13633 s!2326)) (tail!12718 s!2326)))))

(assert (= (and d!2133745 c!1262160) b!6790968))

(assert (= (and d!2133745 (not c!1262160)) b!6790969))

(assert (=> d!2133745 m!7537894))

(declare-fun m!7538478 () Bool)

(assert (=> b!6790968 m!7538478))

(assert (=> b!6790969 m!7538304))

(assert (=> b!6790969 m!7538304))

(declare-fun m!7538480 () Bool)

(assert (=> b!6790969 m!7538480))

(assert (=> b!6790969 m!7538310))

(assert (=> b!6790969 m!7538480))

(assert (=> b!6790969 m!7538310))

(declare-fun m!7538482 () Bool)

(assert (=> b!6790969 m!7538482))

(assert (=> b!6790241 d!2133745))

(declare-fun bs!1809409 () Bool)

(declare-fun d!2133747 () Bool)

(assert (= bs!1809409 (and d!2133747 d!2133683)))

(declare-fun lambda!382597 () Int)

(assert (=> bs!1809409 (= lambda!382597 lambda!382584)))

(declare-fun bs!1809410 () Bool)

(assert (= bs!1809410 (and d!2133747 d!2133691)))

(assert (=> bs!1809410 (= lambda!382597 lambda!382587)))

(declare-fun bs!1809411 () Bool)

(assert (= bs!1809411 (and d!2133747 b!6790221)))

(assert (=> bs!1809411 (= lambda!382597 lambda!382515)))

(declare-fun bs!1809412 () Bool)

(assert (= bs!1809412 (and d!2133747 d!2133717)))

(assert (=> bs!1809412 (= lambda!382597 lambda!382592)))

(declare-fun bs!1809413 () Bool)

(assert (= bs!1809413 (and d!2133747 d!2133697)))

(assert (=> bs!1809413 (= lambda!382597 lambda!382591)))

(declare-fun bs!1809414 () Bool)

(assert (= bs!1809414 (and d!2133747 d!2133733)))

(assert (=> bs!1809414 (= lambda!382597 lambda!382594)))

(assert (=> d!2133747 (= (inv!84774 (h!72457 zl!343)) (forall!15803 (exprs!6495 (h!72457 zl!343)) lambda!382597))))

(declare-fun bs!1809415 () Bool)

(assert (= bs!1809415 d!2133747))

(declare-fun m!7538484 () Bool)

(assert (=> bs!1809415 m!7538484))

(assert (=> b!6790210 d!2133747))

(declare-fun d!2133749 () Bool)

(declare-fun e!4098893 () Bool)

(assert (=> d!2133749 e!4098893))

(declare-fun res!2775502 () Bool)

(assert (=> d!2133749 (=> (not res!2775502) (not e!4098893))))

(declare-fun lt!2446356 () List!66133)

(declare-fun noDuplicate!2396 (List!66133) Bool)

(assert (=> d!2133749 (= res!2775502 (noDuplicate!2396 lt!2446356))))

(declare-fun choose!50586 ((InoxSet Context!11990)) List!66133)

(assert (=> d!2133749 (= lt!2446356 (choose!50586 z!1189))))

(assert (=> d!2133749 (= (toList!10395 z!1189) lt!2446356)))

(declare-fun b!6790972 () Bool)

(declare-fun content!12870 (List!66133) (InoxSet Context!11990))

(assert (=> b!6790972 (= e!4098893 (= (content!12870 lt!2446356) z!1189))))

(assert (= (and d!2133749 res!2775502) b!6790972))

(declare-fun m!7538486 () Bool)

(assert (=> d!2133749 m!7538486))

(declare-fun m!7538488 () Bool)

(assert (=> d!2133749 m!7538488))

(declare-fun m!7538490 () Bool)

(assert (=> b!6790972 m!7538490))

(assert (=> b!6790240 d!2133749))

(declare-fun bm!616602 () Bool)

(declare-fun call!616608 () (InoxSet Context!11990))

(declare-fun call!616609 () (InoxSet Context!11990))

(assert (=> bm!616602 (= call!616608 call!616609)))

(declare-fun b!6790973 () Bool)

(declare-fun e!4098898 () (InoxSet Context!11990))

(declare-fun e!4098894 () (InoxSet Context!11990))

(assert (=> b!6790973 (= e!4098898 e!4098894)))

(declare-fun c!1262163 () Bool)

(assert (=> b!6790973 (= c!1262163 ((_ is Union!16611) r!7292))))

(declare-fun bm!616603 () Bool)

(declare-fun call!616611 () (InoxSet Context!11990))

(assert (=> bm!616603 (= call!616611 call!616608)))

(declare-fun b!6790974 () Bool)

(declare-fun e!4098897 () Bool)

(assert (=> b!6790974 (= e!4098897 (nullable!6590 (regOne!33734 r!7292)))))

(declare-fun b!6790975 () Bool)

(declare-fun e!4098899 () (InoxSet Context!11990))

(assert (=> b!6790975 (= e!4098899 call!616611)))

(declare-fun b!6790976 () Bool)

(declare-fun call!616607 () (InoxSet Context!11990))

(assert (=> b!6790976 (= e!4098894 ((_ map or) call!616609 call!616607))))

(declare-fun c!1262165 () Bool)

(declare-fun bm!616605 () Bool)

(declare-fun c!1262164 () Bool)

(declare-fun call!616610 () List!66132)

(assert (=> bm!616605 (= call!616610 ($colon$colon!2420 (exprs!6495 (Context!11991 Nil!66008)) (ite (or c!1262164 c!1262165) (regTwo!33734 r!7292) r!7292)))))

(declare-fun b!6790977 () Bool)

(declare-fun e!4098896 () (InoxSet Context!11990))

(declare-fun e!4098895 () (InoxSet Context!11990))

(assert (=> b!6790977 (= e!4098896 e!4098895)))

(assert (=> b!6790977 (= c!1262165 ((_ is Concat!25456) r!7292))))

(declare-fun b!6790978 () Bool)

(assert (=> b!6790978 (= e!4098896 ((_ map or) call!616607 call!616608))))

(declare-fun b!6790979 () Bool)

(assert (=> b!6790979 (= c!1262164 e!4098897)))

(declare-fun res!2775503 () Bool)

(assert (=> b!6790979 (=> (not res!2775503) (not e!4098897))))

(assert (=> b!6790979 (= res!2775503 ((_ is Concat!25456) r!7292))))

(assert (=> b!6790979 (= e!4098894 e!4098896)))

(declare-fun b!6790980 () Bool)

(declare-fun c!1262161 () Bool)

(assert (=> b!6790980 (= c!1262161 ((_ is Star!16611) r!7292))))

(assert (=> b!6790980 (= e!4098895 e!4098899)))

(declare-fun b!6790981 () Bool)

(assert (=> b!6790981 (= e!4098899 ((as const (Array Context!11990 Bool)) false))))

(declare-fun b!6790982 () Bool)

(assert (=> b!6790982 (= e!4098898 (store ((as const (Array Context!11990 Bool)) false) (Context!11991 Nil!66008) true))))

(declare-fun bm!616606 () Bool)

(declare-fun call!616612 () List!66132)

(assert (=> bm!616606 (= call!616609 (derivationStepZipperDown!1839 (ite c!1262163 (regOne!33735 r!7292) (ite c!1262164 (regTwo!33734 r!7292) (ite c!1262165 (regOne!33734 r!7292) (reg!16940 r!7292)))) (ite (or c!1262163 c!1262164) (Context!11991 Nil!66008) (Context!11991 call!616612)) (h!72458 s!2326)))))

(declare-fun d!2133751 () Bool)

(declare-fun c!1262162 () Bool)

(assert (=> d!2133751 (= c!1262162 (and ((_ is ElementMatch!16611) r!7292) (= (c!1261957 r!7292) (h!72458 s!2326))))))

(assert (=> d!2133751 (= (derivationStepZipperDown!1839 r!7292 (Context!11991 Nil!66008) (h!72458 s!2326)) e!4098898)))

(declare-fun bm!616604 () Bool)

(assert (=> bm!616604 (= call!616612 call!616610)))

(declare-fun b!6790983 () Bool)

(assert (=> b!6790983 (= e!4098895 call!616611)))

(declare-fun bm!616607 () Bool)

(assert (=> bm!616607 (= call!616607 (derivationStepZipperDown!1839 (ite c!1262163 (regTwo!33735 r!7292) (regOne!33734 r!7292)) (ite c!1262163 (Context!11991 Nil!66008) (Context!11991 call!616610)) (h!72458 s!2326)))))

(assert (= (and d!2133751 c!1262162) b!6790982))

(assert (= (and d!2133751 (not c!1262162)) b!6790973))

(assert (= (and b!6790973 c!1262163) b!6790976))

(assert (= (and b!6790973 (not c!1262163)) b!6790979))

(assert (= (and b!6790979 res!2775503) b!6790974))

(assert (= (and b!6790979 c!1262164) b!6790978))

(assert (= (and b!6790979 (not c!1262164)) b!6790977))

(assert (= (and b!6790977 c!1262165) b!6790983))

(assert (= (and b!6790977 (not c!1262165)) b!6790980))

(assert (= (and b!6790980 c!1262161) b!6790975))

(assert (= (and b!6790980 (not c!1262161)) b!6790981))

(assert (= (or b!6790983 b!6790975) bm!616604))

(assert (= (or b!6790983 b!6790975) bm!616603))

(assert (= (or b!6790978 bm!616604) bm!616605))

(assert (= (or b!6790978 bm!616603) bm!616602))

(assert (= (or b!6790976 b!6790978) bm!616607))

(assert (= (or b!6790976 bm!616602) bm!616606))

(declare-fun m!7538492 () Bool)

(assert (=> b!6790982 m!7538492))

(declare-fun m!7538494 () Bool)

(assert (=> b!6790974 m!7538494))

(declare-fun m!7538496 () Bool)

(assert (=> bm!616606 m!7538496))

(declare-fun m!7538498 () Bool)

(assert (=> bm!616607 m!7538498))

(declare-fun m!7538500 () Bool)

(assert (=> bm!616605 m!7538500))

(assert (=> b!6790219 d!2133751))

(declare-fun bm!616608 () Bool)

(declare-fun call!616613 () (InoxSet Context!11990))

(assert (=> bm!616608 (= call!616613 (derivationStepZipperDown!1839 (h!72456 (exprs!6495 (Context!11991 (Cons!66008 r!7292 Nil!66008)))) (Context!11991 (t!379855 (exprs!6495 (Context!11991 (Cons!66008 r!7292 Nil!66008))))) (h!72458 s!2326)))))

(declare-fun d!2133753 () Bool)

(declare-fun c!1262167 () Bool)

(declare-fun e!4098902 () Bool)

(assert (=> d!2133753 (= c!1262167 e!4098902)))

(declare-fun res!2775504 () Bool)

(assert (=> d!2133753 (=> (not res!2775504) (not e!4098902))))

(assert (=> d!2133753 (= res!2775504 ((_ is Cons!66008) (exprs!6495 (Context!11991 (Cons!66008 r!7292 Nil!66008)))))))

(declare-fun e!4098901 () (InoxSet Context!11990))

(assert (=> d!2133753 (= (derivationStepZipperUp!1765 (Context!11991 (Cons!66008 r!7292 Nil!66008)) (h!72458 s!2326)) e!4098901)))

(declare-fun b!6790984 () Bool)

(declare-fun e!4098900 () (InoxSet Context!11990))

(assert (=> b!6790984 (= e!4098900 call!616613)))

(declare-fun b!6790985 () Bool)

(assert (=> b!6790985 (= e!4098901 e!4098900)))

(declare-fun c!1262166 () Bool)

(assert (=> b!6790985 (= c!1262166 ((_ is Cons!66008) (exprs!6495 (Context!11991 (Cons!66008 r!7292 Nil!66008)))))))

(declare-fun b!6790986 () Bool)

(assert (=> b!6790986 (= e!4098901 ((_ map or) call!616613 (derivationStepZipperUp!1765 (Context!11991 (t!379855 (exprs!6495 (Context!11991 (Cons!66008 r!7292 Nil!66008))))) (h!72458 s!2326))))))

(declare-fun b!6790987 () Bool)

(assert (=> b!6790987 (= e!4098900 ((as const (Array Context!11990 Bool)) false))))

(declare-fun b!6790988 () Bool)

(assert (=> b!6790988 (= e!4098902 (nullable!6590 (h!72456 (exprs!6495 (Context!11991 (Cons!66008 r!7292 Nil!66008))))))))

(assert (= (and d!2133753 res!2775504) b!6790988))

(assert (= (and d!2133753 c!1262167) b!6790986))

(assert (= (and d!2133753 (not c!1262167)) b!6790985))

(assert (= (and b!6790985 c!1262166) b!6790984))

(assert (= (and b!6790985 (not c!1262166)) b!6790987))

(assert (= (or b!6790986 b!6790984) bm!616608))

(declare-fun m!7538502 () Bool)

(assert (=> bm!616608 m!7538502))

(declare-fun m!7538504 () Bool)

(assert (=> b!6790986 m!7538504))

(declare-fun m!7538506 () Bool)

(assert (=> b!6790988 m!7538506))

(assert (=> b!6790219 d!2133753))

(declare-fun bs!1809416 () Bool)

(declare-fun d!2133755 () Bool)

(assert (= bs!1809416 (and d!2133755 b!6790215)))

(declare-fun lambda!382598 () Int)

(assert (=> bs!1809416 (= lambda!382598 lambda!382514)))

(declare-fun bs!1809417 () Bool)

(assert (= bs!1809417 (and d!2133755 d!2133637)))

(assert (=> bs!1809417 (= lambda!382598 lambda!382557)))

(declare-fun bs!1809418 () Bool)

(assert (= bs!1809418 (and d!2133755 d!2133731)))

(assert (=> bs!1809418 (= lambda!382598 lambda!382593)))

(assert (=> d!2133755 true))

(assert (=> d!2133755 (= (derivationStepZipper!2555 z!1189 (h!72458 s!2326)) (flatMap!2092 z!1189 lambda!382598))))

(declare-fun bs!1809419 () Bool)

(assert (= bs!1809419 d!2133755))

(declare-fun m!7538508 () Bool)

(assert (=> bs!1809419 m!7538508))

(assert (=> b!6790219 d!2133755))

(declare-fun bs!1809420 () Bool)

(declare-fun d!2133757 () Bool)

(assert (= bs!1809420 (and d!2133757 d!2133683)))

(declare-fun lambda!382601 () Int)

(assert (=> bs!1809420 (= lambda!382601 lambda!382584)))

(declare-fun bs!1809421 () Bool)

(assert (= bs!1809421 (and d!2133757 d!2133691)))

(assert (=> bs!1809421 (= lambda!382601 lambda!382587)))

(declare-fun bs!1809422 () Bool)

(assert (= bs!1809422 (and d!2133757 b!6790221)))

(assert (=> bs!1809422 (= lambda!382601 lambda!382515)))

(declare-fun bs!1809423 () Bool)

(assert (= bs!1809423 (and d!2133757 d!2133747)))

(assert (=> bs!1809423 (= lambda!382601 lambda!382597)))

(declare-fun bs!1809424 () Bool)

(assert (= bs!1809424 (and d!2133757 d!2133717)))

(assert (=> bs!1809424 (= lambda!382601 lambda!382592)))

(declare-fun bs!1809425 () Bool)

(assert (= bs!1809425 (and d!2133757 d!2133697)))

(assert (=> bs!1809425 (= lambda!382601 lambda!382591)))

(declare-fun bs!1809426 () Bool)

(assert (= bs!1809426 (and d!2133757 d!2133733)))

(assert (=> bs!1809426 (= lambda!382601 lambda!382594)))

(declare-fun b!6791009 () Bool)

(declare-fun e!4098919 () Regex!16611)

(assert (=> b!6791009 (= e!4098919 (Concat!25456 (h!72456 (exprs!6495 (h!72457 zl!343))) (generalisedConcat!2208 (t!379855 (exprs!6495 (h!72457 zl!343))))))))

(declare-fun b!6791010 () Bool)

(declare-fun e!4098916 () Bool)

(declare-fun lt!2446359 () Regex!16611)

(declare-fun isEmptyExpr!1969 (Regex!16611) Bool)

(assert (=> b!6791010 (= e!4098916 (isEmptyExpr!1969 lt!2446359))))

(declare-fun b!6791011 () Bool)

(assert (=> b!6791011 (= e!4098919 EmptyExpr!16611)))

(declare-fun b!6791012 () Bool)

(declare-fun e!4098917 () Bool)

(assert (=> b!6791012 (= e!4098917 (= lt!2446359 (head!13634 (exprs!6495 (h!72457 zl!343)))))))

(declare-fun b!6791013 () Bool)

(declare-fun e!4098915 () Regex!16611)

(assert (=> b!6791013 (= e!4098915 e!4098919)))

(declare-fun c!1262179 () Bool)

(assert (=> b!6791013 (= c!1262179 ((_ is Cons!66008) (exprs!6495 (h!72457 zl!343))))))

(declare-fun b!6791014 () Bool)

(declare-fun isConcat!1492 (Regex!16611) Bool)

(assert (=> b!6791014 (= e!4098917 (isConcat!1492 lt!2446359))))

(declare-fun e!4098918 () Bool)

(assert (=> d!2133757 e!4098918))

(declare-fun res!2775510 () Bool)

(assert (=> d!2133757 (=> (not res!2775510) (not e!4098918))))

(assert (=> d!2133757 (= res!2775510 (validRegex!8347 lt!2446359))))

(assert (=> d!2133757 (= lt!2446359 e!4098915)))

(declare-fun c!1262177 () Bool)

(declare-fun e!4098920 () Bool)

(assert (=> d!2133757 (= c!1262177 e!4098920)))

(declare-fun res!2775509 () Bool)

(assert (=> d!2133757 (=> (not res!2775509) (not e!4098920))))

(assert (=> d!2133757 (= res!2775509 ((_ is Cons!66008) (exprs!6495 (h!72457 zl!343))))))

(assert (=> d!2133757 (forall!15803 (exprs!6495 (h!72457 zl!343)) lambda!382601)))

(assert (=> d!2133757 (= (generalisedConcat!2208 (exprs!6495 (h!72457 zl!343))) lt!2446359)))

(declare-fun b!6791015 () Bool)

(assert (=> b!6791015 (= e!4098915 (h!72456 (exprs!6495 (h!72457 zl!343))))))

(declare-fun b!6791016 () Bool)

(assert (=> b!6791016 (= e!4098920 (isEmpty!38381 (t!379855 (exprs!6495 (h!72457 zl!343)))))))

(declare-fun b!6791017 () Bool)

(assert (=> b!6791017 (= e!4098916 e!4098917)))

(declare-fun c!1262178 () Bool)

(assert (=> b!6791017 (= c!1262178 (isEmpty!38381 (tail!12719 (exprs!6495 (h!72457 zl!343)))))))

(declare-fun b!6791018 () Bool)

(assert (=> b!6791018 (= e!4098918 e!4098916)))

(declare-fun c!1262176 () Bool)

(assert (=> b!6791018 (= c!1262176 (isEmpty!38381 (exprs!6495 (h!72457 zl!343))))))

(assert (= (and d!2133757 res!2775509) b!6791016))

(assert (= (and d!2133757 c!1262177) b!6791015))

(assert (= (and d!2133757 (not c!1262177)) b!6791013))

(assert (= (and b!6791013 c!1262179) b!6791009))

(assert (= (and b!6791013 (not c!1262179)) b!6791011))

(assert (= (and d!2133757 res!2775510) b!6791018))

(assert (= (and b!6791018 c!1262176) b!6791010))

(assert (= (and b!6791018 (not c!1262176)) b!6791017))

(assert (= (and b!6791017 c!1262178) b!6791012))

(assert (= (and b!6791017 (not c!1262178)) b!6791014))

(declare-fun m!7538510 () Bool)

(assert (=> d!2133757 m!7538510))

(declare-fun m!7538512 () Bool)

(assert (=> d!2133757 m!7538512))

(declare-fun m!7538514 () Bool)

(assert (=> b!6791017 m!7538514))

(assert (=> b!6791017 m!7538514))

(declare-fun m!7538516 () Bool)

(assert (=> b!6791017 m!7538516))

(declare-fun m!7538518 () Bool)

(assert (=> b!6791009 m!7538518))

(declare-fun m!7538520 () Bool)

(assert (=> b!6791018 m!7538520))

(declare-fun m!7538522 () Bool)

(assert (=> b!6791012 m!7538522))

(declare-fun m!7538524 () Bool)

(assert (=> b!6791014 m!7538524))

(declare-fun m!7538526 () Bool)

(assert (=> b!6791016 m!7538526))

(declare-fun m!7538528 () Bool)

(assert (=> b!6791010 m!7538528))

(assert (=> b!6790228 d!2133757))

(declare-fun d!2133759 () Bool)

(assert (=> d!2133759 (= (isEmpty!38378 (t!379856 zl!343)) ((_ is Nil!66009) (t!379856 zl!343)))))

(assert (=> b!6790239 d!2133759))

(declare-fun d!2133761 () Bool)

(declare-fun lt!2446360 () Regex!16611)

(assert (=> d!2133761 (validRegex!8347 lt!2446360)))

(assert (=> d!2133761 (= lt!2446360 (generalisedUnion!2455 (unfocusZipperList!2032 (Cons!66009 lt!2446239 Nil!66009))))))

(assert (=> d!2133761 (= (unfocusZipper!2353 (Cons!66009 lt!2446239 Nil!66009)) lt!2446360)))

(declare-fun bs!1809427 () Bool)

(assert (= bs!1809427 d!2133761))

(declare-fun m!7538530 () Bool)

(assert (=> bs!1809427 m!7538530))

(declare-fun m!7538532 () Bool)

(assert (=> bs!1809427 m!7538532))

(assert (=> bs!1809427 m!7538532))

(declare-fun m!7538534 () Bool)

(assert (=> bs!1809427 m!7538534))

(assert (=> b!6790238 d!2133761))

(declare-fun b!6791030 () Bool)

(declare-fun e!4098923 () Bool)

(declare-fun tp!1859926 () Bool)

(declare-fun tp!1859927 () Bool)

(assert (=> b!6791030 (= e!4098923 (and tp!1859926 tp!1859927))))

(declare-fun b!6791031 () Bool)

(declare-fun tp!1859929 () Bool)

(assert (=> b!6791031 (= e!4098923 tp!1859929)))

(assert (=> b!6790217 (= tp!1859850 e!4098923)))

(declare-fun b!6791029 () Bool)

(assert (=> b!6791029 (= e!4098923 tp_is_empty!42475)))

(declare-fun b!6791032 () Bool)

(declare-fun tp!1859928 () Bool)

(declare-fun tp!1859930 () Bool)

(assert (=> b!6791032 (= e!4098923 (and tp!1859928 tp!1859930))))

(assert (= (and b!6790217 ((_ is ElementMatch!16611) (reg!16940 r!7292))) b!6791029))

(assert (= (and b!6790217 ((_ is Concat!25456) (reg!16940 r!7292))) b!6791030))

(assert (= (and b!6790217 ((_ is Star!16611) (reg!16940 r!7292))) b!6791031))

(assert (= (and b!6790217 ((_ is Union!16611) (reg!16940 r!7292))) b!6791032))

(declare-fun b!6791037 () Bool)

(declare-fun e!4098926 () Bool)

(declare-fun tp!1859935 () Bool)

(declare-fun tp!1859936 () Bool)

(assert (=> b!6791037 (= e!4098926 (and tp!1859935 tp!1859936))))

(assert (=> b!6790232 (= tp!1859847 e!4098926)))

(assert (= (and b!6790232 ((_ is Cons!66008) (exprs!6495 c!332))) b!6791037))

(declare-fun b!6791038 () Bool)

(declare-fun e!4098927 () Bool)

(declare-fun tp!1859937 () Bool)

(declare-fun tp!1859938 () Bool)

(assert (=> b!6791038 (= e!4098927 (and tp!1859937 tp!1859938))))

(assert (=> b!6790227 (= tp!1859852 e!4098927)))

(assert (= (and b!6790227 ((_ is Cons!66008) (exprs!6495 (h!72457 zl!343)))) b!6791038))

(declare-fun b!6791043 () Bool)

(declare-fun e!4098930 () Bool)

(declare-fun tp!1859941 () Bool)

(assert (=> b!6791043 (= e!4098930 (and tp_is_empty!42475 tp!1859941))))

(assert (=> b!6790212 (= tp!1859855 e!4098930)))

(assert (= (and b!6790212 ((_ is Cons!66010) (t!379857 s!2326))) b!6791043))

(declare-fun b!6791044 () Bool)

(declare-fun e!4098931 () Bool)

(declare-fun tp!1859942 () Bool)

(declare-fun tp!1859943 () Bool)

(assert (=> b!6791044 (= e!4098931 (and tp!1859942 tp!1859943))))

(assert (=> b!6790230 (= tp!1859853 e!4098931)))

(assert (= (and b!6790230 ((_ is Cons!66008) (exprs!6495 setElem!46481))) b!6791044))

(declare-fun b!6791052 () Bool)

(declare-fun e!4098937 () Bool)

(declare-fun tp!1859948 () Bool)

(assert (=> b!6791052 (= e!4098937 tp!1859948)))

(declare-fun e!4098936 () Bool)

(declare-fun b!6791051 () Bool)

(declare-fun tp!1859949 () Bool)

(assert (=> b!6791051 (= e!4098936 (and (inv!84774 (h!72457 (t!379856 zl!343))) e!4098937 tp!1859949))))

(assert (=> b!6790210 (= tp!1859846 e!4098936)))

(assert (= b!6791051 b!6791052))

(assert (= (and b!6790210 ((_ is Cons!66009) (t!379856 zl!343))) b!6791051))

(declare-fun m!7538536 () Bool)

(assert (=> b!6791051 m!7538536))

(declare-fun b!6791054 () Bool)

(declare-fun e!4098938 () Bool)

(declare-fun tp!1859950 () Bool)

(declare-fun tp!1859951 () Bool)

(assert (=> b!6791054 (= e!4098938 (and tp!1859950 tp!1859951))))

(declare-fun b!6791055 () Bool)

(declare-fun tp!1859953 () Bool)

(assert (=> b!6791055 (= e!4098938 tp!1859953)))

(assert (=> b!6790229 (= tp!1859845 e!4098938)))

(declare-fun b!6791053 () Bool)

(assert (=> b!6791053 (= e!4098938 tp_is_empty!42475)))

(declare-fun b!6791056 () Bool)

(declare-fun tp!1859952 () Bool)

(declare-fun tp!1859954 () Bool)

(assert (=> b!6791056 (= e!4098938 (and tp!1859952 tp!1859954))))

(assert (= (and b!6790229 ((_ is ElementMatch!16611) (regOne!33734 r!7292))) b!6791053))

(assert (= (and b!6790229 ((_ is Concat!25456) (regOne!33734 r!7292))) b!6791054))

(assert (= (and b!6790229 ((_ is Star!16611) (regOne!33734 r!7292))) b!6791055))

(assert (= (and b!6790229 ((_ is Union!16611) (regOne!33734 r!7292))) b!6791056))

(declare-fun b!6791058 () Bool)

(declare-fun e!4098939 () Bool)

(declare-fun tp!1859955 () Bool)

(declare-fun tp!1859956 () Bool)

(assert (=> b!6791058 (= e!4098939 (and tp!1859955 tp!1859956))))

(declare-fun b!6791059 () Bool)

(declare-fun tp!1859958 () Bool)

(assert (=> b!6791059 (= e!4098939 tp!1859958)))

(assert (=> b!6790229 (= tp!1859851 e!4098939)))

(declare-fun b!6791057 () Bool)

(assert (=> b!6791057 (= e!4098939 tp_is_empty!42475)))

(declare-fun b!6791060 () Bool)

(declare-fun tp!1859957 () Bool)

(declare-fun tp!1859959 () Bool)

(assert (=> b!6791060 (= e!4098939 (and tp!1859957 tp!1859959))))

(assert (= (and b!6790229 ((_ is ElementMatch!16611) (regTwo!33734 r!7292))) b!6791057))

(assert (= (and b!6790229 ((_ is Concat!25456) (regTwo!33734 r!7292))) b!6791058))

(assert (= (and b!6790229 ((_ is Star!16611) (regTwo!33734 r!7292))) b!6791059))

(assert (= (and b!6790229 ((_ is Union!16611) (regTwo!33734 r!7292))) b!6791060))

(declare-fun condSetEmpty!46487 () Bool)

(assert (=> setNonEmpty!46481 (= condSetEmpty!46487 (= setRest!46481 ((as const (Array Context!11990 Bool)) false)))))

(declare-fun setRes!46487 () Bool)

(assert (=> setNonEmpty!46481 (= tp!1859849 setRes!46487)))

(declare-fun setIsEmpty!46487 () Bool)

(assert (=> setIsEmpty!46487 setRes!46487))

(declare-fun setElem!46487 () Context!11990)

(declare-fun tp!1859964 () Bool)

(declare-fun setNonEmpty!46487 () Bool)

(declare-fun e!4098942 () Bool)

(assert (=> setNonEmpty!46487 (= setRes!46487 (and tp!1859964 (inv!84774 setElem!46487) e!4098942))))

(declare-fun setRest!46487 () (InoxSet Context!11990))

(assert (=> setNonEmpty!46487 (= setRest!46481 ((_ map or) (store ((as const (Array Context!11990 Bool)) false) setElem!46487 true) setRest!46487))))

(declare-fun b!6791065 () Bool)

(declare-fun tp!1859965 () Bool)

(assert (=> b!6791065 (= e!4098942 tp!1859965)))

(assert (= (and setNonEmpty!46481 condSetEmpty!46487) setIsEmpty!46487))

(assert (= (and setNonEmpty!46481 (not condSetEmpty!46487)) setNonEmpty!46487))

(assert (= setNonEmpty!46487 b!6791065))

(declare-fun m!7538538 () Bool)

(assert (=> setNonEmpty!46487 m!7538538))

(declare-fun b!6791067 () Bool)

(declare-fun e!4098943 () Bool)

(declare-fun tp!1859966 () Bool)

(declare-fun tp!1859967 () Bool)

(assert (=> b!6791067 (= e!4098943 (and tp!1859966 tp!1859967))))

(declare-fun b!6791068 () Bool)

(declare-fun tp!1859969 () Bool)

(assert (=> b!6791068 (= e!4098943 tp!1859969)))

(assert (=> b!6790218 (= tp!1859848 e!4098943)))

(declare-fun b!6791066 () Bool)

(assert (=> b!6791066 (= e!4098943 tp_is_empty!42475)))

(declare-fun b!6791069 () Bool)

(declare-fun tp!1859968 () Bool)

(declare-fun tp!1859970 () Bool)

(assert (=> b!6791069 (= e!4098943 (and tp!1859968 tp!1859970))))

(assert (= (and b!6790218 ((_ is ElementMatch!16611) (regOne!33735 r!7292))) b!6791066))

(assert (= (and b!6790218 ((_ is Concat!25456) (regOne!33735 r!7292))) b!6791067))

(assert (= (and b!6790218 ((_ is Star!16611) (regOne!33735 r!7292))) b!6791068))

(assert (= (and b!6790218 ((_ is Union!16611) (regOne!33735 r!7292))) b!6791069))

(declare-fun b!6791071 () Bool)

(declare-fun e!4098944 () Bool)

(declare-fun tp!1859971 () Bool)

(declare-fun tp!1859972 () Bool)

(assert (=> b!6791071 (= e!4098944 (and tp!1859971 tp!1859972))))

(declare-fun b!6791072 () Bool)

(declare-fun tp!1859974 () Bool)

(assert (=> b!6791072 (= e!4098944 tp!1859974)))

(assert (=> b!6790218 (= tp!1859854 e!4098944)))

(declare-fun b!6791070 () Bool)

(assert (=> b!6791070 (= e!4098944 tp_is_empty!42475)))

(declare-fun b!6791073 () Bool)

(declare-fun tp!1859973 () Bool)

(declare-fun tp!1859975 () Bool)

(assert (=> b!6791073 (= e!4098944 (and tp!1859973 tp!1859975))))

(assert (= (and b!6790218 ((_ is ElementMatch!16611) (regTwo!33735 r!7292))) b!6791070))

(assert (= (and b!6790218 ((_ is Concat!25456) (regTwo!33735 r!7292))) b!6791071))

(assert (= (and b!6790218 ((_ is Star!16611) (regTwo!33735 r!7292))) b!6791072))

(assert (= (and b!6790218 ((_ is Union!16611) (regTwo!33735 r!7292))) b!6791073))

(declare-fun b_lambda!255787 () Bool)

(assert (= b_lambda!255773 (or b!6790215 b_lambda!255787)))

(declare-fun bs!1809428 () Bool)

(declare-fun d!2133763 () Bool)

(assert (= bs!1809428 (and d!2133763 b!6790215)))

(assert (=> bs!1809428 (= (dynLambda!26346 lambda!382514 lt!2446246) (derivationStepZipperUp!1765 lt!2446246 (h!72458 s!2326)))))

(assert (=> bs!1809428 m!7537888))

(assert (=> d!2133633 d!2133763))

(declare-fun b_lambda!255789 () Bool)

(assert (= b_lambda!255767 (or b!6790215 b_lambda!255789)))

(declare-fun bs!1809429 () Bool)

(declare-fun d!2133765 () Bool)

(assert (= bs!1809429 (and d!2133765 b!6790215)))

(assert (=> bs!1809429 (= (dynLambda!26346 lambda!382514 (h!72457 zl!343)) (derivationStepZipperUp!1765 (h!72457 zl!343) (h!72458 s!2326)))))

(assert (=> bs!1809429 m!7537854))

(assert (=> d!2133613 d!2133765))

(declare-fun b_lambda!255791 () Bool)

(assert (= b_lambda!255775 (or b!6790215 b_lambda!255791)))

(declare-fun bs!1809430 () Bool)

(declare-fun d!2133767 () Bool)

(assert (= bs!1809430 (and d!2133767 b!6790215)))

(assert (=> bs!1809430 (= (dynLambda!26346 lambda!382514 lt!2446239) (derivationStepZipperUp!1765 lt!2446239 (h!72458 s!2326)))))

(assert (=> bs!1809430 m!7537928))

(assert (=> d!2133663 d!2133767))

(declare-fun b_lambda!255793 () Bool)

(assert (= b_lambda!255769 (or b!6790215 b_lambda!255793)))

(declare-fun bs!1809431 () Bool)

(declare-fun d!2133769 () Bool)

(assert (= bs!1809431 (and d!2133769 b!6790215)))

(assert (=> bs!1809431 (= (dynLambda!26346 lambda!382514 lt!2446223) (derivationStepZipperUp!1765 lt!2446223 (h!72458 s!2326)))))

(assert (=> bs!1809431 m!7537872))

(assert (=> d!2133623 d!2133769))

(check-sat (not b!6791043) (not d!2133731) (not d!2133607) (not b!6791038) (not d!2133757) (not d!2133659) (not b!6790969) (not bm!616606) (not d!2133553) (not d!2133599) (not b!6791032) (not b!6791037) (not d!2133633) (not b!6790929) (not b!6790779) (not bm!616556) (not b!6790771) (not b!6790968) (not bm!616601) (not d!2133719) (not bm!616588) (not b_lambda!255787) (not d!2133623) (not b!6790965) (not b!6790928) (not d!2133617) (not bs!1809429) (not b!6790957) (not b!6790434) (not bm!616584) (not d!2133737) (not d!2133549) (not b!6790659) (not d!2133755) (not b!6791067) (not b!6790541) (not b_lambda!255791) (not d!2133747) (not d!2133717) (not b!6790647) (not b!6790576) (not b!6791052) (not bm!616547) (not b!6791072) (not b!6791009) (not b!6790944) (not b!6790812) (not b!6790927) (not bm!616605) (not b!6790437) (not d!2133591) (not bm!616598) (not b!6790562) (not b!6790774) (not d!2133555) (not bm!616608) (not d!2133749) (not d!2133733) (not b!6791059) (not d!2133643) (not b!6790974) (not d!2133551) (not b!6791012) (not b!6791073) tp_is_empty!42475 (not b!6791016) (not d!2133681) (not bm!616599) (not b!6790967) (not bm!616578) (not bs!1809428) (not b!6790950) (not d!2133585) (not b!6790988) (not d!2133697) (not b!6790961) (not d!2133761) (not b!6791065) (not bm!616600) (not b_lambda!255789) (not b!6791060) (not b!6790578) (not b!6791014) (not b!6790781) (not b!6791018) (not b!6790816) (not b!6790813) (not b!6790907) (not d!2133695) (not b!6790703) (not d!2133729) (not bm!616607) (not b!6790430) (not bs!1809430) (not b!6790775) (not bm!616585) (not b!6790955) (not d!2133745) (not bm!616549) (not b!6791055) (not bs!1809431) (not b!6790815) (not b!6791056) (not b!6791030) (not b!6791031) (not b!6790940) (not d!2133741) (not b!6790834) (not b!6791010) (not setNonEmpty!46487) (not b!6790960) (not d!2133735) (not b!6791058) (not b!6790435) (not d!2133691) (not b!6791071) (not b!6790431) (not b!6790661) (not d!2133559) (not b!6790930) (not b_lambda!255793) (not b!6790941) (not b!6790972) (not b!6790560) (not b!6790769) (not b!6790814) (not b!6790543) (not b!6790433) (not d!2133557) (not d!2133677) (not d!2133663) (not b!6790709) (not bm!616579) (not d!2133743) (not bm!616576) (not b!6791044) (not b!6791069) (not bm!616577) (not b!6791051) (not b!6791017) (not b!6791068) (not b!6791054) (not d!2133547) (not d!2133637) (not b!6790808) (not d!2133613) (not bm!616597) (not b!6790810) (not d!2133683) (not b!6790986))
(check-sat)

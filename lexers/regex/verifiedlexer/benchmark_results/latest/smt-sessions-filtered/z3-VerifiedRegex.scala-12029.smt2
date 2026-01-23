; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!674808 () Bool)

(assert start!674808)

(declare-fun b!7008257 () Bool)

(assert (=> b!7008257 true))

(declare-fun b!7008258 () Bool)

(assert (=> b!7008258 true))

(declare-fun b!7008259 () Bool)

(assert (=> b!7008259 true))

(declare-fun b!7008251 () Bool)

(declare-fun e!4212646 () Bool)

(declare-fun tp!1932063 () Bool)

(assert (=> b!7008251 (= e!4212646 tp!1932063)))

(declare-fun b!7008252 () Bool)

(declare-fun e!4212634 () Bool)

(declare-fun e!4212636 () Bool)

(assert (=> b!7008252 (= e!4212634 e!4212636)))

(declare-fun res!2859481 () Bool)

(assert (=> b!7008252 (=> res!2859481 e!4212636)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34880 0))(
  ( (C!34881 (val!27142 Int)) )
))
(declare-datatypes ((Regex!17305 0))(
  ( (ElementMatch!17305 (c!1301635 C!34880)) (Concat!26150 (regOne!35122 Regex!17305) (regTwo!35122 Regex!17305)) (EmptyExpr!17305) (Star!17305 (reg!17634 Regex!17305)) (EmptyLang!17305) (Union!17305 (regOne!35123 Regex!17305) (regTwo!35123 Regex!17305)) )
))
(declare-datatypes ((List!67460 0))(
  ( (Nil!67336) (Cons!67336 (h!73784 Regex!17305) (t!381215 List!67460)) )
))
(declare-datatypes ((Context!12602 0))(
  ( (Context!12603 (exprs!6801 List!67460)) )
))
(declare-fun lt!2502326 () (InoxSet Context!12602))

(declare-datatypes ((List!67461 0))(
  ( (Nil!67337) (Cons!67337 (h!73785 C!34880) (t!381216 List!67461)) )
))
(declare-fun s!7408 () List!67461)

(declare-fun matchZipper!2845 ((InoxSet Context!12602) List!67461) Bool)

(assert (=> b!7008252 (= res!2859481 (matchZipper!2845 lt!2502326 (t!381216 s!7408)))))

(declare-fun lt!2502323 () List!67460)

(declare-fun lambda!407714 () Int)

(declare-datatypes ((Unit!161288 0))(
  ( (Unit!161289) )
))
(declare-fun lt!2502325 () Unit!161288)

(declare-fun ct2!306 () Context!12602)

(declare-fun lemmaConcatPreservesForall!641 (List!67460 List!67460 Int) Unit!161288)

(assert (=> b!7008252 (= lt!2502325 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun b!7008253 () Bool)

(declare-fun e!4212648 () Bool)

(declare-fun forall!16221 (List!67460 Int) Bool)

(assert (=> b!7008253 (= e!4212648 (forall!16221 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun setNonEmpty!48293 () Bool)

(declare-fun tp!1932064 () Bool)

(declare-fun e!4212647 () Bool)

(declare-fun setRes!48293 () Bool)

(declare-fun setElem!48293 () Context!12602)

(declare-fun inv!86121 (Context!12602) Bool)

(assert (=> setNonEmpty!48293 (= setRes!48293 (and tp!1932064 (inv!86121 setElem!48293) e!4212647))))

(declare-fun z1!570 () (InoxSet Context!12602))

(declare-fun setRest!48293 () (InoxSet Context!12602))

(assert (=> setNonEmpty!48293 (= z1!570 ((_ map or) (store ((as const (Array Context!12602 Bool)) false) setElem!48293 true) setRest!48293))))

(declare-fun b!7008254 () Bool)

(declare-fun e!4212638 () Bool)

(assert (=> b!7008254 (= e!4212638 (matchZipper!2845 lt!2502326 (t!381216 s!7408)))))

(declare-fun setIsEmpty!48293 () Bool)

(assert (=> setIsEmpty!48293 setRes!48293))

(declare-fun b!7008255 () Bool)

(declare-fun e!4212633 () Bool)

(declare-fun e!4212639 () Bool)

(assert (=> b!7008255 (= e!4212633 e!4212639)))

(declare-fun res!2859491 () Bool)

(assert (=> b!7008255 (=> res!2859491 e!4212639)))

(declare-fun lt!2502321 () (InoxSet Context!12602))

(declare-fun lt!2502303 () (InoxSet Context!12602))

(assert (=> b!7008255 (= res!2859491 (not (= lt!2502321 lt!2502303)))))

(declare-fun lt!2502301 () (InoxSet Context!12602))

(assert (=> b!7008255 (= lt!2502303 ((_ map or) lt!2502301 lt!2502326))))

(declare-fun lt!2502311 () Context!12602)

(declare-fun derivationStepZipperUp!1955 (Context!12602 C!34880) (InoxSet Context!12602))

(assert (=> b!7008255 (= lt!2502326 (derivationStepZipperUp!1955 lt!2502311 (h!73785 s!7408)))))

(declare-fun lt!2502300 () Context!12602)

(declare-fun derivationStepZipperDown!2023 (Regex!17305 Context!12602 C!34880) (InoxSet Context!12602))

(assert (=> b!7008255 (= lt!2502301 (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502300)) lt!2502311 (h!73785 s!7408)))))

(declare-fun ++!15296 (List!67460 List!67460) List!67460)

(assert (=> b!7008255 (= lt!2502311 (Context!12603 (++!15296 lt!2502323 (exprs!6801 ct2!306))))))

(declare-fun lt!2502317 () Unit!161288)

(assert (=> b!7008255 (= lt!2502317 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun lt!2502306 () Unit!161288)

(assert (=> b!7008255 (= lt!2502306 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun b!7008256 () Bool)

(declare-fun e!4212640 () Bool)

(assert (=> b!7008256 (= e!4212640 e!4212648)))

(declare-fun res!2859485 () Bool)

(assert (=> b!7008256 (=> res!2859485 e!4212648)))

(assert (=> b!7008256 (= res!2859485 (not (forall!16221 lt!2502323 lambda!407714)))))

(declare-fun lt!2502297 () Context!12602)

(declare-fun appendTo!426 ((InoxSet Context!12602) Context!12602) (InoxSet Context!12602))

(assert (=> b!7008256 (= lt!2502301 (appendTo!426 (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502300)) lt!2502297 (h!73785 s!7408)) ct2!306))))

(declare-fun lt!2502304 () Unit!161288)

(assert (=> b!7008256 (= lt!2502304 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun lt!2502319 () Unit!161288)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!4 (Context!12602 Regex!17305 C!34880 Context!12602) Unit!161288)

(assert (=> b!7008256 (= lt!2502319 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!4 lt!2502297 (h!73784 (exprs!6801 lt!2502300)) (h!73785 s!7408) ct2!306))))

(declare-fun e!4212645 () Bool)

(declare-fun e!4212642 () Bool)

(assert (=> b!7008257 (= e!4212645 (not e!4212642))))

(declare-fun res!2859480 () Bool)

(assert (=> b!7008257 (=> res!2859480 e!4212642)))

(declare-fun lt!2502320 () (InoxSet Context!12602))

(assert (=> b!7008257 (= res!2859480 (not (matchZipper!2845 lt!2502320 s!7408)))))

(declare-fun lt!2502324 () Context!12602)

(assert (=> b!7008257 (= lt!2502320 (store ((as const (Array Context!12602 Bool)) false) lt!2502324 true))))

(declare-fun lt!2502299 () (InoxSet Context!12602))

(declare-fun lambda!407712 () Int)

(declare-fun getWitness!1240 ((InoxSet Context!12602) Int) Context!12602)

(assert (=> b!7008257 (= lt!2502324 (getWitness!1240 lt!2502299 lambda!407712))))

(declare-datatypes ((List!67462 0))(
  ( (Nil!67338) (Cons!67338 (h!73786 Context!12602) (t!381217 List!67462)) )
))
(declare-fun lt!2502308 () List!67462)

(declare-fun exists!3142 (List!67462 Int) Bool)

(assert (=> b!7008257 (exists!3142 lt!2502308 lambda!407712)))

(declare-fun lt!2502310 () Unit!161288)

(declare-fun lemmaZipperMatchesExistsMatchingContext!274 (List!67462 List!67461) Unit!161288)

(assert (=> b!7008257 (= lt!2502310 (lemmaZipperMatchesExistsMatchingContext!274 lt!2502308 s!7408))))

(declare-fun toList!10665 ((InoxSet Context!12602)) List!67462)

(assert (=> b!7008257 (= lt!2502308 (toList!10665 lt!2502299))))

(declare-fun e!4212641 () Bool)

(assert (=> b!7008258 (= e!4212642 e!4212641)))

(declare-fun res!2859488 () Bool)

(assert (=> b!7008258 (=> res!2859488 e!4212641)))

(declare-fun lt!2502316 () Context!12602)

(assert (=> b!7008258 (= res!2859488 (or (not (= lt!2502316 lt!2502324)) (not (select z1!570 lt!2502300))))))

(assert (=> b!7008258 (= lt!2502316 (Context!12603 (++!15296 (exprs!6801 lt!2502300) (exprs!6801 ct2!306))))))

(declare-fun lt!2502315 () Unit!161288)

(assert (=> b!7008258 (= lt!2502315 (lemmaConcatPreservesForall!641 (exprs!6801 lt!2502300) (exprs!6801 ct2!306) lambda!407714))))

(declare-fun lambda!407713 () Int)

(declare-fun mapPost2!160 ((InoxSet Context!12602) Int Context!12602) Context!12602)

(assert (=> b!7008258 (= lt!2502300 (mapPost2!160 z1!570 lambda!407713 lt!2502324))))

(declare-fun e!4212644 () Bool)

(declare-fun e!4212643 () Bool)

(assert (=> b!7008259 (= e!4212644 e!4212643)))

(declare-fun res!2859484 () Bool)

(assert (=> b!7008259 (=> res!2859484 e!4212643)))

(declare-fun lt!2502309 () (InoxSet Context!12602))

(declare-fun derivationStepZipper!2785 ((InoxSet Context!12602) C!34880) (InoxSet Context!12602))

(assert (=> b!7008259 (= res!2859484 (not (= (derivationStepZipper!2785 lt!2502309 (h!73785 s!7408)) lt!2502321)))))

(declare-fun lambda!407715 () Int)

(declare-fun flatMap!2291 ((InoxSet Context!12602) Int) (InoxSet Context!12602))

(assert (=> b!7008259 (= (flatMap!2291 lt!2502309 lambda!407715) (derivationStepZipperUp!1955 lt!2502316 (h!73785 s!7408)))))

(declare-fun lt!2502322 () Unit!161288)

(declare-fun lemmaFlatMapOnSingletonSet!1806 ((InoxSet Context!12602) Context!12602 Int) Unit!161288)

(assert (=> b!7008259 (= lt!2502322 (lemmaFlatMapOnSingletonSet!1806 lt!2502309 lt!2502316 lambda!407715))))

(assert (=> b!7008259 (= lt!2502321 (derivationStepZipperUp!1955 lt!2502316 (h!73785 s!7408)))))

(declare-fun lt!2502296 () Unit!161288)

(assert (=> b!7008259 (= lt!2502296 (lemmaConcatPreservesForall!641 (exprs!6801 lt!2502300) (exprs!6801 ct2!306) lambda!407714))))

(declare-fun b!7008260 () Bool)

(declare-fun res!2859483 () Bool)

(assert (=> b!7008260 (=> res!2859483 e!4212643)))

(declare-fun isEmpty!39325 (List!67460) Bool)

(assert (=> b!7008260 (= res!2859483 (isEmpty!39325 (exprs!6801 lt!2502300)))))

(declare-fun b!7008261 () Bool)

(declare-fun res!2859490 () Bool)

(assert (=> b!7008261 (=> res!2859490 e!4212643)))

(get-info :version)

(assert (=> b!7008261 (= res!2859490 (not ((_ is Cons!67336) (exprs!6801 lt!2502300))))))

(declare-fun b!7008262 () Bool)

(declare-fun res!2859495 () Bool)

(assert (=> b!7008262 (=> (not res!2859495) (not e!4212645))))

(assert (=> b!7008262 (= res!2859495 ((_ is Cons!67337) s!7408))))

(declare-fun b!7008263 () Bool)

(declare-fun res!2859496 () Bool)

(assert (=> b!7008263 (=> res!2859496 e!4212642)))

(assert (=> b!7008263 (= res!2859496 (not (select lt!2502299 lt!2502324)))))

(declare-fun b!7008264 () Bool)

(assert (=> b!7008264 (= e!4212639 e!4212634)))

(declare-fun res!2859482 () Bool)

(assert (=> b!7008264 (=> res!2859482 e!4212634)))

(declare-fun e!4212637 () Bool)

(assert (=> b!7008264 (= res!2859482 e!4212637)))

(declare-fun res!2859489 () Bool)

(assert (=> b!7008264 (=> (not res!2859489) (not e!4212637))))

(declare-fun lt!2502302 () Bool)

(declare-fun lt!2502295 () Bool)

(assert (=> b!7008264 (= res!2859489 (not (= lt!2502302 lt!2502295)))))

(assert (=> b!7008264 (= lt!2502302 (matchZipper!2845 lt!2502321 (t!381216 s!7408)))))

(declare-fun lt!2502318 () Unit!161288)

(assert (=> b!7008264 (= lt!2502318 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(assert (=> b!7008264 (= (matchZipper!2845 lt!2502303 (t!381216 s!7408)) e!4212638)))

(declare-fun res!2859494 () Bool)

(assert (=> b!7008264 (=> res!2859494 e!4212638)))

(assert (=> b!7008264 (= res!2859494 lt!2502295)))

(assert (=> b!7008264 (= lt!2502295 (matchZipper!2845 lt!2502301 (t!381216 s!7408)))))

(declare-fun lt!2502305 () Unit!161288)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1478 ((InoxSet Context!12602) (InoxSet Context!12602) List!67461) Unit!161288)

(assert (=> b!7008264 (= lt!2502305 (lemmaZipperConcatMatchesSameAsBothZippers!1478 lt!2502301 lt!2502326 (t!381216 s!7408)))))

(declare-fun lt!2502294 () Unit!161288)

(assert (=> b!7008264 (= lt!2502294 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun lt!2502312 () Unit!161288)

(assert (=> b!7008264 (= lt!2502312 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun b!7008265 () Bool)

(assert (=> b!7008265 (= e!4212637 (not (matchZipper!2845 lt!2502326 (t!381216 s!7408))))))

(declare-fun lt!2502307 () Unit!161288)

(assert (=> b!7008265 (= lt!2502307 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun b!7008266 () Bool)

(declare-fun tp!1932061 () Bool)

(assert (=> b!7008266 (= e!4212647 tp!1932061)))

(declare-fun b!7008267 () Bool)

(declare-fun res!2859493 () Bool)

(assert (=> b!7008267 (=> res!2859493 e!4212634)))

(assert (=> b!7008267 (= res!2859493 (not lt!2502302))))

(declare-fun b!7008268 () Bool)

(declare-fun e!4212635 () Bool)

(declare-fun tp_is_empty!43835 () Bool)

(declare-fun tp!1932062 () Bool)

(assert (=> b!7008268 (= e!4212635 (and tp_is_empty!43835 tp!1932062))))

(declare-fun b!7008269 () Bool)

(assert (=> b!7008269 (= e!4212643 e!4212633)))

(declare-fun res!2859492 () Bool)

(assert (=> b!7008269 (=> res!2859492 e!4212633)))

(declare-fun nullable!7065 (Regex!17305) Bool)

(assert (=> b!7008269 (= res!2859492 (not (nullable!7065 (h!73784 (exprs!6801 lt!2502300)))))))

(assert (=> b!7008269 (= lt!2502297 (Context!12603 lt!2502323))))

(declare-fun tail!13372 (List!67460) List!67460)

(assert (=> b!7008269 (= lt!2502323 (tail!13372 (exprs!6801 lt!2502300)))))

(declare-fun b!7008270 () Bool)

(assert (=> b!7008270 (= e!4212641 e!4212644)))

(declare-fun res!2859487 () Bool)

(assert (=> b!7008270 (=> res!2859487 e!4212644)))

(assert (=> b!7008270 (= res!2859487 (not (= lt!2502309 lt!2502320)))))

(assert (=> b!7008270 (= lt!2502309 (store ((as const (Array Context!12602 Bool)) false) lt!2502316 true))))

(declare-fun lt!2502313 () Unit!161288)

(assert (=> b!7008270 (= lt!2502313 (lemmaConcatPreservesForall!641 (exprs!6801 lt!2502300) (exprs!6801 ct2!306) lambda!407714))))

(declare-fun res!2859497 () Bool)

(assert (=> start!674808 (=> (not res!2859497) (not e!4212645))))

(assert (=> start!674808 (= res!2859497 (matchZipper!2845 lt!2502299 s!7408))))

(assert (=> start!674808 (= lt!2502299 (appendTo!426 z1!570 ct2!306))))

(assert (=> start!674808 e!4212645))

(declare-fun condSetEmpty!48293 () Bool)

(assert (=> start!674808 (= condSetEmpty!48293 (= z1!570 ((as const (Array Context!12602 Bool)) false)))))

(assert (=> start!674808 setRes!48293))

(assert (=> start!674808 (and (inv!86121 ct2!306) e!4212646)))

(assert (=> start!674808 e!4212635))

(declare-fun b!7008271 () Bool)

(assert (=> b!7008271 (= e!4212636 e!4212640)))

(declare-fun res!2859486 () Bool)

(assert (=> b!7008271 (=> res!2859486 e!4212640)))

(assert (=> b!7008271 (= res!2859486 (not lt!2502295))))

(declare-fun lt!2502314 () Unit!161288)

(assert (=> b!7008271 (= lt!2502314 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(declare-fun lt!2502298 () Unit!161288)

(assert (=> b!7008271 (= lt!2502298 (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(assert (= (and start!674808 res!2859497) b!7008262))

(assert (= (and b!7008262 res!2859495) b!7008257))

(assert (= (and b!7008257 (not res!2859480)) b!7008263))

(assert (= (and b!7008263 (not res!2859496)) b!7008258))

(assert (= (and b!7008258 (not res!2859488)) b!7008270))

(assert (= (and b!7008270 (not res!2859487)) b!7008259))

(assert (= (and b!7008259 (not res!2859484)) b!7008261))

(assert (= (and b!7008261 (not res!2859490)) b!7008260))

(assert (= (and b!7008260 (not res!2859483)) b!7008269))

(assert (= (and b!7008269 (not res!2859492)) b!7008255))

(assert (= (and b!7008255 (not res!2859491)) b!7008264))

(assert (= (and b!7008264 (not res!2859494)) b!7008254))

(assert (= (and b!7008264 res!2859489) b!7008265))

(assert (= (and b!7008264 (not res!2859482)) b!7008267))

(assert (= (and b!7008267 (not res!2859493)) b!7008252))

(assert (= (and b!7008252 (not res!2859481)) b!7008271))

(assert (= (and b!7008271 (not res!2859486)) b!7008256))

(assert (= (and b!7008256 (not res!2859485)) b!7008253))

(assert (= (and start!674808 condSetEmpty!48293) setIsEmpty!48293))

(assert (= (and start!674808 (not condSetEmpty!48293)) setNonEmpty!48293))

(assert (= setNonEmpty!48293 b!7008266))

(assert (= start!674808 b!7008251))

(assert (= (and start!674808 ((_ is Cons!67337) s!7408)) b!7008268))

(declare-fun m!7705560 () Bool)

(assert (=> start!674808 m!7705560))

(declare-fun m!7705562 () Bool)

(assert (=> start!674808 m!7705562))

(declare-fun m!7705564 () Bool)

(assert (=> start!674808 m!7705564))

(declare-fun m!7705566 () Bool)

(assert (=> b!7008256 m!7705566))

(declare-fun m!7705568 () Bool)

(assert (=> b!7008256 m!7705568))

(declare-fun m!7705570 () Bool)

(assert (=> b!7008256 m!7705570))

(declare-fun m!7705572 () Bool)

(assert (=> b!7008256 m!7705572))

(assert (=> b!7008256 m!7705572))

(declare-fun m!7705574 () Bool)

(assert (=> b!7008256 m!7705574))

(declare-fun m!7705576 () Bool)

(assert (=> b!7008265 m!7705576))

(assert (=> b!7008265 m!7705566))

(assert (=> b!7008271 m!7705566))

(assert (=> b!7008271 m!7705566))

(assert (=> b!7008264 m!7705566))

(declare-fun m!7705578 () Bool)

(assert (=> b!7008264 m!7705578))

(assert (=> b!7008264 m!7705566))

(declare-fun m!7705580 () Bool)

(assert (=> b!7008264 m!7705580))

(declare-fun m!7705582 () Bool)

(assert (=> b!7008264 m!7705582))

(declare-fun m!7705584 () Bool)

(assert (=> b!7008264 m!7705584))

(assert (=> b!7008264 m!7705566))

(declare-fun m!7705586 () Bool)

(assert (=> b!7008259 m!7705586))

(declare-fun m!7705588 () Bool)

(assert (=> b!7008259 m!7705588))

(declare-fun m!7705590 () Bool)

(assert (=> b!7008259 m!7705590))

(declare-fun m!7705592 () Bool)

(assert (=> b!7008259 m!7705592))

(declare-fun m!7705594 () Bool)

(assert (=> b!7008259 m!7705594))

(declare-fun m!7705596 () Bool)

(assert (=> b!7008255 m!7705596))

(declare-fun m!7705598 () Bool)

(assert (=> b!7008255 m!7705598))

(assert (=> b!7008255 m!7705566))

(assert (=> b!7008255 m!7705566))

(declare-fun m!7705600 () Bool)

(assert (=> b!7008255 m!7705600))

(declare-fun m!7705602 () Bool)

(assert (=> b!7008258 m!7705602))

(declare-fun m!7705604 () Bool)

(assert (=> b!7008258 m!7705604))

(assert (=> b!7008258 m!7705586))

(declare-fun m!7705606 () Bool)

(assert (=> b!7008258 m!7705606))

(declare-fun m!7705608 () Bool)

(assert (=> b!7008253 m!7705608))

(declare-fun m!7705610 () Bool)

(assert (=> b!7008260 m!7705610))

(assert (=> b!7008254 m!7705576))

(declare-fun m!7705612 () Bool)

(assert (=> b!7008269 m!7705612))

(declare-fun m!7705614 () Bool)

(assert (=> b!7008269 m!7705614))

(declare-fun m!7705616 () Bool)

(assert (=> b!7008270 m!7705616))

(assert (=> b!7008270 m!7705586))

(declare-fun m!7705618 () Bool)

(assert (=> b!7008257 m!7705618))

(declare-fun m!7705620 () Bool)

(assert (=> b!7008257 m!7705620))

(declare-fun m!7705622 () Bool)

(assert (=> b!7008257 m!7705622))

(declare-fun m!7705624 () Bool)

(assert (=> b!7008257 m!7705624))

(declare-fun m!7705626 () Bool)

(assert (=> b!7008257 m!7705626))

(declare-fun m!7705628 () Bool)

(assert (=> b!7008257 m!7705628))

(declare-fun m!7705630 () Bool)

(assert (=> b!7008263 m!7705630))

(declare-fun m!7705632 () Bool)

(assert (=> setNonEmpty!48293 m!7705632))

(assert (=> b!7008252 m!7705576))

(assert (=> b!7008252 m!7705566))

(check-sat (not b!7008256) (not b!7008266) (not b!7008264) (not b!7008257) (not b!7008254) (not b!7008271) (not b!7008252) (not b!7008255) (not start!674808) (not b!7008259) (not setNonEmpty!48293) (not b!7008269) (not b!7008270) (not b!7008258) (not b!7008260) (not b!7008265) (not b!7008253) (not b!7008268) tp_is_empty!43835 (not b!7008251))
(check-sat)
(get-model)

(declare-fun bs!1865876 () Bool)

(declare-fun d!2184786 () Bool)

(assert (= bs!1865876 (and d!2184786 b!7008258)))

(declare-fun lambda!407742 () Int)

(assert (=> bs!1865876 (= lambda!407742 lambda!407713)))

(assert (=> d!2184786 true))

(declare-fun map!15598 ((InoxSet Context!12602) Int) (InoxSet Context!12602))

(assert (=> d!2184786 (= (appendTo!426 (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502300)) lt!2502297 (h!73785 s!7408)) ct2!306) (map!15598 (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502300)) lt!2502297 (h!73785 s!7408)) lambda!407742))))

(declare-fun bs!1865877 () Bool)

(assert (= bs!1865877 d!2184786))

(assert (=> bs!1865877 m!7705572))

(declare-fun m!7705834 () Bool)

(assert (=> bs!1865877 m!7705834))

(assert (=> b!7008256 d!2184786))

(declare-fun bs!1865878 () Bool)

(declare-fun d!2184788 () Bool)

(assert (= bs!1865878 (and d!2184788 b!7008258)))

(declare-fun lambda!407745 () Int)

(assert (=> bs!1865878 (= lambda!407745 lambda!407714)))

(assert (=> d!2184788 (= (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502300)) (Context!12603 (++!15296 (exprs!6801 lt!2502297) (exprs!6801 ct2!306))) (h!73785 s!7408)) (appendTo!426 (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502300)) lt!2502297 (h!73785 s!7408)) ct2!306))))

(declare-fun lt!2502369 () Unit!161288)

(assert (=> d!2184788 (= lt!2502369 (lemmaConcatPreservesForall!641 (exprs!6801 lt!2502297) (exprs!6801 ct2!306) lambda!407745))))

(declare-fun lt!2502368 () Unit!161288)

(declare-fun choose!52647 (Context!12602 Regex!17305 C!34880 Context!12602) Unit!161288)

(assert (=> d!2184788 (= lt!2502368 (choose!52647 lt!2502297 (h!73784 (exprs!6801 lt!2502300)) (h!73785 s!7408) ct2!306))))

(declare-fun validRegex!8882 (Regex!17305) Bool)

(assert (=> d!2184788 (validRegex!8882 (h!73784 (exprs!6801 lt!2502300)))))

(assert (=> d!2184788 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!4 lt!2502297 (h!73784 (exprs!6801 lt!2502300)) (h!73785 s!7408) ct2!306) lt!2502368)))

(declare-fun bs!1865879 () Bool)

(assert (= bs!1865879 d!2184788))

(declare-fun m!7705836 () Bool)

(assert (=> bs!1865879 m!7705836))

(declare-fun m!7705838 () Bool)

(assert (=> bs!1865879 m!7705838))

(declare-fun m!7705840 () Bool)

(assert (=> bs!1865879 m!7705840))

(declare-fun m!7705842 () Bool)

(assert (=> bs!1865879 m!7705842))

(assert (=> bs!1865879 m!7705572))

(assert (=> bs!1865879 m!7705574))

(declare-fun m!7705844 () Bool)

(assert (=> bs!1865879 m!7705844))

(assert (=> bs!1865879 m!7705572))

(assert (=> b!7008256 d!2184788))

(declare-fun d!2184790 () Bool)

(declare-fun res!2859540 () Bool)

(declare-fun e!4212735 () Bool)

(assert (=> d!2184790 (=> res!2859540 e!4212735)))

(assert (=> d!2184790 (= res!2859540 ((_ is Nil!67336) lt!2502323))))

(assert (=> d!2184790 (= (forall!16221 lt!2502323 lambda!407714) e!4212735)))

(declare-fun b!7008419 () Bool)

(declare-fun e!4212736 () Bool)

(assert (=> b!7008419 (= e!4212735 e!4212736)))

(declare-fun res!2859541 () Bool)

(assert (=> b!7008419 (=> (not res!2859541) (not e!4212736))))

(declare-fun dynLambda!27076 (Int Regex!17305) Bool)

(assert (=> b!7008419 (= res!2859541 (dynLambda!27076 lambda!407714 (h!73784 lt!2502323)))))

(declare-fun b!7008420 () Bool)

(assert (=> b!7008420 (= e!4212736 (forall!16221 (t!381215 lt!2502323) lambda!407714))))

(assert (= (and d!2184790 (not res!2859540)) b!7008419))

(assert (= (and b!7008419 res!2859541) b!7008420))

(declare-fun b_lambda!264263 () Bool)

(assert (=> (not b_lambda!264263) (not b!7008419)))

(declare-fun m!7705846 () Bool)

(assert (=> b!7008419 m!7705846))

(declare-fun m!7705848 () Bool)

(assert (=> b!7008420 m!7705848))

(assert (=> b!7008256 d!2184790))

(declare-fun b!7008443 () Bool)

(declare-fun e!4212749 () (InoxSet Context!12602))

(declare-fun call!636504 () (InoxSet Context!12602))

(declare-fun call!636501 () (InoxSet Context!12602))

(assert (=> b!7008443 (= e!4212749 ((_ map or) call!636504 call!636501))))

(declare-fun b!7008444 () Bool)

(declare-fun e!4212754 () Bool)

(assert (=> b!7008444 (= e!4212754 (nullable!7065 (regOne!35122 (h!73784 (exprs!6801 lt!2502300)))))))

(declare-fun b!7008445 () Bool)

(declare-fun e!4212751 () (InoxSet Context!12602))

(assert (=> b!7008445 (= e!4212751 (store ((as const (Array Context!12602 Bool)) false) lt!2502297 true))))

(declare-fun c!1301695 () Bool)

(declare-fun call!636502 () List!67460)

(declare-fun bm!636495 () Bool)

(assert (=> bm!636495 (= call!636504 (derivationStepZipperDown!2023 (ite c!1301695 (regOne!35123 (h!73784 (exprs!6801 lt!2502300))) (regOne!35122 (h!73784 (exprs!6801 lt!2502300)))) (ite c!1301695 lt!2502297 (Context!12603 call!636502)) (h!73785 s!7408)))))

(declare-fun b!7008446 () Bool)

(declare-fun e!4212752 () (InoxSet Context!12602))

(declare-fun call!636503 () (InoxSet Context!12602))

(assert (=> b!7008446 (= e!4212752 ((_ map or) call!636504 call!636503))))

(declare-fun bm!636496 () Bool)

(assert (=> bm!636496 (= call!636503 call!636501)))

(declare-fun b!7008447 () Bool)

(declare-fun e!4212753 () (InoxSet Context!12602))

(assert (=> b!7008447 (= e!4212752 e!4212753)))

(declare-fun c!1301698 () Bool)

(assert (=> b!7008447 (= c!1301698 ((_ is Concat!26150) (h!73784 (exprs!6801 lt!2502300))))))

(declare-fun bm!636497 () Bool)

(declare-fun c!1301697 () Bool)

(declare-fun $colon$colon!2523 (List!67460 Regex!17305) List!67460)

(assert (=> bm!636497 (= call!636502 ($colon$colon!2523 (exprs!6801 lt!2502297) (ite (or c!1301697 c!1301698) (regTwo!35122 (h!73784 (exprs!6801 lt!2502300))) (h!73784 (exprs!6801 lt!2502300)))))))

(declare-fun b!7008448 () Bool)

(declare-fun e!4212750 () (InoxSet Context!12602))

(assert (=> b!7008448 (= e!4212750 ((as const (Array Context!12602 Bool)) false))))

(declare-fun d!2184792 () Bool)

(declare-fun c!1301694 () Bool)

(assert (=> d!2184792 (= c!1301694 (and ((_ is ElementMatch!17305) (h!73784 (exprs!6801 lt!2502300))) (= (c!1301635 (h!73784 (exprs!6801 lt!2502300))) (h!73785 s!7408))))))

(assert (=> d!2184792 (= (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502300)) lt!2502297 (h!73785 s!7408)) e!4212751)))

(declare-fun bm!636498 () Bool)

(declare-fun call!636500 () List!67460)

(assert (=> bm!636498 (= call!636500 call!636502)))

(declare-fun b!7008449 () Bool)

(assert (=> b!7008449 (= e!4212751 e!4212749)))

(assert (=> b!7008449 (= c!1301695 ((_ is Union!17305) (h!73784 (exprs!6801 lt!2502300))))))

(declare-fun bm!636499 () Bool)

(declare-fun call!636505 () (InoxSet Context!12602))

(assert (=> bm!636499 (= call!636505 call!636503)))

(declare-fun b!7008450 () Bool)

(assert (=> b!7008450 (= c!1301697 e!4212754)))

(declare-fun res!2859544 () Bool)

(assert (=> b!7008450 (=> (not res!2859544) (not e!4212754))))

(assert (=> b!7008450 (= res!2859544 ((_ is Concat!26150) (h!73784 (exprs!6801 lt!2502300))))))

(assert (=> b!7008450 (= e!4212749 e!4212752)))

(declare-fun b!7008451 () Bool)

(assert (=> b!7008451 (= e!4212753 call!636505)))

(declare-fun b!7008452 () Bool)

(declare-fun c!1301696 () Bool)

(assert (=> b!7008452 (= c!1301696 ((_ is Star!17305) (h!73784 (exprs!6801 lt!2502300))))))

(assert (=> b!7008452 (= e!4212753 e!4212750)))

(declare-fun bm!636500 () Bool)

(assert (=> bm!636500 (= call!636501 (derivationStepZipperDown!2023 (ite c!1301695 (regTwo!35123 (h!73784 (exprs!6801 lt!2502300))) (ite c!1301697 (regTwo!35122 (h!73784 (exprs!6801 lt!2502300))) (ite c!1301698 (regOne!35122 (h!73784 (exprs!6801 lt!2502300))) (reg!17634 (h!73784 (exprs!6801 lt!2502300)))))) (ite (or c!1301695 c!1301697) lt!2502297 (Context!12603 call!636500)) (h!73785 s!7408)))))

(declare-fun b!7008453 () Bool)

(assert (=> b!7008453 (= e!4212750 call!636505)))

(assert (= (and d!2184792 c!1301694) b!7008445))

(assert (= (and d!2184792 (not c!1301694)) b!7008449))

(assert (= (and b!7008449 c!1301695) b!7008443))

(assert (= (and b!7008449 (not c!1301695)) b!7008450))

(assert (= (and b!7008450 res!2859544) b!7008444))

(assert (= (and b!7008450 c!1301697) b!7008446))

(assert (= (and b!7008450 (not c!1301697)) b!7008447))

(assert (= (and b!7008447 c!1301698) b!7008451))

(assert (= (and b!7008447 (not c!1301698)) b!7008452))

(assert (= (and b!7008452 c!1301696) b!7008453))

(assert (= (and b!7008452 (not c!1301696)) b!7008448))

(assert (= (or b!7008451 b!7008453) bm!636498))

(assert (= (or b!7008451 b!7008453) bm!636499))

(assert (= (or b!7008446 bm!636499) bm!636496))

(assert (= (or b!7008446 bm!636498) bm!636497))

(assert (= (or b!7008443 b!7008446) bm!636495))

(assert (= (or b!7008443 bm!636496) bm!636500))

(declare-fun m!7705850 () Bool)

(assert (=> bm!636495 m!7705850))

(declare-fun m!7705852 () Bool)

(assert (=> b!7008445 m!7705852))

(declare-fun m!7705854 () Bool)

(assert (=> bm!636500 m!7705854))

(declare-fun m!7705856 () Bool)

(assert (=> bm!636497 m!7705856))

(declare-fun m!7705858 () Bool)

(assert (=> b!7008444 m!7705858))

(assert (=> b!7008256 d!2184792))

(declare-fun d!2184794 () Bool)

(assert (=> d!2184794 (forall!16221 (++!15296 lt!2502323 (exprs!6801 ct2!306)) lambda!407714)))

(declare-fun lt!2502372 () Unit!161288)

(declare-fun choose!52648 (List!67460 List!67460 Int) Unit!161288)

(assert (=> d!2184794 (= lt!2502372 (choose!52648 lt!2502323 (exprs!6801 ct2!306) lambda!407714))))

(assert (=> d!2184794 (forall!16221 lt!2502323 lambda!407714)))

(assert (=> d!2184794 (= (lemmaConcatPreservesForall!641 lt!2502323 (exprs!6801 ct2!306) lambda!407714) lt!2502372)))

(declare-fun bs!1865880 () Bool)

(assert (= bs!1865880 d!2184794))

(assert (=> bs!1865880 m!7705598))

(assert (=> bs!1865880 m!7705598))

(declare-fun m!7705860 () Bool)

(assert (=> bs!1865880 m!7705860))

(declare-fun m!7705862 () Bool)

(assert (=> bs!1865880 m!7705862))

(assert (=> bs!1865880 m!7705570))

(assert (=> b!7008256 d!2184794))

(declare-fun b!7008454 () Bool)

(declare-fun e!4212755 () (InoxSet Context!12602))

(declare-fun call!636510 () (InoxSet Context!12602))

(declare-fun call!636507 () (InoxSet Context!12602))

(assert (=> b!7008454 (= e!4212755 ((_ map or) call!636510 call!636507))))

(declare-fun b!7008455 () Bool)

(declare-fun e!4212760 () Bool)

(assert (=> b!7008455 (= e!4212760 (nullable!7065 (regOne!35122 (h!73784 (exprs!6801 lt!2502300)))))))

(declare-fun b!7008456 () Bool)

(declare-fun e!4212757 () (InoxSet Context!12602))

(assert (=> b!7008456 (= e!4212757 (store ((as const (Array Context!12602 Bool)) false) lt!2502311 true))))

(declare-fun c!1301700 () Bool)

(declare-fun call!636508 () List!67460)

(declare-fun bm!636501 () Bool)

(assert (=> bm!636501 (= call!636510 (derivationStepZipperDown!2023 (ite c!1301700 (regOne!35123 (h!73784 (exprs!6801 lt!2502300))) (regOne!35122 (h!73784 (exprs!6801 lt!2502300)))) (ite c!1301700 lt!2502311 (Context!12603 call!636508)) (h!73785 s!7408)))))

(declare-fun b!7008457 () Bool)

(declare-fun e!4212758 () (InoxSet Context!12602))

(declare-fun call!636509 () (InoxSet Context!12602))

(assert (=> b!7008457 (= e!4212758 ((_ map or) call!636510 call!636509))))

(declare-fun bm!636502 () Bool)

(assert (=> bm!636502 (= call!636509 call!636507)))

(declare-fun b!7008458 () Bool)

(declare-fun e!4212759 () (InoxSet Context!12602))

(assert (=> b!7008458 (= e!4212758 e!4212759)))

(declare-fun c!1301703 () Bool)

(assert (=> b!7008458 (= c!1301703 ((_ is Concat!26150) (h!73784 (exprs!6801 lt!2502300))))))

(declare-fun bm!636503 () Bool)

(declare-fun c!1301702 () Bool)

(assert (=> bm!636503 (= call!636508 ($colon$colon!2523 (exprs!6801 lt!2502311) (ite (or c!1301702 c!1301703) (regTwo!35122 (h!73784 (exprs!6801 lt!2502300))) (h!73784 (exprs!6801 lt!2502300)))))))

(declare-fun b!7008459 () Bool)

(declare-fun e!4212756 () (InoxSet Context!12602))

(assert (=> b!7008459 (= e!4212756 ((as const (Array Context!12602 Bool)) false))))

(declare-fun d!2184796 () Bool)

(declare-fun c!1301699 () Bool)

(assert (=> d!2184796 (= c!1301699 (and ((_ is ElementMatch!17305) (h!73784 (exprs!6801 lt!2502300))) (= (c!1301635 (h!73784 (exprs!6801 lt!2502300))) (h!73785 s!7408))))))

(assert (=> d!2184796 (= (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502300)) lt!2502311 (h!73785 s!7408)) e!4212757)))

(declare-fun bm!636504 () Bool)

(declare-fun call!636506 () List!67460)

(assert (=> bm!636504 (= call!636506 call!636508)))

(declare-fun b!7008460 () Bool)

(assert (=> b!7008460 (= e!4212757 e!4212755)))

(assert (=> b!7008460 (= c!1301700 ((_ is Union!17305) (h!73784 (exprs!6801 lt!2502300))))))

(declare-fun bm!636505 () Bool)

(declare-fun call!636511 () (InoxSet Context!12602))

(assert (=> bm!636505 (= call!636511 call!636509)))

(declare-fun b!7008461 () Bool)

(assert (=> b!7008461 (= c!1301702 e!4212760)))

(declare-fun res!2859545 () Bool)

(assert (=> b!7008461 (=> (not res!2859545) (not e!4212760))))

(assert (=> b!7008461 (= res!2859545 ((_ is Concat!26150) (h!73784 (exprs!6801 lt!2502300))))))

(assert (=> b!7008461 (= e!4212755 e!4212758)))

(declare-fun b!7008462 () Bool)

(assert (=> b!7008462 (= e!4212759 call!636511)))

(declare-fun b!7008463 () Bool)

(declare-fun c!1301701 () Bool)

(assert (=> b!7008463 (= c!1301701 ((_ is Star!17305) (h!73784 (exprs!6801 lt!2502300))))))

(assert (=> b!7008463 (= e!4212759 e!4212756)))

(declare-fun bm!636506 () Bool)

(assert (=> bm!636506 (= call!636507 (derivationStepZipperDown!2023 (ite c!1301700 (regTwo!35123 (h!73784 (exprs!6801 lt!2502300))) (ite c!1301702 (regTwo!35122 (h!73784 (exprs!6801 lt!2502300))) (ite c!1301703 (regOne!35122 (h!73784 (exprs!6801 lt!2502300))) (reg!17634 (h!73784 (exprs!6801 lt!2502300)))))) (ite (or c!1301700 c!1301702) lt!2502311 (Context!12603 call!636506)) (h!73785 s!7408)))))

(declare-fun b!7008464 () Bool)

(assert (=> b!7008464 (= e!4212756 call!636511)))

(assert (= (and d!2184796 c!1301699) b!7008456))

(assert (= (and d!2184796 (not c!1301699)) b!7008460))

(assert (= (and b!7008460 c!1301700) b!7008454))

(assert (= (and b!7008460 (not c!1301700)) b!7008461))

(assert (= (and b!7008461 res!2859545) b!7008455))

(assert (= (and b!7008461 c!1301702) b!7008457))

(assert (= (and b!7008461 (not c!1301702)) b!7008458))

(assert (= (and b!7008458 c!1301703) b!7008462))

(assert (= (and b!7008458 (not c!1301703)) b!7008463))

(assert (= (and b!7008463 c!1301701) b!7008464))

(assert (= (and b!7008463 (not c!1301701)) b!7008459))

(assert (= (or b!7008462 b!7008464) bm!636504))

(assert (= (or b!7008462 b!7008464) bm!636505))

(assert (= (or b!7008457 bm!636505) bm!636502))

(assert (= (or b!7008457 bm!636504) bm!636503))

(assert (= (or b!7008454 b!7008457) bm!636501))

(assert (= (or b!7008454 bm!636502) bm!636506))

(declare-fun m!7705864 () Bool)

(assert (=> bm!636501 m!7705864))

(declare-fun m!7705866 () Bool)

(assert (=> b!7008456 m!7705866))

(declare-fun m!7705868 () Bool)

(assert (=> bm!636506 m!7705868))

(declare-fun m!7705870 () Bool)

(assert (=> bm!636503 m!7705870))

(assert (=> b!7008455 m!7705858))

(assert (=> b!7008255 d!2184796))

(assert (=> b!7008255 d!2184794))

(declare-fun b!7008476 () Bool)

(declare-fun e!4212767 () Bool)

(assert (=> b!7008476 (= e!4212767 (nullable!7065 (h!73784 (exprs!6801 lt!2502311))))))

(declare-fun b!7008477 () Bool)

(declare-fun call!636514 () (InoxSet Context!12602))

(declare-fun e!4212769 () (InoxSet Context!12602))

(assert (=> b!7008477 (= e!4212769 ((_ map or) call!636514 (derivationStepZipperUp!1955 (Context!12603 (t!381215 (exprs!6801 lt!2502311))) (h!73785 s!7408))))))

(declare-fun b!7008478 () Bool)

(declare-fun e!4212768 () (InoxSet Context!12602))

(assert (=> b!7008478 (= e!4212769 e!4212768)))

(declare-fun c!1301709 () Bool)

(assert (=> b!7008478 (= c!1301709 ((_ is Cons!67336) (exprs!6801 lt!2502311)))))

(declare-fun b!7008475 () Bool)

(assert (=> b!7008475 (= e!4212768 call!636514)))

(declare-fun d!2184798 () Bool)

(declare-fun c!1301708 () Bool)

(assert (=> d!2184798 (= c!1301708 e!4212767)))

(declare-fun res!2859548 () Bool)

(assert (=> d!2184798 (=> (not res!2859548) (not e!4212767))))

(assert (=> d!2184798 (= res!2859548 ((_ is Cons!67336) (exprs!6801 lt!2502311)))))

(assert (=> d!2184798 (= (derivationStepZipperUp!1955 lt!2502311 (h!73785 s!7408)) e!4212769)))

(declare-fun bm!636509 () Bool)

(assert (=> bm!636509 (= call!636514 (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502311)) (Context!12603 (t!381215 (exprs!6801 lt!2502311))) (h!73785 s!7408)))))

(declare-fun b!7008479 () Bool)

(assert (=> b!7008479 (= e!4212768 ((as const (Array Context!12602 Bool)) false))))

(assert (= (and d!2184798 res!2859548) b!7008476))

(assert (= (and d!2184798 c!1301708) b!7008477))

(assert (= (and d!2184798 (not c!1301708)) b!7008478))

(assert (= (and b!7008478 c!1301709) b!7008475))

(assert (= (and b!7008478 (not c!1301709)) b!7008479))

(assert (= (or b!7008477 b!7008475) bm!636509))

(declare-fun m!7705872 () Bool)

(assert (=> b!7008476 m!7705872))

(declare-fun m!7705874 () Bool)

(assert (=> b!7008477 m!7705874))

(declare-fun m!7705876 () Bool)

(assert (=> bm!636509 m!7705876))

(assert (=> b!7008255 d!2184798))

(declare-fun b!7008489 () Bool)

(declare-fun e!4212774 () List!67460)

(assert (=> b!7008489 (= e!4212774 (Cons!67336 (h!73784 lt!2502323) (++!15296 (t!381215 lt!2502323) (exprs!6801 ct2!306))))))

(declare-fun b!7008491 () Bool)

(declare-fun e!4212775 () Bool)

(declare-fun lt!2502375 () List!67460)

(assert (=> b!7008491 (= e!4212775 (or (not (= (exprs!6801 ct2!306) Nil!67336)) (= lt!2502375 lt!2502323)))))

(declare-fun d!2184800 () Bool)

(assert (=> d!2184800 e!4212775))

(declare-fun res!2859553 () Bool)

(assert (=> d!2184800 (=> (not res!2859553) (not e!4212775))))

(declare-fun content!13359 (List!67460) (InoxSet Regex!17305))

(assert (=> d!2184800 (= res!2859553 (= (content!13359 lt!2502375) ((_ map or) (content!13359 lt!2502323) (content!13359 (exprs!6801 ct2!306)))))))

(assert (=> d!2184800 (= lt!2502375 e!4212774)))

(declare-fun c!1301712 () Bool)

(assert (=> d!2184800 (= c!1301712 ((_ is Nil!67336) lt!2502323))))

(assert (=> d!2184800 (= (++!15296 lt!2502323 (exprs!6801 ct2!306)) lt!2502375)))

(declare-fun b!7008490 () Bool)

(declare-fun res!2859554 () Bool)

(assert (=> b!7008490 (=> (not res!2859554) (not e!4212775))))

(declare-fun size!40965 (List!67460) Int)

(assert (=> b!7008490 (= res!2859554 (= (size!40965 lt!2502375) (+ (size!40965 lt!2502323) (size!40965 (exprs!6801 ct2!306)))))))

(declare-fun b!7008488 () Bool)

(assert (=> b!7008488 (= e!4212774 (exprs!6801 ct2!306))))

(assert (= (and d!2184800 c!1301712) b!7008488))

(assert (= (and d!2184800 (not c!1301712)) b!7008489))

(assert (= (and d!2184800 res!2859553) b!7008490))

(assert (= (and b!7008490 res!2859554) b!7008491))

(declare-fun m!7705878 () Bool)

(assert (=> b!7008489 m!7705878))

(declare-fun m!7705880 () Bool)

(assert (=> d!2184800 m!7705880))

(declare-fun m!7705882 () Bool)

(assert (=> d!2184800 m!7705882))

(declare-fun m!7705884 () Bool)

(assert (=> d!2184800 m!7705884))

(declare-fun m!7705886 () Bool)

(assert (=> b!7008490 m!7705886))

(declare-fun m!7705888 () Bool)

(assert (=> b!7008490 m!7705888))

(declare-fun m!7705890 () Bool)

(assert (=> b!7008490 m!7705890))

(assert (=> b!7008255 d!2184800))

(declare-fun bs!1865881 () Bool)

(declare-fun d!2184802 () Bool)

(assert (= bs!1865881 (and d!2184802 b!7008257)))

(declare-fun lambda!407748 () Int)

(assert (=> bs!1865881 (not (= lambda!407748 lambda!407712))))

(assert (=> d!2184802 true))

(declare-fun order!28017 () Int)

(declare-fun dynLambda!27077 (Int Int) Int)

(assert (=> d!2184802 (< (dynLambda!27077 order!28017 lambda!407712) (dynLambda!27077 order!28017 lambda!407748))))

(declare-fun forall!16223 (List!67462 Int) Bool)

(assert (=> d!2184802 (= (exists!3142 lt!2502308 lambda!407712) (not (forall!16223 lt!2502308 lambda!407748)))))

(declare-fun bs!1865882 () Bool)

(assert (= bs!1865882 d!2184802))

(declare-fun m!7705892 () Bool)

(assert (=> bs!1865882 m!7705892))

(assert (=> b!7008257 d!2184802))

(declare-fun bs!1865883 () Bool)

(declare-fun d!2184804 () Bool)

(assert (= bs!1865883 (and d!2184804 b!7008257)))

(declare-fun lambda!407751 () Int)

(assert (=> bs!1865883 (= lambda!407751 lambda!407712)))

(declare-fun bs!1865884 () Bool)

(assert (= bs!1865884 (and d!2184804 d!2184802)))

(assert (=> bs!1865884 (not (= lambda!407751 lambda!407748))))

(assert (=> d!2184804 true))

(assert (=> d!2184804 (exists!3142 lt!2502308 lambda!407751)))

(declare-fun lt!2502378 () Unit!161288)

(declare-fun choose!52650 (List!67462 List!67461) Unit!161288)

(assert (=> d!2184804 (= lt!2502378 (choose!52650 lt!2502308 s!7408))))

(declare-fun content!13360 (List!67462) (InoxSet Context!12602))

(assert (=> d!2184804 (matchZipper!2845 (content!13360 lt!2502308) s!7408)))

(assert (=> d!2184804 (= (lemmaZipperMatchesExistsMatchingContext!274 lt!2502308 s!7408) lt!2502378)))

(declare-fun bs!1865885 () Bool)

(assert (= bs!1865885 d!2184804))

(declare-fun m!7705894 () Bool)

(assert (=> bs!1865885 m!7705894))

(declare-fun m!7705896 () Bool)

(assert (=> bs!1865885 m!7705896))

(declare-fun m!7705898 () Bool)

(assert (=> bs!1865885 m!7705898))

(assert (=> bs!1865885 m!7705898))

(declare-fun m!7705900 () Bool)

(assert (=> bs!1865885 m!7705900))

(assert (=> b!7008257 d!2184804))

(declare-fun d!2184806 () Bool)

(declare-fun c!1301717 () Bool)

(declare-fun isEmpty!39327 (List!67461) Bool)

(assert (=> d!2184806 (= c!1301717 (isEmpty!39327 s!7408))))

(declare-fun e!4212778 () Bool)

(assert (=> d!2184806 (= (matchZipper!2845 lt!2502320 s!7408) e!4212778)))

(declare-fun b!7008498 () Bool)

(declare-fun nullableZipper!2481 ((InoxSet Context!12602)) Bool)

(assert (=> b!7008498 (= e!4212778 (nullableZipper!2481 lt!2502320))))

(declare-fun b!7008499 () Bool)

(declare-fun head!14167 (List!67461) C!34880)

(declare-fun tail!13374 (List!67461) List!67461)

(assert (=> b!7008499 (= e!4212778 (matchZipper!2845 (derivationStepZipper!2785 lt!2502320 (head!14167 s!7408)) (tail!13374 s!7408)))))

(assert (= (and d!2184806 c!1301717) b!7008498))

(assert (= (and d!2184806 (not c!1301717)) b!7008499))

(declare-fun m!7705902 () Bool)

(assert (=> d!2184806 m!7705902))

(declare-fun m!7705904 () Bool)

(assert (=> b!7008498 m!7705904))

(declare-fun m!7705906 () Bool)

(assert (=> b!7008499 m!7705906))

(assert (=> b!7008499 m!7705906))

(declare-fun m!7705908 () Bool)

(assert (=> b!7008499 m!7705908))

(declare-fun m!7705910 () Bool)

(assert (=> b!7008499 m!7705910))

(assert (=> b!7008499 m!7705908))

(assert (=> b!7008499 m!7705910))

(declare-fun m!7705912 () Bool)

(assert (=> b!7008499 m!7705912))

(assert (=> b!7008257 d!2184806))

(declare-fun d!2184808 () Bool)

(declare-fun e!4212781 () Bool)

(assert (=> d!2184808 e!4212781))

(declare-fun res!2859557 () Bool)

(assert (=> d!2184808 (=> (not res!2859557) (not e!4212781))))

(declare-fun lt!2502381 () List!67462)

(declare-fun noDuplicate!2560 (List!67462) Bool)

(assert (=> d!2184808 (= res!2859557 (noDuplicate!2560 lt!2502381))))

(declare-fun choose!52651 ((InoxSet Context!12602)) List!67462)

(assert (=> d!2184808 (= lt!2502381 (choose!52651 lt!2502299))))

(assert (=> d!2184808 (= (toList!10665 lt!2502299) lt!2502381)))

(declare-fun b!7008502 () Bool)

(assert (=> b!7008502 (= e!4212781 (= (content!13360 lt!2502381) lt!2502299))))

(assert (= (and d!2184808 res!2859557) b!7008502))

(declare-fun m!7705914 () Bool)

(assert (=> d!2184808 m!7705914))

(declare-fun m!7705916 () Bool)

(assert (=> d!2184808 m!7705916))

(declare-fun m!7705918 () Bool)

(assert (=> b!7008502 m!7705918))

(assert (=> b!7008257 d!2184808))

(declare-fun d!2184810 () Bool)

(declare-fun e!4212784 () Bool)

(assert (=> d!2184810 e!4212784))

(declare-fun res!2859560 () Bool)

(assert (=> d!2184810 (=> (not res!2859560) (not e!4212784))))

(declare-fun lt!2502384 () Context!12602)

(declare-fun dynLambda!27079 (Int Context!12602) Bool)

(assert (=> d!2184810 (= res!2859560 (dynLambda!27079 lambda!407712 lt!2502384))))

(declare-fun getWitness!1242 (List!67462 Int) Context!12602)

(assert (=> d!2184810 (= lt!2502384 (getWitness!1242 (toList!10665 lt!2502299) lambda!407712))))

(declare-fun exists!3144 ((InoxSet Context!12602) Int) Bool)

(assert (=> d!2184810 (exists!3144 lt!2502299 lambda!407712)))

(assert (=> d!2184810 (= (getWitness!1240 lt!2502299 lambda!407712) lt!2502384)))

(declare-fun b!7008505 () Bool)

(assert (=> b!7008505 (= e!4212784 (select lt!2502299 lt!2502384))))

(assert (= (and d!2184810 res!2859560) b!7008505))

(declare-fun b_lambda!264265 () Bool)

(assert (=> (not b_lambda!264265) (not d!2184810)))

(declare-fun m!7705920 () Bool)

(assert (=> d!2184810 m!7705920))

(assert (=> d!2184810 m!7705624))

(assert (=> d!2184810 m!7705624))

(declare-fun m!7705922 () Bool)

(assert (=> d!2184810 m!7705922))

(declare-fun m!7705924 () Bool)

(assert (=> d!2184810 m!7705924))

(declare-fun m!7705926 () Bool)

(assert (=> b!7008505 m!7705926))

(assert (=> b!7008257 d!2184810))

(declare-fun d!2184812 () Bool)

(declare-fun c!1301718 () Bool)

(assert (=> d!2184812 (= c!1301718 (isEmpty!39327 s!7408))))

(declare-fun e!4212785 () Bool)

(assert (=> d!2184812 (= (matchZipper!2845 lt!2502299 s!7408) e!4212785)))

(declare-fun b!7008506 () Bool)

(assert (=> b!7008506 (= e!4212785 (nullableZipper!2481 lt!2502299))))

(declare-fun b!7008507 () Bool)

(assert (=> b!7008507 (= e!4212785 (matchZipper!2845 (derivationStepZipper!2785 lt!2502299 (head!14167 s!7408)) (tail!13374 s!7408)))))

(assert (= (and d!2184812 c!1301718) b!7008506))

(assert (= (and d!2184812 (not c!1301718)) b!7008507))

(assert (=> d!2184812 m!7705902))

(declare-fun m!7705928 () Bool)

(assert (=> b!7008506 m!7705928))

(assert (=> b!7008507 m!7705906))

(assert (=> b!7008507 m!7705906))

(declare-fun m!7705930 () Bool)

(assert (=> b!7008507 m!7705930))

(assert (=> b!7008507 m!7705910))

(assert (=> b!7008507 m!7705930))

(assert (=> b!7008507 m!7705910))

(declare-fun m!7705932 () Bool)

(assert (=> b!7008507 m!7705932))

(assert (=> start!674808 d!2184812))

(declare-fun bs!1865886 () Bool)

(declare-fun d!2184814 () Bool)

(assert (= bs!1865886 (and d!2184814 b!7008258)))

(declare-fun lambda!407752 () Int)

(assert (=> bs!1865886 (= lambda!407752 lambda!407713)))

(declare-fun bs!1865887 () Bool)

(assert (= bs!1865887 (and d!2184814 d!2184786)))

(assert (=> bs!1865887 (= lambda!407752 lambda!407742)))

(assert (=> d!2184814 true))

(assert (=> d!2184814 (= (appendTo!426 z1!570 ct2!306) (map!15598 z1!570 lambda!407752))))

(declare-fun bs!1865888 () Bool)

(assert (= bs!1865888 d!2184814))

(declare-fun m!7705934 () Bool)

(assert (=> bs!1865888 m!7705934))

(assert (=> start!674808 d!2184814))

(declare-fun bs!1865889 () Bool)

(declare-fun d!2184816 () Bool)

(assert (= bs!1865889 (and d!2184816 b!7008258)))

(declare-fun lambda!407755 () Int)

(assert (=> bs!1865889 (= lambda!407755 lambda!407714)))

(declare-fun bs!1865890 () Bool)

(assert (= bs!1865890 (and d!2184816 d!2184788)))

(assert (=> bs!1865890 (= lambda!407755 lambda!407745)))

(assert (=> d!2184816 (= (inv!86121 ct2!306) (forall!16221 (exprs!6801 ct2!306) lambda!407755))))

(declare-fun bs!1865891 () Bool)

(assert (= bs!1865891 d!2184816))

(declare-fun m!7705936 () Bool)

(assert (=> bs!1865891 m!7705936))

(assert (=> start!674808 d!2184816))

(declare-fun d!2184818 () Bool)

(declare-fun c!1301719 () Bool)

(assert (=> d!2184818 (= c!1301719 (isEmpty!39327 (t!381216 s!7408)))))

(declare-fun e!4212786 () Bool)

(assert (=> d!2184818 (= (matchZipper!2845 lt!2502301 (t!381216 s!7408)) e!4212786)))

(declare-fun b!7008508 () Bool)

(assert (=> b!7008508 (= e!4212786 (nullableZipper!2481 lt!2502301))))

(declare-fun b!7008509 () Bool)

(assert (=> b!7008509 (= e!4212786 (matchZipper!2845 (derivationStepZipper!2785 lt!2502301 (head!14167 (t!381216 s!7408))) (tail!13374 (t!381216 s!7408))))))

(assert (= (and d!2184818 c!1301719) b!7008508))

(assert (= (and d!2184818 (not c!1301719)) b!7008509))

(declare-fun m!7705938 () Bool)

(assert (=> d!2184818 m!7705938))

(declare-fun m!7705940 () Bool)

(assert (=> b!7008508 m!7705940))

(declare-fun m!7705942 () Bool)

(assert (=> b!7008509 m!7705942))

(assert (=> b!7008509 m!7705942))

(declare-fun m!7705944 () Bool)

(assert (=> b!7008509 m!7705944))

(declare-fun m!7705946 () Bool)

(assert (=> b!7008509 m!7705946))

(assert (=> b!7008509 m!7705944))

(assert (=> b!7008509 m!7705946))

(declare-fun m!7705948 () Bool)

(assert (=> b!7008509 m!7705948))

(assert (=> b!7008264 d!2184818))

(declare-fun d!2184820 () Bool)

(declare-fun c!1301720 () Bool)

(assert (=> d!2184820 (= c!1301720 (isEmpty!39327 (t!381216 s!7408)))))

(declare-fun e!4212787 () Bool)

(assert (=> d!2184820 (= (matchZipper!2845 lt!2502303 (t!381216 s!7408)) e!4212787)))

(declare-fun b!7008510 () Bool)

(assert (=> b!7008510 (= e!4212787 (nullableZipper!2481 lt!2502303))))

(declare-fun b!7008511 () Bool)

(assert (=> b!7008511 (= e!4212787 (matchZipper!2845 (derivationStepZipper!2785 lt!2502303 (head!14167 (t!381216 s!7408))) (tail!13374 (t!381216 s!7408))))))

(assert (= (and d!2184820 c!1301720) b!7008510))

(assert (= (and d!2184820 (not c!1301720)) b!7008511))

(assert (=> d!2184820 m!7705938))

(declare-fun m!7705950 () Bool)

(assert (=> b!7008510 m!7705950))

(assert (=> b!7008511 m!7705942))

(assert (=> b!7008511 m!7705942))

(declare-fun m!7705952 () Bool)

(assert (=> b!7008511 m!7705952))

(assert (=> b!7008511 m!7705946))

(assert (=> b!7008511 m!7705952))

(assert (=> b!7008511 m!7705946))

(declare-fun m!7705954 () Bool)

(assert (=> b!7008511 m!7705954))

(assert (=> b!7008264 d!2184820))

(declare-fun d!2184822 () Bool)

(declare-fun c!1301721 () Bool)

(assert (=> d!2184822 (= c!1301721 (isEmpty!39327 (t!381216 s!7408)))))

(declare-fun e!4212788 () Bool)

(assert (=> d!2184822 (= (matchZipper!2845 lt!2502321 (t!381216 s!7408)) e!4212788)))

(declare-fun b!7008512 () Bool)

(assert (=> b!7008512 (= e!4212788 (nullableZipper!2481 lt!2502321))))

(declare-fun b!7008513 () Bool)

(assert (=> b!7008513 (= e!4212788 (matchZipper!2845 (derivationStepZipper!2785 lt!2502321 (head!14167 (t!381216 s!7408))) (tail!13374 (t!381216 s!7408))))))

(assert (= (and d!2184822 c!1301721) b!7008512))

(assert (= (and d!2184822 (not c!1301721)) b!7008513))

(assert (=> d!2184822 m!7705938))

(declare-fun m!7705956 () Bool)

(assert (=> b!7008512 m!7705956))

(assert (=> b!7008513 m!7705942))

(assert (=> b!7008513 m!7705942))

(declare-fun m!7705958 () Bool)

(assert (=> b!7008513 m!7705958))

(assert (=> b!7008513 m!7705946))

(assert (=> b!7008513 m!7705958))

(assert (=> b!7008513 m!7705946))

(declare-fun m!7705960 () Bool)

(assert (=> b!7008513 m!7705960))

(assert (=> b!7008264 d!2184822))

(declare-fun e!4212791 () Bool)

(declare-fun d!2184824 () Bool)

(assert (=> d!2184824 (= (matchZipper!2845 ((_ map or) lt!2502301 lt!2502326) (t!381216 s!7408)) e!4212791)))

(declare-fun res!2859563 () Bool)

(assert (=> d!2184824 (=> res!2859563 e!4212791)))

(assert (=> d!2184824 (= res!2859563 (matchZipper!2845 lt!2502301 (t!381216 s!7408)))))

(declare-fun lt!2502387 () Unit!161288)

(declare-fun choose!52653 ((InoxSet Context!12602) (InoxSet Context!12602) List!67461) Unit!161288)

(assert (=> d!2184824 (= lt!2502387 (choose!52653 lt!2502301 lt!2502326 (t!381216 s!7408)))))

(assert (=> d!2184824 (= (lemmaZipperConcatMatchesSameAsBothZippers!1478 lt!2502301 lt!2502326 (t!381216 s!7408)) lt!2502387)))

(declare-fun b!7008516 () Bool)

(assert (=> b!7008516 (= e!4212791 (matchZipper!2845 lt!2502326 (t!381216 s!7408)))))

(assert (= (and d!2184824 (not res!2859563)) b!7008516))

(declare-fun m!7705962 () Bool)

(assert (=> d!2184824 m!7705962))

(assert (=> d!2184824 m!7705580))

(declare-fun m!7705964 () Bool)

(assert (=> d!2184824 m!7705964))

(assert (=> b!7008516 m!7705576))

(assert (=> b!7008264 d!2184824))

(assert (=> b!7008264 d!2184794))

(declare-fun d!2184826 () Bool)

(declare-fun c!1301722 () Bool)

(assert (=> d!2184826 (= c!1301722 (isEmpty!39327 (t!381216 s!7408)))))

(declare-fun e!4212792 () Bool)

(assert (=> d!2184826 (= (matchZipper!2845 lt!2502326 (t!381216 s!7408)) e!4212792)))

(declare-fun b!7008517 () Bool)

(assert (=> b!7008517 (= e!4212792 (nullableZipper!2481 lt!2502326))))

(declare-fun b!7008518 () Bool)

(assert (=> b!7008518 (= e!4212792 (matchZipper!2845 (derivationStepZipper!2785 lt!2502326 (head!14167 (t!381216 s!7408))) (tail!13374 (t!381216 s!7408))))))

(assert (= (and d!2184826 c!1301722) b!7008517))

(assert (= (and d!2184826 (not c!1301722)) b!7008518))

(assert (=> d!2184826 m!7705938))

(declare-fun m!7705966 () Bool)

(assert (=> b!7008517 m!7705966))

(assert (=> b!7008518 m!7705942))

(assert (=> b!7008518 m!7705942))

(declare-fun m!7705968 () Bool)

(assert (=> b!7008518 m!7705968))

(assert (=> b!7008518 m!7705946))

(assert (=> b!7008518 m!7705968))

(assert (=> b!7008518 m!7705946))

(declare-fun m!7705970 () Bool)

(assert (=> b!7008518 m!7705970))

(assert (=> b!7008254 d!2184826))

(assert (=> b!7008265 d!2184826))

(assert (=> b!7008265 d!2184794))

(assert (=> b!7008252 d!2184826))

(assert (=> b!7008252 d!2184794))

(assert (=> b!7008271 d!2184794))

(declare-fun bs!1865892 () Bool)

(declare-fun d!2184828 () Bool)

(assert (= bs!1865892 (and d!2184828 b!7008258)))

(declare-fun lambda!407756 () Int)

(assert (=> bs!1865892 (= lambda!407756 lambda!407714)))

(declare-fun bs!1865893 () Bool)

(assert (= bs!1865893 (and d!2184828 d!2184788)))

(assert (=> bs!1865893 (= lambda!407756 lambda!407745)))

(declare-fun bs!1865894 () Bool)

(assert (= bs!1865894 (and d!2184828 d!2184816)))

(assert (=> bs!1865894 (= lambda!407756 lambda!407755)))

(assert (=> d!2184828 (= (inv!86121 setElem!48293) (forall!16221 (exprs!6801 setElem!48293) lambda!407756))))

(declare-fun bs!1865895 () Bool)

(assert (= bs!1865895 d!2184828))

(declare-fun m!7705972 () Bool)

(assert (=> bs!1865895 m!7705972))

(assert (=> setNonEmpty!48293 d!2184828))

(declare-fun d!2184830 () Bool)

(declare-fun res!2859564 () Bool)

(declare-fun e!4212793 () Bool)

(assert (=> d!2184830 (=> res!2859564 e!4212793)))

(assert (=> d!2184830 (= res!2859564 ((_ is Nil!67336) (exprs!6801 ct2!306)))))

(assert (=> d!2184830 (= (forall!16221 (exprs!6801 ct2!306) lambda!407714) e!4212793)))

(declare-fun b!7008519 () Bool)

(declare-fun e!4212794 () Bool)

(assert (=> b!7008519 (= e!4212793 e!4212794)))

(declare-fun res!2859565 () Bool)

(assert (=> b!7008519 (=> (not res!2859565) (not e!4212794))))

(assert (=> b!7008519 (= res!2859565 (dynLambda!27076 lambda!407714 (h!73784 (exprs!6801 ct2!306))))))

(declare-fun b!7008520 () Bool)

(assert (=> b!7008520 (= e!4212794 (forall!16221 (t!381215 (exprs!6801 ct2!306)) lambda!407714))))

(assert (= (and d!2184830 (not res!2859564)) b!7008519))

(assert (= (and b!7008519 res!2859565) b!7008520))

(declare-fun b_lambda!264267 () Bool)

(assert (=> (not b_lambda!264267) (not b!7008519)))

(declare-fun m!7705974 () Bool)

(assert (=> b!7008519 m!7705974))

(declare-fun m!7705976 () Bool)

(assert (=> b!7008520 m!7705976))

(assert (=> b!7008253 d!2184830))

(declare-fun d!2184832 () Bool)

(declare-fun nullableFct!2676 (Regex!17305) Bool)

(assert (=> d!2184832 (= (nullable!7065 (h!73784 (exprs!6801 lt!2502300))) (nullableFct!2676 (h!73784 (exprs!6801 lt!2502300))))))

(declare-fun bs!1865896 () Bool)

(assert (= bs!1865896 d!2184832))

(declare-fun m!7705978 () Bool)

(assert (=> bs!1865896 m!7705978))

(assert (=> b!7008269 d!2184832))

(declare-fun d!2184834 () Bool)

(assert (=> d!2184834 (= (tail!13372 (exprs!6801 lt!2502300)) (t!381215 (exprs!6801 lt!2502300)))))

(assert (=> b!7008269 d!2184834))

(declare-fun b!7008522 () Bool)

(declare-fun e!4212795 () List!67460)

(assert (=> b!7008522 (= e!4212795 (Cons!67336 (h!73784 (exprs!6801 lt!2502300)) (++!15296 (t!381215 (exprs!6801 lt!2502300)) (exprs!6801 ct2!306))))))

(declare-fun e!4212796 () Bool)

(declare-fun lt!2502388 () List!67460)

(declare-fun b!7008524 () Bool)

(assert (=> b!7008524 (= e!4212796 (or (not (= (exprs!6801 ct2!306) Nil!67336)) (= lt!2502388 (exprs!6801 lt!2502300))))))

(declare-fun d!2184836 () Bool)

(assert (=> d!2184836 e!4212796))

(declare-fun res!2859566 () Bool)

(assert (=> d!2184836 (=> (not res!2859566) (not e!4212796))))

(assert (=> d!2184836 (= res!2859566 (= (content!13359 lt!2502388) ((_ map or) (content!13359 (exprs!6801 lt!2502300)) (content!13359 (exprs!6801 ct2!306)))))))

(assert (=> d!2184836 (= lt!2502388 e!4212795)))

(declare-fun c!1301723 () Bool)

(assert (=> d!2184836 (= c!1301723 ((_ is Nil!67336) (exprs!6801 lt!2502300)))))

(assert (=> d!2184836 (= (++!15296 (exprs!6801 lt!2502300) (exprs!6801 ct2!306)) lt!2502388)))

(declare-fun b!7008523 () Bool)

(declare-fun res!2859567 () Bool)

(assert (=> b!7008523 (=> (not res!2859567) (not e!4212796))))

(assert (=> b!7008523 (= res!2859567 (= (size!40965 lt!2502388) (+ (size!40965 (exprs!6801 lt!2502300)) (size!40965 (exprs!6801 ct2!306)))))))

(declare-fun b!7008521 () Bool)

(assert (=> b!7008521 (= e!4212795 (exprs!6801 ct2!306))))

(assert (= (and d!2184836 c!1301723) b!7008521))

(assert (= (and d!2184836 (not c!1301723)) b!7008522))

(assert (= (and d!2184836 res!2859566) b!7008523))

(assert (= (and b!7008523 res!2859567) b!7008524))

(declare-fun m!7705980 () Bool)

(assert (=> b!7008522 m!7705980))

(declare-fun m!7705982 () Bool)

(assert (=> d!2184836 m!7705982))

(declare-fun m!7705984 () Bool)

(assert (=> d!2184836 m!7705984))

(assert (=> d!2184836 m!7705884))

(declare-fun m!7705986 () Bool)

(assert (=> b!7008523 m!7705986))

(declare-fun m!7705988 () Bool)

(assert (=> b!7008523 m!7705988))

(assert (=> b!7008523 m!7705890))

(assert (=> b!7008258 d!2184836))

(declare-fun d!2184838 () Bool)

(assert (=> d!2184838 (forall!16221 (++!15296 (exprs!6801 lt!2502300) (exprs!6801 ct2!306)) lambda!407714)))

(declare-fun lt!2502389 () Unit!161288)

(assert (=> d!2184838 (= lt!2502389 (choose!52648 (exprs!6801 lt!2502300) (exprs!6801 ct2!306) lambda!407714))))

(assert (=> d!2184838 (forall!16221 (exprs!6801 lt!2502300) lambda!407714)))

(assert (=> d!2184838 (= (lemmaConcatPreservesForall!641 (exprs!6801 lt!2502300) (exprs!6801 ct2!306) lambda!407714) lt!2502389)))

(declare-fun bs!1865897 () Bool)

(assert (= bs!1865897 d!2184838))

(assert (=> bs!1865897 m!7705604))

(assert (=> bs!1865897 m!7705604))

(declare-fun m!7705990 () Bool)

(assert (=> bs!1865897 m!7705990))

(declare-fun m!7705992 () Bool)

(assert (=> bs!1865897 m!7705992))

(declare-fun m!7705994 () Bool)

(assert (=> bs!1865897 m!7705994))

(assert (=> b!7008258 d!2184838))

(declare-fun d!2184840 () Bool)

(declare-fun e!4212799 () Bool)

(assert (=> d!2184840 e!4212799))

(declare-fun res!2859570 () Bool)

(assert (=> d!2184840 (=> (not res!2859570) (not e!4212799))))

(declare-fun lt!2502392 () Context!12602)

(declare-fun dynLambda!27080 (Int Context!12602) Context!12602)

(assert (=> d!2184840 (= res!2859570 (= lt!2502324 (dynLambda!27080 lambda!407713 lt!2502392)))))

(declare-fun choose!52654 ((InoxSet Context!12602) Int Context!12602) Context!12602)

(assert (=> d!2184840 (= lt!2502392 (choose!52654 z1!570 lambda!407713 lt!2502324))))

(assert (=> d!2184840 (select (map!15598 z1!570 lambda!407713) lt!2502324)))

(assert (=> d!2184840 (= (mapPost2!160 z1!570 lambda!407713 lt!2502324) lt!2502392)))

(declare-fun b!7008528 () Bool)

(assert (=> b!7008528 (= e!4212799 (select z1!570 lt!2502392))))

(assert (= (and d!2184840 res!2859570) b!7008528))

(declare-fun b_lambda!264269 () Bool)

(assert (=> (not b_lambda!264269) (not d!2184840)))

(declare-fun m!7705996 () Bool)

(assert (=> d!2184840 m!7705996))

(declare-fun m!7705998 () Bool)

(assert (=> d!2184840 m!7705998))

(declare-fun m!7706000 () Bool)

(assert (=> d!2184840 m!7706000))

(declare-fun m!7706002 () Bool)

(assert (=> d!2184840 m!7706002))

(declare-fun m!7706004 () Bool)

(assert (=> b!7008528 m!7706004))

(assert (=> b!7008258 d!2184840))

(declare-fun d!2184842 () Bool)

(assert (=> d!2184842 (= (isEmpty!39325 (exprs!6801 lt!2502300)) ((_ is Nil!67336) (exprs!6801 lt!2502300)))))

(assert (=> b!7008260 d!2184842))

(assert (=> b!7008270 d!2184838))

(declare-fun b!7008530 () Bool)

(declare-fun e!4212800 () Bool)

(assert (=> b!7008530 (= e!4212800 (nullable!7065 (h!73784 (exprs!6801 lt!2502316))))))

(declare-fun b!7008531 () Bool)

(declare-fun call!636515 () (InoxSet Context!12602))

(declare-fun e!4212802 () (InoxSet Context!12602))

(assert (=> b!7008531 (= e!4212802 ((_ map or) call!636515 (derivationStepZipperUp!1955 (Context!12603 (t!381215 (exprs!6801 lt!2502316))) (h!73785 s!7408))))))

(declare-fun b!7008532 () Bool)

(declare-fun e!4212801 () (InoxSet Context!12602))

(assert (=> b!7008532 (= e!4212802 e!4212801)))

(declare-fun c!1301725 () Bool)

(assert (=> b!7008532 (= c!1301725 ((_ is Cons!67336) (exprs!6801 lt!2502316)))))

(declare-fun b!7008529 () Bool)

(assert (=> b!7008529 (= e!4212801 call!636515)))

(declare-fun d!2184844 () Bool)

(declare-fun c!1301724 () Bool)

(assert (=> d!2184844 (= c!1301724 e!4212800)))

(declare-fun res!2859571 () Bool)

(assert (=> d!2184844 (=> (not res!2859571) (not e!4212800))))

(assert (=> d!2184844 (= res!2859571 ((_ is Cons!67336) (exprs!6801 lt!2502316)))))

(assert (=> d!2184844 (= (derivationStepZipperUp!1955 lt!2502316 (h!73785 s!7408)) e!4212802)))

(declare-fun bm!636510 () Bool)

(assert (=> bm!636510 (= call!636515 (derivationStepZipperDown!2023 (h!73784 (exprs!6801 lt!2502316)) (Context!12603 (t!381215 (exprs!6801 lt!2502316))) (h!73785 s!7408)))))

(declare-fun b!7008533 () Bool)

(assert (=> b!7008533 (= e!4212801 ((as const (Array Context!12602 Bool)) false))))

(assert (= (and d!2184844 res!2859571) b!7008530))

(assert (= (and d!2184844 c!1301724) b!7008531))

(assert (= (and d!2184844 (not c!1301724)) b!7008532))

(assert (= (and b!7008532 c!1301725) b!7008529))

(assert (= (and b!7008532 (not c!1301725)) b!7008533))

(assert (= (or b!7008531 b!7008529) bm!636510))

(declare-fun m!7706006 () Bool)

(assert (=> b!7008530 m!7706006))

(declare-fun m!7706008 () Bool)

(assert (=> b!7008531 m!7706008))

(declare-fun m!7706010 () Bool)

(assert (=> bm!636510 m!7706010))

(assert (=> b!7008259 d!2184844))

(declare-fun bs!1865898 () Bool)

(declare-fun d!2184846 () Bool)

(assert (= bs!1865898 (and d!2184846 b!7008259)))

(declare-fun lambda!407759 () Int)

(assert (=> bs!1865898 (= lambda!407759 lambda!407715)))

(assert (=> d!2184846 true))

(assert (=> d!2184846 (= (derivationStepZipper!2785 lt!2502309 (h!73785 s!7408)) (flatMap!2291 lt!2502309 lambda!407759))))

(declare-fun bs!1865899 () Bool)

(assert (= bs!1865899 d!2184846))

(declare-fun m!7706012 () Bool)

(assert (=> bs!1865899 m!7706012))

(assert (=> b!7008259 d!2184846))

(declare-fun d!2184848 () Bool)

(declare-fun dynLambda!27081 (Int Context!12602) (InoxSet Context!12602))

(assert (=> d!2184848 (= (flatMap!2291 lt!2502309 lambda!407715) (dynLambda!27081 lambda!407715 lt!2502316))))

(declare-fun lt!2502395 () Unit!161288)

(declare-fun choose!52655 ((InoxSet Context!12602) Context!12602 Int) Unit!161288)

(assert (=> d!2184848 (= lt!2502395 (choose!52655 lt!2502309 lt!2502316 lambda!407715))))

(assert (=> d!2184848 (= lt!2502309 (store ((as const (Array Context!12602 Bool)) false) lt!2502316 true))))

(assert (=> d!2184848 (= (lemmaFlatMapOnSingletonSet!1806 lt!2502309 lt!2502316 lambda!407715) lt!2502395)))

(declare-fun b_lambda!264271 () Bool)

(assert (=> (not b_lambda!264271) (not d!2184848)))

(declare-fun bs!1865900 () Bool)

(assert (= bs!1865900 d!2184848))

(assert (=> bs!1865900 m!7705590))

(declare-fun m!7706014 () Bool)

(assert (=> bs!1865900 m!7706014))

(declare-fun m!7706016 () Bool)

(assert (=> bs!1865900 m!7706016))

(assert (=> bs!1865900 m!7705616))

(assert (=> b!7008259 d!2184848))

(declare-fun d!2184850 () Bool)

(declare-fun choose!52656 ((InoxSet Context!12602) Int) (InoxSet Context!12602))

(assert (=> d!2184850 (= (flatMap!2291 lt!2502309 lambda!407715) (choose!52656 lt!2502309 lambda!407715))))

(declare-fun bs!1865901 () Bool)

(assert (= bs!1865901 d!2184850))

(declare-fun m!7706018 () Bool)

(assert (=> bs!1865901 m!7706018))

(assert (=> b!7008259 d!2184850))

(assert (=> b!7008259 d!2184838))

(declare-fun b!7008540 () Bool)

(declare-fun e!4212805 () Bool)

(declare-fun tp!1932086 () Bool)

(declare-fun tp!1932087 () Bool)

(assert (=> b!7008540 (= e!4212805 (and tp!1932086 tp!1932087))))

(assert (=> b!7008266 (= tp!1932061 e!4212805)))

(assert (= (and b!7008266 ((_ is Cons!67336) (exprs!6801 setElem!48293))) b!7008540))

(declare-fun condSetEmpty!48299 () Bool)

(assert (=> setNonEmpty!48293 (= condSetEmpty!48299 (= setRest!48293 ((as const (Array Context!12602 Bool)) false)))))

(declare-fun setRes!48299 () Bool)

(assert (=> setNonEmpty!48293 (= tp!1932064 setRes!48299)))

(declare-fun setIsEmpty!48299 () Bool)

(assert (=> setIsEmpty!48299 setRes!48299))

(declare-fun setElem!48299 () Context!12602)

(declare-fun e!4212808 () Bool)

(declare-fun setNonEmpty!48299 () Bool)

(declare-fun tp!1932093 () Bool)

(assert (=> setNonEmpty!48299 (= setRes!48299 (and tp!1932093 (inv!86121 setElem!48299) e!4212808))))

(declare-fun setRest!48299 () (InoxSet Context!12602))

(assert (=> setNonEmpty!48299 (= setRest!48293 ((_ map or) (store ((as const (Array Context!12602 Bool)) false) setElem!48299 true) setRest!48299))))

(declare-fun b!7008545 () Bool)

(declare-fun tp!1932092 () Bool)

(assert (=> b!7008545 (= e!4212808 tp!1932092)))

(assert (= (and setNonEmpty!48293 condSetEmpty!48299) setIsEmpty!48299))

(assert (= (and setNonEmpty!48293 (not condSetEmpty!48299)) setNonEmpty!48299))

(assert (= setNonEmpty!48299 b!7008545))

(declare-fun m!7706020 () Bool)

(assert (=> setNonEmpty!48299 m!7706020))

(declare-fun b!7008550 () Bool)

(declare-fun e!4212811 () Bool)

(declare-fun tp!1932096 () Bool)

(assert (=> b!7008550 (= e!4212811 (and tp_is_empty!43835 tp!1932096))))

(assert (=> b!7008268 (= tp!1932062 e!4212811)))

(assert (= (and b!7008268 ((_ is Cons!67337) (t!381216 s!7408))) b!7008550))

(declare-fun b!7008551 () Bool)

(declare-fun e!4212812 () Bool)

(declare-fun tp!1932097 () Bool)

(declare-fun tp!1932098 () Bool)

(assert (=> b!7008551 (= e!4212812 (and tp!1932097 tp!1932098))))

(assert (=> b!7008251 (= tp!1932063 e!4212812)))

(assert (= (and b!7008251 ((_ is Cons!67336) (exprs!6801 ct2!306))) b!7008551))

(declare-fun b_lambda!264273 () Bool)

(assert (= b_lambda!264269 (or b!7008258 b_lambda!264273)))

(declare-fun bs!1865902 () Bool)

(declare-fun d!2184852 () Bool)

(assert (= bs!1865902 (and d!2184852 b!7008258)))

(declare-fun lt!2502396 () Unit!161288)

(assert (=> bs!1865902 (= lt!2502396 (lemmaConcatPreservesForall!641 (exprs!6801 lt!2502392) (exprs!6801 ct2!306) lambda!407714))))

(assert (=> bs!1865902 (= (dynLambda!27080 lambda!407713 lt!2502392) (Context!12603 (++!15296 (exprs!6801 lt!2502392) (exprs!6801 ct2!306))))))

(declare-fun m!7706022 () Bool)

(assert (=> bs!1865902 m!7706022))

(declare-fun m!7706024 () Bool)

(assert (=> bs!1865902 m!7706024))

(assert (=> d!2184840 d!2184852))

(declare-fun b_lambda!264275 () Bool)

(assert (= b_lambda!264263 (or b!7008258 b_lambda!264275)))

(declare-fun bs!1865903 () Bool)

(declare-fun d!2184854 () Bool)

(assert (= bs!1865903 (and d!2184854 b!7008258)))

(assert (=> bs!1865903 (= (dynLambda!27076 lambda!407714 (h!73784 lt!2502323)) (validRegex!8882 (h!73784 lt!2502323)))))

(declare-fun m!7706026 () Bool)

(assert (=> bs!1865903 m!7706026))

(assert (=> b!7008419 d!2184854))

(declare-fun b_lambda!264277 () Bool)

(assert (= b_lambda!264267 (or b!7008258 b_lambda!264277)))

(declare-fun bs!1865904 () Bool)

(declare-fun d!2184856 () Bool)

(assert (= bs!1865904 (and d!2184856 b!7008258)))

(assert (=> bs!1865904 (= (dynLambda!27076 lambda!407714 (h!73784 (exprs!6801 ct2!306))) (validRegex!8882 (h!73784 (exprs!6801 ct2!306))))))

(declare-fun m!7706028 () Bool)

(assert (=> bs!1865904 m!7706028))

(assert (=> b!7008519 d!2184856))

(declare-fun b_lambda!264279 () Bool)

(assert (= b_lambda!264271 (or b!7008259 b_lambda!264279)))

(declare-fun bs!1865905 () Bool)

(declare-fun d!2184858 () Bool)

(assert (= bs!1865905 (and d!2184858 b!7008259)))

(assert (=> bs!1865905 (= (dynLambda!27081 lambda!407715 lt!2502316) (derivationStepZipperUp!1955 lt!2502316 (h!73785 s!7408)))))

(assert (=> bs!1865905 m!7705592))

(assert (=> d!2184848 d!2184858))

(declare-fun b_lambda!264281 () Bool)

(assert (= b_lambda!264265 (or b!7008257 b_lambda!264281)))

(declare-fun bs!1865906 () Bool)

(declare-fun d!2184860 () Bool)

(assert (= bs!1865906 (and d!2184860 b!7008257)))

(assert (=> bs!1865906 (= (dynLambda!27079 lambda!407712 lt!2502384) (matchZipper!2845 (store ((as const (Array Context!12602 Bool)) false) lt!2502384 true) s!7408))))

(declare-fun m!7706030 () Bool)

(assert (=> bs!1865906 m!7706030))

(assert (=> bs!1865906 m!7706030))

(declare-fun m!7706032 () Bool)

(assert (=> bs!1865906 m!7706032))

(assert (=> d!2184810 d!2184860))

(check-sat (not bs!1865906) (not bm!636497) (not b!7008517) (not d!2184802) (not bm!636501) (not b!7008513) tp_is_empty!43835 (not d!2184810) (not d!2184806) (not b_lambda!264277) (not bs!1865903) (not b!7008476) (not bs!1865904) (not bm!636495) (not bs!1865905) (not d!2184804) (not d!2184788) (not b_lambda!264281) (not b!7008490) (not bm!636509) (not d!2184808) (not b!7008512) (not b_lambda!264273) (not b!7008531) (not b!7008518) (not bm!636510) (not d!2184836) (not b!7008520) (not d!2184800) (not d!2184826) (not b!7008545) (not b!7008455) (not b!7008499) (not b!7008510) (not d!2184822) (not d!2184786) (not d!2184840) (not b!7008502) (not d!2184832) (not bm!636506) (not d!2184848) (not d!2184838) (not bs!1865902) (not b_lambda!264275) (not bm!636503) (not b!7008509) (not b!7008530) (not b!7008506) (not b_lambda!264279) (not b!7008498) (not d!2184794) (not d!2184816) (not b!7008550) (not b!7008444) (not bm!636500) (not d!2184824) (not b!7008489) (not b!7008477) (not setNonEmpty!48299) (not b!7008420) (not d!2184846) (not d!2184818) (not b!7008511) (not d!2184812) (not b!7008551) (not d!2184820) (not b!7008508) (not b!7008507) (not b!7008523) (not d!2184814) (not d!2184850) (not b!7008522) (not d!2184828) (not b!7008540) (not b!7008516))
(check-sat)

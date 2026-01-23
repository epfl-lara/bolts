; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!604056 () Bool)

(assert start!604056)

(declare-fun b!5948587 () Bool)

(assert (=> b!5948587 true))

(assert (=> b!5948587 true))

(declare-fun lambda!324478 () Int)

(declare-fun lambda!324477 () Int)

(assert (=> b!5948587 (not (= lambda!324478 lambda!324477))))

(assert (=> b!5948587 true))

(assert (=> b!5948587 true))

(declare-fun b!5948598 () Bool)

(assert (=> b!5948598 true))

(declare-fun b!5948586 () Bool)

(declare-fun e!3639238 () Bool)

(declare-fun tp!1655514 () Bool)

(declare-fun tp!1655511 () Bool)

(assert (=> b!5948586 (= e!3639238 (and tp!1655514 tp!1655511))))

(declare-fun e!3639235 () Bool)

(declare-fun e!3639236 () Bool)

(assert (=> b!5948587 (= e!3639235 e!3639236)))

(declare-fun res!2490272 () Bool)

(assert (=> b!5948587 (=> res!2490272 e!3639236)))

(declare-datatypes ((C!32250 0))(
  ( (C!32251 (val!25827 Int)) )
))
(declare-datatypes ((List!64269 0))(
  ( (Nil!64145) (Cons!64145 (h!70593 C!32250) (t!377678 List!64269)) )
))
(declare-fun s!2326 () List!64269)

(declare-fun lt!2312632 () Bool)

(declare-fun lt!2312630 () Bool)

(assert (=> b!5948587 (= res!2490272 (or (not (= lt!2312632 lt!2312630)) (is-Nil!64145 s!2326)))))

(declare-fun Exists!3060 (Int) Bool)

(assert (=> b!5948587 (= (Exists!3060 lambda!324477) (Exists!3060 lambda!324478))))

(declare-datatypes ((Unit!157251 0))(
  ( (Unit!157252) )
))
(declare-fun lt!2312633 () Unit!157251)

(declare-datatypes ((Regex!15990 0))(
  ( (ElementMatch!15990 (c!1058304 C!32250)) (Concat!24835 (regOne!32492 Regex!15990) (regTwo!32492 Regex!15990)) (EmptyExpr!15990) (Star!15990 (reg!16319 Regex!15990)) (EmptyLang!15990) (Union!15990 (regOne!32493 Regex!15990) (regTwo!32493 Regex!15990)) )
))
(declare-fun r!7292 () Regex!15990)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1597 (Regex!15990 Regex!15990 List!64269) Unit!157251)

(assert (=> b!5948587 (= lt!2312633 (lemmaExistCutMatchRandMatchRSpecEquivalent!1597 (regOne!32492 r!7292) (regTwo!32492 r!7292) s!2326))))

(assert (=> b!5948587 (= lt!2312630 (Exists!3060 lambda!324477))))

(declare-datatypes ((tuple2!65938 0))(
  ( (tuple2!65939 (_1!36272 List!64269) (_2!36272 List!64269)) )
))
(declare-datatypes ((Option!15881 0))(
  ( (None!15880) (Some!15880 (v!51983 tuple2!65938)) )
))
(declare-fun isDefined!12584 (Option!15881) Bool)

(declare-fun findConcatSeparation!2295 (Regex!15990 Regex!15990 List!64269 List!64269 List!64269) Option!15881)

(assert (=> b!5948587 (= lt!2312630 (isDefined!12584 (findConcatSeparation!2295 (regOne!32492 r!7292) (regTwo!32492 r!7292) Nil!64145 s!2326 s!2326)))))

(declare-fun lt!2312622 () Unit!157251)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2059 (Regex!15990 Regex!15990 List!64269) Unit!157251)

(assert (=> b!5948587 (= lt!2312622 (lemmaFindConcatSeparationEquivalentToExists!2059 (regOne!32492 r!7292) (regTwo!32492 r!7292) s!2326))))

(declare-fun b!5948588 () Bool)

(declare-fun e!3639246 () Bool)

(declare-datatypes ((List!64270 0))(
  ( (Nil!64146) (Cons!64146 (h!70594 Regex!15990) (t!377679 List!64270)) )
))
(declare-datatypes ((Context!10748 0))(
  ( (Context!10749 (exprs!5874 List!64270)) )
))
(declare-fun lt!2312634 () Context!10748)

(declare-fun inv!83223 (Context!10748) Bool)

(assert (=> b!5948588 (= e!3639246 (inv!83223 lt!2312634))))

(declare-fun b!5948589 () Bool)

(declare-fun res!2490269 () Bool)

(assert (=> b!5948589 (=> res!2490269 e!3639235)))

(declare-datatypes ((List!64271 0))(
  ( (Nil!64147) (Cons!64147 (h!70595 Context!10748) (t!377680 List!64271)) )
))
(declare-fun zl!343 () List!64271)

(declare-fun isEmpty!36023 (List!64271) Bool)

(assert (=> b!5948589 (= res!2490269 (not (isEmpty!36023 (t!377680 zl!343))))))

(declare-fun b!5948590 () Bool)

(declare-fun res!2490275 () Bool)

(assert (=> b!5948590 (=> res!2490275 e!3639236)))

(declare-fun isEmpty!36024 (List!64270) Bool)

(assert (=> b!5948590 (= res!2490275 (not (isEmpty!36024 (t!377679 (exprs!5874 (h!70595 zl!343))))))))

(declare-fun setNonEmpty!40416 () Bool)

(declare-fun setElem!40416 () Context!10748)

(declare-fun tp!1655515 () Bool)

(declare-fun setRes!40416 () Bool)

(declare-fun e!3639245 () Bool)

(assert (=> setNonEmpty!40416 (= setRes!40416 (and tp!1655515 (inv!83223 setElem!40416) e!3639245))))

(declare-fun z!1189 () (Set Context!10748))

(declare-fun setRest!40416 () (Set Context!10748))

(assert (=> setNonEmpty!40416 (= z!1189 (set.union (set.insert setElem!40416 (as set.empty (Set Context!10748))) setRest!40416))))

(declare-fun b!5948591 () Bool)

(declare-fun res!2490277 () Bool)

(assert (=> b!5948591 (=> res!2490277 e!3639246)))

(declare-fun lt!2312641 () (Set Context!10748))

(declare-fun lt!2312637 () (Set Context!10748))

(declare-fun lt!2312627 () (Set Context!10748))

(declare-fun lt!2312626 () (Set Context!10748))

(declare-fun lt!2312620 () (Set Context!10748))

(assert (=> b!5948591 (= res!2490277 (or (not (= lt!2312641 (set.union lt!2312626 lt!2312627))) (not (= lt!2312641 lt!2312637)) (not (= lt!2312641 lt!2312620))))))

(declare-fun b!5948592 () Bool)

(declare-fun res!2490278 () Bool)

(assert (=> b!5948592 (=> res!2490278 e!3639235)))

(declare-fun generalisedConcat!1587 (List!64270) Regex!15990)

(assert (=> b!5948592 (= res!2490278 (not (= r!7292 (generalisedConcat!1587 (exprs!5874 (h!70595 zl!343))))))))

(declare-fun b!5948593 () Bool)

(declare-fun res!2490270 () Bool)

(assert (=> b!5948593 (=> res!2490270 e!3639246)))

(declare-fun lt!2312616 () (Set Context!10748))

(declare-fun matchZipper!2026 ((Set Context!10748) List!64269) Bool)

(declare-fun derivationStepZipper!1971 ((Set Context!10748) C!32250) (Set Context!10748))

(assert (=> b!5948593 (= res!2490270 (not (= (matchZipper!2026 lt!2312616 s!2326) (matchZipper!2026 (derivationStepZipper!1971 lt!2312616 (h!70593 s!2326)) (t!377678 s!2326)))))))

(declare-fun b!5948594 () Bool)

(declare-fun res!2490263 () Bool)

(declare-fun e!3639244 () Bool)

(assert (=> b!5948594 (=> (not res!2490263) (not e!3639244))))

(declare-fun toList!9774 ((Set Context!10748)) List!64271)

(assert (=> b!5948594 (= res!2490263 (= (toList!9774 z!1189) zl!343))))

(declare-fun b!5948595 () Bool)

(declare-fun res!2490268 () Bool)

(assert (=> b!5948595 (=> (not res!2490268) (not e!3639244))))

(declare-fun unfocusZipper!1732 (List!64271) Regex!15990)

(assert (=> b!5948595 (= res!2490268 (= r!7292 (unfocusZipper!1732 zl!343)))))

(declare-fun b!5948596 () Bool)

(declare-fun res!2490261 () Bool)

(assert (=> b!5948596 (=> res!2490261 e!3639235)))

(assert (=> b!5948596 (= res!2490261 (not (is-Cons!64146 (exprs!5874 (h!70595 zl!343)))))))

(declare-fun b!5948597 () Bool)

(declare-fun tp!1655513 () Bool)

(assert (=> b!5948597 (= e!3639245 tp!1655513)))

(declare-fun setIsEmpty!40416 () Bool)

(assert (=> setIsEmpty!40416 setRes!40416))

(declare-fun b!5948599 () Bool)

(declare-fun tp_is_empty!41233 () Bool)

(assert (=> b!5948599 (= e!3639238 tp_is_empty!41233)))

(declare-fun b!5948600 () Bool)

(declare-fun e!3639247 () Bool)

(declare-fun e!3639241 () Bool)

(assert (=> b!5948600 (= e!3639247 e!3639241)))

(declare-fun res!2490267 () Bool)

(assert (=> b!5948600 (=> res!2490267 e!3639241)))

(declare-fun nullable!5985 (Regex!15990) Bool)

(assert (=> b!5948600 (= res!2490267 (not (nullable!5985 (regOne!32492 r!7292))))))

(declare-fun lt!2312629 () Context!10748)

(declare-fun lt!2312635 () (Set Context!10748))

(declare-fun derivationStepZipperDown!1240 (Regex!15990 Context!10748 C!32250) (Set Context!10748))

(assert (=> b!5948600 (= lt!2312635 (derivationStepZipperDown!1240 (regTwo!32492 r!7292) lt!2312629 (h!70593 s!2326)))))

(declare-fun lt!2312618 () Context!10748)

(assert (=> b!5948600 (= lt!2312626 (derivationStepZipperDown!1240 (regOne!32492 r!7292) lt!2312618 (h!70593 s!2326)))))

(declare-fun lambda!324479 () Int)

(declare-fun flatMap!1503 ((Set Context!10748) Int) (Set Context!10748))

(declare-fun derivationStepZipperUp!1166 (Context!10748 C!32250) (Set Context!10748))

(assert (=> b!5948600 (= (flatMap!1503 lt!2312616 lambda!324479) (derivationStepZipperUp!1166 lt!2312618 (h!70593 s!2326)))))

(declare-fun lt!2312615 () Unit!157251)

(declare-fun lemmaFlatMapOnSingletonSet!1029 ((Set Context!10748) Context!10748 Int) Unit!157251)

(assert (=> b!5948600 (= lt!2312615 (lemmaFlatMapOnSingletonSet!1029 lt!2312616 lt!2312618 lambda!324479))))

(declare-fun lt!2312638 () (Set Context!10748))

(declare-fun lt!2312628 () Context!10748)

(assert (=> b!5948600 (= (flatMap!1503 lt!2312638 lambda!324479) (derivationStepZipperUp!1166 lt!2312628 (h!70593 s!2326)))))

(declare-fun lt!2312617 () Unit!157251)

(assert (=> b!5948600 (= lt!2312617 (lemmaFlatMapOnSingletonSet!1029 lt!2312638 lt!2312628 lambda!324479))))

(assert (=> b!5948600 (= lt!2312627 (derivationStepZipperUp!1166 lt!2312618 (h!70593 s!2326)))))

(assert (=> b!5948600 (= lt!2312641 (derivationStepZipperUp!1166 lt!2312628 (h!70593 s!2326)))))

(assert (=> b!5948600 (= lt!2312616 (set.insert lt!2312618 (as set.empty (Set Context!10748))))))

(declare-fun lt!2312639 () List!64270)

(assert (=> b!5948600 (= lt!2312618 (Context!10749 lt!2312639))))

(assert (=> b!5948600 (= lt!2312638 (set.insert lt!2312628 (as set.empty (Set Context!10748))))))

(assert (=> b!5948600 (= lt!2312628 (Context!10749 (Cons!64146 (regOne!32492 r!7292) lt!2312639)))))

(assert (=> b!5948600 (= lt!2312639 (Cons!64146 (regTwo!32492 r!7292) Nil!64146))))

(declare-fun b!5948601 () Bool)

(declare-fun e!3639243 () Bool)

(assert (=> b!5948601 (= e!3639243 (matchZipper!2026 lt!2312635 (t!377678 s!2326)))))

(declare-fun b!5948602 () Bool)

(declare-fun res!2490260 () Bool)

(assert (=> b!5948602 (=> res!2490260 e!3639246)))

(declare-fun contextDepth!138 (Context!10748) Int)

(assert (=> b!5948602 (= res!2490260 (>= (contextDepth!138 lt!2312628) (contextDepth!138 lt!2312634)))))

(declare-fun b!5948603 () Bool)

(declare-fun e!3639242 () Bool)

(declare-fun tp!1655512 () Bool)

(assert (=> b!5948603 (= e!3639242 (and tp_is_empty!41233 tp!1655512))))

(declare-fun b!5948604 () Bool)

(declare-fun tp!1655518 () Bool)

(assert (=> b!5948604 (= e!3639238 tp!1655518)))

(declare-fun b!5948605 () Bool)

(declare-fun e!3639237 () Bool)

(assert (=> b!5948605 (= e!3639237 e!3639246)))

(declare-fun res!2490274 () Bool)

(assert (=> b!5948605 (=> res!2490274 e!3639246)))

(declare-fun lt!2312624 () Bool)

(assert (=> b!5948605 (= res!2490274 (not (= lt!2312624 (matchZipper!2026 lt!2312620 (t!377678 s!2326)))))))

(declare-fun lt!2312640 () Bool)

(assert (=> b!5948605 (= lt!2312640 lt!2312624)))

(assert (=> b!5948605 (= lt!2312624 e!3639243)))

(declare-fun res!2490262 () Bool)

(assert (=> b!5948605 (=> res!2490262 e!3639243)))

(declare-fun lt!2312621 () Bool)

(assert (=> b!5948605 (= res!2490262 lt!2312621)))

(assert (=> b!5948605 (= lt!2312640 (matchZipper!2026 lt!2312637 (t!377678 s!2326)))))

(assert (=> b!5948605 (= lt!2312621 (matchZipper!2026 lt!2312626 (t!377678 s!2326)))))

(declare-fun lt!2312636 () Unit!157251)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!857 ((Set Context!10748) (Set Context!10748) List!64269) Unit!157251)

(assert (=> b!5948605 (= lt!2312636 (lemmaZipperConcatMatchesSameAsBothZippers!857 lt!2312626 lt!2312635 (t!377678 s!2326)))))

(declare-fun b!5948606 () Bool)

(declare-fun e!3639239 () Bool)

(declare-fun tp!1655509 () Bool)

(assert (=> b!5948606 (= e!3639239 tp!1655509)))

(declare-fun b!5948607 () Bool)

(declare-fun res!2490264 () Bool)

(assert (=> b!5948607 (=> res!2490264 e!3639246)))

(assert (=> b!5948607 (= res!2490264 (not (= (matchZipper!2026 lt!2312638 s!2326) (matchZipper!2026 (derivationStepZipper!1971 lt!2312638 (h!70593 s!2326)) (t!377678 s!2326)))))))

(declare-fun b!5948608 () Bool)

(declare-fun e!3639240 () Bool)

(assert (=> b!5948608 (= e!3639236 e!3639240)))

(declare-fun res!2490266 () Bool)

(assert (=> b!5948608 (=> res!2490266 e!3639240)))

(declare-fun lt!2312631 () (Set Context!10748))

(declare-fun lt!2312625 () (Set Context!10748))

(assert (=> b!5948608 (= res!2490266 (not (= lt!2312631 lt!2312625)))))

(assert (=> b!5948608 (= lt!2312625 (derivationStepZipperDown!1240 r!7292 lt!2312629 (h!70593 s!2326)))))

(assert (=> b!5948608 (= lt!2312629 (Context!10749 Nil!64146))))

(assert (=> b!5948608 (= lt!2312631 (derivationStepZipperUp!1166 lt!2312634 (h!70593 s!2326)))))

(assert (=> b!5948608 (= lt!2312634 (Context!10749 (Cons!64146 r!7292 Nil!64146)))))

(assert (=> b!5948608 (= lt!2312620 (derivationStepZipper!1971 z!1189 (h!70593 s!2326)))))

(declare-fun b!5948609 () Bool)

(assert (=> b!5948609 (= e!3639244 (not e!3639235))))

(declare-fun res!2490276 () Bool)

(assert (=> b!5948609 (=> res!2490276 e!3639235)))

(assert (=> b!5948609 (= res!2490276 (not (is-Cons!64147 zl!343)))))

(declare-fun matchRSpec!3091 (Regex!15990 List!64269) Bool)

(assert (=> b!5948609 (= lt!2312632 (matchRSpec!3091 r!7292 s!2326))))

(declare-fun matchR!8173 (Regex!15990 List!64269) Bool)

(assert (=> b!5948609 (= lt!2312632 (matchR!8173 r!7292 s!2326))))

(declare-fun lt!2312623 () Unit!157251)

(declare-fun mainMatchTheorem!3091 (Regex!15990 List!64269) Unit!157251)

(assert (=> b!5948609 (= lt!2312623 (mainMatchTheorem!3091 r!7292 s!2326))))

(declare-fun b!5948610 () Bool)

(declare-fun res!2490273 () Bool)

(assert (=> b!5948610 (=> res!2490273 e!3639235)))

(assert (=> b!5948610 (= res!2490273 (or (is-EmptyExpr!15990 r!7292) (is-EmptyLang!15990 r!7292) (is-ElementMatch!15990 r!7292) (is-Union!15990 r!7292) (not (is-Concat!24835 r!7292))))))

(declare-fun tp!1655510 () Bool)

(declare-fun b!5948611 () Bool)

(declare-fun e!3639248 () Bool)

(assert (=> b!5948611 (= e!3639248 (and (inv!83223 (h!70595 zl!343)) e!3639239 tp!1655510))))

(assert (=> b!5948598 (= e!3639240 e!3639247)))

(declare-fun res!2490259 () Bool)

(assert (=> b!5948598 (=> res!2490259 e!3639247)))

(assert (=> b!5948598 (= res!2490259 (not (= lt!2312620 lt!2312625)))))

(assert (=> b!5948598 (= (flatMap!1503 z!1189 lambda!324479) (derivationStepZipperUp!1166 (h!70595 zl!343) (h!70593 s!2326)))))

(declare-fun lt!2312619 () Unit!157251)

(assert (=> b!5948598 (= lt!2312619 (lemmaFlatMapOnSingletonSet!1029 z!1189 (h!70595 zl!343) lambda!324479))))

(declare-fun res!2490279 () Bool)

(assert (=> start!604056 (=> (not res!2490279) (not e!3639244))))

(declare-fun validRegex!7726 (Regex!15990) Bool)

(assert (=> start!604056 (= res!2490279 (validRegex!7726 r!7292))))

(assert (=> start!604056 e!3639244))

(assert (=> start!604056 e!3639238))

(declare-fun condSetEmpty!40416 () Bool)

(assert (=> start!604056 (= condSetEmpty!40416 (= z!1189 (as set.empty (Set Context!10748))))))

(assert (=> start!604056 setRes!40416))

(assert (=> start!604056 e!3639248))

(assert (=> start!604056 e!3639242))

(declare-fun b!5948612 () Bool)

(assert (=> b!5948612 (= e!3639241 e!3639237)))

(declare-fun res!2490265 () Bool)

(assert (=> b!5948612 (=> res!2490265 e!3639237)))

(assert (=> b!5948612 (= res!2490265 (not (= lt!2312620 lt!2312637)))))

(assert (=> b!5948612 (= lt!2312637 (set.union lt!2312626 lt!2312635))))

(declare-fun b!5948613 () Bool)

(declare-fun res!2490271 () Bool)

(assert (=> b!5948613 (=> res!2490271 e!3639235)))

(declare-fun generalisedUnion!1834 (List!64270) Regex!15990)

(declare-fun unfocusZipperList!1411 (List!64271) List!64270)

(assert (=> b!5948613 (= res!2490271 (not (= r!7292 (generalisedUnion!1834 (unfocusZipperList!1411 zl!343)))))))

(declare-fun b!5948614 () Bool)

(declare-fun tp!1655516 () Bool)

(declare-fun tp!1655517 () Bool)

(assert (=> b!5948614 (= e!3639238 (and tp!1655516 tp!1655517))))

(assert (= (and start!604056 res!2490279) b!5948594))

(assert (= (and b!5948594 res!2490263) b!5948595))

(assert (= (and b!5948595 res!2490268) b!5948609))

(assert (= (and b!5948609 (not res!2490276)) b!5948589))

(assert (= (and b!5948589 (not res!2490269)) b!5948592))

(assert (= (and b!5948592 (not res!2490278)) b!5948596))

(assert (= (and b!5948596 (not res!2490261)) b!5948613))

(assert (= (and b!5948613 (not res!2490271)) b!5948610))

(assert (= (and b!5948610 (not res!2490273)) b!5948587))

(assert (= (and b!5948587 (not res!2490272)) b!5948590))

(assert (= (and b!5948590 (not res!2490275)) b!5948608))

(assert (= (and b!5948608 (not res!2490266)) b!5948598))

(assert (= (and b!5948598 (not res!2490259)) b!5948600))

(assert (= (and b!5948600 (not res!2490267)) b!5948612))

(assert (= (and b!5948612 (not res!2490265)) b!5948605))

(assert (= (and b!5948605 (not res!2490262)) b!5948601))

(assert (= (and b!5948605 (not res!2490274)) b!5948591))

(assert (= (and b!5948591 (not res!2490277)) b!5948607))

(assert (= (and b!5948607 (not res!2490264)) b!5948593))

(assert (= (and b!5948593 (not res!2490270)) b!5948602))

(assert (= (and b!5948602 (not res!2490260)) b!5948588))

(assert (= (and start!604056 (is-ElementMatch!15990 r!7292)) b!5948599))

(assert (= (and start!604056 (is-Concat!24835 r!7292)) b!5948614))

(assert (= (and start!604056 (is-Star!15990 r!7292)) b!5948604))

(assert (= (and start!604056 (is-Union!15990 r!7292)) b!5948586))

(assert (= (and start!604056 condSetEmpty!40416) setIsEmpty!40416))

(assert (= (and start!604056 (not condSetEmpty!40416)) setNonEmpty!40416))

(assert (= setNonEmpty!40416 b!5948597))

(assert (= b!5948611 b!5948606))

(assert (= (and start!604056 (is-Cons!64147 zl!343)) b!5948611))

(assert (= (and start!604056 (is-Cons!64145 s!2326)) b!5948603))

(declare-fun m!6836692 () Bool)

(assert (=> b!5948592 m!6836692))

(declare-fun m!6836694 () Bool)

(assert (=> start!604056 m!6836694))

(declare-fun m!6836696 () Bool)

(assert (=> b!5948590 m!6836696))

(declare-fun m!6836698 () Bool)

(assert (=> b!5948593 m!6836698))

(declare-fun m!6836700 () Bool)

(assert (=> b!5948593 m!6836700))

(assert (=> b!5948593 m!6836700))

(declare-fun m!6836702 () Bool)

(assert (=> b!5948593 m!6836702))

(declare-fun m!6836704 () Bool)

(assert (=> setNonEmpty!40416 m!6836704))

(declare-fun m!6836706 () Bool)

(assert (=> b!5948613 m!6836706))

(assert (=> b!5948613 m!6836706))

(declare-fun m!6836708 () Bool)

(assert (=> b!5948613 m!6836708))

(declare-fun m!6836710 () Bool)

(assert (=> b!5948595 m!6836710))

(declare-fun m!6836712 () Bool)

(assert (=> b!5948600 m!6836712))

(declare-fun m!6836714 () Bool)

(assert (=> b!5948600 m!6836714))

(declare-fun m!6836716 () Bool)

(assert (=> b!5948600 m!6836716))

(declare-fun m!6836718 () Bool)

(assert (=> b!5948600 m!6836718))

(declare-fun m!6836720 () Bool)

(assert (=> b!5948600 m!6836720))

(declare-fun m!6836722 () Bool)

(assert (=> b!5948600 m!6836722))

(declare-fun m!6836724 () Bool)

(assert (=> b!5948600 m!6836724))

(declare-fun m!6836726 () Bool)

(assert (=> b!5948600 m!6836726))

(declare-fun m!6836728 () Bool)

(assert (=> b!5948600 m!6836728))

(declare-fun m!6836730 () Bool)

(assert (=> b!5948600 m!6836730))

(declare-fun m!6836732 () Bool)

(assert (=> b!5948600 m!6836732))

(declare-fun m!6836734 () Bool)

(assert (=> b!5948587 m!6836734))

(declare-fun m!6836736 () Bool)

(assert (=> b!5948587 m!6836736))

(declare-fun m!6836738 () Bool)

(assert (=> b!5948587 m!6836738))

(declare-fun m!6836740 () Bool)

(assert (=> b!5948587 m!6836740))

(assert (=> b!5948587 m!6836738))

(declare-fun m!6836742 () Bool)

(assert (=> b!5948587 m!6836742))

(assert (=> b!5948587 m!6836734))

(declare-fun m!6836744 () Bool)

(assert (=> b!5948587 m!6836744))

(declare-fun m!6836746 () Bool)

(assert (=> b!5948609 m!6836746))

(declare-fun m!6836748 () Bool)

(assert (=> b!5948609 m!6836748))

(declare-fun m!6836750 () Bool)

(assert (=> b!5948609 m!6836750))

(declare-fun m!6836752 () Bool)

(assert (=> b!5948601 m!6836752))

(declare-fun m!6836754 () Bool)

(assert (=> b!5948608 m!6836754))

(declare-fun m!6836756 () Bool)

(assert (=> b!5948608 m!6836756))

(declare-fun m!6836758 () Bool)

(assert (=> b!5948608 m!6836758))

(declare-fun m!6836760 () Bool)

(assert (=> b!5948594 m!6836760))

(declare-fun m!6836762 () Bool)

(assert (=> b!5948611 m!6836762))

(declare-fun m!6836764 () Bool)

(assert (=> b!5948607 m!6836764))

(declare-fun m!6836766 () Bool)

(assert (=> b!5948607 m!6836766))

(assert (=> b!5948607 m!6836766))

(declare-fun m!6836768 () Bool)

(assert (=> b!5948607 m!6836768))

(declare-fun m!6836770 () Bool)

(assert (=> b!5948605 m!6836770))

(declare-fun m!6836772 () Bool)

(assert (=> b!5948605 m!6836772))

(declare-fun m!6836774 () Bool)

(assert (=> b!5948605 m!6836774))

(declare-fun m!6836776 () Bool)

(assert (=> b!5948605 m!6836776))

(declare-fun m!6836778 () Bool)

(assert (=> b!5948598 m!6836778))

(declare-fun m!6836780 () Bool)

(assert (=> b!5948598 m!6836780))

(declare-fun m!6836782 () Bool)

(assert (=> b!5948598 m!6836782))

(declare-fun m!6836784 () Bool)

(assert (=> b!5948589 m!6836784))

(declare-fun m!6836786 () Bool)

(assert (=> b!5948588 m!6836786))

(declare-fun m!6836788 () Bool)

(assert (=> b!5948602 m!6836788))

(declare-fun m!6836790 () Bool)

(assert (=> b!5948602 m!6836790))

(push 1)

(assert (not b!5948598))

(assert (not b!5948606))

(assert (not b!5948613))

(assert (not b!5948597))

(assert (not b!5948609))

(assert (not b!5948601))

(assert (not b!5948604))

(assert (not b!5948608))

(assert (not b!5948589))

(assert (not b!5948595))

(assert (not b!5948587))

(assert (not b!5948602))

(assert (not setNonEmpty!40416))

(assert (not start!604056))

(assert (not b!5948600))

(assert (not b!5948592))

(assert tp_is_empty!41233)

(assert (not b!5948590))

(assert (not b!5948611))

(assert (not b!5948605))

(assert (not b!5948594))

(assert (not b!5948607))

(assert (not b!5948603))

(assert (not b!5948586))

(assert (not b!5948593))

(assert (not b!5948588))

(assert (not b!5948614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1864965 () Bool)

(declare-fun e!3639299 () Bool)

(assert (=> d!1864965 e!3639299))

(declare-fun res!2490357 () Bool)

(assert (=> d!1864965 (=> (not res!2490357) (not e!3639299))))

(declare-fun lt!2312725 () List!64271)

(declare-fun noDuplicate!1848 (List!64271) Bool)

(assert (=> d!1864965 (= res!2490357 (noDuplicate!1848 lt!2312725))))

(declare-fun choose!44812 ((Set Context!10748)) List!64271)

(assert (=> d!1864965 (= lt!2312725 (choose!44812 z!1189))))

(assert (=> d!1864965 (= (toList!9774 z!1189) lt!2312725)))

(declare-fun b!5948728 () Bool)

(declare-fun content!11837 (List!64271) (Set Context!10748))

(assert (=> b!5948728 (= e!3639299 (= (content!11837 lt!2312725) z!1189))))

(assert (= (and d!1864965 res!2490357) b!5948728))

(declare-fun m!6836892 () Bool)

(assert (=> d!1864965 m!6836892))

(declare-fun m!6836894 () Bool)

(assert (=> d!1864965 m!6836894))

(declare-fun m!6836896 () Bool)

(assert (=> b!5948728 m!6836896))

(assert (=> b!5948594 d!1864965))

(declare-fun b!5948749 () Bool)

(declare-fun e!3639316 () Bool)

(assert (=> b!5948749 (= e!3639316 (isEmpty!36024 (t!377679 (exprs!5874 (h!70595 zl!343)))))))

(declare-fun b!5948750 () Bool)

(declare-fun e!3639317 () Bool)

(declare-fun lt!2312728 () Regex!15990)

(declare-fun isEmptyExpr!1418 (Regex!15990) Bool)

(assert (=> b!5948750 (= e!3639317 (isEmptyExpr!1418 lt!2312728))))

(declare-fun b!5948751 () Bool)

(declare-fun e!3639312 () Bool)

(assert (=> b!5948751 (= e!3639317 e!3639312)))

(declare-fun c!1058321 () Bool)

(declare-fun tail!11606 (List!64270) List!64270)

(assert (=> b!5948751 (= c!1058321 (isEmpty!36024 (tail!11606 (exprs!5874 (h!70595 zl!343)))))))

(declare-fun b!5948752 () Bool)

(declare-fun head!12521 (List!64270) Regex!15990)

(assert (=> b!5948752 (= e!3639312 (= lt!2312728 (head!12521 (exprs!5874 (h!70595 zl!343)))))))

(declare-fun b!5948753 () Bool)

(declare-fun e!3639315 () Regex!15990)

(assert (=> b!5948753 (= e!3639315 EmptyExpr!15990)))

(declare-fun b!5948754 () Bool)

(assert (=> b!5948754 (= e!3639315 (Concat!24835 (h!70594 (exprs!5874 (h!70595 zl!343))) (generalisedConcat!1587 (t!377679 (exprs!5874 (h!70595 zl!343))))))))

(declare-fun b!5948755 () Bool)

(declare-fun isConcat!941 (Regex!15990) Bool)

(assert (=> b!5948755 (= e!3639312 (isConcat!941 lt!2312728))))

(declare-fun b!5948756 () Bool)

(declare-fun e!3639314 () Regex!15990)

(assert (=> b!5948756 (= e!3639314 (h!70594 (exprs!5874 (h!70595 zl!343))))))

(declare-fun d!1864967 () Bool)

(declare-fun e!3639313 () Bool)

(assert (=> d!1864967 e!3639313))

(declare-fun res!2490363 () Bool)

(assert (=> d!1864967 (=> (not res!2490363) (not e!3639313))))

(assert (=> d!1864967 (= res!2490363 (validRegex!7726 lt!2312728))))

(assert (=> d!1864967 (= lt!2312728 e!3639314)))

(declare-fun c!1058323 () Bool)

(assert (=> d!1864967 (= c!1058323 e!3639316)))

(declare-fun res!2490362 () Bool)

(assert (=> d!1864967 (=> (not res!2490362) (not e!3639316))))

(assert (=> d!1864967 (= res!2490362 (is-Cons!64146 (exprs!5874 (h!70595 zl!343))))))

(declare-fun lambda!324497 () Int)

(declare-fun forall!15073 (List!64270 Int) Bool)

(assert (=> d!1864967 (forall!15073 (exprs!5874 (h!70595 zl!343)) lambda!324497)))

(assert (=> d!1864967 (= (generalisedConcat!1587 (exprs!5874 (h!70595 zl!343))) lt!2312728)))

(declare-fun b!5948757 () Bool)

(assert (=> b!5948757 (= e!3639313 e!3639317)))

(declare-fun c!1058324 () Bool)

(assert (=> b!5948757 (= c!1058324 (isEmpty!36024 (exprs!5874 (h!70595 zl!343))))))

(declare-fun b!5948758 () Bool)

(assert (=> b!5948758 (= e!3639314 e!3639315)))

(declare-fun c!1058322 () Bool)

(assert (=> b!5948758 (= c!1058322 (is-Cons!64146 (exprs!5874 (h!70595 zl!343))))))

(assert (= (and d!1864967 res!2490362) b!5948749))

(assert (= (and d!1864967 c!1058323) b!5948756))

(assert (= (and d!1864967 (not c!1058323)) b!5948758))

(assert (= (and b!5948758 c!1058322) b!5948754))

(assert (= (and b!5948758 (not c!1058322)) b!5948753))

(assert (= (and d!1864967 res!2490363) b!5948757))

(assert (= (and b!5948757 c!1058324) b!5948750))

(assert (= (and b!5948757 (not c!1058324)) b!5948751))

(assert (= (and b!5948751 c!1058321) b!5948752))

(assert (= (and b!5948751 (not c!1058321)) b!5948755))

(declare-fun m!6836898 () Bool)

(assert (=> b!5948750 m!6836898))

(declare-fun m!6836900 () Bool)

(assert (=> b!5948754 m!6836900))

(declare-fun m!6836902 () Bool)

(assert (=> b!5948757 m!6836902))

(declare-fun m!6836904 () Bool)

(assert (=> d!1864967 m!6836904))

(declare-fun m!6836906 () Bool)

(assert (=> d!1864967 m!6836906))

(assert (=> b!5948749 m!6836696))

(declare-fun m!6836908 () Bool)

(assert (=> b!5948751 m!6836908))

(assert (=> b!5948751 m!6836908))

(declare-fun m!6836910 () Bool)

(assert (=> b!5948751 m!6836910))

(declare-fun m!6836912 () Bool)

(assert (=> b!5948755 m!6836912))

(declare-fun m!6836914 () Bool)

(assert (=> b!5948752 m!6836914))

(assert (=> b!5948592 d!1864967))

(declare-fun bs!1408738 () Bool)

(declare-fun b!5948765 () Bool)

(assert (= bs!1408738 (and b!5948765 d!1864967)))

(declare-fun lambda!324502 () Int)

(assert (=> bs!1408738 (not (= lambda!324502 lambda!324497))))

(assert (=> b!5948765 true))

(declare-fun bs!1408739 () Bool)

(declare-fun b!5948767 () Bool)

(assert (= bs!1408739 (and b!5948767 d!1864967)))

(declare-fun lambda!324503 () Int)

(assert (=> bs!1408739 (not (= lambda!324503 lambda!324497))))

(declare-fun bs!1408740 () Bool)

(assert (= bs!1408740 (and b!5948767 b!5948765)))

(declare-fun lt!2312739 () Int)

(declare-fun lt!2312740 () Int)

(assert (=> bs!1408740 (= (= lt!2312739 lt!2312740) (= lambda!324503 lambda!324502))))

(assert (=> b!5948767 true))

(declare-fun d!1864969 () Bool)

(declare-fun e!3639322 () Bool)

(assert (=> d!1864969 e!3639322))

(declare-fun res!2490366 () Bool)

(assert (=> d!1864969 (=> (not res!2490366) (not e!3639322))))

(assert (=> d!1864969 (= res!2490366 (>= lt!2312739 0))))

(declare-fun e!3639323 () Int)

(assert (=> d!1864969 (= lt!2312739 e!3639323)))

(declare-fun c!1058328 () Bool)

(assert (=> d!1864969 (= c!1058328 (is-Cons!64146 (exprs!5874 lt!2312628)))))

(assert (=> d!1864969 (= (contextDepth!138 lt!2312628) lt!2312739)))

(assert (=> b!5948765 (= e!3639323 lt!2312740)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun regexDepth!247 (Regex!15990) Int)

(assert (=> b!5948765 (= lt!2312740 (maxBigInt!0 (regexDepth!247 (h!70594 (exprs!5874 lt!2312628))) (contextDepth!138 (Context!10749 (t!377679 (exprs!5874 lt!2312628))))))))

(declare-fun lt!2312738 () Unit!157251)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!39 (List!64270 Int Int) Unit!157251)

(assert (=> b!5948765 (= lt!2312738 (lemmaForallRegexDepthBiggerThanTransitive!39 (t!377679 (exprs!5874 lt!2312628)) lt!2312740 (contextDepth!138 (Context!10749 (t!377679 (exprs!5874 lt!2312628))))))))

(assert (=> b!5948765 (forall!15073 (t!377679 (exprs!5874 lt!2312628)) lambda!324502)))

(declare-fun lt!2312737 () Unit!157251)

(assert (=> b!5948765 (= lt!2312737 lt!2312738)))

(declare-fun b!5948766 () Bool)

(assert (=> b!5948766 (= e!3639323 0)))

(assert (=> b!5948767 (= e!3639322 (forall!15073 (exprs!5874 lt!2312628) lambda!324503))))

(assert (= (and d!1864969 c!1058328) b!5948765))

(assert (= (and d!1864969 (not c!1058328)) b!5948766))

(assert (= (and d!1864969 res!2490366) b!5948767))

(declare-fun m!6836916 () Bool)

(assert (=> b!5948765 m!6836916))

(declare-fun m!6836918 () Bool)

(assert (=> b!5948765 m!6836918))

(declare-fun m!6836920 () Bool)

(assert (=> b!5948765 m!6836920))

(assert (=> b!5948765 m!6836916))

(assert (=> b!5948765 m!6836918))

(declare-fun m!6836922 () Bool)

(assert (=> b!5948765 m!6836922))

(assert (=> b!5948765 m!6836918))

(declare-fun m!6836924 () Bool)

(assert (=> b!5948765 m!6836924))

(declare-fun m!6836926 () Bool)

(assert (=> b!5948767 m!6836926))

(assert (=> b!5948602 d!1864969))

(declare-fun bs!1408741 () Bool)

(declare-fun b!5948770 () Bool)

(assert (= bs!1408741 (and b!5948770 d!1864967)))

(declare-fun lambda!324504 () Int)

(assert (=> bs!1408741 (not (= lambda!324504 lambda!324497))))

(declare-fun bs!1408742 () Bool)

(assert (= bs!1408742 (and b!5948770 b!5948765)))

(declare-fun lt!2312744 () Int)

(assert (=> bs!1408742 (= (= lt!2312744 lt!2312740) (= lambda!324504 lambda!324502))))

(declare-fun bs!1408743 () Bool)

(assert (= bs!1408743 (and b!5948770 b!5948767)))

(assert (=> bs!1408743 (= (= lt!2312744 lt!2312739) (= lambda!324504 lambda!324503))))

(assert (=> b!5948770 true))

(declare-fun bs!1408744 () Bool)

(declare-fun b!5948772 () Bool)

(assert (= bs!1408744 (and b!5948772 d!1864967)))

(declare-fun lambda!324505 () Int)

(assert (=> bs!1408744 (not (= lambda!324505 lambda!324497))))

(declare-fun bs!1408745 () Bool)

(assert (= bs!1408745 (and b!5948772 b!5948765)))

(declare-fun lt!2312743 () Int)

(assert (=> bs!1408745 (= (= lt!2312743 lt!2312740) (= lambda!324505 lambda!324502))))

(declare-fun bs!1408746 () Bool)

(assert (= bs!1408746 (and b!5948772 b!5948767)))

(assert (=> bs!1408746 (= (= lt!2312743 lt!2312739) (= lambda!324505 lambda!324503))))

(declare-fun bs!1408747 () Bool)

(assert (= bs!1408747 (and b!5948772 b!5948770)))

(assert (=> bs!1408747 (= (= lt!2312743 lt!2312744) (= lambda!324505 lambda!324504))))

(assert (=> b!5948772 true))

(declare-fun d!1864971 () Bool)

(declare-fun e!3639324 () Bool)

(assert (=> d!1864971 e!3639324))

(declare-fun res!2490367 () Bool)

(assert (=> d!1864971 (=> (not res!2490367) (not e!3639324))))

(assert (=> d!1864971 (= res!2490367 (>= lt!2312743 0))))

(declare-fun e!3639325 () Int)

(assert (=> d!1864971 (= lt!2312743 e!3639325)))

(declare-fun c!1058329 () Bool)

(assert (=> d!1864971 (= c!1058329 (is-Cons!64146 (exprs!5874 lt!2312634)))))

(assert (=> d!1864971 (= (contextDepth!138 lt!2312634) lt!2312743)))

(assert (=> b!5948770 (= e!3639325 lt!2312744)))

(assert (=> b!5948770 (= lt!2312744 (maxBigInt!0 (regexDepth!247 (h!70594 (exprs!5874 lt!2312634))) (contextDepth!138 (Context!10749 (t!377679 (exprs!5874 lt!2312634))))))))

(declare-fun lt!2312742 () Unit!157251)

(assert (=> b!5948770 (= lt!2312742 (lemmaForallRegexDepthBiggerThanTransitive!39 (t!377679 (exprs!5874 lt!2312634)) lt!2312744 (contextDepth!138 (Context!10749 (t!377679 (exprs!5874 lt!2312634))))))))

(assert (=> b!5948770 (forall!15073 (t!377679 (exprs!5874 lt!2312634)) lambda!324504)))

(declare-fun lt!2312741 () Unit!157251)

(assert (=> b!5948770 (= lt!2312741 lt!2312742)))

(declare-fun b!5948771 () Bool)

(assert (=> b!5948771 (= e!3639325 0)))

(assert (=> b!5948772 (= e!3639324 (forall!15073 (exprs!5874 lt!2312634) lambda!324505))))

(assert (= (and d!1864971 c!1058329) b!5948770))

(assert (= (and d!1864971 (not c!1058329)) b!5948771))

(assert (= (and d!1864971 res!2490367) b!5948772))

(declare-fun m!6836928 () Bool)

(assert (=> b!5948770 m!6836928))

(declare-fun m!6836930 () Bool)

(assert (=> b!5948770 m!6836930))

(declare-fun m!6836932 () Bool)

(assert (=> b!5948770 m!6836932))

(assert (=> b!5948770 m!6836928))

(assert (=> b!5948770 m!6836930))

(declare-fun m!6836934 () Bool)

(assert (=> b!5948770 m!6836934))

(assert (=> b!5948770 m!6836930))

(declare-fun m!6836936 () Bool)

(assert (=> b!5948770 m!6836936))

(declare-fun m!6836938 () Bool)

(assert (=> b!5948772 m!6836938))

(assert (=> b!5948602 d!1864971))

(declare-fun bs!1408748 () Bool)

(declare-fun d!1864973 () Bool)

(assert (= bs!1408748 (and d!1864973 b!5948772)))

(declare-fun lambda!324508 () Int)

(assert (=> bs!1408748 (not (= lambda!324508 lambda!324505))))

(declare-fun bs!1408749 () Bool)

(assert (= bs!1408749 (and d!1864973 b!5948770)))

(assert (=> bs!1408749 (not (= lambda!324508 lambda!324504))))

(declare-fun bs!1408750 () Bool)

(assert (= bs!1408750 (and d!1864973 b!5948767)))

(assert (=> bs!1408750 (not (= lambda!324508 lambda!324503))))

(declare-fun bs!1408751 () Bool)

(assert (= bs!1408751 (and d!1864973 b!5948765)))

(assert (=> bs!1408751 (not (= lambda!324508 lambda!324502))))

(declare-fun bs!1408752 () Bool)

(assert (= bs!1408752 (and d!1864973 d!1864967)))

(assert (=> bs!1408752 (= lambda!324508 lambda!324497)))

(declare-fun b!5948793 () Bool)

(declare-fun e!3639340 () Bool)

(declare-fun lt!2312747 () Regex!15990)

(declare-fun isEmptyLang!1427 (Regex!15990) Bool)

(assert (=> b!5948793 (= e!3639340 (isEmptyLang!1427 lt!2312747))))

(declare-fun b!5948794 () Bool)

(declare-fun e!3639341 () Regex!15990)

(declare-fun e!3639343 () Regex!15990)

(assert (=> b!5948794 (= e!3639341 e!3639343)))

(declare-fun c!1058339 () Bool)

(assert (=> b!5948794 (= c!1058339 (is-Cons!64146 (unfocusZipperList!1411 zl!343)))))

(declare-fun b!5948795 () Bool)

(assert (=> b!5948795 (= e!3639341 (h!70594 (unfocusZipperList!1411 zl!343)))))

(declare-fun b!5948796 () Bool)

(declare-fun e!3639338 () Bool)

(declare-fun isUnion!857 (Regex!15990) Bool)

(assert (=> b!5948796 (= e!3639338 (isUnion!857 lt!2312747))))

(declare-fun e!3639339 () Bool)

(assert (=> d!1864973 e!3639339))

(declare-fun res!2490372 () Bool)

(assert (=> d!1864973 (=> (not res!2490372) (not e!3639339))))

(assert (=> d!1864973 (= res!2490372 (validRegex!7726 lt!2312747))))

(assert (=> d!1864973 (= lt!2312747 e!3639341)))

(declare-fun c!1058340 () Bool)

(declare-fun e!3639342 () Bool)

(assert (=> d!1864973 (= c!1058340 e!3639342)))

(declare-fun res!2490373 () Bool)

(assert (=> d!1864973 (=> (not res!2490373) (not e!3639342))))

(assert (=> d!1864973 (= res!2490373 (is-Cons!64146 (unfocusZipperList!1411 zl!343)))))

(assert (=> d!1864973 (forall!15073 (unfocusZipperList!1411 zl!343) lambda!324508)))

(assert (=> d!1864973 (= (generalisedUnion!1834 (unfocusZipperList!1411 zl!343)) lt!2312747)))

(declare-fun b!5948797 () Bool)

(assert (=> b!5948797 (= e!3639343 EmptyLang!15990)))

(declare-fun b!5948798 () Bool)

(assert (=> b!5948798 (= e!3639338 (= lt!2312747 (head!12521 (unfocusZipperList!1411 zl!343))))))

(declare-fun b!5948799 () Bool)

(assert (=> b!5948799 (= e!3639339 e!3639340)))

(declare-fun c!1058341 () Bool)

(assert (=> b!5948799 (= c!1058341 (isEmpty!36024 (unfocusZipperList!1411 zl!343)))))

(declare-fun b!5948800 () Bool)

(assert (=> b!5948800 (= e!3639343 (Union!15990 (h!70594 (unfocusZipperList!1411 zl!343)) (generalisedUnion!1834 (t!377679 (unfocusZipperList!1411 zl!343)))))))

(declare-fun b!5948801 () Bool)

(assert (=> b!5948801 (= e!3639340 e!3639338)))

(declare-fun c!1058338 () Bool)

(assert (=> b!5948801 (= c!1058338 (isEmpty!36024 (tail!11606 (unfocusZipperList!1411 zl!343))))))

(declare-fun b!5948802 () Bool)

(assert (=> b!5948802 (= e!3639342 (isEmpty!36024 (t!377679 (unfocusZipperList!1411 zl!343))))))

(assert (= (and d!1864973 res!2490373) b!5948802))

(assert (= (and d!1864973 c!1058340) b!5948795))

(assert (= (and d!1864973 (not c!1058340)) b!5948794))

(assert (= (and b!5948794 c!1058339) b!5948800))

(assert (= (and b!5948794 (not c!1058339)) b!5948797))

(assert (= (and d!1864973 res!2490372) b!5948799))

(assert (= (and b!5948799 c!1058341) b!5948793))

(assert (= (and b!5948799 (not c!1058341)) b!5948801))

(assert (= (and b!5948801 c!1058338) b!5948798))

(assert (= (and b!5948801 (not c!1058338)) b!5948796))

(assert (=> b!5948801 m!6836706))

(declare-fun m!6836940 () Bool)

(assert (=> b!5948801 m!6836940))

(assert (=> b!5948801 m!6836940))

(declare-fun m!6836942 () Bool)

(assert (=> b!5948801 m!6836942))

(declare-fun m!6836944 () Bool)

(assert (=> d!1864973 m!6836944))

(assert (=> d!1864973 m!6836706))

(declare-fun m!6836946 () Bool)

(assert (=> d!1864973 m!6836946))

(declare-fun m!6836948 () Bool)

(assert (=> b!5948800 m!6836948))

(assert (=> b!5948798 m!6836706))

(declare-fun m!6836950 () Bool)

(assert (=> b!5948798 m!6836950))

(assert (=> b!5948799 m!6836706))

(declare-fun m!6836952 () Bool)

(assert (=> b!5948799 m!6836952))

(declare-fun m!6836954 () Bool)

(assert (=> b!5948793 m!6836954))

(declare-fun m!6836956 () Bool)

(assert (=> b!5948796 m!6836956))

(declare-fun m!6836958 () Bool)

(assert (=> b!5948802 m!6836958))

(assert (=> b!5948613 d!1864973))

(declare-fun bs!1408753 () Bool)

(declare-fun d!1864975 () Bool)

(assert (= bs!1408753 (and d!1864975 d!1864973)))

(declare-fun lambda!324511 () Int)

(assert (=> bs!1408753 (= lambda!324511 lambda!324508)))

(declare-fun bs!1408754 () Bool)

(assert (= bs!1408754 (and d!1864975 b!5948772)))

(assert (=> bs!1408754 (not (= lambda!324511 lambda!324505))))

(declare-fun bs!1408755 () Bool)

(assert (= bs!1408755 (and d!1864975 b!5948770)))

(assert (=> bs!1408755 (not (= lambda!324511 lambda!324504))))

(declare-fun bs!1408756 () Bool)

(assert (= bs!1408756 (and d!1864975 b!5948767)))

(assert (=> bs!1408756 (not (= lambda!324511 lambda!324503))))

(declare-fun bs!1408757 () Bool)

(assert (= bs!1408757 (and d!1864975 b!5948765)))

(assert (=> bs!1408757 (not (= lambda!324511 lambda!324502))))

(declare-fun bs!1408758 () Bool)

(assert (= bs!1408758 (and d!1864975 d!1864967)))

(assert (=> bs!1408758 (= lambda!324511 lambda!324497)))

(declare-fun lt!2312750 () List!64270)

(assert (=> d!1864975 (forall!15073 lt!2312750 lambda!324511)))

(declare-fun e!3639346 () List!64270)

(assert (=> d!1864975 (= lt!2312750 e!3639346)))

(declare-fun c!1058344 () Bool)

(assert (=> d!1864975 (= c!1058344 (is-Cons!64147 zl!343))))

(assert (=> d!1864975 (= (unfocusZipperList!1411 zl!343) lt!2312750)))

(declare-fun b!5948807 () Bool)

(assert (=> b!5948807 (= e!3639346 (Cons!64146 (generalisedConcat!1587 (exprs!5874 (h!70595 zl!343))) (unfocusZipperList!1411 (t!377680 zl!343))))))

(declare-fun b!5948808 () Bool)

(assert (=> b!5948808 (= e!3639346 Nil!64146)))

(assert (= (and d!1864975 c!1058344) b!5948807))

(assert (= (and d!1864975 (not c!1058344)) b!5948808))

(declare-fun m!6836960 () Bool)

(assert (=> d!1864975 m!6836960))

(assert (=> b!5948807 m!6836692))

(declare-fun m!6836962 () Bool)

(assert (=> b!5948807 m!6836962))

(assert (=> b!5948613 d!1864975))

(declare-fun d!1864977 () Bool)

(declare-fun c!1058347 () Bool)

(declare-fun isEmpty!36027 (List!64269) Bool)

(assert (=> d!1864977 (= c!1058347 (isEmpty!36027 s!2326))))

(declare-fun e!3639349 () Bool)

(assert (=> d!1864977 (= (matchZipper!2026 lt!2312616 s!2326) e!3639349)))

(declare-fun b!5948813 () Bool)

(declare-fun nullableZipper!1797 ((Set Context!10748)) Bool)

(assert (=> b!5948813 (= e!3639349 (nullableZipper!1797 lt!2312616))))

(declare-fun b!5948814 () Bool)

(declare-fun head!12522 (List!64269) C!32250)

(declare-fun tail!11607 (List!64269) List!64269)

(assert (=> b!5948814 (= e!3639349 (matchZipper!2026 (derivationStepZipper!1971 lt!2312616 (head!12522 s!2326)) (tail!11607 s!2326)))))

(assert (= (and d!1864977 c!1058347) b!5948813))

(assert (= (and d!1864977 (not c!1058347)) b!5948814))

(declare-fun m!6836964 () Bool)

(assert (=> d!1864977 m!6836964))

(declare-fun m!6836966 () Bool)

(assert (=> b!5948813 m!6836966))

(declare-fun m!6836968 () Bool)

(assert (=> b!5948814 m!6836968))

(assert (=> b!5948814 m!6836968))

(declare-fun m!6836970 () Bool)

(assert (=> b!5948814 m!6836970))

(declare-fun m!6836972 () Bool)

(assert (=> b!5948814 m!6836972))

(assert (=> b!5948814 m!6836970))

(assert (=> b!5948814 m!6836972))

(declare-fun m!6836974 () Bool)

(assert (=> b!5948814 m!6836974))

(assert (=> b!5948593 d!1864977))

(declare-fun d!1864979 () Bool)

(declare-fun c!1058348 () Bool)

(assert (=> d!1864979 (= c!1058348 (isEmpty!36027 (t!377678 s!2326)))))

(declare-fun e!3639350 () Bool)

(assert (=> d!1864979 (= (matchZipper!2026 (derivationStepZipper!1971 lt!2312616 (h!70593 s!2326)) (t!377678 s!2326)) e!3639350)))

(declare-fun b!5948815 () Bool)

(assert (=> b!5948815 (= e!3639350 (nullableZipper!1797 (derivationStepZipper!1971 lt!2312616 (h!70593 s!2326))))))

(declare-fun b!5948816 () Bool)

(assert (=> b!5948816 (= e!3639350 (matchZipper!2026 (derivationStepZipper!1971 (derivationStepZipper!1971 lt!2312616 (h!70593 s!2326)) (head!12522 (t!377678 s!2326))) (tail!11607 (t!377678 s!2326))))))

(assert (= (and d!1864979 c!1058348) b!5948815))

(assert (= (and d!1864979 (not c!1058348)) b!5948816))

(declare-fun m!6836976 () Bool)

(assert (=> d!1864979 m!6836976))

(assert (=> b!5948815 m!6836700))

(declare-fun m!6836978 () Bool)

(assert (=> b!5948815 m!6836978))

(declare-fun m!6836980 () Bool)

(assert (=> b!5948816 m!6836980))

(assert (=> b!5948816 m!6836700))

(assert (=> b!5948816 m!6836980))

(declare-fun m!6836982 () Bool)

(assert (=> b!5948816 m!6836982))

(declare-fun m!6836984 () Bool)

(assert (=> b!5948816 m!6836984))

(assert (=> b!5948816 m!6836982))

(assert (=> b!5948816 m!6836984))

(declare-fun m!6836986 () Bool)

(assert (=> b!5948816 m!6836986))

(assert (=> b!5948593 d!1864979))

(declare-fun bs!1408759 () Bool)

(declare-fun d!1864981 () Bool)

(assert (= bs!1408759 (and d!1864981 b!5948598)))

(declare-fun lambda!324514 () Int)

(assert (=> bs!1408759 (= lambda!324514 lambda!324479)))

(assert (=> d!1864981 true))

(assert (=> d!1864981 (= (derivationStepZipper!1971 lt!2312616 (h!70593 s!2326)) (flatMap!1503 lt!2312616 lambda!324514))))

(declare-fun bs!1408760 () Bool)

(assert (= bs!1408760 d!1864981))

(declare-fun m!6836988 () Bool)

(assert (=> bs!1408760 m!6836988))

(assert (=> b!5948593 d!1864981))

(declare-fun bs!1408761 () Bool)

(declare-fun d!1864983 () Bool)

(assert (= bs!1408761 (and d!1864983 d!1864975)))

(declare-fun lambda!324517 () Int)

(assert (=> bs!1408761 (= lambda!324517 lambda!324511)))

(declare-fun bs!1408762 () Bool)

(assert (= bs!1408762 (and d!1864983 d!1864973)))

(assert (=> bs!1408762 (= lambda!324517 lambda!324508)))

(declare-fun bs!1408763 () Bool)

(assert (= bs!1408763 (and d!1864983 b!5948772)))

(assert (=> bs!1408763 (not (= lambda!324517 lambda!324505))))

(declare-fun bs!1408764 () Bool)

(assert (= bs!1408764 (and d!1864983 b!5948770)))

(assert (=> bs!1408764 (not (= lambda!324517 lambda!324504))))

(declare-fun bs!1408765 () Bool)

(assert (= bs!1408765 (and d!1864983 b!5948767)))

(assert (=> bs!1408765 (not (= lambda!324517 lambda!324503))))

(declare-fun bs!1408766 () Bool)

(assert (= bs!1408766 (and d!1864983 b!5948765)))

(assert (=> bs!1408766 (not (= lambda!324517 lambda!324502))))

(declare-fun bs!1408767 () Bool)

(assert (= bs!1408767 (and d!1864983 d!1864967)))

(assert (=> bs!1408767 (= lambda!324517 lambda!324497)))

(assert (=> d!1864983 (= (inv!83223 (h!70595 zl!343)) (forall!15073 (exprs!5874 (h!70595 zl!343)) lambda!324517))))

(declare-fun bs!1408768 () Bool)

(assert (= bs!1408768 d!1864983))

(declare-fun m!6836990 () Bool)

(assert (=> bs!1408768 m!6836990))

(assert (=> b!5948611 d!1864983))

(declare-fun d!1864985 () Bool)

(declare-fun c!1058351 () Bool)

(assert (=> d!1864985 (= c!1058351 (isEmpty!36027 (t!377678 s!2326)))))

(declare-fun e!3639351 () Bool)

(assert (=> d!1864985 (= (matchZipper!2026 lt!2312635 (t!377678 s!2326)) e!3639351)))

(declare-fun b!5948819 () Bool)

(assert (=> b!5948819 (= e!3639351 (nullableZipper!1797 lt!2312635))))

(declare-fun b!5948820 () Bool)

(assert (=> b!5948820 (= e!3639351 (matchZipper!2026 (derivationStepZipper!1971 lt!2312635 (head!12522 (t!377678 s!2326))) (tail!11607 (t!377678 s!2326))))))

(assert (= (and d!1864985 c!1058351) b!5948819))

(assert (= (and d!1864985 (not c!1058351)) b!5948820))

(assert (=> d!1864985 m!6836976))

(declare-fun m!6836992 () Bool)

(assert (=> b!5948819 m!6836992))

(assert (=> b!5948820 m!6836980))

(assert (=> b!5948820 m!6836980))

(declare-fun m!6836994 () Bool)

(assert (=> b!5948820 m!6836994))

(assert (=> b!5948820 m!6836984))

(assert (=> b!5948820 m!6836994))

(assert (=> b!5948820 m!6836984))

(declare-fun m!6836996 () Bool)

(assert (=> b!5948820 m!6836996))

(assert (=> b!5948601 d!1864985))

(declare-fun b!5948839 () Bool)

(declare-fun e!3639370 () Bool)

(declare-fun e!3639371 () Bool)

(assert (=> b!5948839 (= e!3639370 e!3639371)))

(declare-fun c!1058356 () Bool)

(assert (=> b!5948839 (= c!1058356 (is-Star!15990 r!7292))))

(declare-fun b!5948840 () Bool)

(declare-fun e!3639368 () Bool)

(assert (=> b!5948840 (= e!3639371 e!3639368)))

(declare-fun res!2490388 () Bool)

(assert (=> b!5948840 (= res!2490388 (not (nullable!5985 (reg!16319 r!7292))))))

(assert (=> b!5948840 (=> (not res!2490388) (not e!3639368))))

(declare-fun bm!473652 () Bool)

(declare-fun call!473659 () Bool)

(declare-fun c!1058357 () Bool)

(assert (=> bm!473652 (= call!473659 (validRegex!7726 (ite c!1058356 (reg!16319 r!7292) (ite c!1058357 (regTwo!32493 r!7292) (regTwo!32492 r!7292)))))))

(declare-fun b!5948841 () Bool)

(declare-fun res!2490386 () Bool)

(declare-fun e!3639367 () Bool)

(assert (=> b!5948841 (=> (not res!2490386) (not e!3639367))))

(declare-fun call!473658 () Bool)

(assert (=> b!5948841 (= res!2490386 call!473658)))

(declare-fun e!3639369 () Bool)

(assert (=> b!5948841 (= e!3639369 e!3639367)))

(declare-fun b!5948842 () Bool)

(declare-fun res!2490384 () Bool)

(declare-fun e!3639366 () Bool)

(assert (=> b!5948842 (=> res!2490384 e!3639366)))

(assert (=> b!5948842 (= res!2490384 (not (is-Concat!24835 r!7292)))))

(assert (=> b!5948842 (= e!3639369 e!3639366)))

(declare-fun b!5948843 () Bool)

(declare-fun e!3639372 () Bool)

(declare-fun call!473657 () Bool)

(assert (=> b!5948843 (= e!3639372 call!473657)))

(declare-fun d!1864987 () Bool)

(declare-fun res!2490387 () Bool)

(assert (=> d!1864987 (=> res!2490387 e!3639370)))

(assert (=> d!1864987 (= res!2490387 (is-ElementMatch!15990 r!7292))))

(assert (=> d!1864987 (= (validRegex!7726 r!7292) e!3639370)))

(declare-fun b!5948844 () Bool)

(assert (=> b!5948844 (= e!3639371 e!3639369)))

(assert (=> b!5948844 (= c!1058357 (is-Union!15990 r!7292))))

(declare-fun b!5948845 () Bool)

(assert (=> b!5948845 (= e!3639366 e!3639372)))

(declare-fun res!2490385 () Bool)

(assert (=> b!5948845 (=> (not res!2490385) (not e!3639372))))

(assert (=> b!5948845 (= res!2490385 call!473658)))

(declare-fun b!5948846 () Bool)

(assert (=> b!5948846 (= e!3639367 call!473657)))

(declare-fun bm!473653 () Bool)

(assert (=> bm!473653 (= call!473658 (validRegex!7726 (ite c!1058357 (regOne!32493 r!7292) (regOne!32492 r!7292))))))

(declare-fun b!5948847 () Bool)

(assert (=> b!5948847 (= e!3639368 call!473659)))

(declare-fun bm!473654 () Bool)

(assert (=> bm!473654 (= call!473657 call!473659)))

(assert (= (and d!1864987 (not res!2490387)) b!5948839))

(assert (= (and b!5948839 c!1058356) b!5948840))

(assert (= (and b!5948839 (not c!1058356)) b!5948844))

(assert (= (and b!5948840 res!2490388) b!5948847))

(assert (= (and b!5948844 c!1058357) b!5948841))

(assert (= (and b!5948844 (not c!1058357)) b!5948842))

(assert (= (and b!5948841 res!2490386) b!5948846))

(assert (= (and b!5948842 (not res!2490384)) b!5948845))

(assert (= (and b!5948845 res!2490385) b!5948843))

(assert (= (or b!5948846 b!5948843) bm!473654))

(assert (= (or b!5948841 b!5948845) bm!473653))

(assert (= (or b!5948847 bm!473654) bm!473652))

(declare-fun m!6836998 () Bool)

(assert (=> b!5948840 m!6836998))

(declare-fun m!6837000 () Bool)

(assert (=> bm!473652 m!6837000))

(declare-fun m!6837002 () Bool)

(assert (=> bm!473653 m!6837002))

(assert (=> start!604056 d!1864987))

(declare-fun bs!1408769 () Bool)

(declare-fun d!1864989 () Bool)

(assert (= bs!1408769 (and d!1864989 d!1864975)))

(declare-fun lambda!324518 () Int)

(assert (=> bs!1408769 (= lambda!324518 lambda!324511)))

(declare-fun bs!1408770 () Bool)

(assert (= bs!1408770 (and d!1864989 d!1864983)))

(assert (=> bs!1408770 (= lambda!324518 lambda!324517)))

(declare-fun bs!1408771 () Bool)

(assert (= bs!1408771 (and d!1864989 d!1864973)))

(assert (=> bs!1408771 (= lambda!324518 lambda!324508)))

(declare-fun bs!1408772 () Bool)

(assert (= bs!1408772 (and d!1864989 b!5948772)))

(assert (=> bs!1408772 (not (= lambda!324518 lambda!324505))))

(declare-fun bs!1408773 () Bool)

(assert (= bs!1408773 (and d!1864989 b!5948770)))

(assert (=> bs!1408773 (not (= lambda!324518 lambda!324504))))

(declare-fun bs!1408774 () Bool)

(assert (= bs!1408774 (and d!1864989 b!5948767)))

(assert (=> bs!1408774 (not (= lambda!324518 lambda!324503))))

(declare-fun bs!1408775 () Bool)

(assert (= bs!1408775 (and d!1864989 b!5948765)))

(assert (=> bs!1408775 (not (= lambda!324518 lambda!324502))))

(declare-fun bs!1408776 () Bool)

(assert (= bs!1408776 (and d!1864989 d!1864967)))

(assert (=> bs!1408776 (= lambda!324518 lambda!324497)))

(assert (=> d!1864989 (= (inv!83223 setElem!40416) (forall!15073 (exprs!5874 setElem!40416) lambda!324518))))

(declare-fun bs!1408777 () Bool)

(assert (= bs!1408777 d!1864989))

(declare-fun m!6837004 () Bool)

(assert (=> bs!1408777 m!6837004))

(assert (=> setNonEmpty!40416 d!1864989))

(declare-fun d!1864991 () Bool)

(declare-fun dynLambda!25093 (Int Context!10748) (Set Context!10748))

(assert (=> d!1864991 (= (flatMap!1503 lt!2312616 lambda!324479) (dynLambda!25093 lambda!324479 lt!2312618))))

(declare-fun lt!2312753 () Unit!157251)

(declare-fun choose!44813 ((Set Context!10748) Context!10748 Int) Unit!157251)

(assert (=> d!1864991 (= lt!2312753 (choose!44813 lt!2312616 lt!2312618 lambda!324479))))

(assert (=> d!1864991 (= lt!2312616 (set.insert lt!2312618 (as set.empty (Set Context!10748))))))

(assert (=> d!1864991 (= (lemmaFlatMapOnSingletonSet!1029 lt!2312616 lt!2312618 lambda!324479) lt!2312753)))

(declare-fun b_lambda!223545 () Bool)

(assert (=> (not b_lambda!223545) (not d!1864991)))

(declare-fun bs!1408778 () Bool)

(assert (= bs!1408778 d!1864991))

(assert (=> bs!1408778 m!6836712))

(declare-fun m!6837006 () Bool)

(assert (=> bs!1408778 m!6837006))

(declare-fun m!6837008 () Bool)

(assert (=> bs!1408778 m!6837008))

(assert (=> bs!1408778 m!6836724))

(assert (=> b!5948600 d!1864991))

(declare-fun d!1864993 () Bool)

(declare-fun nullableFct!1957 (Regex!15990) Bool)

(assert (=> d!1864993 (= (nullable!5985 (regOne!32492 r!7292)) (nullableFct!1957 (regOne!32492 r!7292)))))

(declare-fun bs!1408779 () Bool)

(assert (= bs!1408779 d!1864993))

(declare-fun m!6837010 () Bool)

(assert (=> bs!1408779 m!6837010))

(assert (=> b!5948600 d!1864993))

(declare-fun d!1864995 () Bool)

(assert (=> d!1864995 (= (flatMap!1503 lt!2312638 lambda!324479) (dynLambda!25093 lambda!324479 lt!2312628))))

(declare-fun lt!2312754 () Unit!157251)

(assert (=> d!1864995 (= lt!2312754 (choose!44813 lt!2312638 lt!2312628 lambda!324479))))

(assert (=> d!1864995 (= lt!2312638 (set.insert lt!2312628 (as set.empty (Set Context!10748))))))

(assert (=> d!1864995 (= (lemmaFlatMapOnSingletonSet!1029 lt!2312638 lt!2312628 lambda!324479) lt!2312754)))

(declare-fun b_lambda!223547 () Bool)

(assert (=> (not b_lambda!223547) (not d!1864995)))

(declare-fun bs!1408780 () Bool)

(assert (= bs!1408780 d!1864995))

(assert (=> bs!1408780 m!6836732))

(declare-fun m!6837012 () Bool)

(assert (=> bs!1408780 m!6837012))

(declare-fun m!6837014 () Bool)

(assert (=> bs!1408780 m!6837014))

(assert (=> bs!1408780 m!6836728))

(assert (=> b!5948600 d!1864995))

(declare-fun bm!473667 () Bool)

(declare-fun call!473675 () (Set Context!10748))

(declare-fun call!473673 () (Set Context!10748))

(assert (=> bm!473667 (= call!473675 call!473673)))

(declare-fun b!5948870 () Bool)

(declare-fun e!3639385 () (Set Context!10748))

(assert (=> b!5948870 (= e!3639385 (as set.empty (Set Context!10748)))))

(declare-fun bm!473669 () Bool)

(declare-fun call!473676 () (Set Context!10748))

(assert (=> bm!473669 (= call!473676 call!473675)))

(declare-fun b!5948871 () Bool)

(declare-fun e!3639388 () (Set Context!10748))

(assert (=> b!5948871 (= e!3639388 (set.insert lt!2312618 (as set.empty (Set Context!10748))))))

(declare-fun b!5948872 () Bool)

(declare-fun e!3639389 () (Set Context!10748))

(assert (=> b!5948872 (= e!3639388 e!3639389)))

(declare-fun c!1058370 () Bool)

(assert (=> b!5948872 (= c!1058370 (is-Union!15990 (regOne!32492 r!7292)))))

(declare-fun b!5948873 () Bool)

(declare-fun call!473672 () (Set Context!10748))

(assert (=> b!5948873 (= e!3639389 (set.union call!473672 call!473673))))

(declare-fun b!5948874 () Bool)

(declare-fun e!3639386 () (Set Context!10748))

(assert (=> b!5948874 (= e!3639386 call!473676)))

(declare-fun b!5948875 () Bool)

(declare-fun c!1058372 () Bool)

(assert (=> b!5948875 (= c!1058372 (is-Star!15990 (regOne!32492 r!7292)))))

(assert (=> b!5948875 (= e!3639386 e!3639385)))

(declare-fun bm!473668 () Bool)

(declare-fun call!473674 () List!64270)

(declare-fun call!473677 () List!64270)

(assert (=> bm!473668 (= call!473674 call!473677)))

(declare-fun d!1864997 () Bool)

(declare-fun c!1058368 () Bool)

(assert (=> d!1864997 (= c!1058368 (and (is-ElementMatch!15990 (regOne!32492 r!7292)) (= (c!1058304 (regOne!32492 r!7292)) (h!70593 s!2326))))))

(assert (=> d!1864997 (= (derivationStepZipperDown!1240 (regOne!32492 r!7292) lt!2312618 (h!70593 s!2326)) e!3639388)))

(declare-fun b!5948876 () Bool)

(declare-fun e!3639387 () Bool)

(assert (=> b!5948876 (= e!3639387 (nullable!5985 (regOne!32492 (regOne!32492 r!7292))))))

(declare-fun bm!473670 () Bool)

(assert (=> bm!473670 (= call!473672 (derivationStepZipperDown!1240 (ite c!1058370 (regOne!32493 (regOne!32492 r!7292)) (regOne!32492 (regOne!32492 r!7292))) (ite c!1058370 lt!2312618 (Context!10749 call!473677)) (h!70593 s!2326)))))

(declare-fun b!5948877 () Bool)

(assert (=> b!5948877 (= e!3639385 call!473676)))

(declare-fun bm!473671 () Bool)

(declare-fun c!1058371 () Bool)

(declare-fun c!1058369 () Bool)

(declare-fun $colon$colon!1877 (List!64270 Regex!15990) List!64270)

(assert (=> bm!473671 (= call!473677 ($colon$colon!1877 (exprs!5874 lt!2312618) (ite (or c!1058369 c!1058371) (regTwo!32492 (regOne!32492 r!7292)) (regOne!32492 r!7292))))))

(declare-fun b!5948878 () Bool)

(assert (=> b!5948878 (= c!1058369 e!3639387)))

(declare-fun res!2490391 () Bool)

(assert (=> b!5948878 (=> (not res!2490391) (not e!3639387))))

(assert (=> b!5948878 (= res!2490391 (is-Concat!24835 (regOne!32492 r!7292)))))

(declare-fun e!3639390 () (Set Context!10748))

(assert (=> b!5948878 (= e!3639389 e!3639390)))

(declare-fun bm!473672 () Bool)

(assert (=> bm!473672 (= call!473673 (derivationStepZipperDown!1240 (ite c!1058370 (regTwo!32493 (regOne!32492 r!7292)) (ite c!1058369 (regTwo!32492 (regOne!32492 r!7292)) (ite c!1058371 (regOne!32492 (regOne!32492 r!7292)) (reg!16319 (regOne!32492 r!7292))))) (ite (or c!1058370 c!1058369) lt!2312618 (Context!10749 call!473674)) (h!70593 s!2326)))))

(declare-fun b!5948879 () Bool)

(assert (=> b!5948879 (= e!3639390 (set.union call!473672 call!473675))))

(declare-fun b!5948880 () Bool)

(assert (=> b!5948880 (= e!3639390 e!3639386)))

(assert (=> b!5948880 (= c!1058371 (is-Concat!24835 (regOne!32492 r!7292)))))

(assert (= (and d!1864997 c!1058368) b!5948871))

(assert (= (and d!1864997 (not c!1058368)) b!5948872))

(assert (= (and b!5948872 c!1058370) b!5948873))

(assert (= (and b!5948872 (not c!1058370)) b!5948878))

(assert (= (and b!5948878 res!2490391) b!5948876))

(assert (= (and b!5948878 c!1058369) b!5948879))

(assert (= (and b!5948878 (not c!1058369)) b!5948880))

(assert (= (and b!5948880 c!1058371) b!5948874))

(assert (= (and b!5948880 (not c!1058371)) b!5948875))

(assert (= (and b!5948875 c!1058372) b!5948877))

(assert (= (and b!5948875 (not c!1058372)) b!5948870))

(assert (= (or b!5948874 b!5948877) bm!473668))

(assert (= (or b!5948874 b!5948877) bm!473669))

(assert (= (or b!5948879 bm!473668) bm!473671))

(assert (= (or b!5948879 bm!473669) bm!473667))

(assert (= (or b!5948873 bm!473667) bm!473672))

(assert (= (or b!5948873 b!5948879) bm!473670))

(declare-fun m!6837016 () Bool)

(assert (=> bm!473670 m!6837016))

(declare-fun m!6837018 () Bool)

(assert (=> bm!473671 m!6837018))

(assert (=> b!5948871 m!6836724))

(declare-fun m!6837020 () Bool)

(assert (=> bm!473672 m!6837020))

(declare-fun m!6837022 () Bool)

(assert (=> b!5948876 m!6837022))

(assert (=> b!5948600 d!1864997))

(declare-fun d!1864999 () Bool)

(declare-fun choose!44814 ((Set Context!10748) Int) (Set Context!10748))

(assert (=> d!1864999 (= (flatMap!1503 lt!2312638 lambda!324479) (choose!44814 lt!2312638 lambda!324479))))

(declare-fun bs!1408781 () Bool)

(assert (= bs!1408781 d!1864999))

(declare-fun m!6837024 () Bool)

(assert (=> bs!1408781 m!6837024))

(assert (=> b!5948600 d!1864999))

(declare-fun d!1865001 () Bool)

(declare-fun c!1058378 () Bool)

(declare-fun e!3639399 () Bool)

(assert (=> d!1865001 (= c!1058378 e!3639399)))

(declare-fun res!2490394 () Bool)

(assert (=> d!1865001 (=> (not res!2490394) (not e!3639399))))

(assert (=> d!1865001 (= res!2490394 (is-Cons!64146 (exprs!5874 lt!2312618)))))

(declare-fun e!3639397 () (Set Context!10748))

(assert (=> d!1865001 (= (derivationStepZipperUp!1166 lt!2312618 (h!70593 s!2326)) e!3639397)))

(declare-fun bm!473675 () Bool)

(declare-fun call!473680 () (Set Context!10748))

(assert (=> bm!473675 (= call!473680 (derivationStepZipperDown!1240 (h!70594 (exprs!5874 lt!2312618)) (Context!10749 (t!377679 (exprs!5874 lt!2312618))) (h!70593 s!2326)))))

(declare-fun b!5948891 () Bool)

(declare-fun e!3639398 () (Set Context!10748))

(assert (=> b!5948891 (= e!3639398 (as set.empty (Set Context!10748)))))

(declare-fun b!5948892 () Bool)

(assert (=> b!5948892 (= e!3639397 (set.union call!473680 (derivationStepZipperUp!1166 (Context!10749 (t!377679 (exprs!5874 lt!2312618))) (h!70593 s!2326))))))

(declare-fun b!5948893 () Bool)

(assert (=> b!5948893 (= e!3639398 call!473680)))

(declare-fun b!5948894 () Bool)

(assert (=> b!5948894 (= e!3639397 e!3639398)))

(declare-fun c!1058377 () Bool)

(assert (=> b!5948894 (= c!1058377 (is-Cons!64146 (exprs!5874 lt!2312618)))))

(declare-fun b!5948895 () Bool)

(assert (=> b!5948895 (= e!3639399 (nullable!5985 (h!70594 (exprs!5874 lt!2312618))))))

(assert (= (and d!1865001 res!2490394) b!5948895))

(assert (= (and d!1865001 c!1058378) b!5948892))

(assert (= (and d!1865001 (not c!1058378)) b!5948894))

(assert (= (and b!5948894 c!1058377) b!5948893))

(assert (= (and b!5948894 (not c!1058377)) b!5948891))

(assert (= (or b!5948892 b!5948893) bm!473675))

(declare-fun m!6837026 () Bool)

(assert (=> bm!473675 m!6837026))

(declare-fun m!6837028 () Bool)

(assert (=> b!5948892 m!6837028))

(declare-fun m!6837030 () Bool)

(assert (=> b!5948895 m!6837030))

(assert (=> b!5948600 d!1865001))

(declare-fun d!1865003 () Bool)

(assert (=> d!1865003 (= (flatMap!1503 lt!2312616 lambda!324479) (choose!44814 lt!2312616 lambda!324479))))

(declare-fun bs!1408782 () Bool)

(assert (= bs!1408782 d!1865003))

(declare-fun m!6837032 () Bool)

(assert (=> bs!1408782 m!6837032))

(assert (=> b!5948600 d!1865003))

(declare-fun bm!473676 () Bool)

(declare-fun call!473684 () (Set Context!10748))

(declare-fun call!473682 () (Set Context!10748))

(assert (=> bm!473676 (= call!473684 call!473682)))

(declare-fun b!5948896 () Bool)

(declare-fun e!3639400 () (Set Context!10748))

(assert (=> b!5948896 (= e!3639400 (as set.empty (Set Context!10748)))))

(declare-fun bm!473678 () Bool)

(declare-fun call!473685 () (Set Context!10748))

(assert (=> bm!473678 (= call!473685 call!473684)))

(declare-fun b!5948897 () Bool)

(declare-fun e!3639403 () (Set Context!10748))

(assert (=> b!5948897 (= e!3639403 (set.insert lt!2312629 (as set.empty (Set Context!10748))))))

(declare-fun b!5948898 () Bool)

(declare-fun e!3639404 () (Set Context!10748))

(assert (=> b!5948898 (= e!3639403 e!3639404)))

(declare-fun c!1058381 () Bool)

(assert (=> b!5948898 (= c!1058381 (is-Union!15990 (regTwo!32492 r!7292)))))

(declare-fun b!5948899 () Bool)

(declare-fun call!473681 () (Set Context!10748))

(assert (=> b!5948899 (= e!3639404 (set.union call!473681 call!473682))))

(declare-fun b!5948900 () Bool)

(declare-fun e!3639401 () (Set Context!10748))

(assert (=> b!5948900 (= e!3639401 call!473685)))

(declare-fun b!5948901 () Bool)

(declare-fun c!1058383 () Bool)

(assert (=> b!5948901 (= c!1058383 (is-Star!15990 (regTwo!32492 r!7292)))))

(assert (=> b!5948901 (= e!3639401 e!3639400)))

(declare-fun bm!473677 () Bool)

(declare-fun call!473683 () List!64270)

(declare-fun call!473686 () List!64270)

(assert (=> bm!473677 (= call!473683 call!473686)))

(declare-fun d!1865005 () Bool)

(declare-fun c!1058379 () Bool)

(assert (=> d!1865005 (= c!1058379 (and (is-ElementMatch!15990 (regTwo!32492 r!7292)) (= (c!1058304 (regTwo!32492 r!7292)) (h!70593 s!2326))))))

(assert (=> d!1865005 (= (derivationStepZipperDown!1240 (regTwo!32492 r!7292) lt!2312629 (h!70593 s!2326)) e!3639403)))

(declare-fun b!5948902 () Bool)

(declare-fun e!3639402 () Bool)

(assert (=> b!5948902 (= e!3639402 (nullable!5985 (regOne!32492 (regTwo!32492 r!7292))))))

(declare-fun bm!473679 () Bool)

(assert (=> bm!473679 (= call!473681 (derivationStepZipperDown!1240 (ite c!1058381 (regOne!32493 (regTwo!32492 r!7292)) (regOne!32492 (regTwo!32492 r!7292))) (ite c!1058381 lt!2312629 (Context!10749 call!473686)) (h!70593 s!2326)))))

(declare-fun b!5948903 () Bool)

(assert (=> b!5948903 (= e!3639400 call!473685)))

(declare-fun c!1058380 () Bool)

(declare-fun c!1058382 () Bool)

(declare-fun bm!473680 () Bool)

(assert (=> bm!473680 (= call!473686 ($colon$colon!1877 (exprs!5874 lt!2312629) (ite (or c!1058380 c!1058382) (regTwo!32492 (regTwo!32492 r!7292)) (regTwo!32492 r!7292))))))

(declare-fun b!5948904 () Bool)

(assert (=> b!5948904 (= c!1058380 e!3639402)))

(declare-fun res!2490395 () Bool)

(assert (=> b!5948904 (=> (not res!2490395) (not e!3639402))))

(assert (=> b!5948904 (= res!2490395 (is-Concat!24835 (regTwo!32492 r!7292)))))

(declare-fun e!3639405 () (Set Context!10748))

(assert (=> b!5948904 (= e!3639404 e!3639405)))

(declare-fun bm!473681 () Bool)

(assert (=> bm!473681 (= call!473682 (derivationStepZipperDown!1240 (ite c!1058381 (regTwo!32493 (regTwo!32492 r!7292)) (ite c!1058380 (regTwo!32492 (regTwo!32492 r!7292)) (ite c!1058382 (regOne!32492 (regTwo!32492 r!7292)) (reg!16319 (regTwo!32492 r!7292))))) (ite (or c!1058381 c!1058380) lt!2312629 (Context!10749 call!473683)) (h!70593 s!2326)))))

(declare-fun b!5948905 () Bool)

(assert (=> b!5948905 (= e!3639405 (set.union call!473681 call!473684))))

(declare-fun b!5948906 () Bool)

(assert (=> b!5948906 (= e!3639405 e!3639401)))

(assert (=> b!5948906 (= c!1058382 (is-Concat!24835 (regTwo!32492 r!7292)))))

(assert (= (and d!1865005 c!1058379) b!5948897))

(assert (= (and d!1865005 (not c!1058379)) b!5948898))

(assert (= (and b!5948898 c!1058381) b!5948899))

(assert (= (and b!5948898 (not c!1058381)) b!5948904))

(assert (= (and b!5948904 res!2490395) b!5948902))

(assert (= (and b!5948904 c!1058380) b!5948905))

(assert (= (and b!5948904 (not c!1058380)) b!5948906))

(assert (= (and b!5948906 c!1058382) b!5948900))

(assert (= (and b!5948906 (not c!1058382)) b!5948901))

(assert (= (and b!5948901 c!1058383) b!5948903))

(assert (= (and b!5948901 (not c!1058383)) b!5948896))

(assert (= (or b!5948900 b!5948903) bm!473677))

(assert (= (or b!5948900 b!5948903) bm!473678))

(assert (= (or b!5948905 bm!473677) bm!473680))

(assert (= (or b!5948905 bm!473678) bm!473676))

(assert (= (or b!5948899 bm!473676) bm!473681))

(assert (= (or b!5948899 b!5948905) bm!473679))

(declare-fun m!6837034 () Bool)

(assert (=> bm!473679 m!6837034))

(declare-fun m!6837036 () Bool)

(assert (=> bm!473680 m!6837036))

(declare-fun m!6837038 () Bool)

(assert (=> b!5948897 m!6837038))

(declare-fun m!6837040 () Bool)

(assert (=> bm!473681 m!6837040))

(declare-fun m!6837042 () Bool)

(assert (=> b!5948902 m!6837042))

(assert (=> b!5948600 d!1865005))

(declare-fun d!1865007 () Bool)

(declare-fun c!1058385 () Bool)

(declare-fun e!3639408 () Bool)

(assert (=> d!1865007 (= c!1058385 e!3639408)))

(declare-fun res!2490396 () Bool)

(assert (=> d!1865007 (=> (not res!2490396) (not e!3639408))))

(assert (=> d!1865007 (= res!2490396 (is-Cons!64146 (exprs!5874 lt!2312628)))))

(declare-fun e!3639406 () (Set Context!10748))

(assert (=> d!1865007 (= (derivationStepZipperUp!1166 lt!2312628 (h!70593 s!2326)) e!3639406)))

(declare-fun bm!473682 () Bool)

(declare-fun call!473687 () (Set Context!10748))

(assert (=> bm!473682 (= call!473687 (derivationStepZipperDown!1240 (h!70594 (exprs!5874 lt!2312628)) (Context!10749 (t!377679 (exprs!5874 lt!2312628))) (h!70593 s!2326)))))

(declare-fun b!5948907 () Bool)

(declare-fun e!3639407 () (Set Context!10748))

(assert (=> b!5948907 (= e!3639407 (as set.empty (Set Context!10748)))))

(declare-fun b!5948908 () Bool)

(assert (=> b!5948908 (= e!3639406 (set.union call!473687 (derivationStepZipperUp!1166 (Context!10749 (t!377679 (exprs!5874 lt!2312628))) (h!70593 s!2326))))))

(declare-fun b!5948909 () Bool)

(assert (=> b!5948909 (= e!3639407 call!473687)))

(declare-fun b!5948910 () Bool)

(assert (=> b!5948910 (= e!3639406 e!3639407)))

(declare-fun c!1058384 () Bool)

(assert (=> b!5948910 (= c!1058384 (is-Cons!64146 (exprs!5874 lt!2312628)))))

(declare-fun b!5948911 () Bool)

(assert (=> b!5948911 (= e!3639408 (nullable!5985 (h!70594 (exprs!5874 lt!2312628))))))

(assert (= (and d!1865007 res!2490396) b!5948911))

(assert (= (and d!1865007 c!1058385) b!5948908))

(assert (= (and d!1865007 (not c!1058385)) b!5948910))

(assert (= (and b!5948910 c!1058384) b!5948909))

(assert (= (and b!5948910 (not c!1058384)) b!5948907))

(assert (= (or b!5948908 b!5948909) bm!473682))

(declare-fun m!6837044 () Bool)

(assert (=> bm!473682 m!6837044))

(declare-fun m!6837046 () Bool)

(assert (=> b!5948908 m!6837046))

(declare-fun m!6837048 () Bool)

(assert (=> b!5948911 m!6837048))

(assert (=> b!5948600 d!1865007))

(declare-fun d!1865009 () Bool)

(assert (=> d!1865009 (= (isEmpty!36023 (t!377680 zl!343)) (is-Nil!64147 (t!377680 zl!343)))))

(assert (=> b!5948589 d!1865009))

(declare-fun bs!1408783 () Bool)

(declare-fun b!5948953 () Bool)

(assert (= bs!1408783 (and b!5948953 b!5948587)))

(declare-fun lambda!324523 () Int)

(assert (=> bs!1408783 (not (= lambda!324523 lambda!324477))))

(assert (=> bs!1408783 (not (= lambda!324523 lambda!324478))))

(assert (=> b!5948953 true))

(assert (=> b!5948953 true))

(declare-fun bs!1408784 () Bool)

(declare-fun b!5948954 () Bool)

(assert (= bs!1408784 (and b!5948954 b!5948587)))

(declare-fun lambda!324524 () Int)

(assert (=> bs!1408784 (not (= lambda!324524 lambda!324477))))

(assert (=> bs!1408784 (= lambda!324524 lambda!324478)))

(declare-fun bs!1408785 () Bool)

(assert (= bs!1408785 (and b!5948954 b!5948953)))

(assert (=> bs!1408785 (not (= lambda!324524 lambda!324523))))

(assert (=> b!5948954 true))

(assert (=> b!5948954 true))

(declare-fun b!5948944 () Bool)

(declare-fun res!2490415 () Bool)

(declare-fun e!3639430 () Bool)

(assert (=> b!5948944 (=> res!2490415 e!3639430)))

(declare-fun call!473693 () Bool)

(assert (=> b!5948944 (= res!2490415 call!473693)))

(declare-fun e!3639431 () Bool)

(assert (=> b!5948944 (= e!3639431 e!3639430)))

(declare-fun d!1865011 () Bool)

(declare-fun c!1058394 () Bool)

(assert (=> d!1865011 (= c!1058394 (is-EmptyExpr!15990 r!7292))))

(declare-fun e!3639428 () Bool)

(assert (=> d!1865011 (= (matchRSpec!3091 r!7292 s!2326) e!3639428)))

(declare-fun b!5948945 () Bool)

(assert (=> b!5948945 (= e!3639428 call!473693)))

(declare-fun b!5948946 () Bool)

(declare-fun e!3639427 () Bool)

(declare-fun e!3639433 () Bool)

(assert (=> b!5948946 (= e!3639427 e!3639433)))

(declare-fun res!2490414 () Bool)

(assert (=> b!5948946 (= res!2490414 (matchRSpec!3091 (regOne!32493 r!7292) s!2326))))

(assert (=> b!5948946 (=> res!2490414 e!3639433)))

(declare-fun call!473692 () Bool)

(declare-fun bm!473687 () Bool)

(declare-fun c!1058396 () Bool)

(assert (=> bm!473687 (= call!473692 (Exists!3060 (ite c!1058396 lambda!324523 lambda!324524)))))

(declare-fun b!5948947 () Bool)

(declare-fun c!1058395 () Bool)

(assert (=> b!5948947 (= c!1058395 (is-ElementMatch!15990 r!7292))))

(declare-fun e!3639429 () Bool)

(declare-fun e!3639432 () Bool)

(assert (=> b!5948947 (= e!3639429 e!3639432)))

(declare-fun b!5948948 () Bool)

(assert (=> b!5948948 (= e!3639428 e!3639429)))

(declare-fun res!2490413 () Bool)

(assert (=> b!5948948 (= res!2490413 (not (is-EmptyLang!15990 r!7292)))))

(assert (=> b!5948948 (=> (not res!2490413) (not e!3639429))))

(declare-fun bm!473688 () Bool)

(assert (=> bm!473688 (= call!473693 (isEmpty!36027 s!2326))))

(declare-fun b!5948949 () Bool)

(assert (=> b!5948949 (= e!3639427 e!3639431)))

(assert (=> b!5948949 (= c!1058396 (is-Star!15990 r!7292))))

(declare-fun b!5948950 () Bool)

(declare-fun c!1058397 () Bool)

(assert (=> b!5948950 (= c!1058397 (is-Union!15990 r!7292))))

(assert (=> b!5948950 (= e!3639432 e!3639427)))

(declare-fun b!5948951 () Bool)

(assert (=> b!5948951 (= e!3639433 (matchRSpec!3091 (regTwo!32493 r!7292) s!2326))))

(declare-fun b!5948952 () Bool)

(assert (=> b!5948952 (= e!3639432 (= s!2326 (Cons!64145 (c!1058304 r!7292) Nil!64145)))))

(assert (=> b!5948953 (= e!3639430 call!473692)))

(assert (=> b!5948954 (= e!3639431 call!473692)))

(assert (= (and d!1865011 c!1058394) b!5948945))

(assert (= (and d!1865011 (not c!1058394)) b!5948948))

(assert (= (and b!5948948 res!2490413) b!5948947))

(assert (= (and b!5948947 c!1058395) b!5948952))

(assert (= (and b!5948947 (not c!1058395)) b!5948950))

(assert (= (and b!5948950 c!1058397) b!5948946))

(assert (= (and b!5948950 (not c!1058397)) b!5948949))

(assert (= (and b!5948946 (not res!2490414)) b!5948951))

(assert (= (and b!5948949 c!1058396) b!5948944))

(assert (= (and b!5948949 (not c!1058396)) b!5948954))

(assert (= (and b!5948944 (not res!2490415)) b!5948953))

(assert (= (or b!5948953 b!5948954) bm!473687))

(assert (= (or b!5948945 b!5948944) bm!473688))

(declare-fun m!6837050 () Bool)

(assert (=> b!5948946 m!6837050))

(declare-fun m!6837052 () Bool)

(assert (=> bm!473687 m!6837052))

(assert (=> bm!473688 m!6836964))

(declare-fun m!6837054 () Bool)

(assert (=> b!5948951 m!6837054))

(assert (=> b!5948609 d!1865011))

(declare-fun bm!473691 () Bool)

(declare-fun call!473696 () Bool)

(assert (=> bm!473691 (= call!473696 (isEmpty!36027 s!2326))))

(declare-fun b!5948983 () Bool)

(declare-fun e!3639450 () Bool)

(declare-fun e!3639451 () Bool)

(assert (=> b!5948983 (= e!3639450 e!3639451)))

(declare-fun res!2490436 () Bool)

(assert (=> b!5948983 (=> res!2490436 e!3639451)))

(assert (=> b!5948983 (= res!2490436 call!473696)))

(declare-fun b!5948984 () Bool)

(declare-fun e!3639454 () Bool)

(assert (=> b!5948984 (= e!3639454 (nullable!5985 r!7292))))

(declare-fun b!5948986 () Bool)

(declare-fun res!2490435 () Bool)

(declare-fun e!3639452 () Bool)

(assert (=> b!5948986 (=> (not res!2490435) (not e!3639452))))

(assert (=> b!5948986 (= res!2490435 (isEmpty!36027 (tail!11607 s!2326)))))

(declare-fun b!5948987 () Bool)

(declare-fun res!2490434 () Bool)

(assert (=> b!5948987 (=> res!2490434 e!3639451)))

(assert (=> b!5948987 (= res!2490434 (not (isEmpty!36027 (tail!11607 s!2326))))))

(declare-fun b!5948988 () Bool)

(assert (=> b!5948988 (= e!3639452 (= (head!12522 s!2326) (c!1058304 r!7292)))))

(declare-fun b!5948989 () Bool)

(assert (=> b!5948989 (= e!3639451 (not (= (head!12522 s!2326) (c!1058304 r!7292))))))

(declare-fun b!5948990 () Bool)

(declare-fun e!3639448 () Bool)

(declare-fun e!3639453 () Bool)

(assert (=> b!5948990 (= e!3639448 e!3639453)))

(declare-fun c!1058404 () Bool)

(assert (=> b!5948990 (= c!1058404 (is-EmptyLang!15990 r!7292))))

(declare-fun b!5948991 () Bool)

(declare-fun res!2490438 () Bool)

(assert (=> b!5948991 (=> (not res!2490438) (not e!3639452))))

(assert (=> b!5948991 (= res!2490438 (not call!473696))))

(declare-fun b!5948992 () Bool)

(declare-fun res!2490439 () Bool)

(declare-fun e!3639449 () Bool)

(assert (=> b!5948992 (=> res!2490439 e!3639449)))

(assert (=> b!5948992 (= res!2490439 e!3639452)))

(declare-fun res!2490432 () Bool)

(assert (=> b!5948992 (=> (not res!2490432) (not e!3639452))))

(declare-fun lt!2312757 () Bool)

(assert (=> b!5948992 (= res!2490432 lt!2312757)))

(declare-fun d!1865013 () Bool)

(assert (=> d!1865013 e!3639448))

(declare-fun c!1058405 () Bool)

(assert (=> d!1865013 (= c!1058405 (is-EmptyExpr!15990 r!7292))))

(assert (=> d!1865013 (= lt!2312757 e!3639454)))

(declare-fun c!1058406 () Bool)

(assert (=> d!1865013 (= c!1058406 (isEmpty!36027 s!2326))))

(assert (=> d!1865013 (validRegex!7726 r!7292)))

(assert (=> d!1865013 (= (matchR!8173 r!7292 s!2326) lt!2312757)))

(declare-fun b!5948985 () Bool)

(declare-fun derivativeStep!4721 (Regex!15990 C!32250) Regex!15990)

(assert (=> b!5948985 (= e!3639454 (matchR!8173 (derivativeStep!4721 r!7292 (head!12522 s!2326)) (tail!11607 s!2326)))))

(declare-fun b!5948993 () Bool)

(declare-fun res!2490437 () Bool)

(assert (=> b!5948993 (=> res!2490437 e!3639449)))

(assert (=> b!5948993 (= res!2490437 (not (is-ElementMatch!15990 r!7292)))))

(assert (=> b!5948993 (= e!3639453 e!3639449)))

(declare-fun b!5948994 () Bool)

(assert (=> b!5948994 (= e!3639453 (not lt!2312757))))

(declare-fun b!5948995 () Bool)

(assert (=> b!5948995 (= e!3639448 (= lt!2312757 call!473696))))

(declare-fun b!5948996 () Bool)

(assert (=> b!5948996 (= e!3639449 e!3639450)))

(declare-fun res!2490433 () Bool)

(assert (=> b!5948996 (=> (not res!2490433) (not e!3639450))))

(assert (=> b!5948996 (= res!2490433 (not lt!2312757))))

(assert (= (and d!1865013 c!1058406) b!5948984))

(assert (= (and d!1865013 (not c!1058406)) b!5948985))

(assert (= (and d!1865013 c!1058405) b!5948995))

(assert (= (and d!1865013 (not c!1058405)) b!5948990))

(assert (= (and b!5948990 c!1058404) b!5948994))

(assert (= (and b!5948990 (not c!1058404)) b!5948993))

(assert (= (and b!5948993 (not res!2490437)) b!5948992))

(assert (= (and b!5948992 res!2490432) b!5948991))

(assert (= (and b!5948991 res!2490438) b!5948986))

(assert (= (and b!5948986 res!2490435) b!5948988))

(assert (= (and b!5948992 (not res!2490439)) b!5948996))

(assert (= (and b!5948996 res!2490433) b!5948983))

(assert (= (and b!5948983 (not res!2490436)) b!5948987))

(assert (= (and b!5948987 (not res!2490434)) b!5948989))

(assert (= (or b!5948995 b!5948983 b!5948991) bm!473691))

(assert (=> b!5948989 m!6836968))

(assert (=> b!5948987 m!6836972))

(assert (=> b!5948987 m!6836972))

(declare-fun m!6837056 () Bool)

(assert (=> b!5948987 m!6837056))

(assert (=> b!5948988 m!6836968))

(assert (=> d!1865013 m!6836964))

(assert (=> d!1865013 m!6836694))

(assert (=> b!5948985 m!6836968))

(assert (=> b!5948985 m!6836968))

(declare-fun m!6837058 () Bool)

(assert (=> b!5948985 m!6837058))

(assert (=> b!5948985 m!6836972))

(assert (=> b!5948985 m!6837058))

(assert (=> b!5948985 m!6836972))

(declare-fun m!6837060 () Bool)

(assert (=> b!5948985 m!6837060))

(declare-fun m!6837062 () Bool)

(assert (=> b!5948984 m!6837062))

(assert (=> b!5948986 m!6836972))

(assert (=> b!5948986 m!6836972))

(assert (=> b!5948986 m!6837056))

(assert (=> bm!473691 m!6836964))

(assert (=> b!5948609 d!1865013))

(declare-fun d!1865015 () Bool)

(assert (=> d!1865015 (= (matchR!8173 r!7292 s!2326) (matchRSpec!3091 r!7292 s!2326))))

(declare-fun lt!2312760 () Unit!157251)

(declare-fun choose!44815 (Regex!15990 List!64269) Unit!157251)

(assert (=> d!1865015 (= lt!2312760 (choose!44815 r!7292 s!2326))))

(assert (=> d!1865015 (validRegex!7726 r!7292)))

(assert (=> d!1865015 (= (mainMatchTheorem!3091 r!7292 s!2326) lt!2312760)))

(declare-fun bs!1408786 () Bool)

(assert (= bs!1408786 d!1865015))

(assert (=> bs!1408786 m!6836748))

(assert (=> bs!1408786 m!6836746))

(declare-fun m!6837064 () Bool)

(assert (=> bs!1408786 m!6837064))

(assert (=> bs!1408786 m!6836694))

(assert (=> b!5948609 d!1865015))

(declare-fun d!1865017 () Bool)

(assert (=> d!1865017 (= (isEmpty!36024 (t!377679 (exprs!5874 (h!70595 zl!343)))) (is-Nil!64146 (t!377679 (exprs!5874 (h!70595 zl!343)))))))

(assert (=> b!5948590 d!1865017))

(declare-fun d!1865019 () Bool)

(declare-fun c!1058407 () Bool)

(assert (=> d!1865019 (= c!1058407 (isEmpty!36027 s!2326))))

(declare-fun e!3639455 () Bool)

(assert (=> d!1865019 (= (matchZipper!2026 lt!2312638 s!2326) e!3639455)))

(declare-fun b!5948997 () Bool)

(assert (=> b!5948997 (= e!3639455 (nullableZipper!1797 lt!2312638))))

(declare-fun b!5948998 () Bool)

(assert (=> b!5948998 (= e!3639455 (matchZipper!2026 (derivationStepZipper!1971 lt!2312638 (head!12522 s!2326)) (tail!11607 s!2326)))))

(assert (= (and d!1865019 c!1058407) b!5948997))

(assert (= (and d!1865019 (not c!1058407)) b!5948998))

(assert (=> d!1865019 m!6836964))

(declare-fun m!6837066 () Bool)

(assert (=> b!5948997 m!6837066))

(assert (=> b!5948998 m!6836968))

(assert (=> b!5948998 m!6836968))

(declare-fun m!6837068 () Bool)

(assert (=> b!5948998 m!6837068))

(assert (=> b!5948998 m!6836972))

(assert (=> b!5948998 m!6837068))

(assert (=> b!5948998 m!6836972))

(declare-fun m!6837070 () Bool)

(assert (=> b!5948998 m!6837070))

(assert (=> b!5948607 d!1865019))

(declare-fun d!1865021 () Bool)

(declare-fun c!1058408 () Bool)

(assert (=> d!1865021 (= c!1058408 (isEmpty!36027 (t!377678 s!2326)))))

(declare-fun e!3639456 () Bool)

(assert (=> d!1865021 (= (matchZipper!2026 (derivationStepZipper!1971 lt!2312638 (h!70593 s!2326)) (t!377678 s!2326)) e!3639456)))

(declare-fun b!5948999 () Bool)

(assert (=> b!5948999 (= e!3639456 (nullableZipper!1797 (derivationStepZipper!1971 lt!2312638 (h!70593 s!2326))))))

(declare-fun b!5949000 () Bool)

(assert (=> b!5949000 (= e!3639456 (matchZipper!2026 (derivationStepZipper!1971 (derivationStepZipper!1971 lt!2312638 (h!70593 s!2326)) (head!12522 (t!377678 s!2326))) (tail!11607 (t!377678 s!2326))))))

(assert (= (and d!1865021 c!1058408) b!5948999))

(assert (= (and d!1865021 (not c!1058408)) b!5949000))

(assert (=> d!1865021 m!6836976))

(assert (=> b!5948999 m!6836766))

(declare-fun m!6837072 () Bool)

(assert (=> b!5948999 m!6837072))

(assert (=> b!5949000 m!6836980))

(assert (=> b!5949000 m!6836766))

(assert (=> b!5949000 m!6836980))

(declare-fun m!6837074 () Bool)

(assert (=> b!5949000 m!6837074))

(assert (=> b!5949000 m!6836984))

(assert (=> b!5949000 m!6837074))

(assert (=> b!5949000 m!6836984))

(declare-fun m!6837076 () Bool)

(assert (=> b!5949000 m!6837076))

(assert (=> b!5948607 d!1865021))

(declare-fun bs!1408787 () Bool)

(declare-fun d!1865023 () Bool)

(assert (= bs!1408787 (and d!1865023 b!5948598)))

(declare-fun lambda!324525 () Int)

(assert (=> bs!1408787 (= lambda!324525 lambda!324479)))

(declare-fun bs!1408788 () Bool)

(assert (= bs!1408788 (and d!1865023 d!1864981)))

(assert (=> bs!1408788 (= lambda!324525 lambda!324514)))

(assert (=> d!1865023 true))

(assert (=> d!1865023 (= (derivationStepZipper!1971 lt!2312638 (h!70593 s!2326)) (flatMap!1503 lt!2312638 lambda!324525))))

(declare-fun bs!1408789 () Bool)

(assert (= bs!1408789 d!1865023))

(declare-fun m!6837078 () Bool)

(assert (=> bs!1408789 m!6837078))

(assert (=> b!5948607 d!1865023))

(declare-fun bs!1408790 () Bool)

(declare-fun d!1865025 () Bool)

(assert (= bs!1408790 (and d!1865025 d!1864989)))

(declare-fun lambda!324526 () Int)

(assert (=> bs!1408790 (= lambda!324526 lambda!324518)))

(declare-fun bs!1408791 () Bool)

(assert (= bs!1408791 (and d!1865025 d!1864975)))

(assert (=> bs!1408791 (= lambda!324526 lambda!324511)))

(declare-fun bs!1408792 () Bool)

(assert (= bs!1408792 (and d!1865025 d!1864983)))

(assert (=> bs!1408792 (= lambda!324526 lambda!324517)))

(declare-fun bs!1408793 () Bool)

(assert (= bs!1408793 (and d!1865025 d!1864973)))

(assert (=> bs!1408793 (= lambda!324526 lambda!324508)))

(declare-fun bs!1408794 () Bool)

(assert (= bs!1408794 (and d!1865025 b!5948772)))

(assert (=> bs!1408794 (not (= lambda!324526 lambda!324505))))

(declare-fun bs!1408795 () Bool)

(assert (= bs!1408795 (and d!1865025 b!5948770)))

(assert (=> bs!1408795 (not (= lambda!324526 lambda!324504))))

(declare-fun bs!1408796 () Bool)

(assert (= bs!1408796 (and d!1865025 b!5948767)))

(assert (=> bs!1408796 (not (= lambda!324526 lambda!324503))))

(declare-fun bs!1408797 () Bool)

(assert (= bs!1408797 (and d!1865025 b!5948765)))

(assert (=> bs!1408797 (not (= lambda!324526 lambda!324502))))

(declare-fun bs!1408798 () Bool)

(assert (= bs!1408798 (and d!1865025 d!1864967)))

(assert (=> bs!1408798 (= lambda!324526 lambda!324497)))

(assert (=> d!1865025 (= (inv!83223 lt!2312634) (forall!15073 (exprs!5874 lt!2312634) lambda!324526))))

(declare-fun bs!1408799 () Bool)

(assert (= bs!1408799 d!1865025))

(declare-fun m!6837080 () Bool)

(assert (=> bs!1408799 m!6837080))

(assert (=> b!5948588 d!1865025))

(declare-fun d!1865027 () Bool)

(assert (=> d!1865027 (= (flatMap!1503 z!1189 lambda!324479) (choose!44814 z!1189 lambda!324479))))

(declare-fun bs!1408800 () Bool)

(assert (= bs!1408800 d!1865027))

(declare-fun m!6837082 () Bool)

(assert (=> bs!1408800 m!6837082))

(assert (=> b!5948598 d!1865027))

(declare-fun d!1865029 () Bool)

(declare-fun c!1058410 () Bool)

(declare-fun e!3639459 () Bool)

(assert (=> d!1865029 (= c!1058410 e!3639459)))

(declare-fun res!2490440 () Bool)

(assert (=> d!1865029 (=> (not res!2490440) (not e!3639459))))

(assert (=> d!1865029 (= res!2490440 (is-Cons!64146 (exprs!5874 (h!70595 zl!343))))))

(declare-fun e!3639457 () (Set Context!10748))

(assert (=> d!1865029 (= (derivationStepZipperUp!1166 (h!70595 zl!343) (h!70593 s!2326)) e!3639457)))

(declare-fun bm!473692 () Bool)

(declare-fun call!473697 () (Set Context!10748))

(assert (=> bm!473692 (= call!473697 (derivationStepZipperDown!1240 (h!70594 (exprs!5874 (h!70595 zl!343))) (Context!10749 (t!377679 (exprs!5874 (h!70595 zl!343)))) (h!70593 s!2326)))))

(declare-fun b!5949001 () Bool)

(declare-fun e!3639458 () (Set Context!10748))

(assert (=> b!5949001 (= e!3639458 (as set.empty (Set Context!10748)))))

(declare-fun b!5949002 () Bool)

(assert (=> b!5949002 (= e!3639457 (set.union call!473697 (derivationStepZipperUp!1166 (Context!10749 (t!377679 (exprs!5874 (h!70595 zl!343)))) (h!70593 s!2326))))))

(declare-fun b!5949003 () Bool)

(assert (=> b!5949003 (= e!3639458 call!473697)))

(declare-fun b!5949004 () Bool)

(assert (=> b!5949004 (= e!3639457 e!3639458)))

(declare-fun c!1058409 () Bool)

(assert (=> b!5949004 (= c!1058409 (is-Cons!64146 (exprs!5874 (h!70595 zl!343))))))

(declare-fun b!5949005 () Bool)

(assert (=> b!5949005 (= e!3639459 (nullable!5985 (h!70594 (exprs!5874 (h!70595 zl!343)))))))

(assert (= (and d!1865029 res!2490440) b!5949005))

(assert (= (and d!1865029 c!1058410) b!5949002))

(assert (= (and d!1865029 (not c!1058410)) b!5949004))

(assert (= (and b!5949004 c!1058409) b!5949003))

(assert (= (and b!5949004 (not c!1058409)) b!5949001))

(assert (= (or b!5949002 b!5949003) bm!473692))

(declare-fun m!6837084 () Bool)

(assert (=> bm!473692 m!6837084))

(declare-fun m!6837086 () Bool)

(assert (=> b!5949002 m!6837086))

(declare-fun m!6837088 () Bool)

(assert (=> b!5949005 m!6837088))

(assert (=> b!5948598 d!1865029))

(declare-fun d!1865031 () Bool)

(assert (=> d!1865031 (= (flatMap!1503 z!1189 lambda!324479) (dynLambda!25093 lambda!324479 (h!70595 zl!343)))))

(declare-fun lt!2312761 () Unit!157251)

(assert (=> d!1865031 (= lt!2312761 (choose!44813 z!1189 (h!70595 zl!343) lambda!324479))))

(assert (=> d!1865031 (= z!1189 (set.insert (h!70595 zl!343) (as set.empty (Set Context!10748))))))

(assert (=> d!1865031 (= (lemmaFlatMapOnSingletonSet!1029 z!1189 (h!70595 zl!343) lambda!324479) lt!2312761)))

(declare-fun b_lambda!223549 () Bool)

(assert (=> (not b_lambda!223549) (not d!1865031)))

(declare-fun bs!1408801 () Bool)

(assert (= bs!1408801 d!1865031))

(assert (=> bs!1408801 m!6836778))

(declare-fun m!6837090 () Bool)

(assert (=> bs!1408801 m!6837090))

(declare-fun m!6837092 () Bool)

(assert (=> bs!1408801 m!6837092))

(declare-fun m!6837094 () Bool)

(assert (=> bs!1408801 m!6837094))

(assert (=> b!5948598 d!1865031))

(declare-fun bm!473693 () Bool)

(declare-fun call!473701 () (Set Context!10748))

(declare-fun call!473699 () (Set Context!10748))

(assert (=> bm!473693 (= call!473701 call!473699)))

(declare-fun b!5949006 () Bool)

(declare-fun e!3639460 () (Set Context!10748))

(assert (=> b!5949006 (= e!3639460 (as set.empty (Set Context!10748)))))

(declare-fun bm!473695 () Bool)

(declare-fun call!473702 () (Set Context!10748))

(assert (=> bm!473695 (= call!473702 call!473701)))

(declare-fun b!5949007 () Bool)

(declare-fun e!3639463 () (Set Context!10748))

(assert (=> b!5949007 (= e!3639463 (set.insert lt!2312629 (as set.empty (Set Context!10748))))))

(declare-fun b!5949008 () Bool)

(declare-fun e!3639464 () (Set Context!10748))

(assert (=> b!5949008 (= e!3639463 e!3639464)))

(declare-fun c!1058413 () Bool)

(assert (=> b!5949008 (= c!1058413 (is-Union!15990 r!7292))))

(declare-fun b!5949009 () Bool)

(declare-fun call!473698 () (Set Context!10748))

(assert (=> b!5949009 (= e!3639464 (set.union call!473698 call!473699))))

(declare-fun b!5949010 () Bool)

(declare-fun e!3639461 () (Set Context!10748))

(assert (=> b!5949010 (= e!3639461 call!473702)))

(declare-fun b!5949011 () Bool)

(declare-fun c!1058415 () Bool)

(assert (=> b!5949011 (= c!1058415 (is-Star!15990 r!7292))))

(assert (=> b!5949011 (= e!3639461 e!3639460)))

(declare-fun bm!473694 () Bool)

(declare-fun call!473700 () List!64270)

(declare-fun call!473703 () List!64270)

(assert (=> bm!473694 (= call!473700 call!473703)))

(declare-fun d!1865033 () Bool)

(declare-fun c!1058411 () Bool)

(assert (=> d!1865033 (= c!1058411 (and (is-ElementMatch!15990 r!7292) (= (c!1058304 r!7292) (h!70593 s!2326))))))

(assert (=> d!1865033 (= (derivationStepZipperDown!1240 r!7292 lt!2312629 (h!70593 s!2326)) e!3639463)))

(declare-fun b!5949012 () Bool)

(declare-fun e!3639462 () Bool)

(assert (=> b!5949012 (= e!3639462 (nullable!5985 (regOne!32492 r!7292)))))

(declare-fun bm!473696 () Bool)

(assert (=> bm!473696 (= call!473698 (derivationStepZipperDown!1240 (ite c!1058413 (regOne!32493 r!7292) (regOne!32492 r!7292)) (ite c!1058413 lt!2312629 (Context!10749 call!473703)) (h!70593 s!2326)))))

(declare-fun b!5949013 () Bool)

(assert (=> b!5949013 (= e!3639460 call!473702)))

(declare-fun c!1058412 () Bool)

(declare-fun c!1058414 () Bool)

(declare-fun bm!473697 () Bool)

(assert (=> bm!473697 (= call!473703 ($colon$colon!1877 (exprs!5874 lt!2312629) (ite (or c!1058412 c!1058414) (regTwo!32492 r!7292) r!7292)))))

(declare-fun b!5949014 () Bool)

(assert (=> b!5949014 (= c!1058412 e!3639462)))

(declare-fun res!2490441 () Bool)

(assert (=> b!5949014 (=> (not res!2490441) (not e!3639462))))

(assert (=> b!5949014 (= res!2490441 (is-Concat!24835 r!7292))))

(declare-fun e!3639465 () (Set Context!10748))

(assert (=> b!5949014 (= e!3639464 e!3639465)))

(declare-fun bm!473698 () Bool)

(assert (=> bm!473698 (= call!473699 (derivationStepZipperDown!1240 (ite c!1058413 (regTwo!32493 r!7292) (ite c!1058412 (regTwo!32492 r!7292) (ite c!1058414 (regOne!32492 r!7292) (reg!16319 r!7292)))) (ite (or c!1058413 c!1058412) lt!2312629 (Context!10749 call!473700)) (h!70593 s!2326)))))

(declare-fun b!5949015 () Bool)

(assert (=> b!5949015 (= e!3639465 (set.union call!473698 call!473701))))

(declare-fun b!5949016 () Bool)

(assert (=> b!5949016 (= e!3639465 e!3639461)))

(assert (=> b!5949016 (= c!1058414 (is-Concat!24835 r!7292))))

(assert (= (and d!1865033 c!1058411) b!5949007))

(assert (= (and d!1865033 (not c!1058411)) b!5949008))

(assert (= (and b!5949008 c!1058413) b!5949009))

(assert (= (and b!5949008 (not c!1058413)) b!5949014))

(assert (= (and b!5949014 res!2490441) b!5949012))

(assert (= (and b!5949014 c!1058412) b!5949015))

(assert (= (and b!5949014 (not c!1058412)) b!5949016))

(assert (= (and b!5949016 c!1058414) b!5949010))

(assert (= (and b!5949016 (not c!1058414)) b!5949011))

(assert (= (and b!5949011 c!1058415) b!5949013))

(assert (= (and b!5949011 (not c!1058415)) b!5949006))

(assert (= (or b!5949010 b!5949013) bm!473694))

(assert (= (or b!5949010 b!5949013) bm!473695))

(assert (= (or b!5949015 bm!473694) bm!473697))

(assert (= (or b!5949015 bm!473695) bm!473693))

(assert (= (or b!5949009 bm!473693) bm!473698))

(assert (= (or b!5949009 b!5949015) bm!473696))

(declare-fun m!6837096 () Bool)

(assert (=> bm!473696 m!6837096))

(declare-fun m!6837098 () Bool)

(assert (=> bm!473697 m!6837098))

(assert (=> b!5949007 m!6837038))

(declare-fun m!6837100 () Bool)

(assert (=> bm!473698 m!6837100))

(assert (=> b!5949012 m!6836718))

(assert (=> b!5948608 d!1865033))

(declare-fun d!1865035 () Bool)

(declare-fun c!1058417 () Bool)

(declare-fun e!3639468 () Bool)

(assert (=> d!1865035 (= c!1058417 e!3639468)))

(declare-fun res!2490442 () Bool)

(assert (=> d!1865035 (=> (not res!2490442) (not e!3639468))))

(assert (=> d!1865035 (= res!2490442 (is-Cons!64146 (exprs!5874 lt!2312634)))))

(declare-fun e!3639466 () (Set Context!10748))

(assert (=> d!1865035 (= (derivationStepZipperUp!1166 lt!2312634 (h!70593 s!2326)) e!3639466)))

(declare-fun bm!473699 () Bool)

(declare-fun call!473704 () (Set Context!10748))

(assert (=> bm!473699 (= call!473704 (derivationStepZipperDown!1240 (h!70594 (exprs!5874 lt!2312634)) (Context!10749 (t!377679 (exprs!5874 lt!2312634))) (h!70593 s!2326)))))

(declare-fun b!5949017 () Bool)

(declare-fun e!3639467 () (Set Context!10748))

(assert (=> b!5949017 (= e!3639467 (as set.empty (Set Context!10748)))))

(declare-fun b!5949018 () Bool)

(assert (=> b!5949018 (= e!3639466 (set.union call!473704 (derivationStepZipperUp!1166 (Context!10749 (t!377679 (exprs!5874 lt!2312634))) (h!70593 s!2326))))))

(declare-fun b!5949019 () Bool)

(assert (=> b!5949019 (= e!3639467 call!473704)))

(declare-fun b!5949020 () Bool)

(assert (=> b!5949020 (= e!3639466 e!3639467)))

(declare-fun c!1058416 () Bool)

(assert (=> b!5949020 (= c!1058416 (is-Cons!64146 (exprs!5874 lt!2312634)))))

(declare-fun b!5949021 () Bool)

(assert (=> b!5949021 (= e!3639468 (nullable!5985 (h!70594 (exprs!5874 lt!2312634))))))

(assert (= (and d!1865035 res!2490442) b!5949021))

(assert (= (and d!1865035 c!1058417) b!5949018))

(assert (= (and d!1865035 (not c!1058417)) b!5949020))

(assert (= (and b!5949020 c!1058416) b!5949019))

(assert (= (and b!5949020 (not c!1058416)) b!5949017))

(assert (= (or b!5949018 b!5949019) bm!473699))

(declare-fun m!6837102 () Bool)

(assert (=> bm!473699 m!6837102))

(declare-fun m!6837104 () Bool)

(assert (=> b!5949018 m!6837104))

(declare-fun m!6837106 () Bool)

(assert (=> b!5949021 m!6837106))

(assert (=> b!5948608 d!1865035))

(declare-fun bs!1408802 () Bool)

(declare-fun d!1865037 () Bool)

(assert (= bs!1408802 (and d!1865037 b!5948598)))

(declare-fun lambda!324527 () Int)

(assert (=> bs!1408802 (= lambda!324527 lambda!324479)))

(declare-fun bs!1408803 () Bool)

(assert (= bs!1408803 (and d!1865037 d!1864981)))

(assert (=> bs!1408803 (= lambda!324527 lambda!324514)))

(declare-fun bs!1408804 () Bool)

(assert (= bs!1408804 (and d!1865037 d!1865023)))

(assert (=> bs!1408804 (= lambda!324527 lambda!324525)))

(assert (=> d!1865037 true))

(assert (=> d!1865037 (= (derivationStepZipper!1971 z!1189 (h!70593 s!2326)) (flatMap!1503 z!1189 lambda!324527))))

(declare-fun bs!1408805 () Bool)

(assert (= bs!1408805 d!1865037))

(declare-fun m!6837108 () Bool)

(assert (=> bs!1408805 m!6837108))

(assert (=> b!5948608 d!1865037))

(declare-fun b!5949040 () Bool)

(declare-fun lt!2312768 () Unit!157251)

(declare-fun lt!2312770 () Unit!157251)

(assert (=> b!5949040 (= lt!2312768 lt!2312770)))

(declare-fun ++!14087 (List!64269 List!64269) List!64269)

(assert (=> b!5949040 (= (++!14087 (++!14087 Nil!64145 (Cons!64145 (h!70593 s!2326) Nil!64145)) (t!377678 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2182 (List!64269 C!32250 List!64269 List!64269) Unit!157251)

(assert (=> b!5949040 (= lt!2312770 (lemmaMoveElementToOtherListKeepsConcatEq!2182 Nil!64145 (h!70593 s!2326) (t!377678 s!2326) s!2326))))

(declare-fun e!3639480 () Option!15881)

(assert (=> b!5949040 (= e!3639480 (findConcatSeparation!2295 (regOne!32492 r!7292) (regTwo!32492 r!7292) (++!14087 Nil!64145 (Cons!64145 (h!70593 s!2326) Nil!64145)) (t!377678 s!2326) s!2326))))

(declare-fun b!5949041 () Bool)

(declare-fun e!3639482 () Option!15881)

(assert (=> b!5949041 (= e!3639482 e!3639480)))

(declare-fun c!1058423 () Bool)

(assert (=> b!5949041 (= c!1058423 (is-Nil!64145 s!2326))))

(declare-fun d!1865039 () Bool)

(declare-fun e!3639481 () Bool)

(assert (=> d!1865039 e!3639481))

(declare-fun res!2490456 () Bool)

(assert (=> d!1865039 (=> res!2490456 e!3639481)))

(declare-fun e!3639483 () Bool)

(assert (=> d!1865039 (= res!2490456 e!3639483)))

(declare-fun res!2490454 () Bool)

(assert (=> d!1865039 (=> (not res!2490454) (not e!3639483))))

(declare-fun lt!2312769 () Option!15881)

(assert (=> d!1865039 (= res!2490454 (isDefined!12584 lt!2312769))))

(assert (=> d!1865039 (= lt!2312769 e!3639482)))

(declare-fun c!1058422 () Bool)

(declare-fun e!3639479 () Bool)

(assert (=> d!1865039 (= c!1058422 e!3639479)))

(declare-fun res!2490453 () Bool)

(assert (=> d!1865039 (=> (not res!2490453) (not e!3639479))))

(assert (=> d!1865039 (= res!2490453 (matchR!8173 (regOne!32492 r!7292) Nil!64145))))

(assert (=> d!1865039 (validRegex!7726 (regOne!32492 r!7292))))

(assert (=> d!1865039 (= (findConcatSeparation!2295 (regOne!32492 r!7292) (regTwo!32492 r!7292) Nil!64145 s!2326 s!2326) lt!2312769)))

(declare-fun b!5949042 () Bool)

(assert (=> b!5949042 (= e!3639480 None!15880)))

(declare-fun b!5949043 () Bool)

(assert (=> b!5949043 (= e!3639482 (Some!15880 (tuple2!65939 Nil!64145 s!2326)))))

(declare-fun b!5949044 () Bool)

(assert (=> b!5949044 (= e!3639481 (not (isDefined!12584 lt!2312769)))))

(declare-fun b!5949045 () Bool)

(declare-fun res!2490457 () Bool)

(assert (=> b!5949045 (=> (not res!2490457) (not e!3639483))))

(declare-fun get!22098 (Option!15881) tuple2!65938)

(assert (=> b!5949045 (= res!2490457 (matchR!8173 (regOne!32492 r!7292) (_1!36272 (get!22098 lt!2312769))))))

(declare-fun b!5949046 () Bool)

(declare-fun res!2490455 () Bool)

(assert (=> b!5949046 (=> (not res!2490455) (not e!3639483))))

(assert (=> b!5949046 (= res!2490455 (matchR!8173 (regTwo!32492 r!7292) (_2!36272 (get!22098 lt!2312769))))))

(declare-fun b!5949047 () Bool)

(assert (=> b!5949047 (= e!3639483 (= (++!14087 (_1!36272 (get!22098 lt!2312769)) (_2!36272 (get!22098 lt!2312769))) s!2326))))

(declare-fun b!5949048 () Bool)

(assert (=> b!5949048 (= e!3639479 (matchR!8173 (regTwo!32492 r!7292) s!2326))))

(assert (= (and d!1865039 res!2490453) b!5949048))

(assert (= (and d!1865039 c!1058422) b!5949043))

(assert (= (and d!1865039 (not c!1058422)) b!5949041))

(assert (= (and b!5949041 c!1058423) b!5949042))

(assert (= (and b!5949041 (not c!1058423)) b!5949040))

(assert (= (and d!1865039 res!2490454) b!5949045))

(assert (= (and b!5949045 res!2490457) b!5949046))

(assert (= (and b!5949046 res!2490455) b!5949047))

(assert (= (and d!1865039 (not res!2490456)) b!5949044))

(declare-fun m!6837110 () Bool)

(assert (=> d!1865039 m!6837110))

(declare-fun m!6837112 () Bool)

(assert (=> d!1865039 m!6837112))

(declare-fun m!6837114 () Bool)

(assert (=> d!1865039 m!6837114))

(declare-fun m!6837116 () Bool)

(assert (=> b!5949047 m!6837116))

(declare-fun m!6837118 () Bool)

(assert (=> b!5949047 m!6837118))

(declare-fun m!6837120 () Bool)

(assert (=> b!5949040 m!6837120))

(assert (=> b!5949040 m!6837120))

(declare-fun m!6837122 () Bool)

(assert (=> b!5949040 m!6837122))

(declare-fun m!6837124 () Bool)

(assert (=> b!5949040 m!6837124))

(assert (=> b!5949040 m!6837120))

(declare-fun m!6837126 () Bool)

(assert (=> b!5949040 m!6837126))

(assert (=> b!5949045 m!6837116))

(declare-fun m!6837128 () Bool)

(assert (=> b!5949045 m!6837128))

(declare-fun m!6837130 () Bool)

(assert (=> b!5949048 m!6837130))

(assert (=> b!5949046 m!6837116))

(declare-fun m!6837132 () Bool)

(assert (=> b!5949046 m!6837132))

(assert (=> b!5949044 m!6837110))

(assert (=> b!5948587 d!1865039))

(declare-fun d!1865041 () Bool)

(declare-fun choose!44816 (Int) Bool)

(assert (=> d!1865041 (= (Exists!3060 lambda!324478) (choose!44816 lambda!324478))))

(declare-fun bs!1408806 () Bool)

(assert (= bs!1408806 d!1865041))

(declare-fun m!6837134 () Bool)

(assert (=> bs!1408806 m!6837134))

(assert (=> b!5948587 d!1865041))

(declare-fun d!1865043 () Bool)

(assert (=> d!1865043 (= (Exists!3060 lambda!324477) (choose!44816 lambda!324477))))

(declare-fun bs!1408807 () Bool)

(assert (= bs!1408807 d!1865043))

(declare-fun m!6837136 () Bool)

(assert (=> bs!1408807 m!6837136))

(assert (=> b!5948587 d!1865043))

(declare-fun bs!1408808 () Bool)

(declare-fun d!1865045 () Bool)

(assert (= bs!1408808 (and d!1865045 b!5948587)))

(declare-fun lambda!324530 () Int)

(assert (=> bs!1408808 (= lambda!324530 lambda!324477)))

(assert (=> bs!1408808 (not (= lambda!324530 lambda!324478))))

(declare-fun bs!1408809 () Bool)

(assert (= bs!1408809 (and d!1865045 b!5948953)))

(assert (=> bs!1408809 (not (= lambda!324530 lambda!324523))))

(declare-fun bs!1408810 () Bool)

(assert (= bs!1408810 (and d!1865045 b!5948954)))

(assert (=> bs!1408810 (not (= lambda!324530 lambda!324524))))

(assert (=> d!1865045 true))

(assert (=> d!1865045 true))

(assert (=> d!1865045 true))

(assert (=> d!1865045 (= (isDefined!12584 (findConcatSeparation!2295 (regOne!32492 r!7292) (regTwo!32492 r!7292) Nil!64145 s!2326 s!2326)) (Exists!3060 lambda!324530))))

(declare-fun lt!2312773 () Unit!157251)

(declare-fun choose!44817 (Regex!15990 Regex!15990 List!64269) Unit!157251)

(assert (=> d!1865045 (= lt!2312773 (choose!44817 (regOne!32492 r!7292) (regTwo!32492 r!7292) s!2326))))

(assert (=> d!1865045 (validRegex!7726 (regOne!32492 r!7292))))

(assert (=> d!1865045 (= (lemmaFindConcatSeparationEquivalentToExists!2059 (regOne!32492 r!7292) (regTwo!32492 r!7292) s!2326) lt!2312773)))

(declare-fun bs!1408811 () Bool)

(assert (= bs!1408811 d!1865045))

(assert (=> bs!1408811 m!6836734))

(assert (=> bs!1408811 m!6837114))

(declare-fun m!6837138 () Bool)

(assert (=> bs!1408811 m!6837138))

(assert (=> bs!1408811 m!6836734))

(assert (=> bs!1408811 m!6836736))

(declare-fun m!6837140 () Bool)

(assert (=> bs!1408811 m!6837140))

(assert (=> b!5948587 d!1865045))

(declare-fun bs!1408812 () Bool)

(declare-fun d!1865047 () Bool)

(assert (= bs!1408812 (and d!1865047 d!1865045)))

(declare-fun lambda!324535 () Int)

(assert (=> bs!1408812 (= lambda!324535 lambda!324530)))

(declare-fun bs!1408813 () Bool)

(assert (= bs!1408813 (and d!1865047 b!5948953)))

(assert (=> bs!1408813 (not (= lambda!324535 lambda!324523))))

(declare-fun bs!1408814 () Bool)

(assert (= bs!1408814 (and d!1865047 b!5948587)))

(assert (=> bs!1408814 (not (= lambda!324535 lambda!324478))))

(assert (=> bs!1408814 (= lambda!324535 lambda!324477)))

(declare-fun bs!1408815 () Bool)

(assert (= bs!1408815 (and d!1865047 b!5948954)))

(assert (=> bs!1408815 (not (= lambda!324535 lambda!324524))))

(assert (=> d!1865047 true))

(assert (=> d!1865047 true))

(assert (=> d!1865047 true))

(declare-fun lambda!324536 () Int)

(assert (=> bs!1408812 (not (= lambda!324536 lambda!324530))))

(assert (=> bs!1408813 (not (= lambda!324536 lambda!324523))))

(assert (=> bs!1408814 (= lambda!324536 lambda!324478)))

(declare-fun bs!1408816 () Bool)

(assert (= bs!1408816 d!1865047))

(assert (=> bs!1408816 (not (= lambda!324536 lambda!324535))))

(assert (=> bs!1408814 (not (= lambda!324536 lambda!324477))))

(assert (=> bs!1408815 (= lambda!324536 lambda!324524)))

(assert (=> d!1865047 true))

(assert (=> d!1865047 true))

(assert (=> d!1865047 true))

(assert (=> d!1865047 (= (Exists!3060 lambda!324535) (Exists!3060 lambda!324536))))

(declare-fun lt!2312776 () Unit!157251)

(declare-fun choose!44818 (Regex!15990 Regex!15990 List!64269) Unit!157251)

(assert (=> d!1865047 (= lt!2312776 (choose!44818 (regOne!32492 r!7292) (regTwo!32492 r!7292) s!2326))))

(assert (=> d!1865047 (validRegex!7726 (regOne!32492 r!7292))))

(assert (=> d!1865047 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1597 (regOne!32492 r!7292) (regTwo!32492 r!7292) s!2326) lt!2312776)))

(declare-fun m!6837142 () Bool)

(assert (=> bs!1408816 m!6837142))

(declare-fun m!6837144 () Bool)

(assert (=> bs!1408816 m!6837144))

(declare-fun m!6837146 () Bool)

(assert (=> bs!1408816 m!6837146))

(assert (=> bs!1408816 m!6837114))

(assert (=> b!5948587 d!1865047))

(declare-fun d!1865049 () Bool)

(declare-fun isEmpty!36028 (Option!15881) Bool)

(assert (=> d!1865049 (= (isDefined!12584 (findConcatSeparation!2295 (regOne!32492 r!7292) (regTwo!32492 r!7292) Nil!64145 s!2326 s!2326)) (not (isEmpty!36028 (findConcatSeparation!2295 (regOne!32492 r!7292) (regTwo!32492 r!7292) Nil!64145 s!2326 s!2326))))))

(declare-fun bs!1408817 () Bool)

(assert (= bs!1408817 d!1865049))

(assert (=> bs!1408817 m!6836734))

(declare-fun m!6837148 () Bool)

(assert (=> bs!1408817 m!6837148))

(assert (=> b!5948587 d!1865049))

(declare-fun d!1865051 () Bool)

(declare-fun lt!2312779 () Regex!15990)

(assert (=> d!1865051 (validRegex!7726 lt!2312779)))

(assert (=> d!1865051 (= lt!2312779 (generalisedUnion!1834 (unfocusZipperList!1411 zl!343)))))

(assert (=> d!1865051 (= (unfocusZipper!1732 zl!343) lt!2312779)))

(declare-fun bs!1408818 () Bool)

(assert (= bs!1408818 d!1865051))

(declare-fun m!6837150 () Bool)

(assert (=> bs!1408818 m!6837150))

(assert (=> bs!1408818 m!6836706))

(assert (=> bs!1408818 m!6836706))

(assert (=> bs!1408818 m!6836708))

(assert (=> b!5948595 d!1865051))

(declare-fun d!1865053 () Bool)

(declare-fun c!1058424 () Bool)

(assert (=> d!1865053 (= c!1058424 (isEmpty!36027 (t!377678 s!2326)))))

(declare-fun e!3639490 () Bool)

(assert (=> d!1865053 (= (matchZipper!2026 lt!2312620 (t!377678 s!2326)) e!3639490)))

(declare-fun b!5949061 () Bool)

(assert (=> b!5949061 (= e!3639490 (nullableZipper!1797 lt!2312620))))

(declare-fun b!5949062 () Bool)

(assert (=> b!5949062 (= e!3639490 (matchZipper!2026 (derivationStepZipper!1971 lt!2312620 (head!12522 (t!377678 s!2326))) (tail!11607 (t!377678 s!2326))))))

(assert (= (and d!1865053 c!1058424) b!5949061))

(assert (= (and d!1865053 (not c!1058424)) b!5949062))

(assert (=> d!1865053 m!6836976))

(declare-fun m!6837152 () Bool)

(assert (=> b!5949061 m!6837152))

(assert (=> b!5949062 m!6836980))

(assert (=> b!5949062 m!6836980))

(declare-fun m!6837154 () Bool)

(assert (=> b!5949062 m!6837154))

(assert (=> b!5949062 m!6836984))

(assert (=> b!5949062 m!6837154))

(assert (=> b!5949062 m!6836984))

(declare-fun m!6837156 () Bool)

(assert (=> b!5949062 m!6837156))

(assert (=> b!5948605 d!1865053))

(declare-fun d!1865055 () Bool)

(declare-fun c!1058425 () Bool)

(assert (=> d!1865055 (= c!1058425 (isEmpty!36027 (t!377678 s!2326)))))

(declare-fun e!3639491 () Bool)

(assert (=> d!1865055 (= (matchZipper!2026 lt!2312637 (t!377678 s!2326)) e!3639491)))

(declare-fun b!5949063 () Bool)

(assert (=> b!5949063 (= e!3639491 (nullableZipper!1797 lt!2312637))))

(declare-fun b!5949064 () Bool)

(assert (=> b!5949064 (= e!3639491 (matchZipper!2026 (derivationStepZipper!1971 lt!2312637 (head!12522 (t!377678 s!2326))) (tail!11607 (t!377678 s!2326))))))

(assert (= (and d!1865055 c!1058425) b!5949063))

(assert (= (and d!1865055 (not c!1058425)) b!5949064))

(assert (=> d!1865055 m!6836976))

(declare-fun m!6837158 () Bool)

(assert (=> b!5949063 m!6837158))

(assert (=> b!5949064 m!6836980))

(assert (=> b!5949064 m!6836980))

(declare-fun m!6837160 () Bool)

(assert (=> b!5949064 m!6837160))

(assert (=> b!5949064 m!6836984))

(assert (=> b!5949064 m!6837160))

(assert (=> b!5949064 m!6836984))

(declare-fun m!6837162 () Bool)

(assert (=> b!5949064 m!6837162))

(assert (=> b!5948605 d!1865055))

(declare-fun d!1865057 () Bool)

(declare-fun c!1058426 () Bool)

(assert (=> d!1865057 (= c!1058426 (isEmpty!36027 (t!377678 s!2326)))))

(declare-fun e!3639492 () Bool)

(assert (=> d!1865057 (= (matchZipper!2026 lt!2312626 (t!377678 s!2326)) e!3639492)))

(declare-fun b!5949065 () Bool)

(assert (=> b!5949065 (= e!3639492 (nullableZipper!1797 lt!2312626))))

(declare-fun b!5949066 () Bool)

(assert (=> b!5949066 (= e!3639492 (matchZipper!2026 (derivationStepZipper!1971 lt!2312626 (head!12522 (t!377678 s!2326))) (tail!11607 (t!377678 s!2326))))))

(assert (= (and d!1865057 c!1058426) b!5949065))

(assert (= (and d!1865057 (not c!1058426)) b!5949066))

(assert (=> d!1865057 m!6836976))

(declare-fun m!6837164 () Bool)

(assert (=> b!5949065 m!6837164))

(assert (=> b!5949066 m!6836980))

(assert (=> b!5949066 m!6836980))

(declare-fun m!6837166 () Bool)

(assert (=> b!5949066 m!6837166))

(assert (=> b!5949066 m!6836984))

(assert (=> b!5949066 m!6837166))

(assert (=> b!5949066 m!6836984))

(declare-fun m!6837168 () Bool)

(assert (=> b!5949066 m!6837168))

(assert (=> b!5948605 d!1865057))

(declare-fun e!3639495 () Bool)

(declare-fun d!1865059 () Bool)

(assert (=> d!1865059 (= (matchZipper!2026 (set.union lt!2312626 lt!2312635) (t!377678 s!2326)) e!3639495)))

(declare-fun res!2490472 () Bool)

(assert (=> d!1865059 (=> res!2490472 e!3639495)))

(assert (=> d!1865059 (= res!2490472 (matchZipper!2026 lt!2312626 (t!377678 s!2326)))))

(declare-fun lt!2312782 () Unit!157251)

(declare-fun choose!44819 ((Set Context!10748) (Set Context!10748) List!64269) Unit!157251)

(assert (=> d!1865059 (= lt!2312782 (choose!44819 lt!2312626 lt!2312635 (t!377678 s!2326)))))

(assert (=> d!1865059 (= (lemmaZipperConcatMatchesSameAsBothZippers!857 lt!2312626 lt!2312635 (t!377678 s!2326)) lt!2312782)))

(declare-fun b!5949069 () Bool)

(assert (=> b!5949069 (= e!3639495 (matchZipper!2026 lt!2312635 (t!377678 s!2326)))))

(assert (= (and d!1865059 (not res!2490472)) b!5949069))

(declare-fun m!6837170 () Bool)

(assert (=> d!1865059 m!6837170))

(assert (=> d!1865059 m!6836774))

(declare-fun m!6837172 () Bool)

(assert (=> d!1865059 m!6837172))

(assert (=> b!5949069 m!6836752))

(assert (=> b!5948605 d!1865059))

(declare-fun b!5949074 () Bool)

(declare-fun e!3639498 () Bool)

(declare-fun tp!1655551 () Bool)

(assert (=> b!5949074 (= e!3639498 (and tp_is_empty!41233 tp!1655551))))

(assert (=> b!5948603 (= tp!1655512 e!3639498)))

(assert (= (and b!5948603 (is-Cons!64145 (t!377678 s!2326))) b!5949074))

(declare-fun b!5949086 () Bool)

(declare-fun e!3639501 () Bool)

(declare-fun tp!1655562 () Bool)

(declare-fun tp!1655565 () Bool)

(assert (=> b!5949086 (= e!3639501 (and tp!1655562 tp!1655565))))

(declare-fun b!5949088 () Bool)

(declare-fun tp!1655566 () Bool)

(declare-fun tp!1655564 () Bool)

(assert (=> b!5949088 (= e!3639501 (and tp!1655566 tp!1655564))))

(declare-fun b!5949087 () Bool)

(declare-fun tp!1655563 () Bool)

(assert (=> b!5949087 (= e!3639501 tp!1655563)))

(declare-fun b!5949085 () Bool)

(assert (=> b!5949085 (= e!3639501 tp_is_empty!41233)))

(assert (=> b!5948614 (= tp!1655516 e!3639501)))

(assert (= (and b!5948614 (is-ElementMatch!15990 (regOne!32492 r!7292))) b!5949085))

(assert (= (and b!5948614 (is-Concat!24835 (regOne!32492 r!7292))) b!5949086))

(assert (= (and b!5948614 (is-Star!15990 (regOne!32492 r!7292))) b!5949087))

(assert (= (and b!5948614 (is-Union!15990 (regOne!32492 r!7292))) b!5949088))

(declare-fun b!5949090 () Bool)

(declare-fun e!3639502 () Bool)

(declare-fun tp!1655567 () Bool)

(declare-fun tp!1655570 () Bool)

(assert (=> b!5949090 (= e!3639502 (and tp!1655567 tp!1655570))))

(declare-fun b!5949092 () Bool)

(declare-fun tp!1655571 () Bool)

(declare-fun tp!1655569 () Bool)

(assert (=> b!5949092 (= e!3639502 (and tp!1655571 tp!1655569))))

(declare-fun b!5949091 () Bool)

(declare-fun tp!1655568 () Bool)

(assert (=> b!5949091 (= e!3639502 tp!1655568)))

(declare-fun b!5949089 () Bool)

(assert (=> b!5949089 (= e!3639502 tp_is_empty!41233)))

(assert (=> b!5948614 (= tp!1655517 e!3639502)))

(assert (= (and b!5948614 (is-ElementMatch!15990 (regTwo!32492 r!7292))) b!5949089))

(assert (= (and b!5948614 (is-Concat!24835 (regTwo!32492 r!7292))) b!5949090))

(assert (= (and b!5948614 (is-Star!15990 (regTwo!32492 r!7292))) b!5949091))

(assert (= (and b!5948614 (is-Union!15990 (regTwo!32492 r!7292))) b!5949092))

(declare-fun b!5949094 () Bool)

(declare-fun e!3639503 () Bool)

(declare-fun tp!1655572 () Bool)

(declare-fun tp!1655575 () Bool)

(assert (=> b!5949094 (= e!3639503 (and tp!1655572 tp!1655575))))

(declare-fun b!5949096 () Bool)

(declare-fun tp!1655576 () Bool)

(declare-fun tp!1655574 () Bool)

(assert (=> b!5949096 (= e!3639503 (and tp!1655576 tp!1655574))))

(declare-fun b!5949095 () Bool)

(declare-fun tp!1655573 () Bool)

(assert (=> b!5949095 (= e!3639503 tp!1655573)))

(declare-fun b!5949093 () Bool)

(assert (=> b!5949093 (= e!3639503 tp_is_empty!41233)))

(assert (=> b!5948604 (= tp!1655518 e!3639503)))

(assert (= (and b!5948604 (is-ElementMatch!15990 (reg!16319 r!7292))) b!5949093))

(assert (= (and b!5948604 (is-Concat!24835 (reg!16319 r!7292))) b!5949094))

(assert (= (and b!5948604 (is-Star!15990 (reg!16319 r!7292))) b!5949095))

(assert (= (and b!5948604 (is-Union!15990 (reg!16319 r!7292))) b!5949096))

(declare-fun b!5949104 () Bool)

(declare-fun e!3639509 () Bool)

(declare-fun tp!1655581 () Bool)

(assert (=> b!5949104 (= e!3639509 tp!1655581)))

(declare-fun b!5949103 () Bool)

(declare-fun e!3639508 () Bool)

(declare-fun tp!1655582 () Bool)

(assert (=> b!5949103 (= e!3639508 (and (inv!83223 (h!70595 (t!377680 zl!343))) e!3639509 tp!1655582))))

(assert (=> b!5948611 (= tp!1655510 e!3639508)))

(assert (= b!5949103 b!5949104))

(assert (= (and b!5948611 (is-Cons!64147 (t!377680 zl!343))) b!5949103))

(declare-fun m!6837174 () Bool)

(assert (=> b!5949103 m!6837174))

(declare-fun b!5949109 () Bool)

(declare-fun e!3639512 () Bool)

(declare-fun tp!1655587 () Bool)

(declare-fun tp!1655588 () Bool)

(assert (=> b!5949109 (= e!3639512 (and tp!1655587 tp!1655588))))

(assert (=> b!5948606 (= tp!1655509 e!3639512)))

(assert (= (and b!5948606 (is-Cons!64146 (exprs!5874 (h!70595 zl!343)))) b!5949109))

(declare-fun b!5949110 () Bool)

(declare-fun e!3639513 () Bool)

(declare-fun tp!1655589 () Bool)

(declare-fun tp!1655590 () Bool)

(assert (=> b!5949110 (= e!3639513 (and tp!1655589 tp!1655590))))

(assert (=> b!5948597 (= tp!1655513 e!3639513)))

(assert (= (and b!5948597 (is-Cons!64146 (exprs!5874 setElem!40416))) b!5949110))

(declare-fun condSetEmpty!40422 () Bool)

(assert (=> setNonEmpty!40416 (= condSetEmpty!40422 (= setRest!40416 (as set.empty (Set Context!10748))))))

(declare-fun setRes!40422 () Bool)

(assert (=> setNonEmpty!40416 (= tp!1655515 setRes!40422)))

(declare-fun setIsEmpty!40422 () Bool)

(assert (=> setIsEmpty!40422 setRes!40422))

(declare-fun setNonEmpty!40422 () Bool)

(declare-fun e!3639516 () Bool)

(declare-fun tp!1655596 () Bool)

(declare-fun setElem!40422 () Context!10748)

(assert (=> setNonEmpty!40422 (= setRes!40422 (and tp!1655596 (inv!83223 setElem!40422) e!3639516))))

(declare-fun setRest!40422 () (Set Context!10748))

(assert (=> setNonEmpty!40422 (= setRest!40416 (set.union (set.insert setElem!40422 (as set.empty (Set Context!10748))) setRest!40422))))

(declare-fun b!5949115 () Bool)

(declare-fun tp!1655595 () Bool)

(assert (=> b!5949115 (= e!3639516 tp!1655595)))

(assert (= (and setNonEmpty!40416 condSetEmpty!40422) setIsEmpty!40422))

(assert (= (and setNonEmpty!40416 (not condSetEmpty!40422)) setNonEmpty!40422))

(assert (= setNonEmpty!40422 b!5949115))

(declare-fun m!6837176 () Bool)

(assert (=> setNonEmpty!40422 m!6837176))

(declare-fun b!5949117 () Bool)

(declare-fun e!3639517 () Bool)

(declare-fun tp!1655597 () Bool)

(declare-fun tp!1655600 () Bool)

(assert (=> b!5949117 (= e!3639517 (and tp!1655597 tp!1655600))))

(declare-fun b!5949119 () Bool)

(declare-fun tp!1655601 () Bool)

(declare-fun tp!1655599 () Bool)

(assert (=> b!5949119 (= e!3639517 (and tp!1655601 tp!1655599))))

(declare-fun b!5949118 () Bool)

(declare-fun tp!1655598 () Bool)

(assert (=> b!5949118 (= e!3639517 tp!1655598)))

(declare-fun b!5949116 () Bool)

(assert (=> b!5949116 (= e!3639517 tp_is_empty!41233)))

(assert (=> b!5948586 (= tp!1655514 e!3639517)))

(assert (= (and b!5948586 (is-ElementMatch!15990 (regOne!32493 r!7292))) b!5949116))

(assert (= (and b!5948586 (is-Concat!24835 (regOne!32493 r!7292))) b!5949117))

(assert (= (and b!5948586 (is-Star!15990 (regOne!32493 r!7292))) b!5949118))

(assert (= (and b!5948586 (is-Union!15990 (regOne!32493 r!7292))) b!5949119))

(declare-fun b!5949121 () Bool)

(declare-fun e!3639518 () Bool)

(declare-fun tp!1655602 () Bool)

(declare-fun tp!1655605 () Bool)

(assert (=> b!5949121 (= e!3639518 (and tp!1655602 tp!1655605))))

(declare-fun b!5949123 () Bool)

(declare-fun tp!1655606 () Bool)

(declare-fun tp!1655604 () Bool)

(assert (=> b!5949123 (= e!3639518 (and tp!1655606 tp!1655604))))

(declare-fun b!5949122 () Bool)

(declare-fun tp!1655603 () Bool)

(assert (=> b!5949122 (= e!3639518 tp!1655603)))

(declare-fun b!5949120 () Bool)

(assert (=> b!5949120 (= e!3639518 tp_is_empty!41233)))

(assert (=> b!5948586 (= tp!1655511 e!3639518)))

(assert (= (and b!5948586 (is-ElementMatch!15990 (regTwo!32493 r!7292))) b!5949120))

(assert (= (and b!5948586 (is-Concat!24835 (regTwo!32493 r!7292))) b!5949121))

(assert (= (and b!5948586 (is-Star!15990 (regTwo!32493 r!7292))) b!5949122))

(assert (= (and b!5948586 (is-Union!15990 (regTwo!32493 r!7292))) b!5949123))

(declare-fun b_lambda!223551 () Bool)

(assert (= b_lambda!223549 (or b!5948598 b_lambda!223551)))

(declare-fun bs!1408819 () Bool)

(declare-fun d!1865061 () Bool)

(assert (= bs!1408819 (and d!1865061 b!5948598)))

(assert (=> bs!1408819 (= (dynLambda!25093 lambda!324479 (h!70595 zl!343)) (derivationStepZipperUp!1166 (h!70595 zl!343) (h!70593 s!2326)))))

(assert (=> bs!1408819 m!6836780))

(assert (=> d!1865031 d!1865061))

(declare-fun b_lambda!223553 () Bool)

(assert (= b_lambda!223545 (or b!5948598 b_lambda!223553)))

(declare-fun bs!1408820 () Bool)

(declare-fun d!1865063 () Bool)

(assert (= bs!1408820 (and d!1865063 b!5948598)))

(assert (=> bs!1408820 (= (dynLambda!25093 lambda!324479 lt!2312618) (derivationStepZipperUp!1166 lt!2312618 (h!70593 s!2326)))))

(assert (=> bs!1408820 m!6836720))

(assert (=> d!1864991 d!1865063))

(declare-fun b_lambda!223555 () Bool)

(assert (= b_lambda!223547 (or b!5948598 b_lambda!223555)))

(declare-fun bs!1408821 () Bool)

(declare-fun d!1865065 () Bool)

(assert (= bs!1408821 (and d!1865065 b!5948598)))

(assert (=> bs!1408821 (= (dynLambda!25093 lambda!324479 lt!2312628) (derivationStepZipperUp!1166 lt!2312628 (h!70593 s!2326)))))

(assert (=> bs!1408821 m!6836730))

(assert (=> d!1864995 d!1865065))

(push 1)

(assert (not d!1864991))

(assert (not d!1865021))

(assert (not b!5948908))

(assert (not b!5948997))

(assert (not b!5949095))

(assert (not b!5948986))

(assert (not b!5949069))

(assert (not b!5949091))

(assert (not bm!473697))

(assert (not b!5948911))

(assert (not b!5948752))

(assert (not bm!473671))

(assert (not bm!473692))

(assert (not d!1864967))

(assert (not bm!473682))

(assert (not d!1864985))

(assert (not b!5949110))

(assert (not d!1865039))

(assert (not b!5948751))

(assert (not b!5948799))

(assert (not bm!473680))

(assert (not bm!473688))

(assert (not b!5948946))

(assert (not bm!473699))

(assert (not b!5948802))

(assert (not b!5949104))

(assert (not b!5948798))

(assert (not bm!473672))

(assert (not b!5949096))

(assert (not b!5949048))

(assert (not b!5949064))

(assert (not b!5948770))

(assert (not b!5948796))

(assert (not d!1864973))

(assert (not b!5949122))

(assert (not b!5949090))

(assert (not b!5949109))

(assert (not b!5948757))

(assert (not b!5948820))

(assert (not b!5948985))

(assert (not bs!1408819))

(assert (not b!5948876))

(assert (not b!5948999))

(assert (not d!1865031))

(assert (not b!5948819))

(assert (not b!5948767))

(assert (not b!5948840))

(assert (not d!1865047))

(assert (not bm!473691))

(assert (not b!5949062))

(assert (not b!5948755))

(assert (not d!1865053))

(assert (not d!1865019))

(assert (not b!5949115))

(assert tp_is_empty!41233)

(assert (not bs!1408820))

(assert (not bm!473679))

(assert (not b!5949018))

(assert (not d!1864975))

(assert (not b!5949117))

(assert (not b!5949021))

(assert (not d!1865041))

(assert (not b!5948987))

(assert (not d!1865025))

(assert (not b!5948988))

(assert (not b!5948793))

(assert (not d!1864995))

(assert (not d!1864983))

(assert (not d!1865049))

(assert (not b!5949094))

(assert (not b!5949012))

(assert (not b_lambda!223551))

(assert (not d!1864993))

(assert (not d!1865015))

(assert (not b!5949045))

(assert (not b!5948892))

(assert (not d!1865059))

(assert (not b!5948765))

(assert (not b!5949121))

(assert (not b!5949002))

(assert (not d!1865023))

(assert (not bs!1408821))

(assert (not b!5949086))

(assert (not bm!473675))

(assert (not b!5949088))

(assert (not b!5948816))

(assert (not b!5949087))

(assert (not bm!473698))

(assert (not b!5949061))

(assert (not d!1865013))

(assert (not d!1864999))

(assert (not b!5948801))

(assert (not b!5948902))

(assert (not b!5948998))

(assert (not b!5949074))

(assert (not b!5948951))

(assert (not b!5948800))

(assert (not b!5948754))

(assert (not d!1865003))

(assert (not b!5948984))

(assert (not b!5949103))

(assert (not b!5948728))

(assert (not b!5948807))

(assert (not bm!473681))

(assert (not b!5948814))

(assert (not b!5949066))

(assert (not b!5948749))

(assert (not b!5949000))

(assert (not b!5948772))

(assert (not b!5948750))

(assert (not b!5948895))

(assert (not d!1865055))

(assert (not bm!473670))

(assert (not b!5949065))

(assert (not d!1864977))

(assert (not d!1865051))

(assert (not d!1864989))

(assert (not b!5948989))

(assert (not d!1865057))

(assert (not b!5949092))

(assert (not d!1865045))

(assert (not d!1864981))

(assert (not b!5949005))

(assert (not b!5949044))

(assert (not d!1865043))

(assert (not d!1865037))

(assert (not bm!473653))

(assert (not b!5949063))

(assert (not b_lambda!223553))

(assert (not setNonEmpty!40422))

(assert (not b_lambda!223555))

(assert (not b!5949047))

(assert (not b!5949040))

(assert (not b!5949046))

(assert (not b!5949123))

(assert (not bm!473696))

(assert (not d!1864979))

(assert (not b!5949118))

(assert (not d!1865027))

(assert (not b!5948815))

(assert (not b!5949119))

(assert (not bm!473652))

(assert (not d!1864965))

(assert (not b!5948813))

(assert (not bm!473687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


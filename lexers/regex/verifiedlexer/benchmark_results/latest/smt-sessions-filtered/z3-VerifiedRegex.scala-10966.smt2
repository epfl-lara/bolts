; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567798 () Bool)

(assert start!567798)

(declare-fun b!5406316 () Bool)

(assert (=> b!5406316 true))

(assert (=> b!5406316 true))

(declare-fun lambda!281874 () Int)

(declare-fun lambda!281873 () Int)

(assert (=> b!5406316 (not (= lambda!281874 lambda!281873))))

(assert (=> b!5406316 true))

(assert (=> b!5406316 true))

(declare-fun b!5406292 () Bool)

(assert (=> b!5406292 true))

(declare-fun b!5406317 () Bool)

(assert (=> b!5406317 true))

(declare-fun bs!1248994 () Bool)

(declare-fun b!5406286 () Bool)

(assert (= bs!1248994 (and b!5406286 b!5406316)))

(declare-datatypes ((C!30628 0))(
  ( (C!30629 (val!25016 Int)) )
))
(declare-datatypes ((Regex!15179 0))(
  ( (ElementMatch!15179 (c!942433 C!30628)) (Concat!24024 (regOne!30870 Regex!15179) (regTwo!30870 Regex!15179)) (EmptyExpr!15179) (Star!15179 (reg!15508 Regex!15179)) (EmptyLang!15179) (Union!15179 (regOne!30871 Regex!15179) (regTwo!30871 Regex!15179)) )
))
(declare-fun r!7292 () Regex!15179)

(declare-fun lt!2204180 () Regex!15179)

(declare-fun lambda!281878 () Int)

(assert (=> bs!1248994 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281878 lambda!281873))))

(assert (=> bs!1248994 (not (= lambda!281878 lambda!281874))))

(assert (=> b!5406286 true))

(assert (=> b!5406286 true))

(assert (=> b!5406286 true))

(declare-fun lambda!281879 () Int)

(assert (=> bs!1248994 (not (= lambda!281879 lambda!281873))))

(assert (=> bs!1248994 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281879 lambda!281874))))

(assert (=> b!5406286 (not (= lambda!281879 lambda!281878))))

(assert (=> b!5406286 true))

(assert (=> b!5406286 true))

(assert (=> b!5406286 true))

(declare-fun b!5406279 () Bool)

(declare-fun res!2298803 () Bool)

(declare-fun e!3351676 () Bool)

(assert (=> b!5406279 (=> res!2298803 e!3351676)))

(declare-datatypes ((List!61836 0))(
  ( (Nil!61712) (Cons!61712 (h!68160 Regex!15179) (t!375059 List!61836)) )
))
(declare-datatypes ((Context!9126 0))(
  ( (Context!9127 (exprs!5063 List!61836)) )
))
(declare-datatypes ((List!61837 0))(
  ( (Nil!61713) (Cons!61713 (h!68161 Context!9126) (t!375060 List!61837)) )
))
(declare-fun zl!343 () List!61837)

(declare-fun generalisedUnion!1108 (List!61836) Regex!15179)

(declare-fun unfocusZipperList!621 (List!61837) List!61836)

(assert (=> b!5406279 (= res!2298803 (not (= r!7292 (generalisedUnion!1108 (unfocusZipperList!621 zl!343)))))))

(declare-fun b!5406280 () Bool)

(declare-datatypes ((Unit!154238 0))(
  ( (Unit!154239) )
))
(declare-fun e!3351677 () Unit!154238)

(declare-fun Unit!154240 () Unit!154238)

(assert (=> b!5406280 (= e!3351677 Unit!154240)))

(declare-fun b!5406281 () Bool)

(declare-fun e!3351695 () Bool)

(declare-fun e!3351685 () Bool)

(assert (=> b!5406281 (= e!3351695 e!3351685)))

(declare-fun res!2298802 () Bool)

(assert (=> b!5406281 (=> res!2298802 e!3351685)))

(declare-fun lt!2204165 () List!61837)

(declare-fun lt!2204159 () Regex!15179)

(declare-fun unfocusZipper!921 (List!61837) Regex!15179)

(assert (=> b!5406281 (= res!2298802 (not (= (unfocusZipper!921 lt!2204165) lt!2204159)))))

(declare-fun lt!2204132 () Context!9126)

(assert (=> b!5406281 (= lt!2204165 (Cons!61713 lt!2204132 Nil!61713))))

(declare-fun b!5406282 () Bool)

(declare-fun res!2298782 () Bool)

(assert (=> b!5406282 (=> res!2298782 e!3351676)))

(declare-fun generalisedConcat!848 (List!61836) Regex!15179)

(assert (=> b!5406282 (= res!2298782 (not (= r!7292 (generalisedConcat!848 (exprs!5063 (h!68161 zl!343))))))))

(declare-fun b!5406283 () Bool)

(declare-fun res!2298817 () Bool)

(assert (=> b!5406283 (=> res!2298817 e!3351676)))

(declare-fun isEmpty!33704 (List!61837) Bool)

(assert (=> b!5406283 (= res!2298817 (not (isEmpty!33704 (t!375060 zl!343))))))

(declare-fun b!5406284 () Bool)

(declare-fun e!3351694 () Bool)

(declare-fun e!3351687 () Bool)

(assert (=> b!5406284 (= e!3351694 e!3351687)))

(declare-fun res!2298810 () Bool)

(assert (=> b!5406284 (=> res!2298810 e!3351687)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2204142 () (InoxSet Context!9126))

(declare-fun lt!2204138 () (InoxSet Context!9126))

(assert (=> b!5406284 (= res!2298810 (not (= lt!2204142 lt!2204138)))))

(declare-datatypes ((List!61838 0))(
  ( (Nil!61714) (Cons!61714 (h!68162 C!30628) (t!375061 List!61838)) )
))
(declare-fun s!2326 () List!61838)

(declare-fun derivationStepZipperDown!627 (Regex!15179 Context!9126 C!30628) (InoxSet Context!9126))

(assert (=> b!5406284 (= lt!2204138 (derivationStepZipperDown!627 (reg!15508 (regOne!30870 r!7292)) lt!2204132 (h!68162 s!2326)))))

(declare-fun lt!2204155 () List!61836)

(assert (=> b!5406284 (= lt!2204132 (Context!9127 lt!2204155))))

(declare-fun lt!2204144 () Regex!15179)

(assert (=> b!5406284 (= lt!2204155 (Cons!61712 lt!2204144 (t!375059 (exprs!5063 (h!68161 zl!343)))))))

(assert (=> b!5406284 (= lt!2204144 (Star!15179 (reg!15508 (regOne!30870 r!7292))))))

(declare-fun b!5406285 () Bool)

(declare-fun e!3351700 () Bool)

(declare-fun tp!1495077 () Bool)

(assert (=> b!5406285 (= e!3351700 tp!1495077)))

(declare-fun e!3351691 () Bool)

(declare-fun e!3351698 () Bool)

(assert (=> b!5406286 (= e!3351691 e!3351698)))

(declare-fun res!2298799 () Bool)

(assert (=> b!5406286 (=> res!2298799 e!3351698)))

(declare-fun validRegex!6915 (Regex!15179) Bool)

(assert (=> b!5406286 (= res!2298799 (not (validRegex!6915 lt!2204180)))))

(declare-fun Exists!2360 (Int) Bool)

(assert (=> b!5406286 (= (Exists!2360 lambda!281878) (Exists!2360 lambda!281879))))

(declare-fun lt!2204133 () Unit!154238)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1014 (Regex!15179 Regex!15179 List!61838) Unit!154238)

(assert (=> b!5406286 (= lt!2204133 (lemmaExistCutMatchRandMatchRSpecEquivalent!1014 lt!2204180 (regTwo!30870 r!7292) s!2326))))

(declare-datatypes ((tuple2!64756 0))(
  ( (tuple2!64757 (_1!35681 List!61838) (_2!35681 List!61838)) )
))
(declare-datatypes ((Option!15290 0))(
  ( (None!15289) (Some!15289 (v!51318 tuple2!64756)) )
))
(declare-fun isDefined!11993 (Option!15290) Bool)

(declare-fun findConcatSeparation!1704 (Regex!15179 Regex!15179 List!61838 List!61838 List!61838) Option!15290)

(assert (=> b!5406286 (= (isDefined!11993 (findConcatSeparation!1704 lt!2204180 (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326)) (Exists!2360 lambda!281878))))

(declare-fun lt!2204179 () Unit!154238)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1468 (Regex!15179 Regex!15179 List!61838) Unit!154238)

(assert (=> b!5406286 (= lt!2204179 (lemmaFindConcatSeparationEquivalentToExists!1468 lt!2204180 (regTwo!30870 r!7292) s!2326))))

(declare-fun lt!2204172 () Regex!15179)

(declare-fun matchRSpec!2282 (Regex!15179 List!61838) Bool)

(assert (=> b!5406286 (matchRSpec!2282 lt!2204172 s!2326)))

(declare-fun lt!2204151 () Unit!154238)

(declare-fun mainMatchTheorem!2282 (Regex!15179 List!61838) Unit!154238)

(assert (=> b!5406286 (= lt!2204151 (mainMatchTheorem!2282 lt!2204172 s!2326))))

(declare-fun matchR!7364 (Regex!15179 List!61838) Bool)

(assert (=> b!5406286 (matchR!7364 lt!2204172 s!2326)))

(assert (=> b!5406286 (= lt!2204172 (Concat!24024 lt!2204180 (regTwo!30870 r!7292)))))

(assert (=> b!5406286 (= lt!2204180 (Concat!24024 (reg!15508 (regOne!30870 r!7292)) lt!2204144))))

(declare-fun lt!2204137 () Unit!154238)

(declare-fun lemmaConcatAssociative!32 (Regex!15179 Regex!15179 Regex!15179 List!61838) Unit!154238)

(assert (=> b!5406286 (= lt!2204137 (lemmaConcatAssociative!32 (reg!15508 (regOne!30870 r!7292)) lt!2204144 (regTwo!30870 r!7292) s!2326))))

(declare-fun e!3351697 () Bool)

(assert (=> b!5406286 e!3351697))

(declare-fun res!2298787 () Bool)

(assert (=> b!5406286 (=> (not res!2298787) (not e!3351697))))

(declare-fun lt!2204139 () Regex!15179)

(declare-fun lt!2204168 () List!61838)

(assert (=> b!5406286 (= res!2298787 (matchR!7364 lt!2204139 lt!2204168))))

(declare-fun lt!2204143 () Unit!154238)

(declare-fun lt!2204147 () tuple2!64756)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!202 (Regex!15179 Regex!15179 List!61838 List!61838) Unit!154238)

(assert (=> b!5406286 (= lt!2204143 (lemmaTwoRegexMatchThenConcatMatchesConcatString!202 (reg!15508 (regOne!30870 r!7292)) lt!2204159 (_1!35681 lt!2204147) (_2!35681 lt!2204147)))))

(assert (=> b!5406286 (matchR!7364 lt!2204159 (_2!35681 lt!2204147))))

(declare-fun lt!2204183 () (InoxSet Context!9126))

(declare-fun lt!2204169 () Unit!154238)

(declare-fun theoremZipperRegexEquiv!493 ((InoxSet Context!9126) List!61837 Regex!15179 List!61838) Unit!154238)

(assert (=> b!5406286 (= lt!2204169 (theoremZipperRegexEquiv!493 lt!2204183 lt!2204165 lt!2204159 (_2!35681 lt!2204147)))))

(assert (=> b!5406286 (matchR!7364 (reg!15508 (regOne!30870 r!7292)) (_1!35681 lt!2204147))))

(declare-fun lt!2204145 () List!61837)

(declare-fun lt!2204160 () (InoxSet Context!9126))

(declare-fun lt!2204162 () Unit!154238)

(assert (=> b!5406286 (= lt!2204162 (theoremZipperRegexEquiv!493 lt!2204160 lt!2204145 (reg!15508 (regOne!30870 r!7292)) (_1!35681 lt!2204147)))))

(declare-fun lt!2204163 () List!61836)

(declare-fun matchZipper!1423 ((InoxSet Context!9126) List!61838) Bool)

(declare-fun ++!13531 (List!61836 List!61836) List!61836)

(assert (=> b!5406286 (matchZipper!1423 (store ((as const (Array Context!9126 Bool)) false) (Context!9127 (++!13531 lt!2204163 lt!2204155)) true) lt!2204168)))

(declare-fun lambda!281877 () Int)

(declare-fun lt!2204156 () Unit!154238)

(declare-fun lemmaConcatPreservesForall!204 (List!61836 List!61836 Int) Unit!154238)

(assert (=> b!5406286 (= lt!2204156 (lemmaConcatPreservesForall!204 lt!2204163 lt!2204155 lambda!281877))))

(declare-fun lt!2204154 () Context!9126)

(declare-fun lt!2204182 () Unit!154238)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!52 (Context!9126 Context!9126 List!61838 List!61838) Unit!154238)

(assert (=> b!5406286 (= lt!2204182 (lemmaConcatenateContextMatchesConcatOfStrings!52 lt!2204154 lt!2204132 (_1!35681 lt!2204147) (_2!35681 lt!2204147)))))

(declare-fun b!5406287 () Bool)

(declare-fun e!3351693 () Bool)

(declare-fun e!3351682 () Bool)

(assert (=> b!5406287 (= e!3351693 e!3351682)))

(declare-fun res!2298806 () Bool)

(assert (=> b!5406287 (=> res!2298806 e!3351682)))

(assert (=> b!5406287 (= res!2298806 (not (= r!7292 lt!2204159)))))

(assert (=> b!5406287 (= lt!2204159 (Concat!24024 lt!2204144 (regTwo!30870 r!7292)))))

(declare-fun b!5406288 () Bool)

(declare-fun e!3351696 () Bool)

(assert (=> b!5406288 (= e!3351685 e!3351696)))

(declare-fun res!2298807 () Bool)

(assert (=> b!5406288 (=> res!2298807 e!3351696)))

(declare-fun lt!2204158 () Bool)

(assert (=> b!5406288 (= res!2298807 lt!2204158)))

(declare-fun lt!2204129 () Bool)

(assert (=> b!5406288 (= lt!2204129 (matchRSpec!2282 lt!2204139 s!2326))))

(assert (=> b!5406288 (= lt!2204129 (matchR!7364 lt!2204139 s!2326))))

(declare-fun lt!2204152 () Unit!154238)

(assert (=> b!5406288 (= lt!2204152 (mainMatchTheorem!2282 lt!2204139 s!2326))))

(declare-fun b!5406289 () Bool)

(declare-fun res!2298792 () Bool)

(declare-fun e!3351680 () Bool)

(assert (=> b!5406289 (=> (not res!2298792) (not e!3351680))))

(declare-fun z!1189 () (InoxSet Context!9126))

(declare-fun toList!8963 ((InoxSet Context!9126)) List!61837)

(assert (=> b!5406289 (= res!2298792 (= (toList!8963 z!1189) zl!343))))

(declare-fun b!5406290 () Bool)

(declare-fun e!3351686 () Bool)

(declare-fun tp!1495074 () Bool)

(declare-fun tp!1495075 () Bool)

(assert (=> b!5406290 (= e!3351686 (and tp!1495074 tp!1495075))))

(declare-fun b!5406291 () Bool)

(declare-fun tp_is_empty!39611 () Bool)

(assert (=> b!5406291 (= e!3351686 tp_is_empty!39611)))

(declare-fun e!3351683 () Bool)

(assert (=> b!5406292 (= e!3351683 e!3351694)))

(declare-fun res!2298808 () Bool)

(assert (=> b!5406292 (=> res!2298808 e!3351694)))

(get-info :version)

(assert (=> b!5406292 (= res!2298808 (or (and ((_ is ElementMatch!15179) (regOne!30870 r!7292)) (= (c!942433 (regOne!30870 r!7292)) (h!68162 s!2326))) ((_ is Union!15179) (regOne!30870 r!7292))))))

(declare-fun lt!2204135 () Unit!154238)

(assert (=> b!5406292 (= lt!2204135 e!3351677)))

(declare-fun c!942432 () Bool)

(declare-fun lt!2204178 () Bool)

(assert (=> b!5406292 (= c!942432 lt!2204178)))

(declare-fun nullable!5348 (Regex!15179) Bool)

(assert (=> b!5406292 (= lt!2204178 (nullable!5348 (h!68160 (exprs!5063 (h!68161 zl!343)))))))

(declare-fun lambda!281875 () Int)

(declare-fun flatMap!906 ((InoxSet Context!9126) Int) (InoxSet Context!9126))

(declare-fun derivationStepZipperUp!551 (Context!9126 C!30628) (InoxSet Context!9126))

(assert (=> b!5406292 (= (flatMap!906 z!1189 lambda!281875) (derivationStepZipperUp!551 (h!68161 zl!343) (h!68162 s!2326)))))

(declare-fun lt!2204131 () Unit!154238)

(declare-fun lemmaFlatMapOnSingletonSet!438 ((InoxSet Context!9126) Context!9126 Int) Unit!154238)

(assert (=> b!5406292 (= lt!2204131 (lemmaFlatMapOnSingletonSet!438 z!1189 (h!68161 zl!343) lambda!281875))))

(declare-fun lt!2204167 () (InoxSet Context!9126))

(declare-fun lt!2204161 () Context!9126)

(assert (=> b!5406292 (= lt!2204167 (derivationStepZipperUp!551 lt!2204161 (h!68162 s!2326)))))

(assert (=> b!5406292 (= lt!2204142 (derivationStepZipperDown!627 (h!68160 (exprs!5063 (h!68161 zl!343))) lt!2204161 (h!68162 s!2326)))))

(assert (=> b!5406292 (= lt!2204161 (Context!9127 (t!375059 (exprs!5063 (h!68161 zl!343)))))))

(declare-fun lt!2204141 () (InoxSet Context!9126))

(assert (=> b!5406292 (= lt!2204141 (derivationStepZipperUp!551 (Context!9127 (Cons!61712 (h!68160 (exprs!5063 (h!68161 zl!343))) (t!375059 (exprs!5063 (h!68161 zl!343))))) (h!68162 s!2326)))))

(declare-fun b!5406293 () Bool)

(assert (=> b!5406293 (= e!3351697 lt!2204129)))

(declare-fun b!5406294 () Bool)

(declare-fun res!2298804 () Bool)

(declare-fun e!3351689 () Bool)

(assert (=> b!5406294 (=> res!2298804 e!3351689)))

(declare-fun lt!2204184 () Bool)

(declare-fun lt!2204140 () Bool)

(assert (=> b!5406294 (= res!2298804 (or (not lt!2204184) (not lt!2204140)))))

(declare-fun setIsEmpty!35201 () Bool)

(declare-fun setRes!35201 () Bool)

(assert (=> setIsEmpty!35201 setRes!35201))

(declare-fun b!5406295 () Bool)

(declare-fun res!2298789 () Bool)

(assert (=> b!5406295 (=> res!2298789 e!3351696)))

(assert (=> b!5406295 (= res!2298789 (not lt!2204178))))

(declare-fun b!5406296 () Bool)

(declare-fun tp!1495079 () Bool)

(declare-fun tp!1495080 () Bool)

(assert (=> b!5406296 (= e!3351686 (and tp!1495079 tp!1495080))))

(declare-fun b!5406297 () Bool)

(declare-fun res!2298794 () Bool)

(assert (=> b!5406297 (=> res!2298794 e!3351693)))

(declare-fun lt!2204173 () Regex!15179)

(assert (=> b!5406297 (= res!2298794 (not (= lt!2204173 r!7292)))))

(declare-fun tp!1495081 () Bool)

(declare-fun setNonEmpty!35201 () Bool)

(declare-fun e!3351678 () Bool)

(declare-fun setElem!35201 () Context!9126)

(declare-fun inv!81194 (Context!9126) Bool)

(assert (=> setNonEmpty!35201 (= setRes!35201 (and tp!1495081 (inv!81194 setElem!35201) e!3351678))))

(declare-fun setRest!35201 () (InoxSet Context!9126))

(assert (=> setNonEmpty!35201 (= z!1189 ((_ map or) (store ((as const (Array Context!9126 Bool)) false) setElem!35201 true) setRest!35201))))

(declare-fun b!5406298 () Bool)

(declare-fun e!3351699 () Bool)

(assert (=> b!5406298 (= e!3351699 (matchZipper!1423 lt!2204167 (t!375061 s!2326)))))

(declare-fun b!5406299 () Bool)

(declare-fun e!3351688 () Bool)

(assert (=> b!5406299 (= e!3351688 (nullable!5348 (regOne!30870 (regOne!30870 r!7292))))))

(declare-fun b!5406300 () Bool)

(declare-fun e!3351674 () Bool)

(assert (=> b!5406300 (= e!3351674 e!3351693)))

(declare-fun res!2298805 () Bool)

(assert (=> b!5406300 (=> res!2298805 e!3351693)))

(declare-fun lt!2204177 () (InoxSet Context!9126))

(assert (=> b!5406300 (= res!2298805 (not (= lt!2204140 (matchZipper!1423 lt!2204177 (t!375061 s!2326)))))))

(declare-fun lt!2204130 () (InoxSet Context!9126))

(assert (=> b!5406300 (= lt!2204140 (matchZipper!1423 lt!2204130 s!2326))))

(declare-fun b!5406301 () Bool)

(declare-fun e!3351684 () Bool)

(assert (=> b!5406301 (= e!3351682 e!3351684)))

(declare-fun res!2298816 () Bool)

(assert (=> b!5406301 (=> res!2298816 e!3351684)))

(declare-fun lt!2204157 () Context!9126)

(assert (=> b!5406301 (= res!2298816 (not (= (unfocusZipper!921 (Cons!61713 lt!2204157 Nil!61713)) lt!2204139)))))

(assert (=> b!5406301 (= lt!2204139 (Concat!24024 (reg!15508 (regOne!30870 r!7292)) lt!2204159))))

(declare-fun b!5406302 () Bool)

(assert (=> b!5406302 (= e!3351696 e!3351689)))

(declare-fun res!2298813 () Bool)

(assert (=> b!5406302 (=> res!2298813 e!3351689)))

(declare-fun e!3351692 () Bool)

(assert (=> b!5406302 (= res!2298813 e!3351692)))

(declare-fun res!2298796 () Bool)

(assert (=> b!5406302 (=> (not res!2298796) (not e!3351692))))

(assert (=> b!5406302 (= res!2298796 (not lt!2204184))))

(assert (=> b!5406302 (= lt!2204184 (matchZipper!1423 lt!2204142 (t!375061 s!2326)))))

(declare-fun b!5406303 () Bool)

(assert (=> b!5406303 (= e!3351687 e!3351674)))

(declare-fun res!2298814 () Bool)

(assert (=> b!5406303 (=> res!2298814 e!3351674)))

(assert (=> b!5406303 (= res!2298814 (not (= lt!2204177 lt!2204138)))))

(assert (=> b!5406303 (= (flatMap!906 lt!2204130 lambda!281875) (derivationStepZipperUp!551 lt!2204157 (h!68162 s!2326)))))

(declare-fun lt!2204170 () Unit!154238)

(assert (=> b!5406303 (= lt!2204170 (lemmaFlatMapOnSingletonSet!438 lt!2204130 lt!2204157 lambda!281875))))

(declare-fun lt!2204153 () (InoxSet Context!9126))

(assert (=> b!5406303 (= lt!2204153 (derivationStepZipperUp!551 lt!2204157 (h!68162 s!2326)))))

(declare-fun derivationStepZipper!1418 ((InoxSet Context!9126) C!30628) (InoxSet Context!9126))

(assert (=> b!5406303 (= lt!2204177 (derivationStepZipper!1418 lt!2204130 (h!68162 s!2326)))))

(assert (=> b!5406303 (= lt!2204130 (store ((as const (Array Context!9126 Bool)) false) lt!2204157 true))))

(assert (=> b!5406303 (= lt!2204157 (Context!9127 (Cons!61712 (reg!15508 (regOne!30870 r!7292)) lt!2204155)))))

(declare-fun b!5406304 () Bool)

(declare-fun tp!1495073 () Bool)

(assert (=> b!5406304 (= e!3351678 tp!1495073)))

(declare-fun e!3351679 () Bool)

(declare-fun b!5406305 () Bool)

(declare-fun tp!1495076 () Bool)

(assert (=> b!5406305 (= e!3351679 (and (inv!81194 (h!68161 zl!343)) e!3351700 tp!1495076))))

(declare-fun b!5406306 () Bool)

(declare-fun ++!13532 (List!61838 List!61838) List!61838)

(assert (=> b!5406306 (= e!3351698 (= (++!13532 Nil!61714 s!2326) s!2326))))

(declare-fun b!5406307 () Bool)

(assert (=> b!5406307 (= e!3351684 e!3351695)))

(declare-fun res!2298811 () Bool)

(assert (=> b!5406307 (=> res!2298811 e!3351695)))

(assert (=> b!5406307 (= res!2298811 (not (= (unfocusZipper!921 lt!2204145) (reg!15508 (regOne!30870 r!7292)))))))

(assert (=> b!5406307 (= lt!2204145 (Cons!61713 lt!2204154 Nil!61713))))

(assert (=> b!5406307 (= (flatMap!906 lt!2204183 lambda!281875) (derivationStepZipperUp!551 lt!2204132 (h!68162 s!2326)))))

(declare-fun lt!2204164 () Unit!154238)

(assert (=> b!5406307 (= lt!2204164 (lemmaFlatMapOnSingletonSet!438 lt!2204183 lt!2204132 lambda!281875))))

(assert (=> b!5406307 (= (flatMap!906 lt!2204160 lambda!281875) (derivationStepZipperUp!551 lt!2204154 (h!68162 s!2326)))))

(declare-fun lt!2204149 () Unit!154238)

(assert (=> b!5406307 (= lt!2204149 (lemmaFlatMapOnSingletonSet!438 lt!2204160 lt!2204154 lambda!281875))))

(declare-fun lt!2204150 () (InoxSet Context!9126))

(assert (=> b!5406307 (= lt!2204150 (derivationStepZipperUp!551 lt!2204132 (h!68162 s!2326)))))

(declare-fun lt!2204146 () (InoxSet Context!9126))

(assert (=> b!5406307 (= lt!2204146 (derivationStepZipperUp!551 lt!2204154 (h!68162 s!2326)))))

(assert (=> b!5406307 (= lt!2204183 (store ((as const (Array Context!9126 Bool)) false) lt!2204132 true))))

(assert (=> b!5406307 (= lt!2204160 (store ((as const (Array Context!9126 Bool)) false) lt!2204154 true))))

(assert (=> b!5406307 (= lt!2204154 (Context!9127 lt!2204163))))

(assert (=> b!5406307 (= lt!2204163 (Cons!61712 (reg!15508 (regOne!30870 r!7292)) Nil!61712))))

(declare-fun b!5406308 () Bool)

(declare-fun e!3351681 () Bool)

(assert (=> b!5406308 (= e!3351680 e!3351681)))

(declare-fun res!2298791 () Bool)

(assert (=> b!5406308 (=> (not res!2298791) (not e!3351681))))

(assert (=> b!5406308 (= res!2298791 (= r!7292 lt!2204173))))

(assert (=> b!5406308 (= lt!2204173 (unfocusZipper!921 zl!343))))

(declare-fun b!5406309 () Bool)

(declare-fun res!2298801 () Bool)

(assert (=> b!5406309 (=> res!2298801 e!3351698)))

(assert (=> b!5406309 (= res!2298801 (not (validRegex!6915 (regTwo!30870 r!7292))))))

(declare-fun b!5406310 () Bool)

(declare-fun res!2298783 () Bool)

(assert (=> b!5406310 (=> res!2298783 e!3351696)))

(assert (=> b!5406310 (= res!2298783 (not (matchZipper!1423 z!1189 s!2326)))))

(declare-fun b!5406311 () Bool)

(declare-fun tp!1495072 () Bool)

(assert (=> b!5406311 (= e!3351686 tp!1495072)))

(declare-fun b!5406312 () Bool)

(assert (=> b!5406312 (= e!3351692 (not (matchZipper!1423 lt!2204167 (t!375061 s!2326))))))

(declare-fun b!5406313 () Bool)

(declare-fun res!2298793 () Bool)

(assert (=> b!5406313 (=> res!2298793 e!3351691)))

(assert (=> b!5406313 (= res!2298793 (not (matchZipper!1423 lt!2204183 (_2!35681 lt!2204147))))))

(declare-fun b!5406314 () Bool)

(declare-fun res!2298785 () Bool)

(assert (=> b!5406314 (=> res!2298785 e!3351683)))

(declare-fun isEmpty!33705 (List!61836) Bool)

(assert (=> b!5406314 (= res!2298785 (isEmpty!33705 (t!375059 (exprs!5063 (h!68161 zl!343)))))))

(declare-fun res!2298788 () Bool)

(assert (=> start!567798 (=> (not res!2298788) (not e!3351680))))

(assert (=> start!567798 (= res!2298788 (validRegex!6915 r!7292))))

(assert (=> start!567798 e!3351680))

(assert (=> start!567798 e!3351686))

(declare-fun condSetEmpty!35201 () Bool)

(assert (=> start!567798 (= condSetEmpty!35201 (= z!1189 ((as const (Array Context!9126 Bool)) false)))))

(assert (=> start!567798 setRes!35201))

(assert (=> start!567798 e!3351679))

(declare-fun e!3351675 () Bool)

(assert (=> start!567798 e!3351675))

(declare-fun b!5406315 () Bool)

(declare-fun Unit!154241 () Unit!154238)

(assert (=> b!5406315 (= e!3351677 Unit!154241)))

(declare-fun lt!2204175 () Unit!154238)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!416 ((InoxSet Context!9126) (InoxSet Context!9126) List!61838) Unit!154238)

(assert (=> b!5406315 (= lt!2204175 (lemmaZipperConcatMatchesSameAsBothZippers!416 lt!2204142 lt!2204167 (t!375061 s!2326)))))

(declare-fun res!2298809 () Bool)

(assert (=> b!5406315 (= res!2298809 (matchZipper!1423 lt!2204142 (t!375061 s!2326)))))

(assert (=> b!5406315 (=> res!2298809 e!3351699)))

(assert (=> b!5406315 (= (matchZipper!1423 ((_ map or) lt!2204142 lt!2204167) (t!375061 s!2326)) e!3351699)))

(assert (=> b!5406316 (= e!3351676 e!3351683)))

(declare-fun res!2298784 () Bool)

(assert (=> b!5406316 (=> res!2298784 e!3351683)))

(declare-fun lt!2204176 () Bool)

(assert (=> b!5406316 (= res!2298784 (or (not (= lt!2204158 lt!2204176)) ((_ is Nil!61714) s!2326)))))

(assert (=> b!5406316 (= (Exists!2360 lambda!281873) (Exists!2360 lambda!281874))))

(declare-fun lt!2204174 () Unit!154238)

(assert (=> b!5406316 (= lt!2204174 (lemmaExistCutMatchRandMatchRSpecEquivalent!1014 (regOne!30870 r!7292) (regTwo!30870 r!7292) s!2326))))

(assert (=> b!5406316 (= lt!2204176 (Exists!2360 lambda!281873))))

(assert (=> b!5406316 (= lt!2204176 (isDefined!11993 (findConcatSeparation!1704 (regOne!30870 r!7292) (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326)))))

(declare-fun lt!2204136 () Unit!154238)

(assert (=> b!5406316 (= lt!2204136 (lemmaFindConcatSeparationEquivalentToExists!1468 (regOne!30870 r!7292) (regTwo!30870 r!7292) s!2326))))

(declare-fun e!3351690 () Bool)

(assert (=> b!5406317 (= e!3351689 e!3351690)))

(declare-fun res!2298797 () Bool)

(assert (=> b!5406317 (=> res!2298797 e!3351690)))

(declare-fun appendTo!38 ((InoxSet Context!9126) Context!9126) (InoxSet Context!9126))

(assert (=> b!5406317 (= res!2298797 (not (= (appendTo!38 lt!2204160 lt!2204132) lt!2204130)))))

(declare-fun lambda!281876 () Int)

(declare-fun map!14153 ((InoxSet Context!9126) Int) (InoxSet Context!9126))

(assert (=> b!5406317 (= (map!14153 lt!2204160 lambda!281876) (store ((as const (Array Context!9126 Bool)) false) (Context!9127 (++!13531 lt!2204163 lt!2204155)) true))))

(declare-fun lt!2204134 () Unit!154238)

(assert (=> b!5406317 (= lt!2204134 (lemmaConcatPreservesForall!204 lt!2204163 lt!2204155 lambda!281877))))

(declare-fun lt!2204181 () Unit!154238)

(declare-fun lemmaMapOnSingletonSet!38 ((InoxSet Context!9126) Context!9126 Int) Unit!154238)

(assert (=> b!5406317 (= lt!2204181 (lemmaMapOnSingletonSet!38 lt!2204160 lt!2204154 lambda!281876))))

(declare-fun b!5406318 () Bool)

(declare-fun res!2298786 () Bool)

(assert (=> b!5406318 (=> res!2298786 e!3351676)))

(assert (=> b!5406318 (= res!2298786 (not ((_ is Cons!61712) (exprs!5063 (h!68161 zl!343)))))))

(declare-fun b!5406319 () Bool)

(assert (=> b!5406319 (= e!3351681 (not e!3351676))))

(declare-fun res!2298812 () Bool)

(assert (=> b!5406319 (=> res!2298812 e!3351676)))

(assert (=> b!5406319 (= res!2298812 (not ((_ is Cons!61713) zl!343)))))

(assert (=> b!5406319 (= lt!2204158 (matchRSpec!2282 r!7292 s!2326))))

(assert (=> b!5406319 (= lt!2204158 (matchR!7364 r!7292 s!2326))))

(declare-fun lt!2204171 () Unit!154238)

(assert (=> b!5406319 (= lt!2204171 (mainMatchTheorem!2282 r!7292 s!2326))))

(declare-fun b!5406320 () Bool)

(declare-fun res!2298815 () Bool)

(assert (=> b!5406320 (=> res!2298815 e!3351694)))

(assert (=> b!5406320 (= res!2298815 (or ((_ is Concat!24024) (regOne!30870 r!7292)) (not ((_ is Star!15179) (regOne!30870 r!7292)))))))

(declare-fun b!5406321 () Bool)

(declare-fun res!2298781 () Bool)

(assert (=> b!5406321 (=> res!2298781 e!3351694)))

(assert (=> b!5406321 (= res!2298781 e!3351688)))

(declare-fun res!2298790 () Bool)

(assert (=> b!5406321 (=> (not res!2298790) (not e!3351688))))

(assert (=> b!5406321 (= res!2298790 ((_ is Concat!24024) (regOne!30870 r!7292)))))

(declare-fun b!5406322 () Bool)

(declare-fun tp!1495078 () Bool)

(assert (=> b!5406322 (= e!3351675 (and tp_is_empty!39611 tp!1495078))))

(declare-fun b!5406323 () Bool)

(declare-fun res!2298795 () Bool)

(assert (=> b!5406323 (=> res!2298795 e!3351676)))

(assert (=> b!5406323 (= res!2298795 (or ((_ is EmptyExpr!15179) r!7292) ((_ is EmptyLang!15179) r!7292) ((_ is ElementMatch!15179) r!7292) ((_ is Union!15179) r!7292) (not ((_ is Concat!24024) r!7292))))))

(declare-fun b!5406324 () Bool)

(declare-fun res!2298798 () Bool)

(assert (=> b!5406324 (=> res!2298798 e!3351691)))

(assert (=> b!5406324 (= res!2298798 (not (matchZipper!1423 lt!2204160 (_1!35681 lt!2204147))))))

(declare-fun b!5406325 () Bool)

(assert (=> b!5406325 (= e!3351690 e!3351691)))

(declare-fun res!2298800 () Bool)

(assert (=> b!5406325 (=> res!2298800 e!3351691)))

(assert (=> b!5406325 (= res!2298800 (not (= s!2326 lt!2204168)))))

(assert (=> b!5406325 (= lt!2204168 (++!13532 (_1!35681 lt!2204147) (_2!35681 lt!2204147)))))

(declare-fun lt!2204166 () Option!15290)

(declare-fun get!21271 (Option!15290) tuple2!64756)

(assert (=> b!5406325 (= lt!2204147 (get!21271 lt!2204166))))

(assert (=> b!5406325 (isDefined!11993 lt!2204166)))

(declare-fun findConcatSeparationZippers!36 ((InoxSet Context!9126) (InoxSet Context!9126) List!61838 List!61838 List!61838) Option!15290)

(assert (=> b!5406325 (= lt!2204166 (findConcatSeparationZippers!36 lt!2204160 lt!2204183 Nil!61714 s!2326 s!2326))))

(declare-fun lt!2204148 () Unit!154238)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!36 ((InoxSet Context!9126) Context!9126 List!61838) Unit!154238)

(assert (=> b!5406325 (= lt!2204148 (lemmaConcatZipperMatchesStringThenFindConcatDefined!36 lt!2204160 lt!2204132 s!2326))))

(assert (= (and start!567798 res!2298788) b!5406289))

(assert (= (and b!5406289 res!2298792) b!5406308))

(assert (= (and b!5406308 res!2298791) b!5406319))

(assert (= (and b!5406319 (not res!2298812)) b!5406283))

(assert (= (and b!5406283 (not res!2298817)) b!5406282))

(assert (= (and b!5406282 (not res!2298782)) b!5406318))

(assert (= (and b!5406318 (not res!2298786)) b!5406279))

(assert (= (and b!5406279 (not res!2298803)) b!5406323))

(assert (= (and b!5406323 (not res!2298795)) b!5406316))

(assert (= (and b!5406316 (not res!2298784)) b!5406314))

(assert (= (and b!5406314 (not res!2298785)) b!5406292))

(assert (= (and b!5406292 c!942432) b!5406315))

(assert (= (and b!5406292 (not c!942432)) b!5406280))

(assert (= (and b!5406315 (not res!2298809)) b!5406298))

(assert (= (and b!5406292 (not res!2298808)) b!5406321))

(assert (= (and b!5406321 res!2298790) b!5406299))

(assert (= (and b!5406321 (not res!2298781)) b!5406320))

(assert (= (and b!5406320 (not res!2298815)) b!5406284))

(assert (= (and b!5406284 (not res!2298810)) b!5406303))

(assert (= (and b!5406303 (not res!2298814)) b!5406300))

(assert (= (and b!5406300 (not res!2298805)) b!5406297))

(assert (= (and b!5406297 (not res!2298794)) b!5406287))

(assert (= (and b!5406287 (not res!2298806)) b!5406301))

(assert (= (and b!5406301 (not res!2298816)) b!5406307))

(assert (= (and b!5406307 (not res!2298811)) b!5406281))

(assert (= (and b!5406281 (not res!2298802)) b!5406288))

(assert (= (and b!5406288 (not res!2298807)) b!5406310))

(assert (= (and b!5406310 (not res!2298783)) b!5406295))

(assert (= (and b!5406295 (not res!2298789)) b!5406302))

(assert (= (and b!5406302 res!2298796) b!5406312))

(assert (= (and b!5406302 (not res!2298813)) b!5406294))

(assert (= (and b!5406294 (not res!2298804)) b!5406317))

(assert (= (and b!5406317 (not res!2298797)) b!5406325))

(assert (= (and b!5406325 (not res!2298800)) b!5406324))

(assert (= (and b!5406324 (not res!2298798)) b!5406313))

(assert (= (and b!5406313 (not res!2298793)) b!5406286))

(assert (= (and b!5406286 res!2298787) b!5406293))

(assert (= (and b!5406286 (not res!2298799)) b!5406309))

(assert (= (and b!5406309 (not res!2298801)) b!5406306))

(assert (= (and start!567798 ((_ is ElementMatch!15179) r!7292)) b!5406291))

(assert (= (and start!567798 ((_ is Concat!24024) r!7292)) b!5406296))

(assert (= (and start!567798 ((_ is Star!15179) r!7292)) b!5406311))

(assert (= (and start!567798 ((_ is Union!15179) r!7292)) b!5406290))

(assert (= (and start!567798 condSetEmpty!35201) setIsEmpty!35201))

(assert (= (and start!567798 (not condSetEmpty!35201)) setNonEmpty!35201))

(assert (= setNonEmpty!35201 b!5406304))

(assert (= b!5406305 b!5406285))

(assert (= (and start!567798 ((_ is Cons!61713) zl!343)) b!5406305))

(assert (= (and start!567798 ((_ is Cons!61714) s!2326)) b!5406322))

(declare-fun m!6430440 () Bool)

(assert (=> b!5406298 m!6430440))

(declare-fun m!6430442 () Bool)

(assert (=> b!5406317 m!6430442))

(declare-fun m!6430444 () Bool)

(assert (=> b!5406317 m!6430444))

(declare-fun m!6430446 () Bool)

(assert (=> b!5406317 m!6430446))

(declare-fun m!6430448 () Bool)

(assert (=> b!5406317 m!6430448))

(declare-fun m!6430450 () Bool)

(assert (=> b!5406317 m!6430450))

(declare-fun m!6430452 () Bool)

(assert (=> b!5406317 m!6430452))

(declare-fun m!6430454 () Bool)

(assert (=> b!5406314 m!6430454))

(declare-fun m!6430456 () Bool)

(assert (=> b!5406307 m!6430456))

(declare-fun m!6430458 () Bool)

(assert (=> b!5406307 m!6430458))

(declare-fun m!6430460 () Bool)

(assert (=> b!5406307 m!6430460))

(declare-fun m!6430462 () Bool)

(assert (=> b!5406307 m!6430462))

(declare-fun m!6430464 () Bool)

(assert (=> b!5406307 m!6430464))

(declare-fun m!6430466 () Bool)

(assert (=> b!5406307 m!6430466))

(declare-fun m!6430468 () Bool)

(assert (=> b!5406307 m!6430468))

(declare-fun m!6430470 () Bool)

(assert (=> b!5406307 m!6430470))

(declare-fun m!6430472 () Bool)

(assert (=> b!5406307 m!6430472))

(declare-fun m!6430474 () Bool)

(assert (=> b!5406305 m!6430474))

(declare-fun m!6430476 () Bool)

(assert (=> b!5406302 m!6430476))

(declare-fun m!6430478 () Bool)

(assert (=> b!5406313 m!6430478))

(declare-fun m!6430480 () Bool)

(assert (=> b!5406283 m!6430480))

(declare-fun m!6430482 () Bool)

(assert (=> b!5406306 m!6430482))

(declare-fun m!6430484 () Bool)

(assert (=> b!5406303 m!6430484))

(declare-fun m!6430486 () Bool)

(assert (=> b!5406303 m!6430486))

(declare-fun m!6430488 () Bool)

(assert (=> b!5406303 m!6430488))

(declare-fun m!6430490 () Bool)

(assert (=> b!5406303 m!6430490))

(declare-fun m!6430492 () Bool)

(assert (=> b!5406303 m!6430492))

(declare-fun m!6430494 () Bool)

(assert (=> b!5406315 m!6430494))

(assert (=> b!5406315 m!6430476))

(declare-fun m!6430496 () Bool)

(assert (=> b!5406315 m!6430496))

(declare-fun m!6430498 () Bool)

(assert (=> b!5406316 m!6430498))

(declare-fun m!6430500 () Bool)

(assert (=> b!5406316 m!6430500))

(declare-fun m!6430502 () Bool)

(assert (=> b!5406316 m!6430502))

(declare-fun m!6430504 () Bool)

(assert (=> b!5406316 m!6430504))

(assert (=> b!5406316 m!6430500))

(declare-fun m!6430506 () Bool)

(assert (=> b!5406316 m!6430506))

(assert (=> b!5406316 m!6430498))

(declare-fun m!6430508 () Bool)

(assert (=> b!5406316 m!6430508))

(declare-fun m!6430510 () Bool)

(assert (=> b!5406300 m!6430510))

(declare-fun m!6430512 () Bool)

(assert (=> b!5406300 m!6430512))

(declare-fun m!6430514 () Bool)

(assert (=> setNonEmpty!35201 m!6430514))

(declare-fun m!6430516 () Bool)

(assert (=> b!5406282 m!6430516))

(assert (=> b!5406312 m!6430440))

(declare-fun m!6430518 () Bool)

(assert (=> b!5406284 m!6430518))

(declare-fun m!6430520 () Bool)

(assert (=> b!5406308 m!6430520))

(declare-fun m!6430522 () Bool)

(assert (=> b!5406325 m!6430522))

(declare-fun m!6430524 () Bool)

(assert (=> b!5406325 m!6430524))

(declare-fun m!6430526 () Bool)

(assert (=> b!5406325 m!6430526))

(declare-fun m!6430528 () Bool)

(assert (=> b!5406325 m!6430528))

(declare-fun m!6430530 () Bool)

(assert (=> b!5406325 m!6430530))

(declare-fun m!6430532 () Bool)

(assert (=> b!5406324 m!6430532))

(declare-fun m!6430534 () Bool)

(assert (=> b!5406301 m!6430534))

(declare-fun m!6430536 () Bool)

(assert (=> b!5406292 m!6430536))

(declare-fun m!6430538 () Bool)

(assert (=> b!5406292 m!6430538))

(declare-fun m!6430540 () Bool)

(assert (=> b!5406292 m!6430540))

(declare-fun m!6430542 () Bool)

(assert (=> b!5406292 m!6430542))

(declare-fun m!6430544 () Bool)

(assert (=> b!5406292 m!6430544))

(declare-fun m!6430546 () Bool)

(assert (=> b!5406292 m!6430546))

(declare-fun m!6430548 () Bool)

(assert (=> b!5406292 m!6430548))

(declare-fun m!6430550 () Bool)

(assert (=> b!5406279 m!6430550))

(assert (=> b!5406279 m!6430550))

(declare-fun m!6430552 () Bool)

(assert (=> b!5406279 m!6430552))

(declare-fun m!6430554 () Bool)

(assert (=> b!5406309 m!6430554))

(declare-fun m!6430556 () Bool)

(assert (=> b!5406281 m!6430556))

(declare-fun m!6430558 () Bool)

(assert (=> b!5406310 m!6430558))

(declare-fun m!6430560 () Bool)

(assert (=> b!5406289 m!6430560))

(declare-fun m!6430562 () Bool)

(assert (=> b!5406319 m!6430562))

(declare-fun m!6430564 () Bool)

(assert (=> b!5406319 m!6430564))

(declare-fun m!6430566 () Bool)

(assert (=> b!5406319 m!6430566))

(declare-fun m!6430568 () Bool)

(assert (=> b!5406299 m!6430568))

(declare-fun m!6430570 () Bool)

(assert (=> b!5406286 m!6430570))

(declare-fun m!6430572 () Bool)

(assert (=> b!5406286 m!6430572))

(declare-fun m!6430574 () Bool)

(assert (=> b!5406286 m!6430574))

(declare-fun m!6430576 () Bool)

(assert (=> b!5406286 m!6430576))

(declare-fun m!6430578 () Bool)

(assert (=> b!5406286 m!6430578))

(assert (=> b!5406286 m!6430572))

(declare-fun m!6430580 () Bool)

(assert (=> b!5406286 m!6430580))

(declare-fun m!6430582 () Bool)

(assert (=> b!5406286 m!6430582))

(declare-fun m!6430584 () Bool)

(assert (=> b!5406286 m!6430584))

(declare-fun m!6430586 () Bool)

(assert (=> b!5406286 m!6430586))

(assert (=> b!5406286 m!6430444))

(declare-fun m!6430588 () Bool)

(assert (=> b!5406286 m!6430588))

(declare-fun m!6430590 () Bool)

(assert (=> b!5406286 m!6430590))

(assert (=> b!5406286 m!6430588))

(declare-fun m!6430592 () Bool)

(assert (=> b!5406286 m!6430592))

(declare-fun m!6430594 () Bool)

(assert (=> b!5406286 m!6430594))

(declare-fun m!6430596 () Bool)

(assert (=> b!5406286 m!6430596))

(declare-fun m!6430598 () Bool)

(assert (=> b!5406286 m!6430598))

(assert (=> b!5406286 m!6430450))

(declare-fun m!6430600 () Bool)

(assert (=> b!5406286 m!6430600))

(assert (=> b!5406286 m!6430450))

(declare-fun m!6430602 () Bool)

(assert (=> b!5406286 m!6430602))

(declare-fun m!6430604 () Bool)

(assert (=> b!5406286 m!6430604))

(declare-fun m!6430606 () Bool)

(assert (=> b!5406286 m!6430606))

(assert (=> b!5406286 m!6430452))

(declare-fun m!6430608 () Bool)

(assert (=> start!567798 m!6430608))

(declare-fun m!6430610 () Bool)

(assert (=> b!5406288 m!6430610))

(declare-fun m!6430612 () Bool)

(assert (=> b!5406288 m!6430612))

(declare-fun m!6430614 () Bool)

(assert (=> b!5406288 m!6430614))

(check-sat (not b!5406317) (not b!5406316) (not b!5406305) (not b!5406313) (not b!5406281) (not b!5406286) (not b!5406279) (not b!5406296) (not b!5406284) tp_is_empty!39611 (not b!5406300) (not setNonEmpty!35201) (not b!5406301) (not b!5406290) (not b!5406314) (not b!5406283) (not b!5406312) (not b!5406299) (not b!5406304) (not b!5406282) (not b!5406303) (not b!5406315) (not b!5406298) (not b!5406324) (not b!5406292) (not b!5406285) (not b!5406288) (not b!5406310) (not b!5406289) (not b!5406309) (not b!5406311) (not b!5406307) (not start!567798) (not b!5406325) (not b!5406302) (not b!5406308) (not b!5406306) (not b!5406319) (not b!5406322))
(check-sat)
(get-model)

(declare-fun c!942508 () Bool)

(declare-fun c!942510 () Bool)

(declare-fun call!386933 () (InoxSet Context!9126))

(declare-fun c!942509 () Bool)

(declare-fun bm!386924 () Bool)

(declare-fun call!386931 () List!61836)

(assert (=> bm!386924 (= call!386933 (derivationStepZipperDown!627 (ite c!942510 (regTwo!30871 (reg!15508 (regOne!30870 r!7292))) (ite c!942509 (regTwo!30870 (reg!15508 (regOne!30870 r!7292))) (ite c!942508 (regOne!30870 (reg!15508 (regOne!30870 r!7292))) (reg!15508 (reg!15508 (regOne!30870 r!7292)))))) (ite (or c!942510 c!942509) lt!2204132 (Context!9127 call!386931)) (h!68162 s!2326)))))

(declare-fun bm!386925 () Bool)

(declare-fun call!386929 () List!61836)

(assert (=> bm!386925 (= call!386931 call!386929)))

(declare-fun b!5406623 () Bool)

(declare-fun e!3351868 () (InoxSet Context!9126))

(assert (=> b!5406623 (= e!3351868 ((as const (Array Context!9126 Bool)) false))))

(declare-fun b!5406624 () Bool)

(declare-fun e!3351864 () Bool)

(assert (=> b!5406624 (= e!3351864 (nullable!5348 (regOne!30870 (reg!15508 (regOne!30870 r!7292)))))))

(declare-fun b!5406625 () Bool)

(declare-fun e!3351866 () (InoxSet Context!9126))

(declare-fun e!3351867 () (InoxSet Context!9126))

(assert (=> b!5406625 (= e!3351866 e!3351867)))

(assert (=> b!5406625 (= c!942508 ((_ is Concat!24024) (reg!15508 (regOne!30870 r!7292))))))

(declare-fun b!5406626 () Bool)

(declare-fun call!386932 () (InoxSet Context!9126))

(assert (=> b!5406626 (= e!3351867 call!386932)))

(declare-fun b!5406627 () Bool)

(declare-fun e!3351869 () (InoxSet Context!9126))

(declare-fun e!3351865 () (InoxSet Context!9126))

(assert (=> b!5406627 (= e!3351869 e!3351865)))

(assert (=> b!5406627 (= c!942510 ((_ is Union!15179) (reg!15508 (regOne!30870 r!7292))))))

(declare-fun b!5406628 () Bool)

(declare-fun call!386934 () (InoxSet Context!9126))

(declare-fun call!386930 () (InoxSet Context!9126))

(assert (=> b!5406628 (= e!3351866 ((_ map or) call!386934 call!386930))))

(declare-fun b!5406629 () Bool)

(declare-fun c!942512 () Bool)

(assert (=> b!5406629 (= c!942512 ((_ is Star!15179) (reg!15508 (regOne!30870 r!7292))))))

(assert (=> b!5406629 (= e!3351867 e!3351868)))

(declare-fun bm!386926 () Bool)

(assert (=> bm!386926 (= call!386932 call!386930)))

(declare-fun b!5406630 () Bool)

(assert (=> b!5406630 (= e!3351868 call!386932)))

(declare-fun b!5406622 () Bool)

(assert (=> b!5406622 (= e!3351865 ((_ map or) call!386934 call!386933))))

(declare-fun d!1726161 () Bool)

(declare-fun c!942511 () Bool)

(assert (=> d!1726161 (= c!942511 (and ((_ is ElementMatch!15179) (reg!15508 (regOne!30870 r!7292))) (= (c!942433 (reg!15508 (regOne!30870 r!7292))) (h!68162 s!2326))))))

(assert (=> d!1726161 (= (derivationStepZipperDown!627 (reg!15508 (regOne!30870 r!7292)) lt!2204132 (h!68162 s!2326)) e!3351869)))

(declare-fun bm!386927 () Bool)

(assert (=> bm!386927 (= call!386930 call!386933)))

(declare-fun bm!386928 () Bool)

(assert (=> bm!386928 (= call!386934 (derivationStepZipperDown!627 (ite c!942510 (regOne!30871 (reg!15508 (regOne!30870 r!7292))) (regOne!30870 (reg!15508 (regOne!30870 r!7292)))) (ite c!942510 lt!2204132 (Context!9127 call!386929)) (h!68162 s!2326)))))

(declare-fun b!5406631 () Bool)

(assert (=> b!5406631 (= c!942509 e!3351864)))

(declare-fun res!2298960 () Bool)

(assert (=> b!5406631 (=> (not res!2298960) (not e!3351864))))

(assert (=> b!5406631 (= res!2298960 ((_ is Concat!24024) (reg!15508 (regOne!30870 r!7292))))))

(assert (=> b!5406631 (= e!3351865 e!3351866)))

(declare-fun bm!386929 () Bool)

(declare-fun $colon$colon!1489 (List!61836 Regex!15179) List!61836)

(assert (=> bm!386929 (= call!386929 ($colon$colon!1489 (exprs!5063 lt!2204132) (ite (or c!942509 c!942508) (regTwo!30870 (reg!15508 (regOne!30870 r!7292))) (reg!15508 (regOne!30870 r!7292)))))))

(declare-fun b!5406632 () Bool)

(assert (=> b!5406632 (= e!3351869 (store ((as const (Array Context!9126 Bool)) false) lt!2204132 true))))

(assert (= (and d!1726161 c!942511) b!5406632))

(assert (= (and d!1726161 (not c!942511)) b!5406627))

(assert (= (and b!5406627 c!942510) b!5406622))

(assert (= (and b!5406627 (not c!942510)) b!5406631))

(assert (= (and b!5406631 res!2298960) b!5406624))

(assert (= (and b!5406631 c!942509) b!5406628))

(assert (= (and b!5406631 (not c!942509)) b!5406625))

(assert (= (and b!5406625 c!942508) b!5406626))

(assert (= (and b!5406625 (not c!942508)) b!5406629))

(assert (= (and b!5406629 c!942512) b!5406630))

(assert (= (and b!5406629 (not c!942512)) b!5406623))

(assert (= (or b!5406626 b!5406630) bm!386925))

(assert (= (or b!5406626 b!5406630) bm!386926))

(assert (= (or b!5406628 bm!386925) bm!386929))

(assert (= (or b!5406628 bm!386926) bm!386927))

(assert (= (or b!5406622 bm!386927) bm!386924))

(assert (= (or b!5406622 b!5406628) bm!386928))

(declare-fun m!6430860 () Bool)

(assert (=> bm!386924 m!6430860))

(declare-fun m!6430862 () Bool)

(assert (=> b!5406624 m!6430862))

(declare-fun m!6430864 () Bool)

(assert (=> bm!386928 m!6430864))

(declare-fun m!6430866 () Bool)

(assert (=> bm!386929 m!6430866))

(assert (=> b!5406632 m!6430456))

(assert (=> b!5406284 d!1726161))

(declare-fun d!1726193 () Bool)

(declare-fun isEmpty!33708 (Option!15290) Bool)

(assert (=> d!1726193 (= (isDefined!11993 lt!2204166) (not (isEmpty!33708 lt!2204166)))))

(declare-fun bs!1249023 () Bool)

(assert (= bs!1249023 d!1726193))

(declare-fun m!6430868 () Bool)

(assert (=> bs!1249023 m!6430868))

(assert (=> b!5406325 d!1726193))

(declare-fun d!1726195 () Bool)

(assert (=> d!1726195 (= (get!21271 lt!2204166) (v!51318 lt!2204166))))

(assert (=> b!5406325 d!1726195))

(declare-fun b!5406675 () Bool)

(declare-fun e!3351893 () List!61838)

(assert (=> b!5406675 (= e!3351893 (Cons!61714 (h!68162 (_1!35681 lt!2204147)) (++!13532 (t!375061 (_1!35681 lt!2204147)) (_2!35681 lt!2204147))))))

(declare-fun b!5406677 () Bool)

(declare-fun e!3351892 () Bool)

(declare-fun lt!2204246 () List!61838)

(assert (=> b!5406677 (= e!3351892 (or (not (= (_2!35681 lt!2204147) Nil!61714)) (= lt!2204246 (_1!35681 lt!2204147))))))

(declare-fun b!5406676 () Bool)

(declare-fun res!2298968 () Bool)

(assert (=> b!5406676 (=> (not res!2298968) (not e!3351892))))

(declare-fun size!39847 (List!61838) Int)

(assert (=> b!5406676 (= res!2298968 (= (size!39847 lt!2204246) (+ (size!39847 (_1!35681 lt!2204147)) (size!39847 (_2!35681 lt!2204147)))))))

(declare-fun b!5406674 () Bool)

(assert (=> b!5406674 (= e!3351893 (_2!35681 lt!2204147))))

(declare-fun d!1726197 () Bool)

(assert (=> d!1726197 e!3351892))

(declare-fun res!2298969 () Bool)

(assert (=> d!1726197 (=> (not res!2298969) (not e!3351892))))

(declare-fun content!11067 (List!61838) (InoxSet C!30628))

(assert (=> d!1726197 (= res!2298969 (= (content!11067 lt!2204246) ((_ map or) (content!11067 (_1!35681 lt!2204147)) (content!11067 (_2!35681 lt!2204147)))))))

(assert (=> d!1726197 (= lt!2204246 e!3351893)))

(declare-fun c!942530 () Bool)

(assert (=> d!1726197 (= c!942530 ((_ is Nil!61714) (_1!35681 lt!2204147)))))

(assert (=> d!1726197 (= (++!13532 (_1!35681 lt!2204147) (_2!35681 lt!2204147)) lt!2204246)))

(assert (= (and d!1726197 c!942530) b!5406674))

(assert (= (and d!1726197 (not c!942530)) b!5406675))

(assert (= (and d!1726197 res!2298969) b!5406676))

(assert (= (and b!5406676 res!2298968) b!5406677))

(declare-fun m!6430890 () Bool)

(assert (=> b!5406675 m!6430890))

(declare-fun m!6430894 () Bool)

(assert (=> b!5406676 m!6430894))

(declare-fun m!6430900 () Bool)

(assert (=> b!5406676 m!6430900))

(declare-fun m!6430902 () Bool)

(assert (=> b!5406676 m!6430902))

(declare-fun m!6430904 () Bool)

(assert (=> d!1726197 m!6430904))

(declare-fun m!6430906 () Bool)

(assert (=> d!1726197 m!6430906))

(declare-fun m!6430908 () Bool)

(assert (=> d!1726197 m!6430908))

(assert (=> b!5406325 d!1726197))

(declare-fun b!5406778 () Bool)

(declare-fun e!3351953 () Bool)

(declare-fun lt!2204270 () Option!15290)

(assert (=> b!5406778 (= e!3351953 (not (isDefined!11993 lt!2204270)))))

(declare-fun d!1726209 () Bool)

(assert (=> d!1726209 e!3351953))

(declare-fun res!2299009 () Bool)

(assert (=> d!1726209 (=> res!2299009 e!3351953)))

(declare-fun e!3351954 () Bool)

(assert (=> d!1726209 (= res!2299009 e!3351954)))

(declare-fun res!2299010 () Bool)

(assert (=> d!1726209 (=> (not res!2299010) (not e!3351954))))

(assert (=> d!1726209 (= res!2299010 (isDefined!11993 lt!2204270))))

(declare-fun e!3351951 () Option!15290)

(assert (=> d!1726209 (= lt!2204270 e!3351951)))

(declare-fun c!942564 () Bool)

(declare-fun e!3351952 () Bool)

(assert (=> d!1726209 (= c!942564 e!3351952)))

(declare-fun res!2299012 () Bool)

(assert (=> d!1726209 (=> (not res!2299012) (not e!3351952))))

(assert (=> d!1726209 (= res!2299012 (matchZipper!1423 lt!2204160 Nil!61714))))

(assert (=> d!1726209 (= (++!13532 Nil!61714 s!2326) s!2326)))

(assert (=> d!1726209 (= (findConcatSeparationZippers!36 lt!2204160 lt!2204183 Nil!61714 s!2326 s!2326) lt!2204270)))

(declare-fun b!5406779 () Bool)

(declare-fun res!2299011 () Bool)

(assert (=> b!5406779 (=> (not res!2299011) (not e!3351954))))

(assert (=> b!5406779 (= res!2299011 (matchZipper!1423 lt!2204160 (_1!35681 (get!21271 lt!2204270))))))

(declare-fun b!5406780 () Bool)

(declare-fun lt!2204271 () Unit!154238)

(declare-fun lt!2204272 () Unit!154238)

(assert (=> b!5406780 (= lt!2204271 lt!2204272)))

(assert (=> b!5406780 (= (++!13532 (++!13532 Nil!61714 (Cons!61714 (h!68162 s!2326) Nil!61714)) (t!375061 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1835 (List!61838 C!30628 List!61838 List!61838) Unit!154238)

(assert (=> b!5406780 (= lt!2204272 (lemmaMoveElementToOtherListKeepsConcatEq!1835 Nil!61714 (h!68162 s!2326) (t!375061 s!2326) s!2326))))

(declare-fun e!3351955 () Option!15290)

(assert (=> b!5406780 (= e!3351955 (findConcatSeparationZippers!36 lt!2204160 lt!2204183 (++!13532 Nil!61714 (Cons!61714 (h!68162 s!2326) Nil!61714)) (t!375061 s!2326) s!2326))))

(declare-fun b!5406781 () Bool)

(assert (=> b!5406781 (= e!3351954 (= (++!13532 (_1!35681 (get!21271 lt!2204270)) (_2!35681 (get!21271 lt!2204270))) s!2326))))

(declare-fun b!5406782 () Bool)

(assert (=> b!5406782 (= e!3351951 e!3351955)))

(declare-fun c!942563 () Bool)

(assert (=> b!5406782 (= c!942563 ((_ is Nil!61714) s!2326))))

(declare-fun b!5406783 () Bool)

(assert (=> b!5406783 (= e!3351952 (matchZipper!1423 lt!2204183 s!2326))))

(declare-fun b!5406784 () Bool)

(assert (=> b!5406784 (= e!3351955 None!15289)))

(declare-fun b!5406785 () Bool)

(declare-fun res!2299008 () Bool)

(assert (=> b!5406785 (=> (not res!2299008) (not e!3351954))))

(assert (=> b!5406785 (= res!2299008 (matchZipper!1423 lt!2204183 (_2!35681 (get!21271 lt!2204270))))))

(declare-fun b!5406786 () Bool)

(assert (=> b!5406786 (= e!3351951 (Some!15289 (tuple2!64757 Nil!61714 s!2326)))))

(assert (= (and d!1726209 res!2299012) b!5406783))

(assert (= (and d!1726209 c!942564) b!5406786))

(assert (= (and d!1726209 (not c!942564)) b!5406782))

(assert (= (and b!5406782 c!942563) b!5406784))

(assert (= (and b!5406782 (not c!942563)) b!5406780))

(assert (= (and d!1726209 res!2299010) b!5406779))

(assert (= (and b!5406779 res!2299011) b!5406785))

(assert (= (and b!5406785 res!2299008) b!5406781))

(assert (= (and d!1726209 (not res!2299009)) b!5406778))

(declare-fun m!6430988 () Bool)

(assert (=> b!5406778 m!6430988))

(assert (=> d!1726209 m!6430988))

(declare-fun m!6430990 () Bool)

(assert (=> d!1726209 m!6430990))

(assert (=> d!1726209 m!6430482))

(declare-fun m!6430992 () Bool)

(assert (=> b!5406783 m!6430992))

(declare-fun m!6430994 () Bool)

(assert (=> b!5406785 m!6430994))

(declare-fun m!6430996 () Bool)

(assert (=> b!5406785 m!6430996))

(assert (=> b!5406781 m!6430994))

(declare-fun m!6431004 () Bool)

(assert (=> b!5406781 m!6431004))

(assert (=> b!5406779 m!6430994))

(declare-fun m!6431008 () Bool)

(assert (=> b!5406779 m!6431008))

(declare-fun m!6431010 () Bool)

(assert (=> b!5406780 m!6431010))

(assert (=> b!5406780 m!6431010))

(declare-fun m!6431014 () Bool)

(assert (=> b!5406780 m!6431014))

(declare-fun m!6431016 () Bool)

(assert (=> b!5406780 m!6431016))

(assert (=> b!5406780 m!6431010))

(declare-fun m!6431018 () Bool)

(assert (=> b!5406780 m!6431018))

(assert (=> b!5406325 d!1726209))

(declare-fun d!1726245 () Bool)

(assert (=> d!1726245 (isDefined!11993 (findConcatSeparationZippers!36 lt!2204160 (store ((as const (Array Context!9126 Bool)) false) lt!2204132 true) Nil!61714 s!2326 s!2326))))

(declare-fun lt!2204278 () Unit!154238)

(declare-fun choose!40793 ((InoxSet Context!9126) Context!9126 List!61838) Unit!154238)

(assert (=> d!1726245 (= lt!2204278 (choose!40793 lt!2204160 lt!2204132 s!2326))))

(assert (=> d!1726245 (matchZipper!1423 (appendTo!38 lt!2204160 lt!2204132) s!2326)))

(assert (=> d!1726245 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!36 lt!2204160 lt!2204132 s!2326) lt!2204278)))

(declare-fun bs!1249074 () Bool)

(assert (= bs!1249074 d!1726245))

(assert (=> bs!1249074 m!6430442))

(assert (=> bs!1249074 m!6430456))

(assert (=> bs!1249074 m!6430442))

(declare-fun m!6431028 () Bool)

(assert (=> bs!1249074 m!6431028))

(assert (=> bs!1249074 m!6430456))

(declare-fun m!6431030 () Bool)

(assert (=> bs!1249074 m!6431030))

(assert (=> bs!1249074 m!6431030))

(declare-fun m!6431032 () Bool)

(assert (=> bs!1249074 m!6431032))

(declare-fun m!6431034 () Bool)

(assert (=> bs!1249074 m!6431034))

(assert (=> b!5406325 d!1726245))

(declare-fun d!1726249 () Bool)

(declare-fun c!942571 () Bool)

(declare-fun isEmpty!33709 (List!61838) Bool)

(assert (=> d!1726249 (= c!942571 (isEmpty!33709 (_1!35681 lt!2204147)))))

(declare-fun e!3351968 () Bool)

(assert (=> d!1726249 (= (matchZipper!1423 lt!2204160 (_1!35681 lt!2204147)) e!3351968)))

(declare-fun b!5406807 () Bool)

(declare-fun nullableZipper!1440 ((InoxSet Context!9126)) Bool)

(assert (=> b!5406807 (= e!3351968 (nullableZipper!1440 lt!2204160))))

(declare-fun b!5406808 () Bool)

(declare-fun head!11596 (List!61838) C!30628)

(declare-fun tail!10693 (List!61838) List!61838)

(assert (=> b!5406808 (= e!3351968 (matchZipper!1423 (derivationStepZipper!1418 lt!2204160 (head!11596 (_1!35681 lt!2204147))) (tail!10693 (_1!35681 lt!2204147))))))

(assert (= (and d!1726249 c!942571) b!5406807))

(assert (= (and d!1726249 (not c!942571)) b!5406808))

(declare-fun m!6431036 () Bool)

(assert (=> d!1726249 m!6431036))

(declare-fun m!6431038 () Bool)

(assert (=> b!5406807 m!6431038))

(declare-fun m!6431040 () Bool)

(assert (=> b!5406808 m!6431040))

(assert (=> b!5406808 m!6431040))

(declare-fun m!6431042 () Bool)

(assert (=> b!5406808 m!6431042))

(declare-fun m!6431044 () Bool)

(assert (=> b!5406808 m!6431044))

(assert (=> b!5406808 m!6431042))

(assert (=> b!5406808 m!6431044))

(declare-fun m!6431046 () Bool)

(assert (=> b!5406808 m!6431046))

(assert (=> b!5406324 d!1726249))

(declare-fun d!1726251 () Bool)

(declare-fun choose!40794 ((InoxSet Context!9126) Int) (InoxSet Context!9126))

(assert (=> d!1726251 (= (flatMap!906 lt!2204130 lambda!281875) (choose!40794 lt!2204130 lambda!281875))))

(declare-fun bs!1249075 () Bool)

(assert (= bs!1249075 d!1726251))

(declare-fun m!6431048 () Bool)

(assert (=> bs!1249075 m!6431048))

(assert (=> b!5406303 d!1726251))

(declare-fun d!1726253 () Bool)

(declare-fun c!942581 () Bool)

(declare-fun e!3351985 () Bool)

(assert (=> d!1726253 (= c!942581 e!3351985)))

(declare-fun res!2299032 () Bool)

(assert (=> d!1726253 (=> (not res!2299032) (not e!3351985))))

(assert (=> d!1726253 (= res!2299032 ((_ is Cons!61712) (exprs!5063 lt!2204157)))))

(declare-fun e!3351983 () (InoxSet Context!9126))

(assert (=> d!1726253 (= (derivationStepZipperUp!551 lt!2204157 (h!68162 s!2326)) e!3351983)))

(declare-fun b!5406836 () Bool)

(declare-fun e!3351984 () (InoxSet Context!9126))

(assert (=> b!5406836 (= e!3351983 e!3351984)))

(declare-fun c!942580 () Bool)

(assert (=> b!5406836 (= c!942580 ((_ is Cons!61712) (exprs!5063 lt!2204157)))))

(declare-fun bm!386957 () Bool)

(declare-fun call!386962 () (InoxSet Context!9126))

(assert (=> bm!386957 (= call!386962 (derivationStepZipperDown!627 (h!68160 (exprs!5063 lt!2204157)) (Context!9127 (t!375059 (exprs!5063 lt!2204157))) (h!68162 s!2326)))))

(declare-fun b!5406837 () Bool)

(assert (=> b!5406837 (= e!3351984 call!386962)))

(declare-fun b!5406838 () Bool)

(assert (=> b!5406838 (= e!3351983 ((_ map or) call!386962 (derivationStepZipperUp!551 (Context!9127 (t!375059 (exprs!5063 lt!2204157))) (h!68162 s!2326))))))

(declare-fun b!5406839 () Bool)

(assert (=> b!5406839 (= e!3351984 ((as const (Array Context!9126 Bool)) false))))

(declare-fun b!5406840 () Bool)

(assert (=> b!5406840 (= e!3351985 (nullable!5348 (h!68160 (exprs!5063 lt!2204157))))))

(assert (= (and d!1726253 res!2299032) b!5406840))

(assert (= (and d!1726253 c!942581) b!5406838))

(assert (= (and d!1726253 (not c!942581)) b!5406836))

(assert (= (and b!5406836 c!942580) b!5406837))

(assert (= (and b!5406836 (not c!942580)) b!5406839))

(assert (= (or b!5406838 b!5406837) bm!386957))

(declare-fun m!6431100 () Bool)

(assert (=> bm!386957 m!6431100))

(declare-fun m!6431102 () Bool)

(assert (=> b!5406838 m!6431102))

(declare-fun m!6431104 () Bool)

(assert (=> b!5406840 m!6431104))

(assert (=> b!5406303 d!1726253))

(declare-fun d!1726273 () Bool)

(declare-fun dynLambda!24318 (Int Context!9126) (InoxSet Context!9126))

(assert (=> d!1726273 (= (flatMap!906 lt!2204130 lambda!281875) (dynLambda!24318 lambda!281875 lt!2204157))))

(declare-fun lt!2204293 () Unit!154238)

(declare-fun choose!40796 ((InoxSet Context!9126) Context!9126 Int) Unit!154238)

(assert (=> d!1726273 (= lt!2204293 (choose!40796 lt!2204130 lt!2204157 lambda!281875))))

(assert (=> d!1726273 (= lt!2204130 (store ((as const (Array Context!9126 Bool)) false) lt!2204157 true))))

(assert (=> d!1726273 (= (lemmaFlatMapOnSingletonSet!438 lt!2204130 lt!2204157 lambda!281875) lt!2204293)))

(declare-fun b_lambda!206595 () Bool)

(assert (=> (not b_lambda!206595) (not d!1726273)))

(declare-fun bs!1249087 () Bool)

(assert (= bs!1249087 d!1726273))

(assert (=> bs!1249087 m!6430492))

(declare-fun m!6431112 () Bool)

(assert (=> bs!1249087 m!6431112))

(declare-fun m!6431114 () Bool)

(assert (=> bs!1249087 m!6431114))

(assert (=> bs!1249087 m!6430486))

(assert (=> b!5406303 d!1726273))

(declare-fun bs!1249093 () Bool)

(declare-fun d!1726279 () Bool)

(assert (= bs!1249093 (and d!1726279 b!5406292)))

(declare-fun lambda!281920 () Int)

(assert (=> bs!1249093 (= lambda!281920 lambda!281875)))

(assert (=> d!1726279 true))

(assert (=> d!1726279 (= (derivationStepZipper!1418 lt!2204130 (h!68162 s!2326)) (flatMap!906 lt!2204130 lambda!281920))))

(declare-fun bs!1249094 () Bool)

(assert (= bs!1249094 d!1726279))

(declare-fun m!6431160 () Bool)

(assert (=> bs!1249094 m!6431160))

(assert (=> b!5406303 d!1726279))

(declare-fun d!1726301 () Bool)

(declare-fun c!942592 () Bool)

(assert (=> d!1726301 (= c!942592 (isEmpty!33709 (t!375061 s!2326)))))

(declare-fun e!3351999 () Bool)

(assert (=> d!1726301 (= (matchZipper!1423 lt!2204142 (t!375061 s!2326)) e!3351999)))

(declare-fun b!5406864 () Bool)

(assert (=> b!5406864 (= e!3351999 (nullableZipper!1440 lt!2204142))))

(declare-fun b!5406865 () Bool)

(assert (=> b!5406865 (= e!3351999 (matchZipper!1423 (derivationStepZipper!1418 lt!2204142 (head!11596 (t!375061 s!2326))) (tail!10693 (t!375061 s!2326))))))

(assert (= (and d!1726301 c!942592) b!5406864))

(assert (= (and d!1726301 (not c!942592)) b!5406865))

(declare-fun m!6431162 () Bool)

(assert (=> d!1726301 m!6431162))

(declare-fun m!6431164 () Bool)

(assert (=> b!5406864 m!6431164))

(declare-fun m!6431166 () Bool)

(assert (=> b!5406865 m!6431166))

(assert (=> b!5406865 m!6431166))

(declare-fun m!6431168 () Bool)

(assert (=> b!5406865 m!6431168))

(declare-fun m!6431170 () Bool)

(assert (=> b!5406865 m!6431170))

(assert (=> b!5406865 m!6431168))

(assert (=> b!5406865 m!6431170))

(declare-fun m!6431172 () Bool)

(assert (=> b!5406865 m!6431172))

(assert (=> b!5406302 d!1726301))

(declare-fun d!1726305 () Bool)

(assert (=> d!1726305 (= (isEmpty!33704 (t!375060 zl!343)) ((_ is Nil!61713) (t!375060 zl!343)))))

(assert (=> b!5406283 d!1726305))

(declare-fun bs!1249117 () Bool)

(declare-fun d!1726307 () Bool)

(assert (= bs!1249117 (and d!1726307 b!5406317)))

(declare-fun lambda!281927 () Int)

(assert (=> bs!1249117 (= lambda!281927 lambda!281877)))

(declare-fun b!5406942 () Bool)

(declare-fun e!3352049 () Regex!15179)

(assert (=> b!5406942 (= e!3352049 EmptyExpr!15179)))

(declare-fun b!5406943 () Bool)

(assert (=> b!5406943 (= e!3352049 (Concat!24024 (h!68160 (exprs!5063 (h!68161 zl!343))) (generalisedConcat!848 (t!375059 (exprs!5063 (h!68161 zl!343))))))))

(declare-fun b!5406944 () Bool)

(declare-fun e!3352044 () Bool)

(declare-fun lt!2204304 () Regex!15179)

(declare-fun isEmptyExpr!971 (Regex!15179) Bool)

(assert (=> b!5406944 (= e!3352044 (isEmptyExpr!971 lt!2204304))))

(declare-fun b!5406945 () Bool)

(declare-fun e!3352045 () Bool)

(assert (=> b!5406945 (= e!3352044 e!3352045)))

(declare-fun c!942621 () Bool)

(declare-fun tail!10694 (List!61836) List!61836)

(assert (=> b!5406945 (= c!942621 (isEmpty!33705 (tail!10694 (exprs!5063 (h!68161 zl!343)))))))

(declare-fun b!5406946 () Bool)

(declare-fun e!3352048 () Bool)

(assert (=> b!5406946 (= e!3352048 e!3352044)))

(declare-fun c!942623 () Bool)

(assert (=> b!5406946 (= c!942623 (isEmpty!33705 (exprs!5063 (h!68161 zl!343))))))

(declare-fun b!5406947 () Bool)

(declare-fun head!11597 (List!61836) Regex!15179)

(assert (=> b!5406947 (= e!3352045 (= lt!2204304 (head!11597 (exprs!5063 (h!68161 zl!343)))))))

(declare-fun b!5406948 () Bool)

(declare-fun e!3352047 () Regex!15179)

(assert (=> b!5406948 (= e!3352047 (h!68160 (exprs!5063 (h!68161 zl!343))))))

(declare-fun b!5406949 () Bool)

(declare-fun isConcat!494 (Regex!15179) Bool)

(assert (=> b!5406949 (= e!3352045 (isConcat!494 lt!2204304))))

(declare-fun b!5406950 () Bool)

(declare-fun e!3352046 () Bool)

(assert (=> b!5406950 (= e!3352046 (isEmpty!33705 (t!375059 (exprs!5063 (h!68161 zl!343)))))))

(assert (=> d!1726307 e!3352048))

(declare-fun res!2299059 () Bool)

(assert (=> d!1726307 (=> (not res!2299059) (not e!3352048))))

(assert (=> d!1726307 (= res!2299059 (validRegex!6915 lt!2204304))))

(assert (=> d!1726307 (= lt!2204304 e!3352047)))

(declare-fun c!942622 () Bool)

(assert (=> d!1726307 (= c!942622 e!3352046)))

(declare-fun res!2299058 () Bool)

(assert (=> d!1726307 (=> (not res!2299058) (not e!3352046))))

(assert (=> d!1726307 (= res!2299058 ((_ is Cons!61712) (exprs!5063 (h!68161 zl!343))))))

(declare-fun forall!14533 (List!61836 Int) Bool)

(assert (=> d!1726307 (forall!14533 (exprs!5063 (h!68161 zl!343)) lambda!281927)))

(assert (=> d!1726307 (= (generalisedConcat!848 (exprs!5063 (h!68161 zl!343))) lt!2204304)))

(declare-fun b!5406951 () Bool)

(assert (=> b!5406951 (= e!3352047 e!3352049)))

(declare-fun c!942624 () Bool)

(assert (=> b!5406951 (= c!942624 ((_ is Cons!61712) (exprs!5063 (h!68161 zl!343))))))

(assert (= (and d!1726307 res!2299058) b!5406950))

(assert (= (and d!1726307 c!942622) b!5406948))

(assert (= (and d!1726307 (not c!942622)) b!5406951))

(assert (= (and b!5406951 c!942624) b!5406943))

(assert (= (and b!5406951 (not c!942624)) b!5406942))

(assert (= (and d!1726307 res!2299059) b!5406946))

(assert (= (and b!5406946 c!942623) b!5406944))

(assert (= (and b!5406946 (not c!942623)) b!5406945))

(assert (= (and b!5406945 c!942621) b!5406947))

(assert (= (and b!5406945 (not c!942621)) b!5406949))

(assert (=> b!5406950 m!6430454))

(declare-fun m!6431194 () Bool)

(assert (=> b!5406943 m!6431194))

(declare-fun m!6431196 () Bool)

(assert (=> b!5406947 m!6431196))

(declare-fun m!6431198 () Bool)

(assert (=> d!1726307 m!6431198))

(declare-fun m!6431200 () Bool)

(assert (=> d!1726307 m!6431200))

(declare-fun m!6431202 () Bool)

(assert (=> b!5406945 m!6431202))

(assert (=> b!5406945 m!6431202))

(declare-fun m!6431204 () Bool)

(assert (=> b!5406945 m!6431204))

(declare-fun m!6431206 () Bool)

(assert (=> b!5406944 m!6431206))

(declare-fun m!6431208 () Bool)

(assert (=> b!5406946 m!6431208))

(declare-fun m!6431210 () Bool)

(assert (=> b!5406949 m!6431210))

(assert (=> b!5406282 d!1726307))

(declare-fun d!1726317 () Bool)

(declare-fun lt!2204308 () Regex!15179)

(assert (=> d!1726317 (validRegex!6915 lt!2204308)))

(assert (=> d!1726317 (= lt!2204308 (generalisedUnion!1108 (unfocusZipperList!621 (Cons!61713 lt!2204157 Nil!61713))))))

(assert (=> d!1726317 (= (unfocusZipper!921 (Cons!61713 lt!2204157 Nil!61713)) lt!2204308)))

(declare-fun bs!1249123 () Bool)

(assert (= bs!1249123 d!1726317))

(declare-fun m!6431212 () Bool)

(assert (=> bs!1249123 m!6431212))

(declare-fun m!6431214 () Bool)

(assert (=> bs!1249123 m!6431214))

(assert (=> bs!1249123 m!6431214))

(declare-fun m!6431216 () Bool)

(assert (=> bs!1249123 m!6431216))

(assert (=> b!5406301 d!1726317))

(declare-fun d!1726319 () Bool)

(declare-fun c!942629 () Bool)

(assert (=> d!1726319 (= c!942629 (isEmpty!33709 (t!375061 s!2326)))))

(declare-fun e!3352056 () Bool)

(assert (=> d!1726319 (= (matchZipper!1423 lt!2204177 (t!375061 s!2326)) e!3352056)))

(declare-fun b!5406962 () Bool)

(assert (=> b!5406962 (= e!3352056 (nullableZipper!1440 lt!2204177))))

(declare-fun b!5406963 () Bool)

(assert (=> b!5406963 (= e!3352056 (matchZipper!1423 (derivationStepZipper!1418 lt!2204177 (head!11596 (t!375061 s!2326))) (tail!10693 (t!375061 s!2326))))))

(assert (= (and d!1726319 c!942629) b!5406962))

(assert (= (and d!1726319 (not c!942629)) b!5406963))

(assert (=> d!1726319 m!6431162))

(declare-fun m!6431232 () Bool)

(assert (=> b!5406962 m!6431232))

(assert (=> b!5406963 m!6431166))

(assert (=> b!5406963 m!6431166))

(declare-fun m!6431238 () Bool)

(assert (=> b!5406963 m!6431238))

(assert (=> b!5406963 m!6431170))

(assert (=> b!5406963 m!6431238))

(assert (=> b!5406963 m!6431170))

(declare-fun m!6431242 () Bool)

(assert (=> b!5406963 m!6431242))

(assert (=> b!5406300 d!1726319))

(declare-fun d!1726323 () Bool)

(declare-fun c!942630 () Bool)

(assert (=> d!1726323 (= c!942630 (isEmpty!33709 s!2326))))

(declare-fun e!3352057 () Bool)

(assert (=> d!1726323 (= (matchZipper!1423 lt!2204130 s!2326) e!3352057)))

(declare-fun b!5406964 () Bool)

(assert (=> b!5406964 (= e!3352057 (nullableZipper!1440 lt!2204130))))

(declare-fun b!5406965 () Bool)

(assert (=> b!5406965 (= e!3352057 (matchZipper!1423 (derivationStepZipper!1418 lt!2204130 (head!11596 s!2326)) (tail!10693 s!2326)))))

(assert (= (and d!1726323 c!942630) b!5406964))

(assert (= (and d!1726323 (not c!942630)) b!5406965))

(declare-fun m!6431244 () Bool)

(assert (=> d!1726323 m!6431244))

(declare-fun m!6431246 () Bool)

(assert (=> b!5406964 m!6431246))

(declare-fun m!6431248 () Bool)

(assert (=> b!5406965 m!6431248))

(assert (=> b!5406965 m!6431248))

(declare-fun m!6431250 () Bool)

(assert (=> b!5406965 m!6431250))

(declare-fun m!6431252 () Bool)

(assert (=> b!5406965 m!6431252))

(assert (=> b!5406965 m!6431250))

(assert (=> b!5406965 m!6431252))

(declare-fun m!6431254 () Bool)

(assert (=> b!5406965 m!6431254))

(assert (=> b!5406300 d!1726323))

(declare-fun d!1726325 () Bool)

(declare-fun lt!2204309 () Regex!15179)

(assert (=> d!1726325 (validRegex!6915 lt!2204309)))

(assert (=> d!1726325 (= lt!2204309 (generalisedUnion!1108 (unfocusZipperList!621 lt!2204165)))))

(assert (=> d!1726325 (= (unfocusZipper!921 lt!2204165) lt!2204309)))

(declare-fun bs!1249124 () Bool)

(assert (= bs!1249124 d!1726325))

(declare-fun m!6431256 () Bool)

(assert (=> bs!1249124 m!6431256))

(declare-fun m!6431258 () Bool)

(assert (=> bs!1249124 m!6431258))

(assert (=> bs!1249124 m!6431258))

(declare-fun m!6431260 () Bool)

(assert (=> bs!1249124 m!6431260))

(assert (=> b!5406281 d!1726325))

(declare-fun d!1726327 () Bool)

(declare-fun nullableFct!1591 (Regex!15179) Bool)

(assert (=> d!1726327 (= (nullable!5348 (regOne!30870 (regOne!30870 r!7292))) (nullableFct!1591 (regOne!30870 (regOne!30870 r!7292))))))

(declare-fun bs!1249125 () Bool)

(assert (= bs!1249125 d!1726327))

(declare-fun m!6431262 () Bool)

(assert (=> bs!1249125 m!6431262))

(assert (=> b!5406299 d!1726327))

(declare-fun d!1726329 () Bool)

(declare-fun c!942631 () Bool)

(assert (=> d!1726329 (= c!942631 (isEmpty!33709 (t!375061 s!2326)))))

(declare-fun e!3352058 () Bool)

(assert (=> d!1726329 (= (matchZipper!1423 lt!2204167 (t!375061 s!2326)) e!3352058)))

(declare-fun b!5406966 () Bool)

(assert (=> b!5406966 (= e!3352058 (nullableZipper!1440 lt!2204167))))

(declare-fun b!5406967 () Bool)

(assert (=> b!5406967 (= e!3352058 (matchZipper!1423 (derivationStepZipper!1418 lt!2204167 (head!11596 (t!375061 s!2326))) (tail!10693 (t!375061 s!2326))))))

(assert (= (and d!1726329 c!942631) b!5406966))

(assert (= (and d!1726329 (not c!942631)) b!5406967))

(assert (=> d!1726329 m!6431162))

(declare-fun m!6431264 () Bool)

(assert (=> b!5406966 m!6431264))

(assert (=> b!5406967 m!6431166))

(assert (=> b!5406967 m!6431166))

(declare-fun m!6431266 () Bool)

(assert (=> b!5406967 m!6431266))

(assert (=> b!5406967 m!6431170))

(assert (=> b!5406967 m!6431266))

(assert (=> b!5406967 m!6431170))

(declare-fun m!6431268 () Bool)

(assert (=> b!5406967 m!6431268))

(assert (=> b!5406298 d!1726329))

(declare-fun bs!1249132 () Bool)

(declare-fun d!1726331 () Bool)

(assert (= bs!1249132 (and d!1726331 b!5406317)))

(declare-fun lambda!281934 () Int)

(assert (=> bs!1249132 (= lambda!281934 lambda!281877)))

(declare-fun bs!1249133 () Bool)

(assert (= bs!1249133 (and d!1726331 d!1726307)))

(assert (=> bs!1249133 (= lambda!281934 lambda!281927)))

(declare-fun b!5407040 () Bool)

(declare-fun e!3352102 () Bool)

(declare-fun e!3352100 () Bool)

(assert (=> b!5407040 (= e!3352102 e!3352100)))

(declare-fun c!942648 () Bool)

(assert (=> b!5407040 (= c!942648 (isEmpty!33705 (unfocusZipperList!621 zl!343)))))

(declare-fun b!5407041 () Bool)

(declare-fun e!3352101 () Bool)

(assert (=> b!5407041 (= e!3352100 e!3352101)))

(declare-fun c!942645 () Bool)

(assert (=> b!5407041 (= c!942645 (isEmpty!33705 (tail!10694 (unfocusZipperList!621 zl!343))))))

(assert (=> d!1726331 e!3352102))

(declare-fun res!2299071 () Bool)

(assert (=> d!1726331 (=> (not res!2299071) (not e!3352102))))

(declare-fun lt!2204315 () Regex!15179)

(assert (=> d!1726331 (= res!2299071 (validRegex!6915 lt!2204315))))

(declare-fun e!3352099 () Regex!15179)

(assert (=> d!1726331 (= lt!2204315 e!3352099)))

(declare-fun c!942646 () Bool)

(declare-fun e!3352103 () Bool)

(assert (=> d!1726331 (= c!942646 e!3352103)))

(declare-fun res!2299072 () Bool)

(assert (=> d!1726331 (=> (not res!2299072) (not e!3352103))))

(assert (=> d!1726331 (= res!2299072 ((_ is Cons!61712) (unfocusZipperList!621 zl!343)))))

(assert (=> d!1726331 (forall!14533 (unfocusZipperList!621 zl!343) lambda!281934)))

(assert (=> d!1726331 (= (generalisedUnion!1108 (unfocusZipperList!621 zl!343)) lt!2204315)))

(declare-fun b!5407042 () Bool)

(declare-fun e!3352104 () Regex!15179)

(assert (=> b!5407042 (= e!3352099 e!3352104)))

(declare-fun c!942647 () Bool)

(assert (=> b!5407042 (= c!942647 ((_ is Cons!61712) (unfocusZipperList!621 zl!343)))))

(declare-fun b!5407043 () Bool)

(assert (=> b!5407043 (= e!3352104 (Union!15179 (h!68160 (unfocusZipperList!621 zl!343)) (generalisedUnion!1108 (t!375059 (unfocusZipperList!621 zl!343)))))))

(declare-fun b!5407044 () Bool)

(assert (=> b!5407044 (= e!3352103 (isEmpty!33705 (t!375059 (unfocusZipperList!621 zl!343))))))

(declare-fun b!5407045 () Bool)

(declare-fun isUnion!412 (Regex!15179) Bool)

(assert (=> b!5407045 (= e!3352101 (isUnion!412 lt!2204315))))

(declare-fun b!5407046 () Bool)

(assert (=> b!5407046 (= e!3352101 (= lt!2204315 (head!11597 (unfocusZipperList!621 zl!343))))))

(declare-fun b!5407047 () Bool)

(assert (=> b!5407047 (= e!3352099 (h!68160 (unfocusZipperList!621 zl!343)))))

(declare-fun b!5407048 () Bool)

(declare-fun isEmptyLang!980 (Regex!15179) Bool)

(assert (=> b!5407048 (= e!3352100 (isEmptyLang!980 lt!2204315))))

(declare-fun b!5407049 () Bool)

(assert (=> b!5407049 (= e!3352104 EmptyLang!15179)))

(assert (= (and d!1726331 res!2299072) b!5407044))

(assert (= (and d!1726331 c!942646) b!5407047))

(assert (= (and d!1726331 (not c!942646)) b!5407042))

(assert (= (and b!5407042 c!942647) b!5407043))

(assert (= (and b!5407042 (not c!942647)) b!5407049))

(assert (= (and d!1726331 res!2299071) b!5407040))

(assert (= (and b!5407040 c!942648) b!5407048))

(assert (= (and b!5407040 (not c!942648)) b!5407041))

(assert (= (and b!5407041 c!942645) b!5407046))

(assert (= (and b!5407041 (not c!942645)) b!5407045))

(declare-fun m!6431284 () Bool)

(assert (=> b!5407045 m!6431284))

(declare-fun m!6431286 () Bool)

(assert (=> b!5407048 m!6431286))

(declare-fun m!6431288 () Bool)

(assert (=> b!5407044 m!6431288))

(declare-fun m!6431290 () Bool)

(assert (=> b!5407043 m!6431290))

(declare-fun m!6431292 () Bool)

(assert (=> d!1726331 m!6431292))

(assert (=> d!1726331 m!6430550))

(declare-fun m!6431294 () Bool)

(assert (=> d!1726331 m!6431294))

(assert (=> b!5407046 m!6430550))

(declare-fun m!6431296 () Bool)

(assert (=> b!5407046 m!6431296))

(assert (=> b!5407040 m!6430550))

(declare-fun m!6431298 () Bool)

(assert (=> b!5407040 m!6431298))

(assert (=> b!5407041 m!6430550))

(declare-fun m!6431300 () Bool)

(assert (=> b!5407041 m!6431300))

(assert (=> b!5407041 m!6431300))

(declare-fun m!6431302 () Bool)

(assert (=> b!5407041 m!6431302))

(assert (=> b!5406279 d!1726331))

(declare-fun bs!1249139 () Bool)

(declare-fun d!1726335 () Bool)

(assert (= bs!1249139 (and d!1726335 b!5406317)))

(declare-fun lambda!281937 () Int)

(assert (=> bs!1249139 (= lambda!281937 lambda!281877)))

(declare-fun bs!1249140 () Bool)

(assert (= bs!1249140 (and d!1726335 d!1726307)))

(assert (=> bs!1249140 (= lambda!281937 lambda!281927)))

(declare-fun bs!1249141 () Bool)

(assert (= bs!1249141 (and d!1726335 d!1726331)))

(assert (=> bs!1249141 (= lambda!281937 lambda!281934)))

(declare-fun lt!2204319 () List!61836)

(assert (=> d!1726335 (forall!14533 lt!2204319 lambda!281937)))

(declare-fun e!3352112 () List!61836)

(assert (=> d!1726335 (= lt!2204319 e!3352112)))

(declare-fun c!942651 () Bool)

(assert (=> d!1726335 (= c!942651 ((_ is Cons!61713) zl!343))))

(assert (=> d!1726335 (= (unfocusZipperList!621 zl!343) lt!2204319)))

(declare-fun b!5407071 () Bool)

(assert (=> b!5407071 (= e!3352112 (Cons!61712 (generalisedConcat!848 (exprs!5063 (h!68161 zl!343))) (unfocusZipperList!621 (t!375060 zl!343))))))

(declare-fun b!5407072 () Bool)

(assert (=> b!5407072 (= e!3352112 Nil!61712)))

(assert (= (and d!1726335 c!942651) b!5407071))

(assert (= (and d!1726335 (not c!942651)) b!5407072))

(declare-fun m!6431308 () Bool)

(assert (=> d!1726335 m!6431308))

(assert (=> b!5407071 m!6430516))

(declare-fun m!6431310 () Bool)

(assert (=> b!5407071 m!6431310))

(assert (=> b!5406279 d!1726335))

(declare-fun bs!1249142 () Bool)

(declare-fun b!5407105 () Bool)

(assert (= bs!1249142 (and b!5407105 b!5406316)))

(declare-fun lambda!281942 () Int)

(assert (=> bs!1249142 (not (= lambda!281942 lambda!281873))))

(assert (=> bs!1249142 (not (= lambda!281942 lambda!281874))))

(declare-fun bs!1249143 () Bool)

(assert (= bs!1249143 (and b!5407105 b!5406286)))

(assert (=> bs!1249143 (not (= lambda!281942 lambda!281878))))

(assert (=> bs!1249143 (not (= lambda!281942 lambda!281879))))

(assert (=> b!5407105 true))

(assert (=> b!5407105 true))

(declare-fun bs!1249144 () Bool)

(declare-fun b!5407112 () Bool)

(assert (= bs!1249144 (and b!5407112 b!5406286)))

(declare-fun lambda!281943 () Int)

(assert (=> bs!1249144 (not (= lambda!281943 lambda!281878))))

(declare-fun bs!1249145 () Bool)

(assert (= bs!1249145 (and b!5407112 b!5406316)))

(assert (=> bs!1249145 (not (= lambda!281943 lambda!281873))))

(assert (=> bs!1249145 (= lambda!281943 lambda!281874)))

(declare-fun bs!1249146 () Bool)

(assert (= bs!1249146 (and b!5407112 b!5407105)))

(assert (=> bs!1249146 (not (= lambda!281943 lambda!281942))))

(assert (=> bs!1249144 (= (= (regOne!30870 r!7292) lt!2204180) (= lambda!281943 lambda!281879))))

(assert (=> b!5407112 true))

(assert (=> b!5407112 true))

(declare-fun e!3352132 () Bool)

(declare-fun call!386981 () Bool)

(assert (=> b!5407105 (= e!3352132 call!386981)))

(declare-fun b!5407106 () Bool)

(declare-fun e!3352135 () Bool)

(declare-fun e!3352134 () Bool)

(assert (=> b!5407106 (= e!3352135 e!3352134)))

(declare-fun res!2299091 () Bool)

(assert (=> b!5407106 (= res!2299091 (matchRSpec!2282 (regOne!30871 r!7292) s!2326))))

(assert (=> b!5407106 (=> res!2299091 e!3352134)))

(declare-fun b!5407107 () Bool)

(declare-fun res!2299090 () Bool)

(assert (=> b!5407107 (=> res!2299090 e!3352132)))

(declare-fun call!386982 () Bool)

(assert (=> b!5407107 (= res!2299090 call!386982)))

(declare-fun e!3352136 () Bool)

(assert (=> b!5407107 (= e!3352136 e!3352132)))

(declare-fun b!5407108 () Bool)

(declare-fun c!942661 () Bool)

(assert (=> b!5407108 (= c!942661 ((_ is Union!15179) r!7292))))

(declare-fun e!3352133 () Bool)

(assert (=> b!5407108 (= e!3352133 e!3352135)))

(declare-fun b!5407109 () Bool)

(declare-fun e!3352131 () Bool)

(assert (=> b!5407109 (= e!3352131 call!386982)))

(declare-fun b!5407110 () Bool)

(declare-fun e!3352137 () Bool)

(assert (=> b!5407110 (= e!3352131 e!3352137)))

(declare-fun res!2299089 () Bool)

(assert (=> b!5407110 (= res!2299089 (not ((_ is EmptyLang!15179) r!7292)))))

(assert (=> b!5407110 (=> (not res!2299089) (not e!3352137))))

(declare-fun b!5407111 () Bool)

(assert (=> b!5407111 (= e!3352134 (matchRSpec!2282 (regTwo!30871 r!7292) s!2326))))

(declare-fun b!5407113 () Bool)

(assert (=> b!5407113 (= e!3352135 e!3352136)))

(declare-fun c!942660 () Bool)

(assert (=> b!5407113 (= c!942660 ((_ is Star!15179) r!7292))))

(declare-fun bm!386976 () Bool)

(assert (=> bm!386976 (= call!386982 (isEmpty!33709 s!2326))))

(declare-fun b!5407114 () Bool)

(declare-fun c!942662 () Bool)

(assert (=> b!5407114 (= c!942662 ((_ is ElementMatch!15179) r!7292))))

(assert (=> b!5407114 (= e!3352137 e!3352133)))

(declare-fun d!1726347 () Bool)

(declare-fun c!942663 () Bool)

(assert (=> d!1726347 (= c!942663 ((_ is EmptyExpr!15179) r!7292))))

(assert (=> d!1726347 (= (matchRSpec!2282 r!7292 s!2326) e!3352131)))

(assert (=> b!5407112 (= e!3352136 call!386981)))

(declare-fun b!5407115 () Bool)

(assert (=> b!5407115 (= e!3352133 (= s!2326 (Cons!61714 (c!942433 r!7292) Nil!61714)))))

(declare-fun bm!386977 () Bool)

(assert (=> bm!386977 (= call!386981 (Exists!2360 (ite c!942660 lambda!281942 lambda!281943)))))

(assert (= (and d!1726347 c!942663) b!5407109))

(assert (= (and d!1726347 (not c!942663)) b!5407110))

(assert (= (and b!5407110 res!2299089) b!5407114))

(assert (= (and b!5407114 c!942662) b!5407115))

(assert (= (and b!5407114 (not c!942662)) b!5407108))

(assert (= (and b!5407108 c!942661) b!5407106))

(assert (= (and b!5407108 (not c!942661)) b!5407113))

(assert (= (and b!5407106 (not res!2299091)) b!5407111))

(assert (= (and b!5407113 c!942660) b!5407107))

(assert (= (and b!5407113 (not c!942660)) b!5407112))

(assert (= (and b!5407107 (not res!2299090)) b!5407105))

(assert (= (or b!5407105 b!5407112) bm!386977))

(assert (= (or b!5407109 b!5407107) bm!386976))

(declare-fun m!6431312 () Bool)

(assert (=> b!5407106 m!6431312))

(declare-fun m!6431314 () Bool)

(assert (=> b!5407111 m!6431314))

(assert (=> bm!386976 m!6431244))

(declare-fun m!6431316 () Bool)

(assert (=> bm!386977 m!6431316))

(assert (=> b!5406319 d!1726347))

(declare-fun bm!386980 () Bool)

(declare-fun call!386985 () Bool)

(assert (=> bm!386980 (= call!386985 (isEmpty!33709 s!2326))))

(declare-fun b!5407144 () Bool)

(declare-fun res!2299113 () Bool)

(declare-fun e!3352157 () Bool)

(assert (=> b!5407144 (=> (not res!2299113) (not e!3352157))))

(assert (=> b!5407144 (= res!2299113 (isEmpty!33709 (tail!10693 s!2326)))))

(declare-fun b!5407145 () Bool)

(declare-fun e!3352158 () Bool)

(declare-fun e!3352155 () Bool)

(assert (=> b!5407145 (= e!3352158 e!3352155)))

(declare-fun res!2299112 () Bool)

(assert (=> b!5407145 (=> res!2299112 e!3352155)))

(assert (=> b!5407145 (= res!2299112 call!386985)))

(declare-fun b!5407146 () Bool)

(declare-fun e!3352153 () Bool)

(assert (=> b!5407146 (= e!3352153 e!3352158)))

(declare-fun res!2299110 () Bool)

(assert (=> b!5407146 (=> (not res!2299110) (not e!3352158))))

(declare-fun lt!2204322 () Bool)

(assert (=> b!5407146 (= res!2299110 (not lt!2204322))))

(declare-fun b!5407147 () Bool)

(declare-fun e!3352152 () Bool)

(declare-fun e!3352154 () Bool)

(assert (=> b!5407147 (= e!3352152 e!3352154)))

(declare-fun c!942671 () Bool)

(assert (=> b!5407147 (= c!942671 ((_ is EmptyLang!15179) r!7292))))

(declare-fun b!5407148 () Bool)

(declare-fun res!2299108 () Bool)

(assert (=> b!5407148 (=> res!2299108 e!3352153)))

(assert (=> b!5407148 (= res!2299108 (not ((_ is ElementMatch!15179) r!7292)))))

(assert (=> b!5407148 (= e!3352154 e!3352153)))

(declare-fun b!5407149 () Bool)

(assert (=> b!5407149 (= e!3352152 (= lt!2204322 call!386985))))

(declare-fun b!5407150 () Bool)

(declare-fun res!2299115 () Bool)

(assert (=> b!5407150 (=> (not res!2299115) (not e!3352157))))

(assert (=> b!5407150 (= res!2299115 (not call!386985))))

(declare-fun b!5407151 () Bool)

(declare-fun res!2299111 () Bool)

(assert (=> b!5407151 (=> res!2299111 e!3352153)))

(assert (=> b!5407151 (= res!2299111 e!3352157)))

(declare-fun res!2299114 () Bool)

(assert (=> b!5407151 (=> (not res!2299114) (not e!3352157))))

(assert (=> b!5407151 (= res!2299114 lt!2204322)))

(declare-fun b!5407152 () Bool)

(assert (=> b!5407152 (= e!3352154 (not lt!2204322))))

(declare-fun b!5407153 () Bool)

(assert (=> b!5407153 (= e!3352155 (not (= (head!11596 s!2326) (c!942433 r!7292))))))

(declare-fun b!5407154 () Bool)

(declare-fun e!3352156 () Bool)

(declare-fun derivativeStep!4261 (Regex!15179 C!30628) Regex!15179)

(assert (=> b!5407154 (= e!3352156 (matchR!7364 (derivativeStep!4261 r!7292 (head!11596 s!2326)) (tail!10693 s!2326)))))

(declare-fun d!1726349 () Bool)

(assert (=> d!1726349 e!3352152))

(declare-fun c!942670 () Bool)

(assert (=> d!1726349 (= c!942670 ((_ is EmptyExpr!15179) r!7292))))

(assert (=> d!1726349 (= lt!2204322 e!3352156)))

(declare-fun c!942672 () Bool)

(assert (=> d!1726349 (= c!942672 (isEmpty!33709 s!2326))))

(assert (=> d!1726349 (validRegex!6915 r!7292)))

(assert (=> d!1726349 (= (matchR!7364 r!7292 s!2326) lt!2204322)))

(declare-fun b!5407155 () Bool)

(assert (=> b!5407155 (= e!3352157 (= (head!11596 s!2326) (c!942433 r!7292)))))

(declare-fun b!5407156 () Bool)

(assert (=> b!5407156 (= e!3352156 (nullable!5348 r!7292))))

(declare-fun b!5407157 () Bool)

(declare-fun res!2299109 () Bool)

(assert (=> b!5407157 (=> res!2299109 e!3352155)))

(assert (=> b!5407157 (= res!2299109 (not (isEmpty!33709 (tail!10693 s!2326))))))

(assert (= (and d!1726349 c!942672) b!5407156))

(assert (= (and d!1726349 (not c!942672)) b!5407154))

(assert (= (and d!1726349 c!942670) b!5407149))

(assert (= (and d!1726349 (not c!942670)) b!5407147))

(assert (= (and b!5407147 c!942671) b!5407152))

(assert (= (and b!5407147 (not c!942671)) b!5407148))

(assert (= (and b!5407148 (not res!2299108)) b!5407151))

(assert (= (and b!5407151 res!2299114) b!5407150))

(assert (= (and b!5407150 res!2299115) b!5407144))

(assert (= (and b!5407144 res!2299113) b!5407155))

(assert (= (and b!5407151 (not res!2299111)) b!5407146))

(assert (= (and b!5407146 res!2299110) b!5407145))

(assert (= (and b!5407145 (not res!2299112)) b!5407157))

(assert (= (and b!5407157 (not res!2299109)) b!5407153))

(assert (= (or b!5407149 b!5407145 b!5407150) bm!386980))

(assert (=> b!5407155 m!6431248))

(assert (=> b!5407157 m!6431252))

(assert (=> b!5407157 m!6431252))

(declare-fun m!6431318 () Bool)

(assert (=> b!5407157 m!6431318))

(assert (=> d!1726349 m!6431244))

(assert (=> d!1726349 m!6430608))

(assert (=> b!5407154 m!6431248))

(assert (=> b!5407154 m!6431248))

(declare-fun m!6431320 () Bool)

(assert (=> b!5407154 m!6431320))

(assert (=> b!5407154 m!6431252))

(assert (=> b!5407154 m!6431320))

(assert (=> b!5407154 m!6431252))

(declare-fun m!6431322 () Bool)

(assert (=> b!5407154 m!6431322))

(assert (=> bm!386980 m!6431244))

(declare-fun m!6431324 () Bool)

(assert (=> b!5407156 m!6431324))

(assert (=> b!5407153 m!6431248))

(assert (=> b!5407144 m!6431252))

(assert (=> b!5407144 m!6431252))

(assert (=> b!5407144 m!6431318))

(assert (=> b!5406319 d!1726349))

(declare-fun d!1726351 () Bool)

(assert (=> d!1726351 (= (matchR!7364 r!7292 s!2326) (matchRSpec!2282 r!7292 s!2326))))

(declare-fun lt!2204325 () Unit!154238)

(declare-fun choose!40800 (Regex!15179 List!61838) Unit!154238)

(assert (=> d!1726351 (= lt!2204325 (choose!40800 r!7292 s!2326))))

(assert (=> d!1726351 (validRegex!6915 r!7292)))

(assert (=> d!1726351 (= (mainMatchTheorem!2282 r!7292 s!2326) lt!2204325)))

(declare-fun bs!1249147 () Bool)

(assert (= bs!1249147 d!1726351))

(assert (=> bs!1249147 m!6430564))

(assert (=> bs!1249147 m!6430562))

(declare-fun m!6431326 () Bool)

(assert (=> bs!1249147 m!6431326))

(assert (=> bs!1249147 m!6430608))

(assert (=> b!5406319 d!1726351))

(declare-fun bs!1249148 () Bool)

(declare-fun d!1726353 () Bool)

(assert (= bs!1249148 (and d!1726353 b!5406317)))

(declare-fun lambda!281946 () Int)

(assert (=> bs!1249148 (= lambda!281946 lambda!281877)))

(declare-fun bs!1249149 () Bool)

(assert (= bs!1249149 (and d!1726353 d!1726307)))

(assert (=> bs!1249149 (= lambda!281946 lambda!281927)))

(declare-fun bs!1249150 () Bool)

(assert (= bs!1249150 (and d!1726353 d!1726331)))

(assert (=> bs!1249150 (= lambda!281946 lambda!281934)))

(declare-fun bs!1249151 () Bool)

(assert (= bs!1249151 (and d!1726353 d!1726335)))

(assert (=> bs!1249151 (= lambda!281946 lambda!281937)))

(assert (=> d!1726353 (= (inv!81194 setElem!35201) (forall!14533 (exprs!5063 setElem!35201) lambda!281946))))

(declare-fun bs!1249152 () Bool)

(assert (= bs!1249152 d!1726353))

(declare-fun m!6431328 () Bool)

(assert (=> bs!1249152 m!6431328))

(assert (=> setNonEmpty!35201 d!1726353))

(declare-fun d!1726355 () Bool)

(declare-fun dynLambda!24320 (Int Context!9126) Context!9126)

(assert (=> d!1726355 (= (map!14153 lt!2204160 lambda!281876) (store ((as const (Array Context!9126 Bool)) false) (dynLambda!24320 lambda!281876 lt!2204154) true))))

(declare-fun lt!2204328 () Unit!154238)

(declare-fun choose!40801 ((InoxSet Context!9126) Context!9126 Int) Unit!154238)

(assert (=> d!1726355 (= lt!2204328 (choose!40801 lt!2204160 lt!2204154 lambda!281876))))

(assert (=> d!1726355 (= lt!2204160 (store ((as const (Array Context!9126 Bool)) false) lt!2204154 true))))

(assert (=> d!1726355 (= (lemmaMapOnSingletonSet!38 lt!2204160 lt!2204154 lambda!281876) lt!2204328)))

(declare-fun b_lambda!206611 () Bool)

(assert (=> (not b_lambda!206611) (not d!1726355)))

(declare-fun bs!1249153 () Bool)

(assert (= bs!1249153 d!1726355))

(declare-fun m!6431330 () Bool)

(assert (=> bs!1249153 m!6431330))

(assert (=> bs!1249153 m!6430448))

(declare-fun m!6431332 () Bool)

(assert (=> bs!1249153 m!6431332))

(declare-fun m!6431334 () Bool)

(assert (=> bs!1249153 m!6431334))

(assert (=> bs!1249153 m!6430468))

(assert (=> bs!1249153 m!6431332))

(assert (=> b!5406317 d!1726355))

(declare-fun b!5407169 () Bool)

(declare-fun e!3352163 () Bool)

(declare-fun lt!2204331 () List!61836)

(assert (=> b!5407169 (= e!3352163 (or (not (= lt!2204155 Nil!61712)) (= lt!2204331 lt!2204163)))))

(declare-fun b!5407167 () Bool)

(declare-fun e!3352164 () List!61836)

(assert (=> b!5407167 (= e!3352164 (Cons!61712 (h!68160 lt!2204163) (++!13531 (t!375059 lt!2204163) lt!2204155)))))

(declare-fun b!5407168 () Bool)

(declare-fun res!2299121 () Bool)

(assert (=> b!5407168 (=> (not res!2299121) (not e!3352163))))

(declare-fun size!39848 (List!61836) Int)

(assert (=> b!5407168 (= res!2299121 (= (size!39848 lt!2204331) (+ (size!39848 lt!2204163) (size!39848 lt!2204155))))))

(declare-fun b!5407166 () Bool)

(assert (=> b!5407166 (= e!3352164 lt!2204155)))

(declare-fun d!1726357 () Bool)

(assert (=> d!1726357 e!3352163))

(declare-fun res!2299120 () Bool)

(assert (=> d!1726357 (=> (not res!2299120) (not e!3352163))))

(declare-fun content!11068 (List!61836) (InoxSet Regex!15179))

(assert (=> d!1726357 (= res!2299120 (= (content!11068 lt!2204331) ((_ map or) (content!11068 lt!2204163) (content!11068 lt!2204155))))))

(assert (=> d!1726357 (= lt!2204331 e!3352164)))

(declare-fun c!942675 () Bool)

(assert (=> d!1726357 (= c!942675 ((_ is Nil!61712) lt!2204163))))

(assert (=> d!1726357 (= (++!13531 lt!2204163 lt!2204155) lt!2204331)))

(assert (= (and d!1726357 c!942675) b!5407166))

(assert (= (and d!1726357 (not c!942675)) b!5407167))

(assert (= (and d!1726357 res!2299120) b!5407168))

(assert (= (and b!5407168 res!2299121) b!5407169))

(declare-fun m!6431336 () Bool)

(assert (=> b!5407167 m!6431336))

(declare-fun m!6431338 () Bool)

(assert (=> b!5407168 m!6431338))

(declare-fun m!6431340 () Bool)

(assert (=> b!5407168 m!6431340))

(declare-fun m!6431342 () Bool)

(assert (=> b!5407168 m!6431342))

(declare-fun m!6431344 () Bool)

(assert (=> d!1726357 m!6431344))

(declare-fun m!6431346 () Bool)

(assert (=> d!1726357 m!6431346))

(declare-fun m!6431348 () Bool)

(assert (=> d!1726357 m!6431348))

(assert (=> b!5406317 d!1726357))

(declare-fun d!1726359 () Bool)

(assert (=> d!1726359 (forall!14533 (++!13531 lt!2204163 lt!2204155) lambda!281877)))

(declare-fun lt!2204334 () Unit!154238)

(declare-fun choose!40802 (List!61836 List!61836 Int) Unit!154238)

(assert (=> d!1726359 (= lt!2204334 (choose!40802 lt!2204163 lt!2204155 lambda!281877))))

(assert (=> d!1726359 (forall!14533 lt!2204163 lambda!281877)))

(assert (=> d!1726359 (= (lemmaConcatPreservesForall!204 lt!2204163 lt!2204155 lambda!281877) lt!2204334)))

(declare-fun bs!1249154 () Bool)

(assert (= bs!1249154 d!1726359))

(assert (=> bs!1249154 m!6430452))

(assert (=> bs!1249154 m!6430452))

(declare-fun m!6431350 () Bool)

(assert (=> bs!1249154 m!6431350))

(declare-fun m!6431352 () Bool)

(assert (=> bs!1249154 m!6431352))

(declare-fun m!6431354 () Bool)

(assert (=> bs!1249154 m!6431354))

(assert (=> b!5406317 d!1726359))

(declare-fun d!1726361 () Bool)

(declare-fun choose!40803 ((InoxSet Context!9126) Int) (InoxSet Context!9126))

(assert (=> d!1726361 (= (map!14153 lt!2204160 lambda!281876) (choose!40803 lt!2204160 lambda!281876))))

(declare-fun bs!1249155 () Bool)

(assert (= bs!1249155 d!1726361))

(declare-fun m!6431356 () Bool)

(assert (=> bs!1249155 m!6431356))

(assert (=> b!5406317 d!1726361))

(declare-fun bs!1249156 () Bool)

(declare-fun d!1726363 () Bool)

(assert (= bs!1249156 (and d!1726363 b!5406317)))

(declare-fun lambda!281951 () Int)

(assert (=> bs!1249156 (= (= (exprs!5063 lt!2204132) lt!2204155) (= lambda!281951 lambda!281876))))

(assert (=> d!1726363 true))

(assert (=> d!1726363 (= (appendTo!38 lt!2204160 lt!2204132) (map!14153 lt!2204160 lambda!281951))))

(declare-fun bs!1249157 () Bool)

(assert (= bs!1249157 d!1726363))

(declare-fun m!6431358 () Bool)

(assert (=> bs!1249157 m!6431358))

(assert (=> b!5406317 d!1726363))

(declare-fun b!5407190 () Bool)

(declare-fun res!2299134 () Bool)

(declare-fun e!3352176 () Bool)

(assert (=> b!5407190 (=> (not res!2299134) (not e!3352176))))

(declare-fun lt!2204344 () Option!15290)

(assert (=> b!5407190 (= res!2299134 (matchR!7364 (regTwo!30870 r!7292) (_2!35681 (get!21271 lt!2204344))))))

(declare-fun b!5407192 () Bool)

(declare-fun e!3352175 () Option!15290)

(assert (=> b!5407192 (= e!3352175 (Some!15289 (tuple2!64757 Nil!61714 s!2326)))))

(declare-fun b!5407193 () Bool)

(declare-fun e!3352178 () Bool)

(assert (=> b!5407193 (= e!3352178 (matchR!7364 (regTwo!30870 r!7292) s!2326))))

(declare-fun b!5407194 () Bool)

(declare-fun e!3352177 () Option!15290)

(assert (=> b!5407194 (= e!3352175 e!3352177)))

(declare-fun c!942681 () Bool)

(assert (=> b!5407194 (= c!942681 ((_ is Nil!61714) s!2326))))

(declare-fun b!5407195 () Bool)

(declare-fun res!2299133 () Bool)

(assert (=> b!5407195 (=> (not res!2299133) (not e!3352176))))

(assert (=> b!5407195 (= res!2299133 (matchR!7364 (regOne!30870 r!7292) (_1!35681 (get!21271 lt!2204344))))))

(declare-fun b!5407196 () Bool)

(declare-fun lt!2204345 () Unit!154238)

(declare-fun lt!2204343 () Unit!154238)

(assert (=> b!5407196 (= lt!2204345 lt!2204343)))

(assert (=> b!5407196 (= (++!13532 (++!13532 Nil!61714 (Cons!61714 (h!68162 s!2326) Nil!61714)) (t!375061 s!2326)) s!2326)))

(assert (=> b!5407196 (= lt!2204343 (lemmaMoveElementToOtherListKeepsConcatEq!1835 Nil!61714 (h!68162 s!2326) (t!375061 s!2326) s!2326))))

(assert (=> b!5407196 (= e!3352177 (findConcatSeparation!1704 (regOne!30870 r!7292) (regTwo!30870 r!7292) (++!13532 Nil!61714 (Cons!61714 (h!68162 s!2326) Nil!61714)) (t!375061 s!2326) s!2326))))

(declare-fun b!5407197 () Bool)

(declare-fun e!3352179 () Bool)

(assert (=> b!5407197 (= e!3352179 (not (isDefined!11993 lt!2204344)))))

(declare-fun b!5407198 () Bool)

(assert (=> b!5407198 (= e!3352177 None!15289)))

(declare-fun d!1726365 () Bool)

(assert (=> d!1726365 e!3352179))

(declare-fun res!2299132 () Bool)

(assert (=> d!1726365 (=> res!2299132 e!3352179)))

(assert (=> d!1726365 (= res!2299132 e!3352176)))

(declare-fun res!2299136 () Bool)

(assert (=> d!1726365 (=> (not res!2299136) (not e!3352176))))

(assert (=> d!1726365 (= res!2299136 (isDefined!11993 lt!2204344))))

(assert (=> d!1726365 (= lt!2204344 e!3352175)))

(declare-fun c!942682 () Bool)

(assert (=> d!1726365 (= c!942682 e!3352178)))

(declare-fun res!2299135 () Bool)

(assert (=> d!1726365 (=> (not res!2299135) (not e!3352178))))

(assert (=> d!1726365 (= res!2299135 (matchR!7364 (regOne!30870 r!7292) Nil!61714))))

(assert (=> d!1726365 (validRegex!6915 (regOne!30870 r!7292))))

(assert (=> d!1726365 (= (findConcatSeparation!1704 (regOne!30870 r!7292) (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326) lt!2204344)))

(declare-fun b!5407191 () Bool)

(assert (=> b!5407191 (= e!3352176 (= (++!13532 (_1!35681 (get!21271 lt!2204344)) (_2!35681 (get!21271 lt!2204344))) s!2326))))

(assert (= (and d!1726365 res!2299135) b!5407193))

(assert (= (and d!1726365 c!942682) b!5407192))

(assert (= (and d!1726365 (not c!942682)) b!5407194))

(assert (= (and b!5407194 c!942681) b!5407198))

(assert (= (and b!5407194 (not c!942681)) b!5407196))

(assert (= (and d!1726365 res!2299136) b!5407195))

(assert (= (and b!5407195 res!2299133) b!5407190))

(assert (= (and b!5407190 res!2299134) b!5407191))

(assert (= (and d!1726365 (not res!2299132)) b!5407197))

(declare-fun m!6431360 () Bool)

(assert (=> b!5407193 m!6431360))

(declare-fun m!6431362 () Bool)

(assert (=> b!5407197 m!6431362))

(assert (=> d!1726365 m!6431362))

(declare-fun m!6431364 () Bool)

(assert (=> d!1726365 m!6431364))

(declare-fun m!6431366 () Bool)

(assert (=> d!1726365 m!6431366))

(declare-fun m!6431368 () Bool)

(assert (=> b!5407191 m!6431368))

(declare-fun m!6431370 () Bool)

(assert (=> b!5407191 m!6431370))

(assert (=> b!5407196 m!6431010))

(assert (=> b!5407196 m!6431010))

(assert (=> b!5407196 m!6431014))

(assert (=> b!5407196 m!6431016))

(assert (=> b!5407196 m!6431010))

(declare-fun m!6431372 () Bool)

(assert (=> b!5407196 m!6431372))

(assert (=> b!5407195 m!6431368))

(declare-fun m!6431374 () Bool)

(assert (=> b!5407195 m!6431374))

(assert (=> b!5407190 m!6431368))

(declare-fun m!6431376 () Bool)

(assert (=> b!5407190 m!6431376))

(assert (=> b!5406316 d!1726365))

(declare-fun d!1726367 () Bool)

(declare-fun choose!40804 (Int) Bool)

(assert (=> d!1726367 (= (Exists!2360 lambda!281874) (choose!40804 lambda!281874))))

(declare-fun bs!1249158 () Bool)

(assert (= bs!1249158 d!1726367))

(declare-fun m!6431378 () Bool)

(assert (=> bs!1249158 m!6431378))

(assert (=> b!5406316 d!1726367))

(declare-fun bs!1249159 () Bool)

(declare-fun d!1726369 () Bool)

(assert (= bs!1249159 (and d!1726369 b!5406286)))

(declare-fun lambda!281954 () Int)

(assert (=> bs!1249159 (= (= (regOne!30870 r!7292) lt!2204180) (= lambda!281954 lambda!281878))))

(declare-fun bs!1249160 () Bool)

(assert (= bs!1249160 (and d!1726369 b!5407112)))

(assert (=> bs!1249160 (not (= lambda!281954 lambda!281943))))

(declare-fun bs!1249161 () Bool)

(assert (= bs!1249161 (and d!1726369 b!5406316)))

(assert (=> bs!1249161 (= lambda!281954 lambda!281873)))

(assert (=> bs!1249161 (not (= lambda!281954 lambda!281874))))

(declare-fun bs!1249162 () Bool)

(assert (= bs!1249162 (and d!1726369 b!5407105)))

(assert (=> bs!1249162 (not (= lambda!281954 lambda!281942))))

(assert (=> bs!1249159 (not (= lambda!281954 lambda!281879))))

(assert (=> d!1726369 true))

(assert (=> d!1726369 true))

(assert (=> d!1726369 true))

(assert (=> d!1726369 (= (isDefined!11993 (findConcatSeparation!1704 (regOne!30870 r!7292) (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326)) (Exists!2360 lambda!281954))))

(declare-fun lt!2204348 () Unit!154238)

(declare-fun choose!40805 (Regex!15179 Regex!15179 List!61838) Unit!154238)

(assert (=> d!1726369 (= lt!2204348 (choose!40805 (regOne!30870 r!7292) (regTwo!30870 r!7292) s!2326))))

(assert (=> d!1726369 (validRegex!6915 (regOne!30870 r!7292))))

(assert (=> d!1726369 (= (lemmaFindConcatSeparationEquivalentToExists!1468 (regOne!30870 r!7292) (regTwo!30870 r!7292) s!2326) lt!2204348)))

(declare-fun bs!1249163 () Bool)

(assert (= bs!1249163 d!1726369))

(assert (=> bs!1249163 m!6431366))

(declare-fun m!6431380 () Bool)

(assert (=> bs!1249163 m!6431380))

(assert (=> bs!1249163 m!6430500))

(assert (=> bs!1249163 m!6430502))

(declare-fun m!6431382 () Bool)

(assert (=> bs!1249163 m!6431382))

(assert (=> bs!1249163 m!6430500))

(assert (=> b!5406316 d!1726369))

(declare-fun d!1726371 () Bool)

(assert (=> d!1726371 (= (Exists!2360 lambda!281873) (choose!40804 lambda!281873))))

(declare-fun bs!1249164 () Bool)

(assert (= bs!1249164 d!1726371))

(declare-fun m!6431384 () Bool)

(assert (=> bs!1249164 m!6431384))

(assert (=> b!5406316 d!1726371))

(declare-fun bs!1249165 () Bool)

(declare-fun d!1726373 () Bool)

(assert (= bs!1249165 (and d!1726373 b!5406286)))

(declare-fun lambda!281959 () Int)

(assert (=> bs!1249165 (= (= (regOne!30870 r!7292) lt!2204180) (= lambda!281959 lambda!281878))))

(declare-fun bs!1249166 () Bool)

(assert (= bs!1249166 (and d!1726373 d!1726369)))

(assert (=> bs!1249166 (= lambda!281959 lambda!281954)))

(declare-fun bs!1249167 () Bool)

(assert (= bs!1249167 (and d!1726373 b!5407112)))

(assert (=> bs!1249167 (not (= lambda!281959 lambda!281943))))

(declare-fun bs!1249168 () Bool)

(assert (= bs!1249168 (and d!1726373 b!5406316)))

(assert (=> bs!1249168 (= lambda!281959 lambda!281873)))

(assert (=> bs!1249168 (not (= lambda!281959 lambda!281874))))

(declare-fun bs!1249169 () Bool)

(assert (= bs!1249169 (and d!1726373 b!5407105)))

(assert (=> bs!1249169 (not (= lambda!281959 lambda!281942))))

(assert (=> bs!1249165 (not (= lambda!281959 lambda!281879))))

(assert (=> d!1726373 true))

(assert (=> d!1726373 true))

(assert (=> d!1726373 true))

(declare-fun lambda!281960 () Int)

(assert (=> bs!1249165 (not (= lambda!281960 lambda!281878))))

(declare-fun bs!1249170 () Bool)

(assert (= bs!1249170 d!1726373))

(assert (=> bs!1249170 (not (= lambda!281960 lambda!281959))))

(assert (=> bs!1249166 (not (= lambda!281960 lambda!281954))))

(assert (=> bs!1249167 (= lambda!281960 lambda!281943)))

(assert (=> bs!1249168 (not (= lambda!281960 lambda!281873))))

(assert (=> bs!1249168 (= lambda!281960 lambda!281874)))

(assert (=> bs!1249169 (not (= lambda!281960 lambda!281942))))

(assert (=> bs!1249165 (= (= (regOne!30870 r!7292) lt!2204180) (= lambda!281960 lambda!281879))))

(assert (=> d!1726373 true))

(assert (=> d!1726373 true))

(assert (=> d!1726373 true))

(assert (=> d!1726373 (= (Exists!2360 lambda!281959) (Exists!2360 lambda!281960))))

(declare-fun lt!2204351 () Unit!154238)

(declare-fun choose!40807 (Regex!15179 Regex!15179 List!61838) Unit!154238)

(assert (=> d!1726373 (= lt!2204351 (choose!40807 (regOne!30870 r!7292) (regTwo!30870 r!7292) s!2326))))

(assert (=> d!1726373 (validRegex!6915 (regOne!30870 r!7292))))

(assert (=> d!1726373 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1014 (regOne!30870 r!7292) (regTwo!30870 r!7292) s!2326) lt!2204351)))

(declare-fun m!6431386 () Bool)

(assert (=> bs!1249170 m!6431386))

(declare-fun m!6431388 () Bool)

(assert (=> bs!1249170 m!6431388))

(declare-fun m!6431390 () Bool)

(assert (=> bs!1249170 m!6431390))

(assert (=> bs!1249170 m!6431366))

(assert (=> b!5406316 d!1726373))

(declare-fun d!1726375 () Bool)

(assert (=> d!1726375 (= (isDefined!11993 (findConcatSeparation!1704 (regOne!30870 r!7292) (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326)) (not (isEmpty!33708 (findConcatSeparation!1704 (regOne!30870 r!7292) (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326))))))

(declare-fun bs!1249171 () Bool)

(assert (= bs!1249171 d!1726375))

(assert (=> bs!1249171 m!6430500))

(declare-fun m!6431392 () Bool)

(assert (=> bs!1249171 m!6431392))

(assert (=> b!5406316 d!1726375))

(declare-fun d!1726377 () Bool)

(declare-fun e!3352188 () Bool)

(assert (=> d!1726377 (= (matchZipper!1423 ((_ map or) lt!2204142 lt!2204167) (t!375061 s!2326)) e!3352188)))

(declare-fun res!2299151 () Bool)

(assert (=> d!1726377 (=> res!2299151 e!3352188)))

(assert (=> d!1726377 (= res!2299151 (matchZipper!1423 lt!2204142 (t!375061 s!2326)))))

(declare-fun lt!2204354 () Unit!154238)

(declare-fun choose!40808 ((InoxSet Context!9126) (InoxSet Context!9126) List!61838) Unit!154238)

(assert (=> d!1726377 (= lt!2204354 (choose!40808 lt!2204142 lt!2204167 (t!375061 s!2326)))))

(assert (=> d!1726377 (= (lemmaZipperConcatMatchesSameAsBothZippers!416 lt!2204142 lt!2204167 (t!375061 s!2326)) lt!2204354)))

(declare-fun b!5407213 () Bool)

(assert (=> b!5407213 (= e!3352188 (matchZipper!1423 lt!2204167 (t!375061 s!2326)))))

(assert (= (and d!1726377 (not res!2299151)) b!5407213))

(assert (=> d!1726377 m!6430496))

(assert (=> d!1726377 m!6430476))

(declare-fun m!6431394 () Bool)

(assert (=> d!1726377 m!6431394))

(assert (=> b!5407213 m!6430440))

(assert (=> b!5406315 d!1726377))

(assert (=> b!5406315 d!1726301))

(declare-fun d!1726379 () Bool)

(declare-fun c!942683 () Bool)

(assert (=> d!1726379 (= c!942683 (isEmpty!33709 (t!375061 s!2326)))))

(declare-fun e!3352189 () Bool)

(assert (=> d!1726379 (= (matchZipper!1423 ((_ map or) lt!2204142 lt!2204167) (t!375061 s!2326)) e!3352189)))

(declare-fun b!5407214 () Bool)

(assert (=> b!5407214 (= e!3352189 (nullableZipper!1440 ((_ map or) lt!2204142 lt!2204167)))))

(declare-fun b!5407215 () Bool)

(assert (=> b!5407215 (= e!3352189 (matchZipper!1423 (derivationStepZipper!1418 ((_ map or) lt!2204142 lt!2204167) (head!11596 (t!375061 s!2326))) (tail!10693 (t!375061 s!2326))))))

(assert (= (and d!1726379 c!942683) b!5407214))

(assert (= (and d!1726379 (not c!942683)) b!5407215))

(assert (=> d!1726379 m!6431162))

(declare-fun m!6431396 () Bool)

(assert (=> b!5407214 m!6431396))

(assert (=> b!5407215 m!6431166))

(assert (=> b!5407215 m!6431166))

(declare-fun m!6431398 () Bool)

(assert (=> b!5407215 m!6431398))

(assert (=> b!5407215 m!6431170))

(assert (=> b!5407215 m!6431398))

(assert (=> b!5407215 m!6431170))

(declare-fun m!6431400 () Bool)

(assert (=> b!5407215 m!6431400))

(assert (=> b!5406315 d!1726379))

(declare-fun d!1726381 () Bool)

(assert (=> d!1726381 (= (isEmpty!33705 (t!375059 (exprs!5063 (h!68161 zl!343)))) ((_ is Nil!61712) (t!375059 (exprs!5063 (h!68161 zl!343)))))))

(assert (=> b!5406314 d!1726381))

(declare-fun bm!386987 () Bool)

(declare-fun call!386993 () Bool)

(declare-fun c!942688 () Bool)

(assert (=> bm!386987 (= call!386993 (validRegex!6915 (ite c!942688 (regTwo!30871 r!7292) (regTwo!30870 r!7292))))))

(declare-fun bm!386988 () Bool)

(declare-fun call!386994 () Bool)

(declare-fun call!386992 () Bool)

(assert (=> bm!386988 (= call!386994 call!386992)))

(declare-fun b!5407234 () Bool)

(declare-fun res!2299165 () Bool)

(declare-fun e!3352204 () Bool)

(assert (=> b!5407234 (=> res!2299165 e!3352204)))

(assert (=> b!5407234 (= res!2299165 (not ((_ is Concat!24024) r!7292)))))

(declare-fun e!3352205 () Bool)

(assert (=> b!5407234 (= e!3352205 e!3352204)))

(declare-fun b!5407235 () Bool)

(declare-fun e!3352208 () Bool)

(declare-fun e!3352209 () Bool)

(assert (=> b!5407235 (= e!3352208 e!3352209)))

(declare-fun res!2299163 () Bool)

(assert (=> b!5407235 (= res!2299163 (not (nullable!5348 (reg!15508 r!7292))))))

(assert (=> b!5407235 (=> (not res!2299163) (not e!3352209))))

(declare-fun b!5407236 () Bool)

(assert (=> b!5407236 (= e!3352208 e!3352205)))

(assert (=> b!5407236 (= c!942688 ((_ is Union!15179) r!7292))))

(declare-fun b!5407237 () Bool)

(declare-fun res!2299166 () Bool)

(declare-fun e!3352210 () Bool)

(assert (=> b!5407237 (=> (not res!2299166) (not e!3352210))))

(assert (=> b!5407237 (= res!2299166 call!386994)))

(assert (=> b!5407237 (= e!3352205 e!3352210)))

(declare-fun b!5407238 () Bool)

(assert (=> b!5407238 (= e!3352209 call!386992)))

(declare-fun bm!386989 () Bool)

(declare-fun c!942689 () Bool)

(assert (=> bm!386989 (= call!386992 (validRegex!6915 (ite c!942689 (reg!15508 r!7292) (ite c!942688 (regOne!30871 r!7292) (regOne!30870 r!7292)))))))

(declare-fun b!5407239 () Bool)

(assert (=> b!5407239 (= e!3352210 call!386993)))

(declare-fun b!5407240 () Bool)

(declare-fun e!3352207 () Bool)

(assert (=> b!5407240 (= e!3352204 e!3352207)))

(declare-fun res!2299164 () Bool)

(assert (=> b!5407240 (=> (not res!2299164) (not e!3352207))))

(assert (=> b!5407240 (= res!2299164 call!386994)))

(declare-fun b!5407241 () Bool)

(assert (=> b!5407241 (= e!3352207 call!386993)))

(declare-fun b!5407242 () Bool)

(declare-fun e!3352206 () Bool)

(assert (=> b!5407242 (= e!3352206 e!3352208)))

(assert (=> b!5407242 (= c!942689 ((_ is Star!15179) r!7292))))

(declare-fun d!1726383 () Bool)

(declare-fun res!2299162 () Bool)

(assert (=> d!1726383 (=> res!2299162 e!3352206)))

(assert (=> d!1726383 (= res!2299162 ((_ is ElementMatch!15179) r!7292))))

(assert (=> d!1726383 (= (validRegex!6915 r!7292) e!3352206)))

(assert (= (and d!1726383 (not res!2299162)) b!5407242))

(assert (= (and b!5407242 c!942689) b!5407235))

(assert (= (and b!5407242 (not c!942689)) b!5407236))

(assert (= (and b!5407235 res!2299163) b!5407238))

(assert (= (and b!5407236 c!942688) b!5407237))

(assert (= (and b!5407236 (not c!942688)) b!5407234))

(assert (= (and b!5407237 res!2299166) b!5407239))

(assert (= (and b!5407234 (not res!2299165)) b!5407240))

(assert (= (and b!5407240 res!2299164) b!5407241))

(assert (= (or b!5407239 b!5407241) bm!386987))

(assert (= (or b!5407237 b!5407240) bm!386988))

(assert (= (or b!5407238 bm!386988) bm!386989))

(declare-fun m!6431402 () Bool)

(assert (=> bm!386987 m!6431402))

(declare-fun m!6431404 () Bool)

(assert (=> b!5407235 m!6431404))

(declare-fun m!6431406 () Bool)

(assert (=> bm!386989 m!6431406))

(assert (=> start!567798 d!1726383))

(declare-fun d!1726385 () Bool)

(declare-fun c!942690 () Bool)

(assert (=> d!1726385 (= c!942690 (isEmpty!33709 (_2!35681 lt!2204147)))))

(declare-fun e!3352211 () Bool)

(assert (=> d!1726385 (= (matchZipper!1423 lt!2204183 (_2!35681 lt!2204147)) e!3352211)))

(declare-fun b!5407243 () Bool)

(assert (=> b!5407243 (= e!3352211 (nullableZipper!1440 lt!2204183))))

(declare-fun b!5407244 () Bool)

(assert (=> b!5407244 (= e!3352211 (matchZipper!1423 (derivationStepZipper!1418 lt!2204183 (head!11596 (_2!35681 lt!2204147))) (tail!10693 (_2!35681 lt!2204147))))))

(assert (= (and d!1726385 c!942690) b!5407243))

(assert (= (and d!1726385 (not c!942690)) b!5407244))

(declare-fun m!6431408 () Bool)

(assert (=> d!1726385 m!6431408))

(declare-fun m!6431410 () Bool)

(assert (=> b!5407243 m!6431410))

(declare-fun m!6431412 () Bool)

(assert (=> b!5407244 m!6431412))

(assert (=> b!5407244 m!6431412))

(declare-fun m!6431414 () Bool)

(assert (=> b!5407244 m!6431414))

(declare-fun m!6431416 () Bool)

(assert (=> b!5407244 m!6431416))

(assert (=> b!5407244 m!6431414))

(assert (=> b!5407244 m!6431416))

(declare-fun m!6431418 () Bool)

(assert (=> b!5407244 m!6431418))

(assert (=> b!5406313 d!1726385))

(assert (=> b!5406312 d!1726329))

(declare-fun d!1726387 () Bool)

(declare-fun c!942692 () Bool)

(declare-fun e!3352214 () Bool)

(assert (=> d!1726387 (= c!942692 e!3352214)))

(declare-fun res!2299167 () Bool)

(assert (=> d!1726387 (=> (not res!2299167) (not e!3352214))))

(assert (=> d!1726387 (= res!2299167 ((_ is Cons!61712) (exprs!5063 lt!2204161)))))

(declare-fun e!3352212 () (InoxSet Context!9126))

(assert (=> d!1726387 (= (derivationStepZipperUp!551 lt!2204161 (h!68162 s!2326)) e!3352212)))

(declare-fun b!5407245 () Bool)

(declare-fun e!3352213 () (InoxSet Context!9126))

(assert (=> b!5407245 (= e!3352212 e!3352213)))

(declare-fun c!942691 () Bool)

(assert (=> b!5407245 (= c!942691 ((_ is Cons!61712) (exprs!5063 lt!2204161)))))

(declare-fun bm!386990 () Bool)

(declare-fun call!386995 () (InoxSet Context!9126))

(assert (=> bm!386990 (= call!386995 (derivationStepZipperDown!627 (h!68160 (exprs!5063 lt!2204161)) (Context!9127 (t!375059 (exprs!5063 lt!2204161))) (h!68162 s!2326)))))

(declare-fun b!5407246 () Bool)

(assert (=> b!5407246 (= e!3352213 call!386995)))

(declare-fun b!5407247 () Bool)

(assert (=> b!5407247 (= e!3352212 ((_ map or) call!386995 (derivationStepZipperUp!551 (Context!9127 (t!375059 (exprs!5063 lt!2204161))) (h!68162 s!2326))))))

(declare-fun b!5407248 () Bool)

(assert (=> b!5407248 (= e!3352213 ((as const (Array Context!9126 Bool)) false))))

(declare-fun b!5407249 () Bool)

(assert (=> b!5407249 (= e!3352214 (nullable!5348 (h!68160 (exprs!5063 lt!2204161))))))

(assert (= (and d!1726387 res!2299167) b!5407249))

(assert (= (and d!1726387 c!942692) b!5407247))

(assert (= (and d!1726387 (not c!942692)) b!5407245))

(assert (= (and b!5407245 c!942691) b!5407246))

(assert (= (and b!5407245 (not c!942691)) b!5407248))

(assert (= (or b!5407247 b!5407246) bm!386990))

(declare-fun m!6431420 () Bool)

(assert (=> bm!386990 m!6431420))

(declare-fun m!6431422 () Bool)

(assert (=> b!5407247 m!6431422))

(declare-fun m!6431424 () Bool)

(assert (=> b!5407249 m!6431424))

(assert (=> b!5406292 d!1726387))

(declare-fun d!1726389 () Bool)

(assert (=> d!1726389 (= (flatMap!906 z!1189 lambda!281875) (dynLambda!24318 lambda!281875 (h!68161 zl!343)))))

(declare-fun lt!2204355 () Unit!154238)

(assert (=> d!1726389 (= lt!2204355 (choose!40796 z!1189 (h!68161 zl!343) lambda!281875))))

(assert (=> d!1726389 (= z!1189 (store ((as const (Array Context!9126 Bool)) false) (h!68161 zl!343) true))))

(assert (=> d!1726389 (= (lemmaFlatMapOnSingletonSet!438 z!1189 (h!68161 zl!343) lambda!281875) lt!2204355)))

(declare-fun b_lambda!206613 () Bool)

(assert (=> (not b_lambda!206613) (not d!1726389)))

(declare-fun bs!1249172 () Bool)

(assert (= bs!1249172 d!1726389))

(assert (=> bs!1249172 m!6430540))

(declare-fun m!6431426 () Bool)

(assert (=> bs!1249172 m!6431426))

(declare-fun m!6431428 () Bool)

(assert (=> bs!1249172 m!6431428))

(declare-fun m!6431430 () Bool)

(assert (=> bs!1249172 m!6431430))

(assert (=> b!5406292 d!1726389))

(declare-fun d!1726391 () Bool)

(assert (=> d!1726391 (= (nullable!5348 (h!68160 (exprs!5063 (h!68161 zl!343)))) (nullableFct!1591 (h!68160 (exprs!5063 (h!68161 zl!343)))))))

(declare-fun bs!1249173 () Bool)

(assert (= bs!1249173 d!1726391))

(declare-fun m!6431432 () Bool)

(assert (=> bs!1249173 m!6431432))

(assert (=> b!5406292 d!1726391))

(declare-fun d!1726393 () Bool)

(declare-fun c!942694 () Bool)

(declare-fun e!3352217 () Bool)

(assert (=> d!1726393 (= c!942694 e!3352217)))

(declare-fun res!2299168 () Bool)

(assert (=> d!1726393 (=> (not res!2299168) (not e!3352217))))

(assert (=> d!1726393 (= res!2299168 ((_ is Cons!61712) (exprs!5063 (Context!9127 (Cons!61712 (h!68160 (exprs!5063 (h!68161 zl!343))) (t!375059 (exprs!5063 (h!68161 zl!343))))))))))

(declare-fun e!3352215 () (InoxSet Context!9126))

(assert (=> d!1726393 (= (derivationStepZipperUp!551 (Context!9127 (Cons!61712 (h!68160 (exprs!5063 (h!68161 zl!343))) (t!375059 (exprs!5063 (h!68161 zl!343))))) (h!68162 s!2326)) e!3352215)))

(declare-fun b!5407250 () Bool)

(declare-fun e!3352216 () (InoxSet Context!9126))

(assert (=> b!5407250 (= e!3352215 e!3352216)))

(declare-fun c!942693 () Bool)

(assert (=> b!5407250 (= c!942693 ((_ is Cons!61712) (exprs!5063 (Context!9127 (Cons!61712 (h!68160 (exprs!5063 (h!68161 zl!343))) (t!375059 (exprs!5063 (h!68161 zl!343))))))))))

(declare-fun bm!386991 () Bool)

(declare-fun call!386996 () (InoxSet Context!9126))

(assert (=> bm!386991 (= call!386996 (derivationStepZipperDown!627 (h!68160 (exprs!5063 (Context!9127 (Cons!61712 (h!68160 (exprs!5063 (h!68161 zl!343))) (t!375059 (exprs!5063 (h!68161 zl!343))))))) (Context!9127 (t!375059 (exprs!5063 (Context!9127 (Cons!61712 (h!68160 (exprs!5063 (h!68161 zl!343))) (t!375059 (exprs!5063 (h!68161 zl!343)))))))) (h!68162 s!2326)))))

(declare-fun b!5407251 () Bool)

(assert (=> b!5407251 (= e!3352216 call!386996)))

(declare-fun b!5407252 () Bool)

(assert (=> b!5407252 (= e!3352215 ((_ map or) call!386996 (derivationStepZipperUp!551 (Context!9127 (t!375059 (exprs!5063 (Context!9127 (Cons!61712 (h!68160 (exprs!5063 (h!68161 zl!343))) (t!375059 (exprs!5063 (h!68161 zl!343)))))))) (h!68162 s!2326))))))

(declare-fun b!5407253 () Bool)

(assert (=> b!5407253 (= e!3352216 ((as const (Array Context!9126 Bool)) false))))

(declare-fun b!5407254 () Bool)

(assert (=> b!5407254 (= e!3352217 (nullable!5348 (h!68160 (exprs!5063 (Context!9127 (Cons!61712 (h!68160 (exprs!5063 (h!68161 zl!343))) (t!375059 (exprs!5063 (h!68161 zl!343)))))))))))

(assert (= (and d!1726393 res!2299168) b!5407254))

(assert (= (and d!1726393 c!942694) b!5407252))

(assert (= (and d!1726393 (not c!942694)) b!5407250))

(assert (= (and b!5407250 c!942693) b!5407251))

(assert (= (and b!5407250 (not c!942693)) b!5407253))

(assert (= (or b!5407252 b!5407251) bm!386991))

(declare-fun m!6431434 () Bool)

(assert (=> bm!386991 m!6431434))

(declare-fun m!6431436 () Bool)

(assert (=> b!5407252 m!6431436))

(declare-fun m!6431438 () Bool)

(assert (=> b!5407254 m!6431438))

(assert (=> b!5406292 d!1726393))

(declare-fun d!1726395 () Bool)

(declare-fun c!942696 () Bool)

(declare-fun e!3352220 () Bool)

(assert (=> d!1726395 (= c!942696 e!3352220)))

(declare-fun res!2299169 () Bool)

(assert (=> d!1726395 (=> (not res!2299169) (not e!3352220))))

(assert (=> d!1726395 (= res!2299169 ((_ is Cons!61712) (exprs!5063 (h!68161 zl!343))))))

(declare-fun e!3352218 () (InoxSet Context!9126))

(assert (=> d!1726395 (= (derivationStepZipperUp!551 (h!68161 zl!343) (h!68162 s!2326)) e!3352218)))

(declare-fun b!5407255 () Bool)

(declare-fun e!3352219 () (InoxSet Context!9126))

(assert (=> b!5407255 (= e!3352218 e!3352219)))

(declare-fun c!942695 () Bool)

(assert (=> b!5407255 (= c!942695 ((_ is Cons!61712) (exprs!5063 (h!68161 zl!343))))))

(declare-fun bm!386992 () Bool)

(declare-fun call!386997 () (InoxSet Context!9126))

(assert (=> bm!386992 (= call!386997 (derivationStepZipperDown!627 (h!68160 (exprs!5063 (h!68161 zl!343))) (Context!9127 (t!375059 (exprs!5063 (h!68161 zl!343)))) (h!68162 s!2326)))))

(declare-fun b!5407256 () Bool)

(assert (=> b!5407256 (= e!3352219 call!386997)))

(declare-fun b!5407257 () Bool)

(assert (=> b!5407257 (= e!3352218 ((_ map or) call!386997 (derivationStepZipperUp!551 (Context!9127 (t!375059 (exprs!5063 (h!68161 zl!343)))) (h!68162 s!2326))))))

(declare-fun b!5407258 () Bool)

(assert (=> b!5407258 (= e!3352219 ((as const (Array Context!9126 Bool)) false))))

(declare-fun b!5407259 () Bool)

(assert (=> b!5407259 (= e!3352220 (nullable!5348 (h!68160 (exprs!5063 (h!68161 zl!343)))))))

(assert (= (and d!1726395 res!2299169) b!5407259))

(assert (= (and d!1726395 c!942696) b!5407257))

(assert (= (and d!1726395 (not c!942696)) b!5407255))

(assert (= (and b!5407255 c!942695) b!5407256))

(assert (= (and b!5407255 (not c!942695)) b!5407258))

(assert (= (or b!5407257 b!5407256) bm!386992))

(declare-fun m!6431440 () Bool)

(assert (=> bm!386992 m!6431440))

(declare-fun m!6431442 () Bool)

(assert (=> b!5407257 m!6431442))

(assert (=> b!5407259 m!6430546))

(assert (=> b!5406292 d!1726395))

(declare-fun bm!386993 () Bool)

(declare-fun c!942699 () Bool)

(declare-fun c!942698 () Bool)

(declare-fun call!387002 () (InoxSet Context!9126))

(declare-fun c!942697 () Bool)

(declare-fun call!387000 () List!61836)

(assert (=> bm!386993 (= call!387002 (derivationStepZipperDown!627 (ite c!942699 (regTwo!30871 (h!68160 (exprs!5063 (h!68161 zl!343)))) (ite c!942698 (regTwo!30870 (h!68160 (exprs!5063 (h!68161 zl!343)))) (ite c!942697 (regOne!30870 (h!68160 (exprs!5063 (h!68161 zl!343)))) (reg!15508 (h!68160 (exprs!5063 (h!68161 zl!343))))))) (ite (or c!942699 c!942698) lt!2204161 (Context!9127 call!387000)) (h!68162 s!2326)))))

(declare-fun bm!386994 () Bool)

(declare-fun call!386998 () List!61836)

(assert (=> bm!386994 (= call!387000 call!386998)))

(declare-fun b!5407261 () Bool)

(declare-fun e!3352225 () (InoxSet Context!9126))

(assert (=> b!5407261 (= e!3352225 ((as const (Array Context!9126 Bool)) false))))

(declare-fun b!5407262 () Bool)

(declare-fun e!3352221 () Bool)

(assert (=> b!5407262 (= e!3352221 (nullable!5348 (regOne!30870 (h!68160 (exprs!5063 (h!68161 zl!343))))))))

(declare-fun b!5407263 () Bool)

(declare-fun e!3352223 () (InoxSet Context!9126))

(declare-fun e!3352224 () (InoxSet Context!9126))

(assert (=> b!5407263 (= e!3352223 e!3352224)))

(assert (=> b!5407263 (= c!942697 ((_ is Concat!24024) (h!68160 (exprs!5063 (h!68161 zl!343)))))))

(declare-fun b!5407264 () Bool)

(declare-fun call!387001 () (InoxSet Context!9126))

(assert (=> b!5407264 (= e!3352224 call!387001)))

(declare-fun b!5407265 () Bool)

(declare-fun e!3352226 () (InoxSet Context!9126))

(declare-fun e!3352222 () (InoxSet Context!9126))

(assert (=> b!5407265 (= e!3352226 e!3352222)))

(assert (=> b!5407265 (= c!942699 ((_ is Union!15179) (h!68160 (exprs!5063 (h!68161 zl!343)))))))

(declare-fun b!5407266 () Bool)

(declare-fun call!387003 () (InoxSet Context!9126))

(declare-fun call!386999 () (InoxSet Context!9126))

(assert (=> b!5407266 (= e!3352223 ((_ map or) call!387003 call!386999))))

(declare-fun b!5407267 () Bool)

(declare-fun c!942701 () Bool)

(assert (=> b!5407267 (= c!942701 ((_ is Star!15179) (h!68160 (exprs!5063 (h!68161 zl!343)))))))

(assert (=> b!5407267 (= e!3352224 e!3352225)))

(declare-fun bm!386995 () Bool)

(assert (=> bm!386995 (= call!387001 call!386999)))

(declare-fun b!5407268 () Bool)

(assert (=> b!5407268 (= e!3352225 call!387001)))

(declare-fun b!5407260 () Bool)

(assert (=> b!5407260 (= e!3352222 ((_ map or) call!387003 call!387002))))

(declare-fun d!1726397 () Bool)

(declare-fun c!942700 () Bool)

(assert (=> d!1726397 (= c!942700 (and ((_ is ElementMatch!15179) (h!68160 (exprs!5063 (h!68161 zl!343)))) (= (c!942433 (h!68160 (exprs!5063 (h!68161 zl!343)))) (h!68162 s!2326))))))

(assert (=> d!1726397 (= (derivationStepZipperDown!627 (h!68160 (exprs!5063 (h!68161 zl!343))) lt!2204161 (h!68162 s!2326)) e!3352226)))

(declare-fun bm!386996 () Bool)

(assert (=> bm!386996 (= call!386999 call!387002)))

(declare-fun bm!386997 () Bool)

(assert (=> bm!386997 (= call!387003 (derivationStepZipperDown!627 (ite c!942699 (regOne!30871 (h!68160 (exprs!5063 (h!68161 zl!343)))) (regOne!30870 (h!68160 (exprs!5063 (h!68161 zl!343))))) (ite c!942699 lt!2204161 (Context!9127 call!386998)) (h!68162 s!2326)))))

(declare-fun b!5407269 () Bool)

(assert (=> b!5407269 (= c!942698 e!3352221)))

(declare-fun res!2299170 () Bool)

(assert (=> b!5407269 (=> (not res!2299170) (not e!3352221))))

(assert (=> b!5407269 (= res!2299170 ((_ is Concat!24024) (h!68160 (exprs!5063 (h!68161 zl!343)))))))

(assert (=> b!5407269 (= e!3352222 e!3352223)))

(declare-fun bm!386998 () Bool)

(assert (=> bm!386998 (= call!386998 ($colon$colon!1489 (exprs!5063 lt!2204161) (ite (or c!942698 c!942697) (regTwo!30870 (h!68160 (exprs!5063 (h!68161 zl!343)))) (h!68160 (exprs!5063 (h!68161 zl!343))))))))

(declare-fun b!5407270 () Bool)

(assert (=> b!5407270 (= e!3352226 (store ((as const (Array Context!9126 Bool)) false) lt!2204161 true))))

(assert (= (and d!1726397 c!942700) b!5407270))

(assert (= (and d!1726397 (not c!942700)) b!5407265))

(assert (= (and b!5407265 c!942699) b!5407260))

(assert (= (and b!5407265 (not c!942699)) b!5407269))

(assert (= (and b!5407269 res!2299170) b!5407262))

(assert (= (and b!5407269 c!942698) b!5407266))

(assert (= (and b!5407269 (not c!942698)) b!5407263))

(assert (= (and b!5407263 c!942697) b!5407264))

(assert (= (and b!5407263 (not c!942697)) b!5407267))

(assert (= (and b!5407267 c!942701) b!5407268))

(assert (= (and b!5407267 (not c!942701)) b!5407261))

(assert (= (or b!5407264 b!5407268) bm!386994))

(assert (= (or b!5407264 b!5407268) bm!386995))

(assert (= (or b!5407266 bm!386994) bm!386998))

(assert (= (or b!5407266 bm!386995) bm!386996))

(assert (= (or b!5407260 bm!386996) bm!386993))

(assert (= (or b!5407260 b!5407266) bm!386997))

(declare-fun m!6431444 () Bool)

(assert (=> bm!386993 m!6431444))

(declare-fun m!6431446 () Bool)

(assert (=> b!5407262 m!6431446))

(declare-fun m!6431448 () Bool)

(assert (=> bm!386997 m!6431448))

(declare-fun m!6431450 () Bool)

(assert (=> bm!386998 m!6431450))

(declare-fun m!6431452 () Bool)

(assert (=> b!5407270 m!6431452))

(assert (=> b!5406292 d!1726397))

(declare-fun d!1726399 () Bool)

(assert (=> d!1726399 (= (flatMap!906 z!1189 lambda!281875) (choose!40794 z!1189 lambda!281875))))

(declare-fun bs!1249174 () Bool)

(assert (= bs!1249174 d!1726399))

(declare-fun m!6431454 () Bool)

(assert (=> bs!1249174 m!6431454))

(assert (=> b!5406292 d!1726399))

(declare-fun d!1726401 () Bool)

(declare-fun c!942702 () Bool)

(assert (=> d!1726401 (= c!942702 (isEmpty!33709 s!2326))))

(declare-fun e!3352227 () Bool)

(assert (=> d!1726401 (= (matchZipper!1423 z!1189 s!2326) e!3352227)))

(declare-fun b!5407271 () Bool)

(assert (=> b!5407271 (= e!3352227 (nullableZipper!1440 z!1189))))

(declare-fun b!5407272 () Bool)

(assert (=> b!5407272 (= e!3352227 (matchZipper!1423 (derivationStepZipper!1418 z!1189 (head!11596 s!2326)) (tail!10693 s!2326)))))

(assert (= (and d!1726401 c!942702) b!5407271))

(assert (= (and d!1726401 (not c!942702)) b!5407272))

(assert (=> d!1726401 m!6431244))

(declare-fun m!6431456 () Bool)

(assert (=> b!5407271 m!6431456))

(assert (=> b!5407272 m!6431248))

(assert (=> b!5407272 m!6431248))

(declare-fun m!6431458 () Bool)

(assert (=> b!5407272 m!6431458))

(assert (=> b!5407272 m!6431252))

(assert (=> b!5407272 m!6431458))

(assert (=> b!5407272 m!6431252))

(declare-fun m!6431460 () Bool)

(assert (=> b!5407272 m!6431460))

(assert (=> b!5406310 d!1726401))

(declare-fun bm!386999 () Bool)

(declare-fun call!387005 () Bool)

(declare-fun c!942703 () Bool)

(assert (=> bm!386999 (= call!387005 (validRegex!6915 (ite c!942703 (regTwo!30871 (regTwo!30870 r!7292)) (regTwo!30870 (regTwo!30870 r!7292)))))))

(declare-fun bm!387000 () Bool)

(declare-fun call!387006 () Bool)

(declare-fun call!387004 () Bool)

(assert (=> bm!387000 (= call!387006 call!387004)))

(declare-fun b!5407273 () Bool)

(declare-fun res!2299174 () Bool)

(declare-fun e!3352228 () Bool)

(assert (=> b!5407273 (=> res!2299174 e!3352228)))

(assert (=> b!5407273 (= res!2299174 (not ((_ is Concat!24024) (regTwo!30870 r!7292))))))

(declare-fun e!3352229 () Bool)

(assert (=> b!5407273 (= e!3352229 e!3352228)))

(declare-fun b!5407274 () Bool)

(declare-fun e!3352232 () Bool)

(declare-fun e!3352233 () Bool)

(assert (=> b!5407274 (= e!3352232 e!3352233)))

(declare-fun res!2299172 () Bool)

(assert (=> b!5407274 (= res!2299172 (not (nullable!5348 (reg!15508 (regTwo!30870 r!7292)))))))

(assert (=> b!5407274 (=> (not res!2299172) (not e!3352233))))

(declare-fun b!5407275 () Bool)

(assert (=> b!5407275 (= e!3352232 e!3352229)))

(assert (=> b!5407275 (= c!942703 ((_ is Union!15179) (regTwo!30870 r!7292)))))

(declare-fun b!5407276 () Bool)

(declare-fun res!2299175 () Bool)

(declare-fun e!3352234 () Bool)

(assert (=> b!5407276 (=> (not res!2299175) (not e!3352234))))

(assert (=> b!5407276 (= res!2299175 call!387006)))

(assert (=> b!5407276 (= e!3352229 e!3352234)))

(declare-fun b!5407277 () Bool)

(assert (=> b!5407277 (= e!3352233 call!387004)))

(declare-fun bm!387001 () Bool)

(declare-fun c!942704 () Bool)

(assert (=> bm!387001 (= call!387004 (validRegex!6915 (ite c!942704 (reg!15508 (regTwo!30870 r!7292)) (ite c!942703 (regOne!30871 (regTwo!30870 r!7292)) (regOne!30870 (regTwo!30870 r!7292))))))))

(declare-fun b!5407278 () Bool)

(assert (=> b!5407278 (= e!3352234 call!387005)))

(declare-fun b!5407279 () Bool)

(declare-fun e!3352231 () Bool)

(assert (=> b!5407279 (= e!3352228 e!3352231)))

(declare-fun res!2299173 () Bool)

(assert (=> b!5407279 (=> (not res!2299173) (not e!3352231))))

(assert (=> b!5407279 (= res!2299173 call!387006)))

(declare-fun b!5407280 () Bool)

(assert (=> b!5407280 (= e!3352231 call!387005)))

(declare-fun b!5407281 () Bool)

(declare-fun e!3352230 () Bool)

(assert (=> b!5407281 (= e!3352230 e!3352232)))

(assert (=> b!5407281 (= c!942704 ((_ is Star!15179) (regTwo!30870 r!7292)))))

(declare-fun d!1726403 () Bool)

(declare-fun res!2299171 () Bool)

(assert (=> d!1726403 (=> res!2299171 e!3352230)))

(assert (=> d!1726403 (= res!2299171 ((_ is ElementMatch!15179) (regTwo!30870 r!7292)))))

(assert (=> d!1726403 (= (validRegex!6915 (regTwo!30870 r!7292)) e!3352230)))

(assert (= (and d!1726403 (not res!2299171)) b!5407281))

(assert (= (and b!5407281 c!942704) b!5407274))

(assert (= (and b!5407281 (not c!942704)) b!5407275))

(assert (= (and b!5407274 res!2299172) b!5407277))

(assert (= (and b!5407275 c!942703) b!5407276))

(assert (= (and b!5407275 (not c!942703)) b!5407273))

(assert (= (and b!5407276 res!2299175) b!5407278))

(assert (= (and b!5407273 (not res!2299174)) b!5407279))

(assert (= (and b!5407279 res!2299173) b!5407280))

(assert (= (or b!5407278 b!5407280) bm!386999))

(assert (= (or b!5407276 b!5407279) bm!387000))

(assert (= (or b!5407277 bm!387000) bm!387001))

(declare-fun m!6431462 () Bool)

(assert (=> bm!386999 m!6431462))

(declare-fun m!6431464 () Bool)

(assert (=> b!5407274 m!6431464))

(declare-fun m!6431466 () Bool)

(assert (=> bm!387001 m!6431466))

(assert (=> b!5406309 d!1726403))

(declare-fun d!1726405 () Bool)

(declare-fun lt!2204356 () Regex!15179)

(assert (=> d!1726405 (validRegex!6915 lt!2204356)))

(assert (=> d!1726405 (= lt!2204356 (generalisedUnion!1108 (unfocusZipperList!621 zl!343)))))

(assert (=> d!1726405 (= (unfocusZipper!921 zl!343) lt!2204356)))

(declare-fun bs!1249175 () Bool)

(assert (= bs!1249175 d!1726405))

(declare-fun m!6431468 () Bool)

(assert (=> bs!1249175 m!6431468))

(assert (=> bs!1249175 m!6430550))

(assert (=> bs!1249175 m!6430550))

(assert (=> bs!1249175 m!6430552))

(assert (=> b!5406308 d!1726405))

(declare-fun d!1726407 () Bool)

(declare-fun e!3352237 () Bool)

(assert (=> d!1726407 e!3352237))

(declare-fun res!2299178 () Bool)

(assert (=> d!1726407 (=> (not res!2299178) (not e!3352237))))

(declare-fun lt!2204359 () List!61837)

(declare-fun noDuplicate!1390 (List!61837) Bool)

(assert (=> d!1726407 (= res!2299178 (noDuplicate!1390 lt!2204359))))

(declare-fun choose!40810 ((InoxSet Context!9126)) List!61837)

(assert (=> d!1726407 (= lt!2204359 (choose!40810 z!1189))))

(assert (=> d!1726407 (= (toList!8963 z!1189) lt!2204359)))

(declare-fun b!5407284 () Bool)

(declare-fun content!11069 (List!61837) (InoxSet Context!9126))

(assert (=> b!5407284 (= e!3352237 (= (content!11069 lt!2204359) z!1189))))

(assert (= (and d!1726407 res!2299178) b!5407284))

(declare-fun m!6431470 () Bool)

(assert (=> d!1726407 m!6431470))

(declare-fun m!6431472 () Bool)

(assert (=> d!1726407 m!6431472))

(declare-fun m!6431474 () Bool)

(assert (=> b!5407284 m!6431474))

(assert (=> b!5406289 d!1726407))

(declare-fun bs!1249176 () Bool)

(declare-fun b!5407285 () Bool)

(assert (= bs!1249176 (and b!5407285 b!5406286)))

(declare-fun lambda!281961 () Int)

(assert (=> bs!1249176 (not (= lambda!281961 lambda!281878))))

(declare-fun bs!1249177 () Bool)

(assert (= bs!1249177 (and b!5407285 d!1726373)))

(assert (=> bs!1249177 (not (= lambda!281961 lambda!281959))))

(assert (=> bs!1249177 (not (= lambda!281961 lambda!281960))))

(declare-fun bs!1249178 () Bool)

(assert (= bs!1249178 (and b!5407285 d!1726369)))

(assert (=> bs!1249178 (not (= lambda!281961 lambda!281954))))

(declare-fun bs!1249179 () Bool)

(assert (= bs!1249179 (and b!5407285 b!5407112)))

(assert (=> bs!1249179 (not (= lambda!281961 lambda!281943))))

(declare-fun bs!1249180 () Bool)

(assert (= bs!1249180 (and b!5407285 b!5406316)))

(assert (=> bs!1249180 (not (= lambda!281961 lambda!281873))))

(assert (=> bs!1249180 (not (= lambda!281961 lambda!281874))))

(declare-fun bs!1249181 () Bool)

(assert (= bs!1249181 (and b!5407285 b!5407105)))

(assert (=> bs!1249181 (= (and (= (reg!15508 lt!2204139) (reg!15508 r!7292)) (= lt!2204139 r!7292)) (= lambda!281961 lambda!281942))))

(assert (=> bs!1249176 (not (= lambda!281961 lambda!281879))))

(assert (=> b!5407285 true))

(assert (=> b!5407285 true))

(declare-fun bs!1249182 () Bool)

(declare-fun b!5407292 () Bool)

(assert (= bs!1249182 (and b!5407292 b!5407285)))

(declare-fun lambda!281962 () Int)

(assert (=> bs!1249182 (not (= lambda!281962 lambda!281961))))

(declare-fun bs!1249183 () Bool)

(assert (= bs!1249183 (and b!5407292 b!5406286)))

(assert (=> bs!1249183 (not (= lambda!281962 lambda!281878))))

(declare-fun bs!1249184 () Bool)

(assert (= bs!1249184 (and b!5407292 d!1726373)))

(assert (=> bs!1249184 (not (= lambda!281962 lambda!281959))))

(assert (=> bs!1249184 (= (and (= (regOne!30870 lt!2204139) (regOne!30870 r!7292)) (= (regTwo!30870 lt!2204139) (regTwo!30870 r!7292))) (= lambda!281962 lambda!281960))))

(declare-fun bs!1249185 () Bool)

(assert (= bs!1249185 (and b!5407292 d!1726369)))

(assert (=> bs!1249185 (not (= lambda!281962 lambda!281954))))

(declare-fun bs!1249186 () Bool)

(assert (= bs!1249186 (and b!5407292 b!5407112)))

(assert (=> bs!1249186 (= (and (= (regOne!30870 lt!2204139) (regOne!30870 r!7292)) (= (regTwo!30870 lt!2204139) (regTwo!30870 r!7292))) (= lambda!281962 lambda!281943))))

(declare-fun bs!1249187 () Bool)

(assert (= bs!1249187 (and b!5407292 b!5406316)))

(assert (=> bs!1249187 (not (= lambda!281962 lambda!281873))))

(assert (=> bs!1249187 (= (and (= (regOne!30870 lt!2204139) (regOne!30870 r!7292)) (= (regTwo!30870 lt!2204139) (regTwo!30870 r!7292))) (= lambda!281962 lambda!281874))))

(declare-fun bs!1249188 () Bool)

(assert (= bs!1249188 (and b!5407292 b!5407105)))

(assert (=> bs!1249188 (not (= lambda!281962 lambda!281942))))

(assert (=> bs!1249183 (= (and (= (regOne!30870 lt!2204139) lt!2204180) (= (regTwo!30870 lt!2204139) (regTwo!30870 r!7292))) (= lambda!281962 lambda!281879))))

(assert (=> b!5407292 true))

(assert (=> b!5407292 true))

(declare-fun e!3352239 () Bool)

(declare-fun call!387007 () Bool)

(assert (=> b!5407285 (= e!3352239 call!387007)))

(declare-fun b!5407286 () Bool)

(declare-fun e!3352242 () Bool)

(declare-fun e!3352241 () Bool)

(assert (=> b!5407286 (= e!3352242 e!3352241)))

(declare-fun res!2299181 () Bool)

(assert (=> b!5407286 (= res!2299181 (matchRSpec!2282 (regOne!30871 lt!2204139) s!2326))))

(assert (=> b!5407286 (=> res!2299181 e!3352241)))

(declare-fun b!5407287 () Bool)

(declare-fun res!2299180 () Bool)

(assert (=> b!5407287 (=> res!2299180 e!3352239)))

(declare-fun call!387008 () Bool)

(assert (=> b!5407287 (= res!2299180 call!387008)))

(declare-fun e!3352243 () Bool)

(assert (=> b!5407287 (= e!3352243 e!3352239)))

(declare-fun b!5407288 () Bool)

(declare-fun c!942706 () Bool)

(assert (=> b!5407288 (= c!942706 ((_ is Union!15179) lt!2204139))))

(declare-fun e!3352240 () Bool)

(assert (=> b!5407288 (= e!3352240 e!3352242)))

(declare-fun b!5407289 () Bool)

(declare-fun e!3352238 () Bool)

(assert (=> b!5407289 (= e!3352238 call!387008)))

(declare-fun b!5407290 () Bool)

(declare-fun e!3352244 () Bool)

(assert (=> b!5407290 (= e!3352238 e!3352244)))

(declare-fun res!2299179 () Bool)

(assert (=> b!5407290 (= res!2299179 (not ((_ is EmptyLang!15179) lt!2204139)))))

(assert (=> b!5407290 (=> (not res!2299179) (not e!3352244))))

(declare-fun b!5407291 () Bool)

(assert (=> b!5407291 (= e!3352241 (matchRSpec!2282 (regTwo!30871 lt!2204139) s!2326))))

(declare-fun b!5407293 () Bool)

(assert (=> b!5407293 (= e!3352242 e!3352243)))

(declare-fun c!942705 () Bool)

(assert (=> b!5407293 (= c!942705 ((_ is Star!15179) lt!2204139))))

(declare-fun bm!387002 () Bool)

(assert (=> bm!387002 (= call!387008 (isEmpty!33709 s!2326))))

(declare-fun b!5407294 () Bool)

(declare-fun c!942707 () Bool)

(assert (=> b!5407294 (= c!942707 ((_ is ElementMatch!15179) lt!2204139))))

(assert (=> b!5407294 (= e!3352244 e!3352240)))

(declare-fun d!1726409 () Bool)

(declare-fun c!942708 () Bool)

(assert (=> d!1726409 (= c!942708 ((_ is EmptyExpr!15179) lt!2204139))))

(assert (=> d!1726409 (= (matchRSpec!2282 lt!2204139 s!2326) e!3352238)))

(assert (=> b!5407292 (= e!3352243 call!387007)))

(declare-fun b!5407295 () Bool)

(assert (=> b!5407295 (= e!3352240 (= s!2326 (Cons!61714 (c!942433 lt!2204139) Nil!61714)))))

(declare-fun bm!387003 () Bool)

(assert (=> bm!387003 (= call!387007 (Exists!2360 (ite c!942705 lambda!281961 lambda!281962)))))

(assert (= (and d!1726409 c!942708) b!5407289))

(assert (= (and d!1726409 (not c!942708)) b!5407290))

(assert (= (and b!5407290 res!2299179) b!5407294))

(assert (= (and b!5407294 c!942707) b!5407295))

(assert (= (and b!5407294 (not c!942707)) b!5407288))

(assert (= (and b!5407288 c!942706) b!5407286))

(assert (= (and b!5407288 (not c!942706)) b!5407293))

(assert (= (and b!5407286 (not res!2299181)) b!5407291))

(assert (= (and b!5407293 c!942705) b!5407287))

(assert (= (and b!5407293 (not c!942705)) b!5407292))

(assert (= (and b!5407287 (not res!2299180)) b!5407285))

(assert (= (or b!5407285 b!5407292) bm!387003))

(assert (= (or b!5407289 b!5407287) bm!387002))

(declare-fun m!6431476 () Bool)

(assert (=> b!5407286 m!6431476))

(declare-fun m!6431478 () Bool)

(assert (=> b!5407291 m!6431478))

(assert (=> bm!387002 m!6431244))

(declare-fun m!6431480 () Bool)

(assert (=> bm!387003 m!6431480))

(assert (=> b!5406288 d!1726409))

(declare-fun bm!387004 () Bool)

(declare-fun call!387009 () Bool)

(assert (=> bm!387004 (= call!387009 (isEmpty!33709 s!2326))))

(declare-fun b!5407296 () Bool)

(declare-fun res!2299187 () Bool)

(declare-fun e!3352250 () Bool)

(assert (=> b!5407296 (=> (not res!2299187) (not e!3352250))))

(assert (=> b!5407296 (= res!2299187 (isEmpty!33709 (tail!10693 s!2326)))))

(declare-fun b!5407297 () Bool)

(declare-fun e!3352251 () Bool)

(declare-fun e!3352248 () Bool)

(assert (=> b!5407297 (= e!3352251 e!3352248)))

(declare-fun res!2299186 () Bool)

(assert (=> b!5407297 (=> res!2299186 e!3352248)))

(assert (=> b!5407297 (= res!2299186 call!387009)))

(declare-fun b!5407298 () Bool)

(declare-fun e!3352246 () Bool)

(assert (=> b!5407298 (= e!3352246 e!3352251)))

(declare-fun res!2299184 () Bool)

(assert (=> b!5407298 (=> (not res!2299184) (not e!3352251))))

(declare-fun lt!2204360 () Bool)

(assert (=> b!5407298 (= res!2299184 (not lt!2204360))))

(declare-fun b!5407299 () Bool)

(declare-fun e!3352245 () Bool)

(declare-fun e!3352247 () Bool)

(assert (=> b!5407299 (= e!3352245 e!3352247)))

(declare-fun c!942710 () Bool)

(assert (=> b!5407299 (= c!942710 ((_ is EmptyLang!15179) lt!2204139))))

(declare-fun b!5407300 () Bool)

(declare-fun res!2299182 () Bool)

(assert (=> b!5407300 (=> res!2299182 e!3352246)))

(assert (=> b!5407300 (= res!2299182 (not ((_ is ElementMatch!15179) lt!2204139)))))

(assert (=> b!5407300 (= e!3352247 e!3352246)))

(declare-fun b!5407301 () Bool)

(assert (=> b!5407301 (= e!3352245 (= lt!2204360 call!387009))))

(declare-fun b!5407302 () Bool)

(declare-fun res!2299189 () Bool)

(assert (=> b!5407302 (=> (not res!2299189) (not e!3352250))))

(assert (=> b!5407302 (= res!2299189 (not call!387009))))

(declare-fun b!5407303 () Bool)

(declare-fun res!2299185 () Bool)

(assert (=> b!5407303 (=> res!2299185 e!3352246)))

(assert (=> b!5407303 (= res!2299185 e!3352250)))

(declare-fun res!2299188 () Bool)

(assert (=> b!5407303 (=> (not res!2299188) (not e!3352250))))

(assert (=> b!5407303 (= res!2299188 lt!2204360)))

(declare-fun b!5407304 () Bool)

(assert (=> b!5407304 (= e!3352247 (not lt!2204360))))

(declare-fun b!5407305 () Bool)

(assert (=> b!5407305 (= e!3352248 (not (= (head!11596 s!2326) (c!942433 lt!2204139))))))

(declare-fun b!5407306 () Bool)

(declare-fun e!3352249 () Bool)

(assert (=> b!5407306 (= e!3352249 (matchR!7364 (derivativeStep!4261 lt!2204139 (head!11596 s!2326)) (tail!10693 s!2326)))))

(declare-fun d!1726411 () Bool)

(assert (=> d!1726411 e!3352245))

(declare-fun c!942709 () Bool)

(assert (=> d!1726411 (= c!942709 ((_ is EmptyExpr!15179) lt!2204139))))

(assert (=> d!1726411 (= lt!2204360 e!3352249)))

(declare-fun c!942711 () Bool)

(assert (=> d!1726411 (= c!942711 (isEmpty!33709 s!2326))))

(assert (=> d!1726411 (validRegex!6915 lt!2204139)))

(assert (=> d!1726411 (= (matchR!7364 lt!2204139 s!2326) lt!2204360)))

(declare-fun b!5407307 () Bool)

(assert (=> b!5407307 (= e!3352250 (= (head!11596 s!2326) (c!942433 lt!2204139)))))

(declare-fun b!5407308 () Bool)

(assert (=> b!5407308 (= e!3352249 (nullable!5348 lt!2204139))))

(declare-fun b!5407309 () Bool)

(declare-fun res!2299183 () Bool)

(assert (=> b!5407309 (=> res!2299183 e!3352248)))

(assert (=> b!5407309 (= res!2299183 (not (isEmpty!33709 (tail!10693 s!2326))))))

(assert (= (and d!1726411 c!942711) b!5407308))

(assert (= (and d!1726411 (not c!942711)) b!5407306))

(assert (= (and d!1726411 c!942709) b!5407301))

(assert (= (and d!1726411 (not c!942709)) b!5407299))

(assert (= (and b!5407299 c!942710) b!5407304))

(assert (= (and b!5407299 (not c!942710)) b!5407300))

(assert (= (and b!5407300 (not res!2299182)) b!5407303))

(assert (= (and b!5407303 res!2299188) b!5407302))

(assert (= (and b!5407302 res!2299189) b!5407296))

(assert (= (and b!5407296 res!2299187) b!5407307))

(assert (= (and b!5407303 (not res!2299185)) b!5407298))

(assert (= (and b!5407298 res!2299184) b!5407297))

(assert (= (and b!5407297 (not res!2299186)) b!5407309))

(assert (= (and b!5407309 (not res!2299183)) b!5407305))

(assert (= (or b!5407301 b!5407297 b!5407302) bm!387004))

(assert (=> b!5407307 m!6431248))

(assert (=> b!5407309 m!6431252))

(assert (=> b!5407309 m!6431252))

(assert (=> b!5407309 m!6431318))

(assert (=> d!1726411 m!6431244))

(declare-fun m!6431482 () Bool)

(assert (=> d!1726411 m!6431482))

(assert (=> b!5407306 m!6431248))

(assert (=> b!5407306 m!6431248))

(declare-fun m!6431484 () Bool)

(assert (=> b!5407306 m!6431484))

(assert (=> b!5407306 m!6431252))

(assert (=> b!5407306 m!6431484))

(assert (=> b!5407306 m!6431252))

(declare-fun m!6431486 () Bool)

(assert (=> b!5407306 m!6431486))

(assert (=> bm!387004 m!6431244))

(declare-fun m!6431488 () Bool)

(assert (=> b!5407308 m!6431488))

(assert (=> b!5407305 m!6431248))

(assert (=> b!5407296 m!6431252))

(assert (=> b!5407296 m!6431252))

(assert (=> b!5407296 m!6431318))

(assert (=> b!5406288 d!1726411))

(declare-fun d!1726413 () Bool)

(assert (=> d!1726413 (= (matchR!7364 lt!2204139 s!2326) (matchRSpec!2282 lt!2204139 s!2326))))

(declare-fun lt!2204361 () Unit!154238)

(assert (=> d!1726413 (= lt!2204361 (choose!40800 lt!2204139 s!2326))))

(assert (=> d!1726413 (validRegex!6915 lt!2204139)))

(assert (=> d!1726413 (= (mainMatchTheorem!2282 lt!2204139 s!2326) lt!2204361)))

(declare-fun bs!1249189 () Bool)

(assert (= bs!1249189 d!1726413))

(assert (=> bs!1249189 m!6430612))

(assert (=> bs!1249189 m!6430610))

(declare-fun m!6431490 () Bool)

(assert (=> bs!1249189 m!6431490))

(assert (=> bs!1249189 m!6431482))

(assert (=> b!5406288 d!1726413))

(declare-fun d!1726415 () Bool)

(declare-fun lt!2204362 () Regex!15179)

(assert (=> d!1726415 (validRegex!6915 lt!2204362)))

(assert (=> d!1726415 (= lt!2204362 (generalisedUnion!1108 (unfocusZipperList!621 lt!2204145)))))

(assert (=> d!1726415 (= (unfocusZipper!921 lt!2204145) lt!2204362)))

(declare-fun bs!1249190 () Bool)

(assert (= bs!1249190 d!1726415))

(declare-fun m!6431492 () Bool)

(assert (=> bs!1249190 m!6431492))

(declare-fun m!6431494 () Bool)

(assert (=> bs!1249190 m!6431494))

(assert (=> bs!1249190 m!6431494))

(declare-fun m!6431496 () Bool)

(assert (=> bs!1249190 m!6431496))

(assert (=> b!5406307 d!1726415))

(declare-fun d!1726417 () Bool)

(assert (=> d!1726417 (= (flatMap!906 lt!2204183 lambda!281875) (dynLambda!24318 lambda!281875 lt!2204132))))

(declare-fun lt!2204363 () Unit!154238)

(assert (=> d!1726417 (= lt!2204363 (choose!40796 lt!2204183 lt!2204132 lambda!281875))))

(assert (=> d!1726417 (= lt!2204183 (store ((as const (Array Context!9126 Bool)) false) lt!2204132 true))))

(assert (=> d!1726417 (= (lemmaFlatMapOnSingletonSet!438 lt!2204183 lt!2204132 lambda!281875) lt!2204363)))

(declare-fun b_lambda!206615 () Bool)

(assert (=> (not b_lambda!206615) (not d!1726417)))

(declare-fun bs!1249191 () Bool)

(assert (= bs!1249191 d!1726417))

(assert (=> bs!1249191 m!6430460))

(declare-fun m!6431498 () Bool)

(assert (=> bs!1249191 m!6431498))

(declare-fun m!6431500 () Bool)

(assert (=> bs!1249191 m!6431500))

(assert (=> bs!1249191 m!6430456))

(assert (=> b!5406307 d!1726417))

(declare-fun d!1726419 () Bool)

(assert (=> d!1726419 (= (flatMap!906 lt!2204160 lambda!281875) (dynLambda!24318 lambda!281875 lt!2204154))))

(declare-fun lt!2204364 () Unit!154238)

(assert (=> d!1726419 (= lt!2204364 (choose!40796 lt!2204160 lt!2204154 lambda!281875))))

(assert (=> d!1726419 (= lt!2204160 (store ((as const (Array Context!9126 Bool)) false) lt!2204154 true))))

(assert (=> d!1726419 (= (lemmaFlatMapOnSingletonSet!438 lt!2204160 lt!2204154 lambda!281875) lt!2204364)))

(declare-fun b_lambda!206617 () Bool)

(assert (=> (not b_lambda!206617) (not d!1726419)))

(declare-fun bs!1249192 () Bool)

(assert (= bs!1249192 d!1726419))

(assert (=> bs!1249192 m!6430466))

(declare-fun m!6431502 () Bool)

(assert (=> bs!1249192 m!6431502))

(declare-fun m!6431504 () Bool)

(assert (=> bs!1249192 m!6431504))

(assert (=> bs!1249192 m!6430468))

(assert (=> b!5406307 d!1726419))

(declare-fun d!1726421 () Bool)

(assert (=> d!1726421 (= (flatMap!906 lt!2204160 lambda!281875) (choose!40794 lt!2204160 lambda!281875))))

(declare-fun bs!1249193 () Bool)

(assert (= bs!1249193 d!1726421))

(declare-fun m!6431506 () Bool)

(assert (=> bs!1249193 m!6431506))

(assert (=> b!5406307 d!1726421))

(declare-fun d!1726423 () Bool)

(assert (=> d!1726423 (= (flatMap!906 lt!2204183 lambda!281875) (choose!40794 lt!2204183 lambda!281875))))

(declare-fun bs!1249194 () Bool)

(assert (= bs!1249194 d!1726423))

(declare-fun m!6431508 () Bool)

(assert (=> bs!1249194 m!6431508))

(assert (=> b!5406307 d!1726423))

(declare-fun d!1726425 () Bool)

(declare-fun c!942713 () Bool)

(declare-fun e!3352254 () Bool)

(assert (=> d!1726425 (= c!942713 e!3352254)))

(declare-fun res!2299190 () Bool)

(assert (=> d!1726425 (=> (not res!2299190) (not e!3352254))))

(assert (=> d!1726425 (= res!2299190 ((_ is Cons!61712) (exprs!5063 lt!2204154)))))

(declare-fun e!3352252 () (InoxSet Context!9126))

(assert (=> d!1726425 (= (derivationStepZipperUp!551 lt!2204154 (h!68162 s!2326)) e!3352252)))

(declare-fun b!5407310 () Bool)

(declare-fun e!3352253 () (InoxSet Context!9126))

(assert (=> b!5407310 (= e!3352252 e!3352253)))

(declare-fun c!942712 () Bool)

(assert (=> b!5407310 (= c!942712 ((_ is Cons!61712) (exprs!5063 lt!2204154)))))

(declare-fun bm!387005 () Bool)

(declare-fun call!387010 () (InoxSet Context!9126))

(assert (=> bm!387005 (= call!387010 (derivationStepZipperDown!627 (h!68160 (exprs!5063 lt!2204154)) (Context!9127 (t!375059 (exprs!5063 lt!2204154))) (h!68162 s!2326)))))

(declare-fun b!5407311 () Bool)

(assert (=> b!5407311 (= e!3352253 call!387010)))

(declare-fun b!5407312 () Bool)

(assert (=> b!5407312 (= e!3352252 ((_ map or) call!387010 (derivationStepZipperUp!551 (Context!9127 (t!375059 (exprs!5063 lt!2204154))) (h!68162 s!2326))))))

(declare-fun b!5407313 () Bool)

(assert (=> b!5407313 (= e!3352253 ((as const (Array Context!9126 Bool)) false))))

(declare-fun b!5407314 () Bool)

(assert (=> b!5407314 (= e!3352254 (nullable!5348 (h!68160 (exprs!5063 lt!2204154))))))

(assert (= (and d!1726425 res!2299190) b!5407314))

(assert (= (and d!1726425 c!942713) b!5407312))

(assert (= (and d!1726425 (not c!942713)) b!5407310))

(assert (= (and b!5407310 c!942712) b!5407311))

(assert (= (and b!5407310 (not c!942712)) b!5407313))

(assert (= (or b!5407312 b!5407311) bm!387005))

(declare-fun m!6431510 () Bool)

(assert (=> bm!387005 m!6431510))

(declare-fun m!6431512 () Bool)

(assert (=> b!5407312 m!6431512))

(declare-fun m!6431514 () Bool)

(assert (=> b!5407314 m!6431514))

(assert (=> b!5406307 d!1726425))

(declare-fun d!1726427 () Bool)

(declare-fun c!942715 () Bool)

(declare-fun e!3352257 () Bool)

(assert (=> d!1726427 (= c!942715 e!3352257)))

(declare-fun res!2299191 () Bool)

(assert (=> d!1726427 (=> (not res!2299191) (not e!3352257))))

(assert (=> d!1726427 (= res!2299191 ((_ is Cons!61712) (exprs!5063 lt!2204132)))))

(declare-fun e!3352255 () (InoxSet Context!9126))

(assert (=> d!1726427 (= (derivationStepZipperUp!551 lt!2204132 (h!68162 s!2326)) e!3352255)))

(declare-fun b!5407315 () Bool)

(declare-fun e!3352256 () (InoxSet Context!9126))

(assert (=> b!5407315 (= e!3352255 e!3352256)))

(declare-fun c!942714 () Bool)

(assert (=> b!5407315 (= c!942714 ((_ is Cons!61712) (exprs!5063 lt!2204132)))))

(declare-fun bm!387006 () Bool)

(declare-fun call!387011 () (InoxSet Context!9126))

(assert (=> bm!387006 (= call!387011 (derivationStepZipperDown!627 (h!68160 (exprs!5063 lt!2204132)) (Context!9127 (t!375059 (exprs!5063 lt!2204132))) (h!68162 s!2326)))))

(declare-fun b!5407316 () Bool)

(assert (=> b!5407316 (= e!3352256 call!387011)))

(declare-fun b!5407317 () Bool)

(assert (=> b!5407317 (= e!3352255 ((_ map or) call!387011 (derivationStepZipperUp!551 (Context!9127 (t!375059 (exprs!5063 lt!2204132))) (h!68162 s!2326))))))

(declare-fun b!5407318 () Bool)

(assert (=> b!5407318 (= e!3352256 ((as const (Array Context!9126 Bool)) false))))

(declare-fun b!5407319 () Bool)

(assert (=> b!5407319 (= e!3352257 (nullable!5348 (h!68160 (exprs!5063 lt!2204132))))))

(assert (= (and d!1726427 res!2299191) b!5407319))

(assert (= (and d!1726427 c!942715) b!5407317))

(assert (= (and d!1726427 (not c!942715)) b!5407315))

(assert (= (and b!5407315 c!942714) b!5407316))

(assert (= (and b!5407315 (not c!942714)) b!5407318))

(assert (= (or b!5407317 b!5407316) bm!387006))

(declare-fun m!6431516 () Bool)

(assert (=> bm!387006 m!6431516))

(declare-fun m!6431518 () Bool)

(assert (=> b!5407317 m!6431518))

(declare-fun m!6431520 () Bool)

(assert (=> b!5407319 m!6431520))

(assert (=> b!5406307 d!1726427))

(declare-fun b!5407321 () Bool)

(declare-fun e!3352259 () List!61838)

(assert (=> b!5407321 (= e!3352259 (Cons!61714 (h!68162 Nil!61714) (++!13532 (t!375061 Nil!61714) s!2326)))))

(declare-fun b!5407323 () Bool)

(declare-fun e!3352258 () Bool)

(declare-fun lt!2204365 () List!61838)

(assert (=> b!5407323 (= e!3352258 (or (not (= s!2326 Nil!61714)) (= lt!2204365 Nil!61714)))))

(declare-fun b!5407322 () Bool)

(declare-fun res!2299192 () Bool)

(assert (=> b!5407322 (=> (not res!2299192) (not e!3352258))))

(assert (=> b!5407322 (= res!2299192 (= (size!39847 lt!2204365) (+ (size!39847 Nil!61714) (size!39847 s!2326))))))

(declare-fun b!5407320 () Bool)

(assert (=> b!5407320 (= e!3352259 s!2326)))

(declare-fun d!1726429 () Bool)

(assert (=> d!1726429 e!3352258))

(declare-fun res!2299193 () Bool)

(assert (=> d!1726429 (=> (not res!2299193) (not e!3352258))))

(assert (=> d!1726429 (= res!2299193 (= (content!11067 lt!2204365) ((_ map or) (content!11067 Nil!61714) (content!11067 s!2326))))))

(assert (=> d!1726429 (= lt!2204365 e!3352259)))

(declare-fun c!942716 () Bool)

(assert (=> d!1726429 (= c!942716 ((_ is Nil!61714) Nil!61714))))

(assert (=> d!1726429 (= (++!13532 Nil!61714 s!2326) lt!2204365)))

(assert (= (and d!1726429 c!942716) b!5407320))

(assert (= (and d!1726429 (not c!942716)) b!5407321))

(assert (= (and d!1726429 res!2299193) b!5407322))

(assert (= (and b!5407322 res!2299192) b!5407323))

(declare-fun m!6431522 () Bool)

(assert (=> b!5407321 m!6431522))

(declare-fun m!6431524 () Bool)

(assert (=> b!5407322 m!6431524))

(declare-fun m!6431526 () Bool)

(assert (=> b!5407322 m!6431526))

(declare-fun m!6431528 () Bool)

(assert (=> b!5407322 m!6431528))

(declare-fun m!6431530 () Bool)

(assert (=> d!1726429 m!6431530))

(declare-fun m!6431532 () Bool)

(assert (=> d!1726429 m!6431532))

(declare-fun m!6431534 () Bool)

(assert (=> d!1726429 m!6431534))

(assert (=> b!5406306 d!1726429))

(declare-fun d!1726431 () Bool)

(assert (=> d!1726431 (= (Exists!2360 lambda!281879) (choose!40804 lambda!281879))))

(declare-fun bs!1249195 () Bool)

(assert (= bs!1249195 d!1726431))

(declare-fun m!6431536 () Bool)

(assert (=> bs!1249195 m!6431536))

(assert (=> b!5406286 d!1726431))

(declare-fun b!5407324 () Bool)

(declare-fun res!2299196 () Bool)

(declare-fun e!3352261 () Bool)

(assert (=> b!5407324 (=> (not res!2299196) (not e!3352261))))

(declare-fun lt!2204367 () Option!15290)

(assert (=> b!5407324 (= res!2299196 (matchR!7364 (regTwo!30870 r!7292) (_2!35681 (get!21271 lt!2204367))))))

(declare-fun b!5407326 () Bool)

(declare-fun e!3352260 () Option!15290)

(assert (=> b!5407326 (= e!3352260 (Some!15289 (tuple2!64757 Nil!61714 s!2326)))))

(declare-fun b!5407327 () Bool)

(declare-fun e!3352263 () Bool)

(assert (=> b!5407327 (= e!3352263 (matchR!7364 (regTwo!30870 r!7292) s!2326))))

(declare-fun b!5407328 () Bool)

(declare-fun e!3352262 () Option!15290)

(assert (=> b!5407328 (= e!3352260 e!3352262)))

(declare-fun c!942717 () Bool)

(assert (=> b!5407328 (= c!942717 ((_ is Nil!61714) s!2326))))

(declare-fun b!5407329 () Bool)

(declare-fun res!2299195 () Bool)

(assert (=> b!5407329 (=> (not res!2299195) (not e!3352261))))

(assert (=> b!5407329 (= res!2299195 (matchR!7364 lt!2204180 (_1!35681 (get!21271 lt!2204367))))))

(declare-fun b!5407330 () Bool)

(declare-fun lt!2204368 () Unit!154238)

(declare-fun lt!2204366 () Unit!154238)

(assert (=> b!5407330 (= lt!2204368 lt!2204366)))

(assert (=> b!5407330 (= (++!13532 (++!13532 Nil!61714 (Cons!61714 (h!68162 s!2326) Nil!61714)) (t!375061 s!2326)) s!2326)))

(assert (=> b!5407330 (= lt!2204366 (lemmaMoveElementToOtherListKeepsConcatEq!1835 Nil!61714 (h!68162 s!2326) (t!375061 s!2326) s!2326))))

(assert (=> b!5407330 (= e!3352262 (findConcatSeparation!1704 lt!2204180 (regTwo!30870 r!7292) (++!13532 Nil!61714 (Cons!61714 (h!68162 s!2326) Nil!61714)) (t!375061 s!2326) s!2326))))

(declare-fun b!5407331 () Bool)

(declare-fun e!3352264 () Bool)

(assert (=> b!5407331 (= e!3352264 (not (isDefined!11993 lt!2204367)))))

(declare-fun b!5407332 () Bool)

(assert (=> b!5407332 (= e!3352262 None!15289)))

(declare-fun d!1726433 () Bool)

(assert (=> d!1726433 e!3352264))

(declare-fun res!2299194 () Bool)

(assert (=> d!1726433 (=> res!2299194 e!3352264)))

(assert (=> d!1726433 (= res!2299194 e!3352261)))

(declare-fun res!2299198 () Bool)

(assert (=> d!1726433 (=> (not res!2299198) (not e!3352261))))

(assert (=> d!1726433 (= res!2299198 (isDefined!11993 lt!2204367))))

(assert (=> d!1726433 (= lt!2204367 e!3352260)))

(declare-fun c!942718 () Bool)

(assert (=> d!1726433 (= c!942718 e!3352263)))

(declare-fun res!2299197 () Bool)

(assert (=> d!1726433 (=> (not res!2299197) (not e!3352263))))

(assert (=> d!1726433 (= res!2299197 (matchR!7364 lt!2204180 Nil!61714))))

(assert (=> d!1726433 (validRegex!6915 lt!2204180)))

(assert (=> d!1726433 (= (findConcatSeparation!1704 lt!2204180 (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326) lt!2204367)))

(declare-fun b!5407325 () Bool)

(assert (=> b!5407325 (= e!3352261 (= (++!13532 (_1!35681 (get!21271 lt!2204367)) (_2!35681 (get!21271 lt!2204367))) s!2326))))

(assert (= (and d!1726433 res!2299197) b!5407327))

(assert (= (and d!1726433 c!942718) b!5407326))

(assert (= (and d!1726433 (not c!942718)) b!5407328))

(assert (= (and b!5407328 c!942717) b!5407332))

(assert (= (and b!5407328 (not c!942717)) b!5407330))

(assert (= (and d!1726433 res!2299198) b!5407329))

(assert (= (and b!5407329 res!2299195) b!5407324))

(assert (= (and b!5407324 res!2299196) b!5407325))

(assert (= (and d!1726433 (not res!2299194)) b!5407331))

(assert (=> b!5407327 m!6431360))

(declare-fun m!6431538 () Bool)

(assert (=> b!5407331 m!6431538))

(assert (=> d!1726433 m!6431538))

(declare-fun m!6431540 () Bool)

(assert (=> d!1726433 m!6431540))

(assert (=> d!1726433 m!6430578))

(declare-fun m!6431542 () Bool)

(assert (=> b!5407325 m!6431542))

(declare-fun m!6431544 () Bool)

(assert (=> b!5407325 m!6431544))

(assert (=> b!5407330 m!6431010))

(assert (=> b!5407330 m!6431010))

(assert (=> b!5407330 m!6431014))

(assert (=> b!5407330 m!6431016))

(assert (=> b!5407330 m!6431010))

(declare-fun m!6431546 () Bool)

(assert (=> b!5407330 m!6431546))

(assert (=> b!5407329 m!6431542))

(declare-fun m!6431548 () Bool)

(assert (=> b!5407329 m!6431548))

(assert (=> b!5407324 m!6431542))

(declare-fun m!6431550 () Bool)

(assert (=> b!5407324 m!6431550))

(assert (=> b!5406286 d!1726433))

(assert (=> b!5406286 d!1726357))

(declare-fun d!1726435 () Bool)

(declare-fun c!942719 () Bool)

(assert (=> d!1726435 (= c!942719 (isEmpty!33709 lt!2204168))))

(declare-fun e!3352265 () Bool)

(assert (=> d!1726435 (= (matchZipper!1423 (store ((as const (Array Context!9126 Bool)) false) (Context!9127 (++!13531 lt!2204163 lt!2204155)) true) lt!2204168) e!3352265)))

(declare-fun b!5407333 () Bool)

(assert (=> b!5407333 (= e!3352265 (nullableZipper!1440 (store ((as const (Array Context!9126 Bool)) false) (Context!9127 (++!13531 lt!2204163 lt!2204155)) true)))))

(declare-fun b!5407334 () Bool)

(assert (=> b!5407334 (= e!3352265 (matchZipper!1423 (derivationStepZipper!1418 (store ((as const (Array Context!9126 Bool)) false) (Context!9127 (++!13531 lt!2204163 lt!2204155)) true) (head!11596 lt!2204168)) (tail!10693 lt!2204168)))))

(assert (= (and d!1726435 c!942719) b!5407333))

(assert (= (and d!1726435 (not c!942719)) b!5407334))

(declare-fun m!6431552 () Bool)

(assert (=> d!1726435 m!6431552))

(assert (=> b!5407333 m!6430450))

(declare-fun m!6431554 () Bool)

(assert (=> b!5407333 m!6431554))

(declare-fun m!6431556 () Bool)

(assert (=> b!5407334 m!6431556))

(assert (=> b!5407334 m!6430450))

(assert (=> b!5407334 m!6431556))

(declare-fun m!6431558 () Bool)

(assert (=> b!5407334 m!6431558))

(declare-fun m!6431560 () Bool)

(assert (=> b!5407334 m!6431560))

(assert (=> b!5407334 m!6431558))

(assert (=> b!5407334 m!6431560))

(declare-fun m!6431562 () Bool)

(assert (=> b!5407334 m!6431562))

(assert (=> b!5406286 d!1726435))

(declare-fun d!1726437 () Bool)

(assert (=> d!1726437 (matchR!7364 (Concat!24024 (reg!15508 (regOne!30870 r!7292)) lt!2204159) (++!13532 (_1!35681 lt!2204147) (_2!35681 lt!2204147)))))

(declare-fun lt!2204371 () Unit!154238)

(declare-fun choose!40811 (Regex!15179 Regex!15179 List!61838 List!61838) Unit!154238)

(assert (=> d!1726437 (= lt!2204371 (choose!40811 (reg!15508 (regOne!30870 r!7292)) lt!2204159 (_1!35681 lt!2204147) (_2!35681 lt!2204147)))))

(declare-fun e!3352268 () Bool)

(assert (=> d!1726437 e!3352268))

(declare-fun res!2299201 () Bool)

(assert (=> d!1726437 (=> (not res!2299201) (not e!3352268))))

(assert (=> d!1726437 (= res!2299201 (validRegex!6915 (reg!15508 (regOne!30870 r!7292))))))

(assert (=> d!1726437 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!202 (reg!15508 (regOne!30870 r!7292)) lt!2204159 (_1!35681 lt!2204147) (_2!35681 lt!2204147)) lt!2204371)))

(declare-fun b!5407337 () Bool)

(assert (=> b!5407337 (= e!3352268 (validRegex!6915 lt!2204159))))

(assert (= (and d!1726437 res!2299201) b!5407337))

(assert (=> d!1726437 m!6430526))

(assert (=> d!1726437 m!6430526))

(declare-fun m!6431564 () Bool)

(assert (=> d!1726437 m!6431564))

(declare-fun m!6431566 () Bool)

(assert (=> d!1726437 m!6431566))

(declare-fun m!6431568 () Bool)

(assert (=> d!1726437 m!6431568))

(declare-fun m!6431570 () Bool)

(assert (=> b!5407337 m!6431570))

(assert (=> b!5406286 d!1726437))

(declare-fun d!1726439 () Bool)

(assert (=> d!1726439 (= (matchR!7364 (reg!15508 (regOne!30870 r!7292)) (_1!35681 lt!2204147)) (matchZipper!1423 lt!2204160 (_1!35681 lt!2204147)))))

(declare-fun lt!2204374 () Unit!154238)

(declare-fun choose!40812 ((InoxSet Context!9126) List!61837 Regex!15179 List!61838) Unit!154238)

(assert (=> d!1726439 (= lt!2204374 (choose!40812 lt!2204160 lt!2204145 (reg!15508 (regOne!30870 r!7292)) (_1!35681 lt!2204147)))))

(assert (=> d!1726439 (validRegex!6915 (reg!15508 (regOne!30870 r!7292)))))

(assert (=> d!1726439 (= (theoremZipperRegexEquiv!493 lt!2204160 lt!2204145 (reg!15508 (regOne!30870 r!7292)) (_1!35681 lt!2204147)) lt!2204374)))

(declare-fun bs!1249196 () Bool)

(assert (= bs!1249196 d!1726439))

(assert (=> bs!1249196 m!6430570))

(assert (=> bs!1249196 m!6430532))

(declare-fun m!6431572 () Bool)

(assert (=> bs!1249196 m!6431572))

(assert (=> bs!1249196 m!6431568))

(assert (=> b!5406286 d!1726439))

(declare-fun d!1726441 () Bool)

(assert (=> d!1726441 (= (isDefined!11993 (findConcatSeparation!1704 lt!2204180 (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326)) (not (isEmpty!33708 (findConcatSeparation!1704 lt!2204180 (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326))))))

(declare-fun bs!1249197 () Bool)

(assert (= bs!1249197 d!1726441))

(assert (=> bs!1249197 m!6430588))

(declare-fun m!6431574 () Bool)

(assert (=> bs!1249197 m!6431574))

(assert (=> b!5406286 d!1726441))

(declare-fun bm!387007 () Bool)

(declare-fun call!387012 () Bool)

(assert (=> bm!387007 (= call!387012 (isEmpty!33709 (_2!35681 lt!2204147)))))

(declare-fun b!5407338 () Bool)

(declare-fun res!2299207 () Bool)

(declare-fun e!3352274 () Bool)

(assert (=> b!5407338 (=> (not res!2299207) (not e!3352274))))

(assert (=> b!5407338 (= res!2299207 (isEmpty!33709 (tail!10693 (_2!35681 lt!2204147))))))

(declare-fun b!5407339 () Bool)

(declare-fun e!3352275 () Bool)

(declare-fun e!3352272 () Bool)

(assert (=> b!5407339 (= e!3352275 e!3352272)))

(declare-fun res!2299206 () Bool)

(assert (=> b!5407339 (=> res!2299206 e!3352272)))

(assert (=> b!5407339 (= res!2299206 call!387012)))

(declare-fun b!5407340 () Bool)

(declare-fun e!3352270 () Bool)

(assert (=> b!5407340 (= e!3352270 e!3352275)))

(declare-fun res!2299204 () Bool)

(assert (=> b!5407340 (=> (not res!2299204) (not e!3352275))))

(declare-fun lt!2204375 () Bool)

(assert (=> b!5407340 (= res!2299204 (not lt!2204375))))

(declare-fun b!5407341 () Bool)

(declare-fun e!3352269 () Bool)

(declare-fun e!3352271 () Bool)

(assert (=> b!5407341 (= e!3352269 e!3352271)))

(declare-fun c!942721 () Bool)

(assert (=> b!5407341 (= c!942721 ((_ is EmptyLang!15179) lt!2204159))))

(declare-fun b!5407342 () Bool)

(declare-fun res!2299202 () Bool)

(assert (=> b!5407342 (=> res!2299202 e!3352270)))

(assert (=> b!5407342 (= res!2299202 (not ((_ is ElementMatch!15179) lt!2204159)))))

(assert (=> b!5407342 (= e!3352271 e!3352270)))

(declare-fun b!5407343 () Bool)

(assert (=> b!5407343 (= e!3352269 (= lt!2204375 call!387012))))

(declare-fun b!5407344 () Bool)

(declare-fun res!2299209 () Bool)

(assert (=> b!5407344 (=> (not res!2299209) (not e!3352274))))

(assert (=> b!5407344 (= res!2299209 (not call!387012))))

(declare-fun b!5407345 () Bool)

(declare-fun res!2299205 () Bool)

(assert (=> b!5407345 (=> res!2299205 e!3352270)))

(assert (=> b!5407345 (= res!2299205 e!3352274)))

(declare-fun res!2299208 () Bool)

(assert (=> b!5407345 (=> (not res!2299208) (not e!3352274))))

(assert (=> b!5407345 (= res!2299208 lt!2204375)))

(declare-fun b!5407346 () Bool)

(assert (=> b!5407346 (= e!3352271 (not lt!2204375))))

(declare-fun b!5407347 () Bool)

(assert (=> b!5407347 (= e!3352272 (not (= (head!11596 (_2!35681 lt!2204147)) (c!942433 lt!2204159))))))

(declare-fun b!5407348 () Bool)

(declare-fun e!3352273 () Bool)

(assert (=> b!5407348 (= e!3352273 (matchR!7364 (derivativeStep!4261 lt!2204159 (head!11596 (_2!35681 lt!2204147))) (tail!10693 (_2!35681 lt!2204147))))))

(declare-fun d!1726443 () Bool)

(assert (=> d!1726443 e!3352269))

(declare-fun c!942720 () Bool)

(assert (=> d!1726443 (= c!942720 ((_ is EmptyExpr!15179) lt!2204159))))

(assert (=> d!1726443 (= lt!2204375 e!3352273)))

(declare-fun c!942722 () Bool)

(assert (=> d!1726443 (= c!942722 (isEmpty!33709 (_2!35681 lt!2204147)))))

(assert (=> d!1726443 (validRegex!6915 lt!2204159)))

(assert (=> d!1726443 (= (matchR!7364 lt!2204159 (_2!35681 lt!2204147)) lt!2204375)))

(declare-fun b!5407349 () Bool)

(assert (=> b!5407349 (= e!3352274 (= (head!11596 (_2!35681 lt!2204147)) (c!942433 lt!2204159)))))

(declare-fun b!5407350 () Bool)

(assert (=> b!5407350 (= e!3352273 (nullable!5348 lt!2204159))))

(declare-fun b!5407351 () Bool)

(declare-fun res!2299203 () Bool)

(assert (=> b!5407351 (=> res!2299203 e!3352272)))

(assert (=> b!5407351 (= res!2299203 (not (isEmpty!33709 (tail!10693 (_2!35681 lt!2204147)))))))

(assert (= (and d!1726443 c!942722) b!5407350))

(assert (= (and d!1726443 (not c!942722)) b!5407348))

(assert (= (and d!1726443 c!942720) b!5407343))

(assert (= (and d!1726443 (not c!942720)) b!5407341))

(assert (= (and b!5407341 c!942721) b!5407346))

(assert (= (and b!5407341 (not c!942721)) b!5407342))

(assert (= (and b!5407342 (not res!2299202)) b!5407345))

(assert (= (and b!5407345 res!2299208) b!5407344))

(assert (= (and b!5407344 res!2299209) b!5407338))

(assert (= (and b!5407338 res!2299207) b!5407349))

(assert (= (and b!5407345 (not res!2299205)) b!5407340))

(assert (= (and b!5407340 res!2299204) b!5407339))

(assert (= (and b!5407339 (not res!2299206)) b!5407351))

(assert (= (and b!5407351 (not res!2299203)) b!5407347))

(assert (= (or b!5407343 b!5407339 b!5407344) bm!387007))

(assert (=> b!5407349 m!6431412))

(assert (=> b!5407351 m!6431416))

(assert (=> b!5407351 m!6431416))

(declare-fun m!6431576 () Bool)

(assert (=> b!5407351 m!6431576))

(assert (=> d!1726443 m!6431408))

(assert (=> d!1726443 m!6431570))

(assert (=> b!5407348 m!6431412))

(assert (=> b!5407348 m!6431412))

(declare-fun m!6431578 () Bool)

(assert (=> b!5407348 m!6431578))

(assert (=> b!5407348 m!6431416))

(assert (=> b!5407348 m!6431578))

(assert (=> b!5407348 m!6431416))

(declare-fun m!6431580 () Bool)

(assert (=> b!5407348 m!6431580))

(assert (=> bm!387007 m!6431408))

(declare-fun m!6431582 () Bool)

(assert (=> b!5407350 m!6431582))

(assert (=> b!5407347 m!6431412))

(assert (=> b!5407338 m!6431416))

(assert (=> b!5407338 m!6431416))

(assert (=> b!5407338 m!6431576))

(assert (=> b!5406286 d!1726443))

(declare-fun d!1726445 () Bool)

(assert (=> d!1726445 (= (matchR!7364 (Concat!24024 (Concat!24024 (reg!15508 (regOne!30870 r!7292)) lt!2204144) (regTwo!30870 r!7292)) s!2326) (matchR!7364 (Concat!24024 (reg!15508 (regOne!30870 r!7292)) (Concat!24024 lt!2204144 (regTwo!30870 r!7292))) s!2326))))

(declare-fun lt!2204378 () Unit!154238)

(declare-fun choose!40813 (Regex!15179 Regex!15179 Regex!15179 List!61838) Unit!154238)

(assert (=> d!1726445 (= lt!2204378 (choose!40813 (reg!15508 (regOne!30870 r!7292)) lt!2204144 (regTwo!30870 r!7292) s!2326))))

(declare-fun e!3352278 () Bool)

(assert (=> d!1726445 e!3352278))

(declare-fun res!2299214 () Bool)

(assert (=> d!1726445 (=> (not res!2299214) (not e!3352278))))

(assert (=> d!1726445 (= res!2299214 (validRegex!6915 (reg!15508 (regOne!30870 r!7292))))))

(assert (=> d!1726445 (= (lemmaConcatAssociative!32 (reg!15508 (regOne!30870 r!7292)) lt!2204144 (regTwo!30870 r!7292) s!2326) lt!2204378)))

(declare-fun b!5407356 () Bool)

(declare-fun res!2299215 () Bool)

(assert (=> b!5407356 (=> (not res!2299215) (not e!3352278))))

(assert (=> b!5407356 (= res!2299215 (validRegex!6915 lt!2204144))))

(declare-fun b!5407357 () Bool)

(assert (=> b!5407357 (= e!3352278 (validRegex!6915 (regTwo!30870 r!7292)))))

(assert (= (and d!1726445 res!2299214) b!5407356))

(assert (= (and b!5407356 res!2299215) b!5407357))

(declare-fun m!6431584 () Bool)

(assert (=> d!1726445 m!6431584))

(declare-fun m!6431586 () Bool)

(assert (=> d!1726445 m!6431586))

(declare-fun m!6431588 () Bool)

(assert (=> d!1726445 m!6431588))

(assert (=> d!1726445 m!6431568))

(declare-fun m!6431590 () Bool)

(assert (=> b!5407356 m!6431590))

(assert (=> b!5407357 m!6430554))

(assert (=> b!5406286 d!1726445))

(declare-fun bm!387008 () Bool)

(declare-fun call!387014 () Bool)

(declare-fun c!942723 () Bool)

(assert (=> bm!387008 (= call!387014 (validRegex!6915 (ite c!942723 (regTwo!30871 lt!2204180) (regTwo!30870 lt!2204180))))))

(declare-fun bm!387009 () Bool)

(declare-fun call!387015 () Bool)

(declare-fun call!387013 () Bool)

(assert (=> bm!387009 (= call!387015 call!387013)))

(declare-fun b!5407358 () Bool)

(declare-fun res!2299219 () Bool)

(declare-fun e!3352279 () Bool)

(assert (=> b!5407358 (=> res!2299219 e!3352279)))

(assert (=> b!5407358 (= res!2299219 (not ((_ is Concat!24024) lt!2204180)))))

(declare-fun e!3352280 () Bool)

(assert (=> b!5407358 (= e!3352280 e!3352279)))

(declare-fun b!5407359 () Bool)

(declare-fun e!3352283 () Bool)

(declare-fun e!3352284 () Bool)

(assert (=> b!5407359 (= e!3352283 e!3352284)))

(declare-fun res!2299217 () Bool)

(assert (=> b!5407359 (= res!2299217 (not (nullable!5348 (reg!15508 lt!2204180))))))

(assert (=> b!5407359 (=> (not res!2299217) (not e!3352284))))

(declare-fun b!5407360 () Bool)

(assert (=> b!5407360 (= e!3352283 e!3352280)))

(assert (=> b!5407360 (= c!942723 ((_ is Union!15179) lt!2204180))))

(declare-fun b!5407361 () Bool)

(declare-fun res!2299220 () Bool)

(declare-fun e!3352285 () Bool)

(assert (=> b!5407361 (=> (not res!2299220) (not e!3352285))))

(assert (=> b!5407361 (= res!2299220 call!387015)))

(assert (=> b!5407361 (= e!3352280 e!3352285)))

(declare-fun b!5407362 () Bool)

(assert (=> b!5407362 (= e!3352284 call!387013)))

(declare-fun bm!387010 () Bool)

(declare-fun c!942724 () Bool)

(assert (=> bm!387010 (= call!387013 (validRegex!6915 (ite c!942724 (reg!15508 lt!2204180) (ite c!942723 (regOne!30871 lt!2204180) (regOne!30870 lt!2204180)))))))

(declare-fun b!5407363 () Bool)

(assert (=> b!5407363 (= e!3352285 call!387014)))

(declare-fun b!5407364 () Bool)

(declare-fun e!3352282 () Bool)

(assert (=> b!5407364 (= e!3352279 e!3352282)))

(declare-fun res!2299218 () Bool)

(assert (=> b!5407364 (=> (not res!2299218) (not e!3352282))))

(assert (=> b!5407364 (= res!2299218 call!387015)))

(declare-fun b!5407365 () Bool)

(assert (=> b!5407365 (= e!3352282 call!387014)))

(declare-fun b!5407366 () Bool)

(declare-fun e!3352281 () Bool)

(assert (=> b!5407366 (= e!3352281 e!3352283)))

(assert (=> b!5407366 (= c!942724 ((_ is Star!15179) lt!2204180))))

(declare-fun d!1726447 () Bool)

(declare-fun res!2299216 () Bool)

(assert (=> d!1726447 (=> res!2299216 e!3352281)))

(assert (=> d!1726447 (= res!2299216 ((_ is ElementMatch!15179) lt!2204180))))

(assert (=> d!1726447 (= (validRegex!6915 lt!2204180) e!3352281)))

(assert (= (and d!1726447 (not res!2299216)) b!5407366))

(assert (= (and b!5407366 c!942724) b!5407359))

(assert (= (and b!5407366 (not c!942724)) b!5407360))

(assert (= (and b!5407359 res!2299217) b!5407362))

(assert (= (and b!5407360 c!942723) b!5407361))

(assert (= (and b!5407360 (not c!942723)) b!5407358))

(assert (= (and b!5407361 res!2299220) b!5407363))

(assert (= (and b!5407358 (not res!2299219)) b!5407364))

(assert (= (and b!5407364 res!2299218) b!5407365))

(assert (= (or b!5407363 b!5407365) bm!387008))

(assert (= (or b!5407361 b!5407364) bm!387009))

(assert (= (or b!5407362 bm!387009) bm!387010))

(declare-fun m!6431592 () Bool)

(assert (=> bm!387008 m!6431592))

(declare-fun m!6431594 () Bool)

(assert (=> b!5407359 m!6431594))

(declare-fun m!6431596 () Bool)

(assert (=> bm!387010 m!6431596))

(assert (=> b!5406286 d!1726447))

(declare-fun bm!387011 () Bool)

(declare-fun call!387016 () Bool)

(assert (=> bm!387011 (= call!387016 (isEmpty!33709 (_1!35681 lt!2204147)))))

(declare-fun b!5407367 () Bool)

(declare-fun res!2299226 () Bool)

(declare-fun e!3352291 () Bool)

(assert (=> b!5407367 (=> (not res!2299226) (not e!3352291))))

(assert (=> b!5407367 (= res!2299226 (isEmpty!33709 (tail!10693 (_1!35681 lt!2204147))))))

(declare-fun b!5407368 () Bool)

(declare-fun e!3352292 () Bool)

(declare-fun e!3352289 () Bool)

(assert (=> b!5407368 (= e!3352292 e!3352289)))

(declare-fun res!2299225 () Bool)

(assert (=> b!5407368 (=> res!2299225 e!3352289)))

(assert (=> b!5407368 (= res!2299225 call!387016)))

(declare-fun b!5407369 () Bool)

(declare-fun e!3352287 () Bool)

(assert (=> b!5407369 (= e!3352287 e!3352292)))

(declare-fun res!2299223 () Bool)

(assert (=> b!5407369 (=> (not res!2299223) (not e!3352292))))

(declare-fun lt!2204379 () Bool)

(assert (=> b!5407369 (= res!2299223 (not lt!2204379))))

(declare-fun b!5407370 () Bool)

(declare-fun e!3352286 () Bool)

(declare-fun e!3352288 () Bool)

(assert (=> b!5407370 (= e!3352286 e!3352288)))

(declare-fun c!942726 () Bool)

(assert (=> b!5407370 (= c!942726 ((_ is EmptyLang!15179) (reg!15508 (regOne!30870 r!7292))))))

(declare-fun b!5407371 () Bool)

(declare-fun res!2299221 () Bool)

(assert (=> b!5407371 (=> res!2299221 e!3352287)))

(assert (=> b!5407371 (= res!2299221 (not ((_ is ElementMatch!15179) (reg!15508 (regOne!30870 r!7292)))))))

(assert (=> b!5407371 (= e!3352288 e!3352287)))

(declare-fun b!5407372 () Bool)

(assert (=> b!5407372 (= e!3352286 (= lt!2204379 call!387016))))

(declare-fun b!5407373 () Bool)

(declare-fun res!2299228 () Bool)

(assert (=> b!5407373 (=> (not res!2299228) (not e!3352291))))

(assert (=> b!5407373 (= res!2299228 (not call!387016))))

(declare-fun b!5407374 () Bool)

(declare-fun res!2299224 () Bool)

(assert (=> b!5407374 (=> res!2299224 e!3352287)))

(assert (=> b!5407374 (= res!2299224 e!3352291)))

(declare-fun res!2299227 () Bool)

(assert (=> b!5407374 (=> (not res!2299227) (not e!3352291))))

(assert (=> b!5407374 (= res!2299227 lt!2204379)))

(declare-fun b!5407375 () Bool)

(assert (=> b!5407375 (= e!3352288 (not lt!2204379))))

(declare-fun b!5407376 () Bool)

(assert (=> b!5407376 (= e!3352289 (not (= (head!11596 (_1!35681 lt!2204147)) (c!942433 (reg!15508 (regOne!30870 r!7292))))))))

(declare-fun b!5407377 () Bool)

(declare-fun e!3352290 () Bool)

(assert (=> b!5407377 (= e!3352290 (matchR!7364 (derivativeStep!4261 (reg!15508 (regOne!30870 r!7292)) (head!11596 (_1!35681 lt!2204147))) (tail!10693 (_1!35681 lt!2204147))))))

(declare-fun d!1726449 () Bool)

(assert (=> d!1726449 e!3352286))

(declare-fun c!942725 () Bool)

(assert (=> d!1726449 (= c!942725 ((_ is EmptyExpr!15179) (reg!15508 (regOne!30870 r!7292))))))

(assert (=> d!1726449 (= lt!2204379 e!3352290)))

(declare-fun c!942727 () Bool)

(assert (=> d!1726449 (= c!942727 (isEmpty!33709 (_1!35681 lt!2204147)))))

(assert (=> d!1726449 (validRegex!6915 (reg!15508 (regOne!30870 r!7292)))))

(assert (=> d!1726449 (= (matchR!7364 (reg!15508 (regOne!30870 r!7292)) (_1!35681 lt!2204147)) lt!2204379)))

(declare-fun b!5407378 () Bool)

(assert (=> b!5407378 (= e!3352291 (= (head!11596 (_1!35681 lt!2204147)) (c!942433 (reg!15508 (regOne!30870 r!7292)))))))

(declare-fun b!5407379 () Bool)

(assert (=> b!5407379 (= e!3352290 (nullable!5348 (reg!15508 (regOne!30870 r!7292))))))

(declare-fun b!5407380 () Bool)

(declare-fun res!2299222 () Bool)

(assert (=> b!5407380 (=> res!2299222 e!3352289)))

(assert (=> b!5407380 (= res!2299222 (not (isEmpty!33709 (tail!10693 (_1!35681 lt!2204147)))))))

(assert (= (and d!1726449 c!942727) b!5407379))

(assert (= (and d!1726449 (not c!942727)) b!5407377))

(assert (= (and d!1726449 c!942725) b!5407372))

(assert (= (and d!1726449 (not c!942725)) b!5407370))

(assert (= (and b!5407370 c!942726) b!5407375))

(assert (= (and b!5407370 (not c!942726)) b!5407371))

(assert (= (and b!5407371 (not res!2299221)) b!5407374))

(assert (= (and b!5407374 res!2299227) b!5407373))

(assert (= (and b!5407373 res!2299228) b!5407367))

(assert (= (and b!5407367 res!2299226) b!5407378))

(assert (= (and b!5407374 (not res!2299224)) b!5407369))

(assert (= (and b!5407369 res!2299223) b!5407368))

(assert (= (and b!5407368 (not res!2299225)) b!5407380))

(assert (= (and b!5407380 (not res!2299222)) b!5407376))

(assert (= (or b!5407372 b!5407368 b!5407373) bm!387011))

(assert (=> b!5407378 m!6431040))

(assert (=> b!5407380 m!6431044))

(assert (=> b!5407380 m!6431044))

(declare-fun m!6431598 () Bool)

(assert (=> b!5407380 m!6431598))

(assert (=> d!1726449 m!6431036))

(assert (=> d!1726449 m!6431568))

(assert (=> b!5407377 m!6431040))

(assert (=> b!5407377 m!6431040))

(declare-fun m!6431600 () Bool)

(assert (=> b!5407377 m!6431600))

(assert (=> b!5407377 m!6431044))

(assert (=> b!5407377 m!6431600))

(assert (=> b!5407377 m!6431044))

(declare-fun m!6431602 () Bool)

(assert (=> b!5407377 m!6431602))

(assert (=> bm!387011 m!6431036))

(declare-fun m!6431604 () Bool)

(assert (=> b!5407379 m!6431604))

(assert (=> b!5407376 m!6431040))

(assert (=> b!5407367 m!6431044))

(assert (=> b!5407367 m!6431044))

(assert (=> b!5407367 m!6431598))

(assert (=> b!5406286 d!1726449))

(declare-fun d!1726451 () Bool)

(assert (=> d!1726451 (= (Exists!2360 lambda!281878) (choose!40804 lambda!281878))))

(declare-fun bs!1249198 () Bool)

(assert (= bs!1249198 d!1726451))

(declare-fun m!6431606 () Bool)

(assert (=> bs!1249198 m!6431606))

(assert (=> b!5406286 d!1726451))

(declare-fun bs!1249199 () Bool)

(declare-fun d!1726453 () Bool)

(assert (= bs!1249199 (and d!1726453 d!1726353)))

(declare-fun lambda!281965 () Int)

(assert (=> bs!1249199 (= lambda!281965 lambda!281946)))

(declare-fun bs!1249200 () Bool)

(assert (= bs!1249200 (and d!1726453 d!1726331)))

(assert (=> bs!1249200 (= lambda!281965 lambda!281934)))

(declare-fun bs!1249201 () Bool)

(assert (= bs!1249201 (and d!1726453 b!5406317)))

(assert (=> bs!1249201 (= lambda!281965 lambda!281877)))

(declare-fun bs!1249202 () Bool)

(assert (= bs!1249202 (and d!1726453 d!1726307)))

(assert (=> bs!1249202 (= lambda!281965 lambda!281927)))

(declare-fun bs!1249203 () Bool)

(assert (= bs!1249203 (and d!1726453 d!1726335)))

(assert (=> bs!1249203 (= lambda!281965 lambda!281937)))

(assert (=> d!1726453 (matchZipper!1423 (store ((as const (Array Context!9126 Bool)) false) (Context!9127 (++!13531 (exprs!5063 lt!2204154) (exprs!5063 lt!2204132))) true) (++!13532 (_1!35681 lt!2204147) (_2!35681 lt!2204147)))))

(declare-fun lt!2204385 () Unit!154238)

(assert (=> d!1726453 (= lt!2204385 (lemmaConcatPreservesForall!204 (exprs!5063 lt!2204154) (exprs!5063 lt!2204132) lambda!281965))))

(declare-fun lt!2204384 () Unit!154238)

(declare-fun choose!40814 (Context!9126 Context!9126 List!61838 List!61838) Unit!154238)

(assert (=> d!1726453 (= lt!2204384 (choose!40814 lt!2204154 lt!2204132 (_1!35681 lt!2204147) (_2!35681 lt!2204147)))))

(assert (=> d!1726453 (matchZipper!1423 (store ((as const (Array Context!9126 Bool)) false) lt!2204154 true) (_1!35681 lt!2204147))))

(assert (=> d!1726453 (= (lemmaConcatenateContextMatchesConcatOfStrings!52 lt!2204154 lt!2204132 (_1!35681 lt!2204147) (_2!35681 lt!2204147)) lt!2204384)))

(declare-fun bs!1249204 () Bool)

(assert (= bs!1249204 d!1726453))

(declare-fun m!6431608 () Bool)

(assert (=> bs!1249204 m!6431608))

(declare-fun m!6431610 () Bool)

(assert (=> bs!1249204 m!6431610))

(assert (=> bs!1249204 m!6430526))

(declare-fun m!6431612 () Bool)

(assert (=> bs!1249204 m!6431612))

(assert (=> bs!1249204 m!6430526))

(assert (=> bs!1249204 m!6430468))

(declare-fun m!6431614 () Bool)

(assert (=> bs!1249204 m!6431614))

(declare-fun m!6431616 () Bool)

(assert (=> bs!1249204 m!6431616))

(assert (=> bs!1249204 m!6431610))

(assert (=> bs!1249204 m!6430468))

(declare-fun m!6431618 () Bool)

(assert (=> bs!1249204 m!6431618))

(assert (=> b!5406286 d!1726453))

(declare-fun bs!1249205 () Bool)

(declare-fun d!1726455 () Bool)

(assert (= bs!1249205 (and d!1726455 b!5407285)))

(declare-fun lambda!281966 () Int)

(assert (=> bs!1249205 (not (= lambda!281966 lambda!281961))))

(declare-fun bs!1249206 () Bool)

(assert (= bs!1249206 (and d!1726455 b!5406286)))

(assert (=> bs!1249206 (= lambda!281966 lambda!281878)))

(declare-fun bs!1249207 () Bool)

(assert (= bs!1249207 (and d!1726455 d!1726373)))

(assert (=> bs!1249207 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281966 lambda!281959))))

(assert (=> bs!1249207 (not (= lambda!281966 lambda!281960))))

(declare-fun bs!1249208 () Bool)

(assert (= bs!1249208 (and d!1726455 b!5407112)))

(assert (=> bs!1249208 (not (= lambda!281966 lambda!281943))))

(declare-fun bs!1249209 () Bool)

(assert (= bs!1249209 (and d!1726455 b!5406316)))

(assert (=> bs!1249209 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281966 lambda!281873))))

(assert (=> bs!1249209 (not (= lambda!281966 lambda!281874))))

(declare-fun bs!1249210 () Bool)

(assert (= bs!1249210 (and d!1726455 b!5407105)))

(assert (=> bs!1249210 (not (= lambda!281966 lambda!281942))))

(assert (=> bs!1249206 (not (= lambda!281966 lambda!281879))))

(declare-fun bs!1249211 () Bool)

(assert (= bs!1249211 (and d!1726455 b!5407292)))

(assert (=> bs!1249211 (not (= lambda!281966 lambda!281962))))

(declare-fun bs!1249212 () Bool)

(assert (= bs!1249212 (and d!1726455 d!1726369)))

(assert (=> bs!1249212 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281966 lambda!281954))))

(assert (=> d!1726455 true))

(assert (=> d!1726455 true))

(assert (=> d!1726455 true))

(declare-fun lambda!281967 () Int)

(assert (=> bs!1249205 (not (= lambda!281967 lambda!281961))))

(assert (=> bs!1249206 (not (= lambda!281967 lambda!281878))))

(assert (=> bs!1249207 (not (= lambda!281967 lambda!281959))))

(assert (=> bs!1249207 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281967 lambda!281960))))

(declare-fun bs!1249213 () Bool)

(assert (= bs!1249213 d!1726455))

(assert (=> bs!1249213 (not (= lambda!281967 lambda!281966))))

(assert (=> bs!1249208 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281967 lambda!281943))))

(assert (=> bs!1249209 (not (= lambda!281967 lambda!281873))))

(assert (=> bs!1249209 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281967 lambda!281874))))

(assert (=> bs!1249210 (not (= lambda!281967 lambda!281942))))

(assert (=> bs!1249206 (= lambda!281967 lambda!281879)))

(assert (=> bs!1249211 (= (and (= lt!2204180 (regOne!30870 lt!2204139)) (= (regTwo!30870 r!7292) (regTwo!30870 lt!2204139))) (= lambda!281967 lambda!281962))))

(assert (=> bs!1249212 (not (= lambda!281967 lambda!281954))))

(assert (=> d!1726455 true))

(assert (=> d!1726455 true))

(assert (=> d!1726455 true))

(assert (=> d!1726455 (= (Exists!2360 lambda!281966) (Exists!2360 lambda!281967))))

(declare-fun lt!2204386 () Unit!154238)

(assert (=> d!1726455 (= lt!2204386 (choose!40807 lt!2204180 (regTwo!30870 r!7292) s!2326))))

(assert (=> d!1726455 (validRegex!6915 lt!2204180)))

(assert (=> d!1726455 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1014 lt!2204180 (regTwo!30870 r!7292) s!2326) lt!2204386)))

(declare-fun m!6431620 () Bool)

(assert (=> bs!1249213 m!6431620))

(declare-fun m!6431622 () Bool)

(assert (=> bs!1249213 m!6431622))

(declare-fun m!6431624 () Bool)

(assert (=> bs!1249213 m!6431624))

(assert (=> bs!1249213 m!6430578))

(assert (=> b!5406286 d!1726455))

(declare-fun d!1726457 () Bool)

(assert (=> d!1726457 (= (matchR!7364 lt!2204159 (_2!35681 lt!2204147)) (matchZipper!1423 lt!2204183 (_2!35681 lt!2204147)))))

(declare-fun lt!2204387 () Unit!154238)

(assert (=> d!1726457 (= lt!2204387 (choose!40812 lt!2204183 lt!2204165 lt!2204159 (_2!35681 lt!2204147)))))

(assert (=> d!1726457 (validRegex!6915 lt!2204159)))

(assert (=> d!1726457 (= (theoremZipperRegexEquiv!493 lt!2204183 lt!2204165 lt!2204159 (_2!35681 lt!2204147)) lt!2204387)))

(declare-fun bs!1249214 () Bool)

(assert (= bs!1249214 d!1726457))

(assert (=> bs!1249214 m!6430598))

(assert (=> bs!1249214 m!6430478))

(declare-fun m!6431626 () Bool)

(assert (=> bs!1249214 m!6431626))

(assert (=> bs!1249214 m!6431570))

(assert (=> b!5406286 d!1726457))

(declare-fun bm!387012 () Bool)

(declare-fun call!387017 () Bool)

(assert (=> bm!387012 (= call!387017 (isEmpty!33709 lt!2204168))))

(declare-fun b!5407381 () Bool)

(declare-fun res!2299234 () Bool)

(declare-fun e!3352298 () Bool)

(assert (=> b!5407381 (=> (not res!2299234) (not e!3352298))))

(assert (=> b!5407381 (= res!2299234 (isEmpty!33709 (tail!10693 lt!2204168)))))

(declare-fun b!5407382 () Bool)

(declare-fun e!3352299 () Bool)

(declare-fun e!3352296 () Bool)

(assert (=> b!5407382 (= e!3352299 e!3352296)))

(declare-fun res!2299233 () Bool)

(assert (=> b!5407382 (=> res!2299233 e!3352296)))

(assert (=> b!5407382 (= res!2299233 call!387017)))

(declare-fun b!5407383 () Bool)

(declare-fun e!3352294 () Bool)

(assert (=> b!5407383 (= e!3352294 e!3352299)))

(declare-fun res!2299231 () Bool)

(assert (=> b!5407383 (=> (not res!2299231) (not e!3352299))))

(declare-fun lt!2204388 () Bool)

(assert (=> b!5407383 (= res!2299231 (not lt!2204388))))

(declare-fun b!5407384 () Bool)

(declare-fun e!3352293 () Bool)

(declare-fun e!3352295 () Bool)

(assert (=> b!5407384 (= e!3352293 e!3352295)))

(declare-fun c!942729 () Bool)

(assert (=> b!5407384 (= c!942729 ((_ is EmptyLang!15179) lt!2204139))))

(declare-fun b!5407385 () Bool)

(declare-fun res!2299229 () Bool)

(assert (=> b!5407385 (=> res!2299229 e!3352294)))

(assert (=> b!5407385 (= res!2299229 (not ((_ is ElementMatch!15179) lt!2204139)))))

(assert (=> b!5407385 (= e!3352295 e!3352294)))

(declare-fun b!5407386 () Bool)

(assert (=> b!5407386 (= e!3352293 (= lt!2204388 call!387017))))

(declare-fun b!5407387 () Bool)

(declare-fun res!2299236 () Bool)

(assert (=> b!5407387 (=> (not res!2299236) (not e!3352298))))

(assert (=> b!5407387 (= res!2299236 (not call!387017))))

(declare-fun b!5407388 () Bool)

(declare-fun res!2299232 () Bool)

(assert (=> b!5407388 (=> res!2299232 e!3352294)))

(assert (=> b!5407388 (= res!2299232 e!3352298)))

(declare-fun res!2299235 () Bool)

(assert (=> b!5407388 (=> (not res!2299235) (not e!3352298))))

(assert (=> b!5407388 (= res!2299235 lt!2204388)))

(declare-fun b!5407389 () Bool)

(assert (=> b!5407389 (= e!3352295 (not lt!2204388))))

(declare-fun b!5407390 () Bool)

(assert (=> b!5407390 (= e!3352296 (not (= (head!11596 lt!2204168) (c!942433 lt!2204139))))))

(declare-fun b!5407391 () Bool)

(declare-fun e!3352297 () Bool)

(assert (=> b!5407391 (= e!3352297 (matchR!7364 (derivativeStep!4261 lt!2204139 (head!11596 lt!2204168)) (tail!10693 lt!2204168)))))

(declare-fun d!1726459 () Bool)

(assert (=> d!1726459 e!3352293))

(declare-fun c!942728 () Bool)

(assert (=> d!1726459 (= c!942728 ((_ is EmptyExpr!15179) lt!2204139))))

(assert (=> d!1726459 (= lt!2204388 e!3352297)))

(declare-fun c!942730 () Bool)

(assert (=> d!1726459 (= c!942730 (isEmpty!33709 lt!2204168))))

(assert (=> d!1726459 (validRegex!6915 lt!2204139)))

(assert (=> d!1726459 (= (matchR!7364 lt!2204139 lt!2204168) lt!2204388)))

(declare-fun b!5407392 () Bool)

(assert (=> b!5407392 (= e!3352298 (= (head!11596 lt!2204168) (c!942433 lt!2204139)))))

(declare-fun b!5407393 () Bool)

(assert (=> b!5407393 (= e!3352297 (nullable!5348 lt!2204139))))

(declare-fun b!5407394 () Bool)

(declare-fun res!2299230 () Bool)

(assert (=> b!5407394 (=> res!2299230 e!3352296)))

(assert (=> b!5407394 (= res!2299230 (not (isEmpty!33709 (tail!10693 lt!2204168))))))

(assert (= (and d!1726459 c!942730) b!5407393))

(assert (= (and d!1726459 (not c!942730)) b!5407391))

(assert (= (and d!1726459 c!942728) b!5407386))

(assert (= (and d!1726459 (not c!942728)) b!5407384))

(assert (= (and b!5407384 c!942729) b!5407389))

(assert (= (and b!5407384 (not c!942729)) b!5407385))

(assert (= (and b!5407385 (not res!2299229)) b!5407388))

(assert (= (and b!5407388 res!2299235) b!5407387))

(assert (= (and b!5407387 res!2299236) b!5407381))

(assert (= (and b!5407381 res!2299234) b!5407392))

(assert (= (and b!5407388 (not res!2299232)) b!5407383))

(assert (= (and b!5407383 res!2299231) b!5407382))

(assert (= (and b!5407382 (not res!2299233)) b!5407394))

(assert (= (and b!5407394 (not res!2299230)) b!5407390))

(assert (= (or b!5407386 b!5407382 b!5407387) bm!387012))

(assert (=> b!5407392 m!6431556))

(assert (=> b!5407394 m!6431560))

(assert (=> b!5407394 m!6431560))

(declare-fun m!6431628 () Bool)

(assert (=> b!5407394 m!6431628))

(assert (=> d!1726459 m!6431552))

(assert (=> d!1726459 m!6431482))

(assert (=> b!5407391 m!6431556))

(assert (=> b!5407391 m!6431556))

(declare-fun m!6431630 () Bool)

(assert (=> b!5407391 m!6431630))

(assert (=> b!5407391 m!6431560))

(assert (=> b!5407391 m!6431630))

(assert (=> b!5407391 m!6431560))

(declare-fun m!6431632 () Bool)

(assert (=> b!5407391 m!6431632))

(assert (=> bm!387012 m!6431552))

(assert (=> b!5407393 m!6431488))

(assert (=> b!5407390 m!6431556))

(assert (=> b!5407381 m!6431560))

(assert (=> b!5407381 m!6431560))

(assert (=> b!5407381 m!6431628))

(assert (=> b!5406286 d!1726459))

(declare-fun bs!1249215 () Bool)

(declare-fun d!1726461 () Bool)

(assert (= bs!1249215 (and d!1726461 b!5407285)))

(declare-fun lambda!281968 () Int)

(assert (=> bs!1249215 (not (= lambda!281968 lambda!281961))))

(declare-fun bs!1249216 () Bool)

(assert (= bs!1249216 (and d!1726461 b!5406286)))

(assert (=> bs!1249216 (= lambda!281968 lambda!281878)))

(declare-fun bs!1249217 () Bool)

(assert (= bs!1249217 (and d!1726461 d!1726373)))

(assert (=> bs!1249217 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281968 lambda!281959))))

(assert (=> bs!1249217 (not (= lambda!281968 lambda!281960))))

(declare-fun bs!1249218 () Bool)

(assert (= bs!1249218 (and d!1726461 d!1726455)))

(assert (=> bs!1249218 (= lambda!281968 lambda!281966)))

(assert (=> bs!1249218 (not (= lambda!281968 lambda!281967))))

(declare-fun bs!1249219 () Bool)

(assert (= bs!1249219 (and d!1726461 b!5407112)))

(assert (=> bs!1249219 (not (= lambda!281968 lambda!281943))))

(declare-fun bs!1249220 () Bool)

(assert (= bs!1249220 (and d!1726461 b!5406316)))

(assert (=> bs!1249220 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281968 lambda!281873))))

(assert (=> bs!1249220 (not (= lambda!281968 lambda!281874))))

(declare-fun bs!1249221 () Bool)

(assert (= bs!1249221 (and d!1726461 b!5407105)))

(assert (=> bs!1249221 (not (= lambda!281968 lambda!281942))))

(assert (=> bs!1249216 (not (= lambda!281968 lambda!281879))))

(declare-fun bs!1249222 () Bool)

(assert (= bs!1249222 (and d!1726461 b!5407292)))

(assert (=> bs!1249222 (not (= lambda!281968 lambda!281962))))

(declare-fun bs!1249223 () Bool)

(assert (= bs!1249223 (and d!1726461 d!1726369)))

(assert (=> bs!1249223 (= (= lt!2204180 (regOne!30870 r!7292)) (= lambda!281968 lambda!281954))))

(assert (=> d!1726461 true))

(assert (=> d!1726461 true))

(assert (=> d!1726461 true))

(assert (=> d!1726461 (= (isDefined!11993 (findConcatSeparation!1704 lt!2204180 (regTwo!30870 r!7292) Nil!61714 s!2326 s!2326)) (Exists!2360 lambda!281968))))

(declare-fun lt!2204389 () Unit!154238)

(assert (=> d!1726461 (= lt!2204389 (choose!40805 lt!2204180 (regTwo!30870 r!7292) s!2326))))

(assert (=> d!1726461 (validRegex!6915 lt!2204180)))

(assert (=> d!1726461 (= (lemmaFindConcatSeparationEquivalentToExists!1468 lt!2204180 (regTwo!30870 r!7292) s!2326) lt!2204389)))

(declare-fun bs!1249224 () Bool)

(assert (= bs!1249224 d!1726461))

(assert (=> bs!1249224 m!6430578))

(declare-fun m!6431634 () Bool)

(assert (=> bs!1249224 m!6431634))

(assert (=> bs!1249224 m!6430588))

(assert (=> bs!1249224 m!6430592))

(declare-fun m!6431636 () Bool)

(assert (=> bs!1249224 m!6431636))

(assert (=> bs!1249224 m!6430588))

(assert (=> b!5406286 d!1726461))

(assert (=> b!5406286 d!1726359))

(declare-fun bm!387013 () Bool)

(declare-fun call!387018 () Bool)

(assert (=> bm!387013 (= call!387018 (isEmpty!33709 s!2326))))

(declare-fun b!5407395 () Bool)

(declare-fun res!2299242 () Bool)

(declare-fun e!3352305 () Bool)

(assert (=> b!5407395 (=> (not res!2299242) (not e!3352305))))

(assert (=> b!5407395 (= res!2299242 (isEmpty!33709 (tail!10693 s!2326)))))

(declare-fun b!5407396 () Bool)

(declare-fun e!3352306 () Bool)

(declare-fun e!3352303 () Bool)

(assert (=> b!5407396 (= e!3352306 e!3352303)))

(declare-fun res!2299241 () Bool)

(assert (=> b!5407396 (=> res!2299241 e!3352303)))

(assert (=> b!5407396 (= res!2299241 call!387018)))

(declare-fun b!5407397 () Bool)

(declare-fun e!3352301 () Bool)

(assert (=> b!5407397 (= e!3352301 e!3352306)))

(declare-fun res!2299239 () Bool)

(assert (=> b!5407397 (=> (not res!2299239) (not e!3352306))))

(declare-fun lt!2204390 () Bool)

(assert (=> b!5407397 (= res!2299239 (not lt!2204390))))

(declare-fun b!5407398 () Bool)

(declare-fun e!3352300 () Bool)

(declare-fun e!3352302 () Bool)

(assert (=> b!5407398 (= e!3352300 e!3352302)))

(declare-fun c!942732 () Bool)

(assert (=> b!5407398 (= c!942732 ((_ is EmptyLang!15179) lt!2204172))))

(declare-fun b!5407399 () Bool)

(declare-fun res!2299237 () Bool)

(assert (=> b!5407399 (=> res!2299237 e!3352301)))

(assert (=> b!5407399 (= res!2299237 (not ((_ is ElementMatch!15179) lt!2204172)))))

(assert (=> b!5407399 (= e!3352302 e!3352301)))

(declare-fun b!5407400 () Bool)

(assert (=> b!5407400 (= e!3352300 (= lt!2204390 call!387018))))

(declare-fun b!5407401 () Bool)

(declare-fun res!2299244 () Bool)

(assert (=> b!5407401 (=> (not res!2299244) (not e!3352305))))

(assert (=> b!5407401 (= res!2299244 (not call!387018))))

(declare-fun b!5407402 () Bool)

(declare-fun res!2299240 () Bool)

(assert (=> b!5407402 (=> res!2299240 e!3352301)))

(assert (=> b!5407402 (= res!2299240 e!3352305)))

(declare-fun res!2299243 () Bool)

(assert (=> b!5407402 (=> (not res!2299243) (not e!3352305))))

(assert (=> b!5407402 (= res!2299243 lt!2204390)))

(declare-fun b!5407403 () Bool)

(assert (=> b!5407403 (= e!3352302 (not lt!2204390))))

(declare-fun b!5407404 () Bool)

(assert (=> b!5407404 (= e!3352303 (not (= (head!11596 s!2326) (c!942433 lt!2204172))))))

(declare-fun b!5407405 () Bool)

(declare-fun e!3352304 () Bool)

(assert (=> b!5407405 (= e!3352304 (matchR!7364 (derivativeStep!4261 lt!2204172 (head!11596 s!2326)) (tail!10693 s!2326)))))

(declare-fun d!1726463 () Bool)

(assert (=> d!1726463 e!3352300))

(declare-fun c!942731 () Bool)

(assert (=> d!1726463 (= c!942731 ((_ is EmptyExpr!15179) lt!2204172))))

(assert (=> d!1726463 (= lt!2204390 e!3352304)))

(declare-fun c!942733 () Bool)

(assert (=> d!1726463 (= c!942733 (isEmpty!33709 s!2326))))

(assert (=> d!1726463 (validRegex!6915 lt!2204172)))

(assert (=> d!1726463 (= (matchR!7364 lt!2204172 s!2326) lt!2204390)))

(declare-fun b!5407406 () Bool)

(assert (=> b!5407406 (= e!3352305 (= (head!11596 s!2326) (c!942433 lt!2204172)))))

(declare-fun b!5407407 () Bool)

(assert (=> b!5407407 (= e!3352304 (nullable!5348 lt!2204172))))

(declare-fun b!5407408 () Bool)

(declare-fun res!2299238 () Bool)

(assert (=> b!5407408 (=> res!2299238 e!3352303)))

(assert (=> b!5407408 (= res!2299238 (not (isEmpty!33709 (tail!10693 s!2326))))))

(assert (= (and d!1726463 c!942733) b!5407407))

(assert (= (and d!1726463 (not c!942733)) b!5407405))

(assert (= (and d!1726463 c!942731) b!5407400))

(assert (= (and d!1726463 (not c!942731)) b!5407398))

(assert (= (and b!5407398 c!942732) b!5407403))

(assert (= (and b!5407398 (not c!942732)) b!5407399))

(assert (= (and b!5407399 (not res!2299237)) b!5407402))

(assert (= (and b!5407402 res!2299243) b!5407401))

(assert (= (and b!5407401 res!2299244) b!5407395))

(assert (= (and b!5407395 res!2299242) b!5407406))

(assert (= (and b!5407402 (not res!2299240)) b!5407397))

(assert (= (and b!5407397 res!2299239) b!5407396))

(assert (= (and b!5407396 (not res!2299241)) b!5407408))

(assert (= (and b!5407408 (not res!2299238)) b!5407404))

(assert (= (or b!5407400 b!5407396 b!5407401) bm!387013))

(assert (=> b!5407406 m!6431248))

(assert (=> b!5407408 m!6431252))

(assert (=> b!5407408 m!6431252))

(assert (=> b!5407408 m!6431318))

(assert (=> d!1726463 m!6431244))

(declare-fun m!6431638 () Bool)

(assert (=> d!1726463 m!6431638))

(assert (=> b!5407405 m!6431248))

(assert (=> b!5407405 m!6431248))

(declare-fun m!6431640 () Bool)

(assert (=> b!5407405 m!6431640))

(assert (=> b!5407405 m!6431252))

(assert (=> b!5407405 m!6431640))

(assert (=> b!5407405 m!6431252))

(declare-fun m!6431642 () Bool)

(assert (=> b!5407405 m!6431642))

(assert (=> bm!387013 m!6431244))

(declare-fun m!6431644 () Bool)

(assert (=> b!5407407 m!6431644))

(assert (=> b!5407404 m!6431248))

(assert (=> b!5407395 m!6431252))

(assert (=> b!5407395 m!6431252))

(assert (=> b!5407395 m!6431318))

(assert (=> b!5406286 d!1726463))

(declare-fun bs!1249225 () Bool)

(declare-fun b!5407409 () Bool)

(assert (= bs!1249225 (and b!5407409 b!5407285)))

(declare-fun lambda!281969 () Int)

(assert (=> bs!1249225 (= (and (= (reg!15508 lt!2204172) (reg!15508 lt!2204139)) (= lt!2204172 lt!2204139)) (= lambda!281969 lambda!281961))))

(declare-fun bs!1249226 () Bool)

(assert (= bs!1249226 (and b!5407409 d!1726461)))

(assert (=> bs!1249226 (not (= lambda!281969 lambda!281968))))

(declare-fun bs!1249227 () Bool)

(assert (= bs!1249227 (and b!5407409 b!5406286)))

(assert (=> bs!1249227 (not (= lambda!281969 lambda!281878))))

(declare-fun bs!1249228 () Bool)

(assert (= bs!1249228 (and b!5407409 d!1726373)))

(assert (=> bs!1249228 (not (= lambda!281969 lambda!281959))))

(assert (=> bs!1249228 (not (= lambda!281969 lambda!281960))))

(declare-fun bs!1249229 () Bool)

(assert (= bs!1249229 (and b!5407409 d!1726455)))

(assert (=> bs!1249229 (not (= lambda!281969 lambda!281966))))

(assert (=> bs!1249229 (not (= lambda!281969 lambda!281967))))

(declare-fun bs!1249230 () Bool)

(assert (= bs!1249230 (and b!5407409 b!5407112)))

(assert (=> bs!1249230 (not (= lambda!281969 lambda!281943))))

(declare-fun bs!1249231 () Bool)

(assert (= bs!1249231 (and b!5407409 b!5406316)))

(assert (=> bs!1249231 (not (= lambda!281969 lambda!281873))))

(assert (=> bs!1249231 (not (= lambda!281969 lambda!281874))))

(declare-fun bs!1249232 () Bool)

(assert (= bs!1249232 (and b!5407409 b!5407105)))

(assert (=> bs!1249232 (= (and (= (reg!15508 lt!2204172) (reg!15508 r!7292)) (= lt!2204172 r!7292)) (= lambda!281969 lambda!281942))))

(assert (=> bs!1249227 (not (= lambda!281969 lambda!281879))))

(declare-fun bs!1249233 () Bool)

(assert (= bs!1249233 (and b!5407409 b!5407292)))

(assert (=> bs!1249233 (not (= lambda!281969 lambda!281962))))

(declare-fun bs!1249234 () Bool)

(assert (= bs!1249234 (and b!5407409 d!1726369)))

(assert (=> bs!1249234 (not (= lambda!281969 lambda!281954))))

(assert (=> b!5407409 true))

(assert (=> b!5407409 true))

(declare-fun bs!1249235 () Bool)

(declare-fun b!5407416 () Bool)

(assert (= bs!1249235 (and b!5407416 b!5407285)))

(declare-fun lambda!281970 () Int)

(assert (=> bs!1249235 (not (= lambda!281970 lambda!281961))))

(declare-fun bs!1249236 () Bool)

(assert (= bs!1249236 (and b!5407416 d!1726461)))

(assert (=> bs!1249236 (not (= lambda!281970 lambda!281968))))

(declare-fun bs!1249237 () Bool)

(assert (= bs!1249237 (and b!5407416 b!5406286)))

(assert (=> bs!1249237 (not (= lambda!281970 lambda!281878))))

(declare-fun bs!1249238 () Bool)

(assert (= bs!1249238 (and b!5407416 d!1726373)))

(assert (=> bs!1249238 (not (= lambda!281970 lambda!281959))))

(declare-fun bs!1249239 () Bool)

(assert (= bs!1249239 (and b!5407416 b!5407409)))

(assert (=> bs!1249239 (not (= lambda!281970 lambda!281969))))

(assert (=> bs!1249238 (= (and (= (regOne!30870 lt!2204172) (regOne!30870 r!7292)) (= (regTwo!30870 lt!2204172) (regTwo!30870 r!7292))) (= lambda!281970 lambda!281960))))

(declare-fun bs!1249240 () Bool)

(assert (= bs!1249240 (and b!5407416 d!1726455)))

(assert (=> bs!1249240 (not (= lambda!281970 lambda!281966))))

(assert (=> bs!1249240 (= (and (= (regOne!30870 lt!2204172) lt!2204180) (= (regTwo!30870 lt!2204172) (regTwo!30870 r!7292))) (= lambda!281970 lambda!281967))))

(declare-fun bs!1249241 () Bool)

(assert (= bs!1249241 (and b!5407416 b!5407112)))

(assert (=> bs!1249241 (= (and (= (regOne!30870 lt!2204172) (regOne!30870 r!7292)) (= (regTwo!30870 lt!2204172) (regTwo!30870 r!7292))) (= lambda!281970 lambda!281943))))

(declare-fun bs!1249242 () Bool)

(assert (= bs!1249242 (and b!5407416 b!5406316)))

(assert (=> bs!1249242 (not (= lambda!281970 lambda!281873))))

(assert (=> bs!1249242 (= (and (= (regOne!30870 lt!2204172) (regOne!30870 r!7292)) (= (regTwo!30870 lt!2204172) (regTwo!30870 r!7292))) (= lambda!281970 lambda!281874))))

(declare-fun bs!1249243 () Bool)

(assert (= bs!1249243 (and b!5407416 b!5407105)))

(assert (=> bs!1249243 (not (= lambda!281970 lambda!281942))))

(assert (=> bs!1249237 (= (and (= (regOne!30870 lt!2204172) lt!2204180) (= (regTwo!30870 lt!2204172) (regTwo!30870 r!7292))) (= lambda!281970 lambda!281879))))

(declare-fun bs!1249244 () Bool)

(assert (= bs!1249244 (and b!5407416 b!5407292)))

(assert (=> bs!1249244 (= (and (= (regOne!30870 lt!2204172) (regOne!30870 lt!2204139)) (= (regTwo!30870 lt!2204172) (regTwo!30870 lt!2204139))) (= lambda!281970 lambda!281962))))

(declare-fun bs!1249245 () Bool)

(assert (= bs!1249245 (and b!5407416 d!1726369)))

(assert (=> bs!1249245 (not (= lambda!281970 lambda!281954))))

(assert (=> b!5407416 true))

(assert (=> b!5407416 true))

(declare-fun e!3352308 () Bool)

(declare-fun call!387019 () Bool)

(assert (=> b!5407409 (= e!3352308 call!387019)))

(declare-fun b!5407410 () Bool)

(declare-fun e!3352311 () Bool)

(declare-fun e!3352310 () Bool)

(assert (=> b!5407410 (= e!3352311 e!3352310)))

(declare-fun res!2299247 () Bool)

(assert (=> b!5407410 (= res!2299247 (matchRSpec!2282 (regOne!30871 lt!2204172) s!2326))))

(assert (=> b!5407410 (=> res!2299247 e!3352310)))

(declare-fun b!5407411 () Bool)

(declare-fun res!2299246 () Bool)

(assert (=> b!5407411 (=> res!2299246 e!3352308)))

(declare-fun call!387020 () Bool)

(assert (=> b!5407411 (= res!2299246 call!387020)))

(declare-fun e!3352312 () Bool)

(assert (=> b!5407411 (= e!3352312 e!3352308)))

(declare-fun b!5407412 () Bool)

(declare-fun c!942735 () Bool)

(assert (=> b!5407412 (= c!942735 ((_ is Union!15179) lt!2204172))))

(declare-fun e!3352309 () Bool)

(assert (=> b!5407412 (= e!3352309 e!3352311)))

(declare-fun b!5407413 () Bool)

(declare-fun e!3352307 () Bool)

(assert (=> b!5407413 (= e!3352307 call!387020)))

(declare-fun b!5407414 () Bool)

(declare-fun e!3352313 () Bool)

(assert (=> b!5407414 (= e!3352307 e!3352313)))

(declare-fun res!2299245 () Bool)

(assert (=> b!5407414 (= res!2299245 (not ((_ is EmptyLang!15179) lt!2204172)))))

(assert (=> b!5407414 (=> (not res!2299245) (not e!3352313))))

(declare-fun b!5407415 () Bool)

(assert (=> b!5407415 (= e!3352310 (matchRSpec!2282 (regTwo!30871 lt!2204172) s!2326))))

(declare-fun b!5407417 () Bool)

(assert (=> b!5407417 (= e!3352311 e!3352312)))

(declare-fun c!942734 () Bool)

(assert (=> b!5407417 (= c!942734 ((_ is Star!15179) lt!2204172))))

(declare-fun bm!387014 () Bool)

(assert (=> bm!387014 (= call!387020 (isEmpty!33709 s!2326))))

(declare-fun b!5407418 () Bool)

(declare-fun c!942736 () Bool)

(assert (=> b!5407418 (= c!942736 ((_ is ElementMatch!15179) lt!2204172))))

(assert (=> b!5407418 (= e!3352313 e!3352309)))

(declare-fun d!1726465 () Bool)

(declare-fun c!942737 () Bool)

(assert (=> d!1726465 (= c!942737 ((_ is EmptyExpr!15179) lt!2204172))))

(assert (=> d!1726465 (= (matchRSpec!2282 lt!2204172 s!2326) e!3352307)))

(assert (=> b!5407416 (= e!3352312 call!387019)))

(declare-fun b!5407419 () Bool)

(assert (=> b!5407419 (= e!3352309 (= s!2326 (Cons!61714 (c!942433 lt!2204172) Nil!61714)))))

(declare-fun bm!387015 () Bool)

(assert (=> bm!387015 (= call!387019 (Exists!2360 (ite c!942734 lambda!281969 lambda!281970)))))

(assert (= (and d!1726465 c!942737) b!5407413))

(assert (= (and d!1726465 (not c!942737)) b!5407414))

(assert (= (and b!5407414 res!2299245) b!5407418))

(assert (= (and b!5407418 c!942736) b!5407419))

(assert (= (and b!5407418 (not c!942736)) b!5407412))

(assert (= (and b!5407412 c!942735) b!5407410))

(assert (= (and b!5407412 (not c!942735)) b!5407417))

(assert (= (and b!5407410 (not res!2299247)) b!5407415))

(assert (= (and b!5407417 c!942734) b!5407411))

(assert (= (and b!5407417 (not c!942734)) b!5407416))

(assert (= (and b!5407411 (not res!2299246)) b!5407409))

(assert (= (or b!5407409 b!5407416) bm!387015))

(assert (= (or b!5407413 b!5407411) bm!387014))

(declare-fun m!6431646 () Bool)

(assert (=> b!5407410 m!6431646))

(declare-fun m!6431648 () Bool)

(assert (=> b!5407415 m!6431648))

(assert (=> bm!387014 m!6431244))

(declare-fun m!6431650 () Bool)

(assert (=> bm!387015 m!6431650))

(assert (=> b!5406286 d!1726465))

(declare-fun d!1726467 () Bool)

(assert (=> d!1726467 (= (matchR!7364 lt!2204172 s!2326) (matchRSpec!2282 lt!2204172 s!2326))))

(declare-fun lt!2204391 () Unit!154238)

(assert (=> d!1726467 (= lt!2204391 (choose!40800 lt!2204172 s!2326))))

(assert (=> d!1726467 (validRegex!6915 lt!2204172)))

(assert (=> d!1726467 (= (mainMatchTheorem!2282 lt!2204172 s!2326) lt!2204391)))

(declare-fun bs!1249246 () Bool)

(assert (= bs!1249246 d!1726467))

(assert (=> bs!1249246 m!6430590))

(assert (=> bs!1249246 m!6430604))

(declare-fun m!6431652 () Bool)

(assert (=> bs!1249246 m!6431652))

(assert (=> bs!1249246 m!6431638))

(assert (=> b!5406286 d!1726467))

(declare-fun bs!1249247 () Bool)

(declare-fun d!1726469 () Bool)

(assert (= bs!1249247 (and d!1726469 d!1726453)))

(declare-fun lambda!281971 () Int)

(assert (=> bs!1249247 (= lambda!281971 lambda!281965)))

(declare-fun bs!1249248 () Bool)

(assert (= bs!1249248 (and d!1726469 d!1726353)))

(assert (=> bs!1249248 (= lambda!281971 lambda!281946)))

(declare-fun bs!1249249 () Bool)

(assert (= bs!1249249 (and d!1726469 d!1726331)))

(assert (=> bs!1249249 (= lambda!281971 lambda!281934)))

(declare-fun bs!1249250 () Bool)

(assert (= bs!1249250 (and d!1726469 b!5406317)))

(assert (=> bs!1249250 (= lambda!281971 lambda!281877)))

(declare-fun bs!1249251 () Bool)

(assert (= bs!1249251 (and d!1726469 d!1726307)))

(assert (=> bs!1249251 (= lambda!281971 lambda!281927)))

(declare-fun bs!1249252 () Bool)

(assert (= bs!1249252 (and d!1726469 d!1726335)))

(assert (=> bs!1249252 (= lambda!281971 lambda!281937)))

(assert (=> d!1726469 (= (inv!81194 (h!68161 zl!343)) (forall!14533 (exprs!5063 (h!68161 zl!343)) lambda!281971))))

(declare-fun bs!1249253 () Bool)

(assert (= bs!1249253 d!1726469))

(declare-fun m!6431654 () Bool)

(assert (=> bs!1249253 m!6431654))

(assert (=> b!5406305 d!1726469))

(declare-fun b!5407424 () Bool)

(declare-fun e!3352316 () Bool)

(declare-fun tp!1495144 () Bool)

(declare-fun tp!1495145 () Bool)

(assert (=> b!5407424 (= e!3352316 (and tp!1495144 tp!1495145))))

(assert (=> b!5406304 (= tp!1495073 e!3352316)))

(assert (= (and b!5406304 ((_ is Cons!61712) (exprs!5063 setElem!35201))) b!5407424))

(declare-fun b!5407435 () Bool)

(declare-fun e!3352319 () Bool)

(assert (=> b!5407435 (= e!3352319 tp_is_empty!39611)))

(declare-fun b!5407437 () Bool)

(declare-fun tp!1495160 () Bool)

(assert (=> b!5407437 (= e!3352319 tp!1495160)))

(declare-fun b!5407436 () Bool)

(declare-fun tp!1495159 () Bool)

(declare-fun tp!1495158 () Bool)

(assert (=> b!5407436 (= e!3352319 (and tp!1495159 tp!1495158))))

(declare-fun b!5407438 () Bool)

(declare-fun tp!1495156 () Bool)

(declare-fun tp!1495157 () Bool)

(assert (=> b!5407438 (= e!3352319 (and tp!1495156 tp!1495157))))

(assert (=> b!5406290 (= tp!1495074 e!3352319)))

(assert (= (and b!5406290 ((_ is ElementMatch!15179) (regOne!30871 r!7292))) b!5407435))

(assert (= (and b!5406290 ((_ is Concat!24024) (regOne!30871 r!7292))) b!5407436))

(assert (= (and b!5406290 ((_ is Star!15179) (regOne!30871 r!7292))) b!5407437))

(assert (= (and b!5406290 ((_ is Union!15179) (regOne!30871 r!7292))) b!5407438))

(declare-fun b!5407439 () Bool)

(declare-fun e!3352320 () Bool)

(assert (=> b!5407439 (= e!3352320 tp_is_empty!39611)))

(declare-fun b!5407441 () Bool)

(declare-fun tp!1495165 () Bool)

(assert (=> b!5407441 (= e!3352320 tp!1495165)))

(declare-fun b!5407440 () Bool)

(declare-fun tp!1495164 () Bool)

(declare-fun tp!1495163 () Bool)

(assert (=> b!5407440 (= e!3352320 (and tp!1495164 tp!1495163))))

(declare-fun b!5407442 () Bool)

(declare-fun tp!1495161 () Bool)

(declare-fun tp!1495162 () Bool)

(assert (=> b!5407442 (= e!3352320 (and tp!1495161 tp!1495162))))

(assert (=> b!5406290 (= tp!1495075 e!3352320)))

(assert (= (and b!5406290 ((_ is ElementMatch!15179) (regTwo!30871 r!7292))) b!5407439))

(assert (= (and b!5406290 ((_ is Concat!24024) (regTwo!30871 r!7292))) b!5407440))

(assert (= (and b!5406290 ((_ is Star!15179) (regTwo!30871 r!7292))) b!5407441))

(assert (= (and b!5406290 ((_ is Union!15179) (regTwo!30871 r!7292))) b!5407442))

(declare-fun b!5407443 () Bool)

(declare-fun e!3352321 () Bool)

(declare-fun tp!1495166 () Bool)

(declare-fun tp!1495167 () Bool)

(assert (=> b!5407443 (= e!3352321 (and tp!1495166 tp!1495167))))

(assert (=> b!5406285 (= tp!1495077 e!3352321)))

(assert (= (and b!5406285 ((_ is Cons!61712) (exprs!5063 (h!68161 zl!343)))) b!5407443))

(declare-fun condSetEmpty!35207 () Bool)

(assert (=> setNonEmpty!35201 (= condSetEmpty!35207 (= setRest!35201 ((as const (Array Context!9126 Bool)) false)))))

(declare-fun setRes!35207 () Bool)

(assert (=> setNonEmpty!35201 (= tp!1495081 setRes!35207)))

(declare-fun setIsEmpty!35207 () Bool)

(assert (=> setIsEmpty!35207 setRes!35207))

(declare-fun tp!1495173 () Bool)

(declare-fun e!3352324 () Bool)

(declare-fun setNonEmpty!35207 () Bool)

(declare-fun setElem!35207 () Context!9126)

(assert (=> setNonEmpty!35207 (= setRes!35207 (and tp!1495173 (inv!81194 setElem!35207) e!3352324))))

(declare-fun setRest!35207 () (InoxSet Context!9126))

(assert (=> setNonEmpty!35207 (= setRest!35201 ((_ map or) (store ((as const (Array Context!9126 Bool)) false) setElem!35207 true) setRest!35207))))

(declare-fun b!5407448 () Bool)

(declare-fun tp!1495172 () Bool)

(assert (=> b!5407448 (= e!3352324 tp!1495172)))

(assert (= (and setNonEmpty!35201 condSetEmpty!35207) setIsEmpty!35207))

(assert (= (and setNonEmpty!35201 (not condSetEmpty!35207)) setNonEmpty!35207))

(assert (= setNonEmpty!35207 b!5407448))

(declare-fun m!6431656 () Bool)

(assert (=> setNonEmpty!35207 m!6431656))

(declare-fun b!5407453 () Bool)

(declare-fun e!3352327 () Bool)

(declare-fun tp!1495176 () Bool)

(assert (=> b!5407453 (= e!3352327 (and tp_is_empty!39611 tp!1495176))))

(assert (=> b!5406322 (= tp!1495078 e!3352327)))

(assert (= (and b!5406322 ((_ is Cons!61714) (t!375061 s!2326))) b!5407453))

(declare-fun b!5407454 () Bool)

(declare-fun e!3352328 () Bool)

(assert (=> b!5407454 (= e!3352328 tp_is_empty!39611)))

(declare-fun b!5407456 () Bool)

(declare-fun tp!1495181 () Bool)

(assert (=> b!5407456 (= e!3352328 tp!1495181)))

(declare-fun b!5407455 () Bool)

(declare-fun tp!1495180 () Bool)

(declare-fun tp!1495179 () Bool)

(assert (=> b!5407455 (= e!3352328 (and tp!1495180 tp!1495179))))

(declare-fun b!5407457 () Bool)

(declare-fun tp!1495177 () Bool)

(declare-fun tp!1495178 () Bool)

(assert (=> b!5407457 (= e!3352328 (and tp!1495177 tp!1495178))))

(assert (=> b!5406311 (= tp!1495072 e!3352328)))

(assert (= (and b!5406311 ((_ is ElementMatch!15179) (reg!15508 r!7292))) b!5407454))

(assert (= (and b!5406311 ((_ is Concat!24024) (reg!15508 r!7292))) b!5407455))

(assert (= (and b!5406311 ((_ is Star!15179) (reg!15508 r!7292))) b!5407456))

(assert (= (and b!5406311 ((_ is Union!15179) (reg!15508 r!7292))) b!5407457))

(declare-fun b!5407458 () Bool)

(declare-fun e!3352329 () Bool)

(assert (=> b!5407458 (= e!3352329 tp_is_empty!39611)))

(declare-fun b!5407460 () Bool)

(declare-fun tp!1495186 () Bool)

(assert (=> b!5407460 (= e!3352329 tp!1495186)))

(declare-fun b!5407459 () Bool)

(declare-fun tp!1495185 () Bool)

(declare-fun tp!1495184 () Bool)

(assert (=> b!5407459 (= e!3352329 (and tp!1495185 tp!1495184))))

(declare-fun b!5407461 () Bool)

(declare-fun tp!1495182 () Bool)

(declare-fun tp!1495183 () Bool)

(assert (=> b!5407461 (= e!3352329 (and tp!1495182 tp!1495183))))

(assert (=> b!5406296 (= tp!1495079 e!3352329)))

(assert (= (and b!5406296 ((_ is ElementMatch!15179) (regOne!30870 r!7292))) b!5407458))

(assert (= (and b!5406296 ((_ is Concat!24024) (regOne!30870 r!7292))) b!5407459))

(assert (= (and b!5406296 ((_ is Star!15179) (regOne!30870 r!7292))) b!5407460))

(assert (= (and b!5406296 ((_ is Union!15179) (regOne!30870 r!7292))) b!5407461))

(declare-fun b!5407462 () Bool)

(declare-fun e!3352330 () Bool)

(assert (=> b!5407462 (= e!3352330 tp_is_empty!39611)))

(declare-fun b!5407464 () Bool)

(declare-fun tp!1495191 () Bool)

(assert (=> b!5407464 (= e!3352330 tp!1495191)))

(declare-fun b!5407463 () Bool)

(declare-fun tp!1495190 () Bool)

(declare-fun tp!1495189 () Bool)

(assert (=> b!5407463 (= e!3352330 (and tp!1495190 tp!1495189))))

(declare-fun b!5407465 () Bool)

(declare-fun tp!1495187 () Bool)

(declare-fun tp!1495188 () Bool)

(assert (=> b!5407465 (= e!3352330 (and tp!1495187 tp!1495188))))

(assert (=> b!5406296 (= tp!1495080 e!3352330)))

(assert (= (and b!5406296 ((_ is ElementMatch!15179) (regTwo!30870 r!7292))) b!5407462))

(assert (= (and b!5406296 ((_ is Concat!24024) (regTwo!30870 r!7292))) b!5407463))

(assert (= (and b!5406296 ((_ is Star!15179) (regTwo!30870 r!7292))) b!5407464))

(assert (= (and b!5406296 ((_ is Union!15179) (regTwo!30870 r!7292))) b!5407465))

(declare-fun b!5407473 () Bool)

(declare-fun e!3352336 () Bool)

(declare-fun tp!1495196 () Bool)

(assert (=> b!5407473 (= e!3352336 tp!1495196)))

(declare-fun tp!1495197 () Bool)

(declare-fun e!3352335 () Bool)

(declare-fun b!5407472 () Bool)

(assert (=> b!5407472 (= e!3352335 (and (inv!81194 (h!68161 (t!375060 zl!343))) e!3352336 tp!1495197))))

(assert (=> b!5406305 (= tp!1495076 e!3352335)))

(assert (= b!5407472 b!5407473))

(assert (= (and b!5406305 ((_ is Cons!61713) (t!375060 zl!343))) b!5407472))

(declare-fun m!6431658 () Bool)

(assert (=> b!5407472 m!6431658))

(declare-fun b_lambda!206619 () Bool)

(assert (= b_lambda!206615 (or b!5406292 b_lambda!206619)))

(declare-fun bs!1249254 () Bool)

(declare-fun d!1726471 () Bool)

(assert (= bs!1249254 (and d!1726471 b!5406292)))

(assert (=> bs!1249254 (= (dynLambda!24318 lambda!281875 lt!2204132) (derivationStepZipperUp!551 lt!2204132 (h!68162 s!2326)))))

(assert (=> bs!1249254 m!6430472))

(assert (=> d!1726417 d!1726471))

(declare-fun b_lambda!206621 () Bool)

(assert (= b_lambda!206613 (or b!5406292 b_lambda!206621)))

(declare-fun bs!1249255 () Bool)

(declare-fun d!1726473 () Bool)

(assert (= bs!1249255 (and d!1726473 b!5406292)))

(assert (=> bs!1249255 (= (dynLambda!24318 lambda!281875 (h!68161 zl!343)) (derivationStepZipperUp!551 (h!68161 zl!343) (h!68162 s!2326)))))

(assert (=> bs!1249255 m!6430538))

(assert (=> d!1726389 d!1726473))

(declare-fun b_lambda!206623 () Bool)

(assert (= b_lambda!206611 (or b!5406317 b_lambda!206623)))

(declare-fun bs!1249256 () Bool)

(declare-fun d!1726475 () Bool)

(assert (= bs!1249256 (and d!1726475 b!5406317)))

(declare-fun lt!2204392 () Unit!154238)

(assert (=> bs!1249256 (= lt!2204392 (lemmaConcatPreservesForall!204 (exprs!5063 lt!2204154) lt!2204155 lambda!281877))))

(assert (=> bs!1249256 (= (dynLambda!24320 lambda!281876 lt!2204154) (Context!9127 (++!13531 (exprs!5063 lt!2204154) lt!2204155)))))

(declare-fun m!6431660 () Bool)

(assert (=> bs!1249256 m!6431660))

(declare-fun m!6431662 () Bool)

(assert (=> bs!1249256 m!6431662))

(assert (=> d!1726355 d!1726475))

(declare-fun b_lambda!206625 () Bool)

(assert (= b_lambda!206595 (or b!5406292 b_lambda!206625)))

(declare-fun bs!1249257 () Bool)

(declare-fun d!1726477 () Bool)

(assert (= bs!1249257 (and d!1726477 b!5406292)))

(assert (=> bs!1249257 (= (dynLambda!24318 lambda!281875 lt!2204157) (derivationStepZipperUp!551 lt!2204157 (h!68162 s!2326)))))

(assert (=> bs!1249257 m!6430484))

(assert (=> d!1726273 d!1726477))

(declare-fun b_lambda!206627 () Bool)

(assert (= b_lambda!206617 (or b!5406292 b_lambda!206627)))

(declare-fun bs!1249258 () Bool)

(declare-fun d!1726479 () Bool)

(assert (= bs!1249258 (and d!1726479 b!5406292)))

(assert (=> bs!1249258 (= (dynLambda!24318 lambda!281875 lt!2204154) (derivationStepZipperUp!551 lt!2204154 (h!68162 s!2326)))))

(assert (=> bs!1249258 m!6430458))

(assert (=> d!1726419 d!1726479))

(check-sat (not bm!386999) (not d!1726363) (not b!5407191) (not d!1726421) (not d!1726249) (not bm!387010) (not b!5407314) (not b!5406676) (not bm!387004) (not b!5406675) (not b!5407440) (not b!5407249) (not bs!1249254) (not b!5407193) (not d!1726413) (not bm!386976) (not b!5407257) (not bm!386997) (not d!1726357) (not b!5407106) (not d!1726371) (not d!1726361) (not b!5407331) (not b!5407168) (not bm!387008) (not setNonEmpty!35207) (not b!5407448) (not b!5407407) (not b!5407465) (not b!5406947) (not bs!1249255) (not d!1726451) (not d!1726327) (not d!1726349) (not b!5407436) (not b!5407044) (not b!5407395) (not b!5407272) (not b!5407408) (not b!5407215) (not bm!386991) (not b!5406785) (not bm!386993) (not b_lambda!206621) (not d!1726375) (not b!5407154) (not d!1726209) (not b!5406624) (not d!1726367) (not bm!386989) (not b!5406962) (not b!5407156) (not d!1726317) (not b!5407214) (not b!5407438) (not b!5406783) (not b!5407442) (not b!5407319) (not b!5407337) (not bm!386929) (not b!5407286) (not b!5407247) (not b!5407405) (not b!5407244) (not b!5407473) (not d!1726307) (not d!1726437) (not bm!387012) (not bm!387006) (not d!1726459) (not bm!386990) (not b!5407259) (not b!5407376) (not d!1726435) (not bs!1249256) (not b_lambda!206623) (not d!1726407) (not bm!386924) (not d!1726453) (not d!1726373) (not b!5407048) (not b!5407321) (not d!1726457) (not d!1726385) (not b!5407330) (not b!5407367) (not b!5407390) (not b!5406945) (not b!5406946) (not b!5406781) (not bm!387014) (not d!1726377) (not d!1726439) (not b!5407349) (not b!5407284) (not b!5407472) (not b!5407312) (not b!5406943) (not d!1726301) (not b!5407157) (not b!5407306) (not d!1726379) (not b!5407043) (not d!1726469) (not d!1726455) (not b!5407410) (not b!5407195) (not d!1726411) (not b!5407155) (not b!5407437) (not b!5407379) (not d!1726355) (not b!5407457) (not b!5407461) (not d!1726365) (not bm!386992) (not b!5407391) (not b!5407167) (not b!5407309) (not b!5406838) (not b!5407254) (not d!1726351) (not d!1726331) (not bm!387007) (not b_lambda!206625) (not b!5406779) (not b!5406864) (not b!5407348) (not b!5407441) (not bm!386987) (not b!5406950) (not b!5406807) (not b!5407464) (not b_lambda!206619) (not b!5407235) (not b!5407381) (not d!1726445) (not b!5406963) (not b!5407291) (not b!5407325) (not b!5407190) (not d!1726323) (not b!5406966) (not b!5406780) (not d!1726319) (not b!5407252) (not d!1726369) (not b!5407460) (not d!1726463) (not bm!387015) (not b!5407213) (not b!5407041) (not b!5407329) (not b!5407463) (not d!1726461) (not b!5407334) (not b!5407296) (not bm!386977) (not d!1726391) (not b!5407333) (not b!5407144) (not b!5407243) (not b!5407357) (not b!5407404) (not b!5406949) (not d!1726419) (not bm!386957) (not b!5407327) (not d!1726433) (not bm!386980) (not d!1726467) (not b!5407459) (not d!1726429) (not b!5406840) (not b_lambda!206627) (not d!1726359) (not b!5407046) (not bm!387011) (not d!1726389) (not b!5407153) (not bm!387013) (not d!1726325) (not b!5407350) (not d!1726279) (not bm!387003) (not b!5407307) (not b!5407197) (not b!5407317) (not d!1726335) (not bm!387002) tp_is_empty!39611 (not d!1726431) (not d!1726197) (not bm!387005) (not d!1726245) (not b!5406944) (not b!5407111) (not b!5407338) (not bm!386998) (not d!1726417) (not b!5407456) (not b!5407040) (not b!5407392) (not b!5407305) (not b!5406964) (not b!5407196) (not b!5407351) (not b!5406965) (not b!5407271) (not d!1726353) (not b!5407406) (not b!5407071) (not bm!387001) (not b!5407380) (not b!5407394) (not b!5407378) (not bs!1249257) (not b!5407045) (not b!5407359) (not bs!1249258) (not d!1726405) (not b!5407393) (not b!5407453) (not b!5407347) (not d!1726329) (not d!1726443) (not d!1726415) (not b!5406967) (not d!1726399) (not bm!386928) (not b!5407274) (not b!5406778) (not b!5406808) (not b!5407308) (not d!1726423) (not d!1726401) (not b!5407262) (not b!5407443) (not b!5407424) (not d!1726273) (not b!5407455) (not d!1726441) (not b!5407322) (not b!5407324) (not d!1726193) (not b!5407415) (not d!1726251) (not d!1726449) (not b!5406865) (not b!5407356) (not b!5407377))
(check-sat)

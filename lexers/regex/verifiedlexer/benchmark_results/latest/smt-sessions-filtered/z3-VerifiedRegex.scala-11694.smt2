; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!659576 () Bool)

(assert start!659576)

(declare-fun b!6820967 () Bool)

(assert (=> b!6820967 true))

(assert (=> b!6820967 true))

(declare-fun lambda!385149 () Int)

(declare-fun lambda!385148 () Int)

(assert (=> b!6820967 (not (= lambda!385149 lambda!385148))))

(assert (=> b!6820967 true))

(assert (=> b!6820967 true))

(declare-fun lambda!385150 () Int)

(assert (=> b!6820967 (not (= lambda!385150 lambda!385148))))

(assert (=> b!6820967 (not (= lambda!385150 lambda!385149))))

(assert (=> b!6820967 true))

(assert (=> b!6820967 true))

(declare-fun b!6820978 () Bool)

(assert (=> b!6820978 true))

(declare-fun b!6820964 () Bool)

(assert (=> b!6820964 true))

(declare-fun b!6820947 () Bool)

(declare-fun res!2786045 () Bool)

(declare-fun e!4115151 () Bool)

(assert (=> b!6820947 (=> res!2786045 e!4115151)))

(declare-datatypes ((C!33540 0))(
  ( (C!33541 (val!26472 Int)) )
))
(declare-datatypes ((Regex!16635 0))(
  ( (ElementMatch!16635 (c!1269331 C!33540)) (Concat!25480 (regOne!33782 Regex!16635) (regTwo!33782 Regex!16635)) (EmptyExpr!16635) (Star!16635 (reg!16964 Regex!16635)) (EmptyLang!16635) (Union!16635 (regOne!33783 Regex!16635) (regTwo!33783 Regex!16635)) )
))
(declare-datatypes ((List!66204 0))(
  ( (Nil!66080) (Cons!66080 (h!72528 Regex!16635) (t!379941 List!66204)) )
))
(declare-datatypes ((Context!12038 0))(
  ( (Context!12039 (exprs!6519 List!66204)) )
))
(declare-fun lt!2451314 () Context!12038)

(declare-fun r!7292 () Regex!16635)

(declare-datatypes ((List!66205 0))(
  ( (Nil!66081) (Cons!66081 (h!72529 Context!12038) (t!379942 List!66205)) )
))
(declare-fun unfocusZipper!2377 (List!66205) Regex!16635)

(assert (=> b!6820947 (= res!2786045 (not (= (unfocusZipper!2377 (Cons!66081 lt!2451314 Nil!66081)) r!7292)))))

(declare-fun b!6820948 () Bool)

(declare-fun e!4115140 () Bool)

(declare-fun tp!1867258 () Bool)

(assert (=> b!6820948 (= e!4115140 tp!1867258)))

(declare-fun b!6820949 () Bool)

(declare-fun e!4115142 () Bool)

(declare-fun e!4115150 () Bool)

(assert (=> b!6820949 (= e!4115142 (not e!4115150))))

(declare-fun res!2786064 () Bool)

(assert (=> b!6820949 (=> res!2786064 e!4115150)))

(declare-fun zl!343 () List!66205)

(get-info :version)

(assert (=> b!6820949 (= res!2786064 (not ((_ is Cons!66081) zl!343)))))

(declare-fun lt!2451317 () Bool)

(declare-datatypes ((List!66206 0))(
  ( (Nil!66082) (Cons!66082 (h!72530 C!33540) (t!379943 List!66206)) )
))
(declare-fun s!2326 () List!66206)

(declare-fun matchRSpec!3736 (Regex!16635 List!66206) Bool)

(assert (=> b!6820949 (= lt!2451317 (matchRSpec!3736 r!7292 s!2326))))

(declare-fun matchR!8818 (Regex!16635 List!66206) Bool)

(assert (=> b!6820949 (= lt!2451317 (matchR!8818 r!7292 s!2326))))

(declare-datatypes ((Unit!159961 0))(
  ( (Unit!159962) )
))
(declare-fun lt!2451333 () Unit!159961)

(declare-fun mainMatchTheorem!3736 (Regex!16635 List!66206) Unit!159961)

(assert (=> b!6820949 (= lt!2451333 (mainMatchTheorem!3736 r!7292 s!2326))))

(declare-fun b!6820950 () Bool)

(declare-fun e!4115148 () Bool)

(declare-fun tp!1867257 () Bool)

(assert (=> b!6820950 (= e!4115148 tp!1867257)))

(declare-fun b!6820951 () Bool)

(declare-fun e!4115154 () Bool)

(declare-fun e!4115156 () Bool)

(assert (=> b!6820951 (= e!4115154 e!4115156)))

(declare-fun res!2786053 () Bool)

(assert (=> b!6820951 (=> res!2786053 e!4115156)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2451307 () (InoxSet Context!12038))

(declare-fun derivationStepZipperDown!1863 (Regex!16635 Context!12038 C!33540) (InoxSet Context!12038))

(assert (=> b!6820951 (= res!2786053 (not (= lt!2451307 (derivationStepZipperDown!1863 (reg!16964 r!7292) lt!2451314 (h!72530 s!2326)))))))

(declare-fun lt!2451306 () List!66204)

(assert (=> b!6820951 (= lt!2451314 (Context!12039 lt!2451306))))

(declare-fun lambda!385151 () Int)

(declare-fun lt!2451324 () (InoxSet Context!12038))

(declare-fun lt!2451338 () Context!12038)

(declare-fun flatMap!2116 ((InoxSet Context!12038) Int) (InoxSet Context!12038))

(declare-fun derivationStepZipperUp!1789 (Context!12038 C!33540) (InoxSet Context!12038))

(assert (=> b!6820951 (= (flatMap!2116 lt!2451324 lambda!385151) (derivationStepZipperUp!1789 lt!2451338 (h!72530 s!2326)))))

(declare-fun lt!2451315 () Unit!159961)

(declare-fun lemmaFlatMapOnSingletonSet!1642 ((InoxSet Context!12038) Context!12038 Int) Unit!159961)

(assert (=> b!6820951 (= lt!2451315 (lemmaFlatMapOnSingletonSet!1642 lt!2451324 lt!2451338 lambda!385151))))

(declare-fun lt!2451321 () (InoxSet Context!12038))

(assert (=> b!6820951 (= lt!2451321 (derivationStepZipperUp!1789 lt!2451338 (h!72530 s!2326)))))

(assert (=> b!6820951 (= lt!2451324 (store ((as const (Array Context!12038 Bool)) false) lt!2451338 true))))

(assert (=> b!6820951 (= lt!2451338 (Context!12039 (Cons!66080 (reg!16964 r!7292) lt!2451306)))))

(assert (=> b!6820951 (= lt!2451306 (Cons!66080 r!7292 Nil!66080))))

(declare-fun b!6820952 () Bool)

(declare-fun res!2786065 () Bool)

(assert (=> b!6820952 (=> res!2786065 e!4115150)))

(assert (=> b!6820952 (= res!2786065 (not ((_ is Cons!66080) (exprs!6519 (h!72529 zl!343)))))))

(declare-fun res!2786056 () Bool)

(declare-fun e!4115147 () Bool)

(assert (=> start!659576 (=> (not res!2786056) (not e!4115147))))

(declare-fun validRegex!8371 (Regex!16635) Bool)

(assert (=> start!659576 (= res!2786056 (validRegex!8371 r!7292))))

(assert (=> start!659576 e!4115147))

(declare-fun e!4115145 () Bool)

(assert (=> start!659576 e!4115145))

(declare-fun condSetEmpty!46799 () Bool)

(declare-fun z!1189 () (InoxSet Context!12038))

(assert (=> start!659576 (= condSetEmpty!46799 (= z!1189 ((as const (Array Context!12038 Bool)) false)))))

(declare-fun setRes!46799 () Bool)

(assert (=> start!659576 setRes!46799))

(declare-fun e!4115141 () Bool)

(assert (=> start!659576 e!4115141))

(declare-fun e!4115155 () Bool)

(assert (=> start!659576 e!4115155))

(declare-fun b!6820953 () Bool)

(declare-fun tp!1867256 () Bool)

(assert (=> b!6820953 (= e!4115145 tp!1867256)))

(declare-fun b!6820954 () Bool)

(declare-fun res!2786052 () Bool)

(assert (=> b!6820954 (=> res!2786052 e!4115156)))

(declare-fun lt!2451318 () Regex!16635)

(assert (=> b!6820954 (= res!2786052 (or (not (= lt!2451318 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6820955 () Bool)

(declare-fun res!2786047 () Bool)

(declare-fun e!4115158 () Bool)

(assert (=> b!6820955 (=> res!2786047 e!4115158)))

(assert (=> b!6820955 (= res!2786047 ((_ is Nil!66082) s!2326))))

(declare-fun b!6820956 () Bool)

(declare-fun res!2786044 () Bool)

(assert (=> b!6820956 (=> res!2786044 e!4115156)))

(declare-fun matchZipper!2621 ((InoxSet Context!12038) List!66206) Bool)

(declare-fun derivationStepZipper!2579 ((InoxSet Context!12038) C!33540) (InoxSet Context!12038))

(assert (=> b!6820956 (= res!2786044 (not (= (matchZipper!2621 lt!2451324 s!2326) (matchZipper!2621 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) (t!379943 s!2326)))))))

(declare-fun b!6820957 () Bool)

(declare-fun res!2786070 () Bool)

(assert (=> b!6820957 (=> res!2786070 e!4115150)))

(assert (=> b!6820957 (= res!2786070 (or ((_ is EmptyExpr!16635) r!7292) ((_ is EmptyLang!16635) r!7292) ((_ is ElementMatch!16635) r!7292) ((_ is Union!16635) r!7292) ((_ is Concat!25480) r!7292)))))

(declare-fun setNonEmpty!46799 () Bool)

(declare-fun setElem!46799 () Context!12038)

(declare-fun tp!1867261 () Bool)

(declare-fun inv!84834 (Context!12038) Bool)

(assert (=> setNonEmpty!46799 (= setRes!46799 (and tp!1867261 (inv!84834 setElem!46799) e!4115140))))

(declare-fun setRest!46799 () (InoxSet Context!12038))

(assert (=> setNonEmpty!46799 (= z!1189 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) setElem!46799 true) setRest!46799))))

(declare-fun setIsEmpty!46799 () Bool)

(assert (=> setIsEmpty!46799 setRes!46799))

(declare-fun b!6820958 () Bool)

(assert (=> b!6820958 (= e!4115147 e!4115142)))

(declare-fun res!2786046 () Bool)

(assert (=> b!6820958 (=> (not res!2786046) (not e!4115142))))

(assert (=> b!6820958 (= res!2786046 (= r!7292 lt!2451318))))

(assert (=> b!6820958 (= lt!2451318 (unfocusZipper!2377 zl!343))))

(declare-fun b!6820959 () Bool)

(declare-fun e!4115149 () Bool)

(declare-fun e!4115143 () Bool)

(assert (=> b!6820959 (= e!4115149 e!4115143)))

(declare-fun res!2786060 () Bool)

(assert (=> b!6820959 (=> res!2786060 e!4115143)))

(declare-fun lt!2451308 () (InoxSet Context!12038))

(assert (=> b!6820959 (= res!2786060 (not (= lt!2451307 (derivationStepZipper!2579 lt!2451308 (h!72530 s!2326)))))))

(assert (=> b!6820959 (= (flatMap!2116 lt!2451308 lambda!385151) (derivationStepZipperUp!1789 lt!2451314 (h!72530 s!2326)))))

(declare-fun lt!2451312 () Unit!159961)

(assert (=> b!6820959 (= lt!2451312 (lemmaFlatMapOnSingletonSet!1642 lt!2451308 lt!2451314 lambda!385151))))

(declare-fun lt!2451302 () Context!12038)

(declare-fun lt!2451330 () (InoxSet Context!12038))

(assert (=> b!6820959 (= (flatMap!2116 lt!2451330 lambda!385151) (derivationStepZipperUp!1789 lt!2451302 (h!72530 s!2326)))))

(declare-fun lt!2451320 () Unit!159961)

(assert (=> b!6820959 (= lt!2451320 (lemmaFlatMapOnSingletonSet!1642 lt!2451330 lt!2451302 lambda!385151))))

(declare-fun lt!2451316 () (InoxSet Context!12038))

(assert (=> b!6820959 (= lt!2451316 (derivationStepZipperUp!1789 lt!2451314 (h!72530 s!2326)))))

(declare-fun lt!2451303 () (InoxSet Context!12038))

(assert (=> b!6820959 (= lt!2451303 (derivationStepZipperUp!1789 lt!2451302 (h!72530 s!2326)))))

(assert (=> b!6820959 (= lt!2451308 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true))))

(assert (=> b!6820959 (= lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451302 true))))

(declare-fun lt!2451325 () List!66204)

(assert (=> b!6820959 (= lt!2451302 (Context!12039 lt!2451325))))

(assert (=> b!6820959 (= lt!2451325 (Cons!66080 (reg!16964 r!7292) Nil!66080))))

(declare-fun b!6820960 () Bool)

(declare-fun tp_is_empty!42523 () Bool)

(declare-fun tp!1867263 () Bool)

(assert (=> b!6820960 (= e!4115155 (and tp_is_empty!42523 tp!1867263))))

(declare-fun b!6820961 () Bool)

(declare-fun res!2786048 () Bool)

(assert (=> b!6820961 (=> res!2786048 e!4115150)))

(declare-fun isEmpty!38469 (List!66205) Bool)

(assert (=> b!6820961 (= res!2786048 (not (isEmpty!38469 (t!379942 zl!343))))))

(declare-fun b!6820962 () Bool)

(declare-fun e!4115157 () Bool)

(declare-fun lt!2451334 () Bool)

(assert (=> b!6820962 (= e!4115157 lt!2451334)))

(declare-fun b!6820963 () Bool)

(assert (=> b!6820963 (= e!4115145 tp_is_empty!42523)))

(declare-fun e!4115144 () Bool)

(declare-fun e!4115146 () Bool)

(assert (=> b!6820964 (= e!4115144 e!4115146)))

(declare-fun res!2786049 () Bool)

(assert (=> b!6820964 (=> res!2786049 e!4115146)))

(declare-fun appendTo!240 ((InoxSet Context!12038) Context!12038) (InoxSet Context!12038))

(assert (=> b!6820964 (= res!2786049 (not (= (appendTo!240 lt!2451330 lt!2451314) lt!2451324)))))

(declare-fun lambda!385152 () Int)

(declare-fun map!15113 ((InoxSet Context!12038) Int) (InoxSet Context!12038))

(declare-fun ++!14816 (List!66204 List!66204) List!66204)

(assert (=> b!6820964 (= (map!15113 lt!2451330 lambda!385152) (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true))))

(declare-fun lambda!385153 () Int)

(declare-fun lt!2451329 () Unit!159961)

(declare-fun lemmaConcatPreservesForall!464 (List!66204 List!66204 Int) Unit!159961)

(assert (=> b!6820964 (= lt!2451329 (lemmaConcatPreservesForall!464 lt!2451325 lt!2451306 lambda!385153))))

(declare-fun lt!2451313 () Unit!159961)

(declare-fun lemmaMapOnSingletonSet!270 ((InoxSet Context!12038) Context!12038 Int) Unit!159961)

(assert (=> b!6820964 (= lt!2451313 (lemmaMapOnSingletonSet!270 lt!2451330 lt!2451302 lambda!385152))))

(declare-fun b!6820965 () Bool)

(declare-fun res!2786062 () Bool)

(assert (=> b!6820965 (=> res!2786062 e!4115150)))

(declare-fun generalisedUnion!2479 (List!66204) Regex!16635)

(declare-fun unfocusZipperList!2056 (List!66205) List!66204)

(assert (=> b!6820965 (= res!2786062 (not (= r!7292 (generalisedUnion!2479 (unfocusZipperList!2056 zl!343)))))))

(declare-fun b!6820966 () Bool)

(declare-fun res!2786057 () Bool)

(assert (=> b!6820966 (=> (not res!2786057) (not e!4115147))))

(declare-fun toList!10419 ((InoxSet Context!12038)) List!66205)

(assert (=> b!6820966 (= res!2786057 (= (toList!10419 z!1189) zl!343))))

(assert (=> b!6820967 (= e!4115150 e!4115158)))

(declare-fun res!2786069 () Bool)

(assert (=> b!6820967 (=> res!2786069 e!4115158)))

(assert (=> b!6820967 (= res!2786069 (not (= lt!2451317 e!4115157)))))

(declare-fun res!2786055 () Bool)

(assert (=> b!6820967 (=> res!2786055 e!4115157)))

(declare-fun isEmpty!38470 (List!66206) Bool)

(assert (=> b!6820967 (= res!2786055 (isEmpty!38470 s!2326))))

(declare-fun Exists!3703 (Int) Bool)

(assert (=> b!6820967 (= (Exists!3703 lambda!385148) (Exists!3703 lambda!385150))))

(declare-fun lt!2451328 () Unit!159961)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2230 (Regex!16635 Regex!16635 List!66206) Unit!159961)

(assert (=> b!6820967 (= lt!2451328 (lemmaExistCutMatchRandMatchRSpecEquivalent!2230 (reg!16964 r!7292) r!7292 s!2326))))

(assert (=> b!6820967 (= (Exists!3703 lambda!385148) (Exists!3703 lambda!385149))))

(declare-fun lt!2451331 () Unit!159961)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!794 (Regex!16635 List!66206) Unit!159961)

(assert (=> b!6820967 (= lt!2451331 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!794 (reg!16964 r!7292) s!2326))))

(assert (=> b!6820967 (= lt!2451334 (Exists!3703 lambda!385148))))

(declare-datatypes ((tuple2!67220 0))(
  ( (tuple2!67221 (_1!36913 List!66206) (_2!36913 List!66206)) )
))
(declare-datatypes ((Option!16522 0))(
  ( (None!16521) (Some!16521 (v!52731 tuple2!67220)) )
))
(declare-fun isDefined!13225 (Option!16522) Bool)

(declare-fun findConcatSeparation!2936 (Regex!16635 Regex!16635 List!66206 List!66206 List!66206) Option!16522)

(assert (=> b!6820967 (= lt!2451334 (isDefined!13225 (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 Nil!66082 s!2326 s!2326)))))

(declare-fun lt!2451311 () Unit!159961)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2700 (Regex!16635 Regex!16635 List!66206) Unit!159961)

(assert (=> b!6820967 (= lt!2451311 (lemmaFindConcatSeparationEquivalentToExists!2700 (reg!16964 r!7292) r!7292 s!2326))))

(declare-fun b!6820968 () Bool)

(declare-fun tp!1867260 () Bool)

(declare-fun tp!1867255 () Bool)

(assert (=> b!6820968 (= e!4115145 (and tp!1867260 tp!1867255))))

(declare-fun b!6820969 () Bool)

(declare-fun tp!1867254 () Bool)

(declare-fun tp!1867262 () Bool)

(assert (=> b!6820969 (= e!4115145 (and tp!1867254 tp!1867262))))

(declare-fun b!6820970 () Bool)

(declare-fun e!4115153 () Bool)

(assert (=> b!6820970 (= e!4115153 (inv!84834 lt!2451314))))

(declare-fun lt!2451337 () tuple2!67220)

(assert (=> b!6820970 (matchR!8818 (reg!16964 r!7292) (_1!36913 lt!2451337))))

(declare-fun lt!2451326 () List!66205)

(declare-fun lt!2451332 () Unit!159961)

(declare-fun theoremZipperRegexEquiv!937 ((InoxSet Context!12038) List!66205 Regex!16635 List!66206) Unit!159961)

(assert (=> b!6820970 (= lt!2451332 (theoremZipperRegexEquiv!937 lt!2451330 lt!2451326 (reg!16964 r!7292) (_1!36913 lt!2451337)))))

(declare-fun lt!2451319 () List!66206)

(assert (=> b!6820970 (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) lt!2451319)))

(declare-fun lt!2451305 () Unit!159961)

(assert (=> b!6820970 (= lt!2451305 (lemmaConcatPreservesForall!464 lt!2451325 lt!2451306 lambda!385153))))

(declare-fun lt!2451304 () Unit!159961)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!258 (Context!12038 Context!12038 List!66206 List!66206) Unit!159961)

(assert (=> b!6820970 (= lt!2451304 (lemmaConcatenateContextMatchesConcatOfStrings!258 lt!2451302 lt!2451314 (_1!36913 lt!2451337) (_2!36913 lt!2451337)))))

(declare-fun b!6820971 () Bool)

(assert (=> b!6820971 (= e!4115146 e!4115153)))

(declare-fun res!2786059 () Bool)

(assert (=> b!6820971 (=> res!2786059 e!4115153)))

(assert (=> b!6820971 (= res!2786059 (not (= s!2326 lt!2451319)))))

(declare-fun ++!14817 (List!66206 List!66206) List!66206)

(assert (=> b!6820971 (= lt!2451319 (++!14817 (_1!36913 lt!2451337) (_2!36913 lt!2451337)))))

(declare-fun lt!2451310 () Option!16522)

(declare-fun get!23022 (Option!16522) tuple2!67220)

(assert (=> b!6820971 (= lt!2451337 (get!23022 lt!2451310))))

(assert (=> b!6820971 (isDefined!13225 lt!2451310)))

(declare-fun findConcatSeparationZippers!244 ((InoxSet Context!12038) (InoxSet Context!12038) List!66206 List!66206 List!66206) Option!16522)

(assert (=> b!6820971 (= lt!2451310 (findConcatSeparationZippers!244 lt!2451330 lt!2451308 Nil!66082 s!2326 s!2326))))

(declare-fun lt!2451322 () Unit!159961)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!244 ((InoxSet Context!12038) Context!12038 List!66206) Unit!159961)

(assert (=> b!6820971 (= lt!2451322 (lemmaConcatZipperMatchesStringThenFindConcatDefined!244 lt!2451330 lt!2451314 s!2326))))

(declare-fun b!6820972 () Bool)

(declare-fun res!2786050 () Bool)

(assert (=> b!6820972 (=> res!2786050 e!4115144)))

(assert (=> b!6820972 (= res!2786050 (not (matchZipper!2621 z!1189 s!2326)))))

(declare-fun b!6820973 () Bool)

(assert (=> b!6820973 (= e!4115143 e!4115151)))

(declare-fun res!2786058 () Bool)

(assert (=> b!6820973 (=> res!2786058 e!4115151)))

(assert (=> b!6820973 (= res!2786058 (not (= (unfocusZipper!2377 lt!2451326) (reg!16964 r!7292))))))

(assert (=> b!6820973 (= lt!2451326 (Cons!66081 lt!2451302 Nil!66081))))

(declare-fun b!6820974 () Bool)

(declare-fun res!2786051 () Bool)

(assert (=> b!6820974 (=> res!2786051 e!4115150)))

(declare-fun generalisedConcat!2232 (List!66204) Regex!16635)

(assert (=> b!6820974 (= res!2786051 (not (= r!7292 (generalisedConcat!2232 (exprs!6519 (h!72529 zl!343))))))))

(declare-fun b!6820975 () Bool)

(declare-fun res!2786061 () Bool)

(assert (=> b!6820975 (=> res!2786061 e!4115153)))

(assert (=> b!6820975 (= res!2786061 (not (matchZipper!2621 lt!2451308 (_2!36913 lt!2451337))))))

(declare-fun b!6820976 () Bool)

(assert (=> b!6820976 (= e!4115151 e!4115144)))

(declare-fun res!2786063 () Bool)

(assert (=> b!6820976 (=> res!2786063 e!4115144)))

(declare-fun lt!2451301 () Bool)

(assert (=> b!6820976 (= res!2786063 lt!2451301)))

(declare-fun lt!2451335 () Regex!16635)

(assert (=> b!6820976 (= lt!2451301 (matchRSpec!3736 lt!2451335 s!2326))))

(assert (=> b!6820976 (= lt!2451301 (matchR!8818 lt!2451335 s!2326))))

(declare-fun lt!2451309 () Unit!159961)

(assert (=> b!6820976 (= lt!2451309 (mainMatchTheorem!3736 lt!2451335 s!2326))))

(declare-fun b!6820977 () Bool)

(declare-fun res!2786068 () Bool)

(assert (=> b!6820977 (=> res!2786068 e!4115153)))

(assert (=> b!6820977 (= res!2786068 (not (matchZipper!2621 lt!2451330 (_1!36913 lt!2451337))))))

(declare-fun e!4115152 () Bool)

(assert (=> b!6820978 (= e!4115152 e!4115154)))

(declare-fun res!2786066 () Bool)

(assert (=> b!6820978 (=> res!2786066 e!4115154)))

(declare-fun lt!2451336 () (InoxSet Context!12038))

(assert (=> b!6820978 (= res!2786066 (not (= lt!2451307 lt!2451336)))))

(assert (=> b!6820978 (= (flatMap!2116 z!1189 lambda!385151) (derivationStepZipperUp!1789 (h!72529 zl!343) (h!72530 s!2326)))))

(declare-fun lt!2451327 () Unit!159961)

(assert (=> b!6820978 (= lt!2451327 (lemmaFlatMapOnSingletonSet!1642 z!1189 (h!72529 zl!343) lambda!385151))))

(declare-fun b!6820979 () Bool)

(assert (=> b!6820979 (= e!4115158 e!4115152)))

(declare-fun res!2786067 () Bool)

(assert (=> b!6820979 (=> res!2786067 e!4115152)))

(declare-fun lt!2451323 () (InoxSet Context!12038))

(assert (=> b!6820979 (= res!2786067 (not (= lt!2451323 lt!2451336)))))

(assert (=> b!6820979 (= lt!2451336 (derivationStepZipperDown!1863 r!7292 (Context!12039 Nil!66080) (h!72530 s!2326)))))

(assert (=> b!6820979 (= lt!2451323 (derivationStepZipperUp!1789 (Context!12039 (Cons!66080 r!7292 Nil!66080)) (h!72530 s!2326)))))

(assert (=> b!6820979 (= lt!2451307 (derivationStepZipper!2579 z!1189 (h!72530 s!2326)))))

(declare-fun b!6820980 () Bool)

(assert (=> b!6820980 (= e!4115156 e!4115149)))

(declare-fun res!2786054 () Bool)

(assert (=> b!6820980 (=> res!2786054 e!4115149)))

(assert (=> b!6820980 (= res!2786054 (not (= (unfocusZipper!2377 (Cons!66081 lt!2451338 Nil!66081)) lt!2451335)))))

(assert (=> b!6820980 (= lt!2451335 (Concat!25480 (reg!16964 r!7292) r!7292))))

(declare-fun b!6820981 () Bool)

(declare-fun tp!1867259 () Bool)

(assert (=> b!6820981 (= e!4115141 (and (inv!84834 (h!72529 zl!343)) e!4115148 tp!1867259))))

(assert (= (and start!659576 res!2786056) b!6820966))

(assert (= (and b!6820966 res!2786057) b!6820958))

(assert (= (and b!6820958 res!2786046) b!6820949))

(assert (= (and b!6820949 (not res!2786064)) b!6820961))

(assert (= (and b!6820961 (not res!2786048)) b!6820974))

(assert (= (and b!6820974 (not res!2786051)) b!6820952))

(assert (= (and b!6820952 (not res!2786065)) b!6820965))

(assert (= (and b!6820965 (not res!2786062)) b!6820957))

(assert (= (and b!6820957 (not res!2786070)) b!6820967))

(assert (= (and b!6820967 (not res!2786055)) b!6820962))

(assert (= (and b!6820967 (not res!2786069)) b!6820955))

(assert (= (and b!6820955 (not res!2786047)) b!6820979))

(assert (= (and b!6820979 (not res!2786067)) b!6820978))

(assert (= (and b!6820978 (not res!2786066)) b!6820951))

(assert (= (and b!6820951 (not res!2786053)) b!6820956))

(assert (= (and b!6820956 (not res!2786044)) b!6820954))

(assert (= (and b!6820954 (not res!2786052)) b!6820980))

(assert (= (and b!6820980 (not res!2786054)) b!6820959))

(assert (= (and b!6820959 (not res!2786060)) b!6820973))

(assert (= (and b!6820973 (not res!2786058)) b!6820947))

(assert (= (and b!6820947 (not res!2786045)) b!6820976))

(assert (= (and b!6820976 (not res!2786063)) b!6820972))

(assert (= (and b!6820972 (not res!2786050)) b!6820964))

(assert (= (and b!6820964 (not res!2786049)) b!6820971))

(assert (= (and b!6820971 (not res!2786059)) b!6820977))

(assert (= (and b!6820977 (not res!2786068)) b!6820975))

(assert (= (and b!6820975 (not res!2786061)) b!6820970))

(assert (= (and start!659576 ((_ is ElementMatch!16635) r!7292)) b!6820963))

(assert (= (and start!659576 ((_ is Concat!25480) r!7292)) b!6820969))

(assert (= (and start!659576 ((_ is Star!16635) r!7292)) b!6820953))

(assert (= (and start!659576 ((_ is Union!16635) r!7292)) b!6820968))

(assert (= (and start!659576 condSetEmpty!46799) setIsEmpty!46799))

(assert (= (and start!659576 (not condSetEmpty!46799)) setNonEmpty!46799))

(assert (= setNonEmpty!46799 b!6820948))

(assert (= b!6820981 b!6820950))

(assert (= (and start!659576 ((_ is Cons!66081) zl!343)) b!6820981))

(assert (= (and start!659576 ((_ is Cons!66082) s!2326)) b!6820960))

(declare-fun m!7566474 () Bool)

(assert (=> start!659576 m!7566474))

(declare-fun m!7566476 () Bool)

(assert (=> b!6820961 m!7566476))

(declare-fun m!7566478 () Bool)

(assert (=> b!6820964 m!7566478))

(declare-fun m!7566480 () Bool)

(assert (=> b!6820964 m!7566480))

(declare-fun m!7566482 () Bool)

(assert (=> b!6820964 m!7566482))

(declare-fun m!7566484 () Bool)

(assert (=> b!6820964 m!7566484))

(declare-fun m!7566486 () Bool)

(assert (=> b!6820964 m!7566486))

(declare-fun m!7566488 () Bool)

(assert (=> b!6820964 m!7566488))

(declare-fun m!7566490 () Bool)

(assert (=> b!6820966 m!7566490))

(declare-fun m!7566492 () Bool)

(assert (=> b!6820973 m!7566492))

(declare-fun m!7566494 () Bool)

(assert (=> b!6820981 m!7566494))

(declare-fun m!7566496 () Bool)

(assert (=> b!6820972 m!7566496))

(declare-fun m!7566498 () Bool)

(assert (=> b!6820947 m!7566498))

(declare-fun m!7566500 () Bool)

(assert (=> b!6820949 m!7566500))

(declare-fun m!7566502 () Bool)

(assert (=> b!6820949 m!7566502))

(declare-fun m!7566504 () Bool)

(assert (=> b!6820949 m!7566504))

(declare-fun m!7566506 () Bool)

(assert (=> b!6820951 m!7566506))

(declare-fun m!7566508 () Bool)

(assert (=> b!6820951 m!7566508))

(declare-fun m!7566510 () Bool)

(assert (=> b!6820951 m!7566510))

(declare-fun m!7566512 () Bool)

(assert (=> b!6820951 m!7566512))

(declare-fun m!7566514 () Bool)

(assert (=> b!6820951 m!7566514))

(declare-fun m!7566516 () Bool)

(assert (=> b!6820971 m!7566516))

(declare-fun m!7566518 () Bool)

(assert (=> b!6820971 m!7566518))

(declare-fun m!7566520 () Bool)

(assert (=> b!6820971 m!7566520))

(declare-fun m!7566522 () Bool)

(assert (=> b!6820971 m!7566522))

(declare-fun m!7566524 () Bool)

(assert (=> b!6820971 m!7566524))

(declare-fun m!7566526 () Bool)

(assert (=> b!6820979 m!7566526))

(declare-fun m!7566528 () Bool)

(assert (=> b!6820979 m!7566528))

(declare-fun m!7566530 () Bool)

(assert (=> b!6820979 m!7566530))

(declare-fun m!7566532 () Bool)

(assert (=> b!6820976 m!7566532))

(declare-fun m!7566534 () Bool)

(assert (=> b!6820976 m!7566534))

(declare-fun m!7566536 () Bool)

(assert (=> b!6820976 m!7566536))

(declare-fun m!7566538 () Bool)

(assert (=> setNonEmpty!46799 m!7566538))

(declare-fun m!7566540 () Bool)

(assert (=> b!6820980 m!7566540))

(declare-fun m!7566542 () Bool)

(assert (=> b!6820970 m!7566542))

(declare-fun m!7566544 () Bool)

(assert (=> b!6820970 m!7566544))

(declare-fun m!7566546 () Bool)

(assert (=> b!6820970 m!7566546))

(assert (=> b!6820970 m!7566482))

(assert (=> b!6820970 m!7566480))

(assert (=> b!6820970 m!7566488))

(declare-fun m!7566548 () Bool)

(assert (=> b!6820970 m!7566548))

(declare-fun m!7566550 () Bool)

(assert (=> b!6820970 m!7566550))

(assert (=> b!6820970 m!7566488))

(declare-fun m!7566552 () Bool)

(assert (=> b!6820967 m!7566552))

(declare-fun m!7566554 () Bool)

(assert (=> b!6820967 m!7566554))

(assert (=> b!6820967 m!7566552))

(declare-fun m!7566556 () Bool)

(assert (=> b!6820967 m!7566556))

(declare-fun m!7566558 () Bool)

(assert (=> b!6820967 m!7566558))

(declare-fun m!7566560 () Bool)

(assert (=> b!6820967 m!7566560))

(assert (=> b!6820967 m!7566558))

(declare-fun m!7566562 () Bool)

(assert (=> b!6820967 m!7566562))

(declare-fun m!7566564 () Bool)

(assert (=> b!6820967 m!7566564))

(declare-fun m!7566566 () Bool)

(assert (=> b!6820967 m!7566566))

(declare-fun m!7566568 () Bool)

(assert (=> b!6820967 m!7566568))

(assert (=> b!6820967 m!7566552))

(declare-fun m!7566570 () Bool)

(assert (=> b!6820978 m!7566570))

(declare-fun m!7566572 () Bool)

(assert (=> b!6820978 m!7566572))

(declare-fun m!7566574 () Bool)

(assert (=> b!6820978 m!7566574))

(declare-fun m!7566576 () Bool)

(assert (=> b!6820975 m!7566576))

(declare-fun m!7566578 () Bool)

(assert (=> b!6820959 m!7566578))

(declare-fun m!7566580 () Bool)

(assert (=> b!6820959 m!7566580))

(declare-fun m!7566582 () Bool)

(assert (=> b!6820959 m!7566582))

(declare-fun m!7566584 () Bool)

(assert (=> b!6820959 m!7566584))

(declare-fun m!7566586 () Bool)

(assert (=> b!6820959 m!7566586))

(declare-fun m!7566588 () Bool)

(assert (=> b!6820959 m!7566588))

(declare-fun m!7566590 () Bool)

(assert (=> b!6820959 m!7566590))

(declare-fun m!7566592 () Bool)

(assert (=> b!6820959 m!7566592))

(declare-fun m!7566594 () Bool)

(assert (=> b!6820959 m!7566594))

(declare-fun m!7566596 () Bool)

(assert (=> b!6820956 m!7566596))

(declare-fun m!7566598 () Bool)

(assert (=> b!6820956 m!7566598))

(assert (=> b!6820956 m!7566598))

(declare-fun m!7566600 () Bool)

(assert (=> b!6820956 m!7566600))

(declare-fun m!7566602 () Bool)

(assert (=> b!6820974 m!7566602))

(declare-fun m!7566604 () Bool)

(assert (=> b!6820965 m!7566604))

(assert (=> b!6820965 m!7566604))

(declare-fun m!7566606 () Bool)

(assert (=> b!6820965 m!7566606))

(declare-fun m!7566608 () Bool)

(assert (=> b!6820958 m!7566608))

(declare-fun m!7566610 () Bool)

(assert (=> b!6820977 m!7566610))

(check-sat (not b!6820975) (not b!6820959) (not b!6820950) (not setNonEmpty!46799) (not b!6820969) (not b!6820953) (not b!6820948) (not b!6820972) (not b!6820966) (not b!6820956) (not b!6820974) (not b!6820978) (not b!6820977) (not b!6820961) (not b!6820960) (not b!6820970) (not start!659576) (not b!6820979) (not b!6820973) (not b!6820947) (not b!6820958) (not b!6820976) (not b!6820949) (not b!6820981) (not b!6820971) (not b!6820980) (not b!6820968) tp_is_empty!42523 (not b!6820967) (not b!6820965) (not b!6820951) (not b!6820964))
(check-sat)
(get-model)

(declare-fun bs!1822285 () Bool)

(declare-fun d!2144757 () Bool)

(assert (= bs!1822285 (and d!2144757 b!6820964)))

(declare-fun lambda!385162 () Int)

(assert (=> bs!1822285 (= lambda!385162 lambda!385153)))

(declare-fun forall!15825 (List!66204 Int) Bool)

(assert (=> d!2144757 (= (inv!84834 (h!72529 zl!343)) (forall!15825 (exprs!6519 (h!72529 zl!343)) lambda!385162))))

(declare-fun bs!1822286 () Bool)

(assert (= bs!1822286 d!2144757))

(declare-fun m!7566710 () Bool)

(assert (=> bs!1822286 m!7566710))

(assert (=> b!6820981 d!2144757))

(declare-fun d!2144761 () Bool)

(assert (=> d!2144761 (= (isEmpty!38469 (t!379942 zl!343)) ((_ is Nil!66081) (t!379942 zl!343)))))

(assert (=> b!6820961 d!2144761))

(declare-fun c!1269422 () Bool)

(declare-fun c!1269424 () Bool)

(declare-fun call!620757 () List!66204)

(declare-fun bm!620749 () Bool)

(declare-fun $colon$colon!2442 (List!66204 Regex!16635) List!66204)

(assert (=> bm!620749 (= call!620757 ($colon$colon!2442 (exprs!6519 (Context!12039 Nil!66080)) (ite (or c!1269422 c!1269424) (regTwo!33782 r!7292) r!7292)))))

(declare-fun b!6821252 () Bool)

(declare-fun e!4115310 () (InoxSet Context!12038))

(declare-fun call!620759 () (InoxSet Context!12038))

(declare-fun call!620755 () (InoxSet Context!12038))

(assert (=> b!6821252 (= e!4115310 ((_ map or) call!620759 call!620755))))

(declare-fun b!6821253 () Bool)

(declare-fun e!4115314 () (InoxSet Context!12038))

(assert (=> b!6821253 (= e!4115310 e!4115314)))

(assert (=> b!6821253 (= c!1269424 ((_ is Concat!25480) r!7292))))

(declare-fun bm!620750 () Bool)

(declare-fun call!620758 () List!66204)

(assert (=> bm!620750 (= call!620758 call!620757)))

(declare-fun b!6821254 () Bool)

(declare-fun e!4115313 () (InoxSet Context!12038))

(declare-fun call!620754 () (InoxSet Context!12038))

(assert (=> b!6821254 (= e!4115313 call!620754)))

(declare-fun b!6821255 () Bool)

(declare-fun e!4115311 () (InoxSet Context!12038))

(assert (=> b!6821255 (= e!4115311 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 Nil!66080) true))))

(declare-fun d!2144763 () Bool)

(declare-fun c!1269426 () Bool)

(assert (=> d!2144763 (= c!1269426 (and ((_ is ElementMatch!16635) r!7292) (= (c!1269331 r!7292) (h!72530 s!2326))))))

(assert (=> d!2144763 (= (derivationStepZipperDown!1863 r!7292 (Context!12039 Nil!66080) (h!72530 s!2326)) e!4115311)))

(declare-fun bm!620751 () Bool)

(assert (=> bm!620751 (= call!620754 call!620755)))

(declare-fun b!6821256 () Bool)

(declare-fun e!4115315 () (InoxSet Context!12038))

(assert (=> b!6821256 (= e!4115311 e!4115315)))

(declare-fun c!1269423 () Bool)

(assert (=> b!6821256 (= c!1269423 ((_ is Union!16635) r!7292))))

(declare-fun b!6821257 () Bool)

(declare-fun c!1269425 () Bool)

(assert (=> b!6821257 (= c!1269425 ((_ is Star!16635) r!7292))))

(assert (=> b!6821257 (= e!4115314 e!4115313)))

(declare-fun bm!620752 () Bool)

(assert (=> bm!620752 (= call!620759 (derivationStepZipperDown!1863 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292)) (ite c!1269423 (Context!12039 Nil!66080) (Context!12039 call!620757)) (h!72530 s!2326)))))

(declare-fun b!6821258 () Bool)

(declare-fun e!4115312 () Bool)

(assert (=> b!6821258 (= c!1269422 e!4115312)))

(declare-fun res!2786155 () Bool)

(assert (=> b!6821258 (=> (not res!2786155) (not e!4115312))))

(assert (=> b!6821258 (= res!2786155 ((_ is Concat!25480) r!7292))))

(assert (=> b!6821258 (= e!4115315 e!4115310)))

(declare-fun bm!620753 () Bool)

(declare-fun call!620756 () (InoxSet Context!12038))

(assert (=> bm!620753 (= call!620755 call!620756)))

(declare-fun bm!620754 () Bool)

(assert (=> bm!620754 (= call!620756 (derivationStepZipperDown!1863 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292)))) (ite (or c!1269423 c!1269422) (Context!12039 Nil!66080) (Context!12039 call!620758)) (h!72530 s!2326)))))

(declare-fun b!6821259 () Bool)

(assert (=> b!6821259 (= e!4115313 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6821260 () Bool)

(assert (=> b!6821260 (= e!4115315 ((_ map or) call!620759 call!620756))))

(declare-fun b!6821261 () Bool)

(declare-fun nullable!6612 (Regex!16635) Bool)

(assert (=> b!6821261 (= e!4115312 (nullable!6612 (regOne!33782 r!7292)))))

(declare-fun b!6821262 () Bool)

(assert (=> b!6821262 (= e!4115314 call!620754)))

(assert (= (and d!2144763 c!1269426) b!6821255))

(assert (= (and d!2144763 (not c!1269426)) b!6821256))

(assert (= (and b!6821256 c!1269423) b!6821260))

(assert (= (and b!6821256 (not c!1269423)) b!6821258))

(assert (= (and b!6821258 res!2786155) b!6821261))

(assert (= (and b!6821258 c!1269422) b!6821252))

(assert (= (and b!6821258 (not c!1269422)) b!6821253))

(assert (= (and b!6821253 c!1269424) b!6821262))

(assert (= (and b!6821253 (not c!1269424)) b!6821257))

(assert (= (and b!6821257 c!1269425) b!6821254))

(assert (= (and b!6821257 (not c!1269425)) b!6821259))

(assert (= (or b!6821262 b!6821254) bm!620750))

(assert (= (or b!6821262 b!6821254) bm!620751))

(assert (= (or b!6821252 bm!620750) bm!620749))

(assert (= (or b!6821252 bm!620751) bm!620753))

(assert (= (or b!6821260 bm!620753) bm!620754))

(assert (= (or b!6821260 b!6821252) bm!620752))

(declare-fun m!7566770 () Bool)

(assert (=> bm!620749 m!7566770))

(declare-fun m!7566772 () Bool)

(assert (=> bm!620752 m!7566772))

(declare-fun m!7566774 () Bool)

(assert (=> bm!620754 m!7566774))

(declare-fun m!7566776 () Bool)

(assert (=> b!6821261 m!7566776))

(declare-fun m!7566778 () Bool)

(assert (=> b!6821255 m!7566778))

(assert (=> b!6820979 d!2144763))

(declare-fun b!6821305 () Bool)

(declare-fun e!4115340 () (InoxSet Context!12038))

(declare-fun e!4115338 () (InoxSet Context!12038))

(assert (=> b!6821305 (= e!4115340 e!4115338)))

(declare-fun c!1269443 () Bool)

(assert (=> b!6821305 (= c!1269443 ((_ is Cons!66080) (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))))

(declare-fun b!6821306 () Bool)

(assert (=> b!6821306 (= e!4115338 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6821307 () Bool)

(declare-fun call!620765 () (InoxSet Context!12038))

(assert (=> b!6821307 (= e!4115338 call!620765)))

(declare-fun b!6821308 () Bool)

(declare-fun e!4115339 () Bool)

(assert (=> b!6821308 (= e!4115339 (nullable!6612 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))))

(declare-fun bm!620760 () Bool)

(assert (=> bm!620760 (= call!620765 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (h!72530 s!2326)))))

(declare-fun b!6821304 () Bool)

(assert (=> b!6821304 (= e!4115340 ((_ map or) call!620765 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (h!72530 s!2326))))))

(declare-fun d!2144777 () Bool)

(declare-fun c!1269442 () Bool)

(assert (=> d!2144777 (= c!1269442 e!4115339)))

(declare-fun res!2786169 () Bool)

(assert (=> d!2144777 (=> (not res!2786169) (not e!4115339))))

(assert (=> d!2144777 (= res!2786169 ((_ is Cons!66080) (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))))

(assert (=> d!2144777 (= (derivationStepZipperUp!1789 (Context!12039 (Cons!66080 r!7292 Nil!66080)) (h!72530 s!2326)) e!4115340)))

(assert (= (and d!2144777 res!2786169) b!6821308))

(assert (= (and d!2144777 c!1269442) b!6821304))

(assert (= (and d!2144777 (not c!1269442)) b!6821305))

(assert (= (and b!6821305 c!1269443) b!6821307))

(assert (= (and b!6821305 (not c!1269443)) b!6821306))

(assert (= (or b!6821304 b!6821307) bm!620760))

(declare-fun m!7566822 () Bool)

(assert (=> b!6821308 m!7566822))

(declare-fun m!7566824 () Bool)

(assert (=> bm!620760 m!7566824))

(declare-fun m!7566826 () Bool)

(assert (=> b!6821304 m!7566826))

(assert (=> b!6820979 d!2144777))

(declare-fun bs!1822308 () Bool)

(declare-fun d!2144793 () Bool)

(assert (= bs!1822308 (and d!2144793 b!6820978)))

(declare-fun lambda!385183 () Int)

(assert (=> bs!1822308 (= lambda!385183 lambda!385151)))

(assert (=> d!2144793 true))

(assert (=> d!2144793 (= (derivationStepZipper!2579 z!1189 (h!72530 s!2326)) (flatMap!2116 z!1189 lambda!385183))))

(declare-fun bs!1822309 () Bool)

(assert (= bs!1822309 d!2144793))

(declare-fun m!7566842 () Bool)

(assert (=> bs!1822309 m!7566842))

(assert (=> b!6820979 d!2144793))

(declare-fun d!2144797 () Bool)

(declare-fun lt!2451382 () Regex!16635)

(assert (=> d!2144797 (validRegex!8371 lt!2451382)))

(assert (=> d!2144797 (= lt!2451382 (generalisedUnion!2479 (unfocusZipperList!2056 zl!343)))))

(assert (=> d!2144797 (= (unfocusZipper!2377 zl!343) lt!2451382)))

(declare-fun bs!1822310 () Bool)

(assert (= bs!1822310 d!2144797))

(declare-fun m!7566844 () Bool)

(assert (=> bs!1822310 m!7566844))

(assert (=> bs!1822310 m!7566604))

(assert (=> bs!1822310 m!7566604))

(assert (=> bs!1822310 m!7566606))

(assert (=> b!6820958 d!2144797))

(declare-fun d!2144799 () Bool)

(declare-fun lt!2451383 () Regex!16635)

(assert (=> d!2144799 (validRegex!8371 lt!2451383)))

(assert (=> d!2144799 (= lt!2451383 (generalisedUnion!2479 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081))))))

(assert (=> d!2144799 (= (unfocusZipper!2377 (Cons!66081 lt!2451338 Nil!66081)) lt!2451383)))

(declare-fun bs!1822311 () Bool)

(assert (= bs!1822311 d!2144799))

(declare-fun m!7566846 () Bool)

(assert (=> bs!1822311 m!7566846))

(declare-fun m!7566848 () Bool)

(assert (=> bs!1822311 m!7566848))

(assert (=> bs!1822311 m!7566848))

(declare-fun m!7566850 () Bool)

(assert (=> bs!1822311 m!7566850))

(assert (=> b!6820980 d!2144799))

(declare-fun b!6821324 () Bool)

(declare-fun e!4115349 () (InoxSet Context!12038))

(declare-fun e!4115347 () (InoxSet Context!12038))

(assert (=> b!6821324 (= e!4115349 e!4115347)))

(declare-fun c!1269450 () Bool)

(assert (=> b!6821324 (= c!1269450 ((_ is Cons!66080) (exprs!6519 lt!2451302)))))

(declare-fun b!6821325 () Bool)

(assert (=> b!6821325 (= e!4115347 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6821326 () Bool)

(declare-fun call!620766 () (InoxSet Context!12038))

(assert (=> b!6821326 (= e!4115347 call!620766)))

(declare-fun b!6821327 () Bool)

(declare-fun e!4115348 () Bool)

(assert (=> b!6821327 (= e!4115348 (nullable!6612 (h!72528 (exprs!6519 lt!2451302))))))

(declare-fun bm!620761 () Bool)

(assert (=> bm!620761 (= call!620766 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 lt!2451302)) (Context!12039 (t!379941 (exprs!6519 lt!2451302))) (h!72530 s!2326)))))

(declare-fun b!6821323 () Bool)

(assert (=> b!6821323 (= e!4115349 ((_ map or) call!620766 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 lt!2451302))) (h!72530 s!2326))))))

(declare-fun d!2144801 () Bool)

(declare-fun c!1269449 () Bool)

(assert (=> d!2144801 (= c!1269449 e!4115348)))

(declare-fun res!2786176 () Bool)

(assert (=> d!2144801 (=> (not res!2786176) (not e!4115348))))

(assert (=> d!2144801 (= res!2786176 ((_ is Cons!66080) (exprs!6519 lt!2451302)))))

(assert (=> d!2144801 (= (derivationStepZipperUp!1789 lt!2451302 (h!72530 s!2326)) e!4115349)))

(assert (= (and d!2144801 res!2786176) b!6821327))

(assert (= (and d!2144801 c!1269449) b!6821323))

(assert (= (and d!2144801 (not c!1269449)) b!6821324))

(assert (= (and b!6821324 c!1269450) b!6821326))

(assert (= (and b!6821324 (not c!1269450)) b!6821325))

(assert (= (or b!6821323 b!6821326) bm!620761))

(declare-fun m!7566852 () Bool)

(assert (=> b!6821327 m!7566852))

(declare-fun m!7566854 () Bool)

(assert (=> bm!620761 m!7566854))

(declare-fun m!7566856 () Bool)

(assert (=> b!6821323 m!7566856))

(assert (=> b!6820959 d!2144801))

(declare-fun b!6821329 () Bool)

(declare-fun e!4115352 () (InoxSet Context!12038))

(declare-fun e!4115350 () (InoxSet Context!12038))

(assert (=> b!6821329 (= e!4115352 e!4115350)))

(declare-fun c!1269452 () Bool)

(assert (=> b!6821329 (= c!1269452 ((_ is Cons!66080) (exprs!6519 lt!2451314)))))

(declare-fun b!6821330 () Bool)

(assert (=> b!6821330 (= e!4115350 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6821331 () Bool)

(declare-fun call!620767 () (InoxSet Context!12038))

(assert (=> b!6821331 (= e!4115350 call!620767)))

(declare-fun b!6821332 () Bool)

(declare-fun e!4115351 () Bool)

(assert (=> b!6821332 (= e!4115351 (nullable!6612 (h!72528 (exprs!6519 lt!2451314))))))

(declare-fun bm!620762 () Bool)

(assert (=> bm!620762 (= call!620767 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 lt!2451314)) (Context!12039 (t!379941 (exprs!6519 lt!2451314))) (h!72530 s!2326)))))

(declare-fun b!6821328 () Bool)

(assert (=> b!6821328 (= e!4115352 ((_ map or) call!620767 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 lt!2451314))) (h!72530 s!2326))))))

(declare-fun d!2144803 () Bool)

(declare-fun c!1269451 () Bool)

(assert (=> d!2144803 (= c!1269451 e!4115351)))

(declare-fun res!2786177 () Bool)

(assert (=> d!2144803 (=> (not res!2786177) (not e!4115351))))

(assert (=> d!2144803 (= res!2786177 ((_ is Cons!66080) (exprs!6519 lt!2451314)))))

(assert (=> d!2144803 (= (derivationStepZipperUp!1789 lt!2451314 (h!72530 s!2326)) e!4115352)))

(assert (= (and d!2144803 res!2786177) b!6821332))

(assert (= (and d!2144803 c!1269451) b!6821328))

(assert (= (and d!2144803 (not c!1269451)) b!6821329))

(assert (= (and b!6821329 c!1269452) b!6821331))

(assert (= (and b!6821329 (not c!1269452)) b!6821330))

(assert (= (or b!6821328 b!6821331) bm!620762))

(declare-fun m!7566858 () Bool)

(assert (=> b!6821332 m!7566858))

(declare-fun m!7566860 () Bool)

(assert (=> bm!620762 m!7566860))

(declare-fun m!7566862 () Bool)

(assert (=> b!6821328 m!7566862))

(assert (=> b!6820959 d!2144803))

(declare-fun bs!1822312 () Bool)

(declare-fun d!2144805 () Bool)

(assert (= bs!1822312 (and d!2144805 b!6820978)))

(declare-fun lambda!385184 () Int)

(assert (=> bs!1822312 (= lambda!385184 lambda!385151)))

(declare-fun bs!1822313 () Bool)

(assert (= bs!1822313 (and d!2144805 d!2144793)))

(assert (=> bs!1822313 (= lambda!385184 lambda!385183)))

(assert (=> d!2144805 true))

(assert (=> d!2144805 (= (derivationStepZipper!2579 lt!2451308 (h!72530 s!2326)) (flatMap!2116 lt!2451308 lambda!385184))))

(declare-fun bs!1822314 () Bool)

(assert (= bs!1822314 d!2144805))

(declare-fun m!7566864 () Bool)

(assert (=> bs!1822314 m!7566864))

(assert (=> b!6820959 d!2144805))

(declare-fun d!2144807 () Bool)

(declare-fun dynLambda!26402 (Int Context!12038) (InoxSet Context!12038))

(assert (=> d!2144807 (= (flatMap!2116 lt!2451308 lambda!385151) (dynLambda!26402 lambda!385151 lt!2451314))))

(declare-fun lt!2451395 () Unit!159961)

(declare-fun choose!50856 ((InoxSet Context!12038) Context!12038 Int) Unit!159961)

(assert (=> d!2144807 (= lt!2451395 (choose!50856 lt!2451308 lt!2451314 lambda!385151))))

(assert (=> d!2144807 (= lt!2451308 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true))))

(assert (=> d!2144807 (= (lemmaFlatMapOnSingletonSet!1642 lt!2451308 lt!2451314 lambda!385151) lt!2451395)))

(declare-fun b_lambda!257255 () Bool)

(assert (=> (not b_lambda!257255) (not d!2144807)))

(declare-fun bs!1822315 () Bool)

(assert (= bs!1822315 d!2144807))

(assert (=> bs!1822315 m!7566588))

(declare-fun m!7566890 () Bool)

(assert (=> bs!1822315 m!7566890))

(declare-fun m!7566892 () Bool)

(assert (=> bs!1822315 m!7566892))

(assert (=> bs!1822315 m!7566584))

(assert (=> b!6820959 d!2144807))

(declare-fun d!2144811 () Bool)

(declare-fun choose!50858 ((InoxSet Context!12038) Int) (InoxSet Context!12038))

(assert (=> d!2144811 (= (flatMap!2116 lt!2451308 lambda!385151) (choose!50858 lt!2451308 lambda!385151))))

(declare-fun bs!1822317 () Bool)

(assert (= bs!1822317 d!2144811))

(declare-fun m!7566896 () Bool)

(assert (=> bs!1822317 m!7566896))

(assert (=> b!6820959 d!2144811))

(declare-fun d!2144817 () Bool)

(assert (=> d!2144817 (= (flatMap!2116 lt!2451330 lambda!385151) (dynLambda!26402 lambda!385151 lt!2451302))))

(declare-fun lt!2451396 () Unit!159961)

(assert (=> d!2144817 (= lt!2451396 (choose!50856 lt!2451330 lt!2451302 lambda!385151))))

(assert (=> d!2144817 (= lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451302 true))))

(assert (=> d!2144817 (= (lemmaFlatMapOnSingletonSet!1642 lt!2451330 lt!2451302 lambda!385151) lt!2451396)))

(declare-fun b_lambda!257257 () Bool)

(assert (=> (not b_lambda!257257) (not d!2144817)))

(declare-fun bs!1822318 () Bool)

(assert (= bs!1822318 d!2144817))

(assert (=> bs!1822318 m!7566582))

(declare-fun m!7566898 () Bool)

(assert (=> bs!1822318 m!7566898))

(declare-fun m!7566900 () Bool)

(assert (=> bs!1822318 m!7566900))

(assert (=> bs!1822318 m!7566586))

(assert (=> b!6820959 d!2144817))

(declare-fun d!2144819 () Bool)

(assert (=> d!2144819 (= (flatMap!2116 lt!2451330 lambda!385151) (choose!50858 lt!2451330 lambda!385151))))

(declare-fun bs!1822319 () Bool)

(assert (= bs!1822319 d!2144819))

(declare-fun m!7566902 () Bool)

(assert (=> bs!1822319 m!7566902))

(assert (=> b!6820959 d!2144819))

(declare-fun b!6821381 () Bool)

(declare-fun res!2786206 () Bool)

(declare-fun e!4115389 () Bool)

(assert (=> b!6821381 (=> (not res!2786206) (not e!4115389))))

(declare-fun call!620776 () Bool)

(assert (=> b!6821381 (= res!2786206 call!620776)))

(declare-fun e!4115387 () Bool)

(assert (=> b!6821381 (= e!4115387 e!4115389)))

(declare-fun b!6821382 () Bool)

(declare-fun call!620775 () Bool)

(assert (=> b!6821382 (= e!4115389 call!620775)))

(declare-fun bm!620769 () Bool)

(declare-fun call!620774 () Bool)

(assert (=> bm!620769 (= call!620775 call!620774)))

(declare-fun d!2144821 () Bool)

(declare-fun res!2786209 () Bool)

(declare-fun e!4115385 () Bool)

(assert (=> d!2144821 (=> res!2786209 e!4115385)))

(assert (=> d!2144821 (= res!2786209 ((_ is ElementMatch!16635) r!7292))))

(assert (=> d!2144821 (= (validRegex!8371 r!7292) e!4115385)))

(declare-fun bm!620770 () Bool)

(declare-fun c!1269463 () Bool)

(assert (=> bm!620770 (= call!620776 (validRegex!8371 (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))))))

(declare-fun b!6821383 () Bool)

(declare-fun res!2786210 () Bool)

(declare-fun e!4115390 () Bool)

(assert (=> b!6821383 (=> res!2786210 e!4115390)))

(assert (=> b!6821383 (= res!2786210 (not ((_ is Concat!25480) r!7292)))))

(assert (=> b!6821383 (= e!4115387 e!4115390)))

(declare-fun b!6821384 () Bool)

(declare-fun e!4115386 () Bool)

(assert (=> b!6821384 (= e!4115386 e!4115387)))

(assert (=> b!6821384 (= c!1269463 ((_ is Union!16635) r!7292))))

(declare-fun b!6821385 () Bool)

(assert (=> b!6821385 (= e!4115385 e!4115386)))

(declare-fun c!1269464 () Bool)

(assert (=> b!6821385 (= c!1269464 ((_ is Star!16635) r!7292))))

(declare-fun b!6821386 () Bool)

(declare-fun e!4115391 () Bool)

(assert (=> b!6821386 (= e!4115391 call!620775)))

(declare-fun b!6821387 () Bool)

(declare-fun e!4115388 () Bool)

(assert (=> b!6821387 (= e!4115386 e!4115388)))

(declare-fun res!2786207 () Bool)

(assert (=> b!6821387 (= res!2786207 (not (nullable!6612 (reg!16964 r!7292))))))

(assert (=> b!6821387 (=> (not res!2786207) (not e!4115388))))

(declare-fun b!6821388 () Bool)

(assert (=> b!6821388 (= e!4115390 e!4115391)))

(declare-fun res!2786208 () Bool)

(assert (=> b!6821388 (=> (not res!2786208) (not e!4115391))))

(assert (=> b!6821388 (= res!2786208 call!620776)))

(declare-fun b!6821389 () Bool)

(assert (=> b!6821389 (= e!4115388 call!620774)))

(declare-fun bm!620771 () Bool)

(assert (=> bm!620771 (= call!620774 (validRegex!8371 (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))))))

(assert (= (and d!2144821 (not res!2786209)) b!6821385))

(assert (= (and b!6821385 c!1269464) b!6821387))

(assert (= (and b!6821385 (not c!1269464)) b!6821384))

(assert (= (and b!6821387 res!2786207) b!6821389))

(assert (= (and b!6821384 c!1269463) b!6821381))

(assert (= (and b!6821384 (not c!1269463)) b!6821383))

(assert (= (and b!6821381 res!2786206) b!6821382))

(assert (= (and b!6821383 (not res!2786210)) b!6821388))

(assert (= (and b!6821388 res!2786208) b!6821386))

(assert (= (or b!6821382 b!6821386) bm!620769))

(assert (= (or b!6821381 b!6821388) bm!620770))

(assert (= (or b!6821389 bm!620769) bm!620771))

(declare-fun m!7566922 () Bool)

(assert (=> bm!620770 m!7566922))

(declare-fun m!7566924 () Bool)

(assert (=> b!6821387 m!7566924))

(declare-fun m!7566926 () Bool)

(assert (=> bm!620771 m!7566926))

(assert (=> start!659576 d!2144821))

(declare-fun bs!1822333 () Bool)

(declare-fun b!6821441 () Bool)

(assert (= bs!1822333 (and b!6821441 b!6820967)))

(declare-fun lambda!385201 () Int)

(assert (=> bs!1822333 (not (= lambda!385201 lambda!385148))))

(assert (=> bs!1822333 (= (and (= (reg!16964 lt!2451335) (reg!16964 r!7292)) (= lt!2451335 r!7292)) (= lambda!385201 lambda!385149))))

(assert (=> bs!1822333 (not (= lambda!385201 lambda!385150))))

(assert (=> b!6821441 true))

(assert (=> b!6821441 true))

(declare-fun bs!1822334 () Bool)

(declare-fun b!6821442 () Bool)

(assert (= bs!1822334 (and b!6821442 b!6820967)))

(declare-fun lambda!385202 () Int)

(assert (=> bs!1822334 (not (= lambda!385202 lambda!385148))))

(assert (=> bs!1822334 (not (= lambda!385202 lambda!385149))))

(assert (=> bs!1822334 (= (and (= (regOne!33782 lt!2451335) (reg!16964 r!7292)) (= (regTwo!33782 lt!2451335) r!7292)) (= lambda!385202 lambda!385150))))

(declare-fun bs!1822335 () Bool)

(assert (= bs!1822335 (and b!6821442 b!6821441)))

(assert (=> bs!1822335 (not (= lambda!385202 lambda!385201))))

(assert (=> b!6821442 true))

(assert (=> b!6821442 true))

(declare-fun bm!620776 () Bool)

(declare-fun call!620782 () Bool)

(declare-fun c!1269473 () Bool)

(assert (=> bm!620776 (= call!620782 (Exists!3703 (ite c!1269473 lambda!385201 lambda!385202)))))

(declare-fun b!6821440 () Bool)

(declare-fun e!4115421 () Bool)

(declare-fun call!620781 () Bool)

(assert (=> b!6821440 (= e!4115421 call!620781)))

(declare-fun e!4115423 () Bool)

(assert (=> b!6821441 (= e!4115423 call!620782)))

(declare-fun bm!620777 () Bool)

(assert (=> bm!620777 (= call!620781 (isEmpty!38470 s!2326))))

(declare-fun e!4115424 () Bool)

(assert (=> b!6821442 (= e!4115424 call!620782)))

(declare-fun b!6821443 () Bool)

(declare-fun e!4115418 () Bool)

(assert (=> b!6821443 (= e!4115418 (matchRSpec!3736 (regTwo!33783 lt!2451335) s!2326))))

(declare-fun b!6821444 () Bool)

(declare-fun res!2786245 () Bool)

(assert (=> b!6821444 (=> res!2786245 e!4115423)))

(assert (=> b!6821444 (= res!2786245 call!620781)))

(assert (=> b!6821444 (= e!4115424 e!4115423)))

(declare-fun b!6821445 () Bool)

(declare-fun e!4115422 () Bool)

(assert (=> b!6821445 (= e!4115421 e!4115422)))

(declare-fun res!2786246 () Bool)

(assert (=> b!6821445 (= res!2786246 (not ((_ is EmptyLang!16635) lt!2451335)))))

(assert (=> b!6821445 (=> (not res!2786246) (not e!4115422))))

(declare-fun b!6821446 () Bool)

(declare-fun c!1269474 () Bool)

(assert (=> b!6821446 (= c!1269474 ((_ is Union!16635) lt!2451335))))

(declare-fun e!4115419 () Bool)

(declare-fun e!4115420 () Bool)

(assert (=> b!6821446 (= e!4115419 e!4115420)))

(declare-fun b!6821447 () Bool)

(assert (=> b!6821447 (= e!4115419 (= s!2326 (Cons!66082 (c!1269331 lt!2451335) Nil!66082)))))

(declare-fun b!6821448 () Bool)

(assert (=> b!6821448 (= e!4115420 e!4115424)))

(assert (=> b!6821448 (= c!1269473 ((_ is Star!16635) lt!2451335))))

(declare-fun b!6821449 () Bool)

(declare-fun c!1269475 () Bool)

(assert (=> b!6821449 (= c!1269475 ((_ is ElementMatch!16635) lt!2451335))))

(assert (=> b!6821449 (= e!4115422 e!4115419)))

(declare-fun d!2144831 () Bool)

(declare-fun c!1269476 () Bool)

(assert (=> d!2144831 (= c!1269476 ((_ is EmptyExpr!16635) lt!2451335))))

(assert (=> d!2144831 (= (matchRSpec!3736 lt!2451335 s!2326) e!4115421)))

(declare-fun b!6821450 () Bool)

(assert (=> b!6821450 (= e!4115420 e!4115418)))

(declare-fun res!2786247 () Bool)

(assert (=> b!6821450 (= res!2786247 (matchRSpec!3736 (regOne!33783 lt!2451335) s!2326))))

(assert (=> b!6821450 (=> res!2786247 e!4115418)))

(assert (= (and d!2144831 c!1269476) b!6821440))

(assert (= (and d!2144831 (not c!1269476)) b!6821445))

(assert (= (and b!6821445 res!2786246) b!6821449))

(assert (= (and b!6821449 c!1269475) b!6821447))

(assert (= (and b!6821449 (not c!1269475)) b!6821446))

(assert (= (and b!6821446 c!1269474) b!6821450))

(assert (= (and b!6821446 (not c!1269474)) b!6821448))

(assert (= (and b!6821450 (not res!2786247)) b!6821443))

(assert (= (and b!6821448 c!1269473) b!6821444))

(assert (= (and b!6821448 (not c!1269473)) b!6821442))

(assert (= (and b!6821444 (not res!2786245)) b!6821441))

(assert (= (or b!6821441 b!6821442) bm!620776))

(assert (= (or b!6821440 b!6821444) bm!620777))

(declare-fun m!7566942 () Bool)

(assert (=> bm!620776 m!7566942))

(assert (=> bm!620777 m!7566568))

(declare-fun m!7566944 () Bool)

(assert (=> b!6821443 m!7566944))

(declare-fun m!7566946 () Bool)

(assert (=> b!6821450 m!7566946))

(assert (=> b!6820976 d!2144831))

(declare-fun b!6821512 () Bool)

(declare-fun e!4115462 () Bool)

(declare-fun head!13677 (List!66206) C!33540)

(assert (=> b!6821512 (= e!4115462 (not (= (head!13677 s!2326) (c!1269331 lt!2451335))))))

(declare-fun b!6821513 () Bool)

(declare-fun e!4115458 () Bool)

(assert (=> b!6821513 (= e!4115458 (nullable!6612 lt!2451335))))

(declare-fun b!6821514 () Bool)

(declare-fun res!2786287 () Bool)

(declare-fun e!4115461 () Bool)

(assert (=> b!6821514 (=> res!2786287 e!4115461)))

(declare-fun e!4115457 () Bool)

(assert (=> b!6821514 (= res!2786287 e!4115457)))

(declare-fun res!2786285 () Bool)

(assert (=> b!6821514 (=> (not res!2786285) (not e!4115457))))

(declare-fun lt!2451425 () Bool)

(assert (=> b!6821514 (= res!2786285 lt!2451425)))

(declare-fun b!6821515 () Bool)

(declare-fun e!4115463 () Bool)

(declare-fun call!620785 () Bool)

(assert (=> b!6821515 (= e!4115463 (= lt!2451425 call!620785))))

(declare-fun b!6821516 () Bool)

(declare-fun e!4115459 () Bool)

(assert (=> b!6821516 (= e!4115459 e!4115462)))

(declare-fun res!2786289 () Bool)

(assert (=> b!6821516 (=> res!2786289 e!4115462)))

(assert (=> b!6821516 (= res!2786289 call!620785)))

(declare-fun b!6821517 () Bool)

(declare-fun derivativeStep!5297 (Regex!16635 C!33540) Regex!16635)

(declare-fun tail!12762 (List!66206) List!66206)

(assert (=> b!6821517 (= e!4115458 (matchR!8818 (derivativeStep!5297 lt!2451335 (head!13677 s!2326)) (tail!12762 s!2326)))))

(declare-fun b!6821518 () Bool)

(assert (=> b!6821518 (= e!4115461 e!4115459)))

(declare-fun res!2786284 () Bool)

(assert (=> b!6821518 (=> (not res!2786284) (not e!4115459))))

(assert (=> b!6821518 (= res!2786284 (not lt!2451425))))

(declare-fun b!6821519 () Bool)

(declare-fun e!4115460 () Bool)

(assert (=> b!6821519 (= e!4115463 e!4115460)))

(declare-fun c!1269491 () Bool)

(assert (=> b!6821519 (= c!1269491 ((_ is EmptyLang!16635) lt!2451335))))

(declare-fun d!2144841 () Bool)

(assert (=> d!2144841 e!4115463))

(declare-fun c!1269490 () Bool)

(assert (=> d!2144841 (= c!1269490 ((_ is EmptyExpr!16635) lt!2451335))))

(assert (=> d!2144841 (= lt!2451425 e!4115458)))

(declare-fun c!1269492 () Bool)

(assert (=> d!2144841 (= c!1269492 (isEmpty!38470 s!2326))))

(assert (=> d!2144841 (validRegex!8371 lt!2451335)))

(assert (=> d!2144841 (= (matchR!8818 lt!2451335 s!2326) lt!2451425)))

(declare-fun b!6821520 () Bool)

(declare-fun res!2786283 () Bool)

(assert (=> b!6821520 (=> (not res!2786283) (not e!4115457))))

(assert (=> b!6821520 (= res!2786283 (isEmpty!38470 (tail!12762 s!2326)))))

(declare-fun b!6821521 () Bool)

(declare-fun res!2786286 () Bool)

(assert (=> b!6821521 (=> (not res!2786286) (not e!4115457))))

(assert (=> b!6821521 (= res!2786286 (not call!620785))))

(declare-fun bm!620780 () Bool)

(assert (=> bm!620780 (= call!620785 (isEmpty!38470 s!2326))))

(declare-fun b!6821522 () Bool)

(assert (=> b!6821522 (= e!4115457 (= (head!13677 s!2326) (c!1269331 lt!2451335)))))

(declare-fun b!6821523 () Bool)

(assert (=> b!6821523 (= e!4115460 (not lt!2451425))))

(declare-fun b!6821524 () Bool)

(declare-fun res!2786290 () Bool)

(assert (=> b!6821524 (=> res!2786290 e!4115461)))

(assert (=> b!6821524 (= res!2786290 (not ((_ is ElementMatch!16635) lt!2451335)))))

(assert (=> b!6821524 (= e!4115460 e!4115461)))

(declare-fun b!6821525 () Bool)

(declare-fun res!2786288 () Bool)

(assert (=> b!6821525 (=> res!2786288 e!4115462)))

(assert (=> b!6821525 (= res!2786288 (not (isEmpty!38470 (tail!12762 s!2326))))))

(assert (= (and d!2144841 c!1269492) b!6821513))

(assert (= (and d!2144841 (not c!1269492)) b!6821517))

(assert (= (and d!2144841 c!1269490) b!6821515))

(assert (= (and d!2144841 (not c!1269490)) b!6821519))

(assert (= (and b!6821519 c!1269491) b!6821523))

(assert (= (and b!6821519 (not c!1269491)) b!6821524))

(assert (= (and b!6821524 (not res!2786290)) b!6821514))

(assert (= (and b!6821514 res!2786285) b!6821521))

(assert (= (and b!6821521 res!2786286) b!6821520))

(assert (= (and b!6821520 res!2786283) b!6821522))

(assert (= (and b!6821514 (not res!2786287)) b!6821518))

(assert (= (and b!6821518 res!2786284) b!6821516))

(assert (= (and b!6821516 (not res!2786289)) b!6821525))

(assert (= (and b!6821525 (not res!2786288)) b!6821512))

(assert (= (or b!6821515 b!6821521 b!6821516) bm!620780))

(assert (=> d!2144841 m!7566568))

(declare-fun m!7566982 () Bool)

(assert (=> d!2144841 m!7566982))

(declare-fun m!7566984 () Bool)

(assert (=> b!6821525 m!7566984))

(assert (=> b!6821525 m!7566984))

(declare-fun m!7566986 () Bool)

(assert (=> b!6821525 m!7566986))

(declare-fun m!7566988 () Bool)

(assert (=> b!6821512 m!7566988))

(assert (=> b!6821517 m!7566988))

(assert (=> b!6821517 m!7566988))

(declare-fun m!7566990 () Bool)

(assert (=> b!6821517 m!7566990))

(assert (=> b!6821517 m!7566984))

(assert (=> b!6821517 m!7566990))

(assert (=> b!6821517 m!7566984))

(declare-fun m!7566992 () Bool)

(assert (=> b!6821517 m!7566992))

(declare-fun m!7566994 () Bool)

(assert (=> b!6821513 m!7566994))

(assert (=> b!6821522 m!7566988))

(assert (=> b!6821520 m!7566984))

(assert (=> b!6821520 m!7566984))

(assert (=> b!6821520 m!7566986))

(assert (=> bm!620780 m!7566568))

(assert (=> b!6820976 d!2144841))

(declare-fun d!2144855 () Bool)

(assert (=> d!2144855 (= (matchR!8818 lt!2451335 s!2326) (matchRSpec!3736 lt!2451335 s!2326))))

(declare-fun lt!2451428 () Unit!159961)

(declare-fun choose!50860 (Regex!16635 List!66206) Unit!159961)

(assert (=> d!2144855 (= lt!2451428 (choose!50860 lt!2451335 s!2326))))

(assert (=> d!2144855 (validRegex!8371 lt!2451335)))

(assert (=> d!2144855 (= (mainMatchTheorem!3736 lt!2451335 s!2326) lt!2451428)))

(declare-fun bs!1822354 () Bool)

(assert (= bs!1822354 d!2144855))

(assert (=> bs!1822354 m!7566534))

(assert (=> bs!1822354 m!7566532))

(declare-fun m!7567014 () Bool)

(assert (=> bs!1822354 m!7567014))

(assert (=> bs!1822354 m!7566982))

(assert (=> b!6820976 d!2144855))

(declare-fun d!2144863 () Bool)

(declare-fun c!1269509 () Bool)

(assert (=> d!2144863 (= c!1269509 (isEmpty!38470 (_1!36913 lt!2451337)))))

(declare-fun e!4115489 () Bool)

(assert (=> d!2144863 (= (matchZipper!2621 lt!2451330 (_1!36913 lt!2451337)) e!4115489)))

(declare-fun b!6821571 () Bool)

(declare-fun nullableZipper!2340 ((InoxSet Context!12038)) Bool)

(assert (=> b!6821571 (= e!4115489 (nullableZipper!2340 lt!2451330))))

(declare-fun b!6821572 () Bool)

(assert (=> b!6821572 (= e!4115489 (matchZipper!2621 (derivationStepZipper!2579 lt!2451330 (head!13677 (_1!36913 lt!2451337))) (tail!12762 (_1!36913 lt!2451337))))))

(assert (= (and d!2144863 c!1269509) b!6821571))

(assert (= (and d!2144863 (not c!1269509)) b!6821572))

(declare-fun m!7567022 () Bool)

(assert (=> d!2144863 m!7567022))

(declare-fun m!7567024 () Bool)

(assert (=> b!6821571 m!7567024))

(declare-fun m!7567026 () Bool)

(assert (=> b!6821572 m!7567026))

(assert (=> b!6821572 m!7567026))

(declare-fun m!7567028 () Bool)

(assert (=> b!6821572 m!7567028))

(declare-fun m!7567030 () Bool)

(assert (=> b!6821572 m!7567030))

(assert (=> b!6821572 m!7567028))

(assert (=> b!6821572 m!7567030))

(declare-fun m!7567034 () Bool)

(assert (=> b!6821572 m!7567034))

(assert (=> b!6820977 d!2144863))

(declare-fun bs!1822362 () Bool)

(declare-fun d!2144867 () Bool)

(assert (= bs!1822362 (and d!2144867 b!6820964)))

(declare-fun lambda!385209 () Int)

(assert (=> bs!1822362 (= lambda!385209 lambda!385153)))

(declare-fun bs!1822363 () Bool)

(assert (= bs!1822363 (and d!2144867 d!2144757)))

(assert (=> bs!1822363 (= lambda!385209 lambda!385162)))

(assert (=> d!2144867 (= (inv!84834 setElem!46799) (forall!15825 (exprs!6519 setElem!46799) lambda!385209))))

(declare-fun bs!1822365 () Bool)

(assert (= bs!1822365 d!2144867))

(declare-fun m!7567042 () Bool)

(assert (=> bs!1822365 m!7567042))

(assert (=> setNonEmpty!46799 d!2144867))

(declare-fun d!2144871 () Bool)

(assert (=> d!2144871 (= (flatMap!2116 z!1189 lambda!385151) (choose!50858 z!1189 lambda!385151))))

(declare-fun bs!1822366 () Bool)

(assert (= bs!1822366 d!2144871))

(declare-fun m!7567046 () Bool)

(assert (=> bs!1822366 m!7567046))

(assert (=> b!6820978 d!2144871))

(declare-fun b!6821574 () Bool)

(declare-fun e!4115492 () (InoxSet Context!12038))

(declare-fun e!4115490 () (InoxSet Context!12038))

(assert (=> b!6821574 (= e!4115492 e!4115490)))

(declare-fun c!1269511 () Bool)

(assert (=> b!6821574 (= c!1269511 ((_ is Cons!66080) (exprs!6519 (h!72529 zl!343))))))

(declare-fun b!6821575 () Bool)

(assert (=> b!6821575 (= e!4115490 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6821576 () Bool)

(declare-fun call!620796 () (InoxSet Context!12038))

(assert (=> b!6821576 (= e!4115490 call!620796)))

(declare-fun b!6821577 () Bool)

(declare-fun e!4115491 () Bool)

(assert (=> b!6821577 (= e!4115491 (nullable!6612 (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun bm!620791 () Bool)

(assert (=> bm!620791 (= call!620796 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (h!72529 zl!343))) (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))) (h!72530 s!2326)))))

(declare-fun b!6821573 () Bool)

(assert (=> b!6821573 (= e!4115492 ((_ map or) call!620796 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))) (h!72530 s!2326))))))

(declare-fun d!2144875 () Bool)

(declare-fun c!1269510 () Bool)

(assert (=> d!2144875 (= c!1269510 e!4115491)))

(declare-fun res!2786304 () Bool)

(assert (=> d!2144875 (=> (not res!2786304) (not e!4115491))))

(assert (=> d!2144875 (= res!2786304 ((_ is Cons!66080) (exprs!6519 (h!72529 zl!343))))))

(assert (=> d!2144875 (= (derivationStepZipperUp!1789 (h!72529 zl!343) (h!72530 s!2326)) e!4115492)))

(assert (= (and d!2144875 res!2786304) b!6821577))

(assert (= (and d!2144875 c!1269510) b!6821573))

(assert (= (and d!2144875 (not c!1269510)) b!6821574))

(assert (= (and b!6821574 c!1269511) b!6821576))

(assert (= (and b!6821574 (not c!1269511)) b!6821575))

(assert (= (or b!6821573 b!6821576) bm!620791))

(declare-fun m!7567048 () Bool)

(assert (=> b!6821577 m!7567048))

(declare-fun m!7567050 () Bool)

(assert (=> bm!620791 m!7567050))

(declare-fun m!7567052 () Bool)

(assert (=> b!6821573 m!7567052))

(assert (=> b!6820978 d!2144875))

(declare-fun d!2144877 () Bool)

(assert (=> d!2144877 (= (flatMap!2116 z!1189 lambda!385151) (dynLambda!26402 lambda!385151 (h!72529 zl!343)))))

(declare-fun lt!2451431 () Unit!159961)

(assert (=> d!2144877 (= lt!2451431 (choose!50856 z!1189 (h!72529 zl!343) lambda!385151))))

(assert (=> d!2144877 (= z!1189 (store ((as const (Array Context!12038 Bool)) false) (h!72529 zl!343) true))))

(assert (=> d!2144877 (= (lemmaFlatMapOnSingletonSet!1642 z!1189 (h!72529 zl!343) lambda!385151) lt!2451431)))

(declare-fun b_lambda!257259 () Bool)

(assert (=> (not b_lambda!257259) (not d!2144877)))

(declare-fun bs!1822367 () Bool)

(assert (= bs!1822367 d!2144877))

(assert (=> bs!1822367 m!7566570))

(declare-fun m!7567054 () Bool)

(assert (=> bs!1822367 m!7567054))

(declare-fun m!7567056 () Bool)

(assert (=> bs!1822367 m!7567056))

(declare-fun m!7567058 () Bool)

(assert (=> bs!1822367 m!7567058))

(assert (=> b!6820978 d!2144877))

(declare-fun d!2144879 () Bool)

(declare-fun lt!2451432 () Regex!16635)

(assert (=> d!2144879 (validRegex!8371 lt!2451432)))

(assert (=> d!2144879 (= lt!2451432 (generalisedUnion!2479 (unfocusZipperList!2056 lt!2451326)))))

(assert (=> d!2144879 (= (unfocusZipper!2377 lt!2451326) lt!2451432)))

(declare-fun bs!1822368 () Bool)

(assert (= bs!1822368 d!2144879))

(declare-fun m!7567060 () Bool)

(assert (=> bs!1822368 m!7567060))

(declare-fun m!7567062 () Bool)

(assert (=> bs!1822368 m!7567062))

(assert (=> bs!1822368 m!7567062))

(declare-fun m!7567064 () Bool)

(assert (=> bs!1822368 m!7567064))

(assert (=> b!6820973 d!2144879))

(declare-fun bs!1822377 () Bool)

(declare-fun d!2144881 () Bool)

(assert (= bs!1822377 (and d!2144881 b!6820964)))

(declare-fun lambda!385217 () Int)

(assert (=> bs!1822377 (= lambda!385217 lambda!385153)))

(declare-fun bs!1822378 () Bool)

(assert (= bs!1822378 (and d!2144881 d!2144757)))

(assert (=> bs!1822378 (= lambda!385217 lambda!385162)))

(declare-fun bs!1822379 () Bool)

(assert (= bs!1822379 (and d!2144881 d!2144867)))

(assert (=> bs!1822379 (= lambda!385217 lambda!385209)))

(declare-fun e!4115511 () Bool)

(assert (=> d!2144881 e!4115511))

(declare-fun res!2786311 () Bool)

(assert (=> d!2144881 (=> (not res!2786311) (not e!4115511))))

(declare-fun lt!2451442 () Regex!16635)

(assert (=> d!2144881 (= res!2786311 (validRegex!8371 lt!2451442))))

(declare-fun e!4115510 () Regex!16635)

(assert (=> d!2144881 (= lt!2451442 e!4115510)))

(declare-fun c!1269526 () Bool)

(declare-fun e!4115512 () Bool)

(assert (=> d!2144881 (= c!1269526 e!4115512)))

(declare-fun res!2786310 () Bool)

(assert (=> d!2144881 (=> (not res!2786310) (not e!4115512))))

(assert (=> d!2144881 (= res!2786310 ((_ is Cons!66080) (exprs!6519 (h!72529 zl!343))))))

(assert (=> d!2144881 (forall!15825 (exprs!6519 (h!72529 zl!343)) lambda!385217)))

(assert (=> d!2144881 (= (generalisedConcat!2232 (exprs!6519 (h!72529 zl!343))) lt!2451442)))

(declare-fun b!6821605 () Bool)

(declare-fun e!4115508 () Bool)

(declare-fun isEmptyExpr!1991 (Regex!16635) Bool)

(assert (=> b!6821605 (= e!4115508 (isEmptyExpr!1991 lt!2451442))))

(declare-fun b!6821606 () Bool)

(declare-fun e!4115509 () Regex!16635)

(assert (=> b!6821606 (= e!4115509 (Concat!25480 (h!72528 (exprs!6519 (h!72529 zl!343))) (generalisedConcat!2232 (t!379941 (exprs!6519 (h!72529 zl!343))))))))

(declare-fun b!6821607 () Bool)

(assert (=> b!6821607 (= e!4115509 EmptyExpr!16635)))

(declare-fun b!6821608 () Bool)

(declare-fun e!4115513 () Bool)

(declare-fun isConcat!1514 (Regex!16635) Bool)

(assert (=> b!6821608 (= e!4115513 (isConcat!1514 lt!2451442))))

(declare-fun b!6821609 () Bool)

(assert (=> b!6821609 (= e!4115510 e!4115509)))

(declare-fun c!1269525 () Bool)

(assert (=> b!6821609 (= c!1269525 ((_ is Cons!66080) (exprs!6519 (h!72529 zl!343))))))

(declare-fun b!6821610 () Bool)

(assert (=> b!6821610 (= e!4115510 (h!72528 (exprs!6519 (h!72529 zl!343))))))

(declare-fun b!6821611 () Bool)

(assert (=> b!6821611 (= e!4115508 e!4115513)))

(declare-fun c!1269524 () Bool)

(declare-fun isEmpty!38473 (List!66204) Bool)

(declare-fun tail!12763 (List!66204) List!66204)

(assert (=> b!6821611 (= c!1269524 (isEmpty!38473 (tail!12763 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun b!6821612 () Bool)

(declare-fun head!13678 (List!66204) Regex!16635)

(assert (=> b!6821612 (= e!4115513 (= lt!2451442 (head!13678 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun b!6821613 () Bool)

(assert (=> b!6821613 (= e!4115512 (isEmpty!38473 (t!379941 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun b!6821614 () Bool)

(assert (=> b!6821614 (= e!4115511 e!4115508)))

(declare-fun c!1269523 () Bool)

(assert (=> b!6821614 (= c!1269523 (isEmpty!38473 (exprs!6519 (h!72529 zl!343))))))

(assert (= (and d!2144881 res!2786310) b!6821613))

(assert (= (and d!2144881 c!1269526) b!6821610))

(assert (= (and d!2144881 (not c!1269526)) b!6821609))

(assert (= (and b!6821609 c!1269525) b!6821606))

(assert (= (and b!6821609 (not c!1269525)) b!6821607))

(assert (= (and d!2144881 res!2786311) b!6821614))

(assert (= (and b!6821614 c!1269523) b!6821605))

(assert (= (and b!6821614 (not c!1269523)) b!6821611))

(assert (= (and b!6821611 c!1269524) b!6821612))

(assert (= (and b!6821611 (not c!1269524)) b!6821608))

(declare-fun m!7567100 () Bool)

(assert (=> b!6821605 m!7567100))

(declare-fun m!7567102 () Bool)

(assert (=> b!6821611 m!7567102))

(assert (=> b!6821611 m!7567102))

(declare-fun m!7567104 () Bool)

(assert (=> b!6821611 m!7567104))

(declare-fun m!7567106 () Bool)

(assert (=> b!6821608 m!7567106))

(declare-fun m!7567108 () Bool)

(assert (=> b!6821613 m!7567108))

(declare-fun m!7567110 () Bool)

(assert (=> b!6821606 m!7567110))

(declare-fun m!7567112 () Bool)

(assert (=> b!6821614 m!7567112))

(declare-fun m!7567114 () Bool)

(assert (=> b!6821612 m!7567114))

(declare-fun m!7567116 () Bool)

(assert (=> d!2144881 m!7567116))

(declare-fun m!7567118 () Bool)

(assert (=> d!2144881 m!7567118))

(assert (=> b!6820974 d!2144881))

(declare-fun d!2144901 () Bool)

(declare-fun c!1269529 () Bool)

(assert (=> d!2144901 (= c!1269529 (isEmpty!38470 (_2!36913 lt!2451337)))))

(declare-fun e!4115517 () Bool)

(assert (=> d!2144901 (= (matchZipper!2621 lt!2451308 (_2!36913 lt!2451337)) e!4115517)))

(declare-fun b!6821620 () Bool)

(assert (=> b!6821620 (= e!4115517 (nullableZipper!2340 lt!2451308))))

(declare-fun b!6821621 () Bool)

(assert (=> b!6821621 (= e!4115517 (matchZipper!2621 (derivationStepZipper!2579 lt!2451308 (head!13677 (_2!36913 lt!2451337))) (tail!12762 (_2!36913 lt!2451337))))))

(assert (= (and d!2144901 c!1269529) b!6821620))

(assert (= (and d!2144901 (not c!1269529)) b!6821621))

(declare-fun m!7567128 () Bool)

(assert (=> d!2144901 m!7567128))

(declare-fun m!7567130 () Bool)

(assert (=> b!6821620 m!7567130))

(declare-fun m!7567132 () Bool)

(assert (=> b!6821621 m!7567132))

(assert (=> b!6821621 m!7567132))

(declare-fun m!7567134 () Bool)

(assert (=> b!6821621 m!7567134))

(declare-fun m!7567136 () Bool)

(assert (=> b!6821621 m!7567136))

(assert (=> b!6821621 m!7567134))

(assert (=> b!6821621 m!7567136))

(declare-fun m!7567138 () Bool)

(assert (=> b!6821621 m!7567138))

(assert (=> b!6820975 d!2144901))

(declare-fun d!2144907 () Bool)

(declare-fun c!1269531 () Bool)

(assert (=> d!2144907 (= c!1269531 (isEmpty!38470 s!2326))))

(declare-fun e!4115519 () Bool)

(assert (=> d!2144907 (= (matchZipper!2621 lt!2451324 s!2326) e!4115519)))

(declare-fun b!6821624 () Bool)

(assert (=> b!6821624 (= e!4115519 (nullableZipper!2340 lt!2451324))))

(declare-fun b!6821625 () Bool)

(assert (=> b!6821625 (= e!4115519 (matchZipper!2621 (derivationStepZipper!2579 lt!2451324 (head!13677 s!2326)) (tail!12762 s!2326)))))

(assert (= (and d!2144907 c!1269531) b!6821624))

(assert (= (and d!2144907 (not c!1269531)) b!6821625))

(assert (=> d!2144907 m!7566568))

(declare-fun m!7567150 () Bool)

(assert (=> b!6821624 m!7567150))

(assert (=> b!6821625 m!7566988))

(assert (=> b!6821625 m!7566988))

(declare-fun m!7567154 () Bool)

(assert (=> b!6821625 m!7567154))

(assert (=> b!6821625 m!7566984))

(assert (=> b!6821625 m!7567154))

(assert (=> b!6821625 m!7566984))

(declare-fun m!7567156 () Bool)

(assert (=> b!6821625 m!7567156))

(assert (=> b!6820956 d!2144907))

(declare-fun d!2144911 () Bool)

(declare-fun c!1269532 () Bool)

(assert (=> d!2144911 (= c!1269532 (isEmpty!38470 (t!379943 s!2326)))))

(declare-fun e!4115520 () Bool)

(assert (=> d!2144911 (= (matchZipper!2621 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) (t!379943 s!2326)) e!4115520)))

(declare-fun b!6821626 () Bool)

(assert (=> b!6821626 (= e!4115520 (nullableZipper!2340 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326))))))

(declare-fun b!6821627 () Bool)

(assert (=> b!6821627 (= e!4115520 (matchZipper!2621 (derivationStepZipper!2579 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) (head!13677 (t!379943 s!2326))) (tail!12762 (t!379943 s!2326))))))

(assert (= (and d!2144911 c!1269532) b!6821626))

(assert (= (and d!2144911 (not c!1269532)) b!6821627))

(declare-fun m!7567158 () Bool)

(assert (=> d!2144911 m!7567158))

(assert (=> b!6821626 m!7566598))

(declare-fun m!7567160 () Bool)

(assert (=> b!6821626 m!7567160))

(declare-fun m!7567162 () Bool)

(assert (=> b!6821627 m!7567162))

(assert (=> b!6821627 m!7566598))

(assert (=> b!6821627 m!7567162))

(declare-fun m!7567164 () Bool)

(assert (=> b!6821627 m!7567164))

(declare-fun m!7567166 () Bool)

(assert (=> b!6821627 m!7567166))

(assert (=> b!6821627 m!7567164))

(assert (=> b!6821627 m!7567166))

(declare-fun m!7567168 () Bool)

(assert (=> b!6821627 m!7567168))

(assert (=> b!6820956 d!2144911))

(declare-fun bs!1822392 () Bool)

(declare-fun d!2144913 () Bool)

(assert (= bs!1822392 (and d!2144913 b!6820978)))

(declare-fun lambda!385220 () Int)

(assert (=> bs!1822392 (= lambda!385220 lambda!385151)))

(declare-fun bs!1822393 () Bool)

(assert (= bs!1822393 (and d!2144913 d!2144793)))

(assert (=> bs!1822393 (= lambda!385220 lambda!385183)))

(declare-fun bs!1822394 () Bool)

(assert (= bs!1822394 (and d!2144913 d!2144805)))

(assert (=> bs!1822394 (= lambda!385220 lambda!385184)))

(assert (=> d!2144913 true))

(assert (=> d!2144913 (= (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) (flatMap!2116 lt!2451324 lambda!385220))))

(declare-fun bs!1822395 () Bool)

(assert (= bs!1822395 d!2144913))

(declare-fun m!7567172 () Bool)

(assert (=> bs!1822395 m!7567172))

(assert (=> b!6820956 d!2144913))

(declare-fun c!1269533 () Bool)

(declare-fun call!620802 () List!66204)

(declare-fun c!1269535 () Bool)

(declare-fun bm!620794 () Bool)

(assert (=> bm!620794 (= call!620802 ($colon$colon!2442 (exprs!6519 lt!2451314) (ite (or c!1269533 c!1269535) (regTwo!33782 (reg!16964 r!7292)) (reg!16964 r!7292))))))

(declare-fun b!6821628 () Bool)

(declare-fun e!4115521 () (InoxSet Context!12038))

(declare-fun call!620804 () (InoxSet Context!12038))

(declare-fun call!620800 () (InoxSet Context!12038))

(assert (=> b!6821628 (= e!4115521 ((_ map or) call!620804 call!620800))))

(declare-fun b!6821629 () Bool)

(declare-fun e!4115525 () (InoxSet Context!12038))

(assert (=> b!6821629 (= e!4115521 e!4115525)))

(assert (=> b!6821629 (= c!1269535 ((_ is Concat!25480) (reg!16964 r!7292)))))

(declare-fun bm!620795 () Bool)

(declare-fun call!620803 () List!66204)

(assert (=> bm!620795 (= call!620803 call!620802)))

(declare-fun b!6821630 () Bool)

(declare-fun e!4115524 () (InoxSet Context!12038))

(declare-fun call!620799 () (InoxSet Context!12038))

(assert (=> b!6821630 (= e!4115524 call!620799)))

(declare-fun b!6821631 () Bool)

(declare-fun e!4115522 () (InoxSet Context!12038))

(assert (=> b!6821631 (= e!4115522 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true))))

(declare-fun d!2144917 () Bool)

(declare-fun c!1269537 () Bool)

(assert (=> d!2144917 (= c!1269537 (and ((_ is ElementMatch!16635) (reg!16964 r!7292)) (= (c!1269331 (reg!16964 r!7292)) (h!72530 s!2326))))))

(assert (=> d!2144917 (= (derivationStepZipperDown!1863 (reg!16964 r!7292) lt!2451314 (h!72530 s!2326)) e!4115522)))

(declare-fun bm!620796 () Bool)

(assert (=> bm!620796 (= call!620799 call!620800)))

(declare-fun b!6821632 () Bool)

(declare-fun e!4115526 () (InoxSet Context!12038))

(assert (=> b!6821632 (= e!4115522 e!4115526)))

(declare-fun c!1269534 () Bool)

(assert (=> b!6821632 (= c!1269534 ((_ is Union!16635) (reg!16964 r!7292)))))

(declare-fun b!6821633 () Bool)

(declare-fun c!1269536 () Bool)

(assert (=> b!6821633 (= c!1269536 ((_ is Star!16635) (reg!16964 r!7292)))))

(assert (=> b!6821633 (= e!4115525 e!4115524)))

(declare-fun bm!620797 () Bool)

(assert (=> bm!620797 (= call!620804 (derivationStepZipperDown!1863 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292))) (ite c!1269534 lt!2451314 (Context!12039 call!620802)) (h!72530 s!2326)))))

(declare-fun b!6821634 () Bool)

(declare-fun e!4115523 () Bool)

(assert (=> b!6821634 (= c!1269533 e!4115523)))

(declare-fun res!2786313 () Bool)

(assert (=> b!6821634 (=> (not res!2786313) (not e!4115523))))

(assert (=> b!6821634 (= res!2786313 ((_ is Concat!25480) (reg!16964 r!7292)))))

(assert (=> b!6821634 (= e!4115526 e!4115521)))

(declare-fun bm!620798 () Bool)

(declare-fun call!620801 () (InoxSet Context!12038))

(assert (=> bm!620798 (= call!620800 call!620801)))

(declare-fun bm!620799 () Bool)

(assert (=> bm!620799 (= call!620801 (derivationStepZipperDown!1863 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292))))) (ite (or c!1269534 c!1269533) lt!2451314 (Context!12039 call!620803)) (h!72530 s!2326)))))

(declare-fun b!6821635 () Bool)

(assert (=> b!6821635 (= e!4115524 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6821636 () Bool)

(assert (=> b!6821636 (= e!4115526 ((_ map or) call!620804 call!620801))))

(declare-fun b!6821637 () Bool)

(assert (=> b!6821637 (= e!4115523 (nullable!6612 (regOne!33782 (reg!16964 r!7292))))))

(declare-fun b!6821638 () Bool)

(assert (=> b!6821638 (= e!4115525 call!620799)))

(assert (= (and d!2144917 c!1269537) b!6821631))

(assert (= (and d!2144917 (not c!1269537)) b!6821632))

(assert (= (and b!6821632 c!1269534) b!6821636))

(assert (= (and b!6821632 (not c!1269534)) b!6821634))

(assert (= (and b!6821634 res!2786313) b!6821637))

(assert (= (and b!6821634 c!1269533) b!6821628))

(assert (= (and b!6821634 (not c!1269533)) b!6821629))

(assert (= (and b!6821629 c!1269535) b!6821638))

(assert (= (and b!6821629 (not c!1269535)) b!6821633))

(assert (= (and b!6821633 c!1269536) b!6821630))

(assert (= (and b!6821633 (not c!1269536)) b!6821635))

(assert (= (or b!6821638 b!6821630) bm!620795))

(assert (= (or b!6821638 b!6821630) bm!620796))

(assert (= (or b!6821628 bm!620795) bm!620794))

(assert (= (or b!6821628 bm!620796) bm!620798))

(assert (= (or b!6821636 bm!620798) bm!620799))

(assert (= (or b!6821636 b!6821628) bm!620797))

(declare-fun m!7567176 () Bool)

(assert (=> bm!620794 m!7567176))

(declare-fun m!7567178 () Bool)

(assert (=> bm!620797 m!7567178))

(declare-fun m!7567180 () Bool)

(assert (=> bm!620799 m!7567180))

(declare-fun m!7567182 () Bool)

(assert (=> b!6821637 m!7567182))

(assert (=> b!6821631 m!7566584))

(assert (=> b!6820951 d!2144917))

(declare-fun d!2144921 () Bool)

(assert (=> d!2144921 (= (flatMap!2116 lt!2451324 lambda!385151) (choose!50858 lt!2451324 lambda!385151))))

(declare-fun bs!1822404 () Bool)

(assert (= bs!1822404 d!2144921))

(declare-fun m!7567184 () Bool)

(assert (=> bs!1822404 m!7567184))

(assert (=> b!6820951 d!2144921))

(declare-fun b!6821650 () Bool)

(declare-fun e!4115531 () (InoxSet Context!12038))

(declare-fun e!4115529 () (InoxSet Context!12038))

(assert (=> b!6821650 (= e!4115531 e!4115529)))

(declare-fun c!1269539 () Bool)

(assert (=> b!6821650 (= c!1269539 ((_ is Cons!66080) (exprs!6519 lt!2451338)))))

(declare-fun b!6821651 () Bool)

(assert (=> b!6821651 (= e!4115529 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6821652 () Bool)

(declare-fun call!620805 () (InoxSet Context!12038))

(assert (=> b!6821652 (= e!4115529 call!620805)))

(declare-fun b!6821653 () Bool)

(declare-fun e!4115530 () Bool)

(assert (=> b!6821653 (= e!4115530 (nullable!6612 (h!72528 (exprs!6519 lt!2451338))))))

(declare-fun bm!620800 () Bool)

(assert (=> bm!620800 (= call!620805 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 lt!2451338)) (Context!12039 (t!379941 (exprs!6519 lt!2451338))) (h!72530 s!2326)))))

(declare-fun b!6821649 () Bool)

(assert (=> b!6821649 (= e!4115531 ((_ map or) call!620805 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 lt!2451338))) (h!72530 s!2326))))))

(declare-fun d!2144923 () Bool)

(declare-fun c!1269538 () Bool)

(assert (=> d!2144923 (= c!1269538 e!4115530)))

(declare-fun res!2786314 () Bool)

(assert (=> d!2144923 (=> (not res!2786314) (not e!4115530))))

(assert (=> d!2144923 (= res!2786314 ((_ is Cons!66080) (exprs!6519 lt!2451338)))))

(assert (=> d!2144923 (= (derivationStepZipperUp!1789 lt!2451338 (h!72530 s!2326)) e!4115531)))

(assert (= (and d!2144923 res!2786314) b!6821653))

(assert (= (and d!2144923 c!1269538) b!6821649))

(assert (= (and d!2144923 (not c!1269538)) b!6821650))

(assert (= (and b!6821650 c!1269539) b!6821652))

(assert (= (and b!6821650 (not c!1269539)) b!6821651))

(assert (= (or b!6821649 b!6821652) bm!620800))

(declare-fun m!7567186 () Bool)

(assert (=> b!6821653 m!7567186))

(declare-fun m!7567188 () Bool)

(assert (=> bm!620800 m!7567188))

(declare-fun m!7567190 () Bool)

(assert (=> b!6821649 m!7567190))

(assert (=> b!6820951 d!2144923))

(declare-fun d!2144925 () Bool)

(assert (=> d!2144925 (= (flatMap!2116 lt!2451324 lambda!385151) (dynLambda!26402 lambda!385151 lt!2451338))))

(declare-fun lt!2451444 () Unit!159961)

(assert (=> d!2144925 (= lt!2451444 (choose!50856 lt!2451324 lt!2451338 lambda!385151))))

(assert (=> d!2144925 (= lt!2451324 (store ((as const (Array Context!12038 Bool)) false) lt!2451338 true))))

(assert (=> d!2144925 (= (lemmaFlatMapOnSingletonSet!1642 lt!2451324 lt!2451338 lambda!385151) lt!2451444)))

(declare-fun b_lambda!257267 () Bool)

(assert (=> (not b_lambda!257267) (not d!2144925)))

(declare-fun bs!1822405 () Bool)

(assert (= bs!1822405 d!2144925))

(assert (=> bs!1822405 m!7566506))

(declare-fun m!7567192 () Bool)

(assert (=> bs!1822405 m!7567192))

(declare-fun m!7567194 () Bool)

(assert (=> bs!1822405 m!7567194))

(assert (=> bs!1822405 m!7566510))

(assert (=> b!6820951 d!2144925))

(declare-fun d!2144927 () Bool)

(declare-fun isEmpty!38474 (Option!16522) Bool)

(assert (=> d!2144927 (= (isDefined!13225 lt!2451310) (not (isEmpty!38474 lt!2451310)))))

(declare-fun bs!1822406 () Bool)

(assert (= bs!1822406 d!2144927))

(declare-fun m!7567196 () Bool)

(assert (=> bs!1822406 m!7567196))

(assert (=> b!6820971 d!2144927))

(declare-fun b!6821709 () Bool)

(declare-fun e!4115557 () Bool)

(declare-fun lt!2451448 () List!66206)

(assert (=> b!6821709 (= e!4115557 (or (not (= (_2!36913 lt!2451337) Nil!66082)) (= lt!2451448 (_1!36913 lt!2451337))))))

(declare-fun b!6821708 () Bool)

(declare-fun res!2786319 () Bool)

(assert (=> b!6821708 (=> (not res!2786319) (not e!4115557))))

(declare-fun size!40690 (List!66206) Int)

(assert (=> b!6821708 (= res!2786319 (= (size!40690 lt!2451448) (+ (size!40690 (_1!36913 lt!2451337)) (size!40690 (_2!36913 lt!2451337)))))))

(declare-fun b!6821706 () Bool)

(declare-fun e!4115558 () List!66206)

(assert (=> b!6821706 (= e!4115558 (_2!36913 lt!2451337))))

(declare-fun b!6821707 () Bool)

(assert (=> b!6821707 (= e!4115558 (Cons!66082 (h!72530 (_1!36913 lt!2451337)) (++!14817 (t!379943 (_1!36913 lt!2451337)) (_2!36913 lt!2451337))))))

(declare-fun d!2144929 () Bool)

(assert (=> d!2144929 e!4115557))

(declare-fun res!2786320 () Bool)

(assert (=> d!2144929 (=> (not res!2786320) (not e!4115557))))

(declare-fun content!12935 (List!66206) (InoxSet C!33540))

(assert (=> d!2144929 (= res!2786320 (= (content!12935 lt!2451448) ((_ map or) (content!12935 (_1!36913 lt!2451337)) (content!12935 (_2!36913 lt!2451337)))))))

(assert (=> d!2144929 (= lt!2451448 e!4115558)))

(declare-fun c!1269542 () Bool)

(assert (=> d!2144929 (= c!1269542 ((_ is Nil!66082) (_1!36913 lt!2451337)))))

(assert (=> d!2144929 (= (++!14817 (_1!36913 lt!2451337) (_2!36913 lt!2451337)) lt!2451448)))

(assert (= (and d!2144929 c!1269542) b!6821706))

(assert (= (and d!2144929 (not c!1269542)) b!6821707))

(assert (= (and d!2144929 res!2786320) b!6821708))

(assert (= (and b!6821708 res!2786319) b!6821709))

(declare-fun m!7567206 () Bool)

(assert (=> b!6821708 m!7567206))

(declare-fun m!7567208 () Bool)

(assert (=> b!6821708 m!7567208))

(declare-fun m!7567210 () Bool)

(assert (=> b!6821708 m!7567210))

(declare-fun m!7567212 () Bool)

(assert (=> b!6821707 m!7567212))

(declare-fun m!7567214 () Bool)

(assert (=> d!2144929 m!7567214))

(declare-fun m!7567216 () Bool)

(assert (=> d!2144929 m!7567216))

(declare-fun m!7567218 () Bool)

(assert (=> d!2144929 m!7567218))

(assert (=> b!6820971 d!2144929))

(declare-fun b!6821728 () Bool)

(declare-fun e!4115571 () Bool)

(assert (=> b!6821728 (= e!4115571 (matchZipper!2621 lt!2451308 s!2326))))

(declare-fun b!6821729 () Bool)

(declare-fun e!4115569 () Option!16522)

(assert (=> b!6821729 (= e!4115569 (Some!16521 (tuple2!67221 Nil!66082 s!2326)))))

(declare-fun d!2144941 () Bool)

(declare-fun e!4115573 () Bool)

(assert (=> d!2144941 e!4115573))

(declare-fun res!2786334 () Bool)

(assert (=> d!2144941 (=> res!2786334 e!4115573)))

(declare-fun e!4115572 () Bool)

(assert (=> d!2144941 (= res!2786334 e!4115572)))

(declare-fun res!2786332 () Bool)

(assert (=> d!2144941 (=> (not res!2786332) (not e!4115572))))

(declare-fun lt!2451456 () Option!16522)

(assert (=> d!2144941 (= res!2786332 (isDefined!13225 lt!2451456))))

(assert (=> d!2144941 (= lt!2451456 e!4115569)))

(declare-fun c!1269548 () Bool)

(assert (=> d!2144941 (= c!1269548 e!4115571)))

(declare-fun res!2786335 () Bool)

(assert (=> d!2144941 (=> (not res!2786335) (not e!4115571))))

(assert (=> d!2144941 (= res!2786335 (matchZipper!2621 lt!2451330 Nil!66082))))

(assert (=> d!2144941 (= (++!14817 Nil!66082 s!2326) s!2326)))

(assert (=> d!2144941 (= (findConcatSeparationZippers!244 lt!2451330 lt!2451308 Nil!66082 s!2326 s!2326) lt!2451456)))

(declare-fun b!6821730 () Bool)

(assert (=> b!6821730 (= e!4115573 (not (isDefined!13225 lt!2451456)))))

(declare-fun b!6821731 () Bool)

(declare-fun e!4115570 () Option!16522)

(assert (=> b!6821731 (= e!4115569 e!4115570)))

(declare-fun c!1269547 () Bool)

(assert (=> b!6821731 (= c!1269547 ((_ is Nil!66082) s!2326))))

(declare-fun b!6821732 () Bool)

(declare-fun res!2786333 () Bool)

(assert (=> b!6821732 (=> (not res!2786333) (not e!4115572))))

(assert (=> b!6821732 (= res!2786333 (matchZipper!2621 lt!2451308 (_2!36913 (get!23022 lt!2451456))))))

(declare-fun b!6821733 () Bool)

(assert (=> b!6821733 (= e!4115572 (= (++!14817 (_1!36913 (get!23022 lt!2451456)) (_2!36913 (get!23022 lt!2451456))) s!2326))))

(declare-fun b!6821734 () Bool)

(assert (=> b!6821734 (= e!4115570 None!16521)))

(declare-fun b!6821735 () Bool)

(declare-fun lt!2451455 () Unit!159961)

(declare-fun lt!2451457 () Unit!159961)

(assert (=> b!6821735 (= lt!2451455 lt!2451457)))

(assert (=> b!6821735 (= (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2754 (List!66206 C!33540 List!66206 List!66206) Unit!159961)

(assert (=> b!6821735 (= lt!2451457 (lemmaMoveElementToOtherListKeepsConcatEq!2754 Nil!66082 (h!72530 s!2326) (t!379943 s!2326) s!2326))))

(assert (=> b!6821735 (= e!4115570 (findConcatSeparationZippers!244 lt!2451330 lt!2451308 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326) s!2326))))

(declare-fun b!6821736 () Bool)

(declare-fun res!2786331 () Bool)

(assert (=> b!6821736 (=> (not res!2786331) (not e!4115572))))

(assert (=> b!6821736 (= res!2786331 (matchZipper!2621 lt!2451330 (_1!36913 (get!23022 lt!2451456))))))

(assert (= (and d!2144941 res!2786335) b!6821728))

(assert (= (and d!2144941 c!1269548) b!6821729))

(assert (= (and d!2144941 (not c!1269548)) b!6821731))

(assert (= (and b!6821731 c!1269547) b!6821734))

(assert (= (and b!6821731 (not c!1269547)) b!6821735))

(assert (= (and d!2144941 res!2786332) b!6821736))

(assert (= (and b!6821736 res!2786331) b!6821732))

(assert (= (and b!6821732 res!2786333) b!6821733))

(assert (= (and d!2144941 (not res!2786334)) b!6821730))

(declare-fun m!7567220 () Bool)

(assert (=> b!6821732 m!7567220))

(declare-fun m!7567222 () Bool)

(assert (=> b!6821732 m!7567222))

(declare-fun m!7567224 () Bool)

(assert (=> b!6821730 m!7567224))

(assert (=> d!2144941 m!7567224))

(declare-fun m!7567226 () Bool)

(assert (=> d!2144941 m!7567226))

(declare-fun m!7567228 () Bool)

(assert (=> d!2144941 m!7567228))

(declare-fun m!7567230 () Bool)

(assert (=> b!6821728 m!7567230))

(assert (=> b!6821736 m!7567220))

(declare-fun m!7567232 () Bool)

(assert (=> b!6821736 m!7567232))

(assert (=> b!6821733 m!7567220))

(declare-fun m!7567234 () Bool)

(assert (=> b!6821733 m!7567234))

(declare-fun m!7567236 () Bool)

(assert (=> b!6821735 m!7567236))

(assert (=> b!6821735 m!7567236))

(declare-fun m!7567238 () Bool)

(assert (=> b!6821735 m!7567238))

(declare-fun m!7567240 () Bool)

(assert (=> b!6821735 m!7567240))

(assert (=> b!6821735 m!7567236))

(declare-fun m!7567242 () Bool)

(assert (=> b!6821735 m!7567242))

(assert (=> b!6820971 d!2144941))

(declare-fun d!2144943 () Bool)

(assert (=> d!2144943 (isDefined!13225 (findConcatSeparationZippers!244 lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true) Nil!66082 s!2326 s!2326))))

(declare-fun lt!2451460 () Unit!159961)

(declare-fun choose!50863 ((InoxSet Context!12038) Context!12038 List!66206) Unit!159961)

(assert (=> d!2144943 (= lt!2451460 (choose!50863 lt!2451330 lt!2451314 s!2326))))

(assert (=> d!2144943 (matchZipper!2621 (appendTo!240 lt!2451330 lt!2451314) s!2326)))

(assert (=> d!2144943 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!244 lt!2451330 lt!2451314 s!2326) lt!2451460)))

(declare-fun bs!1822412 () Bool)

(assert (= bs!1822412 d!2144943))

(assert (=> bs!1822412 m!7566478))

(declare-fun m!7567244 () Bool)

(assert (=> bs!1822412 m!7567244))

(declare-fun m!7567246 () Bool)

(assert (=> bs!1822412 m!7567246))

(declare-fun m!7567248 () Bool)

(assert (=> bs!1822412 m!7567248))

(declare-fun m!7567250 () Bool)

(assert (=> bs!1822412 m!7567250))

(assert (=> bs!1822412 m!7566478))

(assert (=> bs!1822412 m!7566584))

(assert (=> bs!1822412 m!7566584))

(assert (=> bs!1822412 m!7567246))

(assert (=> b!6820971 d!2144943))

(declare-fun d!2144945 () Bool)

(assert (=> d!2144945 (= (get!23022 lt!2451310) (v!52731 lt!2451310))))

(assert (=> b!6820971 d!2144945))

(declare-fun d!2144947 () Bool)

(declare-fun c!1269549 () Bool)

(assert (=> d!2144947 (= c!1269549 (isEmpty!38470 s!2326))))

(declare-fun e!4115574 () Bool)

(assert (=> d!2144947 (= (matchZipper!2621 z!1189 s!2326) e!4115574)))

(declare-fun b!6821737 () Bool)

(assert (=> b!6821737 (= e!4115574 (nullableZipper!2340 z!1189))))

(declare-fun b!6821738 () Bool)

(assert (=> b!6821738 (= e!4115574 (matchZipper!2621 (derivationStepZipper!2579 z!1189 (head!13677 s!2326)) (tail!12762 s!2326)))))

(assert (= (and d!2144947 c!1269549) b!6821737))

(assert (= (and d!2144947 (not c!1269549)) b!6821738))

(assert (=> d!2144947 m!7566568))

(declare-fun m!7567252 () Bool)

(assert (=> b!6821737 m!7567252))

(assert (=> b!6821738 m!7566988))

(assert (=> b!6821738 m!7566988))

(declare-fun m!7567254 () Bool)

(assert (=> b!6821738 m!7567254))

(assert (=> b!6821738 m!7566984))

(assert (=> b!6821738 m!7567254))

(assert (=> b!6821738 m!7566984))

(declare-fun m!7567256 () Bool)

(assert (=> b!6821738 m!7567256))

(assert (=> b!6820972 d!2144947))

(declare-fun bs!1822413 () Bool)

(declare-fun b!6821740 () Bool)

(assert (= bs!1822413 (and b!6821740 b!6820967)))

(declare-fun lambda!385222 () Int)

(assert (=> bs!1822413 (not (= lambda!385222 lambda!385148))))

(declare-fun bs!1822414 () Bool)

(assert (= bs!1822414 (and b!6821740 b!6821442)))

(assert (=> bs!1822414 (not (= lambda!385222 lambda!385202))))

(assert (=> bs!1822413 (= lambda!385222 lambda!385149)))

(declare-fun bs!1822415 () Bool)

(assert (= bs!1822415 (and b!6821740 b!6821441)))

(assert (=> bs!1822415 (= (and (= (reg!16964 r!7292) (reg!16964 lt!2451335)) (= r!7292 lt!2451335)) (= lambda!385222 lambda!385201))))

(assert (=> bs!1822413 (not (= lambda!385222 lambda!385150))))

(assert (=> b!6821740 true))

(assert (=> b!6821740 true))

(declare-fun bs!1822416 () Bool)

(declare-fun b!6821741 () Bool)

(assert (= bs!1822416 (and b!6821741 b!6820967)))

(declare-fun lambda!385223 () Int)

(assert (=> bs!1822416 (not (= lambda!385223 lambda!385148))))

(declare-fun bs!1822417 () Bool)

(assert (= bs!1822417 (and b!6821741 b!6821442)))

(assert (=> bs!1822417 (= (and (= (regOne!33782 r!7292) (regOne!33782 lt!2451335)) (= (regTwo!33782 r!7292) (regTwo!33782 lt!2451335))) (= lambda!385223 lambda!385202))))

(assert (=> bs!1822416 (not (= lambda!385223 lambda!385149))))

(assert (=> bs!1822416 (= (and (= (regOne!33782 r!7292) (reg!16964 r!7292)) (= (regTwo!33782 r!7292) r!7292)) (= lambda!385223 lambda!385150))))

(declare-fun bs!1822418 () Bool)

(assert (= bs!1822418 (and b!6821741 b!6821441)))

(assert (=> bs!1822418 (not (= lambda!385223 lambda!385201))))

(declare-fun bs!1822419 () Bool)

(assert (= bs!1822419 (and b!6821741 b!6821740)))

(assert (=> bs!1822419 (not (= lambda!385223 lambda!385222))))

(assert (=> b!6821741 true))

(assert (=> b!6821741 true))

(declare-fun bm!620801 () Bool)

(declare-fun c!1269550 () Bool)

(declare-fun call!620807 () Bool)

(assert (=> bm!620801 (= call!620807 (Exists!3703 (ite c!1269550 lambda!385222 lambda!385223)))))

(declare-fun b!6821739 () Bool)

(declare-fun e!4115578 () Bool)

(declare-fun call!620806 () Bool)

(assert (=> b!6821739 (= e!4115578 call!620806)))

(declare-fun e!4115580 () Bool)

(assert (=> b!6821740 (= e!4115580 call!620807)))

(declare-fun bm!620802 () Bool)

(assert (=> bm!620802 (= call!620806 (isEmpty!38470 s!2326))))

(declare-fun e!4115581 () Bool)

(assert (=> b!6821741 (= e!4115581 call!620807)))

(declare-fun b!6821742 () Bool)

(declare-fun e!4115575 () Bool)

(assert (=> b!6821742 (= e!4115575 (matchRSpec!3736 (regTwo!33783 r!7292) s!2326))))

(declare-fun b!6821743 () Bool)

(declare-fun res!2786336 () Bool)

(assert (=> b!6821743 (=> res!2786336 e!4115580)))

(assert (=> b!6821743 (= res!2786336 call!620806)))

(assert (=> b!6821743 (= e!4115581 e!4115580)))

(declare-fun b!6821744 () Bool)

(declare-fun e!4115579 () Bool)

(assert (=> b!6821744 (= e!4115578 e!4115579)))

(declare-fun res!2786337 () Bool)

(assert (=> b!6821744 (= res!2786337 (not ((_ is EmptyLang!16635) r!7292)))))

(assert (=> b!6821744 (=> (not res!2786337) (not e!4115579))))

(declare-fun b!6821745 () Bool)

(declare-fun c!1269551 () Bool)

(assert (=> b!6821745 (= c!1269551 ((_ is Union!16635) r!7292))))

(declare-fun e!4115576 () Bool)

(declare-fun e!4115577 () Bool)

(assert (=> b!6821745 (= e!4115576 e!4115577)))

(declare-fun b!6821746 () Bool)

(assert (=> b!6821746 (= e!4115576 (= s!2326 (Cons!66082 (c!1269331 r!7292) Nil!66082)))))

(declare-fun b!6821747 () Bool)

(assert (=> b!6821747 (= e!4115577 e!4115581)))

(assert (=> b!6821747 (= c!1269550 ((_ is Star!16635) r!7292))))

(declare-fun b!6821748 () Bool)

(declare-fun c!1269552 () Bool)

(assert (=> b!6821748 (= c!1269552 ((_ is ElementMatch!16635) r!7292))))

(assert (=> b!6821748 (= e!4115579 e!4115576)))

(declare-fun d!2144949 () Bool)

(declare-fun c!1269553 () Bool)

(assert (=> d!2144949 (= c!1269553 ((_ is EmptyExpr!16635) r!7292))))

(assert (=> d!2144949 (= (matchRSpec!3736 r!7292 s!2326) e!4115578)))

(declare-fun b!6821749 () Bool)

(assert (=> b!6821749 (= e!4115577 e!4115575)))

(declare-fun res!2786338 () Bool)

(assert (=> b!6821749 (= res!2786338 (matchRSpec!3736 (regOne!33783 r!7292) s!2326))))

(assert (=> b!6821749 (=> res!2786338 e!4115575)))

(assert (= (and d!2144949 c!1269553) b!6821739))

(assert (= (and d!2144949 (not c!1269553)) b!6821744))

(assert (= (and b!6821744 res!2786337) b!6821748))

(assert (= (and b!6821748 c!1269552) b!6821746))

(assert (= (and b!6821748 (not c!1269552)) b!6821745))

(assert (= (and b!6821745 c!1269551) b!6821749))

(assert (= (and b!6821745 (not c!1269551)) b!6821747))

(assert (= (and b!6821749 (not res!2786338)) b!6821742))

(assert (= (and b!6821747 c!1269550) b!6821743))

(assert (= (and b!6821747 (not c!1269550)) b!6821741))

(assert (= (and b!6821743 (not res!2786336)) b!6821740))

(assert (= (or b!6821740 b!6821741) bm!620801))

(assert (= (or b!6821739 b!6821743) bm!620802))

(declare-fun m!7567258 () Bool)

(assert (=> bm!620801 m!7567258))

(assert (=> bm!620802 m!7566568))

(declare-fun m!7567260 () Bool)

(assert (=> b!6821742 m!7567260))

(declare-fun m!7567262 () Bool)

(assert (=> b!6821749 m!7567262))

(assert (=> b!6820949 d!2144949))

(declare-fun b!6821750 () Bool)

(declare-fun e!4115587 () Bool)

(assert (=> b!6821750 (= e!4115587 (not (= (head!13677 s!2326) (c!1269331 r!7292))))))

(declare-fun b!6821751 () Bool)

(declare-fun e!4115583 () Bool)

(assert (=> b!6821751 (= e!4115583 (nullable!6612 r!7292))))

(declare-fun b!6821752 () Bool)

(declare-fun res!2786343 () Bool)

(declare-fun e!4115586 () Bool)

(assert (=> b!6821752 (=> res!2786343 e!4115586)))

(declare-fun e!4115582 () Bool)

(assert (=> b!6821752 (= res!2786343 e!4115582)))

(declare-fun res!2786341 () Bool)

(assert (=> b!6821752 (=> (not res!2786341) (not e!4115582))))

(declare-fun lt!2451461 () Bool)

(assert (=> b!6821752 (= res!2786341 lt!2451461)))

(declare-fun b!6821753 () Bool)

(declare-fun e!4115588 () Bool)

(declare-fun call!620808 () Bool)

(assert (=> b!6821753 (= e!4115588 (= lt!2451461 call!620808))))

(declare-fun b!6821754 () Bool)

(declare-fun e!4115584 () Bool)

(assert (=> b!6821754 (= e!4115584 e!4115587)))

(declare-fun res!2786345 () Bool)

(assert (=> b!6821754 (=> res!2786345 e!4115587)))

(assert (=> b!6821754 (= res!2786345 call!620808)))

(declare-fun b!6821755 () Bool)

(assert (=> b!6821755 (= e!4115583 (matchR!8818 (derivativeStep!5297 r!7292 (head!13677 s!2326)) (tail!12762 s!2326)))))

(declare-fun b!6821756 () Bool)

(assert (=> b!6821756 (= e!4115586 e!4115584)))

(declare-fun res!2786340 () Bool)

(assert (=> b!6821756 (=> (not res!2786340) (not e!4115584))))

(assert (=> b!6821756 (= res!2786340 (not lt!2451461))))

(declare-fun b!6821757 () Bool)

(declare-fun e!4115585 () Bool)

(assert (=> b!6821757 (= e!4115588 e!4115585)))

(declare-fun c!1269555 () Bool)

(assert (=> b!6821757 (= c!1269555 ((_ is EmptyLang!16635) r!7292))))

(declare-fun d!2144951 () Bool)

(assert (=> d!2144951 e!4115588))

(declare-fun c!1269554 () Bool)

(assert (=> d!2144951 (= c!1269554 ((_ is EmptyExpr!16635) r!7292))))

(assert (=> d!2144951 (= lt!2451461 e!4115583)))

(declare-fun c!1269556 () Bool)

(assert (=> d!2144951 (= c!1269556 (isEmpty!38470 s!2326))))

(assert (=> d!2144951 (validRegex!8371 r!7292)))

(assert (=> d!2144951 (= (matchR!8818 r!7292 s!2326) lt!2451461)))

(declare-fun b!6821758 () Bool)

(declare-fun res!2786339 () Bool)

(assert (=> b!6821758 (=> (not res!2786339) (not e!4115582))))

(assert (=> b!6821758 (= res!2786339 (isEmpty!38470 (tail!12762 s!2326)))))

(declare-fun b!6821759 () Bool)

(declare-fun res!2786342 () Bool)

(assert (=> b!6821759 (=> (not res!2786342) (not e!4115582))))

(assert (=> b!6821759 (= res!2786342 (not call!620808))))

(declare-fun bm!620803 () Bool)

(assert (=> bm!620803 (= call!620808 (isEmpty!38470 s!2326))))

(declare-fun b!6821760 () Bool)

(assert (=> b!6821760 (= e!4115582 (= (head!13677 s!2326) (c!1269331 r!7292)))))

(declare-fun b!6821761 () Bool)

(assert (=> b!6821761 (= e!4115585 (not lt!2451461))))

(declare-fun b!6821762 () Bool)

(declare-fun res!2786346 () Bool)

(assert (=> b!6821762 (=> res!2786346 e!4115586)))

(assert (=> b!6821762 (= res!2786346 (not ((_ is ElementMatch!16635) r!7292)))))

(assert (=> b!6821762 (= e!4115585 e!4115586)))

(declare-fun b!6821763 () Bool)

(declare-fun res!2786344 () Bool)

(assert (=> b!6821763 (=> res!2786344 e!4115587)))

(assert (=> b!6821763 (= res!2786344 (not (isEmpty!38470 (tail!12762 s!2326))))))

(assert (= (and d!2144951 c!1269556) b!6821751))

(assert (= (and d!2144951 (not c!1269556)) b!6821755))

(assert (= (and d!2144951 c!1269554) b!6821753))

(assert (= (and d!2144951 (not c!1269554)) b!6821757))

(assert (= (and b!6821757 c!1269555) b!6821761))

(assert (= (and b!6821757 (not c!1269555)) b!6821762))

(assert (= (and b!6821762 (not res!2786346)) b!6821752))

(assert (= (and b!6821752 res!2786341) b!6821759))

(assert (= (and b!6821759 res!2786342) b!6821758))

(assert (= (and b!6821758 res!2786339) b!6821760))

(assert (= (and b!6821752 (not res!2786343)) b!6821756))

(assert (= (and b!6821756 res!2786340) b!6821754))

(assert (= (and b!6821754 (not res!2786345)) b!6821763))

(assert (= (and b!6821763 (not res!2786344)) b!6821750))

(assert (= (or b!6821753 b!6821759 b!6821754) bm!620803))

(assert (=> d!2144951 m!7566568))

(assert (=> d!2144951 m!7566474))

(assert (=> b!6821763 m!7566984))

(assert (=> b!6821763 m!7566984))

(assert (=> b!6821763 m!7566986))

(assert (=> b!6821750 m!7566988))

(assert (=> b!6821755 m!7566988))

(assert (=> b!6821755 m!7566988))

(declare-fun m!7567264 () Bool)

(assert (=> b!6821755 m!7567264))

(assert (=> b!6821755 m!7566984))

(assert (=> b!6821755 m!7567264))

(assert (=> b!6821755 m!7566984))

(declare-fun m!7567266 () Bool)

(assert (=> b!6821755 m!7567266))

(declare-fun m!7567268 () Bool)

(assert (=> b!6821751 m!7567268))

(assert (=> b!6821760 m!7566988))

(assert (=> b!6821758 m!7566984))

(assert (=> b!6821758 m!7566984))

(assert (=> b!6821758 m!7566986))

(assert (=> bm!620803 m!7566568))

(assert (=> b!6820949 d!2144951))

(declare-fun d!2144953 () Bool)

(assert (=> d!2144953 (= (matchR!8818 r!7292 s!2326) (matchRSpec!3736 r!7292 s!2326))))

(declare-fun lt!2451462 () Unit!159961)

(assert (=> d!2144953 (= lt!2451462 (choose!50860 r!7292 s!2326))))

(assert (=> d!2144953 (validRegex!8371 r!7292)))

(assert (=> d!2144953 (= (mainMatchTheorem!3736 r!7292 s!2326) lt!2451462)))

(declare-fun bs!1822420 () Bool)

(assert (= bs!1822420 d!2144953))

(assert (=> bs!1822420 m!7566502))

(assert (=> bs!1822420 m!7566500))

(declare-fun m!7567270 () Bool)

(assert (=> bs!1822420 m!7567270))

(assert (=> bs!1822420 m!7566474))

(assert (=> b!6820949 d!2144953))

(declare-fun bs!1822421 () Bool)

(declare-fun d!2144955 () Bool)

(assert (= bs!1822421 (and d!2144955 b!6820964)))

(declare-fun lambda!385226 () Int)

(assert (=> bs!1822421 (= lambda!385226 lambda!385153)))

(declare-fun bs!1822422 () Bool)

(assert (= bs!1822422 (and d!2144955 d!2144757)))

(assert (=> bs!1822422 (= lambda!385226 lambda!385162)))

(declare-fun bs!1822423 () Bool)

(assert (= bs!1822423 (and d!2144955 d!2144867)))

(assert (=> bs!1822423 (= lambda!385226 lambda!385209)))

(declare-fun bs!1822424 () Bool)

(assert (= bs!1822424 (and d!2144955 d!2144881)))

(assert (=> bs!1822424 (= lambda!385226 lambda!385217)))

(assert (=> d!2144955 (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314))) true) (++!14817 (_1!36913 lt!2451337) (_2!36913 lt!2451337)))))

(declare-fun lt!2451468 () Unit!159961)

(assert (=> d!2144955 (= lt!2451468 (lemmaConcatPreservesForall!464 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314) lambda!385226))))

(declare-fun lt!2451467 () Unit!159961)

(declare-fun choose!50864 (Context!12038 Context!12038 List!66206 List!66206) Unit!159961)

(assert (=> d!2144955 (= lt!2451467 (choose!50864 lt!2451302 lt!2451314 (_1!36913 lt!2451337) (_2!36913 lt!2451337)))))

(assert (=> d!2144955 (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) lt!2451302 true) (_1!36913 lt!2451337))))

(assert (=> d!2144955 (= (lemmaConcatenateContextMatchesConcatOfStrings!258 lt!2451302 lt!2451314 (_1!36913 lt!2451337) (_2!36913 lt!2451337)) lt!2451467)))

(declare-fun bs!1822425 () Bool)

(assert (= bs!1822425 d!2144955))

(declare-fun m!7567272 () Bool)

(assert (=> bs!1822425 m!7567272))

(assert (=> bs!1822425 m!7566586))

(assert (=> bs!1822425 m!7566520))

(declare-fun m!7567274 () Bool)

(assert (=> bs!1822425 m!7567274))

(assert (=> bs!1822425 m!7566586))

(declare-fun m!7567276 () Bool)

(assert (=> bs!1822425 m!7567276))

(declare-fun m!7567278 () Bool)

(assert (=> bs!1822425 m!7567278))

(declare-fun m!7567280 () Bool)

(assert (=> bs!1822425 m!7567280))

(assert (=> bs!1822425 m!7566520))

(declare-fun m!7567282 () Bool)

(assert (=> bs!1822425 m!7567282))

(assert (=> bs!1822425 m!7567280))

(assert (=> b!6820970 d!2144955))

(declare-fun d!2144957 () Bool)

(declare-fun e!4115593 () Bool)

(assert (=> d!2144957 e!4115593))

(declare-fun res!2786351 () Bool)

(assert (=> d!2144957 (=> (not res!2786351) (not e!4115593))))

(declare-fun lt!2451471 () List!66204)

(declare-fun content!12936 (List!66204) (InoxSet Regex!16635))

(assert (=> d!2144957 (= res!2786351 (= (content!12936 lt!2451471) ((_ map or) (content!12936 lt!2451325) (content!12936 lt!2451306))))))

(declare-fun e!4115594 () List!66204)

(assert (=> d!2144957 (= lt!2451471 e!4115594)))

(declare-fun c!1269559 () Bool)

(assert (=> d!2144957 (= c!1269559 ((_ is Nil!66080) lt!2451325))))

(assert (=> d!2144957 (= (++!14816 lt!2451325 lt!2451306) lt!2451471)))

(declare-fun b!6821773 () Bool)

(assert (=> b!6821773 (= e!4115594 (Cons!66080 (h!72528 lt!2451325) (++!14816 (t!379941 lt!2451325) lt!2451306)))))

(declare-fun b!6821775 () Bool)

(assert (=> b!6821775 (= e!4115593 (or (not (= lt!2451306 Nil!66080)) (= lt!2451471 lt!2451325)))))

(declare-fun b!6821774 () Bool)

(declare-fun res!2786352 () Bool)

(assert (=> b!6821774 (=> (not res!2786352) (not e!4115593))))

(declare-fun size!40691 (List!66204) Int)

(assert (=> b!6821774 (= res!2786352 (= (size!40691 lt!2451471) (+ (size!40691 lt!2451325) (size!40691 lt!2451306))))))

(declare-fun b!6821772 () Bool)

(assert (=> b!6821772 (= e!4115594 lt!2451306)))

(assert (= (and d!2144957 c!1269559) b!6821772))

(assert (= (and d!2144957 (not c!1269559)) b!6821773))

(assert (= (and d!2144957 res!2786351) b!6821774))

(assert (= (and b!6821774 res!2786352) b!6821775))

(declare-fun m!7567284 () Bool)

(assert (=> d!2144957 m!7567284))

(declare-fun m!7567286 () Bool)

(assert (=> d!2144957 m!7567286))

(declare-fun m!7567288 () Bool)

(assert (=> d!2144957 m!7567288))

(declare-fun m!7567290 () Bool)

(assert (=> b!6821773 m!7567290))

(declare-fun m!7567292 () Bool)

(assert (=> b!6821774 m!7567292))

(declare-fun m!7567294 () Bool)

(assert (=> b!6821774 m!7567294))

(declare-fun m!7567296 () Bool)

(assert (=> b!6821774 m!7567296))

(assert (=> b!6820970 d!2144957))

(declare-fun b!6821776 () Bool)

(declare-fun e!4115600 () Bool)

(assert (=> b!6821776 (= e!4115600 (not (= (head!13677 (_1!36913 lt!2451337)) (c!1269331 (reg!16964 r!7292)))))))

(declare-fun b!6821777 () Bool)

(declare-fun e!4115596 () Bool)

(assert (=> b!6821777 (= e!4115596 (nullable!6612 (reg!16964 r!7292)))))

(declare-fun b!6821778 () Bool)

(declare-fun res!2786357 () Bool)

(declare-fun e!4115599 () Bool)

(assert (=> b!6821778 (=> res!2786357 e!4115599)))

(declare-fun e!4115595 () Bool)

(assert (=> b!6821778 (= res!2786357 e!4115595)))

(declare-fun res!2786355 () Bool)

(assert (=> b!6821778 (=> (not res!2786355) (not e!4115595))))

(declare-fun lt!2451472 () Bool)

(assert (=> b!6821778 (= res!2786355 lt!2451472)))

(declare-fun b!6821779 () Bool)

(declare-fun e!4115601 () Bool)

(declare-fun call!620809 () Bool)

(assert (=> b!6821779 (= e!4115601 (= lt!2451472 call!620809))))

(declare-fun b!6821780 () Bool)

(declare-fun e!4115597 () Bool)

(assert (=> b!6821780 (= e!4115597 e!4115600)))

(declare-fun res!2786359 () Bool)

(assert (=> b!6821780 (=> res!2786359 e!4115600)))

(assert (=> b!6821780 (= res!2786359 call!620809)))

(declare-fun b!6821781 () Bool)

(assert (=> b!6821781 (= e!4115596 (matchR!8818 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337))) (tail!12762 (_1!36913 lt!2451337))))))

(declare-fun b!6821782 () Bool)

(assert (=> b!6821782 (= e!4115599 e!4115597)))

(declare-fun res!2786354 () Bool)

(assert (=> b!6821782 (=> (not res!2786354) (not e!4115597))))

(assert (=> b!6821782 (= res!2786354 (not lt!2451472))))

(declare-fun b!6821783 () Bool)

(declare-fun e!4115598 () Bool)

(assert (=> b!6821783 (= e!4115601 e!4115598)))

(declare-fun c!1269561 () Bool)

(assert (=> b!6821783 (= c!1269561 ((_ is EmptyLang!16635) (reg!16964 r!7292)))))

(declare-fun d!2144959 () Bool)

(assert (=> d!2144959 e!4115601))

(declare-fun c!1269560 () Bool)

(assert (=> d!2144959 (= c!1269560 ((_ is EmptyExpr!16635) (reg!16964 r!7292)))))

(assert (=> d!2144959 (= lt!2451472 e!4115596)))

(declare-fun c!1269562 () Bool)

(assert (=> d!2144959 (= c!1269562 (isEmpty!38470 (_1!36913 lt!2451337)))))

(assert (=> d!2144959 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2144959 (= (matchR!8818 (reg!16964 r!7292) (_1!36913 lt!2451337)) lt!2451472)))

(declare-fun b!6821784 () Bool)

(declare-fun res!2786353 () Bool)

(assert (=> b!6821784 (=> (not res!2786353) (not e!4115595))))

(assert (=> b!6821784 (= res!2786353 (isEmpty!38470 (tail!12762 (_1!36913 lt!2451337))))))

(declare-fun b!6821785 () Bool)

(declare-fun res!2786356 () Bool)

(assert (=> b!6821785 (=> (not res!2786356) (not e!4115595))))

(assert (=> b!6821785 (= res!2786356 (not call!620809))))

(declare-fun bm!620804 () Bool)

(assert (=> bm!620804 (= call!620809 (isEmpty!38470 (_1!36913 lt!2451337)))))

(declare-fun b!6821786 () Bool)

(assert (=> b!6821786 (= e!4115595 (= (head!13677 (_1!36913 lt!2451337)) (c!1269331 (reg!16964 r!7292))))))

(declare-fun b!6821787 () Bool)

(assert (=> b!6821787 (= e!4115598 (not lt!2451472))))

(declare-fun b!6821788 () Bool)

(declare-fun res!2786360 () Bool)

(assert (=> b!6821788 (=> res!2786360 e!4115599)))

(assert (=> b!6821788 (= res!2786360 (not ((_ is ElementMatch!16635) (reg!16964 r!7292))))))

(assert (=> b!6821788 (= e!4115598 e!4115599)))

(declare-fun b!6821789 () Bool)

(declare-fun res!2786358 () Bool)

(assert (=> b!6821789 (=> res!2786358 e!4115600)))

(assert (=> b!6821789 (= res!2786358 (not (isEmpty!38470 (tail!12762 (_1!36913 lt!2451337)))))))

(assert (= (and d!2144959 c!1269562) b!6821777))

(assert (= (and d!2144959 (not c!1269562)) b!6821781))

(assert (= (and d!2144959 c!1269560) b!6821779))

(assert (= (and d!2144959 (not c!1269560)) b!6821783))

(assert (= (and b!6821783 c!1269561) b!6821787))

(assert (= (and b!6821783 (not c!1269561)) b!6821788))

(assert (= (and b!6821788 (not res!2786360)) b!6821778))

(assert (= (and b!6821778 res!2786355) b!6821785))

(assert (= (and b!6821785 res!2786356) b!6821784))

(assert (= (and b!6821784 res!2786353) b!6821786))

(assert (= (and b!6821778 (not res!2786357)) b!6821782))

(assert (= (and b!6821782 res!2786354) b!6821780))

(assert (= (and b!6821780 (not res!2786359)) b!6821789))

(assert (= (and b!6821789 (not res!2786358)) b!6821776))

(assert (= (or b!6821779 b!6821785 b!6821780) bm!620804))

(assert (=> d!2144959 m!7567022))

(declare-fun m!7567298 () Bool)

(assert (=> d!2144959 m!7567298))

(assert (=> b!6821789 m!7567030))

(assert (=> b!6821789 m!7567030))

(declare-fun m!7567300 () Bool)

(assert (=> b!6821789 m!7567300))

(assert (=> b!6821776 m!7567026))

(assert (=> b!6821781 m!7567026))

(assert (=> b!6821781 m!7567026))

(declare-fun m!7567302 () Bool)

(assert (=> b!6821781 m!7567302))

(assert (=> b!6821781 m!7567030))

(assert (=> b!6821781 m!7567302))

(assert (=> b!6821781 m!7567030))

(declare-fun m!7567304 () Bool)

(assert (=> b!6821781 m!7567304))

(assert (=> b!6821777 m!7566924))

(assert (=> b!6821786 m!7567026))

(assert (=> b!6821784 m!7567030))

(assert (=> b!6821784 m!7567030))

(assert (=> b!6821784 m!7567300))

(assert (=> bm!620804 m!7567022))

(assert (=> b!6820970 d!2144959))

(declare-fun d!2144961 () Bool)

(assert (=> d!2144961 (forall!15825 (++!14816 lt!2451325 lt!2451306) lambda!385153)))

(declare-fun lt!2451475 () Unit!159961)

(declare-fun choose!50865 (List!66204 List!66204 Int) Unit!159961)

(assert (=> d!2144961 (= lt!2451475 (choose!50865 lt!2451325 lt!2451306 lambda!385153))))

(assert (=> d!2144961 (forall!15825 lt!2451325 lambda!385153)))

(assert (=> d!2144961 (= (lemmaConcatPreservesForall!464 lt!2451325 lt!2451306 lambda!385153) lt!2451475)))

(declare-fun bs!1822426 () Bool)

(assert (= bs!1822426 d!2144961))

(assert (=> bs!1822426 m!7566482))

(assert (=> bs!1822426 m!7566482))

(declare-fun m!7567306 () Bool)

(assert (=> bs!1822426 m!7567306))

(declare-fun m!7567308 () Bool)

(assert (=> bs!1822426 m!7567308))

(declare-fun m!7567310 () Bool)

(assert (=> bs!1822426 m!7567310))

(assert (=> b!6820970 d!2144961))

(declare-fun bs!1822427 () Bool)

(declare-fun d!2144963 () Bool)

(assert (= bs!1822427 (and d!2144963 d!2144955)))

(declare-fun lambda!385227 () Int)

(assert (=> bs!1822427 (= lambda!385227 lambda!385226)))

(declare-fun bs!1822428 () Bool)

(assert (= bs!1822428 (and d!2144963 d!2144881)))

(assert (=> bs!1822428 (= lambda!385227 lambda!385217)))

(declare-fun bs!1822429 () Bool)

(assert (= bs!1822429 (and d!2144963 d!2144757)))

(assert (=> bs!1822429 (= lambda!385227 lambda!385162)))

(declare-fun bs!1822430 () Bool)

(assert (= bs!1822430 (and d!2144963 d!2144867)))

(assert (=> bs!1822430 (= lambda!385227 lambda!385209)))

(declare-fun bs!1822431 () Bool)

(assert (= bs!1822431 (and d!2144963 b!6820964)))

(assert (=> bs!1822431 (= lambda!385227 lambda!385153)))

(assert (=> d!2144963 (= (inv!84834 lt!2451314) (forall!15825 (exprs!6519 lt!2451314) lambda!385227))))

(declare-fun bs!1822432 () Bool)

(assert (= bs!1822432 d!2144963))

(declare-fun m!7567312 () Bool)

(assert (=> bs!1822432 m!7567312))

(assert (=> b!6820970 d!2144963))

(declare-fun d!2144965 () Bool)

(assert (=> d!2144965 (= (matchR!8818 (reg!16964 r!7292) (_1!36913 lt!2451337)) (matchZipper!2621 lt!2451330 (_1!36913 lt!2451337)))))

(declare-fun lt!2451478 () Unit!159961)

(declare-fun choose!50866 ((InoxSet Context!12038) List!66205 Regex!16635 List!66206) Unit!159961)

(assert (=> d!2144965 (= lt!2451478 (choose!50866 lt!2451330 lt!2451326 (reg!16964 r!7292) (_1!36913 lt!2451337)))))

(assert (=> d!2144965 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2144965 (= (theoremZipperRegexEquiv!937 lt!2451330 lt!2451326 (reg!16964 r!7292) (_1!36913 lt!2451337)) lt!2451478)))

(declare-fun bs!1822433 () Bool)

(assert (= bs!1822433 d!2144965))

(assert (=> bs!1822433 m!7566546))

(assert (=> bs!1822433 m!7566610))

(declare-fun m!7567314 () Bool)

(assert (=> bs!1822433 m!7567314))

(assert (=> bs!1822433 m!7567298))

(assert (=> b!6820970 d!2144965))

(declare-fun d!2144967 () Bool)

(declare-fun c!1269563 () Bool)

(assert (=> d!2144967 (= c!1269563 (isEmpty!38470 lt!2451319))))

(declare-fun e!4115602 () Bool)

(assert (=> d!2144967 (= (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) lt!2451319) e!4115602)))

(declare-fun b!6821790 () Bool)

(assert (=> b!6821790 (= e!4115602 (nullableZipper!2340 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true)))))

(declare-fun b!6821791 () Bool)

(assert (=> b!6821791 (= e!4115602 (matchZipper!2621 (derivationStepZipper!2579 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) (head!13677 lt!2451319)) (tail!12762 lt!2451319)))))

(assert (= (and d!2144967 c!1269563) b!6821790))

(assert (= (and d!2144967 (not c!1269563)) b!6821791))

(declare-fun m!7567316 () Bool)

(assert (=> d!2144967 m!7567316))

(assert (=> b!6821790 m!7566488))

(declare-fun m!7567318 () Bool)

(assert (=> b!6821790 m!7567318))

(declare-fun m!7567320 () Bool)

(assert (=> b!6821791 m!7567320))

(assert (=> b!6821791 m!7566488))

(assert (=> b!6821791 m!7567320))

(declare-fun m!7567322 () Bool)

(assert (=> b!6821791 m!7567322))

(declare-fun m!7567324 () Bool)

(assert (=> b!6821791 m!7567324))

(assert (=> b!6821791 m!7567322))

(assert (=> b!6821791 m!7567324))

(declare-fun m!7567326 () Bool)

(assert (=> b!6821791 m!7567326))

(assert (=> b!6820970 d!2144967))

(declare-fun bs!1822434 () Bool)

(declare-fun d!2144969 () Bool)

(assert (= bs!1822434 (and d!2144969 d!2144955)))

(declare-fun lambda!385230 () Int)

(assert (=> bs!1822434 (= lambda!385230 lambda!385226)))

(declare-fun bs!1822435 () Bool)

(assert (= bs!1822435 (and d!2144969 d!2144757)))

(assert (=> bs!1822435 (= lambda!385230 lambda!385162)))

(declare-fun bs!1822436 () Bool)

(assert (= bs!1822436 (and d!2144969 d!2144867)))

(assert (=> bs!1822436 (= lambda!385230 lambda!385209)))

(declare-fun bs!1822437 () Bool)

(assert (= bs!1822437 (and d!2144969 b!6820964)))

(assert (=> bs!1822437 (= lambda!385230 lambda!385153)))

(declare-fun bs!1822438 () Bool)

(assert (= bs!1822438 (and d!2144969 d!2144881)))

(assert (=> bs!1822438 (= lambda!385230 lambda!385217)))

(declare-fun bs!1822439 () Bool)

(assert (= bs!1822439 (and d!2144969 d!2144963)))

(assert (=> bs!1822439 (= lambda!385230 lambda!385227)))

(declare-fun b!6821812 () Bool)

(declare-fun e!4115619 () Bool)

(declare-fun lt!2451481 () Regex!16635)

(assert (=> b!6821812 (= e!4115619 (= lt!2451481 (head!13678 (unfocusZipperList!2056 zl!343))))))

(declare-fun e!4115617 () Bool)

(assert (=> d!2144969 e!4115617))

(declare-fun res!2786365 () Bool)

(assert (=> d!2144969 (=> (not res!2786365) (not e!4115617))))

(assert (=> d!2144969 (= res!2786365 (validRegex!8371 lt!2451481))))

(declare-fun e!4115618 () Regex!16635)

(assert (=> d!2144969 (= lt!2451481 e!4115618)))

(declare-fun c!1269572 () Bool)

(declare-fun e!4115615 () Bool)

(assert (=> d!2144969 (= c!1269572 e!4115615)))

(declare-fun res!2786366 () Bool)

(assert (=> d!2144969 (=> (not res!2786366) (not e!4115615))))

(assert (=> d!2144969 (= res!2786366 ((_ is Cons!66080) (unfocusZipperList!2056 zl!343)))))

(assert (=> d!2144969 (forall!15825 (unfocusZipperList!2056 zl!343) lambda!385230)))

(assert (=> d!2144969 (= (generalisedUnion!2479 (unfocusZipperList!2056 zl!343)) lt!2451481)))

(declare-fun b!6821813 () Bool)

(assert (=> b!6821813 (= e!4115615 (isEmpty!38473 (t!379941 (unfocusZipperList!2056 zl!343))))))

(declare-fun b!6821814 () Bool)

(declare-fun e!4115620 () Regex!16635)

(assert (=> b!6821814 (= e!4115620 (Union!16635 (h!72528 (unfocusZipperList!2056 zl!343)) (generalisedUnion!2479 (t!379941 (unfocusZipperList!2056 zl!343)))))))

(declare-fun b!6821815 () Bool)

(declare-fun isUnion!1429 (Regex!16635) Bool)

(assert (=> b!6821815 (= e!4115619 (isUnion!1429 lt!2451481))))

(declare-fun b!6821816 () Bool)

(declare-fun e!4115616 () Bool)

(assert (=> b!6821816 (= e!4115616 e!4115619)))

(declare-fun c!1269574 () Bool)

(assert (=> b!6821816 (= c!1269574 (isEmpty!38473 (tail!12763 (unfocusZipperList!2056 zl!343))))))

(declare-fun b!6821817 () Bool)

(assert (=> b!6821817 (= e!4115618 (h!72528 (unfocusZipperList!2056 zl!343)))))

(declare-fun b!6821818 () Bool)

(assert (=> b!6821818 (= e!4115618 e!4115620)))

(declare-fun c!1269575 () Bool)

(assert (=> b!6821818 (= c!1269575 ((_ is Cons!66080) (unfocusZipperList!2056 zl!343)))))

(declare-fun b!6821819 () Bool)

(declare-fun isEmptyLang!1999 (Regex!16635) Bool)

(assert (=> b!6821819 (= e!4115616 (isEmptyLang!1999 lt!2451481))))

(declare-fun b!6821820 () Bool)

(assert (=> b!6821820 (= e!4115617 e!4115616)))

(declare-fun c!1269573 () Bool)

(assert (=> b!6821820 (= c!1269573 (isEmpty!38473 (unfocusZipperList!2056 zl!343)))))

(declare-fun b!6821821 () Bool)

(assert (=> b!6821821 (= e!4115620 EmptyLang!16635)))

(assert (= (and d!2144969 res!2786366) b!6821813))

(assert (= (and d!2144969 c!1269572) b!6821817))

(assert (= (and d!2144969 (not c!1269572)) b!6821818))

(assert (= (and b!6821818 c!1269575) b!6821814))

(assert (= (and b!6821818 (not c!1269575)) b!6821821))

(assert (= (and d!2144969 res!2786365) b!6821820))

(assert (= (and b!6821820 c!1269573) b!6821819))

(assert (= (and b!6821820 (not c!1269573)) b!6821816))

(assert (= (and b!6821816 c!1269574) b!6821812))

(assert (= (and b!6821816 (not c!1269574)) b!6821815))

(assert (=> b!6821816 m!7566604))

(declare-fun m!7567328 () Bool)

(assert (=> b!6821816 m!7567328))

(assert (=> b!6821816 m!7567328))

(declare-fun m!7567330 () Bool)

(assert (=> b!6821816 m!7567330))

(assert (=> b!6821820 m!7566604))

(declare-fun m!7567332 () Bool)

(assert (=> b!6821820 m!7567332))

(assert (=> b!6821812 m!7566604))

(declare-fun m!7567334 () Bool)

(assert (=> b!6821812 m!7567334))

(declare-fun m!7567336 () Bool)

(assert (=> b!6821819 m!7567336))

(declare-fun m!7567338 () Bool)

(assert (=> b!6821815 m!7567338))

(declare-fun m!7567340 () Bool)

(assert (=> d!2144969 m!7567340))

(assert (=> d!2144969 m!7566604))

(declare-fun m!7567342 () Bool)

(assert (=> d!2144969 m!7567342))

(declare-fun m!7567344 () Bool)

(assert (=> b!6821814 m!7567344))

(declare-fun m!7567346 () Bool)

(assert (=> b!6821813 m!7567346))

(assert (=> b!6820965 d!2144969))

(declare-fun bs!1822440 () Bool)

(declare-fun d!2144971 () Bool)

(assert (= bs!1822440 (and d!2144971 d!2144969)))

(declare-fun lambda!385233 () Int)

(assert (=> bs!1822440 (= lambda!385233 lambda!385230)))

(declare-fun bs!1822441 () Bool)

(assert (= bs!1822441 (and d!2144971 d!2144955)))

(assert (=> bs!1822441 (= lambda!385233 lambda!385226)))

(declare-fun bs!1822442 () Bool)

(assert (= bs!1822442 (and d!2144971 d!2144757)))

(assert (=> bs!1822442 (= lambda!385233 lambda!385162)))

(declare-fun bs!1822443 () Bool)

(assert (= bs!1822443 (and d!2144971 d!2144867)))

(assert (=> bs!1822443 (= lambda!385233 lambda!385209)))

(declare-fun bs!1822444 () Bool)

(assert (= bs!1822444 (and d!2144971 b!6820964)))

(assert (=> bs!1822444 (= lambda!385233 lambda!385153)))

(declare-fun bs!1822445 () Bool)

(assert (= bs!1822445 (and d!2144971 d!2144881)))

(assert (=> bs!1822445 (= lambda!385233 lambda!385217)))

(declare-fun bs!1822446 () Bool)

(assert (= bs!1822446 (and d!2144971 d!2144963)))

(assert (=> bs!1822446 (= lambda!385233 lambda!385227)))

(declare-fun lt!2451484 () List!66204)

(assert (=> d!2144971 (forall!15825 lt!2451484 lambda!385233)))

(declare-fun e!4115623 () List!66204)

(assert (=> d!2144971 (= lt!2451484 e!4115623)))

(declare-fun c!1269578 () Bool)

(assert (=> d!2144971 (= c!1269578 ((_ is Cons!66081) zl!343))))

(assert (=> d!2144971 (= (unfocusZipperList!2056 zl!343) lt!2451484)))

(declare-fun b!6821826 () Bool)

(assert (=> b!6821826 (= e!4115623 (Cons!66080 (generalisedConcat!2232 (exprs!6519 (h!72529 zl!343))) (unfocusZipperList!2056 (t!379942 zl!343))))))

(declare-fun b!6821827 () Bool)

(assert (=> b!6821827 (= e!4115623 Nil!66080)))

(assert (= (and d!2144971 c!1269578) b!6821826))

(assert (= (and d!2144971 (not c!1269578)) b!6821827))

(declare-fun m!7567348 () Bool)

(assert (=> d!2144971 m!7567348))

(assert (=> b!6821826 m!7566602))

(declare-fun m!7567350 () Bool)

(assert (=> b!6821826 m!7567350))

(assert (=> b!6820965 d!2144971))

(declare-fun d!2144973 () Bool)

(declare-fun e!4115626 () Bool)

(assert (=> d!2144973 e!4115626))

(declare-fun res!2786369 () Bool)

(assert (=> d!2144973 (=> (not res!2786369) (not e!4115626))))

(declare-fun lt!2451487 () List!66205)

(declare-fun noDuplicate!2418 (List!66205) Bool)

(assert (=> d!2144973 (= res!2786369 (noDuplicate!2418 lt!2451487))))

(declare-fun choose!50867 ((InoxSet Context!12038)) List!66205)

(assert (=> d!2144973 (= lt!2451487 (choose!50867 z!1189))))

(assert (=> d!2144973 (= (toList!10419 z!1189) lt!2451487)))

(declare-fun b!6821830 () Bool)

(declare-fun content!12937 (List!66205) (InoxSet Context!12038))

(assert (=> b!6821830 (= e!4115626 (= (content!12937 lt!2451487) z!1189))))

(assert (= (and d!2144973 res!2786369) b!6821830))

(declare-fun m!7567352 () Bool)

(assert (=> d!2144973 m!7567352))

(declare-fun m!7567354 () Bool)

(assert (=> d!2144973 m!7567354))

(declare-fun m!7567356 () Bool)

(assert (=> b!6821830 m!7567356))

(assert (=> b!6820966 d!2144973))

(declare-fun d!2144975 () Bool)

(declare-fun lt!2451488 () Regex!16635)

(assert (=> d!2144975 (validRegex!8371 lt!2451488)))

(assert (=> d!2144975 (= lt!2451488 (generalisedUnion!2479 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081))))))

(assert (=> d!2144975 (= (unfocusZipper!2377 (Cons!66081 lt!2451314 Nil!66081)) lt!2451488)))

(declare-fun bs!1822447 () Bool)

(assert (= bs!1822447 d!2144975))

(declare-fun m!7567358 () Bool)

(assert (=> bs!1822447 m!7567358))

(declare-fun m!7567360 () Bool)

(assert (=> bs!1822447 m!7567360))

(assert (=> bs!1822447 m!7567360))

(declare-fun m!7567362 () Bool)

(assert (=> bs!1822447 m!7567362))

(assert (=> b!6820947 d!2144975))

(declare-fun d!2144977 () Bool)

(assert (=> d!2144977 (= (isDefined!13225 (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 Nil!66082 s!2326 s!2326)) (not (isEmpty!38474 (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 Nil!66082 s!2326 s!2326))))))

(declare-fun bs!1822448 () Bool)

(assert (= bs!1822448 d!2144977))

(assert (=> bs!1822448 m!7566558))

(declare-fun m!7567364 () Bool)

(assert (=> bs!1822448 m!7567364))

(assert (=> b!6820967 d!2144977))

(declare-fun bs!1822449 () Bool)

(declare-fun d!2144979 () Bool)

(assert (= bs!1822449 (and d!2144979 b!6820967)))

(declare-fun lambda!385238 () Int)

(assert (=> bs!1822449 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385238 lambda!385148))))

(declare-fun bs!1822450 () Bool)

(assert (= bs!1822450 (and d!2144979 b!6821741)))

(assert (=> bs!1822450 (not (= lambda!385238 lambda!385223))))

(declare-fun bs!1822451 () Bool)

(assert (= bs!1822451 (and d!2144979 b!6821442)))

(assert (=> bs!1822451 (not (= lambda!385238 lambda!385202))))

(assert (=> bs!1822449 (not (= lambda!385238 lambda!385149))))

(assert (=> bs!1822449 (not (= lambda!385238 lambda!385150))))

(declare-fun bs!1822452 () Bool)

(assert (= bs!1822452 (and d!2144979 b!6821441)))

(assert (=> bs!1822452 (not (= lambda!385238 lambda!385201))))

(declare-fun bs!1822453 () Bool)

(assert (= bs!1822453 (and d!2144979 b!6821740)))

(assert (=> bs!1822453 (not (= lambda!385238 lambda!385222))))

(assert (=> d!2144979 true))

(assert (=> d!2144979 true))

(declare-fun lambda!385239 () Int)

(assert (=> bs!1822449 (not (= lambda!385239 lambda!385148))))

(assert (=> bs!1822450 (not (= lambda!385239 lambda!385223))))

(assert (=> bs!1822451 (not (= lambda!385239 lambda!385202))))

(declare-fun bs!1822454 () Bool)

(assert (= bs!1822454 d!2144979))

(assert (=> bs!1822454 (not (= lambda!385239 lambda!385238))))

(assert (=> bs!1822449 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385239 lambda!385149))))

(assert (=> bs!1822449 (not (= lambda!385239 lambda!385150))))

(assert (=> bs!1822452 (= (and (= (reg!16964 r!7292) (reg!16964 lt!2451335)) (= (Star!16635 (reg!16964 r!7292)) lt!2451335)) (= lambda!385239 lambda!385201))))

(assert (=> bs!1822453 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385239 lambda!385222))))

(assert (=> d!2144979 true))

(assert (=> d!2144979 true))

(assert (=> d!2144979 (= (Exists!3703 lambda!385238) (Exists!3703 lambda!385239))))

(declare-fun lt!2451491 () Unit!159961)

(declare-fun choose!50868 (Regex!16635 List!66206) Unit!159961)

(assert (=> d!2144979 (= lt!2451491 (choose!50868 (reg!16964 r!7292) s!2326))))

(assert (=> d!2144979 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2144979 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!794 (reg!16964 r!7292) s!2326) lt!2451491)))

(declare-fun m!7567366 () Bool)

(assert (=> bs!1822454 m!7567366))

(declare-fun m!7567368 () Bool)

(assert (=> bs!1822454 m!7567368))

(declare-fun m!7567370 () Bool)

(assert (=> bs!1822454 m!7567370))

(assert (=> bs!1822454 m!7567298))

(assert (=> b!6820967 d!2144979))

(declare-fun d!2144981 () Bool)

(declare-fun choose!50869 (Int) Bool)

(assert (=> d!2144981 (= (Exists!3703 lambda!385149) (choose!50869 lambda!385149))))

(declare-fun bs!1822455 () Bool)

(assert (= bs!1822455 d!2144981))

(declare-fun m!7567372 () Bool)

(assert (=> bs!1822455 m!7567372))

(assert (=> b!6820967 d!2144981))

(declare-fun d!2144983 () Bool)

(assert (=> d!2144983 (= (isEmpty!38470 s!2326) ((_ is Nil!66082) s!2326))))

(assert (=> b!6820967 d!2144983))

(declare-fun d!2144985 () Bool)

(assert (=> d!2144985 (= (Exists!3703 lambda!385148) (choose!50869 lambda!385148))))

(declare-fun bs!1822456 () Bool)

(assert (= bs!1822456 d!2144985))

(declare-fun m!7567374 () Bool)

(assert (=> bs!1822456 m!7567374))

(assert (=> b!6820967 d!2144985))

(declare-fun bs!1822457 () Bool)

(declare-fun d!2144987 () Bool)

(assert (= bs!1822457 (and d!2144987 b!6820967)))

(declare-fun lambda!385244 () Int)

(assert (=> bs!1822457 (= lambda!385244 lambda!385148)))

(declare-fun bs!1822458 () Bool)

(assert (= bs!1822458 (and d!2144987 b!6821741)))

(assert (=> bs!1822458 (not (= lambda!385244 lambda!385223))))

(declare-fun bs!1822459 () Bool)

(assert (= bs!1822459 (and d!2144987 b!6821442)))

(assert (=> bs!1822459 (not (= lambda!385244 lambda!385202))))

(declare-fun bs!1822460 () Bool)

(assert (= bs!1822460 (and d!2144987 d!2144979)))

(assert (=> bs!1822460 (= (= r!7292 (Star!16635 (reg!16964 r!7292))) (= lambda!385244 lambda!385238))))

(assert (=> bs!1822457 (not (= lambda!385244 lambda!385149))))

(assert (=> bs!1822457 (not (= lambda!385244 lambda!385150))))

(assert (=> bs!1822460 (not (= lambda!385244 lambda!385239))))

(declare-fun bs!1822461 () Bool)

(assert (= bs!1822461 (and d!2144987 b!6821441)))

(assert (=> bs!1822461 (not (= lambda!385244 lambda!385201))))

(declare-fun bs!1822462 () Bool)

(assert (= bs!1822462 (and d!2144987 b!6821740)))

(assert (=> bs!1822462 (not (= lambda!385244 lambda!385222))))

(assert (=> d!2144987 true))

(assert (=> d!2144987 true))

(assert (=> d!2144987 true))

(declare-fun lambda!385245 () Int)

(assert (=> bs!1822457 (not (= lambda!385245 lambda!385148))))

(assert (=> bs!1822458 (= (and (= (reg!16964 r!7292) (regOne!33782 r!7292)) (= r!7292 (regTwo!33782 r!7292))) (= lambda!385245 lambda!385223))))

(assert (=> bs!1822459 (= (and (= (reg!16964 r!7292) (regOne!33782 lt!2451335)) (= r!7292 (regTwo!33782 lt!2451335))) (= lambda!385245 lambda!385202))))

(assert (=> bs!1822460 (not (= lambda!385245 lambda!385238))))

(assert (=> bs!1822457 (not (= lambda!385245 lambda!385149))))

(assert (=> bs!1822457 (= lambda!385245 lambda!385150)))

(assert (=> bs!1822460 (not (= lambda!385245 lambda!385239))))

(declare-fun bs!1822463 () Bool)

(assert (= bs!1822463 d!2144987))

(assert (=> bs!1822463 (not (= lambda!385245 lambda!385244))))

(assert (=> bs!1822461 (not (= lambda!385245 lambda!385201))))

(assert (=> bs!1822462 (not (= lambda!385245 lambda!385222))))

(assert (=> d!2144987 true))

(assert (=> d!2144987 true))

(assert (=> d!2144987 true))

(assert (=> d!2144987 (= (Exists!3703 lambda!385244) (Exists!3703 lambda!385245))))

(declare-fun lt!2451494 () Unit!159961)

(declare-fun choose!50870 (Regex!16635 Regex!16635 List!66206) Unit!159961)

(assert (=> d!2144987 (= lt!2451494 (choose!50870 (reg!16964 r!7292) r!7292 s!2326))))

(assert (=> d!2144987 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2144987 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2230 (reg!16964 r!7292) r!7292 s!2326) lt!2451494)))

(declare-fun m!7567376 () Bool)

(assert (=> bs!1822463 m!7567376))

(declare-fun m!7567378 () Bool)

(assert (=> bs!1822463 m!7567378))

(declare-fun m!7567380 () Bool)

(assert (=> bs!1822463 m!7567380))

(assert (=> bs!1822463 m!7567298))

(assert (=> b!6820967 d!2144987))

(declare-fun d!2144989 () Bool)

(assert (=> d!2144989 (= (Exists!3703 lambda!385150) (choose!50869 lambda!385150))))

(declare-fun bs!1822464 () Bool)

(assert (= bs!1822464 d!2144989))

(declare-fun m!7567382 () Bool)

(assert (=> bs!1822464 m!7567382))

(assert (=> b!6820967 d!2144989))

(declare-fun b!6821867 () Bool)

(declare-fun e!4115646 () Option!16522)

(assert (=> b!6821867 (= e!4115646 (Some!16521 (tuple2!67221 Nil!66082 s!2326)))))

(declare-fun b!6821868 () Bool)

(declare-fun e!4115647 () Bool)

(declare-fun lt!2451502 () Option!16522)

(assert (=> b!6821868 (= e!4115647 (not (isDefined!13225 lt!2451502)))))

(declare-fun b!6821869 () Bool)

(declare-fun e!4115648 () Option!16522)

(assert (=> b!6821869 (= e!4115648 None!16521)))

(declare-fun b!6821870 () Bool)

(declare-fun e!4115649 () Bool)

(assert (=> b!6821870 (= e!4115649 (matchR!8818 r!7292 s!2326))))

(declare-fun b!6821871 () Bool)

(declare-fun e!4115645 () Bool)

(assert (=> b!6821871 (= e!4115645 (= (++!14817 (_1!36913 (get!23022 lt!2451502)) (_2!36913 (get!23022 lt!2451502))) s!2326))))

(declare-fun b!6821872 () Bool)

(declare-fun res!2786401 () Bool)

(assert (=> b!6821872 (=> (not res!2786401) (not e!4115645))))

(assert (=> b!6821872 (= res!2786401 (matchR!8818 (reg!16964 r!7292) (_1!36913 (get!23022 lt!2451502))))))

(declare-fun b!6821873 () Bool)

(assert (=> b!6821873 (= e!4115646 e!4115648)))

(declare-fun c!1269584 () Bool)

(assert (=> b!6821873 (= c!1269584 ((_ is Nil!66082) s!2326))))

(declare-fun b!6821874 () Bool)

(declare-fun lt!2451501 () Unit!159961)

(declare-fun lt!2451503 () Unit!159961)

(assert (=> b!6821874 (= lt!2451501 lt!2451503)))

(assert (=> b!6821874 (= (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326)) s!2326)))

(assert (=> b!6821874 (= lt!2451503 (lemmaMoveElementToOtherListKeepsConcatEq!2754 Nil!66082 (h!72530 s!2326) (t!379943 s!2326) s!2326))))

(assert (=> b!6821874 (= e!4115648 (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326) s!2326))))

(declare-fun d!2144991 () Bool)

(assert (=> d!2144991 e!4115647))

(declare-fun res!2786399 () Bool)

(assert (=> d!2144991 (=> res!2786399 e!4115647)))

(assert (=> d!2144991 (= res!2786399 e!4115645)))

(declare-fun res!2786402 () Bool)

(assert (=> d!2144991 (=> (not res!2786402) (not e!4115645))))

(assert (=> d!2144991 (= res!2786402 (isDefined!13225 lt!2451502))))

(assert (=> d!2144991 (= lt!2451502 e!4115646)))

(declare-fun c!1269583 () Bool)

(assert (=> d!2144991 (= c!1269583 e!4115649)))

(declare-fun res!2786398 () Bool)

(assert (=> d!2144991 (=> (not res!2786398) (not e!4115649))))

(assert (=> d!2144991 (= res!2786398 (matchR!8818 (reg!16964 r!7292) Nil!66082))))

(assert (=> d!2144991 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2144991 (= (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 Nil!66082 s!2326 s!2326) lt!2451502)))

(declare-fun b!6821875 () Bool)

(declare-fun res!2786400 () Bool)

(assert (=> b!6821875 (=> (not res!2786400) (not e!4115645))))

(assert (=> b!6821875 (= res!2786400 (matchR!8818 r!7292 (_2!36913 (get!23022 lt!2451502))))))

(assert (= (and d!2144991 res!2786398) b!6821870))

(assert (= (and d!2144991 c!1269583) b!6821867))

(assert (= (and d!2144991 (not c!1269583)) b!6821873))

(assert (= (and b!6821873 c!1269584) b!6821869))

(assert (= (and b!6821873 (not c!1269584)) b!6821874))

(assert (= (and d!2144991 res!2786402) b!6821872))

(assert (= (and b!6821872 res!2786401) b!6821875))

(assert (= (and b!6821875 res!2786400) b!6821871))

(assert (= (and d!2144991 (not res!2786399)) b!6821868))

(declare-fun m!7567384 () Bool)

(assert (=> b!6821868 m!7567384))

(declare-fun m!7567386 () Bool)

(assert (=> b!6821872 m!7567386))

(declare-fun m!7567388 () Bool)

(assert (=> b!6821872 m!7567388))

(assert (=> b!6821871 m!7567386))

(declare-fun m!7567390 () Bool)

(assert (=> b!6821871 m!7567390))

(assert (=> b!6821875 m!7567386))

(declare-fun m!7567392 () Bool)

(assert (=> b!6821875 m!7567392))

(assert (=> d!2144991 m!7567384))

(declare-fun m!7567394 () Bool)

(assert (=> d!2144991 m!7567394))

(assert (=> d!2144991 m!7567298))

(assert (=> b!6821874 m!7567236))

(assert (=> b!6821874 m!7567236))

(assert (=> b!6821874 m!7567238))

(assert (=> b!6821874 m!7567240))

(assert (=> b!6821874 m!7567236))

(declare-fun m!7567396 () Bool)

(assert (=> b!6821874 m!7567396))

(assert (=> b!6821870 m!7566502))

(assert (=> b!6820967 d!2144991))

(declare-fun bs!1822465 () Bool)

(declare-fun d!2144993 () Bool)

(assert (= bs!1822465 (and d!2144993 b!6820967)))

(declare-fun lambda!385248 () Int)

(assert (=> bs!1822465 (= lambda!385248 lambda!385148)))

(declare-fun bs!1822466 () Bool)

(assert (= bs!1822466 (and d!2144993 d!2144987)))

(assert (=> bs!1822466 (not (= lambda!385248 lambda!385245))))

(declare-fun bs!1822467 () Bool)

(assert (= bs!1822467 (and d!2144993 b!6821741)))

(assert (=> bs!1822467 (not (= lambda!385248 lambda!385223))))

(declare-fun bs!1822468 () Bool)

(assert (= bs!1822468 (and d!2144993 b!6821442)))

(assert (=> bs!1822468 (not (= lambda!385248 lambda!385202))))

(declare-fun bs!1822469 () Bool)

(assert (= bs!1822469 (and d!2144993 d!2144979)))

(assert (=> bs!1822469 (= (= r!7292 (Star!16635 (reg!16964 r!7292))) (= lambda!385248 lambda!385238))))

(assert (=> bs!1822465 (not (= lambda!385248 lambda!385149))))

(assert (=> bs!1822465 (not (= lambda!385248 lambda!385150))))

(assert (=> bs!1822469 (not (= lambda!385248 lambda!385239))))

(assert (=> bs!1822466 (= lambda!385248 lambda!385244)))

(declare-fun bs!1822470 () Bool)

(assert (= bs!1822470 (and d!2144993 b!6821441)))

(assert (=> bs!1822470 (not (= lambda!385248 lambda!385201))))

(declare-fun bs!1822471 () Bool)

(assert (= bs!1822471 (and d!2144993 b!6821740)))

(assert (=> bs!1822471 (not (= lambda!385248 lambda!385222))))

(assert (=> d!2144993 true))

(assert (=> d!2144993 true))

(assert (=> d!2144993 true))

(assert (=> d!2144993 (= (isDefined!13225 (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 Nil!66082 s!2326 s!2326)) (Exists!3703 lambda!385248))))

(declare-fun lt!2451506 () Unit!159961)

(declare-fun choose!50871 (Regex!16635 Regex!16635 List!66206) Unit!159961)

(assert (=> d!2144993 (= lt!2451506 (choose!50871 (reg!16964 r!7292) r!7292 s!2326))))

(assert (=> d!2144993 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2144993 (= (lemmaFindConcatSeparationEquivalentToExists!2700 (reg!16964 r!7292) r!7292 s!2326) lt!2451506)))

(declare-fun bs!1822472 () Bool)

(assert (= bs!1822472 d!2144993))

(assert (=> bs!1822472 m!7566558))

(assert (=> bs!1822472 m!7566562))

(declare-fun m!7567398 () Bool)

(assert (=> bs!1822472 m!7567398))

(assert (=> bs!1822472 m!7567298))

(declare-fun m!7567400 () Bool)

(assert (=> bs!1822472 m!7567400))

(assert (=> bs!1822472 m!7566558))

(assert (=> b!6820967 d!2144993))

(declare-fun d!2144995 () Bool)

(declare-fun dynLambda!26404 (Int Context!12038) Context!12038)

(assert (=> d!2144995 (= (map!15113 lt!2451330 lambda!385152) (store ((as const (Array Context!12038 Bool)) false) (dynLambda!26404 lambda!385152 lt!2451302) true))))

(declare-fun lt!2451509 () Unit!159961)

(declare-fun choose!50872 ((InoxSet Context!12038) Context!12038 Int) Unit!159961)

(assert (=> d!2144995 (= lt!2451509 (choose!50872 lt!2451330 lt!2451302 lambda!385152))))

(assert (=> d!2144995 (= lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451302 true))))

(assert (=> d!2144995 (= (lemmaMapOnSingletonSet!270 lt!2451330 lt!2451302 lambda!385152) lt!2451509)))

(declare-fun b_lambda!257279 () Bool)

(assert (=> (not b_lambda!257279) (not d!2144995)))

(declare-fun bs!1822473 () Bool)

(assert (= bs!1822473 d!2144995))

(declare-fun m!7567402 () Bool)

(assert (=> bs!1822473 m!7567402))

(declare-fun m!7567404 () Bool)

(assert (=> bs!1822473 m!7567404))

(assert (=> bs!1822473 m!7566586))

(assert (=> bs!1822473 m!7567402))

(declare-fun m!7567406 () Bool)

(assert (=> bs!1822473 m!7567406))

(assert (=> bs!1822473 m!7566484))

(assert (=> b!6820964 d!2144995))

(assert (=> b!6820964 d!2144957))

(declare-fun d!2144997 () Bool)

(declare-fun choose!50873 ((InoxSet Context!12038) Int) (InoxSet Context!12038))

(assert (=> d!2144997 (= (map!15113 lt!2451330 lambda!385152) (choose!50873 lt!2451330 lambda!385152))))

(declare-fun bs!1822474 () Bool)

(assert (= bs!1822474 d!2144997))

(declare-fun m!7567408 () Bool)

(assert (=> bs!1822474 m!7567408))

(assert (=> b!6820964 d!2144997))

(assert (=> b!6820964 d!2144961))

(declare-fun bs!1822475 () Bool)

(declare-fun d!2144999 () Bool)

(assert (= bs!1822475 (and d!2144999 b!6820964)))

(declare-fun lambda!385253 () Int)

(assert (=> bs!1822475 (= (= (exprs!6519 lt!2451314) lt!2451306) (= lambda!385253 lambda!385152))))

(assert (=> d!2144999 true))

(assert (=> d!2144999 (= (appendTo!240 lt!2451330 lt!2451314) (map!15113 lt!2451330 lambda!385253))))

(declare-fun bs!1822476 () Bool)

(assert (= bs!1822476 d!2144999))

(declare-fun m!7567410 () Bool)

(assert (=> bs!1822476 m!7567410))

(assert (=> b!6820964 d!2144999))

(declare-fun b!6821889 () Bool)

(declare-fun e!4115657 () Bool)

(declare-fun tp!1867326 () Bool)

(assert (=> b!6821889 (= e!4115657 tp!1867326)))

(declare-fun b!6821888 () Bool)

(declare-fun tp!1867327 () Bool)

(declare-fun e!4115656 () Bool)

(assert (=> b!6821888 (= e!4115656 (and (inv!84834 (h!72529 (t!379942 zl!343))) e!4115657 tp!1867327))))

(assert (=> b!6820981 (= tp!1867259 e!4115656)))

(assert (= b!6821888 b!6821889))

(assert (= (and b!6820981 ((_ is Cons!66081) (t!379942 zl!343))) b!6821888))

(declare-fun m!7567412 () Bool)

(assert (=> b!6821888 m!7567412))

(declare-fun b!6821894 () Bool)

(declare-fun e!4115660 () Bool)

(declare-fun tp!1867330 () Bool)

(assert (=> b!6821894 (= e!4115660 (and tp_is_empty!42523 tp!1867330))))

(assert (=> b!6820960 (= tp!1867263 e!4115660)))

(assert (= (and b!6820960 ((_ is Cons!66082) (t!379943 s!2326))) b!6821894))

(declare-fun condSetEmpty!46805 () Bool)

(assert (=> setNonEmpty!46799 (= condSetEmpty!46805 (= setRest!46799 ((as const (Array Context!12038 Bool)) false)))))

(declare-fun setRes!46805 () Bool)

(assert (=> setNonEmpty!46799 (= tp!1867261 setRes!46805)))

(declare-fun setIsEmpty!46805 () Bool)

(assert (=> setIsEmpty!46805 setRes!46805))

(declare-fun setNonEmpty!46805 () Bool)

(declare-fun e!4115663 () Bool)

(declare-fun tp!1867336 () Bool)

(declare-fun setElem!46805 () Context!12038)

(assert (=> setNonEmpty!46805 (= setRes!46805 (and tp!1867336 (inv!84834 setElem!46805) e!4115663))))

(declare-fun setRest!46805 () (InoxSet Context!12038))

(assert (=> setNonEmpty!46805 (= setRest!46799 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) setElem!46805 true) setRest!46805))))

(declare-fun b!6821899 () Bool)

(declare-fun tp!1867335 () Bool)

(assert (=> b!6821899 (= e!4115663 tp!1867335)))

(assert (= (and setNonEmpty!46799 condSetEmpty!46805) setIsEmpty!46805))

(assert (= (and setNonEmpty!46799 (not condSetEmpty!46805)) setNonEmpty!46805))

(assert (= setNonEmpty!46805 b!6821899))

(declare-fun m!7567414 () Bool)

(assert (=> setNonEmpty!46805 m!7567414))

(declare-fun b!6821913 () Bool)

(declare-fun e!4115666 () Bool)

(declare-fun tp!1867347 () Bool)

(declare-fun tp!1867349 () Bool)

(assert (=> b!6821913 (= e!4115666 (and tp!1867347 tp!1867349))))

(assert (=> b!6820953 (= tp!1867256 e!4115666)))

(declare-fun b!6821912 () Bool)

(declare-fun tp!1867351 () Bool)

(assert (=> b!6821912 (= e!4115666 tp!1867351)))

(declare-fun b!6821911 () Bool)

(declare-fun tp!1867348 () Bool)

(declare-fun tp!1867350 () Bool)

(assert (=> b!6821911 (= e!4115666 (and tp!1867348 tp!1867350))))

(declare-fun b!6821910 () Bool)

(assert (=> b!6821910 (= e!4115666 tp_is_empty!42523)))

(assert (= (and b!6820953 ((_ is ElementMatch!16635) (reg!16964 r!7292))) b!6821910))

(assert (= (and b!6820953 ((_ is Concat!25480) (reg!16964 r!7292))) b!6821911))

(assert (= (and b!6820953 ((_ is Star!16635) (reg!16964 r!7292))) b!6821912))

(assert (= (and b!6820953 ((_ is Union!16635) (reg!16964 r!7292))) b!6821913))

(declare-fun b!6821918 () Bool)

(declare-fun e!4115669 () Bool)

(declare-fun tp!1867356 () Bool)

(declare-fun tp!1867357 () Bool)

(assert (=> b!6821918 (= e!4115669 (and tp!1867356 tp!1867357))))

(assert (=> b!6820948 (= tp!1867258 e!4115669)))

(assert (= (and b!6820948 ((_ is Cons!66080) (exprs!6519 setElem!46799))) b!6821918))

(declare-fun b!6821922 () Bool)

(declare-fun e!4115670 () Bool)

(declare-fun tp!1867358 () Bool)

(declare-fun tp!1867360 () Bool)

(assert (=> b!6821922 (= e!4115670 (and tp!1867358 tp!1867360))))

(assert (=> b!6820968 (= tp!1867260 e!4115670)))

(declare-fun b!6821921 () Bool)

(declare-fun tp!1867362 () Bool)

(assert (=> b!6821921 (= e!4115670 tp!1867362)))

(declare-fun b!6821920 () Bool)

(declare-fun tp!1867359 () Bool)

(declare-fun tp!1867361 () Bool)

(assert (=> b!6821920 (= e!4115670 (and tp!1867359 tp!1867361))))

(declare-fun b!6821919 () Bool)

(assert (=> b!6821919 (= e!4115670 tp_is_empty!42523)))

(assert (= (and b!6820968 ((_ is ElementMatch!16635) (regOne!33783 r!7292))) b!6821919))

(assert (= (and b!6820968 ((_ is Concat!25480) (regOne!33783 r!7292))) b!6821920))

(assert (= (and b!6820968 ((_ is Star!16635) (regOne!33783 r!7292))) b!6821921))

(assert (= (and b!6820968 ((_ is Union!16635) (regOne!33783 r!7292))) b!6821922))

(declare-fun b!6821926 () Bool)

(declare-fun e!4115671 () Bool)

(declare-fun tp!1867363 () Bool)

(declare-fun tp!1867365 () Bool)

(assert (=> b!6821926 (= e!4115671 (and tp!1867363 tp!1867365))))

(assert (=> b!6820968 (= tp!1867255 e!4115671)))

(declare-fun b!6821925 () Bool)

(declare-fun tp!1867367 () Bool)

(assert (=> b!6821925 (= e!4115671 tp!1867367)))

(declare-fun b!6821924 () Bool)

(declare-fun tp!1867364 () Bool)

(declare-fun tp!1867366 () Bool)

(assert (=> b!6821924 (= e!4115671 (and tp!1867364 tp!1867366))))

(declare-fun b!6821923 () Bool)

(assert (=> b!6821923 (= e!4115671 tp_is_empty!42523)))

(assert (= (and b!6820968 ((_ is ElementMatch!16635) (regTwo!33783 r!7292))) b!6821923))

(assert (= (and b!6820968 ((_ is Concat!25480) (regTwo!33783 r!7292))) b!6821924))

(assert (= (and b!6820968 ((_ is Star!16635) (regTwo!33783 r!7292))) b!6821925))

(assert (= (and b!6820968 ((_ is Union!16635) (regTwo!33783 r!7292))) b!6821926))

(declare-fun b!6821930 () Bool)

(declare-fun e!4115672 () Bool)

(declare-fun tp!1867368 () Bool)

(declare-fun tp!1867370 () Bool)

(assert (=> b!6821930 (= e!4115672 (and tp!1867368 tp!1867370))))

(assert (=> b!6820969 (= tp!1867254 e!4115672)))

(declare-fun b!6821929 () Bool)

(declare-fun tp!1867372 () Bool)

(assert (=> b!6821929 (= e!4115672 tp!1867372)))

(declare-fun b!6821928 () Bool)

(declare-fun tp!1867369 () Bool)

(declare-fun tp!1867371 () Bool)

(assert (=> b!6821928 (= e!4115672 (and tp!1867369 tp!1867371))))

(declare-fun b!6821927 () Bool)

(assert (=> b!6821927 (= e!4115672 tp_is_empty!42523)))

(assert (= (and b!6820969 ((_ is ElementMatch!16635) (regOne!33782 r!7292))) b!6821927))

(assert (= (and b!6820969 ((_ is Concat!25480) (regOne!33782 r!7292))) b!6821928))

(assert (= (and b!6820969 ((_ is Star!16635) (regOne!33782 r!7292))) b!6821929))

(assert (= (and b!6820969 ((_ is Union!16635) (regOne!33782 r!7292))) b!6821930))

(declare-fun b!6821934 () Bool)

(declare-fun e!4115673 () Bool)

(declare-fun tp!1867373 () Bool)

(declare-fun tp!1867375 () Bool)

(assert (=> b!6821934 (= e!4115673 (and tp!1867373 tp!1867375))))

(assert (=> b!6820969 (= tp!1867262 e!4115673)))

(declare-fun b!6821933 () Bool)

(declare-fun tp!1867377 () Bool)

(assert (=> b!6821933 (= e!4115673 tp!1867377)))

(declare-fun b!6821932 () Bool)

(declare-fun tp!1867374 () Bool)

(declare-fun tp!1867376 () Bool)

(assert (=> b!6821932 (= e!4115673 (and tp!1867374 tp!1867376))))

(declare-fun b!6821931 () Bool)

(assert (=> b!6821931 (= e!4115673 tp_is_empty!42523)))

(assert (= (and b!6820969 ((_ is ElementMatch!16635) (regTwo!33782 r!7292))) b!6821931))

(assert (= (and b!6820969 ((_ is Concat!25480) (regTwo!33782 r!7292))) b!6821932))

(assert (= (and b!6820969 ((_ is Star!16635) (regTwo!33782 r!7292))) b!6821933))

(assert (= (and b!6820969 ((_ is Union!16635) (regTwo!33782 r!7292))) b!6821934))

(declare-fun b!6821935 () Bool)

(declare-fun e!4115674 () Bool)

(declare-fun tp!1867378 () Bool)

(declare-fun tp!1867379 () Bool)

(assert (=> b!6821935 (= e!4115674 (and tp!1867378 tp!1867379))))

(assert (=> b!6820950 (= tp!1867257 e!4115674)))

(assert (= (and b!6820950 ((_ is Cons!66080) (exprs!6519 (h!72529 zl!343)))) b!6821935))

(declare-fun b_lambda!257281 () Bool)

(assert (= b_lambda!257257 (or b!6820978 b_lambda!257281)))

(declare-fun bs!1822477 () Bool)

(declare-fun d!2145001 () Bool)

(assert (= bs!1822477 (and d!2145001 b!6820978)))

(assert (=> bs!1822477 (= (dynLambda!26402 lambda!385151 lt!2451302) (derivationStepZipperUp!1789 lt!2451302 (h!72530 s!2326)))))

(assert (=> bs!1822477 m!7566592))

(assert (=> d!2144817 d!2145001))

(declare-fun b_lambda!257283 () Bool)

(assert (= b_lambda!257255 (or b!6820978 b_lambda!257283)))

(declare-fun bs!1822478 () Bool)

(declare-fun d!2145003 () Bool)

(assert (= bs!1822478 (and d!2145003 b!6820978)))

(assert (=> bs!1822478 (= (dynLambda!26402 lambda!385151 lt!2451314) (derivationStepZipperUp!1789 lt!2451314 (h!72530 s!2326)))))

(assert (=> bs!1822478 m!7566578))

(assert (=> d!2144807 d!2145003))

(declare-fun b_lambda!257285 () Bool)

(assert (= b_lambda!257259 (or b!6820978 b_lambda!257285)))

(declare-fun bs!1822479 () Bool)

(declare-fun d!2145005 () Bool)

(assert (= bs!1822479 (and d!2145005 b!6820978)))

(assert (=> bs!1822479 (= (dynLambda!26402 lambda!385151 (h!72529 zl!343)) (derivationStepZipperUp!1789 (h!72529 zl!343) (h!72530 s!2326)))))

(assert (=> bs!1822479 m!7566572))

(assert (=> d!2144877 d!2145005))

(declare-fun b_lambda!257287 () Bool)

(assert (= b_lambda!257279 (or b!6820964 b_lambda!257287)))

(declare-fun bs!1822480 () Bool)

(declare-fun d!2145007 () Bool)

(assert (= bs!1822480 (and d!2145007 b!6820964)))

(declare-fun lt!2451512 () Unit!159961)

(assert (=> bs!1822480 (= lt!2451512 (lemmaConcatPreservesForall!464 (exprs!6519 lt!2451302) lt!2451306 lambda!385153))))

(assert (=> bs!1822480 (= (dynLambda!26404 lambda!385152 lt!2451302) (Context!12039 (++!14816 (exprs!6519 lt!2451302) lt!2451306)))))

(declare-fun m!7567416 () Bool)

(assert (=> bs!1822480 m!7567416))

(declare-fun m!7567418 () Bool)

(assert (=> bs!1822480 m!7567418))

(assert (=> d!2144995 d!2145007))

(declare-fun b_lambda!257289 () Bool)

(assert (= b_lambda!257267 (or b!6820978 b_lambda!257289)))

(declare-fun bs!1822481 () Bool)

(declare-fun d!2145009 () Bool)

(assert (= bs!1822481 (and d!2145009 b!6820978)))

(assert (=> bs!1822481 (= (dynLambda!26402 lambda!385151 lt!2451338) (derivationStepZipperUp!1789 lt!2451338 (h!72530 s!2326)))))

(assert (=> bs!1822481 m!7566508))

(assert (=> d!2144925 d!2145009))

(check-sat (not b!6821875) (not b!6821922) (not d!2144793) (not bm!620749) (not d!2144863) (not b!6821707) (not b!6821920) (not b!6821755) (not d!2144855) (not b!6821750) (not bm!620799) (not d!2144943) (not d!2144927) (not d!2144975) (not d!2144967) (not b!6821308) (not b_lambda!257289) (not b!6821868) (not b!6821928) (not b!6821517) (not b!6821627) (not d!2144941) (not b!6821777) (not b_lambda!257287) (not b!6821812) (not b!6821736) (not bm!620802) (not bm!620797) (not b!6821637) (not d!2144979) (not b!6821926) (not d!2144953) (not bm!620794) (not b_lambda!257281) (not bm!620776) (not b!6821605) (not b!6821815) (not b!6821708) (not b!6821784) (not b!6821732) (not b!6821870) (not b!6821387) (not d!2144991) (not b!6821820) (not b!6821649) (not b!6821443) (not b!6821742) (not bm!620803) (not bs!1822478) (not bm!620777) (not d!2144987) (not b!6821912) (not b!6821573) (not bm!620780) (not d!2144973) (not b!6821872) (not b!6821894) (not b!6821608) (not d!2144957) (not b!6821612) (not b!6821304) (not d!2144971) (not d!2144907) (not b!6821790) (not bm!620752) (not d!2144867) (not d!2144929) (not b!6821261) (not b!6821888) (not d!2144959) (not b!6821738) (not b!6821874) (not bm!620762) (not b!6821760) (not b!6821624) (not b!6821816) (not b!6821933) (not d!2144995) (not b!6821625) (not d!2144977) (not d!2144965) (not d!2144969) (not d!2144947) (not d!2144925) (not bs!1822479) (not b!6821813) (not d!2144841) (not b!6821728) (not d!2144961) (not b!6821571) (not b!6821735) (not bm!620760) (not d!2144811) (not b!6821773) (not b!6821776) (not b!6821733) (not b!6821323) (not b!6821327) (not bm!620801) (not b!6821935) (not b!6821730) (not bs!1822481) (not b!6821789) (not b!6821525) (not d!2144963) (not b!6821626) (not b!6821512) (not b!6821621) (not d!2144913) (not b!6821614) (not d!2144901) (not b!6821763) (not d!2144999) (not d!2144807) (not d!2144951) (not b!6821577) (not b!6821911) (not b!6821522) (not b!6821774) (not b!6821889) (not b!6821749) (not bs!1822477) (not b_lambda!257285) (not b!6821899) (not bm!620800) (not b!6821653) (not setNonEmpty!46805) (not d!2144877) (not b!6821758) (not b!6821328) (not d!2144819) (not d!2144799) (not bm!620804) (not b_lambda!257283) (not b!6821520) (not d!2144881) (not b!6821871) (not d!2144955) (not d!2144921) (not b!6821921) (not b!6821913) (not d!2144879) (not bm!620754) (not b!6821826) (not b!6821613) (not b!6821925) (not b!6821737) (not bm!620791) (not b!6821929) (not d!2144797) (not b!6821781) (not b!6821930) (not d!2144911) (not b!6821513) (not d!2144805) (not d!2144989) (not b!6821450) (not d!2144817) (not d!2144985) tp_is_empty!42523 (not b!6821620) (not bm!620771) (not b!6821786) (not b!6821934) (not b!6821814) (not b!6821332) (not d!2144871) (not b!6821924) (not b!6821830) (not b!6821751) (not b!6821819) (not b!6821918) (not b!6821611) (not b!6821932) (not bm!620761) (not d!2144981) (not d!2144993) (not d!2144997) (not b!6821791) (not bs!1822480) (not b!6821606) (not d!2144757) (not bm!620770) (not b!6821572))
(check-sat)
(get-model)

(declare-fun d!2145413 () Bool)

(assert (=> d!2145413 (= (isEmpty!38473 (t!379941 (exprs!6519 (h!72529 zl!343)))) ((_ is Nil!66080) (t!379941 (exprs!6519 (h!72529 zl!343)))))))

(assert (=> b!6821613 d!2145413))

(declare-fun d!2145415 () Bool)

(assert (=> d!2145415 (forall!15825 (++!14816 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314)) lambda!385226)))

(declare-fun lt!2451569 () Unit!159961)

(assert (=> d!2145415 (= lt!2451569 (choose!50865 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314) lambda!385226))))

(assert (=> d!2145415 (forall!15825 (exprs!6519 lt!2451302) lambda!385226)))

(assert (=> d!2145415 (= (lemmaConcatPreservesForall!464 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314) lambda!385226) lt!2451569)))

(declare-fun bs!1822904 () Bool)

(assert (= bs!1822904 d!2145415))

(assert (=> bs!1822904 m!7567278))

(assert (=> bs!1822904 m!7567278))

(declare-fun m!7568306 () Bool)

(assert (=> bs!1822904 m!7568306))

(declare-fun m!7568308 () Bool)

(assert (=> bs!1822904 m!7568308))

(declare-fun m!7568310 () Bool)

(assert (=> bs!1822904 m!7568310))

(assert (=> d!2144955 d!2145415))

(declare-fun bs!1822905 () Bool)

(declare-fun d!2145417 () Bool)

(assert (= bs!1822905 (and d!2145417 d!2144969)))

(declare-fun lambda!385307 () Int)

(assert (=> bs!1822905 (= lambda!385307 lambda!385230)))

(declare-fun bs!1822906 () Bool)

(assert (= bs!1822906 (and d!2145417 d!2144955)))

(assert (=> bs!1822906 (= lambda!385307 lambda!385226)))

(declare-fun bs!1822907 () Bool)

(assert (= bs!1822907 (and d!2145417 d!2144971)))

(assert (=> bs!1822907 (= lambda!385307 lambda!385233)))

(declare-fun bs!1822908 () Bool)

(assert (= bs!1822908 (and d!2145417 d!2144757)))

(assert (=> bs!1822908 (= lambda!385307 lambda!385162)))

(declare-fun bs!1822909 () Bool)

(assert (= bs!1822909 (and d!2145417 d!2144867)))

(assert (=> bs!1822909 (= lambda!385307 lambda!385209)))

(declare-fun bs!1822910 () Bool)

(assert (= bs!1822910 (and d!2145417 b!6820964)))

(assert (=> bs!1822910 (= lambda!385307 lambda!385153)))

(declare-fun bs!1822911 () Bool)

(assert (= bs!1822911 (and d!2145417 d!2144881)))

(assert (=> bs!1822911 (= lambda!385307 lambda!385217)))

(declare-fun bs!1822912 () Bool)

(assert (= bs!1822912 (and d!2145417 d!2144963)))

(assert (=> bs!1822912 (= lambda!385307 lambda!385227)))

(assert (=> d!2145417 (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314))) true) (++!14817 (_1!36913 lt!2451337) (_2!36913 lt!2451337)))))

(declare-fun lt!2451572 () Unit!159961)

(assert (=> d!2145417 (= lt!2451572 (lemmaConcatPreservesForall!464 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314) lambda!385307))))

(assert (=> d!2145417 true))

(declare-fun _$56!464 () Unit!159961)

(assert (=> d!2145417 (= (choose!50864 lt!2451302 lt!2451314 (_1!36913 lt!2451337) (_2!36913 lt!2451337)) _$56!464)))

(declare-fun bs!1822913 () Bool)

(assert (= bs!1822913 d!2145417))

(assert (=> bs!1822913 m!7567278))

(declare-fun m!7568312 () Bool)

(assert (=> bs!1822913 m!7568312))

(assert (=> bs!1822913 m!7566520))

(assert (=> bs!1822913 m!7567280))

(assert (=> bs!1822913 m!7567280))

(assert (=> bs!1822913 m!7566520))

(assert (=> bs!1822913 m!7567282))

(assert (=> d!2144955 d!2145417))

(assert (=> d!2144955 d!2144929))

(declare-fun d!2145419 () Bool)

(declare-fun c!1269797 () Bool)

(assert (=> d!2145419 (= c!1269797 (isEmpty!38470 (_1!36913 lt!2451337)))))

(declare-fun e!4116101 () Bool)

(assert (=> d!2145419 (= (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) lt!2451302 true) (_1!36913 lt!2451337)) e!4116101)))

(declare-fun b!6822703 () Bool)

(assert (=> b!6822703 (= e!4116101 (nullableZipper!2340 (store ((as const (Array Context!12038 Bool)) false) lt!2451302 true)))))

(declare-fun b!6822704 () Bool)

(assert (=> b!6822704 (= e!4116101 (matchZipper!2621 (derivationStepZipper!2579 (store ((as const (Array Context!12038 Bool)) false) lt!2451302 true) (head!13677 (_1!36913 lt!2451337))) (tail!12762 (_1!36913 lt!2451337))))))

(assert (= (and d!2145419 c!1269797) b!6822703))

(assert (= (and d!2145419 (not c!1269797)) b!6822704))

(assert (=> d!2145419 m!7567022))

(assert (=> b!6822703 m!7566586))

(declare-fun m!7568314 () Bool)

(assert (=> b!6822703 m!7568314))

(assert (=> b!6822704 m!7567026))

(assert (=> b!6822704 m!7566586))

(assert (=> b!6822704 m!7567026))

(declare-fun m!7568316 () Bool)

(assert (=> b!6822704 m!7568316))

(assert (=> b!6822704 m!7567030))

(assert (=> b!6822704 m!7568316))

(assert (=> b!6822704 m!7567030))

(declare-fun m!7568318 () Bool)

(assert (=> b!6822704 m!7568318))

(assert (=> d!2144955 d!2145419))

(declare-fun d!2145421 () Bool)

(declare-fun e!4116102 () Bool)

(assert (=> d!2145421 e!4116102))

(declare-fun res!2786642 () Bool)

(assert (=> d!2145421 (=> (not res!2786642) (not e!4116102))))

(declare-fun lt!2451573 () List!66204)

(assert (=> d!2145421 (= res!2786642 (= (content!12936 lt!2451573) ((_ map or) (content!12936 (exprs!6519 lt!2451302)) (content!12936 (exprs!6519 lt!2451314)))))))

(declare-fun e!4116103 () List!66204)

(assert (=> d!2145421 (= lt!2451573 e!4116103)))

(declare-fun c!1269798 () Bool)

(assert (=> d!2145421 (= c!1269798 ((_ is Nil!66080) (exprs!6519 lt!2451302)))))

(assert (=> d!2145421 (= (++!14816 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314)) lt!2451573)))

(declare-fun b!6822706 () Bool)

(assert (=> b!6822706 (= e!4116103 (Cons!66080 (h!72528 (exprs!6519 lt!2451302)) (++!14816 (t!379941 (exprs!6519 lt!2451302)) (exprs!6519 lt!2451314))))))

(declare-fun b!6822708 () Bool)

(assert (=> b!6822708 (= e!4116102 (or (not (= (exprs!6519 lt!2451314) Nil!66080)) (= lt!2451573 (exprs!6519 lt!2451302))))))

(declare-fun b!6822707 () Bool)

(declare-fun res!2786643 () Bool)

(assert (=> b!6822707 (=> (not res!2786643) (not e!4116102))))

(assert (=> b!6822707 (= res!2786643 (= (size!40691 lt!2451573) (+ (size!40691 (exprs!6519 lt!2451302)) (size!40691 (exprs!6519 lt!2451314)))))))

(declare-fun b!6822705 () Bool)

(assert (=> b!6822705 (= e!4116103 (exprs!6519 lt!2451314))))

(assert (= (and d!2145421 c!1269798) b!6822705))

(assert (= (and d!2145421 (not c!1269798)) b!6822706))

(assert (= (and d!2145421 res!2786642) b!6822707))

(assert (= (and b!6822707 res!2786643) b!6822708))

(declare-fun m!7568320 () Bool)

(assert (=> d!2145421 m!7568320))

(declare-fun m!7568322 () Bool)

(assert (=> d!2145421 m!7568322))

(declare-fun m!7568324 () Bool)

(assert (=> d!2145421 m!7568324))

(declare-fun m!7568326 () Bool)

(assert (=> b!6822706 m!7568326))

(declare-fun m!7568328 () Bool)

(assert (=> b!6822707 m!7568328))

(declare-fun m!7568330 () Bool)

(assert (=> b!6822707 m!7568330))

(declare-fun m!7568332 () Bool)

(assert (=> b!6822707 m!7568332))

(assert (=> d!2144955 d!2145421))

(declare-fun d!2145423 () Bool)

(declare-fun c!1269799 () Bool)

(assert (=> d!2145423 (= c!1269799 (isEmpty!38470 (++!14817 (_1!36913 lt!2451337) (_2!36913 lt!2451337))))))

(declare-fun e!4116104 () Bool)

(assert (=> d!2145423 (= (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314))) true) (++!14817 (_1!36913 lt!2451337) (_2!36913 lt!2451337))) e!4116104)))

(declare-fun b!6822709 () Bool)

(assert (=> b!6822709 (= e!4116104 (nullableZipper!2340 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314))) true)))))

(declare-fun b!6822710 () Bool)

(assert (=> b!6822710 (= e!4116104 (matchZipper!2621 (derivationStepZipper!2579 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 (exprs!6519 lt!2451302) (exprs!6519 lt!2451314))) true) (head!13677 (++!14817 (_1!36913 lt!2451337) (_2!36913 lt!2451337)))) (tail!12762 (++!14817 (_1!36913 lt!2451337) (_2!36913 lt!2451337)))))))

(assert (= (and d!2145423 c!1269799) b!6822709))

(assert (= (and d!2145423 (not c!1269799)) b!6822710))

(assert (=> d!2145423 m!7566520))

(declare-fun m!7568334 () Bool)

(assert (=> d!2145423 m!7568334))

(assert (=> b!6822709 m!7567280))

(declare-fun m!7568336 () Bool)

(assert (=> b!6822709 m!7568336))

(assert (=> b!6822710 m!7566520))

(declare-fun m!7568338 () Bool)

(assert (=> b!6822710 m!7568338))

(assert (=> b!6822710 m!7567280))

(assert (=> b!6822710 m!7568338))

(declare-fun m!7568340 () Bool)

(assert (=> b!6822710 m!7568340))

(assert (=> b!6822710 m!7566520))

(declare-fun m!7568342 () Bool)

(assert (=> b!6822710 m!7568342))

(assert (=> b!6822710 m!7568340))

(assert (=> b!6822710 m!7568342))

(declare-fun m!7568344 () Bool)

(assert (=> b!6822710 m!7568344))

(assert (=> d!2144955 d!2145423))

(declare-fun d!2145425 () Bool)

(assert (=> d!2145425 (= (isEmpty!38470 (tail!12762 s!2326)) ((_ is Nil!66082) (tail!12762 s!2326)))))

(assert (=> b!6821758 d!2145425))

(declare-fun d!2145427 () Bool)

(assert (=> d!2145427 (= (tail!12762 s!2326) (t!379943 s!2326))))

(assert (=> b!6821758 d!2145427))

(declare-fun b!6822711 () Bool)

(declare-fun res!2786644 () Bool)

(declare-fun e!4116109 () Bool)

(assert (=> b!6822711 (=> (not res!2786644) (not e!4116109))))

(declare-fun call!620935 () Bool)

(assert (=> b!6822711 (= res!2786644 call!620935)))

(declare-fun e!4116107 () Bool)

(assert (=> b!6822711 (= e!4116107 e!4116109)))

(declare-fun b!6822712 () Bool)

(declare-fun call!620934 () Bool)

(assert (=> b!6822712 (= e!4116109 call!620934)))

(declare-fun bm!620928 () Bool)

(declare-fun call!620933 () Bool)

(assert (=> bm!620928 (= call!620934 call!620933)))

(declare-fun d!2145429 () Bool)

(declare-fun res!2786647 () Bool)

(declare-fun e!4116105 () Bool)

(assert (=> d!2145429 (=> res!2786647 e!4116105)))

(assert (=> d!2145429 (= res!2786647 ((_ is ElementMatch!16635) (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))))))

(assert (=> d!2145429 (= (validRegex!8371 (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))) e!4116105)))

(declare-fun c!1269800 () Bool)

(declare-fun bm!620929 () Bool)

(assert (=> bm!620929 (= call!620935 (validRegex!8371 (ite c!1269800 (regOne!33783 (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))) (regOne!33782 (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))))))))

(declare-fun b!6822713 () Bool)

(declare-fun res!2786648 () Bool)

(declare-fun e!4116110 () Bool)

(assert (=> b!6822713 (=> res!2786648 e!4116110)))

(assert (=> b!6822713 (= res!2786648 (not ((_ is Concat!25480) (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292))))))))

(assert (=> b!6822713 (= e!4116107 e!4116110)))

(declare-fun b!6822714 () Bool)

(declare-fun e!4116106 () Bool)

(assert (=> b!6822714 (= e!4116106 e!4116107)))

(assert (=> b!6822714 (= c!1269800 ((_ is Union!16635) (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))))))

(declare-fun b!6822715 () Bool)

(assert (=> b!6822715 (= e!4116105 e!4116106)))

(declare-fun c!1269801 () Bool)

(assert (=> b!6822715 (= c!1269801 ((_ is Star!16635) (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))))))

(declare-fun b!6822716 () Bool)

(declare-fun e!4116111 () Bool)

(assert (=> b!6822716 (= e!4116111 call!620934)))

(declare-fun b!6822717 () Bool)

(declare-fun e!4116108 () Bool)

(assert (=> b!6822717 (= e!4116106 e!4116108)))

(declare-fun res!2786645 () Bool)

(assert (=> b!6822717 (= res!2786645 (not (nullable!6612 (reg!16964 (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))))))))

(assert (=> b!6822717 (=> (not res!2786645) (not e!4116108))))

(declare-fun b!6822718 () Bool)

(assert (=> b!6822718 (= e!4116110 e!4116111)))

(declare-fun res!2786646 () Bool)

(assert (=> b!6822718 (=> (not res!2786646) (not e!4116111))))

(assert (=> b!6822718 (= res!2786646 call!620935)))

(declare-fun b!6822719 () Bool)

(assert (=> b!6822719 (= e!4116108 call!620933)))

(declare-fun bm!620930 () Bool)

(assert (=> bm!620930 (= call!620933 (validRegex!8371 (ite c!1269801 (reg!16964 (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))) (ite c!1269800 (regTwo!33783 (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292)))) (regTwo!33782 (ite c!1269464 (reg!16964 r!7292) (ite c!1269463 (regTwo!33783 r!7292) (regTwo!33782 r!7292))))))))))

(assert (= (and d!2145429 (not res!2786647)) b!6822715))

(assert (= (and b!6822715 c!1269801) b!6822717))

(assert (= (and b!6822715 (not c!1269801)) b!6822714))

(assert (= (and b!6822717 res!2786645) b!6822719))

(assert (= (and b!6822714 c!1269800) b!6822711))

(assert (= (and b!6822714 (not c!1269800)) b!6822713))

(assert (= (and b!6822711 res!2786644) b!6822712))

(assert (= (and b!6822713 (not res!2786648)) b!6822718))

(assert (= (and b!6822718 res!2786646) b!6822716))

(assert (= (or b!6822712 b!6822716) bm!620928))

(assert (= (or b!6822711 b!6822718) bm!620929))

(assert (= (or b!6822719 bm!620928) bm!620930))

(declare-fun m!7568346 () Bool)

(assert (=> bm!620929 m!7568346))

(declare-fun m!7568348 () Bool)

(assert (=> b!6822717 m!7568348))

(declare-fun m!7568350 () Bool)

(assert (=> bm!620930 m!7568350))

(assert (=> bm!620771 d!2145429))

(declare-fun bs!1822914 () Bool)

(declare-fun b!6822721 () Bool)

(assert (= bs!1822914 (and b!6822721 b!6820967)))

(declare-fun lambda!385308 () Int)

(assert (=> bs!1822914 (not (= lambda!385308 lambda!385148))))

(declare-fun bs!1822915 () Bool)

(assert (= bs!1822915 (and b!6822721 d!2144987)))

(assert (=> bs!1822915 (not (= lambda!385308 lambda!385245))))

(declare-fun bs!1822916 () Bool)

(assert (= bs!1822916 (and b!6822721 b!6821741)))

(assert (=> bs!1822916 (not (= lambda!385308 lambda!385223))))

(declare-fun bs!1822917 () Bool)

(assert (= bs!1822917 (and b!6822721 b!6821442)))

(assert (=> bs!1822917 (not (= lambda!385308 lambda!385202))))

(declare-fun bs!1822918 () Bool)

(assert (= bs!1822918 (and b!6822721 d!2144979)))

(assert (=> bs!1822918 (not (= lambda!385308 lambda!385238))))

(assert (=> bs!1822914 (= (and (= (reg!16964 (regTwo!33783 lt!2451335)) (reg!16964 r!7292)) (= (regTwo!33783 lt!2451335) r!7292)) (= lambda!385308 lambda!385149))))

(assert (=> bs!1822914 (not (= lambda!385308 lambda!385150))))

(assert (=> bs!1822915 (not (= lambda!385308 lambda!385244))))

(declare-fun bs!1822919 () Bool)

(assert (= bs!1822919 (and b!6822721 b!6821441)))

(assert (=> bs!1822919 (= (and (= (reg!16964 (regTwo!33783 lt!2451335)) (reg!16964 lt!2451335)) (= (regTwo!33783 lt!2451335) lt!2451335)) (= lambda!385308 lambda!385201))))

(declare-fun bs!1822920 () Bool)

(assert (= bs!1822920 (and b!6822721 b!6821740)))

(assert (=> bs!1822920 (= (and (= (reg!16964 (regTwo!33783 lt!2451335)) (reg!16964 r!7292)) (= (regTwo!33783 lt!2451335) r!7292)) (= lambda!385308 lambda!385222))))

(assert (=> bs!1822918 (= (and (= (reg!16964 (regTwo!33783 lt!2451335)) (reg!16964 r!7292)) (= (regTwo!33783 lt!2451335) (Star!16635 (reg!16964 r!7292)))) (= lambda!385308 lambda!385239))))

(declare-fun bs!1822921 () Bool)

(assert (= bs!1822921 (and b!6822721 d!2144993)))

(assert (=> bs!1822921 (not (= lambda!385308 lambda!385248))))

(assert (=> b!6822721 true))

(assert (=> b!6822721 true))

(declare-fun bs!1822922 () Bool)

(declare-fun b!6822722 () Bool)

(assert (= bs!1822922 (and b!6822722 b!6820967)))

(declare-fun lambda!385309 () Int)

(assert (=> bs!1822922 (not (= lambda!385309 lambda!385148))))

(declare-fun bs!1822923 () Bool)

(assert (= bs!1822923 (and b!6822722 d!2144987)))

(assert (=> bs!1822923 (= (and (= (regOne!33782 (regTwo!33783 lt!2451335)) (reg!16964 r!7292)) (= (regTwo!33782 (regTwo!33783 lt!2451335)) r!7292)) (= lambda!385309 lambda!385245))))

(declare-fun bs!1822924 () Bool)

(assert (= bs!1822924 (and b!6822722 b!6821741)))

(assert (=> bs!1822924 (= (and (= (regOne!33782 (regTwo!33783 lt!2451335)) (regOne!33782 r!7292)) (= (regTwo!33782 (regTwo!33783 lt!2451335)) (regTwo!33782 r!7292))) (= lambda!385309 lambda!385223))))

(declare-fun bs!1822925 () Bool)

(assert (= bs!1822925 (and b!6822722 b!6821442)))

(assert (=> bs!1822925 (= (and (= (regOne!33782 (regTwo!33783 lt!2451335)) (regOne!33782 lt!2451335)) (= (regTwo!33782 (regTwo!33783 lt!2451335)) (regTwo!33782 lt!2451335))) (= lambda!385309 lambda!385202))))

(declare-fun bs!1822926 () Bool)

(assert (= bs!1822926 (and b!6822722 d!2144979)))

(assert (=> bs!1822926 (not (= lambda!385309 lambda!385238))))

(assert (=> bs!1822922 (not (= lambda!385309 lambda!385149))))

(assert (=> bs!1822922 (= (and (= (regOne!33782 (regTwo!33783 lt!2451335)) (reg!16964 r!7292)) (= (regTwo!33782 (regTwo!33783 lt!2451335)) r!7292)) (= lambda!385309 lambda!385150))))

(declare-fun bs!1822927 () Bool)

(assert (= bs!1822927 (and b!6822722 b!6822721)))

(assert (=> bs!1822927 (not (= lambda!385309 lambda!385308))))

(assert (=> bs!1822923 (not (= lambda!385309 lambda!385244))))

(declare-fun bs!1822928 () Bool)

(assert (= bs!1822928 (and b!6822722 b!6821441)))

(assert (=> bs!1822928 (not (= lambda!385309 lambda!385201))))

(declare-fun bs!1822929 () Bool)

(assert (= bs!1822929 (and b!6822722 b!6821740)))

(assert (=> bs!1822929 (not (= lambda!385309 lambda!385222))))

(assert (=> bs!1822926 (not (= lambda!385309 lambda!385239))))

(declare-fun bs!1822930 () Bool)

(assert (= bs!1822930 (and b!6822722 d!2144993)))

(assert (=> bs!1822930 (not (= lambda!385309 lambda!385248))))

(assert (=> b!6822722 true))

(assert (=> b!6822722 true))

(declare-fun call!620937 () Bool)

(declare-fun c!1269802 () Bool)

(declare-fun bm!620931 () Bool)

(assert (=> bm!620931 (= call!620937 (Exists!3703 (ite c!1269802 lambda!385308 lambda!385309)))))

(declare-fun b!6822720 () Bool)

(declare-fun e!4116115 () Bool)

(declare-fun call!620936 () Bool)

(assert (=> b!6822720 (= e!4116115 call!620936)))

(declare-fun e!4116117 () Bool)

(assert (=> b!6822721 (= e!4116117 call!620937)))

(declare-fun bm!620932 () Bool)

(assert (=> bm!620932 (= call!620936 (isEmpty!38470 s!2326))))

(declare-fun e!4116118 () Bool)

(assert (=> b!6822722 (= e!4116118 call!620937)))

(declare-fun b!6822723 () Bool)

(declare-fun e!4116112 () Bool)

(assert (=> b!6822723 (= e!4116112 (matchRSpec!3736 (regTwo!33783 (regTwo!33783 lt!2451335)) s!2326))))

(declare-fun b!6822724 () Bool)

(declare-fun res!2786649 () Bool)

(assert (=> b!6822724 (=> res!2786649 e!4116117)))

(assert (=> b!6822724 (= res!2786649 call!620936)))

(assert (=> b!6822724 (= e!4116118 e!4116117)))

(declare-fun b!6822725 () Bool)

(declare-fun e!4116116 () Bool)

(assert (=> b!6822725 (= e!4116115 e!4116116)))

(declare-fun res!2786650 () Bool)

(assert (=> b!6822725 (= res!2786650 (not ((_ is EmptyLang!16635) (regTwo!33783 lt!2451335))))))

(assert (=> b!6822725 (=> (not res!2786650) (not e!4116116))))

(declare-fun b!6822726 () Bool)

(declare-fun c!1269803 () Bool)

(assert (=> b!6822726 (= c!1269803 ((_ is Union!16635) (regTwo!33783 lt!2451335)))))

(declare-fun e!4116113 () Bool)

(declare-fun e!4116114 () Bool)

(assert (=> b!6822726 (= e!4116113 e!4116114)))

(declare-fun b!6822727 () Bool)

(assert (=> b!6822727 (= e!4116113 (= s!2326 (Cons!66082 (c!1269331 (regTwo!33783 lt!2451335)) Nil!66082)))))

(declare-fun b!6822728 () Bool)

(assert (=> b!6822728 (= e!4116114 e!4116118)))

(assert (=> b!6822728 (= c!1269802 ((_ is Star!16635) (regTwo!33783 lt!2451335)))))

(declare-fun b!6822729 () Bool)

(declare-fun c!1269804 () Bool)

(assert (=> b!6822729 (= c!1269804 ((_ is ElementMatch!16635) (regTwo!33783 lt!2451335)))))

(assert (=> b!6822729 (= e!4116116 e!4116113)))

(declare-fun d!2145431 () Bool)

(declare-fun c!1269805 () Bool)

(assert (=> d!2145431 (= c!1269805 ((_ is EmptyExpr!16635) (regTwo!33783 lt!2451335)))))

(assert (=> d!2145431 (= (matchRSpec!3736 (regTwo!33783 lt!2451335) s!2326) e!4116115)))

(declare-fun b!6822730 () Bool)

(assert (=> b!6822730 (= e!4116114 e!4116112)))

(declare-fun res!2786651 () Bool)

(assert (=> b!6822730 (= res!2786651 (matchRSpec!3736 (regOne!33783 (regTwo!33783 lt!2451335)) s!2326))))

(assert (=> b!6822730 (=> res!2786651 e!4116112)))

(assert (= (and d!2145431 c!1269805) b!6822720))

(assert (= (and d!2145431 (not c!1269805)) b!6822725))

(assert (= (and b!6822725 res!2786650) b!6822729))

(assert (= (and b!6822729 c!1269804) b!6822727))

(assert (= (and b!6822729 (not c!1269804)) b!6822726))

(assert (= (and b!6822726 c!1269803) b!6822730))

(assert (= (and b!6822726 (not c!1269803)) b!6822728))

(assert (= (and b!6822730 (not res!2786651)) b!6822723))

(assert (= (and b!6822728 c!1269802) b!6822724))

(assert (= (and b!6822728 (not c!1269802)) b!6822722))

(assert (= (and b!6822724 (not res!2786649)) b!6822721))

(assert (= (or b!6822721 b!6822722) bm!620931))

(assert (= (or b!6822720 b!6822724) bm!620932))

(declare-fun m!7568352 () Bool)

(assert (=> bm!620931 m!7568352))

(assert (=> bm!620932 m!7566568))

(declare-fun m!7568354 () Bool)

(assert (=> b!6822723 m!7568354))

(declare-fun m!7568356 () Bool)

(assert (=> b!6822730 m!7568356))

(assert (=> b!6821443 d!2145431))

(declare-fun d!2145433 () Bool)

(declare-fun nullableFct!2510 (Regex!16635) Bool)

(assert (=> d!2145433 (= (nullable!6612 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (nullableFct!2510 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))))

(declare-fun bs!1822931 () Bool)

(assert (= bs!1822931 d!2145433))

(declare-fun m!7568358 () Bool)

(assert (=> bs!1822931 m!7568358))

(assert (=> b!6821308 d!2145433))

(declare-fun d!2145435 () Bool)

(assert (=> d!2145435 (forall!15825 (++!14816 (exprs!6519 lt!2451302) lt!2451306) lambda!385153)))

(declare-fun lt!2451574 () Unit!159961)

(assert (=> d!2145435 (= lt!2451574 (choose!50865 (exprs!6519 lt!2451302) lt!2451306 lambda!385153))))

(assert (=> d!2145435 (forall!15825 (exprs!6519 lt!2451302) lambda!385153)))

(assert (=> d!2145435 (= (lemmaConcatPreservesForall!464 (exprs!6519 lt!2451302) lt!2451306 lambda!385153) lt!2451574)))

(declare-fun bs!1822932 () Bool)

(assert (= bs!1822932 d!2145435))

(assert (=> bs!1822932 m!7567418))

(assert (=> bs!1822932 m!7567418))

(declare-fun m!7568360 () Bool)

(assert (=> bs!1822932 m!7568360))

(declare-fun m!7568362 () Bool)

(assert (=> bs!1822932 m!7568362))

(declare-fun m!7568364 () Bool)

(assert (=> bs!1822932 m!7568364))

(assert (=> bs!1822480 d!2145435))

(declare-fun d!2145437 () Bool)

(declare-fun e!4116119 () Bool)

(assert (=> d!2145437 e!4116119))

(declare-fun res!2786652 () Bool)

(assert (=> d!2145437 (=> (not res!2786652) (not e!4116119))))

(declare-fun lt!2451575 () List!66204)

(assert (=> d!2145437 (= res!2786652 (= (content!12936 lt!2451575) ((_ map or) (content!12936 (exprs!6519 lt!2451302)) (content!12936 lt!2451306))))))

(declare-fun e!4116120 () List!66204)

(assert (=> d!2145437 (= lt!2451575 e!4116120)))

(declare-fun c!1269806 () Bool)

(assert (=> d!2145437 (= c!1269806 ((_ is Nil!66080) (exprs!6519 lt!2451302)))))

(assert (=> d!2145437 (= (++!14816 (exprs!6519 lt!2451302) lt!2451306) lt!2451575)))

(declare-fun b!6822732 () Bool)

(assert (=> b!6822732 (= e!4116120 (Cons!66080 (h!72528 (exprs!6519 lt!2451302)) (++!14816 (t!379941 (exprs!6519 lt!2451302)) lt!2451306)))))

(declare-fun b!6822734 () Bool)

(assert (=> b!6822734 (= e!4116119 (or (not (= lt!2451306 Nil!66080)) (= lt!2451575 (exprs!6519 lt!2451302))))))

(declare-fun b!6822733 () Bool)

(declare-fun res!2786653 () Bool)

(assert (=> b!6822733 (=> (not res!2786653) (not e!4116119))))

(assert (=> b!6822733 (= res!2786653 (= (size!40691 lt!2451575) (+ (size!40691 (exprs!6519 lt!2451302)) (size!40691 lt!2451306))))))

(declare-fun b!6822731 () Bool)

(assert (=> b!6822731 (= e!4116120 lt!2451306)))

(assert (= (and d!2145437 c!1269806) b!6822731))

(assert (= (and d!2145437 (not c!1269806)) b!6822732))

(assert (= (and d!2145437 res!2786652) b!6822733))

(assert (= (and b!6822733 res!2786653) b!6822734))

(declare-fun m!7568366 () Bool)

(assert (=> d!2145437 m!7568366))

(assert (=> d!2145437 m!7568322))

(assert (=> d!2145437 m!7567288))

(declare-fun m!7568368 () Bool)

(assert (=> b!6822732 m!7568368))

(declare-fun m!7568370 () Bool)

(assert (=> b!6822733 m!7568370))

(assert (=> b!6822733 m!7568330))

(assert (=> b!6822733 m!7567296))

(assert (=> bs!1822480 d!2145437))

(declare-fun call!620941 () List!66204)

(declare-fun c!1269807 () Bool)

(declare-fun bm!620933 () Bool)

(declare-fun c!1269809 () Bool)

(assert (=> bm!620933 (= call!620941 ($colon$colon!2442 (exprs!6519 (ite (or c!1269423 c!1269422) (Context!12039 Nil!66080) (Context!12039 call!620758))) (ite (or c!1269807 c!1269809) (regTwo!33782 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))) (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292)))))))))

(declare-fun b!6822735 () Bool)

(declare-fun e!4116121 () (InoxSet Context!12038))

(declare-fun call!620943 () (InoxSet Context!12038))

(declare-fun call!620939 () (InoxSet Context!12038))

(assert (=> b!6822735 (= e!4116121 ((_ map or) call!620943 call!620939))))

(declare-fun b!6822736 () Bool)

(declare-fun e!4116125 () (InoxSet Context!12038))

(assert (=> b!6822736 (= e!4116121 e!4116125)))

(assert (=> b!6822736 (= c!1269809 ((_ is Concat!25480) (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))))))

(declare-fun bm!620934 () Bool)

(declare-fun call!620942 () List!66204)

(assert (=> bm!620934 (= call!620942 call!620941)))

(declare-fun b!6822737 () Bool)

(declare-fun e!4116124 () (InoxSet Context!12038))

(declare-fun call!620938 () (InoxSet Context!12038))

(assert (=> b!6822737 (= e!4116124 call!620938)))

(declare-fun b!6822738 () Bool)

(declare-fun e!4116122 () (InoxSet Context!12038))

(assert (=> b!6822738 (= e!4116122 (store ((as const (Array Context!12038 Bool)) false) (ite (or c!1269423 c!1269422) (Context!12039 Nil!66080) (Context!12039 call!620758)) true))))

(declare-fun d!2145439 () Bool)

(declare-fun c!1269811 () Bool)

(assert (=> d!2145439 (= c!1269811 (and ((_ is ElementMatch!16635) (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))) (= (c!1269331 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))) (h!72530 s!2326))))))

(assert (=> d!2145439 (= (derivationStepZipperDown!1863 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292)))) (ite (or c!1269423 c!1269422) (Context!12039 Nil!66080) (Context!12039 call!620758)) (h!72530 s!2326)) e!4116122)))

(declare-fun bm!620935 () Bool)

(assert (=> bm!620935 (= call!620938 call!620939)))

(declare-fun b!6822739 () Bool)

(declare-fun e!4116126 () (InoxSet Context!12038))

(assert (=> b!6822739 (= e!4116122 e!4116126)))

(declare-fun c!1269808 () Bool)

(assert (=> b!6822739 (= c!1269808 ((_ is Union!16635) (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))))))

(declare-fun b!6822740 () Bool)

(declare-fun c!1269810 () Bool)

(assert (=> b!6822740 (= c!1269810 ((_ is Star!16635) (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))))))

(assert (=> b!6822740 (= e!4116125 e!4116124)))

(declare-fun bm!620936 () Bool)

(assert (=> bm!620936 (= call!620943 (derivationStepZipperDown!1863 (ite c!1269808 (regOne!33783 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))) (regOne!33782 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292)))))) (ite c!1269808 (ite (or c!1269423 c!1269422) (Context!12039 Nil!66080) (Context!12039 call!620758)) (Context!12039 call!620941)) (h!72530 s!2326)))))

(declare-fun b!6822741 () Bool)

(declare-fun e!4116123 () Bool)

(assert (=> b!6822741 (= c!1269807 e!4116123)))

(declare-fun res!2786654 () Bool)

(assert (=> b!6822741 (=> (not res!2786654) (not e!4116123))))

(assert (=> b!6822741 (= res!2786654 ((_ is Concat!25480) (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))))))

(assert (=> b!6822741 (= e!4116126 e!4116121)))

(declare-fun bm!620937 () Bool)

(declare-fun call!620940 () (InoxSet Context!12038))

(assert (=> bm!620937 (= call!620939 call!620940)))

(declare-fun bm!620938 () Bool)

(assert (=> bm!620938 (= call!620940 (derivationStepZipperDown!1863 (ite c!1269808 (regTwo!33783 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))) (ite c!1269807 (regTwo!33782 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))) (ite c!1269809 (regOne!33782 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292))))) (reg!16964 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292)))))))) (ite (or c!1269808 c!1269807) (ite (or c!1269423 c!1269422) (Context!12039 Nil!66080) (Context!12039 call!620758)) (Context!12039 call!620942)) (h!72530 s!2326)))))

(declare-fun b!6822742 () Bool)

(assert (=> b!6822742 (= e!4116124 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6822743 () Bool)

(assert (=> b!6822743 (= e!4116126 ((_ map or) call!620943 call!620940))))

(declare-fun b!6822744 () Bool)

(assert (=> b!6822744 (= e!4116123 (nullable!6612 (regOne!33782 (ite c!1269423 (regTwo!33783 r!7292) (ite c!1269422 (regTwo!33782 r!7292) (ite c!1269424 (regOne!33782 r!7292) (reg!16964 r!7292)))))))))

(declare-fun b!6822745 () Bool)

(assert (=> b!6822745 (= e!4116125 call!620938)))

(assert (= (and d!2145439 c!1269811) b!6822738))

(assert (= (and d!2145439 (not c!1269811)) b!6822739))

(assert (= (and b!6822739 c!1269808) b!6822743))

(assert (= (and b!6822739 (not c!1269808)) b!6822741))

(assert (= (and b!6822741 res!2786654) b!6822744))

(assert (= (and b!6822741 c!1269807) b!6822735))

(assert (= (and b!6822741 (not c!1269807)) b!6822736))

(assert (= (and b!6822736 c!1269809) b!6822745))

(assert (= (and b!6822736 (not c!1269809)) b!6822740))

(assert (= (and b!6822740 c!1269810) b!6822737))

(assert (= (and b!6822740 (not c!1269810)) b!6822742))

(assert (= (or b!6822745 b!6822737) bm!620934))

(assert (= (or b!6822745 b!6822737) bm!620935))

(assert (= (or b!6822735 bm!620934) bm!620933))

(assert (= (or b!6822735 bm!620935) bm!620937))

(assert (= (or b!6822743 bm!620937) bm!620938))

(assert (= (or b!6822743 b!6822735) bm!620936))

(declare-fun m!7568372 () Bool)

(assert (=> bm!620933 m!7568372))

(declare-fun m!7568374 () Bool)

(assert (=> bm!620936 m!7568374))

(declare-fun m!7568376 () Bool)

(assert (=> bm!620938 m!7568376))

(declare-fun m!7568378 () Bool)

(assert (=> b!6822744 m!7568378))

(declare-fun m!7568380 () Bool)

(assert (=> b!6822738 m!7568380))

(assert (=> bm!620754 d!2145439))

(declare-fun d!2145441 () Bool)

(declare-fun c!1269812 () Bool)

(assert (=> d!2145441 (= c!1269812 (isEmpty!38470 (tail!12762 (_2!36913 lt!2451337))))))

(declare-fun e!4116127 () Bool)

(assert (=> d!2145441 (= (matchZipper!2621 (derivationStepZipper!2579 lt!2451308 (head!13677 (_2!36913 lt!2451337))) (tail!12762 (_2!36913 lt!2451337))) e!4116127)))

(declare-fun b!6822746 () Bool)

(assert (=> b!6822746 (= e!4116127 (nullableZipper!2340 (derivationStepZipper!2579 lt!2451308 (head!13677 (_2!36913 lt!2451337)))))))

(declare-fun b!6822747 () Bool)

(assert (=> b!6822747 (= e!4116127 (matchZipper!2621 (derivationStepZipper!2579 (derivationStepZipper!2579 lt!2451308 (head!13677 (_2!36913 lt!2451337))) (head!13677 (tail!12762 (_2!36913 lt!2451337)))) (tail!12762 (tail!12762 (_2!36913 lt!2451337)))))))

(assert (= (and d!2145441 c!1269812) b!6822746))

(assert (= (and d!2145441 (not c!1269812)) b!6822747))

(assert (=> d!2145441 m!7567136))

(declare-fun m!7568382 () Bool)

(assert (=> d!2145441 m!7568382))

(assert (=> b!6822746 m!7567134))

(declare-fun m!7568384 () Bool)

(assert (=> b!6822746 m!7568384))

(assert (=> b!6822747 m!7567136))

(declare-fun m!7568386 () Bool)

(assert (=> b!6822747 m!7568386))

(assert (=> b!6822747 m!7567134))

(assert (=> b!6822747 m!7568386))

(declare-fun m!7568388 () Bool)

(assert (=> b!6822747 m!7568388))

(assert (=> b!6822747 m!7567136))

(declare-fun m!7568390 () Bool)

(assert (=> b!6822747 m!7568390))

(assert (=> b!6822747 m!7568388))

(assert (=> b!6822747 m!7568390))

(declare-fun m!7568392 () Bool)

(assert (=> b!6822747 m!7568392))

(assert (=> b!6821621 d!2145441))

(declare-fun bs!1822933 () Bool)

(declare-fun d!2145443 () Bool)

(assert (= bs!1822933 (and d!2145443 b!6820978)))

(declare-fun lambda!385310 () Int)

(assert (=> bs!1822933 (= (= (head!13677 (_2!36913 lt!2451337)) (h!72530 s!2326)) (= lambda!385310 lambda!385151))))

(declare-fun bs!1822934 () Bool)

(assert (= bs!1822934 (and d!2145443 d!2144793)))

(assert (=> bs!1822934 (= (= (head!13677 (_2!36913 lt!2451337)) (h!72530 s!2326)) (= lambda!385310 lambda!385183))))

(declare-fun bs!1822935 () Bool)

(assert (= bs!1822935 (and d!2145443 d!2144805)))

(assert (=> bs!1822935 (= (= (head!13677 (_2!36913 lt!2451337)) (h!72530 s!2326)) (= lambda!385310 lambda!385184))))

(declare-fun bs!1822936 () Bool)

(assert (= bs!1822936 (and d!2145443 d!2144913)))

(assert (=> bs!1822936 (= (= (head!13677 (_2!36913 lt!2451337)) (h!72530 s!2326)) (= lambda!385310 lambda!385220))))

(assert (=> d!2145443 true))

(assert (=> d!2145443 (= (derivationStepZipper!2579 lt!2451308 (head!13677 (_2!36913 lt!2451337))) (flatMap!2116 lt!2451308 lambda!385310))))

(declare-fun bs!1822937 () Bool)

(assert (= bs!1822937 d!2145443))

(declare-fun m!7568394 () Bool)

(assert (=> bs!1822937 m!7568394))

(assert (=> b!6821621 d!2145443))

(declare-fun d!2145445 () Bool)

(assert (=> d!2145445 (= (head!13677 (_2!36913 lt!2451337)) (h!72530 (_2!36913 lt!2451337)))))

(assert (=> b!6821621 d!2145445))

(declare-fun d!2145447 () Bool)

(assert (=> d!2145447 (= (tail!12762 (_2!36913 lt!2451337)) (t!379943 (_2!36913 lt!2451337)))))

(assert (=> b!6821621 d!2145447))

(declare-fun d!2145449 () Bool)

(declare-fun lambda!385313 () Int)

(declare-fun exists!2751 ((InoxSet Context!12038) Int) Bool)

(assert (=> d!2145449 (= (nullableZipper!2340 z!1189) (exists!2751 z!1189 lambda!385313))))

(declare-fun bs!1822938 () Bool)

(assert (= bs!1822938 d!2145449))

(declare-fun m!7568396 () Bool)

(assert (=> bs!1822938 m!7568396))

(assert (=> b!6821737 d!2145449))

(declare-fun d!2145451 () Bool)

(declare-fun c!1269815 () Bool)

(assert (=> d!2145451 (= c!1269815 (isEmpty!38470 (tail!12762 s!2326)))))

(declare-fun e!4116128 () Bool)

(assert (=> d!2145451 (= (matchZipper!2621 (derivationStepZipper!2579 lt!2451324 (head!13677 s!2326)) (tail!12762 s!2326)) e!4116128)))

(declare-fun b!6822748 () Bool)

(assert (=> b!6822748 (= e!4116128 (nullableZipper!2340 (derivationStepZipper!2579 lt!2451324 (head!13677 s!2326))))))

(declare-fun b!6822749 () Bool)

(assert (=> b!6822749 (= e!4116128 (matchZipper!2621 (derivationStepZipper!2579 (derivationStepZipper!2579 lt!2451324 (head!13677 s!2326)) (head!13677 (tail!12762 s!2326))) (tail!12762 (tail!12762 s!2326))))))

(assert (= (and d!2145451 c!1269815) b!6822748))

(assert (= (and d!2145451 (not c!1269815)) b!6822749))

(assert (=> d!2145451 m!7566984))

(assert (=> d!2145451 m!7566986))

(assert (=> b!6822748 m!7567154))

(declare-fun m!7568398 () Bool)

(assert (=> b!6822748 m!7568398))

(assert (=> b!6822749 m!7566984))

(declare-fun m!7568400 () Bool)

(assert (=> b!6822749 m!7568400))

(assert (=> b!6822749 m!7567154))

(assert (=> b!6822749 m!7568400))

(declare-fun m!7568402 () Bool)

(assert (=> b!6822749 m!7568402))

(assert (=> b!6822749 m!7566984))

(declare-fun m!7568404 () Bool)

(assert (=> b!6822749 m!7568404))

(assert (=> b!6822749 m!7568402))

(assert (=> b!6822749 m!7568404))

(declare-fun m!7568406 () Bool)

(assert (=> b!6822749 m!7568406))

(assert (=> b!6821625 d!2145451))

(declare-fun bs!1822939 () Bool)

(declare-fun d!2145453 () Bool)

(assert (= bs!1822939 (and d!2145453 d!2144913)))

(declare-fun lambda!385314 () Int)

(assert (=> bs!1822939 (= (= (head!13677 s!2326) (h!72530 s!2326)) (= lambda!385314 lambda!385220))))

(declare-fun bs!1822940 () Bool)

(assert (= bs!1822940 (and d!2145453 b!6820978)))

(assert (=> bs!1822940 (= (= (head!13677 s!2326) (h!72530 s!2326)) (= lambda!385314 lambda!385151))))

(declare-fun bs!1822941 () Bool)

(assert (= bs!1822941 (and d!2145453 d!2144805)))

(assert (=> bs!1822941 (= (= (head!13677 s!2326) (h!72530 s!2326)) (= lambda!385314 lambda!385184))))

(declare-fun bs!1822942 () Bool)

(assert (= bs!1822942 (and d!2145453 d!2144793)))

(assert (=> bs!1822942 (= (= (head!13677 s!2326) (h!72530 s!2326)) (= lambda!385314 lambda!385183))))

(declare-fun bs!1822943 () Bool)

(assert (= bs!1822943 (and d!2145453 d!2145443)))

(assert (=> bs!1822943 (= (= (head!13677 s!2326) (head!13677 (_2!36913 lt!2451337))) (= lambda!385314 lambda!385310))))

(assert (=> d!2145453 true))

(assert (=> d!2145453 (= (derivationStepZipper!2579 lt!2451324 (head!13677 s!2326)) (flatMap!2116 lt!2451324 lambda!385314))))

(declare-fun bs!1822944 () Bool)

(assert (= bs!1822944 d!2145453))

(declare-fun m!7568408 () Bool)

(assert (=> bs!1822944 m!7568408))

(assert (=> b!6821625 d!2145453))

(declare-fun d!2145455 () Bool)

(assert (=> d!2145455 (= (head!13677 s!2326) (h!72530 s!2326))))

(assert (=> b!6821625 d!2145455))

(assert (=> b!6821625 d!2145427))

(assert (=> b!6821522 d!2145455))

(declare-fun d!2145457 () Bool)

(assert (=> d!2145457 (= (head!13677 (_1!36913 lt!2451337)) (h!72530 (_1!36913 lt!2451337)))))

(assert (=> b!6821786 d!2145457))

(declare-fun bs!1822945 () Bool)

(declare-fun b!6822751 () Bool)

(assert (= bs!1822945 (and b!6822751 b!6820967)))

(declare-fun lambda!385315 () Int)

(assert (=> bs!1822945 (not (= lambda!385315 lambda!385148))))

(declare-fun bs!1822946 () Bool)

(assert (= bs!1822946 (and b!6822751 d!2144987)))

(assert (=> bs!1822946 (not (= lambda!385315 lambda!385245))))

(declare-fun bs!1822947 () Bool)

(assert (= bs!1822947 (and b!6822751 b!6821741)))

(assert (=> bs!1822947 (not (= lambda!385315 lambda!385223))))

(declare-fun bs!1822948 () Bool)

(assert (= bs!1822948 (and b!6822751 b!6821442)))

(assert (=> bs!1822948 (not (= lambda!385315 lambda!385202))))

(declare-fun bs!1822949 () Bool)

(assert (= bs!1822949 (and b!6822751 d!2144979)))

(assert (=> bs!1822949 (not (= lambda!385315 lambda!385238))))

(assert (=> bs!1822945 (= (and (= (reg!16964 (regOne!33783 r!7292)) (reg!16964 r!7292)) (= (regOne!33783 r!7292) r!7292)) (= lambda!385315 lambda!385149))))

(declare-fun bs!1822950 () Bool)

(assert (= bs!1822950 (and b!6822751 b!6822721)))

(assert (=> bs!1822950 (= (and (= (reg!16964 (regOne!33783 r!7292)) (reg!16964 (regTwo!33783 lt!2451335))) (= (regOne!33783 r!7292) (regTwo!33783 lt!2451335))) (= lambda!385315 lambda!385308))))

(assert (=> bs!1822946 (not (= lambda!385315 lambda!385244))))

(declare-fun bs!1822951 () Bool)

(assert (= bs!1822951 (and b!6822751 b!6821441)))

(assert (=> bs!1822951 (= (and (= (reg!16964 (regOne!33783 r!7292)) (reg!16964 lt!2451335)) (= (regOne!33783 r!7292) lt!2451335)) (= lambda!385315 lambda!385201))))

(declare-fun bs!1822952 () Bool)

(assert (= bs!1822952 (and b!6822751 b!6821740)))

(assert (=> bs!1822952 (= (and (= (reg!16964 (regOne!33783 r!7292)) (reg!16964 r!7292)) (= (regOne!33783 r!7292) r!7292)) (= lambda!385315 lambda!385222))))

(assert (=> bs!1822945 (not (= lambda!385315 lambda!385150))))

(declare-fun bs!1822953 () Bool)

(assert (= bs!1822953 (and b!6822751 b!6822722)))

(assert (=> bs!1822953 (not (= lambda!385315 lambda!385309))))

(assert (=> bs!1822949 (= (and (= (reg!16964 (regOne!33783 r!7292)) (reg!16964 r!7292)) (= (regOne!33783 r!7292) (Star!16635 (reg!16964 r!7292)))) (= lambda!385315 lambda!385239))))

(declare-fun bs!1822954 () Bool)

(assert (= bs!1822954 (and b!6822751 d!2144993)))

(assert (=> bs!1822954 (not (= lambda!385315 lambda!385248))))

(assert (=> b!6822751 true))

(assert (=> b!6822751 true))

(declare-fun bs!1822955 () Bool)

(declare-fun b!6822752 () Bool)

(assert (= bs!1822955 (and b!6822752 b!6820967)))

(declare-fun lambda!385316 () Int)

(assert (=> bs!1822955 (not (= lambda!385316 lambda!385148))))

(declare-fun bs!1822956 () Bool)

(assert (= bs!1822956 (and b!6822752 d!2144987)))

(assert (=> bs!1822956 (= (and (= (regOne!33782 (regOne!33783 r!7292)) (reg!16964 r!7292)) (= (regTwo!33782 (regOne!33783 r!7292)) r!7292)) (= lambda!385316 lambda!385245))))

(declare-fun bs!1822957 () Bool)

(assert (= bs!1822957 (and b!6822752 b!6821741)))

(assert (=> bs!1822957 (= (and (= (regOne!33782 (regOne!33783 r!7292)) (regOne!33782 r!7292)) (= (regTwo!33782 (regOne!33783 r!7292)) (regTwo!33782 r!7292))) (= lambda!385316 lambda!385223))))

(declare-fun bs!1822958 () Bool)

(assert (= bs!1822958 (and b!6822752 b!6821442)))

(assert (=> bs!1822958 (= (and (= (regOne!33782 (regOne!33783 r!7292)) (regOne!33782 lt!2451335)) (= (regTwo!33782 (regOne!33783 r!7292)) (regTwo!33782 lt!2451335))) (= lambda!385316 lambda!385202))))

(declare-fun bs!1822959 () Bool)

(assert (= bs!1822959 (and b!6822752 d!2144979)))

(assert (=> bs!1822959 (not (= lambda!385316 lambda!385238))))

(declare-fun bs!1822960 () Bool)

(assert (= bs!1822960 (and b!6822752 b!6822751)))

(assert (=> bs!1822960 (not (= lambda!385316 lambda!385315))))

(assert (=> bs!1822955 (not (= lambda!385316 lambda!385149))))

(declare-fun bs!1822961 () Bool)

(assert (= bs!1822961 (and b!6822752 b!6822721)))

(assert (=> bs!1822961 (not (= lambda!385316 lambda!385308))))

(assert (=> bs!1822956 (not (= lambda!385316 lambda!385244))))

(declare-fun bs!1822962 () Bool)

(assert (= bs!1822962 (and b!6822752 b!6821441)))

(assert (=> bs!1822962 (not (= lambda!385316 lambda!385201))))

(declare-fun bs!1822963 () Bool)

(assert (= bs!1822963 (and b!6822752 b!6821740)))

(assert (=> bs!1822963 (not (= lambda!385316 lambda!385222))))

(assert (=> bs!1822955 (= (and (= (regOne!33782 (regOne!33783 r!7292)) (reg!16964 r!7292)) (= (regTwo!33782 (regOne!33783 r!7292)) r!7292)) (= lambda!385316 lambda!385150))))

(declare-fun bs!1822964 () Bool)

(assert (= bs!1822964 (and b!6822752 b!6822722)))

(assert (=> bs!1822964 (= (and (= (regOne!33782 (regOne!33783 r!7292)) (regOne!33782 (regTwo!33783 lt!2451335))) (= (regTwo!33782 (regOne!33783 r!7292)) (regTwo!33782 (regTwo!33783 lt!2451335)))) (= lambda!385316 lambda!385309))))

(assert (=> bs!1822959 (not (= lambda!385316 lambda!385239))))

(declare-fun bs!1822965 () Bool)

(assert (= bs!1822965 (and b!6822752 d!2144993)))

(assert (=> bs!1822965 (not (= lambda!385316 lambda!385248))))

(assert (=> b!6822752 true))

(assert (=> b!6822752 true))

(declare-fun call!620945 () Bool)

(declare-fun bm!620939 () Bool)

(declare-fun c!1269816 () Bool)

(assert (=> bm!620939 (= call!620945 (Exists!3703 (ite c!1269816 lambda!385315 lambda!385316)))))

(declare-fun b!6822750 () Bool)

(declare-fun e!4116132 () Bool)

(declare-fun call!620944 () Bool)

(assert (=> b!6822750 (= e!4116132 call!620944)))

(declare-fun e!4116134 () Bool)

(assert (=> b!6822751 (= e!4116134 call!620945)))

(declare-fun bm!620940 () Bool)

(assert (=> bm!620940 (= call!620944 (isEmpty!38470 s!2326))))

(declare-fun e!4116135 () Bool)

(assert (=> b!6822752 (= e!4116135 call!620945)))

(declare-fun b!6822753 () Bool)

(declare-fun e!4116129 () Bool)

(assert (=> b!6822753 (= e!4116129 (matchRSpec!3736 (regTwo!33783 (regOne!33783 r!7292)) s!2326))))

(declare-fun b!6822754 () Bool)

(declare-fun res!2786655 () Bool)

(assert (=> b!6822754 (=> res!2786655 e!4116134)))

(assert (=> b!6822754 (= res!2786655 call!620944)))

(assert (=> b!6822754 (= e!4116135 e!4116134)))

(declare-fun b!6822755 () Bool)

(declare-fun e!4116133 () Bool)

(assert (=> b!6822755 (= e!4116132 e!4116133)))

(declare-fun res!2786656 () Bool)

(assert (=> b!6822755 (= res!2786656 (not ((_ is EmptyLang!16635) (regOne!33783 r!7292))))))

(assert (=> b!6822755 (=> (not res!2786656) (not e!4116133))))

(declare-fun b!6822756 () Bool)

(declare-fun c!1269817 () Bool)

(assert (=> b!6822756 (= c!1269817 ((_ is Union!16635) (regOne!33783 r!7292)))))

(declare-fun e!4116130 () Bool)

(declare-fun e!4116131 () Bool)

(assert (=> b!6822756 (= e!4116130 e!4116131)))

(declare-fun b!6822757 () Bool)

(assert (=> b!6822757 (= e!4116130 (= s!2326 (Cons!66082 (c!1269331 (regOne!33783 r!7292)) Nil!66082)))))

(declare-fun b!6822758 () Bool)

(assert (=> b!6822758 (= e!4116131 e!4116135)))

(assert (=> b!6822758 (= c!1269816 ((_ is Star!16635) (regOne!33783 r!7292)))))

(declare-fun b!6822759 () Bool)

(declare-fun c!1269818 () Bool)

(assert (=> b!6822759 (= c!1269818 ((_ is ElementMatch!16635) (regOne!33783 r!7292)))))

(assert (=> b!6822759 (= e!4116133 e!4116130)))

(declare-fun d!2145459 () Bool)

(declare-fun c!1269819 () Bool)

(assert (=> d!2145459 (= c!1269819 ((_ is EmptyExpr!16635) (regOne!33783 r!7292)))))

(assert (=> d!2145459 (= (matchRSpec!3736 (regOne!33783 r!7292) s!2326) e!4116132)))

(declare-fun b!6822760 () Bool)

(assert (=> b!6822760 (= e!4116131 e!4116129)))

(declare-fun res!2786657 () Bool)

(assert (=> b!6822760 (= res!2786657 (matchRSpec!3736 (regOne!33783 (regOne!33783 r!7292)) s!2326))))

(assert (=> b!6822760 (=> res!2786657 e!4116129)))

(assert (= (and d!2145459 c!1269819) b!6822750))

(assert (= (and d!2145459 (not c!1269819)) b!6822755))

(assert (= (and b!6822755 res!2786656) b!6822759))

(assert (= (and b!6822759 c!1269818) b!6822757))

(assert (= (and b!6822759 (not c!1269818)) b!6822756))

(assert (= (and b!6822756 c!1269817) b!6822760))

(assert (= (and b!6822756 (not c!1269817)) b!6822758))

(assert (= (and b!6822760 (not res!2786657)) b!6822753))

(assert (= (and b!6822758 c!1269816) b!6822754))

(assert (= (and b!6822758 (not c!1269816)) b!6822752))

(assert (= (and b!6822754 (not res!2786655)) b!6822751))

(assert (= (or b!6822751 b!6822752) bm!620939))

(assert (= (or b!6822750 b!6822754) bm!620940))

(declare-fun m!7568410 () Bool)

(assert (=> bm!620939 m!7568410))

(assert (=> bm!620940 m!7566568))

(declare-fun m!7568412 () Bool)

(assert (=> b!6822753 m!7568412))

(declare-fun m!7568414 () Bool)

(assert (=> b!6822760 m!7568414))

(assert (=> b!6821749 d!2145459))

(declare-fun d!2145461 () Bool)

(assert (=> d!2145461 (= (isEmpty!38473 (unfocusZipperList!2056 zl!343)) ((_ is Nil!66080) (unfocusZipperList!2056 zl!343)))))

(assert (=> b!6821820 d!2145461))

(declare-fun bs!1822966 () Bool)

(declare-fun d!2145463 () Bool)

(assert (= bs!1822966 (and d!2145463 d!2144969)))

(declare-fun lambda!385317 () Int)

(assert (=> bs!1822966 (= lambda!385317 lambda!385230)))

(declare-fun bs!1822967 () Bool)

(assert (= bs!1822967 (and d!2145463 d!2145417)))

(assert (=> bs!1822967 (= lambda!385317 lambda!385307)))

(declare-fun bs!1822968 () Bool)

(assert (= bs!1822968 (and d!2145463 d!2144955)))

(assert (=> bs!1822968 (= lambda!385317 lambda!385226)))

(declare-fun bs!1822969 () Bool)

(assert (= bs!1822969 (and d!2145463 d!2144971)))

(assert (=> bs!1822969 (= lambda!385317 lambda!385233)))

(declare-fun bs!1822970 () Bool)

(assert (= bs!1822970 (and d!2145463 d!2144757)))

(assert (=> bs!1822970 (= lambda!385317 lambda!385162)))

(declare-fun bs!1822971 () Bool)

(assert (= bs!1822971 (and d!2145463 d!2144867)))

(assert (=> bs!1822971 (= lambda!385317 lambda!385209)))

(declare-fun bs!1822972 () Bool)

(assert (= bs!1822972 (and d!2145463 b!6820964)))

(assert (=> bs!1822972 (= lambda!385317 lambda!385153)))

(declare-fun bs!1822973 () Bool)

(assert (= bs!1822973 (and d!2145463 d!2144881)))

(assert (=> bs!1822973 (= lambda!385317 lambda!385217)))

(declare-fun bs!1822974 () Bool)

(assert (= bs!1822974 (and d!2145463 d!2144963)))

(assert (=> bs!1822974 (= lambda!385317 lambda!385227)))

(assert (=> d!2145463 (= (inv!84834 (h!72529 (t!379942 zl!343))) (forall!15825 (exprs!6519 (h!72529 (t!379942 zl!343))) lambda!385317))))

(declare-fun bs!1822975 () Bool)

(assert (= bs!1822975 d!2145463))

(declare-fun m!7568416 () Bool)

(assert (=> bs!1822975 m!7568416))

(assert (=> b!6821888 d!2145463))

(declare-fun bs!1822976 () Bool)

(declare-fun d!2145465 () Bool)

(assert (= bs!1822976 (and d!2145465 d!2145449)))

(declare-fun lambda!385318 () Int)

(assert (=> bs!1822976 (= lambda!385318 lambda!385313)))

(assert (=> d!2145465 (= (nullableZipper!2340 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true)) (exists!2751 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) lambda!385318))))

(declare-fun bs!1822977 () Bool)

(assert (= bs!1822977 d!2145465))

(assert (=> bs!1822977 m!7566488))

(declare-fun m!7568418 () Bool)

(assert (=> bs!1822977 m!7568418))

(assert (=> b!6821790 d!2145465))

(declare-fun d!2145467 () Bool)

(assert (=> d!2145467 (= (head!13678 (unfocusZipperList!2056 zl!343)) (h!72528 (unfocusZipperList!2056 zl!343)))))

(assert (=> b!6821812 d!2145467))

(declare-fun d!2145469 () Bool)

(assert (=> d!2145469 true))

(assert (=> d!2145469 true))

(declare-fun res!2786660 () Bool)

(assert (=> d!2145469 (= (choose!50869 lambda!385150) res!2786660)))

(assert (=> d!2144989 d!2145469))

(declare-fun d!2145471 () Bool)

(declare-fun res!2786665 () Bool)

(declare-fun e!4116140 () Bool)

(assert (=> d!2145471 (=> res!2786665 e!4116140)))

(assert (=> d!2145471 (= res!2786665 ((_ is Nil!66080) (exprs!6519 setElem!46799)))))

(assert (=> d!2145471 (= (forall!15825 (exprs!6519 setElem!46799) lambda!385209) e!4116140)))

(declare-fun b!6822765 () Bool)

(declare-fun e!4116141 () Bool)

(assert (=> b!6822765 (= e!4116140 e!4116141)))

(declare-fun res!2786666 () Bool)

(assert (=> b!6822765 (=> (not res!2786666) (not e!4116141))))

(declare-fun dynLambda!26406 (Int Regex!16635) Bool)

(assert (=> b!6822765 (= res!2786666 (dynLambda!26406 lambda!385209 (h!72528 (exprs!6519 setElem!46799))))))

(declare-fun b!6822766 () Bool)

(assert (=> b!6822766 (= e!4116141 (forall!15825 (t!379941 (exprs!6519 setElem!46799)) lambda!385209))))

(assert (= (and d!2145471 (not res!2786665)) b!6822765))

(assert (= (and b!6822765 res!2786666) b!6822766))

(declare-fun b_lambda!257343 () Bool)

(assert (=> (not b_lambda!257343) (not b!6822765)))

(declare-fun m!7568420 () Bool)

(assert (=> b!6822765 m!7568420))

(declare-fun m!7568422 () Bool)

(assert (=> b!6822766 m!7568422))

(assert (=> d!2144867 d!2145471))

(declare-fun d!2145473 () Bool)

(assert (=> d!2145473 (= (isEmptyExpr!1991 lt!2451442) ((_ is EmptyExpr!16635) lt!2451442))))

(assert (=> b!6821605 d!2145473))

(declare-fun bs!1822978 () Bool)

(declare-fun d!2145475 () Bool)

(assert (= bs!1822978 (and d!2145475 d!2145449)))

(declare-fun lambda!385319 () Int)

(assert (=> bs!1822978 (= lambda!385319 lambda!385313)))

(declare-fun bs!1822979 () Bool)

(assert (= bs!1822979 (and d!2145475 d!2145465)))

(assert (=> bs!1822979 (= lambda!385319 lambda!385318)))

(assert (=> d!2145475 (= (nullableZipper!2340 lt!2451330) (exists!2751 lt!2451330 lambda!385319))))

(declare-fun bs!1822980 () Bool)

(assert (= bs!1822980 d!2145475))

(declare-fun m!7568424 () Bool)

(assert (=> bs!1822980 m!7568424))

(assert (=> b!6821571 d!2145475))

(declare-fun d!2145477 () Bool)

(assert (=> d!2145477 (= (isEmpty!38473 (tail!12763 (unfocusZipperList!2056 zl!343))) ((_ is Nil!66080) (tail!12763 (unfocusZipperList!2056 zl!343))))))

(assert (=> b!6821816 d!2145477))

(declare-fun d!2145479 () Bool)

(assert (=> d!2145479 (= (tail!12763 (unfocusZipperList!2056 zl!343)) (t!379941 (unfocusZipperList!2056 zl!343)))))

(assert (=> b!6821816 d!2145479))

(assert (=> b!6821750 d!2145455))

(declare-fun b!6822767 () Bool)

(declare-fun res!2786667 () Bool)

(declare-fun e!4116146 () Bool)

(assert (=> b!6822767 (=> (not res!2786667) (not e!4116146))))

(declare-fun call!620948 () Bool)

(assert (=> b!6822767 (= res!2786667 call!620948)))

(declare-fun e!4116144 () Bool)

(assert (=> b!6822767 (= e!4116144 e!4116146)))

(declare-fun b!6822768 () Bool)

(declare-fun call!620947 () Bool)

(assert (=> b!6822768 (= e!4116146 call!620947)))

(declare-fun bm!620941 () Bool)

(declare-fun call!620946 () Bool)

(assert (=> bm!620941 (= call!620947 call!620946)))

(declare-fun d!2145481 () Bool)

(declare-fun res!2786670 () Bool)

(declare-fun e!4116142 () Bool)

(assert (=> d!2145481 (=> res!2786670 e!4116142)))

(assert (=> d!2145481 (= res!2786670 ((_ is ElementMatch!16635) (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))))))

(assert (=> d!2145481 (= (validRegex!8371 (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))) e!4116142)))

(declare-fun bm!620942 () Bool)

(declare-fun c!1269820 () Bool)

(assert (=> bm!620942 (= call!620948 (validRegex!8371 (ite c!1269820 (regOne!33783 (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))) (regOne!33782 (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))))))))

(declare-fun b!6822769 () Bool)

(declare-fun res!2786671 () Bool)

(declare-fun e!4116147 () Bool)

(assert (=> b!6822769 (=> res!2786671 e!4116147)))

(assert (=> b!6822769 (= res!2786671 (not ((_ is Concat!25480) (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292)))))))

(assert (=> b!6822769 (= e!4116144 e!4116147)))

(declare-fun b!6822770 () Bool)

(declare-fun e!4116143 () Bool)

(assert (=> b!6822770 (= e!4116143 e!4116144)))

(assert (=> b!6822770 (= c!1269820 ((_ is Union!16635) (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))))))

(declare-fun b!6822771 () Bool)

(assert (=> b!6822771 (= e!4116142 e!4116143)))

(declare-fun c!1269821 () Bool)

(assert (=> b!6822771 (= c!1269821 ((_ is Star!16635) (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))))))

(declare-fun b!6822772 () Bool)

(declare-fun e!4116148 () Bool)

(assert (=> b!6822772 (= e!4116148 call!620947)))

(declare-fun b!6822773 () Bool)

(declare-fun e!4116145 () Bool)

(assert (=> b!6822773 (= e!4116143 e!4116145)))

(declare-fun res!2786668 () Bool)

(assert (=> b!6822773 (= res!2786668 (not (nullable!6612 (reg!16964 (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))))))))

(assert (=> b!6822773 (=> (not res!2786668) (not e!4116145))))

(declare-fun b!6822774 () Bool)

(assert (=> b!6822774 (= e!4116147 e!4116148)))

(declare-fun res!2786669 () Bool)

(assert (=> b!6822774 (=> (not res!2786669) (not e!4116148))))

(assert (=> b!6822774 (= res!2786669 call!620948)))

(declare-fun b!6822775 () Bool)

(assert (=> b!6822775 (= e!4116145 call!620946)))

(declare-fun bm!620943 () Bool)

(assert (=> bm!620943 (= call!620946 (validRegex!8371 (ite c!1269821 (reg!16964 (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))) (ite c!1269820 (regTwo!33783 (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292))) (regTwo!33782 (ite c!1269463 (regOne!33783 r!7292) (regOne!33782 r!7292)))))))))

(assert (= (and d!2145481 (not res!2786670)) b!6822771))

(assert (= (and b!6822771 c!1269821) b!6822773))

(assert (= (and b!6822771 (not c!1269821)) b!6822770))

(assert (= (and b!6822773 res!2786668) b!6822775))

(assert (= (and b!6822770 c!1269820) b!6822767))

(assert (= (and b!6822770 (not c!1269820)) b!6822769))

(assert (= (and b!6822767 res!2786667) b!6822768))

(assert (= (and b!6822769 (not res!2786671)) b!6822774))

(assert (= (and b!6822774 res!2786669) b!6822772))

(assert (= (or b!6822768 b!6822772) bm!620941))

(assert (= (or b!6822767 b!6822774) bm!620942))

(assert (= (or b!6822775 bm!620941) bm!620943))

(declare-fun m!7568426 () Bool)

(assert (=> bm!620942 m!7568426))

(declare-fun m!7568428 () Bool)

(assert (=> b!6822773 m!7568428))

(declare-fun m!7568430 () Bool)

(assert (=> bm!620943 m!7568430))

(assert (=> bm!620770 d!2145481))

(assert (=> d!2144951 d!2144983))

(assert (=> d!2144951 d!2144821))

(declare-fun d!2145483 () Bool)

(declare-fun c!1269822 () Bool)

(assert (=> d!2145483 (= c!1269822 (isEmpty!38470 (_1!36913 (get!23022 lt!2451456))))))

(declare-fun e!4116149 () Bool)

(assert (=> d!2145483 (= (matchZipper!2621 lt!2451330 (_1!36913 (get!23022 lt!2451456))) e!4116149)))

(declare-fun b!6822776 () Bool)

(assert (=> b!6822776 (= e!4116149 (nullableZipper!2340 lt!2451330))))

(declare-fun b!6822777 () Bool)

(assert (=> b!6822777 (= e!4116149 (matchZipper!2621 (derivationStepZipper!2579 lt!2451330 (head!13677 (_1!36913 (get!23022 lt!2451456)))) (tail!12762 (_1!36913 (get!23022 lt!2451456)))))))

(assert (= (and d!2145483 c!1269822) b!6822776))

(assert (= (and d!2145483 (not c!1269822)) b!6822777))

(declare-fun m!7568432 () Bool)

(assert (=> d!2145483 m!7568432))

(assert (=> b!6822776 m!7567024))

(declare-fun m!7568434 () Bool)

(assert (=> b!6822777 m!7568434))

(assert (=> b!6822777 m!7568434))

(declare-fun m!7568436 () Bool)

(assert (=> b!6822777 m!7568436))

(declare-fun m!7568438 () Bool)

(assert (=> b!6822777 m!7568438))

(assert (=> b!6822777 m!7568436))

(assert (=> b!6822777 m!7568438))

(declare-fun m!7568440 () Bool)

(assert (=> b!6822777 m!7568440))

(assert (=> b!6821736 d!2145483))

(declare-fun d!2145485 () Bool)

(assert (=> d!2145485 (= (get!23022 lt!2451456) (v!52731 lt!2451456))))

(assert (=> b!6821736 d!2145485))

(assert (=> d!2144907 d!2144983))

(declare-fun d!2145487 () Bool)

(assert (=> d!2145487 (= ($colon$colon!2442 (exprs!6519 (Context!12039 Nil!66080)) (ite (or c!1269422 c!1269424) (regTwo!33782 r!7292) r!7292)) (Cons!66080 (ite (or c!1269422 c!1269424) (regTwo!33782 r!7292) r!7292) (exprs!6519 (Context!12039 Nil!66080))))))

(assert (=> bm!620749 d!2145487))

(declare-fun c!1269825 () Bool)

(declare-fun c!1269823 () Bool)

(declare-fun bm!620944 () Bool)

(declare-fun call!620952 () List!66204)

(assert (=> bm!620944 (= call!620952 ($colon$colon!2442 (exprs!6519 (ite (or c!1269534 c!1269533) lt!2451314 (Context!12039 call!620803))) (ite (or c!1269823 c!1269825) (regTwo!33782 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))) (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292))))))))))

(declare-fun b!6822778 () Bool)

(declare-fun e!4116150 () (InoxSet Context!12038))

(declare-fun call!620954 () (InoxSet Context!12038))

(declare-fun call!620950 () (InoxSet Context!12038))

(assert (=> b!6822778 (= e!4116150 ((_ map or) call!620954 call!620950))))

(declare-fun b!6822779 () Bool)

(declare-fun e!4116154 () (InoxSet Context!12038))

(assert (=> b!6822779 (= e!4116150 e!4116154)))

(assert (=> b!6822779 (= c!1269825 ((_ is Concat!25480) (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))))))

(declare-fun bm!620945 () Bool)

(declare-fun call!620953 () List!66204)

(assert (=> bm!620945 (= call!620953 call!620952)))

(declare-fun b!6822780 () Bool)

(declare-fun e!4116153 () (InoxSet Context!12038))

(declare-fun call!620949 () (InoxSet Context!12038))

(assert (=> b!6822780 (= e!4116153 call!620949)))

(declare-fun b!6822781 () Bool)

(declare-fun e!4116151 () (InoxSet Context!12038))

(assert (=> b!6822781 (= e!4116151 (store ((as const (Array Context!12038 Bool)) false) (ite (or c!1269534 c!1269533) lt!2451314 (Context!12039 call!620803)) true))))

(declare-fun c!1269827 () Bool)

(declare-fun d!2145489 () Bool)

(assert (=> d!2145489 (= c!1269827 (and ((_ is ElementMatch!16635) (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))) (= (c!1269331 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))) (h!72530 s!2326))))))

(assert (=> d!2145489 (= (derivationStepZipperDown!1863 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292))))) (ite (or c!1269534 c!1269533) lt!2451314 (Context!12039 call!620803)) (h!72530 s!2326)) e!4116151)))

(declare-fun bm!620946 () Bool)

(assert (=> bm!620946 (= call!620949 call!620950)))

(declare-fun b!6822782 () Bool)

(declare-fun e!4116155 () (InoxSet Context!12038))

(assert (=> b!6822782 (= e!4116151 e!4116155)))

(declare-fun c!1269824 () Bool)

(assert (=> b!6822782 (= c!1269824 ((_ is Union!16635) (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))))))

(declare-fun b!6822783 () Bool)

(declare-fun c!1269826 () Bool)

(assert (=> b!6822783 (= c!1269826 ((_ is Star!16635) (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))))))

(assert (=> b!6822783 (= e!4116154 e!4116153)))

(declare-fun bm!620947 () Bool)

(assert (=> bm!620947 (= call!620954 (derivationStepZipperDown!1863 (ite c!1269824 (regOne!33783 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))) (regOne!33782 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292))))))) (ite c!1269824 (ite (or c!1269534 c!1269533) lt!2451314 (Context!12039 call!620803)) (Context!12039 call!620952)) (h!72530 s!2326)))))

(declare-fun b!6822784 () Bool)

(declare-fun e!4116152 () Bool)

(assert (=> b!6822784 (= c!1269823 e!4116152)))

(declare-fun res!2786672 () Bool)

(assert (=> b!6822784 (=> (not res!2786672) (not e!4116152))))

(assert (=> b!6822784 (= res!2786672 ((_ is Concat!25480) (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))))))

(assert (=> b!6822784 (= e!4116155 e!4116150)))

(declare-fun bm!620948 () Bool)

(declare-fun call!620951 () (InoxSet Context!12038))

(assert (=> bm!620948 (= call!620950 call!620951)))

(declare-fun bm!620949 () Bool)

(assert (=> bm!620949 (= call!620951 (derivationStepZipperDown!1863 (ite c!1269824 (regTwo!33783 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))) (ite c!1269823 (regTwo!33782 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))) (ite c!1269825 (regOne!33782 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292)))))) (reg!16964 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292))))))))) (ite (or c!1269824 c!1269823) (ite (or c!1269534 c!1269533) lt!2451314 (Context!12039 call!620803)) (Context!12039 call!620953)) (h!72530 s!2326)))))

(declare-fun b!6822785 () Bool)

(assert (=> b!6822785 (= e!4116153 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6822786 () Bool)

(assert (=> b!6822786 (= e!4116155 ((_ map or) call!620954 call!620951))))

(declare-fun b!6822787 () Bool)

(assert (=> b!6822787 (= e!4116152 (nullable!6612 (regOne!33782 (ite c!1269534 (regTwo!33783 (reg!16964 r!7292)) (ite c!1269533 (regTwo!33782 (reg!16964 r!7292)) (ite c!1269535 (regOne!33782 (reg!16964 r!7292)) (reg!16964 (reg!16964 r!7292))))))))))

(declare-fun b!6822788 () Bool)

(assert (=> b!6822788 (= e!4116154 call!620949)))

(assert (= (and d!2145489 c!1269827) b!6822781))

(assert (= (and d!2145489 (not c!1269827)) b!6822782))

(assert (= (and b!6822782 c!1269824) b!6822786))

(assert (= (and b!6822782 (not c!1269824)) b!6822784))

(assert (= (and b!6822784 res!2786672) b!6822787))

(assert (= (and b!6822784 c!1269823) b!6822778))

(assert (= (and b!6822784 (not c!1269823)) b!6822779))

(assert (= (and b!6822779 c!1269825) b!6822788))

(assert (= (and b!6822779 (not c!1269825)) b!6822783))

(assert (= (and b!6822783 c!1269826) b!6822780))

(assert (= (and b!6822783 (not c!1269826)) b!6822785))

(assert (= (or b!6822788 b!6822780) bm!620945))

(assert (= (or b!6822788 b!6822780) bm!620946))

(assert (= (or b!6822778 bm!620945) bm!620944))

(assert (= (or b!6822778 bm!620946) bm!620948))

(assert (= (or b!6822786 bm!620948) bm!620949))

(assert (= (or b!6822786 b!6822778) bm!620947))

(declare-fun m!7568442 () Bool)

(assert (=> bm!620944 m!7568442))

(declare-fun m!7568444 () Bool)

(assert (=> bm!620947 m!7568444))

(declare-fun m!7568446 () Bool)

(assert (=> bm!620949 m!7568446))

(declare-fun m!7568448 () Bool)

(assert (=> b!6822787 m!7568448))

(declare-fun m!7568450 () Bool)

(assert (=> b!6822781 m!7568450))

(assert (=> bm!620799 d!2145489))

(declare-fun bm!620950 () Bool)

(declare-fun c!1269828 () Bool)

(declare-fun call!620958 () List!66204)

(declare-fun c!1269830 () Bool)

(assert (=> bm!620950 (= call!620958 ($colon$colon!2442 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))) (ite (or c!1269828 c!1269830) (regTwo!33782 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))))))

(declare-fun b!6822789 () Bool)

(declare-fun e!4116156 () (InoxSet Context!12038))

(declare-fun call!620960 () (InoxSet Context!12038))

(declare-fun call!620956 () (InoxSet Context!12038))

(assert (=> b!6822789 (= e!4116156 ((_ map or) call!620960 call!620956))))

(declare-fun b!6822790 () Bool)

(declare-fun e!4116160 () (InoxSet Context!12038))

(assert (=> b!6822790 (= e!4116156 e!4116160)))

(assert (=> b!6822790 (= c!1269830 ((_ is Concat!25480) (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))))

(declare-fun bm!620951 () Bool)

(declare-fun call!620959 () List!66204)

(assert (=> bm!620951 (= call!620959 call!620958)))

(declare-fun b!6822791 () Bool)

(declare-fun e!4116159 () (InoxSet Context!12038))

(declare-fun call!620955 () (InoxSet Context!12038))

(assert (=> b!6822791 (= e!4116159 call!620955)))

(declare-fun b!6822792 () Bool)

(declare-fun e!4116157 () (InoxSet Context!12038))

(assert (=> b!6822792 (= e!4116157 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) true))))

(declare-fun d!2145491 () Bool)

(declare-fun c!1269832 () Bool)

(assert (=> d!2145491 (= c!1269832 (and ((_ is ElementMatch!16635) (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (= (c!1269331 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (h!72530 s!2326))))))

(assert (=> d!2145491 (= (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (h!72530 s!2326)) e!4116157)))

(declare-fun bm!620952 () Bool)

(assert (=> bm!620952 (= call!620955 call!620956)))

(declare-fun b!6822793 () Bool)

(declare-fun e!4116161 () (InoxSet Context!12038))

(assert (=> b!6822793 (= e!4116157 e!4116161)))

(declare-fun c!1269829 () Bool)

(assert (=> b!6822793 (= c!1269829 ((_ is Union!16635) (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))))

(declare-fun b!6822794 () Bool)

(declare-fun c!1269831 () Bool)

(assert (=> b!6822794 (= c!1269831 ((_ is Star!16635) (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))))

(assert (=> b!6822794 (= e!4116160 e!4116159)))

(declare-fun bm!620953 () Bool)

(assert (=> bm!620953 (= call!620960 (derivationStepZipperDown!1863 (ite c!1269829 (regOne!33783 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (regOne!33782 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))) (ite c!1269829 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (Context!12039 call!620958)) (h!72530 s!2326)))))

(declare-fun b!6822795 () Bool)

(declare-fun e!4116158 () Bool)

(assert (=> b!6822795 (= c!1269828 e!4116158)))

(declare-fun res!2786673 () Bool)

(assert (=> b!6822795 (=> (not res!2786673) (not e!4116158))))

(assert (=> b!6822795 (= res!2786673 ((_ is Concat!25480) (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))))

(assert (=> b!6822795 (= e!4116161 e!4116156)))

(declare-fun bm!620954 () Bool)

(declare-fun call!620957 () (InoxSet Context!12038))

(assert (=> bm!620954 (= call!620956 call!620957)))

(declare-fun bm!620955 () Bool)

(assert (=> bm!620955 (= call!620957 (derivationStepZipperDown!1863 (ite c!1269829 (regTwo!33783 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (ite c!1269828 (regTwo!33782 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (ite c!1269830 (regOne!33782 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (reg!16964 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))))) (ite (or c!1269829 c!1269828) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (Context!12039 call!620959)) (h!72530 s!2326)))))

(declare-fun b!6822796 () Bool)

(assert (=> b!6822796 (= e!4116159 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6822797 () Bool)

(assert (=> b!6822797 (= e!4116161 ((_ map or) call!620960 call!620957))))

(declare-fun b!6822798 () Bool)

(assert (=> b!6822798 (= e!4116158 (nullable!6612 (regOne!33782 (h!72528 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))))))

(declare-fun b!6822799 () Bool)

(assert (=> b!6822799 (= e!4116160 call!620955)))

(assert (= (and d!2145491 c!1269832) b!6822792))

(assert (= (and d!2145491 (not c!1269832)) b!6822793))

(assert (= (and b!6822793 c!1269829) b!6822797))

(assert (= (and b!6822793 (not c!1269829)) b!6822795))

(assert (= (and b!6822795 res!2786673) b!6822798))

(assert (= (and b!6822795 c!1269828) b!6822789))

(assert (= (and b!6822795 (not c!1269828)) b!6822790))

(assert (= (and b!6822790 c!1269830) b!6822799))

(assert (= (and b!6822790 (not c!1269830)) b!6822794))

(assert (= (and b!6822794 c!1269831) b!6822791))

(assert (= (and b!6822794 (not c!1269831)) b!6822796))

(assert (= (or b!6822799 b!6822791) bm!620951))

(assert (= (or b!6822799 b!6822791) bm!620952))

(assert (= (or b!6822789 bm!620951) bm!620950))

(assert (= (or b!6822789 bm!620952) bm!620954))

(assert (= (or b!6822797 bm!620954) bm!620955))

(assert (= (or b!6822797 b!6822789) bm!620953))

(declare-fun m!7568452 () Bool)

(assert (=> bm!620950 m!7568452))

(declare-fun m!7568454 () Bool)

(assert (=> bm!620953 m!7568454))

(declare-fun m!7568456 () Bool)

(assert (=> bm!620955 m!7568456))

(declare-fun m!7568458 () Bool)

(assert (=> b!6822798 m!7568458))

(declare-fun m!7568460 () Bool)

(assert (=> b!6822792 m!7568460))

(assert (=> bm!620760 d!2145491))

(assert (=> b!6821870 d!2144951))

(declare-fun d!2145493 () Bool)

(declare-fun c!1269833 () Bool)

(assert (=> d!2145493 (= c!1269833 (isEmpty!38470 s!2326))))

(declare-fun e!4116162 () Bool)

(assert (=> d!2145493 (= (matchZipper!2621 lt!2451308 s!2326) e!4116162)))

(declare-fun b!6822800 () Bool)

(assert (=> b!6822800 (= e!4116162 (nullableZipper!2340 lt!2451308))))

(declare-fun b!6822801 () Bool)

(assert (=> b!6822801 (= e!4116162 (matchZipper!2621 (derivationStepZipper!2579 lt!2451308 (head!13677 s!2326)) (tail!12762 s!2326)))))

(assert (= (and d!2145493 c!1269833) b!6822800))

(assert (= (and d!2145493 (not c!1269833)) b!6822801))

(assert (=> d!2145493 m!7566568))

(assert (=> b!6822800 m!7567130))

(assert (=> b!6822801 m!7566988))

(assert (=> b!6822801 m!7566988))

(declare-fun m!7568462 () Bool)

(assert (=> b!6822801 m!7568462))

(assert (=> b!6822801 m!7566984))

(assert (=> b!6822801 m!7568462))

(assert (=> b!6822801 m!7566984))

(declare-fun m!7568464 () Bool)

(assert (=> b!6822801 m!7568464))

(assert (=> b!6821728 d!2145493))

(assert (=> b!6821826 d!2144881))

(declare-fun bs!1822981 () Bool)

(declare-fun d!2145495 () Bool)

(assert (= bs!1822981 (and d!2145495 d!2145417)))

(declare-fun lambda!385320 () Int)

(assert (=> bs!1822981 (= lambda!385320 lambda!385307)))

(declare-fun bs!1822982 () Bool)

(assert (= bs!1822982 (and d!2145495 d!2144955)))

(assert (=> bs!1822982 (= lambda!385320 lambda!385226)))

(declare-fun bs!1822983 () Bool)

(assert (= bs!1822983 (and d!2145495 d!2144971)))

(assert (=> bs!1822983 (= lambda!385320 lambda!385233)))

(declare-fun bs!1822984 () Bool)

(assert (= bs!1822984 (and d!2145495 d!2144757)))

(assert (=> bs!1822984 (= lambda!385320 lambda!385162)))

(declare-fun bs!1822985 () Bool)

(assert (= bs!1822985 (and d!2145495 d!2144867)))

(assert (=> bs!1822985 (= lambda!385320 lambda!385209)))

(declare-fun bs!1822986 () Bool)

(assert (= bs!1822986 (and d!2145495 b!6820964)))

(assert (=> bs!1822986 (= lambda!385320 lambda!385153)))

(declare-fun bs!1822987 () Bool)

(assert (= bs!1822987 (and d!2145495 d!2145463)))

(assert (=> bs!1822987 (= lambda!385320 lambda!385317)))

(declare-fun bs!1822988 () Bool)

(assert (= bs!1822988 (and d!2145495 d!2144969)))

(assert (=> bs!1822988 (= lambda!385320 lambda!385230)))

(declare-fun bs!1822989 () Bool)

(assert (= bs!1822989 (and d!2145495 d!2144881)))

(assert (=> bs!1822989 (= lambda!385320 lambda!385217)))

(declare-fun bs!1822990 () Bool)

(assert (= bs!1822990 (and d!2145495 d!2144963)))

(assert (=> bs!1822990 (= lambda!385320 lambda!385227)))

(declare-fun lt!2451576 () List!66204)

(assert (=> d!2145495 (forall!15825 lt!2451576 lambda!385320)))

(declare-fun e!4116163 () List!66204)

(assert (=> d!2145495 (= lt!2451576 e!4116163)))

(declare-fun c!1269834 () Bool)

(assert (=> d!2145495 (= c!1269834 ((_ is Cons!66081) (t!379942 zl!343)))))

(assert (=> d!2145495 (= (unfocusZipperList!2056 (t!379942 zl!343)) lt!2451576)))

(declare-fun b!6822802 () Bool)

(assert (=> b!6822802 (= e!4116163 (Cons!66080 (generalisedConcat!2232 (exprs!6519 (h!72529 (t!379942 zl!343)))) (unfocusZipperList!2056 (t!379942 (t!379942 zl!343)))))))

(declare-fun b!6822803 () Bool)

(assert (=> b!6822803 (= e!4116163 Nil!66080)))

(assert (= (and d!2145495 c!1269834) b!6822802))

(assert (= (and d!2145495 (not c!1269834)) b!6822803))

(declare-fun m!7568466 () Bool)

(assert (=> d!2145495 m!7568466))

(declare-fun m!7568468 () Bool)

(assert (=> b!6822802 m!7568468))

(declare-fun m!7568470 () Bool)

(assert (=> b!6822802 m!7568470))

(assert (=> b!6821826 d!2145495))

(declare-fun d!2145497 () Bool)

(declare-fun res!2786674 () Bool)

(declare-fun e!4116164 () Bool)

(assert (=> d!2145497 (=> res!2786674 e!4116164)))

(assert (=> d!2145497 (= res!2786674 ((_ is Nil!66080) lt!2451484))))

(assert (=> d!2145497 (= (forall!15825 lt!2451484 lambda!385233) e!4116164)))

(declare-fun b!6822804 () Bool)

(declare-fun e!4116165 () Bool)

(assert (=> b!6822804 (= e!4116164 e!4116165)))

(declare-fun res!2786675 () Bool)

(assert (=> b!6822804 (=> (not res!2786675) (not e!4116165))))

(assert (=> b!6822804 (= res!2786675 (dynLambda!26406 lambda!385233 (h!72528 lt!2451484)))))

(declare-fun b!6822805 () Bool)

(assert (=> b!6822805 (= e!4116165 (forall!15825 (t!379941 lt!2451484) lambda!385233))))

(assert (= (and d!2145497 (not res!2786674)) b!6822804))

(assert (= (and b!6822804 res!2786675) b!6822805))

(declare-fun b_lambda!257345 () Bool)

(assert (=> (not b_lambda!257345) (not b!6822804)))

(declare-fun m!7568472 () Bool)

(assert (=> b!6822804 m!7568472))

(declare-fun m!7568474 () Bool)

(assert (=> b!6822805 m!7568474))

(assert (=> d!2144971 d!2145497))

(declare-fun b!6822809 () Bool)

(declare-fun e!4116166 () Bool)

(declare-fun lt!2451577 () List!66206)

(assert (=> b!6822809 (= e!4116166 (or (not (= (t!379943 s!2326) Nil!66082)) (= lt!2451577 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)))))))

(declare-fun b!6822808 () Bool)

(declare-fun res!2786676 () Bool)

(assert (=> b!6822808 (=> (not res!2786676) (not e!4116166))))

(assert (=> b!6822808 (= res!2786676 (= (size!40690 lt!2451577) (+ (size!40690 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082))) (size!40690 (t!379943 s!2326)))))))

(declare-fun b!6822806 () Bool)

(declare-fun e!4116167 () List!66206)

(assert (=> b!6822806 (= e!4116167 (t!379943 s!2326))))

(declare-fun b!6822807 () Bool)

(assert (=> b!6822807 (= e!4116167 (Cons!66082 (h!72530 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082))) (++!14817 (t!379943 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082))) (t!379943 s!2326))))))

(declare-fun d!2145499 () Bool)

(assert (=> d!2145499 e!4116166))

(declare-fun res!2786677 () Bool)

(assert (=> d!2145499 (=> (not res!2786677) (not e!4116166))))

(assert (=> d!2145499 (= res!2786677 (= (content!12935 lt!2451577) ((_ map or) (content!12935 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082))) (content!12935 (t!379943 s!2326)))))))

(assert (=> d!2145499 (= lt!2451577 e!4116167)))

(declare-fun c!1269835 () Bool)

(assert (=> d!2145499 (= c!1269835 ((_ is Nil!66082) (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082))))))

(assert (=> d!2145499 (= (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326)) lt!2451577)))

(assert (= (and d!2145499 c!1269835) b!6822806))

(assert (= (and d!2145499 (not c!1269835)) b!6822807))

(assert (= (and d!2145499 res!2786677) b!6822808))

(assert (= (and b!6822808 res!2786676) b!6822809))

(declare-fun m!7568476 () Bool)

(assert (=> b!6822808 m!7568476))

(assert (=> b!6822808 m!7567236))

(declare-fun m!7568478 () Bool)

(assert (=> b!6822808 m!7568478))

(declare-fun m!7568480 () Bool)

(assert (=> b!6822808 m!7568480))

(declare-fun m!7568482 () Bool)

(assert (=> b!6822807 m!7568482))

(declare-fun m!7568484 () Bool)

(assert (=> d!2145499 m!7568484))

(assert (=> d!2145499 m!7567236))

(declare-fun m!7568486 () Bool)

(assert (=> d!2145499 m!7568486))

(declare-fun m!7568488 () Bool)

(assert (=> d!2145499 m!7568488))

(assert (=> b!6821874 d!2145499))

(declare-fun b!6822813 () Bool)

(declare-fun e!4116168 () Bool)

(declare-fun lt!2451578 () List!66206)

(assert (=> b!6822813 (= e!4116168 (or (not (= (Cons!66082 (h!72530 s!2326) Nil!66082) Nil!66082)) (= lt!2451578 Nil!66082)))))

(declare-fun b!6822812 () Bool)

(declare-fun res!2786678 () Bool)

(assert (=> b!6822812 (=> (not res!2786678) (not e!4116168))))

(assert (=> b!6822812 (= res!2786678 (= (size!40690 lt!2451578) (+ (size!40690 Nil!66082) (size!40690 (Cons!66082 (h!72530 s!2326) Nil!66082)))))))

(declare-fun b!6822810 () Bool)

(declare-fun e!4116169 () List!66206)

(assert (=> b!6822810 (= e!4116169 (Cons!66082 (h!72530 s!2326) Nil!66082))))

(declare-fun b!6822811 () Bool)

(assert (=> b!6822811 (= e!4116169 (Cons!66082 (h!72530 Nil!66082) (++!14817 (t!379943 Nil!66082) (Cons!66082 (h!72530 s!2326) Nil!66082))))))

(declare-fun d!2145501 () Bool)

(assert (=> d!2145501 e!4116168))

(declare-fun res!2786679 () Bool)

(assert (=> d!2145501 (=> (not res!2786679) (not e!4116168))))

(assert (=> d!2145501 (= res!2786679 (= (content!12935 lt!2451578) ((_ map or) (content!12935 Nil!66082) (content!12935 (Cons!66082 (h!72530 s!2326) Nil!66082)))))))

(assert (=> d!2145501 (= lt!2451578 e!4116169)))

(declare-fun c!1269836 () Bool)

(assert (=> d!2145501 (= c!1269836 ((_ is Nil!66082) Nil!66082))))

(assert (=> d!2145501 (= (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) lt!2451578)))

(assert (= (and d!2145501 c!1269836) b!6822810))

(assert (= (and d!2145501 (not c!1269836)) b!6822811))

(assert (= (and d!2145501 res!2786679) b!6822812))

(assert (= (and b!6822812 res!2786678) b!6822813))

(declare-fun m!7568490 () Bool)

(assert (=> b!6822812 m!7568490))

(declare-fun m!7568492 () Bool)

(assert (=> b!6822812 m!7568492))

(declare-fun m!7568494 () Bool)

(assert (=> b!6822812 m!7568494))

(declare-fun m!7568496 () Bool)

(assert (=> b!6822811 m!7568496))

(declare-fun m!7568498 () Bool)

(assert (=> d!2145501 m!7568498))

(declare-fun m!7568500 () Bool)

(assert (=> d!2145501 m!7568500))

(declare-fun m!7568502 () Bool)

(assert (=> d!2145501 m!7568502))

(assert (=> b!6821874 d!2145501))

(declare-fun d!2145503 () Bool)

(assert (=> d!2145503 (= (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326)) s!2326)))

(declare-fun lt!2451581 () Unit!159961)

(declare-fun choose!50875 (List!66206 C!33540 List!66206 List!66206) Unit!159961)

(assert (=> d!2145503 (= lt!2451581 (choose!50875 Nil!66082 (h!72530 s!2326) (t!379943 s!2326) s!2326))))

(assert (=> d!2145503 (= (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) (t!379943 s!2326))) s!2326)))

(assert (=> d!2145503 (= (lemmaMoveElementToOtherListKeepsConcatEq!2754 Nil!66082 (h!72530 s!2326) (t!379943 s!2326) s!2326) lt!2451581)))

(declare-fun bs!1822991 () Bool)

(assert (= bs!1822991 d!2145503))

(assert (=> bs!1822991 m!7567236))

(assert (=> bs!1822991 m!7567236))

(assert (=> bs!1822991 m!7567238))

(declare-fun m!7568504 () Bool)

(assert (=> bs!1822991 m!7568504))

(declare-fun m!7568506 () Bool)

(assert (=> bs!1822991 m!7568506))

(assert (=> b!6821874 d!2145503))

(declare-fun b!6822814 () Bool)

(declare-fun e!4116171 () Option!16522)

(assert (=> b!6822814 (= e!4116171 (Some!16521 (tuple2!67221 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326))))))

(declare-fun b!6822815 () Bool)

(declare-fun e!4116172 () Bool)

(declare-fun lt!2451583 () Option!16522)

(assert (=> b!6822815 (= e!4116172 (not (isDefined!13225 lt!2451583)))))

(declare-fun b!6822816 () Bool)

(declare-fun e!4116173 () Option!16522)

(assert (=> b!6822816 (= e!4116173 None!16521)))

(declare-fun b!6822817 () Bool)

(declare-fun e!4116174 () Bool)

(assert (=> b!6822817 (= e!4116174 (matchR!8818 r!7292 (t!379943 s!2326)))))

(declare-fun b!6822818 () Bool)

(declare-fun e!4116170 () Bool)

(assert (=> b!6822818 (= e!4116170 (= (++!14817 (_1!36913 (get!23022 lt!2451583)) (_2!36913 (get!23022 lt!2451583))) s!2326))))

(declare-fun b!6822819 () Bool)

(declare-fun res!2786683 () Bool)

(assert (=> b!6822819 (=> (not res!2786683) (not e!4116170))))

(assert (=> b!6822819 (= res!2786683 (matchR!8818 (reg!16964 r!7292) (_1!36913 (get!23022 lt!2451583))))))

(declare-fun b!6822820 () Bool)

(assert (=> b!6822820 (= e!4116171 e!4116173)))

(declare-fun c!1269838 () Bool)

(assert (=> b!6822820 (= c!1269838 ((_ is Nil!66082) (t!379943 s!2326)))))

(declare-fun b!6822821 () Bool)

(declare-fun lt!2451582 () Unit!159961)

(declare-fun lt!2451584 () Unit!159961)

(assert (=> b!6822821 (= lt!2451582 lt!2451584)))

(assert (=> b!6822821 (= (++!14817 (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (Cons!66082 (h!72530 (t!379943 s!2326)) Nil!66082)) (t!379943 (t!379943 s!2326))) s!2326)))

(assert (=> b!6822821 (= lt!2451584 (lemmaMoveElementToOtherListKeepsConcatEq!2754 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (h!72530 (t!379943 s!2326)) (t!379943 (t!379943 s!2326)) s!2326))))

(assert (=> b!6822821 (= e!4116173 (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (Cons!66082 (h!72530 (t!379943 s!2326)) Nil!66082)) (t!379943 (t!379943 s!2326)) s!2326))))

(declare-fun d!2145505 () Bool)

(assert (=> d!2145505 e!4116172))

(declare-fun res!2786681 () Bool)

(assert (=> d!2145505 (=> res!2786681 e!4116172)))

(assert (=> d!2145505 (= res!2786681 e!4116170)))

(declare-fun res!2786684 () Bool)

(assert (=> d!2145505 (=> (not res!2786684) (not e!4116170))))

(assert (=> d!2145505 (= res!2786684 (isDefined!13225 lt!2451583))))

(assert (=> d!2145505 (= lt!2451583 e!4116171)))

(declare-fun c!1269837 () Bool)

(assert (=> d!2145505 (= c!1269837 e!4116174)))

(declare-fun res!2786680 () Bool)

(assert (=> d!2145505 (=> (not res!2786680) (not e!4116174))))

(assert (=> d!2145505 (= res!2786680 (matchR!8818 (reg!16964 r!7292) (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082))))))

(assert (=> d!2145505 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2145505 (= (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326) s!2326) lt!2451583)))

(declare-fun b!6822822 () Bool)

(declare-fun res!2786682 () Bool)

(assert (=> b!6822822 (=> (not res!2786682) (not e!4116170))))

(assert (=> b!6822822 (= res!2786682 (matchR!8818 r!7292 (_2!36913 (get!23022 lt!2451583))))))

(assert (= (and d!2145505 res!2786680) b!6822817))

(assert (= (and d!2145505 c!1269837) b!6822814))

(assert (= (and d!2145505 (not c!1269837)) b!6822820))

(assert (= (and b!6822820 c!1269838) b!6822816))

(assert (= (and b!6822820 (not c!1269838)) b!6822821))

(assert (= (and d!2145505 res!2786684) b!6822819))

(assert (= (and b!6822819 res!2786683) b!6822822))

(assert (= (and b!6822822 res!2786682) b!6822818))

(assert (= (and d!2145505 (not res!2786681)) b!6822815))

(declare-fun m!7568508 () Bool)

(assert (=> b!6822815 m!7568508))

(declare-fun m!7568510 () Bool)

(assert (=> b!6822819 m!7568510))

(declare-fun m!7568512 () Bool)

(assert (=> b!6822819 m!7568512))

(assert (=> b!6822818 m!7568510))

(declare-fun m!7568514 () Bool)

(assert (=> b!6822818 m!7568514))

(assert (=> b!6822822 m!7568510))

(declare-fun m!7568516 () Bool)

(assert (=> b!6822822 m!7568516))

(assert (=> d!2145505 m!7568508))

(assert (=> d!2145505 m!7567236))

(declare-fun m!7568518 () Bool)

(assert (=> d!2145505 m!7568518))

(assert (=> d!2145505 m!7567298))

(assert (=> b!6822821 m!7567236))

(declare-fun m!7568520 () Bool)

(assert (=> b!6822821 m!7568520))

(assert (=> b!6822821 m!7568520))

(declare-fun m!7568522 () Bool)

(assert (=> b!6822821 m!7568522))

(assert (=> b!6822821 m!7567236))

(declare-fun m!7568524 () Bool)

(assert (=> b!6822821 m!7568524))

(assert (=> b!6822821 m!7568520))

(declare-fun m!7568526 () Bool)

(assert (=> b!6822821 m!7568526))

(declare-fun m!7568528 () Bool)

(assert (=> b!6822817 m!7568528))

(assert (=> b!6821874 d!2145505))

(declare-fun d!2145507 () Bool)

(declare-fun c!1269839 () Bool)

(assert (=> d!2145507 (= c!1269839 (isEmpty!38470 (_2!36913 (get!23022 lt!2451456))))))

(declare-fun e!4116175 () Bool)

(assert (=> d!2145507 (= (matchZipper!2621 lt!2451308 (_2!36913 (get!23022 lt!2451456))) e!4116175)))

(declare-fun b!6822823 () Bool)

(assert (=> b!6822823 (= e!4116175 (nullableZipper!2340 lt!2451308))))

(declare-fun b!6822824 () Bool)

(assert (=> b!6822824 (= e!4116175 (matchZipper!2621 (derivationStepZipper!2579 lt!2451308 (head!13677 (_2!36913 (get!23022 lt!2451456)))) (tail!12762 (_2!36913 (get!23022 lt!2451456)))))))

(assert (= (and d!2145507 c!1269839) b!6822823))

(assert (= (and d!2145507 (not c!1269839)) b!6822824))

(declare-fun m!7568530 () Bool)

(assert (=> d!2145507 m!7568530))

(assert (=> b!6822823 m!7567130))

(declare-fun m!7568532 () Bool)

(assert (=> b!6822824 m!7568532))

(assert (=> b!6822824 m!7568532))

(declare-fun m!7568534 () Bool)

(assert (=> b!6822824 m!7568534))

(declare-fun m!7568536 () Bool)

(assert (=> b!6822824 m!7568536))

(assert (=> b!6822824 m!7568534))

(assert (=> b!6822824 m!7568536))

(declare-fun m!7568538 () Bool)

(assert (=> b!6822824 m!7568538))

(assert (=> b!6821732 d!2145507))

(assert (=> b!6821732 d!2145485))

(declare-fun d!2145509 () Bool)

(declare-fun e!4116176 () Bool)

(assert (=> d!2145509 e!4116176))

(declare-fun res!2786685 () Bool)

(assert (=> d!2145509 (=> (not res!2786685) (not e!4116176))))

(declare-fun lt!2451585 () List!66204)

(assert (=> d!2145509 (= res!2786685 (= (content!12936 lt!2451585) ((_ map or) (content!12936 (t!379941 lt!2451325)) (content!12936 lt!2451306))))))

(declare-fun e!4116177 () List!66204)

(assert (=> d!2145509 (= lt!2451585 e!4116177)))

(declare-fun c!1269840 () Bool)

(assert (=> d!2145509 (= c!1269840 ((_ is Nil!66080) (t!379941 lt!2451325)))))

(assert (=> d!2145509 (= (++!14816 (t!379941 lt!2451325) lt!2451306) lt!2451585)))

(declare-fun b!6822826 () Bool)

(assert (=> b!6822826 (= e!4116177 (Cons!66080 (h!72528 (t!379941 lt!2451325)) (++!14816 (t!379941 (t!379941 lt!2451325)) lt!2451306)))))

(declare-fun b!6822828 () Bool)

(assert (=> b!6822828 (= e!4116176 (or (not (= lt!2451306 Nil!66080)) (= lt!2451585 (t!379941 lt!2451325))))))

(declare-fun b!6822827 () Bool)

(declare-fun res!2786686 () Bool)

(assert (=> b!6822827 (=> (not res!2786686) (not e!4116176))))

(assert (=> b!6822827 (= res!2786686 (= (size!40691 lt!2451585) (+ (size!40691 (t!379941 lt!2451325)) (size!40691 lt!2451306))))))

(declare-fun b!6822825 () Bool)

(assert (=> b!6822825 (= e!4116177 lt!2451306)))

(assert (= (and d!2145509 c!1269840) b!6822825))

(assert (= (and d!2145509 (not c!1269840)) b!6822826))

(assert (= (and d!2145509 res!2786685) b!6822827))

(assert (= (and b!6822827 res!2786686) b!6822828))

(declare-fun m!7568540 () Bool)

(assert (=> d!2145509 m!7568540))

(declare-fun m!7568542 () Bool)

(assert (=> d!2145509 m!7568542))

(assert (=> d!2145509 m!7567288))

(declare-fun m!7568544 () Bool)

(assert (=> b!6822826 m!7568544))

(declare-fun m!7568546 () Bool)

(assert (=> b!6822827 m!7568546))

(declare-fun m!7568548 () Bool)

(assert (=> b!6822827 m!7568548))

(assert (=> b!6822827 m!7567296))

(assert (=> b!6821773 d!2145509))

(declare-fun d!2145511 () Bool)

(assert (=> d!2145511 (= (Exists!3703 (ite c!1269550 lambda!385222 lambda!385223)) (choose!50869 (ite c!1269550 lambda!385222 lambda!385223)))))

(declare-fun bs!1822992 () Bool)

(assert (= bs!1822992 d!2145511))

(declare-fun m!7568550 () Bool)

(assert (=> bs!1822992 m!7568550))

(assert (=> bm!620801 d!2145511))

(declare-fun d!2145513 () Bool)

(declare-fun res!2786687 () Bool)

(declare-fun e!4116178 () Bool)

(assert (=> d!2145513 (=> res!2786687 e!4116178)))

(assert (=> d!2145513 (= res!2786687 ((_ is Nil!66080) (++!14816 lt!2451325 lt!2451306)))))

(assert (=> d!2145513 (= (forall!15825 (++!14816 lt!2451325 lt!2451306) lambda!385153) e!4116178)))

(declare-fun b!6822829 () Bool)

(declare-fun e!4116179 () Bool)

(assert (=> b!6822829 (= e!4116178 e!4116179)))

(declare-fun res!2786688 () Bool)

(assert (=> b!6822829 (=> (not res!2786688) (not e!4116179))))

(assert (=> b!6822829 (= res!2786688 (dynLambda!26406 lambda!385153 (h!72528 (++!14816 lt!2451325 lt!2451306))))))

(declare-fun b!6822830 () Bool)

(assert (=> b!6822830 (= e!4116179 (forall!15825 (t!379941 (++!14816 lt!2451325 lt!2451306)) lambda!385153))))

(assert (= (and d!2145513 (not res!2786687)) b!6822829))

(assert (= (and b!6822829 res!2786688) b!6822830))

(declare-fun b_lambda!257347 () Bool)

(assert (=> (not b_lambda!257347) (not b!6822829)))

(declare-fun m!7568552 () Bool)

(assert (=> b!6822829 m!7568552))

(declare-fun m!7568554 () Bool)

(assert (=> b!6822830 m!7568554))

(assert (=> d!2144961 d!2145513))

(assert (=> d!2144961 d!2144957))

(declare-fun d!2145515 () Bool)

(assert (=> d!2145515 (forall!15825 (++!14816 lt!2451325 lt!2451306) lambda!385153)))

(assert (=> d!2145515 true))

(declare-fun _$78!446 () Unit!159961)

(assert (=> d!2145515 (= (choose!50865 lt!2451325 lt!2451306 lambda!385153) _$78!446)))

(declare-fun bs!1822993 () Bool)

(assert (= bs!1822993 d!2145515))

(assert (=> bs!1822993 m!7566482))

(assert (=> bs!1822993 m!7566482))

(assert (=> bs!1822993 m!7567306))

(assert (=> d!2144961 d!2145515))

(declare-fun d!2145517 () Bool)

(declare-fun res!2786689 () Bool)

(declare-fun e!4116180 () Bool)

(assert (=> d!2145517 (=> res!2786689 e!4116180)))

(assert (=> d!2145517 (= res!2786689 ((_ is Nil!66080) lt!2451325))))

(assert (=> d!2145517 (= (forall!15825 lt!2451325 lambda!385153) e!4116180)))

(declare-fun b!6822831 () Bool)

(declare-fun e!4116181 () Bool)

(assert (=> b!6822831 (= e!4116180 e!4116181)))

(declare-fun res!2786690 () Bool)

(assert (=> b!6822831 (=> (not res!2786690) (not e!4116181))))

(assert (=> b!6822831 (= res!2786690 (dynLambda!26406 lambda!385153 (h!72528 lt!2451325)))))

(declare-fun b!6822832 () Bool)

(assert (=> b!6822832 (= e!4116181 (forall!15825 (t!379941 lt!2451325) lambda!385153))))

(assert (= (and d!2145517 (not res!2786689)) b!6822831))

(assert (= (and b!6822831 res!2786690) b!6822832))

(declare-fun b_lambda!257349 () Bool)

(assert (=> (not b_lambda!257349) (not b!6822831)))

(declare-fun m!7568556 () Bool)

(assert (=> b!6822831 m!7568556))

(declare-fun m!7568558 () Bool)

(assert (=> b!6822832 m!7568558))

(assert (=> d!2144961 d!2145517))

(assert (=> bs!1822479 d!2144875))

(declare-fun c!1269843 () Bool)

(declare-fun c!1269841 () Bool)

(declare-fun call!620964 () List!66204)

(declare-fun bm!620956 () Bool)

(assert (=> bm!620956 (= call!620964 ($colon$colon!2442 (exprs!6519 (ite c!1269423 (Context!12039 Nil!66080) (Context!12039 call!620757))) (ite (or c!1269841 c!1269843) (regTwo!33782 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))) (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292)))))))

(declare-fun b!6822833 () Bool)

(declare-fun e!4116182 () (InoxSet Context!12038))

(declare-fun call!620966 () (InoxSet Context!12038))

(declare-fun call!620962 () (InoxSet Context!12038))

(assert (=> b!6822833 (= e!4116182 ((_ map or) call!620966 call!620962))))

(declare-fun b!6822834 () Bool)

(declare-fun e!4116186 () (InoxSet Context!12038))

(assert (=> b!6822834 (= e!4116182 e!4116186)))

(assert (=> b!6822834 (= c!1269843 ((_ is Concat!25480) (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))))))

(declare-fun bm!620957 () Bool)

(declare-fun call!620965 () List!66204)

(assert (=> bm!620957 (= call!620965 call!620964)))

(declare-fun b!6822835 () Bool)

(declare-fun e!4116185 () (InoxSet Context!12038))

(declare-fun call!620961 () (InoxSet Context!12038))

(assert (=> b!6822835 (= e!4116185 call!620961)))

(declare-fun b!6822836 () Bool)

(declare-fun e!4116183 () (InoxSet Context!12038))

(assert (=> b!6822836 (= e!4116183 (store ((as const (Array Context!12038 Bool)) false) (ite c!1269423 (Context!12039 Nil!66080) (Context!12039 call!620757)) true))))

(declare-fun c!1269845 () Bool)

(declare-fun d!2145519 () Bool)

(assert (=> d!2145519 (= c!1269845 (and ((_ is ElementMatch!16635) (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))) (= (c!1269331 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))) (h!72530 s!2326))))))

(assert (=> d!2145519 (= (derivationStepZipperDown!1863 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292)) (ite c!1269423 (Context!12039 Nil!66080) (Context!12039 call!620757)) (h!72530 s!2326)) e!4116183)))

(declare-fun bm!620958 () Bool)

(assert (=> bm!620958 (= call!620961 call!620962)))

(declare-fun b!6822837 () Bool)

(declare-fun e!4116187 () (InoxSet Context!12038))

(assert (=> b!6822837 (= e!4116183 e!4116187)))

(declare-fun c!1269842 () Bool)

(assert (=> b!6822837 (= c!1269842 ((_ is Union!16635) (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))))))

(declare-fun b!6822838 () Bool)

(declare-fun c!1269844 () Bool)

(assert (=> b!6822838 (= c!1269844 ((_ is Star!16635) (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))))))

(assert (=> b!6822838 (= e!4116186 e!4116185)))

(declare-fun bm!620959 () Bool)

(assert (=> bm!620959 (= call!620966 (derivationStepZipperDown!1863 (ite c!1269842 (regOne!33783 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))) (regOne!33782 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292)))) (ite c!1269842 (ite c!1269423 (Context!12039 Nil!66080) (Context!12039 call!620757)) (Context!12039 call!620964)) (h!72530 s!2326)))))

(declare-fun b!6822839 () Bool)

(declare-fun e!4116184 () Bool)

(assert (=> b!6822839 (= c!1269841 e!4116184)))

(declare-fun res!2786691 () Bool)

(assert (=> b!6822839 (=> (not res!2786691) (not e!4116184))))

(assert (=> b!6822839 (= res!2786691 ((_ is Concat!25480) (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))))))

(assert (=> b!6822839 (= e!4116187 e!4116182)))

(declare-fun bm!620960 () Bool)

(declare-fun call!620963 () (InoxSet Context!12038))

(assert (=> bm!620960 (= call!620962 call!620963)))

(declare-fun bm!620961 () Bool)

(assert (=> bm!620961 (= call!620963 (derivationStepZipperDown!1863 (ite c!1269842 (regTwo!33783 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))) (ite c!1269841 (regTwo!33782 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))) (ite c!1269843 (regOne!33782 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292))) (reg!16964 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292)))))) (ite (or c!1269842 c!1269841) (ite c!1269423 (Context!12039 Nil!66080) (Context!12039 call!620757)) (Context!12039 call!620965)) (h!72530 s!2326)))))

(declare-fun b!6822840 () Bool)

(assert (=> b!6822840 (= e!4116185 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6822841 () Bool)

(assert (=> b!6822841 (= e!4116187 ((_ map or) call!620966 call!620963))))

(declare-fun b!6822842 () Bool)

(assert (=> b!6822842 (= e!4116184 (nullable!6612 (regOne!33782 (ite c!1269423 (regOne!33783 r!7292) (regOne!33782 r!7292)))))))

(declare-fun b!6822843 () Bool)

(assert (=> b!6822843 (= e!4116186 call!620961)))

(assert (= (and d!2145519 c!1269845) b!6822836))

(assert (= (and d!2145519 (not c!1269845)) b!6822837))

(assert (= (and b!6822837 c!1269842) b!6822841))

(assert (= (and b!6822837 (not c!1269842)) b!6822839))

(assert (= (and b!6822839 res!2786691) b!6822842))

(assert (= (and b!6822839 c!1269841) b!6822833))

(assert (= (and b!6822839 (not c!1269841)) b!6822834))

(assert (= (and b!6822834 c!1269843) b!6822843))

(assert (= (and b!6822834 (not c!1269843)) b!6822838))

(assert (= (and b!6822838 c!1269844) b!6822835))

(assert (= (and b!6822838 (not c!1269844)) b!6822840))

(assert (= (or b!6822843 b!6822835) bm!620957))

(assert (= (or b!6822843 b!6822835) bm!620958))

(assert (= (or b!6822833 bm!620957) bm!620956))

(assert (= (or b!6822833 bm!620958) bm!620960))

(assert (= (or b!6822841 bm!620960) bm!620961))

(assert (= (or b!6822841 b!6822833) bm!620959))

(declare-fun m!7568560 () Bool)

(assert (=> bm!620956 m!7568560))

(declare-fun m!7568562 () Bool)

(assert (=> bm!620959 m!7568562))

(declare-fun m!7568564 () Bool)

(assert (=> bm!620961 m!7568564))

(declare-fun m!7568566 () Bool)

(assert (=> b!6822842 m!7568566))

(declare-fun m!7568568 () Bool)

(assert (=> b!6822836 m!7568568))

(assert (=> bm!620752 d!2145519))

(declare-fun d!2145521 () Bool)

(assert (=> d!2145521 (= (flatMap!2116 lt!2451324 lambda!385220) (choose!50858 lt!2451324 lambda!385220))))

(declare-fun bs!1822994 () Bool)

(assert (= bs!1822994 d!2145521))

(declare-fun m!7568570 () Bool)

(assert (=> bs!1822994 m!7568570))

(assert (=> d!2144913 d!2145521))

(declare-fun d!2145523 () Bool)

(assert (=> d!2145523 true))

(declare-fun setRes!46818 () Bool)

(assert (=> d!2145523 setRes!46818))

(declare-fun condSetEmpty!46818 () Bool)

(declare-fun res!2786694 () (InoxSet Context!12038))

(assert (=> d!2145523 (= condSetEmpty!46818 (= res!2786694 ((as const (Array Context!12038 Bool)) false)))))

(assert (=> d!2145523 (= (choose!50873 lt!2451330 lambda!385152) res!2786694)))

(declare-fun setIsEmpty!46818 () Bool)

(assert (=> setIsEmpty!46818 setRes!46818))

(declare-fun e!4116190 () Bool)

(declare-fun setNonEmpty!46818 () Bool)

(declare-fun setElem!46818 () Context!12038)

(declare-fun tp!1867556 () Bool)

(assert (=> setNonEmpty!46818 (= setRes!46818 (and tp!1867556 (inv!84834 setElem!46818) e!4116190))))

(declare-fun setRest!46818 () (InoxSet Context!12038))

(assert (=> setNonEmpty!46818 (= res!2786694 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) setElem!46818 true) setRest!46818))))

(declare-fun b!6822846 () Bool)

(declare-fun tp!1867557 () Bool)

(assert (=> b!6822846 (= e!4116190 tp!1867557)))

(assert (= (and d!2145523 condSetEmpty!46818) setIsEmpty!46818))

(assert (= (and d!2145523 (not condSetEmpty!46818)) setNonEmpty!46818))

(assert (= setNonEmpty!46818 b!6822846))

(declare-fun m!7568572 () Bool)

(assert (=> setNonEmpty!46818 m!7568572))

(assert (=> d!2144997 d!2145523))

(declare-fun d!2145525 () Bool)

(assert (=> d!2145525 true))

(declare-fun setRes!46821 () Bool)

(assert (=> d!2145525 setRes!46821))

(declare-fun condSetEmpty!46821 () Bool)

(declare-fun res!2786697 () (InoxSet Context!12038))

(assert (=> d!2145525 (= condSetEmpty!46821 (= res!2786697 ((as const (Array Context!12038 Bool)) false)))))

(assert (=> d!2145525 (= (choose!50858 lt!2451330 lambda!385151) res!2786697)))

(declare-fun setIsEmpty!46821 () Bool)

(assert (=> setIsEmpty!46821 setRes!46821))

(declare-fun tp!1867563 () Bool)

(declare-fun setNonEmpty!46821 () Bool)

(declare-fun setElem!46821 () Context!12038)

(declare-fun e!4116193 () Bool)

(assert (=> setNonEmpty!46821 (= setRes!46821 (and tp!1867563 (inv!84834 setElem!46821) e!4116193))))

(declare-fun setRest!46821 () (InoxSet Context!12038))

(assert (=> setNonEmpty!46821 (= res!2786697 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) setElem!46821 true) setRest!46821))))

(declare-fun b!6822849 () Bool)

(declare-fun tp!1867562 () Bool)

(assert (=> b!6822849 (= e!4116193 tp!1867562)))

(assert (= (and d!2145525 condSetEmpty!46821) setIsEmpty!46821))

(assert (= (and d!2145525 (not condSetEmpty!46821)) setNonEmpty!46821))

(assert (= setNonEmpty!46821 b!6822849))

(declare-fun m!7568574 () Bool)

(assert (=> setNonEmpty!46821 m!7568574))

(assert (=> d!2144819 d!2145525))

(assert (=> d!2144947 d!2144983))

(declare-fun b!6822850 () Bool)

(declare-fun res!2786698 () Bool)

(declare-fun e!4116198 () Bool)

(assert (=> b!6822850 (=> (not res!2786698) (not e!4116198))))

(declare-fun call!620969 () Bool)

(assert (=> b!6822850 (= res!2786698 call!620969)))

(declare-fun e!4116196 () Bool)

(assert (=> b!6822850 (= e!4116196 e!4116198)))

(declare-fun b!6822851 () Bool)

(declare-fun call!620968 () Bool)

(assert (=> b!6822851 (= e!4116198 call!620968)))

(declare-fun bm!620962 () Bool)

(declare-fun call!620967 () Bool)

(assert (=> bm!620962 (= call!620968 call!620967)))

(declare-fun d!2145527 () Bool)

(declare-fun res!2786701 () Bool)

(declare-fun e!4116194 () Bool)

(assert (=> d!2145527 (=> res!2786701 e!4116194)))

(assert (=> d!2145527 (= res!2786701 ((_ is ElementMatch!16635) lt!2451383))))

(assert (=> d!2145527 (= (validRegex!8371 lt!2451383) e!4116194)))

(declare-fun bm!620963 () Bool)

(declare-fun c!1269846 () Bool)

(assert (=> bm!620963 (= call!620969 (validRegex!8371 (ite c!1269846 (regOne!33783 lt!2451383) (regOne!33782 lt!2451383))))))

(declare-fun b!6822852 () Bool)

(declare-fun res!2786702 () Bool)

(declare-fun e!4116199 () Bool)

(assert (=> b!6822852 (=> res!2786702 e!4116199)))

(assert (=> b!6822852 (= res!2786702 (not ((_ is Concat!25480) lt!2451383)))))

(assert (=> b!6822852 (= e!4116196 e!4116199)))

(declare-fun b!6822853 () Bool)

(declare-fun e!4116195 () Bool)

(assert (=> b!6822853 (= e!4116195 e!4116196)))

(assert (=> b!6822853 (= c!1269846 ((_ is Union!16635) lt!2451383))))

(declare-fun b!6822854 () Bool)

(assert (=> b!6822854 (= e!4116194 e!4116195)))

(declare-fun c!1269847 () Bool)

(assert (=> b!6822854 (= c!1269847 ((_ is Star!16635) lt!2451383))))

(declare-fun b!6822855 () Bool)

(declare-fun e!4116200 () Bool)

(assert (=> b!6822855 (= e!4116200 call!620968)))

(declare-fun b!6822856 () Bool)

(declare-fun e!4116197 () Bool)

(assert (=> b!6822856 (= e!4116195 e!4116197)))

(declare-fun res!2786699 () Bool)

(assert (=> b!6822856 (= res!2786699 (not (nullable!6612 (reg!16964 lt!2451383))))))

(assert (=> b!6822856 (=> (not res!2786699) (not e!4116197))))

(declare-fun b!6822857 () Bool)

(assert (=> b!6822857 (= e!4116199 e!4116200)))

(declare-fun res!2786700 () Bool)

(assert (=> b!6822857 (=> (not res!2786700) (not e!4116200))))

(assert (=> b!6822857 (= res!2786700 call!620969)))

(declare-fun b!6822858 () Bool)

(assert (=> b!6822858 (= e!4116197 call!620967)))

(declare-fun bm!620964 () Bool)

(assert (=> bm!620964 (= call!620967 (validRegex!8371 (ite c!1269847 (reg!16964 lt!2451383) (ite c!1269846 (regTwo!33783 lt!2451383) (regTwo!33782 lt!2451383)))))))

(assert (= (and d!2145527 (not res!2786701)) b!6822854))

(assert (= (and b!6822854 c!1269847) b!6822856))

(assert (= (and b!6822854 (not c!1269847)) b!6822853))

(assert (= (and b!6822856 res!2786699) b!6822858))

(assert (= (and b!6822853 c!1269846) b!6822850))

(assert (= (and b!6822853 (not c!1269846)) b!6822852))

(assert (= (and b!6822850 res!2786698) b!6822851))

(assert (= (and b!6822852 (not res!2786702)) b!6822857))

(assert (= (and b!6822857 res!2786700) b!6822855))

(assert (= (or b!6822851 b!6822855) bm!620962))

(assert (= (or b!6822850 b!6822857) bm!620963))

(assert (= (or b!6822858 bm!620962) bm!620964))

(declare-fun m!7568576 () Bool)

(assert (=> bm!620963 m!7568576))

(declare-fun m!7568578 () Bool)

(assert (=> b!6822856 m!7568578))

(declare-fun m!7568580 () Bool)

(assert (=> bm!620964 m!7568580))

(assert (=> d!2144799 d!2145527))

(declare-fun bs!1822995 () Bool)

(declare-fun d!2145529 () Bool)

(assert (= bs!1822995 (and d!2145529 d!2145417)))

(declare-fun lambda!385321 () Int)

(assert (=> bs!1822995 (= lambda!385321 lambda!385307)))

(declare-fun bs!1822996 () Bool)

(assert (= bs!1822996 (and d!2145529 d!2145495)))

(assert (=> bs!1822996 (= lambda!385321 lambda!385320)))

(declare-fun bs!1822997 () Bool)

(assert (= bs!1822997 (and d!2145529 d!2144955)))

(assert (=> bs!1822997 (= lambda!385321 lambda!385226)))

(declare-fun bs!1822998 () Bool)

(assert (= bs!1822998 (and d!2145529 d!2144971)))

(assert (=> bs!1822998 (= lambda!385321 lambda!385233)))

(declare-fun bs!1822999 () Bool)

(assert (= bs!1822999 (and d!2145529 d!2144757)))

(assert (=> bs!1822999 (= lambda!385321 lambda!385162)))

(declare-fun bs!1823000 () Bool)

(assert (= bs!1823000 (and d!2145529 d!2144867)))

(assert (=> bs!1823000 (= lambda!385321 lambda!385209)))

(declare-fun bs!1823001 () Bool)

(assert (= bs!1823001 (and d!2145529 b!6820964)))

(assert (=> bs!1823001 (= lambda!385321 lambda!385153)))

(declare-fun bs!1823002 () Bool)

(assert (= bs!1823002 (and d!2145529 d!2145463)))

(assert (=> bs!1823002 (= lambda!385321 lambda!385317)))

(declare-fun bs!1823003 () Bool)

(assert (= bs!1823003 (and d!2145529 d!2144969)))

(assert (=> bs!1823003 (= lambda!385321 lambda!385230)))

(declare-fun bs!1823004 () Bool)

(assert (= bs!1823004 (and d!2145529 d!2144881)))

(assert (=> bs!1823004 (= lambda!385321 lambda!385217)))

(declare-fun bs!1823005 () Bool)

(assert (= bs!1823005 (and d!2145529 d!2144963)))

(assert (=> bs!1823005 (= lambda!385321 lambda!385227)))

(declare-fun b!6822859 () Bool)

(declare-fun e!4116205 () Bool)

(declare-fun lt!2451586 () Regex!16635)

(assert (=> b!6822859 (= e!4116205 (= lt!2451586 (head!13678 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081)))))))

(declare-fun e!4116203 () Bool)

(assert (=> d!2145529 e!4116203))

(declare-fun res!2786703 () Bool)

(assert (=> d!2145529 (=> (not res!2786703) (not e!4116203))))

(assert (=> d!2145529 (= res!2786703 (validRegex!8371 lt!2451586))))

(declare-fun e!4116204 () Regex!16635)

(assert (=> d!2145529 (= lt!2451586 e!4116204)))

(declare-fun c!1269848 () Bool)

(declare-fun e!4116201 () Bool)

(assert (=> d!2145529 (= c!1269848 e!4116201)))

(declare-fun res!2786704 () Bool)

(assert (=> d!2145529 (=> (not res!2786704) (not e!4116201))))

(assert (=> d!2145529 (= res!2786704 ((_ is Cons!66080) (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081))))))

(assert (=> d!2145529 (forall!15825 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081)) lambda!385321)))

(assert (=> d!2145529 (= (generalisedUnion!2479 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081))) lt!2451586)))

(declare-fun b!6822860 () Bool)

(assert (=> b!6822860 (= e!4116201 (isEmpty!38473 (t!379941 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081)))))))

(declare-fun b!6822861 () Bool)

(declare-fun e!4116206 () Regex!16635)

(assert (=> b!6822861 (= e!4116206 (Union!16635 (h!72528 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081))) (generalisedUnion!2479 (t!379941 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081))))))))

(declare-fun b!6822862 () Bool)

(assert (=> b!6822862 (= e!4116205 (isUnion!1429 lt!2451586))))

(declare-fun b!6822863 () Bool)

(declare-fun e!4116202 () Bool)

(assert (=> b!6822863 (= e!4116202 e!4116205)))

(declare-fun c!1269850 () Bool)

(assert (=> b!6822863 (= c!1269850 (isEmpty!38473 (tail!12763 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081)))))))

(declare-fun b!6822864 () Bool)

(assert (=> b!6822864 (= e!4116204 (h!72528 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081))))))

(declare-fun b!6822865 () Bool)

(assert (=> b!6822865 (= e!4116204 e!4116206)))

(declare-fun c!1269851 () Bool)

(assert (=> b!6822865 (= c!1269851 ((_ is Cons!66080) (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081))))))

(declare-fun b!6822866 () Bool)

(assert (=> b!6822866 (= e!4116202 (isEmptyLang!1999 lt!2451586))))

(declare-fun b!6822867 () Bool)

(assert (=> b!6822867 (= e!4116203 e!4116202)))

(declare-fun c!1269849 () Bool)

(assert (=> b!6822867 (= c!1269849 (isEmpty!38473 (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081))))))

(declare-fun b!6822868 () Bool)

(assert (=> b!6822868 (= e!4116206 EmptyLang!16635)))

(assert (= (and d!2145529 res!2786704) b!6822860))

(assert (= (and d!2145529 c!1269848) b!6822864))

(assert (= (and d!2145529 (not c!1269848)) b!6822865))

(assert (= (and b!6822865 c!1269851) b!6822861))

(assert (= (and b!6822865 (not c!1269851)) b!6822868))

(assert (= (and d!2145529 res!2786703) b!6822867))

(assert (= (and b!6822867 c!1269849) b!6822866))

(assert (= (and b!6822867 (not c!1269849)) b!6822863))

(assert (= (and b!6822863 c!1269850) b!6822859))

(assert (= (and b!6822863 (not c!1269850)) b!6822862))

(assert (=> b!6822863 m!7566848))

(declare-fun m!7568582 () Bool)

(assert (=> b!6822863 m!7568582))

(assert (=> b!6822863 m!7568582))

(declare-fun m!7568584 () Bool)

(assert (=> b!6822863 m!7568584))

(assert (=> b!6822867 m!7566848))

(declare-fun m!7568586 () Bool)

(assert (=> b!6822867 m!7568586))

(assert (=> b!6822859 m!7566848))

(declare-fun m!7568588 () Bool)

(assert (=> b!6822859 m!7568588))

(declare-fun m!7568590 () Bool)

(assert (=> b!6822866 m!7568590))

(declare-fun m!7568592 () Bool)

(assert (=> b!6822862 m!7568592))

(declare-fun m!7568594 () Bool)

(assert (=> d!2145529 m!7568594))

(assert (=> d!2145529 m!7566848))

(declare-fun m!7568596 () Bool)

(assert (=> d!2145529 m!7568596))

(declare-fun m!7568598 () Bool)

(assert (=> b!6822861 m!7568598))

(declare-fun m!7568600 () Bool)

(assert (=> b!6822860 m!7568600))

(assert (=> d!2144799 d!2145529))

(declare-fun bs!1823006 () Bool)

(declare-fun d!2145531 () Bool)

(assert (= bs!1823006 (and d!2145531 d!2145529)))

(declare-fun lambda!385322 () Int)

(assert (=> bs!1823006 (= lambda!385322 lambda!385321)))

(declare-fun bs!1823007 () Bool)

(assert (= bs!1823007 (and d!2145531 d!2145417)))

(assert (=> bs!1823007 (= lambda!385322 lambda!385307)))

(declare-fun bs!1823008 () Bool)

(assert (= bs!1823008 (and d!2145531 d!2145495)))

(assert (=> bs!1823008 (= lambda!385322 lambda!385320)))

(declare-fun bs!1823009 () Bool)

(assert (= bs!1823009 (and d!2145531 d!2144955)))

(assert (=> bs!1823009 (= lambda!385322 lambda!385226)))

(declare-fun bs!1823010 () Bool)

(assert (= bs!1823010 (and d!2145531 d!2144971)))

(assert (=> bs!1823010 (= lambda!385322 lambda!385233)))

(declare-fun bs!1823011 () Bool)

(assert (= bs!1823011 (and d!2145531 d!2144757)))

(assert (=> bs!1823011 (= lambda!385322 lambda!385162)))

(declare-fun bs!1823012 () Bool)

(assert (= bs!1823012 (and d!2145531 d!2144867)))

(assert (=> bs!1823012 (= lambda!385322 lambda!385209)))

(declare-fun bs!1823013 () Bool)

(assert (= bs!1823013 (and d!2145531 b!6820964)))

(assert (=> bs!1823013 (= lambda!385322 lambda!385153)))

(declare-fun bs!1823014 () Bool)

(assert (= bs!1823014 (and d!2145531 d!2145463)))

(assert (=> bs!1823014 (= lambda!385322 lambda!385317)))

(declare-fun bs!1823015 () Bool)

(assert (= bs!1823015 (and d!2145531 d!2144969)))

(assert (=> bs!1823015 (= lambda!385322 lambda!385230)))

(declare-fun bs!1823016 () Bool)

(assert (= bs!1823016 (and d!2145531 d!2144881)))

(assert (=> bs!1823016 (= lambda!385322 lambda!385217)))

(declare-fun bs!1823017 () Bool)

(assert (= bs!1823017 (and d!2145531 d!2144963)))

(assert (=> bs!1823017 (= lambda!385322 lambda!385227)))

(declare-fun lt!2451587 () List!66204)

(assert (=> d!2145531 (forall!15825 lt!2451587 lambda!385322)))

(declare-fun e!4116207 () List!66204)

(assert (=> d!2145531 (= lt!2451587 e!4116207)))

(declare-fun c!1269852 () Bool)

(assert (=> d!2145531 (= c!1269852 ((_ is Cons!66081) (Cons!66081 lt!2451338 Nil!66081)))))

(assert (=> d!2145531 (= (unfocusZipperList!2056 (Cons!66081 lt!2451338 Nil!66081)) lt!2451587)))

(declare-fun b!6822869 () Bool)

(assert (=> b!6822869 (= e!4116207 (Cons!66080 (generalisedConcat!2232 (exprs!6519 (h!72529 (Cons!66081 lt!2451338 Nil!66081)))) (unfocusZipperList!2056 (t!379942 (Cons!66081 lt!2451338 Nil!66081)))))))

(declare-fun b!6822870 () Bool)

(assert (=> b!6822870 (= e!4116207 Nil!66080)))

(assert (= (and d!2145531 c!1269852) b!6822869))

(assert (= (and d!2145531 (not c!1269852)) b!6822870))

(declare-fun m!7568602 () Bool)

(assert (=> d!2145531 m!7568602))

(declare-fun m!7568604 () Bool)

(assert (=> b!6822869 m!7568604))

(declare-fun m!7568606 () Bool)

(assert (=> b!6822869 m!7568606))

(assert (=> d!2144799 d!2145531))

(declare-fun b!6822871 () Bool)

(declare-fun res!2786705 () Bool)

(declare-fun e!4116212 () Bool)

(assert (=> b!6822871 (=> (not res!2786705) (not e!4116212))))

(declare-fun call!620972 () Bool)

(assert (=> b!6822871 (= res!2786705 call!620972)))

(declare-fun e!4116210 () Bool)

(assert (=> b!6822871 (= e!4116210 e!4116212)))

(declare-fun b!6822872 () Bool)

(declare-fun call!620971 () Bool)

(assert (=> b!6822872 (= e!4116212 call!620971)))

(declare-fun bm!620965 () Bool)

(declare-fun call!620970 () Bool)

(assert (=> bm!620965 (= call!620971 call!620970)))

(declare-fun d!2145533 () Bool)

(declare-fun res!2786708 () Bool)

(declare-fun e!4116208 () Bool)

(assert (=> d!2145533 (=> res!2786708 e!4116208)))

(assert (=> d!2145533 (= res!2786708 ((_ is ElementMatch!16635) lt!2451488))))

(assert (=> d!2145533 (= (validRegex!8371 lt!2451488) e!4116208)))

(declare-fun bm!620966 () Bool)

(declare-fun c!1269853 () Bool)

(assert (=> bm!620966 (= call!620972 (validRegex!8371 (ite c!1269853 (regOne!33783 lt!2451488) (regOne!33782 lt!2451488))))))

(declare-fun b!6822873 () Bool)

(declare-fun res!2786709 () Bool)

(declare-fun e!4116213 () Bool)

(assert (=> b!6822873 (=> res!2786709 e!4116213)))

(assert (=> b!6822873 (= res!2786709 (not ((_ is Concat!25480) lt!2451488)))))

(assert (=> b!6822873 (= e!4116210 e!4116213)))

(declare-fun b!6822874 () Bool)

(declare-fun e!4116209 () Bool)

(assert (=> b!6822874 (= e!4116209 e!4116210)))

(assert (=> b!6822874 (= c!1269853 ((_ is Union!16635) lt!2451488))))

(declare-fun b!6822875 () Bool)

(assert (=> b!6822875 (= e!4116208 e!4116209)))

(declare-fun c!1269854 () Bool)

(assert (=> b!6822875 (= c!1269854 ((_ is Star!16635) lt!2451488))))

(declare-fun b!6822876 () Bool)

(declare-fun e!4116214 () Bool)

(assert (=> b!6822876 (= e!4116214 call!620971)))

(declare-fun b!6822877 () Bool)

(declare-fun e!4116211 () Bool)

(assert (=> b!6822877 (= e!4116209 e!4116211)))

(declare-fun res!2786706 () Bool)

(assert (=> b!6822877 (= res!2786706 (not (nullable!6612 (reg!16964 lt!2451488))))))

(assert (=> b!6822877 (=> (not res!2786706) (not e!4116211))))

(declare-fun b!6822878 () Bool)

(assert (=> b!6822878 (= e!4116213 e!4116214)))

(declare-fun res!2786707 () Bool)

(assert (=> b!6822878 (=> (not res!2786707) (not e!4116214))))

(assert (=> b!6822878 (= res!2786707 call!620972)))

(declare-fun b!6822879 () Bool)

(assert (=> b!6822879 (= e!4116211 call!620970)))

(declare-fun bm!620967 () Bool)

(assert (=> bm!620967 (= call!620970 (validRegex!8371 (ite c!1269854 (reg!16964 lt!2451488) (ite c!1269853 (regTwo!33783 lt!2451488) (regTwo!33782 lt!2451488)))))))

(assert (= (and d!2145533 (not res!2786708)) b!6822875))

(assert (= (and b!6822875 c!1269854) b!6822877))

(assert (= (and b!6822875 (not c!1269854)) b!6822874))

(assert (= (and b!6822877 res!2786706) b!6822879))

(assert (= (and b!6822874 c!1269853) b!6822871))

(assert (= (and b!6822874 (not c!1269853)) b!6822873))

(assert (= (and b!6822871 res!2786705) b!6822872))

(assert (= (and b!6822873 (not res!2786709)) b!6822878))

(assert (= (and b!6822878 res!2786707) b!6822876))

(assert (= (or b!6822872 b!6822876) bm!620965))

(assert (= (or b!6822871 b!6822878) bm!620966))

(assert (= (or b!6822879 bm!620965) bm!620967))

(declare-fun m!7568608 () Bool)

(assert (=> bm!620966 m!7568608))

(declare-fun m!7568610 () Bool)

(assert (=> b!6822877 m!7568610))

(declare-fun m!7568612 () Bool)

(assert (=> bm!620967 m!7568612))

(assert (=> d!2144975 d!2145533))

(declare-fun bs!1823018 () Bool)

(declare-fun d!2145535 () Bool)

(assert (= bs!1823018 (and d!2145535 d!2145529)))

(declare-fun lambda!385323 () Int)

(assert (=> bs!1823018 (= lambda!385323 lambda!385321)))

(declare-fun bs!1823019 () Bool)

(assert (= bs!1823019 (and d!2145535 d!2145417)))

(assert (=> bs!1823019 (= lambda!385323 lambda!385307)))

(declare-fun bs!1823020 () Bool)

(assert (= bs!1823020 (and d!2145535 d!2145495)))

(assert (=> bs!1823020 (= lambda!385323 lambda!385320)))

(declare-fun bs!1823021 () Bool)

(assert (= bs!1823021 (and d!2145535 d!2144955)))

(assert (=> bs!1823021 (= lambda!385323 lambda!385226)))

(declare-fun bs!1823022 () Bool)

(assert (= bs!1823022 (and d!2145535 d!2144971)))

(assert (=> bs!1823022 (= lambda!385323 lambda!385233)))

(declare-fun bs!1823023 () Bool)

(assert (= bs!1823023 (and d!2145535 d!2145531)))

(assert (=> bs!1823023 (= lambda!385323 lambda!385322)))

(declare-fun bs!1823024 () Bool)

(assert (= bs!1823024 (and d!2145535 d!2144757)))

(assert (=> bs!1823024 (= lambda!385323 lambda!385162)))

(declare-fun bs!1823025 () Bool)

(assert (= bs!1823025 (and d!2145535 d!2144867)))

(assert (=> bs!1823025 (= lambda!385323 lambda!385209)))

(declare-fun bs!1823026 () Bool)

(assert (= bs!1823026 (and d!2145535 b!6820964)))

(assert (=> bs!1823026 (= lambda!385323 lambda!385153)))

(declare-fun bs!1823027 () Bool)

(assert (= bs!1823027 (and d!2145535 d!2145463)))

(assert (=> bs!1823027 (= lambda!385323 lambda!385317)))

(declare-fun bs!1823028 () Bool)

(assert (= bs!1823028 (and d!2145535 d!2144969)))

(assert (=> bs!1823028 (= lambda!385323 lambda!385230)))

(declare-fun bs!1823029 () Bool)

(assert (= bs!1823029 (and d!2145535 d!2144881)))

(assert (=> bs!1823029 (= lambda!385323 lambda!385217)))

(declare-fun bs!1823030 () Bool)

(assert (= bs!1823030 (and d!2145535 d!2144963)))

(assert (=> bs!1823030 (= lambda!385323 lambda!385227)))

(declare-fun b!6822880 () Bool)

(declare-fun e!4116219 () Bool)

(declare-fun lt!2451588 () Regex!16635)

(assert (=> b!6822880 (= e!4116219 (= lt!2451588 (head!13678 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081)))))))

(declare-fun e!4116217 () Bool)

(assert (=> d!2145535 e!4116217))

(declare-fun res!2786710 () Bool)

(assert (=> d!2145535 (=> (not res!2786710) (not e!4116217))))

(assert (=> d!2145535 (= res!2786710 (validRegex!8371 lt!2451588))))

(declare-fun e!4116218 () Regex!16635)

(assert (=> d!2145535 (= lt!2451588 e!4116218)))

(declare-fun c!1269855 () Bool)

(declare-fun e!4116215 () Bool)

(assert (=> d!2145535 (= c!1269855 e!4116215)))

(declare-fun res!2786711 () Bool)

(assert (=> d!2145535 (=> (not res!2786711) (not e!4116215))))

(assert (=> d!2145535 (= res!2786711 ((_ is Cons!66080) (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081))))))

(assert (=> d!2145535 (forall!15825 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081)) lambda!385323)))

(assert (=> d!2145535 (= (generalisedUnion!2479 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081))) lt!2451588)))

(declare-fun b!6822881 () Bool)

(assert (=> b!6822881 (= e!4116215 (isEmpty!38473 (t!379941 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081)))))))

(declare-fun b!6822882 () Bool)

(declare-fun e!4116220 () Regex!16635)

(assert (=> b!6822882 (= e!4116220 (Union!16635 (h!72528 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081))) (generalisedUnion!2479 (t!379941 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081))))))))

(declare-fun b!6822883 () Bool)

(assert (=> b!6822883 (= e!4116219 (isUnion!1429 lt!2451588))))

(declare-fun b!6822884 () Bool)

(declare-fun e!4116216 () Bool)

(assert (=> b!6822884 (= e!4116216 e!4116219)))

(declare-fun c!1269857 () Bool)

(assert (=> b!6822884 (= c!1269857 (isEmpty!38473 (tail!12763 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081)))))))

(declare-fun b!6822885 () Bool)

(assert (=> b!6822885 (= e!4116218 (h!72528 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081))))))

(declare-fun b!6822886 () Bool)

(assert (=> b!6822886 (= e!4116218 e!4116220)))

(declare-fun c!1269858 () Bool)

(assert (=> b!6822886 (= c!1269858 ((_ is Cons!66080) (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081))))))

(declare-fun b!6822887 () Bool)

(assert (=> b!6822887 (= e!4116216 (isEmptyLang!1999 lt!2451588))))

(declare-fun b!6822888 () Bool)

(assert (=> b!6822888 (= e!4116217 e!4116216)))

(declare-fun c!1269856 () Bool)

(assert (=> b!6822888 (= c!1269856 (isEmpty!38473 (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081))))))

(declare-fun b!6822889 () Bool)

(assert (=> b!6822889 (= e!4116220 EmptyLang!16635)))

(assert (= (and d!2145535 res!2786711) b!6822881))

(assert (= (and d!2145535 c!1269855) b!6822885))

(assert (= (and d!2145535 (not c!1269855)) b!6822886))

(assert (= (and b!6822886 c!1269858) b!6822882))

(assert (= (and b!6822886 (not c!1269858)) b!6822889))

(assert (= (and d!2145535 res!2786710) b!6822888))

(assert (= (and b!6822888 c!1269856) b!6822887))

(assert (= (and b!6822888 (not c!1269856)) b!6822884))

(assert (= (and b!6822884 c!1269857) b!6822880))

(assert (= (and b!6822884 (not c!1269857)) b!6822883))

(assert (=> b!6822884 m!7567360))

(declare-fun m!7568614 () Bool)

(assert (=> b!6822884 m!7568614))

(assert (=> b!6822884 m!7568614))

(declare-fun m!7568616 () Bool)

(assert (=> b!6822884 m!7568616))

(assert (=> b!6822888 m!7567360))

(declare-fun m!7568618 () Bool)

(assert (=> b!6822888 m!7568618))

(assert (=> b!6822880 m!7567360))

(declare-fun m!7568620 () Bool)

(assert (=> b!6822880 m!7568620))

(declare-fun m!7568622 () Bool)

(assert (=> b!6822887 m!7568622))

(declare-fun m!7568624 () Bool)

(assert (=> b!6822883 m!7568624))

(declare-fun m!7568626 () Bool)

(assert (=> d!2145535 m!7568626))

(assert (=> d!2145535 m!7567360))

(declare-fun m!7568628 () Bool)

(assert (=> d!2145535 m!7568628))

(declare-fun m!7568630 () Bool)

(assert (=> b!6822882 m!7568630))

(declare-fun m!7568632 () Bool)

(assert (=> b!6822881 m!7568632))

(assert (=> d!2144975 d!2145535))

(declare-fun bs!1823031 () Bool)

(declare-fun d!2145537 () Bool)

(assert (= bs!1823031 (and d!2145537 d!2145529)))

(declare-fun lambda!385324 () Int)

(assert (=> bs!1823031 (= lambda!385324 lambda!385321)))

(declare-fun bs!1823032 () Bool)

(assert (= bs!1823032 (and d!2145537 d!2145535)))

(assert (=> bs!1823032 (= lambda!385324 lambda!385323)))

(declare-fun bs!1823033 () Bool)

(assert (= bs!1823033 (and d!2145537 d!2145417)))

(assert (=> bs!1823033 (= lambda!385324 lambda!385307)))

(declare-fun bs!1823034 () Bool)

(assert (= bs!1823034 (and d!2145537 d!2145495)))

(assert (=> bs!1823034 (= lambda!385324 lambda!385320)))

(declare-fun bs!1823035 () Bool)

(assert (= bs!1823035 (and d!2145537 d!2144955)))

(assert (=> bs!1823035 (= lambda!385324 lambda!385226)))

(declare-fun bs!1823036 () Bool)

(assert (= bs!1823036 (and d!2145537 d!2144971)))

(assert (=> bs!1823036 (= lambda!385324 lambda!385233)))

(declare-fun bs!1823037 () Bool)

(assert (= bs!1823037 (and d!2145537 d!2145531)))

(assert (=> bs!1823037 (= lambda!385324 lambda!385322)))

(declare-fun bs!1823038 () Bool)

(assert (= bs!1823038 (and d!2145537 d!2144757)))

(assert (=> bs!1823038 (= lambda!385324 lambda!385162)))

(declare-fun bs!1823039 () Bool)

(assert (= bs!1823039 (and d!2145537 d!2144867)))

(assert (=> bs!1823039 (= lambda!385324 lambda!385209)))

(declare-fun bs!1823040 () Bool)

(assert (= bs!1823040 (and d!2145537 b!6820964)))

(assert (=> bs!1823040 (= lambda!385324 lambda!385153)))

(declare-fun bs!1823041 () Bool)

(assert (= bs!1823041 (and d!2145537 d!2145463)))

(assert (=> bs!1823041 (= lambda!385324 lambda!385317)))

(declare-fun bs!1823042 () Bool)

(assert (= bs!1823042 (and d!2145537 d!2144969)))

(assert (=> bs!1823042 (= lambda!385324 lambda!385230)))

(declare-fun bs!1823043 () Bool)

(assert (= bs!1823043 (and d!2145537 d!2144881)))

(assert (=> bs!1823043 (= lambda!385324 lambda!385217)))

(declare-fun bs!1823044 () Bool)

(assert (= bs!1823044 (and d!2145537 d!2144963)))

(assert (=> bs!1823044 (= lambda!385324 lambda!385227)))

(declare-fun lt!2451589 () List!66204)

(assert (=> d!2145537 (forall!15825 lt!2451589 lambda!385324)))

(declare-fun e!4116221 () List!66204)

(assert (=> d!2145537 (= lt!2451589 e!4116221)))

(declare-fun c!1269859 () Bool)

(assert (=> d!2145537 (= c!1269859 ((_ is Cons!66081) (Cons!66081 lt!2451314 Nil!66081)))))

(assert (=> d!2145537 (= (unfocusZipperList!2056 (Cons!66081 lt!2451314 Nil!66081)) lt!2451589)))

(declare-fun b!6822890 () Bool)

(assert (=> b!6822890 (= e!4116221 (Cons!66080 (generalisedConcat!2232 (exprs!6519 (h!72529 (Cons!66081 lt!2451314 Nil!66081)))) (unfocusZipperList!2056 (t!379942 (Cons!66081 lt!2451314 Nil!66081)))))))

(declare-fun b!6822891 () Bool)

(assert (=> b!6822891 (= e!4116221 Nil!66080)))

(assert (= (and d!2145537 c!1269859) b!6822890))

(assert (= (and d!2145537 (not c!1269859)) b!6822891))

(declare-fun m!7568634 () Bool)

(assert (=> d!2145537 m!7568634))

(declare-fun m!7568636 () Bool)

(assert (=> b!6822890 m!7568636))

(declare-fun m!7568638 () Bool)

(assert (=> b!6822890 m!7568638))

(assert (=> d!2144975 d!2145537))

(declare-fun d!2145539 () Bool)

(declare-fun c!1269860 () Bool)

(assert (=> d!2145539 (= c!1269860 (isEmpty!38470 (tail!12762 s!2326)))))

(declare-fun e!4116222 () Bool)

(assert (=> d!2145539 (= (matchZipper!2621 (derivationStepZipper!2579 z!1189 (head!13677 s!2326)) (tail!12762 s!2326)) e!4116222)))

(declare-fun b!6822892 () Bool)

(assert (=> b!6822892 (= e!4116222 (nullableZipper!2340 (derivationStepZipper!2579 z!1189 (head!13677 s!2326))))))

(declare-fun b!6822893 () Bool)

(assert (=> b!6822893 (= e!4116222 (matchZipper!2621 (derivationStepZipper!2579 (derivationStepZipper!2579 z!1189 (head!13677 s!2326)) (head!13677 (tail!12762 s!2326))) (tail!12762 (tail!12762 s!2326))))))

(assert (= (and d!2145539 c!1269860) b!6822892))

(assert (= (and d!2145539 (not c!1269860)) b!6822893))

(assert (=> d!2145539 m!7566984))

(assert (=> d!2145539 m!7566986))

(assert (=> b!6822892 m!7567254))

(declare-fun m!7568640 () Bool)

(assert (=> b!6822892 m!7568640))

(assert (=> b!6822893 m!7566984))

(assert (=> b!6822893 m!7568400))

(assert (=> b!6822893 m!7567254))

(assert (=> b!6822893 m!7568400))

(declare-fun m!7568642 () Bool)

(assert (=> b!6822893 m!7568642))

(assert (=> b!6822893 m!7566984))

(assert (=> b!6822893 m!7568404))

(assert (=> b!6822893 m!7568642))

(assert (=> b!6822893 m!7568404))

(declare-fun m!7568644 () Bool)

(assert (=> b!6822893 m!7568644))

(assert (=> b!6821738 d!2145539))

(declare-fun bs!1823045 () Bool)

(declare-fun d!2145541 () Bool)

(assert (= bs!1823045 (and d!2145541 d!2144913)))

(declare-fun lambda!385325 () Int)

(assert (=> bs!1823045 (= (= (head!13677 s!2326) (h!72530 s!2326)) (= lambda!385325 lambda!385220))))

(declare-fun bs!1823046 () Bool)

(assert (= bs!1823046 (and d!2145541 d!2145453)))

(assert (=> bs!1823046 (= lambda!385325 lambda!385314)))

(declare-fun bs!1823047 () Bool)

(assert (= bs!1823047 (and d!2145541 b!6820978)))

(assert (=> bs!1823047 (= (= (head!13677 s!2326) (h!72530 s!2326)) (= lambda!385325 lambda!385151))))

(declare-fun bs!1823048 () Bool)

(assert (= bs!1823048 (and d!2145541 d!2144805)))

(assert (=> bs!1823048 (= (= (head!13677 s!2326) (h!72530 s!2326)) (= lambda!385325 lambda!385184))))

(declare-fun bs!1823049 () Bool)

(assert (= bs!1823049 (and d!2145541 d!2144793)))

(assert (=> bs!1823049 (= (= (head!13677 s!2326) (h!72530 s!2326)) (= lambda!385325 lambda!385183))))

(declare-fun bs!1823050 () Bool)

(assert (= bs!1823050 (and d!2145541 d!2145443)))

(assert (=> bs!1823050 (= (= (head!13677 s!2326) (head!13677 (_2!36913 lt!2451337))) (= lambda!385325 lambda!385310))))

(assert (=> d!2145541 true))

(assert (=> d!2145541 (= (derivationStepZipper!2579 z!1189 (head!13677 s!2326)) (flatMap!2116 z!1189 lambda!385325))))

(declare-fun bs!1823051 () Bool)

(assert (= bs!1823051 d!2145541))

(declare-fun m!7568646 () Bool)

(assert (=> bs!1823051 m!7568646))

(assert (=> b!6821738 d!2145541))

(assert (=> b!6821738 d!2145455))

(assert (=> b!6821738 d!2145427))

(declare-fun d!2145543 () Bool)

(declare-fun res!2786712 () Bool)

(declare-fun e!4116223 () Bool)

(assert (=> d!2145543 (=> res!2786712 e!4116223)))

(assert (=> d!2145543 (= res!2786712 ((_ is Nil!66080) (exprs!6519 lt!2451314)))))

(assert (=> d!2145543 (= (forall!15825 (exprs!6519 lt!2451314) lambda!385227) e!4116223)))

(declare-fun b!6822894 () Bool)

(declare-fun e!4116224 () Bool)

(assert (=> b!6822894 (= e!4116223 e!4116224)))

(declare-fun res!2786713 () Bool)

(assert (=> b!6822894 (=> (not res!2786713) (not e!4116224))))

(assert (=> b!6822894 (= res!2786713 (dynLambda!26406 lambda!385227 (h!72528 (exprs!6519 lt!2451314))))))

(declare-fun b!6822895 () Bool)

(assert (=> b!6822895 (= e!4116224 (forall!15825 (t!379941 (exprs!6519 lt!2451314)) lambda!385227))))

(assert (= (and d!2145543 (not res!2786712)) b!6822894))

(assert (= (and b!6822894 res!2786713) b!6822895))

(declare-fun b_lambda!257351 () Bool)

(assert (=> (not b_lambda!257351) (not b!6822894)))

(declare-fun m!7568648 () Bool)

(assert (=> b!6822894 m!7568648))

(declare-fun m!7568650 () Bool)

(assert (=> b!6822895 m!7568650))

(assert (=> d!2144963 d!2145543))

(declare-fun d!2145545 () Bool)

(assert (=> d!2145545 (= (Exists!3703 lambda!385248) (choose!50869 lambda!385248))))

(declare-fun bs!1823052 () Bool)

(assert (= bs!1823052 d!2145545))

(declare-fun m!7568652 () Bool)

(assert (=> bs!1823052 m!7568652))

(assert (=> d!2144993 d!2145545))

(assert (=> d!2144993 d!2144977))

(declare-fun bs!1823053 () Bool)

(declare-fun d!2145547 () Bool)

(assert (= bs!1823053 (and d!2145547 b!6820967)))

(declare-fun lambda!385328 () Int)

(assert (=> bs!1823053 (= lambda!385328 lambda!385148)))

(declare-fun bs!1823054 () Bool)

(assert (= bs!1823054 (and d!2145547 d!2144987)))

(assert (=> bs!1823054 (not (= lambda!385328 lambda!385245))))

(declare-fun bs!1823055 () Bool)

(assert (= bs!1823055 (and d!2145547 b!6821741)))

(assert (=> bs!1823055 (not (= lambda!385328 lambda!385223))))

(declare-fun bs!1823056 () Bool)

(assert (= bs!1823056 (and d!2145547 b!6821442)))

(assert (=> bs!1823056 (not (= lambda!385328 lambda!385202))))

(declare-fun bs!1823057 () Bool)

(assert (= bs!1823057 (and d!2145547 d!2144979)))

(assert (=> bs!1823057 (= (= r!7292 (Star!16635 (reg!16964 r!7292))) (= lambda!385328 lambda!385238))))

(declare-fun bs!1823058 () Bool)

(assert (= bs!1823058 (and d!2145547 b!6822751)))

(assert (=> bs!1823058 (not (= lambda!385328 lambda!385315))))

(assert (=> bs!1823053 (not (= lambda!385328 lambda!385149))))

(declare-fun bs!1823059 () Bool)

(assert (= bs!1823059 (and d!2145547 b!6822721)))

(assert (=> bs!1823059 (not (= lambda!385328 lambda!385308))))

(declare-fun bs!1823060 () Bool)

(assert (= bs!1823060 (and d!2145547 b!6822752)))

(assert (=> bs!1823060 (not (= lambda!385328 lambda!385316))))

(assert (=> bs!1823054 (= lambda!385328 lambda!385244)))

(declare-fun bs!1823061 () Bool)

(assert (= bs!1823061 (and d!2145547 b!6821441)))

(assert (=> bs!1823061 (not (= lambda!385328 lambda!385201))))

(declare-fun bs!1823062 () Bool)

(assert (= bs!1823062 (and d!2145547 b!6821740)))

(assert (=> bs!1823062 (not (= lambda!385328 lambda!385222))))

(assert (=> bs!1823053 (not (= lambda!385328 lambda!385150))))

(declare-fun bs!1823063 () Bool)

(assert (= bs!1823063 (and d!2145547 b!6822722)))

(assert (=> bs!1823063 (not (= lambda!385328 lambda!385309))))

(assert (=> bs!1823057 (not (= lambda!385328 lambda!385239))))

(declare-fun bs!1823064 () Bool)

(assert (= bs!1823064 (and d!2145547 d!2144993)))

(assert (=> bs!1823064 (= lambda!385328 lambda!385248)))

(assert (=> d!2145547 true))

(assert (=> d!2145547 true))

(assert (=> d!2145547 true))

(assert (=> d!2145547 (= (isDefined!13225 (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 Nil!66082 s!2326 s!2326)) (Exists!3703 lambda!385328))))

(assert (=> d!2145547 true))

(declare-fun _$89!3100 () Unit!159961)

(assert (=> d!2145547 (= (choose!50871 (reg!16964 r!7292) r!7292 s!2326) _$89!3100)))

(declare-fun bs!1823065 () Bool)

(assert (= bs!1823065 d!2145547))

(assert (=> bs!1823065 m!7566558))

(assert (=> bs!1823065 m!7566558))

(assert (=> bs!1823065 m!7566562))

(declare-fun m!7568654 () Bool)

(assert (=> bs!1823065 m!7568654))

(assert (=> d!2144993 d!2145547))

(assert (=> d!2144993 d!2144991))

(declare-fun b!6822900 () Bool)

(declare-fun res!2786718 () Bool)

(declare-fun e!4116231 () Bool)

(assert (=> b!6822900 (=> (not res!2786718) (not e!4116231))))

(declare-fun call!620975 () Bool)

(assert (=> b!6822900 (= res!2786718 call!620975)))

(declare-fun e!4116229 () Bool)

(assert (=> b!6822900 (= e!4116229 e!4116231)))

(declare-fun b!6822901 () Bool)

(declare-fun call!620974 () Bool)

(assert (=> b!6822901 (= e!4116231 call!620974)))

(declare-fun bm!620968 () Bool)

(declare-fun call!620973 () Bool)

(assert (=> bm!620968 (= call!620974 call!620973)))

(declare-fun d!2145549 () Bool)

(declare-fun res!2786721 () Bool)

(declare-fun e!4116227 () Bool)

(assert (=> d!2145549 (=> res!2786721 e!4116227)))

(assert (=> d!2145549 (= res!2786721 ((_ is ElementMatch!16635) (reg!16964 r!7292)))))

(assert (=> d!2145549 (= (validRegex!8371 (reg!16964 r!7292)) e!4116227)))

(declare-fun bm!620969 () Bool)

(declare-fun c!1269861 () Bool)

(assert (=> bm!620969 (= call!620975 (validRegex!8371 (ite c!1269861 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))))))

(declare-fun b!6822902 () Bool)

(declare-fun res!2786722 () Bool)

(declare-fun e!4116232 () Bool)

(assert (=> b!6822902 (=> res!2786722 e!4116232)))

(assert (=> b!6822902 (= res!2786722 (not ((_ is Concat!25480) (reg!16964 r!7292))))))

(assert (=> b!6822902 (= e!4116229 e!4116232)))

(declare-fun b!6822903 () Bool)

(declare-fun e!4116228 () Bool)

(assert (=> b!6822903 (= e!4116228 e!4116229)))

(assert (=> b!6822903 (= c!1269861 ((_ is Union!16635) (reg!16964 r!7292)))))

(declare-fun b!6822904 () Bool)

(assert (=> b!6822904 (= e!4116227 e!4116228)))

(declare-fun c!1269862 () Bool)

(assert (=> b!6822904 (= c!1269862 ((_ is Star!16635) (reg!16964 r!7292)))))

(declare-fun b!6822905 () Bool)

(declare-fun e!4116233 () Bool)

(assert (=> b!6822905 (= e!4116233 call!620974)))

(declare-fun b!6822906 () Bool)

(declare-fun e!4116230 () Bool)

(assert (=> b!6822906 (= e!4116228 e!4116230)))

(declare-fun res!2786719 () Bool)

(assert (=> b!6822906 (= res!2786719 (not (nullable!6612 (reg!16964 (reg!16964 r!7292)))))))

(assert (=> b!6822906 (=> (not res!2786719) (not e!4116230))))

(declare-fun b!6822907 () Bool)

(assert (=> b!6822907 (= e!4116232 e!4116233)))

(declare-fun res!2786720 () Bool)

(assert (=> b!6822907 (=> (not res!2786720) (not e!4116233))))

(assert (=> b!6822907 (= res!2786720 call!620975)))

(declare-fun b!6822908 () Bool)

(assert (=> b!6822908 (= e!4116230 call!620973)))

(declare-fun bm!620970 () Bool)

(assert (=> bm!620970 (= call!620973 (validRegex!8371 (ite c!1269862 (reg!16964 (reg!16964 r!7292)) (ite c!1269861 (regTwo!33783 (reg!16964 r!7292)) (regTwo!33782 (reg!16964 r!7292))))))))

(assert (= (and d!2145549 (not res!2786721)) b!6822904))

(assert (= (and b!6822904 c!1269862) b!6822906))

(assert (= (and b!6822904 (not c!1269862)) b!6822903))

(assert (= (and b!6822906 res!2786719) b!6822908))

(assert (= (and b!6822903 c!1269861) b!6822900))

(assert (= (and b!6822903 (not c!1269861)) b!6822902))

(assert (= (and b!6822900 res!2786718) b!6822901))

(assert (= (and b!6822902 (not res!2786722)) b!6822907))

(assert (= (and b!6822907 res!2786720) b!6822905))

(assert (= (or b!6822901 b!6822905) bm!620968))

(assert (= (or b!6822900 b!6822907) bm!620969))

(assert (= (or b!6822908 bm!620968) bm!620970))

(declare-fun m!7568656 () Bool)

(assert (=> bm!620969 m!7568656))

(declare-fun m!7568658 () Bool)

(assert (=> b!6822906 m!7568658))

(declare-fun m!7568660 () Bool)

(assert (=> bm!620970 m!7568660))

(assert (=> d!2144993 d!2145549))

(declare-fun d!2145551 () Bool)

(assert (=> d!2145551 (= (isEmpty!38473 (exprs!6519 (h!72529 zl!343))) ((_ is Nil!66080) (exprs!6519 (h!72529 zl!343))))))

(assert (=> b!6821614 d!2145551))

(declare-fun d!2145553 () Bool)

(assert (=> d!2145553 (= (isDefined!13225 (findConcatSeparationZippers!244 lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true) Nil!66082 s!2326 s!2326)) (not (isEmpty!38474 (findConcatSeparationZippers!244 lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true) Nil!66082 s!2326 s!2326))))))

(declare-fun bs!1823066 () Bool)

(assert (= bs!1823066 d!2145553))

(assert (=> bs!1823066 m!7567246))

(declare-fun m!7568662 () Bool)

(assert (=> bs!1823066 m!7568662))

(assert (=> d!2144943 d!2145553))

(declare-fun d!2145555 () Bool)

(assert (=> d!2145555 (isDefined!13225 (findConcatSeparationZippers!244 lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true) Nil!66082 s!2326 s!2326))))

(assert (=> d!2145555 true))

(declare-fun _$50!530 () Unit!159961)

(assert (=> d!2145555 (= (choose!50863 lt!2451330 lt!2451314 s!2326) _$50!530)))

(declare-fun bs!1823067 () Bool)

(assert (= bs!1823067 d!2145555))

(assert (=> bs!1823067 m!7566584))

(assert (=> bs!1823067 m!7566584))

(assert (=> bs!1823067 m!7567246))

(assert (=> bs!1823067 m!7567246))

(assert (=> bs!1823067 m!7567248))

(assert (=> d!2144943 d!2145555))

(assert (=> d!2144943 d!2144999))

(declare-fun d!2145557 () Bool)

(declare-fun c!1269863 () Bool)

(assert (=> d!2145557 (= c!1269863 (isEmpty!38470 s!2326))))

(declare-fun e!4116234 () Bool)

(assert (=> d!2145557 (= (matchZipper!2621 (appendTo!240 lt!2451330 lt!2451314) s!2326) e!4116234)))

(declare-fun b!6822909 () Bool)

(assert (=> b!6822909 (= e!4116234 (nullableZipper!2340 (appendTo!240 lt!2451330 lt!2451314)))))

(declare-fun b!6822910 () Bool)

(assert (=> b!6822910 (= e!4116234 (matchZipper!2621 (derivationStepZipper!2579 (appendTo!240 lt!2451330 lt!2451314) (head!13677 s!2326)) (tail!12762 s!2326)))))

(assert (= (and d!2145557 c!1269863) b!6822909))

(assert (= (and d!2145557 (not c!1269863)) b!6822910))

(assert (=> d!2145557 m!7566568))

(assert (=> b!6822909 m!7566478))

(declare-fun m!7568664 () Bool)

(assert (=> b!6822909 m!7568664))

(assert (=> b!6822910 m!7566988))

(assert (=> b!6822910 m!7566478))

(assert (=> b!6822910 m!7566988))

(declare-fun m!7568666 () Bool)

(assert (=> b!6822910 m!7568666))

(assert (=> b!6822910 m!7566984))

(assert (=> b!6822910 m!7568666))

(assert (=> b!6822910 m!7566984))

(declare-fun m!7568668 () Bool)

(assert (=> b!6822910 m!7568668))

(assert (=> d!2144943 d!2145557))

(declare-fun b!6822911 () Bool)

(declare-fun e!4116237 () Bool)

(assert (=> b!6822911 (= e!4116237 (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true) s!2326))))

(declare-fun b!6822912 () Bool)

(declare-fun e!4116235 () Option!16522)

(assert (=> b!6822912 (= e!4116235 (Some!16521 (tuple2!67221 Nil!66082 s!2326)))))

(declare-fun d!2145559 () Bool)

(declare-fun e!4116239 () Bool)

(assert (=> d!2145559 e!4116239))

(declare-fun res!2786726 () Bool)

(assert (=> d!2145559 (=> res!2786726 e!4116239)))

(declare-fun e!4116238 () Bool)

(assert (=> d!2145559 (= res!2786726 e!4116238)))

(declare-fun res!2786724 () Bool)

(assert (=> d!2145559 (=> (not res!2786724) (not e!4116238))))

(declare-fun lt!2451591 () Option!16522)

(assert (=> d!2145559 (= res!2786724 (isDefined!13225 lt!2451591))))

(assert (=> d!2145559 (= lt!2451591 e!4116235)))

(declare-fun c!1269865 () Bool)

(assert (=> d!2145559 (= c!1269865 e!4116237)))

(declare-fun res!2786727 () Bool)

(assert (=> d!2145559 (=> (not res!2786727) (not e!4116237))))

(assert (=> d!2145559 (= res!2786727 (matchZipper!2621 lt!2451330 Nil!66082))))

(assert (=> d!2145559 (= (++!14817 Nil!66082 s!2326) s!2326)))

(assert (=> d!2145559 (= (findConcatSeparationZippers!244 lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true) Nil!66082 s!2326 s!2326) lt!2451591)))

(declare-fun b!6822913 () Bool)

(assert (=> b!6822913 (= e!4116239 (not (isDefined!13225 lt!2451591)))))

(declare-fun b!6822914 () Bool)

(declare-fun e!4116236 () Option!16522)

(assert (=> b!6822914 (= e!4116235 e!4116236)))

(declare-fun c!1269864 () Bool)

(assert (=> b!6822914 (= c!1269864 ((_ is Nil!66082) s!2326))))

(declare-fun b!6822915 () Bool)

(declare-fun res!2786725 () Bool)

(assert (=> b!6822915 (=> (not res!2786725) (not e!4116238))))

(assert (=> b!6822915 (= res!2786725 (matchZipper!2621 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true) (_2!36913 (get!23022 lt!2451591))))))

(declare-fun b!6822916 () Bool)

(assert (=> b!6822916 (= e!4116238 (= (++!14817 (_1!36913 (get!23022 lt!2451591)) (_2!36913 (get!23022 lt!2451591))) s!2326))))

(declare-fun b!6822917 () Bool)

(assert (=> b!6822917 (= e!4116236 None!16521)))

(declare-fun b!6822918 () Bool)

(declare-fun lt!2451590 () Unit!159961)

(declare-fun lt!2451592 () Unit!159961)

(assert (=> b!6822918 (= lt!2451590 lt!2451592)))

(assert (=> b!6822918 (= (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326)) s!2326)))

(assert (=> b!6822918 (= lt!2451592 (lemmaMoveElementToOtherListKeepsConcatEq!2754 Nil!66082 (h!72530 s!2326) (t!379943 s!2326) s!2326))))

(assert (=> b!6822918 (= e!4116236 (findConcatSeparationZippers!244 lt!2451330 (store ((as const (Array Context!12038 Bool)) false) lt!2451314 true) (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326) s!2326))))

(declare-fun b!6822919 () Bool)

(declare-fun res!2786723 () Bool)

(assert (=> b!6822919 (=> (not res!2786723) (not e!4116238))))

(assert (=> b!6822919 (= res!2786723 (matchZipper!2621 lt!2451330 (_1!36913 (get!23022 lt!2451591))))))

(assert (= (and d!2145559 res!2786727) b!6822911))

(assert (= (and d!2145559 c!1269865) b!6822912))

(assert (= (and d!2145559 (not c!1269865)) b!6822914))

(assert (= (and b!6822914 c!1269864) b!6822917))

(assert (= (and b!6822914 (not c!1269864)) b!6822918))

(assert (= (and d!2145559 res!2786724) b!6822919))

(assert (= (and b!6822919 res!2786723) b!6822915))

(assert (= (and b!6822915 res!2786725) b!6822916))

(assert (= (and d!2145559 (not res!2786726)) b!6822913))

(declare-fun m!7568670 () Bool)

(assert (=> b!6822915 m!7568670))

(assert (=> b!6822915 m!7566584))

(declare-fun m!7568672 () Bool)

(assert (=> b!6822915 m!7568672))

(declare-fun m!7568674 () Bool)

(assert (=> b!6822913 m!7568674))

(assert (=> d!2145559 m!7568674))

(assert (=> d!2145559 m!7567226))

(assert (=> d!2145559 m!7567228))

(assert (=> b!6822911 m!7566584))

(declare-fun m!7568676 () Bool)

(assert (=> b!6822911 m!7568676))

(assert (=> b!6822919 m!7568670))

(declare-fun m!7568678 () Bool)

(assert (=> b!6822919 m!7568678))

(assert (=> b!6822916 m!7568670))

(declare-fun m!7568680 () Bool)

(assert (=> b!6822916 m!7568680))

(assert (=> b!6822918 m!7567236))

(assert (=> b!6822918 m!7567236))

(assert (=> b!6822918 m!7567238))

(assert (=> b!6822918 m!7567240))

(assert (=> b!6822918 m!7566584))

(assert (=> b!6822918 m!7567236))

(declare-fun m!7568682 () Bool)

(assert (=> b!6822918 m!7568682))

(assert (=> d!2144943 d!2145559))

(declare-fun d!2145561 () Bool)

(assert (=> d!2145561 (= (isEmpty!38470 (t!379943 s!2326)) ((_ is Nil!66082) (t!379943 s!2326)))))

(assert (=> d!2144911 d!2145561))

(declare-fun bs!1823068 () Bool)

(declare-fun d!2145563 () Bool)

(assert (= bs!1823068 (and d!2145563 d!2145529)))

(declare-fun lambda!385329 () Int)

(assert (=> bs!1823068 (= lambda!385329 lambda!385321)))

(declare-fun bs!1823069 () Bool)

(assert (= bs!1823069 (and d!2145563 d!2145535)))

(assert (=> bs!1823069 (= lambda!385329 lambda!385323)))

(declare-fun bs!1823070 () Bool)

(assert (= bs!1823070 (and d!2145563 d!2145417)))

(assert (=> bs!1823070 (= lambda!385329 lambda!385307)))

(declare-fun bs!1823071 () Bool)

(assert (= bs!1823071 (and d!2145563 d!2145495)))

(assert (=> bs!1823071 (= lambda!385329 lambda!385320)))

(declare-fun bs!1823072 () Bool)

(assert (= bs!1823072 (and d!2145563 d!2144955)))

(assert (=> bs!1823072 (= lambda!385329 lambda!385226)))

(declare-fun bs!1823073 () Bool)

(assert (= bs!1823073 (and d!2145563 d!2144971)))

(assert (=> bs!1823073 (= lambda!385329 lambda!385233)))

(declare-fun bs!1823074 () Bool)

(assert (= bs!1823074 (and d!2145563 d!2145531)))

(assert (=> bs!1823074 (= lambda!385329 lambda!385322)))

(declare-fun bs!1823075 () Bool)

(assert (= bs!1823075 (and d!2145563 d!2144757)))

(assert (=> bs!1823075 (= lambda!385329 lambda!385162)))

(declare-fun bs!1823076 () Bool)

(assert (= bs!1823076 (and d!2145563 d!2145537)))

(assert (=> bs!1823076 (= lambda!385329 lambda!385324)))

(declare-fun bs!1823077 () Bool)

(assert (= bs!1823077 (and d!2145563 d!2144867)))

(assert (=> bs!1823077 (= lambda!385329 lambda!385209)))

(declare-fun bs!1823078 () Bool)

(assert (= bs!1823078 (and d!2145563 b!6820964)))

(assert (=> bs!1823078 (= lambda!385329 lambda!385153)))

(declare-fun bs!1823079 () Bool)

(assert (= bs!1823079 (and d!2145563 d!2145463)))

(assert (=> bs!1823079 (= lambda!385329 lambda!385317)))

(declare-fun bs!1823080 () Bool)

(assert (= bs!1823080 (and d!2145563 d!2144969)))

(assert (=> bs!1823080 (= lambda!385329 lambda!385230)))

(declare-fun bs!1823081 () Bool)

(assert (= bs!1823081 (and d!2145563 d!2144881)))

(assert (=> bs!1823081 (= lambda!385329 lambda!385217)))

(declare-fun bs!1823082 () Bool)

(assert (= bs!1823082 (and d!2145563 d!2144963)))

(assert (=> bs!1823082 (= lambda!385329 lambda!385227)))

(declare-fun e!4116243 () Bool)

(assert (=> d!2145563 e!4116243))

(declare-fun res!2786729 () Bool)

(assert (=> d!2145563 (=> (not res!2786729) (not e!4116243))))

(declare-fun lt!2451593 () Regex!16635)

(assert (=> d!2145563 (= res!2786729 (validRegex!8371 lt!2451593))))

(declare-fun e!4116242 () Regex!16635)

(assert (=> d!2145563 (= lt!2451593 e!4116242)))

(declare-fun c!1269869 () Bool)

(declare-fun e!4116244 () Bool)

(assert (=> d!2145563 (= c!1269869 e!4116244)))

(declare-fun res!2786728 () Bool)

(assert (=> d!2145563 (=> (not res!2786728) (not e!4116244))))

(assert (=> d!2145563 (= res!2786728 ((_ is Cons!66080) (t!379941 (exprs!6519 (h!72529 zl!343)))))))

(assert (=> d!2145563 (forall!15825 (t!379941 (exprs!6519 (h!72529 zl!343))) lambda!385329)))

(assert (=> d!2145563 (= (generalisedConcat!2232 (t!379941 (exprs!6519 (h!72529 zl!343)))) lt!2451593)))

(declare-fun b!6822920 () Bool)

(declare-fun e!4116240 () Bool)

(assert (=> b!6822920 (= e!4116240 (isEmptyExpr!1991 lt!2451593))))

(declare-fun b!6822921 () Bool)

(declare-fun e!4116241 () Regex!16635)

(assert (=> b!6822921 (= e!4116241 (Concat!25480 (h!72528 (t!379941 (exprs!6519 (h!72529 zl!343)))) (generalisedConcat!2232 (t!379941 (t!379941 (exprs!6519 (h!72529 zl!343)))))))))

(declare-fun b!6822922 () Bool)

(assert (=> b!6822922 (= e!4116241 EmptyExpr!16635)))

(declare-fun b!6822923 () Bool)

(declare-fun e!4116245 () Bool)

(assert (=> b!6822923 (= e!4116245 (isConcat!1514 lt!2451593))))

(declare-fun b!6822924 () Bool)

(assert (=> b!6822924 (= e!4116242 e!4116241)))

(declare-fun c!1269868 () Bool)

(assert (=> b!6822924 (= c!1269868 ((_ is Cons!66080) (t!379941 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun b!6822925 () Bool)

(assert (=> b!6822925 (= e!4116242 (h!72528 (t!379941 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun b!6822926 () Bool)

(assert (=> b!6822926 (= e!4116240 e!4116245)))

(declare-fun c!1269867 () Bool)

(assert (=> b!6822926 (= c!1269867 (isEmpty!38473 (tail!12763 (t!379941 (exprs!6519 (h!72529 zl!343))))))))

(declare-fun b!6822927 () Bool)

(assert (=> b!6822927 (= e!4116245 (= lt!2451593 (head!13678 (t!379941 (exprs!6519 (h!72529 zl!343))))))))

(declare-fun b!6822928 () Bool)

(assert (=> b!6822928 (= e!4116244 (isEmpty!38473 (t!379941 (t!379941 (exprs!6519 (h!72529 zl!343))))))))

(declare-fun b!6822929 () Bool)

(assert (=> b!6822929 (= e!4116243 e!4116240)))

(declare-fun c!1269866 () Bool)

(assert (=> b!6822929 (= c!1269866 (isEmpty!38473 (t!379941 (exprs!6519 (h!72529 zl!343)))))))

(assert (= (and d!2145563 res!2786728) b!6822928))

(assert (= (and d!2145563 c!1269869) b!6822925))

(assert (= (and d!2145563 (not c!1269869)) b!6822924))

(assert (= (and b!6822924 c!1269868) b!6822921))

(assert (= (and b!6822924 (not c!1269868)) b!6822922))

(assert (= (and d!2145563 res!2786729) b!6822929))

(assert (= (and b!6822929 c!1269866) b!6822920))

(assert (= (and b!6822929 (not c!1269866)) b!6822926))

(assert (= (and b!6822926 c!1269867) b!6822927))

(assert (= (and b!6822926 (not c!1269867)) b!6822923))

(declare-fun m!7568684 () Bool)

(assert (=> b!6822920 m!7568684))

(declare-fun m!7568686 () Bool)

(assert (=> b!6822926 m!7568686))

(assert (=> b!6822926 m!7568686))

(declare-fun m!7568688 () Bool)

(assert (=> b!6822926 m!7568688))

(declare-fun m!7568690 () Bool)

(assert (=> b!6822923 m!7568690))

(declare-fun m!7568692 () Bool)

(assert (=> b!6822928 m!7568692))

(declare-fun m!7568694 () Bool)

(assert (=> b!6822921 m!7568694))

(assert (=> b!6822929 m!7567108))

(declare-fun m!7568696 () Bool)

(assert (=> b!6822927 m!7568696))

(declare-fun m!7568698 () Bool)

(assert (=> d!2145563 m!7568698))

(declare-fun m!7568700 () Bool)

(assert (=> d!2145563 m!7568700))

(assert (=> b!6821606 d!2145563))

(declare-fun d!2145565 () Bool)

(declare-fun c!1269870 () Bool)

(assert (=> d!2145565 (= c!1269870 (isEmpty!38470 (tail!12762 (_1!36913 lt!2451337))))))

(declare-fun e!4116246 () Bool)

(assert (=> d!2145565 (= (matchZipper!2621 (derivationStepZipper!2579 lt!2451330 (head!13677 (_1!36913 lt!2451337))) (tail!12762 (_1!36913 lt!2451337))) e!4116246)))

(declare-fun b!6822930 () Bool)

(assert (=> b!6822930 (= e!4116246 (nullableZipper!2340 (derivationStepZipper!2579 lt!2451330 (head!13677 (_1!36913 lt!2451337)))))))

(declare-fun b!6822931 () Bool)

(assert (=> b!6822931 (= e!4116246 (matchZipper!2621 (derivationStepZipper!2579 (derivationStepZipper!2579 lt!2451330 (head!13677 (_1!36913 lt!2451337))) (head!13677 (tail!12762 (_1!36913 lt!2451337)))) (tail!12762 (tail!12762 (_1!36913 lt!2451337)))))))

(assert (= (and d!2145565 c!1269870) b!6822930))

(assert (= (and d!2145565 (not c!1269870)) b!6822931))

(assert (=> d!2145565 m!7567030))

(assert (=> d!2145565 m!7567300))

(assert (=> b!6822930 m!7567028))

(declare-fun m!7568702 () Bool)

(assert (=> b!6822930 m!7568702))

(assert (=> b!6822931 m!7567030))

(declare-fun m!7568704 () Bool)

(assert (=> b!6822931 m!7568704))

(assert (=> b!6822931 m!7567028))

(assert (=> b!6822931 m!7568704))

(declare-fun m!7568706 () Bool)

(assert (=> b!6822931 m!7568706))

(assert (=> b!6822931 m!7567030))

(declare-fun m!7568708 () Bool)

(assert (=> b!6822931 m!7568708))

(assert (=> b!6822931 m!7568706))

(assert (=> b!6822931 m!7568708))

(declare-fun m!7568710 () Bool)

(assert (=> b!6822931 m!7568710))

(assert (=> b!6821572 d!2145565))

(declare-fun bs!1823083 () Bool)

(declare-fun d!2145567 () Bool)

(assert (= bs!1823083 (and d!2145567 d!2144913)))

(declare-fun lambda!385330 () Int)

(assert (=> bs!1823083 (= (= (head!13677 (_1!36913 lt!2451337)) (h!72530 s!2326)) (= lambda!385330 lambda!385220))))

(declare-fun bs!1823084 () Bool)

(assert (= bs!1823084 (and d!2145567 d!2145541)))

(assert (=> bs!1823084 (= (= (head!13677 (_1!36913 lt!2451337)) (head!13677 s!2326)) (= lambda!385330 lambda!385325))))

(declare-fun bs!1823085 () Bool)

(assert (= bs!1823085 (and d!2145567 d!2145453)))

(assert (=> bs!1823085 (= (= (head!13677 (_1!36913 lt!2451337)) (head!13677 s!2326)) (= lambda!385330 lambda!385314))))

(declare-fun bs!1823086 () Bool)

(assert (= bs!1823086 (and d!2145567 b!6820978)))

(assert (=> bs!1823086 (= (= (head!13677 (_1!36913 lt!2451337)) (h!72530 s!2326)) (= lambda!385330 lambda!385151))))

(declare-fun bs!1823087 () Bool)

(assert (= bs!1823087 (and d!2145567 d!2144805)))

(assert (=> bs!1823087 (= (= (head!13677 (_1!36913 lt!2451337)) (h!72530 s!2326)) (= lambda!385330 lambda!385184))))

(declare-fun bs!1823088 () Bool)

(assert (= bs!1823088 (and d!2145567 d!2144793)))

(assert (=> bs!1823088 (= (= (head!13677 (_1!36913 lt!2451337)) (h!72530 s!2326)) (= lambda!385330 lambda!385183))))

(declare-fun bs!1823089 () Bool)

(assert (= bs!1823089 (and d!2145567 d!2145443)))

(assert (=> bs!1823089 (= (= (head!13677 (_1!36913 lt!2451337)) (head!13677 (_2!36913 lt!2451337))) (= lambda!385330 lambda!385310))))

(assert (=> d!2145567 true))

(assert (=> d!2145567 (= (derivationStepZipper!2579 lt!2451330 (head!13677 (_1!36913 lt!2451337))) (flatMap!2116 lt!2451330 lambda!385330))))

(declare-fun bs!1823090 () Bool)

(assert (= bs!1823090 d!2145567))

(declare-fun m!7568712 () Bool)

(assert (=> bs!1823090 m!7568712))

(assert (=> b!6821572 d!2145567))

(assert (=> b!6821572 d!2145457))

(declare-fun d!2145569 () Bool)

(assert (=> d!2145569 (= (tail!12762 (_1!36913 lt!2451337)) (t!379943 (_1!36913 lt!2451337)))))

(assert (=> b!6821572 d!2145569))

(declare-fun d!2145571 () Bool)

(assert (=> d!2145571 (= (nullable!6612 r!7292) (nullableFct!2510 r!7292))))

(declare-fun bs!1823091 () Bool)

(assert (= bs!1823091 d!2145571))

(declare-fun m!7568714 () Bool)

(assert (=> bs!1823091 m!7568714))

(assert (=> b!6821751 d!2145571))

(declare-fun d!2145573 () Bool)

(assert (=> d!2145573 (= ($colon$colon!2442 (exprs!6519 lt!2451314) (ite (or c!1269533 c!1269535) (regTwo!33782 (reg!16964 r!7292)) (reg!16964 r!7292))) (Cons!66080 (ite (or c!1269533 c!1269535) (regTwo!33782 (reg!16964 r!7292)) (reg!16964 r!7292)) (exprs!6519 lt!2451314)))))

(assert (=> bm!620794 d!2145573))

(declare-fun b!6822932 () Bool)

(declare-fun e!4116252 () Bool)

(assert (=> b!6822932 (= e!4116252 (not (= (head!13677 (tail!12762 s!2326)) (c!1269331 (derivativeStep!5297 r!7292 (head!13677 s!2326))))))))

(declare-fun b!6822933 () Bool)

(declare-fun e!4116248 () Bool)

(assert (=> b!6822933 (= e!4116248 (nullable!6612 (derivativeStep!5297 r!7292 (head!13677 s!2326))))))

(declare-fun b!6822934 () Bool)

(declare-fun res!2786734 () Bool)

(declare-fun e!4116251 () Bool)

(assert (=> b!6822934 (=> res!2786734 e!4116251)))

(declare-fun e!4116247 () Bool)

(assert (=> b!6822934 (= res!2786734 e!4116247)))

(declare-fun res!2786732 () Bool)

(assert (=> b!6822934 (=> (not res!2786732) (not e!4116247))))

(declare-fun lt!2451594 () Bool)

(assert (=> b!6822934 (= res!2786732 lt!2451594)))

(declare-fun b!6822935 () Bool)

(declare-fun e!4116253 () Bool)

(declare-fun call!620976 () Bool)

(assert (=> b!6822935 (= e!4116253 (= lt!2451594 call!620976))))

(declare-fun b!6822936 () Bool)

(declare-fun e!4116249 () Bool)

(assert (=> b!6822936 (= e!4116249 e!4116252)))

(declare-fun res!2786736 () Bool)

(assert (=> b!6822936 (=> res!2786736 e!4116252)))

(assert (=> b!6822936 (= res!2786736 call!620976)))

(declare-fun b!6822937 () Bool)

(assert (=> b!6822937 (= e!4116248 (matchR!8818 (derivativeStep!5297 (derivativeStep!5297 r!7292 (head!13677 s!2326)) (head!13677 (tail!12762 s!2326))) (tail!12762 (tail!12762 s!2326))))))

(declare-fun b!6822938 () Bool)

(assert (=> b!6822938 (= e!4116251 e!4116249)))

(declare-fun res!2786731 () Bool)

(assert (=> b!6822938 (=> (not res!2786731) (not e!4116249))))

(assert (=> b!6822938 (= res!2786731 (not lt!2451594))))

(declare-fun b!6822939 () Bool)

(declare-fun e!4116250 () Bool)

(assert (=> b!6822939 (= e!4116253 e!4116250)))

(declare-fun c!1269872 () Bool)

(assert (=> b!6822939 (= c!1269872 ((_ is EmptyLang!16635) (derivativeStep!5297 r!7292 (head!13677 s!2326))))))

(declare-fun d!2145575 () Bool)

(assert (=> d!2145575 e!4116253))

(declare-fun c!1269871 () Bool)

(assert (=> d!2145575 (= c!1269871 ((_ is EmptyExpr!16635) (derivativeStep!5297 r!7292 (head!13677 s!2326))))))

(assert (=> d!2145575 (= lt!2451594 e!4116248)))

(declare-fun c!1269873 () Bool)

(assert (=> d!2145575 (= c!1269873 (isEmpty!38470 (tail!12762 s!2326)))))

(assert (=> d!2145575 (validRegex!8371 (derivativeStep!5297 r!7292 (head!13677 s!2326)))))

(assert (=> d!2145575 (= (matchR!8818 (derivativeStep!5297 r!7292 (head!13677 s!2326)) (tail!12762 s!2326)) lt!2451594)))

(declare-fun b!6822940 () Bool)

(declare-fun res!2786730 () Bool)

(assert (=> b!6822940 (=> (not res!2786730) (not e!4116247))))

(assert (=> b!6822940 (= res!2786730 (isEmpty!38470 (tail!12762 (tail!12762 s!2326))))))

(declare-fun b!6822941 () Bool)

(declare-fun res!2786733 () Bool)

(assert (=> b!6822941 (=> (not res!2786733) (not e!4116247))))

(assert (=> b!6822941 (= res!2786733 (not call!620976))))

(declare-fun bm!620971 () Bool)

(assert (=> bm!620971 (= call!620976 (isEmpty!38470 (tail!12762 s!2326)))))

(declare-fun b!6822942 () Bool)

(assert (=> b!6822942 (= e!4116247 (= (head!13677 (tail!12762 s!2326)) (c!1269331 (derivativeStep!5297 r!7292 (head!13677 s!2326)))))))

(declare-fun b!6822943 () Bool)

(assert (=> b!6822943 (= e!4116250 (not lt!2451594))))

(declare-fun b!6822944 () Bool)

(declare-fun res!2786737 () Bool)

(assert (=> b!6822944 (=> res!2786737 e!4116251)))

(assert (=> b!6822944 (= res!2786737 (not ((_ is ElementMatch!16635) (derivativeStep!5297 r!7292 (head!13677 s!2326)))))))

(assert (=> b!6822944 (= e!4116250 e!4116251)))

(declare-fun b!6822945 () Bool)

(declare-fun res!2786735 () Bool)

(assert (=> b!6822945 (=> res!2786735 e!4116252)))

(assert (=> b!6822945 (= res!2786735 (not (isEmpty!38470 (tail!12762 (tail!12762 s!2326)))))))

(assert (= (and d!2145575 c!1269873) b!6822933))

(assert (= (and d!2145575 (not c!1269873)) b!6822937))

(assert (= (and d!2145575 c!1269871) b!6822935))

(assert (= (and d!2145575 (not c!1269871)) b!6822939))

(assert (= (and b!6822939 c!1269872) b!6822943))

(assert (= (and b!6822939 (not c!1269872)) b!6822944))

(assert (= (and b!6822944 (not res!2786737)) b!6822934))

(assert (= (and b!6822934 res!2786732) b!6822941))

(assert (= (and b!6822941 res!2786733) b!6822940))

(assert (= (and b!6822940 res!2786730) b!6822942))

(assert (= (and b!6822934 (not res!2786734)) b!6822938))

(assert (= (and b!6822938 res!2786731) b!6822936))

(assert (= (and b!6822936 (not res!2786736)) b!6822945))

(assert (= (and b!6822945 (not res!2786735)) b!6822932))

(assert (= (or b!6822935 b!6822941 b!6822936) bm!620971))

(assert (=> d!2145575 m!7566984))

(assert (=> d!2145575 m!7566986))

(assert (=> d!2145575 m!7567264))

(declare-fun m!7568716 () Bool)

(assert (=> d!2145575 m!7568716))

(assert (=> b!6822945 m!7566984))

(assert (=> b!6822945 m!7568404))

(assert (=> b!6822945 m!7568404))

(declare-fun m!7568718 () Bool)

(assert (=> b!6822945 m!7568718))

(assert (=> b!6822932 m!7566984))

(assert (=> b!6822932 m!7568400))

(assert (=> b!6822937 m!7566984))

(assert (=> b!6822937 m!7568400))

(assert (=> b!6822937 m!7567264))

(assert (=> b!6822937 m!7568400))

(declare-fun m!7568720 () Bool)

(assert (=> b!6822937 m!7568720))

(assert (=> b!6822937 m!7566984))

(assert (=> b!6822937 m!7568404))

(assert (=> b!6822937 m!7568720))

(assert (=> b!6822937 m!7568404))

(declare-fun m!7568722 () Bool)

(assert (=> b!6822937 m!7568722))

(assert (=> b!6822933 m!7567264))

(declare-fun m!7568724 () Bool)

(assert (=> b!6822933 m!7568724))

(assert (=> b!6822942 m!7566984))

(assert (=> b!6822942 m!7568400))

(assert (=> b!6822940 m!7566984))

(assert (=> b!6822940 m!7568404))

(assert (=> b!6822940 m!7568404))

(assert (=> b!6822940 m!7568718))

(assert (=> bm!620971 m!7566984))

(assert (=> bm!620971 m!7566986))

(assert (=> b!6821755 d!2145575))

(declare-fun b!6822966 () Bool)

(declare-fun c!1269885 () Bool)

(assert (=> b!6822966 (= c!1269885 ((_ is Union!16635) r!7292))))

(declare-fun e!4116266 () Regex!16635)

(declare-fun e!4116268 () Regex!16635)

(assert (=> b!6822966 (= e!4116266 e!4116268)))

(declare-fun b!6822967 () Bool)

(declare-fun e!4116267 () Regex!16635)

(assert (=> b!6822967 (= e!4116268 e!4116267)))

(declare-fun c!1269884 () Bool)

(assert (=> b!6822967 (= c!1269884 ((_ is Star!16635) r!7292))))

(declare-fun b!6822968 () Bool)

(declare-fun e!4116265 () Regex!16635)

(assert (=> b!6822968 (= e!4116265 e!4116266)))

(declare-fun c!1269888 () Bool)

(assert (=> b!6822968 (= c!1269888 ((_ is ElementMatch!16635) r!7292))))

(declare-fun bm!620981 () Bool)

(declare-fun call!620987 () Regex!16635)

(declare-fun call!620988 () Regex!16635)

(assert (=> bm!620981 (= call!620987 call!620988)))

(declare-fun b!6822969 () Bool)

(declare-fun e!4116264 () Regex!16635)

(assert (=> b!6822969 (= e!4116264 (Union!16635 (Concat!25480 call!620987 (regTwo!33782 r!7292)) EmptyLang!16635))))

(declare-fun c!1269887 () Bool)

(declare-fun call!620986 () Regex!16635)

(declare-fun bm!620982 () Bool)

(assert (=> bm!620982 (= call!620986 (derivativeStep!5297 (ite c!1269885 (regOne!33783 r!7292) (ite c!1269884 (reg!16964 r!7292) (ite c!1269887 (regTwo!33782 r!7292) (regOne!33782 r!7292)))) (head!13677 s!2326)))))

(declare-fun call!620985 () Regex!16635)

(declare-fun b!6822970 () Bool)

(assert (=> b!6822970 (= e!4116264 (Union!16635 (Concat!25480 call!620985 (regTwo!33782 r!7292)) call!620987))))

(declare-fun b!6822971 () Bool)

(assert (=> b!6822971 (= e!4116267 (Concat!25480 call!620988 r!7292))))

(declare-fun b!6822972 () Bool)

(assert (=> b!6822972 (= e!4116266 (ite (= (head!13677 s!2326) (c!1269331 r!7292)) EmptyExpr!16635 EmptyLang!16635))))

(declare-fun b!6822973 () Bool)

(assert (=> b!6822973 (= c!1269887 (nullable!6612 (regOne!33782 r!7292)))))

(assert (=> b!6822973 (= e!4116267 e!4116264)))

(declare-fun b!6822974 () Bool)

(assert (=> b!6822974 (= e!4116265 EmptyLang!16635)))

(declare-fun bm!620983 () Bool)

(assert (=> bm!620983 (= call!620985 (derivativeStep!5297 (ite c!1269885 (regTwo!33783 r!7292) (regOne!33782 r!7292)) (head!13677 s!2326)))))

(declare-fun b!6822975 () Bool)

(assert (=> b!6822975 (= e!4116268 (Union!16635 call!620986 call!620985))))

(declare-fun d!2145577 () Bool)

(declare-fun lt!2451597 () Regex!16635)

(assert (=> d!2145577 (validRegex!8371 lt!2451597)))

(assert (=> d!2145577 (= lt!2451597 e!4116265)))

(declare-fun c!1269886 () Bool)

(assert (=> d!2145577 (= c!1269886 (or ((_ is EmptyExpr!16635) r!7292) ((_ is EmptyLang!16635) r!7292)))))

(assert (=> d!2145577 (validRegex!8371 r!7292)))

(assert (=> d!2145577 (= (derivativeStep!5297 r!7292 (head!13677 s!2326)) lt!2451597)))

(declare-fun bm!620980 () Bool)

(assert (=> bm!620980 (= call!620988 call!620986)))

(assert (= (and d!2145577 c!1269886) b!6822974))

(assert (= (and d!2145577 (not c!1269886)) b!6822968))

(assert (= (and b!6822968 c!1269888) b!6822972))

(assert (= (and b!6822968 (not c!1269888)) b!6822966))

(assert (= (and b!6822966 c!1269885) b!6822975))

(assert (= (and b!6822966 (not c!1269885)) b!6822967))

(assert (= (and b!6822967 c!1269884) b!6822971))

(assert (= (and b!6822967 (not c!1269884)) b!6822973))

(assert (= (and b!6822973 c!1269887) b!6822970))

(assert (= (and b!6822973 (not c!1269887)) b!6822969))

(assert (= (or b!6822970 b!6822969) bm!620981))

(assert (= (or b!6822971 bm!620981) bm!620980))

(assert (= (or b!6822975 b!6822970) bm!620983))

(assert (= (or b!6822975 bm!620980) bm!620982))

(assert (=> bm!620982 m!7566988))

(declare-fun m!7568726 () Bool)

(assert (=> bm!620982 m!7568726))

(assert (=> b!6822973 m!7566776))

(assert (=> bm!620983 m!7566988))

(declare-fun m!7568728 () Bool)

(assert (=> bm!620983 m!7568728))

(declare-fun m!7568730 () Bool)

(assert (=> d!2145577 m!7568730))

(assert (=> d!2145577 m!7566474))

(assert (=> b!6821755 d!2145577))

(assert (=> b!6821755 d!2145455))

(assert (=> b!6821755 d!2145427))

(declare-fun d!2145579 () Bool)

(assert (=> d!2145579 (= (nullable!6612 (reg!16964 r!7292)) (nullableFct!2510 (reg!16964 r!7292)))))

(declare-fun bs!1823092 () Bool)

(assert (= bs!1823092 d!2145579))

(declare-fun m!7568732 () Bool)

(assert (=> bs!1823092 m!7568732))

(assert (=> b!6821387 d!2145579))

(declare-fun d!2145581 () Bool)

(assert (=> d!2145581 (= (isEmpty!38470 (_2!36913 lt!2451337)) ((_ is Nil!66082) (_2!36913 lt!2451337)))))

(assert (=> d!2144901 d!2145581))

(declare-fun d!2145583 () Bool)

(declare-fun c!1269891 () Bool)

(assert (=> d!2145583 (= c!1269891 ((_ is Nil!66082) lt!2451448))))

(declare-fun e!4116271 () (InoxSet C!33540))

(assert (=> d!2145583 (= (content!12935 lt!2451448) e!4116271)))

(declare-fun b!6822980 () Bool)

(assert (=> b!6822980 (= e!4116271 ((as const (Array C!33540 Bool)) false))))

(declare-fun b!6822981 () Bool)

(assert (=> b!6822981 (= e!4116271 ((_ map or) (store ((as const (Array C!33540 Bool)) false) (h!72530 lt!2451448) true) (content!12935 (t!379943 lt!2451448))))))

(assert (= (and d!2145583 c!1269891) b!6822980))

(assert (= (and d!2145583 (not c!1269891)) b!6822981))

(declare-fun m!7568734 () Bool)

(assert (=> b!6822981 m!7568734))

(declare-fun m!7568736 () Bool)

(assert (=> b!6822981 m!7568736))

(assert (=> d!2144929 d!2145583))

(declare-fun d!2145585 () Bool)

(declare-fun c!1269892 () Bool)

(assert (=> d!2145585 (= c!1269892 ((_ is Nil!66082) (_1!36913 lt!2451337)))))

(declare-fun e!4116272 () (InoxSet C!33540))

(assert (=> d!2145585 (= (content!12935 (_1!36913 lt!2451337)) e!4116272)))

(declare-fun b!6822982 () Bool)

(assert (=> b!6822982 (= e!4116272 ((as const (Array C!33540 Bool)) false))))

(declare-fun b!6822983 () Bool)

(assert (=> b!6822983 (= e!4116272 ((_ map or) (store ((as const (Array C!33540 Bool)) false) (h!72530 (_1!36913 lt!2451337)) true) (content!12935 (t!379943 (_1!36913 lt!2451337)))))))

(assert (= (and d!2145585 c!1269892) b!6822982))

(assert (= (and d!2145585 (not c!1269892)) b!6822983))

(declare-fun m!7568738 () Bool)

(assert (=> b!6822983 m!7568738))

(declare-fun m!7568740 () Bool)

(assert (=> b!6822983 m!7568740))

(assert (=> d!2144929 d!2145585))

(declare-fun d!2145587 () Bool)

(declare-fun c!1269893 () Bool)

(assert (=> d!2145587 (= c!1269893 ((_ is Nil!66082) (_2!36913 lt!2451337)))))

(declare-fun e!4116273 () (InoxSet C!33540))

(assert (=> d!2145587 (= (content!12935 (_2!36913 lt!2451337)) e!4116273)))

(declare-fun b!6822984 () Bool)

(assert (=> b!6822984 (= e!4116273 ((as const (Array C!33540 Bool)) false))))

(declare-fun b!6822985 () Bool)

(assert (=> b!6822985 (= e!4116273 ((_ map or) (store ((as const (Array C!33540 Bool)) false) (h!72530 (_2!36913 lt!2451337)) true) (content!12935 (t!379943 (_2!36913 lt!2451337)))))))

(assert (= (and d!2145587 c!1269893) b!6822984))

(assert (= (and d!2145587 (not c!1269893)) b!6822985))

(declare-fun m!7568742 () Bool)

(assert (=> b!6822985 m!7568742))

(declare-fun m!7568744 () Bool)

(assert (=> b!6822985 m!7568744))

(assert (=> d!2144929 d!2145587))

(declare-fun d!2145589 () Bool)

(declare-fun res!2786738 () Bool)

(declare-fun e!4116274 () Bool)

(assert (=> d!2145589 (=> res!2786738 e!4116274)))

(assert (=> d!2145589 (= res!2786738 ((_ is Nil!66080) (exprs!6519 (h!72529 zl!343))))))

(assert (=> d!2145589 (= (forall!15825 (exprs!6519 (h!72529 zl!343)) lambda!385162) e!4116274)))

(declare-fun b!6822986 () Bool)

(declare-fun e!4116275 () Bool)

(assert (=> b!6822986 (= e!4116274 e!4116275)))

(declare-fun res!2786739 () Bool)

(assert (=> b!6822986 (=> (not res!2786739) (not e!4116275))))

(assert (=> b!6822986 (= res!2786739 (dynLambda!26406 lambda!385162 (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun b!6822987 () Bool)

(assert (=> b!6822987 (= e!4116275 (forall!15825 (t!379941 (exprs!6519 (h!72529 zl!343))) lambda!385162))))

(assert (= (and d!2145589 (not res!2786738)) b!6822986))

(assert (= (and b!6822986 res!2786739) b!6822987))

(declare-fun b_lambda!257353 () Bool)

(assert (=> (not b_lambda!257353) (not b!6822986)))

(declare-fun m!7568746 () Bool)

(assert (=> b!6822986 m!7568746))

(declare-fun m!7568748 () Bool)

(assert (=> b!6822987 m!7568748))

(assert (=> d!2144757 d!2145589))

(declare-fun d!2145591 () Bool)

(declare-fun c!1269896 () Bool)

(assert (=> d!2145591 (= c!1269896 ((_ is Nil!66080) lt!2451471))))

(declare-fun e!4116278 () (InoxSet Regex!16635))

(assert (=> d!2145591 (= (content!12936 lt!2451471) e!4116278)))

(declare-fun b!6822992 () Bool)

(assert (=> b!6822992 (= e!4116278 ((as const (Array Regex!16635 Bool)) false))))

(declare-fun b!6822993 () Bool)

(assert (=> b!6822993 (= e!4116278 ((_ map or) (store ((as const (Array Regex!16635 Bool)) false) (h!72528 lt!2451471) true) (content!12936 (t!379941 lt!2451471))))))

(assert (= (and d!2145591 c!1269896) b!6822992))

(assert (= (and d!2145591 (not c!1269896)) b!6822993))

(declare-fun m!7568750 () Bool)

(assert (=> b!6822993 m!7568750))

(declare-fun m!7568752 () Bool)

(assert (=> b!6822993 m!7568752))

(assert (=> d!2144957 d!2145591))

(declare-fun d!2145593 () Bool)

(declare-fun c!1269897 () Bool)

(assert (=> d!2145593 (= c!1269897 ((_ is Nil!66080) lt!2451325))))

(declare-fun e!4116279 () (InoxSet Regex!16635))

(assert (=> d!2145593 (= (content!12936 lt!2451325) e!4116279)))

(declare-fun b!6822994 () Bool)

(assert (=> b!6822994 (= e!4116279 ((as const (Array Regex!16635 Bool)) false))))

(declare-fun b!6822995 () Bool)

(assert (=> b!6822995 (= e!4116279 ((_ map or) (store ((as const (Array Regex!16635 Bool)) false) (h!72528 lt!2451325) true) (content!12936 (t!379941 lt!2451325))))))

(assert (= (and d!2145593 c!1269897) b!6822994))

(assert (= (and d!2145593 (not c!1269897)) b!6822995))

(declare-fun m!7568754 () Bool)

(assert (=> b!6822995 m!7568754))

(assert (=> b!6822995 m!7568542))

(assert (=> d!2144957 d!2145593))

(declare-fun d!2145595 () Bool)

(declare-fun c!1269898 () Bool)

(assert (=> d!2145595 (= c!1269898 ((_ is Nil!66080) lt!2451306))))

(declare-fun e!4116280 () (InoxSet Regex!16635))

(assert (=> d!2145595 (= (content!12936 lt!2451306) e!4116280)))

(declare-fun b!6822996 () Bool)

(assert (=> b!6822996 (= e!4116280 ((as const (Array Regex!16635 Bool)) false))))

(declare-fun b!6822997 () Bool)

(assert (=> b!6822997 (= e!4116280 ((_ map or) (store ((as const (Array Regex!16635 Bool)) false) (h!72528 lt!2451306) true) (content!12936 (t!379941 lt!2451306))))))

(assert (= (and d!2145595 c!1269898) b!6822996))

(assert (= (and d!2145595 (not c!1269898)) b!6822997))

(declare-fun m!7568756 () Bool)

(assert (=> b!6822997 m!7568756))

(declare-fun m!7568758 () Bool)

(assert (=> b!6822997 m!7568758))

(assert (=> d!2144957 d!2145595))

(declare-fun d!2145597 () Bool)

(assert (=> d!2145597 (= (isEmpty!38474 lt!2451310) (not ((_ is Some!16521) lt!2451310)))))

(assert (=> d!2144927 d!2145597))

(declare-fun d!2145599 () Bool)

(assert (=> d!2145599 (= (isEmpty!38470 (_1!36913 lt!2451337)) ((_ is Nil!66082) (_1!36913 lt!2451337)))))

(assert (=> d!2144863 d!2145599))

(declare-fun bs!1823093 () Bool)

(declare-fun b!6822999 () Bool)

(assert (= bs!1823093 (and b!6822999 d!2145547)))

(declare-fun lambda!385331 () Int)

(assert (=> bs!1823093 (not (= lambda!385331 lambda!385328))))

(declare-fun bs!1823094 () Bool)

(assert (= bs!1823094 (and b!6822999 b!6820967)))

(assert (=> bs!1823094 (not (= lambda!385331 lambda!385148))))

(declare-fun bs!1823095 () Bool)

(assert (= bs!1823095 (and b!6822999 d!2144987)))

(assert (=> bs!1823095 (not (= lambda!385331 lambda!385245))))

(declare-fun bs!1823096 () Bool)

(assert (= bs!1823096 (and b!6822999 b!6821741)))

(assert (=> bs!1823096 (not (= lambda!385331 lambda!385223))))

(declare-fun bs!1823097 () Bool)

(assert (= bs!1823097 (and b!6822999 b!6821442)))

(assert (=> bs!1823097 (not (= lambda!385331 lambda!385202))))

(declare-fun bs!1823098 () Bool)

(assert (= bs!1823098 (and b!6822999 d!2144979)))

(assert (=> bs!1823098 (not (= lambda!385331 lambda!385238))))

(declare-fun bs!1823099 () Bool)

(assert (= bs!1823099 (and b!6822999 b!6822751)))

(assert (=> bs!1823099 (= (and (= (reg!16964 (regTwo!33783 r!7292)) (reg!16964 (regOne!33783 r!7292))) (= (regTwo!33783 r!7292) (regOne!33783 r!7292))) (= lambda!385331 lambda!385315))))

(assert (=> bs!1823094 (= (and (= (reg!16964 (regTwo!33783 r!7292)) (reg!16964 r!7292)) (= (regTwo!33783 r!7292) r!7292)) (= lambda!385331 lambda!385149))))

(declare-fun bs!1823100 () Bool)

(assert (= bs!1823100 (and b!6822999 b!6822721)))

(assert (=> bs!1823100 (= (and (= (reg!16964 (regTwo!33783 r!7292)) (reg!16964 (regTwo!33783 lt!2451335))) (= (regTwo!33783 r!7292) (regTwo!33783 lt!2451335))) (= lambda!385331 lambda!385308))))

(declare-fun bs!1823101 () Bool)

(assert (= bs!1823101 (and b!6822999 b!6822752)))

(assert (=> bs!1823101 (not (= lambda!385331 lambda!385316))))

(assert (=> bs!1823095 (not (= lambda!385331 lambda!385244))))

(declare-fun bs!1823102 () Bool)

(assert (= bs!1823102 (and b!6822999 b!6821441)))

(assert (=> bs!1823102 (= (and (= (reg!16964 (regTwo!33783 r!7292)) (reg!16964 lt!2451335)) (= (regTwo!33783 r!7292) lt!2451335)) (= lambda!385331 lambda!385201))))

(declare-fun bs!1823103 () Bool)

(assert (= bs!1823103 (and b!6822999 b!6821740)))

(assert (=> bs!1823103 (= (and (= (reg!16964 (regTwo!33783 r!7292)) (reg!16964 r!7292)) (= (regTwo!33783 r!7292) r!7292)) (= lambda!385331 lambda!385222))))

(assert (=> bs!1823094 (not (= lambda!385331 lambda!385150))))

(declare-fun bs!1823104 () Bool)

(assert (= bs!1823104 (and b!6822999 b!6822722)))

(assert (=> bs!1823104 (not (= lambda!385331 lambda!385309))))

(assert (=> bs!1823098 (= (and (= (reg!16964 (regTwo!33783 r!7292)) (reg!16964 r!7292)) (= (regTwo!33783 r!7292) (Star!16635 (reg!16964 r!7292)))) (= lambda!385331 lambda!385239))))

(declare-fun bs!1823105 () Bool)

(assert (= bs!1823105 (and b!6822999 d!2144993)))

(assert (=> bs!1823105 (not (= lambda!385331 lambda!385248))))

(assert (=> b!6822999 true))

(assert (=> b!6822999 true))

(declare-fun bs!1823106 () Bool)

(declare-fun b!6823000 () Bool)

(assert (= bs!1823106 (and b!6823000 d!2145547)))

(declare-fun lambda!385332 () Int)

(assert (=> bs!1823106 (not (= lambda!385332 lambda!385328))))

(declare-fun bs!1823107 () Bool)

(assert (= bs!1823107 (and b!6823000 b!6820967)))

(assert (=> bs!1823107 (not (= lambda!385332 lambda!385148))))

(declare-fun bs!1823108 () Bool)

(assert (= bs!1823108 (and b!6823000 d!2144987)))

(assert (=> bs!1823108 (= (and (= (regOne!33782 (regTwo!33783 r!7292)) (reg!16964 r!7292)) (= (regTwo!33782 (regTwo!33783 r!7292)) r!7292)) (= lambda!385332 lambda!385245))))

(declare-fun bs!1823109 () Bool)

(assert (= bs!1823109 (and b!6823000 b!6821741)))

(assert (=> bs!1823109 (= (and (= (regOne!33782 (regTwo!33783 r!7292)) (regOne!33782 r!7292)) (= (regTwo!33782 (regTwo!33783 r!7292)) (regTwo!33782 r!7292))) (= lambda!385332 lambda!385223))))

(declare-fun bs!1823110 () Bool)

(assert (= bs!1823110 (and b!6823000 b!6821442)))

(assert (=> bs!1823110 (= (and (= (regOne!33782 (regTwo!33783 r!7292)) (regOne!33782 lt!2451335)) (= (regTwo!33782 (regTwo!33783 r!7292)) (regTwo!33782 lt!2451335))) (= lambda!385332 lambda!385202))))

(declare-fun bs!1823111 () Bool)

(assert (= bs!1823111 (and b!6823000 d!2144979)))

(assert (=> bs!1823111 (not (= lambda!385332 lambda!385238))))

(declare-fun bs!1823112 () Bool)

(assert (= bs!1823112 (and b!6823000 b!6822751)))

(assert (=> bs!1823112 (not (= lambda!385332 lambda!385315))))

(declare-fun bs!1823113 () Bool)

(assert (= bs!1823113 (and b!6823000 b!6822999)))

(assert (=> bs!1823113 (not (= lambda!385332 lambda!385331))))

(assert (=> bs!1823107 (not (= lambda!385332 lambda!385149))))

(declare-fun bs!1823114 () Bool)

(assert (= bs!1823114 (and b!6823000 b!6822721)))

(assert (=> bs!1823114 (not (= lambda!385332 lambda!385308))))

(declare-fun bs!1823115 () Bool)

(assert (= bs!1823115 (and b!6823000 b!6822752)))

(assert (=> bs!1823115 (= (and (= (regOne!33782 (regTwo!33783 r!7292)) (regOne!33782 (regOne!33783 r!7292))) (= (regTwo!33782 (regTwo!33783 r!7292)) (regTwo!33782 (regOne!33783 r!7292)))) (= lambda!385332 lambda!385316))))

(assert (=> bs!1823108 (not (= lambda!385332 lambda!385244))))

(declare-fun bs!1823116 () Bool)

(assert (= bs!1823116 (and b!6823000 b!6821441)))

(assert (=> bs!1823116 (not (= lambda!385332 lambda!385201))))

(declare-fun bs!1823117 () Bool)

(assert (= bs!1823117 (and b!6823000 b!6821740)))

(assert (=> bs!1823117 (not (= lambda!385332 lambda!385222))))

(assert (=> bs!1823107 (= (and (= (regOne!33782 (regTwo!33783 r!7292)) (reg!16964 r!7292)) (= (regTwo!33782 (regTwo!33783 r!7292)) r!7292)) (= lambda!385332 lambda!385150))))

(declare-fun bs!1823118 () Bool)

(assert (= bs!1823118 (and b!6823000 b!6822722)))

(assert (=> bs!1823118 (= (and (= (regOne!33782 (regTwo!33783 r!7292)) (regOne!33782 (regTwo!33783 lt!2451335))) (= (regTwo!33782 (regTwo!33783 r!7292)) (regTwo!33782 (regTwo!33783 lt!2451335)))) (= lambda!385332 lambda!385309))))

(assert (=> bs!1823111 (not (= lambda!385332 lambda!385239))))

(declare-fun bs!1823119 () Bool)

(assert (= bs!1823119 (and b!6823000 d!2144993)))

(assert (=> bs!1823119 (not (= lambda!385332 lambda!385248))))

(assert (=> b!6823000 true))

(assert (=> b!6823000 true))

(declare-fun bm!620984 () Bool)

(declare-fun c!1269899 () Bool)

(declare-fun call!620990 () Bool)

(assert (=> bm!620984 (= call!620990 (Exists!3703 (ite c!1269899 lambda!385331 lambda!385332)))))

(declare-fun b!6822998 () Bool)

(declare-fun e!4116284 () Bool)

(declare-fun call!620989 () Bool)

(assert (=> b!6822998 (= e!4116284 call!620989)))

(declare-fun e!4116286 () Bool)

(assert (=> b!6822999 (= e!4116286 call!620990)))

(declare-fun bm!620985 () Bool)

(assert (=> bm!620985 (= call!620989 (isEmpty!38470 s!2326))))

(declare-fun e!4116287 () Bool)

(assert (=> b!6823000 (= e!4116287 call!620990)))

(declare-fun b!6823001 () Bool)

(declare-fun e!4116281 () Bool)

(assert (=> b!6823001 (= e!4116281 (matchRSpec!3736 (regTwo!33783 (regTwo!33783 r!7292)) s!2326))))

(declare-fun b!6823002 () Bool)

(declare-fun res!2786740 () Bool)

(assert (=> b!6823002 (=> res!2786740 e!4116286)))

(assert (=> b!6823002 (= res!2786740 call!620989)))

(assert (=> b!6823002 (= e!4116287 e!4116286)))

(declare-fun b!6823003 () Bool)

(declare-fun e!4116285 () Bool)

(assert (=> b!6823003 (= e!4116284 e!4116285)))

(declare-fun res!2786741 () Bool)

(assert (=> b!6823003 (= res!2786741 (not ((_ is EmptyLang!16635) (regTwo!33783 r!7292))))))

(assert (=> b!6823003 (=> (not res!2786741) (not e!4116285))))

(declare-fun b!6823004 () Bool)

(declare-fun c!1269900 () Bool)

(assert (=> b!6823004 (= c!1269900 ((_ is Union!16635) (regTwo!33783 r!7292)))))

(declare-fun e!4116282 () Bool)

(declare-fun e!4116283 () Bool)

(assert (=> b!6823004 (= e!4116282 e!4116283)))

(declare-fun b!6823005 () Bool)

(assert (=> b!6823005 (= e!4116282 (= s!2326 (Cons!66082 (c!1269331 (regTwo!33783 r!7292)) Nil!66082)))))

(declare-fun b!6823006 () Bool)

(assert (=> b!6823006 (= e!4116283 e!4116287)))

(assert (=> b!6823006 (= c!1269899 ((_ is Star!16635) (regTwo!33783 r!7292)))))

(declare-fun b!6823007 () Bool)

(declare-fun c!1269901 () Bool)

(assert (=> b!6823007 (= c!1269901 ((_ is ElementMatch!16635) (regTwo!33783 r!7292)))))

(assert (=> b!6823007 (= e!4116285 e!4116282)))

(declare-fun d!2145601 () Bool)

(declare-fun c!1269902 () Bool)

(assert (=> d!2145601 (= c!1269902 ((_ is EmptyExpr!16635) (regTwo!33783 r!7292)))))

(assert (=> d!2145601 (= (matchRSpec!3736 (regTwo!33783 r!7292) s!2326) e!4116284)))

(declare-fun b!6823008 () Bool)

(assert (=> b!6823008 (= e!4116283 e!4116281)))

(declare-fun res!2786742 () Bool)

(assert (=> b!6823008 (= res!2786742 (matchRSpec!3736 (regOne!33783 (regTwo!33783 r!7292)) s!2326))))

(assert (=> b!6823008 (=> res!2786742 e!4116281)))

(assert (= (and d!2145601 c!1269902) b!6822998))

(assert (= (and d!2145601 (not c!1269902)) b!6823003))

(assert (= (and b!6823003 res!2786741) b!6823007))

(assert (= (and b!6823007 c!1269901) b!6823005))

(assert (= (and b!6823007 (not c!1269901)) b!6823004))

(assert (= (and b!6823004 c!1269900) b!6823008))

(assert (= (and b!6823004 (not c!1269900)) b!6823006))

(assert (= (and b!6823008 (not res!2786742)) b!6823001))

(assert (= (and b!6823006 c!1269899) b!6823002))

(assert (= (and b!6823006 (not c!1269899)) b!6823000))

(assert (= (and b!6823002 (not res!2786740)) b!6822999))

(assert (= (or b!6822999 b!6823000) bm!620984))

(assert (= (or b!6822998 b!6823002) bm!620985))

(declare-fun m!7568760 () Bool)

(assert (=> bm!620984 m!7568760))

(assert (=> bm!620985 m!7566568))

(declare-fun m!7568762 () Bool)

(assert (=> b!6823001 m!7568762))

(declare-fun m!7568764 () Bool)

(assert (=> b!6823008 m!7568764))

(assert (=> b!6821742 d!2145601))

(declare-fun d!2145603 () Bool)

(declare-fun c!1269903 () Bool)

(assert (=> d!2145603 (= c!1269903 (isEmpty!38470 (tail!12762 lt!2451319)))))

(declare-fun e!4116288 () Bool)

(assert (=> d!2145603 (= (matchZipper!2621 (derivationStepZipper!2579 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) (head!13677 lt!2451319)) (tail!12762 lt!2451319)) e!4116288)))

(declare-fun b!6823009 () Bool)

(assert (=> b!6823009 (= e!4116288 (nullableZipper!2340 (derivationStepZipper!2579 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) (head!13677 lt!2451319))))))

(declare-fun b!6823010 () Bool)

(assert (=> b!6823010 (= e!4116288 (matchZipper!2621 (derivationStepZipper!2579 (derivationStepZipper!2579 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) (head!13677 lt!2451319)) (head!13677 (tail!12762 lt!2451319))) (tail!12762 (tail!12762 lt!2451319))))))

(assert (= (and d!2145603 c!1269903) b!6823009))

(assert (= (and d!2145603 (not c!1269903)) b!6823010))

(assert (=> d!2145603 m!7567324))

(declare-fun m!7568766 () Bool)

(assert (=> d!2145603 m!7568766))

(assert (=> b!6823009 m!7567322))

(declare-fun m!7568768 () Bool)

(assert (=> b!6823009 m!7568768))

(assert (=> b!6823010 m!7567324))

(declare-fun m!7568770 () Bool)

(assert (=> b!6823010 m!7568770))

(assert (=> b!6823010 m!7567322))

(assert (=> b!6823010 m!7568770))

(declare-fun m!7568772 () Bool)

(assert (=> b!6823010 m!7568772))

(assert (=> b!6823010 m!7567324))

(declare-fun m!7568774 () Bool)

(assert (=> b!6823010 m!7568774))

(assert (=> b!6823010 m!7568772))

(assert (=> b!6823010 m!7568774))

(declare-fun m!7568776 () Bool)

(assert (=> b!6823010 m!7568776))

(assert (=> b!6821791 d!2145603))

(declare-fun bs!1823120 () Bool)

(declare-fun d!2145605 () Bool)

(assert (= bs!1823120 (and d!2145605 d!2144913)))

(declare-fun lambda!385333 () Int)

(assert (=> bs!1823120 (= (= (head!13677 lt!2451319) (h!72530 s!2326)) (= lambda!385333 lambda!385220))))

(declare-fun bs!1823121 () Bool)

(assert (= bs!1823121 (and d!2145605 d!2145541)))

(assert (=> bs!1823121 (= (= (head!13677 lt!2451319) (head!13677 s!2326)) (= lambda!385333 lambda!385325))))

(declare-fun bs!1823122 () Bool)

(assert (= bs!1823122 (and d!2145605 d!2145453)))

(assert (=> bs!1823122 (= (= (head!13677 lt!2451319) (head!13677 s!2326)) (= lambda!385333 lambda!385314))))

(declare-fun bs!1823123 () Bool)

(assert (= bs!1823123 (and d!2145605 b!6820978)))

(assert (=> bs!1823123 (= (= (head!13677 lt!2451319) (h!72530 s!2326)) (= lambda!385333 lambda!385151))))

(declare-fun bs!1823124 () Bool)

(assert (= bs!1823124 (and d!2145605 d!2144793)))

(assert (=> bs!1823124 (= (= (head!13677 lt!2451319) (h!72530 s!2326)) (= lambda!385333 lambda!385183))))

(declare-fun bs!1823125 () Bool)

(assert (= bs!1823125 (and d!2145605 d!2145443)))

(assert (=> bs!1823125 (= (= (head!13677 lt!2451319) (head!13677 (_2!36913 lt!2451337))) (= lambda!385333 lambda!385310))))

(declare-fun bs!1823126 () Bool)

(assert (= bs!1823126 (and d!2145605 d!2145567)))

(assert (=> bs!1823126 (= (= (head!13677 lt!2451319) (head!13677 (_1!36913 lt!2451337))) (= lambda!385333 lambda!385330))))

(declare-fun bs!1823127 () Bool)

(assert (= bs!1823127 (and d!2145605 d!2144805)))

(assert (=> bs!1823127 (= (= (head!13677 lt!2451319) (h!72530 s!2326)) (= lambda!385333 lambda!385184))))

(assert (=> d!2145605 true))

(assert (=> d!2145605 (= (derivationStepZipper!2579 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) (head!13677 lt!2451319)) (flatMap!2116 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (++!14816 lt!2451325 lt!2451306)) true) lambda!385333))))

(declare-fun bs!1823128 () Bool)

(assert (= bs!1823128 d!2145605))

(assert (=> bs!1823128 m!7566488))

(declare-fun m!7568778 () Bool)

(assert (=> bs!1823128 m!7568778))

(assert (=> b!6821791 d!2145605))

(declare-fun d!2145607 () Bool)

(assert (=> d!2145607 (= (head!13677 lt!2451319) (h!72530 lt!2451319))))

(assert (=> b!6821791 d!2145607))

(declare-fun d!2145609 () Bool)

(assert (=> d!2145609 (= (tail!12762 lt!2451319) (t!379943 lt!2451319))))

(assert (=> b!6821791 d!2145609))

(declare-fun d!2145611 () Bool)

(declare-fun lt!2451600 () Int)

(assert (=> d!2145611 (>= lt!2451600 0)))

(declare-fun e!4116291 () Int)

(assert (=> d!2145611 (= lt!2451600 e!4116291)))

(declare-fun c!1269906 () Bool)

(assert (=> d!2145611 (= c!1269906 ((_ is Nil!66080) lt!2451471))))

(assert (=> d!2145611 (= (size!40691 lt!2451471) lt!2451600)))

(declare-fun b!6823015 () Bool)

(assert (=> b!6823015 (= e!4116291 0)))

(declare-fun b!6823016 () Bool)

(assert (=> b!6823016 (= e!4116291 (+ 1 (size!40691 (t!379941 lt!2451471))))))

(assert (= (and d!2145611 c!1269906) b!6823015))

(assert (= (and d!2145611 (not c!1269906)) b!6823016))

(declare-fun m!7568780 () Bool)

(assert (=> b!6823016 m!7568780))

(assert (=> b!6821774 d!2145611))

(declare-fun d!2145613 () Bool)

(declare-fun lt!2451601 () Int)

(assert (=> d!2145613 (>= lt!2451601 0)))

(declare-fun e!4116292 () Int)

(assert (=> d!2145613 (= lt!2451601 e!4116292)))

(declare-fun c!1269907 () Bool)

(assert (=> d!2145613 (= c!1269907 ((_ is Nil!66080) lt!2451325))))

(assert (=> d!2145613 (= (size!40691 lt!2451325) lt!2451601)))

(declare-fun b!6823017 () Bool)

(assert (=> b!6823017 (= e!4116292 0)))

(declare-fun b!6823018 () Bool)

(assert (=> b!6823018 (= e!4116292 (+ 1 (size!40691 (t!379941 lt!2451325))))))

(assert (= (and d!2145613 c!1269907) b!6823017))

(assert (= (and d!2145613 (not c!1269907)) b!6823018))

(assert (=> b!6823018 m!7568548))

(assert (=> b!6821774 d!2145613))

(declare-fun d!2145615 () Bool)

(declare-fun lt!2451602 () Int)

(assert (=> d!2145615 (>= lt!2451602 0)))

(declare-fun e!4116293 () Int)

(assert (=> d!2145615 (= lt!2451602 e!4116293)))

(declare-fun c!1269908 () Bool)

(assert (=> d!2145615 (= c!1269908 ((_ is Nil!66080) lt!2451306))))

(assert (=> d!2145615 (= (size!40691 lt!2451306) lt!2451602)))

(declare-fun b!6823019 () Bool)

(assert (=> b!6823019 (= e!4116293 0)))

(declare-fun b!6823020 () Bool)

(assert (=> b!6823020 (= e!4116293 (+ 1 (size!40691 (t!379941 lt!2451306))))))

(assert (= (and d!2145615 c!1269908) b!6823019))

(assert (= (and d!2145615 (not c!1269908)) b!6823020))

(declare-fun m!7568782 () Bool)

(assert (=> b!6823020 m!7568782))

(assert (=> b!6821774 d!2145615))

(declare-fun d!2145617 () Bool)

(assert (=> d!2145617 (= (nullable!6612 (h!72528 (exprs!6519 lt!2451338))) (nullableFct!2510 (h!72528 (exprs!6519 lt!2451338))))))

(declare-fun bs!1823129 () Bool)

(assert (= bs!1823129 d!2145617))

(declare-fun m!7568784 () Bool)

(assert (=> bs!1823129 m!7568784))

(assert (=> b!6821653 d!2145617))

(declare-fun d!2145619 () Bool)

(assert (=> d!2145619 (= (isEmpty!38473 (t!379941 (unfocusZipperList!2056 zl!343))) ((_ is Nil!66080) (t!379941 (unfocusZipperList!2056 zl!343))))))

(assert (=> b!6821813 d!2145619))

(declare-fun d!2145621 () Bool)

(assert (=> d!2145621 true))

(declare-fun setRes!46822 () Bool)

(assert (=> d!2145621 setRes!46822))

(declare-fun condSetEmpty!46822 () Bool)

(declare-fun res!2786743 () (InoxSet Context!12038))

(assert (=> d!2145621 (= condSetEmpty!46822 (= res!2786743 ((as const (Array Context!12038 Bool)) false)))))

(assert (=> d!2145621 (= (choose!50858 lt!2451308 lambda!385151) res!2786743)))

(declare-fun setIsEmpty!46822 () Bool)

(assert (=> setIsEmpty!46822 setRes!46822))

(declare-fun setElem!46822 () Context!12038)

(declare-fun setNonEmpty!46822 () Bool)

(declare-fun e!4116294 () Bool)

(declare-fun tp!1867565 () Bool)

(assert (=> setNonEmpty!46822 (= setRes!46822 (and tp!1867565 (inv!84834 setElem!46822) e!4116294))))

(declare-fun setRest!46822 () (InoxSet Context!12038))

(assert (=> setNonEmpty!46822 (= res!2786743 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) setElem!46822 true) setRest!46822))))

(declare-fun b!6823021 () Bool)

(declare-fun tp!1867564 () Bool)

(assert (=> b!6823021 (= e!4116294 tp!1867564)))

(assert (= (and d!2145621 condSetEmpty!46822) setIsEmpty!46822))

(assert (= (and d!2145621 (not condSetEmpty!46822)) setNonEmpty!46822))

(assert (= setNonEmpty!46822 b!6823021))

(declare-fun m!7568786 () Bool)

(assert (=> setNonEmpty!46822 m!7568786))

(assert (=> d!2144811 d!2145621))

(assert (=> b!6821520 d!2145425))

(assert (=> b!6821520 d!2145427))

(declare-fun d!2145623 () Bool)

(assert (=> d!2145623 (= (isDefined!13225 lt!2451502) (not (isEmpty!38474 lt!2451502)))))

(declare-fun bs!1823130 () Bool)

(assert (= bs!1823130 d!2145623))

(declare-fun m!7568788 () Bool)

(assert (=> bs!1823130 m!7568788))

(assert (=> d!2144991 d!2145623))

(declare-fun b!6823022 () Bool)

(declare-fun e!4116300 () Bool)

(assert (=> b!6823022 (= e!4116300 (not (= (head!13677 Nil!66082) (c!1269331 (reg!16964 r!7292)))))))

(declare-fun b!6823023 () Bool)

(declare-fun e!4116296 () Bool)

(assert (=> b!6823023 (= e!4116296 (nullable!6612 (reg!16964 r!7292)))))

(declare-fun b!6823024 () Bool)

(declare-fun res!2786748 () Bool)

(declare-fun e!4116299 () Bool)

(assert (=> b!6823024 (=> res!2786748 e!4116299)))

(declare-fun e!4116295 () Bool)

(assert (=> b!6823024 (= res!2786748 e!4116295)))

(declare-fun res!2786746 () Bool)

(assert (=> b!6823024 (=> (not res!2786746) (not e!4116295))))

(declare-fun lt!2451603 () Bool)

(assert (=> b!6823024 (= res!2786746 lt!2451603)))

(declare-fun b!6823025 () Bool)

(declare-fun e!4116301 () Bool)

(declare-fun call!620991 () Bool)

(assert (=> b!6823025 (= e!4116301 (= lt!2451603 call!620991))))

(declare-fun b!6823026 () Bool)

(declare-fun e!4116297 () Bool)

(assert (=> b!6823026 (= e!4116297 e!4116300)))

(declare-fun res!2786750 () Bool)

(assert (=> b!6823026 (=> res!2786750 e!4116300)))

(assert (=> b!6823026 (= res!2786750 call!620991)))

(declare-fun b!6823027 () Bool)

(assert (=> b!6823027 (= e!4116296 (matchR!8818 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 Nil!66082)) (tail!12762 Nil!66082)))))

(declare-fun b!6823028 () Bool)

(assert (=> b!6823028 (= e!4116299 e!4116297)))

(declare-fun res!2786745 () Bool)

(assert (=> b!6823028 (=> (not res!2786745) (not e!4116297))))

(assert (=> b!6823028 (= res!2786745 (not lt!2451603))))

(declare-fun b!6823029 () Bool)

(declare-fun e!4116298 () Bool)

(assert (=> b!6823029 (= e!4116301 e!4116298)))

(declare-fun c!1269910 () Bool)

(assert (=> b!6823029 (= c!1269910 ((_ is EmptyLang!16635) (reg!16964 r!7292)))))

(declare-fun d!2145625 () Bool)

(assert (=> d!2145625 e!4116301))

(declare-fun c!1269909 () Bool)

(assert (=> d!2145625 (= c!1269909 ((_ is EmptyExpr!16635) (reg!16964 r!7292)))))

(assert (=> d!2145625 (= lt!2451603 e!4116296)))

(declare-fun c!1269911 () Bool)

(assert (=> d!2145625 (= c!1269911 (isEmpty!38470 Nil!66082))))

(assert (=> d!2145625 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2145625 (= (matchR!8818 (reg!16964 r!7292) Nil!66082) lt!2451603)))

(declare-fun b!6823030 () Bool)

(declare-fun res!2786744 () Bool)

(assert (=> b!6823030 (=> (not res!2786744) (not e!4116295))))

(assert (=> b!6823030 (= res!2786744 (isEmpty!38470 (tail!12762 Nil!66082)))))

(declare-fun b!6823031 () Bool)

(declare-fun res!2786747 () Bool)

(assert (=> b!6823031 (=> (not res!2786747) (not e!4116295))))

(assert (=> b!6823031 (= res!2786747 (not call!620991))))

(declare-fun bm!620986 () Bool)

(assert (=> bm!620986 (= call!620991 (isEmpty!38470 Nil!66082))))

(declare-fun b!6823032 () Bool)

(assert (=> b!6823032 (= e!4116295 (= (head!13677 Nil!66082) (c!1269331 (reg!16964 r!7292))))))

(declare-fun b!6823033 () Bool)

(assert (=> b!6823033 (= e!4116298 (not lt!2451603))))

(declare-fun b!6823034 () Bool)

(declare-fun res!2786751 () Bool)

(assert (=> b!6823034 (=> res!2786751 e!4116299)))

(assert (=> b!6823034 (= res!2786751 (not ((_ is ElementMatch!16635) (reg!16964 r!7292))))))

(assert (=> b!6823034 (= e!4116298 e!4116299)))

(declare-fun b!6823035 () Bool)

(declare-fun res!2786749 () Bool)

(assert (=> b!6823035 (=> res!2786749 e!4116300)))

(assert (=> b!6823035 (= res!2786749 (not (isEmpty!38470 (tail!12762 Nil!66082))))))

(assert (= (and d!2145625 c!1269911) b!6823023))

(assert (= (and d!2145625 (not c!1269911)) b!6823027))

(assert (= (and d!2145625 c!1269909) b!6823025))

(assert (= (and d!2145625 (not c!1269909)) b!6823029))

(assert (= (and b!6823029 c!1269910) b!6823033))

(assert (= (and b!6823029 (not c!1269910)) b!6823034))

(assert (= (and b!6823034 (not res!2786751)) b!6823024))

(assert (= (and b!6823024 res!2786746) b!6823031))

(assert (= (and b!6823031 res!2786747) b!6823030))

(assert (= (and b!6823030 res!2786744) b!6823032))

(assert (= (and b!6823024 (not res!2786748)) b!6823028))

(assert (= (and b!6823028 res!2786745) b!6823026))

(assert (= (and b!6823026 (not res!2786750)) b!6823035))

(assert (= (and b!6823035 (not res!2786749)) b!6823022))

(assert (= (or b!6823025 b!6823031 b!6823026) bm!620986))

(declare-fun m!7568790 () Bool)

(assert (=> d!2145625 m!7568790))

(assert (=> d!2145625 m!7567298))

(declare-fun m!7568792 () Bool)

(assert (=> b!6823035 m!7568792))

(assert (=> b!6823035 m!7568792))

(declare-fun m!7568794 () Bool)

(assert (=> b!6823035 m!7568794))

(declare-fun m!7568796 () Bool)

(assert (=> b!6823022 m!7568796))

(assert (=> b!6823027 m!7568796))

(assert (=> b!6823027 m!7568796))

(declare-fun m!7568798 () Bool)

(assert (=> b!6823027 m!7568798))

(assert (=> b!6823027 m!7568792))

(assert (=> b!6823027 m!7568798))

(assert (=> b!6823027 m!7568792))

(declare-fun m!7568800 () Bool)

(assert (=> b!6823027 m!7568800))

(assert (=> b!6823023 m!7566924))

(assert (=> b!6823032 m!7568796))

(assert (=> b!6823030 m!7568792))

(assert (=> b!6823030 m!7568792))

(assert (=> b!6823030 m!7568794))

(assert (=> bm!620986 m!7568790))

(assert (=> d!2144991 d!2145625))

(assert (=> d!2144991 d!2145549))

(declare-fun d!2145627 () Bool)

(assert (=> d!2145627 (= (isEmpty!38470 (tail!12762 (_1!36913 lt!2451337))) ((_ is Nil!66082) (tail!12762 (_1!36913 lt!2451337))))))

(assert (=> b!6821784 d!2145627))

(assert (=> b!6821784 d!2145569))

(declare-fun d!2145629 () Bool)

(declare-fun c!1269914 () Bool)

(assert (=> d!2145629 (= c!1269914 ((_ is Nil!66081) lt!2451487))))

(declare-fun e!4116304 () (InoxSet Context!12038))

(assert (=> d!2145629 (= (content!12937 lt!2451487) e!4116304)))

(declare-fun b!6823040 () Bool)

(assert (=> b!6823040 (= e!4116304 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823041 () Bool)

(assert (=> b!6823041 (= e!4116304 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) (h!72529 lt!2451487) true) (content!12937 (t!379942 lt!2451487))))))

(assert (= (and d!2145629 c!1269914) b!6823040))

(assert (= (and d!2145629 (not c!1269914)) b!6823041))

(declare-fun m!7568802 () Bool)

(assert (=> b!6823041 m!7568802))

(declare-fun m!7568804 () Bool)

(assert (=> b!6823041 m!7568804))

(assert (=> b!6821830 d!2145629))

(declare-fun d!2145631 () Bool)

(assert (=> d!2145631 (= (nullable!6612 (h!72528 (exprs!6519 (h!72529 zl!343)))) (nullableFct!2510 (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun bs!1823131 () Bool)

(assert (= bs!1823131 d!2145631))

(declare-fun m!7568806 () Bool)

(assert (=> bs!1823131 m!7568806))

(assert (=> b!6821577 d!2145631))

(declare-fun b!6823042 () Bool)

(declare-fun res!2786752 () Bool)

(declare-fun e!4116309 () Bool)

(assert (=> b!6823042 (=> (not res!2786752) (not e!4116309))))

(declare-fun call!620994 () Bool)

(assert (=> b!6823042 (= res!2786752 call!620994)))

(declare-fun e!4116307 () Bool)

(assert (=> b!6823042 (= e!4116307 e!4116309)))

(declare-fun b!6823043 () Bool)

(declare-fun call!620993 () Bool)

(assert (=> b!6823043 (= e!4116309 call!620993)))

(declare-fun bm!620987 () Bool)

(declare-fun call!620992 () Bool)

(assert (=> bm!620987 (= call!620993 call!620992)))

(declare-fun d!2145633 () Bool)

(declare-fun res!2786755 () Bool)

(declare-fun e!4116305 () Bool)

(assert (=> d!2145633 (=> res!2786755 e!4116305)))

(assert (=> d!2145633 (= res!2786755 ((_ is ElementMatch!16635) lt!2451432))))

(assert (=> d!2145633 (= (validRegex!8371 lt!2451432) e!4116305)))

(declare-fun bm!620988 () Bool)

(declare-fun c!1269915 () Bool)

(assert (=> bm!620988 (= call!620994 (validRegex!8371 (ite c!1269915 (regOne!33783 lt!2451432) (regOne!33782 lt!2451432))))))

(declare-fun b!6823044 () Bool)

(declare-fun res!2786756 () Bool)

(declare-fun e!4116310 () Bool)

(assert (=> b!6823044 (=> res!2786756 e!4116310)))

(assert (=> b!6823044 (= res!2786756 (not ((_ is Concat!25480) lt!2451432)))))

(assert (=> b!6823044 (= e!4116307 e!4116310)))

(declare-fun b!6823045 () Bool)

(declare-fun e!4116306 () Bool)

(assert (=> b!6823045 (= e!4116306 e!4116307)))

(assert (=> b!6823045 (= c!1269915 ((_ is Union!16635) lt!2451432))))

(declare-fun b!6823046 () Bool)

(assert (=> b!6823046 (= e!4116305 e!4116306)))

(declare-fun c!1269916 () Bool)

(assert (=> b!6823046 (= c!1269916 ((_ is Star!16635) lt!2451432))))

(declare-fun b!6823047 () Bool)

(declare-fun e!4116311 () Bool)

(assert (=> b!6823047 (= e!4116311 call!620993)))

(declare-fun b!6823048 () Bool)

(declare-fun e!4116308 () Bool)

(assert (=> b!6823048 (= e!4116306 e!4116308)))

(declare-fun res!2786753 () Bool)

(assert (=> b!6823048 (= res!2786753 (not (nullable!6612 (reg!16964 lt!2451432))))))

(assert (=> b!6823048 (=> (not res!2786753) (not e!4116308))))

(declare-fun b!6823049 () Bool)

(assert (=> b!6823049 (= e!4116310 e!4116311)))

(declare-fun res!2786754 () Bool)

(assert (=> b!6823049 (=> (not res!2786754) (not e!4116311))))

(assert (=> b!6823049 (= res!2786754 call!620994)))

(declare-fun b!6823050 () Bool)

(assert (=> b!6823050 (= e!4116308 call!620992)))

(declare-fun bm!620989 () Bool)

(assert (=> bm!620989 (= call!620992 (validRegex!8371 (ite c!1269916 (reg!16964 lt!2451432) (ite c!1269915 (regTwo!33783 lt!2451432) (regTwo!33782 lt!2451432)))))))

(assert (= (and d!2145633 (not res!2786755)) b!6823046))

(assert (= (and b!6823046 c!1269916) b!6823048))

(assert (= (and b!6823046 (not c!1269916)) b!6823045))

(assert (= (and b!6823048 res!2786753) b!6823050))

(assert (= (and b!6823045 c!1269915) b!6823042))

(assert (= (and b!6823045 (not c!1269915)) b!6823044))

(assert (= (and b!6823042 res!2786752) b!6823043))

(assert (= (and b!6823044 (not res!2786756)) b!6823049))

(assert (= (and b!6823049 res!2786754) b!6823047))

(assert (= (or b!6823043 b!6823047) bm!620987))

(assert (= (or b!6823042 b!6823049) bm!620988))

(assert (= (or b!6823050 bm!620987) bm!620989))

(declare-fun m!7568808 () Bool)

(assert (=> bm!620988 m!7568808))

(declare-fun m!7568810 () Bool)

(assert (=> b!6823048 m!7568810))

(declare-fun m!7568812 () Bool)

(assert (=> bm!620989 m!7568812))

(assert (=> d!2144879 d!2145633))

(declare-fun bs!1823132 () Bool)

(declare-fun d!2145635 () Bool)

(assert (= bs!1823132 (and d!2145635 d!2145563)))

(declare-fun lambda!385334 () Int)

(assert (=> bs!1823132 (= lambda!385334 lambda!385329)))

(declare-fun bs!1823133 () Bool)

(assert (= bs!1823133 (and d!2145635 d!2145529)))

(assert (=> bs!1823133 (= lambda!385334 lambda!385321)))

(declare-fun bs!1823134 () Bool)

(assert (= bs!1823134 (and d!2145635 d!2145535)))

(assert (=> bs!1823134 (= lambda!385334 lambda!385323)))

(declare-fun bs!1823135 () Bool)

(assert (= bs!1823135 (and d!2145635 d!2145417)))

(assert (=> bs!1823135 (= lambda!385334 lambda!385307)))

(declare-fun bs!1823136 () Bool)

(assert (= bs!1823136 (and d!2145635 d!2145495)))

(assert (=> bs!1823136 (= lambda!385334 lambda!385320)))

(declare-fun bs!1823137 () Bool)

(assert (= bs!1823137 (and d!2145635 d!2144955)))

(assert (=> bs!1823137 (= lambda!385334 lambda!385226)))

(declare-fun bs!1823138 () Bool)

(assert (= bs!1823138 (and d!2145635 d!2144971)))

(assert (=> bs!1823138 (= lambda!385334 lambda!385233)))

(declare-fun bs!1823139 () Bool)

(assert (= bs!1823139 (and d!2145635 d!2145531)))

(assert (=> bs!1823139 (= lambda!385334 lambda!385322)))

(declare-fun bs!1823140 () Bool)

(assert (= bs!1823140 (and d!2145635 d!2144757)))

(assert (=> bs!1823140 (= lambda!385334 lambda!385162)))

(declare-fun bs!1823141 () Bool)

(assert (= bs!1823141 (and d!2145635 d!2145537)))

(assert (=> bs!1823141 (= lambda!385334 lambda!385324)))

(declare-fun bs!1823142 () Bool)

(assert (= bs!1823142 (and d!2145635 d!2144867)))

(assert (=> bs!1823142 (= lambda!385334 lambda!385209)))

(declare-fun bs!1823143 () Bool)

(assert (= bs!1823143 (and d!2145635 b!6820964)))

(assert (=> bs!1823143 (= lambda!385334 lambda!385153)))

(declare-fun bs!1823144 () Bool)

(assert (= bs!1823144 (and d!2145635 d!2145463)))

(assert (=> bs!1823144 (= lambda!385334 lambda!385317)))

(declare-fun bs!1823145 () Bool)

(assert (= bs!1823145 (and d!2145635 d!2144969)))

(assert (=> bs!1823145 (= lambda!385334 lambda!385230)))

(declare-fun bs!1823146 () Bool)

(assert (= bs!1823146 (and d!2145635 d!2144881)))

(assert (=> bs!1823146 (= lambda!385334 lambda!385217)))

(declare-fun bs!1823147 () Bool)

(assert (= bs!1823147 (and d!2145635 d!2144963)))

(assert (=> bs!1823147 (= lambda!385334 lambda!385227)))

(declare-fun b!6823051 () Bool)

(declare-fun e!4116316 () Bool)

(declare-fun lt!2451604 () Regex!16635)

(assert (=> b!6823051 (= e!4116316 (= lt!2451604 (head!13678 (unfocusZipperList!2056 lt!2451326))))))

(declare-fun e!4116314 () Bool)

(assert (=> d!2145635 e!4116314))

(declare-fun res!2786757 () Bool)

(assert (=> d!2145635 (=> (not res!2786757) (not e!4116314))))

(assert (=> d!2145635 (= res!2786757 (validRegex!8371 lt!2451604))))

(declare-fun e!4116315 () Regex!16635)

(assert (=> d!2145635 (= lt!2451604 e!4116315)))

(declare-fun c!1269917 () Bool)

(declare-fun e!4116312 () Bool)

(assert (=> d!2145635 (= c!1269917 e!4116312)))

(declare-fun res!2786758 () Bool)

(assert (=> d!2145635 (=> (not res!2786758) (not e!4116312))))

(assert (=> d!2145635 (= res!2786758 ((_ is Cons!66080) (unfocusZipperList!2056 lt!2451326)))))

(assert (=> d!2145635 (forall!15825 (unfocusZipperList!2056 lt!2451326) lambda!385334)))

(assert (=> d!2145635 (= (generalisedUnion!2479 (unfocusZipperList!2056 lt!2451326)) lt!2451604)))

(declare-fun b!6823052 () Bool)

(assert (=> b!6823052 (= e!4116312 (isEmpty!38473 (t!379941 (unfocusZipperList!2056 lt!2451326))))))

(declare-fun b!6823053 () Bool)

(declare-fun e!4116317 () Regex!16635)

(assert (=> b!6823053 (= e!4116317 (Union!16635 (h!72528 (unfocusZipperList!2056 lt!2451326)) (generalisedUnion!2479 (t!379941 (unfocusZipperList!2056 lt!2451326)))))))

(declare-fun b!6823054 () Bool)

(assert (=> b!6823054 (= e!4116316 (isUnion!1429 lt!2451604))))

(declare-fun b!6823055 () Bool)

(declare-fun e!4116313 () Bool)

(assert (=> b!6823055 (= e!4116313 e!4116316)))

(declare-fun c!1269919 () Bool)

(assert (=> b!6823055 (= c!1269919 (isEmpty!38473 (tail!12763 (unfocusZipperList!2056 lt!2451326))))))

(declare-fun b!6823056 () Bool)

(assert (=> b!6823056 (= e!4116315 (h!72528 (unfocusZipperList!2056 lt!2451326)))))

(declare-fun b!6823057 () Bool)

(assert (=> b!6823057 (= e!4116315 e!4116317)))

(declare-fun c!1269920 () Bool)

(assert (=> b!6823057 (= c!1269920 ((_ is Cons!66080) (unfocusZipperList!2056 lt!2451326)))))

(declare-fun b!6823058 () Bool)

(assert (=> b!6823058 (= e!4116313 (isEmptyLang!1999 lt!2451604))))

(declare-fun b!6823059 () Bool)

(assert (=> b!6823059 (= e!4116314 e!4116313)))

(declare-fun c!1269918 () Bool)

(assert (=> b!6823059 (= c!1269918 (isEmpty!38473 (unfocusZipperList!2056 lt!2451326)))))

(declare-fun b!6823060 () Bool)

(assert (=> b!6823060 (= e!4116317 EmptyLang!16635)))

(assert (= (and d!2145635 res!2786758) b!6823052))

(assert (= (and d!2145635 c!1269917) b!6823056))

(assert (= (and d!2145635 (not c!1269917)) b!6823057))

(assert (= (and b!6823057 c!1269920) b!6823053))

(assert (= (and b!6823057 (not c!1269920)) b!6823060))

(assert (= (and d!2145635 res!2786757) b!6823059))

(assert (= (and b!6823059 c!1269918) b!6823058))

(assert (= (and b!6823059 (not c!1269918)) b!6823055))

(assert (= (and b!6823055 c!1269919) b!6823051))

(assert (= (and b!6823055 (not c!1269919)) b!6823054))

(assert (=> b!6823055 m!7567062))

(declare-fun m!7568814 () Bool)

(assert (=> b!6823055 m!7568814))

(assert (=> b!6823055 m!7568814))

(declare-fun m!7568816 () Bool)

(assert (=> b!6823055 m!7568816))

(assert (=> b!6823059 m!7567062))

(declare-fun m!7568818 () Bool)

(assert (=> b!6823059 m!7568818))

(assert (=> b!6823051 m!7567062))

(declare-fun m!7568820 () Bool)

(assert (=> b!6823051 m!7568820))

(declare-fun m!7568822 () Bool)

(assert (=> b!6823058 m!7568822))

(declare-fun m!7568824 () Bool)

(assert (=> b!6823054 m!7568824))

(declare-fun m!7568826 () Bool)

(assert (=> d!2145635 m!7568826))

(assert (=> d!2145635 m!7567062))

(declare-fun m!7568828 () Bool)

(assert (=> d!2145635 m!7568828))

(declare-fun m!7568830 () Bool)

(assert (=> b!6823053 m!7568830))

(declare-fun m!7568832 () Bool)

(assert (=> b!6823052 m!7568832))

(assert (=> d!2144879 d!2145635))

(declare-fun bs!1823148 () Bool)

(declare-fun d!2145637 () Bool)

(assert (= bs!1823148 (and d!2145637 d!2145563)))

(declare-fun lambda!385335 () Int)

(assert (=> bs!1823148 (= lambda!385335 lambda!385329)))

(declare-fun bs!1823149 () Bool)

(assert (= bs!1823149 (and d!2145637 d!2145529)))

(assert (=> bs!1823149 (= lambda!385335 lambda!385321)))

(declare-fun bs!1823150 () Bool)

(assert (= bs!1823150 (and d!2145637 d!2145535)))

(assert (=> bs!1823150 (= lambda!385335 lambda!385323)))

(declare-fun bs!1823151 () Bool)

(assert (= bs!1823151 (and d!2145637 d!2145417)))

(assert (=> bs!1823151 (= lambda!385335 lambda!385307)))

(declare-fun bs!1823152 () Bool)

(assert (= bs!1823152 (and d!2145637 d!2145495)))

(assert (=> bs!1823152 (= lambda!385335 lambda!385320)))

(declare-fun bs!1823153 () Bool)

(assert (= bs!1823153 (and d!2145637 d!2144955)))

(assert (=> bs!1823153 (= lambda!385335 lambda!385226)))

(declare-fun bs!1823154 () Bool)

(assert (= bs!1823154 (and d!2145637 d!2144971)))

(assert (=> bs!1823154 (= lambda!385335 lambda!385233)))

(declare-fun bs!1823155 () Bool)

(assert (= bs!1823155 (and d!2145637 d!2145531)))

(assert (=> bs!1823155 (= lambda!385335 lambda!385322)))

(declare-fun bs!1823156 () Bool)

(assert (= bs!1823156 (and d!2145637 d!2144757)))

(assert (=> bs!1823156 (= lambda!385335 lambda!385162)))

(declare-fun bs!1823157 () Bool)

(assert (= bs!1823157 (and d!2145637 d!2145537)))

(assert (=> bs!1823157 (= lambda!385335 lambda!385324)))

(declare-fun bs!1823158 () Bool)

(assert (= bs!1823158 (and d!2145637 d!2144867)))

(assert (=> bs!1823158 (= lambda!385335 lambda!385209)))

(declare-fun bs!1823159 () Bool)

(assert (= bs!1823159 (and d!2145637 d!2145635)))

(assert (=> bs!1823159 (= lambda!385335 lambda!385334)))

(declare-fun bs!1823160 () Bool)

(assert (= bs!1823160 (and d!2145637 b!6820964)))

(assert (=> bs!1823160 (= lambda!385335 lambda!385153)))

(declare-fun bs!1823161 () Bool)

(assert (= bs!1823161 (and d!2145637 d!2145463)))

(assert (=> bs!1823161 (= lambda!385335 lambda!385317)))

(declare-fun bs!1823162 () Bool)

(assert (= bs!1823162 (and d!2145637 d!2144969)))

(assert (=> bs!1823162 (= lambda!385335 lambda!385230)))

(declare-fun bs!1823163 () Bool)

(assert (= bs!1823163 (and d!2145637 d!2144881)))

(assert (=> bs!1823163 (= lambda!385335 lambda!385217)))

(declare-fun bs!1823164 () Bool)

(assert (= bs!1823164 (and d!2145637 d!2144963)))

(assert (=> bs!1823164 (= lambda!385335 lambda!385227)))

(declare-fun lt!2451605 () List!66204)

(assert (=> d!2145637 (forall!15825 lt!2451605 lambda!385335)))

(declare-fun e!4116318 () List!66204)

(assert (=> d!2145637 (= lt!2451605 e!4116318)))

(declare-fun c!1269921 () Bool)

(assert (=> d!2145637 (= c!1269921 ((_ is Cons!66081) lt!2451326))))

(assert (=> d!2145637 (= (unfocusZipperList!2056 lt!2451326) lt!2451605)))

(declare-fun b!6823061 () Bool)

(assert (=> b!6823061 (= e!4116318 (Cons!66080 (generalisedConcat!2232 (exprs!6519 (h!72529 lt!2451326))) (unfocusZipperList!2056 (t!379942 lt!2451326))))))

(declare-fun b!6823062 () Bool)

(assert (=> b!6823062 (= e!4116318 Nil!66080)))

(assert (= (and d!2145637 c!1269921) b!6823061))

(assert (= (and d!2145637 (not c!1269921)) b!6823062))

(declare-fun m!7568834 () Bool)

(assert (=> d!2145637 m!7568834))

(declare-fun m!7568836 () Bool)

(assert (=> b!6823061 m!7568836))

(declare-fun m!7568838 () Bool)

(assert (=> b!6823061 m!7568838))

(assert (=> d!2144879 d!2145637))

(declare-fun b!6823064 () Bool)

(declare-fun e!4116321 () (InoxSet Context!12038))

(declare-fun e!4116319 () (InoxSet Context!12038))

(assert (=> b!6823064 (= e!4116321 e!4116319)))

(declare-fun c!1269923 () Bool)

(assert (=> b!6823064 (= c!1269923 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451338))))))))

(declare-fun b!6823065 () Bool)

(assert (=> b!6823065 (= e!4116319 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823066 () Bool)

(declare-fun call!620995 () (InoxSet Context!12038))

(assert (=> b!6823066 (= e!4116319 call!620995)))

(declare-fun b!6823067 () Bool)

(declare-fun e!4116320 () Bool)

(assert (=> b!6823067 (= e!4116320 (nullable!6612 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451338)))))))))

(declare-fun bm!620990 () Bool)

(assert (=> bm!620990 (= call!620995 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451338))))) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451338)))))) (h!72530 s!2326)))))

(declare-fun b!6823063 () Bool)

(assert (=> b!6823063 (= e!4116321 ((_ map or) call!620995 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451338)))))) (h!72530 s!2326))))))

(declare-fun d!2145639 () Bool)

(declare-fun c!1269922 () Bool)

(assert (=> d!2145639 (= c!1269922 e!4116320)))

(declare-fun res!2786759 () Bool)

(assert (=> d!2145639 (=> (not res!2786759) (not e!4116320))))

(assert (=> d!2145639 (= res!2786759 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451338))))))))

(assert (=> d!2145639 (= (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 lt!2451338))) (h!72530 s!2326)) e!4116321)))

(assert (= (and d!2145639 res!2786759) b!6823067))

(assert (= (and d!2145639 c!1269922) b!6823063))

(assert (= (and d!2145639 (not c!1269922)) b!6823064))

(assert (= (and b!6823064 c!1269923) b!6823066))

(assert (= (and b!6823064 (not c!1269923)) b!6823065))

(assert (= (or b!6823063 b!6823066) bm!620990))

(declare-fun m!7568840 () Bool)

(assert (=> b!6823067 m!7568840))

(declare-fun m!7568842 () Bool)

(assert (=> bm!620990 m!7568842))

(declare-fun m!7568844 () Bool)

(assert (=> b!6823063 m!7568844))

(assert (=> b!6821649 d!2145639))

(assert (=> b!6821512 d!2145455))

(assert (=> b!6821776 d!2145457))

(declare-fun b!6823071 () Bool)

(declare-fun e!4116322 () Bool)

(declare-fun lt!2451606 () List!66206)

(assert (=> b!6823071 (= e!4116322 (or (not (= (_2!36913 (get!23022 lt!2451502)) Nil!66082)) (= lt!2451606 (_1!36913 (get!23022 lt!2451502)))))))

(declare-fun b!6823070 () Bool)

(declare-fun res!2786760 () Bool)

(assert (=> b!6823070 (=> (not res!2786760) (not e!4116322))))

(assert (=> b!6823070 (= res!2786760 (= (size!40690 lt!2451606) (+ (size!40690 (_1!36913 (get!23022 lt!2451502))) (size!40690 (_2!36913 (get!23022 lt!2451502))))))))

(declare-fun b!6823068 () Bool)

(declare-fun e!4116323 () List!66206)

(assert (=> b!6823068 (= e!4116323 (_2!36913 (get!23022 lt!2451502)))))

(declare-fun b!6823069 () Bool)

(assert (=> b!6823069 (= e!4116323 (Cons!66082 (h!72530 (_1!36913 (get!23022 lt!2451502))) (++!14817 (t!379943 (_1!36913 (get!23022 lt!2451502))) (_2!36913 (get!23022 lt!2451502)))))))

(declare-fun d!2145641 () Bool)

(assert (=> d!2145641 e!4116322))

(declare-fun res!2786761 () Bool)

(assert (=> d!2145641 (=> (not res!2786761) (not e!4116322))))

(assert (=> d!2145641 (= res!2786761 (= (content!12935 lt!2451606) ((_ map or) (content!12935 (_1!36913 (get!23022 lt!2451502))) (content!12935 (_2!36913 (get!23022 lt!2451502))))))))

(assert (=> d!2145641 (= lt!2451606 e!4116323)))

(declare-fun c!1269924 () Bool)

(assert (=> d!2145641 (= c!1269924 ((_ is Nil!66082) (_1!36913 (get!23022 lt!2451502))))))

(assert (=> d!2145641 (= (++!14817 (_1!36913 (get!23022 lt!2451502)) (_2!36913 (get!23022 lt!2451502))) lt!2451606)))

(assert (= (and d!2145641 c!1269924) b!6823068))

(assert (= (and d!2145641 (not c!1269924)) b!6823069))

(assert (= (and d!2145641 res!2786761) b!6823070))

(assert (= (and b!6823070 res!2786760) b!6823071))

(declare-fun m!7568846 () Bool)

(assert (=> b!6823070 m!7568846))

(declare-fun m!7568848 () Bool)

(assert (=> b!6823070 m!7568848))

(declare-fun m!7568850 () Bool)

(assert (=> b!6823070 m!7568850))

(declare-fun m!7568852 () Bool)

(assert (=> b!6823069 m!7568852))

(declare-fun m!7568854 () Bool)

(assert (=> d!2145641 m!7568854))

(declare-fun m!7568856 () Bool)

(assert (=> d!2145641 m!7568856))

(declare-fun m!7568858 () Bool)

(assert (=> d!2145641 m!7568858))

(assert (=> b!6821871 d!2145641))

(declare-fun d!2145643 () Bool)

(assert (=> d!2145643 (= (get!23022 lt!2451502) (v!52731 lt!2451502))))

(assert (=> b!6821871 d!2145643))

(assert (=> d!2144959 d!2145599))

(assert (=> d!2144959 d!2145549))

(declare-fun b!6823072 () Bool)

(declare-fun e!4116329 () Bool)

(assert (=> b!6823072 (= e!4116329 (not (= (head!13677 (_2!36913 (get!23022 lt!2451502))) (c!1269331 r!7292))))))

(declare-fun b!6823073 () Bool)

(declare-fun e!4116325 () Bool)

(assert (=> b!6823073 (= e!4116325 (nullable!6612 r!7292))))

(declare-fun b!6823074 () Bool)

(declare-fun res!2786766 () Bool)

(declare-fun e!4116328 () Bool)

(assert (=> b!6823074 (=> res!2786766 e!4116328)))

(declare-fun e!4116324 () Bool)

(assert (=> b!6823074 (= res!2786766 e!4116324)))

(declare-fun res!2786764 () Bool)

(assert (=> b!6823074 (=> (not res!2786764) (not e!4116324))))

(declare-fun lt!2451607 () Bool)

(assert (=> b!6823074 (= res!2786764 lt!2451607)))

(declare-fun b!6823075 () Bool)

(declare-fun e!4116330 () Bool)

(declare-fun call!620996 () Bool)

(assert (=> b!6823075 (= e!4116330 (= lt!2451607 call!620996))))

(declare-fun b!6823076 () Bool)

(declare-fun e!4116326 () Bool)

(assert (=> b!6823076 (= e!4116326 e!4116329)))

(declare-fun res!2786768 () Bool)

(assert (=> b!6823076 (=> res!2786768 e!4116329)))

(assert (=> b!6823076 (= res!2786768 call!620996)))

(declare-fun b!6823077 () Bool)

(assert (=> b!6823077 (= e!4116325 (matchR!8818 (derivativeStep!5297 r!7292 (head!13677 (_2!36913 (get!23022 lt!2451502)))) (tail!12762 (_2!36913 (get!23022 lt!2451502)))))))

(declare-fun b!6823078 () Bool)

(assert (=> b!6823078 (= e!4116328 e!4116326)))

(declare-fun res!2786763 () Bool)

(assert (=> b!6823078 (=> (not res!2786763) (not e!4116326))))

(assert (=> b!6823078 (= res!2786763 (not lt!2451607))))

(declare-fun b!6823079 () Bool)

(declare-fun e!4116327 () Bool)

(assert (=> b!6823079 (= e!4116330 e!4116327)))

(declare-fun c!1269926 () Bool)

(assert (=> b!6823079 (= c!1269926 ((_ is EmptyLang!16635) r!7292))))

(declare-fun d!2145645 () Bool)

(assert (=> d!2145645 e!4116330))

(declare-fun c!1269925 () Bool)

(assert (=> d!2145645 (= c!1269925 ((_ is EmptyExpr!16635) r!7292))))

(assert (=> d!2145645 (= lt!2451607 e!4116325)))

(declare-fun c!1269927 () Bool)

(assert (=> d!2145645 (= c!1269927 (isEmpty!38470 (_2!36913 (get!23022 lt!2451502))))))

(assert (=> d!2145645 (validRegex!8371 r!7292)))

(assert (=> d!2145645 (= (matchR!8818 r!7292 (_2!36913 (get!23022 lt!2451502))) lt!2451607)))

(declare-fun b!6823080 () Bool)

(declare-fun res!2786762 () Bool)

(assert (=> b!6823080 (=> (not res!2786762) (not e!4116324))))

(assert (=> b!6823080 (= res!2786762 (isEmpty!38470 (tail!12762 (_2!36913 (get!23022 lt!2451502)))))))

(declare-fun b!6823081 () Bool)

(declare-fun res!2786765 () Bool)

(assert (=> b!6823081 (=> (not res!2786765) (not e!4116324))))

(assert (=> b!6823081 (= res!2786765 (not call!620996))))

(declare-fun bm!620991 () Bool)

(assert (=> bm!620991 (= call!620996 (isEmpty!38470 (_2!36913 (get!23022 lt!2451502))))))

(declare-fun b!6823082 () Bool)

(assert (=> b!6823082 (= e!4116324 (= (head!13677 (_2!36913 (get!23022 lt!2451502))) (c!1269331 r!7292)))))

(declare-fun b!6823083 () Bool)

(assert (=> b!6823083 (= e!4116327 (not lt!2451607))))

(declare-fun b!6823084 () Bool)

(declare-fun res!2786769 () Bool)

(assert (=> b!6823084 (=> res!2786769 e!4116328)))

(assert (=> b!6823084 (= res!2786769 (not ((_ is ElementMatch!16635) r!7292)))))

(assert (=> b!6823084 (= e!4116327 e!4116328)))

(declare-fun b!6823085 () Bool)

(declare-fun res!2786767 () Bool)

(assert (=> b!6823085 (=> res!2786767 e!4116329)))

(assert (=> b!6823085 (= res!2786767 (not (isEmpty!38470 (tail!12762 (_2!36913 (get!23022 lt!2451502))))))))

(assert (= (and d!2145645 c!1269927) b!6823073))

(assert (= (and d!2145645 (not c!1269927)) b!6823077))

(assert (= (and d!2145645 c!1269925) b!6823075))

(assert (= (and d!2145645 (not c!1269925)) b!6823079))

(assert (= (and b!6823079 c!1269926) b!6823083))

(assert (= (and b!6823079 (not c!1269926)) b!6823084))

(assert (= (and b!6823084 (not res!2786769)) b!6823074))

(assert (= (and b!6823074 res!2786764) b!6823081))

(assert (= (and b!6823081 res!2786765) b!6823080))

(assert (= (and b!6823080 res!2786762) b!6823082))

(assert (= (and b!6823074 (not res!2786766)) b!6823078))

(assert (= (and b!6823078 res!2786763) b!6823076))

(assert (= (and b!6823076 (not res!2786768)) b!6823085))

(assert (= (and b!6823085 (not res!2786767)) b!6823072))

(assert (= (or b!6823075 b!6823081 b!6823076) bm!620991))

(declare-fun m!7568860 () Bool)

(assert (=> d!2145645 m!7568860))

(assert (=> d!2145645 m!7566474))

(declare-fun m!7568862 () Bool)

(assert (=> b!6823085 m!7568862))

(assert (=> b!6823085 m!7568862))

(declare-fun m!7568864 () Bool)

(assert (=> b!6823085 m!7568864))

(declare-fun m!7568866 () Bool)

(assert (=> b!6823072 m!7568866))

(assert (=> b!6823077 m!7568866))

(assert (=> b!6823077 m!7568866))

(declare-fun m!7568868 () Bool)

(assert (=> b!6823077 m!7568868))

(assert (=> b!6823077 m!7568862))

(assert (=> b!6823077 m!7568868))

(assert (=> b!6823077 m!7568862))

(declare-fun m!7568870 () Bool)

(assert (=> b!6823077 m!7568870))

(assert (=> b!6823073 m!7567268))

(assert (=> b!6823082 m!7568866))

(assert (=> b!6823080 m!7568862))

(assert (=> b!6823080 m!7568862))

(assert (=> b!6823080 m!7568864))

(assert (=> bm!620991 m!7568860))

(assert (=> b!6821875 d!2145645))

(assert (=> b!6821875 d!2145643))

(declare-fun b!6823089 () Bool)

(declare-fun e!4116331 () Bool)

(declare-fun lt!2451608 () List!66206)

(assert (=> b!6823089 (= e!4116331 (or (not (= (_2!36913 (get!23022 lt!2451456)) Nil!66082)) (= lt!2451608 (_1!36913 (get!23022 lt!2451456)))))))

(declare-fun b!6823088 () Bool)

(declare-fun res!2786770 () Bool)

(assert (=> b!6823088 (=> (not res!2786770) (not e!4116331))))

(assert (=> b!6823088 (= res!2786770 (= (size!40690 lt!2451608) (+ (size!40690 (_1!36913 (get!23022 lt!2451456))) (size!40690 (_2!36913 (get!23022 lt!2451456))))))))

(declare-fun b!6823086 () Bool)

(declare-fun e!4116332 () List!66206)

(assert (=> b!6823086 (= e!4116332 (_2!36913 (get!23022 lt!2451456)))))

(declare-fun b!6823087 () Bool)

(assert (=> b!6823087 (= e!4116332 (Cons!66082 (h!72530 (_1!36913 (get!23022 lt!2451456))) (++!14817 (t!379943 (_1!36913 (get!23022 lt!2451456))) (_2!36913 (get!23022 lt!2451456)))))))

(declare-fun d!2145647 () Bool)

(assert (=> d!2145647 e!4116331))

(declare-fun res!2786771 () Bool)

(assert (=> d!2145647 (=> (not res!2786771) (not e!4116331))))

(assert (=> d!2145647 (= res!2786771 (= (content!12935 lt!2451608) ((_ map or) (content!12935 (_1!36913 (get!23022 lt!2451456))) (content!12935 (_2!36913 (get!23022 lt!2451456))))))))

(assert (=> d!2145647 (= lt!2451608 e!4116332)))

(declare-fun c!1269928 () Bool)

(assert (=> d!2145647 (= c!1269928 ((_ is Nil!66082) (_1!36913 (get!23022 lt!2451456))))))

(assert (=> d!2145647 (= (++!14817 (_1!36913 (get!23022 lt!2451456)) (_2!36913 (get!23022 lt!2451456))) lt!2451608)))

(assert (= (and d!2145647 c!1269928) b!6823086))

(assert (= (and d!2145647 (not c!1269928)) b!6823087))

(assert (= (and d!2145647 res!2786771) b!6823088))

(assert (= (and b!6823088 res!2786770) b!6823089))

(declare-fun m!7568872 () Bool)

(assert (=> b!6823088 m!7568872))

(declare-fun m!7568874 () Bool)

(assert (=> b!6823088 m!7568874))

(declare-fun m!7568876 () Bool)

(assert (=> b!6823088 m!7568876))

(declare-fun m!7568878 () Bool)

(assert (=> b!6823087 m!7568878))

(declare-fun m!7568880 () Bool)

(assert (=> d!2145647 m!7568880))

(declare-fun m!7568882 () Bool)

(assert (=> d!2145647 m!7568882))

(declare-fun m!7568884 () Bool)

(assert (=> d!2145647 m!7568884))

(assert (=> b!6821733 d!2145647))

(assert (=> b!6821733 d!2145485))

(assert (=> b!6821763 d!2145425))

(assert (=> b!6821763 d!2145427))

(declare-fun d!2145649 () Bool)

(assert (=> d!2145649 (= (map!15113 lt!2451330 lambda!385253) (choose!50873 lt!2451330 lambda!385253))))

(declare-fun bs!1823165 () Bool)

(assert (= bs!1823165 d!2145649))

(declare-fun m!7568886 () Bool)

(assert (=> bs!1823165 m!7568886))

(assert (=> d!2144999 d!2145649))

(declare-fun d!2145651 () Bool)

(assert (=> d!2145651 (= (isEmpty!38470 lt!2451319) ((_ is Nil!66082) lt!2451319))))

(assert (=> d!2144967 d!2145651))

(declare-fun bs!1823166 () Bool)

(declare-fun d!2145653 () Bool)

(assert (= bs!1823166 (and d!2145653 d!2145449)))

(declare-fun lambda!385336 () Int)

(assert (=> bs!1823166 (= lambda!385336 lambda!385313)))

(declare-fun bs!1823167 () Bool)

(assert (= bs!1823167 (and d!2145653 d!2145465)))

(assert (=> bs!1823167 (= lambda!385336 lambda!385318)))

(declare-fun bs!1823168 () Bool)

(assert (= bs!1823168 (and d!2145653 d!2145475)))

(assert (=> bs!1823168 (= lambda!385336 lambda!385319)))

(assert (=> d!2145653 (= (nullableZipper!2340 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326))) (exists!2751 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) lambda!385336))))

(declare-fun bs!1823169 () Bool)

(assert (= bs!1823169 d!2145653))

(assert (=> bs!1823169 m!7566598))

(declare-fun m!7568888 () Bool)

(assert (=> bs!1823169 m!7568888))

(assert (=> b!6821626 d!2145653))

(declare-fun d!2145655 () Bool)

(assert (=> d!2145655 (= (nullable!6612 (h!72528 (exprs!6519 lt!2451314))) (nullableFct!2510 (h!72528 (exprs!6519 lt!2451314))))))

(declare-fun bs!1823170 () Bool)

(assert (= bs!1823170 d!2145655))

(declare-fun m!7568890 () Bool)

(assert (=> bs!1823170 m!7568890))

(assert (=> b!6821332 d!2145655))

(declare-fun d!2145657 () Bool)

(assert (=> d!2145657 (= (nullable!6612 (h!72528 (exprs!6519 lt!2451302))) (nullableFct!2510 (h!72528 (exprs!6519 lt!2451302))))))

(declare-fun bs!1823171 () Bool)

(assert (= bs!1823171 d!2145657))

(declare-fun m!7568892 () Bool)

(assert (=> bs!1823171 m!7568892))

(assert (=> b!6821327 d!2145657))

(assert (=> bm!620803 d!2144983))

(declare-fun c!1269931 () Bool)

(declare-fun call!621000 () List!66204)

(declare-fun bm!620992 () Bool)

(declare-fun c!1269929 () Bool)

(assert (=> bm!620992 (= call!621000 ($colon$colon!2442 (exprs!6519 (ite c!1269534 lt!2451314 (Context!12039 call!620802))) (ite (or c!1269929 c!1269931) (regTwo!33782 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))) (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292))))))))

(declare-fun b!6823090 () Bool)

(declare-fun e!4116333 () (InoxSet Context!12038))

(declare-fun call!621002 () (InoxSet Context!12038))

(declare-fun call!620998 () (InoxSet Context!12038))

(assert (=> b!6823090 (= e!4116333 ((_ map or) call!621002 call!620998))))

(declare-fun b!6823091 () Bool)

(declare-fun e!4116337 () (InoxSet Context!12038))

(assert (=> b!6823091 (= e!4116333 e!4116337)))

(assert (=> b!6823091 (= c!1269931 ((_ is Concat!25480) (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))))))

(declare-fun bm!620993 () Bool)

(declare-fun call!621001 () List!66204)

(assert (=> bm!620993 (= call!621001 call!621000)))

(declare-fun b!6823092 () Bool)

(declare-fun e!4116336 () (InoxSet Context!12038))

(declare-fun call!620997 () (InoxSet Context!12038))

(assert (=> b!6823092 (= e!4116336 call!620997)))

(declare-fun e!4116334 () (InoxSet Context!12038))

(declare-fun b!6823093 () Bool)

(assert (=> b!6823093 (= e!4116334 (store ((as const (Array Context!12038 Bool)) false) (ite c!1269534 lt!2451314 (Context!12039 call!620802)) true))))

(declare-fun d!2145659 () Bool)

(declare-fun c!1269933 () Bool)

(assert (=> d!2145659 (= c!1269933 (and ((_ is ElementMatch!16635) (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))) (= (c!1269331 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))) (h!72530 s!2326))))))

(assert (=> d!2145659 (= (derivationStepZipperDown!1863 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292))) (ite c!1269534 lt!2451314 (Context!12039 call!620802)) (h!72530 s!2326)) e!4116334)))

(declare-fun bm!620994 () Bool)

(assert (=> bm!620994 (= call!620997 call!620998)))

(declare-fun b!6823094 () Bool)

(declare-fun e!4116338 () (InoxSet Context!12038))

(assert (=> b!6823094 (= e!4116334 e!4116338)))

(declare-fun c!1269930 () Bool)

(assert (=> b!6823094 (= c!1269930 ((_ is Union!16635) (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))))))

(declare-fun b!6823095 () Bool)

(declare-fun c!1269932 () Bool)

(assert (=> b!6823095 (= c!1269932 ((_ is Star!16635) (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))))))

(assert (=> b!6823095 (= e!4116337 e!4116336)))

(declare-fun bm!620995 () Bool)

(assert (=> bm!620995 (= call!621002 (derivationStepZipperDown!1863 (ite c!1269930 (regOne!33783 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))) (regOne!33782 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292))))) (ite c!1269930 (ite c!1269534 lt!2451314 (Context!12039 call!620802)) (Context!12039 call!621000)) (h!72530 s!2326)))))

(declare-fun b!6823096 () Bool)

(declare-fun e!4116335 () Bool)

(assert (=> b!6823096 (= c!1269929 e!4116335)))

(declare-fun res!2786772 () Bool)

(assert (=> b!6823096 (=> (not res!2786772) (not e!4116335))))

(assert (=> b!6823096 (= res!2786772 ((_ is Concat!25480) (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))))))

(assert (=> b!6823096 (= e!4116338 e!4116333)))

(declare-fun bm!620996 () Bool)

(declare-fun call!620999 () (InoxSet Context!12038))

(assert (=> bm!620996 (= call!620998 call!620999)))

(declare-fun bm!620997 () Bool)

(assert (=> bm!620997 (= call!620999 (derivationStepZipperDown!1863 (ite c!1269930 (regTwo!33783 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))) (ite c!1269929 (regTwo!33782 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))) (ite c!1269931 (regOne!33782 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292)))) (reg!16964 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292))))))) (ite (or c!1269930 c!1269929) (ite c!1269534 lt!2451314 (Context!12039 call!620802)) (Context!12039 call!621001)) (h!72530 s!2326)))))

(declare-fun b!6823097 () Bool)

(assert (=> b!6823097 (= e!4116336 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823098 () Bool)

(assert (=> b!6823098 (= e!4116338 ((_ map or) call!621002 call!620999))))

(declare-fun b!6823099 () Bool)

(assert (=> b!6823099 (= e!4116335 (nullable!6612 (regOne!33782 (ite c!1269534 (regOne!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292))))))))

(declare-fun b!6823100 () Bool)

(assert (=> b!6823100 (= e!4116337 call!620997)))

(assert (= (and d!2145659 c!1269933) b!6823093))

(assert (= (and d!2145659 (not c!1269933)) b!6823094))

(assert (= (and b!6823094 c!1269930) b!6823098))

(assert (= (and b!6823094 (not c!1269930)) b!6823096))

(assert (= (and b!6823096 res!2786772) b!6823099))

(assert (= (and b!6823096 c!1269929) b!6823090))

(assert (= (and b!6823096 (not c!1269929)) b!6823091))

(assert (= (and b!6823091 c!1269931) b!6823100))

(assert (= (and b!6823091 (not c!1269931)) b!6823095))

(assert (= (and b!6823095 c!1269932) b!6823092))

(assert (= (and b!6823095 (not c!1269932)) b!6823097))

(assert (= (or b!6823100 b!6823092) bm!620993))

(assert (= (or b!6823100 b!6823092) bm!620994))

(assert (= (or b!6823090 bm!620993) bm!620992))

(assert (= (or b!6823090 bm!620994) bm!620996))

(assert (= (or b!6823098 bm!620996) bm!620997))

(assert (= (or b!6823098 b!6823090) bm!620995))

(declare-fun m!7568894 () Bool)

(assert (=> bm!620992 m!7568894))

(declare-fun m!7568896 () Bool)

(assert (=> bm!620995 m!7568896))

(declare-fun m!7568898 () Bool)

(assert (=> bm!620997 m!7568898))

(declare-fun m!7568900 () Bool)

(assert (=> b!6823099 m!7568900))

(declare-fun m!7568902 () Bool)

(assert (=> b!6823093 m!7568902))

(assert (=> bm!620797 d!2145659))

(declare-fun b!6823102 () Bool)

(declare-fun e!4116341 () (InoxSet Context!12038))

(declare-fun e!4116339 () (InoxSet Context!12038))

(assert (=> b!6823102 (= e!4116341 e!4116339)))

(declare-fun c!1269935 () Bool)

(assert (=> b!6823102 (= c!1269935 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))))))))

(declare-fun b!6823103 () Bool)

(assert (=> b!6823103 (= e!4116339 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823104 () Bool)

(declare-fun call!621003 () (InoxSet Context!12038))

(assert (=> b!6823104 (= e!4116339 call!621003)))

(declare-fun b!6823105 () Bool)

(declare-fun e!4116340 () Bool)

(assert (=> b!6823105 (= e!4116340 (nullable!6612 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343))))))))))

(declare-fun bm!620998 () Bool)

(assert (=> bm!620998 (= call!621003 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))))) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343))))))) (h!72530 s!2326)))))

(declare-fun b!6823101 () Bool)

(assert (=> b!6823101 (= e!4116341 ((_ map or) call!621003 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343))))))) (h!72530 s!2326))))))

(declare-fun d!2145661 () Bool)

(declare-fun c!1269934 () Bool)

(assert (=> d!2145661 (= c!1269934 e!4116340)))

(declare-fun res!2786773 () Bool)

(assert (=> d!2145661 (=> (not res!2786773) (not e!4116340))))

(assert (=> d!2145661 (= res!2786773 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))))))))

(assert (=> d!2145661 (= (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))) (h!72530 s!2326)) e!4116341)))

(assert (= (and d!2145661 res!2786773) b!6823105))

(assert (= (and d!2145661 c!1269934) b!6823101))

(assert (= (and d!2145661 (not c!1269934)) b!6823102))

(assert (= (and b!6823102 c!1269935) b!6823104))

(assert (= (and b!6823102 (not c!1269935)) b!6823103))

(assert (= (or b!6823101 b!6823104) bm!620998))

(declare-fun m!7568904 () Bool)

(assert (=> b!6823105 m!7568904))

(declare-fun m!7568906 () Bool)

(assert (=> bm!620998 m!7568906))

(declare-fun m!7568908 () Bool)

(assert (=> b!6823101 m!7568908))

(assert (=> b!6821573 d!2145661))

(declare-fun d!2145663 () Bool)

(assert (=> d!2145663 (= (flatMap!2116 z!1189 lambda!385183) (choose!50858 z!1189 lambda!385183))))

(declare-fun bs!1823172 () Bool)

(assert (= bs!1823172 d!2145663))

(declare-fun m!7568910 () Bool)

(assert (=> bs!1823172 m!7568910))

(assert (=> d!2144793 d!2145663))

(declare-fun b!6823107 () Bool)

(declare-fun e!4116344 () (InoxSet Context!12038))

(declare-fun e!4116342 () (InoxSet Context!12038))

(assert (=> b!6823107 (= e!4116344 e!4116342)))

(declare-fun c!1269937 () Bool)

(assert (=> b!6823107 (= c!1269937 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451314))))))))

(declare-fun b!6823108 () Bool)

(assert (=> b!6823108 (= e!4116342 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823109 () Bool)

(declare-fun call!621004 () (InoxSet Context!12038))

(assert (=> b!6823109 (= e!4116342 call!621004)))

(declare-fun b!6823110 () Bool)

(declare-fun e!4116343 () Bool)

(assert (=> b!6823110 (= e!4116343 (nullable!6612 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451314)))))))))

(declare-fun bm!620999 () Bool)

(assert (=> bm!620999 (= call!621004 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451314))))) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451314)))))) (h!72530 s!2326)))))

(declare-fun b!6823106 () Bool)

(assert (=> b!6823106 (= e!4116344 ((_ map or) call!621004 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451314)))))) (h!72530 s!2326))))))

(declare-fun d!2145665 () Bool)

(declare-fun c!1269936 () Bool)

(assert (=> d!2145665 (= c!1269936 e!4116343)))

(declare-fun res!2786774 () Bool)

(assert (=> d!2145665 (=> (not res!2786774) (not e!4116343))))

(assert (=> d!2145665 (= res!2786774 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451314))))))))

(assert (=> d!2145665 (= (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 lt!2451314))) (h!72530 s!2326)) e!4116344)))

(assert (= (and d!2145665 res!2786774) b!6823110))

(assert (= (and d!2145665 c!1269936) b!6823106))

(assert (= (and d!2145665 (not c!1269936)) b!6823107))

(assert (= (and b!6823107 c!1269937) b!6823109))

(assert (= (and b!6823107 (not c!1269937)) b!6823108))

(assert (= (or b!6823106 b!6823109) bm!620999))

(declare-fun m!7568912 () Bool)

(assert (=> b!6823110 m!7568912))

(declare-fun m!7568914 () Bool)

(assert (=> bm!620999 m!7568914))

(declare-fun m!7568916 () Bool)

(assert (=> b!6823106 m!7568916))

(assert (=> b!6821328 d!2145665))

(declare-fun b!6823112 () Bool)

(declare-fun e!4116347 () (InoxSet Context!12038))

(declare-fun e!4116345 () (InoxSet Context!12038))

(assert (=> b!6823112 (= e!4116347 e!4116345)))

(declare-fun c!1269939 () Bool)

(assert (=> b!6823112 (= c!1269939 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451302))))))))

(declare-fun b!6823113 () Bool)

(assert (=> b!6823113 (= e!4116345 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823114 () Bool)

(declare-fun call!621005 () (InoxSet Context!12038))

(assert (=> b!6823114 (= e!4116345 call!621005)))

(declare-fun b!6823115 () Bool)

(declare-fun e!4116346 () Bool)

(assert (=> b!6823115 (= e!4116346 (nullable!6612 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451302)))))))))

(declare-fun bm!621000 () Bool)

(assert (=> bm!621000 (= call!621005 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451302))))) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451302)))))) (h!72530 s!2326)))))

(declare-fun b!6823111 () Bool)

(assert (=> b!6823111 (= e!4116347 ((_ map or) call!621005 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451302)))))) (h!72530 s!2326))))))

(declare-fun d!2145667 () Bool)

(declare-fun c!1269938 () Bool)

(assert (=> d!2145667 (= c!1269938 e!4116346)))

(declare-fun res!2786775 () Bool)

(assert (=> d!2145667 (=> (not res!2786775) (not e!4116346))))

(assert (=> d!2145667 (= res!2786775 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451302))))))))

(assert (=> d!2145667 (= (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 lt!2451302))) (h!72530 s!2326)) e!4116347)))

(assert (= (and d!2145667 res!2786775) b!6823115))

(assert (= (and d!2145667 c!1269938) b!6823111))

(assert (= (and d!2145667 (not c!1269938)) b!6823112))

(assert (= (and b!6823112 c!1269939) b!6823114))

(assert (= (and b!6823112 (not c!1269939)) b!6823113))

(assert (= (or b!6823111 b!6823114) bm!621000))

(declare-fun m!7568918 () Bool)

(assert (=> b!6823115 m!7568918))

(declare-fun m!7568920 () Bool)

(assert (=> bm!621000 m!7568920))

(declare-fun m!7568922 () Bool)

(assert (=> b!6823111 m!7568922))

(assert (=> b!6821323 d!2145667))

(declare-fun d!2145669 () Bool)

(assert (=> d!2145669 true))

(assert (=> d!2145669 true))

(declare-fun res!2786776 () Bool)

(assert (=> d!2145669 (= (choose!50869 lambda!385149) res!2786776)))

(assert (=> d!2144981 d!2145669))

(assert (=> d!2144877 d!2144871))

(declare-fun d!2145671 () Bool)

(assert (=> d!2145671 (= (flatMap!2116 z!1189 lambda!385151) (dynLambda!26402 lambda!385151 (h!72529 zl!343)))))

(assert (=> d!2145671 true))

(declare-fun _$13!4322 () Unit!159961)

(assert (=> d!2145671 (= (choose!50856 z!1189 (h!72529 zl!343) lambda!385151) _$13!4322)))

(declare-fun b_lambda!257355 () Bool)

(assert (=> (not b_lambda!257355) (not d!2145671)))

(declare-fun bs!1823173 () Bool)

(assert (= bs!1823173 d!2145671))

(assert (=> bs!1823173 m!7566570))

(assert (=> bs!1823173 m!7567054))

(assert (=> d!2144877 d!2145671))

(declare-fun b!6823119 () Bool)

(declare-fun e!4116348 () Bool)

(declare-fun lt!2451609 () List!66206)

(assert (=> b!6823119 (= e!4116348 (or (not (= (_2!36913 lt!2451337) Nil!66082)) (= lt!2451609 (t!379943 (_1!36913 lt!2451337)))))))

(declare-fun b!6823118 () Bool)

(declare-fun res!2786777 () Bool)

(assert (=> b!6823118 (=> (not res!2786777) (not e!4116348))))

(assert (=> b!6823118 (= res!2786777 (= (size!40690 lt!2451609) (+ (size!40690 (t!379943 (_1!36913 lt!2451337))) (size!40690 (_2!36913 lt!2451337)))))))

(declare-fun b!6823116 () Bool)

(declare-fun e!4116349 () List!66206)

(assert (=> b!6823116 (= e!4116349 (_2!36913 lt!2451337))))

(declare-fun b!6823117 () Bool)

(assert (=> b!6823117 (= e!4116349 (Cons!66082 (h!72530 (t!379943 (_1!36913 lt!2451337))) (++!14817 (t!379943 (t!379943 (_1!36913 lt!2451337))) (_2!36913 lt!2451337))))))

(declare-fun d!2145673 () Bool)

(assert (=> d!2145673 e!4116348))

(declare-fun res!2786778 () Bool)

(assert (=> d!2145673 (=> (not res!2786778) (not e!4116348))))

(assert (=> d!2145673 (= res!2786778 (= (content!12935 lt!2451609) ((_ map or) (content!12935 (t!379943 (_1!36913 lt!2451337))) (content!12935 (_2!36913 lt!2451337)))))))

(assert (=> d!2145673 (= lt!2451609 e!4116349)))

(declare-fun c!1269940 () Bool)

(assert (=> d!2145673 (= c!1269940 ((_ is Nil!66082) (t!379943 (_1!36913 lt!2451337))))))

(assert (=> d!2145673 (= (++!14817 (t!379943 (_1!36913 lt!2451337)) (_2!36913 lt!2451337)) lt!2451609)))

(assert (= (and d!2145673 c!1269940) b!6823116))

(assert (= (and d!2145673 (not c!1269940)) b!6823117))

(assert (= (and d!2145673 res!2786778) b!6823118))

(assert (= (and b!6823118 res!2786777) b!6823119))

(declare-fun m!7568924 () Bool)

(assert (=> b!6823118 m!7568924))

(declare-fun m!7568926 () Bool)

(assert (=> b!6823118 m!7568926))

(assert (=> b!6823118 m!7567210))

(declare-fun m!7568928 () Bool)

(assert (=> b!6823117 m!7568928))

(declare-fun m!7568930 () Bool)

(assert (=> d!2145673 m!7568930))

(assert (=> d!2145673 m!7568740))

(assert (=> d!2145673 m!7567218))

(assert (=> b!6821707 d!2145673))

(assert (=> d!2144953 d!2144951))

(assert (=> d!2144953 d!2144949))

(declare-fun d!2145675 () Bool)

(assert (=> d!2145675 (= (matchR!8818 r!7292 s!2326) (matchRSpec!3736 r!7292 s!2326))))

(assert (=> d!2145675 true))

(declare-fun _$88!5661 () Unit!159961)

(assert (=> d!2145675 (= (choose!50860 r!7292 s!2326) _$88!5661)))

(declare-fun bs!1823174 () Bool)

(assert (= bs!1823174 d!2145675))

(assert (=> bs!1823174 m!7566502))

(assert (=> bs!1823174 m!7566500))

(assert (=> d!2144953 d!2145675))

(assert (=> d!2144953 d!2144821))

(assert (=> bm!620777 d!2144983))

(declare-fun d!2145677 () Bool)

(assert (=> d!2145677 (= (isEmpty!38473 (tail!12763 (exprs!6519 (h!72529 zl!343)))) ((_ is Nil!66080) (tail!12763 (exprs!6519 (h!72529 zl!343)))))))

(assert (=> b!6821611 d!2145677))

(declare-fun d!2145679 () Bool)

(assert (=> d!2145679 (= (tail!12763 (exprs!6519 (h!72529 zl!343))) (t!379941 (exprs!6519 (h!72529 zl!343))))))

(assert (=> b!6821611 d!2145679))

(assert (=> d!2144925 d!2144921))

(declare-fun d!2145681 () Bool)

(assert (=> d!2145681 (= (flatMap!2116 lt!2451324 lambda!385151) (dynLambda!26402 lambda!385151 lt!2451338))))

(assert (=> d!2145681 true))

(declare-fun _$13!4323 () Unit!159961)

(assert (=> d!2145681 (= (choose!50856 lt!2451324 lt!2451338 lambda!385151) _$13!4323)))

(declare-fun b_lambda!257357 () Bool)

(assert (=> (not b_lambda!257357) (not d!2145681)))

(declare-fun bs!1823175 () Bool)

(assert (= bs!1823175 d!2145681))

(assert (=> bs!1823175 m!7566506))

(assert (=> bs!1823175 m!7567192))

(assert (=> d!2144925 d!2145681))

(assert (=> bs!1822478 d!2144803))

(declare-fun b!6823120 () Bool)

(declare-fun e!4116355 () Bool)

(assert (=> b!6823120 (= e!4116355 (not (= (head!13677 (tail!12762 s!2326)) (c!1269331 (derivativeStep!5297 lt!2451335 (head!13677 s!2326))))))))

(declare-fun b!6823121 () Bool)

(declare-fun e!4116351 () Bool)

(assert (=> b!6823121 (= e!4116351 (nullable!6612 (derivativeStep!5297 lt!2451335 (head!13677 s!2326))))))

(declare-fun b!6823122 () Bool)

(declare-fun res!2786783 () Bool)

(declare-fun e!4116354 () Bool)

(assert (=> b!6823122 (=> res!2786783 e!4116354)))

(declare-fun e!4116350 () Bool)

(assert (=> b!6823122 (= res!2786783 e!4116350)))

(declare-fun res!2786781 () Bool)

(assert (=> b!6823122 (=> (not res!2786781) (not e!4116350))))

(declare-fun lt!2451610 () Bool)

(assert (=> b!6823122 (= res!2786781 lt!2451610)))

(declare-fun b!6823123 () Bool)

(declare-fun e!4116356 () Bool)

(declare-fun call!621006 () Bool)

(assert (=> b!6823123 (= e!4116356 (= lt!2451610 call!621006))))

(declare-fun b!6823124 () Bool)

(declare-fun e!4116352 () Bool)

(assert (=> b!6823124 (= e!4116352 e!4116355)))

(declare-fun res!2786785 () Bool)

(assert (=> b!6823124 (=> res!2786785 e!4116355)))

(assert (=> b!6823124 (= res!2786785 call!621006)))

(declare-fun b!6823125 () Bool)

(assert (=> b!6823125 (= e!4116351 (matchR!8818 (derivativeStep!5297 (derivativeStep!5297 lt!2451335 (head!13677 s!2326)) (head!13677 (tail!12762 s!2326))) (tail!12762 (tail!12762 s!2326))))))

(declare-fun b!6823126 () Bool)

(assert (=> b!6823126 (= e!4116354 e!4116352)))

(declare-fun res!2786780 () Bool)

(assert (=> b!6823126 (=> (not res!2786780) (not e!4116352))))

(assert (=> b!6823126 (= res!2786780 (not lt!2451610))))

(declare-fun b!6823127 () Bool)

(declare-fun e!4116353 () Bool)

(assert (=> b!6823127 (= e!4116356 e!4116353)))

(declare-fun c!1269942 () Bool)

(assert (=> b!6823127 (= c!1269942 ((_ is EmptyLang!16635) (derivativeStep!5297 lt!2451335 (head!13677 s!2326))))))

(declare-fun d!2145683 () Bool)

(assert (=> d!2145683 e!4116356))

(declare-fun c!1269941 () Bool)

(assert (=> d!2145683 (= c!1269941 ((_ is EmptyExpr!16635) (derivativeStep!5297 lt!2451335 (head!13677 s!2326))))))

(assert (=> d!2145683 (= lt!2451610 e!4116351)))

(declare-fun c!1269943 () Bool)

(assert (=> d!2145683 (= c!1269943 (isEmpty!38470 (tail!12762 s!2326)))))

(assert (=> d!2145683 (validRegex!8371 (derivativeStep!5297 lt!2451335 (head!13677 s!2326)))))

(assert (=> d!2145683 (= (matchR!8818 (derivativeStep!5297 lt!2451335 (head!13677 s!2326)) (tail!12762 s!2326)) lt!2451610)))

(declare-fun b!6823128 () Bool)

(declare-fun res!2786779 () Bool)

(assert (=> b!6823128 (=> (not res!2786779) (not e!4116350))))

(assert (=> b!6823128 (= res!2786779 (isEmpty!38470 (tail!12762 (tail!12762 s!2326))))))

(declare-fun b!6823129 () Bool)

(declare-fun res!2786782 () Bool)

(assert (=> b!6823129 (=> (not res!2786782) (not e!4116350))))

(assert (=> b!6823129 (= res!2786782 (not call!621006))))

(declare-fun bm!621001 () Bool)

(assert (=> bm!621001 (= call!621006 (isEmpty!38470 (tail!12762 s!2326)))))

(declare-fun b!6823130 () Bool)

(assert (=> b!6823130 (= e!4116350 (= (head!13677 (tail!12762 s!2326)) (c!1269331 (derivativeStep!5297 lt!2451335 (head!13677 s!2326)))))))

(declare-fun b!6823131 () Bool)

(assert (=> b!6823131 (= e!4116353 (not lt!2451610))))

(declare-fun b!6823132 () Bool)

(declare-fun res!2786786 () Bool)

(assert (=> b!6823132 (=> res!2786786 e!4116354)))

(assert (=> b!6823132 (= res!2786786 (not ((_ is ElementMatch!16635) (derivativeStep!5297 lt!2451335 (head!13677 s!2326)))))))

(assert (=> b!6823132 (= e!4116353 e!4116354)))

(declare-fun b!6823133 () Bool)

(declare-fun res!2786784 () Bool)

(assert (=> b!6823133 (=> res!2786784 e!4116355)))

(assert (=> b!6823133 (= res!2786784 (not (isEmpty!38470 (tail!12762 (tail!12762 s!2326)))))))

(assert (= (and d!2145683 c!1269943) b!6823121))

(assert (= (and d!2145683 (not c!1269943)) b!6823125))

(assert (= (and d!2145683 c!1269941) b!6823123))

(assert (= (and d!2145683 (not c!1269941)) b!6823127))

(assert (= (and b!6823127 c!1269942) b!6823131))

(assert (= (and b!6823127 (not c!1269942)) b!6823132))

(assert (= (and b!6823132 (not res!2786786)) b!6823122))

(assert (= (and b!6823122 res!2786781) b!6823129))

(assert (= (and b!6823129 res!2786782) b!6823128))

(assert (= (and b!6823128 res!2786779) b!6823130))

(assert (= (and b!6823122 (not res!2786783)) b!6823126))

(assert (= (and b!6823126 res!2786780) b!6823124))

(assert (= (and b!6823124 (not res!2786785)) b!6823133))

(assert (= (and b!6823133 (not res!2786784)) b!6823120))

(assert (= (or b!6823123 b!6823129 b!6823124) bm!621001))

(assert (=> d!2145683 m!7566984))

(assert (=> d!2145683 m!7566986))

(assert (=> d!2145683 m!7566990))

(declare-fun m!7568932 () Bool)

(assert (=> d!2145683 m!7568932))

(assert (=> b!6823133 m!7566984))

(assert (=> b!6823133 m!7568404))

(assert (=> b!6823133 m!7568404))

(assert (=> b!6823133 m!7568718))

(assert (=> b!6823120 m!7566984))

(assert (=> b!6823120 m!7568400))

(assert (=> b!6823125 m!7566984))

(assert (=> b!6823125 m!7568400))

(assert (=> b!6823125 m!7566990))

(assert (=> b!6823125 m!7568400))

(declare-fun m!7568934 () Bool)

(assert (=> b!6823125 m!7568934))

(assert (=> b!6823125 m!7566984))

(assert (=> b!6823125 m!7568404))

(assert (=> b!6823125 m!7568934))

(assert (=> b!6823125 m!7568404))

(declare-fun m!7568936 () Bool)

(assert (=> b!6823125 m!7568936))

(assert (=> b!6823121 m!7566990))

(declare-fun m!7568938 () Bool)

(assert (=> b!6823121 m!7568938))

(assert (=> b!6823130 m!7566984))

(assert (=> b!6823130 m!7568400))

(assert (=> b!6823128 m!7566984))

(assert (=> b!6823128 m!7568404))

(assert (=> b!6823128 m!7568404))

(assert (=> b!6823128 m!7568718))

(assert (=> bm!621001 m!7566984))

(assert (=> bm!621001 m!7566986))

(assert (=> b!6821517 d!2145683))

(declare-fun b!6823134 () Bool)

(declare-fun c!1269945 () Bool)

(assert (=> b!6823134 (= c!1269945 ((_ is Union!16635) lt!2451335))))

(declare-fun e!4116359 () Regex!16635)

(declare-fun e!4116361 () Regex!16635)

(assert (=> b!6823134 (= e!4116359 e!4116361)))

(declare-fun b!6823135 () Bool)

(declare-fun e!4116360 () Regex!16635)

(assert (=> b!6823135 (= e!4116361 e!4116360)))

(declare-fun c!1269944 () Bool)

(assert (=> b!6823135 (= c!1269944 ((_ is Star!16635) lt!2451335))))

(declare-fun b!6823136 () Bool)

(declare-fun e!4116358 () Regex!16635)

(assert (=> b!6823136 (= e!4116358 e!4116359)))

(declare-fun c!1269948 () Bool)

(assert (=> b!6823136 (= c!1269948 ((_ is ElementMatch!16635) lt!2451335))))

(declare-fun bm!621003 () Bool)

(declare-fun call!621009 () Regex!16635)

(declare-fun call!621010 () Regex!16635)

(assert (=> bm!621003 (= call!621009 call!621010)))

(declare-fun b!6823137 () Bool)

(declare-fun e!4116357 () Regex!16635)

(assert (=> b!6823137 (= e!4116357 (Union!16635 (Concat!25480 call!621009 (regTwo!33782 lt!2451335)) EmptyLang!16635))))

(declare-fun call!621008 () Regex!16635)

(declare-fun c!1269947 () Bool)

(declare-fun bm!621004 () Bool)

(assert (=> bm!621004 (= call!621008 (derivativeStep!5297 (ite c!1269945 (regOne!33783 lt!2451335) (ite c!1269944 (reg!16964 lt!2451335) (ite c!1269947 (regTwo!33782 lt!2451335) (regOne!33782 lt!2451335)))) (head!13677 s!2326)))))

(declare-fun call!621007 () Regex!16635)

(declare-fun b!6823138 () Bool)

(assert (=> b!6823138 (= e!4116357 (Union!16635 (Concat!25480 call!621007 (regTwo!33782 lt!2451335)) call!621009))))

(declare-fun b!6823139 () Bool)

(assert (=> b!6823139 (= e!4116360 (Concat!25480 call!621010 lt!2451335))))

(declare-fun b!6823140 () Bool)

(assert (=> b!6823140 (= e!4116359 (ite (= (head!13677 s!2326) (c!1269331 lt!2451335)) EmptyExpr!16635 EmptyLang!16635))))

(declare-fun b!6823141 () Bool)

(assert (=> b!6823141 (= c!1269947 (nullable!6612 (regOne!33782 lt!2451335)))))

(assert (=> b!6823141 (= e!4116360 e!4116357)))

(declare-fun b!6823142 () Bool)

(assert (=> b!6823142 (= e!4116358 EmptyLang!16635)))

(declare-fun bm!621005 () Bool)

(assert (=> bm!621005 (= call!621007 (derivativeStep!5297 (ite c!1269945 (regTwo!33783 lt!2451335) (regOne!33782 lt!2451335)) (head!13677 s!2326)))))

(declare-fun b!6823143 () Bool)

(assert (=> b!6823143 (= e!4116361 (Union!16635 call!621008 call!621007))))

(declare-fun d!2145685 () Bool)

(declare-fun lt!2451611 () Regex!16635)

(assert (=> d!2145685 (validRegex!8371 lt!2451611)))

(assert (=> d!2145685 (= lt!2451611 e!4116358)))

(declare-fun c!1269946 () Bool)

(assert (=> d!2145685 (= c!1269946 (or ((_ is EmptyExpr!16635) lt!2451335) ((_ is EmptyLang!16635) lt!2451335)))))

(assert (=> d!2145685 (validRegex!8371 lt!2451335)))

(assert (=> d!2145685 (= (derivativeStep!5297 lt!2451335 (head!13677 s!2326)) lt!2451611)))

(declare-fun bm!621002 () Bool)

(assert (=> bm!621002 (= call!621010 call!621008)))

(assert (= (and d!2145685 c!1269946) b!6823142))

(assert (= (and d!2145685 (not c!1269946)) b!6823136))

(assert (= (and b!6823136 c!1269948) b!6823140))

(assert (= (and b!6823136 (not c!1269948)) b!6823134))

(assert (= (and b!6823134 c!1269945) b!6823143))

(assert (= (and b!6823134 (not c!1269945)) b!6823135))

(assert (= (and b!6823135 c!1269944) b!6823139))

(assert (= (and b!6823135 (not c!1269944)) b!6823141))

(assert (= (and b!6823141 c!1269947) b!6823138))

(assert (= (and b!6823141 (not c!1269947)) b!6823137))

(assert (= (or b!6823138 b!6823137) bm!621003))

(assert (= (or b!6823139 bm!621003) bm!621002))

(assert (= (or b!6823143 b!6823138) bm!621005))

(assert (= (or b!6823143 bm!621002) bm!621004))

(assert (=> bm!621004 m!7566988))

(declare-fun m!7568940 () Bool)

(assert (=> bm!621004 m!7568940))

(declare-fun m!7568942 () Bool)

(assert (=> b!6823141 m!7568942))

(assert (=> bm!621005 m!7566988))

(declare-fun m!7568944 () Bool)

(assert (=> bm!621005 m!7568944))

(declare-fun m!7568946 () Bool)

(assert (=> d!2145685 m!7568946))

(assert (=> d!2145685 m!7566982))

(assert (=> b!6821517 d!2145685))

(assert (=> b!6821517 d!2145455))

(assert (=> b!6821517 d!2145427))

(declare-fun bs!1823176 () Bool)

(declare-fun d!2145687 () Bool)

(assert (= bs!1823176 (and d!2145687 d!2145563)))

(declare-fun lambda!385337 () Int)

(assert (=> bs!1823176 (= lambda!385337 lambda!385329)))

(declare-fun bs!1823177 () Bool)

(assert (= bs!1823177 (and d!2145687 d!2145529)))

(assert (=> bs!1823177 (= lambda!385337 lambda!385321)))

(declare-fun bs!1823178 () Bool)

(assert (= bs!1823178 (and d!2145687 d!2145535)))

(assert (=> bs!1823178 (= lambda!385337 lambda!385323)))

(declare-fun bs!1823179 () Bool)

(assert (= bs!1823179 (and d!2145687 d!2145417)))

(assert (=> bs!1823179 (= lambda!385337 lambda!385307)))

(declare-fun bs!1823180 () Bool)

(assert (= bs!1823180 (and d!2145687 d!2145495)))

(assert (=> bs!1823180 (= lambda!385337 lambda!385320)))

(declare-fun bs!1823181 () Bool)

(assert (= bs!1823181 (and d!2145687 d!2144955)))

(assert (=> bs!1823181 (= lambda!385337 lambda!385226)))

(declare-fun bs!1823182 () Bool)

(assert (= bs!1823182 (and d!2145687 d!2144971)))

(assert (=> bs!1823182 (= lambda!385337 lambda!385233)))

(declare-fun bs!1823183 () Bool)

(assert (= bs!1823183 (and d!2145687 d!2145531)))

(assert (=> bs!1823183 (= lambda!385337 lambda!385322)))

(declare-fun bs!1823184 () Bool)

(assert (= bs!1823184 (and d!2145687 d!2145537)))

(assert (=> bs!1823184 (= lambda!385337 lambda!385324)))

(declare-fun bs!1823185 () Bool)

(assert (= bs!1823185 (and d!2145687 d!2144867)))

(assert (=> bs!1823185 (= lambda!385337 lambda!385209)))

(declare-fun bs!1823186 () Bool)

(assert (= bs!1823186 (and d!2145687 d!2145635)))

(assert (=> bs!1823186 (= lambda!385337 lambda!385334)))

(declare-fun bs!1823187 () Bool)

(assert (= bs!1823187 (and d!2145687 b!6820964)))

(assert (=> bs!1823187 (= lambda!385337 lambda!385153)))

(declare-fun bs!1823188 () Bool)

(assert (= bs!1823188 (and d!2145687 d!2145463)))

(assert (=> bs!1823188 (= lambda!385337 lambda!385317)))

(declare-fun bs!1823189 () Bool)

(assert (= bs!1823189 (and d!2145687 d!2144969)))

(assert (=> bs!1823189 (= lambda!385337 lambda!385230)))

(declare-fun bs!1823190 () Bool)

(assert (= bs!1823190 (and d!2145687 d!2144881)))

(assert (=> bs!1823190 (= lambda!385337 lambda!385217)))

(declare-fun bs!1823191 () Bool)

(assert (= bs!1823191 (and d!2145687 d!2144963)))

(assert (=> bs!1823191 (= lambda!385337 lambda!385227)))

(declare-fun bs!1823192 () Bool)

(assert (= bs!1823192 (and d!2145687 d!2145637)))

(assert (=> bs!1823192 (= lambda!385337 lambda!385335)))

(declare-fun bs!1823193 () Bool)

(assert (= bs!1823193 (and d!2145687 d!2144757)))

(assert (=> bs!1823193 (= lambda!385337 lambda!385162)))

(declare-fun b!6823144 () Bool)

(declare-fun e!4116366 () Bool)

(declare-fun lt!2451612 () Regex!16635)

(assert (=> b!6823144 (= e!4116366 (= lt!2451612 (head!13678 (t!379941 (unfocusZipperList!2056 zl!343)))))))

(declare-fun e!4116364 () Bool)

(assert (=> d!2145687 e!4116364))

(declare-fun res!2786787 () Bool)

(assert (=> d!2145687 (=> (not res!2786787) (not e!4116364))))

(assert (=> d!2145687 (= res!2786787 (validRegex!8371 lt!2451612))))

(declare-fun e!4116365 () Regex!16635)

(assert (=> d!2145687 (= lt!2451612 e!4116365)))

(declare-fun c!1269949 () Bool)

(declare-fun e!4116362 () Bool)

(assert (=> d!2145687 (= c!1269949 e!4116362)))

(declare-fun res!2786788 () Bool)

(assert (=> d!2145687 (=> (not res!2786788) (not e!4116362))))

(assert (=> d!2145687 (= res!2786788 ((_ is Cons!66080) (t!379941 (unfocusZipperList!2056 zl!343))))))

(assert (=> d!2145687 (forall!15825 (t!379941 (unfocusZipperList!2056 zl!343)) lambda!385337)))

(assert (=> d!2145687 (= (generalisedUnion!2479 (t!379941 (unfocusZipperList!2056 zl!343))) lt!2451612)))

(declare-fun b!6823145 () Bool)

(assert (=> b!6823145 (= e!4116362 (isEmpty!38473 (t!379941 (t!379941 (unfocusZipperList!2056 zl!343)))))))

(declare-fun b!6823146 () Bool)

(declare-fun e!4116367 () Regex!16635)

(assert (=> b!6823146 (= e!4116367 (Union!16635 (h!72528 (t!379941 (unfocusZipperList!2056 zl!343))) (generalisedUnion!2479 (t!379941 (t!379941 (unfocusZipperList!2056 zl!343))))))))

(declare-fun b!6823147 () Bool)

(assert (=> b!6823147 (= e!4116366 (isUnion!1429 lt!2451612))))

(declare-fun b!6823148 () Bool)

(declare-fun e!4116363 () Bool)

(assert (=> b!6823148 (= e!4116363 e!4116366)))

(declare-fun c!1269951 () Bool)

(assert (=> b!6823148 (= c!1269951 (isEmpty!38473 (tail!12763 (t!379941 (unfocusZipperList!2056 zl!343)))))))

(declare-fun b!6823149 () Bool)

(assert (=> b!6823149 (= e!4116365 (h!72528 (t!379941 (unfocusZipperList!2056 zl!343))))))

(declare-fun b!6823150 () Bool)

(assert (=> b!6823150 (= e!4116365 e!4116367)))

(declare-fun c!1269952 () Bool)

(assert (=> b!6823150 (= c!1269952 ((_ is Cons!66080) (t!379941 (unfocusZipperList!2056 zl!343))))))

(declare-fun b!6823151 () Bool)

(assert (=> b!6823151 (= e!4116363 (isEmptyLang!1999 lt!2451612))))

(declare-fun b!6823152 () Bool)

(assert (=> b!6823152 (= e!4116364 e!4116363)))

(declare-fun c!1269950 () Bool)

(assert (=> b!6823152 (= c!1269950 (isEmpty!38473 (t!379941 (unfocusZipperList!2056 zl!343))))))

(declare-fun b!6823153 () Bool)

(assert (=> b!6823153 (= e!4116367 EmptyLang!16635)))

(assert (= (and d!2145687 res!2786788) b!6823145))

(assert (= (and d!2145687 c!1269949) b!6823149))

(assert (= (and d!2145687 (not c!1269949)) b!6823150))

(assert (= (and b!6823150 c!1269952) b!6823146))

(assert (= (and b!6823150 (not c!1269952)) b!6823153))

(assert (= (and d!2145687 res!2786787) b!6823152))

(assert (= (and b!6823152 c!1269950) b!6823151))

(assert (= (and b!6823152 (not c!1269950)) b!6823148))

(assert (= (and b!6823148 c!1269951) b!6823144))

(assert (= (and b!6823148 (not c!1269951)) b!6823147))

(declare-fun m!7568948 () Bool)

(assert (=> b!6823148 m!7568948))

(assert (=> b!6823148 m!7568948))

(declare-fun m!7568950 () Bool)

(assert (=> b!6823148 m!7568950))

(assert (=> b!6823152 m!7567346))

(declare-fun m!7568952 () Bool)

(assert (=> b!6823144 m!7568952))

(declare-fun m!7568954 () Bool)

(assert (=> b!6823151 m!7568954))

(declare-fun m!7568956 () Bool)

(assert (=> b!6823147 m!7568956))

(declare-fun m!7568958 () Bool)

(assert (=> d!2145687 m!7568958))

(declare-fun m!7568960 () Bool)

(assert (=> d!2145687 m!7568960))

(declare-fun m!7568962 () Bool)

(assert (=> b!6823146 m!7568962))

(declare-fun m!7568964 () Bool)

(assert (=> b!6823145 m!7568964))

(assert (=> b!6821814 d!2145687))

(declare-fun c!1269955 () Bool)

(declare-fun call!621014 () List!66204)

(declare-fun bm!621006 () Bool)

(declare-fun c!1269953 () Bool)

(assert (=> bm!621006 (= call!621014 ($colon$colon!2442 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451338)))) (ite (or c!1269953 c!1269955) (regTwo!33782 (h!72528 (exprs!6519 lt!2451338))) (h!72528 (exprs!6519 lt!2451338)))))))

(declare-fun b!6823154 () Bool)

(declare-fun e!4116368 () (InoxSet Context!12038))

(declare-fun call!621016 () (InoxSet Context!12038))

(declare-fun call!621012 () (InoxSet Context!12038))

(assert (=> b!6823154 (= e!4116368 ((_ map or) call!621016 call!621012))))

(declare-fun b!6823155 () Bool)

(declare-fun e!4116372 () (InoxSet Context!12038))

(assert (=> b!6823155 (= e!4116368 e!4116372)))

(assert (=> b!6823155 (= c!1269955 ((_ is Concat!25480) (h!72528 (exprs!6519 lt!2451338))))))

(declare-fun bm!621007 () Bool)

(declare-fun call!621015 () List!66204)

(assert (=> bm!621007 (= call!621015 call!621014)))

(declare-fun b!6823156 () Bool)

(declare-fun e!4116371 () (InoxSet Context!12038))

(declare-fun call!621011 () (InoxSet Context!12038))

(assert (=> b!6823156 (= e!4116371 call!621011)))

(declare-fun b!6823157 () Bool)

(declare-fun e!4116369 () (InoxSet Context!12038))

(assert (=> b!6823157 (= e!4116369 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (t!379941 (exprs!6519 lt!2451338))) true))))

(declare-fun d!2145689 () Bool)

(declare-fun c!1269957 () Bool)

(assert (=> d!2145689 (= c!1269957 (and ((_ is ElementMatch!16635) (h!72528 (exprs!6519 lt!2451338))) (= (c!1269331 (h!72528 (exprs!6519 lt!2451338))) (h!72530 s!2326))))))

(assert (=> d!2145689 (= (derivationStepZipperDown!1863 (h!72528 (exprs!6519 lt!2451338)) (Context!12039 (t!379941 (exprs!6519 lt!2451338))) (h!72530 s!2326)) e!4116369)))

(declare-fun bm!621008 () Bool)

(assert (=> bm!621008 (= call!621011 call!621012)))

(declare-fun b!6823158 () Bool)

(declare-fun e!4116373 () (InoxSet Context!12038))

(assert (=> b!6823158 (= e!4116369 e!4116373)))

(declare-fun c!1269954 () Bool)

(assert (=> b!6823158 (= c!1269954 ((_ is Union!16635) (h!72528 (exprs!6519 lt!2451338))))))

(declare-fun b!6823159 () Bool)

(declare-fun c!1269956 () Bool)

(assert (=> b!6823159 (= c!1269956 ((_ is Star!16635) (h!72528 (exprs!6519 lt!2451338))))))

(assert (=> b!6823159 (= e!4116372 e!4116371)))

(declare-fun bm!621009 () Bool)

(assert (=> bm!621009 (= call!621016 (derivationStepZipperDown!1863 (ite c!1269954 (regOne!33783 (h!72528 (exprs!6519 lt!2451338))) (regOne!33782 (h!72528 (exprs!6519 lt!2451338)))) (ite c!1269954 (Context!12039 (t!379941 (exprs!6519 lt!2451338))) (Context!12039 call!621014)) (h!72530 s!2326)))))

(declare-fun b!6823160 () Bool)

(declare-fun e!4116370 () Bool)

(assert (=> b!6823160 (= c!1269953 e!4116370)))

(declare-fun res!2786789 () Bool)

(assert (=> b!6823160 (=> (not res!2786789) (not e!4116370))))

(assert (=> b!6823160 (= res!2786789 ((_ is Concat!25480) (h!72528 (exprs!6519 lt!2451338))))))

(assert (=> b!6823160 (= e!4116373 e!4116368)))

(declare-fun bm!621010 () Bool)

(declare-fun call!621013 () (InoxSet Context!12038))

(assert (=> bm!621010 (= call!621012 call!621013)))

(declare-fun bm!621011 () Bool)

(assert (=> bm!621011 (= call!621013 (derivationStepZipperDown!1863 (ite c!1269954 (regTwo!33783 (h!72528 (exprs!6519 lt!2451338))) (ite c!1269953 (regTwo!33782 (h!72528 (exprs!6519 lt!2451338))) (ite c!1269955 (regOne!33782 (h!72528 (exprs!6519 lt!2451338))) (reg!16964 (h!72528 (exprs!6519 lt!2451338)))))) (ite (or c!1269954 c!1269953) (Context!12039 (t!379941 (exprs!6519 lt!2451338))) (Context!12039 call!621015)) (h!72530 s!2326)))))

(declare-fun b!6823161 () Bool)

(assert (=> b!6823161 (= e!4116371 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823162 () Bool)

(assert (=> b!6823162 (= e!4116373 ((_ map or) call!621016 call!621013))))

(declare-fun b!6823163 () Bool)

(assert (=> b!6823163 (= e!4116370 (nullable!6612 (regOne!33782 (h!72528 (exprs!6519 lt!2451338)))))))

(declare-fun b!6823164 () Bool)

(assert (=> b!6823164 (= e!4116372 call!621011)))

(assert (= (and d!2145689 c!1269957) b!6823157))

(assert (= (and d!2145689 (not c!1269957)) b!6823158))

(assert (= (and b!6823158 c!1269954) b!6823162))

(assert (= (and b!6823158 (not c!1269954)) b!6823160))

(assert (= (and b!6823160 res!2786789) b!6823163))

(assert (= (and b!6823160 c!1269953) b!6823154))

(assert (= (and b!6823160 (not c!1269953)) b!6823155))

(assert (= (and b!6823155 c!1269955) b!6823164))

(assert (= (and b!6823155 (not c!1269955)) b!6823159))

(assert (= (and b!6823159 c!1269956) b!6823156))

(assert (= (and b!6823159 (not c!1269956)) b!6823161))

(assert (= (or b!6823164 b!6823156) bm!621007))

(assert (= (or b!6823164 b!6823156) bm!621008))

(assert (= (or b!6823154 bm!621007) bm!621006))

(assert (= (or b!6823154 bm!621008) bm!621010))

(assert (= (or b!6823162 bm!621010) bm!621011))

(assert (= (or b!6823162 b!6823154) bm!621009))

(declare-fun m!7568966 () Bool)

(assert (=> bm!621006 m!7568966))

(declare-fun m!7568968 () Bool)

(assert (=> bm!621009 m!7568968))

(declare-fun m!7568970 () Bool)

(assert (=> bm!621011 m!7568970))

(declare-fun m!7568972 () Bool)

(assert (=> b!6823163 m!7568972))

(declare-fun m!7568974 () Bool)

(assert (=> b!6823157 m!7568974))

(assert (=> bm!620800 d!2145689))

(declare-fun d!2145691 () Bool)

(assert (=> d!2145691 (= (isEmpty!38474 (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 Nil!66082 s!2326 s!2326)) (not ((_ is Some!16521) (findConcatSeparation!2936 (reg!16964 r!7292) r!7292 Nil!66082 s!2326 s!2326))))))

(assert (=> d!2144977 d!2145691))

(declare-fun b!6823165 () Bool)

(declare-fun e!4116379 () Bool)

(assert (=> b!6823165 (= e!4116379 (not (= (head!13677 (tail!12762 (_1!36913 lt!2451337))) (c!1269331 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337)))))))))

(declare-fun b!6823166 () Bool)

(declare-fun e!4116375 () Bool)

(assert (=> b!6823166 (= e!4116375 (nullable!6612 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337)))))))

(declare-fun b!6823167 () Bool)

(declare-fun res!2786794 () Bool)

(declare-fun e!4116378 () Bool)

(assert (=> b!6823167 (=> res!2786794 e!4116378)))

(declare-fun e!4116374 () Bool)

(assert (=> b!6823167 (= res!2786794 e!4116374)))

(declare-fun res!2786792 () Bool)

(assert (=> b!6823167 (=> (not res!2786792) (not e!4116374))))

(declare-fun lt!2451613 () Bool)

(assert (=> b!6823167 (= res!2786792 lt!2451613)))

(declare-fun b!6823168 () Bool)

(declare-fun e!4116380 () Bool)

(declare-fun call!621017 () Bool)

(assert (=> b!6823168 (= e!4116380 (= lt!2451613 call!621017))))

(declare-fun b!6823169 () Bool)

(declare-fun e!4116376 () Bool)

(assert (=> b!6823169 (= e!4116376 e!4116379)))

(declare-fun res!2786796 () Bool)

(assert (=> b!6823169 (=> res!2786796 e!4116379)))

(assert (=> b!6823169 (= res!2786796 call!621017)))

(declare-fun b!6823170 () Bool)

(assert (=> b!6823170 (= e!4116375 (matchR!8818 (derivativeStep!5297 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337))) (head!13677 (tail!12762 (_1!36913 lt!2451337)))) (tail!12762 (tail!12762 (_1!36913 lt!2451337)))))))

(declare-fun b!6823171 () Bool)

(assert (=> b!6823171 (= e!4116378 e!4116376)))

(declare-fun res!2786791 () Bool)

(assert (=> b!6823171 (=> (not res!2786791) (not e!4116376))))

(assert (=> b!6823171 (= res!2786791 (not lt!2451613))))

(declare-fun b!6823172 () Bool)

(declare-fun e!4116377 () Bool)

(assert (=> b!6823172 (= e!4116380 e!4116377)))

(declare-fun c!1269959 () Bool)

(assert (=> b!6823172 (= c!1269959 ((_ is EmptyLang!16635) (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337)))))))

(declare-fun d!2145693 () Bool)

(assert (=> d!2145693 e!4116380))

(declare-fun c!1269958 () Bool)

(assert (=> d!2145693 (= c!1269958 ((_ is EmptyExpr!16635) (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337)))))))

(assert (=> d!2145693 (= lt!2451613 e!4116375)))

(declare-fun c!1269960 () Bool)

(assert (=> d!2145693 (= c!1269960 (isEmpty!38470 (tail!12762 (_1!36913 lt!2451337))))))

(assert (=> d!2145693 (validRegex!8371 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337))))))

(assert (=> d!2145693 (= (matchR!8818 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337))) (tail!12762 (_1!36913 lt!2451337))) lt!2451613)))

(declare-fun b!6823173 () Bool)

(declare-fun res!2786790 () Bool)

(assert (=> b!6823173 (=> (not res!2786790) (not e!4116374))))

(assert (=> b!6823173 (= res!2786790 (isEmpty!38470 (tail!12762 (tail!12762 (_1!36913 lt!2451337)))))))

(declare-fun b!6823174 () Bool)

(declare-fun res!2786793 () Bool)

(assert (=> b!6823174 (=> (not res!2786793) (not e!4116374))))

(assert (=> b!6823174 (= res!2786793 (not call!621017))))

(declare-fun bm!621012 () Bool)

(assert (=> bm!621012 (= call!621017 (isEmpty!38470 (tail!12762 (_1!36913 lt!2451337))))))

(declare-fun b!6823175 () Bool)

(assert (=> b!6823175 (= e!4116374 (= (head!13677 (tail!12762 (_1!36913 lt!2451337))) (c!1269331 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337))))))))

(declare-fun b!6823176 () Bool)

(assert (=> b!6823176 (= e!4116377 (not lt!2451613))))

(declare-fun b!6823177 () Bool)

(declare-fun res!2786797 () Bool)

(assert (=> b!6823177 (=> res!2786797 e!4116378)))

(assert (=> b!6823177 (= res!2786797 (not ((_ is ElementMatch!16635) (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337))))))))

(assert (=> b!6823177 (= e!4116377 e!4116378)))

(declare-fun b!6823178 () Bool)

(declare-fun res!2786795 () Bool)

(assert (=> b!6823178 (=> res!2786795 e!4116379)))

(assert (=> b!6823178 (= res!2786795 (not (isEmpty!38470 (tail!12762 (tail!12762 (_1!36913 lt!2451337))))))))

(assert (= (and d!2145693 c!1269960) b!6823166))

(assert (= (and d!2145693 (not c!1269960)) b!6823170))

(assert (= (and d!2145693 c!1269958) b!6823168))

(assert (= (and d!2145693 (not c!1269958)) b!6823172))

(assert (= (and b!6823172 c!1269959) b!6823176))

(assert (= (and b!6823172 (not c!1269959)) b!6823177))

(assert (= (and b!6823177 (not res!2786797)) b!6823167))

(assert (= (and b!6823167 res!2786792) b!6823174))

(assert (= (and b!6823174 res!2786793) b!6823173))

(assert (= (and b!6823173 res!2786790) b!6823175))

(assert (= (and b!6823167 (not res!2786794)) b!6823171))

(assert (= (and b!6823171 res!2786791) b!6823169))

(assert (= (and b!6823169 (not res!2786796)) b!6823178))

(assert (= (and b!6823178 (not res!2786795)) b!6823165))

(assert (= (or b!6823168 b!6823174 b!6823169) bm!621012))

(assert (=> d!2145693 m!7567030))

(assert (=> d!2145693 m!7567300))

(assert (=> d!2145693 m!7567302))

(declare-fun m!7568976 () Bool)

(assert (=> d!2145693 m!7568976))

(assert (=> b!6823178 m!7567030))

(assert (=> b!6823178 m!7568708))

(assert (=> b!6823178 m!7568708))

(declare-fun m!7568978 () Bool)

(assert (=> b!6823178 m!7568978))

(assert (=> b!6823165 m!7567030))

(assert (=> b!6823165 m!7568704))

(assert (=> b!6823170 m!7567030))

(assert (=> b!6823170 m!7568704))

(assert (=> b!6823170 m!7567302))

(assert (=> b!6823170 m!7568704))

(declare-fun m!7568980 () Bool)

(assert (=> b!6823170 m!7568980))

(assert (=> b!6823170 m!7567030))

(assert (=> b!6823170 m!7568708))

(assert (=> b!6823170 m!7568980))

(assert (=> b!6823170 m!7568708))

(declare-fun m!7568982 () Bool)

(assert (=> b!6823170 m!7568982))

(assert (=> b!6823166 m!7567302))

(declare-fun m!7568984 () Bool)

(assert (=> b!6823166 m!7568984))

(assert (=> b!6823175 m!7567030))

(assert (=> b!6823175 m!7568704))

(assert (=> b!6823173 m!7567030))

(assert (=> b!6823173 m!7568708))

(assert (=> b!6823173 m!7568708))

(assert (=> b!6823173 m!7568978))

(assert (=> bm!621012 m!7567030))

(assert (=> bm!621012 m!7567300))

(assert (=> b!6821781 d!2145693))

(declare-fun b!6823179 () Bool)

(declare-fun c!1269962 () Bool)

(assert (=> b!6823179 (= c!1269962 ((_ is Union!16635) (reg!16964 r!7292)))))

(declare-fun e!4116383 () Regex!16635)

(declare-fun e!4116385 () Regex!16635)

(assert (=> b!6823179 (= e!4116383 e!4116385)))

(declare-fun b!6823180 () Bool)

(declare-fun e!4116384 () Regex!16635)

(assert (=> b!6823180 (= e!4116385 e!4116384)))

(declare-fun c!1269961 () Bool)

(assert (=> b!6823180 (= c!1269961 ((_ is Star!16635) (reg!16964 r!7292)))))

(declare-fun b!6823181 () Bool)

(declare-fun e!4116382 () Regex!16635)

(assert (=> b!6823181 (= e!4116382 e!4116383)))

(declare-fun c!1269965 () Bool)

(assert (=> b!6823181 (= c!1269965 ((_ is ElementMatch!16635) (reg!16964 r!7292)))))

(declare-fun bm!621014 () Bool)

(declare-fun call!621020 () Regex!16635)

(declare-fun call!621021 () Regex!16635)

(assert (=> bm!621014 (= call!621020 call!621021)))

(declare-fun b!6823182 () Bool)

(declare-fun e!4116381 () Regex!16635)

(assert (=> b!6823182 (= e!4116381 (Union!16635 (Concat!25480 call!621020 (regTwo!33782 (reg!16964 r!7292))) EmptyLang!16635))))

(declare-fun call!621019 () Regex!16635)

(declare-fun bm!621015 () Bool)

(declare-fun c!1269964 () Bool)

(assert (=> bm!621015 (= call!621019 (derivativeStep!5297 (ite c!1269962 (regOne!33783 (reg!16964 r!7292)) (ite c!1269961 (reg!16964 (reg!16964 r!7292)) (ite c!1269964 (regTwo!33782 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292))))) (head!13677 (_1!36913 lt!2451337))))))

(declare-fun b!6823183 () Bool)

(declare-fun call!621018 () Regex!16635)

(assert (=> b!6823183 (= e!4116381 (Union!16635 (Concat!25480 call!621018 (regTwo!33782 (reg!16964 r!7292))) call!621020))))

(declare-fun b!6823184 () Bool)

(assert (=> b!6823184 (= e!4116384 (Concat!25480 call!621021 (reg!16964 r!7292)))))

(declare-fun b!6823185 () Bool)

(assert (=> b!6823185 (= e!4116383 (ite (= (head!13677 (_1!36913 lt!2451337)) (c!1269331 (reg!16964 r!7292))) EmptyExpr!16635 EmptyLang!16635))))

(declare-fun b!6823186 () Bool)

(assert (=> b!6823186 (= c!1269964 (nullable!6612 (regOne!33782 (reg!16964 r!7292))))))

(assert (=> b!6823186 (= e!4116384 e!4116381)))

(declare-fun b!6823187 () Bool)

(assert (=> b!6823187 (= e!4116382 EmptyLang!16635)))

(declare-fun bm!621016 () Bool)

(assert (=> bm!621016 (= call!621018 (derivativeStep!5297 (ite c!1269962 (regTwo!33783 (reg!16964 r!7292)) (regOne!33782 (reg!16964 r!7292))) (head!13677 (_1!36913 lt!2451337))))))

(declare-fun b!6823188 () Bool)

(assert (=> b!6823188 (= e!4116385 (Union!16635 call!621019 call!621018))))

(declare-fun d!2145695 () Bool)

(declare-fun lt!2451614 () Regex!16635)

(assert (=> d!2145695 (validRegex!8371 lt!2451614)))

(assert (=> d!2145695 (= lt!2451614 e!4116382)))

(declare-fun c!1269963 () Bool)

(assert (=> d!2145695 (= c!1269963 (or ((_ is EmptyExpr!16635) (reg!16964 r!7292)) ((_ is EmptyLang!16635) (reg!16964 r!7292))))))

(assert (=> d!2145695 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2145695 (= (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 lt!2451337))) lt!2451614)))

(declare-fun bm!621013 () Bool)

(assert (=> bm!621013 (= call!621021 call!621019)))

(assert (= (and d!2145695 c!1269963) b!6823187))

(assert (= (and d!2145695 (not c!1269963)) b!6823181))

(assert (= (and b!6823181 c!1269965) b!6823185))

(assert (= (and b!6823181 (not c!1269965)) b!6823179))

(assert (= (and b!6823179 c!1269962) b!6823188))

(assert (= (and b!6823179 (not c!1269962)) b!6823180))

(assert (= (and b!6823180 c!1269961) b!6823184))

(assert (= (and b!6823180 (not c!1269961)) b!6823186))

(assert (= (and b!6823186 c!1269964) b!6823183))

(assert (= (and b!6823186 (not c!1269964)) b!6823182))

(assert (= (or b!6823183 b!6823182) bm!621014))

(assert (= (or b!6823184 bm!621014) bm!621013))

(assert (= (or b!6823188 b!6823183) bm!621016))

(assert (= (or b!6823188 bm!621013) bm!621015))

(assert (=> bm!621015 m!7567026))

(declare-fun m!7568986 () Bool)

(assert (=> bm!621015 m!7568986))

(assert (=> b!6823186 m!7567182))

(assert (=> bm!621016 m!7567026))

(declare-fun m!7568988 () Bool)

(assert (=> bm!621016 m!7568988))

(declare-fun m!7568990 () Bool)

(assert (=> d!2145695 m!7568990))

(assert (=> d!2145695 m!7567298))

(assert (=> b!6821781 d!2145695))

(assert (=> b!6821781 d!2145457))

(assert (=> b!6821781 d!2145569))

(declare-fun b!6823189 () Bool)

(declare-fun res!2786798 () Bool)

(declare-fun e!4116390 () Bool)

(assert (=> b!6823189 (=> (not res!2786798) (not e!4116390))))

(declare-fun call!621024 () Bool)

(assert (=> b!6823189 (= res!2786798 call!621024)))

(declare-fun e!4116388 () Bool)

(assert (=> b!6823189 (= e!4116388 e!4116390)))

(declare-fun b!6823190 () Bool)

(declare-fun call!621023 () Bool)

(assert (=> b!6823190 (= e!4116390 call!621023)))

(declare-fun bm!621017 () Bool)

(declare-fun call!621022 () Bool)

(assert (=> bm!621017 (= call!621023 call!621022)))

(declare-fun d!2145697 () Bool)

(declare-fun res!2786801 () Bool)

(declare-fun e!4116386 () Bool)

(assert (=> d!2145697 (=> res!2786801 e!4116386)))

(assert (=> d!2145697 (= res!2786801 ((_ is ElementMatch!16635) lt!2451382))))

(assert (=> d!2145697 (= (validRegex!8371 lt!2451382) e!4116386)))

(declare-fun bm!621018 () Bool)

(declare-fun c!1269966 () Bool)

(assert (=> bm!621018 (= call!621024 (validRegex!8371 (ite c!1269966 (regOne!33783 lt!2451382) (regOne!33782 lt!2451382))))))

(declare-fun b!6823191 () Bool)

(declare-fun res!2786802 () Bool)

(declare-fun e!4116391 () Bool)

(assert (=> b!6823191 (=> res!2786802 e!4116391)))

(assert (=> b!6823191 (= res!2786802 (not ((_ is Concat!25480) lt!2451382)))))

(assert (=> b!6823191 (= e!4116388 e!4116391)))

(declare-fun b!6823192 () Bool)

(declare-fun e!4116387 () Bool)

(assert (=> b!6823192 (= e!4116387 e!4116388)))

(assert (=> b!6823192 (= c!1269966 ((_ is Union!16635) lt!2451382))))

(declare-fun b!6823193 () Bool)

(assert (=> b!6823193 (= e!4116386 e!4116387)))

(declare-fun c!1269967 () Bool)

(assert (=> b!6823193 (= c!1269967 ((_ is Star!16635) lt!2451382))))

(declare-fun b!6823194 () Bool)

(declare-fun e!4116392 () Bool)

(assert (=> b!6823194 (= e!4116392 call!621023)))

(declare-fun b!6823195 () Bool)

(declare-fun e!4116389 () Bool)

(assert (=> b!6823195 (= e!4116387 e!4116389)))

(declare-fun res!2786799 () Bool)

(assert (=> b!6823195 (= res!2786799 (not (nullable!6612 (reg!16964 lt!2451382))))))

(assert (=> b!6823195 (=> (not res!2786799) (not e!4116389))))

(declare-fun b!6823196 () Bool)

(assert (=> b!6823196 (= e!4116391 e!4116392)))

(declare-fun res!2786800 () Bool)

(assert (=> b!6823196 (=> (not res!2786800) (not e!4116392))))

(assert (=> b!6823196 (= res!2786800 call!621024)))

(declare-fun b!6823197 () Bool)

(assert (=> b!6823197 (= e!4116389 call!621022)))

(declare-fun bm!621019 () Bool)

(assert (=> bm!621019 (= call!621022 (validRegex!8371 (ite c!1269967 (reg!16964 lt!2451382) (ite c!1269966 (regTwo!33783 lt!2451382) (regTwo!33782 lt!2451382)))))))

(assert (= (and d!2145697 (not res!2786801)) b!6823193))

(assert (= (and b!6823193 c!1269967) b!6823195))

(assert (= (and b!6823193 (not c!1269967)) b!6823192))

(assert (= (and b!6823195 res!2786799) b!6823197))

(assert (= (and b!6823192 c!1269966) b!6823189))

(assert (= (and b!6823192 (not c!1269966)) b!6823191))

(assert (= (and b!6823189 res!2786798) b!6823190))

(assert (= (and b!6823191 (not res!2786802)) b!6823196))

(assert (= (and b!6823196 res!2786800) b!6823194))

(assert (= (or b!6823190 b!6823194) bm!621017))

(assert (= (or b!6823189 b!6823196) bm!621018))

(assert (= (or b!6823197 bm!621017) bm!621019))

(declare-fun m!7568992 () Bool)

(assert (=> bm!621018 m!7568992))

(declare-fun m!7568994 () Bool)

(assert (=> b!6823195 m!7568994))

(declare-fun m!7568996 () Bool)

(assert (=> bm!621019 m!7568996))

(assert (=> d!2144797 d!2145697))

(assert (=> d!2144797 d!2144969))

(assert (=> d!2144797 d!2144971))

(assert (=> d!2144855 d!2144841))

(assert (=> d!2144855 d!2144831))

(declare-fun d!2145699 () Bool)

(assert (=> d!2145699 (= (matchR!8818 lt!2451335 s!2326) (matchRSpec!3736 lt!2451335 s!2326))))

(assert (=> d!2145699 true))

(declare-fun _$88!5662 () Unit!159961)

(assert (=> d!2145699 (= (choose!50860 lt!2451335 s!2326) _$88!5662)))

(declare-fun bs!1823194 () Bool)

(assert (= bs!1823194 d!2145699))

(assert (=> bs!1823194 m!7566534))

(assert (=> bs!1823194 m!7566532))

(assert (=> d!2144855 d!2145699))

(declare-fun b!6823198 () Bool)

(declare-fun res!2786803 () Bool)

(declare-fun e!4116397 () Bool)

(assert (=> b!6823198 (=> (not res!2786803) (not e!4116397))))

(declare-fun call!621027 () Bool)

(assert (=> b!6823198 (= res!2786803 call!621027)))

(declare-fun e!4116395 () Bool)

(assert (=> b!6823198 (= e!4116395 e!4116397)))

(declare-fun b!6823199 () Bool)

(declare-fun call!621026 () Bool)

(assert (=> b!6823199 (= e!4116397 call!621026)))

(declare-fun bm!621020 () Bool)

(declare-fun call!621025 () Bool)

(assert (=> bm!621020 (= call!621026 call!621025)))

(declare-fun d!2145701 () Bool)

(declare-fun res!2786806 () Bool)

(declare-fun e!4116393 () Bool)

(assert (=> d!2145701 (=> res!2786806 e!4116393)))

(assert (=> d!2145701 (= res!2786806 ((_ is ElementMatch!16635) lt!2451335))))

(assert (=> d!2145701 (= (validRegex!8371 lt!2451335) e!4116393)))

(declare-fun bm!621021 () Bool)

(declare-fun c!1269968 () Bool)

(assert (=> bm!621021 (= call!621027 (validRegex!8371 (ite c!1269968 (regOne!33783 lt!2451335) (regOne!33782 lt!2451335))))))

(declare-fun b!6823200 () Bool)

(declare-fun res!2786807 () Bool)

(declare-fun e!4116398 () Bool)

(assert (=> b!6823200 (=> res!2786807 e!4116398)))

(assert (=> b!6823200 (= res!2786807 (not ((_ is Concat!25480) lt!2451335)))))

(assert (=> b!6823200 (= e!4116395 e!4116398)))

(declare-fun b!6823201 () Bool)

(declare-fun e!4116394 () Bool)

(assert (=> b!6823201 (= e!4116394 e!4116395)))

(assert (=> b!6823201 (= c!1269968 ((_ is Union!16635) lt!2451335))))

(declare-fun b!6823202 () Bool)

(assert (=> b!6823202 (= e!4116393 e!4116394)))

(declare-fun c!1269969 () Bool)

(assert (=> b!6823202 (= c!1269969 ((_ is Star!16635) lt!2451335))))

(declare-fun b!6823203 () Bool)

(declare-fun e!4116399 () Bool)

(assert (=> b!6823203 (= e!4116399 call!621026)))

(declare-fun b!6823204 () Bool)

(declare-fun e!4116396 () Bool)

(assert (=> b!6823204 (= e!4116394 e!4116396)))

(declare-fun res!2786804 () Bool)

(assert (=> b!6823204 (= res!2786804 (not (nullable!6612 (reg!16964 lt!2451335))))))

(assert (=> b!6823204 (=> (not res!2786804) (not e!4116396))))

(declare-fun b!6823205 () Bool)

(assert (=> b!6823205 (= e!4116398 e!4116399)))

(declare-fun res!2786805 () Bool)

(assert (=> b!6823205 (=> (not res!2786805) (not e!4116399))))

(assert (=> b!6823205 (= res!2786805 call!621027)))

(declare-fun b!6823206 () Bool)

(assert (=> b!6823206 (= e!4116396 call!621025)))

(declare-fun bm!621022 () Bool)

(assert (=> bm!621022 (= call!621025 (validRegex!8371 (ite c!1269969 (reg!16964 lt!2451335) (ite c!1269968 (regTwo!33783 lt!2451335) (regTwo!33782 lt!2451335)))))))

(assert (= (and d!2145701 (not res!2786806)) b!6823202))

(assert (= (and b!6823202 c!1269969) b!6823204))

(assert (= (and b!6823202 (not c!1269969)) b!6823201))

(assert (= (and b!6823204 res!2786804) b!6823206))

(assert (= (and b!6823201 c!1269968) b!6823198))

(assert (= (and b!6823201 (not c!1269968)) b!6823200))

(assert (= (and b!6823198 res!2786803) b!6823199))

(assert (= (and b!6823200 (not res!2786807)) b!6823205))

(assert (= (and b!6823205 res!2786805) b!6823203))

(assert (= (or b!6823199 b!6823203) bm!621020))

(assert (= (or b!6823198 b!6823205) bm!621021))

(assert (= (or b!6823206 bm!621020) bm!621022))

(declare-fun m!7568998 () Bool)

(assert (=> bm!621021 m!7568998))

(declare-fun m!7569000 () Bool)

(assert (=> b!6823204 m!7569000))

(declare-fun m!7569002 () Bool)

(assert (=> bm!621022 m!7569002))

(assert (=> d!2144855 d!2145701))

(declare-fun d!2145703 () Bool)

(assert (=> d!2145703 (= (nullable!6612 (regOne!33782 r!7292)) (nullableFct!2510 (regOne!33782 r!7292)))))

(declare-fun bs!1823195 () Bool)

(assert (= bs!1823195 d!2145703))

(declare-fun m!7569004 () Bool)

(assert (=> bs!1823195 m!7569004))

(assert (=> b!6821261 d!2145703))

(assert (=> b!6821777 d!2145579))

(declare-fun b!6823207 () Bool)

(declare-fun e!4116405 () Bool)

(assert (=> b!6823207 (= e!4116405 (not (= (head!13677 (_1!36913 (get!23022 lt!2451502))) (c!1269331 (reg!16964 r!7292)))))))

(declare-fun b!6823208 () Bool)

(declare-fun e!4116401 () Bool)

(assert (=> b!6823208 (= e!4116401 (nullable!6612 (reg!16964 r!7292)))))

(declare-fun b!6823209 () Bool)

(declare-fun res!2786812 () Bool)

(declare-fun e!4116404 () Bool)

(assert (=> b!6823209 (=> res!2786812 e!4116404)))

(declare-fun e!4116400 () Bool)

(assert (=> b!6823209 (= res!2786812 e!4116400)))

(declare-fun res!2786810 () Bool)

(assert (=> b!6823209 (=> (not res!2786810) (not e!4116400))))

(declare-fun lt!2451615 () Bool)

(assert (=> b!6823209 (= res!2786810 lt!2451615)))

(declare-fun b!6823210 () Bool)

(declare-fun e!4116406 () Bool)

(declare-fun call!621028 () Bool)

(assert (=> b!6823210 (= e!4116406 (= lt!2451615 call!621028))))

(declare-fun b!6823211 () Bool)

(declare-fun e!4116402 () Bool)

(assert (=> b!6823211 (= e!4116402 e!4116405)))

(declare-fun res!2786814 () Bool)

(assert (=> b!6823211 (=> res!2786814 e!4116405)))

(assert (=> b!6823211 (= res!2786814 call!621028)))

(declare-fun b!6823212 () Bool)

(assert (=> b!6823212 (= e!4116401 (matchR!8818 (derivativeStep!5297 (reg!16964 r!7292) (head!13677 (_1!36913 (get!23022 lt!2451502)))) (tail!12762 (_1!36913 (get!23022 lt!2451502)))))))

(declare-fun b!6823213 () Bool)

(assert (=> b!6823213 (= e!4116404 e!4116402)))

(declare-fun res!2786809 () Bool)

(assert (=> b!6823213 (=> (not res!2786809) (not e!4116402))))

(assert (=> b!6823213 (= res!2786809 (not lt!2451615))))

(declare-fun b!6823214 () Bool)

(declare-fun e!4116403 () Bool)

(assert (=> b!6823214 (= e!4116406 e!4116403)))

(declare-fun c!1269971 () Bool)

(assert (=> b!6823214 (= c!1269971 ((_ is EmptyLang!16635) (reg!16964 r!7292)))))

(declare-fun d!2145705 () Bool)

(assert (=> d!2145705 e!4116406))

(declare-fun c!1269970 () Bool)

(assert (=> d!2145705 (= c!1269970 ((_ is EmptyExpr!16635) (reg!16964 r!7292)))))

(assert (=> d!2145705 (= lt!2451615 e!4116401)))

(declare-fun c!1269972 () Bool)

(assert (=> d!2145705 (= c!1269972 (isEmpty!38470 (_1!36913 (get!23022 lt!2451502))))))

(assert (=> d!2145705 (validRegex!8371 (reg!16964 r!7292))))

(assert (=> d!2145705 (= (matchR!8818 (reg!16964 r!7292) (_1!36913 (get!23022 lt!2451502))) lt!2451615)))

(declare-fun b!6823215 () Bool)

(declare-fun res!2786808 () Bool)

(assert (=> b!6823215 (=> (not res!2786808) (not e!4116400))))

(assert (=> b!6823215 (= res!2786808 (isEmpty!38470 (tail!12762 (_1!36913 (get!23022 lt!2451502)))))))

(declare-fun b!6823216 () Bool)

(declare-fun res!2786811 () Bool)

(assert (=> b!6823216 (=> (not res!2786811) (not e!4116400))))

(assert (=> b!6823216 (= res!2786811 (not call!621028))))

(declare-fun bm!621023 () Bool)

(assert (=> bm!621023 (= call!621028 (isEmpty!38470 (_1!36913 (get!23022 lt!2451502))))))

(declare-fun b!6823217 () Bool)

(assert (=> b!6823217 (= e!4116400 (= (head!13677 (_1!36913 (get!23022 lt!2451502))) (c!1269331 (reg!16964 r!7292))))))

(declare-fun b!6823218 () Bool)

(assert (=> b!6823218 (= e!4116403 (not lt!2451615))))

(declare-fun b!6823219 () Bool)

(declare-fun res!2786815 () Bool)

(assert (=> b!6823219 (=> res!2786815 e!4116404)))

(assert (=> b!6823219 (= res!2786815 (not ((_ is ElementMatch!16635) (reg!16964 r!7292))))))

(assert (=> b!6823219 (= e!4116403 e!4116404)))

(declare-fun b!6823220 () Bool)

(declare-fun res!2786813 () Bool)

(assert (=> b!6823220 (=> res!2786813 e!4116405)))

(assert (=> b!6823220 (= res!2786813 (not (isEmpty!38470 (tail!12762 (_1!36913 (get!23022 lt!2451502))))))))

(assert (= (and d!2145705 c!1269972) b!6823208))

(assert (= (and d!2145705 (not c!1269972)) b!6823212))

(assert (= (and d!2145705 c!1269970) b!6823210))

(assert (= (and d!2145705 (not c!1269970)) b!6823214))

(assert (= (and b!6823214 c!1269971) b!6823218))

(assert (= (and b!6823214 (not c!1269971)) b!6823219))

(assert (= (and b!6823219 (not res!2786815)) b!6823209))

(assert (= (and b!6823209 res!2786810) b!6823216))

(assert (= (and b!6823216 res!2786811) b!6823215))

(assert (= (and b!6823215 res!2786808) b!6823217))

(assert (= (and b!6823209 (not res!2786812)) b!6823213))

(assert (= (and b!6823213 res!2786809) b!6823211))

(assert (= (and b!6823211 (not res!2786814)) b!6823220))

(assert (= (and b!6823220 (not res!2786813)) b!6823207))

(assert (= (or b!6823210 b!6823216 b!6823211) bm!621023))

(declare-fun m!7569006 () Bool)

(assert (=> d!2145705 m!7569006))

(assert (=> d!2145705 m!7567298))

(declare-fun m!7569008 () Bool)

(assert (=> b!6823220 m!7569008))

(assert (=> b!6823220 m!7569008))

(declare-fun m!7569010 () Bool)

(assert (=> b!6823220 m!7569010))

(declare-fun m!7569012 () Bool)

(assert (=> b!6823207 m!7569012))

(assert (=> b!6823212 m!7569012))

(assert (=> b!6823212 m!7569012))

(declare-fun m!7569014 () Bool)

(assert (=> b!6823212 m!7569014))

(assert (=> b!6823212 m!7569008))

(assert (=> b!6823212 m!7569014))

(assert (=> b!6823212 m!7569008))

(declare-fun m!7569016 () Bool)

(assert (=> b!6823212 m!7569016))

(assert (=> b!6823208 m!7566924))

(assert (=> b!6823217 m!7569012))

(assert (=> b!6823215 m!7569008))

(assert (=> b!6823215 m!7569008))

(assert (=> b!6823215 m!7569010))

(assert (=> bm!621023 m!7569006))

(assert (=> b!6821872 d!2145705))

(assert (=> b!6821872 d!2145643))

(declare-fun d!2145707 () Bool)

(assert (=> d!2145707 (= (isDefined!13225 lt!2451456) (not (isEmpty!38474 lt!2451456)))))

(declare-fun bs!1823196 () Bool)

(assert (= bs!1823196 d!2145707))

(declare-fun m!7569018 () Bool)

(assert (=> bs!1823196 m!7569018))

(assert (=> b!6821730 d!2145707))

(declare-fun b!6823221 () Bool)

(declare-fun res!2786816 () Bool)

(declare-fun e!4116411 () Bool)

(assert (=> b!6823221 (=> (not res!2786816) (not e!4116411))))

(declare-fun call!621031 () Bool)

(assert (=> b!6823221 (= res!2786816 call!621031)))

(declare-fun e!4116409 () Bool)

(assert (=> b!6823221 (= e!4116409 e!4116411)))

(declare-fun b!6823222 () Bool)

(declare-fun call!621030 () Bool)

(assert (=> b!6823222 (= e!4116411 call!621030)))

(declare-fun bm!621024 () Bool)

(declare-fun call!621029 () Bool)

(assert (=> bm!621024 (= call!621030 call!621029)))

(declare-fun d!2145709 () Bool)

(declare-fun res!2786819 () Bool)

(declare-fun e!4116407 () Bool)

(assert (=> d!2145709 (=> res!2786819 e!4116407)))

(assert (=> d!2145709 (= res!2786819 ((_ is ElementMatch!16635) lt!2451481))))

(assert (=> d!2145709 (= (validRegex!8371 lt!2451481) e!4116407)))

(declare-fun bm!621025 () Bool)

(declare-fun c!1269973 () Bool)

(assert (=> bm!621025 (= call!621031 (validRegex!8371 (ite c!1269973 (regOne!33783 lt!2451481) (regOne!33782 lt!2451481))))))

(declare-fun b!6823223 () Bool)

(declare-fun res!2786820 () Bool)

(declare-fun e!4116412 () Bool)

(assert (=> b!6823223 (=> res!2786820 e!4116412)))

(assert (=> b!6823223 (= res!2786820 (not ((_ is Concat!25480) lt!2451481)))))

(assert (=> b!6823223 (= e!4116409 e!4116412)))

(declare-fun b!6823224 () Bool)

(declare-fun e!4116408 () Bool)

(assert (=> b!6823224 (= e!4116408 e!4116409)))

(assert (=> b!6823224 (= c!1269973 ((_ is Union!16635) lt!2451481))))

(declare-fun b!6823225 () Bool)

(assert (=> b!6823225 (= e!4116407 e!4116408)))

(declare-fun c!1269974 () Bool)

(assert (=> b!6823225 (= c!1269974 ((_ is Star!16635) lt!2451481))))

(declare-fun b!6823226 () Bool)

(declare-fun e!4116413 () Bool)

(assert (=> b!6823226 (= e!4116413 call!621030)))

(declare-fun b!6823227 () Bool)

(declare-fun e!4116410 () Bool)

(assert (=> b!6823227 (= e!4116408 e!4116410)))

(declare-fun res!2786817 () Bool)

(assert (=> b!6823227 (= res!2786817 (not (nullable!6612 (reg!16964 lt!2451481))))))

(assert (=> b!6823227 (=> (not res!2786817) (not e!4116410))))

(declare-fun b!6823228 () Bool)

(assert (=> b!6823228 (= e!4116412 e!4116413)))

(declare-fun res!2786818 () Bool)

(assert (=> b!6823228 (=> (not res!2786818) (not e!4116413))))

(assert (=> b!6823228 (= res!2786818 call!621031)))

(declare-fun b!6823229 () Bool)

(assert (=> b!6823229 (= e!4116410 call!621029)))

(declare-fun bm!621026 () Bool)

(assert (=> bm!621026 (= call!621029 (validRegex!8371 (ite c!1269974 (reg!16964 lt!2451481) (ite c!1269973 (regTwo!33783 lt!2451481) (regTwo!33782 lt!2451481)))))))

(assert (= (and d!2145709 (not res!2786819)) b!6823225))

(assert (= (and b!6823225 c!1269974) b!6823227))

(assert (= (and b!6823225 (not c!1269974)) b!6823224))

(assert (= (and b!6823227 res!2786817) b!6823229))

(assert (= (and b!6823224 c!1269973) b!6823221))

(assert (= (and b!6823224 (not c!1269973)) b!6823223))

(assert (= (and b!6823221 res!2786816) b!6823222))

(assert (= (and b!6823223 (not res!2786820)) b!6823228))

(assert (= (and b!6823228 res!2786818) b!6823226))

(assert (= (or b!6823222 b!6823226) bm!621024))

(assert (= (or b!6823221 b!6823228) bm!621025))

(assert (= (or b!6823229 bm!621024) bm!621026))

(declare-fun m!7569020 () Bool)

(assert (=> bm!621025 m!7569020))

(declare-fun m!7569022 () Bool)

(assert (=> b!6823227 m!7569022))

(declare-fun m!7569024 () Bool)

(assert (=> bm!621026 m!7569024))

(assert (=> d!2144969 d!2145709))

(declare-fun d!2145711 () Bool)

(declare-fun res!2786821 () Bool)

(declare-fun e!4116414 () Bool)

(assert (=> d!2145711 (=> res!2786821 e!4116414)))

(assert (=> d!2145711 (= res!2786821 ((_ is Nil!66080) (unfocusZipperList!2056 zl!343)))))

(assert (=> d!2145711 (= (forall!15825 (unfocusZipperList!2056 zl!343) lambda!385230) e!4116414)))

(declare-fun b!6823230 () Bool)

(declare-fun e!4116415 () Bool)

(assert (=> b!6823230 (= e!4116414 e!4116415)))

(declare-fun res!2786822 () Bool)

(assert (=> b!6823230 (=> (not res!2786822) (not e!4116415))))

(assert (=> b!6823230 (= res!2786822 (dynLambda!26406 lambda!385230 (h!72528 (unfocusZipperList!2056 zl!343))))))

(declare-fun b!6823231 () Bool)

(assert (=> b!6823231 (= e!4116415 (forall!15825 (t!379941 (unfocusZipperList!2056 zl!343)) lambda!385230))))

(assert (= (and d!2145711 (not res!2786821)) b!6823230))

(assert (= (and b!6823230 res!2786822) b!6823231))

(declare-fun b_lambda!257359 () Bool)

(assert (=> (not b_lambda!257359) (not b!6823230)))

(declare-fun m!7569026 () Bool)

(assert (=> b!6823230 m!7569026))

(declare-fun m!7569028 () Bool)

(assert (=> b!6823231 m!7569028))

(assert (=> d!2144969 d!2145711))

(declare-fun d!2145713 () Bool)

(assert (=> d!2145713 true))

(assert (=> d!2145713 true))

(declare-fun res!2786823 () Bool)

(assert (=> d!2145713 (= (choose!50869 lambda!385148) res!2786823)))

(assert (=> d!2144985 d!2145713))

(declare-fun bs!1823197 () Bool)

(declare-fun d!2145715 () Bool)

(assert (= bs!1823197 (and d!2145715 d!2145563)))

(declare-fun lambda!385338 () Int)

(assert (=> bs!1823197 (= lambda!385338 lambda!385329)))

(declare-fun bs!1823198 () Bool)

(assert (= bs!1823198 (and d!2145715 d!2145529)))

(assert (=> bs!1823198 (= lambda!385338 lambda!385321)))

(declare-fun bs!1823199 () Bool)

(assert (= bs!1823199 (and d!2145715 d!2145535)))

(assert (=> bs!1823199 (= lambda!385338 lambda!385323)))

(declare-fun bs!1823200 () Bool)

(assert (= bs!1823200 (and d!2145715 d!2145417)))

(assert (=> bs!1823200 (= lambda!385338 lambda!385307)))

(declare-fun bs!1823201 () Bool)

(assert (= bs!1823201 (and d!2145715 d!2145495)))

(assert (=> bs!1823201 (= lambda!385338 lambda!385320)))

(declare-fun bs!1823202 () Bool)

(assert (= bs!1823202 (and d!2145715 d!2144955)))

(assert (=> bs!1823202 (= lambda!385338 lambda!385226)))

(declare-fun bs!1823203 () Bool)

(assert (= bs!1823203 (and d!2145715 d!2145687)))

(assert (=> bs!1823203 (= lambda!385338 lambda!385337)))

(declare-fun bs!1823204 () Bool)

(assert (= bs!1823204 (and d!2145715 d!2144971)))

(assert (=> bs!1823204 (= lambda!385338 lambda!385233)))

(declare-fun bs!1823205 () Bool)

(assert (= bs!1823205 (and d!2145715 d!2145531)))

(assert (=> bs!1823205 (= lambda!385338 lambda!385322)))

(declare-fun bs!1823206 () Bool)

(assert (= bs!1823206 (and d!2145715 d!2145537)))

(assert (=> bs!1823206 (= lambda!385338 lambda!385324)))

(declare-fun bs!1823207 () Bool)

(assert (= bs!1823207 (and d!2145715 d!2144867)))

(assert (=> bs!1823207 (= lambda!385338 lambda!385209)))

(declare-fun bs!1823208 () Bool)

(assert (= bs!1823208 (and d!2145715 d!2145635)))

(assert (=> bs!1823208 (= lambda!385338 lambda!385334)))

(declare-fun bs!1823209 () Bool)

(assert (= bs!1823209 (and d!2145715 b!6820964)))

(assert (=> bs!1823209 (= lambda!385338 lambda!385153)))

(declare-fun bs!1823210 () Bool)

(assert (= bs!1823210 (and d!2145715 d!2145463)))

(assert (=> bs!1823210 (= lambda!385338 lambda!385317)))

(declare-fun bs!1823211 () Bool)

(assert (= bs!1823211 (and d!2145715 d!2144969)))

(assert (=> bs!1823211 (= lambda!385338 lambda!385230)))

(declare-fun bs!1823212 () Bool)

(assert (= bs!1823212 (and d!2145715 d!2144881)))

(assert (=> bs!1823212 (= lambda!385338 lambda!385217)))

(declare-fun bs!1823213 () Bool)

(assert (= bs!1823213 (and d!2145715 d!2144963)))

(assert (=> bs!1823213 (= lambda!385338 lambda!385227)))

(declare-fun bs!1823214 () Bool)

(assert (= bs!1823214 (and d!2145715 d!2145637)))

(assert (=> bs!1823214 (= lambda!385338 lambda!385335)))

(declare-fun bs!1823215 () Bool)

(assert (= bs!1823215 (and d!2145715 d!2144757)))

(assert (=> bs!1823215 (= lambda!385338 lambda!385162)))

(assert (=> d!2145715 (= (inv!84834 setElem!46805) (forall!15825 (exprs!6519 setElem!46805) lambda!385338))))

(declare-fun bs!1823216 () Bool)

(assert (= bs!1823216 d!2145715))

(declare-fun m!7569030 () Bool)

(assert (=> bs!1823216 m!7569030))

(assert (=> setNonEmpty!46805 d!2145715))

(declare-fun d!2145717 () Bool)

(assert (=> d!2145717 (= (flatMap!2116 lt!2451308 lambda!385184) (choose!50858 lt!2451308 lambda!385184))))

(declare-fun bs!1823217 () Bool)

(assert (= bs!1823217 d!2145717))

(declare-fun m!7569032 () Bool)

(assert (=> bs!1823217 m!7569032))

(assert (=> d!2144805 d!2145717))

(declare-fun bs!1823218 () Bool)

(declare-fun b!6823233 () Bool)

(assert (= bs!1823218 (and b!6823233 d!2145547)))

(declare-fun lambda!385339 () Int)

(assert (=> bs!1823218 (not (= lambda!385339 lambda!385328))))

(declare-fun bs!1823219 () Bool)

(assert (= bs!1823219 (and b!6823233 b!6820967)))

(assert (=> bs!1823219 (not (= lambda!385339 lambda!385148))))

(declare-fun bs!1823220 () Bool)

(assert (= bs!1823220 (and b!6823233 d!2144987)))

(assert (=> bs!1823220 (not (= lambda!385339 lambda!385245))))

(declare-fun bs!1823221 () Bool)

(assert (= bs!1823221 (and b!6823233 b!6821741)))

(assert (=> bs!1823221 (not (= lambda!385339 lambda!385223))))

(declare-fun bs!1823222 () Bool)

(assert (= bs!1823222 (and b!6823233 b!6821442)))

(assert (=> bs!1823222 (not (= lambda!385339 lambda!385202))))

(declare-fun bs!1823223 () Bool)

(assert (= bs!1823223 (and b!6823233 d!2144979)))

(assert (=> bs!1823223 (not (= lambda!385339 lambda!385238))))

(declare-fun bs!1823224 () Bool)

(assert (= bs!1823224 (and b!6823233 b!6822999)))

(assert (=> bs!1823224 (= (and (= (reg!16964 (regOne!33783 lt!2451335)) (reg!16964 (regTwo!33783 r!7292))) (= (regOne!33783 lt!2451335) (regTwo!33783 r!7292))) (= lambda!385339 lambda!385331))))

(assert (=> bs!1823219 (= (and (= (reg!16964 (regOne!33783 lt!2451335)) (reg!16964 r!7292)) (= (regOne!33783 lt!2451335) r!7292)) (= lambda!385339 lambda!385149))))

(declare-fun bs!1823225 () Bool)

(assert (= bs!1823225 (and b!6823233 b!6822721)))

(assert (=> bs!1823225 (= (and (= (reg!16964 (regOne!33783 lt!2451335)) (reg!16964 (regTwo!33783 lt!2451335))) (= (regOne!33783 lt!2451335) (regTwo!33783 lt!2451335))) (= lambda!385339 lambda!385308))))

(declare-fun bs!1823226 () Bool)

(assert (= bs!1823226 (and b!6823233 b!6822752)))

(assert (=> bs!1823226 (not (= lambda!385339 lambda!385316))))

(assert (=> bs!1823220 (not (= lambda!385339 lambda!385244))))

(declare-fun bs!1823227 () Bool)

(assert (= bs!1823227 (and b!6823233 b!6822751)))

(assert (=> bs!1823227 (= (and (= (reg!16964 (regOne!33783 lt!2451335)) (reg!16964 (regOne!33783 r!7292))) (= (regOne!33783 lt!2451335) (regOne!33783 r!7292))) (= lambda!385339 lambda!385315))))

(declare-fun bs!1823228 () Bool)

(assert (= bs!1823228 (and b!6823233 b!6823000)))

(assert (=> bs!1823228 (not (= lambda!385339 lambda!385332))))

(declare-fun bs!1823229 () Bool)

(assert (= bs!1823229 (and b!6823233 b!6821441)))

(assert (=> bs!1823229 (= (and (= (reg!16964 (regOne!33783 lt!2451335)) (reg!16964 lt!2451335)) (= (regOne!33783 lt!2451335) lt!2451335)) (= lambda!385339 lambda!385201))))

(declare-fun bs!1823230 () Bool)

(assert (= bs!1823230 (and b!6823233 b!6821740)))

(assert (=> bs!1823230 (= (and (= (reg!16964 (regOne!33783 lt!2451335)) (reg!16964 r!7292)) (= (regOne!33783 lt!2451335) r!7292)) (= lambda!385339 lambda!385222))))

(assert (=> bs!1823219 (not (= lambda!385339 lambda!385150))))

(declare-fun bs!1823231 () Bool)

(assert (= bs!1823231 (and b!6823233 b!6822722)))

(assert (=> bs!1823231 (not (= lambda!385339 lambda!385309))))

(assert (=> bs!1823223 (= (and (= (reg!16964 (regOne!33783 lt!2451335)) (reg!16964 r!7292)) (= (regOne!33783 lt!2451335) (Star!16635 (reg!16964 r!7292)))) (= lambda!385339 lambda!385239))))

(declare-fun bs!1823232 () Bool)

(assert (= bs!1823232 (and b!6823233 d!2144993)))

(assert (=> bs!1823232 (not (= lambda!385339 lambda!385248))))

(assert (=> b!6823233 true))

(assert (=> b!6823233 true))

(declare-fun bs!1823233 () Bool)

(declare-fun b!6823234 () Bool)

(assert (= bs!1823233 (and b!6823234 d!2145547)))

(declare-fun lambda!385340 () Int)

(assert (=> bs!1823233 (not (= lambda!385340 lambda!385328))))

(declare-fun bs!1823234 () Bool)

(assert (= bs!1823234 (and b!6823234 b!6820967)))

(assert (=> bs!1823234 (not (= lambda!385340 lambda!385148))))

(declare-fun bs!1823235 () Bool)

(assert (= bs!1823235 (and b!6823234 d!2144987)))

(assert (=> bs!1823235 (= (and (= (regOne!33782 (regOne!33783 lt!2451335)) (reg!16964 r!7292)) (= (regTwo!33782 (regOne!33783 lt!2451335)) r!7292)) (= lambda!385340 lambda!385245))))

(declare-fun bs!1823236 () Bool)

(assert (= bs!1823236 (and b!6823234 b!6821741)))

(assert (=> bs!1823236 (= (and (= (regOne!33782 (regOne!33783 lt!2451335)) (regOne!33782 r!7292)) (= (regTwo!33782 (regOne!33783 lt!2451335)) (regTwo!33782 r!7292))) (= lambda!385340 lambda!385223))))

(declare-fun bs!1823237 () Bool)

(assert (= bs!1823237 (and b!6823234 b!6821442)))

(assert (=> bs!1823237 (= (and (= (regOne!33782 (regOne!33783 lt!2451335)) (regOne!33782 lt!2451335)) (= (regTwo!33782 (regOne!33783 lt!2451335)) (regTwo!33782 lt!2451335))) (= lambda!385340 lambda!385202))))

(declare-fun bs!1823238 () Bool)

(assert (= bs!1823238 (and b!6823234 d!2144979)))

(assert (=> bs!1823238 (not (= lambda!385340 lambda!385238))))

(assert (=> bs!1823234 (not (= lambda!385340 lambda!385149))))

(declare-fun bs!1823239 () Bool)

(assert (= bs!1823239 (and b!6823234 b!6822721)))

(assert (=> bs!1823239 (not (= lambda!385340 lambda!385308))))

(declare-fun bs!1823240 () Bool)

(assert (= bs!1823240 (and b!6823234 b!6822752)))

(assert (=> bs!1823240 (= (and (= (regOne!33782 (regOne!33783 lt!2451335)) (regOne!33782 (regOne!33783 r!7292))) (= (regTwo!33782 (regOne!33783 lt!2451335)) (regTwo!33782 (regOne!33783 r!7292)))) (= lambda!385340 lambda!385316))))

(assert (=> bs!1823235 (not (= lambda!385340 lambda!385244))))

(declare-fun bs!1823241 () Bool)

(assert (= bs!1823241 (and b!6823234 b!6822751)))

(assert (=> bs!1823241 (not (= lambda!385340 lambda!385315))))

(declare-fun bs!1823242 () Bool)

(assert (= bs!1823242 (and b!6823234 b!6823000)))

(assert (=> bs!1823242 (= (and (= (regOne!33782 (regOne!33783 lt!2451335)) (regOne!33782 (regTwo!33783 r!7292))) (= (regTwo!33782 (regOne!33783 lt!2451335)) (regTwo!33782 (regTwo!33783 r!7292)))) (= lambda!385340 lambda!385332))))

(declare-fun bs!1823243 () Bool)

(assert (= bs!1823243 (and b!6823234 b!6823233)))

(assert (=> bs!1823243 (not (= lambda!385340 lambda!385339))))

(declare-fun bs!1823244 () Bool)

(assert (= bs!1823244 (and b!6823234 b!6822999)))

(assert (=> bs!1823244 (not (= lambda!385340 lambda!385331))))

(declare-fun bs!1823245 () Bool)

(assert (= bs!1823245 (and b!6823234 b!6821441)))

(assert (=> bs!1823245 (not (= lambda!385340 lambda!385201))))

(declare-fun bs!1823246 () Bool)

(assert (= bs!1823246 (and b!6823234 b!6821740)))

(assert (=> bs!1823246 (not (= lambda!385340 lambda!385222))))

(assert (=> bs!1823234 (= (and (= (regOne!33782 (regOne!33783 lt!2451335)) (reg!16964 r!7292)) (= (regTwo!33782 (regOne!33783 lt!2451335)) r!7292)) (= lambda!385340 lambda!385150))))

(declare-fun bs!1823247 () Bool)

(assert (= bs!1823247 (and b!6823234 b!6822722)))

(assert (=> bs!1823247 (= (and (= (regOne!33782 (regOne!33783 lt!2451335)) (regOne!33782 (regTwo!33783 lt!2451335))) (= (regTwo!33782 (regOne!33783 lt!2451335)) (regTwo!33782 (regTwo!33783 lt!2451335)))) (= lambda!385340 lambda!385309))))

(assert (=> bs!1823238 (not (= lambda!385340 lambda!385239))))

(declare-fun bs!1823248 () Bool)

(assert (= bs!1823248 (and b!6823234 d!2144993)))

(assert (=> bs!1823248 (not (= lambda!385340 lambda!385248))))

(assert (=> b!6823234 true))

(assert (=> b!6823234 true))

(declare-fun call!621033 () Bool)

(declare-fun bm!621027 () Bool)

(declare-fun c!1269975 () Bool)

(assert (=> bm!621027 (= call!621033 (Exists!3703 (ite c!1269975 lambda!385339 lambda!385340)))))

(declare-fun b!6823232 () Bool)

(declare-fun e!4116419 () Bool)

(declare-fun call!621032 () Bool)

(assert (=> b!6823232 (= e!4116419 call!621032)))

(declare-fun e!4116421 () Bool)

(assert (=> b!6823233 (= e!4116421 call!621033)))

(declare-fun bm!621028 () Bool)

(assert (=> bm!621028 (= call!621032 (isEmpty!38470 s!2326))))

(declare-fun e!4116422 () Bool)

(assert (=> b!6823234 (= e!4116422 call!621033)))

(declare-fun b!6823235 () Bool)

(declare-fun e!4116416 () Bool)

(assert (=> b!6823235 (= e!4116416 (matchRSpec!3736 (regTwo!33783 (regOne!33783 lt!2451335)) s!2326))))

(declare-fun b!6823236 () Bool)

(declare-fun res!2786824 () Bool)

(assert (=> b!6823236 (=> res!2786824 e!4116421)))

(assert (=> b!6823236 (= res!2786824 call!621032)))

(assert (=> b!6823236 (= e!4116422 e!4116421)))

(declare-fun b!6823237 () Bool)

(declare-fun e!4116420 () Bool)

(assert (=> b!6823237 (= e!4116419 e!4116420)))

(declare-fun res!2786825 () Bool)

(assert (=> b!6823237 (= res!2786825 (not ((_ is EmptyLang!16635) (regOne!33783 lt!2451335))))))

(assert (=> b!6823237 (=> (not res!2786825) (not e!4116420))))

(declare-fun b!6823238 () Bool)

(declare-fun c!1269976 () Bool)

(assert (=> b!6823238 (= c!1269976 ((_ is Union!16635) (regOne!33783 lt!2451335)))))

(declare-fun e!4116417 () Bool)

(declare-fun e!4116418 () Bool)

(assert (=> b!6823238 (= e!4116417 e!4116418)))

(declare-fun b!6823239 () Bool)

(assert (=> b!6823239 (= e!4116417 (= s!2326 (Cons!66082 (c!1269331 (regOne!33783 lt!2451335)) Nil!66082)))))

(declare-fun b!6823240 () Bool)

(assert (=> b!6823240 (= e!4116418 e!4116422)))

(assert (=> b!6823240 (= c!1269975 ((_ is Star!16635) (regOne!33783 lt!2451335)))))

(declare-fun b!6823241 () Bool)

(declare-fun c!1269977 () Bool)

(assert (=> b!6823241 (= c!1269977 ((_ is ElementMatch!16635) (regOne!33783 lt!2451335)))))

(assert (=> b!6823241 (= e!4116420 e!4116417)))

(declare-fun d!2145719 () Bool)

(declare-fun c!1269978 () Bool)

(assert (=> d!2145719 (= c!1269978 ((_ is EmptyExpr!16635) (regOne!33783 lt!2451335)))))

(assert (=> d!2145719 (= (matchRSpec!3736 (regOne!33783 lt!2451335) s!2326) e!4116419)))

(declare-fun b!6823242 () Bool)

(assert (=> b!6823242 (= e!4116418 e!4116416)))

(declare-fun res!2786826 () Bool)

(assert (=> b!6823242 (= res!2786826 (matchRSpec!3736 (regOne!33783 (regOne!33783 lt!2451335)) s!2326))))

(assert (=> b!6823242 (=> res!2786826 e!4116416)))

(assert (= (and d!2145719 c!1269978) b!6823232))

(assert (= (and d!2145719 (not c!1269978)) b!6823237))

(assert (= (and b!6823237 res!2786825) b!6823241))

(assert (= (and b!6823241 c!1269977) b!6823239))

(assert (= (and b!6823241 (not c!1269977)) b!6823238))

(assert (= (and b!6823238 c!1269976) b!6823242))

(assert (= (and b!6823238 (not c!1269976)) b!6823240))

(assert (= (and b!6823242 (not res!2786826)) b!6823235))

(assert (= (and b!6823240 c!1269975) b!6823236))

(assert (= (and b!6823240 (not c!1269975)) b!6823234))

(assert (= (and b!6823236 (not res!2786824)) b!6823233))

(assert (= (or b!6823233 b!6823234) bm!621027))

(assert (= (or b!6823232 b!6823236) bm!621028))

(declare-fun m!7569034 () Bool)

(assert (=> bm!621027 m!7569034))

(assert (=> bm!621028 m!7566568))

(declare-fun m!7569036 () Bool)

(assert (=> b!6823235 m!7569036))

(declare-fun m!7569038 () Bool)

(assert (=> b!6823242 m!7569038))

(assert (=> b!6821450 d!2145719))

(declare-fun d!2145721 () Bool)

(assert (=> d!2145721 (= (nullable!6612 lt!2451335) (nullableFct!2510 lt!2451335))))

(declare-fun bs!1823249 () Bool)

(assert (= bs!1823249 d!2145721))

(declare-fun m!7569040 () Bool)

(assert (=> bs!1823249 m!7569040))

(assert (=> b!6821513 d!2145721))

(declare-fun c!1269981 () Bool)

(declare-fun bm!621029 () Bool)

(declare-fun c!1269979 () Bool)

(declare-fun call!621037 () List!66204)

(assert (=> bm!621029 (= call!621037 ($colon$colon!2442 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343))))) (ite (or c!1269979 c!1269981) (regTwo!33782 (h!72528 (exprs!6519 (h!72529 zl!343)))) (h!72528 (exprs!6519 (h!72529 zl!343))))))))

(declare-fun b!6823243 () Bool)

(declare-fun e!4116423 () (InoxSet Context!12038))

(declare-fun call!621039 () (InoxSet Context!12038))

(declare-fun call!621035 () (InoxSet Context!12038))

(assert (=> b!6823243 (= e!4116423 ((_ map or) call!621039 call!621035))))

(declare-fun b!6823244 () Bool)

(declare-fun e!4116427 () (InoxSet Context!12038))

(assert (=> b!6823244 (= e!4116423 e!4116427)))

(assert (=> b!6823244 (= c!1269981 ((_ is Concat!25480) (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun bm!621030 () Bool)

(declare-fun call!621038 () List!66204)

(assert (=> bm!621030 (= call!621038 call!621037)))

(declare-fun b!6823245 () Bool)

(declare-fun e!4116426 () (InoxSet Context!12038))

(declare-fun call!621034 () (InoxSet Context!12038))

(assert (=> b!6823245 (= e!4116426 call!621034)))

(declare-fun b!6823246 () Bool)

(declare-fun e!4116424 () (InoxSet Context!12038))

(assert (=> b!6823246 (= e!4116424 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))) true))))

(declare-fun d!2145723 () Bool)

(declare-fun c!1269983 () Bool)

(assert (=> d!2145723 (= c!1269983 (and ((_ is ElementMatch!16635) (h!72528 (exprs!6519 (h!72529 zl!343)))) (= (c!1269331 (h!72528 (exprs!6519 (h!72529 zl!343)))) (h!72530 s!2326))))))

(assert (=> d!2145723 (= (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (h!72529 zl!343))) (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))) (h!72530 s!2326)) e!4116424)))

(declare-fun bm!621031 () Bool)

(assert (=> bm!621031 (= call!621034 call!621035)))

(declare-fun b!6823247 () Bool)

(declare-fun e!4116428 () (InoxSet Context!12038))

(assert (=> b!6823247 (= e!4116424 e!4116428)))

(declare-fun c!1269980 () Bool)

(assert (=> b!6823247 (= c!1269980 ((_ is Union!16635) (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun b!6823248 () Bool)

(declare-fun c!1269982 () Bool)

(assert (=> b!6823248 (= c!1269982 ((_ is Star!16635) (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(assert (=> b!6823248 (= e!4116427 e!4116426)))

(declare-fun bm!621032 () Bool)

(assert (=> bm!621032 (= call!621039 (derivationStepZipperDown!1863 (ite c!1269980 (regOne!33783 (h!72528 (exprs!6519 (h!72529 zl!343)))) (regOne!33782 (h!72528 (exprs!6519 (h!72529 zl!343))))) (ite c!1269980 (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))) (Context!12039 call!621037)) (h!72530 s!2326)))))

(declare-fun b!6823249 () Bool)

(declare-fun e!4116425 () Bool)

(assert (=> b!6823249 (= c!1269979 e!4116425)))

(declare-fun res!2786827 () Bool)

(assert (=> b!6823249 (=> (not res!2786827) (not e!4116425))))

(assert (=> b!6823249 (= res!2786827 ((_ is Concat!25480) (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(assert (=> b!6823249 (= e!4116428 e!4116423)))

(declare-fun bm!621033 () Bool)

(declare-fun call!621036 () (InoxSet Context!12038))

(assert (=> bm!621033 (= call!621035 call!621036)))

(declare-fun bm!621034 () Bool)

(assert (=> bm!621034 (= call!621036 (derivationStepZipperDown!1863 (ite c!1269980 (regTwo!33783 (h!72528 (exprs!6519 (h!72529 zl!343)))) (ite c!1269979 (regTwo!33782 (h!72528 (exprs!6519 (h!72529 zl!343)))) (ite c!1269981 (regOne!33782 (h!72528 (exprs!6519 (h!72529 zl!343)))) (reg!16964 (h!72528 (exprs!6519 (h!72529 zl!343))))))) (ite (or c!1269980 c!1269979) (Context!12039 (t!379941 (exprs!6519 (h!72529 zl!343)))) (Context!12039 call!621038)) (h!72530 s!2326)))))

(declare-fun b!6823250 () Bool)

(assert (=> b!6823250 (= e!4116426 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823251 () Bool)

(assert (=> b!6823251 (= e!4116428 ((_ map or) call!621039 call!621036))))

(declare-fun b!6823252 () Bool)

(assert (=> b!6823252 (= e!4116425 (nullable!6612 (regOne!33782 (h!72528 (exprs!6519 (h!72529 zl!343))))))))

(declare-fun b!6823253 () Bool)

(assert (=> b!6823253 (= e!4116427 call!621034)))

(assert (= (and d!2145723 c!1269983) b!6823246))

(assert (= (and d!2145723 (not c!1269983)) b!6823247))

(assert (= (and b!6823247 c!1269980) b!6823251))

(assert (= (and b!6823247 (not c!1269980)) b!6823249))

(assert (= (and b!6823249 res!2786827) b!6823252))

(assert (= (and b!6823249 c!1269979) b!6823243))

(assert (= (and b!6823249 (not c!1269979)) b!6823244))

(assert (= (and b!6823244 c!1269981) b!6823253))

(assert (= (and b!6823244 (not c!1269981)) b!6823248))

(assert (= (and b!6823248 c!1269982) b!6823245))

(assert (= (and b!6823248 (not c!1269982)) b!6823250))

(assert (= (or b!6823253 b!6823245) bm!621030))

(assert (= (or b!6823253 b!6823245) bm!621031))

(assert (= (or b!6823243 bm!621030) bm!621029))

(assert (= (or b!6823243 bm!621031) bm!621033))

(assert (= (or b!6823251 bm!621033) bm!621034))

(assert (= (or b!6823251 b!6823243) bm!621032))

(declare-fun m!7569042 () Bool)

(assert (=> bm!621029 m!7569042))

(declare-fun m!7569044 () Bool)

(assert (=> bm!621032 m!7569044))

(declare-fun m!7569046 () Bool)

(assert (=> bm!621034 m!7569046))

(declare-fun m!7569048 () Bool)

(assert (=> b!6823252 m!7569048))

(declare-fun m!7569050 () Bool)

(assert (=> b!6823246 m!7569050))

(assert (=> bm!620791 d!2145723))

(declare-fun c!1269984 () Bool)

(declare-fun call!621043 () List!66204)

(declare-fun bm!621035 () Bool)

(declare-fun c!1269986 () Bool)

(assert (=> bm!621035 (= call!621043 ($colon$colon!2442 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451302)))) (ite (or c!1269984 c!1269986) (regTwo!33782 (h!72528 (exprs!6519 lt!2451302))) (h!72528 (exprs!6519 lt!2451302)))))))

(declare-fun b!6823254 () Bool)

(declare-fun e!4116429 () (InoxSet Context!12038))

(declare-fun call!621045 () (InoxSet Context!12038))

(declare-fun call!621041 () (InoxSet Context!12038))

(assert (=> b!6823254 (= e!4116429 ((_ map or) call!621045 call!621041))))

(declare-fun b!6823255 () Bool)

(declare-fun e!4116433 () (InoxSet Context!12038))

(assert (=> b!6823255 (= e!4116429 e!4116433)))

(assert (=> b!6823255 (= c!1269986 ((_ is Concat!25480) (h!72528 (exprs!6519 lt!2451302))))))

(declare-fun bm!621036 () Bool)

(declare-fun call!621044 () List!66204)

(assert (=> bm!621036 (= call!621044 call!621043)))

(declare-fun b!6823256 () Bool)

(declare-fun e!4116432 () (InoxSet Context!12038))

(declare-fun call!621040 () (InoxSet Context!12038))

(assert (=> b!6823256 (= e!4116432 call!621040)))

(declare-fun b!6823257 () Bool)

(declare-fun e!4116430 () (InoxSet Context!12038))

(assert (=> b!6823257 (= e!4116430 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (t!379941 (exprs!6519 lt!2451302))) true))))

(declare-fun d!2145725 () Bool)

(declare-fun c!1269988 () Bool)

(assert (=> d!2145725 (= c!1269988 (and ((_ is ElementMatch!16635) (h!72528 (exprs!6519 lt!2451302))) (= (c!1269331 (h!72528 (exprs!6519 lt!2451302))) (h!72530 s!2326))))))

(assert (=> d!2145725 (= (derivationStepZipperDown!1863 (h!72528 (exprs!6519 lt!2451302)) (Context!12039 (t!379941 (exprs!6519 lt!2451302))) (h!72530 s!2326)) e!4116430)))

(declare-fun bm!621037 () Bool)

(assert (=> bm!621037 (= call!621040 call!621041)))

(declare-fun b!6823258 () Bool)

(declare-fun e!4116434 () (InoxSet Context!12038))

(assert (=> b!6823258 (= e!4116430 e!4116434)))

(declare-fun c!1269985 () Bool)

(assert (=> b!6823258 (= c!1269985 ((_ is Union!16635) (h!72528 (exprs!6519 lt!2451302))))))

(declare-fun b!6823259 () Bool)

(declare-fun c!1269987 () Bool)

(assert (=> b!6823259 (= c!1269987 ((_ is Star!16635) (h!72528 (exprs!6519 lt!2451302))))))

(assert (=> b!6823259 (= e!4116433 e!4116432)))

(declare-fun bm!621038 () Bool)

(assert (=> bm!621038 (= call!621045 (derivationStepZipperDown!1863 (ite c!1269985 (regOne!33783 (h!72528 (exprs!6519 lt!2451302))) (regOne!33782 (h!72528 (exprs!6519 lt!2451302)))) (ite c!1269985 (Context!12039 (t!379941 (exprs!6519 lt!2451302))) (Context!12039 call!621043)) (h!72530 s!2326)))))

(declare-fun b!6823260 () Bool)

(declare-fun e!4116431 () Bool)

(assert (=> b!6823260 (= c!1269984 e!4116431)))

(declare-fun res!2786828 () Bool)

(assert (=> b!6823260 (=> (not res!2786828) (not e!4116431))))

(assert (=> b!6823260 (= res!2786828 ((_ is Concat!25480) (h!72528 (exprs!6519 lt!2451302))))))

(assert (=> b!6823260 (= e!4116434 e!4116429)))

(declare-fun bm!621039 () Bool)

(declare-fun call!621042 () (InoxSet Context!12038))

(assert (=> bm!621039 (= call!621041 call!621042)))

(declare-fun bm!621040 () Bool)

(assert (=> bm!621040 (= call!621042 (derivationStepZipperDown!1863 (ite c!1269985 (regTwo!33783 (h!72528 (exprs!6519 lt!2451302))) (ite c!1269984 (regTwo!33782 (h!72528 (exprs!6519 lt!2451302))) (ite c!1269986 (regOne!33782 (h!72528 (exprs!6519 lt!2451302))) (reg!16964 (h!72528 (exprs!6519 lt!2451302)))))) (ite (or c!1269985 c!1269984) (Context!12039 (t!379941 (exprs!6519 lt!2451302))) (Context!12039 call!621044)) (h!72530 s!2326)))))

(declare-fun b!6823261 () Bool)

(assert (=> b!6823261 (= e!4116432 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823262 () Bool)

(assert (=> b!6823262 (= e!4116434 ((_ map or) call!621045 call!621042))))

(declare-fun b!6823263 () Bool)

(assert (=> b!6823263 (= e!4116431 (nullable!6612 (regOne!33782 (h!72528 (exprs!6519 lt!2451302)))))))

(declare-fun b!6823264 () Bool)

(assert (=> b!6823264 (= e!4116433 call!621040)))

(assert (= (and d!2145725 c!1269988) b!6823257))

(assert (= (and d!2145725 (not c!1269988)) b!6823258))

(assert (= (and b!6823258 c!1269985) b!6823262))

(assert (= (and b!6823258 (not c!1269985)) b!6823260))

(assert (= (and b!6823260 res!2786828) b!6823263))

(assert (= (and b!6823260 c!1269984) b!6823254))

(assert (= (and b!6823260 (not c!1269984)) b!6823255))

(assert (= (and b!6823255 c!1269986) b!6823264))

(assert (= (and b!6823255 (not c!1269986)) b!6823259))

(assert (= (and b!6823259 c!1269987) b!6823256))

(assert (= (and b!6823259 (not c!1269987)) b!6823261))

(assert (= (or b!6823264 b!6823256) bm!621036))

(assert (= (or b!6823264 b!6823256) bm!621037))

(assert (= (or b!6823254 bm!621036) bm!621035))

(assert (= (or b!6823254 bm!621037) bm!621039))

(assert (= (or b!6823262 bm!621039) bm!621040))

(assert (= (or b!6823262 b!6823254) bm!621038))

(declare-fun m!7569052 () Bool)

(assert (=> bm!621035 m!7569052))

(declare-fun m!7569054 () Bool)

(assert (=> bm!621038 m!7569054))

(declare-fun m!7569056 () Bool)

(assert (=> bm!621040 m!7569056))

(declare-fun m!7569058 () Bool)

(assert (=> b!6823263 m!7569058))

(declare-fun m!7569060 () Bool)

(assert (=> b!6823257 m!7569060))

(assert (=> bm!620761 d!2145725))

(declare-fun c!1269989 () Bool)

(declare-fun bm!621041 () Bool)

(declare-fun c!1269991 () Bool)

(declare-fun call!621049 () List!66204)

(assert (=> bm!621041 (= call!621049 ($colon$colon!2442 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 lt!2451314)))) (ite (or c!1269989 c!1269991) (regTwo!33782 (h!72528 (exprs!6519 lt!2451314))) (h!72528 (exprs!6519 lt!2451314)))))))

(declare-fun b!6823265 () Bool)

(declare-fun e!4116435 () (InoxSet Context!12038))

(declare-fun call!621051 () (InoxSet Context!12038))

(declare-fun call!621047 () (InoxSet Context!12038))

(assert (=> b!6823265 (= e!4116435 ((_ map or) call!621051 call!621047))))

(declare-fun b!6823266 () Bool)

(declare-fun e!4116439 () (InoxSet Context!12038))

(assert (=> b!6823266 (= e!4116435 e!4116439)))

(assert (=> b!6823266 (= c!1269991 ((_ is Concat!25480) (h!72528 (exprs!6519 lt!2451314))))))

(declare-fun bm!621042 () Bool)

(declare-fun call!621050 () List!66204)

(assert (=> bm!621042 (= call!621050 call!621049)))

(declare-fun b!6823267 () Bool)

(declare-fun e!4116438 () (InoxSet Context!12038))

(declare-fun call!621046 () (InoxSet Context!12038))

(assert (=> b!6823267 (= e!4116438 call!621046)))

(declare-fun b!6823268 () Bool)

(declare-fun e!4116436 () (InoxSet Context!12038))

(assert (=> b!6823268 (= e!4116436 (store ((as const (Array Context!12038 Bool)) false) (Context!12039 (t!379941 (exprs!6519 lt!2451314))) true))))

(declare-fun d!2145727 () Bool)

(declare-fun c!1269993 () Bool)

(assert (=> d!2145727 (= c!1269993 (and ((_ is ElementMatch!16635) (h!72528 (exprs!6519 lt!2451314))) (= (c!1269331 (h!72528 (exprs!6519 lt!2451314))) (h!72530 s!2326))))))

(assert (=> d!2145727 (= (derivationStepZipperDown!1863 (h!72528 (exprs!6519 lt!2451314)) (Context!12039 (t!379941 (exprs!6519 lt!2451314))) (h!72530 s!2326)) e!4116436)))

(declare-fun bm!621043 () Bool)

(assert (=> bm!621043 (= call!621046 call!621047)))

(declare-fun b!6823269 () Bool)

(declare-fun e!4116440 () (InoxSet Context!12038))

(assert (=> b!6823269 (= e!4116436 e!4116440)))

(declare-fun c!1269990 () Bool)

(assert (=> b!6823269 (= c!1269990 ((_ is Union!16635) (h!72528 (exprs!6519 lt!2451314))))))

(declare-fun b!6823270 () Bool)

(declare-fun c!1269992 () Bool)

(assert (=> b!6823270 (= c!1269992 ((_ is Star!16635) (h!72528 (exprs!6519 lt!2451314))))))

(assert (=> b!6823270 (= e!4116439 e!4116438)))

(declare-fun bm!621044 () Bool)

(assert (=> bm!621044 (= call!621051 (derivationStepZipperDown!1863 (ite c!1269990 (regOne!33783 (h!72528 (exprs!6519 lt!2451314))) (regOne!33782 (h!72528 (exprs!6519 lt!2451314)))) (ite c!1269990 (Context!12039 (t!379941 (exprs!6519 lt!2451314))) (Context!12039 call!621049)) (h!72530 s!2326)))))

(declare-fun b!6823271 () Bool)

(declare-fun e!4116437 () Bool)

(assert (=> b!6823271 (= c!1269989 e!4116437)))

(declare-fun res!2786829 () Bool)

(assert (=> b!6823271 (=> (not res!2786829) (not e!4116437))))

(assert (=> b!6823271 (= res!2786829 ((_ is Concat!25480) (h!72528 (exprs!6519 lt!2451314))))))

(assert (=> b!6823271 (= e!4116440 e!4116435)))

(declare-fun bm!621045 () Bool)

(declare-fun call!621048 () (InoxSet Context!12038))

(assert (=> bm!621045 (= call!621047 call!621048)))

(declare-fun bm!621046 () Bool)

(assert (=> bm!621046 (= call!621048 (derivationStepZipperDown!1863 (ite c!1269990 (regTwo!33783 (h!72528 (exprs!6519 lt!2451314))) (ite c!1269989 (regTwo!33782 (h!72528 (exprs!6519 lt!2451314))) (ite c!1269991 (regOne!33782 (h!72528 (exprs!6519 lt!2451314))) (reg!16964 (h!72528 (exprs!6519 lt!2451314)))))) (ite (or c!1269990 c!1269989) (Context!12039 (t!379941 (exprs!6519 lt!2451314))) (Context!12039 call!621050)) (h!72530 s!2326)))))

(declare-fun b!6823272 () Bool)

(assert (=> b!6823272 (= e!4116438 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823273 () Bool)

(assert (=> b!6823273 (= e!4116440 ((_ map or) call!621051 call!621048))))

(declare-fun b!6823274 () Bool)

(assert (=> b!6823274 (= e!4116437 (nullable!6612 (regOne!33782 (h!72528 (exprs!6519 lt!2451314)))))))

(declare-fun b!6823275 () Bool)

(assert (=> b!6823275 (= e!4116439 call!621046)))

(assert (= (and d!2145727 c!1269993) b!6823268))

(assert (= (and d!2145727 (not c!1269993)) b!6823269))

(assert (= (and b!6823269 c!1269990) b!6823273))

(assert (= (and b!6823269 (not c!1269990)) b!6823271))

(assert (= (and b!6823271 res!2786829) b!6823274))

(assert (= (and b!6823271 c!1269989) b!6823265))

(assert (= (and b!6823271 (not c!1269989)) b!6823266))

(assert (= (and b!6823266 c!1269991) b!6823275))

(assert (= (and b!6823266 (not c!1269991)) b!6823270))

(assert (= (and b!6823270 c!1269992) b!6823267))

(assert (= (and b!6823270 (not c!1269992)) b!6823272))

(assert (= (or b!6823275 b!6823267) bm!621042))

(assert (= (or b!6823275 b!6823267) bm!621043))

(assert (= (or b!6823265 bm!621042) bm!621041))

(assert (= (or b!6823265 bm!621043) bm!621045))

(assert (= (or b!6823273 bm!621045) bm!621046))

(assert (= (or b!6823273 b!6823265) bm!621044))

(declare-fun m!7569062 () Bool)

(assert (=> bm!621041 m!7569062))

(declare-fun m!7569064 () Bool)

(assert (=> bm!621044 m!7569064))

(declare-fun m!7569066 () Bool)

(assert (=> bm!621046 m!7569066))

(declare-fun m!7569068 () Bool)

(assert (=> b!6823274 m!7569068))

(declare-fun m!7569070 () Bool)

(assert (=> b!6823268 m!7569070))

(assert (=> bm!620762 d!2145727))

(assert (=> d!2144995 d!2144997))

(declare-fun d!2145729 () Bool)

(assert (=> d!2145729 (= (map!15113 lt!2451330 lambda!385152) (store ((as const (Array Context!12038 Bool)) false) (dynLambda!26404 lambda!385152 lt!2451302) true))))

(assert (=> d!2145729 true))

(declare-fun _$12!1753 () Unit!159961)

(assert (=> d!2145729 (= (choose!50872 lt!2451330 lt!2451302 lambda!385152) _$12!1753)))

(declare-fun b_lambda!257361 () Bool)

(assert (=> (not b_lambda!257361) (not d!2145729)))

(declare-fun bs!1823250 () Bool)

(assert (= bs!1823250 d!2145729))

(assert (=> bs!1823250 m!7566484))

(assert (=> bs!1823250 m!7567402))

(assert (=> bs!1823250 m!7567402))

(assert (=> bs!1823250 m!7567406))

(assert (=> d!2144995 d!2145729))

(assert (=> b!6821525 d!2145425))

(assert (=> b!6821525 d!2145427))

(assert (=> d!2144841 d!2144983))

(assert (=> d!2144841 d!2145701))

(declare-fun d!2145731 () Bool)

(assert (=> d!2145731 (= (head!13678 (exprs!6519 (h!72529 zl!343))) (h!72528 (exprs!6519 (h!72529 zl!343))))))

(assert (=> b!6821612 d!2145731))

(assert (=> b!6821760 d!2145455))

(declare-fun d!2145733 () Bool)

(declare-fun c!1269994 () Bool)

(assert (=> d!2145733 (= c!1269994 (isEmpty!38470 (tail!12762 (t!379943 s!2326))))))

(declare-fun e!4116441 () Bool)

(assert (=> d!2145733 (= (matchZipper!2621 (derivationStepZipper!2579 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) (head!13677 (t!379943 s!2326))) (tail!12762 (t!379943 s!2326))) e!4116441)))

(declare-fun b!6823276 () Bool)

(assert (=> b!6823276 (= e!4116441 (nullableZipper!2340 (derivationStepZipper!2579 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) (head!13677 (t!379943 s!2326)))))))

(declare-fun b!6823277 () Bool)

(assert (=> b!6823277 (= e!4116441 (matchZipper!2621 (derivationStepZipper!2579 (derivationStepZipper!2579 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) (head!13677 (t!379943 s!2326))) (head!13677 (tail!12762 (t!379943 s!2326)))) (tail!12762 (tail!12762 (t!379943 s!2326)))))))

(assert (= (and d!2145733 c!1269994) b!6823276))

(assert (= (and d!2145733 (not c!1269994)) b!6823277))

(assert (=> d!2145733 m!7567166))

(declare-fun m!7569072 () Bool)

(assert (=> d!2145733 m!7569072))

(assert (=> b!6823276 m!7567164))

(declare-fun m!7569074 () Bool)

(assert (=> b!6823276 m!7569074))

(assert (=> b!6823277 m!7567166))

(declare-fun m!7569076 () Bool)

(assert (=> b!6823277 m!7569076))

(assert (=> b!6823277 m!7567164))

(assert (=> b!6823277 m!7569076))

(declare-fun m!7569078 () Bool)

(assert (=> b!6823277 m!7569078))

(assert (=> b!6823277 m!7567166))

(declare-fun m!7569080 () Bool)

(assert (=> b!6823277 m!7569080))

(assert (=> b!6823277 m!7569078))

(assert (=> b!6823277 m!7569080))

(declare-fun m!7569082 () Bool)

(assert (=> b!6823277 m!7569082))

(assert (=> b!6821627 d!2145733))

(declare-fun bs!1823251 () Bool)

(declare-fun d!2145735 () Bool)

(assert (= bs!1823251 (and d!2145735 d!2144913)))

(declare-fun lambda!385341 () Int)

(assert (=> bs!1823251 (= (= (head!13677 (t!379943 s!2326)) (h!72530 s!2326)) (= lambda!385341 lambda!385220))))

(declare-fun bs!1823252 () Bool)

(assert (= bs!1823252 (and d!2145735 d!2145541)))

(assert (=> bs!1823252 (= (= (head!13677 (t!379943 s!2326)) (head!13677 s!2326)) (= lambda!385341 lambda!385325))))

(declare-fun bs!1823253 () Bool)

(assert (= bs!1823253 (and d!2145735 d!2145453)))

(assert (=> bs!1823253 (= (= (head!13677 (t!379943 s!2326)) (head!13677 s!2326)) (= lambda!385341 lambda!385314))))

(declare-fun bs!1823254 () Bool)

(assert (= bs!1823254 (and d!2145735 b!6820978)))

(assert (=> bs!1823254 (= (= (head!13677 (t!379943 s!2326)) (h!72530 s!2326)) (= lambda!385341 lambda!385151))))

(declare-fun bs!1823255 () Bool)

(assert (= bs!1823255 (and d!2145735 d!2145605)))

(assert (=> bs!1823255 (= (= (head!13677 (t!379943 s!2326)) (head!13677 lt!2451319)) (= lambda!385341 lambda!385333))))

(declare-fun bs!1823256 () Bool)

(assert (= bs!1823256 (and d!2145735 d!2144793)))

(assert (=> bs!1823256 (= (= (head!13677 (t!379943 s!2326)) (h!72530 s!2326)) (= lambda!385341 lambda!385183))))

(declare-fun bs!1823257 () Bool)

(assert (= bs!1823257 (and d!2145735 d!2145443)))

(assert (=> bs!1823257 (= (= (head!13677 (t!379943 s!2326)) (head!13677 (_2!36913 lt!2451337))) (= lambda!385341 lambda!385310))))

(declare-fun bs!1823258 () Bool)

(assert (= bs!1823258 (and d!2145735 d!2145567)))

(assert (=> bs!1823258 (= (= (head!13677 (t!379943 s!2326)) (head!13677 (_1!36913 lt!2451337))) (= lambda!385341 lambda!385330))))

(declare-fun bs!1823259 () Bool)

(assert (= bs!1823259 (and d!2145735 d!2144805)))

(assert (=> bs!1823259 (= (= (head!13677 (t!379943 s!2326)) (h!72530 s!2326)) (= lambda!385341 lambda!385184))))

(assert (=> d!2145735 true))

(assert (=> d!2145735 (= (derivationStepZipper!2579 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) (head!13677 (t!379943 s!2326))) (flatMap!2116 (derivationStepZipper!2579 lt!2451324 (h!72530 s!2326)) lambda!385341))))

(declare-fun bs!1823260 () Bool)

(assert (= bs!1823260 d!2145735))

(assert (=> bs!1823260 m!7566598))

(declare-fun m!7569084 () Bool)

(assert (=> bs!1823260 m!7569084))

(assert (=> b!6821627 d!2145735))

(declare-fun d!2145737 () Bool)

(assert (=> d!2145737 (= (head!13677 (t!379943 s!2326)) (h!72530 (t!379943 s!2326)))))

(assert (=> b!6821627 d!2145737))

(declare-fun d!2145739 () Bool)

(assert (=> d!2145739 (= (tail!12762 (t!379943 s!2326)) (t!379943 (t!379943 s!2326)))))

(assert (=> b!6821627 d!2145739))

(declare-fun bs!1823261 () Bool)

(declare-fun d!2145741 () Bool)

(assert (= bs!1823261 (and d!2145741 d!2145449)))

(declare-fun lambda!385342 () Int)

(assert (=> bs!1823261 (= lambda!385342 lambda!385313)))

(declare-fun bs!1823262 () Bool)

(assert (= bs!1823262 (and d!2145741 d!2145465)))

(assert (=> bs!1823262 (= lambda!385342 lambda!385318)))

(declare-fun bs!1823263 () Bool)

(assert (= bs!1823263 (and d!2145741 d!2145475)))

(assert (=> bs!1823263 (= lambda!385342 lambda!385319)))

(declare-fun bs!1823264 () Bool)

(assert (= bs!1823264 (and d!2145741 d!2145653)))

(assert (=> bs!1823264 (= lambda!385342 lambda!385336)))

(assert (=> d!2145741 (= (nullableZipper!2340 lt!2451308) (exists!2751 lt!2451308 lambda!385342))))

(declare-fun bs!1823265 () Bool)

(assert (= bs!1823265 d!2145741))

(declare-fun m!7569086 () Bool)

(assert (=> bs!1823265 m!7569086))

(assert (=> b!6821620 d!2145741))

(assert (=> b!6821868 d!2145623))

(declare-fun d!2145743 () Bool)

(assert (=> d!2145743 (= (Exists!3703 (ite c!1269473 lambda!385201 lambda!385202)) (choose!50869 (ite c!1269473 lambda!385201 lambda!385202)))))

(declare-fun bs!1823266 () Bool)

(assert (= bs!1823266 d!2145743))

(declare-fun m!7569088 () Bool)

(assert (=> bs!1823266 m!7569088))

(assert (=> bm!620776 d!2145743))

(assert (=> bm!620780 d!2144983))

(declare-fun d!2145745 () Bool)

(assert (=> d!2145745 (= (isEmptyLang!1999 lt!2451481) ((_ is EmptyLang!16635) lt!2451481))))

(assert (=> b!6821819 d!2145745))

(declare-fun b!6823279 () Bool)

(declare-fun e!4116444 () (InoxSet Context!12038))

(declare-fun e!4116442 () (InoxSet Context!12038))

(assert (=> b!6823279 (= e!4116444 e!4116442)))

(declare-fun c!1269996 () Bool)

(assert (=> b!6823279 (= c!1269996 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))))))

(declare-fun b!6823280 () Bool)

(assert (=> b!6823280 (= e!4116442 ((as const (Array Context!12038 Bool)) false))))

(declare-fun b!6823281 () Bool)

(declare-fun call!621052 () (InoxSet Context!12038))

(assert (=> b!6823281 (= e!4116442 call!621052)))

(declare-fun b!6823282 () Bool)

(declare-fun e!4116443 () Bool)

(assert (=> b!6823282 (= e!4116443 (nullable!6612 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))))))))

(declare-fun bm!621047 () Bool)

(assert (=> bm!621047 (= call!621052 (derivationStepZipperDown!1863 (h!72528 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))) (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))))) (h!72530 s!2326)))))

(declare-fun b!6823278 () Bool)

(assert (=> b!6823278 (= e!4116444 ((_ map or) call!621052 (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080)))))))) (h!72530 s!2326))))))

(declare-fun d!2145747 () Bool)

(declare-fun c!1269995 () Bool)

(assert (=> d!2145747 (= c!1269995 e!4116443)))

(declare-fun res!2786830 () Bool)

(assert (=> d!2145747 (=> (not res!2786830) (not e!4116443))))

(assert (=> d!2145747 (= res!2786830 ((_ is Cons!66080) (exprs!6519 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))))))))

(assert (=> d!2145747 (= (derivationStepZipperUp!1789 (Context!12039 (t!379941 (exprs!6519 (Context!12039 (Cons!66080 r!7292 Nil!66080))))) (h!72530 s!2326)) e!4116444)))

(assert (= (and d!2145747 res!2786830) b!6823282))

(assert (= (and d!2145747 c!1269995) b!6823278))

(assert (= (and d!2145747 (not c!1269995)) b!6823279))

(assert (= (and b!6823279 c!1269996) b!6823281))

(assert (= (and b!6823279 (not c!1269996)) b!6823280))

(assert (= (or b!6823278 b!6823281) bm!621047))

(declare-fun m!7569090 () Bool)

(assert (=> b!6823282 m!7569090))

(declare-fun m!7569092 () Bool)

(assert (=> bm!621047 m!7569092))

(declare-fun m!7569094 () Bool)

(assert (=> b!6823278 m!7569094))

(assert (=> b!6821304 d!2145747))

(declare-fun d!2145749 () Bool)

(declare-fun lt!2451618 () Int)

(assert (=> d!2145749 (>= lt!2451618 0)))

(declare-fun e!4116447 () Int)

(assert (=> d!2145749 (= lt!2451618 e!4116447)))

(declare-fun c!1269999 () Bool)

(assert (=> d!2145749 (= c!1269999 ((_ is Nil!66082) lt!2451448))))

(assert (=> d!2145749 (= (size!40690 lt!2451448) lt!2451618)))

(declare-fun b!6823287 () Bool)

(assert (=> b!6823287 (= e!4116447 0)))

(declare-fun b!6823288 () Bool)

(assert (=> b!6823288 (= e!4116447 (+ 1 (size!40690 (t!379943 lt!2451448))))))

(assert (= (and d!2145749 c!1269999) b!6823287))

(assert (= (and d!2145749 (not c!1269999)) b!6823288))

(declare-fun m!7569096 () Bool)

(assert (=> b!6823288 m!7569096))

(assert (=> b!6821708 d!2145749))

(declare-fun d!2145751 () Bool)

(declare-fun lt!2451619 () Int)

(assert (=> d!2145751 (>= lt!2451619 0)))

(declare-fun e!4116448 () Int)

(assert (=> d!2145751 (= lt!2451619 e!4116448)))

(declare-fun c!1270000 () Bool)

(assert (=> d!2145751 (= c!1270000 ((_ is Nil!66082) (_1!36913 lt!2451337)))))

(assert (=> d!2145751 (= (size!40690 (_1!36913 lt!2451337)) lt!2451619)))

(declare-fun b!6823289 () Bool)

(assert (=> b!6823289 (= e!4116448 0)))

(declare-fun b!6823290 () Bool)

(assert (=> b!6823290 (= e!4116448 (+ 1 (size!40690 (t!379943 (_1!36913 lt!2451337)))))))

(assert (= (and d!2145751 c!1270000) b!6823289))

(assert (= (and d!2145751 (not c!1270000)) b!6823290))

(assert (=> b!6823290 m!7568926))

(assert (=> b!6821708 d!2145751))

(declare-fun d!2145753 () Bool)

(declare-fun lt!2451620 () Int)

(assert (=> d!2145753 (>= lt!2451620 0)))

(declare-fun e!4116449 () Int)

(assert (=> d!2145753 (= lt!2451620 e!4116449)))

(declare-fun c!1270001 () Bool)

(assert (=> d!2145753 (= c!1270001 ((_ is Nil!66082) (_2!36913 lt!2451337)))))

(assert (=> d!2145753 (= (size!40690 (_2!36913 lt!2451337)) lt!2451620)))

(declare-fun b!6823291 () Bool)

(assert (=> b!6823291 (= e!4116449 0)))

(declare-fun b!6823292 () Bool)

(assert (=> b!6823292 (= e!4116449 (+ 1 (size!40690 (t!379943 (_2!36913 lt!2451337)))))))

(assert (= (and d!2145753 c!1270001) b!6823291))

(assert (= (and d!2145753 (not c!1270001)) b!6823292))

(declare-fun m!7569098 () Bool)

(assert (=> b!6823292 m!7569098))

(assert (=> b!6821708 d!2145753))

(declare-fun d!2145755 () Bool)

(assert (=> d!2145755 (= (isConcat!1514 lt!2451442) ((_ is Concat!25480) lt!2451442))))

(assert (=> b!6821608 d!2145755))

(declare-fun bs!1823267 () Bool)

(declare-fun d!2145757 () Bool)

(assert (= bs!1823267 (and d!2145757 d!2145465)))

(declare-fun lambda!385343 () Int)

(assert (=> bs!1823267 (= lambda!385343 lambda!385318)))

(declare-fun bs!1823268 () Bool)

(assert (= bs!1823268 (and d!2145757 d!2145475)))

(assert (=> bs!1823268 (= lambda!385343 lambda!385319)))

(declare-fun bs!1823269 () Bool)

(assert (= bs!1823269 (and d!2145757 d!2145741)))

(assert (=> bs!1823269 (= lambda!385343 lambda!385342)))

(declare-fun bs!1823270 () Bool)

(assert (= bs!1823270 (and d!2145757 d!2145653)))

(assert (=> bs!1823270 (= lambda!385343 lambda!385336)))

(declare-fun bs!1823271 () Bool)

(assert (= bs!1823271 (and d!2145757 d!2145449)))

(assert (=> bs!1823271 (= lambda!385343 lambda!385313)))

(assert (=> d!2145757 (= (nullableZipper!2340 lt!2451324) (exists!2751 lt!2451324 lambda!385343))))

(declare-fun bs!1823272 () Bool)

(assert (= bs!1823272 d!2145757))

(declare-fun m!7569100 () Bool)

(assert (=> bs!1823272 m!7569100))

(assert (=> b!6821624 d!2145757))

(declare-fun d!2145759 () Bool)

(assert (=> d!2145759 (= (Exists!3703 lambda!385238) (choose!50869 lambda!385238))))

(declare-fun bs!1823273 () Bool)

(assert (= bs!1823273 d!2145759))

(declare-fun m!7569102 () Bool)

(assert (=> bs!1823273 m!7569102))

(assert (=> d!2144979 d!2145759))

(declare-fun d!2145761 () Bool)

(assert (=> d!2145761 (= (Exists!3703 lambda!385239) (choose!50869 lambda!385239))))

(declare-fun bs!1823274 () Bool)

(assert (= bs!1823274 d!2145761))

(declare-fun m!7569104 () Bool)

(assert (=> bs!1823274 m!7569104))

(assert (=> d!2144979 d!2145761))

(declare-fun bs!1823275 () Bool)

(declare-fun d!2145763 () Bool)

(assert (= bs!1823275 (and d!2145763 d!2145547)))

(declare-fun lambda!385348 () Int)

(assert (=> bs!1823275 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385348 lambda!385328))))

(declare-fun bs!1823276 () Bool)

(assert (= bs!1823276 (and d!2145763 b!6820967)))

(assert (=> bs!1823276 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385348 lambda!385148))))

(declare-fun bs!1823277 () Bool)

(assert (= bs!1823277 (and d!2145763 d!2144987)))

(assert (=> bs!1823277 (not (= lambda!385348 lambda!385245))))

(declare-fun bs!1823278 () Bool)

(assert (= bs!1823278 (and d!2145763 b!6821741)))

(assert (=> bs!1823278 (not (= lambda!385348 lambda!385223))))

(declare-fun bs!1823279 () Bool)

(assert (= bs!1823279 (and d!2145763 b!6821442)))

(assert (=> bs!1823279 (not (= lambda!385348 lambda!385202))))

(declare-fun bs!1823280 () Bool)

(assert (= bs!1823280 (and d!2145763 d!2144979)))

(assert (=> bs!1823280 (= lambda!385348 lambda!385238)))

(assert (=> bs!1823276 (not (= lambda!385348 lambda!385149))))

(declare-fun bs!1823281 () Bool)

(assert (= bs!1823281 (and d!2145763 b!6823234)))

(assert (=> bs!1823281 (not (= lambda!385348 lambda!385340))))

(declare-fun bs!1823282 () Bool)

(assert (= bs!1823282 (and d!2145763 b!6822721)))

(assert (=> bs!1823282 (not (= lambda!385348 lambda!385308))))

(declare-fun bs!1823283 () Bool)

(assert (= bs!1823283 (and d!2145763 b!6822752)))

(assert (=> bs!1823283 (not (= lambda!385348 lambda!385316))))

(assert (=> bs!1823277 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385348 lambda!385244))))

(declare-fun bs!1823284 () Bool)

(assert (= bs!1823284 (and d!2145763 b!6822751)))

(assert (=> bs!1823284 (not (= lambda!385348 lambda!385315))))

(declare-fun bs!1823285 () Bool)

(assert (= bs!1823285 (and d!2145763 b!6823000)))

(assert (=> bs!1823285 (not (= lambda!385348 lambda!385332))))

(declare-fun bs!1823286 () Bool)

(assert (= bs!1823286 (and d!2145763 b!6823233)))

(assert (=> bs!1823286 (not (= lambda!385348 lambda!385339))))

(declare-fun bs!1823287 () Bool)

(assert (= bs!1823287 (and d!2145763 b!6822999)))

(assert (=> bs!1823287 (not (= lambda!385348 lambda!385331))))

(declare-fun bs!1823288 () Bool)

(assert (= bs!1823288 (and d!2145763 b!6821441)))

(assert (=> bs!1823288 (not (= lambda!385348 lambda!385201))))

(declare-fun bs!1823289 () Bool)

(assert (= bs!1823289 (and d!2145763 b!6821740)))

(assert (=> bs!1823289 (not (= lambda!385348 lambda!385222))))

(assert (=> bs!1823276 (not (= lambda!385348 lambda!385150))))

(declare-fun bs!1823290 () Bool)

(assert (= bs!1823290 (and d!2145763 b!6822722)))

(assert (=> bs!1823290 (not (= lambda!385348 lambda!385309))))

(assert (=> bs!1823280 (not (= lambda!385348 lambda!385239))))

(declare-fun bs!1823291 () Bool)

(assert (= bs!1823291 (and d!2145763 d!2144993)))

(assert (=> bs!1823291 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385348 lambda!385248))))

(assert (=> d!2145763 true))

(assert (=> d!2145763 true))

(declare-fun lambda!385349 () Int)

(assert (=> bs!1823275 (not (= lambda!385349 lambda!385328))))

(assert (=> bs!1823276 (not (= lambda!385349 lambda!385148))))

(assert (=> bs!1823277 (not (= lambda!385349 lambda!385245))))

(assert (=> bs!1823278 (not (= lambda!385349 lambda!385223))))

(assert (=> bs!1823279 (not (= lambda!385349 lambda!385202))))

(assert (=> bs!1823280 (not (= lambda!385349 lambda!385238))))

(assert (=> bs!1823276 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385349 lambda!385149))))

(assert (=> bs!1823281 (not (= lambda!385349 lambda!385340))))

(assert (=> bs!1823282 (= (and (= (reg!16964 r!7292) (reg!16964 (regTwo!33783 lt!2451335))) (= (Star!16635 (reg!16964 r!7292)) (regTwo!33783 lt!2451335))) (= lambda!385349 lambda!385308))))

(assert (=> bs!1823283 (not (= lambda!385349 lambda!385316))))

(assert (=> bs!1823277 (not (= lambda!385349 lambda!385244))))

(assert (=> bs!1823284 (= (and (= (reg!16964 r!7292) (reg!16964 (regOne!33783 r!7292))) (= (Star!16635 (reg!16964 r!7292)) (regOne!33783 r!7292))) (= lambda!385349 lambda!385315))))

(assert (=> bs!1823285 (not (= lambda!385349 lambda!385332))))

(assert (=> bs!1823286 (= (and (= (reg!16964 r!7292) (reg!16964 (regOne!33783 lt!2451335))) (= (Star!16635 (reg!16964 r!7292)) (regOne!33783 lt!2451335))) (= lambda!385349 lambda!385339))))

(assert (=> bs!1823287 (= (and (= (reg!16964 r!7292) (reg!16964 (regTwo!33783 r!7292))) (= (Star!16635 (reg!16964 r!7292)) (regTwo!33783 r!7292))) (= lambda!385349 lambda!385331))))

(assert (=> bs!1823288 (= (and (= (reg!16964 r!7292) (reg!16964 lt!2451335)) (= (Star!16635 (reg!16964 r!7292)) lt!2451335)) (= lambda!385349 lambda!385201))))

(assert (=> bs!1823289 (= (= (Star!16635 (reg!16964 r!7292)) r!7292) (= lambda!385349 lambda!385222))))

(declare-fun bs!1823292 () Bool)

(assert (= bs!1823292 d!2145763))

(assert (=> bs!1823292 (not (= lambda!385349 lambda!385348))))

(assert (=> bs!1823276 (not (= lambda!385349 lambda!385150))))

(assert (=> bs!1823290 (not (= lambda!385349 lambda!385309))))

(assert (=> bs!1823280 (= lambda!385349 lambda!385239)))

(assert (=> bs!1823291 (not (= lambda!385349 lambda!385248))))

(assert (=> d!2145763 true))

(assert (=> d!2145763 true))

(assert (=> d!2145763 (= (Exists!3703 lambda!385348) (Exists!3703 lambda!385349))))

(assert (=> d!2145763 true))

(declare-fun _$91!842 () Unit!159961)

(assert (=> d!2145763 (= (choose!50868 (reg!16964 r!7292) s!2326) _$91!842)))

(declare-fun m!7569106 () Bool)

(assert (=> bs!1823292 m!7569106))

(declare-fun m!7569108 () Bool)

(assert (=> bs!1823292 m!7569108))

(assert (=> d!2144979 d!2145763))

(assert (=> d!2144979 d!2145549))

(assert (=> bm!620804 d!2145599))

(declare-fun b!6823303 () Bool)

(declare-fun res!2786841 () Bool)

(declare-fun e!4116458 () Bool)

(assert (=> b!6823303 (=> (not res!2786841) (not e!4116458))))

(declare-fun call!621055 () Bool)

(assert (=> b!6823303 (= res!2786841 call!621055)))

(declare-fun e!4116456 () Bool)

(assert (=> b!6823303 (= e!4116456 e!4116458)))

(declare-fun b!6823304 () Bool)

(declare-fun call!621054 () Bool)

(assert (=> b!6823304 (= e!4116458 call!621054)))

(declare-fun bm!621048 () Bool)

(declare-fun call!621053 () Bool)

(assert (=> bm!621048 (= call!621054 call!621053)))

(declare-fun d!2145765 () Bool)

(declare-fun res!2786844 () Bool)

(declare-fun e!4116454 () Bool)

(assert (=> d!2145765 (=> res!2786844 e!4116454)))

(assert (=> d!2145765 (= res!2786844 ((_ is ElementMatch!16635) lt!2451442))))

(assert (=> d!2145765 (= (validRegex!8371 lt!2451442) e!4116454)))

(declare-fun bm!621049 () Bool)

(declare-fun c!1270002 () Bool)

(assert (=> bm!621049 (= call!621055 (validRegex!8371 (ite c!1270002 (regOne!33783 lt!2451442) (regOne!33782 lt!2451442))))))

(declare-fun b!6823305 () Bool)

(declare-fun res!2786845 () Bool)

(declare-fun e!4116459 () Bool)

(assert (=> b!6823305 (=> res!2786845 e!4116459)))

(assert (=> b!6823305 (= res!2786845 (not ((_ is Concat!25480) lt!2451442)))))

(assert (=> b!6823305 (= e!4116456 e!4116459)))

(declare-fun b!6823306 () Bool)

(declare-fun e!4116455 () Bool)

(assert (=> b!6823306 (= e!4116455 e!4116456)))

(assert (=> b!6823306 (= c!1270002 ((_ is Union!16635) lt!2451442))))

(declare-fun b!6823307 () Bool)

(assert (=> b!6823307 (= e!4116454 e!4116455)))

(declare-fun c!1270003 () Bool)

(assert (=> b!6823307 (= c!1270003 ((_ is Star!16635) lt!2451442))))

(declare-fun b!6823308 () Bool)

(declare-fun e!4116460 () Bool)

(assert (=> b!6823308 (= e!4116460 call!621054)))

(declare-fun b!6823309 () Bool)

(declare-fun e!4116457 () Bool)

(assert (=> b!6823309 (= e!4116455 e!4116457)))

(declare-fun res!2786842 () Bool)

(assert (=> b!6823309 (= res!2786842 (not (nullable!6612 (reg!16964 lt!2451442))))))

(assert (=> b!6823309 (=> (not res!2786842) (not e!4116457))))

(declare-fun b!6823310 () Bool)

(assert (=> b!6823310 (= e!4116459 e!4116460)))

(declare-fun res!2786843 () Bool)

(assert (=> b!6823310 (=> (not res!2786843) (not e!4116460))))

(assert (=> b!6823310 (= res!2786843 call!621055)))

(declare-fun b!6823311 () Bool)

(assert (=> b!6823311 (= e!4116457 call!621053)))

(declare-fun bm!621050 () Bool)

(assert (=> bm!621050 (= call!621053 (validRegex!8371 (ite c!1270003 (reg!16964 lt!2451442) (ite c!1270002 (regTwo!33783 lt!2451442) (regTwo!33782 lt!2451442)))))))

(assert (= (and d!2145765 (not res!2786844)) b!6823307))

(assert (= (and b!6823307 c!1270003) b!6823309))

(assert (= (and b!6823307 (not c!1270003)) b!6823306))

(assert (= (and b!6823309 res!2786842) b!6823311))

(assert (= (and b!6823306 c!1270002) b!6823303))

(assert (= (and b!6823306 (not c!1270002)) b!6823305))

(assert (= (and b!6823303 res!2786841) b!6823304))

(assert (= (and b!6823305 (not res!2786845)) b!6823310))

(assert (= (and b!6823310 res!2786843) b!6823308))

(assert (= (or b!6823304 b!6823308) bm!621048))

(assert (= (or b!6823303 b!6823310) bm!621049))

(assert (= (or b!6823311 bm!621048) bm!621050))

(declare-fun m!7569110 () Bool)

(assert (=> bm!621049 m!7569110))

(declare-fun m!7569112 () Bool)

(assert (=> b!6823309 m!7569112))

(declare-fun m!7569114 () Bool)

(assert (=> bm!621050 m!7569114))

(assert (=> d!2144881 d!2145765))

(declare-fun d!2145767 () Bool)

(declare-fun res!2786846 () Bool)

(declare-fun e!4116461 () Bool)

(assert (=> d!2145767 (=> res!2786846 e!4116461)))

(assert (=> d!2145767 (= res!2786846 ((_ is Nil!66080) (exprs!6519 (h!72529 zl!343))))))

(assert (=> d!2145767 (= (forall!15825 (exprs!6519 (h!72529 zl!343)) lambda!385217) e!4116461)))

(declare-fun b!6823312 () Bool)

(declare-fun e!4116462 () Bool)

(assert (=> b!6823312 (= e!4116461 e!4116462)))

(declare-fun res!2786847 () Bool)

(assert (=> b!6823312 (=> (not res!2786847) (not e!4116462))))

(assert (=> b!6823312 (= res!2786847 (dynLambda!26406 lambda!385217 (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun b!6823313 () Bool)

(assert (=> b!6823313 (= e!4116462 (forall!15825 (t!379941 (exprs!6519 (h!72529 zl!343))) lambda!385217))))

(assert (= (and d!2145767 (not res!2786846)) b!6823312))

(assert (= (and b!6823312 res!2786847) b!6823313))

(declare-fun b_lambda!257363 () Bool)

(assert (=> (not b_lambda!257363) (not b!6823312)))

(declare-fun m!7569116 () Bool)

(assert (=> b!6823312 m!7569116))

(declare-fun m!7569118 () Bool)

(assert (=> b!6823313 m!7569118))

(assert (=> d!2144881 d!2145767))

(assert (=> b!6821789 d!2145627))

(assert (=> b!6821789 d!2145569))

(declare-fun d!2145769 () Bool)

(declare-fun res!2786852 () Bool)

(declare-fun e!4116467 () Bool)

(assert (=> d!2145769 (=> res!2786852 e!4116467)))

(assert (=> d!2145769 (= res!2786852 ((_ is Nil!66081) lt!2451487))))

(assert (=> d!2145769 (= (noDuplicate!2418 lt!2451487) e!4116467)))

(declare-fun b!6823318 () Bool)

(declare-fun e!4116468 () Bool)

(assert (=> b!6823318 (= e!4116467 e!4116468)))

(declare-fun res!2786853 () Bool)

(assert (=> b!6823318 (=> (not res!2786853) (not e!4116468))))

(declare-fun contains!20305 (List!66205 Context!12038) Bool)

(assert (=> b!6823318 (= res!2786853 (not (contains!20305 (t!379942 lt!2451487) (h!72529 lt!2451487))))))

(declare-fun b!6823319 () Bool)

(assert (=> b!6823319 (= e!4116468 (noDuplicate!2418 (t!379942 lt!2451487)))))

(assert (= (and d!2145769 (not res!2786852)) b!6823318))

(assert (= (and b!6823318 res!2786853) b!6823319))

(declare-fun m!7569120 () Bool)

(assert (=> b!6823318 m!7569120))

(declare-fun m!7569122 () Bool)

(assert (=> b!6823319 m!7569122))

(assert (=> d!2144973 d!2145769))

(declare-fun d!2145771 () Bool)

(declare-fun e!4116476 () Bool)

(assert (=> d!2145771 e!4116476))

(declare-fun res!2786859 () Bool)

(assert (=> d!2145771 (=> (not res!2786859) (not e!4116476))))

(declare-fun res!2786858 () List!66205)

(assert (=> d!2145771 (= res!2786859 (noDuplicate!2418 res!2786858))))

(declare-fun e!4116475 () Bool)

(assert (=> d!2145771 e!4116475))

(assert (=> d!2145771 (= (choose!50867 z!1189) res!2786858)))

(declare-fun b!6823327 () Bool)

(declare-fun e!4116477 () Bool)

(declare-fun tp!1867571 () Bool)

(assert (=> b!6823327 (= e!4116477 tp!1867571)))

(declare-fun tp!1867570 () Bool)

(declare-fun b!6823326 () Bool)

(assert (=> b!6823326 (= e!4116475 (and (inv!84834 (h!72529 res!2786858)) e!4116477 tp!1867570))))

(declare-fun b!6823328 () Bool)

(assert (=> b!6823328 (= e!4116476 (= (content!12937 res!2786858) z!1189))))

(assert (= b!6823326 b!6823327))

(assert (= (and d!2145771 ((_ is Cons!66081) res!2786858)) b!6823326))

(assert (= (and d!2145771 res!2786859) b!6823328))

(declare-fun m!7569124 () Bool)

(assert (=> d!2145771 m!7569124))

(declare-fun m!7569126 () Bool)

(assert (=> b!6823326 m!7569126))

(declare-fun m!7569128 () Bool)

(assert (=> b!6823328 m!7569128))

(assert (=> d!2144973 d!2145771))

(assert (=> b!6821735 d!2145499))

(assert (=> b!6821735 d!2145501))

(assert (=> b!6821735 d!2145503))

(declare-fun b!6823329 () Bool)

(declare-fun e!4116480 () Bool)

(assert (=> b!6823329 (= e!4116480 (matchZipper!2621 lt!2451308 (t!379943 s!2326)))))

(declare-fun b!6823330 () Bool)

(declare-fun e!4116478 () Option!16522)

(assert (=> b!6823330 (= e!4116478 (Some!16521 (tuple2!67221 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326))))))

(declare-fun d!2145773 () Bool)

(declare-fun e!4116482 () Bool)

(assert (=> d!2145773 e!4116482))

(declare-fun res!2786863 () Bool)

(assert (=> d!2145773 (=> res!2786863 e!4116482)))

(declare-fun e!4116481 () Bool)

(assert (=> d!2145773 (= res!2786863 e!4116481)))

(declare-fun res!2786861 () Bool)

(assert (=> d!2145773 (=> (not res!2786861) (not e!4116481))))

(declare-fun lt!2451622 () Option!16522)

(assert (=> d!2145773 (= res!2786861 (isDefined!13225 lt!2451622))))

(assert (=> d!2145773 (= lt!2451622 e!4116478)))

(declare-fun c!1270005 () Bool)

(assert (=> d!2145773 (= c!1270005 e!4116480)))

(declare-fun res!2786864 () Bool)

(assert (=> d!2145773 (=> (not res!2786864) (not e!4116480))))

(assert (=> d!2145773 (= res!2786864 (matchZipper!2621 lt!2451330 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082))))))

(assert (=> d!2145773 (= (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326)) s!2326)))

(assert (=> d!2145773 (= (findConcatSeparationZippers!244 lt!2451330 lt!2451308 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (t!379943 s!2326) s!2326) lt!2451622)))

(declare-fun b!6823331 () Bool)

(assert (=> b!6823331 (= e!4116482 (not (isDefined!13225 lt!2451622)))))

(declare-fun b!6823332 () Bool)

(declare-fun e!4116479 () Option!16522)

(assert (=> b!6823332 (= e!4116478 e!4116479)))

(declare-fun c!1270004 () Bool)

(assert (=> b!6823332 (= c!1270004 ((_ is Nil!66082) (t!379943 s!2326)))))

(declare-fun b!6823333 () Bool)

(declare-fun res!2786862 () Bool)

(assert (=> b!6823333 (=> (not res!2786862) (not e!4116481))))

(assert (=> b!6823333 (= res!2786862 (matchZipper!2621 lt!2451308 (_2!36913 (get!23022 lt!2451622))))))

(declare-fun b!6823334 () Bool)

(assert (=> b!6823334 (= e!4116481 (= (++!14817 (_1!36913 (get!23022 lt!2451622)) (_2!36913 (get!23022 lt!2451622))) s!2326))))

(declare-fun b!6823335 () Bool)

(assert (=> b!6823335 (= e!4116479 None!16521)))

(declare-fun b!6823336 () Bool)

(declare-fun lt!2451621 () Unit!159961)

(declare-fun lt!2451623 () Unit!159961)

(assert (=> b!6823336 (= lt!2451621 lt!2451623)))

(assert (=> b!6823336 (= (++!14817 (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (Cons!66082 (h!72530 (t!379943 s!2326)) Nil!66082)) (t!379943 (t!379943 s!2326))) s!2326)))

(assert (=> b!6823336 (= lt!2451623 (lemmaMoveElementToOtherListKeepsConcatEq!2754 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (h!72530 (t!379943 s!2326)) (t!379943 (t!379943 s!2326)) s!2326))))

(assert (=> b!6823336 (= e!4116479 (findConcatSeparationZippers!244 lt!2451330 lt!2451308 (++!14817 (++!14817 Nil!66082 (Cons!66082 (h!72530 s!2326) Nil!66082)) (Cons!66082 (h!72530 (t!379943 s!2326)) Nil!66082)) (t!379943 (t!379943 s!2326)) s!2326))))

(declare-fun b!6823337 () Bool)

(declare-fun res!2786860 () Bool)

(assert (=> b!6823337 (=> (not res!2786860) (not e!4116481))))

(assert (=> b!6823337 (= res!2786860 (matchZipper!2621 lt!2451330 (_1!36913 (get!23022 lt!2451622))))))

(assert (= (and d!2145773 res!2786864) b!6823329))

(assert (= (and d!2145773 c!1270005) b!6823330))

(assert (= (and d!2145773 (not c!1270005)) b!6823332))

(assert (= (and b!6823332 c!1270004) b!6823335))

(assert (= (and b!6823332 (not c!1270004)) b!6823336))

(assert (= (and d!2145773 res!2786861) b!6823337))

(assert (= (and b!6823337 res!2786860) b!6823333))

(assert (= (and b!6823333 res!2786862) b!6823334))

(assert (= (and d!2145773 (not res!2786863)) b!6823331))

(declare-fun m!7569130 () Bool)

(assert (=> b!6823333 m!7569130))

(declare-fun m!7569132 () Bool)

(assert (=> b!6823333 m!7569132))

(declare-fun m!7569134 () Bool)

(assert (=> b!6823331 m!7569134))

(assert (=> d!2145773 m!7569134))

(assert (=> d!2145773 m!7567236))

(declare-fun m!7569136 () Bool)

(assert (=> d!2145773 m!7569136))

(assert (=> d!2145773 m!7567236))

(assert (=> d!2145773 m!7567238))

(declare-fun m!7569138 () Bool)

(assert (=> b!6823329 m!7569138))

(assert (=> b!6823337 m!7569130))

(declare-fun m!7569140 () Bool)

(assert (=> b!6823337 m!7569140))

(assert (=> b!6823334 m!7569130))

(declare-fun m!7569142 () Bool)

(assert (=> b!6823334 m!7569142))

(assert (=> b!6823336 m!7567236))

(assert (=> b!6823336 m!7568520))

(assert (=> b!6823336 m!7568520))

(assert (=> b!6823336 m!7568522))

(assert (=> b!6823336 m!7567236))

(assert (=> b!6823336 m!7568524))

(assert (=> b!6823336 m!7568520))

(declare-fun m!7569144 () Bool)

(assert (=> b!6823336 m!7569144))

(assert (=> b!6821735 d!2145773))

(assert (=> bs!1822481 d!2144923))

(assert (=> d!2144817 d!2144819))

(declare-fun d!2145775 () Bool)

(assert (=> d!2145775 (= (flatMap!2116 lt!2451330 lambda!385151) (dynLambda!26402 lambda!385151 lt!2451302))))

(assert (=> d!2145775 true))

(declare-fun _$13!4324 () Unit!159961)

(assert (=> d!2145775 (= (choose!50856 lt!2451330 lt!2451302 lambda!385151) _$13!4324)))

(declare-fun b_lambda!257365 () Bool)

(assert (=> (not b_lambda!257365) (not d!2145775)))

(declare-fun bs!1823293 () Bool)

(assert (= bs!1823293 d!2145775))

(assert (=> bs!1823293 m!7566582))

(assert (=> bs!1823293 m!7566898))

(assert (=> d!2144817 d!2145775))

(declare-fun d!2145777 () Bool)

(assert (=> d!2145777 (= (nullable!6612 (regOne!33782 (reg!16964 r!7292))) (nullableFct!2510 (regOne!33782 (reg!16964 r!7292))))))

(declare-fun bs!1823294 () Bool)

(assert (= bs!1823294 d!2145777))

(declare-fun m!7569146 () Bool)

(assert (=> bs!1823294 m!7569146))

(assert (=> b!6821637 d!2145777))

(assert (=> bm!620802 d!2144983))

(declare-fun d!2145779 () Bool)

(assert (=> d!2145779 (= (Exists!3703 lambda!385244) (choose!50869 lambda!385244))))

(declare-fun bs!1823295 () Bool)

(assert (= bs!1823295 d!2145779))

(declare-fun m!7569148 () Bool)

(assert (=> bs!1823295 m!7569148))

(assert (=> d!2144987 d!2145779))

(declare-fun d!2145781 () Bool)

(assert (=> d!2145781 (= (Exists!3703 lambda!385245) (choose!50869 lambda!385245))))

(declare-fun bs!1823296 () Bool)

(assert (= bs!1823296 d!2145781))

(declare-fun m!7569150 () Bool)

(assert (=> bs!1823296 m!7569150))

(assert (=> d!2144987 d!2145781))

(declare-fun bs!1823297 () Bool)

(declare-fun d!2145783 () Bool)

(assert (= bs!1823297 (and d!2145783 d!2145547)))

(declare-fun lambda!385354 () Int)

(assert (=> bs!1823297 (= lambda!385354 lambda!385328)))

(declare-fun bs!1823298 () Bool)

(assert (= bs!1823298 (and d!2145783 b!6820967)))

(assert (=> bs!1823298 (= lambda!385354 lambda!385148)))

(declare-fun bs!1823299 () Bool)

(assert (= bs!1823299 (and d!2145783 d!2144987)))

(assert (=> bs!1823299 (not (= lambda!385354 lambda!385245))))

(declare-fun bs!1823300 () Bool)

(assert (= bs!1823300 (and d!2145783 b!6821741)))

(assert (=> bs!1823300 (not (= lambda!385354 lambda!385223))))

(declare-fun bs!1823301 () Bool)

(assert (= bs!1823301 (and d!2145783 b!6821442)))

(assert (=> bs!1823301 (not (= lambda!385354 lambda!385202))))

(assert (=> bs!1823298 (not (= lambda!385354 lambda!385149))))

(declare-fun bs!1823302 () Bool)

(assert (= bs!1823302 (and d!2145783 b!6823234)))

(assert (=> bs!1823302 (not (= lambda!385354 lambda!385340))))

(declare-fun bs!1823303 () Bool)

(assert (= bs!1823303 (and d!2145783 b!6822721)))

(assert (=> bs!1823303 (not (= lambda!385354 lambda!385308))))

(declare-fun bs!1823304 () Bool)

(assert (= bs!1823304 (and d!2145783 b!6822752)))

(assert (=> bs!1823304 (not (= lambda!385354 lambda!385316))))

(assert (=> bs!1823299 (= lambda!385354 lambda!385244)))

(declare-fun bs!1823305 () Bool)

(assert (= bs!1823305 (and d!2145783 d!2144979)))

(assert (=> bs!1823305 (= (= r!7292 (Star!16635 (reg!16964 r!7292))) (= lambda!385354 lambda!385238))))

(declare-fun bs!1823306 () Bool)

(assert (= bs!1823306 (and d!2145783 d!2145763)))

(assert (=> bs!1823306 (not (= lambda!385354 lambda!385349))))

(declare-fun bs!1823307 () Bool)

(assert (= bs!1823307 (and d!2145783 b!6822751)))

(assert (=> bs!1823307 (not (= lambda!385354 lambda!385315))))

(declare-fun bs!1823308 () Bool)

(assert (= bs!1823308 (and d!2145783 b!6823000)))

(assert (=> bs!1823308 (not (= lambda!385354 lambda!385332))))

(declare-fun bs!1823309 () Bool)

(assert (= bs!1823309 (and d!2145783 b!6823233)))

(assert (=> bs!1823309 (not (= lambda!385354 lambda!385339))))

(declare-fun bs!1823310 () Bool)

(assert (= bs!1823310 (and d!2145783 b!6822999)))

(assert (=> bs!1823310 (not (= lambda!385354 lambda!385331))))

(declare-fun bs!1823311 () Bool)

(assert (= bs!1823311 (and d!2145783 b!6821441)))

(assert (=> bs!1823311 (not (= lambda!385354 lambda!385201))))

(declare-fun bs!1823312 () Bool)

(assert (= bs!1823312 (and d!2145783 b!6821740)))

(assert (=> bs!1823312 (not (= lambda!385354 lambda!385222))))

(assert (=> bs!1823306 (= (= r!7292 (Star!16635 (reg!16964 r!7292))) (= lambda!385354 lambda!385348))))

(assert (=> bs!1823298 (not (= lambda!385354 lambda!385150))))

(declare-fun bs!1823313 () Bool)

(assert (= bs!1823313 (and d!2145783 b!6822722)))

(assert (=> bs!1823313 (not (= lambda!385354 lambda!385309))))

(assert (=> bs!1823305 (not (= lambda!385354 lambda!385239))))

(declare-fun bs!1823314 () Bool)

(assert (= bs!1823314 (and d!2145783 d!2144993)))

(assert (=> bs!1823314 (= lambda!385354 lambda!385248)))

(assert (=> d!2145783 true))

(assert (=> d!2145783 true))

(assert (=> d!2145783 true))

(declare-fun lambda!385355 () Int)

(assert (=> bs!1823297 (not (= lambda!385355 lambda!385328))))

(assert (=> bs!1823298 (not (= lambda!385355 lambda!385148))))

(assert (=> bs!1823299 (= lambda!385355 lambda!385245)))

(assert (=> bs!1823300 (= (and (= (reg!16964 r!7292) (regOne!33782 r!7292)) (= r!7292 (regTwo!33782 r!7292))) (= lambda!385355 lambda!385223))))

(assert (=> bs!1823301 (= (and (= (reg!16964 r!7292) (regOne!33782 lt!2451335)) (= r!7292 (regTwo!33782 lt!2451335))) (= lambda!385355 lambda!385202))))

(assert (=> bs!1823302 (= (and (= (reg!16964 r!7292) (regOne!33782 (regOne!33783 lt!2451335))) (= r!7292 (regTwo!33782 (regOne!33783 lt!2451335)))) (= lambda!385355 lambda!385340))))

(assert (=> bs!1823303 (not (= lambda!385355 lambda!385308))))

(assert (=> bs!1823304 (= (and (= (reg!16964 r!7292) (regOne!33782 (regOne!33783 r!7292))) (= r!7292 (regTwo!33782 (regOne!33783 r!7292)))) (= lambda!385355 lambda!385316))))

(assert (=> bs!1823299 (not (= lambda!385355 lambda!385244))))

(assert (=> bs!1823305 (not (= lambda!385355 lambda!385238))))

(assert (=> bs!1823306 (not (= lambda!385355 lambda!385349))))

(assert (=> bs!1823307 (not (= lambda!385355 lambda!385315))))

(assert (=> bs!1823308 (= (and (= (reg!16964 r!7292) (regOne!33782 (regTwo!33783 r!7292))) (= r!7292 (regTwo!33782 (regTwo!33783 r!7292)))) (= lambda!385355 lambda!385332))))

(assert (=> bs!1823309 (not (= lambda!385355 lambda!385339))))

(assert (=> bs!1823310 (not (= lambda!385355 lambda!385331))))

(declare-fun bs!1823315 () Bool)

(assert (= bs!1823315 d!2145783))

(assert (=> bs!1823315 (not (= lambda!385355 lambda!385354))))

(assert (=> bs!1823298 (not (= lambda!385355 lambda!385149))))

(assert (=> bs!1823311 (not (= lambda!385355 lambda!385201))))

(assert (=> bs!1823312 (not (= lambda!385355 lambda!385222))))

(assert (=> bs!1823306 (not (= lambda!385355 lambda!385348))))

(assert (=> bs!1823298 (= lambda!385355 lambda!385150)))

(assert (=> bs!1823313 (= (and (= (reg!16964 r!7292) (regOne!33782 (regTwo!33783 lt!2451335))) (= r!7292 (regTwo!33782 (regTwo!33783 lt!2451335)))) (= lambda!385355 lambda!385309))))

(assert (=> bs!1823305 (not (= lambda!385355 lambda!385239))))

(assert (=> bs!1823314 (not (= lambda!385355 lambda!385248))))

(assert (=> d!2145783 true))

(assert (=> d!2145783 true))

(assert (=> d!2145783 true))

(assert (=> d!2145783 (= (Exists!3703 lambda!385354) (Exists!3703 lambda!385355))))

(assert (=> d!2145783 true))

(declare-fun _$90!2722 () Unit!159961)

(assert (=> d!2145783 (= (choose!50870 (reg!16964 r!7292) r!7292 s!2326) _$90!2722)))

(declare-fun m!7569152 () Bool)

(assert (=> bs!1823315 m!7569152))

(declare-fun m!7569154 () Bool)

(assert (=> bs!1823315 m!7569154))

(assert (=> d!2144987 d!2145783))

(assert (=> d!2144987 d!2145549))

(assert (=> d!2144965 d!2144959))

(assert (=> d!2144965 d!2144863))

(declare-fun d!2145785 () Bool)

(assert (=> d!2145785 (= (matchR!8818 (reg!16964 r!7292) (_1!36913 lt!2451337)) (matchZipper!2621 lt!2451330 (_1!36913 lt!2451337)))))

(assert (=> d!2145785 true))

(declare-fun _$44!1790 () Unit!159961)

(assert (=> d!2145785 (= (choose!50866 lt!2451330 lt!2451326 (reg!16964 r!7292) (_1!36913 lt!2451337)) _$44!1790)))

(declare-fun bs!1823316 () Bool)

(assert (= bs!1823316 d!2145785))

(assert (=> bs!1823316 m!7566546))

(assert (=> bs!1823316 m!7566610))

(assert (=> d!2144965 d!2145785))

(assert (=> d!2144965 d!2145549))

(assert (=> bs!1822477 d!2144801))

(declare-fun d!2145787 () Bool)

(assert (=> d!2145787 (= (isUnion!1429 lt!2451481) ((_ is Union!16635) lt!2451481))))

(assert (=> b!6821815 d!2145787))

(assert (=> d!2144941 d!2145707))

(declare-fun d!2145789 () Bool)

(declare-fun c!1270006 () Bool)

(assert (=> d!2145789 (= c!1270006 (isEmpty!38470 Nil!66082))))

(declare-fun e!4116487 () Bool)

(assert (=> d!2145789 (= (matchZipper!2621 lt!2451330 Nil!66082) e!4116487)))

(declare-fun b!6823346 () Bool)

(assert (=> b!6823346 (= e!4116487 (nullableZipper!2340 lt!2451330))))

(declare-fun b!6823347 () Bool)

(assert (=> b!6823347 (= e!4116487 (matchZipper!2621 (derivationStepZipper!2579 lt!2451330 (head!13677 Nil!66082)) (tail!12762 Nil!66082)))))

(assert (= (and d!2145789 c!1270006) b!6823346))

(assert (= (and d!2145789 (not c!1270006)) b!6823347))

(assert (=> d!2145789 m!7568790))

(assert (=> b!6823346 m!7567024))

(assert (=> b!6823347 m!7568796))

(assert (=> b!6823347 m!7568796))

(declare-fun m!7569156 () Bool)

(assert (=> b!6823347 m!7569156))

(assert (=> b!6823347 m!7568792))

(assert (=> b!6823347 m!7569156))

(assert (=> b!6823347 m!7568792))

(declare-fun m!7569158 () Bool)

(assert (=> b!6823347 m!7569158))

(assert (=> d!2144941 d!2145789))

(declare-fun b!6823351 () Bool)

(declare-fun e!4116488 () Bool)

(declare-fun lt!2451624 () List!66206)

(assert (=> b!6823351 (= e!4116488 (or (not (= s!2326 Nil!66082)) (= lt!2451624 Nil!66082)))))

(declare-fun b!6823350 () Bool)

(declare-fun res!2786873 () Bool)

(assert (=> b!6823350 (=> (not res!2786873) (not e!4116488))))

(assert (=> b!6823350 (= res!2786873 (= (size!40690 lt!2451624) (+ (size!40690 Nil!66082) (size!40690 s!2326))))))

(declare-fun b!6823348 () Bool)

(declare-fun e!4116489 () List!66206)

(assert (=> b!6823348 (= e!4116489 s!2326)))

(declare-fun b!6823349 () Bool)

(assert (=> b!6823349 (= e!4116489 (Cons!66082 (h!72530 Nil!66082) (++!14817 (t!379943 Nil!66082) s!2326)))))

(declare-fun d!2145791 () Bool)

(assert (=> d!2145791 e!4116488))

(declare-fun res!2786874 () Bool)

(assert (=> d!2145791 (=> (not res!2786874) (not e!4116488))))

(assert (=> d!2145791 (= res!2786874 (= (content!12935 lt!2451624) ((_ map or) (content!12935 Nil!66082) (content!12935 s!2326))))))

(assert (=> d!2145791 (= lt!2451624 e!4116489)))

(declare-fun c!1270007 () Bool)

(assert (=> d!2145791 (= c!1270007 ((_ is Nil!66082) Nil!66082))))

(assert (=> d!2145791 (= (++!14817 Nil!66082 s!2326) lt!2451624)))

(assert (= (and d!2145791 c!1270007) b!6823348))

(assert (= (and d!2145791 (not c!1270007)) b!6823349))

(assert (= (and d!2145791 res!2786874) b!6823350))

(assert (= (and b!6823350 res!2786873) b!6823351))

(declare-fun m!7569160 () Bool)

(assert (=> b!6823350 m!7569160))

(assert (=> b!6823350 m!7568492))

(declare-fun m!7569162 () Bool)

(assert (=> b!6823350 m!7569162))

(declare-fun m!7569164 () Bool)

(assert (=> b!6823349 m!7569164))

(declare-fun m!7569166 () Bool)

(assert (=> d!2145791 m!7569166))

(assert (=> d!2145791 m!7568500))

(declare-fun m!7569168 () Bool)

(assert (=> d!2145791 m!7569168))

(assert (=> d!2144941 d!2145791))

(declare-fun d!2145793 () Bool)

(assert (=> d!2145793 true))

(declare-fun setRes!46823 () Bool)

(assert (=> d!2145793 setRes!46823))

(declare-fun condSetEmpty!46823 () Bool)

(declare-fun res!2786875 () (InoxSet Context!12038))

(assert (=> d!2145793 (= condSetEmpty!46823 (= res!2786875 ((as const (Array Context!12038 Bool)) false)))))

(assert (=> d!2145793 (= (choose!50858 lt!2451324 lambda!385151) res!2786875)))

(declare-fun setIsEmpty!46823 () Bool)

(assert (=> setIsEmpty!46823 setRes!46823))

(declare-fun setNonEmpty!46823 () Bool)

(declare-fun tp!1867573 () Bool)

(declare-fun e!4116490 () Bool)

(declare-fun setElem!46823 () Context!12038)

(assert (=> setNonEmpty!46823 (= setRes!46823 (and tp!1867573 (inv!84834 setElem!46823) e!4116490))))

(declare-fun setRest!46823 () (InoxSet Context!12038))

(assert (=> setNonEmpty!46823 (= res!2786875 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) setElem!46823 true) setRest!46823))))

(declare-fun b!6823352 () Bool)

(declare-fun tp!1867572 () Bool)

(assert (=> b!6823352 (= e!4116490 tp!1867572)))

(assert (= (and d!2145793 condSetEmpty!46823) setIsEmpty!46823))

(assert (= (and d!2145793 (not condSetEmpty!46823)) setNonEmpty!46823))

(assert (= setNonEmpty!46823 b!6823352))

(declare-fun m!7569170 () Bool)

(assert (=> setNonEmpty!46823 m!7569170))

(assert (=> d!2144921 d!2145793))

(assert (=> d!2144807 d!2144811))

(declare-fun d!2145795 () Bool)

(assert (=> d!2145795 (= (flatMap!2116 lt!2451308 lambda!385151) (dynLambda!26402 lambda!385151 lt!2451314))))

(assert (=> d!2145795 true))

(declare-fun _$13!4325 () Unit!159961)

(assert (=> d!2145795 (= (choose!50856 lt!2451308 lt!2451314 lambda!385151) _$13!4325)))

(declare-fun b_lambda!257367 () Bool)

(assert (=> (not b_lambda!257367) (not d!2145795)))

(declare-fun bs!1823317 () Bool)

(assert (= bs!1823317 d!2145795))

(assert (=> bs!1823317 m!7566588))

(assert (=> bs!1823317 m!7566890))

(assert (=> d!2144807 d!2145795))

(declare-fun d!2145797 () Bool)

(assert (=> d!2145797 true))

(declare-fun setRes!46824 () Bool)

(assert (=> d!2145797 setRes!46824))

(declare-fun condSetEmpty!46824 () Bool)

(declare-fun res!2786876 () (InoxSet Context!12038))

(assert (=> d!2145797 (= condSetEmpty!46824 (= res!2786876 ((as const (Array Context!12038 Bool)) false)))))

(assert (=> d!2145797 (= (choose!50858 z!1189 lambda!385151) res!2786876)))

(declare-fun setIsEmpty!46824 () Bool)

(assert (=> setIsEmpty!46824 setRes!46824))

(declare-fun setNonEmpty!46824 () Bool)

(declare-fun setElem!46824 () Context!12038)

(declare-fun tp!1867575 () Bool)

(declare-fun e!4116491 () Bool)

(assert (=> setNonEmpty!46824 (= setRes!46824 (and tp!1867575 (inv!84834 setElem!46824) e!4116491))))

(declare-fun setRest!46824 () (InoxSet Context!12038))

(assert (=> setNonEmpty!46824 (= res!2786876 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) setElem!46824 true) setRest!46824))))

(declare-fun b!6823353 () Bool)

(declare-fun tp!1867574 () Bool)

(assert (=> b!6823353 (= e!4116491 tp!1867574)))

(assert (= (and d!2145797 condSetEmpty!46824) setIsEmpty!46824))

(assert (= (and d!2145797 (not condSetEmpty!46824)) setNonEmpty!46824))

(assert (= setNonEmpty!46824 b!6823353))

(declare-fun m!7569172 () Bool)

(assert (=> setNonEmpty!46824 m!7569172))

(assert (=> d!2144871 d!2145797))

(declare-fun b!6823357 () Bool)

(declare-fun e!4116492 () Bool)

(declare-fun tp!1867576 () Bool)

(declare-fun tp!1867578 () Bool)

(assert (=> b!6823357 (= e!4116492 (and tp!1867576 tp!1867578))))

(assert (=> b!6821926 (= tp!1867363 e!4116492)))

(declare-fun b!6823356 () Bool)

(declare-fun tp!1867580 () Bool)

(assert (=> b!6823356 (= e!4116492 tp!1867580)))

(declare-fun b!6823355 () Bool)

(declare-fun tp!1867577 () Bool)

(declare-fun tp!1867579 () Bool)

(assert (=> b!6823355 (= e!4116492 (and tp!1867577 tp!1867579))))

(declare-fun b!6823354 () Bool)

(assert (=> b!6823354 (= e!4116492 tp_is_empty!42523)))

(assert (= (and b!6821926 ((_ is ElementMatch!16635) (regOne!33783 (regTwo!33783 r!7292)))) b!6823354))

(assert (= (and b!6821926 ((_ is Concat!25480) (regOne!33783 (regTwo!33783 r!7292)))) b!6823355))

(assert (= (and b!6821926 ((_ is Star!16635) (regOne!33783 (regTwo!33783 r!7292)))) b!6823356))

(assert (= (and b!6821926 ((_ is Union!16635) (regOne!33783 (regTwo!33783 r!7292)))) b!6823357))

(declare-fun b!6823361 () Bool)

(declare-fun e!4116493 () Bool)

(declare-fun tp!1867581 () Bool)

(declare-fun tp!1867583 () Bool)

(assert (=> b!6823361 (= e!4116493 (and tp!1867581 tp!1867583))))

(assert (=> b!6821926 (= tp!1867365 e!4116493)))

(declare-fun b!6823360 () Bool)

(declare-fun tp!1867585 () Bool)

(assert (=> b!6823360 (= e!4116493 tp!1867585)))

(declare-fun b!6823359 () Bool)

(declare-fun tp!1867582 () Bool)

(declare-fun tp!1867584 () Bool)

(assert (=> b!6823359 (= e!4116493 (and tp!1867582 tp!1867584))))

(declare-fun b!6823358 () Bool)

(assert (=> b!6823358 (= e!4116493 tp_is_empty!42523)))

(assert (= (and b!6821926 ((_ is ElementMatch!16635) (regTwo!33783 (regTwo!33783 r!7292)))) b!6823358))

(assert (= (and b!6821926 ((_ is Concat!25480) (regTwo!33783 (regTwo!33783 r!7292)))) b!6823359))

(assert (= (and b!6821926 ((_ is Star!16635) (regTwo!33783 (regTwo!33783 r!7292)))) b!6823360))

(assert (= (and b!6821926 ((_ is Union!16635) (regTwo!33783 (regTwo!33783 r!7292)))) b!6823361))

(declare-fun b!6823365 () Bool)

(declare-fun e!4116494 () Bool)

(declare-fun tp!1867586 () Bool)

(declare-fun tp!1867588 () Bool)

(assert (=> b!6823365 (= e!4116494 (and tp!1867586 tp!1867588))))

(assert (=> b!6821918 (= tp!1867356 e!4116494)))

(declare-fun b!6823364 () Bool)

(declare-fun tp!1867590 () Bool)

(assert (=> b!6823364 (= e!4116494 tp!1867590)))

(declare-fun b!6823363 () Bool)

(declare-fun tp!1867587 () Bool)

(declare-fun tp!1867589 () Bool)

(assert (=> b!6823363 (= e!4116494 (and tp!1867587 tp!1867589))))

(declare-fun b!6823362 () Bool)

(assert (=> b!6823362 (= e!4116494 tp_is_empty!42523)))

(assert (= (and b!6821918 ((_ is ElementMatch!16635) (h!72528 (exprs!6519 setElem!46799)))) b!6823362))

(assert (= (and b!6821918 ((_ is Concat!25480) (h!72528 (exprs!6519 setElem!46799)))) b!6823363))

(assert (= (and b!6821918 ((_ is Star!16635) (h!72528 (exprs!6519 setElem!46799)))) b!6823364))

(assert (= (and b!6821918 ((_ is Union!16635) (h!72528 (exprs!6519 setElem!46799)))) b!6823365))

(declare-fun b!6823366 () Bool)

(declare-fun e!4116495 () Bool)

(declare-fun tp!1867591 () Bool)

(declare-fun tp!1867592 () Bool)

(assert (=> b!6823366 (= e!4116495 (and tp!1867591 tp!1867592))))

(assert (=> b!6821918 (= tp!1867357 e!4116495)))

(assert (= (and b!6821918 ((_ is Cons!66080) (t!379941 (exprs!6519 setElem!46799)))) b!6823366))

(declare-fun b!6823370 () Bool)

(declare-fun e!4116496 () Bool)

(declare-fun tp!1867593 () Bool)

(declare-fun tp!1867595 () Bool)

(assert (=> b!6823370 (= e!4116496 (and tp!1867593 tp!1867595))))

(assert (=> b!6821912 (= tp!1867351 e!4116496)))

(declare-fun b!6823369 () Bool)

(declare-fun tp!1867597 () Bool)

(assert (=> b!6823369 (= e!4116496 tp!1867597)))

(declare-fun b!6823368 () Bool)

(declare-fun tp!1867594 () Bool)

(declare-fun tp!1867596 () Bool)

(assert (=> b!6823368 (= e!4116496 (and tp!1867594 tp!1867596))))

(declare-fun b!6823367 () Bool)

(assert (=> b!6823367 (= e!4116496 tp_is_empty!42523)))

(assert (= (and b!6821912 ((_ is ElementMatch!16635) (reg!16964 (reg!16964 r!7292)))) b!6823367))

(assert (= (and b!6821912 ((_ is Concat!25480) (reg!16964 (reg!16964 r!7292)))) b!6823368))

(assert (= (and b!6821912 ((_ is Star!16635) (reg!16964 (reg!16964 r!7292)))) b!6823369))

(assert (= (and b!6821912 ((_ is Union!16635) (reg!16964 (reg!16964 r!7292)))) b!6823370))

(declare-fun b!6823374 () Bool)

(declare-fun e!4116497 () Bool)

(declare-fun tp!1867598 () Bool)

(declare-fun tp!1867600 () Bool)

(assert (=> b!6823374 (= e!4116497 (and tp!1867598 tp!1867600))))

(assert (=> b!6821911 (= tp!1867348 e!4116497)))

(declare-fun b!6823373 () Bool)

(declare-fun tp!1867602 () Bool)

(assert (=> b!6823373 (= e!4116497 tp!1867602)))

(declare-fun b!6823372 () Bool)

(declare-fun tp!1867599 () Bool)

(declare-fun tp!1867601 () Bool)

(assert (=> b!6823372 (= e!4116497 (and tp!1867599 tp!1867601))))

(declare-fun b!6823371 () Bool)

(assert (=> b!6823371 (= e!4116497 tp_is_empty!42523)))

(assert (= (and b!6821911 ((_ is ElementMatch!16635) (regOne!33782 (reg!16964 r!7292)))) b!6823371))

(assert (= (and b!6821911 ((_ is Concat!25480) (regOne!33782 (reg!16964 r!7292)))) b!6823372))

(assert (= (and b!6821911 ((_ is Star!16635) (regOne!33782 (reg!16964 r!7292)))) b!6823373))

(assert (= (and b!6821911 ((_ is Union!16635) (regOne!33782 (reg!16964 r!7292)))) b!6823374))

(declare-fun b!6823378 () Bool)

(declare-fun e!4116498 () Bool)

(declare-fun tp!1867603 () Bool)

(declare-fun tp!1867605 () Bool)

(assert (=> b!6823378 (= e!4116498 (and tp!1867603 tp!1867605))))

(assert (=> b!6821911 (= tp!1867350 e!4116498)))

(declare-fun b!6823377 () Bool)

(declare-fun tp!1867607 () Bool)

(assert (=> b!6823377 (= e!4116498 tp!1867607)))

(declare-fun b!6823376 () Bool)

(declare-fun tp!1867604 () Bool)

(declare-fun tp!1867606 () Bool)

(assert (=> b!6823376 (= e!4116498 (and tp!1867604 tp!1867606))))

(declare-fun b!6823375 () Bool)

(assert (=> b!6823375 (= e!4116498 tp_is_empty!42523)))

(assert (= (and b!6821911 ((_ is ElementMatch!16635) (regTwo!33782 (reg!16964 r!7292)))) b!6823375))

(assert (= (and b!6821911 ((_ is Concat!25480) (regTwo!33782 (reg!16964 r!7292)))) b!6823376))

(assert (= (and b!6821911 ((_ is Star!16635) (regTwo!33782 (reg!16964 r!7292)))) b!6823377))

(assert (= (and b!6821911 ((_ is Union!16635) (regTwo!33782 (reg!16964 r!7292)))) b!6823378))

(declare-fun b!6823382 () Bool)

(declare-fun e!4116499 () Bool)

(declare-fun tp!1867608 () Bool)

(declare-fun tp!1867610 () Bool)

(assert (=> b!6823382 (= e!4116499 (and tp!1867608 tp!1867610))))

(assert (=> b!6821935 (= tp!1867378 e!4116499)))

(declare-fun b!6823381 () Bool)

(declare-fun tp!1867612 () Bool)

(assert (=> b!6823381 (= e!4116499 tp!1867612)))

(declare-fun b!6823380 () Bool)

(declare-fun tp!1867609 () Bool)

(declare-fun tp!1867611 () Bool)

(assert (=> b!6823380 (= e!4116499 (and tp!1867609 tp!1867611))))

(declare-fun b!6823379 () Bool)

(assert (=> b!6823379 (= e!4116499 tp_is_empty!42523)))

(assert (= (and b!6821935 ((_ is ElementMatch!16635) (h!72528 (exprs!6519 (h!72529 zl!343))))) b!6823379))

(assert (= (and b!6821935 ((_ is Concat!25480) (h!72528 (exprs!6519 (h!72529 zl!343))))) b!6823380))

(assert (= (and b!6821935 ((_ is Star!16635) (h!72528 (exprs!6519 (h!72529 zl!343))))) b!6823381))

(assert (= (and b!6821935 ((_ is Union!16635) (h!72528 (exprs!6519 (h!72529 zl!343))))) b!6823382))

(declare-fun b!6823383 () Bool)

(declare-fun e!4116500 () Bool)

(declare-fun tp!1867613 () Bool)

(declare-fun tp!1867614 () Bool)

(assert (=> b!6823383 (= e!4116500 (and tp!1867613 tp!1867614))))

(assert (=> b!6821935 (= tp!1867379 e!4116500)))

(assert (= (and b!6821935 ((_ is Cons!66080) (t!379941 (exprs!6519 (h!72529 zl!343))))) b!6823383))

(declare-fun b!6823387 () Bool)

(declare-fun e!4116501 () Bool)

(declare-fun tp!1867615 () Bool)

(declare-fun tp!1867617 () Bool)

(assert (=> b!6823387 (= e!4116501 (and tp!1867615 tp!1867617))))

(assert (=> b!6821913 (= tp!1867347 e!4116501)))

(declare-fun b!6823386 () Bool)

(declare-fun tp!1867619 () Bool)

(assert (=> b!6823386 (= e!4116501 tp!1867619)))

(declare-fun b!6823385 () Bool)

(declare-fun tp!1867616 () Bool)

(declare-fun tp!1867618 () Bool)

(assert (=> b!6823385 (= e!4116501 (and tp!1867616 tp!1867618))))

(declare-fun b!6823384 () Bool)

(assert (=> b!6823384 (= e!4116501 tp_is_empty!42523)))

(assert (= (and b!6821913 ((_ is ElementMatch!16635) (regOne!33783 (reg!16964 r!7292)))) b!6823384))

(assert (= (and b!6821913 ((_ is Concat!25480) (regOne!33783 (reg!16964 r!7292)))) b!6823385))

(assert (= (and b!6821913 ((_ is Star!16635) (regOne!33783 (reg!16964 r!7292)))) b!6823386))

(assert (= (and b!6821913 ((_ is Union!16635) (regOne!33783 (reg!16964 r!7292)))) b!6823387))

(declare-fun b!6823391 () Bool)

(declare-fun e!4116502 () Bool)

(declare-fun tp!1867620 () Bool)

(declare-fun tp!1867622 () Bool)

(assert (=> b!6823391 (= e!4116502 (and tp!1867620 tp!1867622))))

(assert (=> b!6821913 (= tp!1867349 e!4116502)))

(declare-fun b!6823390 () Bool)

(declare-fun tp!1867624 () Bool)

(assert (=> b!6823390 (= e!4116502 tp!1867624)))

(declare-fun b!6823389 () Bool)

(declare-fun tp!1867621 () Bool)

(declare-fun tp!1867623 () Bool)

(assert (=> b!6823389 (= e!4116502 (and tp!1867621 tp!1867623))))

(declare-fun b!6823388 () Bool)

(assert (=> b!6823388 (= e!4116502 tp_is_empty!42523)))

(assert (= (and b!6821913 ((_ is ElementMatch!16635) (regTwo!33783 (reg!16964 r!7292)))) b!6823388))

(assert (= (and b!6821913 ((_ is Concat!25480) (regTwo!33783 (reg!16964 r!7292)))) b!6823389))

(assert (= (and b!6821913 ((_ is Star!16635) (regTwo!33783 (reg!16964 r!7292)))) b!6823390))

(assert (= (and b!6821913 ((_ is Union!16635) (regTwo!33783 (reg!16964 r!7292)))) b!6823391))

(declare-fun b!6823392 () Bool)

(declare-fun e!4116503 () Bool)

(declare-fun tp!1867625 () Bool)

(assert (=> b!6823392 (= e!4116503 (and tp_is_empty!42523 tp!1867625))))

(assert (=> b!6821894 (= tp!1867330 e!4116503)))

(assert (= (and b!6821894 ((_ is Cons!66082) (t!379943 (t!379943 s!2326)))) b!6823392))

(declare-fun b!6823396 () Bool)

(declare-fun e!4116504 () Bool)

(declare-fun tp!1867626 () Bool)

(declare-fun tp!1867628 () Bool)

(assert (=> b!6823396 (= e!4116504 (and tp!1867626 tp!1867628))))

(assert (=> b!6821932 (= tp!1867374 e!4116504)))

(declare-fun b!6823395 () Bool)

(declare-fun tp!1867630 () Bool)

(assert (=> b!6823395 (= e!4116504 tp!1867630)))

(declare-fun b!6823394 () Bool)

(declare-fun tp!1867627 () Bool)

(declare-fun tp!1867629 () Bool)

(assert (=> b!6823394 (= e!4116504 (and tp!1867627 tp!1867629))))

(declare-fun b!6823393 () Bool)

(assert (=> b!6823393 (= e!4116504 tp_is_empty!42523)))

(assert (= (and b!6821932 ((_ is ElementMatch!16635) (regOne!33782 (regTwo!33782 r!7292)))) b!6823393))

(assert (= (and b!6821932 ((_ is Concat!25480) (regOne!33782 (regTwo!33782 r!7292)))) b!6823394))

(assert (= (and b!6821932 ((_ is Star!16635) (regOne!33782 (regTwo!33782 r!7292)))) b!6823395))

(assert (= (and b!6821932 ((_ is Union!16635) (regOne!33782 (regTwo!33782 r!7292)))) b!6823396))

(declare-fun b!6823400 () Bool)

(declare-fun e!4116505 () Bool)

(declare-fun tp!1867631 () Bool)

(declare-fun tp!1867633 () Bool)

(assert (=> b!6823400 (= e!4116505 (and tp!1867631 tp!1867633))))

(assert (=> b!6821932 (= tp!1867376 e!4116505)))

(declare-fun b!6823399 () Bool)

(declare-fun tp!1867635 () Bool)

(assert (=> b!6823399 (= e!4116505 tp!1867635)))

(declare-fun b!6823398 () Bool)

(declare-fun tp!1867632 () Bool)

(declare-fun tp!1867634 () Bool)

(assert (=> b!6823398 (= e!4116505 (and tp!1867632 tp!1867634))))

(declare-fun b!6823397 () Bool)

(assert (=> b!6823397 (= e!4116505 tp_is_empty!42523)))

(assert (= (and b!6821932 ((_ is ElementMatch!16635) (regTwo!33782 (regTwo!33782 r!7292)))) b!6823397))

(assert (= (and b!6821932 ((_ is Concat!25480) (regTwo!33782 (regTwo!33782 r!7292)))) b!6823398))

(assert (= (and b!6821932 ((_ is Star!16635) (regTwo!33782 (regTwo!33782 r!7292)))) b!6823399))

(assert (= (and b!6821932 ((_ is Union!16635) (regTwo!33782 (regTwo!33782 r!7292)))) b!6823400))

(declare-fun b!6823401 () Bool)

(declare-fun e!4116506 () Bool)

(declare-fun tp!1867636 () Bool)

(declare-fun tp!1867637 () Bool)

(assert (=> b!6823401 (= e!4116506 (and tp!1867636 tp!1867637))))

(assert (=> b!6821889 (= tp!1867326 e!4116506)))

(assert (= (and b!6821889 ((_ is Cons!66080) (exprs!6519 (h!72529 (t!379942 zl!343))))) b!6823401))

(declare-fun b!6823405 () Bool)

(declare-fun e!4116507 () Bool)

(declare-fun tp!1867638 () Bool)

(declare-fun tp!1867640 () Bool)

(assert (=> b!6823405 (= e!4116507 (and tp!1867638 tp!1867640))))

(assert (=> b!6821924 (= tp!1867364 e!4116507)))

(declare-fun b!6823404 () Bool)

(declare-fun tp!1867642 () Bool)

(assert (=> b!6823404 (= e!4116507 tp!1867642)))

(declare-fun b!6823403 () Bool)

(declare-fun tp!1867639 () Bool)

(declare-fun tp!1867641 () Bool)

(assert (=> b!6823403 (= e!4116507 (and tp!1867639 tp!1867641))))

(declare-fun b!6823402 () Bool)

(assert (=> b!6823402 (= e!4116507 tp_is_empty!42523)))

(assert (= (and b!6821924 ((_ is ElementMatch!16635) (regOne!33782 (regTwo!33783 r!7292)))) b!6823402))

(assert (= (and b!6821924 ((_ is Concat!25480) (regOne!33782 (regTwo!33783 r!7292)))) b!6823403))

(assert (= (and b!6821924 ((_ is Star!16635) (regOne!33782 (regTwo!33783 r!7292)))) b!6823404))

(assert (= (and b!6821924 ((_ is Union!16635) (regOne!33782 (regTwo!33783 r!7292)))) b!6823405))

(declare-fun b!6823409 () Bool)

(declare-fun e!4116508 () Bool)

(declare-fun tp!1867643 () Bool)

(declare-fun tp!1867645 () Bool)

(assert (=> b!6823409 (= e!4116508 (and tp!1867643 tp!1867645))))

(assert (=> b!6821924 (= tp!1867366 e!4116508)))

(declare-fun b!6823408 () Bool)

(declare-fun tp!1867647 () Bool)

(assert (=> b!6823408 (= e!4116508 tp!1867647)))

(declare-fun b!6823407 () Bool)

(declare-fun tp!1867644 () Bool)

(declare-fun tp!1867646 () Bool)

(assert (=> b!6823407 (= e!4116508 (and tp!1867644 tp!1867646))))

(declare-fun b!6823406 () Bool)

(assert (=> b!6823406 (= e!4116508 tp_is_empty!42523)))

(assert (= (and b!6821924 ((_ is ElementMatch!16635) (regTwo!33782 (regTwo!33783 r!7292)))) b!6823406))

(assert (= (and b!6821924 ((_ is Concat!25480) (regTwo!33782 (regTwo!33783 r!7292)))) b!6823407))

(assert (= (and b!6821924 ((_ is Star!16635) (regTwo!33782 (regTwo!33783 r!7292)))) b!6823408))

(assert (= (and b!6821924 ((_ is Union!16635) (regTwo!33782 (regTwo!33783 r!7292)))) b!6823409))

(declare-fun b!6823413 () Bool)

(declare-fun e!4116509 () Bool)

(declare-fun tp!1867648 () Bool)

(declare-fun tp!1867650 () Bool)

(assert (=> b!6823413 (= e!4116509 (and tp!1867648 tp!1867650))))

(assert (=> b!6821933 (= tp!1867377 e!4116509)))

(declare-fun b!6823412 () Bool)

(declare-fun tp!1867652 () Bool)

(assert (=> b!6823412 (= e!4116509 tp!1867652)))

(declare-fun b!6823411 () Bool)

(declare-fun tp!1867649 () Bool)

(declare-fun tp!1867651 () Bool)

(assert (=> b!6823411 (= e!4116509 (and tp!1867649 tp!1867651))))

(declare-fun b!6823410 () Bool)

(assert (=> b!6823410 (= e!4116509 tp_is_empty!42523)))

(assert (= (and b!6821933 ((_ is ElementMatch!16635) (reg!16964 (regTwo!33782 r!7292)))) b!6823410))

(assert (= (and b!6821933 ((_ is Concat!25480) (reg!16964 (regTwo!33782 r!7292)))) b!6823411))

(assert (= (and b!6821933 ((_ is Star!16635) (reg!16964 (regTwo!33782 r!7292)))) b!6823412))

(assert (= (and b!6821933 ((_ is Union!16635) (reg!16964 (regTwo!33782 r!7292)))) b!6823413))

(declare-fun b!6823415 () Bool)

(declare-fun e!4116511 () Bool)

(declare-fun tp!1867653 () Bool)

(assert (=> b!6823415 (= e!4116511 tp!1867653)))

(declare-fun e!4116510 () Bool)

(declare-fun b!6823414 () Bool)

(declare-fun tp!1867654 () Bool)

(assert (=> b!6823414 (= e!4116510 (and (inv!84834 (h!72529 (t!379942 (t!379942 zl!343)))) e!4116511 tp!1867654))))

(assert (=> b!6821888 (= tp!1867327 e!4116510)))

(assert (= b!6823414 b!6823415))

(assert (= (and b!6821888 ((_ is Cons!66081) (t!379942 (t!379942 zl!343)))) b!6823414))

(declare-fun m!7569174 () Bool)

(assert (=> b!6823414 m!7569174))

(declare-fun b!6823419 () Bool)

(declare-fun e!4116512 () Bool)

(declare-fun tp!1867655 () Bool)

(declare-fun tp!1867657 () Bool)

(assert (=> b!6823419 (= e!4116512 (and tp!1867655 tp!1867657))))

(assert (=> b!6821925 (= tp!1867367 e!4116512)))

(declare-fun b!6823418 () Bool)

(declare-fun tp!1867659 () Bool)

(assert (=> b!6823418 (= e!4116512 tp!1867659)))

(declare-fun b!6823417 () Bool)

(declare-fun tp!1867656 () Bool)

(declare-fun tp!1867658 () Bool)

(assert (=> b!6823417 (= e!4116512 (and tp!1867656 tp!1867658))))

(declare-fun b!6823416 () Bool)

(assert (=> b!6823416 (= e!4116512 tp_is_empty!42523)))

(assert (= (and b!6821925 ((_ is ElementMatch!16635) (reg!16964 (regTwo!33783 r!7292)))) b!6823416))

(assert (= (and b!6821925 ((_ is Concat!25480) (reg!16964 (regTwo!33783 r!7292)))) b!6823417))

(assert (= (and b!6821925 ((_ is Star!16635) (reg!16964 (regTwo!33783 r!7292)))) b!6823418))

(assert (= (and b!6821925 ((_ is Union!16635) (reg!16964 (regTwo!33783 r!7292)))) b!6823419))

(declare-fun b!6823423 () Bool)

(declare-fun e!4116513 () Bool)

(declare-fun tp!1867660 () Bool)

(declare-fun tp!1867662 () Bool)

(assert (=> b!6823423 (= e!4116513 (and tp!1867660 tp!1867662))))

(assert (=> b!6821934 (= tp!1867373 e!4116513)))

(declare-fun b!6823422 () Bool)

(declare-fun tp!1867664 () Bool)

(assert (=> b!6823422 (= e!4116513 tp!1867664)))

(declare-fun b!6823421 () Bool)

(declare-fun tp!1867661 () Bool)

(declare-fun tp!1867663 () Bool)

(assert (=> b!6823421 (= e!4116513 (and tp!1867661 tp!1867663))))

(declare-fun b!6823420 () Bool)

(assert (=> b!6823420 (= e!4116513 tp_is_empty!42523)))

(assert (= (and b!6821934 ((_ is ElementMatch!16635) (regOne!33783 (regTwo!33782 r!7292)))) b!6823420))

(assert (= (and b!6821934 ((_ is Concat!25480) (regOne!33783 (regTwo!33782 r!7292)))) b!6823421))

(assert (= (and b!6821934 ((_ is Star!16635) (regOne!33783 (regTwo!33782 r!7292)))) b!6823422))

(assert (= (and b!6821934 ((_ is Union!16635) (regOne!33783 (regTwo!33782 r!7292)))) b!6823423))

(declare-fun b!6823427 () Bool)

(declare-fun e!4116514 () Bool)

(declare-fun tp!1867665 () Bool)

(declare-fun tp!1867667 () Bool)

(assert (=> b!6823427 (= e!4116514 (and tp!1867665 tp!1867667))))

(assert (=> b!6821934 (= tp!1867375 e!4116514)))

(declare-fun b!6823426 () Bool)

(declare-fun tp!1867669 () Bool)

(assert (=> b!6823426 (= e!4116514 tp!1867669)))

(declare-fun b!6823425 () Bool)

(declare-fun tp!1867666 () Bool)

(declare-fun tp!1867668 () Bool)

(assert (=> b!6823425 (= e!4116514 (and tp!1867666 tp!1867668))))

(declare-fun b!6823424 () Bool)

(assert (=> b!6823424 (= e!4116514 tp_is_empty!42523)))

(assert (= (and b!6821934 ((_ is ElementMatch!16635) (regTwo!33783 (regTwo!33782 r!7292)))) b!6823424))

(assert (= (and b!6821934 ((_ is Concat!25480) (regTwo!33783 (regTwo!33782 r!7292)))) b!6823425))

(assert (= (and b!6821934 ((_ is Star!16635) (regTwo!33783 (regTwo!33782 r!7292)))) b!6823426))

(assert (= (and b!6821934 ((_ is Union!16635) (regTwo!33783 (regTwo!33782 r!7292)))) b!6823427))

(declare-fun b!6823431 () Bool)

(declare-fun e!4116515 () Bool)

(declare-fun tp!1867670 () Bool)

(declare-fun tp!1867672 () Bool)

(assert (=> b!6823431 (= e!4116515 (and tp!1867670 tp!1867672))))

(assert (=> b!6821922 (= tp!1867358 e!4116515)))

(declare-fun b!6823430 () Bool)

(declare-fun tp!1867674 () Bool)

(assert (=> b!6823430 (= e!4116515 tp!1867674)))

(declare-fun b!6823429 () Bool)

(declare-fun tp!1867671 () Bool)

(declare-fun tp!1867673 () Bool)

(assert (=> b!6823429 (= e!4116515 (and tp!1867671 tp!1867673))))

(declare-fun b!6823428 () Bool)

(assert (=> b!6823428 (= e!4116515 tp_is_empty!42523)))

(assert (= (and b!6821922 ((_ is ElementMatch!16635) (regOne!33783 (regOne!33783 r!7292)))) b!6823428))

(assert (= (and b!6821922 ((_ is Concat!25480) (regOne!33783 (regOne!33783 r!7292)))) b!6823429))

(assert (= (and b!6821922 ((_ is Star!16635) (regOne!33783 (regOne!33783 r!7292)))) b!6823430))

(assert (= (and b!6821922 ((_ is Union!16635) (regOne!33783 (regOne!33783 r!7292)))) b!6823431))

(declare-fun b!6823435 () Bool)

(declare-fun e!4116516 () Bool)

(declare-fun tp!1867675 () Bool)

(declare-fun tp!1867677 () Bool)

(assert (=> b!6823435 (= e!4116516 (and tp!1867675 tp!1867677))))

(assert (=> b!6821922 (= tp!1867360 e!4116516)))

(declare-fun b!6823434 () Bool)

(declare-fun tp!1867679 () Bool)

(assert (=> b!6823434 (= e!4116516 tp!1867679)))

(declare-fun b!6823433 () Bool)

(declare-fun tp!1867676 () Bool)

(declare-fun tp!1867678 () Bool)

(assert (=> b!6823433 (= e!4116516 (and tp!1867676 tp!1867678))))

(declare-fun b!6823432 () Bool)

(assert (=> b!6823432 (= e!4116516 tp_is_empty!42523)))

(assert (= (and b!6821922 ((_ is ElementMatch!16635) (regTwo!33783 (regOne!33783 r!7292)))) b!6823432))

(assert (= (and b!6821922 ((_ is Concat!25480) (regTwo!33783 (regOne!33783 r!7292)))) b!6823433))

(assert (= (and b!6821922 ((_ is Star!16635) (regTwo!33783 (regOne!33783 r!7292)))) b!6823434))

(assert (= (and b!6821922 ((_ is Union!16635) (regTwo!33783 (regOne!33783 r!7292)))) b!6823435))

(declare-fun b!6823439 () Bool)

(declare-fun e!4116517 () Bool)

(declare-fun tp!1867680 () Bool)

(declare-fun tp!1867682 () Bool)

(assert (=> b!6823439 (= e!4116517 (and tp!1867680 tp!1867682))))

(assert (=> b!6821929 (= tp!1867372 e!4116517)))

(declare-fun b!6823438 () Bool)

(declare-fun tp!1867684 () Bool)

(assert (=> b!6823438 (= e!4116517 tp!1867684)))

(declare-fun b!6823437 () Bool)

(declare-fun tp!1867681 () Bool)

(declare-fun tp!1867683 () Bool)

(assert (=> b!6823437 (= e!4116517 (and tp!1867681 tp!1867683))))

(declare-fun b!6823436 () Bool)

(assert (=> b!6823436 (= e!4116517 tp_is_empty!42523)))

(assert (= (and b!6821929 ((_ is ElementMatch!16635) (reg!16964 (regOne!33782 r!7292)))) b!6823436))

(assert (= (and b!6821929 ((_ is Concat!25480) (reg!16964 (regOne!33782 r!7292)))) b!6823437))

(assert (= (and b!6821929 ((_ is Star!16635) (reg!16964 (regOne!33782 r!7292)))) b!6823438))

(assert (= (and b!6821929 ((_ is Union!16635) (reg!16964 (regOne!33782 r!7292)))) b!6823439))

(declare-fun condSetEmpty!46825 () Bool)

(assert (=> setNonEmpty!46805 (= condSetEmpty!46825 (= setRest!46805 ((as const (Array Context!12038 Bool)) false)))))

(declare-fun setRes!46825 () Bool)

(assert (=> setNonEmpty!46805 (= tp!1867336 setRes!46825)))

(declare-fun setIsEmpty!46825 () Bool)

(assert (=> setIsEmpty!46825 setRes!46825))

(declare-fun setNonEmpty!46825 () Bool)

(declare-fun tp!1867686 () Bool)

(declare-fun e!4116518 () Bool)

(declare-fun setElem!46825 () Context!12038)

(assert (=> setNonEmpty!46825 (= setRes!46825 (and tp!1867686 (inv!84834 setElem!46825) e!4116518))))

(declare-fun setRest!46825 () (InoxSet Context!12038))

(assert (=> setNonEmpty!46825 (= setRest!46805 ((_ map or) (store ((as const (Array Context!12038 Bool)) false) setElem!46825 true) setRest!46825))))

(declare-fun b!6823440 () Bool)

(declare-fun tp!1867685 () Bool)

(assert (=> b!6823440 (= e!4116518 tp!1867685)))

(assert (= (and setNonEmpty!46805 condSetEmpty!46825) setIsEmpty!46825))

(assert (= (and setNonEmpty!46805 (not condSetEmpty!46825)) setNonEmpty!46825))

(assert (= setNonEmpty!46825 b!6823440))

(declare-fun m!7569176 () Bool)

(assert (=> setNonEmpty!46825 m!7569176))

(declare-fun b!6823444 () Bool)

(declare-fun e!4116519 () Bool)

(declare-fun tp!1867687 () Bool)

(declare-fun tp!1867689 () Bool)

(assert (=> b!6823444 (= e!4116519 (and tp!1867687 tp!1867689))))

(assert (=> b!6821928 (= tp!1867369 e!4116519)))

(declare-fun b!6823443 () Bool)

(declare-fun tp!1867691 () Bool)

(assert (=> b!6823443 (= e!4116519 tp!1867691)))

(declare-fun b!6823442 () Bool)

(declare-fun tp!1867688 () Bool)

(declare-fun tp!1867690 () Bool)

(assert (=> b!6823442 (= e!4116519 (and tp!1867688 tp!1867690))))

(declare-fun b!6823441 () Bool)

(assert (=> b!6823441 (= e!4116519 tp_is_empty!42523)))

(assert (= (and b!6821928 ((_ is ElementMatch!16635) (regOne!33782 (regOne!33782 r!7292)))) b!6823441))

(assert (= (and b!6821928 ((_ is Concat!25480) (regOne!33782 (regOne!33782 r!7292)))) b!6823442))

(assert (= (and b!6821928 ((_ is Star!16635) (regOne!33782 (regOne!33782 r!7292)))) b!6823443))

(assert (= (and b!6821928 ((_ is Union!16635) (regOne!33782 (regOne!33782 r!7292)))) b!6823444))

(declare-fun b!6823448 () Bool)

(declare-fun e!4116520 () Bool)

(declare-fun tp!1867692 () Bool)

(declare-fun tp!1867694 () Bool)

(assert (=> b!6823448 (= e!4116520 (and tp!1867692 tp!1867694))))

(assert (=> b!6821928 (= tp!1867371 e!4116520)))

(declare-fun b!6823447 () Bool)

(declare-fun tp!1867696 () Bool)

(assert (=> b!6823447 (= e!4116520 tp!1867696)))

(declare-fun b!6823446 () Bool)

(declare-fun tp!1867693 () Bool)

(declare-fun tp!1867695 () Bool)

(assert (=> b!6823446 (= e!4116520 (and tp!1867693 tp!1867695))))

(declare-fun b!6823445 () Bool)

(assert (=> b!6823445 (= e!4116520 tp_is_empty!42523)))

(assert (= (and b!6821928 ((_ is ElementMatch!16635) (regTwo!33782 (regOne!33782 r!7292)))) b!6823445))

(assert (= (and b!6821928 ((_ is Concat!25480) (regTwo!33782 (regOne!33782 r!7292)))) b!6823446))

(assert (= (and b!6821928 ((_ is Star!16635) (regTwo!33782 (regOne!33782 r!7292)))) b!6823447))

(assert (= (and b!6821928 ((_ is Union!16635) (regTwo!33782 (regOne!33782 r!7292)))) b!6823448))

(declare-fun b!6823452 () Bool)

(declare-fun e!4116521 () Bool)

(declare-fun tp!1867697 () Bool)

(declare-fun tp!1867699 () Bool)

(assert (=> b!6823452 (= e!4116521 (and tp!1867697 tp!1867699))))

(assert (=> b!6821921 (= tp!1867362 e!4116521)))

(declare-fun b!6823451 () Bool)

(declare-fun tp!1867701 () Bool)

(assert (=> b!6823451 (= e!4116521 tp!1867701)))

(declare-fun b!6823450 () Bool)

(declare-fun tp!1867698 () Bool)

(declare-fun tp!1867700 () Bool)

(assert (=> b!6823450 (= e!4116521 (and tp!1867698 tp!1867700))))

(declare-fun b!6823449 () Bool)

(assert (=> b!6823449 (= e!4116521 tp_is_empty!42523)))

(assert (= (and b!6821921 ((_ is ElementMatch!16635) (reg!16964 (regOne!33783 r!7292)))) b!6823449))

(assert (= (and b!6821921 ((_ is Concat!25480) (reg!16964 (regOne!33783 r!7292)))) b!6823450))

(assert (= (and b!6821921 ((_ is Star!16635) (reg!16964 (regOne!33783 r!7292)))) b!6823451))

(assert (= (and b!6821921 ((_ is Union!16635) (reg!16964 (regOne!33783 r!7292)))) b!6823452))

(declare-fun b!6823456 () Bool)

(declare-fun e!4116522 () Bool)

(declare-fun tp!1867702 () Bool)

(declare-fun tp!1867704 () Bool)

(assert (=> b!6823456 (= e!4116522 (and tp!1867702 tp!1867704))))

(assert (=> b!6821930 (= tp!1867368 e!4116522)))

(declare-fun b!6823455 () Bool)

(declare-fun tp!1867706 () Bool)

(assert (=> b!6823455 (= e!4116522 tp!1867706)))

(declare-fun b!6823454 () Bool)

(declare-fun tp!1867703 () Bool)

(declare-fun tp!1867705 () Bool)

(assert (=> b!6823454 (= e!4116522 (and tp!1867703 tp!1867705))))

(declare-fun b!6823453 () Bool)

(assert (=> b!6823453 (= e!4116522 tp_is_empty!42523)))

(assert (= (and b!6821930 ((_ is ElementMatch!16635) (regOne!33783 (regOne!33782 r!7292)))) b!6823453))

(assert (= (and b!6821930 ((_ is Concat!25480) (regOne!33783 (regOne!33782 r!7292)))) b!6823454))

(assert (= (and b!6821930 ((_ is Star!16635) (regOne!33783 (regOne!33782 r!7292)))) b!6823455))

(assert (= (and b!6821930 ((_ is Union!16635) (regOne!33783 (regOne!33782 r!7292)))) b!6823456))

(declare-fun b!6823460 () Bool)

(declare-fun e!4116523 () Bool)

(declare-fun tp!1867707 () Bool)

(declare-fun tp!1867709 () Bool)

(assert (=> b!6823460 (= e!4116523 (and tp!1867707 tp!1867709))))

(assert (=> b!6821930 (= tp!1867370 e!4116523)))

(declare-fun b!6823459 () Bool)

(declare-fun tp!1867711 () Bool)

(assert (=> b!6823459 (= e!4116523 tp!1867711)))

(declare-fun b!6823458 () Bool)

(declare-fun tp!1867708 () Bool)

(declare-fun tp!1867710 () Bool)

(assert (=> b!6823458 (= e!4116523 (and tp!1867708 tp!1867710))))

(declare-fun b!6823457 () Bool)

(assert (=> b!6823457 (= e!4116523 tp_is_empty!42523)))

(assert (= (and b!6821930 ((_ is ElementMatch!16635) (regTwo!33783 (regOne!33782 r!7292)))) b!6823457))

(assert (= (and b!6821930 ((_ is Concat!25480) (regTwo!33783 (regOne!33782 r!7292)))) b!6823458))

(assert (= (and b!6821930 ((_ is Star!16635) (regTwo!33783 (regOne!33782 r!7292)))) b!6823459))

(assert (= (and b!6821930 ((_ is Union!16635) (regTwo!33783 (regOne!33782 r!7292)))) b!6823460))

(declare-fun b!6823461 () Bool)

(declare-fun e!4116524 () Bool)

(declare-fun tp!1867712 () Bool)

(declare-fun tp!1867713 () Bool)

(assert (=> b!6823461 (= e!4116524 (and tp!1867712 tp!1867713))))

(assert (=> b!6821899 (= tp!1867335 e!4116524)))

(assert (= (and b!6821899 ((_ is Cons!66080) (exprs!6519 setElem!46805))) b!6823461))

(declare-fun b!6823465 () Bool)

(declare-fun e!4116525 () Bool)

(declare-fun tp!1867714 () Bool)

(declare-fun tp!1867716 () Bool)

(assert (=> b!6823465 (= e!4116525 (and tp!1867714 tp!1867716))))

(assert (=> b!6821920 (= tp!1867359 e!4116525)))

(declare-fun b!6823464 () Bool)

(declare-fun tp!1867718 () Bool)

(assert (=> b!6823464 (= e!4116525 tp!1867718)))

(declare-fun b!6823463 () Bool)

(declare-fun tp!1867715 () Bool)

(declare-fun tp!1867717 () Bool)

(assert (=> b!6823463 (= e!4116525 (and tp!1867715 tp!1867717))))

(declare-fun b!6823462 () Bool)

(assert (=> b!6823462 (= e!4116525 tp_is_empty!42523)))

(assert (= (and b!6821920 ((_ is ElementMatch!16635) (regOne!33782 (regOne!33783 r!7292)))) b!6823462))

(assert (= (and b!6821920 ((_ is Concat!25480) (regOne!33782 (regOne!33783 r!7292)))) b!6823463))

(assert (= (and b!6821920 ((_ is Star!16635) (regOne!33782 (regOne!33783 r!7292)))) b!6823464))

(assert (= (and b!6821920 ((_ is Union!16635) (regOne!33782 (regOne!33783 r!7292)))) b!6823465))

(declare-fun b!6823469 () Bool)

(declare-fun e!4116526 () Bool)

(declare-fun tp!1867719 () Bool)

(declare-fun tp!1867721 () Bool)

(assert (=> b!6823469 (= e!4116526 (and tp!1867719 tp!1867721))))

(assert (=> b!6821920 (= tp!1867361 e!4116526)))

(declare-fun b!6823468 () Bool)

(declare-fun tp!1867723 () Bool)

(assert (=> b!6823468 (= e!4116526 tp!1867723)))

(declare-fun b!6823467 () Bool)

(declare-fun tp!1867720 () Bool)

(declare-fun tp!1867722 () Bool)

(assert (=> b!6823467 (= e!4116526 (and tp!1867720 tp!1867722))))

(declare-fun b!6823466 () Bool)

(assert (=> b!6823466 (= e!4116526 tp_is_empty!42523)))

(assert (= (and b!6821920 ((_ is ElementMatch!16635) (regTwo!33782 (regOne!33783 r!7292)))) b!6823466))

(assert (= (and b!6821920 ((_ is Concat!25480) (regTwo!33782 (regOne!33783 r!7292)))) b!6823467))

(assert (= (and b!6821920 ((_ is Star!16635) (regTwo!33782 (regOne!33783 r!7292)))) b!6823468))

(assert (= (and b!6821920 ((_ is Union!16635) (regTwo!33782 (regOne!33783 r!7292)))) b!6823469))

(declare-fun b_lambda!257369 () Bool)

(assert (= b_lambda!257355 (or b!6820978 b_lambda!257369)))

(assert (=> d!2145671 d!2145005))

(declare-fun b_lambda!257371 () Bool)

(assert (= b_lambda!257367 (or b!6820978 b_lambda!257371)))

(assert (=> d!2145795 d!2145003))

(declare-fun b_lambda!257373 () Bool)

(assert (= b_lambda!257353 (or d!2144757 b_lambda!257373)))

(declare-fun bs!1823318 () Bool)

(declare-fun d!2145799 () Bool)

(assert (= bs!1823318 (and d!2145799 d!2144757)))

(assert (=> bs!1823318 (= (dynLambda!26406 lambda!385162 (h!72528 (exprs!6519 (h!72529 zl!343)))) (validRegex!8371 (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(declare-fun m!7569178 () Bool)

(assert (=> bs!1823318 m!7569178))

(assert (=> b!6822986 d!2145799))

(declare-fun b_lambda!257375 () Bool)

(assert (= b_lambda!257347 (or b!6820964 b_lambda!257375)))

(declare-fun bs!1823319 () Bool)

(declare-fun d!2145801 () Bool)

(assert (= bs!1823319 (and d!2145801 b!6820964)))

(assert (=> bs!1823319 (= (dynLambda!26406 lambda!385153 (h!72528 (++!14816 lt!2451325 lt!2451306))) (validRegex!8371 (h!72528 (++!14816 lt!2451325 lt!2451306))))))

(declare-fun m!7569180 () Bool)

(assert (=> bs!1823319 m!7569180))

(assert (=> b!6822829 d!2145801))

(declare-fun b_lambda!257377 () Bool)

(assert (= b_lambda!257357 (or b!6820978 b_lambda!257377)))

(assert (=> d!2145681 d!2145009))

(declare-fun b_lambda!257379 () Bool)

(assert (= b_lambda!257365 (or b!6820978 b_lambda!257379)))

(assert (=> d!2145775 d!2145001))

(declare-fun b_lambda!257381 () Bool)

(assert (= b_lambda!257363 (or d!2144881 b_lambda!257381)))

(declare-fun bs!1823320 () Bool)

(declare-fun d!2145803 () Bool)

(assert (= bs!1823320 (and d!2145803 d!2144881)))

(assert (=> bs!1823320 (= (dynLambda!26406 lambda!385217 (h!72528 (exprs!6519 (h!72529 zl!343)))) (validRegex!8371 (h!72528 (exprs!6519 (h!72529 zl!343)))))))

(assert (=> bs!1823320 m!7569178))

(assert (=> b!6823312 d!2145803))

(declare-fun b_lambda!257383 () Bool)

(assert (= b_lambda!257343 (or d!2144867 b_lambda!257383)))

(declare-fun bs!1823321 () Bool)

(declare-fun d!2145805 () Bool)

(assert (= bs!1823321 (and d!2145805 d!2144867)))

(assert (=> bs!1823321 (= (dynLambda!26406 lambda!385209 (h!72528 (exprs!6519 setElem!46799))) (validRegex!8371 (h!72528 (exprs!6519 setElem!46799))))))

(declare-fun m!7569182 () Bool)

(assert (=> bs!1823321 m!7569182))

(assert (=> b!6822765 d!2145805))

(declare-fun b_lambda!257385 () Bool)

(assert (= b_lambda!257351 (or d!2144963 b_lambda!257385)))

(declare-fun bs!1823322 () Bool)

(declare-fun d!2145807 () Bool)

(assert (= bs!1823322 (and d!2145807 d!2144963)))

(assert (=> bs!1823322 (= (dynLambda!26406 lambda!385227 (h!72528 (exprs!6519 lt!2451314))) (validRegex!8371 (h!72528 (exprs!6519 lt!2451314))))))

(declare-fun m!7569184 () Bool)

(assert (=> bs!1823322 m!7569184))

(assert (=> b!6822894 d!2145807))

(declare-fun b_lambda!257387 () Bool)

(assert (= b_lambda!257359 (or d!2144969 b_lambda!257387)))

(declare-fun bs!1823323 () Bool)

(declare-fun d!2145809 () Bool)

(assert (= bs!1823323 (and d!2145809 d!2144969)))

(assert (=> bs!1823323 (= (dynLambda!26406 lambda!385230 (h!72528 (unfocusZipperList!2056 zl!343))) (validRegex!8371 (h!72528 (unfocusZipperList!2056 zl!343))))))

(declare-fun m!7569186 () Bool)

(assert (=> bs!1823323 m!7569186))

(assert (=> b!6823230 d!2145809))

(declare-fun b_lambda!257389 () Bool)

(assert (= b_lambda!257349 (or b!6820964 b_lambda!257389)))

(declare-fun bs!1823324 () Bool)

(declare-fun d!2145811 () Bool)

(assert (= bs!1823324 (and d!2145811 b!6820964)))

(assert (=> bs!1823324 (= (dynLambda!26406 lambda!385153 (h!72528 lt!2451325)) (validRegex!8371 (h!72528 lt!2451325)))))

(declare-fun m!7569188 () Bool)

(assert (=> bs!1823324 m!7569188))

(assert (=> b!6822831 d!2145811))

(declare-fun b_lambda!257391 () Bool)

(assert (= b_lambda!257361 (or b!6820964 b_lambda!257391)))

(assert (=> d!2145729 d!2145007))

(declare-fun b_lambda!257393 () Bool)

(assert (= b_lambda!257345 (or d!2144971 b_lambda!257393)))

(declare-fun bs!1823325 () Bool)

(declare-fun d!2145813 () Bool)

(assert (= bs!1823325 (and d!2145813 d!2144971)))

(assert (=> bs!1823325 (= (dynLambda!26406 lambda!385233 (h!72528 lt!2451484)) (validRegex!8371 (h!72528 lt!2451484)))))

(declare-fun m!7569190 () Bool)

(assert (=> bs!1823325 m!7569190))

(assert (=> b!6822804 d!2145813))

(check-sat (not b!6823380) (not d!2145441) (not b!6823350) (not d!2145579) (not b!6823389) (not b!6823407) (not b!6822985) (not b!6823426) (not b!6822811) (not d!2145771) (not b!6823398) (not b!6823356) (not b!6822877) (not b!6823077) (not b!6823030) (not b!6822881) (not d!2145777) (not b!6823020) (not b!6822893) (not d!2145775) (not b!6823087) (not b!6823080) (not b!6822942) (not b!6823111) (not d!2145515) (not b!6823364) (not b!6823442) (not d!2145553) (not b!6823423) (not d!2145681) (not bm!620961) (not b!6823425) (not b!6823427) (not bm!621044) (not b!6823437) (not setNonEmpty!46821) (not b!6823447) (not setNonEmpty!46823) (not d!2145535) (not b!6822709) (not b!6823290) (not b!6823001) (not bs!1823324) (not b!6823141) (not b!6823360) (not d!2145631) (not b_lambda!257289) (not b!6823327) (not b!6823372) (not b!6822926) (not b!6823465) (not b!6822915) (not b!6823242) (not bs!1823323) (not b!6822818) (not b!6823059) (not bm!621012) (not b!6823146) (not d!2145783) (not b!6823461) (not d!2145785) (not b!6822859) (not bm!621001) (not d!2145683) (not bm!621046) (not b_lambda!257287) (not d!2145761) (not d!2145559) (not b!6823144) (not d!2145781) (not b!6823451) (not b!6823352) (not b!6823363) (not b_lambda!257375) (not b!6823365) (not d!2145531) (not b!6822869) (not b!6823458) (not b!6823227) (not b!6823346) (not b!6822732) (not b!6823148) (not d!2145539) (not b!6823460) (not b!6823368) (not b!6822832) (not b!6822997) (not bm!621000) (not b!6822931) (not b!6822921) (not b!6823120) (not b!6823110) (not bm!620992) (not b!6822892) (not b_lambda!257281) (not b!6823357) (not bm!620942) (not b!6823464) (not b!6823336) (not b!6823403) (not b_lambda!257369) (not b!6823439) (not b!6822867) (not b!6823369) (not bm!621019) (not bs!1823325) (not b_lambda!257383) (not b!6823435) (not b_lambda!257389) (not bm!620969) (not b!6823374) (not d!2145789) (not b!6823128) (not bm!620953) (not b!6823073) (not b!6823391) (not d!2145415) (not b!6823288) (not b!6822920) (not b!6822918) (not b_lambda!257377) (not d!2145563) (not b!6823099) (not b!6822730) (not b!6823235) (not b!6823165) (not bm!621035) (not b!6823394) (not bm!620939) (not b!6822882) (not b!6823440) (not d!2145653) (not b!6823082) (not d!2145529) (not b!6823383) (not b!6823361) (not d!2145507) (not b!6823048) (not b!6823456) (not setNonEmpty!46825) (not d!2145495) (not d!2145703) (not b!6823438) (not b!6823035) (not b!6823067) (not b!6823069) (not b!6823378) (not d!2145735) (not b!6822856) (not b!6822766) (not b!6822981) (not d!2145637) (not b!6823349) (not b!6823282) (not d!2145505) (not bm!621004) (not b!6823395) (not d!2145449) (not b!6823331) (not b!6823166) (not b!6822983) (not b!6823318) (not bm!621023) (not b!6822748) (not d!2145521) (not b!6823333) (not bm!621038) (not d!2145795) (not b!6823412) (not d!2145465) (not b!6822802) (not b!6822706) (not d!2145437) (not d!2145675) (not b!6822827) (not b!6823376) (not b!6823373) (not d!2145791) (not bm!621025) (not b!6823170) (not b!6822801) (not b_lambda!257379) (not d!2145641) (not d!2145623) (not bm!621050) (not setNonEmpty!46822) (not bm!620929) (not b!6822846) (not b!6823366) (not d!2145499) (not b!6822861) (not bm!620956) (not d!2145685) (not b!6823334) (not d!2145741) (not d!2145649) (not d!2145717) (not b!6823231) (not b_lambda!257387) (not d!2145537) (not b!6823061) (not b!6822760) (not bm!621029) (not b!6822744) (not b!6823405) (not b!6822717) (not b!6823469) (not bs!1823321) (not d!2145547) (not b!6823448) (not b!6823446) (not d!2145443) (not b!6823072) (not b!6823328) (not bm!620966) (not bm!620998) (not b!6822830) (not bm!621009) (not setNonEmpty!46824) (not d!2145773) (not b!6823207) (not b!6822932) (not b!6822933) (not b!6823411) (not b!6822787) (not bm!621018) (not d!2145779) (not bm!620940) (not b!6822747) (not b!6822895) (not bm!621040) (not bm!621016) (not b!6823468) (not b!6823070) (not b!6823277) (not d!2145541) (not b!6823399) (not b!6822710) (not b!6823117) (not b!6823381) (not b!6823178) (not d!2145423) (not b_lambda!257381) (not b!6823130) (not bm!620964) (not b!6822704) (not b!6823212) (not b!6822927) (not bs!1823318) (not b!6822824) (not b!6822805) (not b!6822863) (not b!6823105) (not d!2145557) (not d!2145509) (not b!6823152) (not b!6822703) (not bs!1823320) (not bs!1823322) (not b!6823359) (not d!2145705) (not b!6823278) (not b!6822821) (not b!6823385) (not b!6822733) (not b!6823263) (not b!6822884) (not b!6823085) (not bm!621032) (not b!6823313) (not b!6822822) (not bm!621011) (not b!6823220) (not b!6823106) (not b!6823347) (not b_lambda!257285) (not b!6822860) (not d!2145729) (not bm!620995) (not b!6822928) (not b!6823443) (not b!6822911) (not bm!620963) (not b_lambda!257373) (not setNonEmpty!46818) (not b!6823454) (not b!6822910) (not bm!620999) (not b!6822749) (not b!6823125) (not b!6823415) (not b!6822800) (not b!6822906) (not d!2145695) (not d!2145433) (not d!2145453) (not b!6823008) (not bm!620970) (not bm!620938) (not b!6822773) (not bm!621026) (not d!2145605) (not d!2145655) (not b!6823115) (not b_lambda!257391) (not bm!620950) (not b!6823027) (not bm!620971) (not b!6822916) (not b!6822937) (not b!6823309) (not b!6823413) (not d!2145693) (not b!6823319) (not d!2145555) (not b!6823175) (not b!6822913) (not bm!620984) (not b!6823455) (not b!6823414) (not d!2145475) (not b!6823018) (not d!2145673) (not bs!1823319) (not d!2145417) (not b!6822887) (not b!6823009) (not b_lambda!257283) (not d!2145733) (not d!2145503) (not b!6822883) (not b!6823337) (not b!6822807) (not b!6823274) (not d!2145545) (not d!2145699) (not b!6823386) (not d!2145493) (not bm!620931) (not b!6823016) (not b!6822823) (not b!6822707) (not b!6823121) (not b!6822826) (not b!6822815) (not b!6822798) (not d!2145743) (not b!6823387) (not b!6822987) (not b!6823434) (not b!6823055) (not d!2145463) (not b!6823041) (not bm!620944) (not bm!620985) (not bm!620967) (not bm!621049) (not b!6823186) (not d!2145617) (not b!6823382) (not bm!620986) (not bm!621005) (not d!2145567) (not b!6823054) (not b!6823101) (not bm!620932) (not d!2145635) (not b!6823370) (not b!6822862) (not b!6822888) (not b!6823444) (not d!2145575) (not b!6823151) (not bm!620955) (not b!6822849) (not bm!620943) (not b!6822993) (not b!6823147) (not bm!620997) (not bm!620983) (not b!6822919) (not d!2145419) (not d!2145577) (not b_lambda!257385) (not b!6822819) (not b!6822945) (not b!6823429) (not bm!621027) (not b_lambda!257393) (not d!2145511) (not b!6823058) (not d!2145625) (not b!6822812) (not b!6823021) (not b!6823400) (not b!6823051) (not b!6822973) (not bm!620989) (not b!6823418) (not b!6823276) (not b!6823032) (not d!2145721) (not b!6823459) (not b!6822723) (not bm!621006) (not bm!621047) (not b_lambda!257371) (not d!2145565) (not b!6822777) (not b!6823463) (not b!6823052) (not b!6823326) (not d!2145763) (not b!6822817) (not bm!620936) (not b!6822776) (not d!2145757) (not b!6823467) (not b!6823401) (not d!2145671) (not b!6823217) (not b!6823409) (not b!6822923) (not b!6823163) tp_is_empty!42523 (not d!2145647) (not b!6823204) (not b!6823088) (not b!6822940) (not b!6823353) (not b!6823404) (not b!6823419) (not b!6823431) (not b!6823422) (not b!6822753) (not b!6823452) (not b!6823252) (not bm!620991) (not b!6823022) (not d!2145501) (not d!2145483) (not d!2145663) (not b!6822930) (not d!2145715) (not bm!620988) (not b!6822880) (not b!6823433) (not bm!620949) (not b!6823053) (not b!6822909) (not d!2145435) (not bm!620930) (not b!6823023) (not bm!620933) (not bm!621015) (not d!2145571) (not b!6823133) (not b!6822746) (not b!6823195) (not bm!620959) (not d!2145451) (not b!6822890) (not b!6823145) (not b!6823063) (not b!6822929) (not b!6823396) (not b!6823390) (not b!6823450) (not bm!620982) (not b!6823329) (not b!6823417) (not d!2145645) (not d!2145707) (not d!2145421) (not b!6822995) (not b!6823010) (not b!6822842) (not b!6823421) (not bm!621041) (not b!6822866) (not d!2145657) (not d!2145603) (not bm!621028) (not d!2145687) (not bm!621034) (not b!6823173) (not b!6823430) (not bm!620947) (not b!6823208) (not d!2145759) (not b!6822808) (not bm!621021) (not b!6823377) (not b!6823392) (not b!6823118) (not b!6823408) (not bm!620990) (not bm!621022) (not b!6823292) (not b!6823355) (not b!6823215))
(check-sat)

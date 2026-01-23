; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!659868 () Bool)

(assert start!659868)

(declare-fun b!6824003 () Bool)

(assert (=> b!6824003 true))

(assert (=> b!6824003 true))

(declare-fun lambda!385479 () Int)

(declare-fun lambda!385478 () Int)

(assert (=> b!6824003 (not (= lambda!385479 lambda!385478))))

(assert (=> b!6824003 true))

(assert (=> b!6824003 true))

(declare-fun lambda!385480 () Int)

(assert (=> b!6824003 (not (= lambda!385480 lambda!385478))))

(assert (=> b!6824003 (not (= lambda!385480 lambda!385479))))

(assert (=> b!6824003 true))

(assert (=> b!6824003 true))

(declare-fun b!6824000 () Bool)

(assert (=> b!6824000 true))

(declare-fun b!6823997 () Bool)

(assert (=> b!6823997 true))

(declare-fun b!6823972 () Bool)

(declare-fun e!4116788 () Bool)

(declare-fun e!4116794 () Bool)

(assert (=> b!6823972 (= e!4116788 e!4116794)))

(declare-fun res!2787287 () Bool)

(assert (=> b!6823972 (=> res!2787287 e!4116794)))

(declare-datatypes ((C!33548 0))(
  ( (C!33549 (val!26476 Int)) )
))
(declare-datatypes ((Regex!16639 0))(
  ( (ElementMatch!16639 (c!1270055 C!33548)) (Concat!25484 (regOne!33790 Regex!16639) (regTwo!33790 Regex!16639)) (EmptyExpr!16639) (Star!16639 (reg!16968 Regex!16639)) (EmptyLang!16639) (Union!16639 (regOne!33791 Regex!16639) (regTwo!33791 Regex!16639)) )
))
(declare-fun r!7292 () Regex!16639)

(declare-fun validRegex!8375 (Regex!16639) Bool)

(assert (=> b!6823972 (= res!2787287 (not (validRegex!8375 r!7292)))))

(declare-datatypes ((List!66216 0))(
  ( (Nil!66092) (Cons!66092 (h!72540 C!33548) (t!379955 List!66216)) )
))
(declare-datatypes ((tuple2!67228 0))(
  ( (tuple2!67229 (_1!36917 List!66216) (_2!36917 List!66216)) )
))
(declare-fun lt!2452079 () tuple2!67228)

(declare-fun matchR!8822 (Regex!16639 List!66216) Bool)

(assert (=> b!6823972 (matchR!8822 (reg!16968 r!7292) (_1!36917 lt!2452079))))

(declare-datatypes ((List!66217 0))(
  ( (Nil!66093) (Cons!66093 (h!72541 Regex!16639) (t!379956 List!66217)) )
))
(declare-datatypes ((Context!12046 0))(
  ( (Context!12047 (exprs!6523 List!66217)) )
))
(declare-datatypes ((List!66218 0))(
  ( (Nil!66094) (Cons!66094 (h!72542 Context!12046) (t!379957 List!66218)) )
))
(declare-fun lt!2452090 () List!66218)

(declare-datatypes ((Unit!159969 0))(
  ( (Unit!159970) )
))
(declare-fun lt!2452060 () Unit!159969)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2452091 () (InoxSet Context!12046))

(declare-fun theoremZipperRegexEquiv!941 ((InoxSet Context!12046) List!66218 Regex!16639 List!66216) Unit!159969)

(assert (=> b!6823972 (= lt!2452060 (theoremZipperRegexEquiv!941 lt!2452091 lt!2452090 (reg!16968 r!7292) (_1!36917 lt!2452079)))))

(declare-fun lt!2452077 () List!66217)

(declare-fun lt!2452065 () List!66217)

(declare-fun lt!2452083 () List!66216)

(declare-fun matchZipper!2625 ((InoxSet Context!12046) List!66216) Bool)

(declare-fun ++!14824 (List!66217 List!66217) List!66217)

(assert (=> b!6823972 (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) lt!2452083)))

(declare-fun lt!2452070 () Unit!159969)

(declare-fun lambda!385483 () Int)

(declare-fun lemmaConcatPreservesForall!468 (List!66217 List!66217 Int) Unit!159969)

(assert (=> b!6823972 (= lt!2452070 (lemmaConcatPreservesForall!468 lt!2452077 lt!2452065 lambda!385483))))

(declare-fun lt!2452067 () Context!12046)

(declare-fun lt!2452071 () Unit!159969)

(declare-fun lt!2452076 () Context!12046)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!262 (Context!12046 Context!12046 List!66216 List!66216) Unit!159969)

(assert (=> b!6823972 (= lt!2452071 (lemmaConcatenateContextMatchesConcatOfStrings!262 lt!2452067 lt!2452076 (_1!36917 lt!2452079) (_2!36917 lt!2452079)))))

(declare-fun b!6823973 () Bool)

(declare-fun e!4116799 () Bool)

(declare-fun e!4116791 () Bool)

(assert (=> b!6823973 (= e!4116799 e!4116791)))

(declare-fun res!2787282 () Bool)

(assert (=> b!6823973 (=> res!2787282 e!4116791)))

(declare-fun lt!2452094 () (InoxSet Context!12046))

(declare-fun s!2326 () List!66216)

(declare-fun derivationStepZipperDown!1867 (Regex!16639 Context!12046 C!33548) (InoxSet Context!12046))

(assert (=> b!6823973 (= res!2787282 (not (= lt!2452094 (derivationStepZipperDown!1867 (reg!16968 r!7292) lt!2452076 (h!72540 s!2326)))))))

(assert (=> b!6823973 (= lt!2452076 (Context!12047 lt!2452065))))

(declare-fun lambda!385481 () Int)

(declare-fun lt!2452078 () Context!12046)

(declare-fun lt!2452058 () (InoxSet Context!12046))

(declare-fun flatMap!2120 ((InoxSet Context!12046) Int) (InoxSet Context!12046))

(declare-fun derivationStepZipperUp!1793 (Context!12046 C!33548) (InoxSet Context!12046))

(assert (=> b!6823973 (= (flatMap!2120 lt!2452058 lambda!385481) (derivationStepZipperUp!1793 lt!2452078 (h!72540 s!2326)))))

(declare-fun lt!2452066 () Unit!159969)

(declare-fun lemmaFlatMapOnSingletonSet!1646 ((InoxSet Context!12046) Context!12046 Int) Unit!159969)

(assert (=> b!6823973 (= lt!2452066 (lemmaFlatMapOnSingletonSet!1646 lt!2452058 lt!2452078 lambda!385481))))

(declare-fun lt!2452085 () (InoxSet Context!12046))

(assert (=> b!6823973 (= lt!2452085 (derivationStepZipperUp!1793 lt!2452078 (h!72540 s!2326)))))

(assert (=> b!6823973 (= lt!2452058 (store ((as const (Array Context!12046 Bool)) false) lt!2452078 true))))

(assert (=> b!6823973 (= lt!2452078 (Context!12047 (Cons!66093 (reg!16968 r!7292) lt!2452065)))))

(assert (=> b!6823973 (= lt!2452065 (Cons!66093 r!7292 Nil!66093))))

(declare-fun setIsEmpty!46837 () Bool)

(declare-fun setRes!46837 () Bool)

(assert (=> setIsEmpty!46837 setRes!46837))

(declare-fun b!6823974 () Bool)

(declare-fun res!2787284 () Bool)

(declare-fun e!4116806 () Bool)

(assert (=> b!6823974 (=> res!2787284 e!4116806)))

(declare-fun zl!343 () List!66218)

(declare-fun generalisedConcat!2236 (List!66217) Regex!16639)

(assert (=> b!6823974 (= res!2787284 (not (= r!7292 (generalisedConcat!2236 (exprs!6523 (h!72542 zl!343))))))))

(declare-fun b!6823975 () Bool)

(declare-fun e!4116787 () Bool)

(declare-fun e!4116786 () Bool)

(assert (=> b!6823975 (= e!4116787 e!4116786)))

(declare-fun res!2787276 () Bool)

(assert (=> b!6823975 (=> res!2787276 e!4116786)))

(declare-fun lt!2452073 () Bool)

(assert (=> b!6823975 (= res!2787276 lt!2452073)))

(declare-fun lt!2452072 () Regex!16639)

(declare-fun matchRSpec!3740 (Regex!16639 List!66216) Bool)

(assert (=> b!6823975 (= lt!2452073 (matchRSpec!3740 lt!2452072 s!2326))))

(assert (=> b!6823975 (= lt!2452073 (matchR!8822 lt!2452072 s!2326))))

(declare-fun lt!2452088 () Unit!159969)

(declare-fun mainMatchTheorem!3740 (Regex!16639 List!66216) Unit!159969)

(assert (=> b!6823975 (= lt!2452088 (mainMatchTheorem!3740 lt!2452072 s!2326))))

(declare-fun b!6823976 () Bool)

(declare-fun res!2787273 () Bool)

(assert (=> b!6823976 (=> res!2787273 e!4116786)))

(declare-fun z!1189 () (InoxSet Context!12046))

(assert (=> b!6823976 (= res!2787273 (not (matchZipper!2625 z!1189 s!2326)))))

(declare-fun b!6823977 () Bool)

(declare-fun e!4116790 () Bool)

(declare-fun lt!2452087 () Bool)

(assert (=> b!6823977 (= e!4116790 lt!2452087)))

(declare-fun b!6823978 () Bool)

(declare-fun e!4116796 () Bool)

(declare-fun tp!1867836 () Bool)

(assert (=> b!6823978 (= e!4116796 tp!1867836)))

(declare-fun b!6823979 () Bool)

(declare-fun res!2787285 () Bool)

(declare-fun e!4116798 () Bool)

(assert (=> b!6823979 (=> (not res!2787285) (not e!4116798))))

(declare-fun toList!10423 ((InoxSet Context!12046)) List!66218)

(assert (=> b!6823979 (= res!2787285 (= (toList!10423 z!1189) zl!343))))

(declare-fun res!2787274 () Bool)

(assert (=> start!659868 (=> (not res!2787274) (not e!4116798))))

(assert (=> start!659868 (= res!2787274 (validRegex!8375 r!7292))))

(assert (=> start!659868 e!4116798))

(declare-fun e!4116800 () Bool)

(assert (=> start!659868 e!4116800))

(declare-fun condSetEmpty!46837 () Bool)

(assert (=> start!659868 (= condSetEmpty!46837 (= z!1189 ((as const (Array Context!12046 Bool)) false)))))

(assert (=> start!659868 setRes!46837))

(declare-fun e!4116802 () Bool)

(assert (=> start!659868 e!4116802))

(declare-fun e!4116793 () Bool)

(assert (=> start!659868 e!4116793))

(declare-fun b!6823980 () Bool)

(declare-fun res!2787279 () Bool)

(declare-fun e!4116789 () Bool)

(assert (=> b!6823980 (=> res!2787279 e!4116789)))

(get-info :version)

(assert (=> b!6823980 (= res!2787279 ((_ is Nil!66092) s!2326))))

(declare-fun b!6823981 () Bool)

(declare-fun tp!1867840 () Bool)

(assert (=> b!6823981 (= e!4116800 tp!1867840)))

(declare-fun b!6823982 () Bool)

(declare-fun tp!1867839 () Bool)

(declare-fun inv!84844 (Context!12046) Bool)

(assert (=> b!6823982 (= e!4116802 (and (inv!84844 (h!72542 zl!343)) e!4116796 tp!1867839))))

(declare-fun b!6823983 () Bool)

(declare-fun e!4116804 () Bool)

(assert (=> b!6823983 (= e!4116791 e!4116804)))

(declare-fun res!2787275 () Bool)

(assert (=> b!6823983 (=> res!2787275 e!4116804)))

(declare-fun unfocusZipper!2381 (List!66218) Regex!16639)

(assert (=> b!6823983 (= res!2787275 (not (= (unfocusZipper!2381 (Cons!66094 lt!2452078 Nil!66094)) lt!2452072)))))

(assert (=> b!6823983 (= lt!2452072 (Concat!25484 (reg!16968 r!7292) r!7292))))

(declare-fun b!6823984 () Bool)

(declare-fun tp!1867837 () Bool)

(declare-fun tp!1867834 () Bool)

(assert (=> b!6823984 (= e!4116800 (and tp!1867837 tp!1867834))))

(declare-fun b!6823985 () Bool)

(declare-fun res!2787268 () Bool)

(assert (=> b!6823985 (=> res!2787268 e!4116791)))

(declare-fun derivationStepZipper!2583 ((InoxSet Context!12046) C!33548) (InoxSet Context!12046))

(assert (=> b!6823985 (= res!2787268 (not (= (matchZipper!2625 lt!2452058 s!2326) (matchZipper!2625 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) (t!379955 s!2326)))))))

(declare-fun b!6823986 () Bool)

(declare-fun tp_is_empty!42531 () Bool)

(declare-fun tp!1867843 () Bool)

(assert (=> b!6823986 (= e!4116793 (and tp_is_empty!42531 tp!1867843))))

(declare-fun b!6823987 () Bool)

(declare-fun lt!2452059 () (InoxSet Context!12046))

(declare-fun lt!2452069 () List!66218)

(assert (=> b!6823987 (= e!4116794 (= (toList!10423 lt!2452059) lt!2452069))))

(declare-fun b!6823988 () Bool)

(declare-fun res!2787281 () Bool)

(assert (=> b!6823988 (=> res!2787281 e!4116806)))

(assert (=> b!6823988 (= res!2787281 (or ((_ is EmptyExpr!16639) r!7292) ((_ is EmptyLang!16639) r!7292) ((_ is ElementMatch!16639) r!7292) ((_ is Union!16639) r!7292) ((_ is Concat!25484) r!7292)))))

(declare-fun b!6823989 () Bool)

(declare-fun e!4116803 () Bool)

(assert (=> b!6823989 (= e!4116804 e!4116803)))

(declare-fun res!2787277 () Bool)

(assert (=> b!6823989 (=> res!2787277 e!4116803)))

(assert (=> b!6823989 (= res!2787277 (not (= lt!2452094 (derivationStepZipper!2583 lt!2452059 (h!72540 s!2326)))))))

(assert (=> b!6823989 (= (flatMap!2120 lt!2452059 lambda!385481) (derivationStepZipperUp!1793 lt!2452076 (h!72540 s!2326)))))

(declare-fun lt!2452084 () Unit!159969)

(assert (=> b!6823989 (= lt!2452084 (lemmaFlatMapOnSingletonSet!1646 lt!2452059 lt!2452076 lambda!385481))))

(assert (=> b!6823989 (= (flatMap!2120 lt!2452091 lambda!385481) (derivationStepZipperUp!1793 lt!2452067 (h!72540 s!2326)))))

(declare-fun lt!2452093 () Unit!159969)

(assert (=> b!6823989 (= lt!2452093 (lemmaFlatMapOnSingletonSet!1646 lt!2452091 lt!2452067 lambda!385481))))

(declare-fun lt!2452056 () (InoxSet Context!12046))

(assert (=> b!6823989 (= lt!2452056 (derivationStepZipperUp!1793 lt!2452076 (h!72540 s!2326)))))

(declare-fun lt!2452080 () (InoxSet Context!12046))

(assert (=> b!6823989 (= lt!2452080 (derivationStepZipperUp!1793 lt!2452067 (h!72540 s!2326)))))

(assert (=> b!6823989 (= lt!2452059 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true))))

(assert (=> b!6823989 (= lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452067 true))))

(assert (=> b!6823989 (= lt!2452067 (Context!12047 lt!2452077))))

(assert (=> b!6823989 (= lt!2452077 (Cons!66093 (reg!16968 r!7292) Nil!66093))))

(declare-fun b!6823990 () Bool)

(declare-fun e!4116801 () Bool)

(declare-fun tp!1867838 () Bool)

(assert (=> b!6823990 (= e!4116801 tp!1867838)))

(declare-fun b!6823991 () Bool)

(declare-fun res!2787271 () Bool)

(assert (=> b!6823991 (=> res!2787271 e!4116788)))

(assert (=> b!6823991 (= res!2787271 (not (matchZipper!2625 lt!2452091 (_1!36917 lt!2452079))))))

(declare-fun b!6823992 () Bool)

(declare-fun e!4116792 () Bool)

(assert (=> b!6823992 (= e!4116792 (not e!4116806))))

(declare-fun res!2787286 () Bool)

(assert (=> b!6823992 (=> res!2787286 e!4116806)))

(assert (=> b!6823992 (= res!2787286 (not ((_ is Cons!66094) zl!343)))))

(declare-fun lt!2452092 () Bool)

(assert (=> b!6823992 (= lt!2452092 (matchRSpec!3740 r!7292 s!2326))))

(assert (=> b!6823992 (= lt!2452092 (matchR!8822 r!7292 s!2326))))

(declare-fun lt!2452082 () Unit!159969)

(assert (=> b!6823992 (= lt!2452082 (mainMatchTheorem!3740 r!7292 s!2326))))

(declare-fun b!6823993 () Bool)

(declare-fun res!2787293 () Bool)

(assert (=> b!6823993 (=> res!2787293 e!4116806)))

(declare-fun generalisedUnion!2483 (List!66217) Regex!16639)

(declare-fun unfocusZipperList!2060 (List!66218) List!66217)

(assert (=> b!6823993 (= res!2787293 (not (= r!7292 (generalisedUnion!2483 (unfocusZipperList!2060 zl!343)))))))

(declare-fun b!6823994 () Bool)

(declare-fun e!4116805 () Bool)

(assert (=> b!6823994 (= e!4116789 e!4116805)))

(declare-fun res!2787291 () Bool)

(assert (=> b!6823994 (=> res!2787291 e!4116805)))

(declare-fun lt!2452089 () (InoxSet Context!12046))

(declare-fun lt!2452063 () (InoxSet Context!12046))

(assert (=> b!6823994 (= res!2787291 (not (= lt!2452089 lt!2452063)))))

(assert (=> b!6823994 (= lt!2452063 (derivationStepZipperDown!1867 r!7292 (Context!12047 Nil!66093) (h!72540 s!2326)))))

(assert (=> b!6823994 (= lt!2452089 (derivationStepZipperUp!1793 (Context!12047 (Cons!66093 r!7292 Nil!66093)) (h!72540 s!2326)))))

(assert (=> b!6823994 (= lt!2452094 (derivationStepZipper!2583 z!1189 (h!72540 s!2326)))))

(declare-fun b!6823995 () Bool)

(assert (=> b!6823995 (= e!4116800 tp_is_empty!42531)))

(declare-fun b!6823996 () Bool)

(declare-fun res!2787269 () Bool)

(assert (=> b!6823996 (=> res!2787269 e!4116788)))

(assert (=> b!6823996 (= res!2787269 (not (matchZipper!2625 lt!2452059 (_2!36917 lt!2452079))))))

(declare-fun setNonEmpty!46837 () Bool)

(declare-fun setElem!46837 () Context!12046)

(declare-fun tp!1867842 () Bool)

(assert (=> setNonEmpty!46837 (= setRes!46837 (and tp!1867842 (inv!84844 setElem!46837) e!4116801))))

(declare-fun setRest!46837 () (InoxSet Context!12046))

(assert (=> setNonEmpty!46837 (= z!1189 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) setElem!46837 true) setRest!46837))))

(declare-fun e!4116795 () Bool)

(assert (=> b!6823997 (= e!4116786 e!4116795)))

(declare-fun res!2787292 () Bool)

(assert (=> b!6823997 (=> res!2787292 e!4116795)))

(declare-fun appendTo!244 ((InoxSet Context!12046) Context!12046) (InoxSet Context!12046))

(assert (=> b!6823997 (= res!2787292 (not (= (appendTo!244 lt!2452091 lt!2452076) lt!2452058)))))

(declare-fun lambda!385482 () Int)

(declare-fun map!15119 ((InoxSet Context!12046) Int) (InoxSet Context!12046))

(assert (=> b!6823997 (= (map!15119 lt!2452091 lambda!385482) (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true))))

(declare-fun lt!2452061 () Unit!159969)

(assert (=> b!6823997 (= lt!2452061 (lemmaConcatPreservesForall!468 lt!2452077 lt!2452065 lambda!385483))))

(declare-fun lt!2452062 () Unit!159969)

(declare-fun lemmaMapOnSingletonSet!274 ((InoxSet Context!12046) Context!12046 Int) Unit!159969)

(assert (=> b!6823997 (= lt!2452062 (lemmaMapOnSingletonSet!274 lt!2452091 lt!2452067 lambda!385482))))

(declare-fun b!6823998 () Bool)

(declare-fun tp!1867841 () Bool)

(declare-fun tp!1867835 () Bool)

(assert (=> b!6823998 (= e!4116800 (and tp!1867841 tp!1867835))))

(declare-fun b!6823999 () Bool)

(assert (=> b!6823999 (= e!4116798 e!4116792)))

(declare-fun res!2787290 () Bool)

(assert (=> b!6823999 (=> (not res!2787290) (not e!4116792))))

(declare-fun lt!2452081 () Regex!16639)

(assert (=> b!6823999 (= res!2787290 (= r!7292 lt!2452081))))

(assert (=> b!6823999 (= lt!2452081 (unfocusZipper!2381 zl!343))))

(assert (=> b!6824000 (= e!4116805 e!4116799)))

(declare-fun res!2787280 () Bool)

(assert (=> b!6824000 (=> res!2787280 e!4116799)))

(assert (=> b!6824000 (= res!2787280 (not (= lt!2452094 lt!2452063)))))

(assert (=> b!6824000 (= (flatMap!2120 z!1189 lambda!385481) (derivationStepZipperUp!1793 (h!72542 zl!343) (h!72540 s!2326)))))

(declare-fun lt!2452068 () Unit!159969)

(assert (=> b!6824000 (= lt!2452068 (lemmaFlatMapOnSingletonSet!1646 z!1189 (h!72542 zl!343) lambda!385481))))

(declare-fun b!6824001 () Bool)

(assert (=> b!6824001 (= e!4116795 e!4116788)))

(declare-fun res!2787270 () Bool)

(assert (=> b!6824001 (=> res!2787270 e!4116788)))

(assert (=> b!6824001 (= res!2787270 (not (= s!2326 lt!2452083)))))

(declare-fun ++!14825 (List!66216 List!66216) List!66216)

(assert (=> b!6824001 (= lt!2452083 (++!14825 (_1!36917 lt!2452079) (_2!36917 lt!2452079)))))

(declare-datatypes ((Option!16526 0))(
  ( (None!16525) (Some!16525 (v!52735 tuple2!67228)) )
))
(declare-fun lt!2452086 () Option!16526)

(declare-fun get!23028 (Option!16526) tuple2!67228)

(assert (=> b!6824001 (= lt!2452079 (get!23028 lt!2452086))))

(declare-fun isDefined!13229 (Option!16526) Bool)

(assert (=> b!6824001 (isDefined!13229 lt!2452086)))

(declare-fun findConcatSeparationZippers!248 ((InoxSet Context!12046) (InoxSet Context!12046) List!66216 List!66216 List!66216) Option!16526)

(assert (=> b!6824001 (= lt!2452086 (findConcatSeparationZippers!248 lt!2452091 lt!2452059 Nil!66092 s!2326 s!2326))))

(declare-fun lt!2452057 () Unit!159969)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!248 ((InoxSet Context!12046) Context!12046 List!66216) Unit!159969)

(assert (=> b!6824001 (= lt!2452057 (lemmaConcatZipperMatchesStringThenFindConcatDefined!248 lt!2452091 lt!2452076 s!2326))))

(declare-fun b!6824002 () Bool)

(declare-fun res!2787278 () Bool)

(assert (=> b!6824002 (=> res!2787278 e!4116806)))

(assert (=> b!6824002 (= res!2787278 (not ((_ is Cons!66093) (exprs!6523 (h!72542 zl!343)))))))

(assert (=> b!6824003 (= e!4116806 e!4116789)))

(declare-fun res!2787288 () Bool)

(assert (=> b!6824003 (=> res!2787288 e!4116789)))

(assert (=> b!6824003 (= res!2787288 (not (= lt!2452092 e!4116790)))))

(declare-fun res!2787294 () Bool)

(assert (=> b!6824003 (=> res!2787294 e!4116790)))

(declare-fun isEmpty!38481 (List!66216) Bool)

(assert (=> b!6824003 (= res!2787294 (isEmpty!38481 s!2326))))

(declare-fun Exists!3707 (Int) Bool)

(assert (=> b!6824003 (= (Exists!3707 lambda!385478) (Exists!3707 lambda!385480))))

(declare-fun lt!2452075 () Unit!159969)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2234 (Regex!16639 Regex!16639 List!66216) Unit!159969)

(assert (=> b!6824003 (= lt!2452075 (lemmaExistCutMatchRandMatchRSpecEquivalent!2234 (reg!16968 r!7292) r!7292 s!2326))))

(assert (=> b!6824003 (= (Exists!3707 lambda!385478) (Exists!3707 lambda!385479))))

(declare-fun lt!2452074 () Unit!159969)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!798 (Regex!16639 List!66216) Unit!159969)

(assert (=> b!6824003 (= lt!2452074 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!798 (reg!16968 r!7292) s!2326))))

(assert (=> b!6824003 (= lt!2452087 (Exists!3707 lambda!385478))))

(declare-fun findConcatSeparation!2940 (Regex!16639 Regex!16639 List!66216 List!66216 List!66216) Option!16526)

(assert (=> b!6824003 (= lt!2452087 (isDefined!13229 (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 Nil!66092 s!2326 s!2326)))))

(declare-fun lt!2452064 () Unit!159969)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2704 (Regex!16639 Regex!16639 List!66216) Unit!159969)

(assert (=> b!6824003 (= lt!2452064 (lemmaFindConcatSeparationEquivalentToExists!2704 (reg!16968 r!7292) r!7292 s!2326))))

(declare-fun b!6824004 () Bool)

(declare-fun res!2787283 () Bool)

(assert (=> b!6824004 (=> res!2787283 e!4116791)))

(assert (=> b!6824004 (= res!2787283 (or (not (= lt!2452081 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6824005 () Bool)

(declare-fun e!4116797 () Bool)

(assert (=> b!6824005 (= e!4116797 e!4116787)))

(declare-fun res!2787289 () Bool)

(assert (=> b!6824005 (=> res!2787289 e!4116787)))

(assert (=> b!6824005 (= res!2787289 (not (= (unfocusZipper!2381 lt!2452069) r!7292)))))

(assert (=> b!6824005 (= lt!2452069 (Cons!66094 lt!2452076 Nil!66094))))

(declare-fun b!6824006 () Bool)

(declare-fun res!2787272 () Bool)

(assert (=> b!6824006 (=> res!2787272 e!4116806)))

(declare-fun isEmpty!38482 (List!66218) Bool)

(assert (=> b!6824006 (= res!2787272 (not (isEmpty!38482 (t!379957 zl!343))))))

(declare-fun b!6824007 () Bool)

(assert (=> b!6824007 (= e!4116803 e!4116797)))

(declare-fun res!2787267 () Bool)

(assert (=> b!6824007 (=> res!2787267 e!4116797)))

(assert (=> b!6824007 (= res!2787267 (not (= (unfocusZipper!2381 lt!2452090) (reg!16968 r!7292))))))

(assert (=> b!6824007 (= lt!2452090 (Cons!66094 lt!2452067 Nil!66094))))

(assert (= (and start!659868 res!2787274) b!6823979))

(assert (= (and b!6823979 res!2787285) b!6823999))

(assert (= (and b!6823999 res!2787290) b!6823992))

(assert (= (and b!6823992 (not res!2787286)) b!6824006))

(assert (= (and b!6824006 (not res!2787272)) b!6823974))

(assert (= (and b!6823974 (not res!2787284)) b!6824002))

(assert (= (and b!6824002 (not res!2787278)) b!6823993))

(assert (= (and b!6823993 (not res!2787293)) b!6823988))

(assert (= (and b!6823988 (not res!2787281)) b!6824003))

(assert (= (and b!6824003 (not res!2787294)) b!6823977))

(assert (= (and b!6824003 (not res!2787288)) b!6823980))

(assert (= (and b!6823980 (not res!2787279)) b!6823994))

(assert (= (and b!6823994 (not res!2787291)) b!6824000))

(assert (= (and b!6824000 (not res!2787280)) b!6823973))

(assert (= (and b!6823973 (not res!2787282)) b!6823985))

(assert (= (and b!6823985 (not res!2787268)) b!6824004))

(assert (= (and b!6824004 (not res!2787283)) b!6823983))

(assert (= (and b!6823983 (not res!2787275)) b!6823989))

(assert (= (and b!6823989 (not res!2787277)) b!6824007))

(assert (= (and b!6824007 (not res!2787267)) b!6824005))

(assert (= (and b!6824005 (not res!2787289)) b!6823975))

(assert (= (and b!6823975 (not res!2787276)) b!6823976))

(assert (= (and b!6823976 (not res!2787273)) b!6823997))

(assert (= (and b!6823997 (not res!2787292)) b!6824001))

(assert (= (and b!6824001 (not res!2787270)) b!6823991))

(assert (= (and b!6823991 (not res!2787271)) b!6823996))

(assert (= (and b!6823996 (not res!2787269)) b!6823972))

(assert (= (and b!6823972 (not res!2787287)) b!6823987))

(assert (= (and start!659868 ((_ is ElementMatch!16639) r!7292)) b!6823995))

(assert (= (and start!659868 ((_ is Concat!25484) r!7292)) b!6823984))

(assert (= (and start!659868 ((_ is Star!16639) r!7292)) b!6823981))

(assert (= (and start!659868 ((_ is Union!16639) r!7292)) b!6823998))

(assert (= (and start!659868 condSetEmpty!46837) setIsEmpty!46837))

(assert (= (and start!659868 (not condSetEmpty!46837)) setNonEmpty!46837))

(assert (= setNonEmpty!46837 b!6823990))

(assert (= b!6823982 b!6823978))

(assert (= (and start!659868 ((_ is Cons!66094) zl!343)) b!6823982))

(assert (= (and start!659868 ((_ is Cons!66092) s!2326)) b!6823986))

(declare-fun m!7569602 () Bool)

(assert (=> b!6823991 m!7569602))

(declare-fun m!7569604 () Bool)

(assert (=> b!6824005 m!7569604))

(declare-fun m!7569606 () Bool)

(assert (=> b!6823974 m!7569606))

(declare-fun m!7569608 () Bool)

(assert (=> b!6823985 m!7569608))

(declare-fun m!7569610 () Bool)

(assert (=> b!6823985 m!7569610))

(assert (=> b!6823985 m!7569610))

(declare-fun m!7569612 () Bool)

(assert (=> b!6823985 m!7569612))

(declare-fun m!7569614 () Bool)

(assert (=> b!6823975 m!7569614))

(declare-fun m!7569616 () Bool)

(assert (=> b!6823975 m!7569616))

(declare-fun m!7569618 () Bool)

(assert (=> b!6823975 m!7569618))

(declare-fun m!7569620 () Bool)

(assert (=> b!6824003 m!7569620))

(declare-fun m!7569622 () Bool)

(assert (=> b!6824003 m!7569622))

(declare-fun m!7569624 () Bool)

(assert (=> b!6824003 m!7569624))

(declare-fun m!7569626 () Bool)

(assert (=> b!6824003 m!7569626))

(declare-fun m!7569628 () Bool)

(assert (=> b!6824003 m!7569628))

(declare-fun m!7569630 () Bool)

(assert (=> b!6824003 m!7569630))

(declare-fun m!7569632 () Bool)

(assert (=> b!6824003 m!7569632))

(assert (=> b!6824003 m!7569626))

(declare-fun m!7569634 () Bool)

(assert (=> b!6824003 m!7569634))

(assert (=> b!6824003 m!7569626))

(assert (=> b!6824003 m!7569632))

(declare-fun m!7569636 () Bool)

(assert (=> b!6824003 m!7569636))

(declare-fun m!7569638 () Bool)

(assert (=> b!6823973 m!7569638))

(declare-fun m!7569640 () Bool)

(assert (=> b!6823973 m!7569640))

(declare-fun m!7569642 () Bool)

(assert (=> b!6823973 m!7569642))

(declare-fun m!7569644 () Bool)

(assert (=> b!6823973 m!7569644))

(declare-fun m!7569646 () Bool)

(assert (=> b!6823973 m!7569646))

(declare-fun m!7569648 () Bool)

(assert (=> b!6823972 m!7569648))

(declare-fun m!7569650 () Bool)

(assert (=> b!6823972 m!7569650))

(declare-fun m!7569652 () Bool)

(assert (=> b!6823972 m!7569652))

(declare-fun m!7569654 () Bool)

(assert (=> b!6823972 m!7569654))

(declare-fun m!7569656 () Bool)

(assert (=> b!6823972 m!7569656))

(declare-fun m!7569658 () Bool)

(assert (=> b!6823972 m!7569658))

(assert (=> b!6823972 m!7569650))

(declare-fun m!7569660 () Bool)

(assert (=> b!6823972 m!7569660))

(declare-fun m!7569662 () Bool)

(assert (=> b!6823972 m!7569662))

(declare-fun m!7569664 () Bool)

(assert (=> b!6823989 m!7569664))

(declare-fun m!7569666 () Bool)

(assert (=> b!6823989 m!7569666))

(declare-fun m!7569668 () Bool)

(assert (=> b!6823989 m!7569668))

(declare-fun m!7569670 () Bool)

(assert (=> b!6823989 m!7569670))

(declare-fun m!7569672 () Bool)

(assert (=> b!6823989 m!7569672))

(declare-fun m!7569674 () Bool)

(assert (=> b!6823989 m!7569674))

(declare-fun m!7569676 () Bool)

(assert (=> b!6823989 m!7569676))

(declare-fun m!7569678 () Bool)

(assert (=> b!6823989 m!7569678))

(declare-fun m!7569680 () Bool)

(assert (=> b!6823989 m!7569680))

(declare-fun m!7569682 () Bool)

(assert (=> b!6824000 m!7569682))

(declare-fun m!7569684 () Bool)

(assert (=> b!6824000 m!7569684))

(declare-fun m!7569686 () Bool)

(assert (=> b!6824000 m!7569686))

(declare-fun m!7569688 () Bool)

(assert (=> b!6824001 m!7569688))

(declare-fun m!7569690 () Bool)

(assert (=> b!6824001 m!7569690))

(declare-fun m!7569692 () Bool)

(assert (=> b!6824001 m!7569692))

(declare-fun m!7569694 () Bool)

(assert (=> b!6824001 m!7569694))

(declare-fun m!7569696 () Bool)

(assert (=> b!6824001 m!7569696))

(declare-fun m!7569698 () Bool)

(assert (=> b!6823999 m!7569698))

(declare-fun m!7569700 () Bool)

(assert (=> b!6823979 m!7569700))

(declare-fun m!7569702 () Bool)

(assert (=> b!6823993 m!7569702))

(assert (=> b!6823993 m!7569702))

(declare-fun m!7569704 () Bool)

(assert (=> b!6823993 m!7569704))

(declare-fun m!7569706 () Bool)

(assert (=> setNonEmpty!46837 m!7569706))

(declare-fun m!7569708 () Bool)

(assert (=> b!6823987 m!7569708))

(assert (=> b!6823997 m!7569662))

(assert (=> b!6823997 m!7569650))

(declare-fun m!7569710 () Bool)

(assert (=> b!6823997 m!7569710))

(declare-fun m!7569712 () Bool)

(assert (=> b!6823997 m!7569712))

(assert (=> b!6823997 m!7569660))

(declare-fun m!7569714 () Bool)

(assert (=> b!6823997 m!7569714))

(declare-fun m!7569716 () Bool)

(assert (=> b!6823982 m!7569716))

(declare-fun m!7569718 () Bool)

(assert (=> b!6824006 m!7569718))

(assert (=> start!659868 m!7569648))

(declare-fun m!7569720 () Bool)

(assert (=> b!6823976 m!7569720))

(declare-fun m!7569722 () Bool)

(assert (=> b!6823996 m!7569722))

(declare-fun m!7569724 () Bool)

(assert (=> b!6823992 m!7569724))

(declare-fun m!7569726 () Bool)

(assert (=> b!6823992 m!7569726))

(declare-fun m!7569728 () Bool)

(assert (=> b!6823992 m!7569728))

(declare-fun m!7569730 () Bool)

(assert (=> b!6823994 m!7569730))

(declare-fun m!7569732 () Bool)

(assert (=> b!6823994 m!7569732))

(declare-fun m!7569734 () Bool)

(assert (=> b!6823994 m!7569734))

(declare-fun m!7569736 () Bool)

(assert (=> b!6824007 m!7569736))

(declare-fun m!7569738 () Bool)

(assert (=> b!6823983 m!7569738))

(check-sat (not b!6823975) (not b!6823997) (not b!6824007) (not b!6823985) (not b!6824000) (not b!6823976) (not b!6823982) (not start!659868) tp_is_empty!42531 (not b!6824006) (not b!6823978) (not b!6824001) (not b!6823983) (not b!6823994) (not setNonEmpty!46837) (not b!6823993) (not b!6823989) (not b!6823979) (not b!6823973) (not b!6824005) (not b!6823990) (not b!6823972) (not b!6823984) (not b!6823996) (not b!6823992) (not b!6823999) (not b!6823986) (not b!6824003) (not b!6823974) (not b!6823987) (not b!6823981) (not b!6823998) (not b!6823991))
(check-sat)
(get-model)

(declare-fun d!2145817 () Bool)

(declare-fun lt!2452097 () Regex!16639)

(assert (=> d!2145817 (validRegex!8375 lt!2452097)))

(assert (=> d!2145817 (= lt!2452097 (generalisedUnion!2483 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094))))))

(assert (=> d!2145817 (= (unfocusZipper!2381 (Cons!66094 lt!2452078 Nil!66094)) lt!2452097)))

(declare-fun bs!1823330 () Bool)

(assert (= bs!1823330 d!2145817))

(declare-fun m!7569740 () Bool)

(assert (=> bs!1823330 m!7569740))

(declare-fun m!7569742 () Bool)

(assert (=> bs!1823330 m!7569742))

(assert (=> bs!1823330 m!7569742))

(declare-fun m!7569744 () Bool)

(assert (=> bs!1823330 m!7569744))

(assert (=> b!6823983 d!2145817))

(declare-fun d!2145819 () Bool)

(declare-fun lt!2452098 () Regex!16639)

(assert (=> d!2145819 (validRegex!8375 lt!2452098)))

(assert (=> d!2145819 (= lt!2452098 (generalisedUnion!2483 (unfocusZipperList!2060 lt!2452069)))))

(assert (=> d!2145819 (= (unfocusZipper!2381 lt!2452069) lt!2452098)))

(declare-fun bs!1823331 () Bool)

(assert (= bs!1823331 d!2145819))

(declare-fun m!7569746 () Bool)

(assert (=> bs!1823331 m!7569746))

(declare-fun m!7569748 () Bool)

(assert (=> bs!1823331 m!7569748))

(assert (=> bs!1823331 m!7569748))

(declare-fun m!7569750 () Bool)

(assert (=> bs!1823331 m!7569750))

(assert (=> b!6824005 d!2145819))

(declare-fun d!2145821 () Bool)

(declare-fun c!1270066 () Bool)

(assert (=> d!2145821 (= c!1270066 (isEmpty!38481 s!2326))))

(declare-fun e!4116821 () Bool)

(assert (=> d!2145821 (= (matchZipper!2625 lt!2452058 s!2326) e!4116821)))

(declare-fun b!6824040 () Bool)

(declare-fun nullableZipper!2342 ((InoxSet Context!12046)) Bool)

(assert (=> b!6824040 (= e!4116821 (nullableZipper!2342 lt!2452058))))

(declare-fun b!6824041 () Bool)

(declare-fun head!13681 (List!66216) C!33548)

(declare-fun tail!12766 (List!66216) List!66216)

(assert (=> b!6824041 (= e!4116821 (matchZipper!2625 (derivationStepZipper!2583 lt!2452058 (head!13681 s!2326)) (tail!12766 s!2326)))))

(assert (= (and d!2145821 c!1270066) b!6824040))

(assert (= (and d!2145821 (not c!1270066)) b!6824041))

(assert (=> d!2145821 m!7569622))

(declare-fun m!7569752 () Bool)

(assert (=> b!6824040 m!7569752))

(declare-fun m!7569754 () Bool)

(assert (=> b!6824041 m!7569754))

(assert (=> b!6824041 m!7569754))

(declare-fun m!7569756 () Bool)

(assert (=> b!6824041 m!7569756))

(declare-fun m!7569758 () Bool)

(assert (=> b!6824041 m!7569758))

(assert (=> b!6824041 m!7569756))

(assert (=> b!6824041 m!7569758))

(declare-fun m!7569760 () Bool)

(assert (=> b!6824041 m!7569760))

(assert (=> b!6823985 d!2145821))

(declare-fun d!2145825 () Bool)

(declare-fun c!1270067 () Bool)

(assert (=> d!2145825 (= c!1270067 (isEmpty!38481 (t!379955 s!2326)))))

(declare-fun e!4116822 () Bool)

(assert (=> d!2145825 (= (matchZipper!2625 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) (t!379955 s!2326)) e!4116822)))

(declare-fun b!6824042 () Bool)

(assert (=> b!6824042 (= e!4116822 (nullableZipper!2342 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326))))))

(declare-fun b!6824043 () Bool)

(assert (=> b!6824043 (= e!4116822 (matchZipper!2625 (derivationStepZipper!2583 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) (head!13681 (t!379955 s!2326))) (tail!12766 (t!379955 s!2326))))))

(assert (= (and d!2145825 c!1270067) b!6824042))

(assert (= (and d!2145825 (not c!1270067)) b!6824043))

(declare-fun m!7569762 () Bool)

(assert (=> d!2145825 m!7569762))

(assert (=> b!6824042 m!7569610))

(declare-fun m!7569764 () Bool)

(assert (=> b!6824042 m!7569764))

(declare-fun m!7569766 () Bool)

(assert (=> b!6824043 m!7569766))

(assert (=> b!6824043 m!7569610))

(assert (=> b!6824043 m!7569766))

(declare-fun m!7569768 () Bool)

(assert (=> b!6824043 m!7569768))

(declare-fun m!7569770 () Bool)

(assert (=> b!6824043 m!7569770))

(assert (=> b!6824043 m!7569768))

(assert (=> b!6824043 m!7569770))

(declare-fun m!7569772 () Bool)

(assert (=> b!6824043 m!7569772))

(assert (=> b!6823985 d!2145825))

(declare-fun bs!1823333 () Bool)

(declare-fun d!2145827 () Bool)

(assert (= bs!1823333 (and d!2145827 b!6824000)))

(declare-fun lambda!385489 () Int)

(assert (=> bs!1823333 (= lambda!385489 lambda!385481)))

(assert (=> d!2145827 true))

(assert (=> d!2145827 (= (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) (flatMap!2120 lt!2452058 lambda!385489))))

(declare-fun bs!1823334 () Bool)

(assert (= bs!1823334 d!2145827))

(declare-fun m!7569794 () Bool)

(assert (=> bs!1823334 m!7569794))

(assert (=> b!6823985 d!2145827))

(declare-fun d!2145831 () Bool)

(assert (=> d!2145831 (isDefined!13229 (findConcatSeparationZippers!248 lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true) Nil!66092 s!2326 s!2326))))

(declare-fun lt!2452115 () Unit!159969)

(declare-fun choose!50881 ((InoxSet Context!12046) Context!12046 List!66216) Unit!159969)

(assert (=> d!2145831 (= lt!2452115 (choose!50881 lt!2452091 lt!2452076 s!2326))))

(assert (=> d!2145831 (matchZipper!2625 (appendTo!244 lt!2452091 lt!2452076) s!2326)))

(assert (=> d!2145831 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!248 lt!2452091 lt!2452076 s!2326) lt!2452115)))

(declare-fun bs!1823339 () Bool)

(assert (= bs!1823339 d!2145831))

(assert (=> bs!1823339 m!7569678))

(assert (=> bs!1823339 m!7569714))

(declare-fun m!7569824 () Bool)

(assert (=> bs!1823339 m!7569824))

(declare-fun m!7569826 () Bool)

(assert (=> bs!1823339 m!7569826))

(assert (=> bs!1823339 m!7569714))

(assert (=> bs!1823339 m!7569678))

(declare-fun m!7569828 () Bool)

(assert (=> bs!1823339 m!7569828))

(assert (=> bs!1823339 m!7569828))

(declare-fun m!7569832 () Bool)

(assert (=> bs!1823339 m!7569832))

(assert (=> b!6824001 d!2145831))

(declare-fun d!2145839 () Bool)

(assert (=> d!2145839 (= (get!23028 lt!2452086) (v!52735 lt!2452086))))

(assert (=> b!6824001 d!2145839))

(declare-fun b!6824111 () Bool)

(declare-fun res!2787329 () Bool)

(declare-fun e!4116863 () Bool)

(assert (=> b!6824111 (=> (not res!2787329) (not e!4116863))))

(declare-fun lt!2452122 () List!66216)

(declare-fun size!40693 (List!66216) Int)

(assert (=> b!6824111 (= res!2787329 (= (size!40693 lt!2452122) (+ (size!40693 (_1!36917 lt!2452079)) (size!40693 (_2!36917 lt!2452079)))))))

(declare-fun d!2145843 () Bool)

(assert (=> d!2145843 e!4116863))

(declare-fun res!2787328 () Bool)

(assert (=> d!2145843 (=> (not res!2787328) (not e!4116863))))

(declare-fun content!12939 (List!66216) (InoxSet C!33548))

(assert (=> d!2145843 (= res!2787328 (= (content!12939 lt!2452122) ((_ map or) (content!12939 (_1!36917 lt!2452079)) (content!12939 (_2!36917 lt!2452079)))))))

(declare-fun e!4116864 () List!66216)

(assert (=> d!2145843 (= lt!2452122 e!4116864)))

(declare-fun c!1270088 () Bool)

(assert (=> d!2145843 (= c!1270088 ((_ is Nil!66092) (_1!36917 lt!2452079)))))

(assert (=> d!2145843 (= (++!14825 (_1!36917 lt!2452079) (_2!36917 lt!2452079)) lt!2452122)))

(declare-fun b!6824110 () Bool)

(assert (=> b!6824110 (= e!4116864 (Cons!66092 (h!72540 (_1!36917 lt!2452079)) (++!14825 (t!379955 (_1!36917 lt!2452079)) (_2!36917 lt!2452079))))))

(declare-fun b!6824112 () Bool)

(assert (=> b!6824112 (= e!4116863 (or (not (= (_2!36917 lt!2452079) Nil!66092)) (= lt!2452122 (_1!36917 lt!2452079))))))

(declare-fun b!6824109 () Bool)

(assert (=> b!6824109 (= e!4116864 (_2!36917 lt!2452079))))

(assert (= (and d!2145843 c!1270088) b!6824109))

(assert (= (and d!2145843 (not c!1270088)) b!6824110))

(assert (= (and d!2145843 res!2787328) b!6824111))

(assert (= (and b!6824111 res!2787329) b!6824112))

(declare-fun m!7569858 () Bool)

(assert (=> b!6824111 m!7569858))

(declare-fun m!7569860 () Bool)

(assert (=> b!6824111 m!7569860))

(declare-fun m!7569862 () Bool)

(assert (=> b!6824111 m!7569862))

(declare-fun m!7569864 () Bool)

(assert (=> d!2145843 m!7569864))

(declare-fun m!7569866 () Bool)

(assert (=> d!2145843 m!7569866))

(declare-fun m!7569868 () Bool)

(assert (=> d!2145843 m!7569868))

(declare-fun m!7569870 () Bool)

(assert (=> b!6824110 m!7569870))

(assert (=> b!6824001 d!2145843))

(declare-fun d!2145849 () Bool)

(declare-fun isEmpty!38484 (Option!16526) Bool)

(assert (=> d!2145849 (= (isDefined!13229 lt!2452086) (not (isEmpty!38484 lt!2452086)))))

(declare-fun bs!1823341 () Bool)

(assert (= bs!1823341 d!2145849))

(declare-fun m!7569872 () Bool)

(assert (=> bs!1823341 m!7569872))

(assert (=> b!6824001 d!2145849))

(declare-fun b!6824253 () Bool)

(declare-fun e!4116940 () Bool)

(assert (=> b!6824253 (= e!4116940 (matchZipper!2625 lt!2452059 s!2326))))

(declare-fun b!6824254 () Bool)

(declare-fun e!4116941 () Option!16526)

(declare-fun e!4116939 () Option!16526)

(assert (=> b!6824254 (= e!4116941 e!4116939)))

(declare-fun c!1270135 () Bool)

(assert (=> b!6824254 (= c!1270135 ((_ is Nil!66092) s!2326))))

(declare-fun b!6824255 () Bool)

(declare-fun res!2787383 () Bool)

(declare-fun e!4116942 () Bool)

(assert (=> b!6824255 (=> (not res!2787383) (not e!4116942))))

(declare-fun lt!2452139 () Option!16526)

(assert (=> b!6824255 (= res!2787383 (matchZipper!2625 lt!2452091 (_1!36917 (get!23028 lt!2452139))))))

(declare-fun b!6824256 () Bool)

(declare-fun e!4116943 () Bool)

(assert (=> b!6824256 (= e!4116943 (not (isDefined!13229 lt!2452139)))))

(declare-fun b!6824257 () Bool)

(declare-fun res!2787386 () Bool)

(assert (=> b!6824257 (=> (not res!2787386) (not e!4116942))))

(assert (=> b!6824257 (= res!2787386 (matchZipper!2625 lt!2452059 (_2!36917 (get!23028 lt!2452139))))))

(declare-fun d!2145851 () Bool)

(assert (=> d!2145851 e!4116943))

(declare-fun res!2787382 () Bool)

(assert (=> d!2145851 (=> res!2787382 e!4116943)))

(assert (=> d!2145851 (= res!2787382 e!4116942)))

(declare-fun res!2787385 () Bool)

(assert (=> d!2145851 (=> (not res!2787385) (not e!4116942))))

(assert (=> d!2145851 (= res!2787385 (isDefined!13229 lt!2452139))))

(assert (=> d!2145851 (= lt!2452139 e!4116941)))

(declare-fun c!1270134 () Bool)

(assert (=> d!2145851 (= c!1270134 e!4116940)))

(declare-fun res!2787384 () Bool)

(assert (=> d!2145851 (=> (not res!2787384) (not e!4116940))))

(assert (=> d!2145851 (= res!2787384 (matchZipper!2625 lt!2452091 Nil!66092))))

(assert (=> d!2145851 (= (++!14825 Nil!66092 s!2326) s!2326)))

(assert (=> d!2145851 (= (findConcatSeparationZippers!248 lt!2452091 lt!2452059 Nil!66092 s!2326 s!2326) lt!2452139)))

(declare-fun b!6824258 () Bool)

(assert (=> b!6824258 (= e!4116942 (= (++!14825 (_1!36917 (get!23028 lt!2452139)) (_2!36917 (get!23028 lt!2452139))) s!2326))))

(declare-fun b!6824259 () Bool)

(assert (=> b!6824259 (= e!4116941 (Some!16525 (tuple2!67229 Nil!66092 s!2326)))))

(declare-fun b!6824260 () Bool)

(assert (=> b!6824260 (= e!4116939 None!16525)))

(declare-fun b!6824261 () Bool)

(declare-fun lt!2452137 () Unit!159969)

(declare-fun lt!2452138 () Unit!159969)

(assert (=> b!6824261 (= lt!2452137 lt!2452138)))

(assert (=> b!6824261 (= (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2755 (List!66216 C!33548 List!66216 List!66216) Unit!159969)

(assert (=> b!6824261 (= lt!2452138 (lemmaMoveElementToOtherListKeepsConcatEq!2755 Nil!66092 (h!72540 s!2326) (t!379955 s!2326) s!2326))))

(assert (=> b!6824261 (= e!4116939 (findConcatSeparationZippers!248 lt!2452091 lt!2452059 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326) s!2326))))

(assert (= (and d!2145851 res!2787384) b!6824253))

(assert (= (and d!2145851 c!1270134) b!6824259))

(assert (= (and d!2145851 (not c!1270134)) b!6824254))

(assert (= (and b!6824254 c!1270135) b!6824260))

(assert (= (and b!6824254 (not c!1270135)) b!6824261))

(assert (= (and d!2145851 res!2787385) b!6824255))

(assert (= (and b!6824255 res!2787383) b!6824257))

(assert (= (and b!6824257 res!2787386) b!6824258))

(assert (= (and d!2145851 (not res!2787382)) b!6824256))

(declare-fun m!7569914 () Bool)

(assert (=> b!6824255 m!7569914))

(declare-fun m!7569916 () Bool)

(assert (=> b!6824255 m!7569916))

(assert (=> b!6824258 m!7569914))

(declare-fun m!7569918 () Bool)

(assert (=> b!6824258 m!7569918))

(assert (=> b!6824257 m!7569914))

(declare-fun m!7569920 () Bool)

(assert (=> b!6824257 m!7569920))

(declare-fun m!7569922 () Bool)

(assert (=> b!6824261 m!7569922))

(assert (=> b!6824261 m!7569922))

(declare-fun m!7569924 () Bool)

(assert (=> b!6824261 m!7569924))

(declare-fun m!7569926 () Bool)

(assert (=> b!6824261 m!7569926))

(assert (=> b!6824261 m!7569922))

(declare-fun m!7569928 () Bool)

(assert (=> b!6824261 m!7569928))

(declare-fun m!7569930 () Bool)

(assert (=> d!2145851 m!7569930))

(declare-fun m!7569932 () Bool)

(assert (=> d!2145851 m!7569932))

(declare-fun m!7569934 () Bool)

(assert (=> d!2145851 m!7569934))

(declare-fun m!7569936 () Bool)

(assert (=> b!6824253 m!7569936))

(assert (=> b!6824256 m!7569930))

(assert (=> b!6824001 d!2145851))

(declare-fun bs!1823349 () Bool)

(declare-fun d!2145867 () Bool)

(assert (= bs!1823349 (and d!2145867 b!6823997)))

(declare-fun lambda!385508 () Int)

(assert (=> bs!1823349 (= lambda!385508 lambda!385483)))

(declare-fun forall!15827 (List!66217 Int) Bool)

(assert (=> d!2145867 (= (inv!84844 (h!72542 zl!343)) (forall!15827 (exprs!6523 (h!72542 zl!343)) lambda!385508))))

(declare-fun bs!1823350 () Bool)

(assert (= bs!1823350 d!2145867))

(declare-fun m!7569938 () Bool)

(assert (=> bs!1823350 m!7569938))

(assert (=> b!6823982 d!2145867))

(declare-fun d!2145869 () Bool)

(declare-fun choose!50883 (Int) Bool)

(assert (=> d!2145869 (= (Exists!3707 lambda!385480) (choose!50883 lambda!385480))))

(declare-fun bs!1823353 () Bool)

(assert (= bs!1823353 d!2145869))

(declare-fun m!7569940 () Bool)

(assert (=> bs!1823353 m!7569940))

(assert (=> b!6824003 d!2145869))

(declare-fun d!2145871 () Bool)

(assert (=> d!2145871 (= (isDefined!13229 (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 Nil!66092 s!2326 s!2326)) (not (isEmpty!38484 (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 Nil!66092 s!2326 s!2326))))))

(declare-fun bs!1823354 () Bool)

(assert (= bs!1823354 d!2145871))

(assert (=> bs!1823354 m!7569632))

(declare-fun m!7569946 () Bool)

(assert (=> bs!1823354 m!7569946))

(assert (=> b!6824003 d!2145871))

(declare-fun bs!1823359 () Bool)

(declare-fun d!2145873 () Bool)

(assert (= bs!1823359 (and d!2145873 b!6824003)))

(declare-fun lambda!385514 () Int)

(assert (=> bs!1823359 (= lambda!385514 lambda!385478)))

(assert (=> bs!1823359 (not (= lambda!385514 lambda!385479))))

(assert (=> bs!1823359 (not (= lambda!385514 lambda!385480))))

(assert (=> d!2145873 true))

(assert (=> d!2145873 true))

(assert (=> d!2145873 true))

(declare-fun lambda!385515 () Int)

(assert (=> bs!1823359 (not (= lambda!385515 lambda!385478))))

(assert (=> bs!1823359 (not (= lambda!385515 lambda!385479))))

(assert (=> bs!1823359 (= lambda!385515 lambda!385480)))

(declare-fun bs!1823360 () Bool)

(assert (= bs!1823360 d!2145873))

(assert (=> bs!1823360 (not (= lambda!385515 lambda!385514))))

(assert (=> d!2145873 true))

(assert (=> d!2145873 true))

(assert (=> d!2145873 true))

(assert (=> d!2145873 (= (Exists!3707 lambda!385514) (Exists!3707 lambda!385515))))

(declare-fun lt!2452149 () Unit!159969)

(declare-fun choose!50884 (Regex!16639 Regex!16639 List!66216) Unit!159969)

(assert (=> d!2145873 (= lt!2452149 (choose!50884 (reg!16968 r!7292) r!7292 s!2326))))

(assert (=> d!2145873 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2145873 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2234 (reg!16968 r!7292) r!7292 s!2326) lt!2452149)))

(declare-fun m!7569986 () Bool)

(assert (=> bs!1823360 m!7569986))

(declare-fun m!7569988 () Bool)

(assert (=> bs!1823360 m!7569988))

(declare-fun m!7569990 () Bool)

(assert (=> bs!1823360 m!7569990))

(declare-fun m!7569992 () Bool)

(assert (=> bs!1823360 m!7569992))

(assert (=> b!6824003 d!2145873))

(declare-fun bs!1823362 () Bool)

(declare-fun d!2145893 () Bool)

(assert (= bs!1823362 (and d!2145893 d!2145873)))

(declare-fun lambda!385522 () Int)

(assert (=> bs!1823362 (= (= (Star!16639 (reg!16968 r!7292)) r!7292) (= lambda!385522 lambda!385514))))

(declare-fun bs!1823365 () Bool)

(assert (= bs!1823365 (and d!2145893 b!6824003)))

(assert (=> bs!1823365 (not (= lambda!385522 lambda!385480))))

(assert (=> bs!1823362 (not (= lambda!385522 lambda!385515))))

(assert (=> bs!1823365 (not (= lambda!385522 lambda!385479))))

(assert (=> bs!1823365 (= (= (Star!16639 (reg!16968 r!7292)) r!7292) (= lambda!385522 lambda!385478))))

(assert (=> d!2145893 true))

(assert (=> d!2145893 true))

(declare-fun lambda!385525 () Int)

(assert (=> bs!1823362 (not (= lambda!385525 lambda!385514))))

(declare-fun bs!1823371 () Bool)

(assert (= bs!1823371 d!2145893))

(assert (=> bs!1823371 (not (= lambda!385525 lambda!385522))))

(assert (=> bs!1823365 (not (= lambda!385525 lambda!385480))))

(assert (=> bs!1823362 (not (= lambda!385525 lambda!385515))))

(assert (=> bs!1823365 (= (= (Star!16639 (reg!16968 r!7292)) r!7292) (= lambda!385525 lambda!385479))))

(assert (=> bs!1823365 (not (= lambda!385525 lambda!385478))))

(assert (=> d!2145893 true))

(assert (=> d!2145893 true))

(assert (=> d!2145893 (= (Exists!3707 lambda!385522) (Exists!3707 lambda!385525))))

(declare-fun lt!2452167 () Unit!159969)

(declare-fun choose!50885 (Regex!16639 List!66216) Unit!159969)

(assert (=> d!2145893 (= lt!2452167 (choose!50885 (reg!16968 r!7292) s!2326))))

(assert (=> d!2145893 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2145893 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!798 (reg!16968 r!7292) s!2326) lt!2452167)))

(declare-fun m!7570068 () Bool)

(assert (=> bs!1823371 m!7570068))

(declare-fun m!7570070 () Bool)

(assert (=> bs!1823371 m!7570070))

(declare-fun m!7570072 () Bool)

(assert (=> bs!1823371 m!7570072))

(assert (=> bs!1823371 m!7569992))

(assert (=> b!6824003 d!2145893))

(declare-fun d!2145911 () Bool)

(assert (=> d!2145911 (= (Exists!3707 lambda!385479) (choose!50883 lambda!385479))))

(declare-fun bs!1823375 () Bool)

(assert (= bs!1823375 d!2145911))

(declare-fun m!7570074 () Bool)

(assert (=> bs!1823375 m!7570074))

(assert (=> b!6824003 d!2145911))

(declare-fun d!2145913 () Bool)

(assert (=> d!2145913 (= (isEmpty!38481 s!2326) ((_ is Nil!66092) s!2326))))

(assert (=> b!6824003 d!2145913))

(declare-fun d!2145915 () Bool)

(assert (=> d!2145915 (= (Exists!3707 lambda!385478) (choose!50883 lambda!385478))))

(declare-fun bs!1823380 () Bool)

(assert (= bs!1823380 d!2145915))

(declare-fun m!7570076 () Bool)

(assert (=> bs!1823380 m!7570076))

(assert (=> b!6824003 d!2145915))

(declare-fun b!6824460 () Bool)

(declare-fun e!4117055 () Option!16526)

(declare-fun e!4117052 () Option!16526)

(assert (=> b!6824460 (= e!4117055 e!4117052)))

(declare-fun c!1270190 () Bool)

(assert (=> b!6824460 (= c!1270190 ((_ is Nil!66092) s!2326))))

(declare-fun b!6824461 () Bool)

(declare-fun res!2787473 () Bool)

(declare-fun e!4117054 () Bool)

(assert (=> b!6824461 (=> (not res!2787473) (not e!4117054))))

(declare-fun lt!2452182 () Option!16526)

(assert (=> b!6824461 (= res!2787473 (matchR!8822 (reg!16968 r!7292) (_1!36917 (get!23028 lt!2452182))))))

(declare-fun b!6824462 () Bool)

(assert (=> b!6824462 (= e!4117054 (= (++!14825 (_1!36917 (get!23028 lt!2452182)) (_2!36917 (get!23028 lt!2452182))) s!2326))))

(declare-fun b!6824463 () Bool)

(declare-fun e!4117050 () Bool)

(assert (=> b!6824463 (= e!4117050 (matchR!8822 r!7292 s!2326))))

(declare-fun b!6824464 () Bool)

(declare-fun lt!2452183 () Unit!159969)

(declare-fun lt!2452184 () Unit!159969)

(assert (=> b!6824464 (= lt!2452183 lt!2452184)))

(assert (=> b!6824464 (= (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326)) s!2326)))

(assert (=> b!6824464 (= lt!2452184 (lemmaMoveElementToOtherListKeepsConcatEq!2755 Nil!66092 (h!72540 s!2326) (t!379955 s!2326) s!2326))))

(assert (=> b!6824464 (= e!4117052 (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326) s!2326))))

(declare-fun b!6824465 () Bool)

(declare-fun e!4117056 () Bool)

(assert (=> b!6824465 (= e!4117056 (not (isDefined!13229 lt!2452182)))))

(declare-fun b!6824459 () Bool)

(declare-fun res!2787472 () Bool)

(assert (=> b!6824459 (=> (not res!2787472) (not e!4117054))))

(assert (=> b!6824459 (= res!2787472 (matchR!8822 r!7292 (_2!36917 (get!23028 lt!2452182))))))

(declare-fun d!2145917 () Bool)

(assert (=> d!2145917 e!4117056))

(declare-fun res!2787475 () Bool)

(assert (=> d!2145917 (=> res!2787475 e!4117056)))

(assert (=> d!2145917 (= res!2787475 e!4117054)))

(declare-fun res!2787476 () Bool)

(assert (=> d!2145917 (=> (not res!2787476) (not e!4117054))))

(assert (=> d!2145917 (= res!2787476 (isDefined!13229 lt!2452182))))

(assert (=> d!2145917 (= lt!2452182 e!4117055)))

(declare-fun c!1270193 () Bool)

(assert (=> d!2145917 (= c!1270193 e!4117050)))

(declare-fun res!2787471 () Bool)

(assert (=> d!2145917 (=> (not res!2787471) (not e!4117050))))

(assert (=> d!2145917 (= res!2787471 (matchR!8822 (reg!16968 r!7292) Nil!66092))))

(assert (=> d!2145917 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2145917 (= (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 Nil!66092 s!2326 s!2326) lt!2452182)))

(declare-fun b!6824466 () Bool)

(assert (=> b!6824466 (= e!4117052 None!16525)))

(declare-fun b!6824467 () Bool)

(assert (=> b!6824467 (= e!4117055 (Some!16525 (tuple2!67229 Nil!66092 s!2326)))))

(assert (= (and d!2145917 res!2787471) b!6824463))

(assert (= (and d!2145917 c!1270193) b!6824467))

(assert (= (and d!2145917 (not c!1270193)) b!6824460))

(assert (= (and b!6824460 c!1270190) b!6824466))

(assert (= (and b!6824460 (not c!1270190)) b!6824464))

(assert (= (and d!2145917 res!2787476) b!6824461))

(assert (= (and b!6824461 res!2787473) b!6824459))

(assert (= (and b!6824459 res!2787472) b!6824462))

(assert (= (and d!2145917 (not res!2787475)) b!6824465))

(declare-fun m!7570138 () Bool)

(assert (=> b!6824459 m!7570138))

(declare-fun m!7570140 () Bool)

(assert (=> b!6824459 m!7570140))

(declare-fun m!7570142 () Bool)

(assert (=> b!6824465 m!7570142))

(assert (=> b!6824462 m!7570138))

(declare-fun m!7570144 () Bool)

(assert (=> b!6824462 m!7570144))

(assert (=> d!2145917 m!7570142))

(declare-fun m!7570146 () Bool)

(assert (=> d!2145917 m!7570146))

(assert (=> d!2145917 m!7569992))

(assert (=> b!6824463 m!7569726))

(assert (=> b!6824461 m!7570138))

(declare-fun m!7570148 () Bool)

(assert (=> b!6824461 m!7570148))

(assert (=> b!6824464 m!7569922))

(assert (=> b!6824464 m!7569922))

(assert (=> b!6824464 m!7569924))

(assert (=> b!6824464 m!7569926))

(assert (=> b!6824464 m!7569922))

(declare-fun m!7570152 () Bool)

(assert (=> b!6824464 m!7570152))

(assert (=> b!6824003 d!2145917))

(declare-fun bs!1823403 () Bool)

(declare-fun d!2145941 () Bool)

(assert (= bs!1823403 (and d!2145941 d!2145873)))

(declare-fun lambda!385537 () Int)

(assert (=> bs!1823403 (= lambda!385537 lambda!385514)))

(declare-fun bs!1823404 () Bool)

(assert (= bs!1823404 (and d!2145941 d!2145893)))

(assert (=> bs!1823404 (= (= r!7292 (Star!16639 (reg!16968 r!7292))) (= lambda!385537 lambda!385522))))

(declare-fun bs!1823405 () Bool)

(assert (= bs!1823405 (and d!2145941 b!6824003)))

(assert (=> bs!1823405 (not (= lambda!385537 lambda!385480))))

(assert (=> bs!1823403 (not (= lambda!385537 lambda!385515))))

(assert (=> bs!1823404 (not (= lambda!385537 lambda!385525))))

(assert (=> bs!1823405 (not (= lambda!385537 lambda!385479))))

(assert (=> bs!1823405 (= lambda!385537 lambda!385478)))

(assert (=> d!2145941 true))

(assert (=> d!2145941 true))

(assert (=> d!2145941 true))

(assert (=> d!2145941 (= (isDefined!13229 (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 Nil!66092 s!2326 s!2326)) (Exists!3707 lambda!385537))))

(declare-fun lt!2452193 () Unit!159969)

(declare-fun choose!50888 (Regex!16639 Regex!16639 List!66216) Unit!159969)

(assert (=> d!2145941 (= lt!2452193 (choose!50888 (reg!16968 r!7292) r!7292 s!2326))))

(assert (=> d!2145941 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2145941 (= (lemmaFindConcatSeparationEquivalentToExists!2704 (reg!16968 r!7292) r!7292 s!2326) lt!2452193)))

(declare-fun bs!1823406 () Bool)

(assert (= bs!1823406 d!2145941))

(declare-fun m!7570180 () Bool)

(assert (=> bs!1823406 m!7570180))

(assert (=> bs!1823406 m!7569632))

(assert (=> bs!1823406 m!7569632))

(assert (=> bs!1823406 m!7569636))

(assert (=> bs!1823406 m!7569992))

(declare-fun m!7570182 () Bool)

(assert (=> bs!1823406 m!7570182))

(assert (=> b!6824003 d!2145941))

(declare-fun d!2145957 () Bool)

(declare-fun choose!50889 ((InoxSet Context!12046) Int) (InoxSet Context!12046))

(assert (=> d!2145957 (= (flatMap!2120 lt!2452059 lambda!385481) (choose!50889 lt!2452059 lambda!385481))))

(declare-fun bs!1823407 () Bool)

(assert (= bs!1823407 d!2145957))

(declare-fun m!7570184 () Bool)

(assert (=> bs!1823407 m!7570184))

(assert (=> b!6823989 d!2145957))

(declare-fun d!2145959 () Bool)

(assert (=> d!2145959 (= (flatMap!2120 lt!2452091 lambda!385481) (choose!50889 lt!2452091 lambda!385481))))

(declare-fun bs!1823408 () Bool)

(assert (= bs!1823408 d!2145959))

(declare-fun m!7570186 () Bool)

(assert (=> bs!1823408 m!7570186))

(assert (=> b!6823989 d!2145959))

(declare-fun call!621111 () (InoxSet Context!12046))

(declare-fun e!4117074 () (InoxSet Context!12046))

(declare-fun b!6824495 () Bool)

(assert (=> b!6824495 (= e!4117074 ((_ map or) call!621111 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 lt!2452076))) (h!72540 s!2326))))))

(declare-fun b!6824496 () Bool)

(declare-fun e!4117073 () (InoxSet Context!12046))

(assert (=> b!6824496 (= e!4117073 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6824497 () Bool)

(assert (=> b!6824497 (= e!4117074 e!4117073)))

(declare-fun c!1270201 () Bool)

(assert (=> b!6824497 (= c!1270201 ((_ is Cons!66093) (exprs!6523 lt!2452076)))))

(declare-fun d!2145961 () Bool)

(declare-fun c!1270200 () Bool)

(declare-fun e!4117072 () Bool)

(assert (=> d!2145961 (= c!1270200 e!4117072)))

(declare-fun res!2787492 () Bool)

(assert (=> d!2145961 (=> (not res!2787492) (not e!4117072))))

(assert (=> d!2145961 (= res!2787492 ((_ is Cons!66093) (exprs!6523 lt!2452076)))))

(assert (=> d!2145961 (= (derivationStepZipperUp!1793 lt!2452076 (h!72540 s!2326)) e!4117074)))

(declare-fun b!6824498 () Bool)

(declare-fun nullable!6614 (Regex!16639) Bool)

(assert (=> b!6824498 (= e!4117072 (nullable!6614 (h!72541 (exprs!6523 lt!2452076))))))

(declare-fun b!6824499 () Bool)

(assert (=> b!6824499 (= e!4117073 call!621111)))

(declare-fun bm!621106 () Bool)

(assert (=> bm!621106 (= call!621111 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 lt!2452076)) (Context!12047 (t!379956 (exprs!6523 lt!2452076))) (h!72540 s!2326)))))

(assert (= (and d!2145961 res!2787492) b!6824498))

(assert (= (and d!2145961 c!1270200) b!6824495))

(assert (= (and d!2145961 (not c!1270200)) b!6824497))

(assert (= (and b!6824497 c!1270201) b!6824499))

(assert (= (and b!6824497 (not c!1270201)) b!6824496))

(assert (= (or b!6824495 b!6824499) bm!621106))

(declare-fun m!7570188 () Bool)

(assert (=> b!6824495 m!7570188))

(declare-fun m!7570190 () Bool)

(assert (=> b!6824498 m!7570190))

(declare-fun m!7570192 () Bool)

(assert (=> bm!621106 m!7570192))

(assert (=> b!6823989 d!2145961))

(declare-fun bs!1823415 () Bool)

(declare-fun d!2145963 () Bool)

(assert (= bs!1823415 (and d!2145963 b!6824000)))

(declare-fun lambda!385544 () Int)

(assert (=> bs!1823415 (= lambda!385544 lambda!385481)))

(declare-fun bs!1823416 () Bool)

(assert (= bs!1823416 (and d!2145963 d!2145827)))

(assert (=> bs!1823416 (= lambda!385544 lambda!385489)))

(assert (=> d!2145963 true))

(assert (=> d!2145963 (= (derivationStepZipper!2583 lt!2452059 (h!72540 s!2326)) (flatMap!2120 lt!2452059 lambda!385544))))

(declare-fun bs!1823417 () Bool)

(assert (= bs!1823417 d!2145963))

(declare-fun m!7570194 () Bool)

(assert (=> bs!1823417 m!7570194))

(assert (=> b!6823989 d!2145963))

(declare-fun d!2145965 () Bool)

(declare-fun dynLambda!26409 (Int Context!12046) (InoxSet Context!12046))

(assert (=> d!2145965 (= (flatMap!2120 lt!2452059 lambda!385481) (dynLambda!26409 lambda!385481 lt!2452076))))

(declare-fun lt!2452199 () Unit!159969)

(declare-fun choose!50890 ((InoxSet Context!12046) Context!12046 Int) Unit!159969)

(assert (=> d!2145965 (= lt!2452199 (choose!50890 lt!2452059 lt!2452076 lambda!385481))))

(assert (=> d!2145965 (= lt!2452059 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true))))

(assert (=> d!2145965 (= (lemmaFlatMapOnSingletonSet!1646 lt!2452059 lt!2452076 lambda!385481) lt!2452199)))

(declare-fun b_lambda!257405 () Bool)

(assert (=> (not b_lambda!257405) (not d!2145965)))

(declare-fun bs!1823418 () Bool)

(assert (= bs!1823418 d!2145965))

(assert (=> bs!1823418 m!7569666))

(declare-fun m!7570202 () Bool)

(assert (=> bs!1823418 m!7570202))

(declare-fun m!7570204 () Bool)

(assert (=> bs!1823418 m!7570204))

(assert (=> bs!1823418 m!7569678))

(assert (=> b!6823989 d!2145965))

(declare-fun d!2145969 () Bool)

(assert (=> d!2145969 (= (flatMap!2120 lt!2452091 lambda!385481) (dynLambda!26409 lambda!385481 lt!2452067))))

(declare-fun lt!2452200 () Unit!159969)

(assert (=> d!2145969 (= lt!2452200 (choose!50890 lt!2452091 lt!2452067 lambda!385481))))

(assert (=> d!2145969 (= lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452067 true))))

(assert (=> d!2145969 (= (lemmaFlatMapOnSingletonSet!1646 lt!2452091 lt!2452067 lambda!385481) lt!2452200)))

(declare-fun b_lambda!257407 () Bool)

(assert (=> (not b_lambda!257407) (not d!2145969)))

(declare-fun bs!1823419 () Bool)

(assert (= bs!1823419 d!2145969))

(assert (=> bs!1823419 m!7569672))

(declare-fun m!7570206 () Bool)

(assert (=> bs!1823419 m!7570206))

(declare-fun m!7570208 () Bool)

(assert (=> bs!1823419 m!7570208))

(assert (=> bs!1823419 m!7569668))

(assert (=> b!6823989 d!2145969))

(declare-fun e!4117077 () (InoxSet Context!12046))

(declare-fun b!6824500 () Bool)

(declare-fun call!621112 () (InoxSet Context!12046))

(assert (=> b!6824500 (= e!4117077 ((_ map or) call!621112 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 lt!2452067))) (h!72540 s!2326))))))

(declare-fun b!6824501 () Bool)

(declare-fun e!4117076 () (InoxSet Context!12046))

(assert (=> b!6824501 (= e!4117076 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6824502 () Bool)

(assert (=> b!6824502 (= e!4117077 e!4117076)))

(declare-fun c!1270203 () Bool)

(assert (=> b!6824502 (= c!1270203 ((_ is Cons!66093) (exprs!6523 lt!2452067)))))

(declare-fun d!2145971 () Bool)

(declare-fun c!1270202 () Bool)

(declare-fun e!4117075 () Bool)

(assert (=> d!2145971 (= c!1270202 e!4117075)))

(declare-fun res!2787493 () Bool)

(assert (=> d!2145971 (=> (not res!2787493) (not e!4117075))))

(assert (=> d!2145971 (= res!2787493 ((_ is Cons!66093) (exprs!6523 lt!2452067)))))

(assert (=> d!2145971 (= (derivationStepZipperUp!1793 lt!2452067 (h!72540 s!2326)) e!4117077)))

(declare-fun b!6824503 () Bool)

(assert (=> b!6824503 (= e!4117075 (nullable!6614 (h!72541 (exprs!6523 lt!2452067))))))

(declare-fun b!6824504 () Bool)

(assert (=> b!6824504 (= e!4117076 call!621112)))

(declare-fun bm!621107 () Bool)

(assert (=> bm!621107 (= call!621112 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 lt!2452067)) (Context!12047 (t!379956 (exprs!6523 lt!2452067))) (h!72540 s!2326)))))

(assert (= (and d!2145971 res!2787493) b!6824503))

(assert (= (and d!2145971 c!1270202) b!6824500))

(assert (= (and d!2145971 (not c!1270202)) b!6824502))

(assert (= (and b!6824502 c!1270203) b!6824504))

(assert (= (and b!6824502 (not c!1270203)) b!6824501))

(assert (= (or b!6824500 b!6824504) bm!621107))

(declare-fun m!7570210 () Bool)

(assert (=> b!6824500 m!7570210))

(declare-fun m!7570212 () Bool)

(assert (=> b!6824503 m!7570212))

(declare-fun m!7570214 () Bool)

(assert (=> bm!621107 m!7570214))

(assert (=> b!6823989 d!2145971))

(declare-fun d!2145973 () Bool)

(assert (=> d!2145973 (= (isEmpty!38482 (t!379957 zl!343)) ((_ is Nil!66094) (t!379957 zl!343)))))

(assert (=> b!6824006 d!2145973))

(declare-fun d!2145975 () Bool)

(declare-fun lt!2452201 () Regex!16639)

(assert (=> d!2145975 (validRegex!8375 lt!2452201)))

(assert (=> d!2145975 (= lt!2452201 (generalisedUnion!2483 (unfocusZipperList!2060 lt!2452090)))))

(assert (=> d!2145975 (= (unfocusZipper!2381 lt!2452090) lt!2452201)))

(declare-fun bs!1823420 () Bool)

(assert (= bs!1823420 d!2145975))

(declare-fun m!7570216 () Bool)

(assert (=> bs!1823420 m!7570216))

(declare-fun m!7570218 () Bool)

(assert (=> bs!1823420 m!7570218))

(assert (=> bs!1823420 m!7570218))

(declare-fun m!7570220 () Bool)

(assert (=> bs!1823420 m!7570220))

(assert (=> b!6824007 d!2145975))

(declare-fun d!2145977 () Bool)

(declare-fun e!4117080 () Bool)

(assert (=> d!2145977 e!4117080))

(declare-fun res!2787496 () Bool)

(assert (=> d!2145977 (=> (not res!2787496) (not e!4117080))))

(declare-fun lt!2452206 () List!66218)

(declare-fun noDuplicate!2419 (List!66218) Bool)

(assert (=> d!2145977 (= res!2787496 (noDuplicate!2419 lt!2452206))))

(declare-fun choose!50892 ((InoxSet Context!12046)) List!66218)

(assert (=> d!2145977 (= lt!2452206 (choose!50892 lt!2452059))))

(assert (=> d!2145977 (= (toList!10423 lt!2452059) lt!2452206)))

(declare-fun b!6824507 () Bool)

(declare-fun content!12941 (List!66218) (InoxSet Context!12046))

(assert (=> b!6824507 (= e!4117080 (= (content!12941 lt!2452206) lt!2452059))))

(assert (= (and d!2145977 res!2787496) b!6824507))

(declare-fun m!7570222 () Bool)

(assert (=> d!2145977 m!7570222))

(declare-fun m!7570224 () Bool)

(assert (=> d!2145977 m!7570224))

(declare-fun m!7570226 () Bool)

(assert (=> b!6824507 m!7570226))

(assert (=> b!6823987 d!2145977))

(declare-fun d!2145979 () Bool)

(declare-fun c!1270216 () Bool)

(assert (=> d!2145979 (= c!1270216 (and ((_ is ElementMatch!16639) r!7292) (= (c!1270055 r!7292) (h!72540 s!2326))))))

(declare-fun e!4117100 () (InoxSet Context!12046))

(assert (=> d!2145979 (= (derivationStepZipperDown!1867 r!7292 (Context!12047 Nil!66093) (h!72540 s!2326)) e!4117100)))

(declare-fun c!1270215 () Bool)

(declare-fun call!621130 () List!66217)

(declare-fun bm!621120 () Bool)

(declare-fun call!621128 () (InoxSet Context!12046))

(assert (=> bm!621120 (= call!621128 (derivationStepZipperDown!1867 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292)) (ite c!1270215 (Context!12047 Nil!66093) (Context!12047 call!621130)) (h!72540 s!2326)))))

(declare-fun bm!621121 () Bool)

(declare-fun call!621129 () (InoxSet Context!12046))

(declare-fun call!621127 () (InoxSet Context!12046))

(assert (=> bm!621121 (= call!621129 call!621127)))

(declare-fun b!6824540 () Bool)

(declare-fun c!1270218 () Bool)

(declare-fun e!4117101 () Bool)

(assert (=> b!6824540 (= c!1270218 e!4117101)))

(declare-fun res!2787509 () Bool)

(assert (=> b!6824540 (=> (not res!2787509) (not e!4117101))))

(assert (=> b!6824540 (= res!2787509 ((_ is Concat!25484) r!7292))))

(declare-fun e!4117098 () (InoxSet Context!12046))

(declare-fun e!4117099 () (InoxSet Context!12046))

(assert (=> b!6824540 (= e!4117098 e!4117099)))

(declare-fun bm!621122 () Bool)

(declare-fun c!1270217 () Bool)

(declare-fun $colon$colon!2444 (List!66217 Regex!16639) List!66217)

(assert (=> bm!621122 (= call!621130 ($colon$colon!2444 (exprs!6523 (Context!12047 Nil!66093)) (ite (or c!1270218 c!1270217) (regTwo!33790 r!7292) r!7292)))))

(declare-fun b!6824541 () Bool)

(assert (=> b!6824541 (= e!4117099 ((_ map or) call!621128 call!621129))))

(declare-fun bm!621123 () Bool)

(declare-fun call!621125 () List!66217)

(assert (=> bm!621123 (= call!621127 (derivationStepZipperDown!1867 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292)))) (ite (or c!1270215 c!1270218) (Context!12047 Nil!66093) (Context!12047 call!621125)) (h!72540 s!2326)))))

(declare-fun b!6824542 () Bool)

(assert (=> b!6824542 (= e!4117100 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 Nil!66093) true))))

(declare-fun b!6824543 () Bool)

(declare-fun e!4117097 () (InoxSet Context!12046))

(declare-fun call!621126 () (InoxSet Context!12046))

(assert (=> b!6824543 (= e!4117097 call!621126)))

(declare-fun b!6824544 () Bool)

(assert (=> b!6824544 (= e!4117100 e!4117098)))

(assert (=> b!6824544 (= c!1270215 ((_ is Union!16639) r!7292))))

(declare-fun bm!621124 () Bool)

(assert (=> bm!621124 (= call!621125 call!621130)))

(declare-fun b!6824545 () Bool)

(declare-fun e!4117102 () (InoxSet Context!12046))

(assert (=> b!6824545 (= e!4117099 e!4117102)))

(assert (=> b!6824545 (= c!1270217 ((_ is Concat!25484) r!7292))))

(declare-fun b!6824546 () Bool)

(assert (=> b!6824546 (= e!4117097 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6824547 () Bool)

(assert (=> b!6824547 (= e!4117098 ((_ map or) call!621127 call!621128))))

(declare-fun b!6824548 () Bool)

(declare-fun c!1270214 () Bool)

(assert (=> b!6824548 (= c!1270214 ((_ is Star!16639) r!7292))))

(assert (=> b!6824548 (= e!4117102 e!4117097)))

(declare-fun b!6824549 () Bool)

(assert (=> b!6824549 (= e!4117101 (nullable!6614 (regOne!33790 r!7292)))))

(declare-fun bm!621125 () Bool)

(assert (=> bm!621125 (= call!621126 call!621129)))

(declare-fun b!6824550 () Bool)

(assert (=> b!6824550 (= e!4117102 call!621126)))

(assert (= (and d!2145979 c!1270216) b!6824542))

(assert (= (and d!2145979 (not c!1270216)) b!6824544))

(assert (= (and b!6824544 c!1270215) b!6824547))

(assert (= (and b!6824544 (not c!1270215)) b!6824540))

(assert (= (and b!6824540 res!2787509) b!6824549))

(assert (= (and b!6824540 c!1270218) b!6824541))

(assert (= (and b!6824540 (not c!1270218)) b!6824545))

(assert (= (and b!6824545 c!1270217) b!6824550))

(assert (= (and b!6824545 (not c!1270217)) b!6824548))

(assert (= (and b!6824548 c!1270214) b!6824543))

(assert (= (and b!6824548 (not c!1270214)) b!6824546))

(assert (= (or b!6824550 b!6824543) bm!621124))

(assert (= (or b!6824550 b!6824543) bm!621125))

(assert (= (or b!6824541 bm!621124) bm!621122))

(assert (= (or b!6824541 bm!621125) bm!621121))

(assert (= (or b!6824547 b!6824541) bm!621120))

(assert (= (or b!6824547 bm!621121) bm!621123))

(declare-fun m!7570240 () Bool)

(assert (=> bm!621122 m!7570240))

(declare-fun m!7570242 () Bool)

(assert (=> bm!621123 m!7570242))

(declare-fun m!7570244 () Bool)

(assert (=> b!6824549 m!7570244))

(declare-fun m!7570246 () Bool)

(assert (=> b!6824542 m!7570246))

(declare-fun m!7570248 () Bool)

(assert (=> bm!621120 m!7570248))

(assert (=> b!6823994 d!2145979))

(declare-fun b!6824551 () Bool)

(declare-fun call!621131 () (InoxSet Context!12046))

(declare-fun e!4117105 () (InoxSet Context!12046))

(assert (=> b!6824551 (= e!4117105 ((_ map or) call!621131 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (h!72540 s!2326))))))

(declare-fun b!6824552 () Bool)

(declare-fun e!4117104 () (InoxSet Context!12046))

(assert (=> b!6824552 (= e!4117104 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6824553 () Bool)

(assert (=> b!6824553 (= e!4117105 e!4117104)))

(declare-fun c!1270220 () Bool)

(assert (=> b!6824553 (= c!1270220 ((_ is Cons!66093) (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))))

(declare-fun d!2145991 () Bool)

(declare-fun c!1270219 () Bool)

(declare-fun e!4117103 () Bool)

(assert (=> d!2145991 (= c!1270219 e!4117103)))

(declare-fun res!2787510 () Bool)

(assert (=> d!2145991 (=> (not res!2787510) (not e!4117103))))

(assert (=> d!2145991 (= res!2787510 ((_ is Cons!66093) (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))))

(assert (=> d!2145991 (= (derivationStepZipperUp!1793 (Context!12047 (Cons!66093 r!7292 Nil!66093)) (h!72540 s!2326)) e!4117105)))

(declare-fun b!6824554 () Bool)

(assert (=> b!6824554 (= e!4117103 (nullable!6614 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))))

(declare-fun b!6824555 () Bool)

(assert (=> b!6824555 (= e!4117104 call!621131)))

(declare-fun bm!621126 () Bool)

(assert (=> bm!621126 (= call!621131 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (h!72540 s!2326)))))

(assert (= (and d!2145991 res!2787510) b!6824554))

(assert (= (and d!2145991 c!1270219) b!6824551))

(assert (= (and d!2145991 (not c!1270219)) b!6824553))

(assert (= (and b!6824553 c!1270220) b!6824555))

(assert (= (and b!6824553 (not c!1270220)) b!6824552))

(assert (= (or b!6824551 b!6824555) bm!621126))

(declare-fun m!7570250 () Bool)

(assert (=> b!6824551 m!7570250))

(declare-fun m!7570252 () Bool)

(assert (=> b!6824554 m!7570252))

(declare-fun m!7570254 () Bool)

(assert (=> bm!621126 m!7570254))

(assert (=> b!6823994 d!2145991))

(declare-fun bs!1823431 () Bool)

(declare-fun d!2145993 () Bool)

(assert (= bs!1823431 (and d!2145993 b!6824000)))

(declare-fun lambda!385551 () Int)

(assert (=> bs!1823431 (= lambda!385551 lambda!385481)))

(declare-fun bs!1823432 () Bool)

(assert (= bs!1823432 (and d!2145993 d!2145827)))

(assert (=> bs!1823432 (= lambda!385551 lambda!385489)))

(declare-fun bs!1823433 () Bool)

(assert (= bs!1823433 (and d!2145993 d!2145963)))

(assert (=> bs!1823433 (= lambda!385551 lambda!385544)))

(assert (=> d!2145993 true))

(assert (=> d!2145993 (= (derivationStepZipper!2583 z!1189 (h!72540 s!2326)) (flatMap!2120 z!1189 lambda!385551))))

(declare-fun bs!1823434 () Bool)

(assert (= bs!1823434 d!2145993))

(declare-fun m!7570256 () Bool)

(assert (=> bs!1823434 m!7570256))

(assert (=> b!6823994 d!2145993))

(declare-fun bs!1823435 () Bool)

(declare-fun d!2145995 () Bool)

(assert (= bs!1823435 (and d!2145995 b!6823997)))

(declare-fun lambda!385554 () Int)

(assert (=> bs!1823435 (= lambda!385554 lambda!385483)))

(declare-fun bs!1823436 () Bool)

(assert (= bs!1823436 (and d!2145995 d!2145867)))

(assert (=> bs!1823436 (= lambda!385554 lambda!385508)))

(declare-fun b!6824594 () Bool)

(declare-fun e!4117130 () Regex!16639)

(assert (=> b!6824594 (= e!4117130 (h!72541 (exprs!6523 (h!72542 zl!343))))))

(declare-fun b!6824595 () Bool)

(declare-fun e!4117132 () Regex!16639)

(assert (=> b!6824595 (= e!4117130 e!4117132)))

(declare-fun c!1270235 () Bool)

(assert (=> b!6824595 (= c!1270235 ((_ is Cons!66093) (exprs!6523 (h!72542 zl!343))))))

(declare-fun b!6824596 () Bool)

(assert (=> b!6824596 (= e!4117132 (Concat!25484 (h!72541 (exprs!6523 (h!72542 zl!343))) (generalisedConcat!2236 (t!379956 (exprs!6523 (h!72542 zl!343))))))))

(declare-fun b!6824598 () Bool)

(declare-fun e!4117131 () Bool)

(declare-fun e!4117129 () Bool)

(assert (=> b!6824598 (= e!4117131 e!4117129)))

(declare-fun c!1270234 () Bool)

(declare-fun isEmpty!38486 (List!66217) Bool)

(declare-fun tail!12767 (List!66217) List!66217)

(assert (=> b!6824598 (= c!1270234 (isEmpty!38486 (tail!12767 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6824599 () Bool)

(declare-fun e!4117133 () Bool)

(assert (=> b!6824599 (= e!4117133 (isEmpty!38486 (t!379956 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6824600 () Bool)

(declare-fun lt!2452216 () Regex!16639)

(declare-fun isEmptyExpr!1993 (Regex!16639) Bool)

(assert (=> b!6824600 (= e!4117131 (isEmptyExpr!1993 lt!2452216))))

(declare-fun b!6824601 () Bool)

(declare-fun e!4117128 () Bool)

(assert (=> b!6824601 (= e!4117128 e!4117131)))

(declare-fun c!1270233 () Bool)

(assert (=> b!6824601 (= c!1270233 (isEmpty!38486 (exprs!6523 (h!72542 zl!343))))))

(declare-fun b!6824602 () Bool)

(declare-fun head!13682 (List!66217) Regex!16639)

(assert (=> b!6824602 (= e!4117129 (= lt!2452216 (head!13682 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6824603 () Bool)

(declare-fun isConcat!1516 (Regex!16639) Bool)

(assert (=> b!6824603 (= e!4117129 (isConcat!1516 lt!2452216))))

(assert (=> d!2145995 e!4117128))

(declare-fun res!2787526 () Bool)

(assert (=> d!2145995 (=> (not res!2787526) (not e!4117128))))

(assert (=> d!2145995 (= res!2787526 (validRegex!8375 lt!2452216))))

(assert (=> d!2145995 (= lt!2452216 e!4117130)))

(declare-fun c!1270236 () Bool)

(assert (=> d!2145995 (= c!1270236 e!4117133)))

(declare-fun res!2787525 () Bool)

(assert (=> d!2145995 (=> (not res!2787525) (not e!4117133))))

(assert (=> d!2145995 (= res!2787525 ((_ is Cons!66093) (exprs!6523 (h!72542 zl!343))))))

(assert (=> d!2145995 (forall!15827 (exprs!6523 (h!72542 zl!343)) lambda!385554)))

(assert (=> d!2145995 (= (generalisedConcat!2236 (exprs!6523 (h!72542 zl!343))) lt!2452216)))

(declare-fun b!6824597 () Bool)

(assert (=> b!6824597 (= e!4117132 EmptyExpr!16639)))

(assert (= (and d!2145995 res!2787525) b!6824599))

(assert (= (and d!2145995 c!1270236) b!6824594))

(assert (= (and d!2145995 (not c!1270236)) b!6824595))

(assert (= (and b!6824595 c!1270235) b!6824596))

(assert (= (and b!6824595 (not c!1270235)) b!6824597))

(assert (= (and d!2145995 res!2787526) b!6824601))

(assert (= (and b!6824601 c!1270233) b!6824600))

(assert (= (and b!6824601 (not c!1270233)) b!6824598))

(assert (= (and b!6824598 c!1270234) b!6824602))

(assert (= (and b!6824598 (not c!1270234)) b!6824603))

(declare-fun m!7570258 () Bool)

(assert (=> b!6824603 m!7570258))

(declare-fun m!7570260 () Bool)

(assert (=> b!6824601 m!7570260))

(declare-fun m!7570262 () Bool)

(assert (=> b!6824599 m!7570262))

(declare-fun m!7570264 () Bool)

(assert (=> d!2145995 m!7570264))

(declare-fun m!7570266 () Bool)

(assert (=> d!2145995 m!7570266))

(declare-fun m!7570268 () Bool)

(assert (=> b!6824598 m!7570268))

(assert (=> b!6824598 m!7570268))

(declare-fun m!7570270 () Bool)

(assert (=> b!6824598 m!7570270))

(declare-fun m!7570272 () Bool)

(assert (=> b!6824596 m!7570272))

(declare-fun m!7570274 () Bool)

(assert (=> b!6824602 m!7570274))

(declare-fun m!7570276 () Bool)

(assert (=> b!6824600 m!7570276))

(assert (=> b!6823974 d!2145995))

(declare-fun d!2145997 () Bool)

(declare-fun c!1270237 () Bool)

(assert (=> d!2145997 (= c!1270237 (isEmpty!38481 (_2!36917 lt!2452079)))))

(declare-fun e!4117134 () Bool)

(assert (=> d!2145997 (= (matchZipper!2625 lt!2452059 (_2!36917 lt!2452079)) e!4117134)))

(declare-fun b!6824604 () Bool)

(assert (=> b!6824604 (= e!4117134 (nullableZipper!2342 lt!2452059))))

(declare-fun b!6824605 () Bool)

(assert (=> b!6824605 (= e!4117134 (matchZipper!2625 (derivationStepZipper!2583 lt!2452059 (head!13681 (_2!36917 lt!2452079))) (tail!12766 (_2!36917 lt!2452079))))))

(assert (= (and d!2145997 c!1270237) b!6824604))

(assert (= (and d!2145997 (not c!1270237)) b!6824605))

(declare-fun m!7570278 () Bool)

(assert (=> d!2145997 m!7570278))

(declare-fun m!7570280 () Bool)

(assert (=> b!6824604 m!7570280))

(declare-fun m!7570282 () Bool)

(assert (=> b!6824605 m!7570282))

(assert (=> b!6824605 m!7570282))

(declare-fun m!7570284 () Bool)

(assert (=> b!6824605 m!7570284))

(declare-fun m!7570286 () Bool)

(assert (=> b!6824605 m!7570286))

(assert (=> b!6824605 m!7570284))

(assert (=> b!6824605 m!7570286))

(declare-fun m!7570288 () Bool)

(assert (=> b!6824605 m!7570288))

(assert (=> b!6823996 d!2145997))

(declare-fun d!2145999 () Bool)

(declare-fun c!1270240 () Bool)

(assert (=> d!2145999 (= c!1270240 (isEmpty!38481 (_1!36917 lt!2452079)))))

(declare-fun e!4117140 () Bool)

(assert (=> d!2145999 (= (matchZipper!2625 lt!2452091 (_1!36917 lt!2452079)) e!4117140)))

(declare-fun b!6824615 () Bool)

(assert (=> b!6824615 (= e!4117140 (nullableZipper!2342 lt!2452091))))

(declare-fun b!6824616 () Bool)

(assert (=> b!6824616 (= e!4117140 (matchZipper!2625 (derivationStepZipper!2583 lt!2452091 (head!13681 (_1!36917 lt!2452079))) (tail!12766 (_1!36917 lt!2452079))))))

(assert (= (and d!2145999 c!1270240) b!6824615))

(assert (= (and d!2145999 (not c!1270240)) b!6824616))

(declare-fun m!7570290 () Bool)

(assert (=> d!2145999 m!7570290))

(declare-fun m!7570292 () Bool)

(assert (=> b!6824615 m!7570292))

(declare-fun m!7570294 () Bool)

(assert (=> b!6824616 m!7570294))

(assert (=> b!6824616 m!7570294))

(declare-fun m!7570296 () Bool)

(assert (=> b!6824616 m!7570296))

(declare-fun m!7570298 () Bool)

(assert (=> b!6824616 m!7570298))

(assert (=> b!6824616 m!7570296))

(assert (=> b!6824616 m!7570298))

(declare-fun m!7570300 () Bool)

(assert (=> b!6824616 m!7570300))

(assert (=> b!6823991 d!2145999))

(declare-fun bs!1823455 () Bool)

(declare-fun b!6824668 () Bool)

(assert (= bs!1823455 (and b!6824668 d!2145873)))

(declare-fun lambda!385563 () Int)

(assert (=> bs!1823455 (not (= lambda!385563 lambda!385514))))

(declare-fun bs!1823456 () Bool)

(assert (= bs!1823456 (and b!6824668 d!2145893)))

(assert (=> bs!1823456 (not (= lambda!385563 lambda!385522))))

(declare-fun bs!1823457 () Bool)

(assert (= bs!1823457 (and b!6824668 d!2145941)))

(assert (=> bs!1823457 (not (= lambda!385563 lambda!385537))))

(declare-fun bs!1823458 () Bool)

(assert (= bs!1823458 (and b!6824668 b!6824003)))

(assert (=> bs!1823458 (not (= lambda!385563 lambda!385480))))

(assert (=> bs!1823455 (not (= lambda!385563 lambda!385515))))

(assert (=> bs!1823456 (= (= r!7292 (Star!16639 (reg!16968 r!7292))) (= lambda!385563 lambda!385525))))

(assert (=> bs!1823458 (= lambda!385563 lambda!385479)))

(assert (=> bs!1823458 (not (= lambda!385563 lambda!385478))))

(assert (=> b!6824668 true))

(assert (=> b!6824668 true))

(declare-fun bs!1823459 () Bool)

(declare-fun b!6824659 () Bool)

(assert (= bs!1823459 (and b!6824659 d!2145873)))

(declare-fun lambda!385564 () Int)

(assert (=> bs!1823459 (not (= lambda!385564 lambda!385514))))

(declare-fun bs!1823460 () Bool)

(assert (= bs!1823460 (and b!6824659 d!2145893)))

(assert (=> bs!1823460 (not (= lambda!385564 lambda!385522))))

(declare-fun bs!1823461 () Bool)

(assert (= bs!1823461 (and b!6824659 d!2145941)))

(assert (=> bs!1823461 (not (= lambda!385564 lambda!385537))))

(declare-fun bs!1823462 () Bool)

(assert (= bs!1823462 (and b!6824659 b!6824003)))

(assert (=> bs!1823462 (= (and (= (regOne!33790 r!7292) (reg!16968 r!7292)) (= (regTwo!33790 r!7292) r!7292)) (= lambda!385564 lambda!385480))))

(assert (=> bs!1823459 (= (and (= (regOne!33790 r!7292) (reg!16968 r!7292)) (= (regTwo!33790 r!7292) r!7292)) (= lambda!385564 lambda!385515))))

(assert (=> bs!1823460 (not (= lambda!385564 lambda!385525))))

(declare-fun bs!1823463 () Bool)

(assert (= bs!1823463 (and b!6824659 b!6824668)))

(assert (=> bs!1823463 (not (= lambda!385564 lambda!385563))))

(assert (=> bs!1823462 (not (= lambda!385564 lambda!385479))))

(assert (=> bs!1823462 (not (= lambda!385564 lambda!385478))))

(assert (=> b!6824659 true))

(assert (=> b!6824659 true))

(declare-fun e!4117171 () Bool)

(declare-fun call!621136 () Bool)

(assert (=> b!6824659 (= e!4117171 call!621136)))

(declare-fun b!6824660 () Bool)

(declare-fun res!2787558 () Bool)

(declare-fun e!4117166 () Bool)

(assert (=> b!6824660 (=> res!2787558 e!4117166)))

(declare-fun call!621137 () Bool)

(assert (=> b!6824660 (= res!2787558 call!621137)))

(assert (=> b!6824660 (= e!4117171 e!4117166)))

(declare-fun b!6824661 () Bool)

(declare-fun e!4117165 () Bool)

(declare-fun e!4117172 () Bool)

(assert (=> b!6824661 (= e!4117165 e!4117172)))

(declare-fun res!2787555 () Bool)

(assert (=> b!6824661 (= res!2787555 (not ((_ is EmptyLang!16639) r!7292)))))

(assert (=> b!6824661 (=> (not res!2787555) (not e!4117172))))

(declare-fun b!6824662 () Bool)

(declare-fun e!4117168 () Bool)

(assert (=> b!6824662 (= e!4117168 (matchRSpec!3740 (regTwo!33791 r!7292) s!2326))))

(declare-fun b!6824663 () Bool)

(declare-fun e!4117169 () Bool)

(assert (=> b!6824663 (= e!4117169 (= s!2326 (Cons!66092 (c!1270055 r!7292) Nil!66092)))))

(declare-fun b!6824664 () Bool)

(declare-fun c!1270251 () Bool)

(assert (=> b!6824664 (= c!1270251 ((_ is Union!16639) r!7292))))

(declare-fun e!4117170 () Bool)

(assert (=> b!6824664 (= e!4117169 e!4117170)))

(declare-fun b!6824665 () Bool)

(declare-fun c!1270253 () Bool)

(assert (=> b!6824665 (= c!1270253 ((_ is ElementMatch!16639) r!7292))))

(assert (=> b!6824665 (= e!4117172 e!4117169)))

(declare-fun d!2146001 () Bool)

(declare-fun c!1270252 () Bool)

(assert (=> d!2146001 (= c!1270252 ((_ is EmptyExpr!16639) r!7292))))

(assert (=> d!2146001 (= (matchRSpec!3740 r!7292 s!2326) e!4117165)))

(declare-fun b!6824666 () Bool)

(assert (=> b!6824666 (= e!4117170 e!4117168)))

(declare-fun res!2787556 () Bool)

(assert (=> b!6824666 (= res!2787556 (matchRSpec!3740 (regOne!33791 r!7292) s!2326))))

(assert (=> b!6824666 (=> res!2787556 e!4117168)))

(declare-fun b!6824667 () Bool)

(assert (=> b!6824667 (= e!4117165 call!621137)))

(declare-fun bm!621131 () Bool)

(assert (=> bm!621131 (= call!621137 (isEmpty!38481 s!2326))))

(declare-fun bm!621132 () Bool)

(declare-fun c!1270250 () Bool)

(assert (=> bm!621132 (= call!621136 (Exists!3707 (ite c!1270250 lambda!385563 lambda!385564)))))

(assert (=> b!6824668 (= e!4117166 call!621136)))

(declare-fun b!6824669 () Bool)

(assert (=> b!6824669 (= e!4117170 e!4117171)))

(assert (=> b!6824669 (= c!1270250 ((_ is Star!16639) r!7292))))

(assert (= (and d!2146001 c!1270252) b!6824667))

(assert (= (and d!2146001 (not c!1270252)) b!6824661))

(assert (= (and b!6824661 res!2787555) b!6824665))

(assert (= (and b!6824665 c!1270253) b!6824663))

(assert (= (and b!6824665 (not c!1270253)) b!6824664))

(assert (= (and b!6824664 c!1270251) b!6824666))

(assert (= (and b!6824664 (not c!1270251)) b!6824669))

(assert (= (and b!6824666 (not res!2787556)) b!6824662))

(assert (= (and b!6824669 c!1270250) b!6824660))

(assert (= (and b!6824669 (not c!1270250)) b!6824659))

(assert (= (and b!6824660 (not res!2787558)) b!6824668))

(assert (= (or b!6824668 b!6824659) bm!621132))

(assert (= (or b!6824667 b!6824660) bm!621131))

(declare-fun m!7570366 () Bool)

(assert (=> b!6824662 m!7570366))

(declare-fun m!7570368 () Bool)

(assert (=> b!6824666 m!7570368))

(assert (=> bm!621131 m!7569622))

(declare-fun m!7570370 () Bool)

(assert (=> bm!621132 m!7570370))

(assert (=> b!6823992 d!2146001))

(declare-fun b!6824754 () Bool)

(declare-fun e!4117211 () Bool)

(assert (=> b!6824754 (= e!4117211 (= (head!13681 s!2326) (c!1270055 r!7292)))))

(declare-fun bm!621135 () Bool)

(declare-fun call!621140 () Bool)

(assert (=> bm!621135 (= call!621140 (isEmpty!38481 s!2326))))

(declare-fun b!6824755 () Bool)

(declare-fun e!4117212 () Bool)

(declare-fun lt!2452233 () Bool)

(assert (=> b!6824755 (= e!4117212 (not lt!2452233))))

(declare-fun b!6824756 () Bool)

(declare-fun e!4117215 () Bool)

(assert (=> b!6824756 (= e!4117215 e!4117212)))

(declare-fun c!1270261 () Bool)

(assert (=> b!6824756 (= c!1270261 ((_ is EmptyLang!16639) r!7292))))

(declare-fun b!6824757 () Bool)

(declare-fun res!2787575 () Bool)

(declare-fun e!4117217 () Bool)

(assert (=> b!6824757 (=> res!2787575 e!4117217)))

(assert (=> b!6824757 (= res!2787575 (not ((_ is ElementMatch!16639) r!7292)))))

(assert (=> b!6824757 (= e!4117212 e!4117217)))

(declare-fun b!6824758 () Bool)

(declare-fun e!4117216 () Bool)

(assert (=> b!6824758 (= e!4117217 e!4117216)))

(declare-fun res!2787581 () Bool)

(assert (=> b!6824758 (=> (not res!2787581) (not e!4117216))))

(assert (=> b!6824758 (= res!2787581 (not lt!2452233))))

(declare-fun d!2146021 () Bool)

(assert (=> d!2146021 e!4117215))

(declare-fun c!1270263 () Bool)

(assert (=> d!2146021 (= c!1270263 ((_ is EmptyExpr!16639) r!7292))))

(declare-fun e!4117213 () Bool)

(assert (=> d!2146021 (= lt!2452233 e!4117213)))

(declare-fun c!1270262 () Bool)

(assert (=> d!2146021 (= c!1270262 (isEmpty!38481 s!2326))))

(assert (=> d!2146021 (validRegex!8375 r!7292)))

(assert (=> d!2146021 (= (matchR!8822 r!7292 s!2326) lt!2452233)))

(declare-fun b!6824759 () Bool)

(declare-fun e!4117214 () Bool)

(assert (=> b!6824759 (= e!4117214 (not (= (head!13681 s!2326) (c!1270055 r!7292))))))

(declare-fun b!6824760 () Bool)

(assert (=> b!6824760 (= e!4117216 e!4117214)))

(declare-fun res!2787578 () Bool)

(assert (=> b!6824760 (=> res!2787578 e!4117214)))

(assert (=> b!6824760 (= res!2787578 call!621140)))

(declare-fun b!6824761 () Bool)

(declare-fun derivativeStep!5299 (Regex!16639 C!33548) Regex!16639)

(assert (=> b!6824761 (= e!4117213 (matchR!8822 (derivativeStep!5299 r!7292 (head!13681 s!2326)) (tail!12766 s!2326)))))

(declare-fun b!6824762 () Bool)

(declare-fun res!2787582 () Bool)

(assert (=> b!6824762 (=> res!2787582 e!4117214)))

(assert (=> b!6824762 (= res!2787582 (not (isEmpty!38481 (tail!12766 s!2326))))))

(declare-fun b!6824763 () Bool)

(declare-fun res!2787579 () Bool)

(assert (=> b!6824763 (=> res!2787579 e!4117217)))

(assert (=> b!6824763 (= res!2787579 e!4117211)))

(declare-fun res!2787576 () Bool)

(assert (=> b!6824763 (=> (not res!2787576) (not e!4117211))))

(assert (=> b!6824763 (= res!2787576 lt!2452233)))

(declare-fun b!6824764 () Bool)

(assert (=> b!6824764 (= e!4117215 (= lt!2452233 call!621140))))

(declare-fun b!6824765 () Bool)

(declare-fun res!2787580 () Bool)

(assert (=> b!6824765 (=> (not res!2787580) (not e!4117211))))

(assert (=> b!6824765 (= res!2787580 (isEmpty!38481 (tail!12766 s!2326)))))

(declare-fun b!6824766 () Bool)

(declare-fun res!2787577 () Bool)

(assert (=> b!6824766 (=> (not res!2787577) (not e!4117211))))

(assert (=> b!6824766 (= res!2787577 (not call!621140))))

(declare-fun b!6824767 () Bool)

(assert (=> b!6824767 (= e!4117213 (nullable!6614 r!7292))))

(assert (= (and d!2146021 c!1270262) b!6824767))

(assert (= (and d!2146021 (not c!1270262)) b!6824761))

(assert (= (and d!2146021 c!1270263) b!6824764))

(assert (= (and d!2146021 (not c!1270263)) b!6824756))

(assert (= (and b!6824756 c!1270261) b!6824755))

(assert (= (and b!6824756 (not c!1270261)) b!6824757))

(assert (= (and b!6824757 (not res!2787575)) b!6824763))

(assert (= (and b!6824763 res!2787576) b!6824766))

(assert (= (and b!6824766 res!2787577) b!6824765))

(assert (= (and b!6824765 res!2787580) b!6824754))

(assert (= (and b!6824763 (not res!2787579)) b!6824758))

(assert (= (and b!6824758 res!2787581) b!6824760))

(assert (= (and b!6824760 (not res!2787578)) b!6824762))

(assert (= (and b!6824762 (not res!2787582)) b!6824759))

(assert (= (or b!6824764 b!6824760 b!6824766) bm!621135))

(assert (=> b!6824754 m!7569754))

(declare-fun m!7570380 () Bool)

(assert (=> b!6824767 m!7570380))

(assert (=> b!6824761 m!7569754))

(assert (=> b!6824761 m!7569754))

(declare-fun m!7570382 () Bool)

(assert (=> b!6824761 m!7570382))

(assert (=> b!6824761 m!7569758))

(assert (=> b!6824761 m!7570382))

(assert (=> b!6824761 m!7569758))

(declare-fun m!7570384 () Bool)

(assert (=> b!6824761 m!7570384))

(assert (=> bm!621135 m!7569622))

(assert (=> b!6824765 m!7569758))

(assert (=> b!6824765 m!7569758))

(declare-fun m!7570386 () Bool)

(assert (=> b!6824765 m!7570386))

(assert (=> d!2146021 m!7569622))

(assert (=> d!2146021 m!7569648))

(assert (=> b!6824759 m!7569754))

(assert (=> b!6824762 m!7569758))

(assert (=> b!6824762 m!7569758))

(assert (=> b!6824762 m!7570386))

(assert (=> b!6823992 d!2146021))

(declare-fun d!2146033 () Bool)

(assert (=> d!2146033 (= (matchR!8822 r!7292 s!2326) (matchRSpec!3740 r!7292 s!2326))))

(declare-fun lt!2452236 () Unit!159969)

(declare-fun choose!50893 (Regex!16639 List!66216) Unit!159969)

(assert (=> d!2146033 (= lt!2452236 (choose!50893 r!7292 s!2326))))

(assert (=> d!2146033 (validRegex!8375 r!7292)))

(assert (=> d!2146033 (= (mainMatchTheorem!3740 r!7292 s!2326) lt!2452236)))

(declare-fun bs!1823469 () Bool)

(assert (= bs!1823469 d!2146033))

(assert (=> bs!1823469 m!7569726))

(assert (=> bs!1823469 m!7569724))

(declare-fun m!7570388 () Bool)

(assert (=> bs!1823469 m!7570388))

(assert (=> bs!1823469 m!7569648))

(assert (=> b!6823992 d!2146033))

(declare-fun b!6824786 () Bool)

(declare-fun e!4117232 () Bool)

(declare-fun e!4117235 () Bool)

(assert (=> b!6824786 (= e!4117232 e!4117235)))

(declare-fun c!1270269 () Bool)

(assert (=> b!6824786 (= c!1270269 ((_ is Star!16639) r!7292))))

(declare-fun d!2146035 () Bool)

(declare-fun res!2787593 () Bool)

(assert (=> d!2146035 (=> res!2787593 e!4117232)))

(assert (=> d!2146035 (= res!2787593 ((_ is ElementMatch!16639) r!7292))))

(assert (=> d!2146035 (= (validRegex!8375 r!7292) e!4117232)))

(declare-fun bm!621142 () Bool)

(declare-fun call!621147 () Bool)

(declare-fun c!1270268 () Bool)

(assert (=> bm!621142 (= call!621147 (validRegex!8375 (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))))))

(declare-fun b!6824787 () Bool)

(declare-fun e!4117233 () Bool)

(assert (=> b!6824787 (= e!4117235 e!4117233)))

(assert (=> b!6824787 (= c!1270268 ((_ is Union!16639) r!7292))))

(declare-fun b!6824788 () Bool)

(declare-fun e!4117236 () Bool)

(declare-fun call!621148 () Bool)

(assert (=> b!6824788 (= e!4117236 call!621148)))

(declare-fun b!6824789 () Bool)

(declare-fun e!4117234 () Bool)

(declare-fun call!621149 () Bool)

(assert (=> b!6824789 (= e!4117234 call!621149)))

(declare-fun b!6824790 () Bool)

(assert (=> b!6824790 (= e!4117235 e!4117236)))

(declare-fun res!2787595 () Bool)

(assert (=> b!6824790 (= res!2787595 (not (nullable!6614 (reg!16968 r!7292))))))

(assert (=> b!6824790 (=> (not res!2787595) (not e!4117236))))

(declare-fun bm!621143 () Bool)

(assert (=> bm!621143 (= call!621149 call!621148)))

(declare-fun b!6824791 () Bool)

(declare-fun res!2787596 () Bool)

(declare-fun e!4117238 () Bool)

(assert (=> b!6824791 (=> res!2787596 e!4117238)))

(assert (=> b!6824791 (= res!2787596 (not ((_ is Concat!25484) r!7292)))))

(assert (=> b!6824791 (= e!4117233 e!4117238)))

(declare-fun b!6824792 () Bool)

(declare-fun res!2787597 () Bool)

(assert (=> b!6824792 (=> (not res!2787597) (not e!4117234))))

(assert (=> b!6824792 (= res!2787597 call!621147)))

(assert (=> b!6824792 (= e!4117233 e!4117234)))

(declare-fun b!6824793 () Bool)

(declare-fun e!4117237 () Bool)

(assert (=> b!6824793 (= e!4117237 call!621149)))

(declare-fun b!6824794 () Bool)

(assert (=> b!6824794 (= e!4117238 e!4117237)))

(declare-fun res!2787594 () Bool)

(assert (=> b!6824794 (=> (not res!2787594) (not e!4117237))))

(assert (=> b!6824794 (= res!2787594 call!621147)))

(declare-fun bm!621144 () Bool)

(assert (=> bm!621144 (= call!621148 (validRegex!8375 (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))))))

(assert (= (and d!2146035 (not res!2787593)) b!6824786))

(assert (= (and b!6824786 c!1270269) b!6824790))

(assert (= (and b!6824786 (not c!1270269)) b!6824787))

(assert (= (and b!6824790 res!2787595) b!6824788))

(assert (= (and b!6824787 c!1270268) b!6824792))

(assert (= (and b!6824787 (not c!1270268)) b!6824791))

(assert (= (and b!6824792 res!2787597) b!6824789))

(assert (= (and b!6824791 (not res!2787596)) b!6824794))

(assert (= (and b!6824794 res!2787594) b!6824793))

(assert (= (or b!6824789 b!6824793) bm!621143))

(assert (= (or b!6824792 b!6824794) bm!621142))

(assert (= (or b!6824788 bm!621143) bm!621144))

(declare-fun m!7570390 () Bool)

(assert (=> bm!621142 m!7570390))

(declare-fun m!7570392 () Bool)

(assert (=> b!6824790 m!7570392))

(declare-fun m!7570394 () Bool)

(assert (=> bm!621144 m!7570394))

(assert (=> start!659868 d!2146035))

(declare-fun bs!1823470 () Bool)

(declare-fun d!2146037 () Bool)

(assert (= bs!1823470 (and d!2146037 b!6823997)))

(declare-fun lambda!385567 () Int)

(assert (=> bs!1823470 (= lambda!385567 lambda!385483)))

(declare-fun bs!1823471 () Bool)

(assert (= bs!1823471 (and d!2146037 d!2145867)))

(assert (=> bs!1823471 (= lambda!385567 lambda!385508)))

(declare-fun bs!1823472 () Bool)

(assert (= bs!1823472 (and d!2146037 d!2145995)))

(assert (=> bs!1823472 (= lambda!385567 lambda!385554)))

(assert (=> d!2146037 (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076))) true) (++!14825 (_1!36917 lt!2452079) (_2!36917 lt!2452079)))))

(declare-fun lt!2452242 () Unit!159969)

(assert (=> d!2146037 (= lt!2452242 (lemmaConcatPreservesForall!468 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076) lambda!385567))))

(declare-fun lt!2452241 () Unit!159969)

(declare-fun choose!50894 (Context!12046 Context!12046 List!66216 List!66216) Unit!159969)

(assert (=> d!2146037 (= lt!2452241 (choose!50894 lt!2452067 lt!2452076 (_1!36917 lt!2452079) (_2!36917 lt!2452079)))))

(assert (=> d!2146037 (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) lt!2452067 true) (_1!36917 lt!2452079))))

(assert (=> d!2146037 (= (lemmaConcatenateContextMatchesConcatOfStrings!262 lt!2452067 lt!2452076 (_1!36917 lt!2452079) (_2!36917 lt!2452079)) lt!2452241)))

(declare-fun bs!1823473 () Bool)

(assert (= bs!1823473 d!2146037))

(declare-fun m!7570396 () Bool)

(assert (=> bs!1823473 m!7570396))

(declare-fun m!7570398 () Bool)

(assert (=> bs!1823473 m!7570398))

(declare-fun m!7570400 () Bool)

(assert (=> bs!1823473 m!7570400))

(assert (=> bs!1823473 m!7569688))

(declare-fun m!7570402 () Bool)

(assert (=> bs!1823473 m!7570402))

(assert (=> bs!1823473 m!7570400))

(assert (=> bs!1823473 m!7569668))

(declare-fun m!7570404 () Bool)

(assert (=> bs!1823473 m!7570404))

(assert (=> bs!1823473 m!7569688))

(assert (=> bs!1823473 m!7569668))

(declare-fun m!7570406 () Bool)

(assert (=> bs!1823473 m!7570406))

(assert (=> b!6823972 d!2146037))

(declare-fun b!6824803 () Bool)

(declare-fun e!4117244 () List!66217)

(assert (=> b!6824803 (= e!4117244 lt!2452065)))

(declare-fun d!2146039 () Bool)

(declare-fun e!4117243 () Bool)

(assert (=> d!2146039 e!4117243))

(declare-fun res!2787602 () Bool)

(assert (=> d!2146039 (=> (not res!2787602) (not e!4117243))))

(declare-fun lt!2452245 () List!66217)

(declare-fun content!12942 (List!66217) (InoxSet Regex!16639))

(assert (=> d!2146039 (= res!2787602 (= (content!12942 lt!2452245) ((_ map or) (content!12942 lt!2452077) (content!12942 lt!2452065))))))

(assert (=> d!2146039 (= lt!2452245 e!4117244)))

(declare-fun c!1270272 () Bool)

(assert (=> d!2146039 (= c!1270272 ((_ is Nil!66093) lt!2452077))))

(assert (=> d!2146039 (= (++!14824 lt!2452077 lt!2452065) lt!2452245)))

(declare-fun b!6824804 () Bool)

(assert (=> b!6824804 (= e!4117244 (Cons!66093 (h!72541 lt!2452077) (++!14824 (t!379956 lt!2452077) lt!2452065)))))

(declare-fun b!6824806 () Bool)

(assert (=> b!6824806 (= e!4117243 (or (not (= lt!2452065 Nil!66093)) (= lt!2452245 lt!2452077)))))

(declare-fun b!6824805 () Bool)

(declare-fun res!2787603 () Bool)

(assert (=> b!6824805 (=> (not res!2787603) (not e!4117243))))

(declare-fun size!40695 (List!66217) Int)

(assert (=> b!6824805 (= res!2787603 (= (size!40695 lt!2452245) (+ (size!40695 lt!2452077) (size!40695 lt!2452065))))))

(assert (= (and d!2146039 c!1270272) b!6824803))

(assert (= (and d!2146039 (not c!1270272)) b!6824804))

(assert (= (and d!2146039 res!2787602) b!6824805))

(assert (= (and b!6824805 res!2787603) b!6824806))

(declare-fun m!7570408 () Bool)

(assert (=> d!2146039 m!7570408))

(declare-fun m!7570410 () Bool)

(assert (=> d!2146039 m!7570410))

(declare-fun m!7570412 () Bool)

(assert (=> d!2146039 m!7570412))

(declare-fun m!7570414 () Bool)

(assert (=> b!6824804 m!7570414))

(declare-fun m!7570416 () Bool)

(assert (=> b!6824805 m!7570416))

(declare-fun m!7570418 () Bool)

(assert (=> b!6824805 m!7570418))

(declare-fun m!7570420 () Bool)

(assert (=> b!6824805 m!7570420))

(assert (=> b!6823972 d!2146039))

(declare-fun d!2146041 () Bool)

(assert (=> d!2146041 (= (matchR!8822 (reg!16968 r!7292) (_1!36917 lt!2452079)) (matchZipper!2625 lt!2452091 (_1!36917 lt!2452079)))))

(declare-fun lt!2452248 () Unit!159969)

(declare-fun choose!50895 ((InoxSet Context!12046) List!66218 Regex!16639 List!66216) Unit!159969)

(assert (=> d!2146041 (= lt!2452248 (choose!50895 lt!2452091 lt!2452090 (reg!16968 r!7292) (_1!36917 lt!2452079)))))

(assert (=> d!2146041 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2146041 (= (theoremZipperRegexEquiv!941 lt!2452091 lt!2452090 (reg!16968 r!7292) (_1!36917 lt!2452079)) lt!2452248)))

(declare-fun bs!1823474 () Bool)

(assert (= bs!1823474 d!2146041))

(assert (=> bs!1823474 m!7569654))

(assert (=> bs!1823474 m!7569602))

(declare-fun m!7570422 () Bool)

(assert (=> bs!1823474 m!7570422))

(assert (=> bs!1823474 m!7569992))

(assert (=> b!6823972 d!2146041))

(declare-fun d!2146043 () Bool)

(assert (=> d!2146043 (forall!15827 (++!14824 lt!2452077 lt!2452065) lambda!385483)))

(declare-fun lt!2452251 () Unit!159969)

(declare-fun choose!50896 (List!66217 List!66217 Int) Unit!159969)

(assert (=> d!2146043 (= lt!2452251 (choose!50896 lt!2452077 lt!2452065 lambda!385483))))

(assert (=> d!2146043 (forall!15827 lt!2452077 lambda!385483)))

(assert (=> d!2146043 (= (lemmaConcatPreservesForall!468 lt!2452077 lt!2452065 lambda!385483) lt!2452251)))

(declare-fun bs!1823475 () Bool)

(assert (= bs!1823475 d!2146043))

(assert (=> bs!1823475 m!7569660))

(assert (=> bs!1823475 m!7569660))

(declare-fun m!7570424 () Bool)

(assert (=> bs!1823475 m!7570424))

(declare-fun m!7570426 () Bool)

(assert (=> bs!1823475 m!7570426))

(declare-fun m!7570428 () Bool)

(assert (=> bs!1823475 m!7570428))

(assert (=> b!6823972 d!2146043))

(declare-fun d!2146045 () Bool)

(declare-fun c!1270273 () Bool)

(assert (=> d!2146045 (= c!1270273 (isEmpty!38481 lt!2452083))))

(declare-fun e!4117245 () Bool)

(assert (=> d!2146045 (= (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) lt!2452083) e!4117245)))

(declare-fun b!6824807 () Bool)

(assert (=> b!6824807 (= e!4117245 (nullableZipper!2342 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true)))))

(declare-fun b!6824808 () Bool)

(assert (=> b!6824808 (= e!4117245 (matchZipper!2625 (derivationStepZipper!2583 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) (head!13681 lt!2452083)) (tail!12766 lt!2452083)))))

(assert (= (and d!2146045 c!1270273) b!6824807))

(assert (= (and d!2146045 (not c!1270273)) b!6824808))

(declare-fun m!7570430 () Bool)

(assert (=> d!2146045 m!7570430))

(assert (=> b!6824807 m!7569650))

(declare-fun m!7570432 () Bool)

(assert (=> b!6824807 m!7570432))

(declare-fun m!7570434 () Bool)

(assert (=> b!6824808 m!7570434))

(assert (=> b!6824808 m!7569650))

(assert (=> b!6824808 m!7570434))

(declare-fun m!7570436 () Bool)

(assert (=> b!6824808 m!7570436))

(declare-fun m!7570438 () Bool)

(assert (=> b!6824808 m!7570438))

(assert (=> b!6824808 m!7570436))

(assert (=> b!6824808 m!7570438))

(declare-fun m!7570440 () Bool)

(assert (=> b!6824808 m!7570440))

(assert (=> b!6823972 d!2146045))

(assert (=> b!6823972 d!2146035))

(declare-fun b!6824809 () Bool)

(declare-fun e!4117246 () Bool)

(assert (=> b!6824809 (= e!4117246 (= (head!13681 (_1!36917 lt!2452079)) (c!1270055 (reg!16968 r!7292))))))

(declare-fun bm!621145 () Bool)

(declare-fun call!621150 () Bool)

(assert (=> bm!621145 (= call!621150 (isEmpty!38481 (_1!36917 lt!2452079)))))

(declare-fun b!6824810 () Bool)

(declare-fun e!4117247 () Bool)

(declare-fun lt!2452252 () Bool)

(assert (=> b!6824810 (= e!4117247 (not lt!2452252))))

(declare-fun b!6824811 () Bool)

(declare-fun e!4117250 () Bool)

(assert (=> b!6824811 (= e!4117250 e!4117247)))

(declare-fun c!1270274 () Bool)

(assert (=> b!6824811 (= c!1270274 ((_ is EmptyLang!16639) (reg!16968 r!7292)))))

(declare-fun b!6824812 () Bool)

(declare-fun res!2787604 () Bool)

(declare-fun e!4117252 () Bool)

(assert (=> b!6824812 (=> res!2787604 e!4117252)))

(assert (=> b!6824812 (= res!2787604 (not ((_ is ElementMatch!16639) (reg!16968 r!7292))))))

(assert (=> b!6824812 (= e!4117247 e!4117252)))

(declare-fun b!6824813 () Bool)

(declare-fun e!4117251 () Bool)

(assert (=> b!6824813 (= e!4117252 e!4117251)))

(declare-fun res!2787610 () Bool)

(assert (=> b!6824813 (=> (not res!2787610) (not e!4117251))))

(assert (=> b!6824813 (= res!2787610 (not lt!2452252))))

(declare-fun d!2146047 () Bool)

(assert (=> d!2146047 e!4117250))

(declare-fun c!1270276 () Bool)

(assert (=> d!2146047 (= c!1270276 ((_ is EmptyExpr!16639) (reg!16968 r!7292)))))

(declare-fun e!4117248 () Bool)

(assert (=> d!2146047 (= lt!2452252 e!4117248)))

(declare-fun c!1270275 () Bool)

(assert (=> d!2146047 (= c!1270275 (isEmpty!38481 (_1!36917 lt!2452079)))))

(assert (=> d!2146047 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2146047 (= (matchR!8822 (reg!16968 r!7292) (_1!36917 lt!2452079)) lt!2452252)))

(declare-fun b!6824814 () Bool)

(declare-fun e!4117249 () Bool)

(assert (=> b!6824814 (= e!4117249 (not (= (head!13681 (_1!36917 lt!2452079)) (c!1270055 (reg!16968 r!7292)))))))

(declare-fun b!6824815 () Bool)

(assert (=> b!6824815 (= e!4117251 e!4117249)))

(declare-fun res!2787607 () Bool)

(assert (=> b!6824815 (=> res!2787607 e!4117249)))

(assert (=> b!6824815 (= res!2787607 call!621150)))

(declare-fun b!6824816 () Bool)

(assert (=> b!6824816 (= e!4117248 (matchR!8822 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079))) (tail!12766 (_1!36917 lt!2452079))))))

(declare-fun b!6824817 () Bool)

(declare-fun res!2787611 () Bool)

(assert (=> b!6824817 (=> res!2787611 e!4117249)))

(assert (=> b!6824817 (= res!2787611 (not (isEmpty!38481 (tail!12766 (_1!36917 lt!2452079)))))))

(declare-fun b!6824818 () Bool)

(declare-fun res!2787608 () Bool)

(assert (=> b!6824818 (=> res!2787608 e!4117252)))

(assert (=> b!6824818 (= res!2787608 e!4117246)))

(declare-fun res!2787605 () Bool)

(assert (=> b!6824818 (=> (not res!2787605) (not e!4117246))))

(assert (=> b!6824818 (= res!2787605 lt!2452252)))

(declare-fun b!6824819 () Bool)

(assert (=> b!6824819 (= e!4117250 (= lt!2452252 call!621150))))

(declare-fun b!6824820 () Bool)

(declare-fun res!2787609 () Bool)

(assert (=> b!6824820 (=> (not res!2787609) (not e!4117246))))

(assert (=> b!6824820 (= res!2787609 (isEmpty!38481 (tail!12766 (_1!36917 lt!2452079))))))

(declare-fun b!6824821 () Bool)

(declare-fun res!2787606 () Bool)

(assert (=> b!6824821 (=> (not res!2787606) (not e!4117246))))

(assert (=> b!6824821 (= res!2787606 (not call!621150))))

(declare-fun b!6824822 () Bool)

(assert (=> b!6824822 (= e!4117248 (nullable!6614 (reg!16968 r!7292)))))

(assert (= (and d!2146047 c!1270275) b!6824822))

(assert (= (and d!2146047 (not c!1270275)) b!6824816))

(assert (= (and d!2146047 c!1270276) b!6824819))

(assert (= (and d!2146047 (not c!1270276)) b!6824811))

(assert (= (and b!6824811 c!1270274) b!6824810))

(assert (= (and b!6824811 (not c!1270274)) b!6824812))

(assert (= (and b!6824812 (not res!2787604)) b!6824818))

(assert (= (and b!6824818 res!2787605) b!6824821))

(assert (= (and b!6824821 res!2787606) b!6824820))

(assert (= (and b!6824820 res!2787609) b!6824809))

(assert (= (and b!6824818 (not res!2787608)) b!6824813))

(assert (= (and b!6824813 res!2787610) b!6824815))

(assert (= (and b!6824815 (not res!2787607)) b!6824817))

(assert (= (and b!6824817 (not res!2787611)) b!6824814))

(assert (= (or b!6824819 b!6824815 b!6824821) bm!621145))

(assert (=> b!6824809 m!7570294))

(assert (=> b!6824822 m!7570392))

(assert (=> b!6824816 m!7570294))

(assert (=> b!6824816 m!7570294))

(declare-fun m!7570442 () Bool)

(assert (=> b!6824816 m!7570442))

(assert (=> b!6824816 m!7570298))

(assert (=> b!6824816 m!7570442))

(assert (=> b!6824816 m!7570298))

(declare-fun m!7570444 () Bool)

(assert (=> b!6824816 m!7570444))

(assert (=> bm!621145 m!7570290))

(assert (=> b!6824820 m!7570298))

(assert (=> b!6824820 m!7570298))

(declare-fun m!7570446 () Bool)

(assert (=> b!6824820 m!7570446))

(assert (=> d!2146047 m!7570290))

(assert (=> d!2146047 m!7569992))

(assert (=> b!6824814 m!7570294))

(assert (=> b!6824817 m!7570298))

(assert (=> b!6824817 m!7570298))

(assert (=> b!6824817 m!7570446))

(assert (=> b!6823972 d!2146047))

(declare-fun bs!1823476 () Bool)

(declare-fun d!2146049 () Bool)

(assert (= bs!1823476 (and d!2146049 b!6823997)))

(declare-fun lambda!385570 () Int)

(assert (=> bs!1823476 (= lambda!385570 lambda!385483)))

(declare-fun bs!1823477 () Bool)

(assert (= bs!1823477 (and d!2146049 d!2145867)))

(assert (=> bs!1823477 (= lambda!385570 lambda!385508)))

(declare-fun bs!1823478 () Bool)

(assert (= bs!1823478 (and d!2146049 d!2145995)))

(assert (=> bs!1823478 (= lambda!385570 lambda!385554)))

(declare-fun bs!1823479 () Bool)

(assert (= bs!1823479 (and d!2146049 d!2146037)))

(assert (=> bs!1823479 (= lambda!385570 lambda!385567)))

(declare-fun b!6824843 () Bool)

(declare-fun e!4117265 () Regex!16639)

(assert (=> b!6824843 (= e!4117265 (Union!16639 (h!72541 (unfocusZipperList!2060 zl!343)) (generalisedUnion!2483 (t!379956 (unfocusZipperList!2060 zl!343)))))))

(declare-fun b!6824845 () Bool)

(declare-fun e!4117268 () Regex!16639)

(assert (=> b!6824845 (= e!4117268 (h!72541 (unfocusZipperList!2060 zl!343)))))

(declare-fun b!6824846 () Bool)

(declare-fun e!4117270 () Bool)

(declare-fun lt!2452255 () Regex!16639)

(declare-fun isUnion!1431 (Regex!16639) Bool)

(assert (=> b!6824846 (= e!4117270 (isUnion!1431 lt!2452255))))

(declare-fun b!6824847 () Bool)

(declare-fun e!4117269 () Bool)

(assert (=> b!6824847 (= e!4117269 (isEmpty!38486 (t!379956 (unfocusZipperList!2060 zl!343))))))

(declare-fun b!6824848 () Bool)

(assert (=> b!6824848 (= e!4117270 (= lt!2452255 (head!13682 (unfocusZipperList!2060 zl!343))))))

(declare-fun b!6824849 () Bool)

(assert (=> b!6824849 (= e!4117265 EmptyLang!16639)))

(declare-fun b!6824850 () Bool)

(declare-fun e!4117266 () Bool)

(declare-fun isEmptyLang!2001 (Regex!16639) Bool)

(assert (=> b!6824850 (= e!4117266 (isEmptyLang!2001 lt!2452255))))

(declare-fun e!4117267 () Bool)

(assert (=> d!2146049 e!4117267))

(declare-fun res!2787616 () Bool)

(assert (=> d!2146049 (=> (not res!2787616) (not e!4117267))))

(assert (=> d!2146049 (= res!2787616 (validRegex!8375 lt!2452255))))

(assert (=> d!2146049 (= lt!2452255 e!4117268)))

(declare-fun c!1270285 () Bool)

(assert (=> d!2146049 (= c!1270285 e!4117269)))

(declare-fun res!2787617 () Bool)

(assert (=> d!2146049 (=> (not res!2787617) (not e!4117269))))

(assert (=> d!2146049 (= res!2787617 ((_ is Cons!66093) (unfocusZipperList!2060 zl!343)))))

(assert (=> d!2146049 (forall!15827 (unfocusZipperList!2060 zl!343) lambda!385570)))

(assert (=> d!2146049 (= (generalisedUnion!2483 (unfocusZipperList!2060 zl!343)) lt!2452255)))

(declare-fun b!6824844 () Bool)

(assert (=> b!6824844 (= e!4117266 e!4117270)))

(declare-fun c!1270286 () Bool)

(assert (=> b!6824844 (= c!1270286 (isEmpty!38486 (tail!12767 (unfocusZipperList!2060 zl!343))))))

(declare-fun b!6824851 () Bool)

(assert (=> b!6824851 (= e!4117268 e!4117265)))

(declare-fun c!1270288 () Bool)

(assert (=> b!6824851 (= c!1270288 ((_ is Cons!66093) (unfocusZipperList!2060 zl!343)))))

(declare-fun b!6824852 () Bool)

(assert (=> b!6824852 (= e!4117267 e!4117266)))

(declare-fun c!1270287 () Bool)

(assert (=> b!6824852 (= c!1270287 (isEmpty!38486 (unfocusZipperList!2060 zl!343)))))

(assert (= (and d!2146049 res!2787617) b!6824847))

(assert (= (and d!2146049 c!1270285) b!6824845))

(assert (= (and d!2146049 (not c!1270285)) b!6824851))

(assert (= (and b!6824851 c!1270288) b!6824843))

(assert (= (and b!6824851 (not c!1270288)) b!6824849))

(assert (= (and d!2146049 res!2787616) b!6824852))

(assert (= (and b!6824852 c!1270287) b!6824850))

(assert (= (and b!6824852 (not c!1270287)) b!6824844))

(assert (= (and b!6824844 c!1270286) b!6824848))

(assert (= (and b!6824844 (not c!1270286)) b!6824846))

(declare-fun m!7570448 () Bool)

(assert (=> b!6824843 m!7570448))

(declare-fun m!7570450 () Bool)

(assert (=> b!6824846 m!7570450))

(declare-fun m!7570452 () Bool)

(assert (=> b!6824847 m!7570452))

(assert (=> b!6824844 m!7569702))

(declare-fun m!7570454 () Bool)

(assert (=> b!6824844 m!7570454))

(assert (=> b!6824844 m!7570454))

(declare-fun m!7570456 () Bool)

(assert (=> b!6824844 m!7570456))

(declare-fun m!7570458 () Bool)

(assert (=> d!2146049 m!7570458))

(assert (=> d!2146049 m!7569702))

(declare-fun m!7570460 () Bool)

(assert (=> d!2146049 m!7570460))

(declare-fun m!7570462 () Bool)

(assert (=> b!6824850 m!7570462))

(assert (=> b!6824852 m!7569702))

(declare-fun m!7570464 () Bool)

(assert (=> b!6824852 m!7570464))

(assert (=> b!6824848 m!7569702))

(declare-fun m!7570466 () Bool)

(assert (=> b!6824848 m!7570466))

(assert (=> b!6823993 d!2146049))

(declare-fun bs!1823480 () Bool)

(declare-fun d!2146051 () Bool)

(assert (= bs!1823480 (and d!2146051 b!6823997)))

(declare-fun lambda!385573 () Int)

(assert (=> bs!1823480 (= lambda!385573 lambda!385483)))

(declare-fun bs!1823481 () Bool)

(assert (= bs!1823481 (and d!2146051 d!2146049)))

(assert (=> bs!1823481 (= lambda!385573 lambda!385570)))

(declare-fun bs!1823482 () Bool)

(assert (= bs!1823482 (and d!2146051 d!2146037)))

(assert (=> bs!1823482 (= lambda!385573 lambda!385567)))

(declare-fun bs!1823483 () Bool)

(assert (= bs!1823483 (and d!2146051 d!2145995)))

(assert (=> bs!1823483 (= lambda!385573 lambda!385554)))

(declare-fun bs!1823484 () Bool)

(assert (= bs!1823484 (and d!2146051 d!2145867)))

(assert (=> bs!1823484 (= lambda!385573 lambda!385508)))

(declare-fun lt!2452258 () List!66217)

(assert (=> d!2146051 (forall!15827 lt!2452258 lambda!385573)))

(declare-fun e!4117273 () List!66217)

(assert (=> d!2146051 (= lt!2452258 e!4117273)))

(declare-fun c!1270291 () Bool)

(assert (=> d!2146051 (= c!1270291 ((_ is Cons!66094) zl!343))))

(assert (=> d!2146051 (= (unfocusZipperList!2060 zl!343) lt!2452258)))

(declare-fun b!6824857 () Bool)

(assert (=> b!6824857 (= e!4117273 (Cons!66093 (generalisedConcat!2236 (exprs!6523 (h!72542 zl!343))) (unfocusZipperList!2060 (t!379957 zl!343))))))

(declare-fun b!6824858 () Bool)

(assert (=> b!6824858 (= e!4117273 Nil!66093)))

(assert (= (and d!2146051 c!1270291) b!6824857))

(assert (= (and d!2146051 (not c!1270291)) b!6824858))

(declare-fun m!7570468 () Bool)

(assert (=> d!2146051 m!7570468))

(assert (=> b!6824857 m!7569606))

(declare-fun m!7570470 () Bool)

(assert (=> b!6824857 m!7570470))

(assert (=> b!6823993 d!2146051))

(declare-fun d!2146053 () Bool)

(declare-fun c!1270294 () Bool)

(assert (=> d!2146053 (= c!1270294 (and ((_ is ElementMatch!16639) (reg!16968 r!7292)) (= (c!1270055 (reg!16968 r!7292)) (h!72540 s!2326))))))

(declare-fun e!4117277 () (InoxSet Context!12046))

(assert (=> d!2146053 (= (derivationStepZipperDown!1867 (reg!16968 r!7292) lt!2452076 (h!72540 s!2326)) e!4117277)))

(declare-fun c!1270293 () Bool)

(declare-fun call!621154 () (InoxSet Context!12046))

(declare-fun call!621156 () List!66217)

(declare-fun bm!621146 () Bool)

(assert (=> bm!621146 (= call!621154 (derivationStepZipperDown!1867 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292))) (ite c!1270293 lt!2452076 (Context!12047 call!621156)) (h!72540 s!2326)))))

(declare-fun bm!621147 () Bool)

(declare-fun call!621155 () (InoxSet Context!12046))

(declare-fun call!621153 () (InoxSet Context!12046))

(assert (=> bm!621147 (= call!621155 call!621153)))

(declare-fun b!6824859 () Bool)

(declare-fun c!1270296 () Bool)

(declare-fun e!4117278 () Bool)

(assert (=> b!6824859 (= c!1270296 e!4117278)))

(declare-fun res!2787618 () Bool)

(assert (=> b!6824859 (=> (not res!2787618) (not e!4117278))))

(assert (=> b!6824859 (= res!2787618 ((_ is Concat!25484) (reg!16968 r!7292)))))

(declare-fun e!4117275 () (InoxSet Context!12046))

(declare-fun e!4117276 () (InoxSet Context!12046))

(assert (=> b!6824859 (= e!4117275 e!4117276)))

(declare-fun c!1270295 () Bool)

(declare-fun bm!621148 () Bool)

(assert (=> bm!621148 (= call!621156 ($colon$colon!2444 (exprs!6523 lt!2452076) (ite (or c!1270296 c!1270295) (regTwo!33790 (reg!16968 r!7292)) (reg!16968 r!7292))))))

(declare-fun b!6824860 () Bool)

(assert (=> b!6824860 (= e!4117276 ((_ map or) call!621154 call!621155))))

(declare-fun bm!621149 () Bool)

(declare-fun call!621151 () List!66217)

(assert (=> bm!621149 (= call!621153 (derivationStepZipperDown!1867 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292))))) (ite (or c!1270293 c!1270296) lt!2452076 (Context!12047 call!621151)) (h!72540 s!2326)))))

(declare-fun b!6824861 () Bool)

(assert (=> b!6824861 (= e!4117277 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true))))

(declare-fun b!6824862 () Bool)

(declare-fun e!4117274 () (InoxSet Context!12046))

(declare-fun call!621152 () (InoxSet Context!12046))

(assert (=> b!6824862 (= e!4117274 call!621152)))

(declare-fun b!6824863 () Bool)

(assert (=> b!6824863 (= e!4117277 e!4117275)))

(assert (=> b!6824863 (= c!1270293 ((_ is Union!16639) (reg!16968 r!7292)))))

(declare-fun bm!621150 () Bool)

(assert (=> bm!621150 (= call!621151 call!621156)))

(declare-fun b!6824864 () Bool)

(declare-fun e!4117279 () (InoxSet Context!12046))

(assert (=> b!6824864 (= e!4117276 e!4117279)))

(assert (=> b!6824864 (= c!1270295 ((_ is Concat!25484) (reg!16968 r!7292)))))

(declare-fun b!6824865 () Bool)

(assert (=> b!6824865 (= e!4117274 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6824866 () Bool)

(assert (=> b!6824866 (= e!4117275 ((_ map or) call!621153 call!621154))))

(declare-fun b!6824867 () Bool)

(declare-fun c!1270292 () Bool)

(assert (=> b!6824867 (= c!1270292 ((_ is Star!16639) (reg!16968 r!7292)))))

(assert (=> b!6824867 (= e!4117279 e!4117274)))

(declare-fun b!6824868 () Bool)

(assert (=> b!6824868 (= e!4117278 (nullable!6614 (regOne!33790 (reg!16968 r!7292))))))

(declare-fun bm!621151 () Bool)

(assert (=> bm!621151 (= call!621152 call!621155)))

(declare-fun b!6824869 () Bool)

(assert (=> b!6824869 (= e!4117279 call!621152)))

(assert (= (and d!2146053 c!1270294) b!6824861))

(assert (= (and d!2146053 (not c!1270294)) b!6824863))

(assert (= (and b!6824863 c!1270293) b!6824866))

(assert (= (and b!6824863 (not c!1270293)) b!6824859))

(assert (= (and b!6824859 res!2787618) b!6824868))

(assert (= (and b!6824859 c!1270296) b!6824860))

(assert (= (and b!6824859 (not c!1270296)) b!6824864))

(assert (= (and b!6824864 c!1270295) b!6824869))

(assert (= (and b!6824864 (not c!1270295)) b!6824867))

(assert (= (and b!6824867 c!1270292) b!6824862))

(assert (= (and b!6824867 (not c!1270292)) b!6824865))

(assert (= (or b!6824869 b!6824862) bm!621150))

(assert (= (or b!6824869 b!6824862) bm!621151))

(assert (= (or b!6824860 bm!621150) bm!621148))

(assert (= (or b!6824860 bm!621151) bm!621147))

(assert (= (or b!6824866 b!6824860) bm!621146))

(assert (= (or b!6824866 bm!621147) bm!621149))

(declare-fun m!7570472 () Bool)

(assert (=> bm!621148 m!7570472))

(declare-fun m!7570474 () Bool)

(assert (=> bm!621149 m!7570474))

(declare-fun m!7570476 () Bool)

(assert (=> b!6824868 m!7570476))

(assert (=> b!6824861 m!7569678))

(declare-fun m!7570478 () Bool)

(assert (=> bm!621146 m!7570478))

(assert (=> b!6823973 d!2146053))

(declare-fun d!2146055 () Bool)

(assert (=> d!2146055 (= (flatMap!2120 lt!2452058 lambda!385481) (choose!50889 lt!2452058 lambda!385481))))

(declare-fun bs!1823485 () Bool)

(assert (= bs!1823485 d!2146055))

(declare-fun m!7570480 () Bool)

(assert (=> bs!1823485 m!7570480))

(assert (=> b!6823973 d!2146055))

(declare-fun b!6824870 () Bool)

(declare-fun e!4117282 () (InoxSet Context!12046))

(declare-fun call!621157 () (InoxSet Context!12046))

(assert (=> b!6824870 (= e!4117282 ((_ map or) call!621157 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 lt!2452078))) (h!72540 s!2326))))))

(declare-fun b!6824871 () Bool)

(declare-fun e!4117281 () (InoxSet Context!12046))

(assert (=> b!6824871 (= e!4117281 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6824872 () Bool)

(assert (=> b!6824872 (= e!4117282 e!4117281)))

(declare-fun c!1270298 () Bool)

(assert (=> b!6824872 (= c!1270298 ((_ is Cons!66093) (exprs!6523 lt!2452078)))))

(declare-fun d!2146057 () Bool)

(declare-fun c!1270297 () Bool)

(declare-fun e!4117280 () Bool)

(assert (=> d!2146057 (= c!1270297 e!4117280)))

(declare-fun res!2787619 () Bool)

(assert (=> d!2146057 (=> (not res!2787619) (not e!4117280))))

(assert (=> d!2146057 (= res!2787619 ((_ is Cons!66093) (exprs!6523 lt!2452078)))))

(assert (=> d!2146057 (= (derivationStepZipperUp!1793 lt!2452078 (h!72540 s!2326)) e!4117282)))

(declare-fun b!6824873 () Bool)

(assert (=> b!6824873 (= e!4117280 (nullable!6614 (h!72541 (exprs!6523 lt!2452078))))))

(declare-fun b!6824874 () Bool)

(assert (=> b!6824874 (= e!4117281 call!621157)))

(declare-fun bm!621152 () Bool)

(assert (=> bm!621152 (= call!621157 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 lt!2452078)) (Context!12047 (t!379956 (exprs!6523 lt!2452078))) (h!72540 s!2326)))))

(assert (= (and d!2146057 res!2787619) b!6824873))

(assert (= (and d!2146057 c!1270297) b!6824870))

(assert (= (and d!2146057 (not c!1270297)) b!6824872))

(assert (= (and b!6824872 c!1270298) b!6824874))

(assert (= (and b!6824872 (not c!1270298)) b!6824871))

(assert (= (or b!6824870 b!6824874) bm!621152))

(declare-fun m!7570482 () Bool)

(assert (=> b!6824870 m!7570482))

(declare-fun m!7570484 () Bool)

(assert (=> b!6824873 m!7570484))

(declare-fun m!7570486 () Bool)

(assert (=> bm!621152 m!7570486))

(assert (=> b!6823973 d!2146057))

(declare-fun d!2146059 () Bool)

(assert (=> d!2146059 (= (flatMap!2120 lt!2452058 lambda!385481) (dynLambda!26409 lambda!385481 lt!2452078))))

(declare-fun lt!2452259 () Unit!159969)

(assert (=> d!2146059 (= lt!2452259 (choose!50890 lt!2452058 lt!2452078 lambda!385481))))

(assert (=> d!2146059 (= lt!2452058 (store ((as const (Array Context!12046 Bool)) false) lt!2452078 true))))

(assert (=> d!2146059 (= (lemmaFlatMapOnSingletonSet!1646 lt!2452058 lt!2452078 lambda!385481) lt!2452259)))

(declare-fun b_lambda!257419 () Bool)

(assert (=> (not b_lambda!257419) (not d!2146059)))

(declare-fun bs!1823486 () Bool)

(assert (= bs!1823486 d!2146059))

(assert (=> bs!1823486 m!7569640))

(declare-fun m!7570488 () Bool)

(assert (=> bs!1823486 m!7570488))

(declare-fun m!7570490 () Bool)

(assert (=> bs!1823486 m!7570490))

(assert (=> bs!1823486 m!7569638))

(assert (=> b!6823973 d!2146059))

(declare-fun d!2146061 () Bool)

(declare-fun lt!2452260 () Regex!16639)

(assert (=> d!2146061 (validRegex!8375 lt!2452260)))

(assert (=> d!2146061 (= lt!2452260 (generalisedUnion!2483 (unfocusZipperList!2060 zl!343)))))

(assert (=> d!2146061 (= (unfocusZipper!2381 zl!343) lt!2452260)))

(declare-fun bs!1823487 () Bool)

(assert (= bs!1823487 d!2146061))

(declare-fun m!7570492 () Bool)

(assert (=> bs!1823487 m!7570492))

(assert (=> bs!1823487 m!7569702))

(assert (=> bs!1823487 m!7569702))

(assert (=> bs!1823487 m!7569704))

(assert (=> b!6823999 d!2146061))

(declare-fun d!2146063 () Bool)

(declare-fun e!4117283 () Bool)

(assert (=> d!2146063 e!4117283))

(declare-fun res!2787620 () Bool)

(assert (=> d!2146063 (=> (not res!2787620) (not e!4117283))))

(declare-fun lt!2452261 () List!66218)

(assert (=> d!2146063 (= res!2787620 (noDuplicate!2419 lt!2452261))))

(assert (=> d!2146063 (= lt!2452261 (choose!50892 z!1189))))

(assert (=> d!2146063 (= (toList!10423 z!1189) lt!2452261)))

(declare-fun b!6824875 () Bool)

(assert (=> b!6824875 (= e!4117283 (= (content!12941 lt!2452261) z!1189))))

(assert (= (and d!2146063 res!2787620) b!6824875))

(declare-fun m!7570494 () Bool)

(assert (=> d!2146063 m!7570494))

(declare-fun m!7570496 () Bool)

(assert (=> d!2146063 m!7570496))

(declare-fun m!7570498 () Bool)

(assert (=> b!6824875 m!7570498))

(assert (=> b!6823979 d!2146063))

(declare-fun d!2146065 () Bool)

(assert (=> d!2146065 (= (flatMap!2120 z!1189 lambda!385481) (choose!50889 z!1189 lambda!385481))))

(declare-fun bs!1823488 () Bool)

(assert (= bs!1823488 d!2146065))

(declare-fun m!7570500 () Bool)

(assert (=> bs!1823488 m!7570500))

(assert (=> b!6824000 d!2146065))

(declare-fun b!6824876 () Bool)

(declare-fun e!4117286 () (InoxSet Context!12046))

(declare-fun call!621158 () (InoxSet Context!12046))

(assert (=> b!6824876 (= e!4117286 ((_ map or) call!621158 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))) (h!72540 s!2326))))))

(declare-fun b!6824877 () Bool)

(declare-fun e!4117285 () (InoxSet Context!12046))

(assert (=> b!6824877 (= e!4117285 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6824878 () Bool)

(assert (=> b!6824878 (= e!4117286 e!4117285)))

(declare-fun c!1270300 () Bool)

(assert (=> b!6824878 (= c!1270300 ((_ is Cons!66093) (exprs!6523 (h!72542 zl!343))))))

(declare-fun d!2146067 () Bool)

(declare-fun c!1270299 () Bool)

(declare-fun e!4117284 () Bool)

(assert (=> d!2146067 (= c!1270299 e!4117284)))

(declare-fun res!2787621 () Bool)

(assert (=> d!2146067 (=> (not res!2787621) (not e!4117284))))

(assert (=> d!2146067 (= res!2787621 ((_ is Cons!66093) (exprs!6523 (h!72542 zl!343))))))

(assert (=> d!2146067 (= (derivationStepZipperUp!1793 (h!72542 zl!343) (h!72540 s!2326)) e!4117286)))

(declare-fun b!6824879 () Bool)

(assert (=> b!6824879 (= e!4117284 (nullable!6614 (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6824880 () Bool)

(assert (=> b!6824880 (= e!4117285 call!621158)))

(declare-fun bm!621153 () Bool)

(assert (=> bm!621153 (= call!621158 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (h!72542 zl!343))) (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))) (h!72540 s!2326)))))

(assert (= (and d!2146067 res!2787621) b!6824879))

(assert (= (and d!2146067 c!1270299) b!6824876))

(assert (= (and d!2146067 (not c!1270299)) b!6824878))

(assert (= (and b!6824878 c!1270300) b!6824880))

(assert (= (and b!6824878 (not c!1270300)) b!6824877))

(assert (= (or b!6824876 b!6824880) bm!621153))

(declare-fun m!7570502 () Bool)

(assert (=> b!6824876 m!7570502))

(declare-fun m!7570504 () Bool)

(assert (=> b!6824879 m!7570504))

(declare-fun m!7570506 () Bool)

(assert (=> bm!621153 m!7570506))

(assert (=> b!6824000 d!2146067))

(declare-fun d!2146069 () Bool)

(assert (=> d!2146069 (= (flatMap!2120 z!1189 lambda!385481) (dynLambda!26409 lambda!385481 (h!72542 zl!343)))))

(declare-fun lt!2452262 () Unit!159969)

(assert (=> d!2146069 (= lt!2452262 (choose!50890 z!1189 (h!72542 zl!343) lambda!385481))))

(assert (=> d!2146069 (= z!1189 (store ((as const (Array Context!12046 Bool)) false) (h!72542 zl!343) true))))

(assert (=> d!2146069 (= (lemmaFlatMapOnSingletonSet!1646 z!1189 (h!72542 zl!343) lambda!385481) lt!2452262)))

(declare-fun b_lambda!257421 () Bool)

(assert (=> (not b_lambda!257421) (not d!2146069)))

(declare-fun bs!1823489 () Bool)

(assert (= bs!1823489 d!2146069))

(assert (=> bs!1823489 m!7569682))

(declare-fun m!7570508 () Bool)

(assert (=> bs!1823489 m!7570508))

(declare-fun m!7570510 () Bool)

(assert (=> bs!1823489 m!7570510))

(declare-fun m!7570512 () Bool)

(assert (=> bs!1823489 m!7570512))

(assert (=> b!6824000 d!2146069))

(declare-fun bs!1823490 () Bool)

(declare-fun b!6824890 () Bool)

(assert (= bs!1823490 (and b!6824890 d!2145873)))

(declare-fun lambda!385574 () Int)

(assert (=> bs!1823490 (not (= lambda!385574 lambda!385514))))

(declare-fun bs!1823491 () Bool)

(assert (= bs!1823491 (and b!6824890 d!2145893)))

(assert (=> bs!1823491 (not (= lambda!385574 lambda!385522))))

(declare-fun bs!1823492 () Bool)

(assert (= bs!1823492 (and b!6824890 d!2145941)))

(assert (=> bs!1823492 (not (= lambda!385574 lambda!385537))))

(declare-fun bs!1823493 () Bool)

(assert (= bs!1823493 (and b!6824890 b!6824003)))

(assert (=> bs!1823493 (not (= lambda!385574 lambda!385480))))

(assert (=> bs!1823490 (not (= lambda!385574 lambda!385515))))

(assert (=> bs!1823491 (= (and (= (reg!16968 lt!2452072) (reg!16968 r!7292)) (= lt!2452072 (Star!16639 (reg!16968 r!7292)))) (= lambda!385574 lambda!385525))))

(declare-fun bs!1823494 () Bool)

(assert (= bs!1823494 (and b!6824890 b!6824659)))

(assert (=> bs!1823494 (not (= lambda!385574 lambda!385564))))

(declare-fun bs!1823495 () Bool)

(assert (= bs!1823495 (and b!6824890 b!6824668)))

(assert (=> bs!1823495 (= (and (= (reg!16968 lt!2452072) (reg!16968 r!7292)) (= lt!2452072 r!7292)) (= lambda!385574 lambda!385563))))

(assert (=> bs!1823493 (= (and (= (reg!16968 lt!2452072) (reg!16968 r!7292)) (= lt!2452072 r!7292)) (= lambda!385574 lambda!385479))))

(assert (=> bs!1823493 (not (= lambda!385574 lambda!385478))))

(assert (=> b!6824890 true))

(assert (=> b!6824890 true))

(declare-fun bs!1823496 () Bool)

(declare-fun b!6824881 () Bool)

(assert (= bs!1823496 (and b!6824881 d!2145873)))

(declare-fun lambda!385575 () Int)

(assert (=> bs!1823496 (not (= lambda!385575 lambda!385514))))

(declare-fun bs!1823497 () Bool)

(assert (= bs!1823497 (and b!6824881 d!2145893)))

(assert (=> bs!1823497 (not (= lambda!385575 lambda!385522))))

(declare-fun bs!1823498 () Bool)

(assert (= bs!1823498 (and b!6824881 d!2145941)))

(assert (=> bs!1823498 (not (= lambda!385575 lambda!385537))))

(declare-fun bs!1823499 () Bool)

(assert (= bs!1823499 (and b!6824881 b!6824003)))

(assert (=> bs!1823499 (= (and (= (regOne!33790 lt!2452072) (reg!16968 r!7292)) (= (regTwo!33790 lt!2452072) r!7292)) (= lambda!385575 lambda!385480))))

(assert (=> bs!1823496 (= (and (= (regOne!33790 lt!2452072) (reg!16968 r!7292)) (= (regTwo!33790 lt!2452072) r!7292)) (= lambda!385575 lambda!385515))))

(assert (=> bs!1823497 (not (= lambda!385575 lambda!385525))))

(declare-fun bs!1823500 () Bool)

(assert (= bs!1823500 (and b!6824881 b!6824659)))

(assert (=> bs!1823500 (= (and (= (regOne!33790 lt!2452072) (regOne!33790 r!7292)) (= (regTwo!33790 lt!2452072) (regTwo!33790 r!7292))) (= lambda!385575 lambda!385564))))

(declare-fun bs!1823501 () Bool)

(assert (= bs!1823501 (and b!6824881 b!6824890)))

(assert (=> bs!1823501 (not (= lambda!385575 lambda!385574))))

(declare-fun bs!1823502 () Bool)

(assert (= bs!1823502 (and b!6824881 b!6824668)))

(assert (=> bs!1823502 (not (= lambda!385575 lambda!385563))))

(assert (=> bs!1823499 (not (= lambda!385575 lambda!385479))))

(assert (=> bs!1823499 (not (= lambda!385575 lambda!385478))))

(assert (=> b!6824881 true))

(assert (=> b!6824881 true))

(declare-fun e!4117292 () Bool)

(declare-fun call!621159 () Bool)

(assert (=> b!6824881 (= e!4117292 call!621159)))

(declare-fun b!6824882 () Bool)

(declare-fun res!2787624 () Bool)

(declare-fun e!4117288 () Bool)

(assert (=> b!6824882 (=> res!2787624 e!4117288)))

(declare-fun call!621160 () Bool)

(assert (=> b!6824882 (= res!2787624 call!621160)))

(assert (=> b!6824882 (= e!4117292 e!4117288)))

(declare-fun b!6824883 () Bool)

(declare-fun e!4117287 () Bool)

(declare-fun e!4117293 () Bool)

(assert (=> b!6824883 (= e!4117287 e!4117293)))

(declare-fun res!2787622 () Bool)

(assert (=> b!6824883 (= res!2787622 (not ((_ is EmptyLang!16639) lt!2452072)))))

(assert (=> b!6824883 (=> (not res!2787622) (not e!4117293))))

(declare-fun b!6824884 () Bool)

(declare-fun e!4117289 () Bool)

(assert (=> b!6824884 (= e!4117289 (matchRSpec!3740 (regTwo!33791 lt!2452072) s!2326))))

(declare-fun b!6824885 () Bool)

(declare-fun e!4117290 () Bool)

(assert (=> b!6824885 (= e!4117290 (= s!2326 (Cons!66092 (c!1270055 lt!2452072) Nil!66092)))))

(declare-fun b!6824886 () Bool)

(declare-fun c!1270302 () Bool)

(assert (=> b!6824886 (= c!1270302 ((_ is Union!16639) lt!2452072))))

(declare-fun e!4117291 () Bool)

(assert (=> b!6824886 (= e!4117290 e!4117291)))

(declare-fun b!6824887 () Bool)

(declare-fun c!1270304 () Bool)

(assert (=> b!6824887 (= c!1270304 ((_ is ElementMatch!16639) lt!2452072))))

(assert (=> b!6824887 (= e!4117293 e!4117290)))

(declare-fun d!2146071 () Bool)

(declare-fun c!1270303 () Bool)

(assert (=> d!2146071 (= c!1270303 ((_ is EmptyExpr!16639) lt!2452072))))

(assert (=> d!2146071 (= (matchRSpec!3740 lt!2452072 s!2326) e!4117287)))

(declare-fun b!6824888 () Bool)

(assert (=> b!6824888 (= e!4117291 e!4117289)))

(declare-fun res!2787623 () Bool)

(assert (=> b!6824888 (= res!2787623 (matchRSpec!3740 (regOne!33791 lt!2452072) s!2326))))

(assert (=> b!6824888 (=> res!2787623 e!4117289)))

(declare-fun b!6824889 () Bool)

(assert (=> b!6824889 (= e!4117287 call!621160)))

(declare-fun bm!621154 () Bool)

(assert (=> bm!621154 (= call!621160 (isEmpty!38481 s!2326))))

(declare-fun bm!621155 () Bool)

(declare-fun c!1270301 () Bool)

(assert (=> bm!621155 (= call!621159 (Exists!3707 (ite c!1270301 lambda!385574 lambda!385575)))))

(assert (=> b!6824890 (= e!4117288 call!621159)))

(declare-fun b!6824891 () Bool)

(assert (=> b!6824891 (= e!4117291 e!4117292)))

(assert (=> b!6824891 (= c!1270301 ((_ is Star!16639) lt!2452072))))

(assert (= (and d!2146071 c!1270303) b!6824889))

(assert (= (and d!2146071 (not c!1270303)) b!6824883))

(assert (= (and b!6824883 res!2787622) b!6824887))

(assert (= (and b!6824887 c!1270304) b!6824885))

(assert (= (and b!6824887 (not c!1270304)) b!6824886))

(assert (= (and b!6824886 c!1270302) b!6824888))

(assert (= (and b!6824886 (not c!1270302)) b!6824891))

(assert (= (and b!6824888 (not res!2787623)) b!6824884))

(assert (= (and b!6824891 c!1270301) b!6824882))

(assert (= (and b!6824891 (not c!1270301)) b!6824881))

(assert (= (and b!6824882 (not res!2787624)) b!6824890))

(assert (= (or b!6824890 b!6824881) bm!621155))

(assert (= (or b!6824889 b!6824882) bm!621154))

(declare-fun m!7570514 () Bool)

(assert (=> b!6824884 m!7570514))

(declare-fun m!7570516 () Bool)

(assert (=> b!6824888 m!7570516))

(assert (=> bm!621154 m!7569622))

(declare-fun m!7570518 () Bool)

(assert (=> bm!621155 m!7570518))

(assert (=> b!6823975 d!2146071))

(declare-fun b!6824892 () Bool)

(declare-fun e!4117294 () Bool)

(assert (=> b!6824892 (= e!4117294 (= (head!13681 s!2326) (c!1270055 lt!2452072)))))

(declare-fun bm!621156 () Bool)

(declare-fun call!621161 () Bool)

(assert (=> bm!621156 (= call!621161 (isEmpty!38481 s!2326))))

(declare-fun b!6824893 () Bool)

(declare-fun e!4117295 () Bool)

(declare-fun lt!2452263 () Bool)

(assert (=> b!6824893 (= e!4117295 (not lt!2452263))))

(declare-fun b!6824894 () Bool)

(declare-fun e!4117298 () Bool)

(assert (=> b!6824894 (= e!4117298 e!4117295)))

(declare-fun c!1270305 () Bool)

(assert (=> b!6824894 (= c!1270305 ((_ is EmptyLang!16639) lt!2452072))))

(declare-fun b!6824895 () Bool)

(declare-fun res!2787625 () Bool)

(declare-fun e!4117300 () Bool)

(assert (=> b!6824895 (=> res!2787625 e!4117300)))

(assert (=> b!6824895 (= res!2787625 (not ((_ is ElementMatch!16639) lt!2452072)))))

(assert (=> b!6824895 (= e!4117295 e!4117300)))

(declare-fun b!6824896 () Bool)

(declare-fun e!4117299 () Bool)

(assert (=> b!6824896 (= e!4117300 e!4117299)))

(declare-fun res!2787631 () Bool)

(assert (=> b!6824896 (=> (not res!2787631) (not e!4117299))))

(assert (=> b!6824896 (= res!2787631 (not lt!2452263))))

(declare-fun d!2146073 () Bool)

(assert (=> d!2146073 e!4117298))

(declare-fun c!1270307 () Bool)

(assert (=> d!2146073 (= c!1270307 ((_ is EmptyExpr!16639) lt!2452072))))

(declare-fun e!4117296 () Bool)

(assert (=> d!2146073 (= lt!2452263 e!4117296)))

(declare-fun c!1270306 () Bool)

(assert (=> d!2146073 (= c!1270306 (isEmpty!38481 s!2326))))

(assert (=> d!2146073 (validRegex!8375 lt!2452072)))

(assert (=> d!2146073 (= (matchR!8822 lt!2452072 s!2326) lt!2452263)))

(declare-fun b!6824897 () Bool)

(declare-fun e!4117297 () Bool)

(assert (=> b!6824897 (= e!4117297 (not (= (head!13681 s!2326) (c!1270055 lt!2452072))))))

(declare-fun b!6824898 () Bool)

(assert (=> b!6824898 (= e!4117299 e!4117297)))

(declare-fun res!2787628 () Bool)

(assert (=> b!6824898 (=> res!2787628 e!4117297)))

(assert (=> b!6824898 (= res!2787628 call!621161)))

(declare-fun b!6824899 () Bool)

(assert (=> b!6824899 (= e!4117296 (matchR!8822 (derivativeStep!5299 lt!2452072 (head!13681 s!2326)) (tail!12766 s!2326)))))

(declare-fun b!6824900 () Bool)

(declare-fun res!2787632 () Bool)

(assert (=> b!6824900 (=> res!2787632 e!4117297)))

(assert (=> b!6824900 (= res!2787632 (not (isEmpty!38481 (tail!12766 s!2326))))))

(declare-fun b!6824901 () Bool)

(declare-fun res!2787629 () Bool)

(assert (=> b!6824901 (=> res!2787629 e!4117300)))

(assert (=> b!6824901 (= res!2787629 e!4117294)))

(declare-fun res!2787626 () Bool)

(assert (=> b!6824901 (=> (not res!2787626) (not e!4117294))))

(assert (=> b!6824901 (= res!2787626 lt!2452263)))

(declare-fun b!6824902 () Bool)

(assert (=> b!6824902 (= e!4117298 (= lt!2452263 call!621161))))

(declare-fun b!6824903 () Bool)

(declare-fun res!2787630 () Bool)

(assert (=> b!6824903 (=> (not res!2787630) (not e!4117294))))

(assert (=> b!6824903 (= res!2787630 (isEmpty!38481 (tail!12766 s!2326)))))

(declare-fun b!6824904 () Bool)

(declare-fun res!2787627 () Bool)

(assert (=> b!6824904 (=> (not res!2787627) (not e!4117294))))

(assert (=> b!6824904 (= res!2787627 (not call!621161))))

(declare-fun b!6824905 () Bool)

(assert (=> b!6824905 (= e!4117296 (nullable!6614 lt!2452072))))

(assert (= (and d!2146073 c!1270306) b!6824905))

(assert (= (and d!2146073 (not c!1270306)) b!6824899))

(assert (= (and d!2146073 c!1270307) b!6824902))

(assert (= (and d!2146073 (not c!1270307)) b!6824894))

(assert (= (and b!6824894 c!1270305) b!6824893))

(assert (= (and b!6824894 (not c!1270305)) b!6824895))

(assert (= (and b!6824895 (not res!2787625)) b!6824901))

(assert (= (and b!6824901 res!2787626) b!6824904))

(assert (= (and b!6824904 res!2787627) b!6824903))

(assert (= (and b!6824903 res!2787630) b!6824892))

(assert (= (and b!6824901 (not res!2787629)) b!6824896))

(assert (= (and b!6824896 res!2787631) b!6824898))

(assert (= (and b!6824898 (not res!2787628)) b!6824900))

(assert (= (and b!6824900 (not res!2787632)) b!6824897))

(assert (= (or b!6824902 b!6824898 b!6824904) bm!621156))

(assert (=> b!6824892 m!7569754))

(declare-fun m!7570520 () Bool)

(assert (=> b!6824905 m!7570520))

(assert (=> b!6824899 m!7569754))

(assert (=> b!6824899 m!7569754))

(declare-fun m!7570522 () Bool)

(assert (=> b!6824899 m!7570522))

(assert (=> b!6824899 m!7569758))

(assert (=> b!6824899 m!7570522))

(assert (=> b!6824899 m!7569758))

(declare-fun m!7570524 () Bool)

(assert (=> b!6824899 m!7570524))

(assert (=> bm!621156 m!7569622))

(assert (=> b!6824903 m!7569758))

(assert (=> b!6824903 m!7569758))

(assert (=> b!6824903 m!7570386))

(assert (=> d!2146073 m!7569622))

(declare-fun m!7570526 () Bool)

(assert (=> d!2146073 m!7570526))

(assert (=> b!6824897 m!7569754))

(assert (=> b!6824900 m!7569758))

(assert (=> b!6824900 m!7569758))

(assert (=> b!6824900 m!7570386))

(assert (=> b!6823975 d!2146073))

(declare-fun d!2146075 () Bool)

(assert (=> d!2146075 (= (matchR!8822 lt!2452072 s!2326) (matchRSpec!3740 lt!2452072 s!2326))))

(declare-fun lt!2452264 () Unit!159969)

(assert (=> d!2146075 (= lt!2452264 (choose!50893 lt!2452072 s!2326))))

(assert (=> d!2146075 (validRegex!8375 lt!2452072)))

(assert (=> d!2146075 (= (mainMatchTheorem!3740 lt!2452072 s!2326) lt!2452264)))

(declare-fun bs!1823503 () Bool)

(assert (= bs!1823503 d!2146075))

(assert (=> bs!1823503 m!7569616))

(assert (=> bs!1823503 m!7569614))

(declare-fun m!7570528 () Bool)

(assert (=> bs!1823503 m!7570528))

(assert (=> bs!1823503 m!7570526))

(assert (=> b!6823975 d!2146075))

(declare-fun bs!1823504 () Bool)

(declare-fun d!2146077 () Bool)

(assert (= bs!1823504 (and d!2146077 b!6823997)))

(declare-fun lambda!385576 () Int)

(assert (=> bs!1823504 (= lambda!385576 lambda!385483)))

(declare-fun bs!1823505 () Bool)

(assert (= bs!1823505 (and d!2146077 d!2146049)))

(assert (=> bs!1823505 (= lambda!385576 lambda!385570)))

(declare-fun bs!1823506 () Bool)

(assert (= bs!1823506 (and d!2146077 d!2146051)))

(assert (=> bs!1823506 (= lambda!385576 lambda!385573)))

(declare-fun bs!1823507 () Bool)

(assert (= bs!1823507 (and d!2146077 d!2146037)))

(assert (=> bs!1823507 (= lambda!385576 lambda!385567)))

(declare-fun bs!1823508 () Bool)

(assert (= bs!1823508 (and d!2146077 d!2145995)))

(assert (=> bs!1823508 (= lambda!385576 lambda!385554)))

(declare-fun bs!1823509 () Bool)

(assert (= bs!1823509 (and d!2146077 d!2145867)))

(assert (=> bs!1823509 (= lambda!385576 lambda!385508)))

(assert (=> d!2146077 (= (inv!84844 setElem!46837) (forall!15827 (exprs!6523 setElem!46837) lambda!385576))))

(declare-fun bs!1823510 () Bool)

(assert (= bs!1823510 d!2146077))

(declare-fun m!7570530 () Bool)

(assert (=> bs!1823510 m!7570530))

(assert (=> setNonEmpty!46837 d!2146077))

(declare-fun d!2146079 () Bool)

(declare-fun c!1270308 () Bool)

(assert (=> d!2146079 (= c!1270308 (isEmpty!38481 s!2326))))

(declare-fun e!4117301 () Bool)

(assert (=> d!2146079 (= (matchZipper!2625 z!1189 s!2326) e!4117301)))

(declare-fun b!6824906 () Bool)

(assert (=> b!6824906 (= e!4117301 (nullableZipper!2342 z!1189))))

(declare-fun b!6824907 () Bool)

(assert (=> b!6824907 (= e!4117301 (matchZipper!2625 (derivationStepZipper!2583 z!1189 (head!13681 s!2326)) (tail!12766 s!2326)))))

(assert (= (and d!2146079 c!1270308) b!6824906))

(assert (= (and d!2146079 (not c!1270308)) b!6824907))

(assert (=> d!2146079 m!7569622))

(declare-fun m!7570532 () Bool)

(assert (=> b!6824906 m!7570532))

(assert (=> b!6824907 m!7569754))

(assert (=> b!6824907 m!7569754))

(declare-fun m!7570534 () Bool)

(assert (=> b!6824907 m!7570534))

(assert (=> b!6824907 m!7569758))

(assert (=> b!6824907 m!7570534))

(assert (=> b!6824907 m!7569758))

(declare-fun m!7570536 () Bool)

(assert (=> b!6824907 m!7570536))

(assert (=> b!6823976 d!2146079))

(declare-fun d!2146081 () Bool)

(declare-fun choose!50902 ((InoxSet Context!12046) Int) (InoxSet Context!12046))

(assert (=> d!2146081 (= (map!15119 lt!2452091 lambda!385482) (choose!50902 lt!2452091 lambda!385482))))

(declare-fun bs!1823511 () Bool)

(assert (= bs!1823511 d!2146081))

(declare-fun m!7570538 () Bool)

(assert (=> bs!1823511 m!7570538))

(assert (=> b!6823997 d!2146081))

(declare-fun d!2146083 () Bool)

(declare-fun dynLambda!26410 (Int Context!12046) Context!12046)

(assert (=> d!2146083 (= (map!15119 lt!2452091 lambda!385482) (store ((as const (Array Context!12046 Bool)) false) (dynLambda!26410 lambda!385482 lt!2452067) true))))

(declare-fun lt!2452267 () Unit!159969)

(declare-fun choose!50903 ((InoxSet Context!12046) Context!12046 Int) Unit!159969)

(assert (=> d!2146083 (= lt!2452267 (choose!50903 lt!2452091 lt!2452067 lambda!385482))))

(assert (=> d!2146083 (= lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452067 true))))

(assert (=> d!2146083 (= (lemmaMapOnSingletonSet!274 lt!2452091 lt!2452067 lambda!385482) lt!2452267)))

(declare-fun b_lambda!257423 () Bool)

(assert (=> (not b_lambda!257423) (not d!2146083)))

(declare-fun bs!1823512 () Bool)

(assert (= bs!1823512 d!2146083))

(declare-fun m!7570540 () Bool)

(assert (=> bs!1823512 m!7570540))

(declare-fun m!7570542 () Bool)

(assert (=> bs!1823512 m!7570542))

(assert (=> bs!1823512 m!7569668))

(assert (=> bs!1823512 m!7569710))

(assert (=> bs!1823512 m!7570540))

(declare-fun m!7570544 () Bool)

(assert (=> bs!1823512 m!7570544))

(assert (=> b!6823997 d!2146083))

(declare-fun bs!1823513 () Bool)

(declare-fun d!2146085 () Bool)

(assert (= bs!1823513 (and d!2146085 b!6823997)))

(declare-fun lambda!385581 () Int)

(assert (=> bs!1823513 (= (= (exprs!6523 lt!2452076) lt!2452065) (= lambda!385581 lambda!385482))))

(assert (=> d!2146085 true))

(assert (=> d!2146085 (= (appendTo!244 lt!2452091 lt!2452076) (map!15119 lt!2452091 lambda!385581))))

(declare-fun bs!1823514 () Bool)

(assert (= bs!1823514 d!2146085))

(declare-fun m!7570546 () Bool)

(assert (=> bs!1823514 m!7570546))

(assert (=> b!6823997 d!2146085))

(assert (=> b!6823997 d!2146039))

(assert (=> b!6823997 d!2146043))

(declare-fun e!4117304 () Bool)

(assert (=> b!6823998 (= tp!1867841 e!4117304)))

(declare-fun b!6824923 () Bool)

(declare-fun tp!1867913 () Bool)

(declare-fun tp!1867914 () Bool)

(assert (=> b!6824923 (= e!4117304 (and tp!1867913 tp!1867914))))

(declare-fun b!6824921 () Bool)

(declare-fun tp!1867912 () Bool)

(declare-fun tp!1867915 () Bool)

(assert (=> b!6824921 (= e!4117304 (and tp!1867912 tp!1867915))))

(declare-fun b!6824920 () Bool)

(assert (=> b!6824920 (= e!4117304 tp_is_empty!42531)))

(declare-fun b!6824922 () Bool)

(declare-fun tp!1867916 () Bool)

(assert (=> b!6824922 (= e!4117304 tp!1867916)))

(assert (= (and b!6823998 ((_ is ElementMatch!16639) (regOne!33791 r!7292))) b!6824920))

(assert (= (and b!6823998 ((_ is Concat!25484) (regOne!33791 r!7292))) b!6824921))

(assert (= (and b!6823998 ((_ is Star!16639) (regOne!33791 r!7292))) b!6824922))

(assert (= (and b!6823998 ((_ is Union!16639) (regOne!33791 r!7292))) b!6824923))

(declare-fun e!4117305 () Bool)

(assert (=> b!6823998 (= tp!1867835 e!4117305)))

(declare-fun b!6824927 () Bool)

(declare-fun tp!1867918 () Bool)

(declare-fun tp!1867919 () Bool)

(assert (=> b!6824927 (= e!4117305 (and tp!1867918 tp!1867919))))

(declare-fun b!6824925 () Bool)

(declare-fun tp!1867917 () Bool)

(declare-fun tp!1867920 () Bool)

(assert (=> b!6824925 (= e!4117305 (and tp!1867917 tp!1867920))))

(declare-fun b!6824924 () Bool)

(assert (=> b!6824924 (= e!4117305 tp_is_empty!42531)))

(declare-fun b!6824926 () Bool)

(declare-fun tp!1867921 () Bool)

(assert (=> b!6824926 (= e!4117305 tp!1867921)))

(assert (= (and b!6823998 ((_ is ElementMatch!16639) (regTwo!33791 r!7292))) b!6824924))

(assert (= (and b!6823998 ((_ is Concat!25484) (regTwo!33791 r!7292))) b!6824925))

(assert (= (and b!6823998 ((_ is Star!16639) (regTwo!33791 r!7292))) b!6824926))

(assert (= (and b!6823998 ((_ is Union!16639) (regTwo!33791 r!7292))) b!6824927))

(declare-fun b!6824932 () Bool)

(declare-fun e!4117308 () Bool)

(declare-fun tp!1867926 () Bool)

(declare-fun tp!1867927 () Bool)

(assert (=> b!6824932 (= e!4117308 (and tp!1867926 tp!1867927))))

(assert (=> b!6823978 (= tp!1867836 e!4117308)))

(assert (= (and b!6823978 ((_ is Cons!66093) (exprs!6523 (h!72542 zl!343)))) b!6824932))

(declare-fun e!4117309 () Bool)

(assert (=> b!6823984 (= tp!1867837 e!4117309)))

(declare-fun b!6824936 () Bool)

(declare-fun tp!1867929 () Bool)

(declare-fun tp!1867930 () Bool)

(assert (=> b!6824936 (= e!4117309 (and tp!1867929 tp!1867930))))

(declare-fun b!6824934 () Bool)

(declare-fun tp!1867928 () Bool)

(declare-fun tp!1867931 () Bool)

(assert (=> b!6824934 (= e!4117309 (and tp!1867928 tp!1867931))))

(declare-fun b!6824933 () Bool)

(assert (=> b!6824933 (= e!4117309 tp_is_empty!42531)))

(declare-fun b!6824935 () Bool)

(declare-fun tp!1867932 () Bool)

(assert (=> b!6824935 (= e!4117309 tp!1867932)))

(assert (= (and b!6823984 ((_ is ElementMatch!16639) (regOne!33790 r!7292))) b!6824933))

(assert (= (and b!6823984 ((_ is Concat!25484) (regOne!33790 r!7292))) b!6824934))

(assert (= (and b!6823984 ((_ is Star!16639) (regOne!33790 r!7292))) b!6824935))

(assert (= (and b!6823984 ((_ is Union!16639) (regOne!33790 r!7292))) b!6824936))

(declare-fun e!4117310 () Bool)

(assert (=> b!6823984 (= tp!1867834 e!4117310)))

(declare-fun b!6824940 () Bool)

(declare-fun tp!1867934 () Bool)

(declare-fun tp!1867935 () Bool)

(assert (=> b!6824940 (= e!4117310 (and tp!1867934 tp!1867935))))

(declare-fun b!6824938 () Bool)

(declare-fun tp!1867933 () Bool)

(declare-fun tp!1867936 () Bool)

(assert (=> b!6824938 (= e!4117310 (and tp!1867933 tp!1867936))))

(declare-fun b!6824937 () Bool)

(assert (=> b!6824937 (= e!4117310 tp_is_empty!42531)))

(declare-fun b!6824939 () Bool)

(declare-fun tp!1867937 () Bool)

(assert (=> b!6824939 (= e!4117310 tp!1867937)))

(assert (= (and b!6823984 ((_ is ElementMatch!16639) (regTwo!33790 r!7292))) b!6824937))

(assert (= (and b!6823984 ((_ is Concat!25484) (regTwo!33790 r!7292))) b!6824938))

(assert (= (and b!6823984 ((_ is Star!16639) (regTwo!33790 r!7292))) b!6824939))

(assert (= (and b!6823984 ((_ is Union!16639) (regTwo!33790 r!7292))) b!6824940))

(declare-fun b!6824941 () Bool)

(declare-fun e!4117311 () Bool)

(declare-fun tp!1867938 () Bool)

(declare-fun tp!1867939 () Bool)

(assert (=> b!6824941 (= e!4117311 (and tp!1867938 tp!1867939))))

(assert (=> b!6823990 (= tp!1867838 e!4117311)))

(assert (= (and b!6823990 ((_ is Cons!66093) (exprs!6523 setElem!46837))) b!6824941))

(declare-fun b!6824946 () Bool)

(declare-fun e!4117314 () Bool)

(declare-fun tp!1867942 () Bool)

(assert (=> b!6824946 (= e!4117314 (and tp_is_empty!42531 tp!1867942))))

(assert (=> b!6823986 (= tp!1867843 e!4117314)))

(assert (= (and b!6823986 ((_ is Cons!66092) (t!379955 s!2326))) b!6824946))

(declare-fun e!4117315 () Bool)

(assert (=> b!6823981 (= tp!1867840 e!4117315)))

(declare-fun b!6824950 () Bool)

(declare-fun tp!1867944 () Bool)

(declare-fun tp!1867945 () Bool)

(assert (=> b!6824950 (= e!4117315 (and tp!1867944 tp!1867945))))

(declare-fun b!6824948 () Bool)

(declare-fun tp!1867943 () Bool)

(declare-fun tp!1867946 () Bool)

(assert (=> b!6824948 (= e!4117315 (and tp!1867943 tp!1867946))))

(declare-fun b!6824947 () Bool)

(assert (=> b!6824947 (= e!4117315 tp_is_empty!42531)))

(declare-fun b!6824949 () Bool)

(declare-fun tp!1867947 () Bool)

(assert (=> b!6824949 (= e!4117315 tp!1867947)))

(assert (= (and b!6823981 ((_ is ElementMatch!16639) (reg!16968 r!7292))) b!6824947))

(assert (= (and b!6823981 ((_ is Concat!25484) (reg!16968 r!7292))) b!6824948))

(assert (= (and b!6823981 ((_ is Star!16639) (reg!16968 r!7292))) b!6824949))

(assert (= (and b!6823981 ((_ is Union!16639) (reg!16968 r!7292))) b!6824950))

(declare-fun condSetEmpty!46843 () Bool)

(assert (=> setNonEmpty!46837 (= condSetEmpty!46843 (= setRest!46837 ((as const (Array Context!12046 Bool)) false)))))

(declare-fun setRes!46843 () Bool)

(assert (=> setNonEmpty!46837 (= tp!1867842 setRes!46843)))

(declare-fun setIsEmpty!46843 () Bool)

(assert (=> setIsEmpty!46843 setRes!46843))

(declare-fun tp!1867953 () Bool)

(declare-fun setElem!46843 () Context!12046)

(declare-fun e!4117318 () Bool)

(declare-fun setNonEmpty!46843 () Bool)

(assert (=> setNonEmpty!46843 (= setRes!46843 (and tp!1867953 (inv!84844 setElem!46843) e!4117318))))

(declare-fun setRest!46843 () (InoxSet Context!12046))

(assert (=> setNonEmpty!46843 (= setRest!46837 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) setElem!46843 true) setRest!46843))))

(declare-fun b!6824955 () Bool)

(declare-fun tp!1867952 () Bool)

(assert (=> b!6824955 (= e!4117318 tp!1867952)))

(assert (= (and setNonEmpty!46837 condSetEmpty!46843) setIsEmpty!46843))

(assert (= (and setNonEmpty!46837 (not condSetEmpty!46843)) setNonEmpty!46843))

(assert (= setNonEmpty!46843 b!6824955))

(declare-fun m!7570548 () Bool)

(assert (=> setNonEmpty!46843 m!7570548))

(declare-fun b!6824963 () Bool)

(declare-fun e!4117324 () Bool)

(declare-fun tp!1867958 () Bool)

(assert (=> b!6824963 (= e!4117324 tp!1867958)))

(declare-fun b!6824962 () Bool)

(declare-fun e!4117323 () Bool)

(declare-fun tp!1867959 () Bool)

(assert (=> b!6824962 (= e!4117323 (and (inv!84844 (h!72542 (t!379957 zl!343))) e!4117324 tp!1867959))))

(assert (=> b!6823982 (= tp!1867839 e!4117323)))

(assert (= b!6824962 b!6824963))

(assert (= (and b!6823982 ((_ is Cons!66094) (t!379957 zl!343))) b!6824962))

(declare-fun m!7570550 () Bool)

(assert (=> b!6824962 m!7570550))

(declare-fun b_lambda!257425 () Bool)

(assert (= b_lambda!257405 (or b!6824000 b_lambda!257425)))

(declare-fun bs!1823515 () Bool)

(declare-fun d!2146087 () Bool)

(assert (= bs!1823515 (and d!2146087 b!6824000)))

(assert (=> bs!1823515 (= (dynLambda!26409 lambda!385481 lt!2452076) (derivationStepZipperUp!1793 lt!2452076 (h!72540 s!2326)))))

(assert (=> bs!1823515 m!7569670))

(assert (=> d!2145965 d!2146087))

(declare-fun b_lambda!257427 () Bool)

(assert (= b_lambda!257421 (or b!6824000 b_lambda!257427)))

(declare-fun bs!1823516 () Bool)

(declare-fun d!2146089 () Bool)

(assert (= bs!1823516 (and d!2146089 b!6824000)))

(assert (=> bs!1823516 (= (dynLambda!26409 lambda!385481 (h!72542 zl!343)) (derivationStepZipperUp!1793 (h!72542 zl!343) (h!72540 s!2326)))))

(assert (=> bs!1823516 m!7569684))

(assert (=> d!2146069 d!2146089))

(declare-fun b_lambda!257429 () Bool)

(assert (= b_lambda!257419 (or b!6824000 b_lambda!257429)))

(declare-fun bs!1823517 () Bool)

(declare-fun d!2146091 () Bool)

(assert (= bs!1823517 (and d!2146091 b!6824000)))

(assert (=> bs!1823517 (= (dynLambda!26409 lambda!385481 lt!2452078) (derivationStepZipperUp!1793 lt!2452078 (h!72540 s!2326)))))

(assert (=> bs!1823517 m!7569646))

(assert (=> d!2146059 d!2146091))

(declare-fun b_lambda!257431 () Bool)

(assert (= b_lambda!257423 (or b!6823997 b_lambda!257431)))

(declare-fun bs!1823518 () Bool)

(declare-fun d!2146093 () Bool)

(assert (= bs!1823518 (and d!2146093 b!6823997)))

(declare-fun lt!2452270 () Unit!159969)

(assert (=> bs!1823518 (= lt!2452270 (lemmaConcatPreservesForall!468 (exprs!6523 lt!2452067) lt!2452065 lambda!385483))))

(assert (=> bs!1823518 (= (dynLambda!26410 lambda!385482 lt!2452067) (Context!12047 (++!14824 (exprs!6523 lt!2452067) lt!2452065)))))

(declare-fun m!7570552 () Bool)

(assert (=> bs!1823518 m!7570552))

(declare-fun m!7570554 () Bool)

(assert (=> bs!1823518 m!7570554))

(assert (=> d!2146083 d!2146093))

(declare-fun b_lambda!257433 () Bool)

(assert (= b_lambda!257407 (or b!6824000 b_lambda!257433)))

(declare-fun bs!1823519 () Bool)

(declare-fun d!2146095 () Bool)

(assert (= bs!1823519 (and d!2146095 b!6824000)))

(assert (=> bs!1823519 (= (dynLambda!26409 lambda!385481 lt!2452067) (derivationStepZipperUp!1793 lt!2452067 (h!72540 s!2326)))))

(assert (=> bs!1823519 m!7569680))

(assert (=> d!2145969 d!2146095))

(check-sat (not b!6824922) (not b!6824762) (not bm!621126) (not d!2145965) (not b!6824255) (not b!6824934) (not d!2146021) (not d!2145995) (not d!2145999) (not bm!621155) (not bs!1823515) (not b!6824551) (not d!2145957) (not b!6824507) (not b!6824847) (not d!2146043) (not b!6824884) (not d!2145941) (not b!6824616) (not b!6824949) (not b!6824464) (not b!6824962) (not bm!621142) (not d!2146037) (not d!2146039) (not b!6824946) (not b_lambda!257425) (not b!6824925) (not d!2145821) (not b!6824905) (not b!6824875) (not d!2145817) (not b!6824888) (not b!6824041) (not d!2146047) (not b!6824940) (not b!6824873) (not b!6824554) (not d!2146083) (not b!6824253) (not d!2145849) (not d!2145911) (not b!6824043) (not b!6824843) (not bs!1823517) (not b!6824955) (not b!6824923) (not d!2145827) (not b!6824462) (not d!2146063) (not b_lambda!257429) (not bm!621135) (not d!2146077) (not d!2145915) (not b!6824463) (not b!6824549) (not b!6824040) (not b!6824459) (not d!2145851) (not b!6824761) (not b!6824605) (not b!6824807) (not bs!1823519) (not b!6824604) (not b!6824465) (not d!2146033) (not bm!621120) (not d!2146081) (not d!2145959) (not b_lambda!257427) (not b_lambda!257431) (not b!6824820) (not b!6824926) (not b!6824599) (not b!6824900) (not d!2146051) (not b!6824759) (not b!6824899) (not bm!621153) (not d!2145917) (not b!6824461) (not bm!621156) (not b!6824897) (not b!6824804) (not bm!621131) (not b!6824817) (not b!6824258) (not d!2146045) (not d!2145867) (not b!6824907) (not bm!621106) (not bs!1823516) (not b!6824816) (not bm!621132) (not b!6824848) (not d!2145893) (not b!6824852) (not b!6824939) (not b!6824903) (not bm!621146) (not d!2146073) (not d!2145969) (not d!2146079) (not setNonEmpty!46843) (not b!6824936) (not b!6824809) (not b!6824615) (not bm!621148) (not bm!621145) (not b!6824767) (not b!6824500) (not b!6824256) (not d!2145843) (not b!6824935) (not b!6824600) (not b!6824844) (not b!6824666) (not b!6824602) tp_is_empty!42531 (not b!6824495) (not b!6824598) (not d!2145873) (not b!6824814) (not b!6824921) (not b!6824876) (not b!6824790) (not bm!621154) (not b!6824906) (not b_lambda!257433) (not b!6824754) (not d!2145871) (not b!6824822) (not b!6824868) (not d!2146061) (not b!6824110) (not b!6824870) (not d!2145825) (not b!6824927) (not b!6824846) (not b!6824938) (not bm!621152) (not b!6824850) (not bm!621122) (not d!2145819) (not b!6824892) (not b!6824963) (not b!6824950) (not d!2145869) (not d!2146085) (not d!2146069) (not b!6824948) (not b!6824879) (not b!6824808) (not d!2146055) (not bm!621149) (not b!6824042) (not b!6824261) (not b!6824596) (not b!6824805) (not d!2145975) (not b!6824932) (not d!2145993) (not b!6824601) (not b!6824941) (not d!2145977) (not d!2146049) (not bs!1823518) (not b!6824603) (not b!6824498) (not b!6824503) (not b!6824257) (not d!2146065) (not b!6824765) (not d!2145997) (not bm!621144) (not d!2145963) (not b!6824111) (not bm!621107) (not d!2146075) (not b!6824857) (not d!2145831) (not d!2146041) (not b!6824662) (not d!2146059) (not bm!621123))
(check-sat)
(get-model)

(declare-fun bs!1823528 () Bool)

(declare-fun b!6825030 () Bool)

(assert (= bs!1823528 (and b!6825030 d!2145873)))

(declare-fun lambda!385586 () Int)

(assert (=> bs!1823528 (not (= lambda!385586 lambda!385514))))

(declare-fun bs!1823529 () Bool)

(assert (= bs!1823529 (and b!6825030 d!2145893)))

(assert (=> bs!1823529 (not (= lambda!385586 lambda!385522))))

(declare-fun bs!1823530 () Bool)

(assert (= bs!1823530 (and b!6825030 b!6824881)))

(assert (=> bs!1823530 (not (= lambda!385586 lambda!385575))))

(declare-fun bs!1823531 () Bool)

(assert (= bs!1823531 (and b!6825030 d!2145941)))

(assert (=> bs!1823531 (not (= lambda!385586 lambda!385537))))

(declare-fun bs!1823532 () Bool)

(assert (= bs!1823532 (and b!6825030 b!6824003)))

(assert (=> bs!1823532 (not (= lambda!385586 lambda!385480))))

(assert (=> bs!1823528 (not (= lambda!385586 lambda!385515))))

(assert (=> bs!1823529 (= (and (= (reg!16968 (regOne!33791 lt!2452072)) (reg!16968 r!7292)) (= (regOne!33791 lt!2452072) (Star!16639 (reg!16968 r!7292)))) (= lambda!385586 lambda!385525))))

(declare-fun bs!1823533 () Bool)

(assert (= bs!1823533 (and b!6825030 b!6824659)))

(assert (=> bs!1823533 (not (= lambda!385586 lambda!385564))))

(declare-fun bs!1823534 () Bool)

(assert (= bs!1823534 (and b!6825030 b!6824890)))

(assert (=> bs!1823534 (= (and (= (reg!16968 (regOne!33791 lt!2452072)) (reg!16968 lt!2452072)) (= (regOne!33791 lt!2452072) lt!2452072)) (= lambda!385586 lambda!385574))))

(declare-fun bs!1823535 () Bool)

(assert (= bs!1823535 (and b!6825030 b!6824668)))

(assert (=> bs!1823535 (= (and (= (reg!16968 (regOne!33791 lt!2452072)) (reg!16968 r!7292)) (= (regOne!33791 lt!2452072) r!7292)) (= lambda!385586 lambda!385563))))

(assert (=> bs!1823532 (= (and (= (reg!16968 (regOne!33791 lt!2452072)) (reg!16968 r!7292)) (= (regOne!33791 lt!2452072) r!7292)) (= lambda!385586 lambda!385479))))

(assert (=> bs!1823532 (not (= lambda!385586 lambda!385478))))

(assert (=> b!6825030 true))

(assert (=> b!6825030 true))

(declare-fun bs!1823536 () Bool)

(declare-fun b!6825021 () Bool)

(assert (= bs!1823536 (and b!6825021 b!6825030)))

(declare-fun lambda!385587 () Int)

(assert (=> bs!1823536 (not (= lambda!385587 lambda!385586))))

(declare-fun bs!1823537 () Bool)

(assert (= bs!1823537 (and b!6825021 d!2145873)))

(assert (=> bs!1823537 (not (= lambda!385587 lambda!385514))))

(declare-fun bs!1823538 () Bool)

(assert (= bs!1823538 (and b!6825021 d!2145893)))

(assert (=> bs!1823538 (not (= lambda!385587 lambda!385522))))

(declare-fun bs!1823539 () Bool)

(assert (= bs!1823539 (and b!6825021 b!6824881)))

(assert (=> bs!1823539 (= (and (= (regOne!33790 (regOne!33791 lt!2452072)) (regOne!33790 lt!2452072)) (= (regTwo!33790 (regOne!33791 lt!2452072)) (regTwo!33790 lt!2452072))) (= lambda!385587 lambda!385575))))

(declare-fun bs!1823540 () Bool)

(assert (= bs!1823540 (and b!6825021 d!2145941)))

(assert (=> bs!1823540 (not (= lambda!385587 lambda!385537))))

(declare-fun bs!1823541 () Bool)

(assert (= bs!1823541 (and b!6825021 b!6824003)))

(assert (=> bs!1823541 (= (and (= (regOne!33790 (regOne!33791 lt!2452072)) (reg!16968 r!7292)) (= (regTwo!33790 (regOne!33791 lt!2452072)) r!7292)) (= lambda!385587 lambda!385480))))

(assert (=> bs!1823537 (= (and (= (regOne!33790 (regOne!33791 lt!2452072)) (reg!16968 r!7292)) (= (regTwo!33790 (regOne!33791 lt!2452072)) r!7292)) (= lambda!385587 lambda!385515))))

(assert (=> bs!1823538 (not (= lambda!385587 lambda!385525))))

(declare-fun bs!1823542 () Bool)

(assert (= bs!1823542 (and b!6825021 b!6824659)))

(assert (=> bs!1823542 (= (and (= (regOne!33790 (regOne!33791 lt!2452072)) (regOne!33790 r!7292)) (= (regTwo!33790 (regOne!33791 lt!2452072)) (regTwo!33790 r!7292))) (= lambda!385587 lambda!385564))))

(declare-fun bs!1823543 () Bool)

(assert (= bs!1823543 (and b!6825021 b!6824890)))

(assert (=> bs!1823543 (not (= lambda!385587 lambda!385574))))

(declare-fun bs!1823544 () Bool)

(assert (= bs!1823544 (and b!6825021 b!6824668)))

(assert (=> bs!1823544 (not (= lambda!385587 lambda!385563))))

(assert (=> bs!1823541 (not (= lambda!385587 lambda!385479))))

(assert (=> bs!1823541 (not (= lambda!385587 lambda!385478))))

(assert (=> b!6825021 true))

(assert (=> b!6825021 true))

(declare-fun e!4117369 () Bool)

(declare-fun call!621175 () Bool)

(assert (=> b!6825021 (= e!4117369 call!621175)))

(declare-fun b!6825022 () Bool)

(declare-fun res!2787661 () Bool)

(declare-fun e!4117365 () Bool)

(assert (=> b!6825022 (=> res!2787661 e!4117365)))

(declare-fun call!621176 () Bool)

(assert (=> b!6825022 (= res!2787661 call!621176)))

(assert (=> b!6825022 (= e!4117369 e!4117365)))

(declare-fun b!6825023 () Bool)

(declare-fun e!4117364 () Bool)

(declare-fun e!4117370 () Bool)

(assert (=> b!6825023 (= e!4117364 e!4117370)))

(declare-fun res!2787659 () Bool)

(assert (=> b!6825023 (= res!2787659 (not ((_ is EmptyLang!16639) (regOne!33791 lt!2452072))))))

(assert (=> b!6825023 (=> (not res!2787659) (not e!4117370))))

(declare-fun b!6825024 () Bool)

(declare-fun e!4117366 () Bool)

(assert (=> b!6825024 (= e!4117366 (matchRSpec!3740 (regTwo!33791 (regOne!33791 lt!2452072)) s!2326))))

(declare-fun b!6825025 () Bool)

(declare-fun e!4117367 () Bool)

(assert (=> b!6825025 (= e!4117367 (= s!2326 (Cons!66092 (c!1270055 (regOne!33791 lt!2452072)) Nil!66092)))))

(declare-fun b!6825026 () Bool)

(declare-fun c!1270330 () Bool)

(assert (=> b!6825026 (= c!1270330 ((_ is Union!16639) (regOne!33791 lt!2452072)))))

(declare-fun e!4117368 () Bool)

(assert (=> b!6825026 (= e!4117367 e!4117368)))

(declare-fun b!6825027 () Bool)

(declare-fun c!1270332 () Bool)

(assert (=> b!6825027 (= c!1270332 ((_ is ElementMatch!16639) (regOne!33791 lt!2452072)))))

(assert (=> b!6825027 (= e!4117370 e!4117367)))

(declare-fun d!2146149 () Bool)

(declare-fun c!1270331 () Bool)

(assert (=> d!2146149 (= c!1270331 ((_ is EmptyExpr!16639) (regOne!33791 lt!2452072)))))

(assert (=> d!2146149 (= (matchRSpec!3740 (regOne!33791 lt!2452072) s!2326) e!4117364)))

(declare-fun b!6825028 () Bool)

(assert (=> b!6825028 (= e!4117368 e!4117366)))

(declare-fun res!2787660 () Bool)

(assert (=> b!6825028 (= res!2787660 (matchRSpec!3740 (regOne!33791 (regOne!33791 lt!2452072)) s!2326))))

(assert (=> b!6825028 (=> res!2787660 e!4117366)))

(declare-fun b!6825029 () Bool)

(assert (=> b!6825029 (= e!4117364 call!621176)))

(declare-fun bm!621170 () Bool)

(assert (=> bm!621170 (= call!621176 (isEmpty!38481 s!2326))))

(declare-fun c!1270329 () Bool)

(declare-fun bm!621171 () Bool)

(assert (=> bm!621171 (= call!621175 (Exists!3707 (ite c!1270329 lambda!385586 lambda!385587)))))

(assert (=> b!6825030 (= e!4117365 call!621175)))

(declare-fun b!6825031 () Bool)

(assert (=> b!6825031 (= e!4117368 e!4117369)))

(assert (=> b!6825031 (= c!1270329 ((_ is Star!16639) (regOne!33791 lt!2452072)))))

(assert (= (and d!2146149 c!1270331) b!6825029))

(assert (= (and d!2146149 (not c!1270331)) b!6825023))

(assert (= (and b!6825023 res!2787659) b!6825027))

(assert (= (and b!6825027 c!1270332) b!6825025))

(assert (= (and b!6825027 (not c!1270332)) b!6825026))

(assert (= (and b!6825026 c!1270330) b!6825028))

(assert (= (and b!6825026 (not c!1270330)) b!6825031))

(assert (= (and b!6825028 (not res!2787660)) b!6825024))

(assert (= (and b!6825031 c!1270329) b!6825022))

(assert (= (and b!6825031 (not c!1270329)) b!6825021))

(assert (= (and b!6825022 (not res!2787661)) b!6825030))

(assert (= (or b!6825030 b!6825021) bm!621171))

(assert (= (or b!6825029 b!6825022) bm!621170))

(declare-fun m!7570642 () Bool)

(assert (=> b!6825024 m!7570642))

(declare-fun m!7570644 () Bool)

(assert (=> b!6825028 m!7570644))

(assert (=> bm!621170 m!7569622))

(declare-fun m!7570646 () Bool)

(assert (=> bm!621171 m!7570646))

(assert (=> b!6824888 d!2146149))

(declare-fun d!2146161 () Bool)

(assert (=> d!2146161 (= (isDefined!13229 lt!2452139) (not (isEmpty!38484 lt!2452139)))))

(declare-fun bs!1823547 () Bool)

(assert (= bs!1823547 d!2146161))

(declare-fun m!7570648 () Bool)

(assert (=> bs!1823547 m!7570648))

(assert (=> b!6824256 d!2146161))

(declare-fun d!2146163 () Bool)

(assert (=> d!2146163 (= (isEmpty!38486 (tail!12767 (exprs!6523 (h!72542 zl!343)))) ((_ is Nil!66093) (tail!12767 (exprs!6523 (h!72542 zl!343)))))))

(assert (=> b!6824598 d!2146163))

(declare-fun d!2146165 () Bool)

(assert (=> d!2146165 (= (tail!12767 (exprs!6523 (h!72542 zl!343))) (t!379956 (exprs!6523 (h!72542 zl!343))))))

(assert (=> b!6824598 d!2146165))

(declare-fun d!2146167 () Bool)

(declare-fun c!1270340 () Bool)

(assert (=> d!2146167 (= c!1270340 (isEmpty!38481 (tail!12766 s!2326)))))

(declare-fun e!4117382 () Bool)

(assert (=> d!2146167 (= (matchZipper!2625 (derivationStepZipper!2583 lt!2452058 (head!13681 s!2326)) (tail!12766 s!2326)) e!4117382)))

(declare-fun b!6825051 () Bool)

(assert (=> b!6825051 (= e!4117382 (nullableZipper!2342 (derivationStepZipper!2583 lt!2452058 (head!13681 s!2326))))))

(declare-fun b!6825052 () Bool)

(assert (=> b!6825052 (= e!4117382 (matchZipper!2625 (derivationStepZipper!2583 (derivationStepZipper!2583 lt!2452058 (head!13681 s!2326)) (head!13681 (tail!12766 s!2326))) (tail!12766 (tail!12766 s!2326))))))

(assert (= (and d!2146167 c!1270340) b!6825051))

(assert (= (and d!2146167 (not c!1270340)) b!6825052))

(assert (=> d!2146167 m!7569758))

(assert (=> d!2146167 m!7570386))

(assert (=> b!6825051 m!7569756))

(declare-fun m!7570654 () Bool)

(assert (=> b!6825051 m!7570654))

(assert (=> b!6825052 m!7569758))

(declare-fun m!7570658 () Bool)

(assert (=> b!6825052 m!7570658))

(assert (=> b!6825052 m!7569756))

(assert (=> b!6825052 m!7570658))

(declare-fun m!7570662 () Bool)

(assert (=> b!6825052 m!7570662))

(assert (=> b!6825052 m!7569758))

(declare-fun m!7570666 () Bool)

(assert (=> b!6825052 m!7570666))

(assert (=> b!6825052 m!7570662))

(assert (=> b!6825052 m!7570666))

(declare-fun m!7570672 () Bool)

(assert (=> b!6825052 m!7570672))

(assert (=> b!6824041 d!2146167))

(declare-fun bs!1823553 () Bool)

(declare-fun d!2146169 () Bool)

(assert (= bs!1823553 (and d!2146169 b!6824000)))

(declare-fun lambda!385589 () Int)

(assert (=> bs!1823553 (= (= (head!13681 s!2326) (h!72540 s!2326)) (= lambda!385589 lambda!385481))))

(declare-fun bs!1823554 () Bool)

(assert (= bs!1823554 (and d!2146169 d!2145827)))

(assert (=> bs!1823554 (= (= (head!13681 s!2326) (h!72540 s!2326)) (= lambda!385589 lambda!385489))))

(declare-fun bs!1823555 () Bool)

(assert (= bs!1823555 (and d!2146169 d!2145963)))

(assert (=> bs!1823555 (= (= (head!13681 s!2326) (h!72540 s!2326)) (= lambda!385589 lambda!385544))))

(declare-fun bs!1823556 () Bool)

(assert (= bs!1823556 (and d!2146169 d!2145993)))

(assert (=> bs!1823556 (= (= (head!13681 s!2326) (h!72540 s!2326)) (= lambda!385589 lambda!385551))))

(assert (=> d!2146169 true))

(assert (=> d!2146169 (= (derivationStepZipper!2583 lt!2452058 (head!13681 s!2326)) (flatMap!2120 lt!2452058 lambda!385589))))

(declare-fun bs!1823557 () Bool)

(assert (= bs!1823557 d!2146169))

(declare-fun m!7570678 () Bool)

(assert (=> bs!1823557 m!7570678))

(assert (=> b!6824041 d!2146169))

(declare-fun d!2146177 () Bool)

(assert (=> d!2146177 (= (head!13681 s!2326) (h!72540 s!2326))))

(assert (=> b!6824041 d!2146177))

(declare-fun d!2146179 () Bool)

(assert (=> d!2146179 (= (tail!12766 s!2326) (t!379955 s!2326))))

(assert (=> b!6824041 d!2146179))

(declare-fun d!2146183 () Bool)

(assert (=> d!2146183 (= (Exists!3707 (ite c!1270250 lambda!385563 lambda!385564)) (choose!50883 (ite c!1270250 lambda!385563 lambda!385564)))))

(declare-fun bs!1823562 () Bool)

(assert (= bs!1823562 d!2146183))

(declare-fun m!7570684 () Bool)

(assert (=> bs!1823562 m!7570684))

(assert (=> bm!621132 d!2146183))

(declare-fun d!2146187 () Bool)

(declare-fun nullableFct!2511 (Regex!16639) Bool)

(assert (=> d!2146187 (= (nullable!6614 lt!2452072) (nullableFct!2511 lt!2452072))))

(declare-fun bs!1823563 () Bool)

(assert (= bs!1823563 d!2146187))

(declare-fun m!7570686 () Bool)

(assert (=> bs!1823563 m!7570686))

(assert (=> b!6824905 d!2146187))

(declare-fun b!6825064 () Bool)

(declare-fun e!4117389 () Bool)

(declare-fun e!4117392 () Bool)

(assert (=> b!6825064 (= e!4117389 e!4117392)))

(declare-fun c!1270347 () Bool)

(assert (=> b!6825064 (= c!1270347 ((_ is Star!16639) lt!2452216))))

(declare-fun d!2146189 () Bool)

(declare-fun res!2787668 () Bool)

(assert (=> d!2146189 (=> res!2787668 e!4117389)))

(assert (=> d!2146189 (= res!2787668 ((_ is ElementMatch!16639) lt!2452216))))

(assert (=> d!2146189 (= (validRegex!8375 lt!2452216) e!4117389)))

(declare-fun bm!621179 () Bool)

(declare-fun call!621184 () Bool)

(declare-fun c!1270346 () Bool)

(assert (=> bm!621179 (= call!621184 (validRegex!8375 (ite c!1270346 (regOne!33791 lt!2452216) (regOne!33790 lt!2452216))))))

(declare-fun b!6825065 () Bool)

(declare-fun e!4117390 () Bool)

(assert (=> b!6825065 (= e!4117392 e!4117390)))

(assert (=> b!6825065 (= c!1270346 ((_ is Union!16639) lt!2452216))))

(declare-fun b!6825066 () Bool)

(declare-fun e!4117393 () Bool)

(declare-fun call!621185 () Bool)

(assert (=> b!6825066 (= e!4117393 call!621185)))

(declare-fun b!6825067 () Bool)

(declare-fun e!4117391 () Bool)

(declare-fun call!621186 () Bool)

(assert (=> b!6825067 (= e!4117391 call!621186)))

(declare-fun b!6825068 () Bool)

(assert (=> b!6825068 (= e!4117392 e!4117393)))

(declare-fun res!2787670 () Bool)

(assert (=> b!6825068 (= res!2787670 (not (nullable!6614 (reg!16968 lt!2452216))))))

(assert (=> b!6825068 (=> (not res!2787670) (not e!4117393))))

(declare-fun bm!621180 () Bool)

(assert (=> bm!621180 (= call!621186 call!621185)))

(declare-fun b!6825069 () Bool)

(declare-fun res!2787671 () Bool)

(declare-fun e!4117395 () Bool)

(assert (=> b!6825069 (=> res!2787671 e!4117395)))

(assert (=> b!6825069 (= res!2787671 (not ((_ is Concat!25484) lt!2452216)))))

(assert (=> b!6825069 (= e!4117390 e!4117395)))

(declare-fun b!6825070 () Bool)

(declare-fun res!2787672 () Bool)

(assert (=> b!6825070 (=> (not res!2787672) (not e!4117391))))

(assert (=> b!6825070 (= res!2787672 call!621184)))

(assert (=> b!6825070 (= e!4117390 e!4117391)))

(declare-fun b!6825071 () Bool)

(declare-fun e!4117394 () Bool)

(assert (=> b!6825071 (= e!4117394 call!621186)))

(declare-fun b!6825072 () Bool)

(assert (=> b!6825072 (= e!4117395 e!4117394)))

(declare-fun res!2787669 () Bool)

(assert (=> b!6825072 (=> (not res!2787669) (not e!4117394))))

(assert (=> b!6825072 (= res!2787669 call!621184)))

(declare-fun bm!621181 () Bool)

(assert (=> bm!621181 (= call!621185 (validRegex!8375 (ite c!1270347 (reg!16968 lt!2452216) (ite c!1270346 (regTwo!33791 lt!2452216) (regTwo!33790 lt!2452216)))))))

(assert (= (and d!2146189 (not res!2787668)) b!6825064))

(assert (= (and b!6825064 c!1270347) b!6825068))

(assert (= (and b!6825064 (not c!1270347)) b!6825065))

(assert (= (and b!6825068 res!2787670) b!6825066))

(assert (= (and b!6825065 c!1270346) b!6825070))

(assert (= (and b!6825065 (not c!1270346)) b!6825069))

(assert (= (and b!6825070 res!2787672) b!6825067))

(assert (= (and b!6825069 (not res!2787671)) b!6825072))

(assert (= (and b!6825072 res!2787669) b!6825071))

(assert (= (or b!6825067 b!6825071) bm!621180))

(assert (= (or b!6825070 b!6825072) bm!621179))

(assert (= (or b!6825066 bm!621180) bm!621181))

(declare-fun m!7570688 () Bool)

(assert (=> bm!621179 m!7570688))

(declare-fun m!7570690 () Bool)

(assert (=> b!6825068 m!7570690))

(declare-fun m!7570692 () Bool)

(assert (=> bm!621181 m!7570692))

(assert (=> d!2145995 d!2146189))

(declare-fun d!2146191 () Bool)

(declare-fun res!2787677 () Bool)

(declare-fun e!4117401 () Bool)

(assert (=> d!2146191 (=> res!2787677 e!4117401)))

(assert (=> d!2146191 (= res!2787677 ((_ is Nil!66093) (exprs!6523 (h!72542 zl!343))))))

(assert (=> d!2146191 (= (forall!15827 (exprs!6523 (h!72542 zl!343)) lambda!385554) e!4117401)))

(declare-fun b!6825079 () Bool)

(declare-fun e!4117402 () Bool)

(assert (=> b!6825079 (= e!4117401 e!4117402)))

(declare-fun res!2787678 () Bool)

(assert (=> b!6825079 (=> (not res!2787678) (not e!4117402))))

(declare-fun dynLambda!26411 (Int Regex!16639) Bool)

(assert (=> b!6825079 (= res!2787678 (dynLambda!26411 lambda!385554 (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6825080 () Bool)

(assert (=> b!6825080 (= e!4117402 (forall!15827 (t!379956 (exprs!6523 (h!72542 zl!343))) lambda!385554))))

(assert (= (and d!2146191 (not res!2787677)) b!6825079))

(assert (= (and b!6825079 res!2787678) b!6825080))

(declare-fun b_lambda!257437 () Bool)

(assert (=> (not b_lambda!257437) (not b!6825079)))

(declare-fun m!7570716 () Bool)

(assert (=> b!6825079 m!7570716))

(declare-fun m!7570718 () Bool)

(assert (=> b!6825080 m!7570718))

(assert (=> d!2145995 d!2146191))

(declare-fun d!2146201 () Bool)

(declare-fun c!1270351 () Bool)

(assert (=> d!2146201 (= c!1270351 ((_ is Nil!66093) lt!2452245))))

(declare-fun e!4117407 () (InoxSet Regex!16639))

(assert (=> d!2146201 (= (content!12942 lt!2452245) e!4117407)))

(declare-fun b!6825087 () Bool)

(assert (=> b!6825087 (= e!4117407 ((as const (Array Regex!16639 Bool)) false))))

(declare-fun b!6825088 () Bool)

(assert (=> b!6825088 (= e!4117407 ((_ map or) (store ((as const (Array Regex!16639 Bool)) false) (h!72541 lt!2452245) true) (content!12942 (t!379956 lt!2452245))))))

(assert (= (and d!2146201 c!1270351) b!6825087))

(assert (= (and d!2146201 (not c!1270351)) b!6825088))

(declare-fun m!7570730 () Bool)

(assert (=> b!6825088 m!7570730))

(declare-fun m!7570732 () Bool)

(assert (=> b!6825088 m!7570732))

(assert (=> d!2146039 d!2146201))

(declare-fun d!2146211 () Bool)

(declare-fun c!1270352 () Bool)

(assert (=> d!2146211 (= c!1270352 ((_ is Nil!66093) lt!2452077))))

(declare-fun e!4117408 () (InoxSet Regex!16639))

(assert (=> d!2146211 (= (content!12942 lt!2452077) e!4117408)))

(declare-fun b!6825089 () Bool)

(assert (=> b!6825089 (= e!4117408 ((as const (Array Regex!16639 Bool)) false))))

(declare-fun b!6825090 () Bool)

(assert (=> b!6825090 (= e!4117408 ((_ map or) (store ((as const (Array Regex!16639 Bool)) false) (h!72541 lt!2452077) true) (content!12942 (t!379956 lt!2452077))))))

(assert (= (and d!2146211 c!1270352) b!6825089))

(assert (= (and d!2146211 (not c!1270352)) b!6825090))

(declare-fun m!7570734 () Bool)

(assert (=> b!6825090 m!7570734))

(declare-fun m!7570736 () Bool)

(assert (=> b!6825090 m!7570736))

(assert (=> d!2146039 d!2146211))

(declare-fun d!2146213 () Bool)

(declare-fun c!1270353 () Bool)

(assert (=> d!2146213 (= c!1270353 ((_ is Nil!66093) lt!2452065))))

(declare-fun e!4117409 () (InoxSet Regex!16639))

(assert (=> d!2146213 (= (content!12942 lt!2452065) e!4117409)))

(declare-fun b!6825091 () Bool)

(assert (=> b!6825091 (= e!4117409 ((as const (Array Regex!16639 Bool)) false))))

(declare-fun b!6825092 () Bool)

(assert (=> b!6825092 (= e!4117409 ((_ map or) (store ((as const (Array Regex!16639 Bool)) false) (h!72541 lt!2452065) true) (content!12942 (t!379956 lt!2452065))))))

(assert (= (and d!2146213 c!1270353) b!6825091))

(assert (= (and d!2146213 (not c!1270353)) b!6825092))

(declare-fun m!7570738 () Bool)

(assert (=> b!6825092 m!7570738))

(declare-fun m!7570740 () Bool)

(assert (=> b!6825092 m!7570740))

(assert (=> d!2146039 d!2146213))

(assert (=> d!2146033 d!2146021))

(assert (=> d!2146033 d!2146001))

(declare-fun d!2146215 () Bool)

(assert (=> d!2146215 (= (matchR!8822 r!7292 s!2326) (matchRSpec!3740 r!7292 s!2326))))

(assert (=> d!2146215 true))

(declare-fun _$88!5668 () Unit!159969)

(assert (=> d!2146215 (= (choose!50893 r!7292 s!2326) _$88!5668)))

(declare-fun bs!1823571 () Bool)

(assert (= bs!1823571 d!2146215))

(assert (=> bs!1823571 m!7569726))

(assert (=> bs!1823571 m!7569724))

(assert (=> d!2146033 d!2146215))

(assert (=> d!2146033 d!2146035))

(declare-fun d!2146217 () Bool)

(assert (=> d!2146217 (= (isEmpty!38481 lt!2452083) ((_ is Nil!66092) lt!2452083))))

(assert (=> d!2146045 d!2146217))

(declare-fun b!6825093 () Bool)

(declare-fun e!4117410 () Bool)

(declare-fun e!4117413 () Bool)

(assert (=> b!6825093 (= e!4117410 e!4117413)))

(declare-fun c!1270355 () Bool)

(assert (=> b!6825093 (= c!1270355 ((_ is Star!16639) lt!2452260))))

(declare-fun d!2146219 () Bool)

(declare-fun res!2787681 () Bool)

(assert (=> d!2146219 (=> res!2787681 e!4117410)))

(assert (=> d!2146219 (= res!2787681 ((_ is ElementMatch!16639) lt!2452260))))

(assert (=> d!2146219 (= (validRegex!8375 lt!2452260) e!4117410)))

(declare-fun bm!621182 () Bool)

(declare-fun call!621187 () Bool)

(declare-fun c!1270354 () Bool)

(assert (=> bm!621182 (= call!621187 (validRegex!8375 (ite c!1270354 (regOne!33791 lt!2452260) (regOne!33790 lt!2452260))))))

(declare-fun b!6825094 () Bool)

(declare-fun e!4117411 () Bool)

(assert (=> b!6825094 (= e!4117413 e!4117411)))

(assert (=> b!6825094 (= c!1270354 ((_ is Union!16639) lt!2452260))))

(declare-fun b!6825095 () Bool)

(declare-fun e!4117414 () Bool)

(declare-fun call!621188 () Bool)

(assert (=> b!6825095 (= e!4117414 call!621188)))

(declare-fun b!6825096 () Bool)

(declare-fun e!4117412 () Bool)

(declare-fun call!621189 () Bool)

(assert (=> b!6825096 (= e!4117412 call!621189)))

(declare-fun b!6825097 () Bool)

(assert (=> b!6825097 (= e!4117413 e!4117414)))

(declare-fun res!2787683 () Bool)

(assert (=> b!6825097 (= res!2787683 (not (nullable!6614 (reg!16968 lt!2452260))))))

(assert (=> b!6825097 (=> (not res!2787683) (not e!4117414))))

(declare-fun bm!621183 () Bool)

(assert (=> bm!621183 (= call!621189 call!621188)))

(declare-fun b!6825098 () Bool)

(declare-fun res!2787684 () Bool)

(declare-fun e!4117416 () Bool)

(assert (=> b!6825098 (=> res!2787684 e!4117416)))

(assert (=> b!6825098 (= res!2787684 (not ((_ is Concat!25484) lt!2452260)))))

(assert (=> b!6825098 (= e!4117411 e!4117416)))

(declare-fun b!6825099 () Bool)

(declare-fun res!2787685 () Bool)

(assert (=> b!6825099 (=> (not res!2787685) (not e!4117412))))

(assert (=> b!6825099 (= res!2787685 call!621187)))

(assert (=> b!6825099 (= e!4117411 e!4117412)))

(declare-fun b!6825100 () Bool)

(declare-fun e!4117415 () Bool)

(assert (=> b!6825100 (= e!4117415 call!621189)))

(declare-fun b!6825101 () Bool)

(assert (=> b!6825101 (= e!4117416 e!4117415)))

(declare-fun res!2787682 () Bool)

(assert (=> b!6825101 (=> (not res!2787682) (not e!4117415))))

(assert (=> b!6825101 (= res!2787682 call!621187)))

(declare-fun bm!621184 () Bool)

(assert (=> bm!621184 (= call!621188 (validRegex!8375 (ite c!1270355 (reg!16968 lt!2452260) (ite c!1270354 (regTwo!33791 lt!2452260) (regTwo!33790 lt!2452260)))))))

(assert (= (and d!2146219 (not res!2787681)) b!6825093))

(assert (= (and b!6825093 c!1270355) b!6825097))

(assert (= (and b!6825093 (not c!1270355)) b!6825094))

(assert (= (and b!6825097 res!2787683) b!6825095))

(assert (= (and b!6825094 c!1270354) b!6825099))

(assert (= (and b!6825094 (not c!1270354)) b!6825098))

(assert (= (and b!6825099 res!2787685) b!6825096))

(assert (= (and b!6825098 (not res!2787684)) b!6825101))

(assert (= (and b!6825101 res!2787682) b!6825100))

(assert (= (or b!6825096 b!6825100) bm!621183))

(assert (= (or b!6825099 b!6825101) bm!621182))

(assert (= (or b!6825095 bm!621183) bm!621184))

(declare-fun m!7570742 () Bool)

(assert (=> bm!621182 m!7570742))

(declare-fun m!7570744 () Bool)

(assert (=> b!6825097 m!7570744))

(declare-fun m!7570746 () Bool)

(assert (=> bm!621184 m!7570746))

(assert (=> d!2146061 d!2146219))

(assert (=> d!2146061 d!2146049))

(assert (=> d!2146061 d!2146051))

(declare-fun d!2146221 () Bool)

(declare-fun res!2787686 () Bool)

(declare-fun e!4117417 () Bool)

(assert (=> d!2146221 (=> res!2787686 e!4117417)))

(assert (=> d!2146221 (= res!2787686 ((_ is Nil!66093) (++!14824 lt!2452077 lt!2452065)))))

(assert (=> d!2146221 (= (forall!15827 (++!14824 lt!2452077 lt!2452065) lambda!385483) e!4117417)))

(declare-fun b!6825102 () Bool)

(declare-fun e!4117418 () Bool)

(assert (=> b!6825102 (= e!4117417 e!4117418)))

(declare-fun res!2787687 () Bool)

(assert (=> b!6825102 (=> (not res!2787687) (not e!4117418))))

(assert (=> b!6825102 (= res!2787687 (dynLambda!26411 lambda!385483 (h!72541 (++!14824 lt!2452077 lt!2452065))))))

(declare-fun b!6825103 () Bool)

(assert (=> b!6825103 (= e!4117418 (forall!15827 (t!379956 (++!14824 lt!2452077 lt!2452065)) lambda!385483))))

(assert (= (and d!2146221 (not res!2787686)) b!6825102))

(assert (= (and b!6825102 res!2787687) b!6825103))

(declare-fun b_lambda!257441 () Bool)

(assert (=> (not b_lambda!257441) (not b!6825102)))

(declare-fun m!7570748 () Bool)

(assert (=> b!6825102 m!7570748))

(declare-fun m!7570750 () Bool)

(assert (=> b!6825103 m!7570750))

(assert (=> d!2146043 d!2146221))

(assert (=> d!2146043 d!2146039))

(declare-fun d!2146223 () Bool)

(assert (=> d!2146223 (forall!15827 (++!14824 lt!2452077 lt!2452065) lambda!385483)))

(assert (=> d!2146223 true))

(declare-fun _$78!449 () Unit!159969)

(assert (=> d!2146223 (= (choose!50896 lt!2452077 lt!2452065 lambda!385483) _$78!449)))

(declare-fun bs!1823572 () Bool)

(assert (= bs!1823572 d!2146223))

(assert (=> bs!1823572 m!7569660))

(assert (=> bs!1823572 m!7569660))

(assert (=> bs!1823572 m!7570424))

(assert (=> d!2146043 d!2146223))

(declare-fun d!2146225 () Bool)

(declare-fun res!2787688 () Bool)

(declare-fun e!4117419 () Bool)

(assert (=> d!2146225 (=> res!2787688 e!4117419)))

(assert (=> d!2146225 (= res!2787688 ((_ is Nil!66093) lt!2452077))))

(assert (=> d!2146225 (= (forall!15827 lt!2452077 lambda!385483) e!4117419)))

(declare-fun b!6825104 () Bool)

(declare-fun e!4117420 () Bool)

(assert (=> b!6825104 (= e!4117419 e!4117420)))

(declare-fun res!2787689 () Bool)

(assert (=> b!6825104 (=> (not res!2787689) (not e!4117420))))

(assert (=> b!6825104 (= res!2787689 (dynLambda!26411 lambda!385483 (h!72541 lt!2452077)))))

(declare-fun b!6825105 () Bool)

(assert (=> b!6825105 (= e!4117420 (forall!15827 (t!379956 lt!2452077) lambda!385483))))

(assert (= (and d!2146225 (not res!2787688)) b!6825104))

(assert (= (and b!6825104 res!2787689) b!6825105))

(declare-fun b_lambda!257443 () Bool)

(assert (=> (not b_lambda!257443) (not b!6825104)))

(declare-fun m!7570752 () Bool)

(assert (=> b!6825104 m!7570752))

(declare-fun m!7570754 () Bool)

(assert (=> b!6825105 m!7570754))

(assert (=> d!2146043 d!2146225))

(declare-fun d!2146227 () Bool)

(assert (=> d!2146227 true))

(declare-fun setRes!46849 () Bool)

(assert (=> d!2146227 setRes!46849))

(declare-fun condSetEmpty!46849 () Bool)

(declare-fun res!2787696 () (InoxSet Context!12046))

(assert (=> d!2146227 (= condSetEmpty!46849 (= res!2787696 ((as const (Array Context!12046 Bool)) false)))))

(assert (=> d!2146227 (= (choose!50889 lt!2452091 lambda!385481) res!2787696)))

(declare-fun setIsEmpty!46849 () Bool)

(assert (=> setIsEmpty!46849 setRes!46849))

(declare-fun e!4117425 () Bool)

(declare-fun setNonEmpty!46849 () Bool)

(declare-fun tp!1867971 () Bool)

(declare-fun setElem!46849 () Context!12046)

(assert (=> setNonEmpty!46849 (= setRes!46849 (and tp!1867971 (inv!84844 setElem!46849) e!4117425))))

(declare-fun setRest!46849 () (InoxSet Context!12046))

(assert (=> setNonEmpty!46849 (= res!2787696 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) setElem!46849 true) setRest!46849))))

(declare-fun b!6825112 () Bool)

(declare-fun tp!1867970 () Bool)

(assert (=> b!6825112 (= e!4117425 tp!1867970)))

(assert (= (and d!2146227 condSetEmpty!46849) setIsEmpty!46849))

(assert (= (and d!2146227 (not condSetEmpty!46849)) setNonEmpty!46849))

(assert (= setNonEmpty!46849 b!6825112))

(declare-fun m!7570756 () Bool)

(assert (=> setNonEmpty!46849 m!7570756))

(assert (=> d!2145959 d!2146227))

(declare-fun b!6825113 () Bool)

(declare-fun e!4117426 () Bool)

(assert (=> b!6825113 (= e!4117426 (= (head!13681 (tail!12766 s!2326)) (c!1270055 (derivativeStep!5299 r!7292 (head!13681 s!2326)))))))

(declare-fun bm!621185 () Bool)

(declare-fun call!621190 () Bool)

(assert (=> bm!621185 (= call!621190 (isEmpty!38481 (tail!12766 s!2326)))))

(declare-fun b!6825114 () Bool)

(declare-fun e!4117427 () Bool)

(declare-fun lt!2452279 () Bool)

(assert (=> b!6825114 (= e!4117427 (not lt!2452279))))

(declare-fun b!6825115 () Bool)

(declare-fun e!4117430 () Bool)

(assert (=> b!6825115 (= e!4117430 e!4117427)))

(declare-fun c!1270356 () Bool)

(assert (=> b!6825115 (= c!1270356 ((_ is EmptyLang!16639) (derivativeStep!5299 r!7292 (head!13681 s!2326))))))

(declare-fun b!6825116 () Bool)

(declare-fun res!2787697 () Bool)

(declare-fun e!4117432 () Bool)

(assert (=> b!6825116 (=> res!2787697 e!4117432)))

(assert (=> b!6825116 (= res!2787697 (not ((_ is ElementMatch!16639) (derivativeStep!5299 r!7292 (head!13681 s!2326)))))))

(assert (=> b!6825116 (= e!4117427 e!4117432)))

(declare-fun b!6825117 () Bool)

(declare-fun e!4117431 () Bool)

(assert (=> b!6825117 (= e!4117432 e!4117431)))

(declare-fun res!2787703 () Bool)

(assert (=> b!6825117 (=> (not res!2787703) (not e!4117431))))

(assert (=> b!6825117 (= res!2787703 (not lt!2452279))))

(declare-fun d!2146229 () Bool)

(assert (=> d!2146229 e!4117430))

(declare-fun c!1270358 () Bool)

(assert (=> d!2146229 (= c!1270358 ((_ is EmptyExpr!16639) (derivativeStep!5299 r!7292 (head!13681 s!2326))))))

(declare-fun e!4117428 () Bool)

(assert (=> d!2146229 (= lt!2452279 e!4117428)))

(declare-fun c!1270357 () Bool)

(assert (=> d!2146229 (= c!1270357 (isEmpty!38481 (tail!12766 s!2326)))))

(assert (=> d!2146229 (validRegex!8375 (derivativeStep!5299 r!7292 (head!13681 s!2326)))))

(assert (=> d!2146229 (= (matchR!8822 (derivativeStep!5299 r!7292 (head!13681 s!2326)) (tail!12766 s!2326)) lt!2452279)))

(declare-fun b!6825118 () Bool)

(declare-fun e!4117429 () Bool)

(assert (=> b!6825118 (= e!4117429 (not (= (head!13681 (tail!12766 s!2326)) (c!1270055 (derivativeStep!5299 r!7292 (head!13681 s!2326))))))))

(declare-fun b!6825119 () Bool)

(assert (=> b!6825119 (= e!4117431 e!4117429)))

(declare-fun res!2787700 () Bool)

(assert (=> b!6825119 (=> res!2787700 e!4117429)))

(assert (=> b!6825119 (= res!2787700 call!621190)))

(declare-fun b!6825120 () Bool)

(assert (=> b!6825120 (= e!4117428 (matchR!8822 (derivativeStep!5299 (derivativeStep!5299 r!7292 (head!13681 s!2326)) (head!13681 (tail!12766 s!2326))) (tail!12766 (tail!12766 s!2326))))))

(declare-fun b!6825121 () Bool)

(declare-fun res!2787704 () Bool)

(assert (=> b!6825121 (=> res!2787704 e!4117429)))

(assert (=> b!6825121 (= res!2787704 (not (isEmpty!38481 (tail!12766 (tail!12766 s!2326)))))))

(declare-fun b!6825122 () Bool)

(declare-fun res!2787701 () Bool)

(assert (=> b!6825122 (=> res!2787701 e!4117432)))

(assert (=> b!6825122 (= res!2787701 e!4117426)))

(declare-fun res!2787698 () Bool)

(assert (=> b!6825122 (=> (not res!2787698) (not e!4117426))))

(assert (=> b!6825122 (= res!2787698 lt!2452279)))

(declare-fun b!6825123 () Bool)

(assert (=> b!6825123 (= e!4117430 (= lt!2452279 call!621190))))

(declare-fun b!6825124 () Bool)

(declare-fun res!2787702 () Bool)

(assert (=> b!6825124 (=> (not res!2787702) (not e!4117426))))

(assert (=> b!6825124 (= res!2787702 (isEmpty!38481 (tail!12766 (tail!12766 s!2326))))))

(declare-fun b!6825125 () Bool)

(declare-fun res!2787699 () Bool)

(assert (=> b!6825125 (=> (not res!2787699) (not e!4117426))))

(assert (=> b!6825125 (= res!2787699 (not call!621190))))

(declare-fun b!6825126 () Bool)

(assert (=> b!6825126 (= e!4117428 (nullable!6614 (derivativeStep!5299 r!7292 (head!13681 s!2326))))))

(assert (= (and d!2146229 c!1270357) b!6825126))

(assert (= (and d!2146229 (not c!1270357)) b!6825120))

(assert (= (and d!2146229 c!1270358) b!6825123))

(assert (= (and d!2146229 (not c!1270358)) b!6825115))

(assert (= (and b!6825115 c!1270356) b!6825114))

(assert (= (and b!6825115 (not c!1270356)) b!6825116))

(assert (= (and b!6825116 (not res!2787697)) b!6825122))

(assert (= (and b!6825122 res!2787698) b!6825125))

(assert (= (and b!6825125 res!2787699) b!6825124))

(assert (= (and b!6825124 res!2787702) b!6825113))

(assert (= (and b!6825122 (not res!2787701)) b!6825117))

(assert (= (and b!6825117 res!2787703) b!6825119))

(assert (= (and b!6825119 (not res!2787700)) b!6825121))

(assert (= (and b!6825121 (not res!2787704)) b!6825118))

(assert (= (or b!6825123 b!6825119 b!6825125) bm!621185))

(assert (=> b!6825113 m!7569758))

(assert (=> b!6825113 m!7570658))

(assert (=> b!6825126 m!7570382))

(declare-fun m!7570758 () Bool)

(assert (=> b!6825126 m!7570758))

(assert (=> b!6825120 m!7569758))

(assert (=> b!6825120 m!7570658))

(assert (=> b!6825120 m!7570382))

(assert (=> b!6825120 m!7570658))

(declare-fun m!7570760 () Bool)

(assert (=> b!6825120 m!7570760))

(assert (=> b!6825120 m!7569758))

(assert (=> b!6825120 m!7570666))

(assert (=> b!6825120 m!7570760))

(assert (=> b!6825120 m!7570666))

(declare-fun m!7570762 () Bool)

(assert (=> b!6825120 m!7570762))

(assert (=> bm!621185 m!7569758))

(assert (=> bm!621185 m!7570386))

(assert (=> b!6825124 m!7569758))

(assert (=> b!6825124 m!7570666))

(assert (=> b!6825124 m!7570666))

(declare-fun m!7570764 () Bool)

(assert (=> b!6825124 m!7570764))

(assert (=> d!2146229 m!7569758))

(assert (=> d!2146229 m!7570386))

(assert (=> d!2146229 m!7570382))

(declare-fun m!7570766 () Bool)

(assert (=> d!2146229 m!7570766))

(assert (=> b!6825118 m!7569758))

(assert (=> b!6825118 m!7570658))

(assert (=> b!6825121 m!7569758))

(assert (=> b!6825121 m!7570666))

(assert (=> b!6825121 m!7570666))

(assert (=> b!6825121 m!7570764))

(assert (=> b!6824761 d!2146229))

(declare-fun c!1270378 () Bool)

(declare-fun c!1270375 () Bool)

(declare-fun call!621203 () Regex!16639)

(declare-fun bm!621197 () Bool)

(declare-fun c!1270377 () Bool)

(assert (=> bm!621197 (= call!621203 (derivativeStep!5299 (ite c!1270378 (regTwo!33791 r!7292) (ite c!1270377 (reg!16968 r!7292) (ite c!1270375 (regTwo!33790 r!7292) (regOne!33790 r!7292)))) (head!13681 s!2326)))))

(declare-fun b!6825163 () Bool)

(declare-fun e!4117455 () Regex!16639)

(declare-fun e!4117454 () Regex!16639)

(assert (=> b!6825163 (= e!4117455 e!4117454)))

(declare-fun c!1270376 () Bool)

(assert (=> b!6825163 (= c!1270376 ((_ is ElementMatch!16639) r!7292))))

(declare-fun b!6825164 () Bool)

(declare-fun e!4117457 () Regex!16639)

(declare-fun call!621204 () Regex!16639)

(assert (=> b!6825164 (= e!4117457 (Concat!25484 call!621204 r!7292))))

(declare-fun call!621205 () Regex!16639)

(declare-fun bm!621198 () Bool)

(assert (=> bm!621198 (= call!621205 (derivativeStep!5299 (ite c!1270378 (regOne!33791 r!7292) (regOne!33790 r!7292)) (head!13681 s!2326)))))

(declare-fun b!6825165 () Bool)

(assert (=> b!6825165 (= c!1270378 ((_ is Union!16639) r!7292))))

(declare-fun e!4117456 () Regex!16639)

(assert (=> b!6825165 (= e!4117454 e!4117456)))

(declare-fun bm!621199 () Bool)

(declare-fun call!621202 () Regex!16639)

(assert (=> bm!621199 (= call!621202 call!621204)))

(declare-fun b!6825166 () Bool)

(assert (=> b!6825166 (= e!4117455 EmptyLang!16639)))

(declare-fun b!6825167 () Bool)

(declare-fun e!4117458 () Regex!16639)

(assert (=> b!6825167 (= e!4117458 (Union!16639 (Concat!25484 call!621202 (regTwo!33790 r!7292)) EmptyLang!16639))))

(declare-fun b!6825168 () Bool)

(assert (=> b!6825168 (= e!4117454 (ite (= (head!13681 s!2326) (c!1270055 r!7292)) EmptyExpr!16639 EmptyLang!16639))))

(declare-fun b!6825169 () Bool)

(assert (=> b!6825169 (= e!4117456 e!4117457)))

(assert (=> b!6825169 (= c!1270377 ((_ is Star!16639) r!7292))))

(declare-fun b!6825170 () Bool)

(assert (=> b!6825170 (= e!4117458 (Union!16639 (Concat!25484 call!621205 (regTwo!33790 r!7292)) call!621202))))

(declare-fun b!6825171 () Bool)

(assert (=> b!6825171 (= c!1270375 (nullable!6614 (regOne!33790 r!7292)))))

(assert (=> b!6825171 (= e!4117457 e!4117458)))

(declare-fun b!6825172 () Bool)

(assert (=> b!6825172 (= e!4117456 (Union!16639 call!621205 call!621203))))

(declare-fun d!2146231 () Bool)

(declare-fun lt!2452282 () Regex!16639)

(assert (=> d!2146231 (validRegex!8375 lt!2452282)))

(assert (=> d!2146231 (= lt!2452282 e!4117455)))

(declare-fun c!1270374 () Bool)

(assert (=> d!2146231 (= c!1270374 (or ((_ is EmptyExpr!16639) r!7292) ((_ is EmptyLang!16639) r!7292)))))

(assert (=> d!2146231 (validRegex!8375 r!7292)))

(assert (=> d!2146231 (= (derivativeStep!5299 r!7292 (head!13681 s!2326)) lt!2452282)))

(declare-fun bm!621200 () Bool)

(assert (=> bm!621200 (= call!621204 call!621203)))

(assert (= (and d!2146231 c!1270374) b!6825166))

(assert (= (and d!2146231 (not c!1270374)) b!6825163))

(assert (= (and b!6825163 c!1270376) b!6825168))

(assert (= (and b!6825163 (not c!1270376)) b!6825165))

(assert (= (and b!6825165 c!1270378) b!6825172))

(assert (= (and b!6825165 (not c!1270378)) b!6825169))

(assert (= (and b!6825169 c!1270377) b!6825164))

(assert (= (and b!6825169 (not c!1270377)) b!6825171))

(assert (= (and b!6825171 c!1270375) b!6825170))

(assert (= (and b!6825171 (not c!1270375)) b!6825167))

(assert (= (or b!6825170 b!6825167) bm!621199))

(assert (= (or b!6825164 bm!621199) bm!621200))

(assert (= (or b!6825172 bm!621200) bm!621197))

(assert (= (or b!6825172 b!6825170) bm!621198))

(assert (=> bm!621197 m!7569754))

(declare-fun m!7570788 () Bool)

(assert (=> bm!621197 m!7570788))

(assert (=> bm!621198 m!7569754))

(declare-fun m!7570790 () Bool)

(assert (=> bm!621198 m!7570790))

(assert (=> b!6825171 m!7570244))

(declare-fun m!7570792 () Bool)

(assert (=> d!2146231 m!7570792))

(assert (=> d!2146231 m!7569648))

(assert (=> b!6824761 d!2146231))

(assert (=> b!6824761 d!2146177))

(assert (=> b!6824761 d!2146179))

(declare-fun d!2146243 () Bool)

(declare-fun c!1270380 () Bool)

(assert (=> d!2146243 (= c!1270380 (isEmpty!38481 (tail!12766 lt!2452083)))))

(declare-fun e!4117461 () Bool)

(assert (=> d!2146243 (= (matchZipper!2625 (derivationStepZipper!2583 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) (head!13681 lt!2452083)) (tail!12766 lt!2452083)) e!4117461)))

(declare-fun b!6825177 () Bool)

(assert (=> b!6825177 (= e!4117461 (nullableZipper!2342 (derivationStepZipper!2583 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) (head!13681 lt!2452083))))))

(declare-fun b!6825178 () Bool)

(assert (=> b!6825178 (= e!4117461 (matchZipper!2625 (derivationStepZipper!2583 (derivationStepZipper!2583 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) (head!13681 lt!2452083)) (head!13681 (tail!12766 lt!2452083))) (tail!12766 (tail!12766 lt!2452083))))))

(assert (= (and d!2146243 c!1270380) b!6825177))

(assert (= (and d!2146243 (not c!1270380)) b!6825178))

(assert (=> d!2146243 m!7570438))

(declare-fun m!7570796 () Bool)

(assert (=> d!2146243 m!7570796))

(assert (=> b!6825177 m!7570436))

(declare-fun m!7570800 () Bool)

(assert (=> b!6825177 m!7570800))

(assert (=> b!6825178 m!7570438))

(declare-fun m!7570802 () Bool)

(assert (=> b!6825178 m!7570802))

(assert (=> b!6825178 m!7570436))

(assert (=> b!6825178 m!7570802))

(declare-fun m!7570808 () Bool)

(assert (=> b!6825178 m!7570808))

(assert (=> b!6825178 m!7570438))

(declare-fun m!7570812 () Bool)

(assert (=> b!6825178 m!7570812))

(assert (=> b!6825178 m!7570808))

(assert (=> b!6825178 m!7570812))

(declare-fun m!7570814 () Bool)

(assert (=> b!6825178 m!7570814))

(assert (=> b!6824808 d!2146243))

(declare-fun bs!1823583 () Bool)

(declare-fun d!2146247 () Bool)

(assert (= bs!1823583 (and d!2146247 d!2146169)))

(declare-fun lambda!385595 () Int)

(assert (=> bs!1823583 (= (= (head!13681 lt!2452083) (head!13681 s!2326)) (= lambda!385595 lambda!385589))))

(declare-fun bs!1823584 () Bool)

(assert (= bs!1823584 (and d!2146247 d!2145993)))

(assert (=> bs!1823584 (= (= (head!13681 lt!2452083) (h!72540 s!2326)) (= lambda!385595 lambda!385551))))

(declare-fun bs!1823585 () Bool)

(assert (= bs!1823585 (and d!2146247 d!2145963)))

(assert (=> bs!1823585 (= (= (head!13681 lt!2452083) (h!72540 s!2326)) (= lambda!385595 lambda!385544))))

(declare-fun bs!1823586 () Bool)

(assert (= bs!1823586 (and d!2146247 b!6824000)))

(assert (=> bs!1823586 (= (= (head!13681 lt!2452083) (h!72540 s!2326)) (= lambda!385595 lambda!385481))))

(declare-fun bs!1823587 () Bool)

(assert (= bs!1823587 (and d!2146247 d!2145827)))

(assert (=> bs!1823587 (= (= (head!13681 lt!2452083) (h!72540 s!2326)) (= lambda!385595 lambda!385489))))

(assert (=> d!2146247 true))

(assert (=> d!2146247 (= (derivationStepZipper!2583 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) (head!13681 lt!2452083)) (flatMap!2120 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) lambda!385595))))

(declare-fun bs!1823588 () Bool)

(assert (= bs!1823588 d!2146247))

(assert (=> bs!1823588 m!7569650))

(declare-fun m!7570816 () Bool)

(assert (=> bs!1823588 m!7570816))

(assert (=> b!6824808 d!2146247))

(declare-fun d!2146249 () Bool)

(assert (=> d!2146249 (= (head!13681 lt!2452083) (h!72540 lt!2452083))))

(assert (=> b!6824808 d!2146249))

(declare-fun d!2146251 () Bool)

(assert (=> d!2146251 (= (tail!12766 lt!2452083) (t!379955 lt!2452083))))

(assert (=> b!6824808 d!2146251))

(declare-fun d!2146253 () Bool)

(assert (=> d!2146253 (= (map!15119 lt!2452091 lambda!385581) (choose!50902 lt!2452091 lambda!385581))))

(declare-fun bs!1823589 () Bool)

(assert (= bs!1823589 d!2146253))

(declare-fun m!7570822 () Bool)

(assert (=> bs!1823589 m!7570822))

(assert (=> d!2146085 d!2146253))

(declare-fun b!6825186 () Bool)

(declare-fun res!2787715 () Bool)

(declare-fun e!4117465 () Bool)

(assert (=> b!6825186 (=> (not res!2787715) (not e!4117465))))

(declare-fun lt!2452285 () List!66216)

(assert (=> b!6825186 (= res!2787715 (= (size!40693 lt!2452285) (+ (size!40693 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092))) (size!40693 (t!379955 s!2326)))))))

(declare-fun d!2146255 () Bool)

(assert (=> d!2146255 e!4117465))

(declare-fun res!2787714 () Bool)

(assert (=> d!2146255 (=> (not res!2787714) (not e!4117465))))

(assert (=> d!2146255 (= res!2787714 (= (content!12939 lt!2452285) ((_ map or) (content!12939 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092))) (content!12939 (t!379955 s!2326)))))))

(declare-fun e!4117466 () List!66216)

(assert (=> d!2146255 (= lt!2452285 e!4117466)))

(declare-fun c!1270383 () Bool)

(assert (=> d!2146255 (= c!1270383 ((_ is Nil!66092) (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092))))))

(assert (=> d!2146255 (= (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326)) lt!2452285)))

(declare-fun b!6825185 () Bool)

(assert (=> b!6825185 (= e!4117466 (Cons!66092 (h!72540 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092))) (++!14825 (t!379955 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092))) (t!379955 s!2326))))))

(declare-fun b!6825187 () Bool)

(assert (=> b!6825187 (= e!4117465 (or (not (= (t!379955 s!2326) Nil!66092)) (= lt!2452285 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)))))))

(declare-fun b!6825184 () Bool)

(assert (=> b!6825184 (= e!4117466 (t!379955 s!2326))))

(assert (= (and d!2146255 c!1270383) b!6825184))

(assert (= (and d!2146255 (not c!1270383)) b!6825185))

(assert (= (and d!2146255 res!2787714) b!6825186))

(assert (= (and b!6825186 res!2787715) b!6825187))

(declare-fun m!7570826 () Bool)

(assert (=> b!6825186 m!7570826))

(assert (=> b!6825186 m!7569922))

(declare-fun m!7570828 () Bool)

(assert (=> b!6825186 m!7570828))

(declare-fun m!7570830 () Bool)

(assert (=> b!6825186 m!7570830))

(declare-fun m!7570832 () Bool)

(assert (=> d!2146255 m!7570832))

(assert (=> d!2146255 m!7569922))

(declare-fun m!7570834 () Bool)

(assert (=> d!2146255 m!7570834))

(declare-fun m!7570836 () Bool)

(assert (=> d!2146255 m!7570836))

(declare-fun m!7570838 () Bool)

(assert (=> b!6825185 m!7570838))

(assert (=> b!6824464 d!2146255))

(declare-fun b!6825190 () Bool)

(declare-fun res!2787717 () Bool)

(declare-fun e!4117467 () Bool)

(assert (=> b!6825190 (=> (not res!2787717) (not e!4117467))))

(declare-fun lt!2452286 () List!66216)

(assert (=> b!6825190 (= res!2787717 (= (size!40693 lt!2452286) (+ (size!40693 Nil!66092) (size!40693 (Cons!66092 (h!72540 s!2326) Nil!66092)))))))

(declare-fun d!2146259 () Bool)

(assert (=> d!2146259 e!4117467))

(declare-fun res!2787716 () Bool)

(assert (=> d!2146259 (=> (not res!2787716) (not e!4117467))))

(assert (=> d!2146259 (= res!2787716 (= (content!12939 lt!2452286) ((_ map or) (content!12939 Nil!66092) (content!12939 (Cons!66092 (h!72540 s!2326) Nil!66092)))))))

(declare-fun e!4117468 () List!66216)

(assert (=> d!2146259 (= lt!2452286 e!4117468)))

(declare-fun c!1270384 () Bool)

(assert (=> d!2146259 (= c!1270384 ((_ is Nil!66092) Nil!66092))))

(assert (=> d!2146259 (= (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) lt!2452286)))

(declare-fun b!6825189 () Bool)

(assert (=> b!6825189 (= e!4117468 (Cons!66092 (h!72540 Nil!66092) (++!14825 (t!379955 Nil!66092) (Cons!66092 (h!72540 s!2326) Nil!66092))))))

(declare-fun b!6825191 () Bool)

(assert (=> b!6825191 (= e!4117467 (or (not (= (Cons!66092 (h!72540 s!2326) Nil!66092) Nil!66092)) (= lt!2452286 Nil!66092)))))

(declare-fun b!6825188 () Bool)

(assert (=> b!6825188 (= e!4117468 (Cons!66092 (h!72540 s!2326) Nil!66092))))

(assert (= (and d!2146259 c!1270384) b!6825188))

(assert (= (and d!2146259 (not c!1270384)) b!6825189))

(assert (= (and d!2146259 res!2787716) b!6825190))

(assert (= (and b!6825190 res!2787717) b!6825191))

(declare-fun m!7570840 () Bool)

(assert (=> b!6825190 m!7570840))

(declare-fun m!7570842 () Bool)

(assert (=> b!6825190 m!7570842))

(declare-fun m!7570844 () Bool)

(assert (=> b!6825190 m!7570844))

(declare-fun m!7570846 () Bool)

(assert (=> d!2146259 m!7570846))

(declare-fun m!7570848 () Bool)

(assert (=> d!2146259 m!7570848))

(declare-fun m!7570850 () Bool)

(assert (=> d!2146259 m!7570850))

(declare-fun m!7570852 () Bool)

(assert (=> b!6825189 m!7570852))

(assert (=> b!6824464 d!2146259))

(declare-fun d!2146261 () Bool)

(assert (=> d!2146261 (= (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326)) s!2326)))

(declare-fun lt!2452289 () Unit!159969)

(declare-fun choose!50904 (List!66216 C!33548 List!66216 List!66216) Unit!159969)

(assert (=> d!2146261 (= lt!2452289 (choose!50904 Nil!66092 (h!72540 s!2326) (t!379955 s!2326) s!2326))))

(assert (=> d!2146261 (= (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) (t!379955 s!2326))) s!2326)))

(assert (=> d!2146261 (= (lemmaMoveElementToOtherListKeepsConcatEq!2755 Nil!66092 (h!72540 s!2326) (t!379955 s!2326) s!2326) lt!2452289)))

(declare-fun bs!1823591 () Bool)

(assert (= bs!1823591 d!2146261))

(assert (=> bs!1823591 m!7569922))

(assert (=> bs!1823591 m!7569922))

(assert (=> bs!1823591 m!7569924))

(declare-fun m!7570868 () Bool)

(assert (=> bs!1823591 m!7570868))

(declare-fun m!7570870 () Bool)

(assert (=> bs!1823591 m!7570870))

(assert (=> b!6824464 d!2146261))

(declare-fun b!6825217 () Bool)

(declare-fun e!4117484 () Option!16526)

(declare-fun e!4117482 () Option!16526)

(assert (=> b!6825217 (= e!4117484 e!4117482)))

(declare-fun c!1270393 () Bool)

(assert (=> b!6825217 (= c!1270393 ((_ is Nil!66092) (t!379955 s!2326)))))

(declare-fun b!6825218 () Bool)

(declare-fun res!2787729 () Bool)

(declare-fun e!4117483 () Bool)

(assert (=> b!6825218 (=> (not res!2787729) (not e!4117483))))

(declare-fun lt!2452291 () Option!16526)

(assert (=> b!6825218 (= res!2787729 (matchR!8822 (reg!16968 r!7292) (_1!36917 (get!23028 lt!2452291))))))

(declare-fun b!6825219 () Bool)

(assert (=> b!6825219 (= e!4117483 (= (++!14825 (_1!36917 (get!23028 lt!2452291)) (_2!36917 (get!23028 lt!2452291))) s!2326))))

(declare-fun b!6825220 () Bool)

(declare-fun e!4117481 () Bool)

(assert (=> b!6825220 (= e!4117481 (matchR!8822 r!7292 (t!379955 s!2326)))))

(declare-fun b!6825221 () Bool)

(declare-fun lt!2452292 () Unit!159969)

(declare-fun lt!2452293 () Unit!159969)

(assert (=> b!6825221 (= lt!2452292 lt!2452293)))

(assert (=> b!6825221 (= (++!14825 (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (Cons!66092 (h!72540 (t!379955 s!2326)) Nil!66092)) (t!379955 (t!379955 s!2326))) s!2326)))

(assert (=> b!6825221 (= lt!2452293 (lemmaMoveElementToOtherListKeepsConcatEq!2755 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (h!72540 (t!379955 s!2326)) (t!379955 (t!379955 s!2326)) s!2326))))

(assert (=> b!6825221 (= e!4117482 (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (Cons!66092 (h!72540 (t!379955 s!2326)) Nil!66092)) (t!379955 (t!379955 s!2326)) s!2326))))

(declare-fun b!6825222 () Bool)

(declare-fun e!4117485 () Bool)

(assert (=> b!6825222 (= e!4117485 (not (isDefined!13229 lt!2452291)))))

(declare-fun b!6825216 () Bool)

(declare-fun res!2787728 () Bool)

(assert (=> b!6825216 (=> (not res!2787728) (not e!4117483))))

(assert (=> b!6825216 (= res!2787728 (matchR!8822 r!7292 (_2!36917 (get!23028 lt!2452291))))))

(declare-fun d!2146273 () Bool)

(assert (=> d!2146273 e!4117485))

(declare-fun res!2787730 () Bool)

(assert (=> d!2146273 (=> res!2787730 e!4117485)))

(assert (=> d!2146273 (= res!2787730 e!4117483)))

(declare-fun res!2787731 () Bool)

(assert (=> d!2146273 (=> (not res!2787731) (not e!4117483))))

(assert (=> d!2146273 (= res!2787731 (isDefined!13229 lt!2452291))))

(assert (=> d!2146273 (= lt!2452291 e!4117484)))

(declare-fun c!1270394 () Bool)

(assert (=> d!2146273 (= c!1270394 e!4117481)))

(declare-fun res!2787727 () Bool)

(assert (=> d!2146273 (=> (not res!2787727) (not e!4117481))))

(assert (=> d!2146273 (= res!2787727 (matchR!8822 (reg!16968 r!7292) (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092))))))

(assert (=> d!2146273 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2146273 (= (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326) s!2326) lt!2452291)))

(declare-fun b!6825223 () Bool)

(assert (=> b!6825223 (= e!4117482 None!16525)))

(declare-fun b!6825224 () Bool)

(assert (=> b!6825224 (= e!4117484 (Some!16525 (tuple2!67229 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326))))))

(assert (= (and d!2146273 res!2787727) b!6825220))

(assert (= (and d!2146273 c!1270394) b!6825224))

(assert (= (and d!2146273 (not c!1270394)) b!6825217))

(assert (= (and b!6825217 c!1270393) b!6825223))

(assert (= (and b!6825217 (not c!1270393)) b!6825221))

(assert (= (and d!2146273 res!2787731) b!6825218))

(assert (= (and b!6825218 res!2787729) b!6825216))

(assert (= (and b!6825216 res!2787728) b!6825219))

(assert (= (and d!2146273 (not res!2787730)) b!6825222))

(declare-fun m!7570872 () Bool)

(assert (=> b!6825216 m!7570872))

(declare-fun m!7570874 () Bool)

(assert (=> b!6825216 m!7570874))

(declare-fun m!7570876 () Bool)

(assert (=> b!6825222 m!7570876))

(assert (=> b!6825219 m!7570872))

(declare-fun m!7570878 () Bool)

(assert (=> b!6825219 m!7570878))

(assert (=> d!2146273 m!7570876))

(assert (=> d!2146273 m!7569922))

(declare-fun m!7570880 () Bool)

(assert (=> d!2146273 m!7570880))

(assert (=> d!2146273 m!7569992))

(declare-fun m!7570884 () Bool)

(assert (=> b!6825220 m!7570884))

(assert (=> b!6825218 m!7570872))

(declare-fun m!7570888 () Bool)

(assert (=> b!6825218 m!7570888))

(assert (=> b!6825221 m!7569922))

(declare-fun m!7570892 () Bool)

(assert (=> b!6825221 m!7570892))

(assert (=> b!6825221 m!7570892))

(declare-fun m!7570896 () Bool)

(assert (=> b!6825221 m!7570896))

(assert (=> b!6825221 m!7569922))

(declare-fun m!7570900 () Bool)

(assert (=> b!6825221 m!7570900))

(assert (=> b!6825221 m!7570892))

(declare-fun m!7570904 () Bool)

(assert (=> b!6825221 m!7570904))

(assert (=> b!6824464 d!2146273))

(declare-fun d!2146275 () Bool)

(assert (=> d!2146275 (= (isEmpty!38486 (tail!12767 (unfocusZipperList!2060 zl!343))) ((_ is Nil!66093) (tail!12767 (unfocusZipperList!2060 zl!343))))))

(assert (=> b!6824844 d!2146275))

(declare-fun d!2146277 () Bool)

(assert (=> d!2146277 (= (tail!12767 (unfocusZipperList!2060 zl!343)) (t!379956 (unfocusZipperList!2060 zl!343)))))

(assert (=> b!6824844 d!2146277))

(declare-fun d!2146279 () Bool)

(assert (=> d!2146279 (= (isEmpty!38484 lt!2452086) (not ((_ is Some!16525) lt!2452086)))))

(assert (=> d!2145849 d!2146279))

(assert (=> d!2146021 d!2145913))

(assert (=> d!2146021 d!2146035))

(declare-fun d!2146283 () Bool)

(assert (=> d!2146283 (= (head!13682 (exprs!6523 (h!72542 zl!343))) (h!72541 (exprs!6523 (h!72542 zl!343))))))

(assert (=> b!6824602 d!2146283))

(declare-fun b!6825225 () Bool)

(declare-fun call!621208 () (InoxSet Context!12046))

(declare-fun e!4117488 () (InoxSet Context!12046))

(assert (=> b!6825225 (= e!4117488 ((_ map or) call!621208 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452076)))))) (h!72540 s!2326))))))

(declare-fun b!6825226 () Bool)

(declare-fun e!4117487 () (InoxSet Context!12046))

(assert (=> b!6825226 (= e!4117487 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825227 () Bool)

(assert (=> b!6825227 (= e!4117488 e!4117487)))

(declare-fun c!1270396 () Bool)

(assert (=> b!6825227 (= c!1270396 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452076))))))))

(declare-fun d!2146285 () Bool)

(declare-fun c!1270395 () Bool)

(declare-fun e!4117486 () Bool)

(assert (=> d!2146285 (= c!1270395 e!4117486)))

(declare-fun res!2787732 () Bool)

(assert (=> d!2146285 (=> (not res!2787732) (not e!4117486))))

(assert (=> d!2146285 (= res!2787732 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452076))))))))

(assert (=> d!2146285 (= (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 lt!2452076))) (h!72540 s!2326)) e!4117488)))

(declare-fun b!6825228 () Bool)

(assert (=> b!6825228 (= e!4117486 (nullable!6614 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452076)))))))))

(declare-fun b!6825229 () Bool)

(assert (=> b!6825229 (= e!4117487 call!621208)))

(declare-fun bm!621203 () Bool)

(assert (=> bm!621203 (= call!621208 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452076))))) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452076)))))) (h!72540 s!2326)))))

(assert (= (and d!2146285 res!2787732) b!6825228))

(assert (= (and d!2146285 c!1270395) b!6825225))

(assert (= (and d!2146285 (not c!1270395)) b!6825227))

(assert (= (and b!6825227 c!1270396) b!6825229))

(assert (= (and b!6825227 (not c!1270396)) b!6825226))

(assert (= (or b!6825225 b!6825229) bm!621203))

(declare-fun m!7570908 () Bool)

(assert (=> b!6825225 m!7570908))

(declare-fun m!7570910 () Bool)

(assert (=> b!6825228 m!7570910))

(declare-fun m!7570912 () Bool)

(assert (=> bm!621203 m!7570912))

(assert (=> b!6824495 d!2146285))

(declare-fun d!2146287 () Bool)

(assert (=> d!2146287 (= (head!13682 (unfocusZipperList!2060 zl!343)) (h!72541 (unfocusZipperList!2060 zl!343)))))

(assert (=> b!6824848 d!2146287))

(declare-fun b!6825230 () Bool)

(declare-fun e!4117489 () Bool)

(declare-fun e!4117492 () Bool)

(assert (=> b!6825230 (= e!4117489 e!4117492)))

(declare-fun c!1270398 () Bool)

(assert (=> b!6825230 (= c!1270398 ((_ is Star!16639) lt!2452201))))

(declare-fun d!2146289 () Bool)

(declare-fun res!2787733 () Bool)

(assert (=> d!2146289 (=> res!2787733 e!4117489)))

(assert (=> d!2146289 (= res!2787733 ((_ is ElementMatch!16639) lt!2452201))))

(assert (=> d!2146289 (= (validRegex!8375 lt!2452201) e!4117489)))

(declare-fun bm!621204 () Bool)

(declare-fun call!621209 () Bool)

(declare-fun c!1270397 () Bool)

(assert (=> bm!621204 (= call!621209 (validRegex!8375 (ite c!1270397 (regOne!33791 lt!2452201) (regOne!33790 lt!2452201))))))

(declare-fun b!6825231 () Bool)

(declare-fun e!4117490 () Bool)

(assert (=> b!6825231 (= e!4117492 e!4117490)))

(assert (=> b!6825231 (= c!1270397 ((_ is Union!16639) lt!2452201))))

(declare-fun b!6825232 () Bool)

(declare-fun e!4117493 () Bool)

(declare-fun call!621210 () Bool)

(assert (=> b!6825232 (= e!4117493 call!621210)))

(declare-fun b!6825233 () Bool)

(declare-fun e!4117491 () Bool)

(declare-fun call!621211 () Bool)

(assert (=> b!6825233 (= e!4117491 call!621211)))

(declare-fun b!6825234 () Bool)

(assert (=> b!6825234 (= e!4117492 e!4117493)))

(declare-fun res!2787735 () Bool)

(assert (=> b!6825234 (= res!2787735 (not (nullable!6614 (reg!16968 lt!2452201))))))

(assert (=> b!6825234 (=> (not res!2787735) (not e!4117493))))

(declare-fun bm!621205 () Bool)

(assert (=> bm!621205 (= call!621211 call!621210)))

(declare-fun b!6825235 () Bool)

(declare-fun res!2787736 () Bool)

(declare-fun e!4117495 () Bool)

(assert (=> b!6825235 (=> res!2787736 e!4117495)))

(assert (=> b!6825235 (= res!2787736 (not ((_ is Concat!25484) lt!2452201)))))

(assert (=> b!6825235 (= e!4117490 e!4117495)))

(declare-fun b!6825236 () Bool)

(declare-fun res!2787737 () Bool)

(assert (=> b!6825236 (=> (not res!2787737) (not e!4117491))))

(assert (=> b!6825236 (= res!2787737 call!621209)))

(assert (=> b!6825236 (= e!4117490 e!4117491)))

(declare-fun b!6825237 () Bool)

(declare-fun e!4117494 () Bool)

(assert (=> b!6825237 (= e!4117494 call!621211)))

(declare-fun b!6825238 () Bool)

(assert (=> b!6825238 (= e!4117495 e!4117494)))

(declare-fun res!2787734 () Bool)

(assert (=> b!6825238 (=> (not res!2787734) (not e!4117494))))

(assert (=> b!6825238 (= res!2787734 call!621209)))

(declare-fun bm!621206 () Bool)

(assert (=> bm!621206 (= call!621210 (validRegex!8375 (ite c!1270398 (reg!16968 lt!2452201) (ite c!1270397 (regTwo!33791 lt!2452201) (regTwo!33790 lt!2452201)))))))

(assert (= (and d!2146289 (not res!2787733)) b!6825230))

(assert (= (and b!6825230 c!1270398) b!6825234))

(assert (= (and b!6825230 (not c!1270398)) b!6825231))

(assert (= (and b!6825234 res!2787735) b!6825232))

(assert (= (and b!6825231 c!1270397) b!6825236))

(assert (= (and b!6825231 (not c!1270397)) b!6825235))

(assert (= (and b!6825236 res!2787737) b!6825233))

(assert (= (and b!6825235 (not res!2787736)) b!6825238))

(assert (= (and b!6825238 res!2787734) b!6825237))

(assert (= (or b!6825233 b!6825237) bm!621205))

(assert (= (or b!6825236 b!6825238) bm!621204))

(assert (= (or b!6825232 bm!621205) bm!621206))

(declare-fun m!7570914 () Bool)

(assert (=> bm!621204 m!7570914))

(declare-fun m!7570916 () Bool)

(assert (=> b!6825234 m!7570916))

(declare-fun m!7570918 () Bool)

(assert (=> bm!621206 m!7570918))

(assert (=> d!2145975 d!2146289))

(declare-fun bs!1823592 () Bool)

(declare-fun d!2146291 () Bool)

(assert (= bs!1823592 (and d!2146291 b!6823997)))

(declare-fun lambda!385596 () Int)

(assert (=> bs!1823592 (= lambda!385596 lambda!385483)))

(declare-fun bs!1823593 () Bool)

(assert (= bs!1823593 (and d!2146291 d!2146049)))

(assert (=> bs!1823593 (= lambda!385596 lambda!385570)))

(declare-fun bs!1823594 () Bool)

(assert (= bs!1823594 (and d!2146291 d!2146077)))

(assert (=> bs!1823594 (= lambda!385596 lambda!385576)))

(declare-fun bs!1823595 () Bool)

(assert (= bs!1823595 (and d!2146291 d!2146051)))

(assert (=> bs!1823595 (= lambda!385596 lambda!385573)))

(declare-fun bs!1823596 () Bool)

(assert (= bs!1823596 (and d!2146291 d!2146037)))

(assert (=> bs!1823596 (= lambda!385596 lambda!385567)))

(declare-fun bs!1823597 () Bool)

(assert (= bs!1823597 (and d!2146291 d!2145995)))

(assert (=> bs!1823597 (= lambda!385596 lambda!385554)))

(declare-fun bs!1823598 () Bool)

(assert (= bs!1823598 (and d!2146291 d!2145867)))

(assert (=> bs!1823598 (= lambda!385596 lambda!385508)))

(declare-fun b!6825239 () Bool)

(declare-fun e!4117496 () Regex!16639)

(assert (=> b!6825239 (= e!4117496 (Union!16639 (h!72541 (unfocusZipperList!2060 lt!2452090)) (generalisedUnion!2483 (t!379956 (unfocusZipperList!2060 lt!2452090)))))))

(declare-fun b!6825241 () Bool)

(declare-fun e!4117499 () Regex!16639)

(assert (=> b!6825241 (= e!4117499 (h!72541 (unfocusZipperList!2060 lt!2452090)))))

(declare-fun b!6825242 () Bool)

(declare-fun e!4117501 () Bool)

(declare-fun lt!2452294 () Regex!16639)

(assert (=> b!6825242 (= e!4117501 (isUnion!1431 lt!2452294))))

(declare-fun b!6825243 () Bool)

(declare-fun e!4117500 () Bool)

(assert (=> b!6825243 (= e!4117500 (isEmpty!38486 (t!379956 (unfocusZipperList!2060 lt!2452090))))))

(declare-fun b!6825244 () Bool)

(assert (=> b!6825244 (= e!4117501 (= lt!2452294 (head!13682 (unfocusZipperList!2060 lt!2452090))))))

(declare-fun b!6825245 () Bool)

(assert (=> b!6825245 (= e!4117496 EmptyLang!16639)))

(declare-fun b!6825246 () Bool)

(declare-fun e!4117497 () Bool)

(assert (=> b!6825246 (= e!4117497 (isEmptyLang!2001 lt!2452294))))

(declare-fun e!4117498 () Bool)

(assert (=> d!2146291 e!4117498))

(declare-fun res!2787738 () Bool)

(assert (=> d!2146291 (=> (not res!2787738) (not e!4117498))))

(assert (=> d!2146291 (= res!2787738 (validRegex!8375 lt!2452294))))

(assert (=> d!2146291 (= lt!2452294 e!4117499)))

(declare-fun c!1270399 () Bool)

(assert (=> d!2146291 (= c!1270399 e!4117500)))

(declare-fun res!2787739 () Bool)

(assert (=> d!2146291 (=> (not res!2787739) (not e!4117500))))

(assert (=> d!2146291 (= res!2787739 ((_ is Cons!66093) (unfocusZipperList!2060 lt!2452090)))))

(assert (=> d!2146291 (forall!15827 (unfocusZipperList!2060 lt!2452090) lambda!385596)))

(assert (=> d!2146291 (= (generalisedUnion!2483 (unfocusZipperList!2060 lt!2452090)) lt!2452294)))

(declare-fun b!6825240 () Bool)

(assert (=> b!6825240 (= e!4117497 e!4117501)))

(declare-fun c!1270400 () Bool)

(assert (=> b!6825240 (= c!1270400 (isEmpty!38486 (tail!12767 (unfocusZipperList!2060 lt!2452090))))))

(declare-fun b!6825247 () Bool)

(assert (=> b!6825247 (= e!4117499 e!4117496)))

(declare-fun c!1270402 () Bool)

(assert (=> b!6825247 (= c!1270402 ((_ is Cons!66093) (unfocusZipperList!2060 lt!2452090)))))

(declare-fun b!6825248 () Bool)

(assert (=> b!6825248 (= e!4117498 e!4117497)))

(declare-fun c!1270401 () Bool)

(assert (=> b!6825248 (= c!1270401 (isEmpty!38486 (unfocusZipperList!2060 lt!2452090)))))

(assert (= (and d!2146291 res!2787739) b!6825243))

(assert (= (and d!2146291 c!1270399) b!6825241))

(assert (= (and d!2146291 (not c!1270399)) b!6825247))

(assert (= (and b!6825247 c!1270402) b!6825239))

(assert (= (and b!6825247 (not c!1270402)) b!6825245))

(assert (= (and d!2146291 res!2787738) b!6825248))

(assert (= (and b!6825248 c!1270401) b!6825246))

(assert (= (and b!6825248 (not c!1270401)) b!6825240))

(assert (= (and b!6825240 c!1270400) b!6825244))

(assert (= (and b!6825240 (not c!1270400)) b!6825242))

(declare-fun m!7570920 () Bool)

(assert (=> b!6825239 m!7570920))

(declare-fun m!7570922 () Bool)

(assert (=> b!6825242 m!7570922))

(declare-fun m!7570924 () Bool)

(assert (=> b!6825243 m!7570924))

(assert (=> b!6825240 m!7570218))

(declare-fun m!7570926 () Bool)

(assert (=> b!6825240 m!7570926))

(assert (=> b!6825240 m!7570926))

(declare-fun m!7570928 () Bool)

(assert (=> b!6825240 m!7570928))

(declare-fun m!7570930 () Bool)

(assert (=> d!2146291 m!7570930))

(assert (=> d!2146291 m!7570218))

(declare-fun m!7570932 () Bool)

(assert (=> d!2146291 m!7570932))

(declare-fun m!7570934 () Bool)

(assert (=> b!6825246 m!7570934))

(assert (=> b!6825248 m!7570218))

(declare-fun m!7570936 () Bool)

(assert (=> b!6825248 m!7570936))

(assert (=> b!6825244 m!7570218))

(declare-fun m!7570938 () Bool)

(assert (=> b!6825244 m!7570938))

(assert (=> d!2145975 d!2146291))

(declare-fun bs!1823599 () Bool)

(declare-fun d!2146293 () Bool)

(assert (= bs!1823599 (and d!2146293 b!6823997)))

(declare-fun lambda!385597 () Int)

(assert (=> bs!1823599 (= lambda!385597 lambda!385483)))

(declare-fun bs!1823600 () Bool)

(assert (= bs!1823600 (and d!2146293 d!2146049)))

(assert (=> bs!1823600 (= lambda!385597 lambda!385570)))

(declare-fun bs!1823601 () Bool)

(assert (= bs!1823601 (and d!2146293 d!2146077)))

(assert (=> bs!1823601 (= lambda!385597 lambda!385576)))

(declare-fun bs!1823602 () Bool)

(assert (= bs!1823602 (and d!2146293 d!2146051)))

(assert (=> bs!1823602 (= lambda!385597 lambda!385573)))

(declare-fun bs!1823603 () Bool)

(assert (= bs!1823603 (and d!2146293 d!2146291)))

(assert (=> bs!1823603 (= lambda!385597 lambda!385596)))

(declare-fun bs!1823604 () Bool)

(assert (= bs!1823604 (and d!2146293 d!2146037)))

(assert (=> bs!1823604 (= lambda!385597 lambda!385567)))

(declare-fun bs!1823605 () Bool)

(assert (= bs!1823605 (and d!2146293 d!2145995)))

(assert (=> bs!1823605 (= lambda!385597 lambda!385554)))

(declare-fun bs!1823606 () Bool)

(assert (= bs!1823606 (and d!2146293 d!2145867)))

(assert (=> bs!1823606 (= lambda!385597 lambda!385508)))

(declare-fun lt!2452295 () List!66217)

(assert (=> d!2146293 (forall!15827 lt!2452295 lambda!385597)))

(declare-fun e!4117502 () List!66217)

(assert (=> d!2146293 (= lt!2452295 e!4117502)))

(declare-fun c!1270403 () Bool)

(assert (=> d!2146293 (= c!1270403 ((_ is Cons!66094) lt!2452090))))

(assert (=> d!2146293 (= (unfocusZipperList!2060 lt!2452090) lt!2452295)))

(declare-fun b!6825249 () Bool)

(assert (=> b!6825249 (= e!4117502 (Cons!66093 (generalisedConcat!2236 (exprs!6523 (h!72542 lt!2452090))) (unfocusZipperList!2060 (t!379957 lt!2452090))))))

(declare-fun b!6825250 () Bool)

(assert (=> b!6825250 (= e!4117502 Nil!66093)))

(assert (= (and d!2146293 c!1270403) b!6825249))

(assert (= (and d!2146293 (not c!1270403)) b!6825250))

(declare-fun m!7570940 () Bool)

(assert (=> d!2146293 m!7570940))

(declare-fun m!7570942 () Bool)

(assert (=> b!6825249 m!7570942))

(declare-fun m!7570944 () Bool)

(assert (=> b!6825249 m!7570944))

(assert (=> d!2145975 d!2146293))

(declare-fun d!2146295 () Bool)

(declare-fun c!1270406 () Bool)

(assert (=> d!2146295 (= c!1270406 (and ((_ is ElementMatch!16639) (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (= (c!1270055 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (h!72540 s!2326))))))

(declare-fun e!4117506 () (InoxSet Context!12046))

(assert (=> d!2146295 (= (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (h!72540 s!2326)) e!4117506)))

(declare-fun call!621217 () List!66217)

(declare-fun bm!621207 () Bool)

(declare-fun c!1270405 () Bool)

(declare-fun call!621215 () (InoxSet Context!12046))

(assert (=> bm!621207 (= call!621215 (derivationStepZipperDown!1867 (ite c!1270405 (regTwo!33791 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (regOne!33790 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))) (ite c!1270405 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (Context!12047 call!621217)) (h!72540 s!2326)))))

(declare-fun bm!621208 () Bool)

(declare-fun call!621216 () (InoxSet Context!12046))

(declare-fun call!621214 () (InoxSet Context!12046))

(assert (=> bm!621208 (= call!621216 call!621214)))

(declare-fun b!6825251 () Bool)

(declare-fun c!1270408 () Bool)

(declare-fun e!4117507 () Bool)

(assert (=> b!6825251 (= c!1270408 e!4117507)))

(declare-fun res!2787740 () Bool)

(assert (=> b!6825251 (=> (not res!2787740) (not e!4117507))))

(assert (=> b!6825251 (= res!2787740 ((_ is Concat!25484) (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))))

(declare-fun e!4117504 () (InoxSet Context!12046))

(declare-fun e!4117505 () (InoxSet Context!12046))

(assert (=> b!6825251 (= e!4117504 e!4117505)))

(declare-fun bm!621209 () Bool)

(declare-fun c!1270407 () Bool)

(assert (=> bm!621209 (= call!621217 ($colon$colon!2444 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))) (ite (or c!1270408 c!1270407) (regTwo!33790 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))))))

(declare-fun b!6825252 () Bool)

(assert (=> b!6825252 (= e!4117505 ((_ map or) call!621215 call!621216))))

(declare-fun bm!621210 () Bool)

(declare-fun call!621212 () List!66217)

(assert (=> bm!621210 (= call!621214 (derivationStepZipperDown!1867 (ite c!1270405 (regOne!33791 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (ite c!1270408 (regTwo!33790 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (ite c!1270407 (regOne!33790 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (reg!16968 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))))) (ite (or c!1270405 c!1270408) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (Context!12047 call!621212)) (h!72540 s!2326)))))

(declare-fun b!6825253 () Bool)

(assert (=> b!6825253 (= e!4117506 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) true))))

(declare-fun b!6825254 () Bool)

(declare-fun e!4117503 () (InoxSet Context!12046))

(declare-fun call!621213 () (InoxSet Context!12046))

(assert (=> b!6825254 (= e!4117503 call!621213)))

(declare-fun b!6825255 () Bool)

(assert (=> b!6825255 (= e!4117506 e!4117504)))

(assert (=> b!6825255 (= c!1270405 ((_ is Union!16639) (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))))

(declare-fun bm!621211 () Bool)

(assert (=> bm!621211 (= call!621212 call!621217)))

(declare-fun b!6825256 () Bool)

(declare-fun e!4117508 () (InoxSet Context!12046))

(assert (=> b!6825256 (= e!4117505 e!4117508)))

(assert (=> b!6825256 (= c!1270407 ((_ is Concat!25484) (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))))

(declare-fun b!6825257 () Bool)

(assert (=> b!6825257 (= e!4117503 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825258 () Bool)

(assert (=> b!6825258 (= e!4117504 ((_ map or) call!621214 call!621215))))

(declare-fun b!6825259 () Bool)

(declare-fun c!1270404 () Bool)

(assert (=> b!6825259 (= c!1270404 ((_ is Star!16639) (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))))

(assert (=> b!6825259 (= e!4117508 e!4117503)))

(declare-fun b!6825260 () Bool)

(assert (=> b!6825260 (= e!4117507 (nullable!6614 (regOne!33790 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))))))

(declare-fun bm!621212 () Bool)

(assert (=> bm!621212 (= call!621213 call!621216)))

(declare-fun b!6825261 () Bool)

(assert (=> b!6825261 (= e!4117508 call!621213)))

(assert (= (and d!2146295 c!1270406) b!6825253))

(assert (= (and d!2146295 (not c!1270406)) b!6825255))

(assert (= (and b!6825255 c!1270405) b!6825258))

(assert (= (and b!6825255 (not c!1270405)) b!6825251))

(assert (= (and b!6825251 res!2787740) b!6825260))

(assert (= (and b!6825251 c!1270408) b!6825252))

(assert (= (and b!6825251 (not c!1270408)) b!6825256))

(assert (= (and b!6825256 c!1270407) b!6825261))

(assert (= (and b!6825256 (not c!1270407)) b!6825259))

(assert (= (and b!6825259 c!1270404) b!6825254))

(assert (= (and b!6825259 (not c!1270404)) b!6825257))

(assert (= (or b!6825261 b!6825254) bm!621211))

(assert (= (or b!6825261 b!6825254) bm!621212))

(assert (= (or b!6825252 bm!621211) bm!621209))

(assert (= (or b!6825252 bm!621212) bm!621208))

(assert (= (or b!6825258 b!6825252) bm!621207))

(assert (= (or b!6825258 bm!621208) bm!621210))

(declare-fun m!7570946 () Bool)

(assert (=> bm!621209 m!7570946))

(declare-fun m!7570948 () Bool)

(assert (=> bm!621210 m!7570948))

(declare-fun m!7570950 () Bool)

(assert (=> b!6825260 m!7570950))

(declare-fun m!7570952 () Bool)

(assert (=> b!6825253 m!7570952))

(declare-fun m!7570954 () Bool)

(assert (=> bm!621207 m!7570954))

(assert (=> bm!621126 d!2146295))

(assert (=> d!2146079 d!2145913))

(assert (=> bm!621156 d!2145913))

(declare-fun d!2146297 () Bool)

(assert (=> d!2146297 (= (isEmpty!38481 (_2!36917 lt!2452079)) ((_ is Nil!66092) (_2!36917 lt!2452079)))))

(assert (=> d!2145997 d!2146297))

(declare-fun d!2146299 () Bool)

(assert (=> d!2146299 (= (isEmpty!38481 (tail!12766 (_1!36917 lt!2452079))) ((_ is Nil!66092) (tail!12766 (_1!36917 lt!2452079))))))

(assert (=> b!6824820 d!2146299))

(declare-fun d!2146301 () Bool)

(assert (=> d!2146301 (= (tail!12766 (_1!36917 lt!2452079)) (t!379955 (_1!36917 lt!2452079)))))

(assert (=> b!6824820 d!2146301))

(declare-fun d!2146303 () Bool)

(declare-fun c!1270409 () Bool)

(assert (=> d!2146303 (= c!1270409 (isEmpty!38481 (tail!12766 (_2!36917 lt!2452079))))))

(declare-fun e!4117509 () Bool)

(assert (=> d!2146303 (= (matchZipper!2625 (derivationStepZipper!2583 lt!2452059 (head!13681 (_2!36917 lt!2452079))) (tail!12766 (_2!36917 lt!2452079))) e!4117509)))

(declare-fun b!6825262 () Bool)

(assert (=> b!6825262 (= e!4117509 (nullableZipper!2342 (derivationStepZipper!2583 lt!2452059 (head!13681 (_2!36917 lt!2452079)))))))

(declare-fun b!6825263 () Bool)

(assert (=> b!6825263 (= e!4117509 (matchZipper!2625 (derivationStepZipper!2583 (derivationStepZipper!2583 lt!2452059 (head!13681 (_2!36917 lt!2452079))) (head!13681 (tail!12766 (_2!36917 lt!2452079)))) (tail!12766 (tail!12766 (_2!36917 lt!2452079)))))))

(assert (= (and d!2146303 c!1270409) b!6825262))

(assert (= (and d!2146303 (not c!1270409)) b!6825263))

(assert (=> d!2146303 m!7570286))

(declare-fun m!7570956 () Bool)

(assert (=> d!2146303 m!7570956))

(assert (=> b!6825262 m!7570284))

(declare-fun m!7570958 () Bool)

(assert (=> b!6825262 m!7570958))

(assert (=> b!6825263 m!7570286))

(declare-fun m!7570960 () Bool)

(assert (=> b!6825263 m!7570960))

(assert (=> b!6825263 m!7570284))

(assert (=> b!6825263 m!7570960))

(declare-fun m!7570962 () Bool)

(assert (=> b!6825263 m!7570962))

(assert (=> b!6825263 m!7570286))

(declare-fun m!7570964 () Bool)

(assert (=> b!6825263 m!7570964))

(assert (=> b!6825263 m!7570962))

(assert (=> b!6825263 m!7570964))

(declare-fun m!7570966 () Bool)

(assert (=> b!6825263 m!7570966))

(assert (=> b!6824605 d!2146303))

(declare-fun bs!1823607 () Bool)

(declare-fun d!2146305 () Bool)

(assert (= bs!1823607 (and d!2146305 d!2146169)))

(declare-fun lambda!385598 () Int)

(assert (=> bs!1823607 (= (= (head!13681 (_2!36917 lt!2452079)) (head!13681 s!2326)) (= lambda!385598 lambda!385589))))

(declare-fun bs!1823608 () Bool)

(assert (= bs!1823608 (and d!2146305 d!2145993)))

(assert (=> bs!1823608 (= (= (head!13681 (_2!36917 lt!2452079)) (h!72540 s!2326)) (= lambda!385598 lambda!385551))))

(declare-fun bs!1823609 () Bool)

(assert (= bs!1823609 (and d!2146305 d!2146247)))

(assert (=> bs!1823609 (= (= (head!13681 (_2!36917 lt!2452079)) (head!13681 lt!2452083)) (= lambda!385598 lambda!385595))))

(declare-fun bs!1823610 () Bool)

(assert (= bs!1823610 (and d!2146305 d!2145963)))

(assert (=> bs!1823610 (= (= (head!13681 (_2!36917 lt!2452079)) (h!72540 s!2326)) (= lambda!385598 lambda!385544))))

(declare-fun bs!1823611 () Bool)

(assert (= bs!1823611 (and d!2146305 b!6824000)))

(assert (=> bs!1823611 (= (= (head!13681 (_2!36917 lt!2452079)) (h!72540 s!2326)) (= lambda!385598 lambda!385481))))

(declare-fun bs!1823612 () Bool)

(assert (= bs!1823612 (and d!2146305 d!2145827)))

(assert (=> bs!1823612 (= (= (head!13681 (_2!36917 lt!2452079)) (h!72540 s!2326)) (= lambda!385598 lambda!385489))))

(assert (=> d!2146305 true))

(assert (=> d!2146305 (= (derivationStepZipper!2583 lt!2452059 (head!13681 (_2!36917 lt!2452079))) (flatMap!2120 lt!2452059 lambda!385598))))

(declare-fun bs!1823613 () Bool)

(assert (= bs!1823613 d!2146305))

(declare-fun m!7570968 () Bool)

(assert (=> bs!1823613 m!7570968))

(assert (=> b!6824605 d!2146305))

(declare-fun d!2146307 () Bool)

(assert (=> d!2146307 (= (head!13681 (_2!36917 lt!2452079)) (h!72540 (_2!36917 lt!2452079)))))

(assert (=> b!6824605 d!2146307))

(declare-fun d!2146309 () Bool)

(assert (=> d!2146309 (= (tail!12766 (_2!36917 lt!2452079)) (t!379955 (_2!36917 lt!2452079)))))

(assert (=> b!6824605 d!2146309))

(declare-fun d!2146311 () Bool)

(declare-fun c!1270412 () Bool)

(assert (=> d!2146311 (= c!1270412 (and ((_ is ElementMatch!16639) (h!72541 (exprs!6523 lt!2452076))) (= (c!1270055 (h!72541 (exprs!6523 lt!2452076))) (h!72540 s!2326))))))

(declare-fun e!4117513 () (InoxSet Context!12046))

(assert (=> d!2146311 (= (derivationStepZipperDown!1867 (h!72541 (exprs!6523 lt!2452076)) (Context!12047 (t!379956 (exprs!6523 lt!2452076))) (h!72540 s!2326)) e!4117513)))

(declare-fun c!1270411 () Bool)

(declare-fun call!621221 () (InoxSet Context!12046))

(declare-fun bm!621213 () Bool)

(declare-fun call!621223 () List!66217)

(assert (=> bm!621213 (= call!621221 (derivationStepZipperDown!1867 (ite c!1270411 (regTwo!33791 (h!72541 (exprs!6523 lt!2452076))) (regOne!33790 (h!72541 (exprs!6523 lt!2452076)))) (ite c!1270411 (Context!12047 (t!379956 (exprs!6523 lt!2452076))) (Context!12047 call!621223)) (h!72540 s!2326)))))

(declare-fun bm!621214 () Bool)

(declare-fun call!621222 () (InoxSet Context!12046))

(declare-fun call!621220 () (InoxSet Context!12046))

(assert (=> bm!621214 (= call!621222 call!621220)))

(declare-fun b!6825266 () Bool)

(declare-fun c!1270414 () Bool)

(declare-fun e!4117514 () Bool)

(assert (=> b!6825266 (= c!1270414 e!4117514)))

(declare-fun res!2787741 () Bool)

(assert (=> b!6825266 (=> (not res!2787741) (not e!4117514))))

(assert (=> b!6825266 (= res!2787741 ((_ is Concat!25484) (h!72541 (exprs!6523 lt!2452076))))))

(declare-fun e!4117511 () (InoxSet Context!12046))

(declare-fun e!4117512 () (InoxSet Context!12046))

(assert (=> b!6825266 (= e!4117511 e!4117512)))

(declare-fun c!1270413 () Bool)

(declare-fun bm!621215 () Bool)

(assert (=> bm!621215 (= call!621223 ($colon$colon!2444 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452076)))) (ite (or c!1270414 c!1270413) (regTwo!33790 (h!72541 (exprs!6523 lt!2452076))) (h!72541 (exprs!6523 lt!2452076)))))))

(declare-fun b!6825267 () Bool)

(assert (=> b!6825267 (= e!4117512 ((_ map or) call!621221 call!621222))))

(declare-fun call!621218 () List!66217)

(declare-fun bm!621216 () Bool)

(assert (=> bm!621216 (= call!621220 (derivationStepZipperDown!1867 (ite c!1270411 (regOne!33791 (h!72541 (exprs!6523 lt!2452076))) (ite c!1270414 (regTwo!33790 (h!72541 (exprs!6523 lt!2452076))) (ite c!1270413 (regOne!33790 (h!72541 (exprs!6523 lt!2452076))) (reg!16968 (h!72541 (exprs!6523 lt!2452076)))))) (ite (or c!1270411 c!1270414) (Context!12047 (t!379956 (exprs!6523 lt!2452076))) (Context!12047 call!621218)) (h!72540 s!2326)))))

(declare-fun b!6825268 () Bool)

(assert (=> b!6825268 (= e!4117513 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (t!379956 (exprs!6523 lt!2452076))) true))))

(declare-fun b!6825269 () Bool)

(declare-fun e!4117510 () (InoxSet Context!12046))

(declare-fun call!621219 () (InoxSet Context!12046))

(assert (=> b!6825269 (= e!4117510 call!621219)))

(declare-fun b!6825270 () Bool)

(assert (=> b!6825270 (= e!4117513 e!4117511)))

(assert (=> b!6825270 (= c!1270411 ((_ is Union!16639) (h!72541 (exprs!6523 lt!2452076))))))

(declare-fun bm!621217 () Bool)

(assert (=> bm!621217 (= call!621218 call!621223)))

(declare-fun b!6825271 () Bool)

(declare-fun e!4117515 () (InoxSet Context!12046))

(assert (=> b!6825271 (= e!4117512 e!4117515)))

(assert (=> b!6825271 (= c!1270413 ((_ is Concat!25484) (h!72541 (exprs!6523 lt!2452076))))))

(declare-fun b!6825272 () Bool)

(assert (=> b!6825272 (= e!4117510 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825273 () Bool)

(assert (=> b!6825273 (= e!4117511 ((_ map or) call!621220 call!621221))))

(declare-fun b!6825274 () Bool)

(declare-fun c!1270410 () Bool)

(assert (=> b!6825274 (= c!1270410 ((_ is Star!16639) (h!72541 (exprs!6523 lt!2452076))))))

(assert (=> b!6825274 (= e!4117515 e!4117510)))

(declare-fun b!6825275 () Bool)

(assert (=> b!6825275 (= e!4117514 (nullable!6614 (regOne!33790 (h!72541 (exprs!6523 lt!2452076)))))))

(declare-fun bm!621218 () Bool)

(assert (=> bm!621218 (= call!621219 call!621222)))

(declare-fun b!6825276 () Bool)

(assert (=> b!6825276 (= e!4117515 call!621219)))

(assert (= (and d!2146311 c!1270412) b!6825268))

(assert (= (and d!2146311 (not c!1270412)) b!6825270))

(assert (= (and b!6825270 c!1270411) b!6825273))

(assert (= (and b!6825270 (not c!1270411)) b!6825266))

(assert (= (and b!6825266 res!2787741) b!6825275))

(assert (= (and b!6825266 c!1270414) b!6825267))

(assert (= (and b!6825266 (not c!1270414)) b!6825271))

(assert (= (and b!6825271 c!1270413) b!6825276))

(assert (= (and b!6825271 (not c!1270413)) b!6825274))

(assert (= (and b!6825274 c!1270410) b!6825269))

(assert (= (and b!6825274 (not c!1270410)) b!6825272))

(assert (= (or b!6825276 b!6825269) bm!621217))

(assert (= (or b!6825276 b!6825269) bm!621218))

(assert (= (or b!6825267 bm!621217) bm!621215))

(assert (= (or b!6825267 bm!621218) bm!621214))

(assert (= (or b!6825273 b!6825267) bm!621213))

(assert (= (or b!6825273 bm!621214) bm!621216))

(declare-fun m!7570970 () Bool)

(assert (=> bm!621215 m!7570970))

(declare-fun m!7570972 () Bool)

(assert (=> bm!621216 m!7570972))

(declare-fun m!7570974 () Bool)

(assert (=> b!6825275 m!7570974))

(declare-fun m!7570976 () Bool)

(assert (=> b!6825268 m!7570976))

(declare-fun m!7570978 () Bool)

(assert (=> bm!621213 m!7570978))

(assert (=> bm!621106 d!2146311))

(assert (=> d!2145851 d!2146161))

(declare-fun d!2146313 () Bool)

(declare-fun c!1270425 () Bool)

(assert (=> d!2146313 (= c!1270425 (isEmpty!38481 Nil!66092))))

(declare-fun e!4117526 () Bool)

(assert (=> d!2146313 (= (matchZipper!2625 lt!2452091 Nil!66092) e!4117526)))

(declare-fun b!6825295 () Bool)

(assert (=> b!6825295 (= e!4117526 (nullableZipper!2342 lt!2452091))))

(declare-fun b!6825296 () Bool)

(assert (=> b!6825296 (= e!4117526 (matchZipper!2625 (derivationStepZipper!2583 lt!2452091 (head!13681 Nil!66092)) (tail!12766 Nil!66092)))))

(assert (= (and d!2146313 c!1270425) b!6825295))

(assert (= (and d!2146313 (not c!1270425)) b!6825296))

(declare-fun m!7570980 () Bool)

(assert (=> d!2146313 m!7570980))

(assert (=> b!6825295 m!7570292))

(declare-fun m!7570982 () Bool)

(assert (=> b!6825296 m!7570982))

(assert (=> b!6825296 m!7570982))

(declare-fun m!7570984 () Bool)

(assert (=> b!6825296 m!7570984))

(declare-fun m!7570986 () Bool)

(assert (=> b!6825296 m!7570986))

(assert (=> b!6825296 m!7570984))

(assert (=> b!6825296 m!7570986))

(declare-fun m!7570988 () Bool)

(assert (=> b!6825296 m!7570988))

(assert (=> d!2145851 d!2146313))

(declare-fun b!6825299 () Bool)

(declare-fun res!2787743 () Bool)

(declare-fun e!4117527 () Bool)

(assert (=> b!6825299 (=> (not res!2787743) (not e!4117527))))

(declare-fun lt!2452298 () List!66216)

(assert (=> b!6825299 (= res!2787743 (= (size!40693 lt!2452298) (+ (size!40693 Nil!66092) (size!40693 s!2326))))))

(declare-fun d!2146315 () Bool)

(assert (=> d!2146315 e!4117527))

(declare-fun res!2787742 () Bool)

(assert (=> d!2146315 (=> (not res!2787742) (not e!4117527))))

(assert (=> d!2146315 (= res!2787742 (= (content!12939 lt!2452298) ((_ map or) (content!12939 Nil!66092) (content!12939 s!2326))))))

(declare-fun e!4117528 () List!66216)

(assert (=> d!2146315 (= lt!2452298 e!4117528)))

(declare-fun c!1270426 () Bool)

(assert (=> d!2146315 (= c!1270426 ((_ is Nil!66092) Nil!66092))))

(assert (=> d!2146315 (= (++!14825 Nil!66092 s!2326) lt!2452298)))

(declare-fun b!6825298 () Bool)

(assert (=> b!6825298 (= e!4117528 (Cons!66092 (h!72540 Nil!66092) (++!14825 (t!379955 Nil!66092) s!2326)))))

(declare-fun b!6825300 () Bool)

(assert (=> b!6825300 (= e!4117527 (or (not (= s!2326 Nil!66092)) (= lt!2452298 Nil!66092)))))

(declare-fun b!6825297 () Bool)

(assert (=> b!6825297 (= e!4117528 s!2326)))

(assert (= (and d!2146315 c!1270426) b!6825297))

(assert (= (and d!2146315 (not c!1270426)) b!6825298))

(assert (= (and d!2146315 res!2787742) b!6825299))

(assert (= (and b!6825299 res!2787743) b!6825300))

(declare-fun m!7570990 () Bool)

(assert (=> b!6825299 m!7570990))

(assert (=> b!6825299 m!7570842))

(declare-fun m!7570992 () Bool)

(assert (=> b!6825299 m!7570992))

(declare-fun m!7570994 () Bool)

(assert (=> d!2146315 m!7570994))

(assert (=> d!2146315 m!7570848))

(declare-fun m!7570996 () Bool)

(assert (=> d!2146315 m!7570996))

(declare-fun m!7570998 () Bool)

(assert (=> b!6825298 m!7570998))

(assert (=> d!2145851 d!2146315))

(declare-fun d!2146317 () Bool)

(declare-fun c!1270427 () Bool)

(assert (=> d!2146317 (= c!1270427 (isEmpty!38481 (tail!12766 (_1!36917 lt!2452079))))))

(declare-fun e!4117529 () Bool)

(assert (=> d!2146317 (= (matchZipper!2625 (derivationStepZipper!2583 lt!2452091 (head!13681 (_1!36917 lt!2452079))) (tail!12766 (_1!36917 lt!2452079))) e!4117529)))

(declare-fun b!6825301 () Bool)

(assert (=> b!6825301 (= e!4117529 (nullableZipper!2342 (derivationStepZipper!2583 lt!2452091 (head!13681 (_1!36917 lt!2452079)))))))

(declare-fun b!6825302 () Bool)

(assert (=> b!6825302 (= e!4117529 (matchZipper!2625 (derivationStepZipper!2583 (derivationStepZipper!2583 lt!2452091 (head!13681 (_1!36917 lt!2452079))) (head!13681 (tail!12766 (_1!36917 lt!2452079)))) (tail!12766 (tail!12766 (_1!36917 lt!2452079)))))))

(assert (= (and d!2146317 c!1270427) b!6825301))

(assert (= (and d!2146317 (not c!1270427)) b!6825302))

(assert (=> d!2146317 m!7570298))

(assert (=> d!2146317 m!7570446))

(assert (=> b!6825301 m!7570296))

(declare-fun m!7571000 () Bool)

(assert (=> b!6825301 m!7571000))

(assert (=> b!6825302 m!7570298))

(declare-fun m!7571002 () Bool)

(assert (=> b!6825302 m!7571002))

(assert (=> b!6825302 m!7570296))

(assert (=> b!6825302 m!7571002))

(declare-fun m!7571004 () Bool)

(assert (=> b!6825302 m!7571004))

(assert (=> b!6825302 m!7570298))

(declare-fun m!7571006 () Bool)

(assert (=> b!6825302 m!7571006))

(assert (=> b!6825302 m!7571004))

(assert (=> b!6825302 m!7571006))

(declare-fun m!7571008 () Bool)

(assert (=> b!6825302 m!7571008))

(assert (=> b!6824616 d!2146317))

(declare-fun bs!1823614 () Bool)

(declare-fun d!2146319 () Bool)

(assert (= bs!1823614 (and d!2146319 d!2146305)))

(declare-fun lambda!385599 () Int)

(assert (=> bs!1823614 (= (= (head!13681 (_1!36917 lt!2452079)) (head!13681 (_2!36917 lt!2452079))) (= lambda!385599 lambda!385598))))

(declare-fun bs!1823615 () Bool)

(assert (= bs!1823615 (and d!2146319 d!2146169)))

(assert (=> bs!1823615 (= (= (head!13681 (_1!36917 lt!2452079)) (head!13681 s!2326)) (= lambda!385599 lambda!385589))))

(declare-fun bs!1823616 () Bool)

(assert (= bs!1823616 (and d!2146319 d!2145993)))

(assert (=> bs!1823616 (= (= (head!13681 (_1!36917 lt!2452079)) (h!72540 s!2326)) (= lambda!385599 lambda!385551))))

(declare-fun bs!1823617 () Bool)

(assert (= bs!1823617 (and d!2146319 d!2146247)))

(assert (=> bs!1823617 (= (= (head!13681 (_1!36917 lt!2452079)) (head!13681 lt!2452083)) (= lambda!385599 lambda!385595))))

(declare-fun bs!1823618 () Bool)

(assert (= bs!1823618 (and d!2146319 d!2145963)))

(assert (=> bs!1823618 (= (= (head!13681 (_1!36917 lt!2452079)) (h!72540 s!2326)) (= lambda!385599 lambda!385544))))

(declare-fun bs!1823619 () Bool)

(assert (= bs!1823619 (and d!2146319 b!6824000)))

(assert (=> bs!1823619 (= (= (head!13681 (_1!36917 lt!2452079)) (h!72540 s!2326)) (= lambda!385599 lambda!385481))))

(declare-fun bs!1823620 () Bool)

(assert (= bs!1823620 (and d!2146319 d!2145827)))

(assert (=> bs!1823620 (= (= (head!13681 (_1!36917 lt!2452079)) (h!72540 s!2326)) (= lambda!385599 lambda!385489))))

(assert (=> d!2146319 true))

(assert (=> d!2146319 (= (derivationStepZipper!2583 lt!2452091 (head!13681 (_1!36917 lt!2452079))) (flatMap!2120 lt!2452091 lambda!385599))))

(declare-fun bs!1823621 () Bool)

(assert (= bs!1823621 d!2146319))

(declare-fun m!7571010 () Bool)

(assert (=> bs!1823621 m!7571010))

(assert (=> b!6824616 d!2146319))

(declare-fun d!2146321 () Bool)

(assert (=> d!2146321 (= (head!13681 (_1!36917 lt!2452079)) (h!72540 (_1!36917 lt!2452079)))))

(assert (=> b!6824616 d!2146321))

(assert (=> b!6824616 d!2146301))

(assert (=> b!6824897 d!2146177))

(assert (=> bs!1823516 d!2146067))

(assert (=> d!2145821 d!2145913))

(declare-fun d!2146323 () Bool)

(declare-fun lt!2452301 () Int)

(assert (=> d!2146323 (>= lt!2452301 0)))

(declare-fun e!4117532 () Int)

(assert (=> d!2146323 (= lt!2452301 e!4117532)))

(declare-fun c!1270430 () Bool)

(assert (=> d!2146323 (= c!1270430 ((_ is Nil!66093) lt!2452245))))

(assert (=> d!2146323 (= (size!40695 lt!2452245) lt!2452301)))

(declare-fun b!6825307 () Bool)

(assert (=> b!6825307 (= e!4117532 0)))

(declare-fun b!6825308 () Bool)

(assert (=> b!6825308 (= e!4117532 (+ 1 (size!40695 (t!379956 lt!2452245))))))

(assert (= (and d!2146323 c!1270430) b!6825307))

(assert (= (and d!2146323 (not c!1270430)) b!6825308))

(declare-fun m!7571012 () Bool)

(assert (=> b!6825308 m!7571012))

(assert (=> b!6824805 d!2146323))

(declare-fun d!2146325 () Bool)

(declare-fun lt!2452302 () Int)

(assert (=> d!2146325 (>= lt!2452302 0)))

(declare-fun e!4117533 () Int)

(assert (=> d!2146325 (= lt!2452302 e!4117533)))

(declare-fun c!1270431 () Bool)

(assert (=> d!2146325 (= c!1270431 ((_ is Nil!66093) lt!2452077))))

(assert (=> d!2146325 (= (size!40695 lt!2452077) lt!2452302)))

(declare-fun b!6825309 () Bool)

(assert (=> b!6825309 (= e!4117533 0)))

(declare-fun b!6825310 () Bool)

(assert (=> b!6825310 (= e!4117533 (+ 1 (size!40695 (t!379956 lt!2452077))))))

(assert (= (and d!2146325 c!1270431) b!6825309))

(assert (= (and d!2146325 (not c!1270431)) b!6825310))

(declare-fun m!7571014 () Bool)

(assert (=> b!6825310 m!7571014))

(assert (=> b!6824805 d!2146325))

(declare-fun d!2146327 () Bool)

(declare-fun lt!2452303 () Int)

(assert (=> d!2146327 (>= lt!2452303 0)))

(declare-fun e!4117534 () Int)

(assert (=> d!2146327 (= lt!2452303 e!4117534)))

(declare-fun c!1270432 () Bool)

(assert (=> d!2146327 (= c!1270432 ((_ is Nil!66093) lt!2452065))))

(assert (=> d!2146327 (= (size!40695 lt!2452065) lt!2452303)))

(declare-fun b!6825311 () Bool)

(assert (=> b!6825311 (= e!4117534 0)))

(declare-fun b!6825312 () Bool)

(assert (=> b!6825312 (= e!4117534 (+ 1 (size!40695 (t!379956 lt!2452065))))))

(assert (= (and d!2146327 c!1270432) b!6825311))

(assert (= (and d!2146327 (not c!1270432)) b!6825312))

(declare-fun m!7571016 () Bool)

(assert (=> b!6825312 m!7571016))

(assert (=> b!6824805 d!2146327))

(declare-fun d!2146329 () Bool)

(assert (=> d!2146329 true))

(assert (=> d!2146329 true))

(declare-fun res!2787746 () Bool)

(assert (=> d!2146329 (= (choose!50883 lambda!385479) res!2787746)))

(assert (=> d!2145911 d!2146329))

(declare-fun d!2146331 () Bool)

(assert (=> d!2146331 (= (flatMap!2120 lt!2452058 lambda!385489) (choose!50889 lt!2452058 lambda!385489))))

(declare-fun bs!1823622 () Bool)

(assert (= bs!1823622 d!2146331))

(declare-fun m!7571018 () Bool)

(assert (=> bs!1823622 m!7571018))

(assert (=> d!2145827 d!2146331))

(assert (=> b!6824754 d!2146177))

(declare-fun bs!1823623 () Bool)

(declare-fun b!6825332 () Bool)

(assert (= bs!1823623 (and b!6825332 b!6825030)))

(declare-fun lambda!385600 () Int)

(assert (=> bs!1823623 (= (and (= (reg!16968 (regTwo!33791 lt!2452072)) (reg!16968 (regOne!33791 lt!2452072))) (= (regTwo!33791 lt!2452072) (regOne!33791 lt!2452072))) (= lambda!385600 lambda!385586))))

(declare-fun bs!1823624 () Bool)

(assert (= bs!1823624 (and b!6825332 d!2145873)))

(assert (=> bs!1823624 (not (= lambda!385600 lambda!385514))))

(declare-fun bs!1823625 () Bool)

(assert (= bs!1823625 (and b!6825332 d!2145893)))

(assert (=> bs!1823625 (not (= lambda!385600 lambda!385522))))

(declare-fun bs!1823626 () Bool)

(assert (= bs!1823626 (and b!6825332 b!6824881)))

(assert (=> bs!1823626 (not (= lambda!385600 lambda!385575))))

(declare-fun bs!1823627 () Bool)

(assert (= bs!1823627 (and b!6825332 b!6825021)))

(assert (=> bs!1823627 (not (= lambda!385600 lambda!385587))))

(declare-fun bs!1823629 () Bool)

(assert (= bs!1823629 (and b!6825332 d!2145941)))

(assert (=> bs!1823629 (not (= lambda!385600 lambda!385537))))

(declare-fun bs!1823631 () Bool)

(assert (= bs!1823631 (and b!6825332 b!6824003)))

(assert (=> bs!1823631 (not (= lambda!385600 lambda!385480))))

(assert (=> bs!1823624 (not (= lambda!385600 lambda!385515))))

(assert (=> bs!1823625 (= (and (= (reg!16968 (regTwo!33791 lt!2452072)) (reg!16968 r!7292)) (= (regTwo!33791 lt!2452072) (Star!16639 (reg!16968 r!7292)))) (= lambda!385600 lambda!385525))))

(declare-fun bs!1823635 () Bool)

(assert (= bs!1823635 (and b!6825332 b!6824659)))

(assert (=> bs!1823635 (not (= lambda!385600 lambda!385564))))

(declare-fun bs!1823636 () Bool)

(assert (= bs!1823636 (and b!6825332 b!6824890)))

(assert (=> bs!1823636 (= (and (= (reg!16968 (regTwo!33791 lt!2452072)) (reg!16968 lt!2452072)) (= (regTwo!33791 lt!2452072) lt!2452072)) (= lambda!385600 lambda!385574))))

(declare-fun bs!1823637 () Bool)

(assert (= bs!1823637 (and b!6825332 b!6824668)))

(assert (=> bs!1823637 (= (and (= (reg!16968 (regTwo!33791 lt!2452072)) (reg!16968 r!7292)) (= (regTwo!33791 lt!2452072) r!7292)) (= lambda!385600 lambda!385563))))

(assert (=> bs!1823631 (= (and (= (reg!16968 (regTwo!33791 lt!2452072)) (reg!16968 r!7292)) (= (regTwo!33791 lt!2452072) r!7292)) (= lambda!385600 lambda!385479))))

(assert (=> bs!1823631 (not (= lambda!385600 lambda!385478))))

(assert (=> b!6825332 true))

(assert (=> b!6825332 true))

(declare-fun bs!1823638 () Bool)

(declare-fun b!6825323 () Bool)

(assert (= bs!1823638 (and b!6825323 b!6825030)))

(declare-fun lambda!385602 () Int)

(assert (=> bs!1823638 (not (= lambda!385602 lambda!385586))))

(declare-fun bs!1823639 () Bool)

(assert (= bs!1823639 (and b!6825323 d!2145873)))

(assert (=> bs!1823639 (not (= lambda!385602 lambda!385514))))

(declare-fun bs!1823640 () Bool)

(assert (= bs!1823640 (and b!6825323 b!6824881)))

(assert (=> bs!1823640 (= (and (= (regOne!33790 (regTwo!33791 lt!2452072)) (regOne!33790 lt!2452072)) (= (regTwo!33790 (regTwo!33791 lt!2452072)) (regTwo!33790 lt!2452072))) (= lambda!385602 lambda!385575))))

(declare-fun bs!1823641 () Bool)

(assert (= bs!1823641 (and b!6825323 b!6825021)))

(assert (=> bs!1823641 (= (and (= (regOne!33790 (regTwo!33791 lt!2452072)) (regOne!33790 (regOne!33791 lt!2452072))) (= (regTwo!33790 (regTwo!33791 lt!2452072)) (regTwo!33790 (regOne!33791 lt!2452072)))) (= lambda!385602 lambda!385587))))

(declare-fun bs!1823642 () Bool)

(assert (= bs!1823642 (and b!6825323 d!2145941)))

(assert (=> bs!1823642 (not (= lambda!385602 lambda!385537))))

(declare-fun bs!1823643 () Bool)

(assert (= bs!1823643 (and b!6825323 b!6824003)))

(assert (=> bs!1823643 (= (and (= (regOne!33790 (regTwo!33791 lt!2452072)) (reg!16968 r!7292)) (= (regTwo!33790 (regTwo!33791 lt!2452072)) r!7292)) (= lambda!385602 lambda!385480))))

(assert (=> bs!1823639 (= (and (= (regOne!33790 (regTwo!33791 lt!2452072)) (reg!16968 r!7292)) (= (regTwo!33790 (regTwo!33791 lt!2452072)) r!7292)) (= lambda!385602 lambda!385515))))

(declare-fun bs!1823645 () Bool)

(assert (= bs!1823645 (and b!6825323 d!2145893)))

(assert (=> bs!1823645 (not (= lambda!385602 lambda!385525))))

(declare-fun bs!1823646 () Bool)

(assert (= bs!1823646 (and b!6825323 b!6824659)))

(assert (=> bs!1823646 (= (and (= (regOne!33790 (regTwo!33791 lt!2452072)) (regOne!33790 r!7292)) (= (regTwo!33790 (regTwo!33791 lt!2452072)) (regTwo!33790 r!7292))) (= lambda!385602 lambda!385564))))

(declare-fun bs!1823647 () Bool)

(assert (= bs!1823647 (and b!6825323 b!6824890)))

(assert (=> bs!1823647 (not (= lambda!385602 lambda!385574))))

(declare-fun bs!1823648 () Bool)

(assert (= bs!1823648 (and b!6825323 b!6824668)))

(assert (=> bs!1823648 (not (= lambda!385602 lambda!385563))))

(declare-fun bs!1823649 () Bool)

(assert (= bs!1823649 (and b!6825323 b!6825332)))

(assert (=> bs!1823649 (not (= lambda!385602 lambda!385600))))

(assert (=> bs!1823645 (not (= lambda!385602 lambda!385522))))

(assert (=> bs!1823643 (not (= lambda!385602 lambda!385479))))

(assert (=> bs!1823643 (not (= lambda!385602 lambda!385478))))

(assert (=> b!6825323 true))

(assert (=> b!6825323 true))

(declare-fun e!4117545 () Bool)

(declare-fun call!621236 () Bool)

(assert (=> b!6825323 (= e!4117545 call!621236)))

(declare-fun b!6825324 () Bool)

(declare-fun res!2787749 () Bool)

(declare-fun e!4117541 () Bool)

(assert (=> b!6825324 (=> res!2787749 e!4117541)))

(declare-fun call!621237 () Bool)

(assert (=> b!6825324 (= res!2787749 call!621237)))

(assert (=> b!6825324 (= e!4117545 e!4117541)))

(declare-fun b!6825325 () Bool)

(declare-fun e!4117540 () Bool)

(declare-fun e!4117546 () Bool)

(assert (=> b!6825325 (= e!4117540 e!4117546)))

(declare-fun res!2787747 () Bool)

(assert (=> b!6825325 (= res!2787747 (not ((_ is EmptyLang!16639) (regTwo!33791 lt!2452072))))))

(assert (=> b!6825325 (=> (not res!2787747) (not e!4117546))))

(declare-fun b!6825326 () Bool)

(declare-fun e!4117542 () Bool)

(assert (=> b!6825326 (= e!4117542 (matchRSpec!3740 (regTwo!33791 (regTwo!33791 lt!2452072)) s!2326))))

(declare-fun b!6825327 () Bool)

(declare-fun e!4117543 () Bool)

(assert (=> b!6825327 (= e!4117543 (= s!2326 (Cons!66092 (c!1270055 (regTwo!33791 lt!2452072)) Nil!66092)))))

(declare-fun b!6825328 () Bool)

(declare-fun c!1270439 () Bool)

(assert (=> b!6825328 (= c!1270439 ((_ is Union!16639) (regTwo!33791 lt!2452072)))))

(declare-fun e!4117544 () Bool)

(assert (=> b!6825328 (= e!4117543 e!4117544)))

(declare-fun b!6825329 () Bool)

(declare-fun c!1270441 () Bool)

(assert (=> b!6825329 (= c!1270441 ((_ is ElementMatch!16639) (regTwo!33791 lt!2452072)))))

(assert (=> b!6825329 (= e!4117546 e!4117543)))

(declare-fun d!2146333 () Bool)

(declare-fun c!1270440 () Bool)

(assert (=> d!2146333 (= c!1270440 ((_ is EmptyExpr!16639) (regTwo!33791 lt!2452072)))))

(assert (=> d!2146333 (= (matchRSpec!3740 (regTwo!33791 lt!2452072) s!2326) e!4117540)))

(declare-fun b!6825330 () Bool)

(assert (=> b!6825330 (= e!4117544 e!4117542)))

(declare-fun res!2787748 () Bool)

(assert (=> b!6825330 (= res!2787748 (matchRSpec!3740 (regOne!33791 (regTwo!33791 lt!2452072)) s!2326))))

(assert (=> b!6825330 (=> res!2787748 e!4117542)))

(declare-fun b!6825331 () Bool)

(assert (=> b!6825331 (= e!4117540 call!621237)))

(declare-fun bm!621231 () Bool)

(assert (=> bm!621231 (= call!621237 (isEmpty!38481 s!2326))))

(declare-fun c!1270438 () Bool)

(declare-fun bm!621232 () Bool)

(assert (=> bm!621232 (= call!621236 (Exists!3707 (ite c!1270438 lambda!385600 lambda!385602)))))

(assert (=> b!6825332 (= e!4117541 call!621236)))

(declare-fun b!6825333 () Bool)

(assert (=> b!6825333 (= e!4117544 e!4117545)))

(assert (=> b!6825333 (= c!1270438 ((_ is Star!16639) (regTwo!33791 lt!2452072)))))

(assert (= (and d!2146333 c!1270440) b!6825331))

(assert (= (and d!2146333 (not c!1270440)) b!6825325))

(assert (= (and b!6825325 res!2787747) b!6825329))

(assert (= (and b!6825329 c!1270441) b!6825327))

(assert (= (and b!6825329 (not c!1270441)) b!6825328))

(assert (= (and b!6825328 c!1270439) b!6825330))

(assert (= (and b!6825328 (not c!1270439)) b!6825333))

(assert (= (and b!6825330 (not res!2787748)) b!6825326))

(assert (= (and b!6825333 c!1270438) b!6825324))

(assert (= (and b!6825333 (not c!1270438)) b!6825323))

(assert (= (and b!6825324 (not res!2787749)) b!6825332))

(assert (= (or b!6825332 b!6825323) bm!621232))

(assert (= (or b!6825331 b!6825324) bm!621231))

(declare-fun m!7571040 () Bool)

(assert (=> b!6825326 m!7571040))

(declare-fun m!7571042 () Bool)

(assert (=> b!6825330 m!7571042))

(assert (=> bm!621231 m!7569622))

(declare-fun m!7571044 () Bool)

(assert (=> bm!621232 m!7571044))

(assert (=> b!6824884 d!2146333))

(declare-fun d!2146345 () Bool)

(assert (=> d!2146345 (= (nullable!6614 (h!72541 (exprs!6523 (h!72542 zl!343)))) (nullableFct!2511 (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun bs!1823650 () Bool)

(assert (= bs!1823650 d!2146345))

(declare-fun m!7571046 () Bool)

(assert (=> bs!1823650 m!7571046))

(assert (=> b!6824879 d!2146345))

(assert (=> bm!621135 d!2145913))

(declare-fun d!2146347 () Bool)

(assert (=> d!2146347 (= (isEmpty!38481 (_1!36917 lt!2452079)) ((_ is Nil!66092) (_1!36917 lt!2452079)))))

(assert (=> d!2146047 d!2146347))

(declare-fun b!6825341 () Bool)

(declare-fun e!4117553 () Bool)

(declare-fun e!4117556 () Bool)

(assert (=> b!6825341 (= e!4117553 e!4117556)))

(declare-fun c!1270444 () Bool)

(assert (=> b!6825341 (= c!1270444 ((_ is Star!16639) (reg!16968 r!7292)))))

(declare-fun d!2146349 () Bool)

(declare-fun res!2787755 () Bool)

(assert (=> d!2146349 (=> res!2787755 e!4117553)))

(assert (=> d!2146349 (= res!2787755 ((_ is ElementMatch!16639) (reg!16968 r!7292)))))

(assert (=> d!2146349 (= (validRegex!8375 (reg!16968 r!7292)) e!4117553)))

(declare-fun bm!621233 () Bool)

(declare-fun call!621238 () Bool)

(declare-fun c!1270443 () Bool)

(assert (=> bm!621233 (= call!621238 (validRegex!8375 (ite c!1270443 (regOne!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))))))

(declare-fun b!6825342 () Bool)

(declare-fun e!4117554 () Bool)

(assert (=> b!6825342 (= e!4117556 e!4117554)))

(assert (=> b!6825342 (= c!1270443 ((_ is Union!16639) (reg!16968 r!7292)))))

(declare-fun b!6825343 () Bool)

(declare-fun e!4117557 () Bool)

(declare-fun call!621239 () Bool)

(assert (=> b!6825343 (= e!4117557 call!621239)))

(declare-fun b!6825344 () Bool)

(declare-fun e!4117555 () Bool)

(declare-fun call!621240 () Bool)

(assert (=> b!6825344 (= e!4117555 call!621240)))

(declare-fun b!6825345 () Bool)

(assert (=> b!6825345 (= e!4117556 e!4117557)))

(declare-fun res!2787757 () Bool)

(assert (=> b!6825345 (= res!2787757 (not (nullable!6614 (reg!16968 (reg!16968 r!7292)))))))

(assert (=> b!6825345 (=> (not res!2787757) (not e!4117557))))

(declare-fun bm!621234 () Bool)

(assert (=> bm!621234 (= call!621240 call!621239)))

(declare-fun b!6825346 () Bool)

(declare-fun res!2787758 () Bool)

(declare-fun e!4117559 () Bool)

(assert (=> b!6825346 (=> res!2787758 e!4117559)))

(assert (=> b!6825346 (= res!2787758 (not ((_ is Concat!25484) (reg!16968 r!7292))))))

(assert (=> b!6825346 (= e!4117554 e!4117559)))

(declare-fun b!6825347 () Bool)

(declare-fun res!2787759 () Bool)

(assert (=> b!6825347 (=> (not res!2787759) (not e!4117555))))

(assert (=> b!6825347 (= res!2787759 call!621238)))

(assert (=> b!6825347 (= e!4117554 e!4117555)))

(declare-fun b!6825348 () Bool)

(declare-fun e!4117558 () Bool)

(assert (=> b!6825348 (= e!4117558 call!621240)))

(declare-fun b!6825349 () Bool)

(assert (=> b!6825349 (= e!4117559 e!4117558)))

(declare-fun res!2787756 () Bool)

(assert (=> b!6825349 (=> (not res!2787756) (not e!4117558))))

(assert (=> b!6825349 (= res!2787756 call!621238)))

(declare-fun bm!621235 () Bool)

(assert (=> bm!621235 (= call!621239 (validRegex!8375 (ite c!1270444 (reg!16968 (reg!16968 r!7292)) (ite c!1270443 (regTwo!33791 (reg!16968 r!7292)) (regTwo!33790 (reg!16968 r!7292))))))))

(assert (= (and d!2146349 (not res!2787755)) b!6825341))

(assert (= (and b!6825341 c!1270444) b!6825345))

(assert (= (and b!6825341 (not c!1270444)) b!6825342))

(assert (= (and b!6825345 res!2787757) b!6825343))

(assert (= (and b!6825342 c!1270443) b!6825347))

(assert (= (and b!6825342 (not c!1270443)) b!6825346))

(assert (= (and b!6825347 res!2787759) b!6825344))

(assert (= (and b!6825346 (not res!2787758)) b!6825349))

(assert (= (and b!6825349 res!2787756) b!6825348))

(assert (= (or b!6825344 b!6825348) bm!621234))

(assert (= (or b!6825347 b!6825349) bm!621233))

(assert (= (or b!6825343 bm!621234) bm!621235))

(declare-fun m!7571056 () Bool)

(assert (=> bm!621233 m!7571056))

(declare-fun m!7571060 () Bool)

(assert (=> b!6825345 m!7571060))

(declare-fun m!7571062 () Bool)

(assert (=> bm!621235 m!7571062))

(assert (=> d!2146047 d!2146349))

(declare-fun d!2146353 () Bool)

(assert (=> d!2146353 (= (isEmpty!38484 (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 Nil!66092 s!2326 s!2326)) (not ((_ is Some!16525) (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 Nil!66092 s!2326 s!2326))))))

(assert (=> d!2145871 d!2146353))

(declare-fun d!2146357 () Bool)

(assert (=> d!2146357 true))

(declare-fun setRes!46854 () Bool)

(assert (=> d!2146357 setRes!46854))

(declare-fun condSetEmpty!46854 () Bool)

(declare-fun res!2787760 () (InoxSet Context!12046))

(assert (=> d!2146357 (= condSetEmpty!46854 (= res!2787760 ((as const (Array Context!12046 Bool)) false)))))

(assert (=> d!2146357 (= (choose!50889 lt!2452059 lambda!385481) res!2787760)))

(declare-fun setIsEmpty!46854 () Bool)

(assert (=> setIsEmpty!46854 setRes!46854))

(declare-fun tp!1867981 () Bool)

(declare-fun e!4117561 () Bool)

(declare-fun setNonEmpty!46854 () Bool)

(declare-fun setElem!46854 () Context!12046)

(assert (=> setNonEmpty!46854 (= setRes!46854 (and tp!1867981 (inv!84844 setElem!46854) e!4117561))))

(declare-fun setRest!46854 () (InoxSet Context!12046))

(assert (=> setNonEmpty!46854 (= res!2787760 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) setElem!46854 true) setRest!46854))))

(declare-fun b!6825352 () Bool)

(declare-fun tp!1867980 () Bool)

(assert (=> b!6825352 (= e!4117561 tp!1867980)))

(assert (= (and d!2146357 condSetEmpty!46854) setIsEmpty!46854))

(assert (= (and d!2146357 (not condSetEmpty!46854)) setNonEmpty!46854))

(assert (= setNonEmpty!46854 b!6825352))

(declare-fun m!7571066 () Bool)

(assert (=> setNonEmpty!46854 m!7571066))

(assert (=> d!2145957 d!2146357))

(declare-fun d!2146359 () Bool)

(declare-fun c!1270448 () Bool)

(assert (=> d!2146359 (= c!1270448 ((_ is Nil!66092) lt!2452122))))

(declare-fun e!4117568 () (InoxSet C!33548))

(assert (=> d!2146359 (= (content!12939 lt!2452122) e!4117568)))

(declare-fun b!6825361 () Bool)

(assert (=> b!6825361 (= e!4117568 ((as const (Array C!33548 Bool)) false))))

(declare-fun b!6825362 () Bool)

(assert (=> b!6825362 (= e!4117568 ((_ map or) (store ((as const (Array C!33548 Bool)) false) (h!72540 lt!2452122) true) (content!12939 (t!379955 lt!2452122))))))

(assert (= (and d!2146359 c!1270448) b!6825361))

(assert (= (and d!2146359 (not c!1270448)) b!6825362))

(declare-fun m!7571070 () Bool)

(assert (=> b!6825362 m!7571070))

(declare-fun m!7571072 () Bool)

(assert (=> b!6825362 m!7571072))

(assert (=> d!2145843 d!2146359))

(declare-fun d!2146365 () Bool)

(declare-fun c!1270449 () Bool)

(assert (=> d!2146365 (= c!1270449 ((_ is Nil!66092) (_1!36917 lt!2452079)))))

(declare-fun e!4117569 () (InoxSet C!33548))

(assert (=> d!2146365 (= (content!12939 (_1!36917 lt!2452079)) e!4117569)))

(declare-fun b!6825363 () Bool)

(assert (=> b!6825363 (= e!4117569 ((as const (Array C!33548 Bool)) false))))

(declare-fun b!6825364 () Bool)

(assert (=> b!6825364 (= e!4117569 ((_ map or) (store ((as const (Array C!33548 Bool)) false) (h!72540 (_1!36917 lt!2452079)) true) (content!12939 (t!379955 (_1!36917 lt!2452079)))))))

(assert (= (and d!2146365 c!1270449) b!6825363))

(assert (= (and d!2146365 (not c!1270449)) b!6825364))

(declare-fun m!7571074 () Bool)

(assert (=> b!6825364 m!7571074))

(declare-fun m!7571076 () Bool)

(assert (=> b!6825364 m!7571076))

(assert (=> d!2145843 d!2146365))

(declare-fun d!2146367 () Bool)

(declare-fun c!1270450 () Bool)

(assert (=> d!2146367 (= c!1270450 ((_ is Nil!66092) (_2!36917 lt!2452079)))))

(declare-fun e!4117570 () (InoxSet C!33548))

(assert (=> d!2146367 (= (content!12939 (_2!36917 lt!2452079)) e!4117570)))

(declare-fun b!6825365 () Bool)

(assert (=> b!6825365 (= e!4117570 ((as const (Array C!33548 Bool)) false))))

(declare-fun b!6825366 () Bool)

(assert (=> b!6825366 (= e!4117570 ((_ map or) (store ((as const (Array C!33548 Bool)) false) (h!72540 (_2!36917 lt!2452079)) true) (content!12939 (t!379955 (_2!36917 lt!2452079)))))))

(assert (= (and d!2146367 c!1270450) b!6825365))

(assert (= (and d!2146367 (not c!1270450)) b!6825366))

(declare-fun m!7571078 () Bool)

(assert (=> b!6825366 m!7571078))

(declare-fun m!7571080 () Bool)

(assert (=> b!6825366 m!7571080))

(assert (=> d!2145843 d!2146367))

(declare-fun d!2146369 () Bool)

(declare-fun c!1270451 () Bool)

(assert (=> d!2146369 (= c!1270451 (isEmpty!38481 (_2!36917 (get!23028 lt!2452139))))))

(declare-fun e!4117571 () Bool)

(assert (=> d!2146369 (= (matchZipper!2625 lt!2452059 (_2!36917 (get!23028 lt!2452139))) e!4117571)))

(declare-fun b!6825367 () Bool)

(assert (=> b!6825367 (= e!4117571 (nullableZipper!2342 lt!2452059))))

(declare-fun b!6825368 () Bool)

(assert (=> b!6825368 (= e!4117571 (matchZipper!2625 (derivationStepZipper!2583 lt!2452059 (head!13681 (_2!36917 (get!23028 lt!2452139)))) (tail!12766 (_2!36917 (get!23028 lt!2452139)))))))

(assert (= (and d!2146369 c!1270451) b!6825367))

(assert (= (and d!2146369 (not c!1270451)) b!6825368))

(declare-fun m!7571082 () Bool)

(assert (=> d!2146369 m!7571082))

(assert (=> b!6825367 m!7570280))

(declare-fun m!7571084 () Bool)

(assert (=> b!6825368 m!7571084))

(assert (=> b!6825368 m!7571084))

(declare-fun m!7571086 () Bool)

(assert (=> b!6825368 m!7571086))

(declare-fun m!7571088 () Bool)

(assert (=> b!6825368 m!7571088))

(assert (=> b!6825368 m!7571086))

(assert (=> b!6825368 m!7571088))

(declare-fun m!7571092 () Bool)

(assert (=> b!6825368 m!7571092))

(assert (=> b!6824257 d!2146369))

(declare-fun d!2146373 () Bool)

(assert (=> d!2146373 (= (get!23028 lt!2452139) (v!52735 lt!2452139))))

(assert (=> b!6824257 d!2146373))

(declare-fun b!6825371 () Bool)

(declare-fun e!4117574 () Bool)

(assert (=> b!6825371 (= e!4117574 (= (head!13681 (_1!36917 (get!23028 lt!2452182))) (c!1270055 (reg!16968 r!7292))))))

(declare-fun bm!621236 () Bool)

(declare-fun call!621241 () Bool)

(assert (=> bm!621236 (= call!621241 (isEmpty!38481 (_1!36917 (get!23028 lt!2452182))))))

(declare-fun b!6825372 () Bool)

(declare-fun e!4117575 () Bool)

(declare-fun lt!2452305 () Bool)

(assert (=> b!6825372 (= e!4117575 (not lt!2452305))))

(declare-fun b!6825373 () Bool)

(declare-fun e!4117578 () Bool)

(assert (=> b!6825373 (= e!4117578 e!4117575)))

(declare-fun c!1270452 () Bool)

(assert (=> b!6825373 (= c!1270452 ((_ is EmptyLang!16639) (reg!16968 r!7292)))))

(declare-fun b!6825374 () Bool)

(declare-fun res!2787767 () Bool)

(declare-fun e!4117580 () Bool)

(assert (=> b!6825374 (=> res!2787767 e!4117580)))

(assert (=> b!6825374 (= res!2787767 (not ((_ is ElementMatch!16639) (reg!16968 r!7292))))))

(assert (=> b!6825374 (= e!4117575 e!4117580)))

(declare-fun b!6825375 () Bool)

(declare-fun e!4117579 () Bool)

(assert (=> b!6825375 (= e!4117580 e!4117579)))

(declare-fun res!2787773 () Bool)

(assert (=> b!6825375 (=> (not res!2787773) (not e!4117579))))

(assert (=> b!6825375 (= res!2787773 (not lt!2452305))))

(declare-fun d!2146375 () Bool)

(assert (=> d!2146375 e!4117578))

(declare-fun c!1270454 () Bool)

(assert (=> d!2146375 (= c!1270454 ((_ is EmptyExpr!16639) (reg!16968 r!7292)))))

(declare-fun e!4117576 () Bool)

(assert (=> d!2146375 (= lt!2452305 e!4117576)))

(declare-fun c!1270453 () Bool)

(assert (=> d!2146375 (= c!1270453 (isEmpty!38481 (_1!36917 (get!23028 lt!2452182))))))

(assert (=> d!2146375 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2146375 (= (matchR!8822 (reg!16968 r!7292) (_1!36917 (get!23028 lt!2452182))) lt!2452305)))

(declare-fun b!6825376 () Bool)

(declare-fun e!4117577 () Bool)

(assert (=> b!6825376 (= e!4117577 (not (= (head!13681 (_1!36917 (get!23028 lt!2452182))) (c!1270055 (reg!16968 r!7292)))))))

(declare-fun b!6825377 () Bool)

(assert (=> b!6825377 (= e!4117579 e!4117577)))

(declare-fun res!2787770 () Bool)

(assert (=> b!6825377 (=> res!2787770 e!4117577)))

(assert (=> b!6825377 (= res!2787770 call!621241)))

(declare-fun b!6825378 () Bool)

(assert (=> b!6825378 (= e!4117576 (matchR!8822 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 (get!23028 lt!2452182)))) (tail!12766 (_1!36917 (get!23028 lt!2452182)))))))

(declare-fun b!6825379 () Bool)

(declare-fun res!2787774 () Bool)

(assert (=> b!6825379 (=> res!2787774 e!4117577)))

(assert (=> b!6825379 (= res!2787774 (not (isEmpty!38481 (tail!12766 (_1!36917 (get!23028 lt!2452182))))))))

(declare-fun b!6825380 () Bool)

(declare-fun res!2787771 () Bool)

(assert (=> b!6825380 (=> res!2787771 e!4117580)))

(assert (=> b!6825380 (= res!2787771 e!4117574)))

(declare-fun res!2787768 () Bool)

(assert (=> b!6825380 (=> (not res!2787768) (not e!4117574))))

(assert (=> b!6825380 (= res!2787768 lt!2452305)))

(declare-fun b!6825381 () Bool)

(assert (=> b!6825381 (= e!4117578 (= lt!2452305 call!621241))))

(declare-fun b!6825382 () Bool)

(declare-fun res!2787772 () Bool)

(assert (=> b!6825382 (=> (not res!2787772) (not e!4117574))))

(assert (=> b!6825382 (= res!2787772 (isEmpty!38481 (tail!12766 (_1!36917 (get!23028 lt!2452182)))))))

(declare-fun b!6825383 () Bool)

(declare-fun res!2787769 () Bool)

(assert (=> b!6825383 (=> (not res!2787769) (not e!4117574))))

(assert (=> b!6825383 (= res!2787769 (not call!621241))))

(declare-fun b!6825384 () Bool)

(assert (=> b!6825384 (= e!4117576 (nullable!6614 (reg!16968 r!7292)))))

(assert (= (and d!2146375 c!1270453) b!6825384))

(assert (= (and d!2146375 (not c!1270453)) b!6825378))

(assert (= (and d!2146375 c!1270454) b!6825381))

(assert (= (and d!2146375 (not c!1270454)) b!6825373))

(assert (= (and b!6825373 c!1270452) b!6825372))

(assert (= (and b!6825373 (not c!1270452)) b!6825374))

(assert (= (and b!6825374 (not res!2787767)) b!6825380))

(assert (= (and b!6825380 res!2787768) b!6825383))

(assert (= (and b!6825383 res!2787769) b!6825382))

(assert (= (and b!6825382 res!2787772) b!6825371))

(assert (= (and b!6825380 (not res!2787771)) b!6825375))

(assert (= (and b!6825375 res!2787773) b!6825377))

(assert (= (and b!6825377 (not res!2787770)) b!6825379))

(assert (= (and b!6825379 (not res!2787774)) b!6825376))

(assert (= (or b!6825381 b!6825377 b!6825383) bm!621236))

(declare-fun m!7571096 () Bool)

(assert (=> b!6825371 m!7571096))

(assert (=> b!6825384 m!7570392))

(assert (=> b!6825378 m!7571096))

(assert (=> b!6825378 m!7571096))

(declare-fun m!7571098 () Bool)

(assert (=> b!6825378 m!7571098))

(declare-fun m!7571100 () Bool)

(assert (=> b!6825378 m!7571100))

(assert (=> b!6825378 m!7571098))

(assert (=> b!6825378 m!7571100))

(declare-fun m!7571102 () Bool)

(assert (=> b!6825378 m!7571102))

(declare-fun m!7571104 () Bool)

(assert (=> bm!621236 m!7571104))

(assert (=> b!6825382 m!7571100))

(assert (=> b!6825382 m!7571100))

(declare-fun m!7571106 () Bool)

(assert (=> b!6825382 m!7571106))

(assert (=> d!2146375 m!7571104))

(assert (=> d!2146375 m!7569992))

(assert (=> b!6825376 m!7571096))

(assert (=> b!6825379 m!7571100))

(assert (=> b!6825379 m!7571100))

(assert (=> b!6825379 m!7571106))

(assert (=> b!6824461 d!2146375))

(declare-fun d!2146377 () Bool)

(assert (=> d!2146377 (= (get!23028 lt!2452182) (v!52735 lt!2452182))))

(assert (=> b!6824461 d!2146377))

(declare-fun d!2146379 () Bool)

(assert (=> d!2146379 (= (isEmpty!38486 (t!379956 (exprs!6523 (h!72542 zl!343)))) ((_ is Nil!66093) (t!379956 (exprs!6523 (h!72542 zl!343)))))))

(assert (=> b!6824599 d!2146379))

(declare-fun d!2146381 () Bool)

(assert (=> d!2146381 true))

(declare-fun setRes!46855 () Bool)

(assert (=> d!2146381 setRes!46855))

(declare-fun condSetEmpty!46855 () Bool)

(declare-fun res!2787779 () (InoxSet Context!12046))

(assert (=> d!2146381 (= condSetEmpty!46855 (= res!2787779 ((as const (Array Context!12046 Bool)) false)))))

(assert (=> d!2146381 (= (choose!50889 z!1189 lambda!385481) res!2787779)))

(declare-fun setIsEmpty!46855 () Bool)

(assert (=> setIsEmpty!46855 setRes!46855))

(declare-fun tp!1867987 () Bool)

(declare-fun e!4117587 () Bool)

(declare-fun setElem!46855 () Context!12046)

(declare-fun setNonEmpty!46855 () Bool)

(assert (=> setNonEmpty!46855 (= setRes!46855 (and tp!1867987 (inv!84844 setElem!46855) e!4117587))))

(declare-fun setRest!46855 () (InoxSet Context!12046))

(assert (=> setNonEmpty!46855 (= res!2787779 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) setElem!46855 true) setRest!46855))))

(declare-fun b!6825391 () Bool)

(declare-fun tp!1867986 () Bool)

(assert (=> b!6825391 (= e!4117587 tp!1867986)))

(assert (= (and d!2146381 condSetEmpty!46855) setIsEmpty!46855))

(assert (= (and d!2146381 (not condSetEmpty!46855)) setNonEmpty!46855))

(assert (= setNonEmpty!46855 b!6825391))

(declare-fun m!7571108 () Bool)

(assert (=> setNonEmpty!46855 m!7571108))

(assert (=> d!2146065 d!2146381))

(assert (=> b!6824261 d!2146255))

(assert (=> b!6824261 d!2146259))

(assert (=> b!6824261 d!2146261))

(declare-fun b!6825395 () Bool)

(declare-fun e!4117592 () Bool)

(assert (=> b!6825395 (= e!4117592 (matchZipper!2625 lt!2452059 (t!379955 s!2326)))))

(declare-fun b!6825396 () Bool)

(declare-fun e!4117593 () Option!16526)

(declare-fun e!4117591 () Option!16526)

(assert (=> b!6825396 (= e!4117593 e!4117591)))

(declare-fun c!1270456 () Bool)

(assert (=> b!6825396 (= c!1270456 ((_ is Nil!66092) (t!379955 s!2326)))))

(declare-fun b!6825397 () Bool)

(declare-fun res!2787783 () Bool)

(declare-fun e!4117594 () Bool)

(assert (=> b!6825397 (=> (not res!2787783) (not e!4117594))))

(declare-fun lt!2452308 () Option!16526)

(assert (=> b!6825397 (= res!2787783 (matchZipper!2625 lt!2452091 (_1!36917 (get!23028 lt!2452308))))))

(declare-fun b!6825398 () Bool)

(declare-fun e!4117595 () Bool)

(assert (=> b!6825398 (= e!4117595 (not (isDefined!13229 lt!2452308)))))

(declare-fun b!6825399 () Bool)

(declare-fun res!2787786 () Bool)

(assert (=> b!6825399 (=> (not res!2787786) (not e!4117594))))

(assert (=> b!6825399 (= res!2787786 (matchZipper!2625 lt!2452059 (_2!36917 (get!23028 lt!2452308))))))

(declare-fun d!2146383 () Bool)

(assert (=> d!2146383 e!4117595))

(declare-fun res!2787782 () Bool)

(assert (=> d!2146383 (=> res!2787782 e!4117595)))

(assert (=> d!2146383 (= res!2787782 e!4117594)))

(declare-fun res!2787785 () Bool)

(assert (=> d!2146383 (=> (not res!2787785) (not e!4117594))))

(assert (=> d!2146383 (= res!2787785 (isDefined!13229 lt!2452308))))

(assert (=> d!2146383 (= lt!2452308 e!4117593)))

(declare-fun c!1270455 () Bool)

(assert (=> d!2146383 (= c!1270455 e!4117592)))

(declare-fun res!2787784 () Bool)

(assert (=> d!2146383 (=> (not res!2787784) (not e!4117592))))

(assert (=> d!2146383 (= res!2787784 (matchZipper!2625 lt!2452091 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092))))))

(assert (=> d!2146383 (= (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326)) s!2326)))

(assert (=> d!2146383 (= (findConcatSeparationZippers!248 lt!2452091 lt!2452059 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326) s!2326) lt!2452308)))

(declare-fun b!6825400 () Bool)

(assert (=> b!6825400 (= e!4117594 (= (++!14825 (_1!36917 (get!23028 lt!2452308)) (_2!36917 (get!23028 lt!2452308))) s!2326))))

(declare-fun b!6825401 () Bool)

(assert (=> b!6825401 (= e!4117593 (Some!16525 (tuple2!67229 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326))))))

(declare-fun b!6825402 () Bool)

(assert (=> b!6825402 (= e!4117591 None!16525)))

(declare-fun b!6825403 () Bool)

(declare-fun lt!2452306 () Unit!159969)

(declare-fun lt!2452307 () Unit!159969)

(assert (=> b!6825403 (= lt!2452306 lt!2452307)))

(assert (=> b!6825403 (= (++!14825 (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (Cons!66092 (h!72540 (t!379955 s!2326)) Nil!66092)) (t!379955 (t!379955 s!2326))) s!2326)))

(assert (=> b!6825403 (= lt!2452307 (lemmaMoveElementToOtherListKeepsConcatEq!2755 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (h!72540 (t!379955 s!2326)) (t!379955 (t!379955 s!2326)) s!2326))))

(assert (=> b!6825403 (= e!4117591 (findConcatSeparationZippers!248 lt!2452091 lt!2452059 (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (Cons!66092 (h!72540 (t!379955 s!2326)) Nil!66092)) (t!379955 (t!379955 s!2326)) s!2326))))

(assert (= (and d!2146383 res!2787784) b!6825395))

(assert (= (and d!2146383 c!1270455) b!6825401))

(assert (= (and d!2146383 (not c!1270455)) b!6825396))

(assert (= (and b!6825396 c!1270456) b!6825402))

(assert (= (and b!6825396 (not c!1270456)) b!6825403))

(assert (= (and d!2146383 res!2787785) b!6825397))

(assert (= (and b!6825397 res!2787783) b!6825399))

(assert (= (and b!6825399 res!2787786) b!6825400))

(assert (= (and d!2146383 (not res!2787782)) b!6825398))

(declare-fun m!7571122 () Bool)

(assert (=> b!6825397 m!7571122))

(declare-fun m!7571124 () Bool)

(assert (=> b!6825397 m!7571124))

(assert (=> b!6825400 m!7571122))

(declare-fun m!7571126 () Bool)

(assert (=> b!6825400 m!7571126))

(assert (=> b!6825399 m!7571122))

(declare-fun m!7571128 () Bool)

(assert (=> b!6825399 m!7571128))

(assert (=> b!6825403 m!7569922))

(assert (=> b!6825403 m!7570892))

(assert (=> b!6825403 m!7570892))

(assert (=> b!6825403 m!7570896))

(assert (=> b!6825403 m!7569922))

(assert (=> b!6825403 m!7570900))

(assert (=> b!6825403 m!7570892))

(declare-fun m!7571140 () Bool)

(assert (=> b!6825403 m!7571140))

(declare-fun m!7571142 () Bool)

(assert (=> d!2146383 m!7571142))

(assert (=> d!2146383 m!7569922))

(declare-fun m!7571144 () Bool)

(assert (=> d!2146383 m!7571144))

(assert (=> d!2146383 m!7569922))

(assert (=> d!2146383 m!7569924))

(declare-fun m!7571146 () Bool)

(assert (=> b!6825395 m!7571146))

(assert (=> b!6825398 m!7571142))

(assert (=> b!6824261 d!2146383))

(declare-fun d!2146395 () Bool)

(assert (=> d!2146395 (= (isDefined!13229 lt!2452182) (not (isEmpty!38484 lt!2452182)))))

(declare-fun bs!1823657 () Bool)

(assert (= bs!1823657 d!2146395))

(declare-fun m!7571148 () Bool)

(assert (=> bs!1823657 m!7571148))

(assert (=> b!6824465 d!2146395))

(declare-fun d!2146397 () Bool)

(assert (=> d!2146397 (= (isConcat!1516 lt!2452216) ((_ is Concat!25484) lt!2452216))))

(assert (=> b!6824603 d!2146397))

(declare-fun b!6825431 () Bool)

(declare-fun e!4117612 () Bool)

(assert (=> b!6825431 (= e!4117612 (= (head!13681 (tail!12766 (_1!36917 lt!2452079))) (c!1270055 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079))))))))

(declare-fun bm!621241 () Bool)

(declare-fun call!621246 () Bool)

(assert (=> bm!621241 (= call!621246 (isEmpty!38481 (tail!12766 (_1!36917 lt!2452079))))))

(declare-fun b!6825432 () Bool)

(declare-fun e!4117613 () Bool)

(declare-fun lt!2452311 () Bool)

(assert (=> b!6825432 (= e!4117613 (not lt!2452311))))

(declare-fun b!6825433 () Bool)

(declare-fun e!4117616 () Bool)

(assert (=> b!6825433 (= e!4117616 e!4117613)))

(declare-fun c!1270463 () Bool)

(assert (=> b!6825433 (= c!1270463 ((_ is EmptyLang!16639) (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079)))))))

(declare-fun b!6825434 () Bool)

(declare-fun res!2787802 () Bool)

(declare-fun e!4117618 () Bool)

(assert (=> b!6825434 (=> res!2787802 e!4117618)))

(assert (=> b!6825434 (= res!2787802 (not ((_ is ElementMatch!16639) (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079))))))))

(assert (=> b!6825434 (= e!4117613 e!4117618)))

(declare-fun b!6825435 () Bool)

(declare-fun e!4117617 () Bool)

(assert (=> b!6825435 (= e!4117618 e!4117617)))

(declare-fun res!2787808 () Bool)

(assert (=> b!6825435 (=> (not res!2787808) (not e!4117617))))

(assert (=> b!6825435 (= res!2787808 (not lt!2452311))))

(declare-fun d!2146399 () Bool)

(assert (=> d!2146399 e!4117616))

(declare-fun c!1270465 () Bool)

(assert (=> d!2146399 (= c!1270465 ((_ is EmptyExpr!16639) (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079)))))))

(declare-fun e!4117614 () Bool)

(assert (=> d!2146399 (= lt!2452311 e!4117614)))

(declare-fun c!1270464 () Bool)

(assert (=> d!2146399 (= c!1270464 (isEmpty!38481 (tail!12766 (_1!36917 lt!2452079))))))

(assert (=> d!2146399 (validRegex!8375 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079))))))

(assert (=> d!2146399 (= (matchR!8822 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079))) (tail!12766 (_1!36917 lt!2452079))) lt!2452311)))

(declare-fun b!6825436 () Bool)

(declare-fun e!4117615 () Bool)

(assert (=> b!6825436 (= e!4117615 (not (= (head!13681 (tail!12766 (_1!36917 lt!2452079))) (c!1270055 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079)))))))))

(declare-fun b!6825437 () Bool)

(assert (=> b!6825437 (= e!4117617 e!4117615)))

(declare-fun res!2787805 () Bool)

(assert (=> b!6825437 (=> res!2787805 e!4117615)))

(assert (=> b!6825437 (= res!2787805 call!621246)))

(declare-fun b!6825438 () Bool)

(assert (=> b!6825438 (= e!4117614 (matchR!8822 (derivativeStep!5299 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079))) (head!13681 (tail!12766 (_1!36917 lt!2452079)))) (tail!12766 (tail!12766 (_1!36917 lt!2452079)))))))

(declare-fun b!6825439 () Bool)

(declare-fun res!2787809 () Bool)

(assert (=> b!6825439 (=> res!2787809 e!4117615)))

(assert (=> b!6825439 (= res!2787809 (not (isEmpty!38481 (tail!12766 (tail!12766 (_1!36917 lt!2452079))))))))

(declare-fun b!6825440 () Bool)

(declare-fun res!2787806 () Bool)

(assert (=> b!6825440 (=> res!2787806 e!4117618)))

(assert (=> b!6825440 (= res!2787806 e!4117612)))

(declare-fun res!2787803 () Bool)

(assert (=> b!6825440 (=> (not res!2787803) (not e!4117612))))

(assert (=> b!6825440 (= res!2787803 lt!2452311)))

(declare-fun b!6825441 () Bool)

(assert (=> b!6825441 (= e!4117616 (= lt!2452311 call!621246))))

(declare-fun b!6825442 () Bool)

(declare-fun res!2787807 () Bool)

(assert (=> b!6825442 (=> (not res!2787807) (not e!4117612))))

(assert (=> b!6825442 (= res!2787807 (isEmpty!38481 (tail!12766 (tail!12766 (_1!36917 lt!2452079)))))))

(declare-fun b!6825443 () Bool)

(declare-fun res!2787804 () Bool)

(assert (=> b!6825443 (=> (not res!2787804) (not e!4117612))))

(assert (=> b!6825443 (= res!2787804 (not call!621246))))

(declare-fun b!6825444 () Bool)

(assert (=> b!6825444 (= e!4117614 (nullable!6614 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079)))))))

(assert (= (and d!2146399 c!1270464) b!6825444))

(assert (= (and d!2146399 (not c!1270464)) b!6825438))

(assert (= (and d!2146399 c!1270465) b!6825441))

(assert (= (and d!2146399 (not c!1270465)) b!6825433))

(assert (= (and b!6825433 c!1270463) b!6825432))

(assert (= (and b!6825433 (not c!1270463)) b!6825434))

(assert (= (and b!6825434 (not res!2787802)) b!6825440))

(assert (= (and b!6825440 res!2787803) b!6825443))

(assert (= (and b!6825443 res!2787804) b!6825442))

(assert (= (and b!6825442 res!2787807) b!6825431))

(assert (= (and b!6825440 (not res!2787806)) b!6825435))

(assert (= (and b!6825435 res!2787808) b!6825437))

(assert (= (and b!6825437 (not res!2787805)) b!6825439))

(assert (= (and b!6825439 (not res!2787809)) b!6825436))

(assert (= (or b!6825441 b!6825437 b!6825443) bm!621241))

(assert (=> b!6825431 m!7570298))

(assert (=> b!6825431 m!7571002))

(assert (=> b!6825444 m!7570442))

(declare-fun m!7571174 () Bool)

(assert (=> b!6825444 m!7571174))

(assert (=> b!6825438 m!7570298))

(assert (=> b!6825438 m!7571002))

(assert (=> b!6825438 m!7570442))

(assert (=> b!6825438 m!7571002))

(declare-fun m!7571176 () Bool)

(assert (=> b!6825438 m!7571176))

(assert (=> b!6825438 m!7570298))

(assert (=> b!6825438 m!7571006))

(assert (=> b!6825438 m!7571176))

(assert (=> b!6825438 m!7571006))

(declare-fun m!7571178 () Bool)

(assert (=> b!6825438 m!7571178))

(assert (=> bm!621241 m!7570298))

(assert (=> bm!621241 m!7570446))

(assert (=> b!6825442 m!7570298))

(assert (=> b!6825442 m!7571006))

(assert (=> b!6825442 m!7571006))

(declare-fun m!7571180 () Bool)

(assert (=> b!6825442 m!7571180))

(assert (=> d!2146399 m!7570298))

(assert (=> d!2146399 m!7570446))

(assert (=> d!2146399 m!7570442))

(declare-fun m!7571184 () Bool)

(assert (=> d!2146399 m!7571184))

(assert (=> b!6825436 m!7570298))

(assert (=> b!6825436 m!7571002))

(assert (=> b!6825439 m!7570298))

(assert (=> b!6825439 m!7571006))

(assert (=> b!6825439 m!7571006))

(assert (=> b!6825439 m!7571180))

(assert (=> b!6824816 d!2146399))

(declare-fun c!1270469 () Bool)

(declare-fun c!1270471 () Bool)

(declare-fun bm!621242 () Bool)

(declare-fun call!621248 () Regex!16639)

(declare-fun c!1270472 () Bool)

(assert (=> bm!621242 (= call!621248 (derivativeStep!5299 (ite c!1270472 (regTwo!33791 (reg!16968 r!7292)) (ite c!1270471 (reg!16968 (reg!16968 r!7292)) (ite c!1270469 (regTwo!33790 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292))))) (head!13681 (_1!36917 lt!2452079))))))

(declare-fun b!6825451 () Bool)

(declare-fun e!4117623 () Regex!16639)

(declare-fun e!4117622 () Regex!16639)

(assert (=> b!6825451 (= e!4117623 e!4117622)))

(declare-fun c!1270470 () Bool)

(assert (=> b!6825451 (= c!1270470 ((_ is ElementMatch!16639) (reg!16968 r!7292)))))

(declare-fun b!6825452 () Bool)

(declare-fun e!4117625 () Regex!16639)

(declare-fun call!621249 () Regex!16639)

(assert (=> b!6825452 (= e!4117625 (Concat!25484 call!621249 (reg!16968 r!7292)))))

(declare-fun call!621250 () Regex!16639)

(declare-fun bm!621243 () Bool)

(assert (=> bm!621243 (= call!621250 (derivativeStep!5299 (ite c!1270472 (regOne!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292))) (head!13681 (_1!36917 lt!2452079))))))

(declare-fun b!6825453 () Bool)

(assert (=> b!6825453 (= c!1270472 ((_ is Union!16639) (reg!16968 r!7292)))))

(declare-fun e!4117624 () Regex!16639)

(assert (=> b!6825453 (= e!4117622 e!4117624)))

(declare-fun bm!621244 () Bool)

(declare-fun call!621247 () Regex!16639)

(assert (=> bm!621244 (= call!621247 call!621249)))

(declare-fun b!6825458 () Bool)

(assert (=> b!6825458 (= e!4117623 EmptyLang!16639)))

(declare-fun b!6825459 () Bool)

(declare-fun e!4117626 () Regex!16639)

(assert (=> b!6825459 (= e!4117626 (Union!16639 (Concat!25484 call!621247 (regTwo!33790 (reg!16968 r!7292))) EmptyLang!16639))))

(declare-fun b!6825460 () Bool)

(assert (=> b!6825460 (= e!4117622 (ite (= (head!13681 (_1!36917 lt!2452079)) (c!1270055 (reg!16968 r!7292))) EmptyExpr!16639 EmptyLang!16639))))

(declare-fun b!6825461 () Bool)

(assert (=> b!6825461 (= e!4117624 e!4117625)))

(assert (=> b!6825461 (= c!1270471 ((_ is Star!16639) (reg!16968 r!7292)))))

(declare-fun b!6825462 () Bool)

(assert (=> b!6825462 (= e!4117626 (Union!16639 (Concat!25484 call!621250 (regTwo!33790 (reg!16968 r!7292))) call!621247))))

(declare-fun b!6825463 () Bool)

(assert (=> b!6825463 (= c!1270469 (nullable!6614 (regOne!33790 (reg!16968 r!7292))))))

(assert (=> b!6825463 (= e!4117625 e!4117626)))

(declare-fun b!6825464 () Bool)

(assert (=> b!6825464 (= e!4117624 (Union!16639 call!621250 call!621248))))

(declare-fun d!2146407 () Bool)

(declare-fun lt!2452313 () Regex!16639)

(assert (=> d!2146407 (validRegex!8375 lt!2452313)))

(assert (=> d!2146407 (= lt!2452313 e!4117623)))

(declare-fun c!1270468 () Bool)

(assert (=> d!2146407 (= c!1270468 (or ((_ is EmptyExpr!16639) (reg!16968 r!7292)) ((_ is EmptyLang!16639) (reg!16968 r!7292))))))

(assert (=> d!2146407 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2146407 (= (derivativeStep!5299 (reg!16968 r!7292) (head!13681 (_1!36917 lt!2452079))) lt!2452313)))

(declare-fun bm!621245 () Bool)

(assert (=> bm!621245 (= call!621249 call!621248)))

(assert (= (and d!2146407 c!1270468) b!6825458))

(assert (= (and d!2146407 (not c!1270468)) b!6825451))

(assert (= (and b!6825451 c!1270470) b!6825460))

(assert (= (and b!6825451 (not c!1270470)) b!6825453))

(assert (= (and b!6825453 c!1270472) b!6825464))

(assert (= (and b!6825453 (not c!1270472)) b!6825461))

(assert (= (and b!6825461 c!1270471) b!6825452))

(assert (= (and b!6825461 (not c!1270471)) b!6825463))

(assert (= (and b!6825463 c!1270469) b!6825462))

(assert (= (and b!6825463 (not c!1270469)) b!6825459))

(assert (= (or b!6825462 b!6825459) bm!621244))

(assert (= (or b!6825452 bm!621244) bm!621245))

(assert (= (or b!6825464 bm!621245) bm!621242))

(assert (= (or b!6825464 b!6825462) bm!621243))

(assert (=> bm!621242 m!7570294))

(declare-fun m!7571212 () Bool)

(assert (=> bm!621242 m!7571212))

(assert (=> bm!621243 m!7570294))

(declare-fun m!7571214 () Bool)

(assert (=> bm!621243 m!7571214))

(assert (=> b!6825463 m!7570476))

(declare-fun m!7571216 () Bool)

(assert (=> d!2146407 m!7571216))

(assert (=> d!2146407 m!7569992))

(assert (=> b!6824816 d!2146407))

(assert (=> b!6824816 d!2146321))

(assert (=> b!6824816 d!2146301))

(declare-fun d!2146413 () Bool)

(assert (=> d!2146413 (= (Exists!3707 lambda!385522) (choose!50883 lambda!385522))))

(declare-fun bs!1823659 () Bool)

(assert (= bs!1823659 d!2146413))

(declare-fun m!7571226 () Bool)

(assert (=> bs!1823659 m!7571226))

(assert (=> d!2145893 d!2146413))

(declare-fun d!2146417 () Bool)

(assert (=> d!2146417 (= (Exists!3707 lambda!385525) (choose!50883 lambda!385525))))

(declare-fun bs!1823660 () Bool)

(assert (= bs!1823660 d!2146417))

(declare-fun m!7571230 () Bool)

(assert (=> bs!1823660 m!7571230))

(assert (=> d!2145893 d!2146417))

(declare-fun bs!1823663 () Bool)

(declare-fun d!2146419 () Bool)

(assert (= bs!1823663 (and d!2146419 b!6825030)))

(declare-fun lambda!385608 () Int)

(assert (=> bs!1823663 (not (= lambda!385608 lambda!385586))))

(declare-fun bs!1823664 () Bool)

(assert (= bs!1823664 (and d!2146419 d!2145873)))

(assert (=> bs!1823664 (= (= (Star!16639 (reg!16968 r!7292)) r!7292) (= lambda!385608 lambda!385514))))

(declare-fun bs!1823665 () Bool)

(assert (= bs!1823665 (and d!2146419 b!6824881)))

(assert (=> bs!1823665 (not (= lambda!385608 lambda!385575))))

(declare-fun bs!1823666 () Bool)

(assert (= bs!1823666 (and d!2146419 b!6825323)))

(assert (=> bs!1823666 (not (= lambda!385608 lambda!385602))))

(declare-fun bs!1823667 () Bool)

(assert (= bs!1823667 (and d!2146419 b!6825021)))

(assert (=> bs!1823667 (not (= lambda!385608 lambda!385587))))

(declare-fun bs!1823668 () Bool)

(assert (= bs!1823668 (and d!2146419 d!2145941)))

(assert (=> bs!1823668 (= (= (Star!16639 (reg!16968 r!7292)) r!7292) (= lambda!385608 lambda!385537))))

(declare-fun bs!1823669 () Bool)

(assert (= bs!1823669 (and d!2146419 b!6824003)))

(assert (=> bs!1823669 (not (= lambda!385608 lambda!385480))))

(assert (=> bs!1823664 (not (= lambda!385608 lambda!385515))))

(declare-fun bs!1823670 () Bool)

(assert (= bs!1823670 (and d!2146419 d!2145893)))

(assert (=> bs!1823670 (not (= lambda!385608 lambda!385525))))

(declare-fun bs!1823671 () Bool)

(assert (= bs!1823671 (and d!2146419 b!6824659)))

(assert (=> bs!1823671 (not (= lambda!385608 lambda!385564))))

(declare-fun bs!1823672 () Bool)

(assert (= bs!1823672 (and d!2146419 b!6824890)))

(assert (=> bs!1823672 (not (= lambda!385608 lambda!385574))))

(declare-fun bs!1823673 () Bool)

(assert (= bs!1823673 (and d!2146419 b!6824668)))

(assert (=> bs!1823673 (not (= lambda!385608 lambda!385563))))

(declare-fun bs!1823674 () Bool)

(assert (= bs!1823674 (and d!2146419 b!6825332)))

(assert (=> bs!1823674 (not (= lambda!385608 lambda!385600))))

(assert (=> bs!1823670 (= lambda!385608 lambda!385522)))

(assert (=> bs!1823669 (not (= lambda!385608 lambda!385479))))

(assert (=> bs!1823669 (= (= (Star!16639 (reg!16968 r!7292)) r!7292) (= lambda!385608 lambda!385478))))

(assert (=> d!2146419 true))

(assert (=> d!2146419 true))

(declare-fun lambda!385611 () Int)

(assert (=> bs!1823663 (= (and (= (reg!16968 r!7292) (reg!16968 (regOne!33791 lt!2452072))) (= (Star!16639 (reg!16968 r!7292)) (regOne!33791 lt!2452072))) (= lambda!385611 lambda!385586))))

(assert (=> bs!1823664 (not (= lambda!385611 lambda!385514))))

(assert (=> bs!1823665 (not (= lambda!385611 lambda!385575))))

(assert (=> bs!1823666 (not (= lambda!385611 lambda!385602))))

(assert (=> bs!1823667 (not (= lambda!385611 lambda!385587))))

(assert (=> bs!1823668 (not (= lambda!385611 lambda!385537))))

(assert (=> bs!1823669 (not (= lambda!385611 lambda!385480))))

(assert (=> bs!1823664 (not (= lambda!385611 lambda!385515))))

(assert (=> bs!1823670 (= lambda!385611 lambda!385525)))

(assert (=> bs!1823671 (not (= lambda!385611 lambda!385564))))

(assert (=> bs!1823672 (= (and (= (reg!16968 r!7292) (reg!16968 lt!2452072)) (= (Star!16639 (reg!16968 r!7292)) lt!2452072)) (= lambda!385611 lambda!385574))))

(assert (=> bs!1823673 (= (= (Star!16639 (reg!16968 r!7292)) r!7292) (= lambda!385611 lambda!385563))))

(declare-fun bs!1823684 () Bool)

(assert (= bs!1823684 d!2146419))

(assert (=> bs!1823684 (not (= lambda!385611 lambda!385608))))

(assert (=> bs!1823674 (= (and (= (reg!16968 r!7292) (reg!16968 (regTwo!33791 lt!2452072))) (= (Star!16639 (reg!16968 r!7292)) (regTwo!33791 lt!2452072))) (= lambda!385611 lambda!385600))))

(assert (=> bs!1823670 (not (= lambda!385611 lambda!385522))))

(assert (=> bs!1823669 (= (= (Star!16639 (reg!16968 r!7292)) r!7292) (= lambda!385611 lambda!385479))))

(assert (=> bs!1823669 (not (= lambda!385611 lambda!385478))))

(assert (=> d!2146419 true))

(assert (=> d!2146419 true))

(assert (=> d!2146419 (= (Exists!3707 lambda!385608) (Exists!3707 lambda!385611))))

(assert (=> d!2146419 true))

(declare-fun _$91!845 () Unit!159969)

(assert (=> d!2146419 (= (choose!50885 (reg!16968 r!7292) s!2326) _$91!845)))

(declare-fun m!7571294 () Bool)

(assert (=> bs!1823684 m!7571294))

(declare-fun m!7571296 () Bool)

(assert (=> bs!1823684 m!7571296))

(assert (=> d!2145893 d!2146419))

(assert (=> d!2145893 d!2146349))

(declare-fun d!2146435 () Bool)

(declare-fun c!1270483 () Bool)

(assert (=> d!2146435 (= c!1270483 (and ((_ is ElementMatch!16639) (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))) (= (c!1270055 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))) (h!72540 s!2326))))))

(declare-fun e!4117648 () (InoxSet Context!12046))

(assert (=> d!2146435 (= (derivationStepZipperDown!1867 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292)) (ite c!1270215 (Context!12047 Nil!66093) (Context!12047 call!621130)) (h!72540 s!2326)) e!4117648)))

(declare-fun bm!621246 () Bool)

(declare-fun c!1270482 () Bool)

(declare-fun call!621256 () List!66217)

(declare-fun call!621254 () (InoxSet Context!12046))

(assert (=> bm!621246 (= call!621254 (derivationStepZipperDown!1867 (ite c!1270482 (regTwo!33791 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))) (regOne!33790 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292)))) (ite c!1270482 (ite c!1270215 (Context!12047 Nil!66093) (Context!12047 call!621130)) (Context!12047 call!621256)) (h!72540 s!2326)))))

(declare-fun bm!621247 () Bool)

(declare-fun call!621255 () (InoxSet Context!12046))

(declare-fun call!621253 () (InoxSet Context!12046))

(assert (=> bm!621247 (= call!621255 call!621253)))

(declare-fun b!6825498 () Bool)

(declare-fun c!1270485 () Bool)

(declare-fun e!4117649 () Bool)

(assert (=> b!6825498 (= c!1270485 e!4117649)))

(declare-fun res!2787833 () Bool)

(assert (=> b!6825498 (=> (not res!2787833) (not e!4117649))))

(assert (=> b!6825498 (= res!2787833 ((_ is Concat!25484) (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))))))

(declare-fun e!4117646 () (InoxSet Context!12046))

(declare-fun e!4117647 () (InoxSet Context!12046))

(assert (=> b!6825498 (= e!4117646 e!4117647)))

(declare-fun c!1270484 () Bool)

(declare-fun bm!621248 () Bool)

(assert (=> bm!621248 (= call!621256 ($colon$colon!2444 (exprs!6523 (ite c!1270215 (Context!12047 Nil!66093) (Context!12047 call!621130))) (ite (or c!1270485 c!1270484) (regTwo!33790 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))) (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292)))))))

(declare-fun b!6825499 () Bool)

(assert (=> b!6825499 (= e!4117647 ((_ map or) call!621254 call!621255))))

(declare-fun call!621251 () List!66217)

(declare-fun bm!621249 () Bool)

(assert (=> bm!621249 (= call!621253 (derivationStepZipperDown!1867 (ite c!1270482 (regOne!33791 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))) (ite c!1270485 (regTwo!33790 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))) (ite c!1270484 (regOne!33790 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))) (reg!16968 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292)))))) (ite (or c!1270482 c!1270485) (ite c!1270215 (Context!12047 Nil!66093) (Context!12047 call!621130)) (Context!12047 call!621251)) (h!72540 s!2326)))))

(declare-fun b!6825500 () Bool)

(assert (=> b!6825500 (= e!4117648 (store ((as const (Array Context!12046 Bool)) false) (ite c!1270215 (Context!12047 Nil!66093) (Context!12047 call!621130)) true))))

(declare-fun b!6825501 () Bool)

(declare-fun e!4117645 () (InoxSet Context!12046))

(declare-fun call!621252 () (InoxSet Context!12046))

(assert (=> b!6825501 (= e!4117645 call!621252)))

(declare-fun b!6825502 () Bool)

(assert (=> b!6825502 (= e!4117648 e!4117646)))

(assert (=> b!6825502 (= c!1270482 ((_ is Union!16639) (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))))))

(declare-fun bm!621250 () Bool)

(assert (=> bm!621250 (= call!621251 call!621256)))

(declare-fun b!6825503 () Bool)

(declare-fun e!4117650 () (InoxSet Context!12046))

(assert (=> b!6825503 (= e!4117647 e!4117650)))

(assert (=> b!6825503 (= c!1270484 ((_ is Concat!25484) (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))))))

(declare-fun b!6825504 () Bool)

(assert (=> b!6825504 (= e!4117645 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825505 () Bool)

(assert (=> b!6825505 (= e!4117646 ((_ map or) call!621253 call!621254))))

(declare-fun b!6825506 () Bool)

(declare-fun c!1270481 () Bool)

(assert (=> b!6825506 (= c!1270481 ((_ is Star!16639) (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292))))))

(assert (=> b!6825506 (= e!4117650 e!4117645)))

(declare-fun b!6825507 () Bool)

(assert (=> b!6825507 (= e!4117649 (nullable!6614 (regOne!33790 (ite c!1270215 (regTwo!33791 r!7292) (regOne!33790 r!7292)))))))

(declare-fun bm!621251 () Bool)

(assert (=> bm!621251 (= call!621252 call!621255)))

(declare-fun b!6825508 () Bool)

(assert (=> b!6825508 (= e!4117650 call!621252)))

(assert (= (and d!2146435 c!1270483) b!6825500))

(assert (= (and d!2146435 (not c!1270483)) b!6825502))

(assert (= (and b!6825502 c!1270482) b!6825505))

(assert (= (and b!6825502 (not c!1270482)) b!6825498))

(assert (= (and b!6825498 res!2787833) b!6825507))

(assert (= (and b!6825498 c!1270485) b!6825499))

(assert (= (and b!6825498 (not c!1270485)) b!6825503))

(assert (= (and b!6825503 c!1270484) b!6825508))

(assert (= (and b!6825503 (not c!1270484)) b!6825506))

(assert (= (and b!6825506 c!1270481) b!6825501))

(assert (= (and b!6825506 (not c!1270481)) b!6825504))

(assert (= (or b!6825508 b!6825501) bm!621250))

(assert (= (or b!6825508 b!6825501) bm!621251))

(assert (= (or b!6825499 bm!621250) bm!621248))

(assert (= (or b!6825499 bm!621251) bm!621247))

(assert (= (or b!6825505 b!6825499) bm!621246))

(assert (= (or b!6825505 bm!621247) bm!621249))

(declare-fun m!7571302 () Bool)

(assert (=> bm!621248 m!7571302))

(declare-fun m!7571304 () Bool)

(assert (=> bm!621249 m!7571304))

(declare-fun m!7571306 () Bool)

(assert (=> b!6825507 m!7571306))

(declare-fun m!7571308 () Bool)

(assert (=> b!6825500 m!7571308))

(declare-fun m!7571310 () Bool)

(assert (=> bm!621246 m!7571310))

(assert (=> bm!621120 d!2146435))

(assert (=> d!2145999 d!2146347))

(declare-fun d!2146441 () Bool)

(assert (=> d!2146441 (= (isEmpty!38481 (tail!12766 s!2326)) ((_ is Nil!66092) (tail!12766 s!2326)))))

(assert (=> b!6824762 d!2146441))

(assert (=> b!6824762 d!2146179))

(declare-fun d!2146443 () Bool)

(assert (=> d!2146443 (= (nullable!6614 (h!72541 (exprs!6523 lt!2452078))) (nullableFct!2511 (h!72541 (exprs!6523 lt!2452078))))))

(declare-fun bs!1823685 () Bool)

(assert (= bs!1823685 d!2146443))

(declare-fun m!7571312 () Bool)

(assert (=> bs!1823685 m!7571312))

(assert (=> b!6824873 d!2146443))

(declare-fun c!1270488 () Bool)

(declare-fun d!2146445 () Bool)

(assert (=> d!2146445 (= c!1270488 (and ((_ is ElementMatch!16639) (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))) (= (c!1270055 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))) (h!72540 s!2326))))))

(declare-fun e!4117654 () (InoxSet Context!12046))

(assert (=> d!2146445 (= (derivationStepZipperDown!1867 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292))) (ite c!1270293 lt!2452076 (Context!12047 call!621156)) (h!72540 s!2326)) e!4117654)))

(declare-fun c!1270487 () Bool)

(declare-fun call!621262 () List!66217)

(declare-fun call!621260 () (InoxSet Context!12046))

(declare-fun bm!621252 () Bool)

(assert (=> bm!621252 (= call!621260 (derivationStepZipperDown!1867 (ite c!1270487 (regTwo!33791 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))) (regOne!33790 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292))))) (ite c!1270487 (ite c!1270293 lt!2452076 (Context!12047 call!621156)) (Context!12047 call!621262)) (h!72540 s!2326)))))

(declare-fun bm!621253 () Bool)

(declare-fun call!621261 () (InoxSet Context!12046))

(declare-fun call!621259 () (InoxSet Context!12046))

(assert (=> bm!621253 (= call!621261 call!621259)))

(declare-fun b!6825509 () Bool)

(declare-fun c!1270490 () Bool)

(declare-fun e!4117655 () Bool)

(assert (=> b!6825509 (= c!1270490 e!4117655)))

(declare-fun res!2787834 () Bool)

(assert (=> b!6825509 (=> (not res!2787834) (not e!4117655))))

(assert (=> b!6825509 (= res!2787834 ((_ is Concat!25484) (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))))))

(declare-fun e!4117652 () (InoxSet Context!12046))

(declare-fun e!4117653 () (InoxSet Context!12046))

(assert (=> b!6825509 (= e!4117652 e!4117653)))

(declare-fun c!1270489 () Bool)

(declare-fun bm!621254 () Bool)

(assert (=> bm!621254 (= call!621262 ($colon$colon!2444 (exprs!6523 (ite c!1270293 lt!2452076 (Context!12047 call!621156))) (ite (or c!1270490 c!1270489) (regTwo!33790 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))) (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292))))))))

(declare-fun b!6825510 () Bool)

(assert (=> b!6825510 (= e!4117653 ((_ map or) call!621260 call!621261))))

(declare-fun bm!621255 () Bool)

(declare-fun call!621257 () List!66217)

(assert (=> bm!621255 (= call!621259 (derivationStepZipperDown!1867 (ite c!1270487 (regOne!33791 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))) (ite c!1270490 (regTwo!33790 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))) (ite c!1270489 (regOne!33790 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))) (reg!16968 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292))))))) (ite (or c!1270487 c!1270490) (ite c!1270293 lt!2452076 (Context!12047 call!621156)) (Context!12047 call!621257)) (h!72540 s!2326)))))

(declare-fun b!6825511 () Bool)

(assert (=> b!6825511 (= e!4117654 (store ((as const (Array Context!12046 Bool)) false) (ite c!1270293 lt!2452076 (Context!12047 call!621156)) true))))

(declare-fun b!6825512 () Bool)

(declare-fun e!4117651 () (InoxSet Context!12046))

(declare-fun call!621258 () (InoxSet Context!12046))

(assert (=> b!6825512 (= e!4117651 call!621258)))

(declare-fun b!6825513 () Bool)

(assert (=> b!6825513 (= e!4117654 e!4117652)))

(assert (=> b!6825513 (= c!1270487 ((_ is Union!16639) (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))))))

(declare-fun bm!621256 () Bool)

(assert (=> bm!621256 (= call!621257 call!621262)))

(declare-fun b!6825514 () Bool)

(declare-fun e!4117656 () (InoxSet Context!12046))

(assert (=> b!6825514 (= e!4117653 e!4117656)))

(assert (=> b!6825514 (= c!1270489 ((_ is Concat!25484) (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))))))

(declare-fun b!6825515 () Bool)

(assert (=> b!6825515 (= e!4117651 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825516 () Bool)

(assert (=> b!6825516 (= e!4117652 ((_ map or) call!621259 call!621260))))

(declare-fun b!6825517 () Bool)

(declare-fun c!1270486 () Bool)

(assert (=> b!6825517 (= c!1270486 ((_ is Star!16639) (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292)))))))

(assert (=> b!6825517 (= e!4117656 e!4117651)))

(declare-fun b!6825518 () Bool)

(assert (=> b!6825518 (= e!4117655 (nullable!6614 (regOne!33790 (ite c!1270293 (regTwo!33791 (reg!16968 r!7292)) (regOne!33790 (reg!16968 r!7292))))))))

(declare-fun bm!621257 () Bool)

(assert (=> bm!621257 (= call!621258 call!621261)))

(declare-fun b!6825519 () Bool)

(assert (=> b!6825519 (= e!4117656 call!621258)))

(assert (= (and d!2146445 c!1270488) b!6825511))

(assert (= (and d!2146445 (not c!1270488)) b!6825513))

(assert (= (and b!6825513 c!1270487) b!6825516))

(assert (= (and b!6825513 (not c!1270487)) b!6825509))

(assert (= (and b!6825509 res!2787834) b!6825518))

(assert (= (and b!6825509 c!1270490) b!6825510))

(assert (= (and b!6825509 (not c!1270490)) b!6825514))

(assert (= (and b!6825514 c!1270489) b!6825519))

(assert (= (and b!6825514 (not c!1270489)) b!6825517))

(assert (= (and b!6825517 c!1270486) b!6825512))

(assert (= (and b!6825517 (not c!1270486)) b!6825515))

(assert (= (or b!6825519 b!6825512) bm!621256))

(assert (= (or b!6825519 b!6825512) bm!621257))

(assert (= (or b!6825510 bm!621256) bm!621254))

(assert (= (or b!6825510 bm!621257) bm!621253))

(assert (= (or b!6825516 b!6825510) bm!621252))

(assert (= (or b!6825516 bm!621253) bm!621255))

(declare-fun m!7571324 () Bool)

(assert (=> bm!621254 m!7571324))

(declare-fun m!7571326 () Bool)

(assert (=> bm!621255 m!7571326))

(declare-fun m!7571328 () Bool)

(assert (=> b!6825518 m!7571328))

(declare-fun m!7571330 () Bool)

(assert (=> b!6825511 m!7571330))

(declare-fun m!7571332 () Bool)

(assert (=> bm!621252 m!7571332))

(assert (=> bm!621146 d!2146445))

(assert (=> d!2146083 d!2146081))

(declare-fun d!2146451 () Bool)

(assert (=> d!2146451 (= (map!15119 lt!2452091 lambda!385482) (store ((as const (Array Context!12046 Bool)) false) (dynLambda!26410 lambda!385482 lt!2452067) true))))

(assert (=> d!2146451 true))

(declare-fun _$12!1759 () Unit!159969)

(assert (=> d!2146451 (= (choose!50903 lt!2452091 lt!2452067 lambda!385482) _$12!1759)))

(declare-fun b_lambda!257451 () Bool)

(assert (=> (not b_lambda!257451) (not d!2146451)))

(declare-fun bs!1823694 () Bool)

(assert (= bs!1823694 d!2146451))

(assert (=> bs!1823694 m!7569710))

(assert (=> bs!1823694 m!7570540))

(assert (=> bs!1823694 m!7570540))

(assert (=> bs!1823694 m!7570544))

(assert (=> d!2146083 d!2146451))

(declare-fun d!2146463 () Bool)

(declare-fun res!2787840 () Bool)

(declare-fun e!4117670 () Bool)

(assert (=> d!2146463 (=> res!2787840 e!4117670)))

(assert (=> d!2146463 (= res!2787840 ((_ is Nil!66094) lt!2452261))))

(assert (=> d!2146463 (= (noDuplicate!2419 lt!2452261) e!4117670)))

(declare-fun b!6825541 () Bool)

(declare-fun e!4117671 () Bool)

(assert (=> b!6825541 (= e!4117670 e!4117671)))

(declare-fun res!2787841 () Bool)

(assert (=> b!6825541 (=> (not res!2787841) (not e!4117671))))

(declare-fun contains!20307 (List!66218 Context!12046) Bool)

(assert (=> b!6825541 (= res!2787841 (not (contains!20307 (t!379957 lt!2452261) (h!72542 lt!2452261))))))

(declare-fun b!6825542 () Bool)

(assert (=> b!6825542 (= e!4117671 (noDuplicate!2419 (t!379957 lt!2452261)))))

(assert (= (and d!2146463 (not res!2787840)) b!6825541))

(assert (= (and b!6825541 res!2787841) b!6825542))

(declare-fun m!7571370 () Bool)

(assert (=> b!6825541 m!7571370))

(declare-fun m!7571372 () Bool)

(assert (=> b!6825542 m!7571372))

(assert (=> d!2146063 d!2146463))

(declare-fun d!2146469 () Bool)

(declare-fun e!4117678 () Bool)

(assert (=> d!2146469 e!4117678))

(declare-fun res!2787846 () Bool)

(assert (=> d!2146469 (=> (not res!2787846) (not e!4117678))))

(declare-fun res!2787847 () List!66218)

(assert (=> d!2146469 (= res!2787846 (noDuplicate!2419 res!2787847))))

(declare-fun e!4117679 () Bool)

(assert (=> d!2146469 e!4117679))

(assert (=> d!2146469 (= (choose!50892 z!1189) res!2787847)))

(declare-fun b!6825550 () Bool)

(declare-fun e!4117680 () Bool)

(declare-fun tp!1867995 () Bool)

(assert (=> b!6825550 (= e!4117680 tp!1867995)))

(declare-fun tp!1867994 () Bool)

(declare-fun b!6825549 () Bool)

(assert (=> b!6825549 (= e!4117679 (and (inv!84844 (h!72542 res!2787847)) e!4117680 tp!1867994))))

(declare-fun b!6825551 () Bool)

(assert (=> b!6825551 (= e!4117678 (= (content!12941 res!2787847) z!1189))))

(assert (= b!6825549 b!6825550))

(assert (= (and d!2146469 ((_ is Cons!66094) res!2787847)) b!6825549))

(assert (= (and d!2146469 res!2787846) b!6825551))

(declare-fun m!7571376 () Bool)

(assert (=> d!2146469 m!7571376))

(declare-fun m!7571378 () Bool)

(assert (=> b!6825549 m!7571378))

(declare-fun m!7571380 () Bool)

(assert (=> b!6825551 m!7571380))

(assert (=> d!2146063 d!2146469))

(assert (=> d!2146075 d!2146073))

(assert (=> d!2146075 d!2146071))

(declare-fun d!2146477 () Bool)

(assert (=> d!2146477 (= (matchR!8822 lt!2452072 s!2326) (matchRSpec!3740 lt!2452072 s!2326))))

(assert (=> d!2146477 true))

(declare-fun _$88!5669 () Unit!159969)

(assert (=> d!2146477 (= (choose!50893 lt!2452072 s!2326) _$88!5669)))

(declare-fun bs!1823703 () Bool)

(assert (= bs!1823703 d!2146477))

(assert (=> bs!1823703 m!7569616))

(assert (=> bs!1823703 m!7569614))

(assert (=> d!2146075 d!2146477))

(declare-fun b!6825552 () Bool)

(declare-fun e!4117681 () Bool)

(declare-fun e!4117684 () Bool)

(assert (=> b!6825552 (= e!4117681 e!4117684)))

(declare-fun c!1270500 () Bool)

(assert (=> b!6825552 (= c!1270500 ((_ is Star!16639) lt!2452072))))

(declare-fun d!2146479 () Bool)

(declare-fun res!2787848 () Bool)

(assert (=> d!2146479 (=> res!2787848 e!4117681)))

(assert (=> d!2146479 (= res!2787848 ((_ is ElementMatch!16639) lt!2452072))))

(assert (=> d!2146479 (= (validRegex!8375 lt!2452072) e!4117681)))

(declare-fun bm!621264 () Bool)

(declare-fun call!621269 () Bool)

(declare-fun c!1270499 () Bool)

(assert (=> bm!621264 (= call!621269 (validRegex!8375 (ite c!1270499 (regOne!33791 lt!2452072) (regOne!33790 lt!2452072))))))

(declare-fun b!6825553 () Bool)

(declare-fun e!4117682 () Bool)

(assert (=> b!6825553 (= e!4117684 e!4117682)))

(assert (=> b!6825553 (= c!1270499 ((_ is Union!16639) lt!2452072))))

(declare-fun b!6825554 () Bool)

(declare-fun e!4117685 () Bool)

(declare-fun call!621270 () Bool)

(assert (=> b!6825554 (= e!4117685 call!621270)))

(declare-fun b!6825555 () Bool)

(declare-fun e!4117683 () Bool)

(declare-fun call!621271 () Bool)

(assert (=> b!6825555 (= e!4117683 call!621271)))

(declare-fun b!6825556 () Bool)

(assert (=> b!6825556 (= e!4117684 e!4117685)))

(declare-fun res!2787850 () Bool)

(assert (=> b!6825556 (= res!2787850 (not (nullable!6614 (reg!16968 lt!2452072))))))

(assert (=> b!6825556 (=> (not res!2787850) (not e!4117685))))

(declare-fun bm!621265 () Bool)

(assert (=> bm!621265 (= call!621271 call!621270)))

(declare-fun b!6825557 () Bool)

(declare-fun res!2787851 () Bool)

(declare-fun e!4117687 () Bool)

(assert (=> b!6825557 (=> res!2787851 e!4117687)))

(assert (=> b!6825557 (= res!2787851 (not ((_ is Concat!25484) lt!2452072)))))

(assert (=> b!6825557 (= e!4117682 e!4117687)))

(declare-fun b!6825558 () Bool)

(declare-fun res!2787852 () Bool)

(assert (=> b!6825558 (=> (not res!2787852) (not e!4117683))))

(assert (=> b!6825558 (= res!2787852 call!621269)))

(assert (=> b!6825558 (= e!4117682 e!4117683)))

(declare-fun b!6825559 () Bool)

(declare-fun e!4117686 () Bool)

(assert (=> b!6825559 (= e!4117686 call!621271)))

(declare-fun b!6825560 () Bool)

(assert (=> b!6825560 (= e!4117687 e!4117686)))

(declare-fun res!2787849 () Bool)

(assert (=> b!6825560 (=> (not res!2787849) (not e!4117686))))

(assert (=> b!6825560 (= res!2787849 call!621269)))

(declare-fun bm!621266 () Bool)

(assert (=> bm!621266 (= call!621270 (validRegex!8375 (ite c!1270500 (reg!16968 lt!2452072) (ite c!1270499 (regTwo!33791 lt!2452072) (regTwo!33790 lt!2452072)))))))

(assert (= (and d!2146479 (not res!2787848)) b!6825552))

(assert (= (and b!6825552 c!1270500) b!6825556))

(assert (= (and b!6825552 (not c!1270500)) b!6825553))

(assert (= (and b!6825556 res!2787850) b!6825554))

(assert (= (and b!6825553 c!1270499) b!6825558))

(assert (= (and b!6825553 (not c!1270499)) b!6825557))

(assert (= (and b!6825558 res!2787852) b!6825555))

(assert (= (and b!6825557 (not res!2787851)) b!6825560))

(assert (= (and b!6825560 res!2787849) b!6825559))

(assert (= (or b!6825555 b!6825559) bm!621265))

(assert (= (or b!6825558 b!6825560) bm!621264))

(assert (= (or b!6825554 bm!621265) bm!621266))

(declare-fun m!7571382 () Bool)

(assert (=> bm!621264 m!7571382))

(declare-fun m!7571384 () Bool)

(assert (=> b!6825556 m!7571384))

(declare-fun m!7571386 () Bool)

(assert (=> bm!621266 m!7571386))

(assert (=> d!2146075 d!2146479))

(assert (=> d!2145965 d!2145957))

(declare-fun d!2146481 () Bool)

(assert (=> d!2146481 (= (flatMap!2120 lt!2452059 lambda!385481) (dynLambda!26409 lambda!385481 lt!2452076))))

(assert (=> d!2146481 true))

(declare-fun _$13!4331 () Unit!159969)

(assert (=> d!2146481 (= (choose!50890 lt!2452059 lt!2452076 lambda!385481) _$13!4331)))

(declare-fun b_lambda!257453 () Bool)

(assert (=> (not b_lambda!257453) (not d!2146481)))

(declare-fun bs!1823707 () Bool)

(assert (= bs!1823707 d!2146481))

(assert (=> bs!1823707 m!7569666))

(assert (=> bs!1823707 m!7570202))

(assert (=> d!2145965 d!2146481))

(declare-fun b!6825561 () Bool)

(declare-fun e!4117688 () Bool)

(declare-fun e!4117691 () Bool)

(assert (=> b!6825561 (= e!4117688 e!4117691)))

(declare-fun c!1270502 () Bool)

(assert (=> b!6825561 (= c!1270502 ((_ is Star!16639) (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))))))

(declare-fun d!2146489 () Bool)

(declare-fun res!2787853 () Bool)

(assert (=> d!2146489 (=> res!2787853 e!4117688)))

(assert (=> d!2146489 (= res!2787853 ((_ is ElementMatch!16639) (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))))))

(assert (=> d!2146489 (= (validRegex!8375 (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))) e!4117688)))

(declare-fun bm!621267 () Bool)

(declare-fun c!1270501 () Bool)

(declare-fun call!621272 () Bool)

(assert (=> bm!621267 (= call!621272 (validRegex!8375 (ite c!1270501 (regOne!33791 (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))) (regOne!33790 (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))))))))

(declare-fun b!6825562 () Bool)

(declare-fun e!4117689 () Bool)

(assert (=> b!6825562 (= e!4117691 e!4117689)))

(assert (=> b!6825562 (= c!1270501 ((_ is Union!16639) (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))))))

(declare-fun b!6825563 () Bool)

(declare-fun e!4117692 () Bool)

(declare-fun call!621273 () Bool)

(assert (=> b!6825563 (= e!4117692 call!621273)))

(declare-fun b!6825564 () Bool)

(declare-fun e!4117690 () Bool)

(declare-fun call!621274 () Bool)

(assert (=> b!6825564 (= e!4117690 call!621274)))

(declare-fun b!6825565 () Bool)

(assert (=> b!6825565 (= e!4117691 e!4117692)))

(declare-fun res!2787855 () Bool)

(assert (=> b!6825565 (= res!2787855 (not (nullable!6614 (reg!16968 (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))))))))

(assert (=> b!6825565 (=> (not res!2787855) (not e!4117692))))

(declare-fun bm!621268 () Bool)

(assert (=> bm!621268 (= call!621274 call!621273)))

(declare-fun b!6825566 () Bool)

(declare-fun res!2787856 () Bool)

(declare-fun e!4117694 () Bool)

(assert (=> b!6825566 (=> res!2787856 e!4117694)))

(assert (=> b!6825566 (= res!2787856 (not ((_ is Concat!25484) (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292)))))))

(assert (=> b!6825566 (= e!4117689 e!4117694)))

(declare-fun b!6825567 () Bool)

(declare-fun res!2787857 () Bool)

(assert (=> b!6825567 (=> (not res!2787857) (not e!4117690))))

(assert (=> b!6825567 (= res!2787857 call!621272)))

(assert (=> b!6825567 (= e!4117689 e!4117690)))

(declare-fun b!6825568 () Bool)

(declare-fun e!4117693 () Bool)

(assert (=> b!6825568 (= e!4117693 call!621274)))

(declare-fun b!6825569 () Bool)

(assert (=> b!6825569 (= e!4117694 e!4117693)))

(declare-fun res!2787854 () Bool)

(assert (=> b!6825569 (=> (not res!2787854) (not e!4117693))))

(assert (=> b!6825569 (= res!2787854 call!621272)))

(declare-fun bm!621269 () Bool)

(assert (=> bm!621269 (= call!621273 (validRegex!8375 (ite c!1270502 (reg!16968 (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))) (ite c!1270501 (regTwo!33791 (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292))) (regTwo!33790 (ite c!1270268 (regOne!33791 r!7292) (regOne!33790 r!7292)))))))))

(assert (= (and d!2146489 (not res!2787853)) b!6825561))

(assert (= (and b!6825561 c!1270502) b!6825565))

(assert (= (and b!6825561 (not c!1270502)) b!6825562))

(assert (= (and b!6825565 res!2787855) b!6825563))

(assert (= (and b!6825562 c!1270501) b!6825567))

(assert (= (and b!6825562 (not c!1270501)) b!6825566))

(assert (= (and b!6825567 res!2787857) b!6825564))

(assert (= (and b!6825566 (not res!2787856)) b!6825569))

(assert (= (and b!6825569 res!2787854) b!6825568))

(assert (= (or b!6825564 b!6825568) bm!621268))

(assert (= (or b!6825567 b!6825569) bm!621267))

(assert (= (or b!6825563 bm!621268) bm!621269))

(declare-fun m!7571392 () Bool)

(assert (=> bm!621267 m!7571392))

(declare-fun m!7571394 () Bool)

(assert (=> b!6825565 m!7571394))

(declare-fun m!7571396 () Bool)

(assert (=> bm!621269 m!7571396))

(assert (=> bm!621142 d!2146489))

(declare-fun d!2146491 () Bool)

(assert (=> d!2146491 (= (isEmptyLang!2001 lt!2452255) ((_ is EmptyLang!16639) lt!2452255))))

(assert (=> b!6824850 d!2146491))

(assert (=> d!2145969 d!2145959))

(declare-fun d!2146493 () Bool)

(assert (=> d!2146493 (= (flatMap!2120 lt!2452091 lambda!385481) (dynLambda!26409 lambda!385481 lt!2452067))))

(assert (=> d!2146493 true))

(declare-fun _$13!4332 () Unit!159969)

(assert (=> d!2146493 (= (choose!50890 lt!2452091 lt!2452067 lambda!385481) _$13!4332)))

(declare-fun b_lambda!257455 () Bool)

(assert (=> (not b_lambda!257455) (not d!2146493)))

(declare-fun bs!1823708 () Bool)

(assert (= bs!1823708 d!2146493))

(assert (=> bs!1823708 m!7569672))

(assert (=> bs!1823708 m!7570206))

(assert (=> d!2145969 d!2146493))

(declare-fun d!2146495 () Bool)

(declare-fun c!1270505 () Bool)

(assert (=> d!2146495 (= c!1270505 (and ((_ is ElementMatch!16639) (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))) (= (c!1270055 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))) (h!72540 s!2326))))))

(declare-fun e!4117698 () (InoxSet Context!12046))

(assert (=> d!2146495 (= (derivationStepZipperDown!1867 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292)))) (ite (or c!1270215 c!1270218) (Context!12047 Nil!66093) (Context!12047 call!621125)) (h!72540 s!2326)) e!4117698)))

(declare-fun bm!621270 () Bool)

(declare-fun call!621280 () List!66217)

(declare-fun c!1270504 () Bool)

(declare-fun call!621278 () (InoxSet Context!12046))

(assert (=> bm!621270 (= call!621278 (derivationStepZipperDown!1867 (ite c!1270504 (regTwo!33791 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))) (regOne!33790 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292)))))) (ite c!1270504 (ite (or c!1270215 c!1270218) (Context!12047 Nil!66093) (Context!12047 call!621125)) (Context!12047 call!621280)) (h!72540 s!2326)))))

(declare-fun bm!621271 () Bool)

(declare-fun call!621279 () (InoxSet Context!12046))

(declare-fun call!621277 () (InoxSet Context!12046))

(assert (=> bm!621271 (= call!621279 call!621277)))

(declare-fun b!6825570 () Bool)

(declare-fun c!1270507 () Bool)

(declare-fun e!4117699 () Bool)

(assert (=> b!6825570 (= c!1270507 e!4117699)))

(declare-fun res!2787858 () Bool)

(assert (=> b!6825570 (=> (not res!2787858) (not e!4117699))))

(assert (=> b!6825570 (= res!2787858 ((_ is Concat!25484) (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))))))

(declare-fun e!4117696 () (InoxSet Context!12046))

(declare-fun e!4117697 () (InoxSet Context!12046))

(assert (=> b!6825570 (= e!4117696 e!4117697)))

(declare-fun c!1270506 () Bool)

(declare-fun bm!621272 () Bool)

(assert (=> bm!621272 (= call!621280 ($colon$colon!2444 (exprs!6523 (ite (or c!1270215 c!1270218) (Context!12047 Nil!66093) (Context!12047 call!621125))) (ite (or c!1270507 c!1270506) (regTwo!33790 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))) (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292)))))))))

(declare-fun b!6825571 () Bool)

(assert (=> b!6825571 (= e!4117697 ((_ map or) call!621278 call!621279))))

(declare-fun call!621275 () List!66217)

(declare-fun bm!621273 () Bool)

(assert (=> bm!621273 (= call!621277 (derivationStepZipperDown!1867 (ite c!1270504 (regOne!33791 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))) (ite c!1270507 (regTwo!33790 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))) (ite c!1270506 (regOne!33790 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))) (reg!16968 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292)))))))) (ite (or c!1270504 c!1270507) (ite (or c!1270215 c!1270218) (Context!12047 Nil!66093) (Context!12047 call!621125)) (Context!12047 call!621275)) (h!72540 s!2326)))))

(declare-fun b!6825572 () Bool)

(assert (=> b!6825572 (= e!4117698 (store ((as const (Array Context!12046 Bool)) false) (ite (or c!1270215 c!1270218) (Context!12047 Nil!66093) (Context!12047 call!621125)) true))))

(declare-fun b!6825573 () Bool)

(declare-fun e!4117695 () (InoxSet Context!12046))

(declare-fun call!621276 () (InoxSet Context!12046))

(assert (=> b!6825573 (= e!4117695 call!621276)))

(declare-fun b!6825574 () Bool)

(assert (=> b!6825574 (= e!4117698 e!4117696)))

(assert (=> b!6825574 (= c!1270504 ((_ is Union!16639) (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))))))

(declare-fun bm!621274 () Bool)

(assert (=> bm!621274 (= call!621275 call!621280)))

(declare-fun b!6825575 () Bool)

(declare-fun e!4117700 () (InoxSet Context!12046))

(assert (=> b!6825575 (= e!4117697 e!4117700)))

(assert (=> b!6825575 (= c!1270506 ((_ is Concat!25484) (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))))))

(declare-fun b!6825576 () Bool)

(assert (=> b!6825576 (= e!4117695 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825577 () Bool)

(assert (=> b!6825577 (= e!4117696 ((_ map or) call!621277 call!621278))))

(declare-fun b!6825578 () Bool)

(declare-fun c!1270503 () Bool)

(assert (=> b!6825578 (= c!1270503 ((_ is Star!16639) (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292))))))))

(assert (=> b!6825578 (= e!4117700 e!4117695)))

(declare-fun b!6825579 () Bool)

(assert (=> b!6825579 (= e!4117699 (nullable!6614 (regOne!33790 (ite c!1270215 (regOne!33791 r!7292) (ite c!1270218 (regTwo!33790 r!7292) (ite c!1270217 (regOne!33790 r!7292) (reg!16968 r!7292)))))))))

(declare-fun bm!621275 () Bool)

(assert (=> bm!621275 (= call!621276 call!621279)))

(declare-fun b!6825580 () Bool)

(assert (=> b!6825580 (= e!4117700 call!621276)))

(assert (= (and d!2146495 c!1270505) b!6825572))

(assert (= (and d!2146495 (not c!1270505)) b!6825574))

(assert (= (and b!6825574 c!1270504) b!6825577))

(assert (= (and b!6825574 (not c!1270504)) b!6825570))

(assert (= (and b!6825570 res!2787858) b!6825579))

(assert (= (and b!6825570 c!1270507) b!6825571))

(assert (= (and b!6825570 (not c!1270507)) b!6825575))

(assert (= (and b!6825575 c!1270506) b!6825580))

(assert (= (and b!6825575 (not c!1270506)) b!6825578))

(assert (= (and b!6825578 c!1270503) b!6825573))

(assert (= (and b!6825578 (not c!1270503)) b!6825576))

(assert (= (or b!6825580 b!6825573) bm!621274))

(assert (= (or b!6825580 b!6825573) bm!621275))

(assert (= (or b!6825571 bm!621274) bm!621272))

(assert (= (or b!6825571 bm!621275) bm!621271))

(assert (= (or b!6825577 b!6825571) bm!621270))

(assert (= (or b!6825577 bm!621271) bm!621273))

(declare-fun m!7571398 () Bool)

(assert (=> bm!621272 m!7571398))

(declare-fun m!7571400 () Bool)

(assert (=> bm!621273 m!7571400))

(declare-fun m!7571402 () Bool)

(assert (=> b!6825579 m!7571402))

(declare-fun m!7571404 () Bool)

(assert (=> b!6825572 m!7571404))

(declare-fun m!7571406 () Bool)

(assert (=> bm!621270 m!7571406))

(assert (=> bm!621123 d!2146495))

(declare-fun bs!1823709 () Bool)

(declare-fun d!2146497 () Bool)

(assert (= bs!1823709 (and d!2146497 d!2146293)))

(declare-fun lambda!385615 () Int)

(assert (=> bs!1823709 (= lambda!385615 lambda!385597)))

(declare-fun bs!1823710 () Bool)

(assert (= bs!1823710 (and d!2146497 b!6823997)))

(assert (=> bs!1823710 (= lambda!385615 lambda!385483)))

(declare-fun bs!1823711 () Bool)

(assert (= bs!1823711 (and d!2146497 d!2146049)))

(assert (=> bs!1823711 (= lambda!385615 lambda!385570)))

(declare-fun bs!1823712 () Bool)

(assert (= bs!1823712 (and d!2146497 d!2146077)))

(assert (=> bs!1823712 (= lambda!385615 lambda!385576)))

(declare-fun bs!1823713 () Bool)

(assert (= bs!1823713 (and d!2146497 d!2146051)))

(assert (=> bs!1823713 (= lambda!385615 lambda!385573)))

(declare-fun bs!1823714 () Bool)

(assert (= bs!1823714 (and d!2146497 d!2146291)))

(assert (=> bs!1823714 (= lambda!385615 lambda!385596)))

(declare-fun bs!1823715 () Bool)

(assert (= bs!1823715 (and d!2146497 d!2146037)))

(assert (=> bs!1823715 (= lambda!385615 lambda!385567)))

(declare-fun bs!1823716 () Bool)

(assert (= bs!1823716 (and d!2146497 d!2145995)))

(assert (=> bs!1823716 (= lambda!385615 lambda!385554)))

(declare-fun bs!1823717 () Bool)

(assert (= bs!1823717 (and d!2146497 d!2145867)))

(assert (=> bs!1823717 (= lambda!385615 lambda!385508)))

(assert (=> d!2146497 (= (inv!84844 setElem!46843) (forall!15827 (exprs!6523 setElem!46843) lambda!385615))))

(declare-fun bs!1823718 () Bool)

(assert (= bs!1823718 d!2146497))

(declare-fun m!7571408 () Bool)

(assert (=> bs!1823718 m!7571408))

(assert (=> setNonEmpty!46843 d!2146497))

(declare-fun d!2146499 () Bool)

(assert (=> d!2146499 (= (nullable!6614 (reg!16968 r!7292)) (nullableFct!2511 (reg!16968 r!7292)))))

(declare-fun bs!1823719 () Bool)

(assert (= bs!1823719 d!2146499))

(declare-fun m!7571410 () Bool)

(assert (=> bs!1823719 m!7571410))

(assert (=> b!6824790 d!2146499))

(declare-fun d!2146501 () Bool)

(assert (=> d!2146501 (= (nullable!6614 (h!72541 (exprs!6523 lt!2452067))) (nullableFct!2511 (h!72541 (exprs!6523 lt!2452067))))))

(declare-fun bs!1823720 () Bool)

(assert (= bs!1823720 d!2146501))

(declare-fun m!7571412 () Bool)

(assert (=> bs!1823720 m!7571412))

(assert (=> b!6824503 d!2146501))

(declare-fun bs!1823721 () Bool)

(declare-fun b!6825594 () Bool)

(assert (= bs!1823721 (and b!6825594 b!6825030)))

(declare-fun lambda!385618 () Int)

(assert (=> bs!1823721 (= (and (= (reg!16968 (regTwo!33791 r!7292)) (reg!16968 (regOne!33791 lt!2452072))) (= (regTwo!33791 r!7292) (regOne!33791 lt!2452072))) (= lambda!385618 lambda!385586))))

(declare-fun bs!1823722 () Bool)

(assert (= bs!1823722 (and b!6825594 d!2145873)))

(assert (=> bs!1823722 (not (= lambda!385618 lambda!385514))))

(declare-fun bs!1823723 () Bool)

(assert (= bs!1823723 (and b!6825594 b!6824881)))

(assert (=> bs!1823723 (not (= lambda!385618 lambda!385575))))

(declare-fun bs!1823724 () Bool)

(assert (= bs!1823724 (and b!6825594 b!6825323)))

(assert (=> bs!1823724 (not (= lambda!385618 lambda!385602))))

(declare-fun bs!1823725 () Bool)

(assert (= bs!1823725 (and b!6825594 b!6825021)))

(assert (=> bs!1823725 (not (= lambda!385618 lambda!385587))))

(declare-fun bs!1823726 () Bool)

(assert (= bs!1823726 (and b!6825594 d!2145941)))

(assert (=> bs!1823726 (not (= lambda!385618 lambda!385537))))

(declare-fun bs!1823727 () Bool)

(assert (= bs!1823727 (and b!6825594 b!6824003)))

(assert (=> bs!1823727 (not (= lambda!385618 lambda!385480))))

(assert (=> bs!1823722 (not (= lambda!385618 lambda!385515))))

(declare-fun bs!1823728 () Bool)

(assert (= bs!1823728 (and b!6825594 d!2145893)))

(assert (=> bs!1823728 (= (and (= (reg!16968 (regTwo!33791 r!7292)) (reg!16968 r!7292)) (= (regTwo!33791 r!7292) (Star!16639 (reg!16968 r!7292)))) (= lambda!385618 lambda!385525))))

(declare-fun bs!1823729 () Bool)

(assert (= bs!1823729 (and b!6825594 b!6824659)))

(assert (=> bs!1823729 (not (= lambda!385618 lambda!385564))))

(declare-fun bs!1823730 () Bool)

(assert (= bs!1823730 (and b!6825594 b!6824890)))

(assert (=> bs!1823730 (= (and (= (reg!16968 (regTwo!33791 r!7292)) (reg!16968 lt!2452072)) (= (regTwo!33791 r!7292) lt!2452072)) (= lambda!385618 lambda!385574))))

(declare-fun bs!1823731 () Bool)

(assert (= bs!1823731 (and b!6825594 b!6824668)))

(assert (=> bs!1823731 (= (and (= (reg!16968 (regTwo!33791 r!7292)) (reg!16968 r!7292)) (= (regTwo!33791 r!7292) r!7292)) (= lambda!385618 lambda!385563))))

(declare-fun bs!1823732 () Bool)

(assert (= bs!1823732 (and b!6825594 d!2146419)))

(assert (=> bs!1823732 (not (= lambda!385618 lambda!385608))))

(assert (=> bs!1823732 (= (and (= (reg!16968 (regTwo!33791 r!7292)) (reg!16968 r!7292)) (= (regTwo!33791 r!7292) (Star!16639 (reg!16968 r!7292)))) (= lambda!385618 lambda!385611))))

(declare-fun bs!1823733 () Bool)

(assert (= bs!1823733 (and b!6825594 b!6825332)))

(assert (=> bs!1823733 (= (and (= (reg!16968 (regTwo!33791 r!7292)) (reg!16968 (regTwo!33791 lt!2452072))) (= (regTwo!33791 r!7292) (regTwo!33791 lt!2452072))) (= lambda!385618 lambda!385600))))

(assert (=> bs!1823728 (not (= lambda!385618 lambda!385522))))

(assert (=> bs!1823727 (= (and (= (reg!16968 (regTwo!33791 r!7292)) (reg!16968 r!7292)) (= (regTwo!33791 r!7292) r!7292)) (= lambda!385618 lambda!385479))))

(assert (=> bs!1823727 (not (= lambda!385618 lambda!385478))))

(assert (=> b!6825594 true))

(assert (=> b!6825594 true))

(declare-fun bs!1823734 () Bool)

(declare-fun b!6825585 () Bool)

(assert (= bs!1823734 (and b!6825585 b!6825030)))

(declare-fun lambda!385621 () Int)

(assert (=> bs!1823734 (not (= lambda!385621 lambda!385586))))

(declare-fun bs!1823735 () Bool)

(assert (= bs!1823735 (and b!6825585 d!2145873)))

(assert (=> bs!1823735 (not (= lambda!385621 lambda!385514))))

(declare-fun bs!1823736 () Bool)

(assert (= bs!1823736 (and b!6825585 b!6824881)))

(assert (=> bs!1823736 (= (and (= (regOne!33790 (regTwo!33791 r!7292)) (regOne!33790 lt!2452072)) (= (regTwo!33790 (regTwo!33791 r!7292)) (regTwo!33790 lt!2452072))) (= lambda!385621 lambda!385575))))

(declare-fun bs!1823737 () Bool)

(assert (= bs!1823737 (and b!6825585 b!6825323)))

(assert (=> bs!1823737 (= (and (= (regOne!33790 (regTwo!33791 r!7292)) (regOne!33790 (regTwo!33791 lt!2452072))) (= (regTwo!33790 (regTwo!33791 r!7292)) (regTwo!33790 (regTwo!33791 lt!2452072)))) (= lambda!385621 lambda!385602))))

(declare-fun bs!1823738 () Bool)

(assert (= bs!1823738 (and b!6825585 b!6825021)))

(assert (=> bs!1823738 (= (and (= (regOne!33790 (regTwo!33791 r!7292)) (regOne!33790 (regOne!33791 lt!2452072))) (= (regTwo!33790 (regTwo!33791 r!7292)) (regTwo!33790 (regOne!33791 lt!2452072)))) (= lambda!385621 lambda!385587))))

(declare-fun bs!1823740 () Bool)

(assert (= bs!1823740 (and b!6825585 d!2145941)))

(assert (=> bs!1823740 (not (= lambda!385621 lambda!385537))))

(assert (=> bs!1823735 (= (and (= (regOne!33790 (regTwo!33791 r!7292)) (reg!16968 r!7292)) (= (regTwo!33790 (regTwo!33791 r!7292)) r!7292)) (= lambda!385621 lambda!385515))))

(declare-fun bs!1823742 () Bool)

(assert (= bs!1823742 (and b!6825585 d!2145893)))

(assert (=> bs!1823742 (not (= lambda!385621 lambda!385525))))

(declare-fun bs!1823744 () Bool)

(assert (= bs!1823744 (and b!6825585 b!6824659)))

(assert (=> bs!1823744 (= (and (= (regOne!33790 (regTwo!33791 r!7292)) (regOne!33790 r!7292)) (= (regTwo!33790 (regTwo!33791 r!7292)) (regTwo!33790 r!7292))) (= lambda!385621 lambda!385564))))

(declare-fun bs!1823746 () Bool)

(assert (= bs!1823746 (and b!6825585 b!6824890)))

(assert (=> bs!1823746 (not (= lambda!385621 lambda!385574))))

(declare-fun bs!1823748 () Bool)

(assert (= bs!1823748 (and b!6825585 b!6824668)))

(assert (=> bs!1823748 (not (= lambda!385621 lambda!385563))))

(declare-fun bs!1823750 () Bool)

(assert (= bs!1823750 (and b!6825585 d!2146419)))

(assert (=> bs!1823750 (not (= lambda!385621 lambda!385608))))

(assert (=> bs!1823750 (not (= lambda!385621 lambda!385611))))

(declare-fun bs!1823752 () Bool)

(assert (= bs!1823752 (and b!6825585 b!6825332)))

(assert (=> bs!1823752 (not (= lambda!385621 lambda!385600))))

(assert (=> bs!1823742 (not (= lambda!385621 lambda!385522))))

(declare-fun bs!1823754 () Bool)

(assert (= bs!1823754 (and b!6825585 b!6825594)))

(assert (=> bs!1823754 (not (= lambda!385621 lambda!385618))))

(declare-fun bs!1823755 () Bool)

(assert (= bs!1823755 (and b!6825585 b!6824003)))

(assert (=> bs!1823755 (= (and (= (regOne!33790 (regTwo!33791 r!7292)) (reg!16968 r!7292)) (= (regTwo!33790 (regTwo!33791 r!7292)) r!7292)) (= lambda!385621 lambda!385480))))

(assert (=> bs!1823755 (not (= lambda!385621 lambda!385479))))

(assert (=> bs!1823755 (not (= lambda!385621 lambda!385478))))

(assert (=> b!6825585 true))

(assert (=> b!6825585 true))

(declare-fun e!4117708 () Bool)

(declare-fun call!621281 () Bool)

(assert (=> b!6825585 (= e!4117708 call!621281)))

(declare-fun b!6825586 () Bool)

(declare-fun res!2787865 () Bool)

(declare-fun e!4117704 () Bool)

(assert (=> b!6825586 (=> res!2787865 e!4117704)))

(declare-fun call!621282 () Bool)

(assert (=> b!6825586 (= res!2787865 call!621282)))

(assert (=> b!6825586 (= e!4117708 e!4117704)))

(declare-fun b!6825587 () Bool)

(declare-fun e!4117703 () Bool)

(declare-fun e!4117709 () Bool)

(assert (=> b!6825587 (= e!4117703 e!4117709)))

(declare-fun res!2787863 () Bool)

(assert (=> b!6825587 (= res!2787863 (not ((_ is EmptyLang!16639) (regTwo!33791 r!7292))))))

(assert (=> b!6825587 (=> (not res!2787863) (not e!4117709))))

(declare-fun b!6825588 () Bool)

(declare-fun e!4117705 () Bool)

(assert (=> b!6825588 (= e!4117705 (matchRSpec!3740 (regTwo!33791 (regTwo!33791 r!7292)) s!2326))))

(declare-fun b!6825589 () Bool)

(declare-fun e!4117706 () Bool)

(assert (=> b!6825589 (= e!4117706 (= s!2326 (Cons!66092 (c!1270055 (regTwo!33791 r!7292)) Nil!66092)))))

(declare-fun b!6825590 () Bool)

(declare-fun c!1270509 () Bool)

(assert (=> b!6825590 (= c!1270509 ((_ is Union!16639) (regTwo!33791 r!7292)))))

(declare-fun e!4117707 () Bool)

(assert (=> b!6825590 (= e!4117706 e!4117707)))

(declare-fun b!6825591 () Bool)

(declare-fun c!1270511 () Bool)

(assert (=> b!6825591 (= c!1270511 ((_ is ElementMatch!16639) (regTwo!33791 r!7292)))))

(assert (=> b!6825591 (= e!4117709 e!4117706)))

(declare-fun d!2146503 () Bool)

(declare-fun c!1270510 () Bool)

(assert (=> d!2146503 (= c!1270510 ((_ is EmptyExpr!16639) (regTwo!33791 r!7292)))))

(assert (=> d!2146503 (= (matchRSpec!3740 (regTwo!33791 r!7292) s!2326) e!4117703)))

(declare-fun b!6825592 () Bool)

(assert (=> b!6825592 (= e!4117707 e!4117705)))

(declare-fun res!2787864 () Bool)

(assert (=> b!6825592 (= res!2787864 (matchRSpec!3740 (regOne!33791 (regTwo!33791 r!7292)) s!2326))))

(assert (=> b!6825592 (=> res!2787864 e!4117705)))

(declare-fun b!6825593 () Bool)

(assert (=> b!6825593 (= e!4117703 call!621282)))

(declare-fun bm!621276 () Bool)

(assert (=> bm!621276 (= call!621282 (isEmpty!38481 s!2326))))

(declare-fun c!1270508 () Bool)

(declare-fun bm!621277 () Bool)

(assert (=> bm!621277 (= call!621281 (Exists!3707 (ite c!1270508 lambda!385618 lambda!385621)))))

(assert (=> b!6825594 (= e!4117704 call!621281)))

(declare-fun b!6825595 () Bool)

(assert (=> b!6825595 (= e!4117707 e!4117708)))

(assert (=> b!6825595 (= c!1270508 ((_ is Star!16639) (regTwo!33791 r!7292)))))

(assert (= (and d!2146503 c!1270510) b!6825593))

(assert (= (and d!2146503 (not c!1270510)) b!6825587))

(assert (= (and b!6825587 res!2787863) b!6825591))

(assert (= (and b!6825591 c!1270511) b!6825589))

(assert (= (and b!6825591 (not c!1270511)) b!6825590))

(assert (= (and b!6825590 c!1270509) b!6825592))

(assert (= (and b!6825590 (not c!1270509)) b!6825595))

(assert (= (and b!6825592 (not res!2787864)) b!6825588))

(assert (= (and b!6825595 c!1270508) b!6825586))

(assert (= (and b!6825595 (not c!1270508)) b!6825585))

(assert (= (and b!6825586 (not res!2787865)) b!6825594))

(assert (= (or b!6825594 b!6825585) bm!621277))

(assert (= (or b!6825593 b!6825586) bm!621276))

(declare-fun m!7571414 () Bool)

(assert (=> b!6825588 m!7571414))

(declare-fun m!7571416 () Bool)

(assert (=> b!6825592 m!7571416))

(assert (=> bm!621276 m!7569622))

(declare-fun m!7571418 () Bool)

(assert (=> bm!621277 m!7571418))

(assert (=> b!6824662 d!2146503))

(declare-fun d!2146505 () Bool)

(assert (=> d!2146505 (= (nullable!6614 r!7292) (nullableFct!2511 r!7292))))

(declare-fun bs!1823757 () Bool)

(assert (= bs!1823757 d!2146505))

(declare-fun m!7571420 () Bool)

(assert (=> bs!1823757 m!7571420))

(assert (=> b!6824767 d!2146505))

(declare-fun d!2146507 () Bool)

(assert (=> d!2146507 true))

(declare-fun setRes!46856 () Bool)

(assert (=> d!2146507 setRes!46856))

(declare-fun condSetEmpty!46856 () Bool)

(declare-fun res!2787872 () (InoxSet Context!12046))

(assert (=> d!2146507 (= condSetEmpty!46856 (= res!2787872 ((as const (Array Context!12046 Bool)) false)))))

(assert (=> d!2146507 (= (choose!50889 lt!2452058 lambda!385481) res!2787872)))

(declare-fun setIsEmpty!46856 () Bool)

(assert (=> setIsEmpty!46856 setRes!46856))

(declare-fun tp!1867997 () Bool)

(declare-fun setNonEmpty!46856 () Bool)

(declare-fun setElem!46856 () Context!12046)

(declare-fun e!4117712 () Bool)

(assert (=> setNonEmpty!46856 (= setRes!46856 (and tp!1867997 (inv!84844 setElem!46856) e!4117712))))

(declare-fun setRest!46856 () (InoxSet Context!12046))

(assert (=> setNonEmpty!46856 (= res!2787872 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) setElem!46856 true) setRest!46856))))

(declare-fun b!6825602 () Bool)

(declare-fun tp!1867996 () Bool)

(assert (=> b!6825602 (= e!4117712 tp!1867996)))

(assert (= (and d!2146507 condSetEmpty!46856) setIsEmpty!46856))

(assert (= (and d!2146507 (not condSetEmpty!46856)) setNonEmpty!46856))

(assert (= setNonEmpty!46856 b!6825602))

(declare-fun m!7571422 () Bool)

(assert (=> setNonEmpty!46856 m!7571422))

(assert (=> d!2146055 d!2146507))

(declare-fun d!2146509 () Bool)

(declare-fun c!1270514 () Bool)

(assert (=> d!2146509 (= c!1270514 (and ((_ is ElementMatch!16639) (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))) (= (c!1270055 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))) (h!72540 s!2326))))))

(declare-fun e!4117716 () (InoxSet Context!12046))

(assert (=> d!2146509 (= (derivationStepZipperDown!1867 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292))))) (ite (or c!1270293 c!1270296) lt!2452076 (Context!12047 call!621151)) (h!72540 s!2326)) e!4117716)))

(declare-fun call!621286 () (InoxSet Context!12046))

(declare-fun c!1270513 () Bool)

(declare-fun bm!621278 () Bool)

(declare-fun call!621288 () List!66217)

(assert (=> bm!621278 (= call!621286 (derivationStepZipperDown!1867 (ite c!1270513 (regTwo!33791 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))) (regOne!33790 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292))))))) (ite c!1270513 (ite (or c!1270293 c!1270296) lt!2452076 (Context!12047 call!621151)) (Context!12047 call!621288)) (h!72540 s!2326)))))

(declare-fun bm!621279 () Bool)

(declare-fun call!621287 () (InoxSet Context!12046))

(declare-fun call!621285 () (InoxSet Context!12046))

(assert (=> bm!621279 (= call!621287 call!621285)))

(declare-fun b!6825603 () Bool)

(declare-fun c!1270516 () Bool)

(declare-fun e!4117717 () Bool)

(assert (=> b!6825603 (= c!1270516 e!4117717)))

(declare-fun res!2787873 () Bool)

(assert (=> b!6825603 (=> (not res!2787873) (not e!4117717))))

(assert (=> b!6825603 (= res!2787873 ((_ is Concat!25484) (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))))))

(declare-fun e!4117714 () (InoxSet Context!12046))

(declare-fun e!4117715 () (InoxSet Context!12046))

(assert (=> b!6825603 (= e!4117714 e!4117715)))

(declare-fun c!1270515 () Bool)

(declare-fun bm!621280 () Bool)

(assert (=> bm!621280 (= call!621288 ($colon$colon!2444 (exprs!6523 (ite (or c!1270293 c!1270296) lt!2452076 (Context!12047 call!621151))) (ite (or c!1270516 c!1270515) (regTwo!33790 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))) (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292))))))))))

(declare-fun b!6825604 () Bool)

(assert (=> b!6825604 (= e!4117715 ((_ map or) call!621286 call!621287))))

(declare-fun bm!621281 () Bool)

(declare-fun call!621283 () List!66217)

(assert (=> bm!621281 (= call!621285 (derivationStepZipperDown!1867 (ite c!1270513 (regOne!33791 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))) (ite c!1270516 (regTwo!33790 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))) (ite c!1270515 (regOne!33790 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))) (reg!16968 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292))))))))) (ite (or c!1270513 c!1270516) (ite (or c!1270293 c!1270296) lt!2452076 (Context!12047 call!621151)) (Context!12047 call!621283)) (h!72540 s!2326)))))

(declare-fun b!6825605 () Bool)

(assert (=> b!6825605 (= e!4117716 (store ((as const (Array Context!12046 Bool)) false) (ite (or c!1270293 c!1270296) lt!2452076 (Context!12047 call!621151)) true))))

(declare-fun b!6825606 () Bool)

(declare-fun e!4117713 () (InoxSet Context!12046))

(declare-fun call!621284 () (InoxSet Context!12046))

(assert (=> b!6825606 (= e!4117713 call!621284)))

(declare-fun b!6825607 () Bool)

(assert (=> b!6825607 (= e!4117716 e!4117714)))

(assert (=> b!6825607 (= c!1270513 ((_ is Union!16639) (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))))))

(declare-fun bm!621282 () Bool)

(assert (=> bm!621282 (= call!621283 call!621288)))

(declare-fun b!6825608 () Bool)

(declare-fun e!4117718 () (InoxSet Context!12046))

(assert (=> b!6825608 (= e!4117715 e!4117718)))

(assert (=> b!6825608 (= c!1270515 ((_ is Concat!25484) (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))))))

(declare-fun b!6825609 () Bool)

(assert (=> b!6825609 (= e!4117713 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825610 () Bool)

(assert (=> b!6825610 (= e!4117714 ((_ map or) call!621285 call!621286))))

(declare-fun c!1270512 () Bool)

(declare-fun b!6825611 () Bool)

(assert (=> b!6825611 (= c!1270512 ((_ is Star!16639) (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292)))))))))

(assert (=> b!6825611 (= e!4117718 e!4117713)))

(declare-fun b!6825612 () Bool)

(assert (=> b!6825612 (= e!4117717 (nullable!6614 (regOne!33790 (ite c!1270293 (regOne!33791 (reg!16968 r!7292)) (ite c!1270296 (regTwo!33790 (reg!16968 r!7292)) (ite c!1270295 (regOne!33790 (reg!16968 r!7292)) (reg!16968 (reg!16968 r!7292))))))))))

(declare-fun bm!621283 () Bool)

(assert (=> bm!621283 (= call!621284 call!621287)))

(declare-fun b!6825613 () Bool)

(assert (=> b!6825613 (= e!4117718 call!621284)))

(assert (= (and d!2146509 c!1270514) b!6825605))

(assert (= (and d!2146509 (not c!1270514)) b!6825607))

(assert (= (and b!6825607 c!1270513) b!6825610))

(assert (= (and b!6825607 (not c!1270513)) b!6825603))

(assert (= (and b!6825603 res!2787873) b!6825612))

(assert (= (and b!6825603 c!1270516) b!6825604))

(assert (= (and b!6825603 (not c!1270516)) b!6825608))

(assert (= (and b!6825608 c!1270515) b!6825613))

(assert (= (and b!6825608 (not c!1270515)) b!6825611))

(assert (= (and b!6825611 c!1270512) b!6825606))

(assert (= (and b!6825611 (not c!1270512)) b!6825609))

(assert (= (or b!6825613 b!6825606) bm!621282))

(assert (= (or b!6825613 b!6825606) bm!621283))

(assert (= (or b!6825604 bm!621282) bm!621280))

(assert (= (or b!6825604 bm!621283) bm!621279))

(assert (= (or b!6825610 b!6825604) bm!621278))

(assert (= (or b!6825610 bm!621279) bm!621281))

(declare-fun m!7571426 () Bool)

(assert (=> bm!621280 m!7571426))

(declare-fun m!7571430 () Bool)

(assert (=> bm!621281 m!7571430))

(declare-fun m!7571432 () Bool)

(assert (=> b!6825612 m!7571432))

(declare-fun m!7571436 () Bool)

(assert (=> b!6825605 m!7571436))

(declare-fun m!7571438 () Bool)

(assert (=> bm!621278 m!7571438))

(assert (=> bm!621149 d!2146509))

(assert (=> d!2146041 d!2146047))

(assert (=> d!2146041 d!2145999))

(declare-fun d!2146515 () Bool)

(assert (=> d!2146515 (= (matchR!8822 (reg!16968 r!7292) (_1!36917 lt!2452079)) (matchZipper!2625 lt!2452091 (_1!36917 lt!2452079)))))

(assert (=> d!2146515 true))

(declare-fun _$44!1796 () Unit!159969)

(assert (=> d!2146515 (= (choose!50895 lt!2452091 lt!2452090 (reg!16968 r!7292) (_1!36917 lt!2452079)) _$44!1796)))

(declare-fun bs!1823770 () Bool)

(assert (= bs!1823770 d!2146515))

(assert (=> bs!1823770 m!7569654))

(assert (=> bs!1823770 m!7569602))

(assert (=> d!2146041 d!2146515))

(assert (=> d!2146041 d!2146349))

(assert (=> bs!1823515 d!2145961))

(declare-fun b!6825627 () Bool)

(declare-fun res!2787878 () Bool)

(declare-fun e!4117726 () Bool)

(assert (=> b!6825627 (=> (not res!2787878) (not e!4117726))))

(declare-fun lt!2452327 () List!66216)

(assert (=> b!6825627 (= res!2787878 (= (size!40693 lt!2452327) (+ (size!40693 (t!379955 (_1!36917 lt!2452079))) (size!40693 (_2!36917 lt!2452079)))))))

(declare-fun d!2146519 () Bool)

(assert (=> d!2146519 e!4117726))

(declare-fun res!2787877 () Bool)

(assert (=> d!2146519 (=> (not res!2787877) (not e!4117726))))

(assert (=> d!2146519 (= res!2787877 (= (content!12939 lt!2452327) ((_ map or) (content!12939 (t!379955 (_1!36917 lt!2452079))) (content!12939 (_2!36917 lt!2452079)))))))

(declare-fun e!4117727 () List!66216)

(assert (=> d!2146519 (= lt!2452327 e!4117727)))

(declare-fun c!1270521 () Bool)

(assert (=> d!2146519 (= c!1270521 ((_ is Nil!66092) (t!379955 (_1!36917 lt!2452079))))))

(assert (=> d!2146519 (= (++!14825 (t!379955 (_1!36917 lt!2452079)) (_2!36917 lt!2452079)) lt!2452327)))

(declare-fun b!6825626 () Bool)

(assert (=> b!6825626 (= e!4117727 (Cons!66092 (h!72540 (t!379955 (_1!36917 lt!2452079))) (++!14825 (t!379955 (t!379955 (_1!36917 lt!2452079))) (_2!36917 lt!2452079))))))

(declare-fun b!6825628 () Bool)

(assert (=> b!6825628 (= e!4117726 (or (not (= (_2!36917 lt!2452079) Nil!66092)) (= lt!2452327 (t!379955 (_1!36917 lt!2452079)))))))

(declare-fun b!6825625 () Bool)

(assert (=> b!6825625 (= e!4117727 (_2!36917 lt!2452079))))

(assert (= (and d!2146519 c!1270521) b!6825625))

(assert (= (and d!2146519 (not c!1270521)) b!6825626))

(assert (= (and d!2146519 res!2787877) b!6825627))

(assert (= (and b!6825627 res!2787878) b!6825628))

(declare-fun m!7571440 () Bool)

(assert (=> b!6825627 m!7571440))

(declare-fun m!7571442 () Bool)

(assert (=> b!6825627 m!7571442))

(assert (=> b!6825627 m!7569862))

(declare-fun m!7571444 () Bool)

(assert (=> d!2146519 m!7571444))

(assert (=> d!2146519 m!7571076))

(assert (=> d!2146519 m!7569868))

(declare-fun m!7571446 () Bool)

(assert (=> b!6825626 m!7571446))

(assert (=> b!6824110 d!2146519))

(declare-fun e!4117730 () (InoxSet Context!12046))

(declare-fun b!6825629 () Bool)

(declare-fun call!621291 () (InoxSet Context!12046))

(assert (=> b!6825629 (= e!4117730 ((_ map or) call!621291 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343))))))) (h!72540 s!2326))))))

(declare-fun b!6825630 () Bool)

(declare-fun e!4117729 () (InoxSet Context!12046))

(assert (=> b!6825630 (= e!4117729 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825631 () Bool)

(assert (=> b!6825631 (= e!4117730 e!4117729)))

(declare-fun c!1270523 () Bool)

(assert (=> b!6825631 (= c!1270523 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))))))))

(declare-fun d!2146521 () Bool)

(declare-fun c!1270522 () Bool)

(declare-fun e!4117728 () Bool)

(assert (=> d!2146521 (= c!1270522 e!4117728)))

(declare-fun res!2787879 () Bool)

(assert (=> d!2146521 (=> (not res!2787879) (not e!4117728))))

(assert (=> d!2146521 (= res!2787879 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))))))))

(assert (=> d!2146521 (= (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))) (h!72540 s!2326)) e!4117730)))

(declare-fun b!6825632 () Bool)

(assert (=> b!6825632 (= e!4117728 (nullable!6614 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343))))))))))

(declare-fun b!6825633 () Bool)

(assert (=> b!6825633 (= e!4117729 call!621291)))

(declare-fun bm!621286 () Bool)

(assert (=> bm!621286 (= call!621291 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))))) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343))))))) (h!72540 s!2326)))))

(assert (= (and d!2146521 res!2787879) b!6825632))

(assert (= (and d!2146521 c!1270522) b!6825629))

(assert (= (and d!2146521 (not c!1270522)) b!6825631))

(assert (= (and b!6825631 c!1270523) b!6825633))

(assert (= (and b!6825631 (not c!1270523)) b!6825630))

(assert (= (or b!6825629 b!6825633) bm!621286))

(declare-fun m!7571448 () Bool)

(assert (=> b!6825629 m!7571448))

(declare-fun m!7571450 () Bool)

(assert (=> b!6825632 m!7571450))

(declare-fun m!7571452 () Bool)

(assert (=> bm!621286 m!7571452))

(assert (=> b!6824876 d!2146521))

(declare-fun d!2146523 () Bool)

(declare-fun c!1270526 () Bool)

(assert (=> d!2146523 (= c!1270526 ((_ is Nil!66094) lt!2452261))))

(declare-fun e!4117733 () (InoxSet Context!12046))

(assert (=> d!2146523 (= (content!12941 lt!2452261) e!4117733)))

(declare-fun b!6825638 () Bool)

(assert (=> b!6825638 (= e!4117733 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825639 () Bool)

(assert (=> b!6825639 (= e!4117733 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) (h!72542 lt!2452261) true) (content!12941 (t!379957 lt!2452261))))))

(assert (= (and d!2146523 c!1270526) b!6825638))

(assert (= (and d!2146523 (not c!1270526)) b!6825639))

(declare-fun m!7571460 () Bool)

(assert (=> b!6825639 m!7571460))

(declare-fun m!7571462 () Bool)

(assert (=> b!6825639 m!7571462))

(assert (=> b!6824875 d!2146523))

(declare-fun d!2146527 () Bool)

(declare-fun c!1270527 () Bool)

(assert (=> d!2146527 (= c!1270527 (isEmpty!38481 s!2326))))

(declare-fun e!4117734 () Bool)

(assert (=> d!2146527 (= (matchZipper!2625 lt!2452059 s!2326) e!4117734)))

(declare-fun b!6825640 () Bool)

(assert (=> b!6825640 (= e!4117734 (nullableZipper!2342 lt!2452059))))

(declare-fun b!6825641 () Bool)

(assert (=> b!6825641 (= e!4117734 (matchZipper!2625 (derivationStepZipper!2583 lt!2452059 (head!13681 s!2326)) (tail!12766 s!2326)))))

(assert (= (and d!2146527 c!1270527) b!6825640))

(assert (= (and d!2146527 (not c!1270527)) b!6825641))

(assert (=> d!2146527 m!7569622))

(assert (=> b!6825640 m!7570280))

(assert (=> b!6825641 m!7569754))

(assert (=> b!6825641 m!7569754))

(declare-fun m!7571464 () Bool)

(assert (=> b!6825641 m!7571464))

(assert (=> b!6825641 m!7569758))

(assert (=> b!6825641 m!7571464))

(assert (=> b!6825641 m!7569758))

(declare-fun m!7571466 () Bool)

(assert (=> b!6825641 m!7571466))

(assert (=> b!6824253 d!2146527))

(assert (=> b!6824809 d!2146321))

(declare-fun d!2146531 () Bool)

(declare-fun res!2787883 () Bool)

(declare-fun e!4117742 () Bool)

(assert (=> d!2146531 (=> res!2787883 e!4117742)))

(assert (=> d!2146531 (= res!2787883 ((_ is Nil!66093) lt!2452258))))

(assert (=> d!2146531 (= (forall!15827 lt!2452258 lambda!385573) e!4117742)))

(declare-fun b!6825653 () Bool)

(declare-fun e!4117743 () Bool)

(assert (=> b!6825653 (= e!4117742 e!4117743)))

(declare-fun res!2787884 () Bool)

(assert (=> b!6825653 (=> (not res!2787884) (not e!4117743))))

(assert (=> b!6825653 (= res!2787884 (dynLambda!26411 lambda!385573 (h!72541 lt!2452258)))))

(declare-fun b!6825654 () Bool)

(assert (=> b!6825654 (= e!4117743 (forall!15827 (t!379956 lt!2452258) lambda!385573))))

(assert (= (and d!2146531 (not res!2787883)) b!6825653))

(assert (= (and b!6825653 res!2787884) b!6825654))

(declare-fun b_lambda!257457 () Bool)

(assert (=> (not b_lambda!257457) (not b!6825653)))

(declare-fun m!7571468 () Bool)

(assert (=> b!6825653 m!7571468))

(declare-fun m!7571470 () Bool)

(assert (=> b!6825654 m!7571470))

(assert (=> d!2146051 d!2146531))

(declare-fun d!2146533 () Bool)

(declare-fun res!2787885 () Bool)

(declare-fun e!4117744 () Bool)

(assert (=> d!2146533 (=> res!2787885 e!4117744)))

(assert (=> d!2146533 (= res!2787885 ((_ is Nil!66094) lt!2452206))))

(assert (=> d!2146533 (= (noDuplicate!2419 lt!2452206) e!4117744)))

(declare-fun b!6825655 () Bool)

(declare-fun e!4117745 () Bool)

(assert (=> b!6825655 (= e!4117744 e!4117745)))

(declare-fun res!2787886 () Bool)

(assert (=> b!6825655 (=> (not res!2787886) (not e!4117745))))

(assert (=> b!6825655 (= res!2787886 (not (contains!20307 (t!379957 lt!2452206) (h!72542 lt!2452206))))))

(declare-fun b!6825656 () Bool)

(assert (=> b!6825656 (= e!4117745 (noDuplicate!2419 (t!379957 lt!2452206)))))

(assert (= (and d!2146533 (not res!2787885)) b!6825655))

(assert (= (and b!6825655 res!2787886) b!6825656))

(declare-fun m!7571472 () Bool)

(assert (=> b!6825655 m!7571472))

(declare-fun m!7571474 () Bool)

(assert (=> b!6825656 m!7571474))

(assert (=> d!2145977 d!2146533))

(declare-fun d!2146535 () Bool)

(declare-fun e!4117746 () Bool)

(assert (=> d!2146535 e!4117746))

(declare-fun res!2787887 () Bool)

(assert (=> d!2146535 (=> (not res!2787887) (not e!4117746))))

(declare-fun res!2787888 () List!66218)

(assert (=> d!2146535 (= res!2787887 (noDuplicate!2419 res!2787888))))

(declare-fun e!4117747 () Bool)

(assert (=> d!2146535 e!4117747))

(assert (=> d!2146535 (= (choose!50892 lt!2452059) res!2787888)))

(declare-fun b!6825658 () Bool)

(declare-fun e!4117748 () Bool)

(declare-fun tp!1867999 () Bool)

(assert (=> b!6825658 (= e!4117748 tp!1867999)))

(declare-fun b!6825657 () Bool)

(declare-fun tp!1867998 () Bool)

(assert (=> b!6825657 (= e!4117747 (and (inv!84844 (h!72542 res!2787888)) e!4117748 tp!1867998))))

(declare-fun b!6825659 () Bool)

(assert (=> b!6825659 (= e!4117746 (= (content!12941 res!2787888) lt!2452059))))

(assert (= b!6825657 b!6825658))

(assert (= (and d!2146535 ((_ is Cons!66094) res!2787888)) b!6825657))

(assert (= (and d!2146535 res!2787887) b!6825659))

(declare-fun m!7571476 () Bool)

(assert (=> d!2146535 m!7571476))

(declare-fun m!7571478 () Bool)

(assert (=> b!6825657 m!7571478))

(declare-fun m!7571480 () Bool)

(assert (=> b!6825659 m!7571480))

(assert (=> d!2145977 d!2146535))

(declare-fun bs!1823792 () Bool)

(declare-fun b!6825669 () Bool)

(assert (= bs!1823792 (and b!6825669 b!6825030)))

(declare-fun lambda!385627 () Int)

(assert (=> bs!1823792 (= (and (= (reg!16968 (regOne!33791 r!7292)) (reg!16968 (regOne!33791 lt!2452072))) (= (regOne!33791 r!7292) (regOne!33791 lt!2452072))) (= lambda!385627 lambda!385586))))

(declare-fun bs!1823794 () Bool)

(assert (= bs!1823794 (and b!6825669 d!2145873)))

(assert (=> bs!1823794 (not (= lambda!385627 lambda!385514))))

(declare-fun bs!1823795 () Bool)

(assert (= bs!1823795 (and b!6825669 b!6824881)))

(assert (=> bs!1823795 (not (= lambda!385627 lambda!385575))))

(declare-fun bs!1823796 () Bool)

(assert (= bs!1823796 (and b!6825669 b!6825323)))

(assert (=> bs!1823796 (not (= lambda!385627 lambda!385602))))

(declare-fun bs!1823798 () Bool)

(assert (= bs!1823798 (and b!6825669 b!6825585)))

(assert (=> bs!1823798 (not (= lambda!385627 lambda!385621))))

(declare-fun bs!1823799 () Bool)

(assert (= bs!1823799 (and b!6825669 b!6825021)))

(assert (=> bs!1823799 (not (= lambda!385627 lambda!385587))))

(declare-fun bs!1823800 () Bool)

(assert (= bs!1823800 (and b!6825669 d!2145941)))

(assert (=> bs!1823800 (not (= lambda!385627 lambda!385537))))

(assert (=> bs!1823794 (not (= lambda!385627 lambda!385515))))

(declare-fun bs!1823801 () Bool)

(assert (= bs!1823801 (and b!6825669 d!2145893)))

(assert (=> bs!1823801 (= (and (= (reg!16968 (regOne!33791 r!7292)) (reg!16968 r!7292)) (= (regOne!33791 r!7292) (Star!16639 (reg!16968 r!7292)))) (= lambda!385627 lambda!385525))))

(declare-fun bs!1823803 () Bool)

(assert (= bs!1823803 (and b!6825669 b!6824659)))

(assert (=> bs!1823803 (not (= lambda!385627 lambda!385564))))

(declare-fun bs!1823805 () Bool)

(assert (= bs!1823805 (and b!6825669 b!6824890)))

(assert (=> bs!1823805 (= (and (= (reg!16968 (regOne!33791 r!7292)) (reg!16968 lt!2452072)) (= (regOne!33791 r!7292) lt!2452072)) (= lambda!385627 lambda!385574))))

(declare-fun bs!1823807 () Bool)

(assert (= bs!1823807 (and b!6825669 b!6824668)))

(assert (=> bs!1823807 (= (and (= (reg!16968 (regOne!33791 r!7292)) (reg!16968 r!7292)) (= (regOne!33791 r!7292) r!7292)) (= lambda!385627 lambda!385563))))

(declare-fun bs!1823809 () Bool)

(assert (= bs!1823809 (and b!6825669 d!2146419)))

(assert (=> bs!1823809 (not (= lambda!385627 lambda!385608))))

(assert (=> bs!1823809 (= (and (= (reg!16968 (regOne!33791 r!7292)) (reg!16968 r!7292)) (= (regOne!33791 r!7292) (Star!16639 (reg!16968 r!7292)))) (= lambda!385627 lambda!385611))))

(declare-fun bs!1823811 () Bool)

(assert (= bs!1823811 (and b!6825669 b!6825332)))

(assert (=> bs!1823811 (= (and (= (reg!16968 (regOne!33791 r!7292)) (reg!16968 (regTwo!33791 lt!2452072))) (= (regOne!33791 r!7292) (regTwo!33791 lt!2452072))) (= lambda!385627 lambda!385600))))

(assert (=> bs!1823801 (not (= lambda!385627 lambda!385522))))

(declare-fun bs!1823815 () Bool)

(assert (= bs!1823815 (and b!6825669 b!6825594)))

(assert (=> bs!1823815 (= (and (= (reg!16968 (regOne!33791 r!7292)) (reg!16968 (regTwo!33791 r!7292))) (= (regOne!33791 r!7292) (regTwo!33791 r!7292))) (= lambda!385627 lambda!385618))))

(declare-fun bs!1823817 () Bool)

(assert (= bs!1823817 (and b!6825669 b!6824003)))

(assert (=> bs!1823817 (not (= lambda!385627 lambda!385480))))

(assert (=> bs!1823817 (= (and (= (reg!16968 (regOne!33791 r!7292)) (reg!16968 r!7292)) (= (regOne!33791 r!7292) r!7292)) (= lambda!385627 lambda!385479))))

(assert (=> bs!1823817 (not (= lambda!385627 lambda!385478))))

(assert (=> b!6825669 true))

(assert (=> b!6825669 true))

(declare-fun bs!1823821 () Bool)

(declare-fun b!6825660 () Bool)

(assert (= bs!1823821 (and b!6825660 b!6825030)))

(declare-fun lambda!385629 () Int)

(assert (=> bs!1823821 (not (= lambda!385629 lambda!385586))))

(declare-fun bs!1823823 () Bool)

(assert (= bs!1823823 (and b!6825660 d!2145873)))

(assert (=> bs!1823823 (not (= lambda!385629 lambda!385514))))

(declare-fun bs!1823824 () Bool)

(assert (= bs!1823824 (and b!6825660 b!6824881)))

(assert (=> bs!1823824 (= (and (= (regOne!33790 (regOne!33791 r!7292)) (regOne!33790 lt!2452072)) (= (regTwo!33790 (regOne!33791 r!7292)) (regTwo!33790 lt!2452072))) (= lambda!385629 lambda!385575))))

(declare-fun bs!1823825 () Bool)

(assert (= bs!1823825 (and b!6825660 b!6825323)))

(assert (=> bs!1823825 (= (and (= (regOne!33790 (regOne!33791 r!7292)) (regOne!33790 (regTwo!33791 lt!2452072))) (= (regTwo!33790 (regOne!33791 r!7292)) (regTwo!33790 (regTwo!33791 lt!2452072)))) (= lambda!385629 lambda!385602))))

(declare-fun bs!1823826 () Bool)

(assert (= bs!1823826 (and b!6825660 b!6825585)))

(assert (=> bs!1823826 (= (and (= (regOne!33790 (regOne!33791 r!7292)) (regOne!33790 (regTwo!33791 r!7292))) (= (regTwo!33790 (regOne!33791 r!7292)) (regTwo!33790 (regTwo!33791 r!7292)))) (= lambda!385629 lambda!385621))))

(declare-fun bs!1823827 () Bool)

(assert (= bs!1823827 (and b!6825660 b!6825021)))

(assert (=> bs!1823827 (= (and (= (regOne!33790 (regOne!33791 r!7292)) (regOne!33790 (regOne!33791 lt!2452072))) (= (regTwo!33790 (regOne!33791 r!7292)) (regTwo!33790 (regOne!33791 lt!2452072)))) (= lambda!385629 lambda!385587))))

(declare-fun bs!1823828 () Bool)

(assert (= bs!1823828 (and b!6825660 d!2145941)))

(assert (=> bs!1823828 (not (= lambda!385629 lambda!385537))))

(assert (=> bs!1823823 (= (and (= (regOne!33790 (regOne!33791 r!7292)) (reg!16968 r!7292)) (= (regTwo!33790 (regOne!33791 r!7292)) r!7292)) (= lambda!385629 lambda!385515))))

(declare-fun bs!1823829 () Bool)

(assert (= bs!1823829 (and b!6825660 d!2145893)))

(assert (=> bs!1823829 (not (= lambda!385629 lambda!385525))))

(declare-fun bs!1823831 () Bool)

(assert (= bs!1823831 (and b!6825660 b!6824659)))

(assert (=> bs!1823831 (= (and (= (regOne!33790 (regOne!33791 r!7292)) (regOne!33790 r!7292)) (= (regTwo!33790 (regOne!33791 r!7292)) (regTwo!33790 r!7292))) (= lambda!385629 lambda!385564))))

(declare-fun bs!1823832 () Bool)

(assert (= bs!1823832 (and b!6825660 b!6824890)))

(assert (=> bs!1823832 (not (= lambda!385629 lambda!385574))))

(declare-fun bs!1823834 () Bool)

(assert (= bs!1823834 (and b!6825660 b!6824668)))

(assert (=> bs!1823834 (not (= lambda!385629 lambda!385563))))

(declare-fun bs!1823835 () Bool)

(assert (= bs!1823835 (and b!6825660 d!2146419)))

(assert (=> bs!1823835 (not (= lambda!385629 lambda!385611))))

(declare-fun bs!1823836 () Bool)

(assert (= bs!1823836 (and b!6825660 b!6825332)))

(assert (=> bs!1823836 (not (= lambda!385629 lambda!385600))))

(assert (=> bs!1823829 (not (= lambda!385629 lambda!385522))))

(declare-fun bs!1823837 () Bool)

(assert (= bs!1823837 (and b!6825660 b!6825594)))

(assert (=> bs!1823837 (not (= lambda!385629 lambda!385618))))

(declare-fun bs!1823838 () Bool)

(assert (= bs!1823838 (and b!6825660 b!6824003)))

(assert (=> bs!1823838 (= (and (= (regOne!33790 (regOne!33791 r!7292)) (reg!16968 r!7292)) (= (regTwo!33790 (regOne!33791 r!7292)) r!7292)) (= lambda!385629 lambda!385480))))

(assert (=> bs!1823838 (not (= lambda!385629 lambda!385479))))

(assert (=> bs!1823838 (not (= lambda!385629 lambda!385478))))

(declare-fun bs!1823839 () Bool)

(assert (= bs!1823839 (and b!6825660 b!6825669)))

(assert (=> bs!1823839 (not (= lambda!385629 lambda!385627))))

(assert (=> bs!1823835 (not (= lambda!385629 lambda!385608))))

(assert (=> b!6825660 true))

(assert (=> b!6825660 true))

(declare-fun e!4117754 () Bool)

(declare-fun call!621294 () Bool)

(assert (=> b!6825660 (= e!4117754 call!621294)))

(declare-fun b!6825661 () Bool)

(declare-fun res!2787891 () Bool)

(declare-fun e!4117750 () Bool)

(assert (=> b!6825661 (=> res!2787891 e!4117750)))

(declare-fun call!621295 () Bool)

(assert (=> b!6825661 (= res!2787891 call!621295)))

(assert (=> b!6825661 (= e!4117754 e!4117750)))

(declare-fun b!6825662 () Bool)

(declare-fun e!4117749 () Bool)

(declare-fun e!4117755 () Bool)

(assert (=> b!6825662 (= e!4117749 e!4117755)))

(declare-fun res!2787889 () Bool)

(assert (=> b!6825662 (= res!2787889 (not ((_ is EmptyLang!16639) (regOne!33791 r!7292))))))

(assert (=> b!6825662 (=> (not res!2787889) (not e!4117755))))

(declare-fun b!6825663 () Bool)

(declare-fun e!4117751 () Bool)

(assert (=> b!6825663 (= e!4117751 (matchRSpec!3740 (regTwo!33791 (regOne!33791 r!7292)) s!2326))))

(declare-fun b!6825664 () Bool)

(declare-fun e!4117752 () Bool)

(assert (=> b!6825664 (= e!4117752 (= s!2326 (Cons!66092 (c!1270055 (regOne!33791 r!7292)) Nil!66092)))))

(declare-fun b!6825665 () Bool)

(declare-fun c!1270533 () Bool)

(assert (=> b!6825665 (= c!1270533 ((_ is Union!16639) (regOne!33791 r!7292)))))

(declare-fun e!4117753 () Bool)

(assert (=> b!6825665 (= e!4117752 e!4117753)))

(declare-fun b!6825666 () Bool)

(declare-fun c!1270535 () Bool)

(assert (=> b!6825666 (= c!1270535 ((_ is ElementMatch!16639) (regOne!33791 r!7292)))))

(assert (=> b!6825666 (= e!4117755 e!4117752)))

(declare-fun d!2146537 () Bool)

(declare-fun c!1270534 () Bool)

(assert (=> d!2146537 (= c!1270534 ((_ is EmptyExpr!16639) (regOne!33791 r!7292)))))

(assert (=> d!2146537 (= (matchRSpec!3740 (regOne!33791 r!7292) s!2326) e!4117749)))

(declare-fun b!6825667 () Bool)

(assert (=> b!6825667 (= e!4117753 e!4117751)))

(declare-fun res!2787890 () Bool)

(assert (=> b!6825667 (= res!2787890 (matchRSpec!3740 (regOne!33791 (regOne!33791 r!7292)) s!2326))))

(assert (=> b!6825667 (=> res!2787890 e!4117751)))

(declare-fun b!6825668 () Bool)

(assert (=> b!6825668 (= e!4117749 call!621295)))

(declare-fun bm!621289 () Bool)

(assert (=> bm!621289 (= call!621295 (isEmpty!38481 s!2326))))

(declare-fun bm!621290 () Bool)

(declare-fun c!1270532 () Bool)

(assert (=> bm!621290 (= call!621294 (Exists!3707 (ite c!1270532 lambda!385627 lambda!385629)))))

(assert (=> b!6825669 (= e!4117750 call!621294)))

(declare-fun b!6825670 () Bool)

(assert (=> b!6825670 (= e!4117753 e!4117754)))

(assert (=> b!6825670 (= c!1270532 ((_ is Star!16639) (regOne!33791 r!7292)))))

(assert (= (and d!2146537 c!1270534) b!6825668))

(assert (= (and d!2146537 (not c!1270534)) b!6825662))

(assert (= (and b!6825662 res!2787889) b!6825666))

(assert (= (and b!6825666 c!1270535) b!6825664))

(assert (= (and b!6825666 (not c!1270535)) b!6825665))

(assert (= (and b!6825665 c!1270533) b!6825667))

(assert (= (and b!6825665 (not c!1270533)) b!6825670))

(assert (= (and b!6825667 (not res!2787890)) b!6825663))

(assert (= (and b!6825670 c!1270532) b!6825661))

(assert (= (and b!6825670 (not c!1270532)) b!6825660))

(assert (= (and b!6825661 (not res!2787891)) b!6825669))

(assert (= (or b!6825669 b!6825660) bm!621290))

(assert (= (or b!6825668 b!6825661) bm!621289))

(declare-fun m!7571492 () Bool)

(assert (=> b!6825663 m!7571492))

(declare-fun m!7571494 () Bool)

(assert (=> b!6825667 m!7571494))

(assert (=> bm!621289 m!7569622))

(declare-fun m!7571496 () Bool)

(assert (=> bm!621290 m!7571496))

(assert (=> b!6824666 d!2146537))

(declare-fun d!2146547 () Bool)

(assert (=> d!2146547 (= (nullable!6614 (regOne!33790 (reg!16968 r!7292))) (nullableFct!2511 (regOne!33790 (reg!16968 r!7292))))))

(declare-fun bs!1823840 () Bool)

(assert (= bs!1823840 d!2146547))

(declare-fun m!7571498 () Bool)

(assert (=> bs!1823840 m!7571498))

(assert (=> b!6824868 d!2146547))

(declare-fun d!2146549 () Bool)

(assert (=> d!2146549 (forall!15827 (++!14824 (exprs!6523 lt!2452067) lt!2452065) lambda!385483)))

(declare-fun lt!2452328 () Unit!159969)

(assert (=> d!2146549 (= lt!2452328 (choose!50896 (exprs!6523 lt!2452067) lt!2452065 lambda!385483))))

(assert (=> d!2146549 (forall!15827 (exprs!6523 lt!2452067) lambda!385483)))

(assert (=> d!2146549 (= (lemmaConcatPreservesForall!468 (exprs!6523 lt!2452067) lt!2452065 lambda!385483) lt!2452328)))

(declare-fun bs!1823841 () Bool)

(assert (= bs!1823841 d!2146549))

(assert (=> bs!1823841 m!7570554))

(assert (=> bs!1823841 m!7570554))

(declare-fun m!7571500 () Bool)

(assert (=> bs!1823841 m!7571500))

(declare-fun m!7571502 () Bool)

(assert (=> bs!1823841 m!7571502))

(declare-fun m!7571504 () Bool)

(assert (=> bs!1823841 m!7571504))

(assert (=> bs!1823518 d!2146549))

(declare-fun b!6825671 () Bool)

(declare-fun e!4117757 () List!66217)

(assert (=> b!6825671 (= e!4117757 lt!2452065)))

(declare-fun d!2146551 () Bool)

(declare-fun e!4117756 () Bool)

(assert (=> d!2146551 e!4117756))

(declare-fun res!2787892 () Bool)

(assert (=> d!2146551 (=> (not res!2787892) (not e!4117756))))

(declare-fun lt!2452329 () List!66217)

(assert (=> d!2146551 (= res!2787892 (= (content!12942 lt!2452329) ((_ map or) (content!12942 (exprs!6523 lt!2452067)) (content!12942 lt!2452065))))))

(assert (=> d!2146551 (= lt!2452329 e!4117757)))

(declare-fun c!1270536 () Bool)

(assert (=> d!2146551 (= c!1270536 ((_ is Nil!66093) (exprs!6523 lt!2452067)))))

(assert (=> d!2146551 (= (++!14824 (exprs!6523 lt!2452067) lt!2452065) lt!2452329)))

(declare-fun b!6825672 () Bool)

(assert (=> b!6825672 (= e!4117757 (Cons!66093 (h!72541 (exprs!6523 lt!2452067)) (++!14824 (t!379956 (exprs!6523 lt!2452067)) lt!2452065)))))

(declare-fun b!6825674 () Bool)

(assert (=> b!6825674 (= e!4117756 (or (not (= lt!2452065 Nil!66093)) (= lt!2452329 (exprs!6523 lt!2452067))))))

(declare-fun b!6825673 () Bool)

(declare-fun res!2787893 () Bool)

(assert (=> b!6825673 (=> (not res!2787893) (not e!4117756))))

(assert (=> b!6825673 (= res!2787893 (= (size!40695 lt!2452329) (+ (size!40695 (exprs!6523 lt!2452067)) (size!40695 lt!2452065))))))

(assert (= (and d!2146551 c!1270536) b!6825671))

(assert (= (and d!2146551 (not c!1270536)) b!6825672))

(assert (= (and d!2146551 res!2787892) b!6825673))

(assert (= (and b!6825673 res!2787893) b!6825674))

(declare-fun m!7571506 () Bool)

(assert (=> d!2146551 m!7571506))

(declare-fun m!7571508 () Bool)

(assert (=> d!2146551 m!7571508))

(assert (=> d!2146551 m!7570412))

(declare-fun m!7571510 () Bool)

(assert (=> b!6825672 m!7571510))

(declare-fun m!7571512 () Bool)

(assert (=> b!6825673 m!7571512))

(declare-fun m!7571514 () Bool)

(assert (=> b!6825673 m!7571514))

(assert (=> b!6825673 m!7570420))

(assert (=> bs!1823518 d!2146551))

(declare-fun bs!1823842 () Bool)

(declare-fun d!2146553 () Bool)

(assert (= bs!1823842 (and d!2146553 d!2146293)))

(declare-fun lambda!385630 () Int)

(assert (=> bs!1823842 (= lambda!385630 lambda!385597)))

(declare-fun bs!1823843 () Bool)

(assert (= bs!1823843 (and d!2146553 d!2146497)))

(assert (=> bs!1823843 (= lambda!385630 lambda!385615)))

(declare-fun bs!1823844 () Bool)

(assert (= bs!1823844 (and d!2146553 b!6823997)))

(assert (=> bs!1823844 (= lambda!385630 lambda!385483)))

(declare-fun bs!1823845 () Bool)

(assert (= bs!1823845 (and d!2146553 d!2146049)))

(assert (=> bs!1823845 (= lambda!385630 lambda!385570)))

(declare-fun bs!1823846 () Bool)

(assert (= bs!1823846 (and d!2146553 d!2146077)))

(assert (=> bs!1823846 (= lambda!385630 lambda!385576)))

(declare-fun bs!1823847 () Bool)

(assert (= bs!1823847 (and d!2146553 d!2146051)))

(assert (=> bs!1823847 (= lambda!385630 lambda!385573)))

(declare-fun bs!1823848 () Bool)

(assert (= bs!1823848 (and d!2146553 d!2146291)))

(assert (=> bs!1823848 (= lambda!385630 lambda!385596)))

(declare-fun bs!1823849 () Bool)

(assert (= bs!1823849 (and d!2146553 d!2146037)))

(assert (=> bs!1823849 (= lambda!385630 lambda!385567)))

(declare-fun bs!1823850 () Bool)

(assert (= bs!1823850 (and d!2146553 d!2145995)))

(assert (=> bs!1823850 (= lambda!385630 lambda!385554)))

(declare-fun bs!1823851 () Bool)

(assert (= bs!1823851 (and d!2146553 d!2145867)))

(assert (=> bs!1823851 (= lambda!385630 lambda!385508)))

(declare-fun b!6825675 () Bool)

(declare-fun e!4117760 () Regex!16639)

(assert (=> b!6825675 (= e!4117760 (h!72541 (t!379956 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6825676 () Bool)

(declare-fun e!4117762 () Regex!16639)

(assert (=> b!6825676 (= e!4117760 e!4117762)))

(declare-fun c!1270539 () Bool)

(assert (=> b!6825676 (= c!1270539 ((_ is Cons!66093) (t!379956 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6825677 () Bool)

(assert (=> b!6825677 (= e!4117762 (Concat!25484 (h!72541 (t!379956 (exprs!6523 (h!72542 zl!343)))) (generalisedConcat!2236 (t!379956 (t!379956 (exprs!6523 (h!72542 zl!343)))))))))

(declare-fun b!6825679 () Bool)

(declare-fun e!4117761 () Bool)

(declare-fun e!4117759 () Bool)

(assert (=> b!6825679 (= e!4117761 e!4117759)))

(declare-fun c!1270538 () Bool)

(assert (=> b!6825679 (= c!1270538 (isEmpty!38486 (tail!12767 (t!379956 (exprs!6523 (h!72542 zl!343))))))))

(declare-fun b!6825680 () Bool)

(declare-fun e!4117763 () Bool)

(assert (=> b!6825680 (= e!4117763 (isEmpty!38486 (t!379956 (t!379956 (exprs!6523 (h!72542 zl!343))))))))

(declare-fun b!6825681 () Bool)

(declare-fun lt!2452330 () Regex!16639)

(assert (=> b!6825681 (= e!4117761 (isEmptyExpr!1993 lt!2452330))))

(declare-fun b!6825682 () Bool)

(declare-fun e!4117758 () Bool)

(assert (=> b!6825682 (= e!4117758 e!4117761)))

(declare-fun c!1270537 () Bool)

(assert (=> b!6825682 (= c!1270537 (isEmpty!38486 (t!379956 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6825683 () Bool)

(assert (=> b!6825683 (= e!4117759 (= lt!2452330 (head!13682 (t!379956 (exprs!6523 (h!72542 zl!343))))))))

(declare-fun b!6825684 () Bool)

(assert (=> b!6825684 (= e!4117759 (isConcat!1516 lt!2452330))))

(assert (=> d!2146553 e!4117758))

(declare-fun res!2787895 () Bool)

(assert (=> d!2146553 (=> (not res!2787895) (not e!4117758))))

(assert (=> d!2146553 (= res!2787895 (validRegex!8375 lt!2452330))))

(assert (=> d!2146553 (= lt!2452330 e!4117760)))

(declare-fun c!1270540 () Bool)

(assert (=> d!2146553 (= c!1270540 e!4117763)))

(declare-fun res!2787894 () Bool)

(assert (=> d!2146553 (=> (not res!2787894) (not e!4117763))))

(assert (=> d!2146553 (= res!2787894 ((_ is Cons!66093) (t!379956 (exprs!6523 (h!72542 zl!343)))))))

(assert (=> d!2146553 (forall!15827 (t!379956 (exprs!6523 (h!72542 zl!343))) lambda!385630)))

(assert (=> d!2146553 (= (generalisedConcat!2236 (t!379956 (exprs!6523 (h!72542 zl!343)))) lt!2452330)))

(declare-fun b!6825678 () Bool)

(assert (=> b!6825678 (= e!4117762 EmptyExpr!16639)))

(assert (= (and d!2146553 res!2787894) b!6825680))

(assert (= (and d!2146553 c!1270540) b!6825675))

(assert (= (and d!2146553 (not c!1270540)) b!6825676))

(assert (= (and b!6825676 c!1270539) b!6825677))

(assert (= (and b!6825676 (not c!1270539)) b!6825678))

(assert (= (and d!2146553 res!2787895) b!6825682))

(assert (= (and b!6825682 c!1270537) b!6825681))

(assert (= (and b!6825682 (not c!1270537)) b!6825679))

(assert (= (and b!6825679 c!1270538) b!6825683))

(assert (= (and b!6825679 (not c!1270538)) b!6825684))

(declare-fun m!7571516 () Bool)

(assert (=> b!6825684 m!7571516))

(assert (=> b!6825682 m!7570262))

(declare-fun m!7571518 () Bool)

(assert (=> b!6825680 m!7571518))

(declare-fun m!7571520 () Bool)

(assert (=> d!2146553 m!7571520))

(declare-fun m!7571522 () Bool)

(assert (=> d!2146553 m!7571522))

(declare-fun m!7571524 () Bool)

(assert (=> b!6825679 m!7571524))

(assert (=> b!6825679 m!7571524))

(declare-fun m!7571526 () Bool)

(assert (=> b!6825679 m!7571526))

(declare-fun m!7571528 () Bool)

(assert (=> b!6825677 m!7571528))

(declare-fun m!7571530 () Bool)

(assert (=> b!6825683 m!7571530))

(declare-fun m!7571532 () Bool)

(assert (=> b!6825681 m!7571532))

(assert (=> b!6824596 d!2146553))

(declare-fun b!6825689 () Bool)

(declare-fun e!4117766 () Bool)

(declare-fun e!4117769 () Bool)

(assert (=> b!6825689 (= e!4117766 e!4117769)))

(declare-fun c!1270542 () Bool)

(assert (=> b!6825689 (= c!1270542 ((_ is Star!16639) lt!2452255))))

(declare-fun d!2146555 () Bool)

(declare-fun res!2787900 () Bool)

(assert (=> d!2146555 (=> res!2787900 e!4117766)))

(assert (=> d!2146555 (= res!2787900 ((_ is ElementMatch!16639) lt!2452255))))

(assert (=> d!2146555 (= (validRegex!8375 lt!2452255) e!4117766)))

(declare-fun bm!621291 () Bool)

(declare-fun call!621296 () Bool)

(declare-fun c!1270541 () Bool)

(assert (=> bm!621291 (= call!621296 (validRegex!8375 (ite c!1270541 (regOne!33791 lt!2452255) (regOne!33790 lt!2452255))))))

(declare-fun b!6825690 () Bool)

(declare-fun e!4117767 () Bool)

(assert (=> b!6825690 (= e!4117769 e!4117767)))

(assert (=> b!6825690 (= c!1270541 ((_ is Union!16639) lt!2452255))))

(declare-fun b!6825691 () Bool)

(declare-fun e!4117770 () Bool)

(declare-fun call!621297 () Bool)

(assert (=> b!6825691 (= e!4117770 call!621297)))

(declare-fun b!6825692 () Bool)

(declare-fun e!4117768 () Bool)

(declare-fun call!621298 () Bool)

(assert (=> b!6825692 (= e!4117768 call!621298)))

(declare-fun b!6825693 () Bool)

(assert (=> b!6825693 (= e!4117769 e!4117770)))

(declare-fun res!2787902 () Bool)

(assert (=> b!6825693 (= res!2787902 (not (nullable!6614 (reg!16968 lt!2452255))))))

(assert (=> b!6825693 (=> (not res!2787902) (not e!4117770))))

(declare-fun bm!621292 () Bool)

(assert (=> bm!621292 (= call!621298 call!621297)))

(declare-fun b!6825694 () Bool)

(declare-fun res!2787903 () Bool)

(declare-fun e!4117772 () Bool)

(assert (=> b!6825694 (=> res!2787903 e!4117772)))

(assert (=> b!6825694 (= res!2787903 (not ((_ is Concat!25484) lt!2452255)))))

(assert (=> b!6825694 (= e!4117767 e!4117772)))

(declare-fun b!6825695 () Bool)

(declare-fun res!2787904 () Bool)

(assert (=> b!6825695 (=> (not res!2787904) (not e!4117768))))

(assert (=> b!6825695 (= res!2787904 call!621296)))

(assert (=> b!6825695 (= e!4117767 e!4117768)))

(declare-fun b!6825696 () Bool)

(declare-fun e!4117771 () Bool)

(assert (=> b!6825696 (= e!4117771 call!621298)))

(declare-fun b!6825697 () Bool)

(assert (=> b!6825697 (= e!4117772 e!4117771)))

(declare-fun res!2787901 () Bool)

(assert (=> b!6825697 (=> (not res!2787901) (not e!4117771))))

(assert (=> b!6825697 (= res!2787901 call!621296)))

(declare-fun bm!621293 () Bool)

(assert (=> bm!621293 (= call!621297 (validRegex!8375 (ite c!1270542 (reg!16968 lt!2452255) (ite c!1270541 (regTwo!33791 lt!2452255) (regTwo!33790 lt!2452255)))))))

(assert (= (and d!2146555 (not res!2787900)) b!6825689))

(assert (= (and b!6825689 c!1270542) b!6825693))

(assert (= (and b!6825689 (not c!1270542)) b!6825690))

(assert (= (and b!6825693 res!2787902) b!6825691))

(assert (= (and b!6825690 c!1270541) b!6825695))

(assert (= (and b!6825690 (not c!1270541)) b!6825694))

(assert (= (and b!6825695 res!2787904) b!6825692))

(assert (= (and b!6825694 (not res!2787903)) b!6825697))

(assert (= (and b!6825697 res!2787901) b!6825696))

(assert (= (or b!6825692 b!6825696) bm!621292))

(assert (= (or b!6825695 b!6825697) bm!621291))

(assert (= (or b!6825691 bm!621292) bm!621293))

(declare-fun m!7571534 () Bool)

(assert (=> bm!621291 m!7571534))

(declare-fun m!7571536 () Bool)

(assert (=> b!6825693 m!7571536))

(declare-fun m!7571538 () Bool)

(assert (=> bm!621293 m!7571538))

(assert (=> d!2146049 d!2146555))

(declare-fun d!2146557 () Bool)

(declare-fun res!2787905 () Bool)

(declare-fun e!4117773 () Bool)

(assert (=> d!2146557 (=> res!2787905 e!4117773)))

(assert (=> d!2146557 (= res!2787905 ((_ is Nil!66093) (unfocusZipperList!2060 zl!343)))))

(assert (=> d!2146557 (= (forall!15827 (unfocusZipperList!2060 zl!343) lambda!385570) e!4117773)))

(declare-fun b!6825698 () Bool)

(declare-fun e!4117774 () Bool)

(assert (=> b!6825698 (= e!4117773 e!4117774)))

(declare-fun res!2787906 () Bool)

(assert (=> b!6825698 (=> (not res!2787906) (not e!4117774))))

(assert (=> b!6825698 (= res!2787906 (dynLambda!26411 lambda!385570 (h!72541 (unfocusZipperList!2060 zl!343))))))

(declare-fun b!6825699 () Bool)

(assert (=> b!6825699 (= e!4117774 (forall!15827 (t!379956 (unfocusZipperList!2060 zl!343)) lambda!385570))))

(assert (= (and d!2146557 (not res!2787905)) b!6825698))

(assert (= (and b!6825698 res!2787906) b!6825699))

(declare-fun b_lambda!257459 () Bool)

(assert (=> (not b_lambda!257459) (not b!6825698)))

(declare-fun m!7571540 () Bool)

(assert (=> b!6825698 m!7571540))

(declare-fun m!7571542 () Bool)

(assert (=> b!6825699 m!7571542))

(assert (=> d!2146049 d!2146557))

(declare-fun d!2146559 () Bool)

(declare-fun c!1270545 () Bool)

(assert (=> d!2146559 (= c!1270545 (and ((_ is ElementMatch!16639) (h!72541 (exprs!6523 (h!72542 zl!343)))) (= (c!1270055 (h!72541 (exprs!6523 (h!72542 zl!343)))) (h!72540 s!2326))))))

(declare-fun e!4117778 () (InoxSet Context!12046))

(assert (=> d!2146559 (= (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (h!72542 zl!343))) (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))) (h!72540 s!2326)) e!4117778)))

(declare-fun c!1270544 () Bool)

(declare-fun call!621302 () (InoxSet Context!12046))

(declare-fun call!621304 () List!66217)

(declare-fun bm!621294 () Bool)

(assert (=> bm!621294 (= call!621302 (derivationStepZipperDown!1867 (ite c!1270544 (regTwo!33791 (h!72541 (exprs!6523 (h!72542 zl!343)))) (regOne!33790 (h!72541 (exprs!6523 (h!72542 zl!343))))) (ite c!1270544 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))) (Context!12047 call!621304)) (h!72540 s!2326)))))

(declare-fun bm!621295 () Bool)

(declare-fun call!621303 () (InoxSet Context!12046))

(declare-fun call!621301 () (InoxSet Context!12046))

(assert (=> bm!621295 (= call!621303 call!621301)))

(declare-fun b!6825700 () Bool)

(declare-fun c!1270547 () Bool)

(declare-fun e!4117779 () Bool)

(assert (=> b!6825700 (= c!1270547 e!4117779)))

(declare-fun res!2787907 () Bool)

(assert (=> b!6825700 (=> (not res!2787907) (not e!4117779))))

(assert (=> b!6825700 (= res!2787907 ((_ is Concat!25484) (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun e!4117776 () (InoxSet Context!12046))

(declare-fun e!4117777 () (InoxSet Context!12046))

(assert (=> b!6825700 (= e!4117776 e!4117777)))

(declare-fun c!1270546 () Bool)

(declare-fun bm!621296 () Bool)

(assert (=> bm!621296 (= call!621304 ($colon$colon!2444 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343))))) (ite (or c!1270547 c!1270546) (regTwo!33790 (h!72541 (exprs!6523 (h!72542 zl!343)))) (h!72541 (exprs!6523 (h!72542 zl!343))))))))

(declare-fun b!6825701 () Bool)

(assert (=> b!6825701 (= e!4117777 ((_ map or) call!621302 call!621303))))

(declare-fun call!621299 () List!66217)

(declare-fun bm!621297 () Bool)

(assert (=> bm!621297 (= call!621301 (derivationStepZipperDown!1867 (ite c!1270544 (regOne!33791 (h!72541 (exprs!6523 (h!72542 zl!343)))) (ite c!1270547 (regTwo!33790 (h!72541 (exprs!6523 (h!72542 zl!343)))) (ite c!1270546 (regOne!33790 (h!72541 (exprs!6523 (h!72542 zl!343)))) (reg!16968 (h!72541 (exprs!6523 (h!72542 zl!343))))))) (ite (or c!1270544 c!1270547) (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))) (Context!12047 call!621299)) (h!72540 s!2326)))))

(declare-fun b!6825702 () Bool)

(assert (=> b!6825702 (= e!4117778 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (t!379956 (exprs!6523 (h!72542 zl!343)))) true))))

(declare-fun b!6825703 () Bool)

(declare-fun e!4117775 () (InoxSet Context!12046))

(declare-fun call!621300 () (InoxSet Context!12046))

(assert (=> b!6825703 (= e!4117775 call!621300)))

(declare-fun b!6825704 () Bool)

(assert (=> b!6825704 (= e!4117778 e!4117776)))

(assert (=> b!6825704 (= c!1270544 ((_ is Union!16639) (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun bm!621298 () Bool)

(assert (=> bm!621298 (= call!621299 call!621304)))

(declare-fun b!6825705 () Bool)

(declare-fun e!4117780 () (InoxSet Context!12046))

(assert (=> b!6825705 (= e!4117777 e!4117780)))

(assert (=> b!6825705 (= c!1270546 ((_ is Concat!25484) (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6825706 () Bool)

(assert (=> b!6825706 (= e!4117775 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825707 () Bool)

(assert (=> b!6825707 (= e!4117776 ((_ map or) call!621301 call!621302))))

(declare-fun b!6825708 () Bool)

(declare-fun c!1270543 () Bool)

(assert (=> b!6825708 (= c!1270543 ((_ is Star!16639) (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(assert (=> b!6825708 (= e!4117780 e!4117775)))

(declare-fun b!6825709 () Bool)

(assert (=> b!6825709 (= e!4117779 (nullable!6614 (regOne!33790 (h!72541 (exprs!6523 (h!72542 zl!343))))))))

(declare-fun bm!621299 () Bool)

(assert (=> bm!621299 (= call!621300 call!621303)))

(declare-fun b!6825710 () Bool)

(assert (=> b!6825710 (= e!4117780 call!621300)))

(assert (= (and d!2146559 c!1270545) b!6825702))

(assert (= (and d!2146559 (not c!1270545)) b!6825704))

(assert (= (and b!6825704 c!1270544) b!6825707))

(assert (= (and b!6825704 (not c!1270544)) b!6825700))

(assert (= (and b!6825700 res!2787907) b!6825709))

(assert (= (and b!6825700 c!1270547) b!6825701))

(assert (= (and b!6825700 (not c!1270547)) b!6825705))

(assert (= (and b!6825705 c!1270546) b!6825710))

(assert (= (and b!6825705 (not c!1270546)) b!6825708))

(assert (= (and b!6825708 c!1270543) b!6825703))

(assert (= (and b!6825708 (not c!1270543)) b!6825706))

(assert (= (or b!6825710 b!6825703) bm!621298))

(assert (= (or b!6825710 b!6825703) bm!621299))

(assert (= (or b!6825701 bm!621298) bm!621296))

(assert (= (or b!6825701 bm!621299) bm!621295))

(assert (= (or b!6825707 b!6825701) bm!621294))

(assert (= (or b!6825707 bm!621295) bm!621297))

(declare-fun m!7571544 () Bool)

(assert (=> bm!621296 m!7571544))

(declare-fun m!7571546 () Bool)

(assert (=> bm!621297 m!7571546))

(declare-fun m!7571548 () Bool)

(assert (=> b!6825709 m!7571548))

(declare-fun m!7571550 () Bool)

(assert (=> b!6825702 m!7571550))

(declare-fun m!7571552 () Bool)

(assert (=> bm!621294 m!7571552))

(assert (=> bm!621153 d!2146559))

(assert (=> bm!621145 d!2146347))

(declare-fun d!2146561 () Bool)

(assert (=> d!2146561 (= (isEmptyExpr!1993 lt!2452216) ((_ is EmptyExpr!16639) lt!2452216))))

(assert (=> b!6824600 d!2146561))

(declare-fun d!2146563 () Bool)

(declare-fun lt!2452333 () Int)

(assert (=> d!2146563 (>= lt!2452333 0)))

(declare-fun e!4117783 () Int)

(assert (=> d!2146563 (= lt!2452333 e!4117783)))

(declare-fun c!1270550 () Bool)

(assert (=> d!2146563 (= c!1270550 ((_ is Nil!66092) lt!2452122))))

(assert (=> d!2146563 (= (size!40693 lt!2452122) lt!2452333)))

(declare-fun b!6825715 () Bool)

(assert (=> b!6825715 (= e!4117783 0)))

(declare-fun b!6825716 () Bool)

(assert (=> b!6825716 (= e!4117783 (+ 1 (size!40693 (t!379955 lt!2452122))))))

(assert (= (and d!2146563 c!1270550) b!6825715))

(assert (= (and d!2146563 (not c!1270550)) b!6825716))

(declare-fun m!7571554 () Bool)

(assert (=> b!6825716 m!7571554))

(assert (=> b!6824111 d!2146563))

(declare-fun d!2146565 () Bool)

(declare-fun lt!2452334 () Int)

(assert (=> d!2146565 (>= lt!2452334 0)))

(declare-fun e!4117784 () Int)

(assert (=> d!2146565 (= lt!2452334 e!4117784)))

(declare-fun c!1270551 () Bool)

(assert (=> d!2146565 (= c!1270551 ((_ is Nil!66092) (_1!36917 lt!2452079)))))

(assert (=> d!2146565 (= (size!40693 (_1!36917 lt!2452079)) lt!2452334)))

(declare-fun b!6825717 () Bool)

(assert (=> b!6825717 (= e!4117784 0)))

(declare-fun b!6825718 () Bool)

(assert (=> b!6825718 (= e!4117784 (+ 1 (size!40693 (t!379955 (_1!36917 lt!2452079)))))))

(assert (= (and d!2146565 c!1270551) b!6825717))

(assert (= (and d!2146565 (not c!1270551)) b!6825718))

(assert (=> b!6825718 m!7571442))

(assert (=> b!6824111 d!2146565))

(declare-fun d!2146567 () Bool)

(declare-fun lt!2452335 () Int)

(assert (=> d!2146567 (>= lt!2452335 0)))

(declare-fun e!4117785 () Int)

(assert (=> d!2146567 (= lt!2452335 e!4117785)))

(declare-fun c!1270552 () Bool)

(assert (=> d!2146567 (= c!1270552 ((_ is Nil!66092) (_2!36917 lt!2452079)))))

(assert (=> d!2146567 (= (size!40693 (_2!36917 lt!2452079)) lt!2452335)))

(declare-fun b!6825719 () Bool)

(assert (=> b!6825719 (= e!4117785 0)))

(declare-fun b!6825720 () Bool)

(assert (=> b!6825720 (= e!4117785 (+ 1 (size!40693 (t!379955 (_2!36917 lt!2452079)))))))

(assert (= (and d!2146567 c!1270552) b!6825719))

(assert (= (and d!2146567 (not c!1270552)) b!6825720))

(declare-fun m!7571556 () Bool)

(assert (=> b!6825720 m!7571556))

(assert (=> b!6824111 d!2146567))

(declare-fun b!6825723 () Bool)

(declare-fun res!2787909 () Bool)

(declare-fun e!4117786 () Bool)

(assert (=> b!6825723 (=> (not res!2787909) (not e!4117786))))

(declare-fun lt!2452336 () List!66216)

(assert (=> b!6825723 (= res!2787909 (= (size!40693 lt!2452336) (+ (size!40693 (_1!36917 (get!23028 lt!2452182))) (size!40693 (_2!36917 (get!23028 lt!2452182))))))))

(declare-fun d!2146569 () Bool)

(assert (=> d!2146569 e!4117786))

(declare-fun res!2787908 () Bool)

(assert (=> d!2146569 (=> (not res!2787908) (not e!4117786))))

(assert (=> d!2146569 (= res!2787908 (= (content!12939 lt!2452336) ((_ map or) (content!12939 (_1!36917 (get!23028 lt!2452182))) (content!12939 (_2!36917 (get!23028 lt!2452182))))))))

(declare-fun e!4117787 () List!66216)

(assert (=> d!2146569 (= lt!2452336 e!4117787)))

(declare-fun c!1270553 () Bool)

(assert (=> d!2146569 (= c!1270553 ((_ is Nil!66092) (_1!36917 (get!23028 lt!2452182))))))

(assert (=> d!2146569 (= (++!14825 (_1!36917 (get!23028 lt!2452182)) (_2!36917 (get!23028 lt!2452182))) lt!2452336)))

(declare-fun b!6825722 () Bool)

(assert (=> b!6825722 (= e!4117787 (Cons!66092 (h!72540 (_1!36917 (get!23028 lt!2452182))) (++!14825 (t!379955 (_1!36917 (get!23028 lt!2452182))) (_2!36917 (get!23028 lt!2452182)))))))

(declare-fun b!6825724 () Bool)

(assert (=> b!6825724 (= e!4117786 (or (not (= (_2!36917 (get!23028 lt!2452182)) Nil!66092)) (= lt!2452336 (_1!36917 (get!23028 lt!2452182)))))))

(declare-fun b!6825721 () Bool)

(assert (=> b!6825721 (= e!4117787 (_2!36917 (get!23028 lt!2452182)))))

(assert (= (and d!2146569 c!1270553) b!6825721))

(assert (= (and d!2146569 (not c!1270553)) b!6825722))

(assert (= (and d!2146569 res!2787908) b!6825723))

(assert (= (and b!6825723 res!2787909) b!6825724))

(declare-fun m!7571558 () Bool)

(assert (=> b!6825723 m!7571558))

(declare-fun m!7571560 () Bool)

(assert (=> b!6825723 m!7571560))

(declare-fun m!7571562 () Bool)

(assert (=> b!6825723 m!7571562))

(declare-fun m!7571564 () Bool)

(assert (=> d!2146569 m!7571564))

(declare-fun m!7571566 () Bool)

(assert (=> d!2146569 m!7571566))

(declare-fun m!7571568 () Bool)

(assert (=> d!2146569 m!7571568))

(declare-fun m!7571570 () Bool)

(assert (=> b!6825722 m!7571570))

(assert (=> b!6824462 d!2146569))

(assert (=> b!6824462 d!2146377))

(declare-fun b!6825727 () Bool)

(declare-fun res!2787911 () Bool)

(declare-fun e!4117788 () Bool)

(assert (=> b!6825727 (=> (not res!2787911) (not e!4117788))))

(declare-fun lt!2452337 () List!66216)

(assert (=> b!6825727 (= res!2787911 (= (size!40693 lt!2452337) (+ (size!40693 (_1!36917 (get!23028 lt!2452139))) (size!40693 (_2!36917 (get!23028 lt!2452139))))))))

(declare-fun d!2146571 () Bool)

(assert (=> d!2146571 e!4117788))

(declare-fun res!2787910 () Bool)

(assert (=> d!2146571 (=> (not res!2787910) (not e!4117788))))

(assert (=> d!2146571 (= res!2787910 (= (content!12939 lt!2452337) ((_ map or) (content!12939 (_1!36917 (get!23028 lt!2452139))) (content!12939 (_2!36917 (get!23028 lt!2452139))))))))

(declare-fun e!4117789 () List!66216)

(assert (=> d!2146571 (= lt!2452337 e!4117789)))

(declare-fun c!1270554 () Bool)

(assert (=> d!2146571 (= c!1270554 ((_ is Nil!66092) (_1!36917 (get!23028 lt!2452139))))))

(assert (=> d!2146571 (= (++!14825 (_1!36917 (get!23028 lt!2452139)) (_2!36917 (get!23028 lt!2452139))) lt!2452337)))

(declare-fun b!6825726 () Bool)

(assert (=> b!6825726 (= e!4117789 (Cons!66092 (h!72540 (_1!36917 (get!23028 lt!2452139))) (++!14825 (t!379955 (_1!36917 (get!23028 lt!2452139))) (_2!36917 (get!23028 lt!2452139)))))))

(declare-fun b!6825728 () Bool)

(assert (=> b!6825728 (= e!4117788 (or (not (= (_2!36917 (get!23028 lt!2452139)) Nil!66092)) (= lt!2452337 (_1!36917 (get!23028 lt!2452139)))))))

(declare-fun b!6825725 () Bool)

(assert (=> b!6825725 (= e!4117789 (_2!36917 (get!23028 lt!2452139)))))

(assert (= (and d!2146571 c!1270554) b!6825725))

(assert (= (and d!2146571 (not c!1270554)) b!6825726))

(assert (= (and d!2146571 res!2787910) b!6825727))

(assert (= (and b!6825727 res!2787911) b!6825728))

(declare-fun m!7571572 () Bool)

(assert (=> b!6825727 m!7571572))

(declare-fun m!7571574 () Bool)

(assert (=> b!6825727 m!7571574))

(declare-fun m!7571576 () Bool)

(assert (=> b!6825727 m!7571576))

(declare-fun m!7571578 () Bool)

(assert (=> d!2146571 m!7571578))

(declare-fun m!7571580 () Bool)

(assert (=> d!2146571 m!7571580))

(declare-fun m!7571582 () Bool)

(assert (=> d!2146571 m!7571582))

(declare-fun m!7571584 () Bool)

(assert (=> b!6825726 m!7571584))

(assert (=> b!6824258 d!2146571))

(assert (=> b!6824258 d!2146373))

(declare-fun d!2146573 () Bool)

(assert (=> d!2146573 (= (flatMap!2120 lt!2452059 lambda!385544) (choose!50889 lt!2452059 lambda!385544))))

(declare-fun bs!1823852 () Bool)

(assert (= bs!1823852 d!2146573))

(declare-fun m!7571586 () Bool)

(assert (=> bs!1823852 m!7571586))

(assert (=> d!2145963 d!2146573))

(declare-fun d!2146575 () Bool)

(assert (=> d!2146575 (= (nullable!6614 (regOne!33790 r!7292)) (nullableFct!2511 (regOne!33790 r!7292)))))

(declare-fun bs!1823853 () Bool)

(assert (= bs!1823853 d!2146575))

(declare-fun m!7571588 () Bool)

(assert (=> bs!1823853 m!7571588))

(assert (=> b!6824549 d!2146575))

(assert (=> bm!621154 d!2145913))

(declare-fun d!2146577 () Bool)

(assert (=> d!2146577 (= (nullable!6614 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (nullableFct!2511 (h!72541 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))))

(declare-fun bs!1823854 () Bool)

(assert (= bs!1823854 d!2146577))

(declare-fun m!7571590 () Bool)

(assert (=> bs!1823854 m!7571590))

(assert (=> b!6824554 d!2146577))

(declare-fun d!2146579 () Bool)

(assert (=> d!2146579 (= (isUnion!1431 lt!2452255) ((_ is Union!16639) lt!2452255))))

(assert (=> b!6824846 d!2146579))

(declare-fun b!6825729 () Bool)

(declare-fun call!621305 () (InoxSet Context!12046))

(declare-fun e!4117792 () (InoxSet Context!12046))

(assert (=> b!6825729 (= e!4117792 ((_ map or) call!621305 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452078)))))) (h!72540 s!2326))))))

(declare-fun b!6825730 () Bool)

(declare-fun e!4117791 () (InoxSet Context!12046))

(assert (=> b!6825730 (= e!4117791 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825731 () Bool)

(assert (=> b!6825731 (= e!4117792 e!4117791)))

(declare-fun c!1270556 () Bool)

(assert (=> b!6825731 (= c!1270556 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452078))))))))

(declare-fun d!2146581 () Bool)

(declare-fun c!1270555 () Bool)

(declare-fun e!4117790 () Bool)

(assert (=> d!2146581 (= c!1270555 e!4117790)))

(declare-fun res!2787912 () Bool)

(assert (=> d!2146581 (=> (not res!2787912) (not e!4117790))))

(assert (=> d!2146581 (= res!2787912 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452078))))))))

(assert (=> d!2146581 (= (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 lt!2452078))) (h!72540 s!2326)) e!4117792)))

(declare-fun b!6825732 () Bool)

(assert (=> b!6825732 (= e!4117790 (nullable!6614 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452078)))))))))

(declare-fun b!6825733 () Bool)

(assert (=> b!6825733 (= e!4117791 call!621305)))

(declare-fun bm!621300 () Bool)

(assert (=> bm!621300 (= call!621305 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452078))))) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452078)))))) (h!72540 s!2326)))))

(assert (= (and d!2146581 res!2787912) b!6825732))

(assert (= (and d!2146581 c!1270555) b!6825729))

(assert (= (and d!2146581 (not c!1270555)) b!6825731))

(assert (= (and b!6825731 c!1270556) b!6825733))

(assert (= (and b!6825731 (not c!1270556)) b!6825730))

(assert (= (or b!6825729 b!6825733) bm!621300))

(declare-fun m!7571592 () Bool)

(assert (=> b!6825729 m!7571592))

(declare-fun m!7571594 () Bool)

(assert (=> b!6825732 m!7571594))

(declare-fun m!7571596 () Bool)

(assert (=> bm!621300 m!7571596))

(assert (=> b!6824870 d!2146581))

(assert (=> b!6824759 d!2146177))

(assert (=> bs!1823519 d!2145971))

(assert (=> d!2146069 d!2146065))

(declare-fun d!2146583 () Bool)

(assert (=> d!2146583 (= (flatMap!2120 z!1189 lambda!385481) (dynLambda!26409 lambda!385481 (h!72542 zl!343)))))

(assert (=> d!2146583 true))

(declare-fun _$13!4333 () Unit!159969)

(assert (=> d!2146583 (= (choose!50890 z!1189 (h!72542 zl!343) lambda!385481) _$13!4333)))

(declare-fun b_lambda!257461 () Bool)

(assert (=> (not b_lambda!257461) (not d!2146583)))

(declare-fun bs!1823855 () Bool)

(assert (= bs!1823855 d!2146583))

(assert (=> bs!1823855 m!7569682))

(assert (=> bs!1823855 m!7570508))

(assert (=> d!2146069 d!2146583))

(assert (=> b!6824817 d!2146299))

(assert (=> b!6824817 d!2146301))

(declare-fun d!2146585 () Bool)

(assert (=> d!2146585 (= (nullable!6614 (h!72541 (exprs!6523 lt!2452076))) (nullableFct!2511 (h!72541 (exprs!6523 lt!2452076))))))

(declare-fun bs!1823856 () Bool)

(assert (= bs!1823856 d!2146585))

(declare-fun m!7571598 () Bool)

(assert (=> bs!1823856 m!7571598))

(assert (=> b!6824498 d!2146585))

(declare-fun b!6825734 () Bool)

(declare-fun call!621306 () (InoxSet Context!12046))

(declare-fun e!4117795 () (InoxSet Context!12046))

(assert (=> b!6825734 (= e!4117795 ((_ map or) call!621306 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452067)))))) (h!72540 s!2326))))))

(declare-fun b!6825735 () Bool)

(declare-fun e!4117794 () (InoxSet Context!12046))

(assert (=> b!6825735 (= e!4117794 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825736 () Bool)

(assert (=> b!6825736 (= e!4117795 e!4117794)))

(declare-fun c!1270558 () Bool)

(assert (=> b!6825736 (= c!1270558 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452067))))))))

(declare-fun d!2146587 () Bool)

(declare-fun c!1270557 () Bool)

(declare-fun e!4117793 () Bool)

(assert (=> d!2146587 (= c!1270557 e!4117793)))

(declare-fun res!2787913 () Bool)

(assert (=> d!2146587 (=> (not res!2787913) (not e!4117793))))

(assert (=> d!2146587 (= res!2787913 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452067))))))))

(assert (=> d!2146587 (= (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 lt!2452067))) (h!72540 s!2326)) e!4117795)))

(declare-fun b!6825737 () Bool)

(assert (=> b!6825737 (= e!4117793 (nullable!6614 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452067)))))))))

(declare-fun b!6825738 () Bool)

(assert (=> b!6825738 (= e!4117794 call!621306)))

(declare-fun bm!621301 () Bool)

(assert (=> bm!621301 (= call!621306 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452067))))) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452067)))))) (h!72540 s!2326)))))

(assert (= (and d!2146587 res!2787913) b!6825737))

(assert (= (and d!2146587 c!1270557) b!6825734))

(assert (= (and d!2146587 (not c!1270557)) b!6825736))

(assert (= (and b!6825736 c!1270558) b!6825738))

(assert (= (and b!6825736 (not c!1270558)) b!6825735))

(assert (= (or b!6825734 b!6825738) bm!621301))

(declare-fun m!7571600 () Bool)

(assert (=> b!6825734 m!7571600))

(declare-fun m!7571602 () Bool)

(assert (=> b!6825737 m!7571602))

(declare-fun m!7571604 () Bool)

(assert (=> bm!621301 m!7571604))

(assert (=> b!6824500 d!2146587))

(declare-fun d!2146589 () Bool)

(declare-fun lambda!385635 () Int)

(declare-fun exists!2753 ((InoxSet Context!12046) Int) Bool)

(assert (=> d!2146589 (= (nullableZipper!2342 z!1189) (exists!2753 z!1189 lambda!385635))))

(declare-fun bs!1823857 () Bool)

(assert (= bs!1823857 d!2146589))

(declare-fun m!7571606 () Bool)

(assert (=> bs!1823857 m!7571606))

(assert (=> b!6824906 d!2146589))

(assert (=> b!6824822 d!2146499))

(declare-fun bs!1823858 () Bool)

(declare-fun d!2146591 () Bool)

(assert (= bs!1823858 (and d!2146591 d!2146589)))

(declare-fun lambda!385636 () Int)

(assert (=> bs!1823858 (= lambda!385636 lambda!385635)))

(assert (=> d!2146591 (= (nullableZipper!2342 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326))) (exists!2753 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) lambda!385636))))

(declare-fun bs!1823859 () Bool)

(assert (= bs!1823859 d!2146591))

(assert (=> bs!1823859 m!7569610))

(declare-fun m!7571608 () Bool)

(assert (=> bs!1823859 m!7571608))

(assert (=> b!6824042 d!2146591))

(assert (=> d!2146059 d!2146055))

(declare-fun d!2146593 () Bool)

(assert (=> d!2146593 (= (flatMap!2120 lt!2452058 lambda!385481) (dynLambda!26409 lambda!385481 lt!2452078))))

(assert (=> d!2146593 true))

(declare-fun _$13!4334 () Unit!159969)

(assert (=> d!2146593 (= (choose!50890 lt!2452058 lt!2452078 lambda!385481) _$13!4334)))

(declare-fun b_lambda!257463 () Bool)

(assert (=> (not b_lambda!257463) (not d!2146593)))

(declare-fun bs!1823860 () Bool)

(assert (= bs!1823860 d!2146593))

(assert (=> bs!1823860 m!7569640))

(assert (=> bs!1823860 m!7570488))

(assert (=> d!2146059 d!2146593))

(declare-fun b!6825739 () Bool)

(declare-fun e!4117796 () Bool)

(assert (=> b!6825739 (= e!4117796 (= (head!13681 (tail!12766 s!2326)) (c!1270055 (derivativeStep!5299 lt!2452072 (head!13681 s!2326)))))))

(declare-fun bm!621302 () Bool)

(declare-fun call!621307 () Bool)

(assert (=> bm!621302 (= call!621307 (isEmpty!38481 (tail!12766 s!2326)))))

(declare-fun b!6825740 () Bool)

(declare-fun e!4117797 () Bool)

(declare-fun lt!2452338 () Bool)

(assert (=> b!6825740 (= e!4117797 (not lt!2452338))))

(declare-fun b!6825741 () Bool)

(declare-fun e!4117800 () Bool)

(assert (=> b!6825741 (= e!4117800 e!4117797)))

(declare-fun c!1270561 () Bool)

(assert (=> b!6825741 (= c!1270561 ((_ is EmptyLang!16639) (derivativeStep!5299 lt!2452072 (head!13681 s!2326))))))

(declare-fun b!6825742 () Bool)

(declare-fun res!2787914 () Bool)

(declare-fun e!4117802 () Bool)

(assert (=> b!6825742 (=> res!2787914 e!4117802)))

(assert (=> b!6825742 (= res!2787914 (not ((_ is ElementMatch!16639) (derivativeStep!5299 lt!2452072 (head!13681 s!2326)))))))

(assert (=> b!6825742 (= e!4117797 e!4117802)))

(declare-fun b!6825743 () Bool)

(declare-fun e!4117801 () Bool)

(assert (=> b!6825743 (= e!4117802 e!4117801)))

(declare-fun res!2787920 () Bool)

(assert (=> b!6825743 (=> (not res!2787920) (not e!4117801))))

(assert (=> b!6825743 (= res!2787920 (not lt!2452338))))

(declare-fun d!2146595 () Bool)

(assert (=> d!2146595 e!4117800))

(declare-fun c!1270563 () Bool)

(assert (=> d!2146595 (= c!1270563 ((_ is EmptyExpr!16639) (derivativeStep!5299 lt!2452072 (head!13681 s!2326))))))

(declare-fun e!4117798 () Bool)

(assert (=> d!2146595 (= lt!2452338 e!4117798)))

(declare-fun c!1270562 () Bool)

(assert (=> d!2146595 (= c!1270562 (isEmpty!38481 (tail!12766 s!2326)))))

(assert (=> d!2146595 (validRegex!8375 (derivativeStep!5299 lt!2452072 (head!13681 s!2326)))))

(assert (=> d!2146595 (= (matchR!8822 (derivativeStep!5299 lt!2452072 (head!13681 s!2326)) (tail!12766 s!2326)) lt!2452338)))

(declare-fun b!6825744 () Bool)

(declare-fun e!4117799 () Bool)

(assert (=> b!6825744 (= e!4117799 (not (= (head!13681 (tail!12766 s!2326)) (c!1270055 (derivativeStep!5299 lt!2452072 (head!13681 s!2326))))))))

(declare-fun b!6825745 () Bool)

(assert (=> b!6825745 (= e!4117801 e!4117799)))

(declare-fun res!2787917 () Bool)

(assert (=> b!6825745 (=> res!2787917 e!4117799)))

(assert (=> b!6825745 (= res!2787917 call!621307)))

(declare-fun b!6825746 () Bool)

(assert (=> b!6825746 (= e!4117798 (matchR!8822 (derivativeStep!5299 (derivativeStep!5299 lt!2452072 (head!13681 s!2326)) (head!13681 (tail!12766 s!2326))) (tail!12766 (tail!12766 s!2326))))))

(declare-fun b!6825747 () Bool)

(declare-fun res!2787921 () Bool)

(assert (=> b!6825747 (=> res!2787921 e!4117799)))

(assert (=> b!6825747 (= res!2787921 (not (isEmpty!38481 (tail!12766 (tail!12766 s!2326)))))))

(declare-fun b!6825748 () Bool)

(declare-fun res!2787918 () Bool)

(assert (=> b!6825748 (=> res!2787918 e!4117802)))

(assert (=> b!6825748 (= res!2787918 e!4117796)))

(declare-fun res!2787915 () Bool)

(assert (=> b!6825748 (=> (not res!2787915) (not e!4117796))))

(assert (=> b!6825748 (= res!2787915 lt!2452338)))

(declare-fun b!6825749 () Bool)

(assert (=> b!6825749 (= e!4117800 (= lt!2452338 call!621307))))

(declare-fun b!6825750 () Bool)

(declare-fun res!2787919 () Bool)

(assert (=> b!6825750 (=> (not res!2787919) (not e!4117796))))

(assert (=> b!6825750 (= res!2787919 (isEmpty!38481 (tail!12766 (tail!12766 s!2326))))))

(declare-fun b!6825751 () Bool)

(declare-fun res!2787916 () Bool)

(assert (=> b!6825751 (=> (not res!2787916) (not e!4117796))))

(assert (=> b!6825751 (= res!2787916 (not call!621307))))

(declare-fun b!6825752 () Bool)

(assert (=> b!6825752 (= e!4117798 (nullable!6614 (derivativeStep!5299 lt!2452072 (head!13681 s!2326))))))

(assert (= (and d!2146595 c!1270562) b!6825752))

(assert (= (and d!2146595 (not c!1270562)) b!6825746))

(assert (= (and d!2146595 c!1270563) b!6825749))

(assert (= (and d!2146595 (not c!1270563)) b!6825741))

(assert (= (and b!6825741 c!1270561) b!6825740))

(assert (= (and b!6825741 (not c!1270561)) b!6825742))

(assert (= (and b!6825742 (not res!2787914)) b!6825748))

(assert (= (and b!6825748 res!2787915) b!6825751))

(assert (= (and b!6825751 res!2787916) b!6825750))

(assert (= (and b!6825750 res!2787919) b!6825739))

(assert (= (and b!6825748 (not res!2787918)) b!6825743))

(assert (= (and b!6825743 res!2787920) b!6825745))

(assert (= (and b!6825745 (not res!2787917)) b!6825747))

(assert (= (and b!6825747 (not res!2787921)) b!6825744))

(assert (= (or b!6825749 b!6825745 b!6825751) bm!621302))

(assert (=> b!6825739 m!7569758))

(assert (=> b!6825739 m!7570658))

(assert (=> b!6825752 m!7570522))

(declare-fun m!7571610 () Bool)

(assert (=> b!6825752 m!7571610))

(assert (=> b!6825746 m!7569758))

(assert (=> b!6825746 m!7570658))

(assert (=> b!6825746 m!7570522))

(assert (=> b!6825746 m!7570658))

(declare-fun m!7571612 () Bool)

(assert (=> b!6825746 m!7571612))

(assert (=> b!6825746 m!7569758))

(assert (=> b!6825746 m!7570666))

(assert (=> b!6825746 m!7571612))

(assert (=> b!6825746 m!7570666))

(declare-fun m!7571614 () Bool)

(assert (=> b!6825746 m!7571614))

(assert (=> bm!621302 m!7569758))

(assert (=> bm!621302 m!7570386))

(assert (=> b!6825750 m!7569758))

(assert (=> b!6825750 m!7570666))

(assert (=> b!6825750 m!7570666))

(assert (=> b!6825750 m!7570764))

(assert (=> d!2146595 m!7569758))

(assert (=> d!2146595 m!7570386))

(assert (=> d!2146595 m!7570522))

(declare-fun m!7571616 () Bool)

(assert (=> d!2146595 m!7571616))

(assert (=> b!6825744 m!7569758))

(assert (=> b!6825744 m!7570658))

(assert (=> b!6825747 m!7569758))

(assert (=> b!6825747 m!7570666))

(assert (=> b!6825747 m!7570666))

(assert (=> b!6825747 m!7570764))

(assert (=> b!6824899 d!2146595))

(declare-fun c!1270565 () Bool)

(declare-fun bm!621303 () Bool)

(declare-fun c!1270568 () Bool)

(declare-fun call!621309 () Regex!16639)

(declare-fun c!1270567 () Bool)

(assert (=> bm!621303 (= call!621309 (derivativeStep!5299 (ite c!1270568 (regTwo!33791 lt!2452072) (ite c!1270567 (reg!16968 lt!2452072) (ite c!1270565 (regTwo!33790 lt!2452072) (regOne!33790 lt!2452072)))) (head!13681 s!2326)))))

(declare-fun b!6825753 () Bool)

(declare-fun e!4117804 () Regex!16639)

(declare-fun e!4117803 () Regex!16639)

(assert (=> b!6825753 (= e!4117804 e!4117803)))

(declare-fun c!1270566 () Bool)

(assert (=> b!6825753 (= c!1270566 ((_ is ElementMatch!16639) lt!2452072))))

(declare-fun b!6825754 () Bool)

(declare-fun e!4117806 () Regex!16639)

(declare-fun call!621310 () Regex!16639)

(assert (=> b!6825754 (= e!4117806 (Concat!25484 call!621310 lt!2452072))))

(declare-fun call!621311 () Regex!16639)

(declare-fun bm!621304 () Bool)

(assert (=> bm!621304 (= call!621311 (derivativeStep!5299 (ite c!1270568 (regOne!33791 lt!2452072) (regOne!33790 lt!2452072)) (head!13681 s!2326)))))

(declare-fun b!6825755 () Bool)

(assert (=> b!6825755 (= c!1270568 ((_ is Union!16639) lt!2452072))))

(declare-fun e!4117805 () Regex!16639)

(assert (=> b!6825755 (= e!4117803 e!4117805)))

(declare-fun bm!621305 () Bool)

(declare-fun call!621308 () Regex!16639)

(assert (=> bm!621305 (= call!621308 call!621310)))

(declare-fun b!6825756 () Bool)

(assert (=> b!6825756 (= e!4117804 EmptyLang!16639)))

(declare-fun b!6825757 () Bool)

(declare-fun e!4117807 () Regex!16639)

(assert (=> b!6825757 (= e!4117807 (Union!16639 (Concat!25484 call!621308 (regTwo!33790 lt!2452072)) EmptyLang!16639))))

(declare-fun b!6825758 () Bool)

(assert (=> b!6825758 (= e!4117803 (ite (= (head!13681 s!2326) (c!1270055 lt!2452072)) EmptyExpr!16639 EmptyLang!16639))))

(declare-fun b!6825759 () Bool)

(assert (=> b!6825759 (= e!4117805 e!4117806)))

(assert (=> b!6825759 (= c!1270567 ((_ is Star!16639) lt!2452072))))

(declare-fun b!6825760 () Bool)

(assert (=> b!6825760 (= e!4117807 (Union!16639 (Concat!25484 call!621311 (regTwo!33790 lt!2452072)) call!621308))))

(declare-fun b!6825761 () Bool)

(assert (=> b!6825761 (= c!1270565 (nullable!6614 (regOne!33790 lt!2452072)))))

(assert (=> b!6825761 (= e!4117806 e!4117807)))

(declare-fun b!6825762 () Bool)

(assert (=> b!6825762 (= e!4117805 (Union!16639 call!621311 call!621309))))

(declare-fun d!2146597 () Bool)

(declare-fun lt!2452339 () Regex!16639)

(assert (=> d!2146597 (validRegex!8375 lt!2452339)))

(assert (=> d!2146597 (= lt!2452339 e!4117804)))

(declare-fun c!1270564 () Bool)

(assert (=> d!2146597 (= c!1270564 (or ((_ is EmptyExpr!16639) lt!2452072) ((_ is EmptyLang!16639) lt!2452072)))))

(assert (=> d!2146597 (validRegex!8375 lt!2452072)))

(assert (=> d!2146597 (= (derivativeStep!5299 lt!2452072 (head!13681 s!2326)) lt!2452339)))

(declare-fun bm!621306 () Bool)

(assert (=> bm!621306 (= call!621310 call!621309)))

(assert (= (and d!2146597 c!1270564) b!6825756))

(assert (= (and d!2146597 (not c!1270564)) b!6825753))

(assert (= (and b!6825753 c!1270566) b!6825758))

(assert (= (and b!6825753 (not c!1270566)) b!6825755))

(assert (= (and b!6825755 c!1270568) b!6825762))

(assert (= (and b!6825755 (not c!1270568)) b!6825759))

(assert (= (and b!6825759 c!1270567) b!6825754))

(assert (= (and b!6825759 (not c!1270567)) b!6825761))

(assert (= (and b!6825761 c!1270565) b!6825760))

(assert (= (and b!6825761 (not c!1270565)) b!6825757))

(assert (= (or b!6825760 b!6825757) bm!621305))

(assert (= (or b!6825754 bm!621305) bm!621306))

(assert (= (or b!6825762 bm!621306) bm!621303))

(assert (= (or b!6825762 b!6825760) bm!621304))

(assert (=> bm!621303 m!7569754))

(declare-fun m!7571618 () Bool)

(assert (=> bm!621303 m!7571618))

(assert (=> bm!621304 m!7569754))

(declare-fun m!7571620 () Bool)

(assert (=> bm!621304 m!7571620))

(declare-fun m!7571622 () Bool)

(assert (=> b!6825761 m!7571622))

(declare-fun m!7571624 () Bool)

(assert (=> d!2146597 m!7571624))

(assert (=> d!2146597 m!7570526))

(assert (=> b!6824899 d!2146597))

(assert (=> b!6824899 d!2146177))

(assert (=> b!6824899 d!2146179))

(assert (=> b!6824903 d!2146441))

(assert (=> b!6824903 d!2146179))

(declare-fun bs!1823861 () Bool)

(declare-fun d!2146599 () Bool)

(assert (= bs!1823861 (and d!2146599 d!2146293)))

(declare-fun lambda!385637 () Int)

(assert (=> bs!1823861 (= lambda!385637 lambda!385597)))

(declare-fun bs!1823862 () Bool)

(assert (= bs!1823862 (and d!2146599 d!2146553)))

(assert (=> bs!1823862 (= lambda!385637 lambda!385630)))

(declare-fun bs!1823863 () Bool)

(assert (= bs!1823863 (and d!2146599 d!2146497)))

(assert (=> bs!1823863 (= lambda!385637 lambda!385615)))

(declare-fun bs!1823864 () Bool)

(assert (= bs!1823864 (and d!2146599 b!6823997)))

(assert (=> bs!1823864 (= lambda!385637 lambda!385483)))

(declare-fun bs!1823865 () Bool)

(assert (= bs!1823865 (and d!2146599 d!2146049)))

(assert (=> bs!1823865 (= lambda!385637 lambda!385570)))

(declare-fun bs!1823866 () Bool)

(assert (= bs!1823866 (and d!2146599 d!2146077)))

(assert (=> bs!1823866 (= lambda!385637 lambda!385576)))

(declare-fun bs!1823867 () Bool)

(assert (= bs!1823867 (and d!2146599 d!2146051)))

(assert (=> bs!1823867 (= lambda!385637 lambda!385573)))

(declare-fun bs!1823868 () Bool)

(assert (= bs!1823868 (and d!2146599 d!2146291)))

(assert (=> bs!1823868 (= lambda!385637 lambda!385596)))

(declare-fun bs!1823869 () Bool)

(assert (= bs!1823869 (and d!2146599 d!2146037)))

(assert (=> bs!1823869 (= lambda!385637 lambda!385567)))

(declare-fun bs!1823870 () Bool)

(assert (= bs!1823870 (and d!2146599 d!2145995)))

(assert (=> bs!1823870 (= lambda!385637 lambda!385554)))

(declare-fun bs!1823871 () Bool)

(assert (= bs!1823871 (and d!2146599 d!2145867)))

(assert (=> bs!1823871 (= lambda!385637 lambda!385508)))

(assert (=> d!2146599 (= (inv!84844 (h!72542 (t!379957 zl!343))) (forall!15827 (exprs!6523 (h!72542 (t!379957 zl!343))) lambda!385637))))

(declare-fun bs!1823872 () Bool)

(assert (= bs!1823872 d!2146599))

(declare-fun m!7571626 () Bool)

(assert (=> bs!1823872 m!7571626))

(assert (=> b!6824962 d!2146599))

(assert (=> b!6824857 d!2145995))

(declare-fun bs!1823873 () Bool)

(declare-fun d!2146601 () Bool)

(assert (= bs!1823873 (and d!2146601 d!2146553)))

(declare-fun lambda!385638 () Int)

(assert (=> bs!1823873 (= lambda!385638 lambda!385630)))

(declare-fun bs!1823874 () Bool)

(assert (= bs!1823874 (and d!2146601 d!2146497)))

(assert (=> bs!1823874 (= lambda!385638 lambda!385615)))

(declare-fun bs!1823875 () Bool)

(assert (= bs!1823875 (and d!2146601 b!6823997)))

(assert (=> bs!1823875 (= lambda!385638 lambda!385483)))

(declare-fun bs!1823876 () Bool)

(assert (= bs!1823876 (and d!2146601 d!2146049)))

(assert (=> bs!1823876 (= lambda!385638 lambda!385570)))

(declare-fun bs!1823877 () Bool)

(assert (= bs!1823877 (and d!2146601 d!2146077)))

(assert (=> bs!1823877 (= lambda!385638 lambda!385576)))

(declare-fun bs!1823878 () Bool)

(assert (= bs!1823878 (and d!2146601 d!2146051)))

(assert (=> bs!1823878 (= lambda!385638 lambda!385573)))

(declare-fun bs!1823879 () Bool)

(assert (= bs!1823879 (and d!2146601 d!2146291)))

(assert (=> bs!1823879 (= lambda!385638 lambda!385596)))

(declare-fun bs!1823880 () Bool)

(assert (= bs!1823880 (and d!2146601 d!2146037)))

(assert (=> bs!1823880 (= lambda!385638 lambda!385567)))

(declare-fun bs!1823881 () Bool)

(assert (= bs!1823881 (and d!2146601 d!2146599)))

(assert (=> bs!1823881 (= lambda!385638 lambda!385637)))

(declare-fun bs!1823882 () Bool)

(assert (= bs!1823882 (and d!2146601 d!2146293)))

(assert (=> bs!1823882 (= lambda!385638 lambda!385597)))

(declare-fun bs!1823883 () Bool)

(assert (= bs!1823883 (and d!2146601 d!2145995)))

(assert (=> bs!1823883 (= lambda!385638 lambda!385554)))

(declare-fun bs!1823884 () Bool)

(assert (= bs!1823884 (and d!2146601 d!2145867)))

(assert (=> bs!1823884 (= lambda!385638 lambda!385508)))

(declare-fun lt!2452340 () List!66217)

(assert (=> d!2146601 (forall!15827 lt!2452340 lambda!385638)))

(declare-fun e!4117808 () List!66217)

(assert (=> d!2146601 (= lt!2452340 e!4117808)))

(declare-fun c!1270569 () Bool)

(assert (=> d!2146601 (= c!1270569 ((_ is Cons!66094) (t!379957 zl!343)))))

(assert (=> d!2146601 (= (unfocusZipperList!2060 (t!379957 zl!343)) lt!2452340)))

(declare-fun b!6825763 () Bool)

(assert (=> b!6825763 (= e!4117808 (Cons!66093 (generalisedConcat!2236 (exprs!6523 (h!72542 (t!379957 zl!343)))) (unfocusZipperList!2060 (t!379957 (t!379957 zl!343)))))))

(declare-fun b!6825764 () Bool)

(assert (=> b!6825764 (= e!4117808 Nil!66093)))

(assert (= (and d!2146601 c!1270569) b!6825763))

(assert (= (and d!2146601 (not c!1270569)) b!6825764))

(declare-fun m!7571628 () Bool)

(assert (=> d!2146601 m!7571628))

(declare-fun m!7571630 () Bool)

(assert (=> b!6825763 m!7571630))

(declare-fun m!7571632 () Bool)

(assert (=> b!6825763 m!7571632))

(assert (=> b!6824857 d!2146601))

(declare-fun bs!1823885 () Bool)

(declare-fun d!2146603 () Bool)

(assert (= bs!1823885 (and d!2146603 d!2146589)))

(declare-fun lambda!385639 () Int)

(assert (=> bs!1823885 (= lambda!385639 lambda!385635)))

(declare-fun bs!1823886 () Bool)

(assert (= bs!1823886 (and d!2146603 d!2146591)))

(assert (=> bs!1823886 (= lambda!385639 lambda!385636)))

(assert (=> d!2146603 (= (nullableZipper!2342 lt!2452058) (exists!2753 lt!2452058 lambda!385639))))

(declare-fun bs!1823887 () Bool)

(assert (= bs!1823887 d!2146603))

(declare-fun m!7571634 () Bool)

(assert (=> bs!1823887 m!7571634))

(assert (=> b!6824040 d!2146603))

(declare-fun b!6825765 () Bool)

(declare-fun e!4117809 () Bool)

(declare-fun e!4117812 () Bool)

(assert (=> b!6825765 (= e!4117809 e!4117812)))

(declare-fun c!1270571 () Bool)

(assert (=> b!6825765 (= c!1270571 ((_ is Star!16639) (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))))))

(declare-fun d!2146605 () Bool)

(declare-fun res!2787922 () Bool)

(assert (=> d!2146605 (=> res!2787922 e!4117809)))

(assert (=> d!2146605 (= res!2787922 ((_ is ElementMatch!16639) (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))))))

(assert (=> d!2146605 (= (validRegex!8375 (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))) e!4117809)))

(declare-fun c!1270570 () Bool)

(declare-fun bm!621307 () Bool)

(declare-fun call!621312 () Bool)

(assert (=> bm!621307 (= call!621312 (validRegex!8375 (ite c!1270570 (regOne!33791 (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))) (regOne!33790 (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))))))))

(declare-fun b!6825766 () Bool)

(declare-fun e!4117810 () Bool)

(assert (=> b!6825766 (= e!4117812 e!4117810)))

(assert (=> b!6825766 (= c!1270570 ((_ is Union!16639) (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))))))

(declare-fun b!6825767 () Bool)

(declare-fun e!4117813 () Bool)

(declare-fun call!621313 () Bool)

(assert (=> b!6825767 (= e!4117813 call!621313)))

(declare-fun b!6825768 () Bool)

(declare-fun e!4117811 () Bool)

(declare-fun call!621314 () Bool)

(assert (=> b!6825768 (= e!4117811 call!621314)))

(declare-fun b!6825769 () Bool)

(assert (=> b!6825769 (= e!4117812 e!4117813)))

(declare-fun res!2787924 () Bool)

(assert (=> b!6825769 (= res!2787924 (not (nullable!6614 (reg!16968 (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))))))))

(assert (=> b!6825769 (=> (not res!2787924) (not e!4117813))))

(declare-fun bm!621308 () Bool)

(assert (=> bm!621308 (= call!621314 call!621313)))

(declare-fun b!6825770 () Bool)

(declare-fun res!2787925 () Bool)

(declare-fun e!4117815 () Bool)

(assert (=> b!6825770 (=> res!2787925 e!4117815)))

(assert (=> b!6825770 (= res!2787925 (not ((_ is Concat!25484) (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292))))))))

(assert (=> b!6825770 (= e!4117810 e!4117815)))

(declare-fun b!6825771 () Bool)

(declare-fun res!2787926 () Bool)

(assert (=> b!6825771 (=> (not res!2787926) (not e!4117811))))

(assert (=> b!6825771 (= res!2787926 call!621312)))

(assert (=> b!6825771 (= e!4117810 e!4117811)))

(declare-fun b!6825772 () Bool)

(declare-fun e!4117814 () Bool)

(assert (=> b!6825772 (= e!4117814 call!621314)))

(declare-fun b!6825773 () Bool)

(assert (=> b!6825773 (= e!4117815 e!4117814)))

(declare-fun res!2787923 () Bool)

(assert (=> b!6825773 (=> (not res!2787923) (not e!4117814))))

(assert (=> b!6825773 (= res!2787923 call!621312)))

(declare-fun bm!621309 () Bool)

(assert (=> bm!621309 (= call!621313 (validRegex!8375 (ite c!1270571 (reg!16968 (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))) (ite c!1270570 (regTwo!33791 (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292)))) (regTwo!33790 (ite c!1270269 (reg!16968 r!7292) (ite c!1270268 (regTwo!33791 r!7292) (regTwo!33790 r!7292))))))))))

(assert (= (and d!2146605 (not res!2787922)) b!6825765))

(assert (= (and b!6825765 c!1270571) b!6825769))

(assert (= (and b!6825765 (not c!1270571)) b!6825766))

(assert (= (and b!6825769 res!2787924) b!6825767))

(assert (= (and b!6825766 c!1270570) b!6825771))

(assert (= (and b!6825766 (not c!1270570)) b!6825770))

(assert (= (and b!6825771 res!2787926) b!6825768))

(assert (= (and b!6825770 (not res!2787925)) b!6825773))

(assert (= (and b!6825773 res!2787923) b!6825772))

(assert (= (or b!6825768 b!6825772) bm!621308))

(assert (= (or b!6825771 b!6825773) bm!621307))

(assert (= (or b!6825767 bm!621308) bm!621309))

(declare-fun m!7571636 () Bool)

(assert (=> bm!621307 m!7571636))

(declare-fun m!7571638 () Bool)

(assert (=> b!6825769 m!7571638))

(declare-fun m!7571640 () Bool)

(assert (=> bm!621309 m!7571640))

(assert (=> bm!621144 d!2146605))

(declare-fun d!2146607 () Bool)

(declare-fun c!1270572 () Bool)

(assert (=> d!2146607 (= c!1270572 (isEmpty!38481 (_1!36917 (get!23028 lt!2452139))))))

(declare-fun e!4117816 () Bool)

(assert (=> d!2146607 (= (matchZipper!2625 lt!2452091 (_1!36917 (get!23028 lt!2452139))) e!4117816)))

(declare-fun b!6825774 () Bool)

(assert (=> b!6825774 (= e!4117816 (nullableZipper!2342 lt!2452091))))

(declare-fun b!6825775 () Bool)

(assert (=> b!6825775 (= e!4117816 (matchZipper!2625 (derivationStepZipper!2583 lt!2452091 (head!13681 (_1!36917 (get!23028 lt!2452139)))) (tail!12766 (_1!36917 (get!23028 lt!2452139)))))))

(assert (= (and d!2146607 c!1270572) b!6825774))

(assert (= (and d!2146607 (not c!1270572)) b!6825775))

(declare-fun m!7571642 () Bool)

(assert (=> d!2146607 m!7571642))

(assert (=> b!6825774 m!7570292))

(declare-fun m!7571644 () Bool)

(assert (=> b!6825775 m!7571644))

(assert (=> b!6825775 m!7571644))

(declare-fun m!7571646 () Bool)

(assert (=> b!6825775 m!7571646))

(declare-fun m!7571648 () Bool)

(assert (=> b!6825775 m!7571648))

(assert (=> b!6825775 m!7571646))

(assert (=> b!6825775 m!7571648))

(declare-fun m!7571650 () Bool)

(assert (=> b!6825775 m!7571650))

(assert (=> b!6824255 d!2146607))

(assert (=> b!6824255 d!2146373))

(declare-fun b!6825776 () Bool)

(declare-fun e!4117817 () Bool)

(assert (=> b!6825776 (= e!4117817 (= (head!13681 (_2!36917 (get!23028 lt!2452182))) (c!1270055 r!7292)))))

(declare-fun bm!621310 () Bool)

(declare-fun call!621315 () Bool)

(assert (=> bm!621310 (= call!621315 (isEmpty!38481 (_2!36917 (get!23028 lt!2452182))))))

(declare-fun b!6825777 () Bool)

(declare-fun e!4117818 () Bool)

(declare-fun lt!2452341 () Bool)

(assert (=> b!6825777 (= e!4117818 (not lt!2452341))))

(declare-fun b!6825778 () Bool)

(declare-fun e!4117821 () Bool)

(assert (=> b!6825778 (= e!4117821 e!4117818)))

(declare-fun c!1270573 () Bool)

(assert (=> b!6825778 (= c!1270573 ((_ is EmptyLang!16639) r!7292))))

(declare-fun b!6825779 () Bool)

(declare-fun res!2787927 () Bool)

(declare-fun e!4117823 () Bool)

(assert (=> b!6825779 (=> res!2787927 e!4117823)))

(assert (=> b!6825779 (= res!2787927 (not ((_ is ElementMatch!16639) r!7292)))))

(assert (=> b!6825779 (= e!4117818 e!4117823)))

(declare-fun b!6825780 () Bool)

(declare-fun e!4117822 () Bool)

(assert (=> b!6825780 (= e!4117823 e!4117822)))

(declare-fun res!2787933 () Bool)

(assert (=> b!6825780 (=> (not res!2787933) (not e!4117822))))

(assert (=> b!6825780 (= res!2787933 (not lt!2452341))))

(declare-fun d!2146609 () Bool)

(assert (=> d!2146609 e!4117821))

(declare-fun c!1270575 () Bool)

(assert (=> d!2146609 (= c!1270575 ((_ is EmptyExpr!16639) r!7292))))

(declare-fun e!4117819 () Bool)

(assert (=> d!2146609 (= lt!2452341 e!4117819)))

(declare-fun c!1270574 () Bool)

(assert (=> d!2146609 (= c!1270574 (isEmpty!38481 (_2!36917 (get!23028 lt!2452182))))))

(assert (=> d!2146609 (validRegex!8375 r!7292)))

(assert (=> d!2146609 (= (matchR!8822 r!7292 (_2!36917 (get!23028 lt!2452182))) lt!2452341)))

(declare-fun b!6825781 () Bool)

(declare-fun e!4117820 () Bool)

(assert (=> b!6825781 (= e!4117820 (not (= (head!13681 (_2!36917 (get!23028 lt!2452182))) (c!1270055 r!7292))))))

(declare-fun b!6825782 () Bool)

(assert (=> b!6825782 (= e!4117822 e!4117820)))

(declare-fun res!2787930 () Bool)

(assert (=> b!6825782 (=> res!2787930 e!4117820)))

(assert (=> b!6825782 (= res!2787930 call!621315)))

(declare-fun b!6825783 () Bool)

(assert (=> b!6825783 (= e!4117819 (matchR!8822 (derivativeStep!5299 r!7292 (head!13681 (_2!36917 (get!23028 lt!2452182)))) (tail!12766 (_2!36917 (get!23028 lt!2452182)))))))

(declare-fun b!6825784 () Bool)

(declare-fun res!2787934 () Bool)

(assert (=> b!6825784 (=> res!2787934 e!4117820)))

(assert (=> b!6825784 (= res!2787934 (not (isEmpty!38481 (tail!12766 (_2!36917 (get!23028 lt!2452182))))))))

(declare-fun b!6825785 () Bool)

(declare-fun res!2787931 () Bool)

(assert (=> b!6825785 (=> res!2787931 e!4117823)))

(assert (=> b!6825785 (= res!2787931 e!4117817)))

(declare-fun res!2787928 () Bool)

(assert (=> b!6825785 (=> (not res!2787928) (not e!4117817))))

(assert (=> b!6825785 (= res!2787928 lt!2452341)))

(declare-fun b!6825786 () Bool)

(assert (=> b!6825786 (= e!4117821 (= lt!2452341 call!621315))))

(declare-fun b!6825787 () Bool)

(declare-fun res!2787932 () Bool)

(assert (=> b!6825787 (=> (not res!2787932) (not e!4117817))))

(assert (=> b!6825787 (= res!2787932 (isEmpty!38481 (tail!12766 (_2!36917 (get!23028 lt!2452182)))))))

(declare-fun b!6825788 () Bool)

(declare-fun res!2787929 () Bool)

(assert (=> b!6825788 (=> (not res!2787929) (not e!4117817))))

(assert (=> b!6825788 (= res!2787929 (not call!621315))))

(declare-fun b!6825789 () Bool)

(assert (=> b!6825789 (= e!4117819 (nullable!6614 r!7292))))

(assert (= (and d!2146609 c!1270574) b!6825789))

(assert (= (and d!2146609 (not c!1270574)) b!6825783))

(assert (= (and d!2146609 c!1270575) b!6825786))

(assert (= (and d!2146609 (not c!1270575)) b!6825778))

(assert (= (and b!6825778 c!1270573) b!6825777))

(assert (= (and b!6825778 (not c!1270573)) b!6825779))

(assert (= (and b!6825779 (not res!2787927)) b!6825785))

(assert (= (and b!6825785 res!2787928) b!6825788))

(assert (= (and b!6825788 res!2787929) b!6825787))

(assert (= (and b!6825787 res!2787932) b!6825776))

(assert (= (and b!6825785 (not res!2787931)) b!6825780))

(assert (= (and b!6825780 res!2787933) b!6825782))

(assert (= (and b!6825782 (not res!2787930)) b!6825784))

(assert (= (and b!6825784 (not res!2787934)) b!6825781))

(assert (= (or b!6825786 b!6825782 b!6825788) bm!621310))

(declare-fun m!7571652 () Bool)

(assert (=> b!6825776 m!7571652))

(assert (=> b!6825789 m!7570380))

(assert (=> b!6825783 m!7571652))

(assert (=> b!6825783 m!7571652))

(declare-fun m!7571654 () Bool)

(assert (=> b!6825783 m!7571654))

(declare-fun m!7571656 () Bool)

(assert (=> b!6825783 m!7571656))

(assert (=> b!6825783 m!7571654))

(assert (=> b!6825783 m!7571656))

(declare-fun m!7571658 () Bool)

(assert (=> b!6825783 m!7571658))

(declare-fun m!7571660 () Bool)

(assert (=> bm!621310 m!7571660))

(assert (=> b!6825787 m!7571656))

(assert (=> b!6825787 m!7571656))

(declare-fun m!7571662 () Bool)

(assert (=> b!6825787 m!7571662))

(assert (=> d!2146609 m!7571660))

(assert (=> d!2146609 m!7569648))

(assert (=> b!6825781 m!7571652))

(assert (=> b!6825784 m!7571656))

(assert (=> b!6825784 m!7571656))

(assert (=> b!6825784 m!7571662))

(assert (=> b!6824459 d!2146609))

(assert (=> b!6824459 d!2146377))

(assert (=> bm!621131 d!2145913))

(assert (=> b!6824463 d!2146021))

(declare-fun bs!1823888 () Bool)

(declare-fun d!2146611 () Bool)

(assert (= bs!1823888 (and d!2146611 d!2146553)))

(declare-fun lambda!385640 () Int)

(assert (=> bs!1823888 (= lambda!385640 lambda!385630)))

(declare-fun bs!1823889 () Bool)

(assert (= bs!1823889 (and d!2146611 d!2146497)))

(assert (=> bs!1823889 (= lambda!385640 lambda!385615)))

(declare-fun bs!1823890 () Bool)

(assert (= bs!1823890 (and d!2146611 b!6823997)))

(assert (=> bs!1823890 (= lambda!385640 lambda!385483)))

(declare-fun bs!1823891 () Bool)

(assert (= bs!1823891 (and d!2146611 d!2146049)))

(assert (=> bs!1823891 (= lambda!385640 lambda!385570)))

(declare-fun bs!1823892 () Bool)

(assert (= bs!1823892 (and d!2146611 d!2146601)))

(assert (=> bs!1823892 (= lambda!385640 lambda!385638)))

(declare-fun bs!1823893 () Bool)

(assert (= bs!1823893 (and d!2146611 d!2146077)))

(assert (=> bs!1823893 (= lambda!385640 lambda!385576)))

(declare-fun bs!1823894 () Bool)

(assert (= bs!1823894 (and d!2146611 d!2146051)))

(assert (=> bs!1823894 (= lambda!385640 lambda!385573)))

(declare-fun bs!1823895 () Bool)

(assert (= bs!1823895 (and d!2146611 d!2146291)))

(assert (=> bs!1823895 (= lambda!385640 lambda!385596)))

(declare-fun bs!1823896 () Bool)

(assert (= bs!1823896 (and d!2146611 d!2146037)))

(assert (=> bs!1823896 (= lambda!385640 lambda!385567)))

(declare-fun bs!1823897 () Bool)

(assert (= bs!1823897 (and d!2146611 d!2146599)))

(assert (=> bs!1823897 (= lambda!385640 lambda!385637)))

(declare-fun bs!1823898 () Bool)

(assert (= bs!1823898 (and d!2146611 d!2146293)))

(assert (=> bs!1823898 (= lambda!385640 lambda!385597)))

(declare-fun bs!1823899 () Bool)

(assert (= bs!1823899 (and d!2146611 d!2145995)))

(assert (=> bs!1823899 (= lambda!385640 lambda!385554)))

(declare-fun bs!1823900 () Bool)

(assert (= bs!1823900 (and d!2146611 d!2145867)))

(assert (=> bs!1823900 (= lambda!385640 lambda!385508)))

(declare-fun b!6825790 () Bool)

(declare-fun e!4117824 () Regex!16639)

(assert (=> b!6825790 (= e!4117824 (Union!16639 (h!72541 (t!379956 (unfocusZipperList!2060 zl!343))) (generalisedUnion!2483 (t!379956 (t!379956 (unfocusZipperList!2060 zl!343))))))))

(declare-fun b!6825792 () Bool)

(declare-fun e!4117827 () Regex!16639)

(assert (=> b!6825792 (= e!4117827 (h!72541 (t!379956 (unfocusZipperList!2060 zl!343))))))

(declare-fun b!6825793 () Bool)

(declare-fun e!4117829 () Bool)

(declare-fun lt!2452342 () Regex!16639)

(assert (=> b!6825793 (= e!4117829 (isUnion!1431 lt!2452342))))

(declare-fun b!6825794 () Bool)

(declare-fun e!4117828 () Bool)

(assert (=> b!6825794 (= e!4117828 (isEmpty!38486 (t!379956 (t!379956 (unfocusZipperList!2060 zl!343)))))))

(declare-fun b!6825795 () Bool)

(assert (=> b!6825795 (= e!4117829 (= lt!2452342 (head!13682 (t!379956 (unfocusZipperList!2060 zl!343)))))))

(declare-fun b!6825796 () Bool)

(assert (=> b!6825796 (= e!4117824 EmptyLang!16639)))

(declare-fun b!6825797 () Bool)

(declare-fun e!4117825 () Bool)

(assert (=> b!6825797 (= e!4117825 (isEmptyLang!2001 lt!2452342))))

(declare-fun e!4117826 () Bool)

(assert (=> d!2146611 e!4117826))

(declare-fun res!2787935 () Bool)

(assert (=> d!2146611 (=> (not res!2787935) (not e!4117826))))

(assert (=> d!2146611 (= res!2787935 (validRegex!8375 lt!2452342))))

(assert (=> d!2146611 (= lt!2452342 e!4117827)))

(declare-fun c!1270576 () Bool)

(assert (=> d!2146611 (= c!1270576 e!4117828)))

(declare-fun res!2787936 () Bool)

(assert (=> d!2146611 (=> (not res!2787936) (not e!4117828))))

(assert (=> d!2146611 (= res!2787936 ((_ is Cons!66093) (t!379956 (unfocusZipperList!2060 zl!343))))))

(assert (=> d!2146611 (forall!15827 (t!379956 (unfocusZipperList!2060 zl!343)) lambda!385640)))

(assert (=> d!2146611 (= (generalisedUnion!2483 (t!379956 (unfocusZipperList!2060 zl!343))) lt!2452342)))

(declare-fun b!6825791 () Bool)

(assert (=> b!6825791 (= e!4117825 e!4117829)))

(declare-fun c!1270577 () Bool)

(assert (=> b!6825791 (= c!1270577 (isEmpty!38486 (tail!12767 (t!379956 (unfocusZipperList!2060 zl!343)))))))

(declare-fun b!6825798 () Bool)

(assert (=> b!6825798 (= e!4117827 e!4117824)))

(declare-fun c!1270579 () Bool)

(assert (=> b!6825798 (= c!1270579 ((_ is Cons!66093) (t!379956 (unfocusZipperList!2060 zl!343))))))

(declare-fun b!6825799 () Bool)

(assert (=> b!6825799 (= e!4117826 e!4117825)))

(declare-fun c!1270578 () Bool)

(assert (=> b!6825799 (= c!1270578 (isEmpty!38486 (t!379956 (unfocusZipperList!2060 zl!343))))))

(assert (= (and d!2146611 res!2787936) b!6825794))

(assert (= (and d!2146611 c!1270576) b!6825792))

(assert (= (and d!2146611 (not c!1270576)) b!6825798))

(assert (= (and b!6825798 c!1270579) b!6825790))

(assert (= (and b!6825798 (not c!1270579)) b!6825796))

(assert (= (and d!2146611 res!2787935) b!6825799))

(assert (= (and b!6825799 c!1270578) b!6825797))

(assert (= (and b!6825799 (not c!1270578)) b!6825791))

(assert (= (and b!6825791 c!1270577) b!6825795))

(assert (= (and b!6825791 (not c!1270577)) b!6825793))

(declare-fun m!7571664 () Bool)

(assert (=> b!6825790 m!7571664))

(declare-fun m!7571666 () Bool)

(assert (=> b!6825793 m!7571666))

(declare-fun m!7571668 () Bool)

(assert (=> b!6825794 m!7571668))

(declare-fun m!7571670 () Bool)

(assert (=> b!6825791 m!7571670))

(assert (=> b!6825791 m!7571670))

(declare-fun m!7571672 () Bool)

(assert (=> b!6825791 m!7571672))

(declare-fun m!7571674 () Bool)

(assert (=> d!2146611 m!7571674))

(declare-fun m!7571676 () Bool)

(assert (=> d!2146611 m!7571676))

(declare-fun m!7571678 () Bool)

(assert (=> b!6825797 m!7571678))

(assert (=> b!6825799 m!7570452))

(declare-fun m!7571680 () Bool)

(assert (=> b!6825795 m!7571680))

(assert (=> b!6824843 d!2146611))

(declare-fun d!2146613 () Bool)

(assert (=> d!2146613 (= (Exists!3707 (ite c!1270301 lambda!385574 lambda!385575)) (choose!50883 (ite c!1270301 lambda!385574 lambda!385575)))))

(declare-fun bs!1823901 () Bool)

(assert (= bs!1823901 d!2146613))

(declare-fun m!7571682 () Bool)

(assert (=> bs!1823901 m!7571682))

(assert (=> bm!621155 d!2146613))

(declare-fun e!4117832 () (InoxSet Context!12046))

(declare-fun call!621316 () (InoxSet Context!12046))

(declare-fun b!6825800 () Bool)

(assert (=> b!6825800 (= e!4117832 ((_ map or) call!621316 (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))))) (h!72540 s!2326))))))

(declare-fun b!6825801 () Bool)

(declare-fun e!4117831 () (InoxSet Context!12046))

(assert (=> b!6825801 (= e!4117831 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825802 () Bool)

(assert (=> b!6825802 (= e!4117832 e!4117831)))

(declare-fun c!1270581 () Bool)

(assert (=> b!6825802 (= c!1270581 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))))))

(declare-fun d!2146615 () Bool)

(declare-fun c!1270580 () Bool)

(declare-fun e!4117830 () Bool)

(assert (=> d!2146615 (= c!1270580 e!4117830)))

(declare-fun res!2787937 () Bool)

(assert (=> d!2146615 (=> (not res!2787937) (not e!4117830))))

(assert (=> d!2146615 (= res!2787937 ((_ is Cons!66093) (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))))))

(assert (=> d!2146615 (= (derivationStepZipperUp!1793 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))) (h!72540 s!2326)) e!4117832)))

(declare-fun b!6825803 () Bool)

(assert (=> b!6825803 (= e!4117830 (nullable!6614 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))))))))

(declare-fun b!6825804 () Bool)

(assert (=> b!6825804 (= e!4117831 call!621316)))

(declare-fun bm!621311 () Bool)

(assert (=> bm!621311 (= call!621316 (derivationStepZipperDown!1867 (h!72541 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093))))))) (Context!12047 (t!379956 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 (Context!12047 (Cons!66093 r!7292 Nil!66093)))))))) (h!72540 s!2326)))))

(assert (= (and d!2146615 res!2787937) b!6825803))

(assert (= (and d!2146615 c!1270580) b!6825800))

(assert (= (and d!2146615 (not c!1270580)) b!6825802))

(assert (= (and b!6825802 c!1270581) b!6825804))

(assert (= (and b!6825802 (not c!1270581)) b!6825801))

(assert (= (or b!6825800 b!6825804) bm!621311))

(declare-fun m!7571684 () Bool)

(assert (=> b!6825800 m!7571684))

(declare-fun m!7571686 () Bool)

(assert (=> b!6825803 m!7571686))

(declare-fun m!7571688 () Bool)

(assert (=> bm!621311 m!7571688))

(assert (=> b!6824551 d!2146615))

(declare-fun b!6825805 () Bool)

(declare-fun e!4117833 () Bool)

(declare-fun e!4117836 () Bool)

(assert (=> b!6825805 (= e!4117833 e!4117836)))

(declare-fun c!1270583 () Bool)

(assert (=> b!6825805 (= c!1270583 ((_ is Star!16639) lt!2452098))))

(declare-fun d!2146617 () Bool)

(declare-fun res!2787938 () Bool)

(assert (=> d!2146617 (=> res!2787938 e!4117833)))

(assert (=> d!2146617 (= res!2787938 ((_ is ElementMatch!16639) lt!2452098))))

(assert (=> d!2146617 (= (validRegex!8375 lt!2452098) e!4117833)))

(declare-fun bm!621312 () Bool)

(declare-fun call!621317 () Bool)

(declare-fun c!1270582 () Bool)

(assert (=> bm!621312 (= call!621317 (validRegex!8375 (ite c!1270582 (regOne!33791 lt!2452098) (regOne!33790 lt!2452098))))))

(declare-fun b!6825806 () Bool)

(declare-fun e!4117834 () Bool)

(assert (=> b!6825806 (= e!4117836 e!4117834)))

(assert (=> b!6825806 (= c!1270582 ((_ is Union!16639) lt!2452098))))

(declare-fun b!6825807 () Bool)

(declare-fun e!4117837 () Bool)

(declare-fun call!621318 () Bool)

(assert (=> b!6825807 (= e!4117837 call!621318)))

(declare-fun b!6825808 () Bool)

(declare-fun e!4117835 () Bool)

(declare-fun call!621319 () Bool)

(assert (=> b!6825808 (= e!4117835 call!621319)))

(declare-fun b!6825809 () Bool)

(assert (=> b!6825809 (= e!4117836 e!4117837)))

(declare-fun res!2787940 () Bool)

(assert (=> b!6825809 (= res!2787940 (not (nullable!6614 (reg!16968 lt!2452098))))))

(assert (=> b!6825809 (=> (not res!2787940) (not e!4117837))))

(declare-fun bm!621313 () Bool)

(assert (=> bm!621313 (= call!621319 call!621318)))

(declare-fun b!6825810 () Bool)

(declare-fun res!2787941 () Bool)

(declare-fun e!4117839 () Bool)

(assert (=> b!6825810 (=> res!2787941 e!4117839)))

(assert (=> b!6825810 (= res!2787941 (not ((_ is Concat!25484) lt!2452098)))))

(assert (=> b!6825810 (= e!4117834 e!4117839)))

(declare-fun b!6825811 () Bool)

(declare-fun res!2787942 () Bool)

(assert (=> b!6825811 (=> (not res!2787942) (not e!4117835))))

(assert (=> b!6825811 (= res!2787942 call!621317)))

(assert (=> b!6825811 (= e!4117834 e!4117835)))

(declare-fun b!6825812 () Bool)

(declare-fun e!4117838 () Bool)

(assert (=> b!6825812 (= e!4117838 call!621319)))

(declare-fun b!6825813 () Bool)

(assert (=> b!6825813 (= e!4117839 e!4117838)))

(declare-fun res!2787939 () Bool)

(assert (=> b!6825813 (=> (not res!2787939) (not e!4117838))))

(assert (=> b!6825813 (= res!2787939 call!621317)))

(declare-fun bm!621314 () Bool)

(assert (=> bm!621314 (= call!621318 (validRegex!8375 (ite c!1270583 (reg!16968 lt!2452098) (ite c!1270582 (regTwo!33791 lt!2452098) (regTwo!33790 lt!2452098)))))))

(assert (= (and d!2146617 (not res!2787938)) b!6825805))

(assert (= (and b!6825805 c!1270583) b!6825809))

(assert (= (and b!6825805 (not c!1270583)) b!6825806))

(assert (= (and b!6825809 res!2787940) b!6825807))

(assert (= (and b!6825806 c!1270582) b!6825811))

(assert (= (and b!6825806 (not c!1270582)) b!6825810))

(assert (= (and b!6825811 res!2787942) b!6825808))

(assert (= (and b!6825810 (not res!2787941)) b!6825813))

(assert (= (and b!6825813 res!2787939) b!6825812))

(assert (= (or b!6825808 b!6825812) bm!621313))

(assert (= (or b!6825811 b!6825813) bm!621312))

(assert (= (or b!6825807 bm!621313) bm!621314))

(declare-fun m!7571690 () Bool)

(assert (=> bm!621312 m!7571690))

(declare-fun m!7571692 () Bool)

(assert (=> b!6825809 m!7571692))

(declare-fun m!7571694 () Bool)

(assert (=> bm!621314 m!7571694))

(assert (=> d!2145819 d!2146617))

(declare-fun bs!1823902 () Bool)

(declare-fun d!2146619 () Bool)

(assert (= bs!1823902 (and d!2146619 d!2146553)))

(declare-fun lambda!385641 () Int)

(assert (=> bs!1823902 (= lambda!385641 lambda!385630)))

(declare-fun bs!1823903 () Bool)

(assert (= bs!1823903 (and d!2146619 d!2146611)))

(assert (=> bs!1823903 (= lambda!385641 lambda!385640)))

(declare-fun bs!1823904 () Bool)

(assert (= bs!1823904 (and d!2146619 d!2146497)))

(assert (=> bs!1823904 (= lambda!385641 lambda!385615)))

(declare-fun bs!1823905 () Bool)

(assert (= bs!1823905 (and d!2146619 b!6823997)))

(assert (=> bs!1823905 (= lambda!385641 lambda!385483)))

(declare-fun bs!1823906 () Bool)

(assert (= bs!1823906 (and d!2146619 d!2146049)))

(assert (=> bs!1823906 (= lambda!385641 lambda!385570)))

(declare-fun bs!1823907 () Bool)

(assert (= bs!1823907 (and d!2146619 d!2146601)))

(assert (=> bs!1823907 (= lambda!385641 lambda!385638)))

(declare-fun bs!1823908 () Bool)

(assert (= bs!1823908 (and d!2146619 d!2146077)))

(assert (=> bs!1823908 (= lambda!385641 lambda!385576)))

(declare-fun bs!1823909 () Bool)

(assert (= bs!1823909 (and d!2146619 d!2146051)))

(assert (=> bs!1823909 (= lambda!385641 lambda!385573)))

(declare-fun bs!1823910 () Bool)

(assert (= bs!1823910 (and d!2146619 d!2146291)))

(assert (=> bs!1823910 (= lambda!385641 lambda!385596)))

(declare-fun bs!1823911 () Bool)

(assert (= bs!1823911 (and d!2146619 d!2146037)))

(assert (=> bs!1823911 (= lambda!385641 lambda!385567)))

(declare-fun bs!1823912 () Bool)

(assert (= bs!1823912 (and d!2146619 d!2146599)))

(assert (=> bs!1823912 (= lambda!385641 lambda!385637)))

(declare-fun bs!1823913 () Bool)

(assert (= bs!1823913 (and d!2146619 d!2146293)))

(assert (=> bs!1823913 (= lambda!385641 lambda!385597)))

(declare-fun bs!1823914 () Bool)

(assert (= bs!1823914 (and d!2146619 d!2145995)))

(assert (=> bs!1823914 (= lambda!385641 lambda!385554)))

(declare-fun bs!1823915 () Bool)

(assert (= bs!1823915 (and d!2146619 d!2145867)))

(assert (=> bs!1823915 (= lambda!385641 lambda!385508)))

(declare-fun b!6825814 () Bool)

(declare-fun e!4117840 () Regex!16639)

(assert (=> b!6825814 (= e!4117840 (Union!16639 (h!72541 (unfocusZipperList!2060 lt!2452069)) (generalisedUnion!2483 (t!379956 (unfocusZipperList!2060 lt!2452069)))))))

(declare-fun b!6825816 () Bool)

(declare-fun e!4117843 () Regex!16639)

(assert (=> b!6825816 (= e!4117843 (h!72541 (unfocusZipperList!2060 lt!2452069)))))

(declare-fun b!6825817 () Bool)

(declare-fun e!4117845 () Bool)

(declare-fun lt!2452343 () Regex!16639)

(assert (=> b!6825817 (= e!4117845 (isUnion!1431 lt!2452343))))

(declare-fun b!6825818 () Bool)

(declare-fun e!4117844 () Bool)

(assert (=> b!6825818 (= e!4117844 (isEmpty!38486 (t!379956 (unfocusZipperList!2060 lt!2452069))))))

(declare-fun b!6825819 () Bool)

(assert (=> b!6825819 (= e!4117845 (= lt!2452343 (head!13682 (unfocusZipperList!2060 lt!2452069))))))

(declare-fun b!6825820 () Bool)

(assert (=> b!6825820 (= e!4117840 EmptyLang!16639)))

(declare-fun b!6825821 () Bool)

(declare-fun e!4117841 () Bool)

(assert (=> b!6825821 (= e!4117841 (isEmptyLang!2001 lt!2452343))))

(declare-fun e!4117842 () Bool)

(assert (=> d!2146619 e!4117842))

(declare-fun res!2787943 () Bool)

(assert (=> d!2146619 (=> (not res!2787943) (not e!4117842))))

(assert (=> d!2146619 (= res!2787943 (validRegex!8375 lt!2452343))))

(assert (=> d!2146619 (= lt!2452343 e!4117843)))

(declare-fun c!1270584 () Bool)

(assert (=> d!2146619 (= c!1270584 e!4117844)))

(declare-fun res!2787944 () Bool)

(assert (=> d!2146619 (=> (not res!2787944) (not e!4117844))))

(assert (=> d!2146619 (= res!2787944 ((_ is Cons!66093) (unfocusZipperList!2060 lt!2452069)))))

(assert (=> d!2146619 (forall!15827 (unfocusZipperList!2060 lt!2452069) lambda!385641)))

(assert (=> d!2146619 (= (generalisedUnion!2483 (unfocusZipperList!2060 lt!2452069)) lt!2452343)))

(declare-fun b!6825815 () Bool)

(assert (=> b!6825815 (= e!4117841 e!4117845)))

(declare-fun c!1270585 () Bool)

(assert (=> b!6825815 (= c!1270585 (isEmpty!38486 (tail!12767 (unfocusZipperList!2060 lt!2452069))))))

(declare-fun b!6825822 () Bool)

(assert (=> b!6825822 (= e!4117843 e!4117840)))

(declare-fun c!1270587 () Bool)

(assert (=> b!6825822 (= c!1270587 ((_ is Cons!66093) (unfocusZipperList!2060 lt!2452069)))))

(declare-fun b!6825823 () Bool)

(assert (=> b!6825823 (= e!4117842 e!4117841)))

(declare-fun c!1270586 () Bool)

(assert (=> b!6825823 (= c!1270586 (isEmpty!38486 (unfocusZipperList!2060 lt!2452069)))))

(assert (= (and d!2146619 res!2787944) b!6825818))

(assert (= (and d!2146619 c!1270584) b!6825816))

(assert (= (and d!2146619 (not c!1270584)) b!6825822))

(assert (= (and b!6825822 c!1270587) b!6825814))

(assert (= (and b!6825822 (not c!1270587)) b!6825820))

(assert (= (and d!2146619 res!2787943) b!6825823))

(assert (= (and b!6825823 c!1270586) b!6825821))

(assert (= (and b!6825823 (not c!1270586)) b!6825815))

(assert (= (and b!6825815 c!1270585) b!6825819))

(assert (= (and b!6825815 (not c!1270585)) b!6825817))

(declare-fun m!7571696 () Bool)

(assert (=> b!6825814 m!7571696))

(declare-fun m!7571698 () Bool)

(assert (=> b!6825817 m!7571698))

(declare-fun m!7571700 () Bool)

(assert (=> b!6825818 m!7571700))

(assert (=> b!6825815 m!7569748))

(declare-fun m!7571702 () Bool)

(assert (=> b!6825815 m!7571702))

(assert (=> b!6825815 m!7571702))

(declare-fun m!7571704 () Bool)

(assert (=> b!6825815 m!7571704))

(declare-fun m!7571706 () Bool)

(assert (=> d!2146619 m!7571706))

(assert (=> d!2146619 m!7569748))

(declare-fun m!7571708 () Bool)

(assert (=> d!2146619 m!7571708))

(declare-fun m!7571710 () Bool)

(assert (=> b!6825821 m!7571710))

(assert (=> b!6825823 m!7569748))

(declare-fun m!7571712 () Bool)

(assert (=> b!6825823 m!7571712))

(assert (=> b!6825819 m!7569748))

(declare-fun m!7571714 () Bool)

(assert (=> b!6825819 m!7571714))

(assert (=> d!2145819 d!2146619))

(declare-fun bs!1823916 () Bool)

(declare-fun d!2146621 () Bool)

(assert (= bs!1823916 (and d!2146621 d!2146553)))

(declare-fun lambda!385642 () Int)

(assert (=> bs!1823916 (= lambda!385642 lambda!385630)))

(declare-fun bs!1823917 () Bool)

(assert (= bs!1823917 (and d!2146621 d!2146611)))

(assert (=> bs!1823917 (= lambda!385642 lambda!385640)))

(declare-fun bs!1823918 () Bool)

(assert (= bs!1823918 (and d!2146621 d!2146497)))

(assert (=> bs!1823918 (= lambda!385642 lambda!385615)))

(declare-fun bs!1823919 () Bool)

(assert (= bs!1823919 (and d!2146621 b!6823997)))

(assert (=> bs!1823919 (= lambda!385642 lambda!385483)))

(declare-fun bs!1823920 () Bool)

(assert (= bs!1823920 (and d!2146621 d!2146049)))

(assert (=> bs!1823920 (= lambda!385642 lambda!385570)))

(declare-fun bs!1823921 () Bool)

(assert (= bs!1823921 (and d!2146621 d!2146601)))

(assert (=> bs!1823921 (= lambda!385642 lambda!385638)))

(declare-fun bs!1823922 () Bool)

(assert (= bs!1823922 (and d!2146621 d!2146077)))

(assert (=> bs!1823922 (= lambda!385642 lambda!385576)))

(declare-fun bs!1823923 () Bool)

(assert (= bs!1823923 (and d!2146621 d!2146051)))

(assert (=> bs!1823923 (= lambda!385642 lambda!385573)))

(declare-fun bs!1823924 () Bool)

(assert (= bs!1823924 (and d!2146621 d!2146291)))

(assert (=> bs!1823924 (= lambda!385642 lambda!385596)))

(declare-fun bs!1823925 () Bool)

(assert (= bs!1823925 (and d!2146621 d!2146599)))

(assert (=> bs!1823925 (= lambda!385642 lambda!385637)))

(declare-fun bs!1823926 () Bool)

(assert (= bs!1823926 (and d!2146621 d!2146293)))

(assert (=> bs!1823926 (= lambda!385642 lambda!385597)))

(declare-fun bs!1823927 () Bool)

(assert (= bs!1823927 (and d!2146621 d!2145995)))

(assert (=> bs!1823927 (= lambda!385642 lambda!385554)))

(declare-fun bs!1823928 () Bool)

(assert (= bs!1823928 (and d!2146621 d!2145867)))

(assert (=> bs!1823928 (= lambda!385642 lambda!385508)))

(declare-fun bs!1823929 () Bool)

(assert (= bs!1823929 (and d!2146621 d!2146619)))

(assert (=> bs!1823929 (= lambda!385642 lambda!385641)))

(declare-fun bs!1823930 () Bool)

(assert (= bs!1823930 (and d!2146621 d!2146037)))

(assert (=> bs!1823930 (= lambda!385642 lambda!385567)))

(declare-fun lt!2452344 () List!66217)

(assert (=> d!2146621 (forall!15827 lt!2452344 lambda!385642)))

(declare-fun e!4117846 () List!66217)

(assert (=> d!2146621 (= lt!2452344 e!4117846)))

(declare-fun c!1270588 () Bool)

(assert (=> d!2146621 (= c!1270588 ((_ is Cons!66094) lt!2452069))))

(assert (=> d!2146621 (= (unfocusZipperList!2060 lt!2452069) lt!2452344)))

(declare-fun b!6825824 () Bool)

(assert (=> b!6825824 (= e!4117846 (Cons!66093 (generalisedConcat!2236 (exprs!6523 (h!72542 lt!2452069))) (unfocusZipperList!2060 (t!379957 lt!2452069))))))

(declare-fun b!6825825 () Bool)

(assert (=> b!6825825 (= e!4117846 Nil!66093)))

(assert (= (and d!2146621 c!1270588) b!6825824))

(assert (= (and d!2146621 (not c!1270588)) b!6825825))

(declare-fun m!7571716 () Bool)

(assert (=> d!2146621 m!7571716))

(declare-fun m!7571718 () Bool)

(assert (=> b!6825824 m!7571718))

(declare-fun m!7571720 () Bool)

(assert (=> b!6825824 m!7571720))

(assert (=> d!2145819 d!2146621))

(declare-fun d!2146623 () Bool)

(assert (=> d!2146623 (= (isEmpty!38486 (exprs!6523 (h!72542 zl!343))) ((_ is Nil!66093) (exprs!6523 (h!72542 zl!343))))))

(assert (=> b!6824601 d!2146623))

(assert (=> b!6824814 d!2146321))

(declare-fun bs!1823931 () Bool)

(declare-fun d!2146625 () Bool)

(assert (= bs!1823931 (and d!2146625 d!2146589)))

(declare-fun lambda!385643 () Int)

(assert (=> bs!1823931 (= lambda!385643 lambda!385635)))

(declare-fun bs!1823932 () Bool)

(assert (= bs!1823932 (and d!2146625 d!2146591)))

(assert (=> bs!1823932 (= lambda!385643 lambda!385636)))

(declare-fun bs!1823933 () Bool)

(assert (= bs!1823933 (and d!2146625 d!2146603)))

(assert (=> bs!1823933 (= lambda!385643 lambda!385639)))

(assert (=> d!2146625 (= (nullableZipper!2342 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true)) (exists!2753 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 lt!2452077 lt!2452065)) true) lambda!385643))))

(declare-fun bs!1823934 () Bool)

(assert (= bs!1823934 d!2146625))

(assert (=> bs!1823934 m!7569650))

(declare-fun m!7571722 () Bool)

(assert (=> bs!1823934 m!7571722))

(assert (=> b!6824807 d!2146625))

(declare-fun d!2146627 () Bool)

(assert (=> d!2146627 true))

(assert (=> d!2146627 true))

(declare-fun res!2787945 () Bool)

(assert (=> d!2146627 (= (choose!50883 lambda!385478) res!2787945)))

(assert (=> d!2145915 d!2146627))

(declare-fun d!2146629 () Bool)

(declare-fun c!1270589 () Bool)

(assert (=> d!2146629 (= c!1270589 (isEmpty!38481 s!2326))))

(declare-fun e!4117847 () Bool)

(assert (=> d!2146629 (= (matchZipper!2625 (appendTo!244 lt!2452091 lt!2452076) s!2326) e!4117847)))

(declare-fun b!6825826 () Bool)

(assert (=> b!6825826 (= e!4117847 (nullableZipper!2342 (appendTo!244 lt!2452091 lt!2452076)))))

(declare-fun b!6825827 () Bool)

(assert (=> b!6825827 (= e!4117847 (matchZipper!2625 (derivationStepZipper!2583 (appendTo!244 lt!2452091 lt!2452076) (head!13681 s!2326)) (tail!12766 s!2326)))))

(assert (= (and d!2146629 c!1270589) b!6825826))

(assert (= (and d!2146629 (not c!1270589)) b!6825827))

(assert (=> d!2146629 m!7569622))

(assert (=> b!6825826 m!7569714))

(declare-fun m!7571724 () Bool)

(assert (=> b!6825826 m!7571724))

(assert (=> b!6825827 m!7569754))

(assert (=> b!6825827 m!7569714))

(assert (=> b!6825827 m!7569754))

(declare-fun m!7571726 () Bool)

(assert (=> b!6825827 m!7571726))

(assert (=> b!6825827 m!7569758))

(assert (=> b!6825827 m!7571726))

(assert (=> b!6825827 m!7569758))

(declare-fun m!7571728 () Bool)

(assert (=> b!6825827 m!7571728))

(assert (=> d!2145831 d!2146629))

(declare-fun d!2146631 () Bool)

(assert (=> d!2146631 (isDefined!13229 (findConcatSeparationZippers!248 lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true) Nil!66092 s!2326 s!2326))))

(assert (=> d!2146631 true))

(declare-fun _$50!533 () Unit!159969)

(assert (=> d!2146631 (= (choose!50881 lt!2452091 lt!2452076 s!2326) _$50!533)))

(declare-fun bs!1823935 () Bool)

(assert (= bs!1823935 d!2146631))

(assert (=> bs!1823935 m!7569678))

(assert (=> bs!1823935 m!7569678))

(assert (=> bs!1823935 m!7569828))

(assert (=> bs!1823935 m!7569828))

(assert (=> bs!1823935 m!7569832))

(assert (=> d!2145831 d!2146631))

(assert (=> d!2145831 d!2146085))

(declare-fun b!6825832 () Bool)

(declare-fun e!4117851 () Bool)

(assert (=> b!6825832 (= e!4117851 (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true) s!2326))))

(declare-fun b!6825833 () Bool)

(declare-fun e!4117852 () Option!16526)

(declare-fun e!4117850 () Option!16526)

(assert (=> b!6825833 (= e!4117852 e!4117850)))

(declare-fun c!1270591 () Bool)

(assert (=> b!6825833 (= c!1270591 ((_ is Nil!66092) s!2326))))

(declare-fun b!6825834 () Bool)

(declare-fun res!2787951 () Bool)

(declare-fun e!4117853 () Bool)

(assert (=> b!6825834 (=> (not res!2787951) (not e!4117853))))

(declare-fun lt!2452347 () Option!16526)

(assert (=> b!6825834 (= res!2787951 (matchZipper!2625 lt!2452091 (_1!36917 (get!23028 lt!2452347))))))

(declare-fun b!6825835 () Bool)

(declare-fun e!4117854 () Bool)

(assert (=> b!6825835 (= e!4117854 (not (isDefined!13229 lt!2452347)))))

(declare-fun b!6825836 () Bool)

(declare-fun res!2787954 () Bool)

(assert (=> b!6825836 (=> (not res!2787954) (not e!4117853))))

(assert (=> b!6825836 (= res!2787954 (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true) (_2!36917 (get!23028 lt!2452347))))))

(declare-fun d!2146633 () Bool)

(assert (=> d!2146633 e!4117854))

(declare-fun res!2787950 () Bool)

(assert (=> d!2146633 (=> res!2787950 e!4117854)))

(assert (=> d!2146633 (= res!2787950 e!4117853)))

(declare-fun res!2787953 () Bool)

(assert (=> d!2146633 (=> (not res!2787953) (not e!4117853))))

(assert (=> d!2146633 (= res!2787953 (isDefined!13229 lt!2452347))))

(assert (=> d!2146633 (= lt!2452347 e!4117852)))

(declare-fun c!1270590 () Bool)

(assert (=> d!2146633 (= c!1270590 e!4117851)))

(declare-fun res!2787952 () Bool)

(assert (=> d!2146633 (=> (not res!2787952) (not e!4117851))))

(assert (=> d!2146633 (= res!2787952 (matchZipper!2625 lt!2452091 Nil!66092))))

(assert (=> d!2146633 (= (++!14825 Nil!66092 s!2326) s!2326)))

(assert (=> d!2146633 (= (findConcatSeparationZippers!248 lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true) Nil!66092 s!2326 s!2326) lt!2452347)))

(declare-fun b!6825837 () Bool)

(assert (=> b!6825837 (= e!4117853 (= (++!14825 (_1!36917 (get!23028 lt!2452347)) (_2!36917 (get!23028 lt!2452347))) s!2326))))

(declare-fun b!6825838 () Bool)

(assert (=> b!6825838 (= e!4117852 (Some!16525 (tuple2!67229 Nil!66092 s!2326)))))

(declare-fun b!6825839 () Bool)

(assert (=> b!6825839 (= e!4117850 None!16525)))

(declare-fun b!6825840 () Bool)

(declare-fun lt!2452345 () Unit!159969)

(declare-fun lt!2452346 () Unit!159969)

(assert (=> b!6825840 (= lt!2452345 lt!2452346)))

(assert (=> b!6825840 (= (++!14825 (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326)) s!2326)))

(assert (=> b!6825840 (= lt!2452346 (lemmaMoveElementToOtherListKeepsConcatEq!2755 Nil!66092 (h!72540 s!2326) (t!379955 s!2326) s!2326))))

(assert (=> b!6825840 (= e!4117850 (findConcatSeparationZippers!248 lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true) (++!14825 Nil!66092 (Cons!66092 (h!72540 s!2326) Nil!66092)) (t!379955 s!2326) s!2326))))

(assert (= (and d!2146633 res!2787952) b!6825832))

(assert (= (and d!2146633 c!1270590) b!6825838))

(assert (= (and d!2146633 (not c!1270590)) b!6825833))

(assert (= (and b!6825833 c!1270591) b!6825839))

(assert (= (and b!6825833 (not c!1270591)) b!6825840))

(assert (= (and d!2146633 res!2787953) b!6825834))

(assert (= (and b!6825834 res!2787951) b!6825836))

(assert (= (and b!6825836 res!2787954) b!6825837))

(assert (= (and d!2146633 (not res!2787950)) b!6825835))

(declare-fun m!7571730 () Bool)

(assert (=> b!6825834 m!7571730))

(declare-fun m!7571732 () Bool)

(assert (=> b!6825834 m!7571732))

(assert (=> b!6825837 m!7571730))

(declare-fun m!7571734 () Bool)

(assert (=> b!6825837 m!7571734))

(assert (=> b!6825836 m!7571730))

(assert (=> b!6825836 m!7569678))

(declare-fun m!7571736 () Bool)

(assert (=> b!6825836 m!7571736))

(assert (=> b!6825840 m!7569922))

(assert (=> b!6825840 m!7569922))

(assert (=> b!6825840 m!7569924))

(assert (=> b!6825840 m!7569926))

(assert (=> b!6825840 m!7569678))

(assert (=> b!6825840 m!7569922))

(declare-fun m!7571738 () Bool)

(assert (=> b!6825840 m!7571738))

(declare-fun m!7571740 () Bool)

(assert (=> d!2146633 m!7571740))

(assert (=> d!2146633 m!7569932))

(assert (=> d!2146633 m!7569934))

(assert (=> b!6825832 m!7569678))

(declare-fun m!7571742 () Bool)

(assert (=> b!6825832 m!7571742))

(assert (=> b!6825835 m!7571740))

(assert (=> d!2145831 d!2146633))

(declare-fun d!2146635 () Bool)

(assert (=> d!2146635 (= (isDefined!13229 (findConcatSeparationZippers!248 lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true) Nil!66092 s!2326 s!2326)) (not (isEmpty!38484 (findConcatSeparationZippers!248 lt!2452091 (store ((as const (Array Context!12046 Bool)) false) lt!2452076 true) Nil!66092 s!2326 s!2326))))))

(declare-fun bs!1823944 () Bool)

(assert (= bs!1823944 d!2146635))

(assert (=> bs!1823944 m!7569828))

(declare-fun m!7571744 () Bool)

(assert (=> bs!1823944 m!7571744))

(assert (=> d!2145831 d!2146635))

(declare-fun d!2146637 () Bool)

(declare-fun c!1270594 () Bool)

(assert (=> d!2146637 (= c!1270594 (and ((_ is ElementMatch!16639) (h!72541 (exprs!6523 lt!2452078))) (= (c!1270055 (h!72541 (exprs!6523 lt!2452078))) (h!72540 s!2326))))))

(declare-fun e!4117858 () (InoxSet Context!12046))

(assert (=> d!2146637 (= (derivationStepZipperDown!1867 (h!72541 (exprs!6523 lt!2452078)) (Context!12047 (t!379956 (exprs!6523 lt!2452078))) (h!72540 s!2326)) e!4117858)))

(declare-fun c!1270593 () Bool)

(declare-fun bm!621315 () Bool)

(declare-fun call!621323 () (InoxSet Context!12046))

(declare-fun call!621325 () List!66217)

(assert (=> bm!621315 (= call!621323 (derivationStepZipperDown!1867 (ite c!1270593 (regTwo!33791 (h!72541 (exprs!6523 lt!2452078))) (regOne!33790 (h!72541 (exprs!6523 lt!2452078)))) (ite c!1270593 (Context!12047 (t!379956 (exprs!6523 lt!2452078))) (Context!12047 call!621325)) (h!72540 s!2326)))))

(declare-fun bm!621316 () Bool)

(declare-fun call!621324 () (InoxSet Context!12046))

(declare-fun call!621322 () (InoxSet Context!12046))

(assert (=> bm!621316 (= call!621324 call!621322)))

(declare-fun b!6825841 () Bool)

(declare-fun c!1270596 () Bool)

(declare-fun e!4117859 () Bool)

(assert (=> b!6825841 (= c!1270596 e!4117859)))

(declare-fun res!2787955 () Bool)

(assert (=> b!6825841 (=> (not res!2787955) (not e!4117859))))

(assert (=> b!6825841 (= res!2787955 ((_ is Concat!25484) (h!72541 (exprs!6523 lt!2452078))))))

(declare-fun e!4117856 () (InoxSet Context!12046))

(declare-fun e!4117857 () (InoxSet Context!12046))

(assert (=> b!6825841 (= e!4117856 e!4117857)))

(declare-fun bm!621317 () Bool)

(declare-fun c!1270595 () Bool)

(assert (=> bm!621317 (= call!621325 ($colon$colon!2444 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452078)))) (ite (or c!1270596 c!1270595) (regTwo!33790 (h!72541 (exprs!6523 lt!2452078))) (h!72541 (exprs!6523 lt!2452078)))))))

(declare-fun b!6825842 () Bool)

(assert (=> b!6825842 (= e!4117857 ((_ map or) call!621323 call!621324))))

(declare-fun bm!621318 () Bool)

(declare-fun call!621320 () List!66217)

(assert (=> bm!621318 (= call!621322 (derivationStepZipperDown!1867 (ite c!1270593 (regOne!33791 (h!72541 (exprs!6523 lt!2452078))) (ite c!1270596 (regTwo!33790 (h!72541 (exprs!6523 lt!2452078))) (ite c!1270595 (regOne!33790 (h!72541 (exprs!6523 lt!2452078))) (reg!16968 (h!72541 (exprs!6523 lt!2452078)))))) (ite (or c!1270593 c!1270596) (Context!12047 (t!379956 (exprs!6523 lt!2452078))) (Context!12047 call!621320)) (h!72540 s!2326)))))

(declare-fun b!6825843 () Bool)

(assert (=> b!6825843 (= e!4117858 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (t!379956 (exprs!6523 lt!2452078))) true))))

(declare-fun b!6825844 () Bool)

(declare-fun e!4117855 () (InoxSet Context!12046))

(declare-fun call!621321 () (InoxSet Context!12046))

(assert (=> b!6825844 (= e!4117855 call!621321)))

(declare-fun b!6825845 () Bool)

(assert (=> b!6825845 (= e!4117858 e!4117856)))

(assert (=> b!6825845 (= c!1270593 ((_ is Union!16639) (h!72541 (exprs!6523 lt!2452078))))))

(declare-fun bm!621319 () Bool)

(assert (=> bm!621319 (= call!621320 call!621325)))

(declare-fun b!6825846 () Bool)

(declare-fun e!4117860 () (InoxSet Context!12046))

(assert (=> b!6825846 (= e!4117857 e!4117860)))

(assert (=> b!6825846 (= c!1270595 ((_ is Concat!25484) (h!72541 (exprs!6523 lt!2452078))))))

(declare-fun b!6825847 () Bool)

(assert (=> b!6825847 (= e!4117855 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6825848 () Bool)

(assert (=> b!6825848 (= e!4117856 ((_ map or) call!621322 call!621323))))

(declare-fun b!6825849 () Bool)

(declare-fun c!1270592 () Bool)

(assert (=> b!6825849 (= c!1270592 ((_ is Star!16639) (h!72541 (exprs!6523 lt!2452078))))))

(assert (=> b!6825849 (= e!4117860 e!4117855)))

(declare-fun b!6825850 () Bool)

(assert (=> b!6825850 (= e!4117859 (nullable!6614 (regOne!33790 (h!72541 (exprs!6523 lt!2452078)))))))

(declare-fun bm!621320 () Bool)

(assert (=> bm!621320 (= call!621321 call!621324)))

(declare-fun b!6825851 () Bool)

(assert (=> b!6825851 (= e!4117860 call!621321)))

(assert (= (and d!2146637 c!1270594) b!6825843))

(assert (= (and d!2146637 (not c!1270594)) b!6825845))

(assert (= (and b!6825845 c!1270593) b!6825848))

(assert (= (and b!6825845 (not c!1270593)) b!6825841))

(assert (= (and b!6825841 res!2787955) b!6825850))

(assert (= (and b!6825841 c!1270596) b!6825842))

(assert (= (and b!6825841 (not c!1270596)) b!6825846))

(assert (= (and b!6825846 c!1270595) b!6825851))

(assert (= (and b!6825846 (not c!1270595)) b!6825849))

(assert (= (and b!6825849 c!1270592) b!6825844))

(assert (= (and b!6825849 (not c!1270592)) b!6825847))

(assert (= (or b!6825851 b!6825844) bm!621319))

(assert (= (or b!6825851 b!6825844) bm!621320))

(assert (= (or b!6825842 bm!621319) bm!621317))

(assert (= (or b!6825842 bm!621320) bm!621316))

(assert (= (or b!6825848 b!6825842) bm!621315))

(assert (= (or b!6825848 bm!621316) bm!621318))

(declare-fun m!7571746 () Bool)

(assert (=> bm!621317 m!7571746))

(declare-fun m!7571748 () Bool)

(assert (=> bm!621318 m!7571748))

(declare-fun m!7571750 () Bool)

(assert (=> b!6825850 m!7571750))

(declare-fun m!7571752 () Bool)

(assert (=> b!6825843 m!7571752))

(declare-fun m!7571754 () Bool)

(assert (=> bm!621315 m!7571754))

(assert (=> bm!621152 d!2146637))

(declare-fun d!2146639 () Bool)

(declare-fun c!1270597 () Bool)

(assert (=> d!2146639 (= c!1270597 (isEmpty!38481 (_1!36917 lt!2452079)))))

(declare-fun e!4117861 () Bool)

(assert (=> d!2146639 (= (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) lt!2452067 true) (_1!36917 lt!2452079)) e!4117861)))

(declare-fun b!6825852 () Bool)

(assert (=> b!6825852 (= e!4117861 (nullableZipper!2342 (store ((as const (Array Context!12046 Bool)) false) lt!2452067 true)))))

(declare-fun b!6825853 () Bool)

(assert (=> b!6825853 (= e!4117861 (matchZipper!2625 (derivationStepZipper!2583 (store ((as const (Array Context!12046 Bool)) false) lt!2452067 true) (head!13681 (_1!36917 lt!2452079))) (tail!12766 (_1!36917 lt!2452079))))))

(assert (= (and d!2146639 c!1270597) b!6825852))

(assert (= (and d!2146639 (not c!1270597)) b!6825853))

(assert (=> d!2146639 m!7570290))

(assert (=> b!6825852 m!7569668))

(declare-fun m!7571756 () Bool)

(assert (=> b!6825852 m!7571756))

(assert (=> b!6825853 m!7570294))

(assert (=> b!6825853 m!7569668))

(assert (=> b!6825853 m!7570294))

(declare-fun m!7571758 () Bool)

(assert (=> b!6825853 m!7571758))

(assert (=> b!6825853 m!7570298))

(assert (=> b!6825853 m!7571758))

(assert (=> b!6825853 m!7570298))

(declare-fun m!7571760 () Bool)

(assert (=> b!6825853 m!7571760))

(assert (=> d!2146037 d!2146639))

(declare-fun d!2146641 () Bool)

(assert (=> d!2146641 (forall!15827 (++!14824 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076)) lambda!385567)))

(declare-fun lt!2452348 () Unit!159969)

(assert (=> d!2146641 (= lt!2452348 (choose!50896 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076) lambda!385567))))

(assert (=> d!2146641 (forall!15827 (exprs!6523 lt!2452067) lambda!385567)))

(assert (=> d!2146641 (= (lemmaConcatPreservesForall!468 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076) lambda!385567) lt!2452348)))

(declare-fun bs!1823951 () Bool)

(assert (= bs!1823951 d!2146641))

(assert (=> bs!1823951 m!7570398))

(assert (=> bs!1823951 m!7570398))

(declare-fun m!7571762 () Bool)

(assert (=> bs!1823951 m!7571762))

(declare-fun m!7571764 () Bool)

(assert (=> bs!1823951 m!7571764))

(declare-fun m!7571766 () Bool)

(assert (=> bs!1823951 m!7571766))

(assert (=> d!2146037 d!2146641))

(declare-fun b!6825854 () Bool)

(declare-fun e!4117863 () List!66217)

(assert (=> b!6825854 (= e!4117863 (exprs!6523 lt!2452076))))

(declare-fun d!2146643 () Bool)

(declare-fun e!4117862 () Bool)

(assert (=> d!2146643 e!4117862))

(declare-fun res!2787956 () Bool)

(assert (=> d!2146643 (=> (not res!2787956) (not e!4117862))))

(declare-fun lt!2452349 () List!66217)

(assert (=> d!2146643 (= res!2787956 (= (content!12942 lt!2452349) ((_ map or) (content!12942 (exprs!6523 lt!2452067)) (content!12942 (exprs!6523 lt!2452076)))))))

(assert (=> d!2146643 (= lt!2452349 e!4117863)))

(declare-fun c!1270598 () Bool)

(assert (=> d!2146643 (= c!1270598 ((_ is Nil!66093) (exprs!6523 lt!2452067)))))

(assert (=> d!2146643 (= (++!14824 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076)) lt!2452349)))

(declare-fun b!6825855 () Bool)

(assert (=> b!6825855 (= e!4117863 (Cons!66093 (h!72541 (exprs!6523 lt!2452067)) (++!14824 (t!379956 (exprs!6523 lt!2452067)) (exprs!6523 lt!2452076))))))

(declare-fun b!6825857 () Bool)

(assert (=> b!6825857 (= e!4117862 (or (not (= (exprs!6523 lt!2452076) Nil!66093)) (= lt!2452349 (exprs!6523 lt!2452067))))))

(declare-fun b!6825856 () Bool)

(declare-fun res!2787957 () Bool)

(assert (=> b!6825856 (=> (not res!2787957) (not e!4117862))))

(assert (=> b!6825856 (= res!2787957 (= (size!40695 lt!2452349) (+ (size!40695 (exprs!6523 lt!2452067)) (size!40695 (exprs!6523 lt!2452076)))))))

(assert (= (and d!2146643 c!1270598) b!6825854))

(assert (= (and d!2146643 (not c!1270598)) b!6825855))

(assert (= (and d!2146643 res!2787956) b!6825856))

(assert (= (and b!6825856 res!2787957) b!6825857))

(declare-fun m!7571768 () Bool)

(assert (=> d!2146643 m!7571768))

(assert (=> d!2146643 m!7571508))

(declare-fun m!7571770 () Bool)

(assert (=> d!2146643 m!7571770))

(declare-fun m!7571772 () Bool)

(assert (=> b!6825855 m!7571772))

(declare-fun m!7571774 () Bool)

(assert (=> b!6825856 m!7571774))

(assert (=> b!6825856 m!7571514))

(declare-fun m!7571776 () Bool)

(assert (=> b!6825856 m!7571776))

(assert (=> d!2146037 d!2146643))

(declare-fun d!2146645 () Bool)

(declare-fun c!1270599 () Bool)

(assert (=> d!2146645 (= c!1270599 (isEmpty!38481 (++!14825 (_1!36917 lt!2452079) (_2!36917 lt!2452079))))))

(declare-fun e!4117864 () Bool)

(assert (=> d!2146645 (= (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076))) true) (++!14825 (_1!36917 lt!2452079) (_2!36917 lt!2452079))) e!4117864)))

(declare-fun b!6825858 () Bool)

(assert (=> b!6825858 (= e!4117864 (nullableZipper!2342 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076))) true)))))

(declare-fun b!6825859 () Bool)

(assert (=> b!6825859 (= e!4117864 (matchZipper!2625 (derivationStepZipper!2583 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076))) true) (head!13681 (++!14825 (_1!36917 lt!2452079) (_2!36917 lt!2452079)))) (tail!12766 (++!14825 (_1!36917 lt!2452079) (_2!36917 lt!2452079)))))))

(assert (= (and d!2146645 c!1270599) b!6825858))

(assert (= (and d!2146645 (not c!1270599)) b!6825859))

(assert (=> d!2146645 m!7569688))

(declare-fun m!7571778 () Bool)

(assert (=> d!2146645 m!7571778))

(assert (=> b!6825858 m!7570400))

(declare-fun m!7571780 () Bool)

(assert (=> b!6825858 m!7571780))

(assert (=> b!6825859 m!7569688))

(declare-fun m!7571782 () Bool)

(assert (=> b!6825859 m!7571782))

(assert (=> b!6825859 m!7570400))

(assert (=> b!6825859 m!7571782))

(declare-fun m!7571784 () Bool)

(assert (=> b!6825859 m!7571784))

(assert (=> b!6825859 m!7569688))

(declare-fun m!7571786 () Bool)

(assert (=> b!6825859 m!7571786))

(assert (=> b!6825859 m!7571784))

(assert (=> b!6825859 m!7571786))

(declare-fun m!7571788 () Bool)

(assert (=> b!6825859 m!7571788))

(assert (=> d!2146037 d!2146645))

(declare-fun bs!1823962 () Bool)

(declare-fun d!2146647 () Bool)

(assert (= bs!1823962 (and d!2146647 d!2146553)))

(declare-fun lambda!385652 () Int)

(assert (=> bs!1823962 (= lambda!385652 lambda!385630)))

(declare-fun bs!1823965 () Bool)

(assert (= bs!1823965 (and d!2146647 d!2146611)))

(assert (=> bs!1823965 (= lambda!385652 lambda!385640)))

(declare-fun bs!1823967 () Bool)

(assert (= bs!1823967 (and d!2146647 d!2146497)))

(assert (=> bs!1823967 (= lambda!385652 lambda!385615)))

(declare-fun bs!1823969 () Bool)

(assert (= bs!1823969 (and d!2146647 b!6823997)))

(assert (=> bs!1823969 (= lambda!385652 lambda!385483)))

(declare-fun bs!1823971 () Bool)

(assert (= bs!1823971 (and d!2146647 d!2146621)))

(assert (=> bs!1823971 (= lambda!385652 lambda!385642)))

(declare-fun bs!1823973 () Bool)

(assert (= bs!1823973 (and d!2146647 d!2146049)))

(assert (=> bs!1823973 (= lambda!385652 lambda!385570)))

(declare-fun bs!1823975 () Bool)

(assert (= bs!1823975 (and d!2146647 d!2146601)))

(assert (=> bs!1823975 (= lambda!385652 lambda!385638)))

(declare-fun bs!1823976 () Bool)

(assert (= bs!1823976 (and d!2146647 d!2146077)))

(assert (=> bs!1823976 (= lambda!385652 lambda!385576)))

(declare-fun bs!1823977 () Bool)

(assert (= bs!1823977 (and d!2146647 d!2146051)))

(assert (=> bs!1823977 (= lambda!385652 lambda!385573)))

(declare-fun bs!1823978 () Bool)

(assert (= bs!1823978 (and d!2146647 d!2146291)))

(assert (=> bs!1823978 (= lambda!385652 lambda!385596)))

(declare-fun bs!1823979 () Bool)

(assert (= bs!1823979 (and d!2146647 d!2146599)))

(assert (=> bs!1823979 (= lambda!385652 lambda!385637)))

(declare-fun bs!1823980 () Bool)

(assert (= bs!1823980 (and d!2146647 d!2146293)))

(assert (=> bs!1823980 (= lambda!385652 lambda!385597)))

(declare-fun bs!1823981 () Bool)

(assert (= bs!1823981 (and d!2146647 d!2145995)))

(assert (=> bs!1823981 (= lambda!385652 lambda!385554)))

(declare-fun bs!1823982 () Bool)

(assert (= bs!1823982 (and d!2146647 d!2145867)))

(assert (=> bs!1823982 (= lambda!385652 lambda!385508)))

(declare-fun bs!1823983 () Bool)

(assert (= bs!1823983 (and d!2146647 d!2146619)))

(assert (=> bs!1823983 (= lambda!385652 lambda!385641)))

(declare-fun bs!1823984 () Bool)

(assert (= bs!1823984 (and d!2146647 d!2146037)))

(assert (=> bs!1823984 (= lambda!385652 lambda!385567)))

(assert (=> d!2146647 (matchZipper!2625 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (++!14824 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076))) true) (++!14825 (_1!36917 lt!2452079) (_2!36917 lt!2452079)))))

(declare-fun lt!2452353 () Unit!159969)

(assert (=> d!2146647 (= lt!2452353 (lemmaConcatPreservesForall!468 (exprs!6523 lt!2452067) (exprs!6523 lt!2452076) lambda!385652))))

(assert (=> d!2146647 true))

(declare-fun _$56!470 () Unit!159969)

(assert (=> d!2146647 (= (choose!50894 lt!2452067 lt!2452076 (_1!36917 lt!2452079) (_2!36917 lt!2452079)) _$56!470)))

(declare-fun bs!1823985 () Bool)

(assert (= bs!1823985 d!2146647))

(assert (=> bs!1823985 m!7570400))

(assert (=> bs!1823985 m!7569688))

(assert (=> bs!1823985 m!7570398))

(declare-fun m!7571840 () Bool)

(assert (=> bs!1823985 m!7571840))

(assert (=> bs!1823985 m!7570400))

(assert (=> bs!1823985 m!7569688))

(assert (=> bs!1823985 m!7570402))

(assert (=> d!2146037 d!2146647))

(assert (=> d!2146037 d!2145843))

(assert (=> b!6824892 d!2146177))

(declare-fun d!2146669 () Bool)

(assert (=> d!2146669 (= (isEmpty!38486 (t!379956 (unfocusZipperList!2060 zl!343))) ((_ is Nil!66093) (t!379956 (unfocusZipperList!2060 zl!343))))))

(assert (=> b!6824847 d!2146669))

(assert (=> d!2146073 d!2145913))

(assert (=> d!2146073 d!2146479))

(declare-fun d!2146671 () Bool)

(declare-fun res!2787971 () Bool)

(declare-fun e!4117892 () Bool)

(assert (=> d!2146671 (=> res!2787971 e!4117892)))

(assert (=> d!2146671 (= res!2787971 ((_ is Nil!66093) (exprs!6523 (h!72542 zl!343))))))

(assert (=> d!2146671 (= (forall!15827 (exprs!6523 (h!72542 zl!343)) lambda!385508) e!4117892)))

(declare-fun b!6825901 () Bool)

(declare-fun e!4117893 () Bool)

(assert (=> b!6825901 (= e!4117892 e!4117893)))

(declare-fun res!2787972 () Bool)

(assert (=> b!6825901 (=> (not res!2787972) (not e!4117893))))

(assert (=> b!6825901 (= res!2787972 (dynLambda!26411 lambda!385508 (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun b!6825902 () Bool)

(assert (=> b!6825902 (= e!4117893 (forall!15827 (t!379956 (exprs!6523 (h!72542 zl!343))) lambda!385508))))

(assert (= (and d!2146671 (not res!2787971)) b!6825901))

(assert (= (and b!6825901 res!2787972) b!6825902))

(declare-fun b_lambda!257465 () Bool)

(assert (=> (not b_lambda!257465) (not b!6825901)))

(declare-fun m!7571842 () Bool)

(assert (=> b!6825901 m!7571842))

(declare-fun m!7571844 () Bool)

(assert (=> b!6825902 m!7571844))

(assert (=> d!2145867 d!2146671))

(declare-fun d!2146673 () Bool)

(assert (=> d!2146673 (= ($colon$colon!2444 (exprs!6523 lt!2452076) (ite (or c!1270296 c!1270295) (regTwo!33790 (reg!16968 r!7292)) (reg!16968 r!7292))) (Cons!66093 (ite (or c!1270296 c!1270295) (regTwo!33790 (reg!16968 r!7292)) (reg!16968 r!7292)) (exprs!6523 lt!2452076)))))

(assert (=> bm!621148 d!2146673))

(declare-fun d!2146677 () Bool)

(declare-fun c!1270619 () Bool)

(assert (=> d!2146677 (= c!1270619 (isEmpty!38481 (tail!12766 s!2326)))))

(declare-fun e!4117900 () Bool)

(assert (=> d!2146677 (= (matchZipper!2625 (derivationStepZipper!2583 z!1189 (head!13681 s!2326)) (tail!12766 s!2326)) e!4117900)))

(declare-fun b!6825914 () Bool)

(assert (=> b!6825914 (= e!4117900 (nullableZipper!2342 (derivationStepZipper!2583 z!1189 (head!13681 s!2326))))))

(declare-fun b!6825915 () Bool)

(assert (=> b!6825915 (= e!4117900 (matchZipper!2625 (derivationStepZipper!2583 (derivationStepZipper!2583 z!1189 (head!13681 s!2326)) (head!13681 (tail!12766 s!2326))) (tail!12766 (tail!12766 s!2326))))))

(assert (= (and d!2146677 c!1270619) b!6825914))

(assert (= (and d!2146677 (not c!1270619)) b!6825915))

(assert (=> d!2146677 m!7569758))

(assert (=> d!2146677 m!7570386))

(assert (=> b!6825914 m!7570534))

(declare-fun m!7571852 () Bool)

(assert (=> b!6825914 m!7571852))

(assert (=> b!6825915 m!7569758))

(assert (=> b!6825915 m!7570658))

(assert (=> b!6825915 m!7570534))

(assert (=> b!6825915 m!7570658))

(declare-fun m!7571854 () Bool)

(assert (=> b!6825915 m!7571854))

(assert (=> b!6825915 m!7569758))

(assert (=> b!6825915 m!7570666))

(assert (=> b!6825915 m!7571854))

(assert (=> b!6825915 m!7570666))

(declare-fun m!7571856 () Bool)

(assert (=> b!6825915 m!7571856))

(assert (=> b!6824907 d!2146677))

(declare-fun bs!1823996 () Bool)

(declare-fun d!2146679 () Bool)

(assert (= bs!1823996 (and d!2146679 d!2146305)))

(declare-fun lambda!385654 () Int)

(assert (=> bs!1823996 (= (= (head!13681 s!2326) (head!13681 (_2!36917 lt!2452079))) (= lambda!385654 lambda!385598))))

(declare-fun bs!1823997 () Bool)

(assert (= bs!1823997 (and d!2146679 d!2146169)))

(assert (=> bs!1823997 (= lambda!385654 lambda!385589)))

(declare-fun bs!1823998 () Bool)

(assert (= bs!1823998 (and d!2146679 d!2145993)))

(assert (=> bs!1823998 (= (= (head!13681 s!2326) (h!72540 s!2326)) (= lambda!385654 lambda!385551))))

(declare-fun bs!1823999 () Bool)

(assert (= bs!1823999 (and d!2146679 d!2146319)))

(assert (=> bs!1823999 (= (= (head!13681 s!2326) (head!13681 (_1!36917 lt!2452079))) (= lambda!385654 lambda!385599))))

(declare-fun bs!1824000 () Bool)

(assert (= bs!1824000 (and d!2146679 d!2146247)))

(assert (=> bs!1824000 (= (= (head!13681 s!2326) (head!13681 lt!2452083)) (= lambda!385654 lambda!385595))))

(declare-fun bs!1824001 () Bool)

(assert (= bs!1824001 (and d!2146679 d!2145963)))

(assert (=> bs!1824001 (= (= (head!13681 s!2326) (h!72540 s!2326)) (= lambda!385654 lambda!385544))))

(declare-fun bs!1824002 () Bool)

(assert (= bs!1824002 (and d!2146679 b!6824000)))

(assert (=> bs!1824002 (= (= (head!13681 s!2326) (h!72540 s!2326)) (= lambda!385654 lambda!385481))))

(declare-fun bs!1824004 () Bool)

(assert (= bs!1824004 (and d!2146679 d!2145827)))

(assert (=> bs!1824004 (= (= (head!13681 s!2326) (h!72540 s!2326)) (= lambda!385654 lambda!385489))))

(assert (=> d!2146679 true))

(assert (=> d!2146679 (= (derivationStepZipper!2583 z!1189 (head!13681 s!2326)) (flatMap!2120 z!1189 lambda!385654))))

(declare-fun bs!1824005 () Bool)

(assert (= bs!1824005 d!2146679))

(declare-fun m!7571868 () Bool)

(assert (=> bs!1824005 m!7571868))

(assert (=> b!6824907 d!2146679))

(assert (=> b!6824907 d!2146177))

(assert (=> b!6824907 d!2146179))

(assert (=> b!6824765 d!2146441))

(assert (=> b!6824765 d!2146179))

(assert (=> d!2145917 d!2146395))

(declare-fun b!6825918 () Bool)

(declare-fun e!4117903 () Bool)

(assert (=> b!6825918 (= e!4117903 (= (head!13681 Nil!66092) (c!1270055 (reg!16968 r!7292))))))

(declare-fun bm!621339 () Bool)

(declare-fun call!621344 () Bool)

(assert (=> bm!621339 (= call!621344 (isEmpty!38481 Nil!66092))))

(declare-fun b!6825919 () Bool)

(declare-fun e!4117904 () Bool)

(declare-fun lt!2452355 () Bool)

(assert (=> b!6825919 (= e!4117904 (not lt!2452355))))

(declare-fun b!6825920 () Bool)

(declare-fun e!4117907 () Bool)

(assert (=> b!6825920 (= e!4117907 e!4117904)))

(declare-fun c!1270620 () Bool)

(assert (=> b!6825920 (= c!1270620 ((_ is EmptyLang!16639) (reg!16968 r!7292)))))

(declare-fun b!6825921 () Bool)

(declare-fun res!2787977 () Bool)

(declare-fun e!4117909 () Bool)

(assert (=> b!6825921 (=> res!2787977 e!4117909)))

(assert (=> b!6825921 (= res!2787977 (not ((_ is ElementMatch!16639) (reg!16968 r!7292))))))

(assert (=> b!6825921 (= e!4117904 e!4117909)))

(declare-fun b!6825922 () Bool)

(declare-fun e!4117908 () Bool)

(assert (=> b!6825922 (= e!4117909 e!4117908)))

(declare-fun res!2787983 () Bool)

(assert (=> b!6825922 (=> (not res!2787983) (not e!4117908))))

(assert (=> b!6825922 (= res!2787983 (not lt!2452355))))

(declare-fun d!2146687 () Bool)

(assert (=> d!2146687 e!4117907))

(declare-fun c!1270622 () Bool)

(assert (=> d!2146687 (= c!1270622 ((_ is EmptyExpr!16639) (reg!16968 r!7292)))))

(declare-fun e!4117905 () Bool)

(assert (=> d!2146687 (= lt!2452355 e!4117905)))

(declare-fun c!1270621 () Bool)

(assert (=> d!2146687 (= c!1270621 (isEmpty!38481 Nil!66092))))

(assert (=> d!2146687 (validRegex!8375 (reg!16968 r!7292))))

(assert (=> d!2146687 (= (matchR!8822 (reg!16968 r!7292) Nil!66092) lt!2452355)))

(declare-fun b!6825923 () Bool)

(declare-fun e!4117906 () Bool)

(assert (=> b!6825923 (= e!4117906 (not (= (head!13681 Nil!66092) (c!1270055 (reg!16968 r!7292)))))))

(declare-fun b!6825924 () Bool)

(assert (=> b!6825924 (= e!4117908 e!4117906)))

(declare-fun res!2787980 () Bool)

(assert (=> b!6825924 (=> res!2787980 e!4117906)))

(assert (=> b!6825924 (= res!2787980 call!621344)))

(declare-fun b!6825925 () Bool)

(assert (=> b!6825925 (= e!4117905 (matchR!8822 (derivativeStep!5299 (reg!16968 r!7292) (head!13681 Nil!66092)) (tail!12766 Nil!66092)))))

(declare-fun b!6825926 () Bool)

(declare-fun res!2787984 () Bool)

(assert (=> b!6825926 (=> res!2787984 e!4117906)))

(assert (=> b!6825926 (= res!2787984 (not (isEmpty!38481 (tail!12766 Nil!66092))))))

(declare-fun b!6825927 () Bool)

(declare-fun res!2787981 () Bool)

(assert (=> b!6825927 (=> res!2787981 e!4117909)))

(assert (=> b!6825927 (= res!2787981 e!4117903)))

(declare-fun res!2787978 () Bool)

(assert (=> b!6825927 (=> (not res!2787978) (not e!4117903))))

(assert (=> b!6825927 (= res!2787978 lt!2452355)))

(declare-fun b!6825928 () Bool)

(assert (=> b!6825928 (= e!4117907 (= lt!2452355 call!621344))))

(declare-fun b!6825929 () Bool)

(declare-fun res!2787982 () Bool)

(assert (=> b!6825929 (=> (not res!2787982) (not e!4117903))))

(assert (=> b!6825929 (= res!2787982 (isEmpty!38481 (tail!12766 Nil!66092)))))

(declare-fun b!6825930 () Bool)

(declare-fun res!2787979 () Bool)

(assert (=> b!6825930 (=> (not res!2787979) (not e!4117903))))

(assert (=> b!6825930 (= res!2787979 (not call!621344))))

(declare-fun b!6825931 () Bool)

(assert (=> b!6825931 (= e!4117905 (nullable!6614 (reg!16968 r!7292)))))

(assert (= (and d!2146687 c!1270621) b!6825931))

(assert (= (and d!2146687 (not c!1270621)) b!6825925))

(assert (= (and d!2146687 c!1270622) b!6825928))

(assert (= (and d!2146687 (not c!1270622)) b!6825920))

(assert (= (and b!6825920 c!1270620) b!6825919))

(assert (= (and b!6825920 (not c!1270620)) b!6825921))

(assert (= (and b!6825921 (not res!2787977)) b!6825927))

(assert (= (and b!6825927 res!2787978) b!6825930))

(assert (= (and b!6825930 res!2787979) b!6825929))

(assert (= (and b!6825929 res!2787982) b!6825918))

(assert (= (and b!6825927 (not res!2787981)) b!6825922))

(assert (= (and b!6825922 res!2787983) b!6825924))

(assert (= (and b!6825924 (not res!2787980)) b!6825926))

(assert (= (and b!6825926 (not res!2787984)) b!6825923))

(assert (= (or b!6825928 b!6825924 b!6825930) bm!621339))

(assert (=> b!6825918 m!7570982))

(assert (=> b!6825931 m!7570392))

(assert (=> b!6825925 m!7570982))

(assert (=> b!6825925 m!7570982))

(declare-fun m!7571880 () Bool)

(assert (=> b!6825925 m!7571880))

(assert (=> b!6825925 m!7570986))

(assert (=> b!6825925 m!7571880))

(assert (=> b!6825925 m!7570986))

(declare-fun m!7571882 () Bool)

(assert (=> b!6825925 m!7571882))

(assert (=> bm!621339 m!7570980))

(assert (=> b!6825929 m!7570986))

(assert (=> b!6825929 m!7570986))

(declare-fun m!7571884 () Bool)

(assert (=> b!6825929 m!7571884))

(assert (=> d!2146687 m!7570980))

(assert (=> d!2146687 m!7569992))

(assert (=> b!6825923 m!7570982))

(assert (=> b!6825926 m!7570986))

(assert (=> b!6825926 m!7570986))

(assert (=> b!6825926 m!7571884))

(assert (=> d!2145917 d!2146687))

(assert (=> d!2145917 d!2146349))

(declare-fun d!2146695 () Bool)

(assert (=> d!2146695 (= (isEmpty!38486 (unfocusZipperList!2060 zl!343)) ((_ is Nil!66093) (unfocusZipperList!2060 zl!343)))))

(assert (=> b!6824852 d!2146695))

(declare-fun bs!1824007 () Bool)

(declare-fun d!2146697 () Bool)

(assert (= bs!1824007 (and d!2146697 d!2146589)))

(declare-fun lambda!385655 () Int)

(assert (=> bs!1824007 (= lambda!385655 lambda!385635)))

(declare-fun bs!1824008 () Bool)

(assert (= bs!1824008 (and d!2146697 d!2146591)))

(assert (=> bs!1824008 (= lambda!385655 lambda!385636)))

(declare-fun bs!1824009 () Bool)

(assert (= bs!1824009 (and d!2146697 d!2146603)))

(assert (=> bs!1824009 (= lambda!385655 lambda!385639)))

(declare-fun bs!1824010 () Bool)

(assert (= bs!1824010 (and d!2146697 d!2146625)))

(assert (=> bs!1824010 (= lambda!385655 lambda!385643)))

(assert (=> d!2146697 (= (nullableZipper!2342 lt!2452091) (exists!2753 lt!2452091 lambda!385655))))

(declare-fun bs!1824011 () Bool)

(assert (= bs!1824011 d!2146697))

(declare-fun m!7571892 () Bool)

(assert (=> bs!1824011 m!7571892))

(assert (=> b!6824615 d!2146697))

(declare-fun d!2146701 () Bool)

(assert (=> d!2146701 (= ($colon$colon!2444 (exprs!6523 (Context!12047 Nil!66093)) (ite (or c!1270218 c!1270217) (regTwo!33790 r!7292) r!7292)) (Cons!66093 (ite (or c!1270218 c!1270217) (regTwo!33790 r!7292) r!7292) (exprs!6523 (Context!12047 Nil!66093))))))

(assert (=> bm!621122 d!2146701))

(declare-fun bs!1824013 () Bool)

(declare-fun d!2146705 () Bool)

(assert (= bs!1824013 (and d!2146705 d!2146625)))

(declare-fun lambda!385656 () Int)

(assert (=> bs!1824013 (= lambda!385656 lambda!385643)))

(declare-fun bs!1824014 () Bool)

(assert (= bs!1824014 (and d!2146705 d!2146697)))

(assert (=> bs!1824014 (= lambda!385656 lambda!385655)))

(declare-fun bs!1824015 () Bool)

(assert (= bs!1824015 (and d!2146705 d!2146591)))

(assert (=> bs!1824015 (= lambda!385656 lambda!385636)))

(declare-fun bs!1824016 () Bool)

(assert (= bs!1824016 (and d!2146705 d!2146589)))

(assert (=> bs!1824016 (= lambda!385656 lambda!385635)))

(declare-fun bs!1824017 () Bool)

(assert (= bs!1824017 (and d!2146705 d!2146603)))

(assert (=> bs!1824017 (= lambda!385656 lambda!385639)))

(assert (=> d!2146705 (= (nullableZipper!2342 lt!2452059) (exists!2753 lt!2452059 lambda!385656))))

(declare-fun bs!1824018 () Bool)

(assert (= bs!1824018 d!2146705))

(declare-fun m!7571896 () Bool)

(assert (=> bs!1824018 m!7571896))

(assert (=> b!6824604 d!2146705))

(declare-fun b!6825948 () Bool)

(declare-fun e!4117918 () Bool)

(declare-fun e!4117921 () Bool)

(assert (=> b!6825948 (= e!4117918 e!4117921)))

(declare-fun c!1270628 () Bool)

(assert (=> b!6825948 (= c!1270628 ((_ is Star!16639) lt!2452097))))

(declare-fun d!2146707 () Bool)

(declare-fun res!2787993 () Bool)

(assert (=> d!2146707 (=> res!2787993 e!4117918)))

(assert (=> d!2146707 (= res!2787993 ((_ is ElementMatch!16639) lt!2452097))))

(assert (=> d!2146707 (= (validRegex!8375 lt!2452097) e!4117918)))

(declare-fun bm!621341 () Bool)

(declare-fun call!621346 () Bool)

(declare-fun c!1270627 () Bool)

(assert (=> bm!621341 (= call!621346 (validRegex!8375 (ite c!1270627 (regOne!33791 lt!2452097) (regOne!33790 lt!2452097))))))

(declare-fun b!6825949 () Bool)

(declare-fun e!4117919 () Bool)

(assert (=> b!6825949 (= e!4117921 e!4117919)))

(assert (=> b!6825949 (= c!1270627 ((_ is Union!16639) lt!2452097))))

(declare-fun b!6825950 () Bool)

(declare-fun e!4117922 () Bool)

(declare-fun call!621347 () Bool)

(assert (=> b!6825950 (= e!4117922 call!621347)))

(declare-fun b!6825951 () Bool)

(declare-fun e!4117920 () Bool)

(declare-fun call!621348 () Bool)

(assert (=> b!6825951 (= e!4117920 call!621348)))

(declare-fun b!6825952 () Bool)

(assert (=> b!6825952 (= e!4117921 e!4117922)))

(declare-fun res!2787995 () Bool)

(assert (=> b!6825952 (= res!2787995 (not (nullable!6614 (reg!16968 lt!2452097))))))

(assert (=> b!6825952 (=> (not res!2787995) (not e!4117922))))

(declare-fun bm!621342 () Bool)

(assert (=> bm!621342 (= call!621348 call!621347)))

(declare-fun b!6825953 () Bool)

(declare-fun res!2787996 () Bool)

(declare-fun e!4117924 () Bool)

(assert (=> b!6825953 (=> res!2787996 e!4117924)))

(assert (=> b!6825953 (= res!2787996 (not ((_ is Concat!25484) lt!2452097)))))

(assert (=> b!6825953 (= e!4117919 e!4117924)))

(declare-fun b!6825954 () Bool)

(declare-fun res!2787997 () Bool)

(assert (=> b!6825954 (=> (not res!2787997) (not e!4117920))))

(assert (=> b!6825954 (= res!2787997 call!621346)))

(assert (=> b!6825954 (= e!4117919 e!4117920)))

(declare-fun b!6825955 () Bool)

(declare-fun e!4117923 () Bool)

(assert (=> b!6825955 (= e!4117923 call!621348)))

(declare-fun b!6825956 () Bool)

(assert (=> b!6825956 (= e!4117924 e!4117923)))

(declare-fun res!2787994 () Bool)

(assert (=> b!6825956 (=> (not res!2787994) (not e!4117923))))

(assert (=> b!6825956 (= res!2787994 call!621346)))

(declare-fun bm!621343 () Bool)

(assert (=> bm!621343 (= call!621347 (validRegex!8375 (ite c!1270628 (reg!16968 lt!2452097) (ite c!1270627 (regTwo!33791 lt!2452097) (regTwo!33790 lt!2452097)))))))

(assert (= (and d!2146707 (not res!2787993)) b!6825948))

(assert (= (and b!6825948 c!1270628) b!6825952))

(assert (= (and b!6825948 (not c!1270628)) b!6825949))

(assert (= (and b!6825952 res!2787995) b!6825950))

(assert (= (and b!6825949 c!1270627) b!6825954))

(assert (= (and b!6825949 (not c!1270627)) b!6825953))

(assert (= (and b!6825954 res!2787997) b!6825951))

(assert (= (and b!6825953 (not res!2787996)) b!6825956))

(assert (= (and b!6825956 res!2787994) b!6825955))

(assert (= (or b!6825951 b!6825955) bm!621342))

(assert (= (or b!6825954 b!6825956) bm!621341))

(assert (= (or b!6825950 bm!621342) bm!621343))

(declare-fun m!7571898 () Bool)

(assert (=> bm!621341 m!7571898))

(declare-fun m!7571900 () Bool)

(assert (=> b!6825952 m!7571900))

(declare-fun m!7571902 () Bool)

(assert (=> bm!621343 m!7571902))

(assert (=> d!2145817 d!2146707))

(declare-fun bs!1824019 () Bool)

(declare-fun d!2146709 () Bool)

(assert (= bs!1824019 (and d!2146709 d!2146553)))

(declare-fun lambda!385657 () Int)

(assert (=> bs!1824019 (= lambda!385657 lambda!385630)))

(declare-fun bs!1824020 () Bool)

(assert (= bs!1824020 (and d!2146709 d!2146611)))

(assert (=> bs!1824020 (= lambda!385657 lambda!385640)))

(declare-fun bs!1824021 () Bool)

(assert (= bs!1824021 (and d!2146709 d!2146497)))

(assert (=> bs!1824021 (= lambda!385657 lambda!385615)))

(declare-fun bs!1824022 () Bool)

(assert (= bs!1824022 (and d!2146709 b!6823997)))

(assert (=> bs!1824022 (= lambda!385657 lambda!385483)))

(declare-fun bs!1824023 () Bool)

(assert (= bs!1824023 (and d!2146709 d!2146621)))

(assert (=> bs!1824023 (= lambda!385657 lambda!385642)))

(declare-fun bs!1824024 () Bool)

(assert (= bs!1824024 (and d!2146709 d!2146049)))

(assert (=> bs!1824024 (= lambda!385657 lambda!385570)))

(declare-fun bs!1824025 () Bool)

(assert (= bs!1824025 (and d!2146709 d!2146601)))

(assert (=> bs!1824025 (= lambda!385657 lambda!385638)))

(declare-fun bs!1824026 () Bool)

(assert (= bs!1824026 (and d!2146709 d!2146647)))

(assert (=> bs!1824026 (= lambda!385657 lambda!385652)))

(declare-fun bs!1824027 () Bool)

(assert (= bs!1824027 (and d!2146709 d!2146077)))

(assert (=> bs!1824027 (= lambda!385657 lambda!385576)))

(declare-fun bs!1824028 () Bool)

(assert (= bs!1824028 (and d!2146709 d!2146051)))

(assert (=> bs!1824028 (= lambda!385657 lambda!385573)))

(declare-fun bs!1824029 () Bool)

(assert (= bs!1824029 (and d!2146709 d!2146291)))

(assert (=> bs!1824029 (= lambda!385657 lambda!385596)))

(declare-fun bs!1824030 () Bool)

(assert (= bs!1824030 (and d!2146709 d!2146599)))

(assert (=> bs!1824030 (= lambda!385657 lambda!385637)))

(declare-fun bs!1824031 () Bool)

(assert (= bs!1824031 (and d!2146709 d!2146293)))

(assert (=> bs!1824031 (= lambda!385657 lambda!385597)))

(declare-fun bs!1824032 () Bool)

(assert (= bs!1824032 (and d!2146709 d!2145995)))

(assert (=> bs!1824032 (= lambda!385657 lambda!385554)))

(declare-fun bs!1824033 () Bool)

(assert (= bs!1824033 (and d!2146709 d!2145867)))

(assert (=> bs!1824033 (= lambda!385657 lambda!385508)))

(declare-fun bs!1824034 () Bool)

(assert (= bs!1824034 (and d!2146709 d!2146619)))

(assert (=> bs!1824034 (= lambda!385657 lambda!385641)))

(declare-fun bs!1824035 () Bool)

(assert (= bs!1824035 (and d!2146709 d!2146037)))

(assert (=> bs!1824035 (= lambda!385657 lambda!385567)))

(declare-fun b!6825957 () Bool)

(declare-fun e!4117925 () Regex!16639)

(assert (=> b!6825957 (= e!4117925 (Union!16639 (h!72541 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094))) (generalisedUnion!2483 (t!379956 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094))))))))

(declare-fun b!6825959 () Bool)

(declare-fun e!4117928 () Regex!16639)

(assert (=> b!6825959 (= e!4117928 (h!72541 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094))))))

(declare-fun b!6825960 () Bool)

(declare-fun e!4117930 () Bool)

(declare-fun lt!2452357 () Regex!16639)

(assert (=> b!6825960 (= e!4117930 (isUnion!1431 lt!2452357))))

(declare-fun b!6825961 () Bool)

(declare-fun e!4117929 () Bool)

(assert (=> b!6825961 (= e!4117929 (isEmpty!38486 (t!379956 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094)))))))

(declare-fun b!6825962 () Bool)

(assert (=> b!6825962 (= e!4117930 (= lt!2452357 (head!13682 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094)))))))

(declare-fun b!6825963 () Bool)

(assert (=> b!6825963 (= e!4117925 EmptyLang!16639)))

(declare-fun b!6825964 () Bool)

(declare-fun e!4117926 () Bool)

(assert (=> b!6825964 (= e!4117926 (isEmptyLang!2001 lt!2452357))))

(declare-fun e!4117927 () Bool)

(assert (=> d!2146709 e!4117927))

(declare-fun res!2787998 () Bool)

(assert (=> d!2146709 (=> (not res!2787998) (not e!4117927))))

(assert (=> d!2146709 (= res!2787998 (validRegex!8375 lt!2452357))))

(assert (=> d!2146709 (= lt!2452357 e!4117928)))

(declare-fun c!1270629 () Bool)

(assert (=> d!2146709 (= c!1270629 e!4117929)))

(declare-fun res!2787999 () Bool)

(assert (=> d!2146709 (=> (not res!2787999) (not e!4117929))))

(assert (=> d!2146709 (= res!2787999 ((_ is Cons!66093) (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094))))))

(assert (=> d!2146709 (forall!15827 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094)) lambda!385657)))

(assert (=> d!2146709 (= (generalisedUnion!2483 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094))) lt!2452357)))

(declare-fun b!6825958 () Bool)

(assert (=> b!6825958 (= e!4117926 e!4117930)))

(declare-fun c!1270630 () Bool)

(assert (=> b!6825958 (= c!1270630 (isEmpty!38486 (tail!12767 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094)))))))

(declare-fun b!6825965 () Bool)

(assert (=> b!6825965 (= e!4117928 e!4117925)))

(declare-fun c!1270632 () Bool)

(assert (=> b!6825965 (= c!1270632 ((_ is Cons!66093) (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094))))))

(declare-fun b!6825966 () Bool)

(assert (=> b!6825966 (= e!4117927 e!4117926)))

(declare-fun c!1270631 () Bool)

(assert (=> b!6825966 (= c!1270631 (isEmpty!38486 (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094))))))

(assert (= (and d!2146709 res!2787999) b!6825961))

(assert (= (and d!2146709 c!1270629) b!6825959))

(assert (= (and d!2146709 (not c!1270629)) b!6825965))

(assert (= (and b!6825965 c!1270632) b!6825957))

(assert (= (and b!6825965 (not c!1270632)) b!6825963))

(assert (= (and d!2146709 res!2787998) b!6825966))

(assert (= (and b!6825966 c!1270631) b!6825964))

(assert (= (and b!6825966 (not c!1270631)) b!6825958))

(assert (= (and b!6825958 c!1270630) b!6825962))

(assert (= (and b!6825958 (not c!1270630)) b!6825960))

(declare-fun m!7571904 () Bool)

(assert (=> b!6825957 m!7571904))

(declare-fun m!7571906 () Bool)

(assert (=> b!6825960 m!7571906))

(declare-fun m!7571908 () Bool)

(assert (=> b!6825961 m!7571908))

(assert (=> b!6825958 m!7569742))

(declare-fun m!7571910 () Bool)

(assert (=> b!6825958 m!7571910))

(assert (=> b!6825958 m!7571910))

(declare-fun m!7571912 () Bool)

(assert (=> b!6825958 m!7571912))

(declare-fun m!7571914 () Bool)

(assert (=> d!2146709 m!7571914))

(assert (=> d!2146709 m!7569742))

(declare-fun m!7571916 () Bool)

(assert (=> d!2146709 m!7571916))

(declare-fun m!7571918 () Bool)

(assert (=> b!6825964 m!7571918))

(assert (=> b!6825966 m!7569742))

(declare-fun m!7571920 () Bool)

(assert (=> b!6825966 m!7571920))

(assert (=> b!6825962 m!7569742))

(declare-fun m!7571922 () Bool)

(assert (=> b!6825962 m!7571922))

(assert (=> d!2145817 d!2146709))

(declare-fun bs!1824036 () Bool)

(declare-fun d!2146711 () Bool)

(assert (= bs!1824036 (and d!2146711 d!2146553)))

(declare-fun lambda!385658 () Int)

(assert (=> bs!1824036 (= lambda!385658 lambda!385630)))

(declare-fun bs!1824038 () Bool)

(assert (= bs!1824038 (and d!2146711 d!2146497)))

(assert (=> bs!1824038 (= lambda!385658 lambda!385615)))

(declare-fun bs!1824039 () Bool)

(assert (= bs!1824039 (and d!2146711 b!6823997)))

(assert (=> bs!1824039 (= lambda!385658 lambda!385483)))

(declare-fun bs!1824040 () Bool)

(assert (= bs!1824040 (and d!2146711 d!2146621)))

(assert (=> bs!1824040 (= lambda!385658 lambda!385642)))

(declare-fun bs!1824041 () Bool)

(assert (= bs!1824041 (and d!2146711 d!2146049)))

(assert (=> bs!1824041 (= lambda!385658 lambda!385570)))

(declare-fun bs!1824042 () Bool)

(assert (= bs!1824042 (and d!2146711 d!2146601)))

(assert (=> bs!1824042 (= lambda!385658 lambda!385638)))

(declare-fun bs!1824043 () Bool)

(assert (= bs!1824043 (and d!2146711 d!2146647)))

(assert (=> bs!1824043 (= lambda!385658 lambda!385652)))

(declare-fun bs!1824044 () Bool)

(assert (= bs!1824044 (and d!2146711 d!2146077)))

(assert (=> bs!1824044 (= lambda!385658 lambda!385576)))

(declare-fun bs!1824045 () Bool)

(assert (= bs!1824045 (and d!2146711 d!2146051)))

(assert (=> bs!1824045 (= lambda!385658 lambda!385573)))

(declare-fun bs!1824046 () Bool)

(assert (= bs!1824046 (and d!2146711 d!2146291)))

(assert (=> bs!1824046 (= lambda!385658 lambda!385596)))

(declare-fun bs!1824047 () Bool)

(assert (= bs!1824047 (and d!2146711 d!2146599)))

(assert (=> bs!1824047 (= lambda!385658 lambda!385637)))

(declare-fun bs!1824048 () Bool)

(assert (= bs!1824048 (and d!2146711 d!2146293)))

(assert (=> bs!1824048 (= lambda!385658 lambda!385597)))

(declare-fun bs!1824049 () Bool)

(assert (= bs!1824049 (and d!2146711 d!2145995)))

(assert (=> bs!1824049 (= lambda!385658 lambda!385554)))

(declare-fun bs!1824050 () Bool)

(assert (= bs!1824050 (and d!2146711 d!2145867)))

(assert (=> bs!1824050 (= lambda!385658 lambda!385508)))

(declare-fun bs!1824051 () Bool)

(assert (= bs!1824051 (and d!2146711 d!2146709)))

(assert (=> bs!1824051 (= lambda!385658 lambda!385657)))

(declare-fun bs!1824052 () Bool)

(assert (= bs!1824052 (and d!2146711 d!2146611)))

(assert (=> bs!1824052 (= lambda!385658 lambda!385640)))

(declare-fun bs!1824053 () Bool)

(assert (= bs!1824053 (and d!2146711 d!2146619)))

(assert (=> bs!1824053 (= lambda!385658 lambda!385641)))

(declare-fun bs!1824054 () Bool)

(assert (= bs!1824054 (and d!2146711 d!2146037)))

(assert (=> bs!1824054 (= lambda!385658 lambda!385567)))

(declare-fun lt!2452358 () List!66217)

(assert (=> d!2146711 (forall!15827 lt!2452358 lambda!385658)))

(declare-fun e!4117931 () List!66217)

(assert (=> d!2146711 (= lt!2452358 e!4117931)))

(declare-fun c!1270633 () Bool)

(assert (=> d!2146711 (= c!1270633 ((_ is Cons!66094) (Cons!66094 lt!2452078 Nil!66094)))))

(assert (=> d!2146711 (= (unfocusZipperList!2060 (Cons!66094 lt!2452078 Nil!66094)) lt!2452358)))

(declare-fun b!6825967 () Bool)

(assert (=> b!6825967 (= e!4117931 (Cons!66093 (generalisedConcat!2236 (exprs!6523 (h!72542 (Cons!66094 lt!2452078 Nil!66094)))) (unfocusZipperList!2060 (t!379957 (Cons!66094 lt!2452078 Nil!66094)))))))

(declare-fun b!6825968 () Bool)

(assert (=> b!6825968 (= e!4117931 Nil!66093)))

(assert (= (and d!2146711 c!1270633) b!6825967))

(assert (= (and d!2146711 (not c!1270633)) b!6825968))

(declare-fun m!7571930 () Bool)

(assert (=> d!2146711 m!7571930))

(declare-fun m!7571932 () Bool)

(assert (=> b!6825967 m!7571932))

(declare-fun m!7571934 () Bool)

(assert (=> b!6825967 m!7571934))

(assert (=> d!2145817 d!2146711))

(declare-fun d!2146717 () Bool)

(assert (=> d!2146717 (= (Exists!3707 lambda!385537) (choose!50883 lambda!385537))))

(declare-fun bs!1824055 () Bool)

(assert (= bs!1824055 d!2146717))

(declare-fun m!7571936 () Bool)

(assert (=> bs!1824055 m!7571936))

(assert (=> d!2145941 d!2146717))

(assert (=> d!2145941 d!2145871))

(declare-fun bs!1824063 () Bool)

(declare-fun d!2146719 () Bool)

(assert (= bs!1824063 (and d!2146719 b!6825030)))

(declare-fun lambda!385662 () Int)

(assert (=> bs!1824063 (not (= lambda!385662 lambda!385586))))

(declare-fun bs!1824064 () Bool)

(assert (= bs!1824064 (and d!2146719 d!2145873)))

(assert (=> bs!1824064 (= lambda!385662 lambda!385514)))

(declare-fun bs!1824065 () Bool)

(assert (= bs!1824065 (and d!2146719 b!6824881)))

(assert (=> bs!1824065 (not (= lambda!385662 lambda!385575))))

(declare-fun bs!1824066 () Bool)

(assert (= bs!1824066 (and d!2146719 b!6825323)))

(assert (=> bs!1824066 (not (= lambda!385662 lambda!385602))))

(declare-fun bs!1824067 () Bool)

(assert (= bs!1824067 (and d!2146719 b!6825585)))

(assert (=> bs!1824067 (not (= lambda!385662 lambda!385621))))

(declare-fun bs!1824068 () Bool)

(assert (= bs!1824068 (and d!2146719 b!6825021)))

(assert (=> bs!1824068 (not (= lambda!385662 lambda!385587))))

(assert (=> bs!1824064 (not (= lambda!385662 lambda!385515))))

(declare-fun bs!1824069 () Bool)

(assert (= bs!1824069 (and d!2146719 d!2145893)))

(assert (=> bs!1824069 (not (= lambda!385662 lambda!385525))))

(declare-fun bs!1824070 () Bool)

(assert (= bs!1824070 (and d!2146719 b!6824659)))

(assert (=> bs!1824070 (not (= lambda!385662 lambda!385564))))

(declare-fun bs!1824071 () Bool)

(assert (= bs!1824071 (and d!2146719 b!6824890)))

(assert (=> bs!1824071 (not (= lambda!385662 lambda!385574))))

(declare-fun bs!1824072 () Bool)

(assert (= bs!1824072 (and d!2146719 b!6824668)))

(assert (=> bs!1824072 (not (= lambda!385662 lambda!385563))))

(declare-fun bs!1824073 () Bool)

(assert (= bs!1824073 (and d!2146719 d!2146419)))

(assert (=> bs!1824073 (not (= lambda!385662 lambda!385611))))

(declare-fun bs!1824074 () Bool)

(assert (= bs!1824074 (and d!2146719 b!6825332)))

(assert (=> bs!1824074 (not (= lambda!385662 lambda!385600))))

(assert (=> bs!1824069 (= (= r!7292 (Star!16639 (reg!16968 r!7292))) (= lambda!385662 lambda!385522))))

(declare-fun bs!1824075 () Bool)

(assert (= bs!1824075 (and d!2146719 d!2145941)))

(assert (=> bs!1824075 (= lambda!385662 lambda!385537)))

(declare-fun bs!1824076 () Bool)

(assert (= bs!1824076 (and d!2146719 b!6825660)))

(assert (=> bs!1824076 (not (= lambda!385662 lambda!385629))))

(declare-fun bs!1824077 () Bool)

(assert (= bs!1824077 (and d!2146719 b!6825594)))

(assert (=> bs!1824077 (not (= lambda!385662 lambda!385618))))

(declare-fun bs!1824078 () Bool)

(assert (= bs!1824078 (and d!2146719 b!6824003)))

(assert (=> bs!1824078 (not (= lambda!385662 lambda!385480))))

(assert (=> bs!1824078 (not (= lambda!385662 lambda!385479))))

(assert (=> bs!1824078 (= lambda!385662 lambda!385478)))

(declare-fun bs!1824079 () Bool)

(assert (= bs!1824079 (and d!2146719 b!6825669)))

(assert (=> bs!1824079 (not (= lambda!385662 lambda!385627))))

(assert (=> bs!1824073 (= (= r!7292 (Star!16639 (reg!16968 r!7292))) (= lambda!385662 lambda!385608))))

(assert (=> d!2146719 true))

(assert (=> d!2146719 true))

(assert (=> d!2146719 true))

(assert (=> d!2146719 (= (isDefined!13229 (findConcatSeparation!2940 (reg!16968 r!7292) r!7292 Nil!66092 s!2326 s!2326)) (Exists!3707 lambda!385662))))

(assert (=> d!2146719 true))

(declare-fun _$89!3106 () Unit!159969)

(assert (=> d!2146719 (= (choose!50888 (reg!16968 r!7292) r!7292 s!2326) _$89!3106)))

(declare-fun bs!1824080 () Bool)

(assert (= bs!1824080 d!2146719))

(assert (=> bs!1824080 m!7569632))

(assert (=> bs!1824080 m!7569632))

(assert (=> bs!1824080 m!7569636))

(declare-fun m!7571994 () Bool)

(assert (=> bs!1824080 m!7571994))

(assert (=> d!2145941 d!2146719))

(assert (=> d!2145941 d!2145917))

(assert (=> d!2145941 d!2146349))

(declare-fun d!2146741 () Bool)

(assert (=> d!2146741 (= (flatMap!2120 z!1189 lambda!385551) (choose!50889 z!1189 lambda!385551))))

(declare-fun bs!1824081 () Bool)

(assert (= bs!1824081 d!2146741))

(declare-fun m!7571996 () Bool)

(assert (=> bs!1824081 m!7571996))

(assert (=> d!2145993 d!2146741))

(declare-fun b!6826024 () Bool)

(declare-fun e!4117966 () List!66217)

(assert (=> b!6826024 (= e!4117966 lt!2452065)))

(declare-fun d!2146743 () Bool)

(declare-fun e!4117965 () Bool)

(assert (=> d!2146743 e!4117965))

(declare-fun res!2788026 () Bool)

(assert (=> d!2146743 (=> (not res!2788026) (not e!4117965))))

(declare-fun lt!2452363 () List!66217)

(assert (=> d!2146743 (= res!2788026 (= (content!12942 lt!2452363) ((_ map or) (content!12942 (t!379956 lt!2452077)) (content!12942 lt!2452065))))))

(assert (=> d!2146743 (= lt!2452363 e!4117966)))

(declare-fun c!1270648 () Bool)

(assert (=> d!2146743 (= c!1270648 ((_ is Nil!66093) (t!379956 lt!2452077)))))

(assert (=> d!2146743 (= (++!14824 (t!379956 lt!2452077) lt!2452065) lt!2452363)))

(declare-fun b!6826025 () Bool)

(assert (=> b!6826025 (= e!4117966 (Cons!66093 (h!72541 (t!379956 lt!2452077)) (++!14824 (t!379956 (t!379956 lt!2452077)) lt!2452065)))))

(declare-fun b!6826027 () Bool)

(assert (=> b!6826027 (= e!4117965 (or (not (= lt!2452065 Nil!66093)) (= lt!2452363 (t!379956 lt!2452077))))))

(declare-fun b!6826026 () Bool)

(declare-fun res!2788027 () Bool)

(assert (=> b!6826026 (=> (not res!2788027) (not e!4117965))))

(assert (=> b!6826026 (= res!2788027 (= (size!40695 lt!2452363) (+ (size!40695 (t!379956 lt!2452077)) (size!40695 lt!2452065))))))

(assert (= (and d!2146743 c!1270648) b!6826024))

(assert (= (and d!2146743 (not c!1270648)) b!6826025))

(assert (= (and d!2146743 res!2788026) b!6826026))

(assert (= (and b!6826026 res!2788027) b!6826027))

(declare-fun m!7572004 () Bool)

(assert (=> d!2146743 m!7572004))

(assert (=> d!2146743 m!7570736))

(assert (=> d!2146743 m!7570412))

(declare-fun m!7572006 () Bool)

(assert (=> b!6826025 m!7572006))

(declare-fun m!7572008 () Bool)

(assert (=> b!6826026 m!7572008))

(assert (=> b!6826026 m!7571014))

(assert (=> b!6826026 m!7570420))

(assert (=> b!6824804 d!2146743))

(declare-fun d!2146749 () Bool)

(declare-fun c!1270653 () Bool)

(assert (=> d!2146749 (= c!1270653 (and ((_ is ElementMatch!16639) (h!72541 (exprs!6523 lt!2452067))) (= (c!1270055 (h!72541 (exprs!6523 lt!2452067))) (h!72540 s!2326))))))

(declare-fun e!4117972 () (InoxSet Context!12046))

(assert (=> d!2146749 (= (derivationStepZipperDown!1867 (h!72541 (exprs!6523 lt!2452067)) (Context!12047 (t!379956 (exprs!6523 lt!2452067))) (h!72540 s!2326)) e!4117972)))

(declare-fun bm!621351 () Bool)

(declare-fun c!1270652 () Bool)

(declare-fun call!621359 () (InoxSet Context!12046))

(declare-fun call!621361 () List!66217)

(assert (=> bm!621351 (= call!621359 (derivationStepZipperDown!1867 (ite c!1270652 (regTwo!33791 (h!72541 (exprs!6523 lt!2452067))) (regOne!33790 (h!72541 (exprs!6523 lt!2452067)))) (ite c!1270652 (Context!12047 (t!379956 (exprs!6523 lt!2452067))) (Context!12047 call!621361)) (h!72540 s!2326)))))

(declare-fun bm!621352 () Bool)

(declare-fun call!621360 () (InoxSet Context!12046))

(declare-fun call!621358 () (InoxSet Context!12046))

(assert (=> bm!621352 (= call!621360 call!621358)))

(declare-fun b!6826032 () Bool)

(declare-fun c!1270655 () Bool)

(declare-fun e!4117973 () Bool)

(assert (=> b!6826032 (= c!1270655 e!4117973)))

(declare-fun res!2788028 () Bool)

(assert (=> b!6826032 (=> (not res!2788028) (not e!4117973))))

(assert (=> b!6826032 (= res!2788028 ((_ is Concat!25484) (h!72541 (exprs!6523 lt!2452067))))))

(declare-fun e!4117970 () (InoxSet Context!12046))

(declare-fun e!4117971 () (InoxSet Context!12046))

(assert (=> b!6826032 (= e!4117970 e!4117971)))

(declare-fun bm!621353 () Bool)

(declare-fun c!1270654 () Bool)

(assert (=> bm!621353 (= call!621361 ($colon$colon!2444 (exprs!6523 (Context!12047 (t!379956 (exprs!6523 lt!2452067)))) (ite (or c!1270655 c!1270654) (regTwo!33790 (h!72541 (exprs!6523 lt!2452067))) (h!72541 (exprs!6523 lt!2452067)))))))

(declare-fun b!6826033 () Bool)

(assert (=> b!6826033 (= e!4117971 ((_ map or) call!621359 call!621360))))

(declare-fun call!621356 () List!66217)

(declare-fun bm!621354 () Bool)

(assert (=> bm!621354 (= call!621358 (derivationStepZipperDown!1867 (ite c!1270652 (regOne!33791 (h!72541 (exprs!6523 lt!2452067))) (ite c!1270655 (regTwo!33790 (h!72541 (exprs!6523 lt!2452067))) (ite c!1270654 (regOne!33790 (h!72541 (exprs!6523 lt!2452067))) (reg!16968 (h!72541 (exprs!6523 lt!2452067)))))) (ite (or c!1270652 c!1270655) (Context!12047 (t!379956 (exprs!6523 lt!2452067))) (Context!12047 call!621356)) (h!72540 s!2326)))))

(declare-fun b!6826034 () Bool)

(assert (=> b!6826034 (= e!4117972 (store ((as const (Array Context!12046 Bool)) false) (Context!12047 (t!379956 (exprs!6523 lt!2452067))) true))))

(declare-fun b!6826035 () Bool)

(declare-fun e!4117969 () (InoxSet Context!12046))

(declare-fun call!621357 () (InoxSet Context!12046))

(assert (=> b!6826035 (= e!4117969 call!621357)))

(declare-fun b!6826036 () Bool)

(assert (=> b!6826036 (= e!4117972 e!4117970)))

(assert (=> b!6826036 (= c!1270652 ((_ is Union!16639) (h!72541 (exprs!6523 lt!2452067))))))

(declare-fun bm!621355 () Bool)

(assert (=> bm!621355 (= call!621356 call!621361)))

(declare-fun b!6826037 () Bool)

(declare-fun e!4117974 () (InoxSet Context!12046))

(assert (=> b!6826037 (= e!4117971 e!4117974)))

(assert (=> b!6826037 (= c!1270654 ((_ is Concat!25484) (h!72541 (exprs!6523 lt!2452067))))))

(declare-fun b!6826038 () Bool)

(assert (=> b!6826038 (= e!4117969 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6826039 () Bool)

(assert (=> b!6826039 (= e!4117970 ((_ map or) call!621358 call!621359))))

(declare-fun b!6826040 () Bool)

(declare-fun c!1270651 () Bool)

(assert (=> b!6826040 (= c!1270651 ((_ is Star!16639) (h!72541 (exprs!6523 lt!2452067))))))

(assert (=> b!6826040 (= e!4117974 e!4117969)))

(declare-fun b!6826041 () Bool)

(assert (=> b!6826041 (= e!4117973 (nullable!6614 (regOne!33790 (h!72541 (exprs!6523 lt!2452067)))))))

(declare-fun bm!621356 () Bool)

(assert (=> bm!621356 (= call!621357 call!621360)))

(declare-fun b!6826042 () Bool)

(assert (=> b!6826042 (= e!4117974 call!621357)))

(assert (= (and d!2146749 c!1270653) b!6826034))

(assert (= (and d!2146749 (not c!1270653)) b!6826036))

(assert (= (and b!6826036 c!1270652) b!6826039))

(assert (= (and b!6826036 (not c!1270652)) b!6826032))

(assert (= (and b!6826032 res!2788028) b!6826041))

(assert (= (and b!6826032 c!1270655) b!6826033))

(assert (= (and b!6826032 (not c!1270655)) b!6826037))

(assert (= (and b!6826037 c!1270654) b!6826042))

(assert (= (and b!6826037 (not c!1270654)) b!6826040))

(assert (= (and b!6826040 c!1270651) b!6826035))

(assert (= (and b!6826040 (not c!1270651)) b!6826038))

(assert (= (or b!6826042 b!6826035) bm!621355))

(assert (= (or b!6826042 b!6826035) bm!621356))

(assert (= (or b!6826033 bm!621355) bm!621353))

(assert (= (or b!6826033 bm!621356) bm!621352))

(assert (= (or b!6826039 b!6826033) bm!621351))

(assert (= (or b!6826039 bm!621352) bm!621354))

(declare-fun m!7572014 () Bool)

(assert (=> bm!621353 m!7572014))

(declare-fun m!7572016 () Bool)

(assert (=> bm!621354 m!7572016))

(declare-fun m!7572018 () Bool)

(assert (=> b!6826041 m!7572018))

(declare-fun m!7572020 () Bool)

(assert (=> b!6826034 m!7572020))

(declare-fun m!7572024 () Bool)

(assert (=> bm!621351 m!7572024))

(assert (=> bm!621107 d!2146749))

(declare-fun d!2146753 () Bool)

(declare-fun c!1270658 () Bool)

(assert (=> d!2146753 (= c!1270658 (isEmpty!38481 (tail!12766 (t!379955 s!2326))))))

(declare-fun e!4117980 () Bool)

(assert (=> d!2146753 (= (matchZipper!2625 (derivationStepZipper!2583 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) (head!13681 (t!379955 s!2326))) (tail!12766 (t!379955 s!2326))) e!4117980)))

(declare-fun b!6826052 () Bool)

(assert (=> b!6826052 (= e!4117980 (nullableZipper!2342 (derivationStepZipper!2583 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) (head!13681 (t!379955 s!2326)))))))

(declare-fun b!6826053 () Bool)

(assert (=> b!6826053 (= e!4117980 (matchZipper!2625 (derivationStepZipper!2583 (derivationStepZipper!2583 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) (head!13681 (t!379955 s!2326))) (head!13681 (tail!12766 (t!379955 s!2326)))) (tail!12766 (tail!12766 (t!379955 s!2326)))))))

(assert (= (and d!2146753 c!1270658) b!6826052))

(assert (= (and d!2146753 (not c!1270658)) b!6826053))

(assert (=> d!2146753 m!7569770))

(declare-fun m!7572034 () Bool)

(assert (=> d!2146753 m!7572034))

(assert (=> b!6826052 m!7569768))

(declare-fun m!7572038 () Bool)

(assert (=> b!6826052 m!7572038))

(assert (=> b!6826053 m!7569770))

(declare-fun m!7572040 () Bool)

(assert (=> b!6826053 m!7572040))

(assert (=> b!6826053 m!7569768))

(assert (=> b!6826053 m!7572040))

(declare-fun m!7572044 () Bool)

(assert (=> b!6826053 m!7572044))

(assert (=> b!6826053 m!7569770))

(declare-fun m!7572046 () Bool)

(assert (=> b!6826053 m!7572046))

(assert (=> b!6826053 m!7572044))

(assert (=> b!6826053 m!7572046))

(declare-fun m!7572050 () Bool)

(assert (=> b!6826053 m!7572050))

(assert (=> b!6824043 d!2146753))

(declare-fun bs!1824083 () Bool)

(declare-fun d!2146757 () Bool)

(assert (= bs!1824083 (and d!2146757 d!2146305)))

(declare-fun lambda!385664 () Int)

(assert (=> bs!1824083 (= (= (head!13681 (t!379955 s!2326)) (head!13681 (_2!36917 lt!2452079))) (= lambda!385664 lambda!385598))))

(declare-fun bs!1824086 () Bool)

(assert (= bs!1824086 (and d!2146757 d!2146169)))

(assert (=> bs!1824086 (= (= (head!13681 (t!379955 s!2326)) (head!13681 s!2326)) (= lambda!385664 lambda!385589))))

(declare-fun bs!1824088 () Bool)

(assert (= bs!1824088 (and d!2146757 d!2146319)))

(assert (=> bs!1824088 (= (= (head!13681 (t!379955 s!2326)) (head!13681 (_1!36917 lt!2452079))) (= lambda!385664 lambda!385599))))

(declare-fun bs!1824090 () Bool)

(assert (= bs!1824090 (and d!2146757 d!2146247)))

(assert (=> bs!1824090 (= (= (head!13681 (t!379955 s!2326)) (head!13681 lt!2452083)) (= lambda!385664 lambda!385595))))

(declare-fun bs!1824092 () Bool)

(assert (= bs!1824092 (and d!2146757 d!2145963)))

(assert (=> bs!1824092 (= (= (head!13681 (t!379955 s!2326)) (h!72540 s!2326)) (= lambda!385664 lambda!385544))))

(declare-fun bs!1824093 () Bool)

(assert (= bs!1824093 (and d!2146757 d!2146679)))

(assert (=> bs!1824093 (= (= (head!13681 (t!379955 s!2326)) (head!13681 s!2326)) (= lambda!385664 lambda!385654))))

(declare-fun bs!1824095 () Bool)

(assert (= bs!1824095 (and d!2146757 d!2145993)))

(assert (=> bs!1824095 (= (= (head!13681 (t!379955 s!2326)) (h!72540 s!2326)) (= lambda!385664 lambda!385551))))

(declare-fun bs!1824097 () Bool)

(assert (= bs!1824097 (and d!2146757 b!6824000)))

(assert (=> bs!1824097 (= (= (head!13681 (t!379955 s!2326)) (h!72540 s!2326)) (= lambda!385664 lambda!385481))))

(declare-fun bs!1824099 () Bool)

(assert (= bs!1824099 (and d!2146757 d!2145827)))

(assert (=> bs!1824099 (= (= (head!13681 (t!379955 s!2326)) (h!72540 s!2326)) (= lambda!385664 lambda!385489))))

(assert (=> d!2146757 true))

(assert (=> d!2146757 (= (derivationStepZipper!2583 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) (head!13681 (t!379955 s!2326))) (flatMap!2120 (derivationStepZipper!2583 lt!2452058 (h!72540 s!2326)) lambda!385664))))

(declare-fun bs!1824102 () Bool)

(assert (= bs!1824102 d!2146757))

(assert (=> bs!1824102 m!7569610))

(declare-fun m!7572052 () Bool)

(assert (=> bs!1824102 m!7572052))

(assert (=> b!6824043 d!2146757))

(declare-fun d!2146759 () Bool)

(assert (=> d!2146759 (= (head!13681 (t!379955 s!2326)) (h!72540 (t!379955 s!2326)))))

(assert (=> b!6824043 d!2146759))

(declare-fun d!2146761 () Bool)

(assert (=> d!2146761 (= (tail!12766 (t!379955 s!2326)) (t!379955 (t!379955 s!2326)))))

(assert (=> b!6824043 d!2146761))

(declare-fun d!2146763 () Bool)

(assert (=> d!2146763 true))

(assert (=> d!2146763 true))

(declare-fun res!2788034 () Bool)

(assert (=> d!2146763 (= (choose!50883 lambda!385480) res!2788034)))

(assert (=> d!2145869 d!2146763))

(declare-fun d!2146767 () Bool)

(declare-fun res!2788035 () Bool)

(declare-fun e!4117982 () Bool)

(assert (=> d!2146767 (=> res!2788035 e!4117982)))

(assert (=> d!2146767 (= res!2788035 ((_ is Nil!66093) (exprs!6523 setElem!46837)))))

(assert (=> d!2146767 (= (forall!15827 (exprs!6523 setElem!46837) lambda!385576) e!4117982)))

(declare-fun b!6826056 () Bool)

(declare-fun e!4117983 () Bool)

(assert (=> b!6826056 (= e!4117982 e!4117983)))

(declare-fun res!2788036 () Bool)

(assert (=> b!6826056 (=> (not res!2788036) (not e!4117983))))

(assert (=> b!6826056 (= res!2788036 (dynLambda!26411 lambda!385576 (h!72541 (exprs!6523 setElem!46837))))))

(declare-fun b!6826057 () Bool)

(assert (=> b!6826057 (= e!4117983 (forall!15827 (t!379956 (exprs!6523 setElem!46837)) lambda!385576))))

(assert (= (and d!2146767 (not res!2788035)) b!6826056))

(assert (= (and b!6826056 res!2788036) b!6826057))

(declare-fun b_lambda!257475 () Bool)

(assert (=> (not b_lambda!257475) (not b!6826056)))

(declare-fun m!7572060 () Bool)

(assert (=> b!6826056 m!7572060))

(declare-fun m!7572062 () Bool)

(assert (=> b!6826057 m!7572062))

(assert (=> d!2146077 d!2146767))

(declare-fun d!2146771 () Bool)

(assert (=> d!2146771 (= (Exists!3707 lambda!385514) (choose!50883 lambda!385514))))

(declare-fun bs!1824104 () Bool)

(assert (= bs!1824104 d!2146771))

(declare-fun m!7572068 () Bool)

(assert (=> bs!1824104 m!7572068))

(assert (=> d!2145873 d!2146771))

(declare-fun d!2146777 () Bool)

(assert (=> d!2146777 (= (Exists!3707 lambda!385515) (choose!50883 lambda!385515))))

(declare-fun bs!1824105 () Bool)

(assert (= bs!1824105 d!2146777))

(declare-fun m!7572070 () Bool)

(assert (=> bs!1824105 m!7572070))

(assert (=> d!2145873 d!2146777))

(declare-fun bs!1824120 () Bool)

(declare-fun d!2146779 () Bool)

(assert (= bs!1824120 (and d!2146779 b!6825030)))

(declare-fun lambda!385670 () Int)

(assert (=> bs!1824120 (not (= lambda!385670 lambda!385586))))

(declare-fun bs!1824121 () Bool)

(assert (= bs!1824121 (and d!2146779 d!2145873)))

(assert (=> bs!1824121 (= lambda!385670 lambda!385514)))

(declare-fun bs!1824122 () Bool)

(assert (= bs!1824122 (and d!2146779 b!6824881)))

(assert (=> bs!1824122 (not (= lambda!385670 lambda!385575))))

(declare-fun bs!1824123 () Bool)

(assert (= bs!1824123 (and d!2146779 b!6825323)))

(assert (=> bs!1824123 (not (= lambda!385670 lambda!385602))))

(declare-fun bs!1824124 () Bool)

(assert (= bs!1824124 (and d!2146779 d!2146719)))

(assert (=> bs!1824124 (= lambda!385670 lambda!385662)))

(declare-fun bs!1824125 () Bool)

(assert (= bs!1824125 (and d!2146779 b!6825585)))

(assert (=> bs!1824125 (not (= lambda!385670 lambda!385621))))

(declare-fun bs!1824126 () Bool)

(assert (= bs!1824126 (and d!2146779 b!6825021)))

(assert (=> bs!1824126 (not (= lambda!385670 lambda!385587))))

(assert (=> bs!1824121 (not (= lambda!385670 lambda!385515))))

(declare-fun bs!1824127 () Bool)

(assert (= bs!1824127 (and d!2146779 d!2145893)))

(assert (=> bs!1824127 (not (= lambda!385670 lambda!385525))))

(declare-fun bs!1824128 () Bool)

(assert (= bs!1824128 (and d!2146779 b!6824659)))

(assert (=> bs!1824128 (not (= lambda!385670 lambda!385564))))

(declare-fun bs!1824129 () Bool)

(assert (= bs!1824129 (and d!2146779 b!6824890)))

(assert (=> bs!1824129 (not (= lambda!385670 lambda!385574))))

(declare-fun bs!1824130 () Bool)

(assert (= bs!1824130 (and d!2146779 b!6824668)))

(assert (=> bs!1824130 (not (= lambda!385670 lambda!385563))))

(declare-fun bs!1824131 () Bool)

(assert (= bs!1824131 (and d!2146779 d!2146419)))

(assert (=> bs!1824131 (not (= lambda!385670 lambda!385611))))

(declare-fun bs!1824132 () Bool)

(assert (= bs!1824132 (and d!2146779 b!6825332)))

(assert (=> bs!1824132 (not (= lambda!385670 lambda!385600))))

(assert (=> bs!1824127 (= (= r!7292 (Star!16639 (reg!16968 r!7292))) (= lambda!385670 lambda!385522))))

(declare-fun bs!1824133 () Bool)

(assert (= bs!1824133 (and d!2146779 d!2145941)))

(assert (=> bs!1824133 (= lambda!385670 lambda!385537)))

(declare-fun bs!1824135 () Bool)

(assert (= bs!1824135 (and d!2146779 b!6825660)))

(assert (=> bs!1824135 (not (= lambda!385670 lambda!385629))))

(declare-fun bs!1824136 () Bool)

(assert (= bs!1824136 (and d!2146779 b!6825594)))

(assert (=> bs!1824136 (not (= lambda!385670 lambda!385618))))

(declare-fun bs!1824138 () Bool)

(assert (= bs!1824138 (and d!2146779 b!6824003)))

(assert (=> bs!1824138 (not (= lambda!385670 lambda!385480))))

(assert (=> bs!1824138 (not (= lambda!385670 lambda!385479))))

(assert (=> bs!1824138 (= lambda!385670 lambda!385478)))

(declare-fun bs!1824142 () Bool)

(assert (= bs!1824142 (and d!2146779 b!6825669)))

(assert (=> bs!1824142 (not (= lambda!385670 lambda!385627))))

(assert (=> bs!1824131 (= (= r!7292 (Star!16639 (reg!16968 r!7292))) (= lambda!385670 lambda!385608))))

(assert (=> d!2146779 true))

(assert (=> d!2146779 true))

(assert (=> d!2146779 true))

(declare-fun lambda!385672 () Int)

(assert (=> bs!1824120 (not (= lambda!385672 lambda!385586))))

(assert (=> bs!1824121 (not (= lambda!385672 lambda!385514))))

(assert (=> bs!1824122 (= (and (= (reg!16968 r!7292) (regOne!33790 lt!2452072)) (= r!7292 (regTwo!33790 lt!2452072))) (= lambda!385672 lambda!385575))))

(assert (=> bs!1824123 (= (and (= (reg!16968 r!7292) (regOne!33790 (regTwo!33791 lt!2452072))) (= r!7292 (regTwo!33790 (regTwo!33791 lt!2452072)))) (= lambda!385672 lambda!385602))))

(assert (=> bs!1824124 (not (= lambda!385672 lambda!385662))))

(assert (=> bs!1824125 (= (and (= (reg!16968 r!7292) (regOne!33790 (regTwo!33791 r!7292))) (= r!7292 (regTwo!33790 (regTwo!33791 r!7292)))) (= lambda!385672 lambda!385621))))

(assert (=> bs!1824126 (= (and (= (reg!16968 r!7292) (regOne!33790 (regOne!33791 lt!2452072))) (= r!7292 (regTwo!33790 (regOne!33791 lt!2452072)))) (= lambda!385672 lambda!385587))))

(assert (=> bs!1824127 (not (= lambda!385672 lambda!385525))))

(assert (=> bs!1824128 (= (and (= (reg!16968 r!7292) (regOne!33790 r!7292)) (= r!7292 (regTwo!33790 r!7292))) (= lambda!385672 lambda!385564))))

(assert (=> bs!1824129 (not (= lambda!385672 lambda!385574))))

(assert (=> bs!1824130 (not (= lambda!385672 lambda!385563))))

(assert (=> bs!1824131 (not (= lambda!385672 lambda!385611))))

(assert (=> bs!1824132 (not (= lambda!385672 lambda!385600))))

(assert (=> bs!1824127 (not (= lambda!385672 lambda!385522))))

(assert (=> bs!1824133 (not (= lambda!385672 lambda!385537))))

(assert (=> bs!1824135 (= (and (= (reg!16968 r!7292) (regOne!33790 (regOne!33791 r!7292))) (= r!7292 (regTwo!33790 (regOne!33791 r!7292)))) (= lambda!385672 lambda!385629))))

(assert (=> bs!1824136 (not (= lambda!385672 lambda!385618))))

(assert (=> bs!1824138 (= lambda!385672 lambda!385480)))

(assert (=> bs!1824121 (= lambda!385672 lambda!385515)))

(declare-fun bs!1824156 () Bool)

(assert (= bs!1824156 d!2146779))

(assert (=> bs!1824156 (not (= lambda!385672 lambda!385670))))

(assert (=> bs!1824138 (not (= lambda!385672 lambda!385479))))

(assert (=> bs!1824138 (not (= lambda!385672 lambda!385478))))

(assert (=> bs!1824142 (not (= lambda!385672 lambda!385627))))

(assert (=> bs!1824131 (not (= lambda!385672 lambda!385608))))

(assert (=> d!2146779 true))

(assert (=> d!2146779 true))

(assert (=> d!2146779 true))

(assert (=> d!2146779 (= (Exists!3707 lambda!385670) (Exists!3707 lambda!385672))))

(assert (=> d!2146779 true))

(declare-fun _$90!2728 () Unit!159969)

(assert (=> d!2146779 (= (choose!50884 (reg!16968 r!7292) r!7292 s!2326) _$90!2728)))

(declare-fun m!7572110 () Bool)

(assert (=> bs!1824156 m!7572110))

(declare-fun m!7572112 () Bool)

(assert (=> bs!1824156 m!7572112))

(assert (=> d!2145873 d!2146779))

(assert (=> d!2145873 d!2146349))

(assert (=> b!6824900 d!2146441))

(assert (=> b!6824900 d!2146179))

(assert (=> bs!1823517 d!2146057))

(declare-fun d!2146807 () Bool)

(assert (=> d!2146807 true))

(declare-fun setRes!46860 () Bool)

(assert (=> d!2146807 setRes!46860))

(declare-fun condSetEmpty!46860 () Bool)

(declare-fun res!2788067 () (InoxSet Context!12046))

(assert (=> d!2146807 (= condSetEmpty!46860 (= res!2788067 ((as const (Array Context!12046 Bool)) false)))))

(assert (=> d!2146807 (= (choose!50902 lt!2452091 lambda!385482) res!2788067)))

(declare-fun setIsEmpty!46860 () Bool)

(assert (=> setIsEmpty!46860 setRes!46860))

(declare-fun tp!1868008 () Bool)

(declare-fun setNonEmpty!46860 () Bool)

(declare-fun e!4118027 () Bool)

(declare-fun setElem!46860 () Context!12046)

(assert (=> setNonEmpty!46860 (= setRes!46860 (and tp!1868008 (inv!84844 setElem!46860) e!4118027))))

(declare-fun setRest!46860 () (InoxSet Context!12046))

(assert (=> setNonEmpty!46860 (= res!2788067 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) setElem!46860 true) setRest!46860))))

(declare-fun b!6826130 () Bool)

(declare-fun tp!1868009 () Bool)

(assert (=> b!6826130 (= e!4118027 tp!1868009)))

(assert (= (and d!2146807 condSetEmpty!46860) setIsEmpty!46860))

(assert (= (and d!2146807 (not condSetEmpty!46860)) setNonEmpty!46860))

(assert (= setNonEmpty!46860 b!6826130))

(declare-fun m!7572120 () Bool)

(assert (=> setNonEmpty!46860 m!7572120))

(assert (=> d!2146081 d!2146807))

(declare-fun d!2146811 () Bool)

(assert (=> d!2146811 (= (isEmpty!38481 (t!379955 s!2326)) ((_ is Nil!66092) (t!379955 s!2326)))))

(assert (=> d!2145825 d!2146811))

(declare-fun d!2146813 () Bool)

(declare-fun c!1270684 () Bool)

(assert (=> d!2146813 (= c!1270684 ((_ is Nil!66094) lt!2452206))))

(declare-fun e!4118035 () (InoxSet Context!12046))

(assert (=> d!2146813 (= (content!12941 lt!2452206) e!4118035)))

(declare-fun b!6826145 () Bool)

(assert (=> b!6826145 (= e!4118035 ((as const (Array Context!12046 Bool)) false))))

(declare-fun b!6826146 () Bool)

(assert (=> b!6826146 (= e!4118035 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) (h!72542 lt!2452206) true) (content!12941 (t!379957 lt!2452206))))))

(assert (= (and d!2146813 c!1270684) b!6826145))

(assert (= (and d!2146813 (not c!1270684)) b!6826146))

(declare-fun m!7572122 () Bool)

(assert (=> b!6826146 m!7572122))

(declare-fun m!7572124 () Bool)

(assert (=> b!6826146 m!7572124))

(assert (=> b!6824507 d!2146813))

(declare-fun e!4118036 () Bool)

(assert (=> b!6824950 (= tp!1867944 e!4118036)))

(declare-fun b!6826150 () Bool)

(declare-fun tp!1868011 () Bool)

(declare-fun tp!1868012 () Bool)

(assert (=> b!6826150 (= e!4118036 (and tp!1868011 tp!1868012))))

(declare-fun b!6826148 () Bool)

(declare-fun tp!1868010 () Bool)

(declare-fun tp!1868013 () Bool)

(assert (=> b!6826148 (= e!4118036 (and tp!1868010 tp!1868013))))

(declare-fun b!6826147 () Bool)

(assert (=> b!6826147 (= e!4118036 tp_is_empty!42531)))

(declare-fun b!6826149 () Bool)

(declare-fun tp!1868014 () Bool)

(assert (=> b!6826149 (= e!4118036 tp!1868014)))

(assert (= (and b!6824950 ((_ is ElementMatch!16639) (regOne!33791 (reg!16968 r!7292)))) b!6826147))

(assert (= (and b!6824950 ((_ is Concat!25484) (regOne!33791 (reg!16968 r!7292)))) b!6826148))

(assert (= (and b!6824950 ((_ is Star!16639) (regOne!33791 (reg!16968 r!7292)))) b!6826149))

(assert (= (and b!6824950 ((_ is Union!16639) (regOne!33791 (reg!16968 r!7292)))) b!6826150))

(declare-fun e!4118042 () Bool)

(assert (=> b!6824950 (= tp!1867945 e!4118042)))

(declare-fun b!6826164 () Bool)

(declare-fun tp!1868016 () Bool)

(declare-fun tp!1868017 () Bool)

(assert (=> b!6826164 (= e!4118042 (and tp!1868016 tp!1868017))))

(declare-fun b!6826162 () Bool)

(declare-fun tp!1868015 () Bool)

(declare-fun tp!1868018 () Bool)

(assert (=> b!6826162 (= e!4118042 (and tp!1868015 tp!1868018))))

(declare-fun b!6826161 () Bool)

(assert (=> b!6826161 (= e!4118042 tp_is_empty!42531)))

(declare-fun b!6826163 () Bool)

(declare-fun tp!1868019 () Bool)

(assert (=> b!6826163 (= e!4118042 tp!1868019)))

(assert (= (and b!6824950 ((_ is ElementMatch!16639) (regTwo!33791 (reg!16968 r!7292)))) b!6826161))

(assert (= (and b!6824950 ((_ is Concat!25484) (regTwo!33791 (reg!16968 r!7292)))) b!6826162))

(assert (= (and b!6824950 ((_ is Star!16639) (regTwo!33791 (reg!16968 r!7292)))) b!6826163))

(assert (= (and b!6824950 ((_ is Union!16639) (regTwo!33791 (reg!16968 r!7292)))) b!6826164))

(declare-fun e!4118043 () Bool)

(assert (=> b!6824949 (= tp!1867947 e!4118043)))

(declare-fun b!6826168 () Bool)

(declare-fun tp!1868021 () Bool)

(declare-fun tp!1868022 () Bool)

(assert (=> b!6826168 (= e!4118043 (and tp!1868021 tp!1868022))))

(declare-fun b!6826166 () Bool)

(declare-fun tp!1868020 () Bool)

(declare-fun tp!1868023 () Bool)

(assert (=> b!6826166 (= e!4118043 (and tp!1868020 tp!1868023))))

(declare-fun b!6826165 () Bool)

(assert (=> b!6826165 (= e!4118043 tp_is_empty!42531)))

(declare-fun b!6826167 () Bool)

(declare-fun tp!1868024 () Bool)

(assert (=> b!6826167 (= e!4118043 tp!1868024)))

(assert (= (and b!6824949 ((_ is ElementMatch!16639) (reg!16968 (reg!16968 r!7292)))) b!6826165))

(assert (= (and b!6824949 ((_ is Concat!25484) (reg!16968 (reg!16968 r!7292)))) b!6826166))

(assert (= (and b!6824949 ((_ is Star!16639) (reg!16968 (reg!16968 r!7292)))) b!6826167))

(assert (= (and b!6824949 ((_ is Union!16639) (reg!16968 (reg!16968 r!7292)))) b!6826168))

(declare-fun e!4118044 () Bool)

(assert (=> b!6824935 (= tp!1867932 e!4118044)))

(declare-fun b!6826172 () Bool)

(declare-fun tp!1868026 () Bool)

(declare-fun tp!1868027 () Bool)

(assert (=> b!6826172 (= e!4118044 (and tp!1868026 tp!1868027))))

(declare-fun b!6826170 () Bool)

(declare-fun tp!1868025 () Bool)

(declare-fun tp!1868028 () Bool)

(assert (=> b!6826170 (= e!4118044 (and tp!1868025 tp!1868028))))

(declare-fun b!6826169 () Bool)

(assert (=> b!6826169 (= e!4118044 tp_is_empty!42531)))

(declare-fun b!6826171 () Bool)

(declare-fun tp!1868029 () Bool)

(assert (=> b!6826171 (= e!4118044 tp!1868029)))

(assert (= (and b!6824935 ((_ is ElementMatch!16639) (reg!16968 (regOne!33790 r!7292)))) b!6826169))

(assert (= (and b!6824935 ((_ is Concat!25484) (reg!16968 (regOne!33790 r!7292)))) b!6826170))

(assert (= (and b!6824935 ((_ is Star!16639) (reg!16968 (regOne!33790 r!7292)))) b!6826171))

(assert (= (and b!6824935 ((_ is Union!16639) (reg!16968 (regOne!33790 r!7292)))) b!6826172))

(declare-fun e!4118045 () Bool)

(assert (=> b!6824936 (= tp!1867929 e!4118045)))

(declare-fun b!6826176 () Bool)

(declare-fun tp!1868031 () Bool)

(declare-fun tp!1868032 () Bool)

(assert (=> b!6826176 (= e!4118045 (and tp!1868031 tp!1868032))))

(declare-fun b!6826174 () Bool)

(declare-fun tp!1868030 () Bool)

(declare-fun tp!1868033 () Bool)

(assert (=> b!6826174 (= e!4118045 (and tp!1868030 tp!1868033))))

(declare-fun b!6826173 () Bool)

(assert (=> b!6826173 (= e!4118045 tp_is_empty!42531)))

(declare-fun b!6826175 () Bool)

(declare-fun tp!1868034 () Bool)

(assert (=> b!6826175 (= e!4118045 tp!1868034)))

(assert (= (and b!6824936 ((_ is ElementMatch!16639) (regOne!33791 (regOne!33790 r!7292)))) b!6826173))

(assert (= (and b!6824936 ((_ is Concat!25484) (regOne!33791 (regOne!33790 r!7292)))) b!6826174))

(assert (= (and b!6824936 ((_ is Star!16639) (regOne!33791 (regOne!33790 r!7292)))) b!6826175))

(assert (= (and b!6824936 ((_ is Union!16639) (regOne!33791 (regOne!33790 r!7292)))) b!6826176))

(declare-fun e!4118046 () Bool)

(assert (=> b!6824936 (= tp!1867930 e!4118046)))

(declare-fun b!6826180 () Bool)

(declare-fun tp!1868036 () Bool)

(declare-fun tp!1868037 () Bool)

(assert (=> b!6826180 (= e!4118046 (and tp!1868036 tp!1868037))))

(declare-fun b!6826178 () Bool)

(declare-fun tp!1868035 () Bool)

(declare-fun tp!1868038 () Bool)

(assert (=> b!6826178 (= e!4118046 (and tp!1868035 tp!1868038))))

(declare-fun b!6826177 () Bool)

(assert (=> b!6826177 (= e!4118046 tp_is_empty!42531)))

(declare-fun b!6826179 () Bool)

(declare-fun tp!1868039 () Bool)

(assert (=> b!6826179 (= e!4118046 tp!1868039)))

(assert (= (and b!6824936 ((_ is ElementMatch!16639) (regTwo!33791 (regOne!33790 r!7292)))) b!6826177))

(assert (= (and b!6824936 ((_ is Concat!25484) (regTwo!33791 (regOne!33790 r!7292)))) b!6826178))

(assert (= (and b!6824936 ((_ is Star!16639) (regTwo!33791 (regOne!33790 r!7292)))) b!6826179))

(assert (= (and b!6824936 ((_ is Union!16639) (regTwo!33791 (regOne!33790 r!7292)))) b!6826180))

(declare-fun e!4118054 () Bool)

(assert (=> b!6824934 (= tp!1867928 e!4118054)))

(declare-fun b!6826195 () Bool)

(declare-fun tp!1868041 () Bool)

(declare-fun tp!1868042 () Bool)

(assert (=> b!6826195 (= e!4118054 (and tp!1868041 tp!1868042))))

(declare-fun b!6826193 () Bool)

(declare-fun tp!1868040 () Bool)

(declare-fun tp!1868043 () Bool)

(assert (=> b!6826193 (= e!4118054 (and tp!1868040 tp!1868043))))

(declare-fun b!6826192 () Bool)

(assert (=> b!6826192 (= e!4118054 tp_is_empty!42531)))

(declare-fun b!6826194 () Bool)

(declare-fun tp!1868044 () Bool)

(assert (=> b!6826194 (= e!4118054 tp!1868044)))

(assert (= (and b!6824934 ((_ is ElementMatch!16639) (regOne!33790 (regOne!33790 r!7292)))) b!6826192))

(assert (= (and b!6824934 ((_ is Concat!25484) (regOne!33790 (regOne!33790 r!7292)))) b!6826193))

(assert (= (and b!6824934 ((_ is Star!16639) (regOne!33790 (regOne!33790 r!7292)))) b!6826194))

(assert (= (and b!6824934 ((_ is Union!16639) (regOne!33790 (regOne!33790 r!7292)))) b!6826195))

(declare-fun e!4118055 () Bool)

(assert (=> b!6824934 (= tp!1867931 e!4118055)))

(declare-fun b!6826199 () Bool)

(declare-fun tp!1868046 () Bool)

(declare-fun tp!1868047 () Bool)

(assert (=> b!6826199 (= e!4118055 (and tp!1868046 tp!1868047))))

(declare-fun b!6826197 () Bool)

(declare-fun tp!1868045 () Bool)

(declare-fun tp!1868048 () Bool)

(assert (=> b!6826197 (= e!4118055 (and tp!1868045 tp!1868048))))

(declare-fun b!6826196 () Bool)

(assert (=> b!6826196 (= e!4118055 tp_is_empty!42531)))

(declare-fun b!6826198 () Bool)

(declare-fun tp!1868049 () Bool)

(assert (=> b!6826198 (= e!4118055 tp!1868049)))

(assert (= (and b!6824934 ((_ is ElementMatch!16639) (regTwo!33790 (regOne!33790 r!7292)))) b!6826196))

(assert (= (and b!6824934 ((_ is Concat!25484) (regTwo!33790 (regOne!33790 r!7292)))) b!6826197))

(assert (= (and b!6824934 ((_ is Star!16639) (regTwo!33790 (regOne!33790 r!7292)))) b!6826198))

(assert (= (and b!6824934 ((_ is Union!16639) (regTwo!33790 (regOne!33790 r!7292)))) b!6826199))

(declare-fun e!4118056 () Bool)

(assert (=> b!6824921 (= tp!1867912 e!4118056)))

(declare-fun b!6826203 () Bool)

(declare-fun tp!1868051 () Bool)

(declare-fun tp!1868052 () Bool)

(assert (=> b!6826203 (= e!4118056 (and tp!1868051 tp!1868052))))

(declare-fun b!6826201 () Bool)

(declare-fun tp!1868050 () Bool)

(declare-fun tp!1868053 () Bool)

(assert (=> b!6826201 (= e!4118056 (and tp!1868050 tp!1868053))))

(declare-fun b!6826200 () Bool)

(assert (=> b!6826200 (= e!4118056 tp_is_empty!42531)))

(declare-fun b!6826202 () Bool)

(declare-fun tp!1868054 () Bool)

(assert (=> b!6826202 (= e!4118056 tp!1868054)))

(assert (= (and b!6824921 ((_ is ElementMatch!16639) (regOne!33790 (regOne!33791 r!7292)))) b!6826200))

(assert (= (and b!6824921 ((_ is Concat!25484) (regOne!33790 (regOne!33791 r!7292)))) b!6826201))

(assert (= (and b!6824921 ((_ is Star!16639) (regOne!33790 (regOne!33791 r!7292)))) b!6826202))

(assert (= (and b!6824921 ((_ is Union!16639) (regOne!33790 (regOne!33791 r!7292)))) b!6826203))

(declare-fun e!4118057 () Bool)

(assert (=> b!6824921 (= tp!1867915 e!4118057)))

(declare-fun b!6826207 () Bool)

(declare-fun tp!1868056 () Bool)

(declare-fun tp!1868057 () Bool)

(assert (=> b!6826207 (= e!4118057 (and tp!1868056 tp!1868057))))

(declare-fun b!6826205 () Bool)

(declare-fun tp!1868055 () Bool)

(declare-fun tp!1868058 () Bool)

(assert (=> b!6826205 (= e!4118057 (and tp!1868055 tp!1868058))))

(declare-fun b!6826204 () Bool)

(assert (=> b!6826204 (= e!4118057 tp_is_empty!42531)))

(declare-fun b!6826206 () Bool)

(declare-fun tp!1868059 () Bool)

(assert (=> b!6826206 (= e!4118057 tp!1868059)))

(assert (= (and b!6824921 ((_ is ElementMatch!16639) (regTwo!33790 (regOne!33791 r!7292)))) b!6826204))

(assert (= (and b!6824921 ((_ is Concat!25484) (regTwo!33790 (regOne!33791 r!7292)))) b!6826205))

(assert (= (and b!6824921 ((_ is Star!16639) (regTwo!33790 (regOne!33791 r!7292)))) b!6826206))

(assert (= (and b!6824921 ((_ is Union!16639) (regTwo!33790 (regOne!33791 r!7292)))) b!6826207))

(declare-fun e!4118058 () Bool)

(assert (=> b!6824923 (= tp!1867913 e!4118058)))

(declare-fun b!6826211 () Bool)

(declare-fun tp!1868061 () Bool)

(declare-fun tp!1868062 () Bool)

(assert (=> b!6826211 (= e!4118058 (and tp!1868061 tp!1868062))))

(declare-fun b!6826209 () Bool)

(declare-fun tp!1868060 () Bool)

(declare-fun tp!1868063 () Bool)

(assert (=> b!6826209 (= e!4118058 (and tp!1868060 tp!1868063))))

(declare-fun b!6826208 () Bool)

(assert (=> b!6826208 (= e!4118058 tp_is_empty!42531)))

(declare-fun b!6826210 () Bool)

(declare-fun tp!1868064 () Bool)

(assert (=> b!6826210 (= e!4118058 tp!1868064)))

(assert (= (and b!6824923 ((_ is ElementMatch!16639) (regOne!33791 (regOne!33791 r!7292)))) b!6826208))

(assert (= (and b!6824923 ((_ is Concat!25484) (regOne!33791 (regOne!33791 r!7292)))) b!6826209))

(assert (= (and b!6824923 ((_ is Star!16639) (regOne!33791 (regOne!33791 r!7292)))) b!6826210))

(assert (= (and b!6824923 ((_ is Union!16639) (regOne!33791 (regOne!33791 r!7292)))) b!6826211))

(declare-fun e!4118059 () Bool)

(assert (=> b!6824923 (= tp!1867914 e!4118059)))

(declare-fun b!6826215 () Bool)

(declare-fun tp!1868066 () Bool)

(declare-fun tp!1868067 () Bool)

(assert (=> b!6826215 (= e!4118059 (and tp!1868066 tp!1868067))))

(declare-fun b!6826213 () Bool)

(declare-fun tp!1868065 () Bool)

(declare-fun tp!1868068 () Bool)

(assert (=> b!6826213 (= e!4118059 (and tp!1868065 tp!1868068))))

(declare-fun b!6826212 () Bool)

(assert (=> b!6826212 (= e!4118059 tp_is_empty!42531)))

(declare-fun b!6826214 () Bool)

(declare-fun tp!1868069 () Bool)

(assert (=> b!6826214 (= e!4118059 tp!1868069)))

(assert (= (and b!6824923 ((_ is ElementMatch!16639) (regTwo!33791 (regOne!33791 r!7292)))) b!6826212))

(assert (= (and b!6824923 ((_ is Concat!25484) (regTwo!33791 (regOne!33791 r!7292)))) b!6826213))

(assert (= (and b!6824923 ((_ is Star!16639) (regTwo!33791 (regOne!33791 r!7292)))) b!6826214))

(assert (= (and b!6824923 ((_ is Union!16639) (regTwo!33791 (regOne!33791 r!7292)))) b!6826215))

(declare-fun e!4118060 () Bool)

(assert (=> b!6824922 (= tp!1867916 e!4118060)))

(declare-fun b!6826219 () Bool)

(declare-fun tp!1868071 () Bool)

(declare-fun tp!1868072 () Bool)

(assert (=> b!6826219 (= e!4118060 (and tp!1868071 tp!1868072))))

(declare-fun b!6826217 () Bool)

(declare-fun tp!1868070 () Bool)

(declare-fun tp!1868073 () Bool)

(assert (=> b!6826217 (= e!4118060 (and tp!1868070 tp!1868073))))

(declare-fun b!6826216 () Bool)

(assert (=> b!6826216 (= e!4118060 tp_is_empty!42531)))

(declare-fun b!6826218 () Bool)

(declare-fun tp!1868074 () Bool)

(assert (=> b!6826218 (= e!4118060 tp!1868074)))

(assert (= (and b!6824922 ((_ is ElementMatch!16639) (reg!16968 (regOne!33791 r!7292)))) b!6826216))

(assert (= (and b!6824922 ((_ is Concat!25484) (reg!16968 (regOne!33791 r!7292)))) b!6826217))

(assert (= (and b!6824922 ((_ is Star!16639) (reg!16968 (regOne!33791 r!7292)))) b!6826218))

(assert (= (and b!6824922 ((_ is Union!16639) (reg!16968 (regOne!33791 r!7292)))) b!6826219))

(declare-fun b!6826220 () Bool)

(declare-fun e!4118061 () Bool)

(declare-fun tp!1868075 () Bool)

(assert (=> b!6826220 (= e!4118061 (and tp_is_empty!42531 tp!1868075))))

(assert (=> b!6824946 (= tp!1867942 e!4118061)))

(assert (= (and b!6824946 ((_ is Cons!66092) (t!379955 (t!379955 s!2326)))) b!6826220))

(declare-fun e!4118062 () Bool)

(assert (=> b!6824938 (= tp!1867933 e!4118062)))

(declare-fun b!6826224 () Bool)

(declare-fun tp!1868077 () Bool)

(declare-fun tp!1868078 () Bool)

(assert (=> b!6826224 (= e!4118062 (and tp!1868077 tp!1868078))))

(declare-fun b!6826222 () Bool)

(declare-fun tp!1868076 () Bool)

(declare-fun tp!1868079 () Bool)

(assert (=> b!6826222 (= e!4118062 (and tp!1868076 tp!1868079))))

(declare-fun b!6826221 () Bool)

(assert (=> b!6826221 (= e!4118062 tp_is_empty!42531)))

(declare-fun b!6826223 () Bool)

(declare-fun tp!1868080 () Bool)

(assert (=> b!6826223 (= e!4118062 tp!1868080)))

(assert (= (and b!6824938 ((_ is ElementMatch!16639) (regOne!33790 (regTwo!33790 r!7292)))) b!6826221))

(assert (= (and b!6824938 ((_ is Concat!25484) (regOne!33790 (regTwo!33790 r!7292)))) b!6826222))

(assert (= (and b!6824938 ((_ is Star!16639) (regOne!33790 (regTwo!33790 r!7292)))) b!6826223))

(assert (= (and b!6824938 ((_ is Union!16639) (regOne!33790 (regTwo!33790 r!7292)))) b!6826224))

(declare-fun e!4118063 () Bool)

(assert (=> b!6824938 (= tp!1867936 e!4118063)))

(declare-fun b!6826228 () Bool)

(declare-fun tp!1868082 () Bool)

(declare-fun tp!1868083 () Bool)

(assert (=> b!6826228 (= e!4118063 (and tp!1868082 tp!1868083))))

(declare-fun b!6826226 () Bool)

(declare-fun tp!1868081 () Bool)

(declare-fun tp!1868084 () Bool)

(assert (=> b!6826226 (= e!4118063 (and tp!1868081 tp!1868084))))

(declare-fun b!6826225 () Bool)

(assert (=> b!6826225 (= e!4118063 tp_is_empty!42531)))

(declare-fun b!6826227 () Bool)

(declare-fun tp!1868085 () Bool)

(assert (=> b!6826227 (= e!4118063 tp!1868085)))

(assert (= (and b!6824938 ((_ is ElementMatch!16639) (regTwo!33790 (regTwo!33790 r!7292)))) b!6826225))

(assert (= (and b!6824938 ((_ is Concat!25484) (regTwo!33790 (regTwo!33790 r!7292)))) b!6826226))

(assert (= (and b!6824938 ((_ is Star!16639) (regTwo!33790 (regTwo!33790 r!7292)))) b!6826227))

(assert (= (and b!6824938 ((_ is Union!16639) (regTwo!33790 (regTwo!33790 r!7292)))) b!6826228))

(declare-fun e!4118064 () Bool)

(assert (=> b!6824940 (= tp!1867934 e!4118064)))

(declare-fun b!6826232 () Bool)

(declare-fun tp!1868087 () Bool)

(declare-fun tp!1868088 () Bool)

(assert (=> b!6826232 (= e!4118064 (and tp!1868087 tp!1868088))))

(declare-fun b!6826230 () Bool)

(declare-fun tp!1868086 () Bool)

(declare-fun tp!1868089 () Bool)

(assert (=> b!6826230 (= e!4118064 (and tp!1868086 tp!1868089))))

(declare-fun b!6826229 () Bool)

(assert (=> b!6826229 (= e!4118064 tp_is_empty!42531)))

(declare-fun b!6826231 () Bool)

(declare-fun tp!1868090 () Bool)

(assert (=> b!6826231 (= e!4118064 tp!1868090)))

(assert (= (and b!6824940 ((_ is ElementMatch!16639) (regOne!33791 (regTwo!33790 r!7292)))) b!6826229))

(assert (= (and b!6824940 ((_ is Concat!25484) (regOne!33791 (regTwo!33790 r!7292)))) b!6826230))

(assert (= (and b!6824940 ((_ is Star!16639) (regOne!33791 (regTwo!33790 r!7292)))) b!6826231))

(assert (= (and b!6824940 ((_ is Union!16639) (regOne!33791 (regTwo!33790 r!7292)))) b!6826232))

(declare-fun e!4118065 () Bool)

(assert (=> b!6824940 (= tp!1867935 e!4118065)))

(declare-fun b!6826236 () Bool)

(declare-fun tp!1868092 () Bool)

(declare-fun tp!1868093 () Bool)

(assert (=> b!6826236 (= e!4118065 (and tp!1868092 tp!1868093))))

(declare-fun b!6826234 () Bool)

(declare-fun tp!1868091 () Bool)

(declare-fun tp!1868094 () Bool)

(assert (=> b!6826234 (= e!4118065 (and tp!1868091 tp!1868094))))

(declare-fun b!6826233 () Bool)

(assert (=> b!6826233 (= e!4118065 tp_is_empty!42531)))

(declare-fun b!6826235 () Bool)

(declare-fun tp!1868095 () Bool)

(assert (=> b!6826235 (= e!4118065 tp!1868095)))

(assert (= (and b!6824940 ((_ is ElementMatch!16639) (regTwo!33791 (regTwo!33790 r!7292)))) b!6826233))

(assert (= (and b!6824940 ((_ is Concat!25484) (regTwo!33791 (regTwo!33790 r!7292)))) b!6826234))

(assert (= (and b!6824940 ((_ is Star!16639) (regTwo!33791 (regTwo!33790 r!7292)))) b!6826235))

(assert (= (and b!6824940 ((_ is Union!16639) (regTwo!33791 (regTwo!33790 r!7292)))) b!6826236))

(declare-fun condSetEmpty!46861 () Bool)

(assert (=> setNonEmpty!46843 (= condSetEmpty!46861 (= setRest!46843 ((as const (Array Context!12046 Bool)) false)))))

(declare-fun setRes!46861 () Bool)

(assert (=> setNonEmpty!46843 (= tp!1867953 setRes!46861)))

(declare-fun setIsEmpty!46861 () Bool)

(assert (=> setIsEmpty!46861 setRes!46861))

(declare-fun setElem!46861 () Context!12046)

(declare-fun e!4118066 () Bool)

(declare-fun tp!1868097 () Bool)

(declare-fun setNonEmpty!46861 () Bool)

(assert (=> setNonEmpty!46861 (= setRes!46861 (and tp!1868097 (inv!84844 setElem!46861) e!4118066))))

(declare-fun setRest!46861 () (InoxSet Context!12046))

(assert (=> setNonEmpty!46861 (= setRest!46843 ((_ map or) (store ((as const (Array Context!12046 Bool)) false) setElem!46861 true) setRest!46861))))

(declare-fun b!6826237 () Bool)

(declare-fun tp!1868096 () Bool)

(assert (=> b!6826237 (= e!4118066 tp!1868096)))

(assert (= (and setNonEmpty!46843 condSetEmpty!46861) setIsEmpty!46861))

(assert (= (and setNonEmpty!46843 (not condSetEmpty!46861)) setNonEmpty!46861))

(assert (= setNonEmpty!46861 b!6826237))

(declare-fun m!7572140 () Bool)

(assert (=> setNonEmpty!46861 m!7572140))

(declare-fun e!4118067 () Bool)

(assert (=> b!6824939 (= tp!1867937 e!4118067)))

(declare-fun b!6826241 () Bool)

(declare-fun tp!1868099 () Bool)

(declare-fun tp!1868100 () Bool)

(assert (=> b!6826241 (= e!4118067 (and tp!1868099 tp!1868100))))

(declare-fun b!6826239 () Bool)

(declare-fun tp!1868098 () Bool)

(declare-fun tp!1868101 () Bool)

(assert (=> b!6826239 (= e!4118067 (and tp!1868098 tp!1868101))))

(declare-fun b!6826238 () Bool)

(assert (=> b!6826238 (= e!4118067 tp_is_empty!42531)))

(declare-fun b!6826240 () Bool)

(declare-fun tp!1868102 () Bool)

(assert (=> b!6826240 (= e!4118067 tp!1868102)))

(assert (= (and b!6824939 ((_ is ElementMatch!16639) (reg!16968 (regTwo!33790 r!7292)))) b!6826238))

(assert (= (and b!6824939 ((_ is Concat!25484) (reg!16968 (regTwo!33790 r!7292)))) b!6826239))

(assert (= (and b!6824939 ((_ is Star!16639) (reg!16968 (regTwo!33790 r!7292)))) b!6826240))

(assert (= (and b!6824939 ((_ is Union!16639) (reg!16968 (regTwo!33790 r!7292)))) b!6826241))

(declare-fun e!4118068 () Bool)

(assert (=> b!6824925 (= tp!1867917 e!4118068)))

(declare-fun b!6826245 () Bool)

(declare-fun tp!1868104 () Bool)

(declare-fun tp!1868105 () Bool)

(assert (=> b!6826245 (= e!4118068 (and tp!1868104 tp!1868105))))

(declare-fun b!6826243 () Bool)

(declare-fun tp!1868103 () Bool)

(declare-fun tp!1868106 () Bool)

(assert (=> b!6826243 (= e!4118068 (and tp!1868103 tp!1868106))))

(declare-fun b!6826242 () Bool)

(assert (=> b!6826242 (= e!4118068 tp_is_empty!42531)))

(declare-fun b!6826244 () Bool)

(declare-fun tp!1868107 () Bool)

(assert (=> b!6826244 (= e!4118068 tp!1868107)))

(assert (= (and b!6824925 ((_ is ElementMatch!16639) (regOne!33790 (regTwo!33791 r!7292)))) b!6826242))

(assert (= (and b!6824925 ((_ is Concat!25484) (regOne!33790 (regTwo!33791 r!7292)))) b!6826243))

(assert (= (and b!6824925 ((_ is Star!16639) (regOne!33790 (regTwo!33791 r!7292)))) b!6826244))

(assert (= (and b!6824925 ((_ is Union!16639) (regOne!33790 (regTwo!33791 r!7292)))) b!6826245))

(declare-fun e!4118069 () Bool)

(assert (=> b!6824925 (= tp!1867920 e!4118069)))

(declare-fun b!6826249 () Bool)

(declare-fun tp!1868109 () Bool)

(declare-fun tp!1868110 () Bool)

(assert (=> b!6826249 (= e!4118069 (and tp!1868109 tp!1868110))))

(declare-fun b!6826247 () Bool)

(declare-fun tp!1868108 () Bool)

(declare-fun tp!1868111 () Bool)

(assert (=> b!6826247 (= e!4118069 (and tp!1868108 tp!1868111))))

(declare-fun b!6826246 () Bool)

(assert (=> b!6826246 (= e!4118069 tp_is_empty!42531)))

(declare-fun b!6826248 () Bool)

(declare-fun tp!1868112 () Bool)

(assert (=> b!6826248 (= e!4118069 tp!1868112)))

(assert (= (and b!6824925 ((_ is ElementMatch!16639) (regTwo!33790 (regTwo!33791 r!7292)))) b!6826246))

(assert (= (and b!6824925 ((_ is Concat!25484) (regTwo!33790 (regTwo!33791 r!7292)))) b!6826247))

(assert (= (and b!6824925 ((_ is Star!16639) (regTwo!33790 (regTwo!33791 r!7292)))) b!6826248))

(assert (= (and b!6824925 ((_ is Union!16639) (regTwo!33790 (regTwo!33791 r!7292)))) b!6826249))

(declare-fun b!6826250 () Bool)

(declare-fun e!4118070 () Bool)

(declare-fun tp!1868113 () Bool)

(declare-fun tp!1868114 () Bool)

(assert (=> b!6826250 (= e!4118070 (and tp!1868113 tp!1868114))))

(assert (=> b!6824955 (= tp!1867952 e!4118070)))

(assert (= (and b!6824955 ((_ is Cons!66093) (exprs!6523 setElem!46843))) b!6826250))

(declare-fun e!4118071 () Bool)

(assert (=> b!6824932 (= tp!1867926 e!4118071)))

(declare-fun b!6826254 () Bool)

(declare-fun tp!1868116 () Bool)

(declare-fun tp!1868117 () Bool)

(assert (=> b!6826254 (= e!4118071 (and tp!1868116 tp!1868117))))

(declare-fun b!6826252 () Bool)

(declare-fun tp!1868115 () Bool)

(declare-fun tp!1868118 () Bool)

(assert (=> b!6826252 (= e!4118071 (and tp!1868115 tp!1868118))))

(declare-fun b!6826251 () Bool)

(assert (=> b!6826251 (= e!4118071 tp_is_empty!42531)))

(declare-fun b!6826253 () Bool)

(declare-fun tp!1868119 () Bool)

(assert (=> b!6826253 (= e!4118071 tp!1868119)))

(assert (= (and b!6824932 ((_ is ElementMatch!16639) (h!72541 (exprs!6523 (h!72542 zl!343))))) b!6826251))

(assert (= (and b!6824932 ((_ is Concat!25484) (h!72541 (exprs!6523 (h!72542 zl!343))))) b!6826252))

(assert (= (and b!6824932 ((_ is Star!16639) (h!72541 (exprs!6523 (h!72542 zl!343))))) b!6826253))

(assert (= (and b!6824932 ((_ is Union!16639) (h!72541 (exprs!6523 (h!72542 zl!343))))) b!6826254))

(declare-fun b!6826255 () Bool)

(declare-fun e!4118072 () Bool)

(declare-fun tp!1868120 () Bool)

(declare-fun tp!1868121 () Bool)

(assert (=> b!6826255 (= e!4118072 (and tp!1868120 tp!1868121))))

(assert (=> b!6824932 (= tp!1867927 e!4118072)))

(assert (= (and b!6824932 ((_ is Cons!66093) (t!379956 (exprs!6523 (h!72542 zl!343))))) b!6826255))

(declare-fun e!4118073 () Bool)

(assert (=> b!6824948 (= tp!1867943 e!4118073)))

(declare-fun b!6826259 () Bool)

(declare-fun tp!1868123 () Bool)

(declare-fun tp!1868124 () Bool)

(assert (=> b!6826259 (= e!4118073 (and tp!1868123 tp!1868124))))

(declare-fun b!6826257 () Bool)

(declare-fun tp!1868122 () Bool)

(declare-fun tp!1868125 () Bool)

(assert (=> b!6826257 (= e!4118073 (and tp!1868122 tp!1868125))))

(declare-fun b!6826256 () Bool)

(assert (=> b!6826256 (= e!4118073 tp_is_empty!42531)))

(declare-fun b!6826258 () Bool)

(declare-fun tp!1868126 () Bool)

(assert (=> b!6826258 (= e!4118073 tp!1868126)))

(assert (= (and b!6824948 ((_ is ElementMatch!16639) (regOne!33790 (reg!16968 r!7292)))) b!6826256))

(assert (= (and b!6824948 ((_ is Concat!25484) (regOne!33790 (reg!16968 r!7292)))) b!6826257))

(assert (= (and b!6824948 ((_ is Star!16639) (regOne!33790 (reg!16968 r!7292)))) b!6826258))

(assert (= (and b!6824948 ((_ is Union!16639) (regOne!33790 (reg!16968 r!7292)))) b!6826259))

(declare-fun e!4118074 () Bool)

(assert (=> b!6824948 (= tp!1867946 e!4118074)))

(declare-fun b!6826263 () Bool)

(declare-fun tp!1868128 () Bool)

(declare-fun tp!1868129 () Bool)

(assert (=> b!6826263 (= e!4118074 (and tp!1868128 tp!1868129))))

(declare-fun b!6826261 () Bool)

(declare-fun tp!1868127 () Bool)

(declare-fun tp!1868130 () Bool)

(assert (=> b!6826261 (= e!4118074 (and tp!1868127 tp!1868130))))

(declare-fun b!6826260 () Bool)

(assert (=> b!6826260 (= e!4118074 tp_is_empty!42531)))

(declare-fun b!6826262 () Bool)

(declare-fun tp!1868131 () Bool)

(assert (=> b!6826262 (= e!4118074 tp!1868131)))

(assert (= (and b!6824948 ((_ is ElementMatch!16639) (regTwo!33790 (reg!16968 r!7292)))) b!6826260))

(assert (= (and b!6824948 ((_ is Concat!25484) (regTwo!33790 (reg!16968 r!7292)))) b!6826261))

(assert (= (and b!6824948 ((_ is Star!16639) (regTwo!33790 (reg!16968 r!7292)))) b!6826262))

(assert (= (and b!6824948 ((_ is Union!16639) (regTwo!33790 (reg!16968 r!7292)))) b!6826263))

(declare-fun b!6826264 () Bool)

(declare-fun e!4118075 () Bool)

(declare-fun tp!1868132 () Bool)

(declare-fun tp!1868133 () Bool)

(assert (=> b!6826264 (= e!4118075 (and tp!1868132 tp!1868133))))

(assert (=> b!6824963 (= tp!1867958 e!4118075)))

(assert (= (and b!6824963 ((_ is Cons!66093) (exprs!6523 (h!72542 (t!379957 zl!343))))) b!6826264))

(declare-fun e!4118076 () Bool)

(assert (=> b!6824926 (= tp!1867921 e!4118076)))

(declare-fun b!6826268 () Bool)

(declare-fun tp!1868135 () Bool)

(declare-fun tp!1868136 () Bool)

(assert (=> b!6826268 (= e!4118076 (and tp!1868135 tp!1868136))))

(declare-fun b!6826266 () Bool)

(declare-fun tp!1868134 () Bool)

(declare-fun tp!1868137 () Bool)

(assert (=> b!6826266 (= e!4118076 (and tp!1868134 tp!1868137))))

(declare-fun b!6826265 () Bool)

(assert (=> b!6826265 (= e!4118076 tp_is_empty!42531)))

(declare-fun b!6826267 () Bool)

(declare-fun tp!1868138 () Bool)

(assert (=> b!6826267 (= e!4118076 tp!1868138)))

(assert (= (and b!6824926 ((_ is ElementMatch!16639) (reg!16968 (regTwo!33791 r!7292)))) b!6826265))

(assert (= (and b!6824926 ((_ is Concat!25484) (reg!16968 (regTwo!33791 r!7292)))) b!6826266))

(assert (= (and b!6824926 ((_ is Star!16639) (reg!16968 (regTwo!33791 r!7292)))) b!6826267))

(assert (= (and b!6824926 ((_ is Union!16639) (reg!16968 (regTwo!33791 r!7292)))) b!6826268))

(declare-fun e!4118077 () Bool)

(assert (=> b!6824941 (= tp!1867938 e!4118077)))

(declare-fun b!6826272 () Bool)

(declare-fun tp!1868140 () Bool)

(declare-fun tp!1868141 () Bool)

(assert (=> b!6826272 (= e!4118077 (and tp!1868140 tp!1868141))))

(declare-fun b!6826270 () Bool)

(declare-fun tp!1868139 () Bool)

(declare-fun tp!1868142 () Bool)

(assert (=> b!6826270 (= e!4118077 (and tp!1868139 tp!1868142))))

(declare-fun b!6826269 () Bool)

(assert (=> b!6826269 (= e!4118077 tp_is_empty!42531)))

(declare-fun b!6826271 () Bool)

(declare-fun tp!1868143 () Bool)

(assert (=> b!6826271 (= e!4118077 tp!1868143)))

(assert (= (and b!6824941 ((_ is ElementMatch!16639) (h!72541 (exprs!6523 setElem!46837)))) b!6826269))

(assert (= (and b!6824941 ((_ is Concat!25484) (h!72541 (exprs!6523 setElem!46837)))) b!6826270))

(assert (= (and b!6824941 ((_ is Star!16639) (h!72541 (exprs!6523 setElem!46837)))) b!6826271))

(assert (= (and b!6824941 ((_ is Union!16639) (h!72541 (exprs!6523 setElem!46837)))) b!6826272))

(declare-fun b!6826273 () Bool)

(declare-fun e!4118078 () Bool)

(declare-fun tp!1868144 () Bool)

(declare-fun tp!1868145 () Bool)

(assert (=> b!6826273 (= e!4118078 (and tp!1868144 tp!1868145))))

(assert (=> b!6824941 (= tp!1867939 e!4118078)))

(assert (= (and b!6824941 ((_ is Cons!66093) (t!379956 (exprs!6523 setElem!46837)))) b!6826273))

(declare-fun e!4118079 () Bool)

(assert (=> b!6824927 (= tp!1867918 e!4118079)))

(declare-fun b!6826277 () Bool)

(declare-fun tp!1868147 () Bool)

(declare-fun tp!1868148 () Bool)

(assert (=> b!6826277 (= e!4118079 (and tp!1868147 tp!1868148))))

(declare-fun b!6826275 () Bool)

(declare-fun tp!1868146 () Bool)

(declare-fun tp!1868149 () Bool)

(assert (=> b!6826275 (= e!4118079 (and tp!1868146 tp!1868149))))

(declare-fun b!6826274 () Bool)

(assert (=> b!6826274 (= e!4118079 tp_is_empty!42531)))

(declare-fun b!6826276 () Bool)

(declare-fun tp!1868150 () Bool)

(assert (=> b!6826276 (= e!4118079 tp!1868150)))

(assert (= (and b!6824927 ((_ is ElementMatch!16639) (regOne!33791 (regTwo!33791 r!7292)))) b!6826274))

(assert (= (and b!6824927 ((_ is Concat!25484) (regOne!33791 (regTwo!33791 r!7292)))) b!6826275))

(assert (= (and b!6824927 ((_ is Star!16639) (regOne!33791 (regTwo!33791 r!7292)))) b!6826276))

(assert (= (and b!6824927 ((_ is Union!16639) (regOne!33791 (regTwo!33791 r!7292)))) b!6826277))

(declare-fun e!4118080 () Bool)

(assert (=> b!6824927 (= tp!1867919 e!4118080)))

(declare-fun b!6826281 () Bool)

(declare-fun tp!1868152 () Bool)

(declare-fun tp!1868153 () Bool)

(assert (=> b!6826281 (= e!4118080 (and tp!1868152 tp!1868153))))

(declare-fun b!6826279 () Bool)

(declare-fun tp!1868151 () Bool)

(declare-fun tp!1868154 () Bool)

(assert (=> b!6826279 (= e!4118080 (and tp!1868151 tp!1868154))))

(declare-fun b!6826278 () Bool)

(assert (=> b!6826278 (= e!4118080 tp_is_empty!42531)))

(declare-fun b!6826280 () Bool)

(declare-fun tp!1868155 () Bool)

(assert (=> b!6826280 (= e!4118080 tp!1868155)))

(assert (= (and b!6824927 ((_ is ElementMatch!16639) (regTwo!33791 (regTwo!33791 r!7292)))) b!6826278))

(assert (= (and b!6824927 ((_ is Concat!25484) (regTwo!33791 (regTwo!33791 r!7292)))) b!6826279))

(assert (= (and b!6824927 ((_ is Star!16639) (regTwo!33791 (regTwo!33791 r!7292)))) b!6826280))

(assert (= (and b!6824927 ((_ is Union!16639) (regTwo!33791 (regTwo!33791 r!7292)))) b!6826281))

(declare-fun b!6826283 () Bool)

(declare-fun e!4118082 () Bool)

(declare-fun tp!1868156 () Bool)

(assert (=> b!6826283 (= e!4118082 tp!1868156)))

(declare-fun e!4118081 () Bool)

(declare-fun b!6826282 () Bool)

(declare-fun tp!1868157 () Bool)

(assert (=> b!6826282 (= e!4118081 (and (inv!84844 (h!72542 (t!379957 (t!379957 zl!343)))) e!4118082 tp!1868157))))

(assert (=> b!6824962 (= tp!1867959 e!4118081)))

(assert (= b!6826282 b!6826283))

(assert (= (and b!6824962 ((_ is Cons!66094) (t!379957 (t!379957 zl!343)))) b!6826282))

(declare-fun m!7572142 () Bool)

(assert (=> b!6826282 m!7572142))

(declare-fun b_lambda!257481 () Bool)

(assert (= b_lambda!257451 (or b!6823997 b_lambda!257481)))

(assert (=> d!2146451 d!2146093))

(declare-fun b_lambda!257483 () Bool)

(assert (= b_lambda!257443 (or b!6823997 b_lambda!257483)))

(declare-fun bs!1824197 () Bool)

(declare-fun d!2146819 () Bool)

(assert (= bs!1824197 (and d!2146819 b!6823997)))

(assert (=> bs!1824197 (= (dynLambda!26411 lambda!385483 (h!72541 lt!2452077)) (validRegex!8375 (h!72541 lt!2452077)))))

(declare-fun m!7572144 () Bool)

(assert (=> bs!1824197 m!7572144))

(assert (=> b!6825104 d!2146819))

(declare-fun b_lambda!257485 () Bool)

(assert (= b_lambda!257457 (or d!2146051 b_lambda!257485)))

(declare-fun bs!1824198 () Bool)

(declare-fun d!2146821 () Bool)

(assert (= bs!1824198 (and d!2146821 d!2146051)))

(assert (=> bs!1824198 (= (dynLambda!26411 lambda!385573 (h!72541 lt!2452258)) (validRegex!8375 (h!72541 lt!2452258)))))

(declare-fun m!7572146 () Bool)

(assert (=> bs!1824198 m!7572146))

(assert (=> b!6825653 d!2146821))

(declare-fun b_lambda!257487 () Bool)

(assert (= b_lambda!257453 (or b!6824000 b_lambda!257487)))

(assert (=> d!2146481 d!2146087))

(declare-fun b_lambda!257489 () Bool)

(assert (= b_lambda!257465 (or d!2145867 b_lambda!257489)))

(declare-fun bs!1824200 () Bool)

(declare-fun d!2146823 () Bool)

(assert (= bs!1824200 (and d!2146823 d!2145867)))

(assert (=> bs!1824200 (= (dynLambda!26411 lambda!385508 (h!72541 (exprs!6523 (h!72542 zl!343)))) (validRegex!8375 (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(declare-fun m!7572148 () Bool)

(assert (=> bs!1824200 m!7572148))

(assert (=> b!6825901 d!2146823))

(declare-fun b_lambda!257491 () Bool)

(assert (= b_lambda!257455 (or b!6824000 b_lambda!257491)))

(assert (=> d!2146493 d!2146095))

(declare-fun b_lambda!257493 () Bool)

(assert (= b_lambda!257463 (or b!6824000 b_lambda!257493)))

(assert (=> d!2146593 d!2146091))

(declare-fun b_lambda!257495 () Bool)

(assert (= b_lambda!257459 (or d!2146049 b_lambda!257495)))

(declare-fun bs!1824203 () Bool)

(declare-fun d!2146825 () Bool)

(assert (= bs!1824203 (and d!2146825 d!2146049)))

(assert (=> bs!1824203 (= (dynLambda!26411 lambda!385570 (h!72541 (unfocusZipperList!2060 zl!343))) (validRegex!8375 (h!72541 (unfocusZipperList!2060 zl!343))))))

(declare-fun m!7572150 () Bool)

(assert (=> bs!1824203 m!7572150))

(assert (=> b!6825698 d!2146825))

(declare-fun b_lambda!257497 () Bool)

(assert (= b_lambda!257441 (or b!6823997 b_lambda!257497)))

(declare-fun bs!1824204 () Bool)

(declare-fun d!2146827 () Bool)

(assert (= bs!1824204 (and d!2146827 b!6823997)))

(assert (=> bs!1824204 (= (dynLambda!26411 lambda!385483 (h!72541 (++!14824 lt!2452077 lt!2452065))) (validRegex!8375 (h!72541 (++!14824 lt!2452077 lt!2452065))))))

(declare-fun m!7572152 () Bool)

(assert (=> bs!1824204 m!7572152))

(assert (=> b!6825102 d!2146827))

(declare-fun b_lambda!257499 () Bool)

(assert (= b_lambda!257475 (or d!2146077 b_lambda!257499)))

(declare-fun bs!1824205 () Bool)

(declare-fun d!2146829 () Bool)

(assert (= bs!1824205 (and d!2146829 d!2146077)))

(assert (=> bs!1824205 (= (dynLambda!26411 lambda!385576 (h!72541 (exprs!6523 setElem!46837))) (validRegex!8375 (h!72541 (exprs!6523 setElem!46837))))))

(declare-fun m!7572154 () Bool)

(assert (=> bs!1824205 m!7572154))

(assert (=> b!6826056 d!2146829))

(declare-fun b_lambda!257501 () Bool)

(assert (= b_lambda!257461 (or b!6824000 b_lambda!257501)))

(assert (=> d!2146583 d!2146089))

(declare-fun b_lambda!257503 () Bool)

(assert (= b_lambda!257437 (or d!2145995 b_lambda!257503)))

(declare-fun bs!1824207 () Bool)

(declare-fun d!2146831 () Bool)

(assert (= bs!1824207 (and d!2146831 d!2145995)))

(assert (=> bs!1824207 (= (dynLambda!26411 lambda!385554 (h!72541 (exprs!6523 (h!72542 zl!343)))) (validRegex!8375 (h!72541 (exprs!6523 (h!72542 zl!343)))))))

(assert (=> bs!1824207 m!7572148))

(assert (=> b!6825079 d!2146831))

(check-sat (not b!6826273) (not d!2146597) (not d!2146291) (not b!6825260) (not b!6826271) (not b!6825024) (not d!2146369) (not d!2146399) (not d!2146771) (not b_lambda!257493) (not b!6825120) (not b!6825931) (not d!2146547) (not d!2146641) (not b!6826207) (not d!2146577) (not b!6825952) (not b!6825852) (not b!6825716) (not bm!621252) (not d!2146501) (not b!6825366) (not d!2146553) (not bm!621304) (not bs!1824204) (not b!6826052) (not d!2146593) (not bm!621197) (not b!6825177) (not b!6825549) (not b!6826232) (not b!6825856) (not b!6825295) (not d!2146253) (not b!6826249) (not d!2146585) (not b!6826217) (not bm!621241) (not bm!621179) (not b!6825103) (not bs!1824197) (not b_lambda!257499) (not b!6825362) (not d!2146261) (not b!6826263) (not b!6825439) (not d!2146635) (not b_lambda!257425) (not b_lambda!257497) (not d!2146609) (not b!6826283) (not d!2146313) (not bm!621353) (not b!6826215) (not d!2146255) (not bs!1824198) (not b!6825097) (not b!6825384) (not b!6825244) (not bm!621277) (not b!6825626) (not b!6825189) (not b!6825915) (not d!2146315) (not bm!621266) (not d!2146549) (not d!2146645) (not b!6825663) (not b!6825028) (not b!6826279) (not b!6825667) (not d!2146493) (not d!2146717) (not b!6826201) (not b!6825814) (not bs!1824200) (not b!6826175) (not bm!621280) (not bm!621302) (not b!6825657) (not b!6825781) (not b!6826223) (not bm!621232) (not bs!1824203) (not b!6825308) (not d!2146317) (not b!6826275) (not bm!621267) (not b!6825463) (not bs!1824205) (not b!6825242) (not bm!621296) (not b!6826266) (not b!6825673) (not d!2146515) (not b!6825352) (not d!2146719) (not b!6826277) (not b!6825723) (not b!6825683) (not b!6825791) (not b!6826231) (not bm!621276) (not b!6825747) (not b!6826171) (not b!6825218) (not b!6825345) (not b_lambda!257495) (not b!6825178) (not b!6825789) (not b!6825068) (not d!2146709) (not bm!621249) (not b!6825817) (not b!6825818) (not b!6825364) (not d!2146497) (not b!6826237) (not d!2146777) (not b!6826268) (not bm!621303) (not b!6825769) (not b!6826041) (not b!6825403) (not b!6825507) (not d!2146319) (not b_lambda!257491) (not b!6825551) (not b!6825239) (not b!6826243) (not b!6825088) (not b!6825744) (not b!6826197) (not b_lambda!257429) (not d!2146595) (not b!6826226) (not b!6825815) (not b!6826234) (not bm!621351) (not b!6825118) (not bm!621210) (not b!6825720) (not b!6825925) (not b!6825397) (not b!6825732) (not b!6826199) (not b!6826264) (not b!6825656) (not b!6826220) (not d!2146417) (not b!6825221) (not bm!621231) (not b!6825400) (not bm!621242) (not b!6825797) (not bm!621281) (not b!6826255) (not bm!621309) (not b!6825677) (not bm!621184) (not b!6825837) (not b!6825855) (not b!6825376) (not bm!621246) (not b!6826178) (not b!6825302) (not b!6826240) (not b!6826241) (not bs!1824207) (not b!6825962) (not b!6825216) (not d!2146643) (not b!6826167) (not b!6825299) (not b!6825518) (not b!6825371) (not b_lambda!257489) (not bm!621215) (not b!6826252) (not b!6825914) (not bm!621243) (not b_lambda!257431) (not b!6825378) (not d!2146187) (not b_lambda!257503) (not b!6825957) (not b!6826219) (not bm!621235) (not d!2146223) (not bm!621236) (not b!6826170) (not b_lambda!257427) (not bm!621300) (not b!6825726) (not bm!621311) (not b!6825790) (not b!6826179) (not bm!621301) (not d!2146611) (not b!6825444) (not b!6825379) (not b!6826214) (not bm!621216) (not d!2146757) (not b!6825835) (not b!6826180) (not b!6825800) (not b!6825240) (not bm!621291) (not d!2146741) (not b!6826258) (not b!6826146) (not d!2146273) (not setNonEmpty!46860) (not d!2146647) (not b!6825124) (not b!6825641) (not b!6825612) (not b!6826209) (not b!6825171) (not b!6825926) (not d!2146407) (not d!2146633) (not d!2146527) (not b!6825310) (not b!6826211) (not b!6825918) (not b!6825602) (not b!6825080) (not bm!621272) (not d!2146613) (not d!2146303) (not b!6826257) (not b_lambda!257483) (not b!6825699) (not bm!621343) (not b!6825787) (not b!6825234) (not b!6826228) (not b_lambda!257485) (not d!2146697) (not bm!621182) (not b!6825639) (not d!2146395) (not b!6825681) (not b!6826174) (not b!6825186) (not bm!621206) (not bm!621293) (not b!6825834) (not b!6825382) (not d!2146551) (not b!6825225) (not b!6825655) (not d!2146573) (not d!2146169) (not b!6825682) (not b!6825752) (not b!6825850) (not b!6826206) (not b!6825228) (not b!6825823) (not b!6826227) (not setNonEmpty!46854) (not d!2146229) (not d!2146413) (not b!6825718) (not bm!621317) (not b!6826198) (not b!6826281) (not b!6825550) (not d!2146687) (not b!6826176) (not d!2146451) (not b!6825105) (not b!6826148) (not b!6826168) (not bm!621339) (not b!6826282) (not bm!621273) (not b!6825658) (not b!6825126) (not b!6825113) (not b!6825246) (not bm!621307) (not b!6825249) (not b!6825219) (not b!6826213) (not b!6826203) (not b!6825190) (not b!6826244) (not b!6825722) (not b!6825395) (not b!6825262) (not d!2146601) (not bm!621181) (not b!6826247) (not bm!621207) (not b!6825368) (not d!2146535) (not b!6825220) (not b!6825330) (not bm!621270) (not bm!621269) (not b!6825627) (not b!6825709) (not b!6825734) (not b!6825827) (not b!6825248) (not b!6825824) (not b!6825858) (not b!6826235) (not b!6825243) (not d!2146583) (not d!2146259) (not bm!621171) (not b_lambda!257501) (not d!2146629) (not d!2146607) (not b!6826248) (not b_lambda!257487) (not b!6825836) (not d!2146183) (not d!2146599) (not b!6826222) (not b!6825442) (not b!6825693) tp_is_empty!42531 (not b!6825784) (not bm!621318) (not b!6825794) (not b!6825629) (not b!6825438) (not b_lambda!257481) (not b!6825391) (not d!2146419) (not b_lambda!257433) (not b!6825654) (not d!2146469) (not bm!621289) (not bm!621204) (not d!2146711) (not d!2146589) (not b!6825301) (not d!2146705) (not b!6825672) (not b!6825052) (not b!6825090) (not b!6825775) (not b!6826053) (not d!2146591) (not b!6825774) (not d!2146621) (not d!2146331) (not d!2146571) (not d!2146625) (not d!2146305) (not b!6825803) (not b!6825750) (not d!2146499) (not bm!621286) (not d!2146505) (not b!6826164) (not bm!621254) (not b!6825966) (not b!6826172) (not b!6825222) (not d!2146743) (not d!2146639) (not b!6826250) (not bm!621203) (not b!6825399) (not b!6826210) (not b!6825565) (not bm!621290) (not b!6825632) (not b!6825923) (not bm!621341) (not b!6825588) (not b!6825929) (not b!6825776) (not d!2146753) (not b!6825763) (not b!6826166) (not d!2146383) (not b!6825799) (not d!2146243) (not d!2146481) (not bm!621312) (not bm!621264) (not d!2146569) (not b!6825296) (not b!6826163) (not b!6825826) (not b!6826259) (not b!6826218) (not b!6825051) (not d!2146477) (not b!6826276) (not b!6826253) (not b!6825112) (not b!6825727) (not b!6826194) (not b!6826150) (not b!6826270) (not b!6826272) (not bm!621278) (not d!2146619) (not d!2146231) (not b!6825832) (not d!2146161) (not bm!621209) (not b!6825092) (not b!6825121) (not b!6825819) (not b!6825367) (not b!6825793) (not b!6825761) (not d!2146375) (not b!6825737) (not b!6825542) (not b!6826202) (not d!2146443) (not b!6826026) (not d!2146779) (not b!6826236) (not b!6825958) (not bm!621255) (not bm!621170) (not b!6826262) (not b!6825859) (not bm!621213) (not b!6826280) (not b!6826162) (not setNonEmpty!46861) (not setNonEmpty!46855) (not d!2146679) (not b!6826057) (not d!2146603) (not b!6826239) (not b!6825960) (not d!2146631) (not bm!621310) (not b!6826267) (not b!6825746) (not d!2146575) (not b!6825659) (not b!6826254) (not b!6825275) (not bm!621315) (not b!6825809) (not bm!621354) (not b!6825964) (not d!2146677) (not b!6825729) (not bm!621185) (not b!6826025) (not bm!621233) (not b!6825640) (not b!6825185) (not b!6825821) (not b!6825556) (not b!6825840) (not b!6826149) (not d!2146293) (not b!6825684) (not b!6825431) (not d!2146519) (not b!6826230) (not bm!621314) (not b!6825739) (not bm!621294) (not b!6825853) (not d!2146215) (not setNonEmpty!46849) (not b!6825436) (not bm!621198) (not d!2146167) (not bm!621297) (not b!6826130) (not d!2146345) (not b!6826193) (not b!6826205) (not b!6825680) (not b!6825398) (not b!6825967) (not b!6826224) (not b!6825795) (not b!6825326) (not b!6825679) (not setNonEmpty!46856) (not b!6826261) (not b!6825592) (not b!6825961) (not b!6825902) (not b!6825298) (not b!6826195) (not b!6825263) (not b!6825579) (not b!6825312) (not bm!621248) (not b!6826245) (not b!6825783) (not b!6825541) (not d!2146247))
(check-sat)

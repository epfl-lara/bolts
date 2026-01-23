; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567006 () Bool)

(assert start!567006)

(declare-fun b!5397996 () Bool)

(assert (=> b!5397996 true))

(assert (=> b!5397996 true))

(declare-fun lambda!280906 () Int)

(declare-fun lambda!280905 () Int)

(assert (=> b!5397996 (not (= lambda!280906 lambda!280905))))

(assert (=> b!5397996 true))

(assert (=> b!5397996 true))

(declare-fun b!5398003 () Bool)

(assert (=> b!5398003 true))

(declare-fun b!5397998 () Bool)

(assert (=> b!5397998 true))

(declare-fun b!5397966 () Bool)

(declare-fun e!3347116 () Bool)

(declare-fun tp!1493952 () Bool)

(declare-fun tp!1493954 () Bool)

(assert (=> b!5397966 (= e!3347116 (and tp!1493952 tp!1493954))))

(declare-fun b!5397967 () Bool)

(declare-fun e!3347113 () Bool)

(declare-fun tp_is_empty!39575 () Bool)

(declare-fun tp!1493955 () Bool)

(assert (=> b!5397967 (= e!3347113 (and tp_is_empty!39575 tp!1493955))))

(declare-fun res!2294580 () Bool)

(declare-fun e!3347119 () Bool)

(assert (=> start!567006 (=> (not res!2294580) (not e!3347119))))

(declare-datatypes ((C!30592 0))(
  ( (C!30593 (val!24998 Int)) )
))
(declare-datatypes ((Regex!15161 0))(
  ( (ElementMatch!15161 (c!940711 C!30592)) (Concat!24006 (regOne!30834 Regex!15161) (regTwo!30834 Regex!15161)) (EmptyExpr!15161) (Star!15161 (reg!15490 Regex!15161)) (EmptyLang!15161) (Union!15161 (regOne!30835 Regex!15161) (regTwo!30835 Regex!15161)) )
))
(declare-fun r!7292 () Regex!15161)

(declare-fun validRegex!6897 (Regex!15161) Bool)

(assert (=> start!567006 (= res!2294580 (validRegex!6897 r!7292))))

(assert (=> start!567006 e!3347119))

(assert (=> start!567006 e!3347116))

(declare-fun condSetEmpty!35117 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61782 0))(
  ( (Nil!61658) (Cons!61658 (h!68106 Regex!15161) (t!375005 List!61782)) )
))
(declare-datatypes ((Context!9090 0))(
  ( (Context!9091 (exprs!5045 List!61782)) )
))
(declare-fun z!1189 () (InoxSet Context!9090))

(assert (=> start!567006 (= condSetEmpty!35117 (= z!1189 ((as const (Array Context!9090 Bool)) false)))))

(declare-fun setRes!35117 () Bool)

(assert (=> start!567006 setRes!35117))

(declare-fun e!3347121 () Bool)

(assert (=> start!567006 e!3347121))

(assert (=> start!567006 e!3347113))

(declare-fun b!5397968 () Bool)

(declare-datatypes ((Unit!154166 0))(
  ( (Unit!154167) )
))
(declare-fun e!3347104 () Unit!154166)

(declare-fun Unit!154168 () Unit!154166)

(assert (=> b!5397968 (= e!3347104 Unit!154168)))

(declare-fun b!5397969 () Bool)

(declare-fun e!3347103 () Bool)

(declare-fun e!3347111 () Bool)

(assert (=> b!5397969 (= e!3347103 e!3347111)))

(declare-fun res!2294567 () Bool)

(assert (=> b!5397969 (=> res!2294567 e!3347111)))

(declare-datatypes ((List!61783 0))(
  ( (Nil!61659) (Cons!61659 (h!68107 C!30592) (t!375006 List!61783)) )
))
(declare-fun s!2326 () List!61783)

(declare-fun lt!2200236 () Bool)

(declare-fun lt!2200235 () (InoxSet Context!9090))

(declare-fun matchZipper!1405 ((InoxSet Context!9090) List!61783) Bool)

(assert (=> b!5397969 (= res!2294567 (not (= lt!2200236 (matchZipper!1405 lt!2200235 (t!375006 s!2326)))))))

(declare-fun lt!2200271 () (InoxSet Context!9090))

(assert (=> b!5397969 (= lt!2200236 (matchZipper!1405 lt!2200271 s!2326))))

(declare-fun b!5397970 () Bool)

(declare-fun e!3347118 () Bool)

(declare-fun lt!2200266 () Regex!15161)

(assert (=> b!5397970 (= e!3347118 (validRegex!6897 lt!2200266))))

(declare-fun lt!2200270 () List!61783)

(declare-fun matchR!7346 (Regex!15161 List!61783) Bool)

(assert (=> b!5397970 (matchR!7346 lt!2200266 lt!2200270)))

(declare-datatypes ((tuple2!64720 0))(
  ( (tuple2!64721 (_1!35663 List!61783) (_2!35663 List!61783)) )
))
(declare-fun lt!2200259 () tuple2!64720)

(declare-fun lt!2200251 () Unit!154166)

(declare-fun lt!2200255 () Regex!15161)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!184 (Regex!15161 Regex!15161 List!61783 List!61783) Unit!154166)

(assert (=> b!5397970 (= lt!2200251 (lemmaTwoRegexMatchThenConcatMatchesConcatString!184 (reg!15490 (regOne!30834 r!7292)) lt!2200255 (_1!35663 lt!2200259) (_2!35663 lt!2200259)))))

(assert (=> b!5397970 (matchR!7346 lt!2200255 (_2!35663 lt!2200259))))

(declare-fun lt!2200256 () (InoxSet Context!9090))

(declare-datatypes ((List!61784 0))(
  ( (Nil!61660) (Cons!61660 (h!68108 Context!9090) (t!375007 List!61784)) )
))
(declare-fun lt!2200277 () List!61784)

(declare-fun lt!2200253 () Unit!154166)

(declare-fun theoremZipperRegexEquiv!475 ((InoxSet Context!9090) List!61784 Regex!15161 List!61783) Unit!154166)

(assert (=> b!5397970 (= lt!2200253 (theoremZipperRegexEquiv!475 lt!2200256 lt!2200277 lt!2200255 (_2!35663 lt!2200259)))))

(assert (=> b!5397970 (matchR!7346 (reg!15490 (regOne!30834 r!7292)) (_1!35663 lt!2200259))))

(declare-fun lt!2200282 () List!61784)

(declare-fun lt!2200241 () (InoxSet Context!9090))

(declare-fun lt!2200237 () Unit!154166)

(assert (=> b!5397970 (= lt!2200237 (theoremZipperRegexEquiv!475 lt!2200241 lt!2200282 (reg!15490 (regOne!30834 r!7292)) (_1!35663 lt!2200259)))))

(declare-fun lt!2200281 () List!61782)

(declare-fun lt!2200242 () List!61782)

(declare-fun ++!13495 (List!61782 List!61782) List!61782)

(assert (=> b!5397970 (matchZipper!1405 (store ((as const (Array Context!9090 Bool)) false) (Context!9091 (++!13495 lt!2200281 lt!2200242)) true) lt!2200270)))

(declare-fun lambda!280909 () Int)

(declare-fun lt!2200243 () Unit!154166)

(declare-fun lemmaConcatPreservesForall!186 (List!61782 List!61782 Int) Unit!154166)

(assert (=> b!5397970 (= lt!2200243 (lemmaConcatPreservesForall!186 lt!2200281 lt!2200242 lambda!280909))))

(declare-fun lt!2200273 () Context!9090)

(declare-fun lt!2200261 () Context!9090)

(declare-fun lt!2200239 () Unit!154166)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!34 (Context!9090 Context!9090 List!61783 List!61783) Unit!154166)

(assert (=> b!5397970 (= lt!2200239 (lemmaConcatenateContextMatchesConcatOfStrings!34 lt!2200261 lt!2200273 (_1!35663 lt!2200259) (_2!35663 lt!2200259)))))

(declare-fun b!5397971 () Bool)

(declare-fun e!3347122 () Bool)

(assert (=> b!5397971 (= e!3347119 e!3347122)))

(declare-fun res!2294587 () Bool)

(assert (=> b!5397971 (=> (not res!2294587) (not e!3347122))))

(declare-fun lt!2200274 () Regex!15161)

(assert (=> b!5397971 (= res!2294587 (= r!7292 lt!2200274))))

(declare-fun zl!343 () List!61784)

(declare-fun unfocusZipper!903 (List!61784) Regex!15161)

(assert (=> b!5397971 (= lt!2200274 (unfocusZipper!903 zl!343))))

(declare-fun b!5397972 () Bool)

(declare-fun e!3347115 () Bool)

(declare-fun lt!2200267 () (InoxSet Context!9090))

(assert (=> b!5397972 (= e!3347115 (matchZipper!1405 lt!2200267 (t!375006 s!2326)))))

(declare-fun b!5397973 () Bool)

(declare-fun e!3347114 () Bool)

(declare-fun e!3347107 () Bool)

(assert (=> b!5397973 (= e!3347114 e!3347107)))

(declare-fun res!2294584 () Bool)

(assert (=> b!5397973 (=> res!2294584 e!3347107)))

(declare-fun lt!2200244 () Bool)

(assert (=> b!5397973 (= res!2294584 lt!2200244)))

(declare-fun matchRSpec!2264 (Regex!15161 List!61783) Bool)

(assert (=> b!5397973 (= (matchR!7346 lt!2200266 s!2326) (matchRSpec!2264 lt!2200266 s!2326))))

(declare-fun lt!2200248 () Unit!154166)

(declare-fun mainMatchTheorem!2264 (Regex!15161 List!61783) Unit!154166)

(assert (=> b!5397973 (= lt!2200248 (mainMatchTheorem!2264 lt!2200266 s!2326))))

(declare-fun b!5397974 () Bool)

(declare-fun res!2294582 () Bool)

(assert (=> b!5397974 (=> res!2294582 e!3347118)))

(assert (=> b!5397974 (= res!2294582 (not (matchZipper!1405 lt!2200241 (_1!35663 lt!2200259))))))

(declare-fun b!5397975 () Bool)

(declare-fun res!2294578 () Bool)

(declare-fun e!3347117 () Bool)

(assert (=> b!5397975 (=> res!2294578 e!3347117)))

(declare-fun isEmpty!33649 (List!61784) Bool)

(assert (=> b!5397975 (= res!2294578 (not (isEmpty!33649 (t!375007 zl!343))))))

(declare-fun b!5397976 () Bool)

(declare-fun Unit!154169 () Unit!154166)

(assert (=> b!5397976 (= e!3347104 Unit!154169)))

(declare-fun lt!2200234 () Unit!154166)

(declare-fun lt!2200265 () (InoxSet Context!9090))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!398 ((InoxSet Context!9090) (InoxSet Context!9090) List!61783) Unit!154166)

(assert (=> b!5397976 (= lt!2200234 (lemmaZipperConcatMatchesSameAsBothZippers!398 lt!2200265 lt!2200267 (t!375006 s!2326)))))

(declare-fun res!2294573 () Bool)

(assert (=> b!5397976 (= res!2294573 (matchZipper!1405 lt!2200265 (t!375006 s!2326)))))

(assert (=> b!5397976 (=> res!2294573 e!3347115)))

(assert (=> b!5397976 (= (matchZipper!1405 ((_ map or) lt!2200265 lt!2200267) (t!375006 s!2326)) e!3347115)))

(declare-fun b!5397977 () Bool)

(declare-fun res!2294576 () Bool)

(assert (=> b!5397977 (=> res!2294576 e!3347118)))

(assert (=> b!5397977 (= res!2294576 (not (matchZipper!1405 lt!2200256 (_2!35663 lt!2200259))))))

(declare-fun b!5397978 () Bool)

(declare-fun res!2294593 () Bool)

(assert (=> b!5397978 (=> res!2294593 e!3347117)))

(declare-fun generalisedConcat!830 (List!61782) Regex!15161)

(assert (=> b!5397978 (= res!2294593 (not (= r!7292 (generalisedConcat!830 (exprs!5045 (h!68108 zl!343))))))))

(declare-fun b!5397979 () Bool)

(declare-fun e!3347100 () Bool)

(assert (=> b!5397979 (= e!3347100 (not (matchZipper!1405 lt!2200267 (t!375006 s!2326))))))

(declare-fun b!5397980 () Bool)

(declare-fun res!2294592 () Bool)

(assert (=> b!5397980 (=> res!2294592 e!3347107)))

(declare-fun lt!2200279 () Bool)

(assert (=> b!5397980 (= res!2294592 (not lt!2200279))))

(declare-fun e!3347124 () Bool)

(declare-fun tp!1493957 () Bool)

(declare-fun setElem!35117 () Context!9090)

(declare-fun setNonEmpty!35117 () Bool)

(declare-fun inv!81149 (Context!9090) Bool)

(assert (=> setNonEmpty!35117 (= setRes!35117 (and tp!1493957 (inv!81149 setElem!35117) e!3347124))))

(declare-fun setRest!35117 () (InoxSet Context!9090))

(assert (=> setNonEmpty!35117 (= z!1189 ((_ map or) (store ((as const (Array Context!9090 Bool)) false) setElem!35117 true) setRest!35117))))

(declare-fun b!5397981 () Bool)

(declare-fun e!3347105 () Bool)

(declare-fun e!3347123 () Bool)

(assert (=> b!5397981 (= e!3347105 e!3347123)))

(declare-fun res!2294595 () Bool)

(assert (=> b!5397981 (=> res!2294595 e!3347123)))

(declare-fun lt!2200257 () (InoxSet Context!9090))

(assert (=> b!5397981 (= res!2294595 (not (= lt!2200265 lt!2200257)))))

(declare-fun derivationStepZipperDown!609 (Regex!15161 Context!9090 C!30592) (InoxSet Context!9090))

(assert (=> b!5397981 (= lt!2200257 (derivationStepZipperDown!609 (reg!15490 (regOne!30834 r!7292)) lt!2200273 (h!68107 s!2326)))))

(assert (=> b!5397981 (= lt!2200273 (Context!9091 lt!2200242))))

(declare-fun lt!2200263 () Regex!15161)

(assert (=> b!5397981 (= lt!2200242 (Cons!61658 lt!2200263 (t!375005 (exprs!5045 (h!68108 zl!343)))))))

(assert (=> b!5397981 (= lt!2200263 (Star!15161 (reg!15490 (regOne!30834 r!7292))))))

(declare-fun b!5397982 () Bool)

(declare-fun res!2294581 () Bool)

(assert (=> b!5397982 (=> (not res!2294581) (not e!3347119))))

(declare-fun toList!8945 ((InoxSet Context!9090)) List!61784)

(assert (=> b!5397982 (= res!2294581 (= (toList!8945 z!1189) zl!343))))

(declare-fun setIsEmpty!35117 () Bool)

(assert (=> setIsEmpty!35117 setRes!35117))

(declare-fun b!5397983 () Bool)

(declare-fun e!3347106 () Bool)

(assert (=> b!5397983 (= e!3347106 e!3347118)))

(declare-fun res!2294569 () Bool)

(assert (=> b!5397983 (=> res!2294569 e!3347118)))

(assert (=> b!5397983 (= res!2294569 (not (= s!2326 lt!2200270)))))

(declare-fun ++!13496 (List!61783 List!61783) List!61783)

(assert (=> b!5397983 (= lt!2200270 (++!13496 (_1!35663 lt!2200259) (_2!35663 lt!2200259)))))

(declare-datatypes ((Option!15272 0))(
  ( (None!15271) (Some!15271 (v!51300 tuple2!64720)) )
))
(declare-fun lt!2200247 () Option!15272)

(declare-fun get!21244 (Option!15272) tuple2!64720)

(assert (=> b!5397983 (= lt!2200259 (get!21244 lt!2200247))))

(declare-fun isDefined!11975 (Option!15272) Bool)

(assert (=> b!5397983 (isDefined!11975 lt!2200247)))

(declare-fun findConcatSeparationZippers!18 ((InoxSet Context!9090) (InoxSet Context!9090) List!61783 List!61783 List!61783) Option!15272)

(assert (=> b!5397983 (= lt!2200247 (findConcatSeparationZippers!18 lt!2200241 lt!2200256 Nil!61659 s!2326 s!2326))))

(declare-fun lt!2200269 () Unit!154166)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!18 ((InoxSet Context!9090) Context!9090 List!61783) Unit!154166)

(assert (=> b!5397983 (= lt!2200269 (lemmaConcatZipperMatchesStringThenFindConcatDefined!18 lt!2200241 lt!2200273 s!2326))))

(declare-fun b!5397984 () Bool)

(declare-fun e!3347101 () Bool)

(assert (=> b!5397984 (= e!3347111 e!3347101)))

(declare-fun res!2294566 () Bool)

(assert (=> b!5397984 (=> res!2294566 e!3347101)))

(assert (=> b!5397984 (= res!2294566 (not (= r!7292 lt!2200255)))))

(assert (=> b!5397984 (= lt!2200255 (Concat!24006 lt!2200263 (regTwo!30834 r!7292)))))

(declare-fun b!5397985 () Bool)

(declare-fun e!3347102 () Bool)

(declare-fun tp!1493961 () Bool)

(assert (=> b!5397985 (= e!3347102 tp!1493961)))

(declare-fun b!5397986 () Bool)

(declare-fun res!2294585 () Bool)

(assert (=> b!5397986 (=> res!2294585 e!3347111)))

(assert (=> b!5397986 (= res!2294585 (not (= lt!2200274 r!7292)))))

(declare-fun b!5397987 () Bool)

(declare-fun e!3347120 () Bool)

(assert (=> b!5397987 (= e!3347101 e!3347120)))

(declare-fun res!2294586 () Bool)

(assert (=> b!5397987 (=> res!2294586 e!3347120)))

(declare-fun lt!2200260 () Context!9090)

(assert (=> b!5397987 (= res!2294586 (not (= (unfocusZipper!903 (Cons!61660 lt!2200260 Nil!61660)) lt!2200266)))))

(assert (=> b!5397987 (= lt!2200266 (Concat!24006 (reg!15490 (regOne!30834 r!7292)) lt!2200255))))

(declare-fun b!5397988 () Bool)

(declare-fun tp!1493959 () Bool)

(declare-fun tp!1493956 () Bool)

(assert (=> b!5397988 (= e!3347116 (and tp!1493959 tp!1493956))))

(declare-fun b!5397989 () Bool)

(declare-fun res!2294568 () Bool)

(assert (=> b!5397989 (=> res!2294568 e!3347117)))

(get-info :version)

(assert (=> b!5397989 (= res!2294568 (not ((_ is Cons!61658) (exprs!5045 (h!68108 zl!343)))))))

(declare-fun b!5397990 () Bool)

(declare-fun res!2294588 () Bool)

(assert (=> b!5397990 (=> res!2294588 e!3347105)))

(assert (=> b!5397990 (= res!2294588 (or ((_ is Concat!24006) (regOne!30834 r!7292)) (not ((_ is Star!15161) (regOne!30834 r!7292)))))))

(declare-fun b!5397991 () Bool)

(declare-fun res!2294596 () Bool)

(declare-fun e!3347108 () Bool)

(assert (=> b!5397991 (=> res!2294596 e!3347108)))

(declare-fun lt!2200268 () Bool)

(assert (=> b!5397991 (= res!2294596 (or (not lt!2200268) (not lt!2200236)))))

(declare-fun b!5397992 () Bool)

(declare-fun res!2294591 () Bool)

(declare-fun e!3347109 () Bool)

(assert (=> b!5397992 (=> res!2294591 e!3347109)))

(declare-fun isEmpty!33650 (List!61782) Bool)

(assert (=> b!5397992 (= res!2294591 (isEmpty!33650 (t!375005 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun b!5397993 () Bool)

(assert (=> b!5397993 (= e!3347116 tp_is_empty!39575)))

(declare-fun b!5397994 () Bool)

(declare-fun tp!1493958 () Bool)

(assert (=> b!5397994 (= e!3347124 tp!1493958)))

(declare-fun b!5397995 () Bool)

(declare-fun e!3347110 () Bool)

(declare-fun nullable!5330 (Regex!15161) Bool)

(assert (=> b!5397995 (= e!3347110 (nullable!5330 (regOne!30834 (regOne!30834 r!7292))))))

(assert (=> b!5397996 (= e!3347117 e!3347109)))

(declare-fun res!2294579 () Bool)

(assert (=> b!5397996 (=> res!2294579 e!3347109)))

(declare-fun lt!2200240 () Bool)

(assert (=> b!5397996 (= res!2294579 (or (not (= lt!2200244 lt!2200240)) ((_ is Nil!61659) s!2326)))))

(declare-fun Exists!2342 (Int) Bool)

(assert (=> b!5397996 (= (Exists!2342 lambda!280905) (Exists!2342 lambda!280906))))

(declare-fun lt!2200249 () Unit!154166)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!996 (Regex!15161 Regex!15161 List!61783) Unit!154166)

(assert (=> b!5397996 (= lt!2200249 (lemmaExistCutMatchRandMatchRSpecEquivalent!996 (regOne!30834 r!7292) (regTwo!30834 r!7292) s!2326))))

(assert (=> b!5397996 (= lt!2200240 (Exists!2342 lambda!280905))))

(declare-fun findConcatSeparation!1686 (Regex!15161 Regex!15161 List!61783 List!61783 List!61783) Option!15272)

(assert (=> b!5397996 (= lt!2200240 (isDefined!11975 (findConcatSeparation!1686 (regOne!30834 r!7292) (regTwo!30834 r!7292) Nil!61659 s!2326 s!2326)))))

(declare-fun lt!2200246 () Unit!154166)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1450 (Regex!15161 Regex!15161 List!61783) Unit!154166)

(assert (=> b!5397996 (= lt!2200246 (lemmaFindConcatSeparationEquivalentToExists!1450 (regOne!30834 r!7292) (regTwo!30834 r!7292) s!2326))))

(declare-fun b!5397997 () Bool)

(declare-fun tp!1493960 () Bool)

(assert (=> b!5397997 (= e!3347121 (and (inv!81149 (h!68108 zl!343)) e!3347102 tp!1493960))))

(assert (=> b!5397998 (= e!3347108 e!3347106)))

(declare-fun res!2294583 () Bool)

(assert (=> b!5397998 (=> res!2294583 e!3347106)))

(declare-fun appendTo!20 ((InoxSet Context!9090) Context!9090) (InoxSet Context!9090))

(assert (=> b!5397998 (= res!2294583 (not (= (appendTo!20 lt!2200241 lt!2200273) lt!2200271)))))

(declare-fun lambda!280908 () Int)

(declare-fun map!14126 ((InoxSet Context!9090) Int) (InoxSet Context!9090))

(assert (=> b!5397998 (= (map!14126 lt!2200241 lambda!280908) (store ((as const (Array Context!9090 Bool)) false) (Context!9091 (++!13495 lt!2200281 lt!2200242)) true))))

(declare-fun lt!2200250 () Unit!154166)

(assert (=> b!5397998 (= lt!2200250 (lemmaConcatPreservesForall!186 lt!2200281 lt!2200242 lambda!280909))))

(declare-fun lt!2200280 () Unit!154166)

(declare-fun lemmaMapOnSingletonSet!20 ((InoxSet Context!9090) Context!9090 Int) Unit!154166)

(assert (=> b!5397998 (= lt!2200280 (lemmaMapOnSingletonSet!20 lt!2200241 lt!2200261 lambda!280908))))

(declare-fun b!5397999 () Bool)

(assert (=> b!5397999 (= e!3347123 e!3347103)))

(declare-fun res!2294594 () Bool)

(assert (=> b!5397999 (=> res!2294594 e!3347103)))

(assert (=> b!5397999 (= res!2294594 (not (= lt!2200235 lt!2200257)))))

(declare-fun lambda!280907 () Int)

(declare-fun flatMap!888 ((InoxSet Context!9090) Int) (InoxSet Context!9090))

(declare-fun derivationStepZipperUp!533 (Context!9090 C!30592) (InoxSet Context!9090))

(assert (=> b!5397999 (= (flatMap!888 lt!2200271 lambda!280907) (derivationStepZipperUp!533 lt!2200260 (h!68107 s!2326)))))

(declare-fun lt!2200275 () Unit!154166)

(declare-fun lemmaFlatMapOnSingletonSet!420 ((InoxSet Context!9090) Context!9090 Int) Unit!154166)

(assert (=> b!5397999 (= lt!2200275 (lemmaFlatMapOnSingletonSet!420 lt!2200271 lt!2200260 lambda!280907))))

(declare-fun lt!2200272 () (InoxSet Context!9090))

(assert (=> b!5397999 (= lt!2200272 (derivationStepZipperUp!533 lt!2200260 (h!68107 s!2326)))))

(declare-fun derivationStepZipper!1400 ((InoxSet Context!9090) C!30592) (InoxSet Context!9090))

(assert (=> b!5397999 (= lt!2200235 (derivationStepZipper!1400 lt!2200271 (h!68107 s!2326)))))

(assert (=> b!5397999 (= lt!2200271 (store ((as const (Array Context!9090 Bool)) false) lt!2200260 true))))

(assert (=> b!5397999 (= lt!2200260 (Context!9091 (Cons!61658 (reg!15490 (regOne!30834 r!7292)) lt!2200242)))))

(declare-fun b!5398000 () Bool)

(declare-fun res!2294577 () Bool)

(assert (=> b!5398000 (=> res!2294577 e!3347107)))

(assert (=> b!5398000 (= res!2294577 (not (matchZipper!1405 z!1189 s!2326)))))

(declare-fun b!5398001 () Bool)

(declare-fun e!3347112 () Bool)

(assert (=> b!5398001 (= e!3347120 e!3347112)))

(declare-fun res!2294570 () Bool)

(assert (=> b!5398001 (=> res!2294570 e!3347112)))

(assert (=> b!5398001 (= res!2294570 (not (= (unfocusZipper!903 lt!2200282) (reg!15490 (regOne!30834 r!7292)))))))

(assert (=> b!5398001 (= lt!2200282 (Cons!61660 lt!2200261 Nil!61660))))

(assert (=> b!5398001 (= (flatMap!888 lt!2200256 lambda!280907) (derivationStepZipperUp!533 lt!2200273 (h!68107 s!2326)))))

(declare-fun lt!2200238 () Unit!154166)

(assert (=> b!5398001 (= lt!2200238 (lemmaFlatMapOnSingletonSet!420 lt!2200256 lt!2200273 lambda!280907))))

(assert (=> b!5398001 (= (flatMap!888 lt!2200241 lambda!280907) (derivationStepZipperUp!533 lt!2200261 (h!68107 s!2326)))))

(declare-fun lt!2200254 () Unit!154166)

(assert (=> b!5398001 (= lt!2200254 (lemmaFlatMapOnSingletonSet!420 lt!2200241 lt!2200261 lambda!280907))))

(declare-fun lt!2200252 () (InoxSet Context!9090))

(assert (=> b!5398001 (= lt!2200252 (derivationStepZipperUp!533 lt!2200273 (h!68107 s!2326)))))

(declare-fun lt!2200276 () (InoxSet Context!9090))

(assert (=> b!5398001 (= lt!2200276 (derivationStepZipperUp!533 lt!2200261 (h!68107 s!2326)))))

(assert (=> b!5398001 (= lt!2200256 (store ((as const (Array Context!9090 Bool)) false) lt!2200273 true))))

(assert (=> b!5398001 (= lt!2200241 (store ((as const (Array Context!9090 Bool)) false) lt!2200261 true))))

(assert (=> b!5398001 (= lt!2200261 (Context!9091 lt!2200281))))

(assert (=> b!5398001 (= lt!2200281 (Cons!61658 (reg!15490 (regOne!30834 r!7292)) Nil!61658))))

(declare-fun b!5398002 () Bool)

(assert (=> b!5398002 (= e!3347122 (not e!3347117))))

(declare-fun res!2294598 () Bool)

(assert (=> b!5398002 (=> res!2294598 e!3347117)))

(assert (=> b!5398002 (= res!2294598 (not ((_ is Cons!61660) zl!343)))))

(assert (=> b!5398002 (= lt!2200244 (matchRSpec!2264 r!7292 s!2326))))

(assert (=> b!5398002 (= lt!2200244 (matchR!7346 r!7292 s!2326))))

(declare-fun lt!2200258 () Unit!154166)

(assert (=> b!5398002 (= lt!2200258 (mainMatchTheorem!2264 r!7292 s!2326))))

(assert (=> b!5398003 (= e!3347109 e!3347105)))

(declare-fun res!2294599 () Bool)

(assert (=> b!5398003 (=> res!2294599 e!3347105)))

(assert (=> b!5398003 (= res!2294599 (or (and ((_ is ElementMatch!15161) (regOne!30834 r!7292)) (= (c!940711 (regOne!30834 r!7292)) (h!68107 s!2326))) ((_ is Union!15161) (regOne!30834 r!7292))))))

(declare-fun lt!2200264 () Unit!154166)

(assert (=> b!5398003 (= lt!2200264 e!3347104)))

(declare-fun c!940710 () Bool)

(assert (=> b!5398003 (= c!940710 lt!2200279)))

(assert (=> b!5398003 (= lt!2200279 (nullable!5330 (h!68106 (exprs!5045 (h!68108 zl!343)))))))

(assert (=> b!5398003 (= (flatMap!888 z!1189 lambda!280907) (derivationStepZipperUp!533 (h!68108 zl!343) (h!68107 s!2326)))))

(declare-fun lt!2200262 () Unit!154166)

(assert (=> b!5398003 (= lt!2200262 (lemmaFlatMapOnSingletonSet!420 z!1189 (h!68108 zl!343) lambda!280907))))

(declare-fun lt!2200278 () Context!9090)

(assert (=> b!5398003 (= lt!2200267 (derivationStepZipperUp!533 lt!2200278 (h!68107 s!2326)))))

(assert (=> b!5398003 (= lt!2200265 (derivationStepZipperDown!609 (h!68106 (exprs!5045 (h!68108 zl!343))) lt!2200278 (h!68107 s!2326)))))

(assert (=> b!5398003 (= lt!2200278 (Context!9091 (t!375005 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun lt!2200245 () (InoxSet Context!9090))

(assert (=> b!5398003 (= lt!2200245 (derivationStepZipperUp!533 (Context!9091 (Cons!61658 (h!68106 (exprs!5045 (h!68108 zl!343))) (t!375005 (exprs!5045 (h!68108 zl!343))))) (h!68107 s!2326)))))

(declare-fun b!5398004 () Bool)

(declare-fun res!2294571 () Bool)

(assert (=> b!5398004 (=> res!2294571 e!3347117)))

(assert (=> b!5398004 (= res!2294571 (or ((_ is EmptyExpr!15161) r!7292) ((_ is EmptyLang!15161) r!7292) ((_ is ElementMatch!15161) r!7292) ((_ is Union!15161) r!7292) (not ((_ is Concat!24006) r!7292))))))

(declare-fun b!5398005 () Bool)

(assert (=> b!5398005 (= e!3347107 e!3347108)))

(declare-fun res!2294574 () Bool)

(assert (=> b!5398005 (=> res!2294574 e!3347108)))

(assert (=> b!5398005 (= res!2294574 e!3347100)))

(declare-fun res!2294589 () Bool)

(assert (=> b!5398005 (=> (not res!2294589) (not e!3347100))))

(assert (=> b!5398005 (= res!2294589 (not lt!2200268))))

(assert (=> b!5398005 (= lt!2200268 (matchZipper!1405 lt!2200265 (t!375006 s!2326)))))

(declare-fun b!5398006 () Bool)

(declare-fun tp!1493953 () Bool)

(assert (=> b!5398006 (= e!3347116 tp!1493953)))

(declare-fun b!5398007 () Bool)

(assert (=> b!5398007 (= e!3347112 e!3347114)))

(declare-fun res!2294590 () Bool)

(assert (=> b!5398007 (=> res!2294590 e!3347114)))

(assert (=> b!5398007 (= res!2294590 (not (= (unfocusZipper!903 lt!2200277) lt!2200255)))))

(assert (=> b!5398007 (= lt!2200277 (Cons!61660 lt!2200273 Nil!61660))))

(declare-fun b!5398008 () Bool)

(declare-fun res!2294572 () Bool)

(assert (=> b!5398008 (=> res!2294572 e!3347105)))

(assert (=> b!5398008 (= res!2294572 e!3347110)))

(declare-fun res!2294597 () Bool)

(assert (=> b!5398008 (=> (not res!2294597) (not e!3347110))))

(assert (=> b!5398008 (= res!2294597 ((_ is Concat!24006) (regOne!30834 r!7292)))))

(declare-fun b!5398009 () Bool)

(declare-fun res!2294575 () Bool)

(assert (=> b!5398009 (=> res!2294575 e!3347117)))

(declare-fun generalisedUnion!1090 (List!61782) Regex!15161)

(declare-fun unfocusZipperList!603 (List!61784) List!61782)

(assert (=> b!5398009 (= res!2294575 (not (= r!7292 (generalisedUnion!1090 (unfocusZipperList!603 zl!343)))))))

(assert (= (and start!567006 res!2294580) b!5397982))

(assert (= (and b!5397982 res!2294581) b!5397971))

(assert (= (and b!5397971 res!2294587) b!5398002))

(assert (= (and b!5398002 (not res!2294598)) b!5397975))

(assert (= (and b!5397975 (not res!2294578)) b!5397978))

(assert (= (and b!5397978 (not res!2294593)) b!5397989))

(assert (= (and b!5397989 (not res!2294568)) b!5398009))

(assert (= (and b!5398009 (not res!2294575)) b!5398004))

(assert (= (and b!5398004 (not res!2294571)) b!5397996))

(assert (= (and b!5397996 (not res!2294579)) b!5397992))

(assert (= (and b!5397992 (not res!2294591)) b!5398003))

(assert (= (and b!5398003 c!940710) b!5397976))

(assert (= (and b!5398003 (not c!940710)) b!5397968))

(assert (= (and b!5397976 (not res!2294573)) b!5397972))

(assert (= (and b!5398003 (not res!2294599)) b!5398008))

(assert (= (and b!5398008 res!2294597) b!5397995))

(assert (= (and b!5398008 (not res!2294572)) b!5397990))

(assert (= (and b!5397990 (not res!2294588)) b!5397981))

(assert (= (and b!5397981 (not res!2294595)) b!5397999))

(assert (= (and b!5397999 (not res!2294594)) b!5397969))

(assert (= (and b!5397969 (not res!2294567)) b!5397986))

(assert (= (and b!5397986 (not res!2294585)) b!5397984))

(assert (= (and b!5397984 (not res!2294566)) b!5397987))

(assert (= (and b!5397987 (not res!2294586)) b!5398001))

(assert (= (and b!5398001 (not res!2294570)) b!5398007))

(assert (= (and b!5398007 (not res!2294590)) b!5397973))

(assert (= (and b!5397973 (not res!2294584)) b!5398000))

(assert (= (and b!5398000 (not res!2294577)) b!5397980))

(assert (= (and b!5397980 (not res!2294592)) b!5398005))

(assert (= (and b!5398005 res!2294589) b!5397979))

(assert (= (and b!5398005 (not res!2294574)) b!5397991))

(assert (= (and b!5397991 (not res!2294596)) b!5397998))

(assert (= (and b!5397998 (not res!2294583)) b!5397983))

(assert (= (and b!5397983 (not res!2294569)) b!5397974))

(assert (= (and b!5397974 (not res!2294582)) b!5397977))

(assert (= (and b!5397977 (not res!2294576)) b!5397970))

(assert (= (and start!567006 ((_ is ElementMatch!15161) r!7292)) b!5397993))

(assert (= (and start!567006 ((_ is Concat!24006) r!7292)) b!5397966))

(assert (= (and start!567006 ((_ is Star!15161) r!7292)) b!5398006))

(assert (= (and start!567006 ((_ is Union!15161) r!7292)) b!5397988))

(assert (= (and start!567006 condSetEmpty!35117) setIsEmpty!35117))

(assert (= (and start!567006 (not condSetEmpty!35117)) setNonEmpty!35117))

(assert (= setNonEmpty!35117 b!5397994))

(assert (= b!5397997 b!5397985))

(assert (= (and start!567006 ((_ is Cons!61660) zl!343)) b!5397997))

(assert (= (and start!567006 ((_ is Cons!61659) s!2326)) b!5397967))

(declare-fun m!6422732 () Bool)

(assert (=> b!5398005 m!6422732))

(declare-fun m!6422734 () Bool)

(assert (=> b!5397972 m!6422734))

(declare-fun m!6422736 () Bool)

(assert (=> b!5397995 m!6422736))

(declare-fun m!6422738 () Bool)

(assert (=> b!5398009 m!6422738))

(assert (=> b!5398009 m!6422738))

(declare-fun m!6422740 () Bool)

(assert (=> b!5398009 m!6422740))

(declare-fun m!6422742 () Bool)

(assert (=> start!567006 m!6422742))

(declare-fun m!6422744 () Bool)

(assert (=> b!5397970 m!6422744))

(declare-fun m!6422746 () Bool)

(assert (=> b!5397970 m!6422746))

(declare-fun m!6422748 () Bool)

(assert (=> b!5397970 m!6422748))

(declare-fun m!6422750 () Bool)

(assert (=> b!5397970 m!6422750))

(declare-fun m!6422752 () Bool)

(assert (=> b!5397970 m!6422752))

(declare-fun m!6422754 () Bool)

(assert (=> b!5397970 m!6422754))

(declare-fun m!6422756 () Bool)

(assert (=> b!5397970 m!6422756))

(declare-fun m!6422758 () Bool)

(assert (=> b!5397970 m!6422758))

(declare-fun m!6422760 () Bool)

(assert (=> b!5397970 m!6422760))

(declare-fun m!6422762 () Bool)

(assert (=> b!5397970 m!6422762))

(declare-fun m!6422764 () Bool)

(assert (=> b!5397970 m!6422764))

(assert (=> b!5397970 m!6422752))

(declare-fun m!6422766 () Bool)

(assert (=> b!5397970 m!6422766))

(declare-fun m!6422768 () Bool)

(assert (=> b!5397976 m!6422768))

(assert (=> b!5397976 m!6422732))

(declare-fun m!6422770 () Bool)

(assert (=> b!5397976 m!6422770))

(declare-fun m!6422772 () Bool)

(assert (=> b!5397997 m!6422772))

(declare-fun m!6422774 () Bool)

(assert (=> b!5398002 m!6422774))

(declare-fun m!6422776 () Bool)

(assert (=> b!5398002 m!6422776))

(declare-fun m!6422778 () Bool)

(assert (=> b!5398002 m!6422778))

(declare-fun m!6422780 () Bool)

(assert (=> b!5397992 m!6422780))

(declare-fun m!6422782 () Bool)

(assert (=> b!5398001 m!6422782))

(declare-fun m!6422784 () Bool)

(assert (=> b!5398001 m!6422784))

(declare-fun m!6422786 () Bool)

(assert (=> b!5398001 m!6422786))

(declare-fun m!6422788 () Bool)

(assert (=> b!5398001 m!6422788))

(declare-fun m!6422790 () Bool)

(assert (=> b!5398001 m!6422790))

(declare-fun m!6422792 () Bool)

(assert (=> b!5398001 m!6422792))

(declare-fun m!6422794 () Bool)

(assert (=> b!5398001 m!6422794))

(declare-fun m!6422796 () Bool)

(assert (=> b!5398001 m!6422796))

(declare-fun m!6422798 () Bool)

(assert (=> b!5398001 m!6422798))

(declare-fun m!6422800 () Bool)

(assert (=> b!5397987 m!6422800))

(declare-fun m!6422802 () Bool)

(assert (=> b!5397977 m!6422802))

(declare-fun m!6422804 () Bool)

(assert (=> b!5397973 m!6422804))

(declare-fun m!6422806 () Bool)

(assert (=> b!5397973 m!6422806))

(declare-fun m!6422808 () Bool)

(assert (=> b!5397973 m!6422808))

(declare-fun m!6422810 () Bool)

(assert (=> setNonEmpty!35117 m!6422810))

(declare-fun m!6422812 () Bool)

(assert (=> b!5397981 m!6422812))

(declare-fun m!6422814 () Bool)

(assert (=> b!5397996 m!6422814))

(declare-fun m!6422816 () Bool)

(assert (=> b!5397996 m!6422816))

(declare-fun m!6422818 () Bool)

(assert (=> b!5397996 m!6422818))

(declare-fun m!6422820 () Bool)

(assert (=> b!5397996 m!6422820))

(assert (=> b!5397996 m!6422814))

(declare-fun m!6422822 () Bool)

(assert (=> b!5397996 m!6422822))

(assert (=> b!5397996 m!6422818))

(declare-fun m!6422824 () Bool)

(assert (=> b!5397996 m!6422824))

(declare-fun m!6422826 () Bool)

(assert (=> b!5397975 m!6422826))

(declare-fun m!6422828 () Bool)

(assert (=> b!5398007 m!6422828))

(declare-fun m!6422830 () Bool)

(assert (=> b!5398003 m!6422830))

(declare-fun m!6422832 () Bool)

(assert (=> b!5398003 m!6422832))

(declare-fun m!6422834 () Bool)

(assert (=> b!5398003 m!6422834))

(declare-fun m!6422836 () Bool)

(assert (=> b!5398003 m!6422836))

(declare-fun m!6422838 () Bool)

(assert (=> b!5398003 m!6422838))

(declare-fun m!6422840 () Bool)

(assert (=> b!5398003 m!6422840))

(declare-fun m!6422842 () Bool)

(assert (=> b!5398003 m!6422842))

(declare-fun m!6422844 () Bool)

(assert (=> b!5397971 m!6422844))

(declare-fun m!6422846 () Bool)

(assert (=> b!5397974 m!6422846))

(declare-fun m!6422848 () Bool)

(assert (=> b!5398000 m!6422848))

(declare-fun m!6422850 () Bool)

(assert (=> b!5397999 m!6422850))

(declare-fun m!6422852 () Bool)

(assert (=> b!5397999 m!6422852))

(declare-fun m!6422854 () Bool)

(assert (=> b!5397999 m!6422854))

(declare-fun m!6422856 () Bool)

(assert (=> b!5397999 m!6422856))

(declare-fun m!6422858 () Bool)

(assert (=> b!5397999 m!6422858))

(assert (=> b!5397979 m!6422734))

(declare-fun m!6422860 () Bool)

(assert (=> b!5397978 m!6422860))

(declare-fun m!6422862 () Bool)

(assert (=> b!5397969 m!6422862))

(declare-fun m!6422864 () Bool)

(assert (=> b!5397969 m!6422864))

(declare-fun m!6422866 () Bool)

(assert (=> b!5397983 m!6422866))

(declare-fun m!6422868 () Bool)

(assert (=> b!5397983 m!6422868))

(declare-fun m!6422870 () Bool)

(assert (=> b!5397983 m!6422870))

(declare-fun m!6422872 () Bool)

(assert (=> b!5397983 m!6422872))

(declare-fun m!6422874 () Bool)

(assert (=> b!5397983 m!6422874))

(declare-fun m!6422876 () Bool)

(assert (=> b!5397982 m!6422876))

(assert (=> b!5397998 m!6422756))

(declare-fun m!6422878 () Bool)

(assert (=> b!5397998 m!6422878))

(assert (=> b!5397998 m!6422746))

(assert (=> b!5397998 m!6422752))

(declare-fun m!6422880 () Bool)

(assert (=> b!5397998 m!6422880))

(declare-fun m!6422882 () Bool)

(assert (=> b!5397998 m!6422882))

(check-sat (not b!5397974) (not b!5397987) (not b!5397979) (not b!5398009) (not b!5398006) (not b!5397988) (not b!5398007) (not b!5397985) (not b!5398001) tp_is_empty!39575 (not b!5398003) (not b!5397973) (not b!5397969) (not b!5397970) (not b!5397996) (not b!5397977) (not b!5397999) (not b!5397992) (not b!5397995) (not b!5397998) (not b!5398002) (not b!5398005) (not b!5397972) (not b!5397982) (not b!5397967) (not b!5397966) (not b!5397978) (not b!5397983) (not b!5397981) (not b!5397994) (not b!5397976) (not b!5398000) (not start!567006) (not setNonEmpty!35117) (not b!5397997) (not b!5397975) (not b!5397971))
(check-sat)
(get-model)

(declare-fun e!3347227 () Bool)

(declare-fun d!1724524 () Bool)

(assert (=> d!1724524 (= (matchZipper!1405 ((_ map or) lt!2200265 lt!2200267) (t!375006 s!2326)) e!3347227)))

(declare-fun res!2294655 () Bool)

(assert (=> d!1724524 (=> res!2294655 e!3347227)))

(assert (=> d!1724524 (= res!2294655 (matchZipper!1405 lt!2200265 (t!375006 s!2326)))))

(declare-fun lt!2200317 () Unit!154166)

(declare-fun choose!40644 ((InoxSet Context!9090) (InoxSet Context!9090) List!61783) Unit!154166)

(assert (=> d!1724524 (= lt!2200317 (choose!40644 lt!2200265 lt!2200267 (t!375006 s!2326)))))

(assert (=> d!1724524 (= (lemmaZipperConcatMatchesSameAsBothZippers!398 lt!2200265 lt!2200267 (t!375006 s!2326)) lt!2200317)))

(declare-fun b!5398185 () Bool)

(assert (=> b!5398185 (= e!3347227 (matchZipper!1405 lt!2200267 (t!375006 s!2326)))))

(assert (= (and d!1724524 (not res!2294655)) b!5398185))

(assert (=> d!1724524 m!6422770))

(assert (=> d!1724524 m!6422732))

(declare-fun m!6423034 () Bool)

(assert (=> d!1724524 m!6423034))

(assert (=> b!5398185 m!6422734))

(assert (=> b!5397976 d!1724524))

(declare-fun d!1724526 () Bool)

(declare-fun c!940773 () Bool)

(declare-fun isEmpty!33653 (List!61783) Bool)

(assert (=> d!1724526 (= c!940773 (isEmpty!33653 (t!375006 s!2326)))))

(declare-fun e!3347237 () Bool)

(assert (=> d!1724526 (= (matchZipper!1405 lt!2200265 (t!375006 s!2326)) e!3347237)))

(declare-fun b!5398203 () Bool)

(declare-fun nullableZipper!1430 ((InoxSet Context!9090)) Bool)

(assert (=> b!5398203 (= e!3347237 (nullableZipper!1430 lt!2200265))))

(declare-fun b!5398204 () Bool)

(declare-fun head!11578 (List!61783) C!30592)

(declare-fun tail!10675 (List!61783) List!61783)

(assert (=> b!5398204 (= e!3347237 (matchZipper!1405 (derivationStepZipper!1400 lt!2200265 (head!11578 (t!375006 s!2326))) (tail!10675 (t!375006 s!2326))))))

(assert (= (and d!1724526 c!940773) b!5398203))

(assert (= (and d!1724526 (not c!940773)) b!5398204))

(declare-fun m!6423060 () Bool)

(assert (=> d!1724526 m!6423060))

(declare-fun m!6423062 () Bool)

(assert (=> b!5398203 m!6423062))

(declare-fun m!6423064 () Bool)

(assert (=> b!5398204 m!6423064))

(assert (=> b!5398204 m!6423064))

(declare-fun m!6423066 () Bool)

(assert (=> b!5398204 m!6423066))

(declare-fun m!6423068 () Bool)

(assert (=> b!5398204 m!6423068))

(assert (=> b!5398204 m!6423066))

(assert (=> b!5398204 m!6423068))

(declare-fun m!6423070 () Bool)

(assert (=> b!5398204 m!6423070))

(assert (=> b!5397976 d!1724526))

(declare-fun d!1724530 () Bool)

(declare-fun c!940774 () Bool)

(assert (=> d!1724530 (= c!940774 (isEmpty!33653 (t!375006 s!2326)))))

(declare-fun e!3347238 () Bool)

(assert (=> d!1724530 (= (matchZipper!1405 ((_ map or) lt!2200265 lt!2200267) (t!375006 s!2326)) e!3347238)))

(declare-fun b!5398205 () Bool)

(assert (=> b!5398205 (= e!3347238 (nullableZipper!1430 ((_ map or) lt!2200265 lt!2200267)))))

(declare-fun b!5398206 () Bool)

(assert (=> b!5398206 (= e!3347238 (matchZipper!1405 (derivationStepZipper!1400 ((_ map or) lt!2200265 lt!2200267) (head!11578 (t!375006 s!2326))) (tail!10675 (t!375006 s!2326))))))

(assert (= (and d!1724530 c!940774) b!5398205))

(assert (= (and d!1724530 (not c!940774)) b!5398206))

(assert (=> d!1724530 m!6423060))

(declare-fun m!6423072 () Bool)

(assert (=> b!5398205 m!6423072))

(assert (=> b!5398206 m!6423064))

(assert (=> b!5398206 m!6423064))

(declare-fun m!6423074 () Bool)

(assert (=> b!5398206 m!6423074))

(assert (=> b!5398206 m!6423068))

(assert (=> b!5398206 m!6423074))

(assert (=> b!5398206 m!6423068))

(declare-fun m!6423076 () Bool)

(assert (=> b!5398206 m!6423076))

(assert (=> b!5397976 d!1724530))

(declare-fun d!1724532 () Bool)

(declare-fun nullableFct!1582 (Regex!15161) Bool)

(assert (=> d!1724532 (= (nullable!5330 (regOne!30834 (regOne!30834 r!7292))) (nullableFct!1582 (regOne!30834 (regOne!30834 r!7292))))))

(declare-fun bs!1247964 () Bool)

(assert (= bs!1247964 d!1724532))

(declare-fun m!6423084 () Bool)

(assert (=> bs!1247964 m!6423084))

(assert (=> b!5397995 d!1724532))

(declare-fun d!1724538 () Bool)

(assert (=> d!1724538 (= (isEmpty!33649 (t!375007 zl!343)) ((_ is Nil!61660) (t!375007 zl!343)))))

(assert (=> b!5397975 d!1724538))

(declare-fun d!1724540 () Bool)

(declare-fun c!940775 () Bool)

(assert (=> d!1724540 (= c!940775 (isEmpty!33653 (_1!35663 lt!2200259)))))

(declare-fun e!3347239 () Bool)

(assert (=> d!1724540 (= (matchZipper!1405 lt!2200241 (_1!35663 lt!2200259)) e!3347239)))

(declare-fun b!5398207 () Bool)

(assert (=> b!5398207 (= e!3347239 (nullableZipper!1430 lt!2200241))))

(declare-fun b!5398208 () Bool)

(assert (=> b!5398208 (= e!3347239 (matchZipper!1405 (derivationStepZipper!1400 lt!2200241 (head!11578 (_1!35663 lt!2200259))) (tail!10675 (_1!35663 lt!2200259))))))

(assert (= (and d!1724540 c!940775) b!5398207))

(assert (= (and d!1724540 (not c!940775)) b!5398208))

(declare-fun m!6423086 () Bool)

(assert (=> d!1724540 m!6423086))

(declare-fun m!6423088 () Bool)

(assert (=> b!5398207 m!6423088))

(declare-fun m!6423090 () Bool)

(assert (=> b!5398208 m!6423090))

(assert (=> b!5398208 m!6423090))

(declare-fun m!6423092 () Bool)

(assert (=> b!5398208 m!6423092))

(declare-fun m!6423094 () Bool)

(assert (=> b!5398208 m!6423094))

(assert (=> b!5398208 m!6423092))

(assert (=> b!5398208 m!6423094))

(declare-fun m!6423096 () Bool)

(assert (=> b!5398208 m!6423096))

(assert (=> b!5397974 d!1724540))

(declare-fun d!1724542 () Bool)

(declare-fun dynLambda!24299 (Int Context!9090) Context!9090)

(assert (=> d!1724542 (= (map!14126 lt!2200241 lambda!280908) (store ((as const (Array Context!9090 Bool)) false) (dynLambda!24299 lambda!280908 lt!2200261) true))))

(declare-fun lt!2200328 () Unit!154166)

(declare-fun choose!40646 ((InoxSet Context!9090) Context!9090 Int) Unit!154166)

(assert (=> d!1724542 (= lt!2200328 (choose!40646 lt!2200241 lt!2200261 lambda!280908))))

(assert (=> d!1724542 (= lt!2200241 (store ((as const (Array Context!9090 Bool)) false) lt!2200261 true))))

(assert (=> d!1724542 (= (lemmaMapOnSingletonSet!20 lt!2200241 lt!2200261 lambda!280908) lt!2200328)))

(declare-fun b_lambda!206393 () Bool)

(assert (=> (not b_lambda!206393) (not d!1724542)))

(declare-fun bs!1247965 () Bool)

(assert (= bs!1247965 d!1724542))

(assert (=> bs!1247965 m!6422880))

(declare-fun m!6423098 () Bool)

(assert (=> bs!1247965 m!6423098))

(declare-fun m!6423100 () Bool)

(assert (=> bs!1247965 m!6423100))

(assert (=> bs!1247965 m!6423098))

(declare-fun m!6423102 () Bool)

(assert (=> bs!1247965 m!6423102))

(assert (=> bs!1247965 m!6422788))

(assert (=> b!5397998 d!1724542))

(declare-fun bs!1247972 () Bool)

(declare-fun d!1724544 () Bool)

(assert (= bs!1247972 (and d!1724544 b!5397998)))

(declare-fun lambda!280931 () Int)

(assert (=> bs!1247972 (= (= (exprs!5045 lt!2200273) lt!2200242) (= lambda!280931 lambda!280908))))

(assert (=> d!1724544 true))

(assert (=> d!1724544 (= (appendTo!20 lt!2200241 lt!2200273) (map!14126 lt!2200241 lambda!280931))))

(declare-fun bs!1247973 () Bool)

(assert (= bs!1247973 d!1724544))

(declare-fun m!6423128 () Bool)

(assert (=> bs!1247973 m!6423128))

(assert (=> b!5397998 d!1724544))

(declare-fun d!1724560 () Bool)

(declare-fun choose!40647 ((InoxSet Context!9090) Int) (InoxSet Context!9090))

(assert (=> d!1724560 (= (map!14126 lt!2200241 lambda!280908) (choose!40647 lt!2200241 lambda!280908))))

(declare-fun bs!1247974 () Bool)

(assert (= bs!1247974 d!1724560))

(declare-fun m!6423130 () Bool)

(assert (=> bs!1247974 m!6423130))

(assert (=> b!5397998 d!1724560))

(declare-fun d!1724562 () Bool)

(declare-fun forall!14523 (List!61782 Int) Bool)

(assert (=> d!1724562 (forall!14523 (++!13495 lt!2200281 lt!2200242) lambda!280909)))

(declare-fun lt!2200341 () Unit!154166)

(declare-fun choose!40648 (List!61782 List!61782 Int) Unit!154166)

(assert (=> d!1724562 (= lt!2200341 (choose!40648 lt!2200281 lt!2200242 lambda!280909))))

(assert (=> d!1724562 (forall!14523 lt!2200281 lambda!280909)))

(assert (=> d!1724562 (= (lemmaConcatPreservesForall!186 lt!2200281 lt!2200242 lambda!280909) lt!2200341)))

(declare-fun bs!1247975 () Bool)

(assert (= bs!1247975 d!1724562))

(assert (=> bs!1247975 m!6422746))

(assert (=> bs!1247975 m!6422746))

(declare-fun m!6423132 () Bool)

(assert (=> bs!1247975 m!6423132))

(declare-fun m!6423134 () Bool)

(assert (=> bs!1247975 m!6423134))

(declare-fun m!6423136 () Bool)

(assert (=> bs!1247975 m!6423136))

(assert (=> b!5397998 d!1724562))

(declare-fun b!5398272 () Bool)

(declare-fun res!2294698 () Bool)

(declare-fun e!3347271 () Bool)

(assert (=> b!5398272 (=> (not res!2294698) (not e!3347271))))

(declare-fun lt!2200350 () List!61782)

(declare-fun size!39828 (List!61782) Int)

(assert (=> b!5398272 (= res!2294698 (= (size!39828 lt!2200350) (+ (size!39828 lt!2200281) (size!39828 lt!2200242))))))

(declare-fun b!5398273 () Bool)

(assert (=> b!5398273 (= e!3347271 (or (not (= lt!2200242 Nil!61658)) (= lt!2200350 lt!2200281)))))

(declare-fun b!5398270 () Bool)

(declare-fun e!3347272 () List!61782)

(assert (=> b!5398270 (= e!3347272 lt!2200242)))

(declare-fun b!5398271 () Bool)

(assert (=> b!5398271 (= e!3347272 (Cons!61658 (h!68106 lt!2200281) (++!13495 (t!375005 lt!2200281) lt!2200242)))))

(declare-fun d!1724564 () Bool)

(assert (=> d!1724564 e!3347271))

(declare-fun res!2294699 () Bool)

(assert (=> d!1724564 (=> (not res!2294699) (not e!3347271))))

(declare-fun content!11040 (List!61782) (InoxSet Regex!15161))

(assert (=> d!1724564 (= res!2294699 (= (content!11040 lt!2200350) ((_ map or) (content!11040 lt!2200281) (content!11040 lt!2200242))))))

(assert (=> d!1724564 (= lt!2200350 e!3347272)))

(declare-fun c!940790 () Bool)

(assert (=> d!1724564 (= c!940790 ((_ is Nil!61658) lt!2200281))))

(assert (=> d!1724564 (= (++!13495 lt!2200281 lt!2200242) lt!2200350)))

(assert (= (and d!1724564 c!940790) b!5398270))

(assert (= (and d!1724564 (not c!940790)) b!5398271))

(assert (= (and d!1724564 res!2294699) b!5398272))

(assert (= (and b!5398272 res!2294698) b!5398273))

(declare-fun m!6423170 () Bool)

(assert (=> b!5398272 m!6423170))

(declare-fun m!6423172 () Bool)

(assert (=> b!5398272 m!6423172))

(declare-fun m!6423174 () Bool)

(assert (=> b!5398272 m!6423174))

(declare-fun m!6423176 () Bool)

(assert (=> b!5398271 m!6423176))

(declare-fun m!6423178 () Bool)

(assert (=> d!1724564 m!6423178))

(declare-fun m!6423180 () Bool)

(assert (=> d!1724564 m!6423180))

(declare-fun m!6423182 () Bool)

(assert (=> d!1724564 m!6423182))

(assert (=> b!5397998 d!1724564))

(declare-fun bs!1247977 () Bool)

(declare-fun d!1724570 () Bool)

(assert (= bs!1247977 (and d!1724570 b!5397998)))

(declare-fun lambda!280939 () Int)

(assert (=> bs!1247977 (= lambda!280939 lambda!280909)))

(declare-fun b!5398337 () Bool)

(declare-fun e!3347313 () Bool)

(declare-fun e!3347314 () Bool)

(assert (=> b!5398337 (= e!3347313 e!3347314)))

(declare-fun c!940814 () Bool)

(assert (=> b!5398337 (= c!940814 (isEmpty!33650 (exprs!5045 (h!68108 zl!343))))))

(declare-fun b!5398338 () Bool)

(declare-fun lt!2200356 () Regex!15161)

(declare-fun isEmptyExpr!964 (Regex!15161) Bool)

(assert (=> b!5398338 (= e!3347314 (isEmptyExpr!964 lt!2200356))))

(declare-fun b!5398339 () Bool)

(declare-fun e!3347310 () Regex!15161)

(assert (=> b!5398339 (= e!3347310 EmptyExpr!15161)))

(declare-fun b!5398340 () Bool)

(declare-fun e!3347315 () Regex!15161)

(assert (=> b!5398340 (= e!3347315 e!3347310)))

(declare-fun c!940812 () Bool)

(assert (=> b!5398340 (= c!940812 ((_ is Cons!61658) (exprs!5045 (h!68108 zl!343))))))

(assert (=> d!1724570 e!3347313))

(declare-fun res!2294724 () Bool)

(assert (=> d!1724570 (=> (not res!2294724) (not e!3347313))))

(assert (=> d!1724570 (= res!2294724 (validRegex!6897 lt!2200356))))

(assert (=> d!1724570 (= lt!2200356 e!3347315)))

(declare-fun c!940811 () Bool)

(declare-fun e!3347312 () Bool)

(assert (=> d!1724570 (= c!940811 e!3347312)))

(declare-fun res!2294723 () Bool)

(assert (=> d!1724570 (=> (not res!2294723) (not e!3347312))))

(assert (=> d!1724570 (= res!2294723 ((_ is Cons!61658) (exprs!5045 (h!68108 zl!343))))))

(assert (=> d!1724570 (forall!14523 (exprs!5045 (h!68108 zl!343)) lambda!280939)))

(assert (=> d!1724570 (= (generalisedConcat!830 (exprs!5045 (h!68108 zl!343))) lt!2200356)))

(declare-fun b!5398341 () Bool)

(assert (=> b!5398341 (= e!3347310 (Concat!24006 (h!68106 (exprs!5045 (h!68108 zl!343))) (generalisedConcat!830 (t!375005 (exprs!5045 (h!68108 zl!343))))))))

(declare-fun b!5398342 () Bool)

(declare-fun e!3347311 () Bool)

(assert (=> b!5398342 (= e!3347314 e!3347311)))

(declare-fun c!940813 () Bool)

(declare-fun tail!10676 (List!61782) List!61782)

(assert (=> b!5398342 (= c!940813 (isEmpty!33650 (tail!10676 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun b!5398343 () Bool)

(assert (=> b!5398343 (= e!3347312 (isEmpty!33650 (t!375005 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun b!5398344 () Bool)

(declare-fun head!11579 (List!61782) Regex!15161)

(assert (=> b!5398344 (= e!3347311 (= lt!2200356 (head!11579 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun b!5398345 () Bool)

(declare-fun isConcat!487 (Regex!15161) Bool)

(assert (=> b!5398345 (= e!3347311 (isConcat!487 lt!2200356))))

(declare-fun b!5398346 () Bool)

(assert (=> b!5398346 (= e!3347315 (h!68106 (exprs!5045 (h!68108 zl!343))))))

(assert (= (and d!1724570 res!2294723) b!5398343))

(assert (= (and d!1724570 c!940811) b!5398346))

(assert (= (and d!1724570 (not c!940811)) b!5398340))

(assert (= (and b!5398340 c!940812) b!5398341))

(assert (= (and b!5398340 (not c!940812)) b!5398339))

(assert (= (and d!1724570 res!2294724) b!5398337))

(assert (= (and b!5398337 c!940814) b!5398338))

(assert (= (and b!5398337 (not c!940814)) b!5398342))

(assert (= (and b!5398342 c!940813) b!5398344))

(assert (= (and b!5398342 (not c!940813)) b!5398345))

(declare-fun m!6423192 () Bool)

(assert (=> b!5398341 m!6423192))

(declare-fun m!6423194 () Bool)

(assert (=> b!5398337 m!6423194))

(declare-fun m!6423196 () Bool)

(assert (=> b!5398345 m!6423196))

(declare-fun m!6423198 () Bool)

(assert (=> b!5398342 m!6423198))

(assert (=> b!5398342 m!6423198))

(declare-fun m!6423200 () Bool)

(assert (=> b!5398342 m!6423200))

(declare-fun m!6423202 () Bool)

(assert (=> d!1724570 m!6423202))

(declare-fun m!6423204 () Bool)

(assert (=> d!1724570 m!6423204))

(declare-fun m!6423206 () Bool)

(assert (=> b!5398338 m!6423206))

(assert (=> b!5398343 m!6422780))

(declare-fun m!6423208 () Bool)

(assert (=> b!5398344 m!6423208))

(assert (=> b!5397978 d!1724570))

(declare-fun bs!1247985 () Bool)

(declare-fun d!1724576 () Bool)

(assert (= bs!1247985 (and d!1724576 b!5397998)))

(declare-fun lambda!280943 () Int)

(assert (=> bs!1247985 (= lambda!280943 lambda!280909)))

(declare-fun bs!1247986 () Bool)

(assert (= bs!1247986 (and d!1724576 d!1724570)))

(assert (=> bs!1247986 (= lambda!280943 lambda!280939)))

(assert (=> d!1724576 (= (inv!81149 (h!68108 zl!343)) (forall!14523 (exprs!5045 (h!68108 zl!343)) lambda!280943))))

(declare-fun bs!1247987 () Bool)

(assert (= bs!1247987 d!1724576))

(declare-fun m!6423216 () Bool)

(assert (=> bs!1247987 m!6423216))

(assert (=> b!5397997 d!1724576))

(declare-fun d!1724580 () Bool)

(declare-fun c!940815 () Bool)

(assert (=> d!1724580 (= c!940815 (isEmpty!33653 (_2!35663 lt!2200259)))))

(declare-fun e!3347316 () Bool)

(assert (=> d!1724580 (= (matchZipper!1405 lt!2200256 (_2!35663 lt!2200259)) e!3347316)))

(declare-fun b!5398347 () Bool)

(assert (=> b!5398347 (= e!3347316 (nullableZipper!1430 lt!2200256))))

(declare-fun b!5398348 () Bool)

(assert (=> b!5398348 (= e!3347316 (matchZipper!1405 (derivationStepZipper!1400 lt!2200256 (head!11578 (_2!35663 lt!2200259))) (tail!10675 (_2!35663 lt!2200259))))))

(assert (= (and d!1724580 c!940815) b!5398347))

(assert (= (and d!1724580 (not c!940815)) b!5398348))

(declare-fun m!6423218 () Bool)

(assert (=> d!1724580 m!6423218))

(declare-fun m!6423220 () Bool)

(assert (=> b!5398347 m!6423220))

(declare-fun m!6423222 () Bool)

(assert (=> b!5398348 m!6423222))

(assert (=> b!5398348 m!6423222))

(declare-fun m!6423224 () Bool)

(assert (=> b!5398348 m!6423224))

(declare-fun m!6423226 () Bool)

(assert (=> b!5398348 m!6423226))

(assert (=> b!5398348 m!6423224))

(assert (=> b!5398348 m!6423226))

(declare-fun m!6423228 () Bool)

(assert (=> b!5398348 m!6423228))

(assert (=> b!5397977 d!1724580))

(declare-fun b!5398463 () Bool)

(declare-fun e!3347383 () Bool)

(assert (=> b!5398463 (= e!3347383 (matchR!7346 (regTwo!30834 r!7292) s!2326))))

(declare-fun b!5398464 () Bool)

(declare-fun lt!2200380 () Unit!154166)

(declare-fun lt!2200378 () Unit!154166)

(assert (=> b!5398464 (= lt!2200380 lt!2200378)))

(assert (=> b!5398464 (= (++!13496 (++!13496 Nil!61659 (Cons!61659 (h!68107 s!2326) Nil!61659)) (t!375006 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1825 (List!61783 C!30592 List!61783 List!61783) Unit!154166)

(assert (=> b!5398464 (= lt!2200378 (lemmaMoveElementToOtherListKeepsConcatEq!1825 Nil!61659 (h!68107 s!2326) (t!375006 s!2326) s!2326))))

(declare-fun e!3347382 () Option!15272)

(assert (=> b!5398464 (= e!3347382 (findConcatSeparation!1686 (regOne!30834 r!7292) (regTwo!30834 r!7292) (++!13496 Nil!61659 (Cons!61659 (h!68107 s!2326) Nil!61659)) (t!375006 s!2326) s!2326))))

(declare-fun b!5398465 () Bool)

(declare-fun e!3347379 () Bool)

(declare-fun lt!2200379 () Option!15272)

(assert (=> b!5398465 (= e!3347379 (= (++!13496 (_1!35663 (get!21244 lt!2200379)) (_2!35663 (get!21244 lt!2200379))) s!2326))))

(declare-fun d!1724582 () Bool)

(declare-fun e!3347381 () Bool)

(assert (=> d!1724582 e!3347381))

(declare-fun res!2294794 () Bool)

(assert (=> d!1724582 (=> res!2294794 e!3347381)))

(assert (=> d!1724582 (= res!2294794 e!3347379)))

(declare-fun res!2294793 () Bool)

(assert (=> d!1724582 (=> (not res!2294793) (not e!3347379))))

(assert (=> d!1724582 (= res!2294793 (isDefined!11975 lt!2200379))))

(declare-fun e!3347380 () Option!15272)

(assert (=> d!1724582 (= lt!2200379 e!3347380)))

(declare-fun c!940840 () Bool)

(assert (=> d!1724582 (= c!940840 e!3347383)))

(declare-fun res!2294792 () Bool)

(assert (=> d!1724582 (=> (not res!2294792) (not e!3347383))))

(assert (=> d!1724582 (= res!2294792 (matchR!7346 (regOne!30834 r!7292) Nil!61659))))

(assert (=> d!1724582 (validRegex!6897 (regOne!30834 r!7292))))

(assert (=> d!1724582 (= (findConcatSeparation!1686 (regOne!30834 r!7292) (regTwo!30834 r!7292) Nil!61659 s!2326 s!2326) lt!2200379)))

(declare-fun b!5398466 () Bool)

(declare-fun res!2294791 () Bool)

(assert (=> b!5398466 (=> (not res!2294791) (not e!3347379))))

(assert (=> b!5398466 (= res!2294791 (matchR!7346 (regOne!30834 r!7292) (_1!35663 (get!21244 lt!2200379))))))

(declare-fun b!5398467 () Bool)

(assert (=> b!5398467 (= e!3347382 None!15271)))

(declare-fun b!5398468 () Bool)

(assert (=> b!5398468 (= e!3347381 (not (isDefined!11975 lt!2200379)))))

(declare-fun b!5398469 () Bool)

(assert (=> b!5398469 (= e!3347380 e!3347382)))

(declare-fun c!940841 () Bool)

(assert (=> b!5398469 (= c!940841 ((_ is Nil!61659) s!2326))))

(declare-fun b!5398470 () Bool)

(assert (=> b!5398470 (= e!3347380 (Some!15271 (tuple2!64721 Nil!61659 s!2326)))))

(declare-fun b!5398471 () Bool)

(declare-fun res!2294795 () Bool)

(assert (=> b!5398471 (=> (not res!2294795) (not e!3347379))))

(assert (=> b!5398471 (= res!2294795 (matchR!7346 (regTwo!30834 r!7292) (_2!35663 (get!21244 lt!2200379))))))

(assert (= (and d!1724582 res!2294792) b!5398463))

(assert (= (and d!1724582 c!940840) b!5398470))

(assert (= (and d!1724582 (not c!940840)) b!5398469))

(assert (= (and b!5398469 c!940841) b!5398467))

(assert (= (and b!5398469 (not c!940841)) b!5398464))

(assert (= (and d!1724582 res!2294793) b!5398466))

(assert (= (and b!5398466 res!2294791) b!5398471))

(assert (= (and b!5398471 res!2294795) b!5398465))

(assert (= (and d!1724582 (not res!2294794)) b!5398468))

(declare-fun m!6423302 () Bool)

(assert (=> b!5398465 m!6423302))

(declare-fun m!6423304 () Bool)

(assert (=> b!5398465 m!6423304))

(declare-fun m!6423306 () Bool)

(assert (=> d!1724582 m!6423306))

(declare-fun m!6423308 () Bool)

(assert (=> d!1724582 m!6423308))

(declare-fun m!6423310 () Bool)

(assert (=> d!1724582 m!6423310))

(declare-fun m!6423312 () Bool)

(assert (=> b!5398464 m!6423312))

(assert (=> b!5398464 m!6423312))

(declare-fun m!6423314 () Bool)

(assert (=> b!5398464 m!6423314))

(declare-fun m!6423316 () Bool)

(assert (=> b!5398464 m!6423316))

(assert (=> b!5398464 m!6423312))

(declare-fun m!6423318 () Bool)

(assert (=> b!5398464 m!6423318))

(declare-fun m!6423320 () Bool)

(assert (=> b!5398463 m!6423320))

(assert (=> b!5398471 m!6423302))

(declare-fun m!6423322 () Bool)

(assert (=> b!5398471 m!6423322))

(assert (=> b!5398468 m!6423306))

(assert (=> b!5398466 m!6423302))

(declare-fun m!6423324 () Bool)

(assert (=> b!5398466 m!6423324))

(assert (=> b!5397996 d!1724582))

(declare-fun d!1724606 () Bool)

(declare-fun choose!40650 (Int) Bool)

(assert (=> d!1724606 (= (Exists!2342 lambda!280906) (choose!40650 lambda!280906))))

(declare-fun bs!1247994 () Bool)

(assert (= bs!1247994 d!1724606))

(declare-fun m!6423326 () Bool)

(assert (=> bs!1247994 m!6423326))

(assert (=> b!5397996 d!1724606))

(declare-fun bs!1248024 () Bool)

(declare-fun d!1724608 () Bool)

(assert (= bs!1248024 (and d!1724608 b!5397996)))

(declare-fun lambda!280960 () Int)

(assert (=> bs!1248024 (= lambda!280960 lambda!280905)))

(assert (=> bs!1248024 (not (= lambda!280960 lambda!280906))))

(assert (=> d!1724608 true))

(assert (=> d!1724608 true))

(assert (=> d!1724608 true))

(declare-fun lambda!280961 () Int)

(assert (=> bs!1248024 (not (= lambda!280961 lambda!280905))))

(assert (=> bs!1248024 (= lambda!280961 lambda!280906)))

(declare-fun bs!1248027 () Bool)

(assert (= bs!1248027 d!1724608))

(assert (=> bs!1248027 (not (= lambda!280961 lambda!280960))))

(assert (=> d!1724608 true))

(assert (=> d!1724608 true))

(assert (=> d!1724608 true))

(assert (=> d!1724608 (= (Exists!2342 lambda!280960) (Exists!2342 lambda!280961))))

(declare-fun lt!2200396 () Unit!154166)

(declare-fun choose!40652 (Regex!15161 Regex!15161 List!61783) Unit!154166)

(assert (=> d!1724608 (= lt!2200396 (choose!40652 (regOne!30834 r!7292) (regTwo!30834 r!7292) s!2326))))

(assert (=> d!1724608 (validRegex!6897 (regOne!30834 r!7292))))

(assert (=> d!1724608 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!996 (regOne!30834 r!7292) (regTwo!30834 r!7292) s!2326) lt!2200396)))

(declare-fun m!6423424 () Bool)

(assert (=> bs!1248027 m!6423424))

(declare-fun m!6423426 () Bool)

(assert (=> bs!1248027 m!6423426))

(declare-fun m!6423428 () Bool)

(assert (=> bs!1248027 m!6423428))

(assert (=> bs!1248027 m!6423310))

(assert (=> b!5397996 d!1724608))

(declare-fun d!1724652 () Bool)

(declare-fun isEmpty!33654 (Option!15272) Bool)

(assert (=> d!1724652 (= (isDefined!11975 (findConcatSeparation!1686 (regOne!30834 r!7292) (regTwo!30834 r!7292) Nil!61659 s!2326 s!2326)) (not (isEmpty!33654 (findConcatSeparation!1686 (regOne!30834 r!7292) (regTwo!30834 r!7292) Nil!61659 s!2326 s!2326))))))

(declare-fun bs!1248028 () Bool)

(assert (= bs!1248028 d!1724652))

(assert (=> bs!1248028 m!6422818))

(declare-fun m!6423430 () Bool)

(assert (=> bs!1248028 m!6423430))

(assert (=> b!5397996 d!1724652))

(declare-fun bs!1248040 () Bool)

(declare-fun d!1724654 () Bool)

(assert (= bs!1248040 (and d!1724654 b!5397996)))

(declare-fun lambda!280970 () Int)

(assert (=> bs!1248040 (= lambda!280970 lambda!280905)))

(assert (=> bs!1248040 (not (= lambda!280970 lambda!280906))))

(declare-fun bs!1248041 () Bool)

(assert (= bs!1248041 (and d!1724654 d!1724608)))

(assert (=> bs!1248041 (= lambda!280970 lambda!280960)))

(assert (=> bs!1248041 (not (= lambda!280970 lambda!280961))))

(assert (=> d!1724654 true))

(assert (=> d!1724654 true))

(assert (=> d!1724654 true))

(assert (=> d!1724654 (= (isDefined!11975 (findConcatSeparation!1686 (regOne!30834 r!7292) (regTwo!30834 r!7292) Nil!61659 s!2326 s!2326)) (Exists!2342 lambda!280970))))

(declare-fun lt!2200406 () Unit!154166)

(declare-fun choose!40654 (Regex!15161 Regex!15161 List!61783) Unit!154166)

(assert (=> d!1724654 (= lt!2200406 (choose!40654 (regOne!30834 r!7292) (regTwo!30834 r!7292) s!2326))))

(assert (=> d!1724654 (validRegex!6897 (regOne!30834 r!7292))))

(assert (=> d!1724654 (= (lemmaFindConcatSeparationEquivalentToExists!1450 (regOne!30834 r!7292) (regTwo!30834 r!7292) s!2326) lt!2200406)))

(declare-fun bs!1248042 () Bool)

(assert (= bs!1248042 d!1724654))

(declare-fun m!6423456 () Bool)

(assert (=> bs!1248042 m!6423456))

(assert (=> bs!1248042 m!6422818))

(assert (=> bs!1248042 m!6422820))

(assert (=> bs!1248042 m!6422818))

(assert (=> bs!1248042 m!6423310))

(declare-fun m!6423458 () Bool)

(assert (=> bs!1248042 m!6423458))

(assert (=> b!5397996 d!1724654))

(declare-fun d!1724658 () Bool)

(assert (=> d!1724658 (= (Exists!2342 lambda!280905) (choose!40650 lambda!280905))))

(declare-fun bs!1248043 () Bool)

(assert (= bs!1248043 d!1724658))

(declare-fun m!6423460 () Bool)

(assert (=> bs!1248043 m!6423460))

(assert (=> b!5397996 d!1724658))

(declare-fun bs!1248044 () Bool)

(declare-fun d!1724660 () Bool)

(assert (= bs!1248044 (and d!1724660 b!5397998)))

(declare-fun lambda!280971 () Int)

(assert (=> bs!1248044 (= lambda!280971 lambda!280909)))

(declare-fun bs!1248045 () Bool)

(assert (= bs!1248045 (and d!1724660 d!1724570)))

(assert (=> bs!1248045 (= lambda!280971 lambda!280939)))

(declare-fun bs!1248046 () Bool)

(assert (= bs!1248046 (and d!1724660 d!1724576)))

(assert (=> bs!1248046 (= lambda!280971 lambda!280943)))

(assert (=> d!1724660 (= (inv!81149 setElem!35117) (forall!14523 (exprs!5045 setElem!35117) lambda!280971))))

(declare-fun bs!1248047 () Bool)

(assert (= bs!1248047 d!1724660))

(declare-fun m!6423462 () Bool)

(assert (=> bs!1248047 m!6423462))

(assert (=> setNonEmpty!35117 d!1724660))

(declare-fun d!1724662 () Bool)

(declare-fun c!940880 () Bool)

(assert (=> d!1724662 (= c!940880 (isEmpty!33653 s!2326))))

(declare-fun e!3347447 () Bool)

(assert (=> d!1724662 (= (matchZipper!1405 z!1189 s!2326) e!3347447)))

(declare-fun b!5398597 () Bool)

(assert (=> b!5398597 (= e!3347447 (nullableZipper!1430 z!1189))))

(declare-fun b!5398598 () Bool)

(assert (=> b!5398598 (= e!3347447 (matchZipper!1405 (derivationStepZipper!1400 z!1189 (head!11578 s!2326)) (tail!10675 s!2326)))))

(assert (= (and d!1724662 c!940880) b!5398597))

(assert (= (and d!1724662 (not c!940880)) b!5398598))

(declare-fun m!6423464 () Bool)

(assert (=> d!1724662 m!6423464))

(declare-fun m!6423466 () Bool)

(assert (=> b!5398597 m!6423466))

(declare-fun m!6423468 () Bool)

(assert (=> b!5398598 m!6423468))

(assert (=> b!5398598 m!6423468))

(declare-fun m!6423470 () Bool)

(assert (=> b!5398598 m!6423470))

(declare-fun m!6423472 () Bool)

(assert (=> b!5398598 m!6423472))

(assert (=> b!5398598 m!6423470))

(assert (=> b!5398598 m!6423472))

(declare-fun m!6423474 () Bool)

(assert (=> b!5398598 m!6423474))

(assert (=> b!5398000 d!1724662))

(declare-fun d!1724664 () Bool)

(declare-fun choose!40655 ((InoxSet Context!9090) Int) (InoxSet Context!9090))

(assert (=> d!1724664 (= (flatMap!888 lt!2200271 lambda!280907) (choose!40655 lt!2200271 lambda!280907))))

(declare-fun bs!1248048 () Bool)

(assert (= bs!1248048 d!1724664))

(declare-fun m!6423476 () Bool)

(assert (=> bs!1248048 m!6423476))

(assert (=> b!5397999 d!1724664))

(declare-fun b!5398645 () Bool)

(declare-fun e!3347473 () Bool)

(assert (=> b!5398645 (= e!3347473 (nullable!5330 (h!68106 (exprs!5045 lt!2200260))))))

(declare-fun b!5398646 () Bool)

(declare-fun e!3347475 () (InoxSet Context!9090))

(declare-fun e!3347474 () (InoxSet Context!9090))

(assert (=> b!5398646 (= e!3347475 e!3347474)))

(declare-fun c!940885 () Bool)

(assert (=> b!5398646 (= c!940885 ((_ is Cons!61658) (exprs!5045 lt!2200260)))))

(declare-fun b!5398647 () Bool)

(declare-fun call!386340 () (InoxSet Context!9090))

(assert (=> b!5398647 (= e!3347474 call!386340)))

(declare-fun d!1724666 () Bool)

(declare-fun c!940886 () Bool)

(assert (=> d!1724666 (= c!940886 e!3347473)))

(declare-fun res!2294831 () Bool)

(assert (=> d!1724666 (=> (not res!2294831) (not e!3347473))))

(assert (=> d!1724666 (= res!2294831 ((_ is Cons!61658) (exprs!5045 lt!2200260)))))

(assert (=> d!1724666 (= (derivationStepZipperUp!533 lt!2200260 (h!68107 s!2326)) e!3347475)))

(declare-fun b!5398648 () Bool)

(assert (=> b!5398648 (= e!3347475 ((_ map or) call!386340 (derivationStepZipperUp!533 (Context!9091 (t!375005 (exprs!5045 lt!2200260))) (h!68107 s!2326))))))

(declare-fun bm!386335 () Bool)

(assert (=> bm!386335 (= call!386340 (derivationStepZipperDown!609 (h!68106 (exprs!5045 lt!2200260)) (Context!9091 (t!375005 (exprs!5045 lt!2200260))) (h!68107 s!2326)))))

(declare-fun b!5398649 () Bool)

(assert (=> b!5398649 (= e!3347474 ((as const (Array Context!9090 Bool)) false))))

(assert (= (and d!1724666 res!2294831) b!5398645))

(assert (= (and d!1724666 c!940886) b!5398648))

(assert (= (and d!1724666 (not c!940886)) b!5398646))

(assert (= (and b!5398646 c!940885) b!5398647))

(assert (= (and b!5398646 (not c!940885)) b!5398649))

(assert (= (or b!5398648 b!5398647) bm!386335))

(declare-fun m!6423486 () Bool)

(assert (=> b!5398645 m!6423486))

(declare-fun m!6423488 () Bool)

(assert (=> b!5398648 m!6423488))

(declare-fun m!6423490 () Bool)

(assert (=> bm!386335 m!6423490))

(assert (=> b!5397999 d!1724666))

(declare-fun d!1724678 () Bool)

(declare-fun dynLambda!24300 (Int Context!9090) (InoxSet Context!9090))

(assert (=> d!1724678 (= (flatMap!888 lt!2200271 lambda!280907) (dynLambda!24300 lambda!280907 lt!2200260))))

(declare-fun lt!2200410 () Unit!154166)

(declare-fun choose!40656 ((InoxSet Context!9090) Context!9090 Int) Unit!154166)

(assert (=> d!1724678 (= lt!2200410 (choose!40656 lt!2200271 lt!2200260 lambda!280907))))

(assert (=> d!1724678 (= lt!2200271 (store ((as const (Array Context!9090 Bool)) false) lt!2200260 true))))

(assert (=> d!1724678 (= (lemmaFlatMapOnSingletonSet!420 lt!2200271 lt!2200260 lambda!280907) lt!2200410)))

(declare-fun b_lambda!206411 () Bool)

(assert (=> (not b_lambda!206411) (not d!1724678)))

(declare-fun bs!1248054 () Bool)

(assert (= bs!1248054 d!1724678))

(assert (=> bs!1248054 m!6422854))

(declare-fun m!6423492 () Bool)

(assert (=> bs!1248054 m!6423492))

(declare-fun m!6423494 () Bool)

(assert (=> bs!1248054 m!6423494))

(assert (=> bs!1248054 m!6422856))

(assert (=> b!5397999 d!1724678))

(declare-fun bs!1248055 () Bool)

(declare-fun d!1724680 () Bool)

(assert (= bs!1248055 (and d!1724680 b!5398003)))

(declare-fun lambda!280974 () Int)

(assert (=> bs!1248055 (= lambda!280974 lambda!280907)))

(assert (=> d!1724680 true))

(assert (=> d!1724680 (= (derivationStepZipper!1400 lt!2200271 (h!68107 s!2326)) (flatMap!888 lt!2200271 lambda!280974))))

(declare-fun bs!1248056 () Bool)

(assert (= bs!1248056 d!1724680))

(declare-fun m!6423496 () Bool)

(assert (=> bs!1248056 m!6423496))

(assert (=> b!5397999 d!1724680))

(declare-fun d!1724682 () Bool)

(declare-fun c!940889 () Bool)

(assert (=> d!1724682 (= c!940889 (isEmpty!33653 (t!375006 s!2326)))))

(declare-fun e!3347476 () Bool)

(assert (=> d!1724682 (= (matchZipper!1405 lt!2200267 (t!375006 s!2326)) e!3347476)))

(declare-fun b!5398652 () Bool)

(assert (=> b!5398652 (= e!3347476 (nullableZipper!1430 lt!2200267))))

(declare-fun b!5398653 () Bool)

(assert (=> b!5398653 (= e!3347476 (matchZipper!1405 (derivationStepZipper!1400 lt!2200267 (head!11578 (t!375006 s!2326))) (tail!10675 (t!375006 s!2326))))))

(assert (= (and d!1724682 c!940889) b!5398652))

(assert (= (and d!1724682 (not c!940889)) b!5398653))

(assert (=> d!1724682 m!6423060))

(declare-fun m!6423498 () Bool)

(assert (=> b!5398652 m!6423498))

(assert (=> b!5398653 m!6423064))

(assert (=> b!5398653 m!6423064))

(declare-fun m!6423500 () Bool)

(assert (=> b!5398653 m!6423500))

(assert (=> b!5398653 m!6423068))

(assert (=> b!5398653 m!6423500))

(assert (=> b!5398653 m!6423068))

(declare-fun m!6423502 () Bool)

(assert (=> b!5398653 m!6423502))

(assert (=> b!5397979 d!1724682))

(declare-fun d!1724684 () Bool)

(assert (=> d!1724684 (= (flatMap!888 z!1189 lambda!280907) (dynLambda!24300 lambda!280907 (h!68108 zl!343)))))

(declare-fun lt!2200411 () Unit!154166)

(assert (=> d!1724684 (= lt!2200411 (choose!40656 z!1189 (h!68108 zl!343) lambda!280907))))

(assert (=> d!1724684 (= z!1189 (store ((as const (Array Context!9090 Bool)) false) (h!68108 zl!343) true))))

(assert (=> d!1724684 (= (lemmaFlatMapOnSingletonSet!420 z!1189 (h!68108 zl!343) lambda!280907) lt!2200411)))

(declare-fun b_lambda!206413 () Bool)

(assert (=> (not b_lambda!206413) (not d!1724684)))

(declare-fun bs!1248057 () Bool)

(assert (= bs!1248057 d!1724684))

(assert (=> bs!1248057 m!6422832))

(declare-fun m!6423504 () Bool)

(assert (=> bs!1248057 m!6423504))

(declare-fun m!6423506 () Bool)

(assert (=> bs!1248057 m!6423506))

(declare-fun m!6423508 () Bool)

(assert (=> bs!1248057 m!6423508))

(assert (=> b!5398003 d!1724684))

(declare-fun d!1724686 () Bool)

(assert (=> d!1724686 (= (nullable!5330 (h!68106 (exprs!5045 (h!68108 zl!343)))) (nullableFct!1582 (h!68106 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun bs!1248058 () Bool)

(assert (= bs!1248058 d!1724686))

(declare-fun m!6423510 () Bool)

(assert (=> bs!1248058 m!6423510))

(assert (=> b!5398003 d!1724686))

(declare-fun b!5398654 () Bool)

(declare-fun e!3347477 () Bool)

(assert (=> b!5398654 (= e!3347477 (nullable!5330 (h!68106 (exprs!5045 (Context!9091 (Cons!61658 (h!68106 (exprs!5045 (h!68108 zl!343))) (t!375005 (exprs!5045 (h!68108 zl!343)))))))))))

(declare-fun b!5398655 () Bool)

(declare-fun e!3347479 () (InoxSet Context!9090))

(declare-fun e!3347478 () (InoxSet Context!9090))

(assert (=> b!5398655 (= e!3347479 e!3347478)))

(declare-fun c!940890 () Bool)

(assert (=> b!5398655 (= c!940890 ((_ is Cons!61658) (exprs!5045 (Context!9091 (Cons!61658 (h!68106 (exprs!5045 (h!68108 zl!343))) (t!375005 (exprs!5045 (h!68108 zl!343))))))))))

(declare-fun b!5398656 () Bool)

(declare-fun call!386341 () (InoxSet Context!9090))

(assert (=> b!5398656 (= e!3347478 call!386341)))

(declare-fun d!1724688 () Bool)

(declare-fun c!940891 () Bool)

(assert (=> d!1724688 (= c!940891 e!3347477)))

(declare-fun res!2294832 () Bool)

(assert (=> d!1724688 (=> (not res!2294832) (not e!3347477))))

(assert (=> d!1724688 (= res!2294832 ((_ is Cons!61658) (exprs!5045 (Context!9091 (Cons!61658 (h!68106 (exprs!5045 (h!68108 zl!343))) (t!375005 (exprs!5045 (h!68108 zl!343))))))))))

(assert (=> d!1724688 (= (derivationStepZipperUp!533 (Context!9091 (Cons!61658 (h!68106 (exprs!5045 (h!68108 zl!343))) (t!375005 (exprs!5045 (h!68108 zl!343))))) (h!68107 s!2326)) e!3347479)))

(declare-fun b!5398657 () Bool)

(assert (=> b!5398657 (= e!3347479 ((_ map or) call!386341 (derivationStepZipperUp!533 (Context!9091 (t!375005 (exprs!5045 (Context!9091 (Cons!61658 (h!68106 (exprs!5045 (h!68108 zl!343))) (t!375005 (exprs!5045 (h!68108 zl!343)))))))) (h!68107 s!2326))))))

(declare-fun bm!386336 () Bool)

(assert (=> bm!386336 (= call!386341 (derivationStepZipperDown!609 (h!68106 (exprs!5045 (Context!9091 (Cons!61658 (h!68106 (exprs!5045 (h!68108 zl!343))) (t!375005 (exprs!5045 (h!68108 zl!343))))))) (Context!9091 (t!375005 (exprs!5045 (Context!9091 (Cons!61658 (h!68106 (exprs!5045 (h!68108 zl!343))) (t!375005 (exprs!5045 (h!68108 zl!343)))))))) (h!68107 s!2326)))))

(declare-fun b!5398658 () Bool)

(assert (=> b!5398658 (= e!3347478 ((as const (Array Context!9090 Bool)) false))))

(assert (= (and d!1724688 res!2294832) b!5398654))

(assert (= (and d!1724688 c!940891) b!5398657))

(assert (= (and d!1724688 (not c!940891)) b!5398655))

(assert (= (and b!5398655 c!940890) b!5398656))

(assert (= (and b!5398655 (not c!940890)) b!5398658))

(assert (= (or b!5398657 b!5398656) bm!386336))

(declare-fun m!6423512 () Bool)

(assert (=> b!5398654 m!6423512))

(declare-fun m!6423514 () Bool)

(assert (=> b!5398657 m!6423514))

(declare-fun m!6423516 () Bool)

(assert (=> bm!386336 m!6423516))

(assert (=> b!5398003 d!1724688))

(declare-fun b!5398659 () Bool)

(declare-fun e!3347480 () Bool)

(assert (=> b!5398659 (= e!3347480 (nullable!5330 (h!68106 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun b!5398660 () Bool)

(declare-fun e!3347482 () (InoxSet Context!9090))

(declare-fun e!3347481 () (InoxSet Context!9090))

(assert (=> b!5398660 (= e!3347482 e!3347481)))

(declare-fun c!940892 () Bool)

(assert (=> b!5398660 (= c!940892 ((_ is Cons!61658) (exprs!5045 (h!68108 zl!343))))))

(declare-fun b!5398661 () Bool)

(declare-fun call!386342 () (InoxSet Context!9090))

(assert (=> b!5398661 (= e!3347481 call!386342)))

(declare-fun d!1724690 () Bool)

(declare-fun c!940893 () Bool)

(assert (=> d!1724690 (= c!940893 e!3347480)))

(declare-fun res!2294833 () Bool)

(assert (=> d!1724690 (=> (not res!2294833) (not e!3347480))))

(assert (=> d!1724690 (= res!2294833 ((_ is Cons!61658) (exprs!5045 (h!68108 zl!343))))))

(assert (=> d!1724690 (= (derivationStepZipperUp!533 (h!68108 zl!343) (h!68107 s!2326)) e!3347482)))

(declare-fun b!5398662 () Bool)

(assert (=> b!5398662 (= e!3347482 ((_ map or) call!386342 (derivationStepZipperUp!533 (Context!9091 (t!375005 (exprs!5045 (h!68108 zl!343)))) (h!68107 s!2326))))))

(declare-fun bm!386337 () Bool)

(assert (=> bm!386337 (= call!386342 (derivationStepZipperDown!609 (h!68106 (exprs!5045 (h!68108 zl!343))) (Context!9091 (t!375005 (exprs!5045 (h!68108 zl!343)))) (h!68107 s!2326)))))

(declare-fun b!5398663 () Bool)

(assert (=> b!5398663 (= e!3347481 ((as const (Array Context!9090 Bool)) false))))

(assert (= (and d!1724690 res!2294833) b!5398659))

(assert (= (and d!1724690 c!940893) b!5398662))

(assert (= (and d!1724690 (not c!940893)) b!5398660))

(assert (= (and b!5398660 c!940892) b!5398661))

(assert (= (and b!5398660 (not c!940892)) b!5398663))

(assert (= (or b!5398662 b!5398661) bm!386337))

(assert (=> b!5398659 m!6422836))

(declare-fun m!6423518 () Bool)

(assert (=> b!5398662 m!6423518))

(declare-fun m!6423520 () Bool)

(assert (=> bm!386337 m!6423520))

(assert (=> b!5398003 d!1724690))

(declare-fun b!5398686 () Bool)

(declare-fun c!940906 () Bool)

(assert (=> b!5398686 (= c!940906 ((_ is Star!15161) (h!68106 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun e!3347496 () (InoxSet Context!9090))

(declare-fun e!3347499 () (InoxSet Context!9090))

(assert (=> b!5398686 (= e!3347496 e!3347499)))

(declare-fun bm!386350 () Bool)

(declare-fun call!386360 () (InoxSet Context!9090))

(declare-fun call!386359 () (InoxSet Context!9090))

(assert (=> bm!386350 (= call!386360 call!386359)))

(declare-fun bm!386351 () Bool)

(declare-fun call!386355 () List!61782)

(declare-fun c!940904 () Bool)

(declare-fun c!940907 () Bool)

(declare-fun c!940905 () Bool)

(declare-fun call!386358 () (InoxSet Context!9090))

(assert (=> bm!386351 (= call!386358 (derivationStepZipperDown!609 (ite c!940907 (regOne!30835 (h!68106 (exprs!5045 (h!68108 zl!343)))) (ite c!940905 (regTwo!30834 (h!68106 (exprs!5045 (h!68108 zl!343)))) (ite c!940904 (regOne!30834 (h!68106 (exprs!5045 (h!68108 zl!343)))) (reg!15490 (h!68106 (exprs!5045 (h!68108 zl!343))))))) (ite (or c!940907 c!940905) lt!2200278 (Context!9091 call!386355)) (h!68107 s!2326)))))

(declare-fun b!5398687 () Bool)

(assert (=> b!5398687 (= e!3347496 call!386360)))

(declare-fun b!5398688 () Bool)

(declare-fun e!3347500 () (InoxSet Context!9090))

(declare-fun e!3347495 () (InoxSet Context!9090))

(assert (=> b!5398688 (= e!3347500 e!3347495)))

(assert (=> b!5398688 (= c!940907 ((_ is Union!15161) (h!68106 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun bm!386352 () Bool)

(declare-fun call!386357 () List!61782)

(declare-fun $colon$colon!1480 (List!61782 Regex!15161) List!61782)

(assert (=> bm!386352 (= call!386357 ($colon$colon!1480 (exprs!5045 lt!2200278) (ite (or c!940905 c!940904) (regTwo!30834 (h!68106 (exprs!5045 (h!68108 zl!343)))) (h!68106 (exprs!5045 (h!68108 zl!343))))))))

(declare-fun b!5398689 () Bool)

(declare-fun e!3347498 () (InoxSet Context!9090))

(declare-fun call!386356 () (InoxSet Context!9090))

(assert (=> b!5398689 (= e!3347498 ((_ map or) call!386356 call!386359))))

(declare-fun bm!386353 () Bool)

(assert (=> bm!386353 (= call!386356 (derivationStepZipperDown!609 (ite c!940907 (regTwo!30835 (h!68106 (exprs!5045 (h!68108 zl!343)))) (regOne!30834 (h!68106 (exprs!5045 (h!68108 zl!343))))) (ite c!940907 lt!2200278 (Context!9091 call!386357)) (h!68107 s!2326)))))

(declare-fun b!5398690 () Bool)

(assert (=> b!5398690 (= e!3347498 e!3347496)))

(assert (=> b!5398690 (= c!940904 ((_ is Concat!24006) (h!68106 (exprs!5045 (h!68108 zl!343)))))))

(declare-fun bm!386354 () Bool)

(assert (=> bm!386354 (= call!386355 call!386357)))

(declare-fun b!5398691 () Bool)

(declare-fun e!3347497 () Bool)

(assert (=> b!5398691 (= e!3347497 (nullable!5330 (regOne!30834 (h!68106 (exprs!5045 (h!68108 zl!343))))))))

(declare-fun b!5398693 () Bool)

(assert (=> b!5398693 (= e!3347499 ((as const (Array Context!9090 Bool)) false))))

(declare-fun b!5398694 () Bool)

(assert (=> b!5398694 (= e!3347499 call!386360)))

(declare-fun b!5398695 () Bool)

(assert (=> b!5398695 (= c!940905 e!3347497)))

(declare-fun res!2294836 () Bool)

(assert (=> b!5398695 (=> (not res!2294836) (not e!3347497))))

(assert (=> b!5398695 (= res!2294836 ((_ is Concat!24006) (h!68106 (exprs!5045 (h!68108 zl!343)))))))

(assert (=> b!5398695 (= e!3347495 e!3347498)))

(declare-fun bm!386355 () Bool)

(assert (=> bm!386355 (= call!386359 call!386358)))

(declare-fun b!5398696 () Bool)

(assert (=> b!5398696 (= e!3347495 ((_ map or) call!386358 call!386356))))

(declare-fun b!5398692 () Bool)

(assert (=> b!5398692 (= e!3347500 (store ((as const (Array Context!9090 Bool)) false) lt!2200278 true))))

(declare-fun d!1724692 () Bool)

(declare-fun c!940908 () Bool)

(assert (=> d!1724692 (= c!940908 (and ((_ is ElementMatch!15161) (h!68106 (exprs!5045 (h!68108 zl!343)))) (= (c!940711 (h!68106 (exprs!5045 (h!68108 zl!343)))) (h!68107 s!2326))))))

(assert (=> d!1724692 (= (derivationStepZipperDown!609 (h!68106 (exprs!5045 (h!68108 zl!343))) lt!2200278 (h!68107 s!2326)) e!3347500)))

(assert (= (and d!1724692 c!940908) b!5398692))

(assert (= (and d!1724692 (not c!940908)) b!5398688))

(assert (= (and b!5398688 c!940907) b!5398696))

(assert (= (and b!5398688 (not c!940907)) b!5398695))

(assert (= (and b!5398695 res!2294836) b!5398691))

(assert (= (and b!5398695 c!940905) b!5398689))

(assert (= (and b!5398695 (not c!940905)) b!5398690))

(assert (= (and b!5398690 c!940904) b!5398687))

(assert (= (and b!5398690 (not c!940904)) b!5398686))

(assert (= (and b!5398686 c!940906) b!5398694))

(assert (= (and b!5398686 (not c!940906)) b!5398693))

(assert (= (or b!5398687 b!5398694) bm!386354))

(assert (= (or b!5398687 b!5398694) bm!386350))

(assert (= (or b!5398689 bm!386354) bm!386352))

(assert (= (or b!5398689 bm!386350) bm!386355))

(assert (= (or b!5398696 b!5398689) bm!386353))

(assert (= (or b!5398696 bm!386355) bm!386351))

(declare-fun m!6423522 () Bool)

(assert (=> bm!386352 m!6423522))

(declare-fun m!6423524 () Bool)

(assert (=> bm!386353 m!6423524))

(declare-fun m!6423526 () Bool)

(assert (=> bm!386351 m!6423526))

(declare-fun m!6423528 () Bool)

(assert (=> b!5398691 m!6423528))

(declare-fun m!6423530 () Bool)

(assert (=> b!5398692 m!6423530))

(assert (=> b!5398003 d!1724692))

(declare-fun d!1724694 () Bool)

(assert (=> d!1724694 (= (flatMap!888 z!1189 lambda!280907) (choose!40655 z!1189 lambda!280907))))

(declare-fun bs!1248059 () Bool)

(assert (= bs!1248059 d!1724694))

(declare-fun m!6423532 () Bool)

(assert (=> bs!1248059 m!6423532))

(assert (=> b!5398003 d!1724694))

(declare-fun b!5398697 () Bool)

(declare-fun e!3347501 () Bool)

(assert (=> b!5398697 (= e!3347501 (nullable!5330 (h!68106 (exprs!5045 lt!2200278))))))

(declare-fun b!5398698 () Bool)

(declare-fun e!3347503 () (InoxSet Context!9090))

(declare-fun e!3347502 () (InoxSet Context!9090))

(assert (=> b!5398698 (= e!3347503 e!3347502)))

(declare-fun c!940909 () Bool)

(assert (=> b!5398698 (= c!940909 ((_ is Cons!61658) (exprs!5045 lt!2200278)))))

(declare-fun b!5398699 () Bool)

(declare-fun call!386361 () (InoxSet Context!9090))

(assert (=> b!5398699 (= e!3347502 call!386361)))

(declare-fun d!1724696 () Bool)

(declare-fun c!940910 () Bool)

(assert (=> d!1724696 (= c!940910 e!3347501)))

(declare-fun res!2294837 () Bool)

(assert (=> d!1724696 (=> (not res!2294837) (not e!3347501))))

(assert (=> d!1724696 (= res!2294837 ((_ is Cons!61658) (exprs!5045 lt!2200278)))))

(assert (=> d!1724696 (= (derivationStepZipperUp!533 lt!2200278 (h!68107 s!2326)) e!3347503)))

(declare-fun b!5398700 () Bool)

(assert (=> b!5398700 (= e!3347503 ((_ map or) call!386361 (derivationStepZipperUp!533 (Context!9091 (t!375005 (exprs!5045 lt!2200278))) (h!68107 s!2326))))))

(declare-fun bm!386356 () Bool)

(assert (=> bm!386356 (= call!386361 (derivationStepZipperDown!609 (h!68106 (exprs!5045 lt!2200278)) (Context!9091 (t!375005 (exprs!5045 lt!2200278))) (h!68107 s!2326)))))

(declare-fun b!5398701 () Bool)

(assert (=> b!5398701 (= e!3347502 ((as const (Array Context!9090 Bool)) false))))

(assert (= (and d!1724696 res!2294837) b!5398697))

(assert (= (and d!1724696 c!940910) b!5398700))

(assert (= (and d!1724696 (not c!940910)) b!5398698))

(assert (= (and b!5398698 c!940909) b!5398699))

(assert (= (and b!5398698 (not c!940909)) b!5398701))

(assert (= (or b!5398700 b!5398699) bm!386356))

(declare-fun m!6423534 () Bool)

(assert (=> b!5398697 m!6423534))

(declare-fun m!6423536 () Bool)

(assert (=> b!5398700 m!6423536))

(declare-fun m!6423538 () Bool)

(assert (=> bm!386356 m!6423538))

(assert (=> b!5398003 d!1724696))

(declare-fun d!1724698 () Bool)

(declare-fun e!3347506 () Bool)

(assert (=> d!1724698 e!3347506))

(declare-fun res!2294840 () Bool)

(assert (=> d!1724698 (=> (not res!2294840) (not e!3347506))))

(declare-fun lt!2200414 () List!61784)

(declare-fun noDuplicate!1382 (List!61784) Bool)

(assert (=> d!1724698 (= res!2294840 (noDuplicate!1382 lt!2200414))))

(declare-fun choose!40657 ((InoxSet Context!9090)) List!61784)

(assert (=> d!1724698 (= lt!2200414 (choose!40657 z!1189))))

(assert (=> d!1724698 (= (toList!8945 z!1189) lt!2200414)))

(declare-fun b!5398704 () Bool)

(declare-fun content!11041 (List!61784) (InoxSet Context!9090))

(assert (=> b!5398704 (= e!3347506 (= (content!11041 lt!2200414) z!1189))))

(assert (= (and d!1724698 res!2294840) b!5398704))

(declare-fun m!6423540 () Bool)

(assert (=> d!1724698 m!6423540))

(declare-fun m!6423542 () Bool)

(assert (=> d!1724698 m!6423542))

(declare-fun m!6423544 () Bool)

(assert (=> b!5398704 m!6423544))

(assert (=> b!5397982 d!1724698))

(declare-fun bs!1248060 () Bool)

(declare-fun b!5398740 () Bool)

(assert (= bs!1248060 (and b!5398740 d!1724654)))

(declare-fun lambda!280979 () Int)

(assert (=> bs!1248060 (not (= lambda!280979 lambda!280970))))

(declare-fun bs!1248061 () Bool)

(assert (= bs!1248061 (and b!5398740 b!5397996)))

(assert (=> bs!1248061 (not (= lambda!280979 lambda!280906))))

(declare-fun bs!1248062 () Bool)

(assert (= bs!1248062 (and b!5398740 d!1724608)))

(assert (=> bs!1248062 (not (= lambda!280979 lambda!280961))))

(assert (=> bs!1248062 (not (= lambda!280979 lambda!280960))))

(assert (=> bs!1248061 (not (= lambda!280979 lambda!280905))))

(assert (=> b!5398740 true))

(assert (=> b!5398740 true))

(declare-fun bs!1248063 () Bool)

(declare-fun b!5398738 () Bool)

(assert (= bs!1248063 (and b!5398738 d!1724654)))

(declare-fun lambda!280980 () Int)

(assert (=> bs!1248063 (not (= lambda!280980 lambda!280970))))

(declare-fun bs!1248064 () Bool)

(assert (= bs!1248064 (and b!5398738 d!1724608)))

(assert (=> bs!1248064 (= lambda!280980 lambda!280961)))

(assert (=> bs!1248064 (not (= lambda!280980 lambda!280960))))

(declare-fun bs!1248065 () Bool)

(assert (= bs!1248065 (and b!5398738 b!5397996)))

(assert (=> bs!1248065 (not (= lambda!280980 lambda!280905))))

(declare-fun bs!1248066 () Bool)

(assert (= bs!1248066 (and b!5398738 b!5398740)))

(assert (=> bs!1248066 (not (= lambda!280980 lambda!280979))))

(assert (=> bs!1248065 (= lambda!280980 lambda!280906)))

(assert (=> b!5398738 true))

(assert (=> b!5398738 true))

(declare-fun b!5398737 () Bool)

(declare-fun c!940919 () Bool)

(assert (=> b!5398737 (= c!940919 ((_ is Union!15161) r!7292))))

(declare-fun e!3347525 () Bool)

(declare-fun e!3347530 () Bool)

(assert (=> b!5398737 (= e!3347525 e!3347530)))

(declare-fun e!3347526 () Bool)

(declare-fun call!386366 () Bool)

(assert (=> b!5398738 (= e!3347526 call!386366)))

(declare-fun b!5398739 () Bool)

(declare-fun e!3347528 () Bool)

(declare-fun call!386367 () Bool)

(assert (=> b!5398739 (= e!3347528 call!386367)))

(declare-fun e!3347531 () Bool)

(assert (=> b!5398740 (= e!3347531 call!386366)))

(declare-fun b!5398741 () Bool)

(assert (=> b!5398741 (= e!3347530 e!3347526)))

(declare-fun c!940922 () Bool)

(assert (=> b!5398741 (= c!940922 ((_ is Star!15161) r!7292))))

(declare-fun b!5398742 () Bool)

(declare-fun e!3347529 () Bool)

(assert (=> b!5398742 (= e!3347530 e!3347529)))

(declare-fun res!2294857 () Bool)

(assert (=> b!5398742 (= res!2294857 (matchRSpec!2264 (regOne!30835 r!7292) s!2326))))

(assert (=> b!5398742 (=> res!2294857 e!3347529)))

(declare-fun d!1724700 () Bool)

(declare-fun c!940920 () Bool)

(assert (=> d!1724700 (= c!940920 ((_ is EmptyExpr!15161) r!7292))))

(assert (=> d!1724700 (= (matchRSpec!2264 r!7292 s!2326) e!3347528)))

(declare-fun b!5398743 () Bool)

(declare-fun c!940921 () Bool)

(assert (=> b!5398743 (= c!940921 ((_ is ElementMatch!15161) r!7292))))

(declare-fun e!3347527 () Bool)

(assert (=> b!5398743 (= e!3347527 e!3347525)))

(declare-fun bm!386361 () Bool)

(assert (=> bm!386361 (= call!386366 (Exists!2342 (ite c!940922 lambda!280979 lambda!280980)))))

(declare-fun b!5398744 () Bool)

(assert (=> b!5398744 (= e!3347528 e!3347527)))

(declare-fun res!2294859 () Bool)

(assert (=> b!5398744 (= res!2294859 (not ((_ is EmptyLang!15161) r!7292)))))

(assert (=> b!5398744 (=> (not res!2294859) (not e!3347527))))

(declare-fun b!5398745 () Bool)

(declare-fun res!2294858 () Bool)

(assert (=> b!5398745 (=> res!2294858 e!3347531)))

(assert (=> b!5398745 (= res!2294858 call!386367)))

(assert (=> b!5398745 (= e!3347526 e!3347531)))

(declare-fun b!5398746 () Bool)

(assert (=> b!5398746 (= e!3347529 (matchRSpec!2264 (regTwo!30835 r!7292) s!2326))))

(declare-fun bm!386362 () Bool)

(assert (=> bm!386362 (= call!386367 (isEmpty!33653 s!2326))))

(declare-fun b!5398747 () Bool)

(assert (=> b!5398747 (= e!3347525 (= s!2326 (Cons!61659 (c!940711 r!7292) Nil!61659)))))

(assert (= (and d!1724700 c!940920) b!5398739))

(assert (= (and d!1724700 (not c!940920)) b!5398744))

(assert (= (and b!5398744 res!2294859) b!5398743))

(assert (= (and b!5398743 c!940921) b!5398747))

(assert (= (and b!5398743 (not c!940921)) b!5398737))

(assert (= (and b!5398737 c!940919) b!5398742))

(assert (= (and b!5398737 (not c!940919)) b!5398741))

(assert (= (and b!5398742 (not res!2294857)) b!5398746))

(assert (= (and b!5398741 c!940922) b!5398745))

(assert (= (and b!5398741 (not c!940922)) b!5398738))

(assert (= (and b!5398745 (not res!2294858)) b!5398740))

(assert (= (or b!5398740 b!5398738) bm!386361))

(assert (= (or b!5398739 b!5398745) bm!386362))

(declare-fun m!6423546 () Bool)

(assert (=> b!5398742 m!6423546))

(declare-fun m!6423548 () Bool)

(assert (=> bm!386361 m!6423548))

(declare-fun m!6423550 () Bool)

(assert (=> b!5398746 m!6423550))

(assert (=> bm!386362 m!6423464))

(assert (=> b!5398002 d!1724700))

(declare-fun b!5398776 () Bool)

(declare-fun e!3347546 () Bool)

(declare-fun derivativeStep!4251 (Regex!15161 C!30592) Regex!15161)

(assert (=> b!5398776 (= e!3347546 (matchR!7346 (derivativeStep!4251 r!7292 (head!11578 s!2326)) (tail!10675 s!2326)))))

(declare-fun b!5398777 () Bool)

(declare-fun res!2294876 () Bool)

(declare-fun e!3347550 () Bool)

(assert (=> b!5398777 (=> res!2294876 e!3347550)))

(assert (=> b!5398777 (= res!2294876 (not (isEmpty!33653 (tail!10675 s!2326))))))

(declare-fun b!5398778 () Bool)

(declare-fun e!3347548 () Bool)

(assert (=> b!5398778 (= e!3347548 e!3347550)))

(declare-fun res!2294879 () Bool)

(assert (=> b!5398778 (=> res!2294879 e!3347550)))

(declare-fun call!386370 () Bool)

(assert (=> b!5398778 (= res!2294879 call!386370)))

(declare-fun b!5398779 () Bool)

(declare-fun e!3347552 () Bool)

(declare-fun lt!2200417 () Bool)

(assert (=> b!5398779 (= e!3347552 (not lt!2200417))))

(declare-fun b!5398780 () Bool)

(assert (=> b!5398780 (= e!3347546 (nullable!5330 r!7292))))

(declare-fun b!5398781 () Bool)

(declare-fun res!2294883 () Bool)

(declare-fun e!3347547 () Bool)

(assert (=> b!5398781 (=> (not res!2294883) (not e!3347547))))

(assert (=> b!5398781 (= res!2294883 (not call!386370))))

(declare-fun b!5398782 () Bool)

(declare-fun e!3347551 () Bool)

(assert (=> b!5398782 (= e!3347551 e!3347552)))

(declare-fun c!940930 () Bool)

(assert (=> b!5398782 (= c!940930 ((_ is EmptyLang!15161) r!7292))))

(declare-fun b!5398783 () Bool)

(declare-fun res!2294881 () Bool)

(declare-fun e!3347549 () Bool)

(assert (=> b!5398783 (=> res!2294881 e!3347549)))

(assert (=> b!5398783 (= res!2294881 (not ((_ is ElementMatch!15161) r!7292)))))

(assert (=> b!5398783 (= e!3347552 e!3347549)))

(declare-fun b!5398784 () Bool)

(declare-fun res!2294877 () Bool)

(assert (=> b!5398784 (=> (not res!2294877) (not e!3347547))))

(assert (=> b!5398784 (= res!2294877 (isEmpty!33653 (tail!10675 s!2326)))))

(declare-fun d!1724702 () Bool)

(assert (=> d!1724702 e!3347551))

(declare-fun c!940929 () Bool)

(assert (=> d!1724702 (= c!940929 ((_ is EmptyExpr!15161) r!7292))))

(assert (=> d!1724702 (= lt!2200417 e!3347546)))

(declare-fun c!940931 () Bool)

(assert (=> d!1724702 (= c!940931 (isEmpty!33653 s!2326))))

(assert (=> d!1724702 (validRegex!6897 r!7292)))

(assert (=> d!1724702 (= (matchR!7346 r!7292 s!2326) lt!2200417)))

(declare-fun bm!386365 () Bool)

(assert (=> bm!386365 (= call!386370 (isEmpty!33653 s!2326))))

(declare-fun b!5398785 () Bool)

(assert (=> b!5398785 (= e!3347551 (= lt!2200417 call!386370))))

(declare-fun b!5398786 () Bool)

(declare-fun res!2294880 () Bool)

(assert (=> b!5398786 (=> res!2294880 e!3347549)))

(assert (=> b!5398786 (= res!2294880 e!3347547)))

(declare-fun res!2294882 () Bool)

(assert (=> b!5398786 (=> (not res!2294882) (not e!3347547))))

(assert (=> b!5398786 (= res!2294882 lt!2200417)))

(declare-fun b!5398787 () Bool)

(assert (=> b!5398787 (= e!3347550 (not (= (head!11578 s!2326) (c!940711 r!7292))))))

(declare-fun b!5398788 () Bool)

(assert (=> b!5398788 (= e!3347547 (= (head!11578 s!2326) (c!940711 r!7292)))))

(declare-fun b!5398789 () Bool)

(assert (=> b!5398789 (= e!3347549 e!3347548)))

(declare-fun res!2294878 () Bool)

(assert (=> b!5398789 (=> (not res!2294878) (not e!3347548))))

(assert (=> b!5398789 (= res!2294878 (not lt!2200417))))

(assert (= (and d!1724702 c!940931) b!5398780))

(assert (= (and d!1724702 (not c!940931)) b!5398776))

(assert (= (and d!1724702 c!940929) b!5398785))

(assert (= (and d!1724702 (not c!940929)) b!5398782))

(assert (= (and b!5398782 c!940930) b!5398779))

(assert (= (and b!5398782 (not c!940930)) b!5398783))

(assert (= (and b!5398783 (not res!2294881)) b!5398786))

(assert (= (and b!5398786 res!2294882) b!5398781))

(assert (= (and b!5398781 res!2294883) b!5398784))

(assert (= (and b!5398784 res!2294877) b!5398788))

(assert (= (and b!5398786 (not res!2294880)) b!5398789))

(assert (= (and b!5398789 res!2294878) b!5398778))

(assert (= (and b!5398778 (not res!2294879)) b!5398777))

(assert (= (and b!5398777 (not res!2294876)) b!5398787))

(assert (= (or b!5398785 b!5398778 b!5398781) bm!386365))

(assert (=> b!5398777 m!6423472))

(assert (=> b!5398777 m!6423472))

(declare-fun m!6423552 () Bool)

(assert (=> b!5398777 m!6423552))

(assert (=> b!5398788 m!6423468))

(declare-fun m!6423554 () Bool)

(assert (=> b!5398780 m!6423554))

(assert (=> d!1724702 m!6423464))

(assert (=> d!1724702 m!6422742))

(assert (=> b!5398784 m!6423472))

(assert (=> b!5398784 m!6423472))

(assert (=> b!5398784 m!6423552))

(assert (=> b!5398776 m!6423468))

(assert (=> b!5398776 m!6423468))

(declare-fun m!6423556 () Bool)

(assert (=> b!5398776 m!6423556))

(assert (=> b!5398776 m!6423472))

(assert (=> b!5398776 m!6423556))

(assert (=> b!5398776 m!6423472))

(declare-fun m!6423558 () Bool)

(assert (=> b!5398776 m!6423558))

(assert (=> b!5398787 m!6423468))

(assert (=> bm!386365 m!6423464))

(assert (=> b!5398002 d!1724702))

(declare-fun d!1724704 () Bool)

(assert (=> d!1724704 (= (matchR!7346 r!7292 s!2326) (matchRSpec!2264 r!7292 s!2326))))

(declare-fun lt!2200420 () Unit!154166)

(declare-fun choose!40659 (Regex!15161 List!61783) Unit!154166)

(assert (=> d!1724704 (= lt!2200420 (choose!40659 r!7292 s!2326))))

(assert (=> d!1724704 (validRegex!6897 r!7292)))

(assert (=> d!1724704 (= (mainMatchTheorem!2264 r!7292 s!2326) lt!2200420)))

(declare-fun bs!1248067 () Bool)

(assert (= bs!1248067 d!1724704))

(assert (=> bs!1248067 m!6422776))

(assert (=> bs!1248067 m!6422774))

(declare-fun m!6423560 () Bool)

(assert (=> bs!1248067 m!6423560))

(assert (=> bs!1248067 m!6422742))

(assert (=> b!5398002 d!1724704))

(declare-fun b!5398790 () Bool)

(declare-fun c!940934 () Bool)

(assert (=> b!5398790 (= c!940934 ((_ is Star!15161) (reg!15490 (regOne!30834 r!7292))))))

(declare-fun e!3347554 () (InoxSet Context!9090))

(declare-fun e!3347557 () (InoxSet Context!9090))

(assert (=> b!5398790 (= e!3347554 e!3347557)))

(declare-fun bm!386366 () Bool)

(declare-fun call!386376 () (InoxSet Context!9090))

(declare-fun call!386375 () (InoxSet Context!9090))

(assert (=> bm!386366 (= call!386376 call!386375)))

(declare-fun call!386374 () (InoxSet Context!9090))

(declare-fun bm!386367 () Bool)

(declare-fun call!386371 () List!61782)

(declare-fun c!940933 () Bool)

(declare-fun c!940935 () Bool)

(declare-fun c!940932 () Bool)

(assert (=> bm!386367 (= call!386374 (derivationStepZipperDown!609 (ite c!940935 (regOne!30835 (reg!15490 (regOne!30834 r!7292))) (ite c!940933 (regTwo!30834 (reg!15490 (regOne!30834 r!7292))) (ite c!940932 (regOne!30834 (reg!15490 (regOne!30834 r!7292))) (reg!15490 (reg!15490 (regOne!30834 r!7292)))))) (ite (or c!940935 c!940933) lt!2200273 (Context!9091 call!386371)) (h!68107 s!2326)))))

(declare-fun b!5398791 () Bool)

(assert (=> b!5398791 (= e!3347554 call!386376)))

(declare-fun b!5398792 () Bool)

(declare-fun e!3347558 () (InoxSet Context!9090))

(declare-fun e!3347553 () (InoxSet Context!9090))

(assert (=> b!5398792 (= e!3347558 e!3347553)))

(assert (=> b!5398792 (= c!940935 ((_ is Union!15161) (reg!15490 (regOne!30834 r!7292))))))

(declare-fun call!386373 () List!61782)

(declare-fun bm!386368 () Bool)

(assert (=> bm!386368 (= call!386373 ($colon$colon!1480 (exprs!5045 lt!2200273) (ite (or c!940933 c!940932) (regTwo!30834 (reg!15490 (regOne!30834 r!7292))) (reg!15490 (regOne!30834 r!7292)))))))

(declare-fun b!5398793 () Bool)

(declare-fun e!3347556 () (InoxSet Context!9090))

(declare-fun call!386372 () (InoxSet Context!9090))

(assert (=> b!5398793 (= e!3347556 ((_ map or) call!386372 call!386375))))

(declare-fun bm!386369 () Bool)

(assert (=> bm!386369 (= call!386372 (derivationStepZipperDown!609 (ite c!940935 (regTwo!30835 (reg!15490 (regOne!30834 r!7292))) (regOne!30834 (reg!15490 (regOne!30834 r!7292)))) (ite c!940935 lt!2200273 (Context!9091 call!386373)) (h!68107 s!2326)))))

(declare-fun b!5398794 () Bool)

(assert (=> b!5398794 (= e!3347556 e!3347554)))

(assert (=> b!5398794 (= c!940932 ((_ is Concat!24006) (reg!15490 (regOne!30834 r!7292))))))

(declare-fun bm!386370 () Bool)

(assert (=> bm!386370 (= call!386371 call!386373)))

(declare-fun b!5398795 () Bool)

(declare-fun e!3347555 () Bool)

(assert (=> b!5398795 (= e!3347555 (nullable!5330 (regOne!30834 (reg!15490 (regOne!30834 r!7292)))))))

(declare-fun b!5398797 () Bool)

(assert (=> b!5398797 (= e!3347557 ((as const (Array Context!9090 Bool)) false))))

(declare-fun b!5398798 () Bool)

(assert (=> b!5398798 (= e!3347557 call!386376)))

(declare-fun b!5398799 () Bool)

(assert (=> b!5398799 (= c!940933 e!3347555)))

(declare-fun res!2294884 () Bool)

(assert (=> b!5398799 (=> (not res!2294884) (not e!3347555))))

(assert (=> b!5398799 (= res!2294884 ((_ is Concat!24006) (reg!15490 (regOne!30834 r!7292))))))

(assert (=> b!5398799 (= e!3347553 e!3347556)))

(declare-fun bm!386371 () Bool)

(assert (=> bm!386371 (= call!386375 call!386374)))

(declare-fun b!5398800 () Bool)

(assert (=> b!5398800 (= e!3347553 ((_ map or) call!386374 call!386372))))

(declare-fun b!5398796 () Bool)

(assert (=> b!5398796 (= e!3347558 (store ((as const (Array Context!9090 Bool)) false) lt!2200273 true))))

(declare-fun d!1724706 () Bool)

(declare-fun c!940936 () Bool)

(assert (=> d!1724706 (= c!940936 (and ((_ is ElementMatch!15161) (reg!15490 (regOne!30834 r!7292))) (= (c!940711 (reg!15490 (regOne!30834 r!7292))) (h!68107 s!2326))))))

(assert (=> d!1724706 (= (derivationStepZipperDown!609 (reg!15490 (regOne!30834 r!7292)) lt!2200273 (h!68107 s!2326)) e!3347558)))

(assert (= (and d!1724706 c!940936) b!5398796))

(assert (= (and d!1724706 (not c!940936)) b!5398792))

(assert (= (and b!5398792 c!940935) b!5398800))

(assert (= (and b!5398792 (not c!940935)) b!5398799))

(assert (= (and b!5398799 res!2294884) b!5398795))

(assert (= (and b!5398799 c!940933) b!5398793))

(assert (= (and b!5398799 (not c!940933)) b!5398794))

(assert (= (and b!5398794 c!940932) b!5398791))

(assert (= (and b!5398794 (not c!940932)) b!5398790))

(assert (= (and b!5398790 c!940934) b!5398798))

(assert (= (and b!5398790 (not c!940934)) b!5398797))

(assert (= (or b!5398791 b!5398798) bm!386370))

(assert (= (or b!5398791 b!5398798) bm!386366))

(assert (= (or b!5398793 bm!386370) bm!386368))

(assert (= (or b!5398793 bm!386366) bm!386371))

(assert (= (or b!5398800 b!5398793) bm!386369))

(assert (= (or b!5398800 bm!386371) bm!386367))

(declare-fun m!6423562 () Bool)

(assert (=> bm!386368 m!6423562))

(declare-fun m!6423564 () Bool)

(assert (=> bm!386369 m!6423564))

(declare-fun m!6423566 () Bool)

(assert (=> bm!386367 m!6423566))

(declare-fun m!6423568 () Bool)

(assert (=> b!5398795 m!6423568))

(assert (=> b!5398796 m!6422792))

(assert (=> b!5397981 d!1724706))

(declare-fun d!1724708 () Bool)

(assert (=> d!1724708 (= (flatMap!888 lt!2200241 lambda!280907) (choose!40655 lt!2200241 lambda!280907))))

(declare-fun bs!1248068 () Bool)

(assert (= bs!1248068 d!1724708))

(declare-fun m!6423570 () Bool)

(assert (=> bs!1248068 m!6423570))

(assert (=> b!5398001 d!1724708))

(declare-fun b!5398801 () Bool)

(declare-fun e!3347559 () Bool)

(assert (=> b!5398801 (= e!3347559 (nullable!5330 (h!68106 (exprs!5045 lt!2200261))))))

(declare-fun b!5398802 () Bool)

(declare-fun e!3347561 () (InoxSet Context!9090))

(declare-fun e!3347560 () (InoxSet Context!9090))

(assert (=> b!5398802 (= e!3347561 e!3347560)))

(declare-fun c!940937 () Bool)

(assert (=> b!5398802 (= c!940937 ((_ is Cons!61658) (exprs!5045 lt!2200261)))))

(declare-fun b!5398803 () Bool)

(declare-fun call!386377 () (InoxSet Context!9090))

(assert (=> b!5398803 (= e!3347560 call!386377)))

(declare-fun d!1724710 () Bool)

(declare-fun c!940938 () Bool)

(assert (=> d!1724710 (= c!940938 e!3347559)))

(declare-fun res!2294885 () Bool)

(assert (=> d!1724710 (=> (not res!2294885) (not e!3347559))))

(assert (=> d!1724710 (= res!2294885 ((_ is Cons!61658) (exprs!5045 lt!2200261)))))

(assert (=> d!1724710 (= (derivationStepZipperUp!533 lt!2200261 (h!68107 s!2326)) e!3347561)))

(declare-fun b!5398804 () Bool)

(assert (=> b!5398804 (= e!3347561 ((_ map or) call!386377 (derivationStepZipperUp!533 (Context!9091 (t!375005 (exprs!5045 lt!2200261))) (h!68107 s!2326))))))

(declare-fun bm!386372 () Bool)

(assert (=> bm!386372 (= call!386377 (derivationStepZipperDown!609 (h!68106 (exprs!5045 lt!2200261)) (Context!9091 (t!375005 (exprs!5045 lt!2200261))) (h!68107 s!2326)))))

(declare-fun b!5398805 () Bool)

(assert (=> b!5398805 (= e!3347560 ((as const (Array Context!9090 Bool)) false))))

(assert (= (and d!1724710 res!2294885) b!5398801))

(assert (= (and d!1724710 c!940938) b!5398804))

(assert (= (and d!1724710 (not c!940938)) b!5398802))

(assert (= (and b!5398802 c!940937) b!5398803))

(assert (= (and b!5398802 (not c!940937)) b!5398805))

(assert (= (or b!5398804 b!5398803) bm!386372))

(declare-fun m!6423572 () Bool)

(assert (=> b!5398801 m!6423572))

(declare-fun m!6423574 () Bool)

(assert (=> b!5398804 m!6423574))

(declare-fun m!6423576 () Bool)

(assert (=> bm!386372 m!6423576))

(assert (=> b!5398001 d!1724710))

(declare-fun b!5398806 () Bool)

(declare-fun e!3347562 () Bool)

(assert (=> b!5398806 (= e!3347562 (nullable!5330 (h!68106 (exprs!5045 lt!2200273))))))

(declare-fun b!5398807 () Bool)

(declare-fun e!3347564 () (InoxSet Context!9090))

(declare-fun e!3347563 () (InoxSet Context!9090))

(assert (=> b!5398807 (= e!3347564 e!3347563)))

(declare-fun c!940939 () Bool)

(assert (=> b!5398807 (= c!940939 ((_ is Cons!61658) (exprs!5045 lt!2200273)))))

(declare-fun b!5398808 () Bool)

(declare-fun call!386378 () (InoxSet Context!9090))

(assert (=> b!5398808 (= e!3347563 call!386378)))

(declare-fun d!1724712 () Bool)

(declare-fun c!940940 () Bool)

(assert (=> d!1724712 (= c!940940 e!3347562)))

(declare-fun res!2294886 () Bool)

(assert (=> d!1724712 (=> (not res!2294886) (not e!3347562))))

(assert (=> d!1724712 (= res!2294886 ((_ is Cons!61658) (exprs!5045 lt!2200273)))))

(assert (=> d!1724712 (= (derivationStepZipperUp!533 lt!2200273 (h!68107 s!2326)) e!3347564)))

(declare-fun b!5398809 () Bool)

(assert (=> b!5398809 (= e!3347564 ((_ map or) call!386378 (derivationStepZipperUp!533 (Context!9091 (t!375005 (exprs!5045 lt!2200273))) (h!68107 s!2326))))))

(declare-fun bm!386373 () Bool)

(assert (=> bm!386373 (= call!386378 (derivationStepZipperDown!609 (h!68106 (exprs!5045 lt!2200273)) (Context!9091 (t!375005 (exprs!5045 lt!2200273))) (h!68107 s!2326)))))

(declare-fun b!5398810 () Bool)

(assert (=> b!5398810 (= e!3347563 ((as const (Array Context!9090 Bool)) false))))

(assert (= (and d!1724712 res!2294886) b!5398806))

(assert (= (and d!1724712 c!940940) b!5398809))

(assert (= (and d!1724712 (not c!940940)) b!5398807))

(assert (= (and b!5398807 c!940939) b!5398808))

(assert (= (and b!5398807 (not c!940939)) b!5398810))

(assert (= (or b!5398809 b!5398808) bm!386373))

(declare-fun m!6423578 () Bool)

(assert (=> b!5398806 m!6423578))

(declare-fun m!6423580 () Bool)

(assert (=> b!5398809 m!6423580))

(declare-fun m!6423582 () Bool)

(assert (=> bm!386373 m!6423582))

(assert (=> b!5398001 d!1724712))

(declare-fun d!1724714 () Bool)

(declare-fun lt!2200423 () Regex!15161)

(assert (=> d!1724714 (validRegex!6897 lt!2200423)))

(assert (=> d!1724714 (= lt!2200423 (generalisedUnion!1090 (unfocusZipperList!603 lt!2200282)))))

(assert (=> d!1724714 (= (unfocusZipper!903 lt!2200282) lt!2200423)))

(declare-fun bs!1248069 () Bool)

(assert (= bs!1248069 d!1724714))

(declare-fun m!6423584 () Bool)

(assert (=> bs!1248069 m!6423584))

(declare-fun m!6423586 () Bool)

(assert (=> bs!1248069 m!6423586))

(assert (=> bs!1248069 m!6423586))

(declare-fun m!6423588 () Bool)

(assert (=> bs!1248069 m!6423588))

(assert (=> b!5398001 d!1724714))

(declare-fun d!1724716 () Bool)

(assert (=> d!1724716 (= (flatMap!888 lt!2200241 lambda!280907) (dynLambda!24300 lambda!280907 lt!2200261))))

(declare-fun lt!2200424 () Unit!154166)

(assert (=> d!1724716 (= lt!2200424 (choose!40656 lt!2200241 lt!2200261 lambda!280907))))

(assert (=> d!1724716 (= lt!2200241 (store ((as const (Array Context!9090 Bool)) false) lt!2200261 true))))

(assert (=> d!1724716 (= (lemmaFlatMapOnSingletonSet!420 lt!2200241 lt!2200261 lambda!280907) lt!2200424)))

(declare-fun b_lambda!206415 () Bool)

(assert (=> (not b_lambda!206415) (not d!1724716)))

(declare-fun bs!1248070 () Bool)

(assert (= bs!1248070 d!1724716))

(assert (=> bs!1248070 m!6422784))

(declare-fun m!6423590 () Bool)

(assert (=> bs!1248070 m!6423590))

(declare-fun m!6423592 () Bool)

(assert (=> bs!1248070 m!6423592))

(assert (=> bs!1248070 m!6422788))

(assert (=> b!5398001 d!1724716))

(declare-fun d!1724718 () Bool)

(assert (=> d!1724718 (= (flatMap!888 lt!2200256 lambda!280907) (choose!40655 lt!2200256 lambda!280907))))

(declare-fun bs!1248071 () Bool)

(assert (= bs!1248071 d!1724718))

(declare-fun m!6423594 () Bool)

(assert (=> bs!1248071 m!6423594))

(assert (=> b!5398001 d!1724718))

(declare-fun d!1724720 () Bool)

(assert (=> d!1724720 (= (flatMap!888 lt!2200256 lambda!280907) (dynLambda!24300 lambda!280907 lt!2200273))))

(declare-fun lt!2200425 () Unit!154166)

(assert (=> d!1724720 (= lt!2200425 (choose!40656 lt!2200256 lt!2200273 lambda!280907))))

(assert (=> d!1724720 (= lt!2200256 (store ((as const (Array Context!9090 Bool)) false) lt!2200273 true))))

(assert (=> d!1724720 (= (lemmaFlatMapOnSingletonSet!420 lt!2200256 lt!2200273 lambda!280907) lt!2200425)))

(declare-fun b_lambda!206417 () Bool)

(assert (=> (not b_lambda!206417) (not d!1724720)))

(declare-fun bs!1248072 () Bool)

(assert (= bs!1248072 d!1724720))

(assert (=> bs!1248072 m!6422794))

(declare-fun m!6423596 () Bool)

(assert (=> bs!1248072 m!6423596))

(declare-fun m!6423598 () Bool)

(assert (=> bs!1248072 m!6423598))

(assert (=> bs!1248072 m!6422792))

(assert (=> b!5398001 d!1724720))

(assert (=> b!5398005 d!1724526))

(declare-fun d!1724722 () Bool)

(assert (=> d!1724722 (isDefined!11975 (findConcatSeparationZippers!18 lt!2200241 (store ((as const (Array Context!9090 Bool)) false) lt!2200273 true) Nil!61659 s!2326 s!2326))))

(declare-fun lt!2200428 () Unit!154166)

(declare-fun choose!40660 ((InoxSet Context!9090) Context!9090 List!61783) Unit!154166)

(assert (=> d!1724722 (= lt!2200428 (choose!40660 lt!2200241 lt!2200273 s!2326))))

(assert (=> d!1724722 (matchZipper!1405 (appendTo!20 lt!2200241 lt!2200273) s!2326)))

(assert (=> d!1724722 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!18 lt!2200241 lt!2200273 s!2326) lt!2200428)))

(declare-fun bs!1248073 () Bool)

(assert (= bs!1248073 d!1724722))

(declare-fun m!6423600 () Bool)

(assert (=> bs!1248073 m!6423600))

(assert (=> bs!1248073 m!6422792))

(declare-fun m!6423602 () Bool)

(assert (=> bs!1248073 m!6423602))

(assert (=> bs!1248073 m!6423602))

(declare-fun m!6423604 () Bool)

(assert (=> bs!1248073 m!6423604))

(assert (=> bs!1248073 m!6422878))

(assert (=> bs!1248073 m!6422792))

(assert (=> bs!1248073 m!6422878))

(declare-fun m!6423606 () Bool)

(assert (=> bs!1248073 m!6423606))

(assert (=> b!5397983 d!1724722))

(declare-fun d!1724724 () Bool)

(assert (=> d!1724724 (= (isDefined!11975 lt!2200247) (not (isEmpty!33654 lt!2200247)))))

(declare-fun bs!1248074 () Bool)

(assert (= bs!1248074 d!1724724))

(declare-fun m!6423608 () Bool)

(assert (=> bs!1248074 m!6423608))

(assert (=> b!5397983 d!1724724))

(declare-fun d!1724726 () Bool)

(declare-fun e!3347578 () Bool)

(assert (=> d!1724726 e!3347578))

(declare-fun res!2294897 () Bool)

(assert (=> d!1724726 (=> res!2294897 e!3347578)))

(declare-fun e!3347576 () Bool)

(assert (=> d!1724726 (= res!2294897 e!3347576)))

(declare-fun res!2294898 () Bool)

(assert (=> d!1724726 (=> (not res!2294898) (not e!3347576))))

(declare-fun lt!2200436 () Option!15272)

(assert (=> d!1724726 (= res!2294898 (isDefined!11975 lt!2200436))))

(declare-fun e!3347575 () Option!15272)

(assert (=> d!1724726 (= lt!2200436 e!3347575)))

(declare-fun c!940945 () Bool)

(declare-fun e!3347579 () Bool)

(assert (=> d!1724726 (= c!940945 e!3347579)))

(declare-fun res!2294901 () Bool)

(assert (=> d!1724726 (=> (not res!2294901) (not e!3347579))))

(assert (=> d!1724726 (= res!2294901 (matchZipper!1405 lt!2200241 Nil!61659))))

(assert (=> d!1724726 (= (++!13496 Nil!61659 s!2326) s!2326)))

(assert (=> d!1724726 (= (findConcatSeparationZippers!18 lt!2200241 lt!2200256 Nil!61659 s!2326 s!2326) lt!2200436)))

(declare-fun b!5398829 () Bool)

(assert (=> b!5398829 (= e!3347578 (not (isDefined!11975 lt!2200436)))))

(declare-fun b!5398830 () Bool)

(declare-fun e!3347577 () Option!15272)

(assert (=> b!5398830 (= e!3347577 None!15271)))

(declare-fun b!5398831 () Bool)

(declare-fun lt!2200435 () Unit!154166)

(declare-fun lt!2200437 () Unit!154166)

(assert (=> b!5398831 (= lt!2200435 lt!2200437)))

(assert (=> b!5398831 (= (++!13496 (++!13496 Nil!61659 (Cons!61659 (h!68107 s!2326) Nil!61659)) (t!375006 s!2326)) s!2326)))

(assert (=> b!5398831 (= lt!2200437 (lemmaMoveElementToOtherListKeepsConcatEq!1825 Nil!61659 (h!68107 s!2326) (t!375006 s!2326) s!2326))))

(assert (=> b!5398831 (= e!3347577 (findConcatSeparationZippers!18 lt!2200241 lt!2200256 (++!13496 Nil!61659 (Cons!61659 (h!68107 s!2326) Nil!61659)) (t!375006 s!2326) s!2326))))

(declare-fun b!5398832 () Bool)

(declare-fun res!2294899 () Bool)

(assert (=> b!5398832 (=> (not res!2294899) (not e!3347576))))

(assert (=> b!5398832 (= res!2294899 (matchZipper!1405 lt!2200241 (_1!35663 (get!21244 lt!2200436))))))

(declare-fun b!5398833 () Bool)

(assert (=> b!5398833 (= e!3347575 (Some!15271 (tuple2!64721 Nil!61659 s!2326)))))

(declare-fun b!5398834 () Bool)

(assert (=> b!5398834 (= e!3347575 e!3347577)))

(declare-fun c!940946 () Bool)

(assert (=> b!5398834 (= c!940946 ((_ is Nil!61659) s!2326))))

(declare-fun b!5398835 () Bool)

(assert (=> b!5398835 (= e!3347576 (= (++!13496 (_1!35663 (get!21244 lt!2200436)) (_2!35663 (get!21244 lt!2200436))) s!2326))))

(declare-fun b!5398836 () Bool)

(declare-fun res!2294900 () Bool)

(assert (=> b!5398836 (=> (not res!2294900) (not e!3347576))))

(assert (=> b!5398836 (= res!2294900 (matchZipper!1405 lt!2200256 (_2!35663 (get!21244 lt!2200436))))))

(declare-fun b!5398837 () Bool)

(assert (=> b!5398837 (= e!3347579 (matchZipper!1405 lt!2200256 s!2326))))

(assert (= (and d!1724726 res!2294901) b!5398837))

(assert (= (and d!1724726 c!940945) b!5398833))

(assert (= (and d!1724726 (not c!940945)) b!5398834))

(assert (= (and b!5398834 c!940946) b!5398830))

(assert (= (and b!5398834 (not c!940946)) b!5398831))

(assert (= (and d!1724726 res!2294898) b!5398832))

(assert (= (and b!5398832 res!2294899) b!5398836))

(assert (= (and b!5398836 res!2294900) b!5398835))

(assert (= (and d!1724726 (not res!2294897)) b!5398829))

(declare-fun m!6423610 () Bool)

(assert (=> b!5398835 m!6423610))

(declare-fun m!6423612 () Bool)

(assert (=> b!5398835 m!6423612))

(assert (=> b!5398836 m!6423610))

(declare-fun m!6423614 () Bool)

(assert (=> b!5398836 m!6423614))

(declare-fun m!6423616 () Bool)

(assert (=> d!1724726 m!6423616))

(declare-fun m!6423618 () Bool)

(assert (=> d!1724726 m!6423618))

(declare-fun m!6423620 () Bool)

(assert (=> d!1724726 m!6423620))

(assert (=> b!5398829 m!6423616))

(assert (=> b!5398831 m!6423312))

(assert (=> b!5398831 m!6423312))

(assert (=> b!5398831 m!6423314))

(assert (=> b!5398831 m!6423316))

(assert (=> b!5398831 m!6423312))

(declare-fun m!6423622 () Bool)

(assert (=> b!5398831 m!6423622))

(declare-fun m!6423624 () Bool)

(assert (=> b!5398837 m!6423624))

(assert (=> b!5398832 m!6423610))

(declare-fun m!6423626 () Bool)

(assert (=> b!5398832 m!6423626))

(assert (=> b!5397983 d!1724726))

(declare-fun d!1724728 () Bool)

(assert (=> d!1724728 (= (get!21244 lt!2200247) (v!51300 lt!2200247))))

(assert (=> b!5397983 d!1724728))

(declare-fun b!5398848 () Bool)

(declare-fun res!2294906 () Bool)

(declare-fun e!3347584 () Bool)

(assert (=> b!5398848 (=> (not res!2294906) (not e!3347584))))

(declare-fun lt!2200440 () List!61783)

(declare-fun size!39829 (List!61783) Int)

(assert (=> b!5398848 (= res!2294906 (= (size!39829 lt!2200440) (+ (size!39829 (_1!35663 lt!2200259)) (size!39829 (_2!35663 lt!2200259)))))))

(declare-fun d!1724730 () Bool)

(assert (=> d!1724730 e!3347584))

(declare-fun res!2294907 () Bool)

(assert (=> d!1724730 (=> (not res!2294907) (not e!3347584))))

(declare-fun content!11042 (List!61783) (InoxSet C!30592))

(assert (=> d!1724730 (= res!2294907 (= (content!11042 lt!2200440) ((_ map or) (content!11042 (_1!35663 lt!2200259)) (content!11042 (_2!35663 lt!2200259)))))))

(declare-fun e!3347585 () List!61783)

(assert (=> d!1724730 (= lt!2200440 e!3347585)))

(declare-fun c!940949 () Bool)

(assert (=> d!1724730 (= c!940949 ((_ is Nil!61659) (_1!35663 lt!2200259)))))

(assert (=> d!1724730 (= (++!13496 (_1!35663 lt!2200259) (_2!35663 lt!2200259)) lt!2200440)))

(declare-fun b!5398849 () Bool)

(assert (=> b!5398849 (= e!3347584 (or (not (= (_2!35663 lt!2200259) Nil!61659)) (= lt!2200440 (_1!35663 lt!2200259))))))

(declare-fun b!5398846 () Bool)

(assert (=> b!5398846 (= e!3347585 (_2!35663 lt!2200259))))

(declare-fun b!5398847 () Bool)

(assert (=> b!5398847 (= e!3347585 (Cons!61659 (h!68107 (_1!35663 lt!2200259)) (++!13496 (t!375006 (_1!35663 lt!2200259)) (_2!35663 lt!2200259))))))

(assert (= (and d!1724730 c!940949) b!5398846))

(assert (= (and d!1724730 (not c!940949)) b!5398847))

(assert (= (and d!1724730 res!2294907) b!5398848))

(assert (= (and b!5398848 res!2294906) b!5398849))

(declare-fun m!6423628 () Bool)

(assert (=> b!5398848 m!6423628))

(declare-fun m!6423630 () Bool)

(assert (=> b!5398848 m!6423630))

(declare-fun m!6423632 () Bool)

(assert (=> b!5398848 m!6423632))

(declare-fun m!6423634 () Bool)

(assert (=> d!1724730 m!6423634))

(declare-fun m!6423636 () Bool)

(assert (=> d!1724730 m!6423636))

(declare-fun m!6423638 () Bool)

(assert (=> d!1724730 m!6423638))

(declare-fun m!6423640 () Bool)

(assert (=> b!5398847 m!6423640))

(assert (=> b!5397983 d!1724730))

(declare-fun b!5398868 () Bool)

(declare-fun e!3347603 () Bool)

(declare-fun e!3347601 () Bool)

(assert (=> b!5398868 (= e!3347603 e!3347601)))

(declare-fun c!940954 () Bool)

(assert (=> b!5398868 (= c!940954 ((_ is Union!15161) r!7292))))

(declare-fun b!5398869 () Bool)

(declare-fun res!2294921 () Bool)

(declare-fun e!3347606 () Bool)

(assert (=> b!5398869 (=> res!2294921 e!3347606)))

(assert (=> b!5398869 (= res!2294921 (not ((_ is Concat!24006) r!7292)))))

(assert (=> b!5398869 (= e!3347601 e!3347606)))

(declare-fun b!5398870 () Bool)

(declare-fun e!3347605 () Bool)

(assert (=> b!5398870 (= e!3347606 e!3347605)))

(declare-fun res!2294919 () Bool)

(assert (=> b!5398870 (=> (not res!2294919) (not e!3347605))))

(declare-fun call!386386 () Bool)

(assert (=> b!5398870 (= res!2294919 call!386386)))

(declare-fun b!5398871 () Bool)

(declare-fun e!3347604 () Bool)

(assert (=> b!5398871 (= e!3347604 e!3347603)))

(declare-fun c!940955 () Bool)

(assert (=> b!5398871 (= c!940955 ((_ is Star!15161) r!7292))))

(declare-fun b!5398872 () Bool)

(declare-fun e!3347600 () Bool)

(declare-fun call!386385 () Bool)

(assert (=> b!5398872 (= e!3347600 call!386385)))

(declare-fun bm!386381 () Bool)

(declare-fun call!386387 () Bool)

(assert (=> bm!386381 (= call!386387 call!386385)))

(declare-fun b!5398873 () Bool)

(declare-fun res!2294920 () Bool)

(declare-fun e!3347602 () Bool)

(assert (=> b!5398873 (=> (not res!2294920) (not e!3347602))))

(assert (=> b!5398873 (= res!2294920 call!386386)))

(assert (=> b!5398873 (= e!3347601 e!3347602)))

(declare-fun b!5398874 () Bool)

(assert (=> b!5398874 (= e!3347602 call!386387)))

(declare-fun bm!386382 () Bool)

(assert (=> bm!386382 (= call!386386 (validRegex!6897 (ite c!940954 (regOne!30835 r!7292) (regOne!30834 r!7292))))))

(declare-fun b!5398875 () Bool)

(assert (=> b!5398875 (= e!3347603 e!3347600)))

(declare-fun res!2294922 () Bool)

(assert (=> b!5398875 (= res!2294922 (not (nullable!5330 (reg!15490 r!7292))))))

(assert (=> b!5398875 (=> (not res!2294922) (not e!3347600))))

(declare-fun b!5398876 () Bool)

(assert (=> b!5398876 (= e!3347605 call!386387)))

(declare-fun d!1724732 () Bool)

(declare-fun res!2294918 () Bool)

(assert (=> d!1724732 (=> res!2294918 e!3347604)))

(assert (=> d!1724732 (= res!2294918 ((_ is ElementMatch!15161) r!7292))))

(assert (=> d!1724732 (= (validRegex!6897 r!7292) e!3347604)))

(declare-fun bm!386380 () Bool)

(assert (=> bm!386380 (= call!386385 (validRegex!6897 (ite c!940955 (reg!15490 r!7292) (ite c!940954 (regTwo!30835 r!7292) (regTwo!30834 r!7292)))))))

(assert (= (and d!1724732 (not res!2294918)) b!5398871))

(assert (= (and b!5398871 c!940955) b!5398875))

(assert (= (and b!5398871 (not c!940955)) b!5398868))

(assert (= (and b!5398875 res!2294922) b!5398872))

(assert (= (and b!5398868 c!940954) b!5398873))

(assert (= (and b!5398868 (not c!940954)) b!5398869))

(assert (= (and b!5398873 res!2294920) b!5398874))

(assert (= (and b!5398869 (not res!2294921)) b!5398870))

(assert (= (and b!5398870 res!2294919) b!5398876))

(assert (= (or b!5398874 b!5398876) bm!386381))

(assert (= (or b!5398873 b!5398870) bm!386382))

(assert (= (or b!5398872 bm!386381) bm!386380))

(declare-fun m!6423642 () Bool)

(assert (=> bm!386382 m!6423642))

(declare-fun m!6423644 () Bool)

(assert (=> b!5398875 m!6423644))

(declare-fun m!6423646 () Bool)

(assert (=> bm!386380 m!6423646))

(assert (=> start!567006 d!1724732))

(declare-fun d!1724734 () Bool)

(declare-fun lt!2200441 () Regex!15161)

(assert (=> d!1724734 (validRegex!6897 lt!2200441)))

(assert (=> d!1724734 (= lt!2200441 (generalisedUnion!1090 (unfocusZipperList!603 (Cons!61660 lt!2200260 Nil!61660))))))

(assert (=> d!1724734 (= (unfocusZipper!903 (Cons!61660 lt!2200260 Nil!61660)) lt!2200441)))

(declare-fun bs!1248075 () Bool)

(assert (= bs!1248075 d!1724734))

(declare-fun m!6423648 () Bool)

(assert (=> bs!1248075 m!6423648))

(declare-fun m!6423650 () Bool)

(assert (=> bs!1248075 m!6423650))

(assert (=> bs!1248075 m!6423650))

(declare-fun m!6423652 () Bool)

(assert (=> bs!1248075 m!6423652))

(assert (=> b!5397987 d!1724734))

(declare-fun d!1724736 () Bool)

(declare-fun lt!2200442 () Regex!15161)

(assert (=> d!1724736 (validRegex!6897 lt!2200442)))

(assert (=> d!1724736 (= lt!2200442 (generalisedUnion!1090 (unfocusZipperList!603 lt!2200277)))))

(assert (=> d!1724736 (= (unfocusZipper!903 lt!2200277) lt!2200442)))

(declare-fun bs!1248076 () Bool)

(assert (= bs!1248076 d!1724736))

(declare-fun m!6423654 () Bool)

(assert (=> bs!1248076 m!6423654))

(declare-fun m!6423656 () Bool)

(assert (=> bs!1248076 m!6423656))

(assert (=> bs!1248076 m!6423656))

(declare-fun m!6423658 () Bool)

(assert (=> bs!1248076 m!6423658))

(assert (=> b!5398007 d!1724736))

(declare-fun d!1724738 () Bool)

(assert (=> d!1724738 (= (matchR!7346 (reg!15490 (regOne!30834 r!7292)) (_1!35663 lt!2200259)) (matchZipper!1405 lt!2200241 (_1!35663 lt!2200259)))))

(declare-fun lt!2200445 () Unit!154166)

(declare-fun choose!40661 ((InoxSet Context!9090) List!61784 Regex!15161 List!61783) Unit!154166)

(assert (=> d!1724738 (= lt!2200445 (choose!40661 lt!2200241 lt!2200282 (reg!15490 (regOne!30834 r!7292)) (_1!35663 lt!2200259)))))

(assert (=> d!1724738 (validRegex!6897 (reg!15490 (regOne!30834 r!7292)))))

(assert (=> d!1724738 (= (theoremZipperRegexEquiv!475 lt!2200241 lt!2200282 (reg!15490 (regOne!30834 r!7292)) (_1!35663 lt!2200259)) lt!2200445)))

(declare-fun bs!1248077 () Bool)

(assert (= bs!1248077 d!1724738))

(assert (=> bs!1248077 m!6422758))

(assert (=> bs!1248077 m!6422846))

(declare-fun m!6423660 () Bool)

(assert (=> bs!1248077 m!6423660))

(declare-fun m!6423662 () Bool)

(assert (=> bs!1248077 m!6423662))

(assert (=> b!5397970 d!1724738))

(declare-fun d!1724740 () Bool)

(assert (=> d!1724740 (matchR!7346 (Concat!24006 (reg!15490 (regOne!30834 r!7292)) lt!2200255) (++!13496 (_1!35663 lt!2200259) (_2!35663 lt!2200259)))))

(declare-fun lt!2200448 () Unit!154166)

(declare-fun choose!40662 (Regex!15161 Regex!15161 List!61783 List!61783) Unit!154166)

(assert (=> d!1724740 (= lt!2200448 (choose!40662 (reg!15490 (regOne!30834 r!7292)) lt!2200255 (_1!35663 lt!2200259) (_2!35663 lt!2200259)))))

(declare-fun e!3347609 () Bool)

(assert (=> d!1724740 e!3347609))

(declare-fun res!2294925 () Bool)

(assert (=> d!1724740 (=> (not res!2294925) (not e!3347609))))

(assert (=> d!1724740 (= res!2294925 (validRegex!6897 (reg!15490 (regOne!30834 r!7292))))))

(assert (=> d!1724740 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!184 (reg!15490 (regOne!30834 r!7292)) lt!2200255 (_1!35663 lt!2200259) (_2!35663 lt!2200259)) lt!2200448)))

(declare-fun b!5398879 () Bool)

(assert (=> b!5398879 (= e!3347609 (validRegex!6897 lt!2200255))))

(assert (= (and d!1724740 res!2294925) b!5398879))

(assert (=> d!1724740 m!6422872))

(assert (=> d!1724740 m!6422872))

(declare-fun m!6423664 () Bool)

(assert (=> d!1724740 m!6423664))

(declare-fun m!6423666 () Bool)

(assert (=> d!1724740 m!6423666))

(assert (=> d!1724740 m!6423662))

(declare-fun m!6423668 () Bool)

(assert (=> b!5398879 m!6423668))

(assert (=> b!5397970 d!1724740))

(declare-fun b!5398880 () Bool)

(declare-fun e!3347610 () Bool)

(assert (=> b!5398880 (= e!3347610 (matchR!7346 (derivativeStep!4251 lt!2200266 (head!11578 lt!2200270)) (tail!10675 lt!2200270)))))

(declare-fun b!5398881 () Bool)

(declare-fun res!2294926 () Bool)

(declare-fun e!3347614 () Bool)

(assert (=> b!5398881 (=> res!2294926 e!3347614)))

(assert (=> b!5398881 (= res!2294926 (not (isEmpty!33653 (tail!10675 lt!2200270))))))

(declare-fun b!5398882 () Bool)

(declare-fun e!3347612 () Bool)

(assert (=> b!5398882 (= e!3347612 e!3347614)))

(declare-fun res!2294929 () Bool)

(assert (=> b!5398882 (=> res!2294929 e!3347614)))

(declare-fun call!386388 () Bool)

(assert (=> b!5398882 (= res!2294929 call!386388)))

(declare-fun b!5398883 () Bool)

(declare-fun e!3347616 () Bool)

(declare-fun lt!2200449 () Bool)

(assert (=> b!5398883 (= e!3347616 (not lt!2200449))))

(declare-fun b!5398884 () Bool)

(assert (=> b!5398884 (= e!3347610 (nullable!5330 lt!2200266))))

(declare-fun b!5398885 () Bool)

(declare-fun res!2294933 () Bool)

(declare-fun e!3347611 () Bool)

(assert (=> b!5398885 (=> (not res!2294933) (not e!3347611))))

(assert (=> b!5398885 (= res!2294933 (not call!386388))))

(declare-fun b!5398886 () Bool)

(declare-fun e!3347615 () Bool)

(assert (=> b!5398886 (= e!3347615 e!3347616)))

(declare-fun c!940957 () Bool)

(assert (=> b!5398886 (= c!940957 ((_ is EmptyLang!15161) lt!2200266))))

(declare-fun b!5398887 () Bool)

(declare-fun res!2294931 () Bool)

(declare-fun e!3347613 () Bool)

(assert (=> b!5398887 (=> res!2294931 e!3347613)))

(assert (=> b!5398887 (= res!2294931 (not ((_ is ElementMatch!15161) lt!2200266)))))

(assert (=> b!5398887 (= e!3347616 e!3347613)))

(declare-fun b!5398888 () Bool)

(declare-fun res!2294927 () Bool)

(assert (=> b!5398888 (=> (not res!2294927) (not e!3347611))))

(assert (=> b!5398888 (= res!2294927 (isEmpty!33653 (tail!10675 lt!2200270)))))

(declare-fun d!1724742 () Bool)

(assert (=> d!1724742 e!3347615))

(declare-fun c!940956 () Bool)

(assert (=> d!1724742 (= c!940956 ((_ is EmptyExpr!15161) lt!2200266))))

(assert (=> d!1724742 (= lt!2200449 e!3347610)))

(declare-fun c!940958 () Bool)

(assert (=> d!1724742 (= c!940958 (isEmpty!33653 lt!2200270))))

(assert (=> d!1724742 (validRegex!6897 lt!2200266)))

(assert (=> d!1724742 (= (matchR!7346 lt!2200266 lt!2200270) lt!2200449)))

(declare-fun bm!386383 () Bool)

(assert (=> bm!386383 (= call!386388 (isEmpty!33653 lt!2200270))))

(declare-fun b!5398889 () Bool)

(assert (=> b!5398889 (= e!3347615 (= lt!2200449 call!386388))))

(declare-fun b!5398890 () Bool)

(declare-fun res!2294930 () Bool)

(assert (=> b!5398890 (=> res!2294930 e!3347613)))

(assert (=> b!5398890 (= res!2294930 e!3347611)))

(declare-fun res!2294932 () Bool)

(assert (=> b!5398890 (=> (not res!2294932) (not e!3347611))))

(assert (=> b!5398890 (= res!2294932 lt!2200449)))

(declare-fun b!5398891 () Bool)

(assert (=> b!5398891 (= e!3347614 (not (= (head!11578 lt!2200270) (c!940711 lt!2200266))))))

(declare-fun b!5398892 () Bool)

(assert (=> b!5398892 (= e!3347611 (= (head!11578 lt!2200270) (c!940711 lt!2200266)))))

(declare-fun b!5398893 () Bool)

(assert (=> b!5398893 (= e!3347613 e!3347612)))

(declare-fun res!2294928 () Bool)

(assert (=> b!5398893 (=> (not res!2294928) (not e!3347612))))

(assert (=> b!5398893 (= res!2294928 (not lt!2200449))))

(assert (= (and d!1724742 c!940958) b!5398884))

(assert (= (and d!1724742 (not c!940958)) b!5398880))

(assert (= (and d!1724742 c!940956) b!5398889))

(assert (= (and d!1724742 (not c!940956)) b!5398886))

(assert (= (and b!5398886 c!940957) b!5398883))

(assert (= (and b!5398886 (not c!940957)) b!5398887))

(assert (= (and b!5398887 (not res!2294931)) b!5398890))

(assert (= (and b!5398890 res!2294932) b!5398885))

(assert (= (and b!5398885 res!2294933) b!5398888))

(assert (= (and b!5398888 res!2294927) b!5398892))

(assert (= (and b!5398890 (not res!2294930)) b!5398893))

(assert (= (and b!5398893 res!2294928) b!5398882))

(assert (= (and b!5398882 (not res!2294929)) b!5398881))

(assert (= (and b!5398881 (not res!2294926)) b!5398891))

(assert (= (or b!5398889 b!5398882 b!5398885) bm!386383))

(declare-fun m!6423670 () Bool)

(assert (=> b!5398881 m!6423670))

(assert (=> b!5398881 m!6423670))

(declare-fun m!6423672 () Bool)

(assert (=> b!5398881 m!6423672))

(declare-fun m!6423674 () Bool)

(assert (=> b!5398892 m!6423674))

(declare-fun m!6423676 () Bool)

(assert (=> b!5398884 m!6423676))

(declare-fun m!6423678 () Bool)

(assert (=> d!1724742 m!6423678))

(assert (=> d!1724742 m!6422762))

(assert (=> b!5398888 m!6423670))

(assert (=> b!5398888 m!6423670))

(assert (=> b!5398888 m!6423672))

(assert (=> b!5398880 m!6423674))

(assert (=> b!5398880 m!6423674))

(declare-fun m!6423680 () Bool)

(assert (=> b!5398880 m!6423680))

(assert (=> b!5398880 m!6423670))

(assert (=> b!5398880 m!6423680))

(assert (=> b!5398880 m!6423670))

(declare-fun m!6423682 () Bool)

(assert (=> b!5398880 m!6423682))

(assert (=> b!5398891 m!6423674))

(assert (=> bm!386383 m!6423678))

(assert (=> b!5397970 d!1724742))

(declare-fun bs!1248078 () Bool)

(declare-fun d!1724744 () Bool)

(assert (= bs!1248078 (and d!1724744 b!5397998)))

(declare-fun lambda!280983 () Int)

(assert (=> bs!1248078 (= lambda!280983 lambda!280909)))

(declare-fun bs!1248079 () Bool)

(assert (= bs!1248079 (and d!1724744 d!1724570)))

(assert (=> bs!1248079 (= lambda!280983 lambda!280939)))

(declare-fun bs!1248080 () Bool)

(assert (= bs!1248080 (and d!1724744 d!1724576)))

(assert (=> bs!1248080 (= lambda!280983 lambda!280943)))

(declare-fun bs!1248081 () Bool)

(assert (= bs!1248081 (and d!1724744 d!1724660)))

(assert (=> bs!1248081 (= lambda!280983 lambda!280971)))

(assert (=> d!1724744 (matchZipper!1405 (store ((as const (Array Context!9090 Bool)) false) (Context!9091 (++!13495 (exprs!5045 lt!2200261) (exprs!5045 lt!2200273))) true) (++!13496 (_1!35663 lt!2200259) (_2!35663 lt!2200259)))))

(declare-fun lt!2200455 () Unit!154166)

(assert (=> d!1724744 (= lt!2200455 (lemmaConcatPreservesForall!186 (exprs!5045 lt!2200261) (exprs!5045 lt!2200273) lambda!280983))))

(declare-fun lt!2200454 () Unit!154166)

(declare-fun choose!40663 (Context!9090 Context!9090 List!61783 List!61783) Unit!154166)

(assert (=> d!1724744 (= lt!2200454 (choose!40663 lt!2200261 lt!2200273 (_1!35663 lt!2200259) (_2!35663 lt!2200259)))))

(assert (=> d!1724744 (matchZipper!1405 (store ((as const (Array Context!9090 Bool)) false) lt!2200261 true) (_1!35663 lt!2200259))))

(assert (=> d!1724744 (= (lemmaConcatenateContextMatchesConcatOfStrings!34 lt!2200261 lt!2200273 (_1!35663 lt!2200259) (_2!35663 lt!2200259)) lt!2200454)))

(declare-fun bs!1248082 () Bool)

(assert (= bs!1248082 d!1724744))

(declare-fun m!6423684 () Bool)

(assert (=> bs!1248082 m!6423684))

(declare-fun m!6423686 () Bool)

(assert (=> bs!1248082 m!6423686))

(assert (=> bs!1248082 m!6423684))

(assert (=> bs!1248082 m!6422872))

(declare-fun m!6423688 () Bool)

(assert (=> bs!1248082 m!6423688))

(declare-fun m!6423690 () Bool)

(assert (=> bs!1248082 m!6423690))

(declare-fun m!6423692 () Bool)

(assert (=> bs!1248082 m!6423692))

(assert (=> bs!1248082 m!6422788))

(declare-fun m!6423694 () Bool)

(assert (=> bs!1248082 m!6423694))

(assert (=> bs!1248082 m!6422788))

(assert (=> bs!1248082 m!6422872))

(assert (=> b!5397970 d!1724744))

(declare-fun b!5398894 () Bool)

(declare-fun e!3347617 () Bool)

(assert (=> b!5398894 (= e!3347617 (matchR!7346 (derivativeStep!4251 (reg!15490 (regOne!30834 r!7292)) (head!11578 (_1!35663 lt!2200259))) (tail!10675 (_1!35663 lt!2200259))))))

(declare-fun b!5398895 () Bool)

(declare-fun res!2294934 () Bool)

(declare-fun e!3347621 () Bool)

(assert (=> b!5398895 (=> res!2294934 e!3347621)))

(assert (=> b!5398895 (= res!2294934 (not (isEmpty!33653 (tail!10675 (_1!35663 lt!2200259)))))))

(declare-fun b!5398896 () Bool)

(declare-fun e!3347619 () Bool)

(assert (=> b!5398896 (= e!3347619 e!3347621)))

(declare-fun res!2294937 () Bool)

(assert (=> b!5398896 (=> res!2294937 e!3347621)))

(declare-fun call!386389 () Bool)

(assert (=> b!5398896 (= res!2294937 call!386389)))

(declare-fun b!5398897 () Bool)

(declare-fun e!3347623 () Bool)

(declare-fun lt!2200456 () Bool)

(assert (=> b!5398897 (= e!3347623 (not lt!2200456))))

(declare-fun b!5398898 () Bool)

(assert (=> b!5398898 (= e!3347617 (nullable!5330 (reg!15490 (regOne!30834 r!7292))))))

(declare-fun b!5398899 () Bool)

(declare-fun res!2294941 () Bool)

(declare-fun e!3347618 () Bool)

(assert (=> b!5398899 (=> (not res!2294941) (not e!3347618))))

(assert (=> b!5398899 (= res!2294941 (not call!386389))))

(declare-fun b!5398900 () Bool)

(declare-fun e!3347622 () Bool)

(assert (=> b!5398900 (= e!3347622 e!3347623)))

(declare-fun c!940960 () Bool)

(assert (=> b!5398900 (= c!940960 ((_ is EmptyLang!15161) (reg!15490 (regOne!30834 r!7292))))))

(declare-fun b!5398901 () Bool)

(declare-fun res!2294939 () Bool)

(declare-fun e!3347620 () Bool)

(assert (=> b!5398901 (=> res!2294939 e!3347620)))

(assert (=> b!5398901 (= res!2294939 (not ((_ is ElementMatch!15161) (reg!15490 (regOne!30834 r!7292)))))))

(assert (=> b!5398901 (= e!3347623 e!3347620)))

(declare-fun b!5398902 () Bool)

(declare-fun res!2294935 () Bool)

(assert (=> b!5398902 (=> (not res!2294935) (not e!3347618))))

(assert (=> b!5398902 (= res!2294935 (isEmpty!33653 (tail!10675 (_1!35663 lt!2200259))))))

(declare-fun d!1724746 () Bool)

(assert (=> d!1724746 e!3347622))

(declare-fun c!940959 () Bool)

(assert (=> d!1724746 (= c!940959 ((_ is EmptyExpr!15161) (reg!15490 (regOne!30834 r!7292))))))

(assert (=> d!1724746 (= lt!2200456 e!3347617)))

(declare-fun c!940961 () Bool)

(assert (=> d!1724746 (= c!940961 (isEmpty!33653 (_1!35663 lt!2200259)))))

(assert (=> d!1724746 (validRegex!6897 (reg!15490 (regOne!30834 r!7292)))))

(assert (=> d!1724746 (= (matchR!7346 (reg!15490 (regOne!30834 r!7292)) (_1!35663 lt!2200259)) lt!2200456)))

(declare-fun bm!386384 () Bool)

(assert (=> bm!386384 (= call!386389 (isEmpty!33653 (_1!35663 lt!2200259)))))

(declare-fun b!5398903 () Bool)

(assert (=> b!5398903 (= e!3347622 (= lt!2200456 call!386389))))

(declare-fun b!5398904 () Bool)

(declare-fun res!2294938 () Bool)

(assert (=> b!5398904 (=> res!2294938 e!3347620)))

(assert (=> b!5398904 (= res!2294938 e!3347618)))

(declare-fun res!2294940 () Bool)

(assert (=> b!5398904 (=> (not res!2294940) (not e!3347618))))

(assert (=> b!5398904 (= res!2294940 lt!2200456)))

(declare-fun b!5398905 () Bool)

(assert (=> b!5398905 (= e!3347621 (not (= (head!11578 (_1!35663 lt!2200259)) (c!940711 (reg!15490 (regOne!30834 r!7292))))))))

(declare-fun b!5398906 () Bool)

(assert (=> b!5398906 (= e!3347618 (= (head!11578 (_1!35663 lt!2200259)) (c!940711 (reg!15490 (regOne!30834 r!7292)))))))

(declare-fun b!5398907 () Bool)

(assert (=> b!5398907 (= e!3347620 e!3347619)))

(declare-fun res!2294936 () Bool)

(assert (=> b!5398907 (=> (not res!2294936) (not e!3347619))))

(assert (=> b!5398907 (= res!2294936 (not lt!2200456))))

(assert (= (and d!1724746 c!940961) b!5398898))

(assert (= (and d!1724746 (not c!940961)) b!5398894))

(assert (= (and d!1724746 c!940959) b!5398903))

(assert (= (and d!1724746 (not c!940959)) b!5398900))

(assert (= (and b!5398900 c!940960) b!5398897))

(assert (= (and b!5398900 (not c!940960)) b!5398901))

(assert (= (and b!5398901 (not res!2294939)) b!5398904))

(assert (= (and b!5398904 res!2294940) b!5398899))

(assert (= (and b!5398899 res!2294941) b!5398902))

(assert (= (and b!5398902 res!2294935) b!5398906))

(assert (= (and b!5398904 (not res!2294938)) b!5398907))

(assert (= (and b!5398907 res!2294936) b!5398896))

(assert (= (and b!5398896 (not res!2294937)) b!5398895))

(assert (= (and b!5398895 (not res!2294934)) b!5398905))

(assert (= (or b!5398903 b!5398896 b!5398899) bm!386384))

(assert (=> b!5398895 m!6423094))

(assert (=> b!5398895 m!6423094))

(declare-fun m!6423696 () Bool)

(assert (=> b!5398895 m!6423696))

(assert (=> b!5398906 m!6423090))

(declare-fun m!6423698 () Bool)

(assert (=> b!5398898 m!6423698))

(assert (=> d!1724746 m!6423086))

(assert (=> d!1724746 m!6423662))

(assert (=> b!5398902 m!6423094))

(assert (=> b!5398902 m!6423094))

(assert (=> b!5398902 m!6423696))

(assert (=> b!5398894 m!6423090))

(assert (=> b!5398894 m!6423090))

(declare-fun m!6423700 () Bool)

(assert (=> b!5398894 m!6423700))

(assert (=> b!5398894 m!6423094))

(assert (=> b!5398894 m!6423700))

(assert (=> b!5398894 m!6423094))

(declare-fun m!6423702 () Bool)

(assert (=> b!5398894 m!6423702))

(assert (=> b!5398905 m!6423090))

(assert (=> bm!386384 m!6423086))

(assert (=> b!5397970 d!1724746))

(assert (=> b!5397970 d!1724562))

(assert (=> b!5397970 d!1724564))

(declare-fun d!1724748 () Bool)

(declare-fun c!940962 () Bool)

(assert (=> d!1724748 (= c!940962 (isEmpty!33653 lt!2200270))))

(declare-fun e!3347624 () Bool)

(assert (=> d!1724748 (= (matchZipper!1405 (store ((as const (Array Context!9090 Bool)) false) (Context!9091 (++!13495 lt!2200281 lt!2200242)) true) lt!2200270) e!3347624)))

(declare-fun b!5398908 () Bool)

(assert (=> b!5398908 (= e!3347624 (nullableZipper!1430 (store ((as const (Array Context!9090 Bool)) false) (Context!9091 (++!13495 lt!2200281 lt!2200242)) true)))))

(declare-fun b!5398909 () Bool)

(assert (=> b!5398909 (= e!3347624 (matchZipper!1405 (derivationStepZipper!1400 (store ((as const (Array Context!9090 Bool)) false) (Context!9091 (++!13495 lt!2200281 lt!2200242)) true) (head!11578 lt!2200270)) (tail!10675 lt!2200270)))))

(assert (= (and d!1724748 c!940962) b!5398908))

(assert (= (and d!1724748 (not c!940962)) b!5398909))

(assert (=> d!1724748 m!6423678))

(assert (=> b!5398908 m!6422752))

(declare-fun m!6423704 () Bool)

(assert (=> b!5398908 m!6423704))

(assert (=> b!5398909 m!6423674))

(assert (=> b!5398909 m!6422752))

(assert (=> b!5398909 m!6423674))

(declare-fun m!6423706 () Bool)

(assert (=> b!5398909 m!6423706))

(assert (=> b!5398909 m!6423670))

(assert (=> b!5398909 m!6423706))

(assert (=> b!5398909 m!6423670))

(declare-fun m!6423708 () Bool)

(assert (=> b!5398909 m!6423708))

(assert (=> b!5397970 d!1724748))

(declare-fun b!5398910 () Bool)

(declare-fun e!3347628 () Bool)

(declare-fun e!3347626 () Bool)

(assert (=> b!5398910 (= e!3347628 e!3347626)))

(declare-fun c!940963 () Bool)

(assert (=> b!5398910 (= c!940963 ((_ is Union!15161) lt!2200266))))

(declare-fun b!5398911 () Bool)

(declare-fun res!2294945 () Bool)

(declare-fun e!3347631 () Bool)

(assert (=> b!5398911 (=> res!2294945 e!3347631)))

(assert (=> b!5398911 (= res!2294945 (not ((_ is Concat!24006) lt!2200266)))))

(assert (=> b!5398911 (= e!3347626 e!3347631)))

(declare-fun b!5398912 () Bool)

(declare-fun e!3347630 () Bool)

(assert (=> b!5398912 (= e!3347631 e!3347630)))

(declare-fun res!2294943 () Bool)

(assert (=> b!5398912 (=> (not res!2294943) (not e!3347630))))

(declare-fun call!386391 () Bool)

(assert (=> b!5398912 (= res!2294943 call!386391)))

(declare-fun b!5398913 () Bool)

(declare-fun e!3347629 () Bool)

(assert (=> b!5398913 (= e!3347629 e!3347628)))

(declare-fun c!940964 () Bool)

(assert (=> b!5398913 (= c!940964 ((_ is Star!15161) lt!2200266))))

(declare-fun b!5398914 () Bool)

(declare-fun e!3347625 () Bool)

(declare-fun call!386390 () Bool)

(assert (=> b!5398914 (= e!3347625 call!386390)))

(declare-fun bm!386386 () Bool)

(declare-fun call!386392 () Bool)

(assert (=> bm!386386 (= call!386392 call!386390)))

(declare-fun b!5398915 () Bool)

(declare-fun res!2294944 () Bool)

(declare-fun e!3347627 () Bool)

(assert (=> b!5398915 (=> (not res!2294944) (not e!3347627))))

(assert (=> b!5398915 (= res!2294944 call!386391)))

(assert (=> b!5398915 (= e!3347626 e!3347627)))

(declare-fun b!5398916 () Bool)

(assert (=> b!5398916 (= e!3347627 call!386392)))

(declare-fun bm!386387 () Bool)

(assert (=> bm!386387 (= call!386391 (validRegex!6897 (ite c!940963 (regOne!30835 lt!2200266) (regOne!30834 lt!2200266))))))

(declare-fun b!5398917 () Bool)

(assert (=> b!5398917 (= e!3347628 e!3347625)))

(declare-fun res!2294946 () Bool)

(assert (=> b!5398917 (= res!2294946 (not (nullable!5330 (reg!15490 lt!2200266))))))

(assert (=> b!5398917 (=> (not res!2294946) (not e!3347625))))

(declare-fun b!5398918 () Bool)

(assert (=> b!5398918 (= e!3347630 call!386392)))

(declare-fun d!1724750 () Bool)

(declare-fun res!2294942 () Bool)

(assert (=> d!1724750 (=> res!2294942 e!3347629)))

(assert (=> d!1724750 (= res!2294942 ((_ is ElementMatch!15161) lt!2200266))))

(assert (=> d!1724750 (= (validRegex!6897 lt!2200266) e!3347629)))

(declare-fun bm!386385 () Bool)

(assert (=> bm!386385 (= call!386390 (validRegex!6897 (ite c!940964 (reg!15490 lt!2200266) (ite c!940963 (regTwo!30835 lt!2200266) (regTwo!30834 lt!2200266)))))))

(assert (= (and d!1724750 (not res!2294942)) b!5398913))

(assert (= (and b!5398913 c!940964) b!5398917))

(assert (= (and b!5398913 (not c!940964)) b!5398910))

(assert (= (and b!5398917 res!2294946) b!5398914))

(assert (= (and b!5398910 c!940963) b!5398915))

(assert (= (and b!5398910 (not c!940963)) b!5398911))

(assert (= (and b!5398915 res!2294944) b!5398916))

(assert (= (and b!5398911 (not res!2294945)) b!5398912))

(assert (= (and b!5398912 res!2294943) b!5398918))

(assert (= (or b!5398916 b!5398918) bm!386386))

(assert (= (or b!5398915 b!5398912) bm!386387))

(assert (= (or b!5398914 bm!386386) bm!386385))

(declare-fun m!6423710 () Bool)

(assert (=> bm!386387 m!6423710))

(declare-fun m!6423712 () Bool)

(assert (=> b!5398917 m!6423712))

(declare-fun m!6423714 () Bool)

(assert (=> bm!386385 m!6423714))

(assert (=> b!5397970 d!1724750))

(declare-fun b!5398919 () Bool)

(declare-fun e!3347632 () Bool)

(assert (=> b!5398919 (= e!3347632 (matchR!7346 (derivativeStep!4251 lt!2200255 (head!11578 (_2!35663 lt!2200259))) (tail!10675 (_2!35663 lt!2200259))))))

(declare-fun b!5398920 () Bool)

(declare-fun res!2294947 () Bool)

(declare-fun e!3347636 () Bool)

(assert (=> b!5398920 (=> res!2294947 e!3347636)))

(assert (=> b!5398920 (= res!2294947 (not (isEmpty!33653 (tail!10675 (_2!35663 lt!2200259)))))))

(declare-fun b!5398921 () Bool)

(declare-fun e!3347634 () Bool)

(assert (=> b!5398921 (= e!3347634 e!3347636)))

(declare-fun res!2294950 () Bool)

(assert (=> b!5398921 (=> res!2294950 e!3347636)))

(declare-fun call!386393 () Bool)

(assert (=> b!5398921 (= res!2294950 call!386393)))

(declare-fun b!5398922 () Bool)

(declare-fun e!3347638 () Bool)

(declare-fun lt!2200457 () Bool)

(assert (=> b!5398922 (= e!3347638 (not lt!2200457))))

(declare-fun b!5398923 () Bool)

(assert (=> b!5398923 (= e!3347632 (nullable!5330 lt!2200255))))

(declare-fun b!5398924 () Bool)

(declare-fun res!2294954 () Bool)

(declare-fun e!3347633 () Bool)

(assert (=> b!5398924 (=> (not res!2294954) (not e!3347633))))

(assert (=> b!5398924 (= res!2294954 (not call!386393))))

(declare-fun b!5398925 () Bool)

(declare-fun e!3347637 () Bool)

(assert (=> b!5398925 (= e!3347637 e!3347638)))

(declare-fun c!940966 () Bool)

(assert (=> b!5398925 (= c!940966 ((_ is EmptyLang!15161) lt!2200255))))

(declare-fun b!5398926 () Bool)

(declare-fun res!2294952 () Bool)

(declare-fun e!3347635 () Bool)

(assert (=> b!5398926 (=> res!2294952 e!3347635)))

(assert (=> b!5398926 (= res!2294952 (not ((_ is ElementMatch!15161) lt!2200255)))))

(assert (=> b!5398926 (= e!3347638 e!3347635)))

(declare-fun b!5398927 () Bool)

(declare-fun res!2294948 () Bool)

(assert (=> b!5398927 (=> (not res!2294948) (not e!3347633))))

(assert (=> b!5398927 (= res!2294948 (isEmpty!33653 (tail!10675 (_2!35663 lt!2200259))))))

(declare-fun d!1724752 () Bool)

(assert (=> d!1724752 e!3347637))

(declare-fun c!940965 () Bool)

(assert (=> d!1724752 (= c!940965 ((_ is EmptyExpr!15161) lt!2200255))))

(assert (=> d!1724752 (= lt!2200457 e!3347632)))

(declare-fun c!940967 () Bool)

(assert (=> d!1724752 (= c!940967 (isEmpty!33653 (_2!35663 lt!2200259)))))

(assert (=> d!1724752 (validRegex!6897 lt!2200255)))

(assert (=> d!1724752 (= (matchR!7346 lt!2200255 (_2!35663 lt!2200259)) lt!2200457)))

(declare-fun bm!386388 () Bool)

(assert (=> bm!386388 (= call!386393 (isEmpty!33653 (_2!35663 lt!2200259)))))

(declare-fun b!5398928 () Bool)

(assert (=> b!5398928 (= e!3347637 (= lt!2200457 call!386393))))

(declare-fun b!5398929 () Bool)

(declare-fun res!2294951 () Bool)

(assert (=> b!5398929 (=> res!2294951 e!3347635)))

(assert (=> b!5398929 (= res!2294951 e!3347633)))

(declare-fun res!2294953 () Bool)

(assert (=> b!5398929 (=> (not res!2294953) (not e!3347633))))

(assert (=> b!5398929 (= res!2294953 lt!2200457)))

(declare-fun b!5398930 () Bool)

(assert (=> b!5398930 (= e!3347636 (not (= (head!11578 (_2!35663 lt!2200259)) (c!940711 lt!2200255))))))

(declare-fun b!5398931 () Bool)

(assert (=> b!5398931 (= e!3347633 (= (head!11578 (_2!35663 lt!2200259)) (c!940711 lt!2200255)))))

(declare-fun b!5398932 () Bool)

(assert (=> b!5398932 (= e!3347635 e!3347634)))

(declare-fun res!2294949 () Bool)

(assert (=> b!5398932 (=> (not res!2294949) (not e!3347634))))

(assert (=> b!5398932 (= res!2294949 (not lt!2200457))))

(assert (= (and d!1724752 c!940967) b!5398923))

(assert (= (and d!1724752 (not c!940967)) b!5398919))

(assert (= (and d!1724752 c!940965) b!5398928))

(assert (= (and d!1724752 (not c!940965)) b!5398925))

(assert (= (and b!5398925 c!940966) b!5398922))

(assert (= (and b!5398925 (not c!940966)) b!5398926))

(assert (= (and b!5398926 (not res!2294952)) b!5398929))

(assert (= (and b!5398929 res!2294953) b!5398924))

(assert (= (and b!5398924 res!2294954) b!5398927))

(assert (= (and b!5398927 res!2294948) b!5398931))

(assert (= (and b!5398929 (not res!2294951)) b!5398932))

(assert (= (and b!5398932 res!2294949) b!5398921))

(assert (= (and b!5398921 (not res!2294950)) b!5398920))

(assert (= (and b!5398920 (not res!2294947)) b!5398930))

(assert (= (or b!5398928 b!5398921 b!5398924) bm!386388))

(assert (=> b!5398920 m!6423226))

(assert (=> b!5398920 m!6423226))

(declare-fun m!6423716 () Bool)

(assert (=> b!5398920 m!6423716))

(assert (=> b!5398931 m!6423222))

(declare-fun m!6423718 () Bool)

(assert (=> b!5398923 m!6423718))

(assert (=> d!1724752 m!6423218))

(assert (=> d!1724752 m!6423668))

(assert (=> b!5398927 m!6423226))

(assert (=> b!5398927 m!6423226))

(assert (=> b!5398927 m!6423716))

(assert (=> b!5398919 m!6423222))

(assert (=> b!5398919 m!6423222))

(declare-fun m!6423720 () Bool)

(assert (=> b!5398919 m!6423720))

(assert (=> b!5398919 m!6423226))

(assert (=> b!5398919 m!6423720))

(assert (=> b!5398919 m!6423226))

(declare-fun m!6423722 () Bool)

(assert (=> b!5398919 m!6423722))

(assert (=> b!5398930 m!6423222))

(assert (=> bm!386388 m!6423218))

(assert (=> b!5397970 d!1724752))

(declare-fun d!1724754 () Bool)

(assert (=> d!1724754 (= (matchR!7346 lt!2200255 (_2!35663 lt!2200259)) (matchZipper!1405 lt!2200256 (_2!35663 lt!2200259)))))

(declare-fun lt!2200458 () Unit!154166)

(assert (=> d!1724754 (= lt!2200458 (choose!40661 lt!2200256 lt!2200277 lt!2200255 (_2!35663 lt!2200259)))))

(assert (=> d!1724754 (validRegex!6897 lt!2200255)))

(assert (=> d!1724754 (= (theoremZipperRegexEquiv!475 lt!2200256 lt!2200277 lt!2200255 (_2!35663 lt!2200259)) lt!2200458)))

(declare-fun bs!1248083 () Bool)

(assert (= bs!1248083 d!1724754))

(assert (=> bs!1248083 m!6422760))

(assert (=> bs!1248083 m!6422802))

(declare-fun m!6423724 () Bool)

(assert (=> bs!1248083 m!6423724))

(assert (=> bs!1248083 m!6423668))

(assert (=> b!5397970 d!1724754))

(declare-fun d!1724756 () Bool)

(declare-fun c!940968 () Bool)

(assert (=> d!1724756 (= c!940968 (isEmpty!33653 (t!375006 s!2326)))))

(declare-fun e!3347639 () Bool)

(assert (=> d!1724756 (= (matchZipper!1405 lt!2200235 (t!375006 s!2326)) e!3347639)))

(declare-fun b!5398933 () Bool)

(assert (=> b!5398933 (= e!3347639 (nullableZipper!1430 lt!2200235))))

(declare-fun b!5398934 () Bool)

(assert (=> b!5398934 (= e!3347639 (matchZipper!1405 (derivationStepZipper!1400 lt!2200235 (head!11578 (t!375006 s!2326))) (tail!10675 (t!375006 s!2326))))))

(assert (= (and d!1724756 c!940968) b!5398933))

(assert (= (and d!1724756 (not c!940968)) b!5398934))

(assert (=> d!1724756 m!6423060))

(declare-fun m!6423726 () Bool)

(assert (=> b!5398933 m!6423726))

(assert (=> b!5398934 m!6423064))

(assert (=> b!5398934 m!6423064))

(declare-fun m!6423728 () Bool)

(assert (=> b!5398934 m!6423728))

(assert (=> b!5398934 m!6423068))

(assert (=> b!5398934 m!6423728))

(assert (=> b!5398934 m!6423068))

(declare-fun m!6423730 () Bool)

(assert (=> b!5398934 m!6423730))

(assert (=> b!5397969 d!1724756))

(declare-fun d!1724758 () Bool)

(declare-fun c!940969 () Bool)

(assert (=> d!1724758 (= c!940969 (isEmpty!33653 s!2326))))

(declare-fun e!3347640 () Bool)

(assert (=> d!1724758 (= (matchZipper!1405 lt!2200271 s!2326) e!3347640)))

(declare-fun b!5398935 () Bool)

(assert (=> b!5398935 (= e!3347640 (nullableZipper!1430 lt!2200271))))

(declare-fun b!5398936 () Bool)

(assert (=> b!5398936 (= e!3347640 (matchZipper!1405 (derivationStepZipper!1400 lt!2200271 (head!11578 s!2326)) (tail!10675 s!2326)))))

(assert (= (and d!1724758 c!940969) b!5398935))

(assert (= (and d!1724758 (not c!940969)) b!5398936))

(assert (=> d!1724758 m!6423464))

(declare-fun m!6423732 () Bool)

(assert (=> b!5398935 m!6423732))

(assert (=> b!5398936 m!6423468))

(assert (=> b!5398936 m!6423468))

(declare-fun m!6423734 () Bool)

(assert (=> b!5398936 m!6423734))

(assert (=> b!5398936 m!6423472))

(assert (=> b!5398936 m!6423734))

(assert (=> b!5398936 m!6423472))

(declare-fun m!6423736 () Bool)

(assert (=> b!5398936 m!6423736))

(assert (=> b!5397969 d!1724758))

(declare-fun bs!1248084 () Bool)

(declare-fun d!1724760 () Bool)

(assert (= bs!1248084 (and d!1724760 d!1724570)))

(declare-fun lambda!280986 () Int)

(assert (=> bs!1248084 (= lambda!280986 lambda!280939)))

(declare-fun bs!1248085 () Bool)

(assert (= bs!1248085 (and d!1724760 d!1724576)))

(assert (=> bs!1248085 (= lambda!280986 lambda!280943)))

(declare-fun bs!1248086 () Bool)

(assert (= bs!1248086 (and d!1724760 d!1724660)))

(assert (=> bs!1248086 (= lambda!280986 lambda!280971)))

(declare-fun bs!1248087 () Bool)

(assert (= bs!1248087 (and d!1724760 b!5397998)))

(assert (=> bs!1248087 (= lambda!280986 lambda!280909)))

(declare-fun bs!1248088 () Bool)

(assert (= bs!1248088 (and d!1724760 d!1724744)))

(assert (=> bs!1248088 (= lambda!280986 lambda!280983)))

(declare-fun b!5398957 () Bool)

(declare-fun e!3347655 () Regex!15161)

(assert (=> b!5398957 (= e!3347655 (h!68106 (unfocusZipperList!603 zl!343)))))

(declare-fun b!5398958 () Bool)

(declare-fun e!3347653 () Bool)

(declare-fun lt!2200461 () Regex!15161)

(declare-fun isUnion!405 (Regex!15161) Bool)

(assert (=> b!5398958 (= e!3347653 (isUnion!405 lt!2200461))))

(declare-fun b!5398959 () Bool)

(declare-fun e!3347658 () Bool)

(assert (=> b!5398959 (= e!3347658 e!3347653)))

(declare-fun c!940981 () Bool)

(assert (=> b!5398959 (= c!940981 (isEmpty!33650 (tail!10676 (unfocusZipperList!603 zl!343))))))

(declare-fun b!5398960 () Bool)

(declare-fun e!3347654 () Regex!15161)

(assert (=> b!5398960 (= e!3347655 e!3347654)))

(declare-fun c!940979 () Bool)

(assert (=> b!5398960 (= c!940979 ((_ is Cons!61658) (unfocusZipperList!603 zl!343)))))

(declare-fun b!5398961 () Bool)

(assert (=> b!5398961 (= e!3347654 EmptyLang!15161)))

(declare-fun b!5398962 () Bool)

(assert (=> b!5398962 (= e!3347654 (Union!15161 (h!68106 (unfocusZipperList!603 zl!343)) (generalisedUnion!1090 (t!375005 (unfocusZipperList!603 zl!343)))))))

(declare-fun b!5398963 () Bool)

(declare-fun e!3347657 () Bool)

(assert (=> b!5398963 (= e!3347657 (isEmpty!33650 (t!375005 (unfocusZipperList!603 zl!343))))))

(declare-fun e!3347656 () Bool)

(assert (=> d!1724760 e!3347656))

(declare-fun res!2294959 () Bool)

(assert (=> d!1724760 (=> (not res!2294959) (not e!3347656))))

(assert (=> d!1724760 (= res!2294959 (validRegex!6897 lt!2200461))))

(assert (=> d!1724760 (= lt!2200461 e!3347655)))

(declare-fun c!940980 () Bool)

(assert (=> d!1724760 (= c!940980 e!3347657)))

(declare-fun res!2294960 () Bool)

(assert (=> d!1724760 (=> (not res!2294960) (not e!3347657))))

(assert (=> d!1724760 (= res!2294960 ((_ is Cons!61658) (unfocusZipperList!603 zl!343)))))

(assert (=> d!1724760 (forall!14523 (unfocusZipperList!603 zl!343) lambda!280986)))

(assert (=> d!1724760 (= (generalisedUnion!1090 (unfocusZipperList!603 zl!343)) lt!2200461)))

(declare-fun b!5398964 () Bool)

(assert (=> b!5398964 (= e!3347653 (= lt!2200461 (head!11579 (unfocusZipperList!603 zl!343))))))

(declare-fun b!5398965 () Bool)

(declare-fun isEmptyLang!973 (Regex!15161) Bool)

(assert (=> b!5398965 (= e!3347658 (isEmptyLang!973 lt!2200461))))

(declare-fun b!5398966 () Bool)

(assert (=> b!5398966 (= e!3347656 e!3347658)))

(declare-fun c!940978 () Bool)

(assert (=> b!5398966 (= c!940978 (isEmpty!33650 (unfocusZipperList!603 zl!343)))))

(assert (= (and d!1724760 res!2294960) b!5398963))

(assert (= (and d!1724760 c!940980) b!5398957))

(assert (= (and d!1724760 (not c!940980)) b!5398960))

(assert (= (and b!5398960 c!940979) b!5398962))

(assert (= (and b!5398960 (not c!940979)) b!5398961))

(assert (= (and d!1724760 res!2294959) b!5398966))

(assert (= (and b!5398966 c!940978) b!5398965))

(assert (= (and b!5398966 (not c!940978)) b!5398959))

(assert (= (and b!5398959 c!940981) b!5398964))

(assert (= (and b!5398959 (not c!940981)) b!5398958))

(declare-fun m!6423738 () Bool)

(assert (=> b!5398963 m!6423738))

(assert (=> b!5398964 m!6422738))

(declare-fun m!6423740 () Bool)

(assert (=> b!5398964 m!6423740))

(declare-fun m!6423742 () Bool)

(assert (=> d!1724760 m!6423742))

(assert (=> d!1724760 m!6422738))

(declare-fun m!6423744 () Bool)

(assert (=> d!1724760 m!6423744))

(declare-fun m!6423746 () Bool)

(assert (=> b!5398965 m!6423746))

(assert (=> b!5398966 m!6422738))

(declare-fun m!6423748 () Bool)

(assert (=> b!5398966 m!6423748))

(assert (=> b!5398959 m!6422738))

(declare-fun m!6423750 () Bool)

(assert (=> b!5398959 m!6423750))

(assert (=> b!5398959 m!6423750))

(declare-fun m!6423752 () Bool)

(assert (=> b!5398959 m!6423752))

(declare-fun m!6423754 () Bool)

(assert (=> b!5398958 m!6423754))

(declare-fun m!6423756 () Bool)

(assert (=> b!5398962 m!6423756))

(assert (=> b!5398009 d!1724760))

(declare-fun bs!1248089 () Bool)

(declare-fun d!1724762 () Bool)

(assert (= bs!1248089 (and d!1724762 d!1724570)))

(declare-fun lambda!280989 () Int)

(assert (=> bs!1248089 (= lambda!280989 lambda!280939)))

(declare-fun bs!1248090 () Bool)

(assert (= bs!1248090 (and d!1724762 d!1724760)))

(assert (=> bs!1248090 (= lambda!280989 lambda!280986)))

(declare-fun bs!1248091 () Bool)

(assert (= bs!1248091 (and d!1724762 d!1724576)))

(assert (=> bs!1248091 (= lambda!280989 lambda!280943)))

(declare-fun bs!1248092 () Bool)

(assert (= bs!1248092 (and d!1724762 d!1724660)))

(assert (=> bs!1248092 (= lambda!280989 lambda!280971)))

(declare-fun bs!1248093 () Bool)

(assert (= bs!1248093 (and d!1724762 b!5397998)))

(assert (=> bs!1248093 (= lambda!280989 lambda!280909)))

(declare-fun bs!1248094 () Bool)

(assert (= bs!1248094 (and d!1724762 d!1724744)))

(assert (=> bs!1248094 (= lambda!280989 lambda!280983)))

(declare-fun lt!2200464 () List!61782)

(assert (=> d!1724762 (forall!14523 lt!2200464 lambda!280989)))

(declare-fun e!3347661 () List!61782)

(assert (=> d!1724762 (= lt!2200464 e!3347661)))

(declare-fun c!940984 () Bool)

(assert (=> d!1724762 (= c!940984 ((_ is Cons!61660) zl!343))))

(assert (=> d!1724762 (= (unfocusZipperList!603 zl!343) lt!2200464)))

(declare-fun b!5398971 () Bool)

(assert (=> b!5398971 (= e!3347661 (Cons!61658 (generalisedConcat!830 (exprs!5045 (h!68108 zl!343))) (unfocusZipperList!603 (t!375007 zl!343))))))

(declare-fun b!5398972 () Bool)

(assert (=> b!5398972 (= e!3347661 Nil!61658)))

(assert (= (and d!1724762 c!940984) b!5398971))

(assert (= (and d!1724762 (not c!940984)) b!5398972))

(declare-fun m!6423758 () Bool)

(assert (=> d!1724762 m!6423758))

(assert (=> b!5398971 m!6422860))

(declare-fun m!6423760 () Bool)

(assert (=> b!5398971 m!6423760))

(assert (=> b!5398009 d!1724762))

(declare-fun b!5398973 () Bool)

(declare-fun e!3347662 () Bool)

(assert (=> b!5398973 (= e!3347662 (matchR!7346 (derivativeStep!4251 lt!2200266 (head!11578 s!2326)) (tail!10675 s!2326)))))

(declare-fun b!5398974 () Bool)

(declare-fun res!2294961 () Bool)

(declare-fun e!3347666 () Bool)

(assert (=> b!5398974 (=> res!2294961 e!3347666)))

(assert (=> b!5398974 (= res!2294961 (not (isEmpty!33653 (tail!10675 s!2326))))))

(declare-fun b!5398975 () Bool)

(declare-fun e!3347664 () Bool)

(assert (=> b!5398975 (= e!3347664 e!3347666)))

(declare-fun res!2294964 () Bool)

(assert (=> b!5398975 (=> res!2294964 e!3347666)))

(declare-fun call!386394 () Bool)

(assert (=> b!5398975 (= res!2294964 call!386394)))

(declare-fun b!5398976 () Bool)

(declare-fun e!3347668 () Bool)

(declare-fun lt!2200465 () Bool)

(assert (=> b!5398976 (= e!3347668 (not lt!2200465))))

(declare-fun b!5398977 () Bool)

(assert (=> b!5398977 (= e!3347662 (nullable!5330 lt!2200266))))

(declare-fun b!5398978 () Bool)

(declare-fun res!2294968 () Bool)

(declare-fun e!3347663 () Bool)

(assert (=> b!5398978 (=> (not res!2294968) (not e!3347663))))

(assert (=> b!5398978 (= res!2294968 (not call!386394))))

(declare-fun b!5398979 () Bool)

(declare-fun e!3347667 () Bool)

(assert (=> b!5398979 (= e!3347667 e!3347668)))

(declare-fun c!940986 () Bool)

(assert (=> b!5398979 (= c!940986 ((_ is EmptyLang!15161) lt!2200266))))

(declare-fun b!5398980 () Bool)

(declare-fun res!2294966 () Bool)

(declare-fun e!3347665 () Bool)

(assert (=> b!5398980 (=> res!2294966 e!3347665)))

(assert (=> b!5398980 (= res!2294966 (not ((_ is ElementMatch!15161) lt!2200266)))))

(assert (=> b!5398980 (= e!3347668 e!3347665)))

(declare-fun b!5398981 () Bool)

(declare-fun res!2294962 () Bool)

(assert (=> b!5398981 (=> (not res!2294962) (not e!3347663))))

(assert (=> b!5398981 (= res!2294962 (isEmpty!33653 (tail!10675 s!2326)))))

(declare-fun d!1724764 () Bool)

(assert (=> d!1724764 e!3347667))

(declare-fun c!940985 () Bool)

(assert (=> d!1724764 (= c!940985 ((_ is EmptyExpr!15161) lt!2200266))))

(assert (=> d!1724764 (= lt!2200465 e!3347662)))

(declare-fun c!940987 () Bool)

(assert (=> d!1724764 (= c!940987 (isEmpty!33653 s!2326))))

(assert (=> d!1724764 (validRegex!6897 lt!2200266)))

(assert (=> d!1724764 (= (matchR!7346 lt!2200266 s!2326) lt!2200465)))

(declare-fun bm!386389 () Bool)

(assert (=> bm!386389 (= call!386394 (isEmpty!33653 s!2326))))

(declare-fun b!5398982 () Bool)

(assert (=> b!5398982 (= e!3347667 (= lt!2200465 call!386394))))

(declare-fun b!5398983 () Bool)

(declare-fun res!2294965 () Bool)

(assert (=> b!5398983 (=> res!2294965 e!3347665)))

(assert (=> b!5398983 (= res!2294965 e!3347663)))

(declare-fun res!2294967 () Bool)

(assert (=> b!5398983 (=> (not res!2294967) (not e!3347663))))

(assert (=> b!5398983 (= res!2294967 lt!2200465)))

(declare-fun b!5398984 () Bool)

(assert (=> b!5398984 (= e!3347666 (not (= (head!11578 s!2326) (c!940711 lt!2200266))))))

(declare-fun b!5398985 () Bool)

(assert (=> b!5398985 (= e!3347663 (= (head!11578 s!2326) (c!940711 lt!2200266)))))

(declare-fun b!5398986 () Bool)

(assert (=> b!5398986 (= e!3347665 e!3347664)))

(declare-fun res!2294963 () Bool)

(assert (=> b!5398986 (=> (not res!2294963) (not e!3347664))))

(assert (=> b!5398986 (= res!2294963 (not lt!2200465))))

(assert (= (and d!1724764 c!940987) b!5398977))

(assert (= (and d!1724764 (not c!940987)) b!5398973))

(assert (= (and d!1724764 c!940985) b!5398982))

(assert (= (and d!1724764 (not c!940985)) b!5398979))

(assert (= (and b!5398979 c!940986) b!5398976))

(assert (= (and b!5398979 (not c!940986)) b!5398980))

(assert (= (and b!5398980 (not res!2294966)) b!5398983))

(assert (= (and b!5398983 res!2294967) b!5398978))

(assert (= (and b!5398978 res!2294968) b!5398981))

(assert (= (and b!5398981 res!2294962) b!5398985))

(assert (= (and b!5398983 (not res!2294965)) b!5398986))

(assert (= (and b!5398986 res!2294963) b!5398975))

(assert (= (and b!5398975 (not res!2294964)) b!5398974))

(assert (= (and b!5398974 (not res!2294961)) b!5398984))

(assert (= (or b!5398982 b!5398975 b!5398978) bm!386389))

(assert (=> b!5398974 m!6423472))

(assert (=> b!5398974 m!6423472))

(assert (=> b!5398974 m!6423552))

(assert (=> b!5398985 m!6423468))

(assert (=> b!5398977 m!6423676))

(assert (=> d!1724764 m!6423464))

(assert (=> d!1724764 m!6422762))

(assert (=> b!5398981 m!6423472))

(assert (=> b!5398981 m!6423472))

(assert (=> b!5398981 m!6423552))

(assert (=> b!5398973 m!6423468))

(assert (=> b!5398973 m!6423468))

(declare-fun m!6423762 () Bool)

(assert (=> b!5398973 m!6423762))

(assert (=> b!5398973 m!6423472))

(assert (=> b!5398973 m!6423762))

(assert (=> b!5398973 m!6423472))

(declare-fun m!6423764 () Bool)

(assert (=> b!5398973 m!6423764))

(assert (=> b!5398984 m!6423468))

(assert (=> bm!386389 m!6423464))

(assert (=> b!5397973 d!1724764))

(declare-fun bs!1248095 () Bool)

(declare-fun b!5398990 () Bool)

(assert (= bs!1248095 (and b!5398990 d!1724654)))

(declare-fun lambda!280990 () Int)

(assert (=> bs!1248095 (not (= lambda!280990 lambda!280970))))

(declare-fun bs!1248096 () Bool)

(assert (= bs!1248096 (and b!5398990 d!1724608)))

(assert (=> bs!1248096 (not (= lambda!280990 lambda!280961))))

(declare-fun bs!1248097 () Bool)

(assert (= bs!1248097 (and b!5398990 b!5398738)))

(assert (=> bs!1248097 (not (= lambda!280990 lambda!280980))))

(assert (=> bs!1248096 (not (= lambda!280990 lambda!280960))))

(declare-fun bs!1248098 () Bool)

(assert (= bs!1248098 (and b!5398990 b!5397996)))

(assert (=> bs!1248098 (not (= lambda!280990 lambda!280905))))

(declare-fun bs!1248099 () Bool)

(assert (= bs!1248099 (and b!5398990 b!5398740)))

(assert (=> bs!1248099 (= (and (= (reg!15490 lt!2200266) (reg!15490 r!7292)) (= lt!2200266 r!7292)) (= lambda!280990 lambda!280979))))

(assert (=> bs!1248098 (not (= lambda!280990 lambda!280906))))

(assert (=> b!5398990 true))

(assert (=> b!5398990 true))

(declare-fun bs!1248100 () Bool)

(declare-fun b!5398988 () Bool)

(assert (= bs!1248100 (and b!5398988 d!1724654)))

(declare-fun lambda!280991 () Int)

(assert (=> bs!1248100 (not (= lambda!280991 lambda!280970))))

(declare-fun bs!1248101 () Bool)

(assert (= bs!1248101 (and b!5398988 d!1724608)))

(assert (=> bs!1248101 (= (and (= (regOne!30834 lt!2200266) (regOne!30834 r!7292)) (= (regTwo!30834 lt!2200266) (regTwo!30834 r!7292))) (= lambda!280991 lambda!280961))))

(declare-fun bs!1248102 () Bool)

(assert (= bs!1248102 (and b!5398988 b!5398738)))

(assert (=> bs!1248102 (= (and (= (regOne!30834 lt!2200266) (regOne!30834 r!7292)) (= (regTwo!30834 lt!2200266) (regTwo!30834 r!7292))) (= lambda!280991 lambda!280980))))

(declare-fun bs!1248103 () Bool)

(assert (= bs!1248103 (and b!5398988 b!5397996)))

(assert (=> bs!1248103 (not (= lambda!280991 lambda!280905))))

(declare-fun bs!1248104 () Bool)

(assert (= bs!1248104 (and b!5398988 b!5398740)))

(assert (=> bs!1248104 (not (= lambda!280991 lambda!280979))))

(assert (=> bs!1248103 (= (and (= (regOne!30834 lt!2200266) (regOne!30834 r!7292)) (= (regTwo!30834 lt!2200266) (regTwo!30834 r!7292))) (= lambda!280991 lambda!280906))))

(assert (=> bs!1248101 (not (= lambda!280991 lambda!280960))))

(declare-fun bs!1248105 () Bool)

(assert (= bs!1248105 (and b!5398988 b!5398990)))

(assert (=> bs!1248105 (not (= lambda!280991 lambda!280990))))

(assert (=> b!5398988 true))

(assert (=> b!5398988 true))

(declare-fun b!5398987 () Bool)

(declare-fun c!940988 () Bool)

(assert (=> b!5398987 (= c!940988 ((_ is Union!15161) lt!2200266))))

(declare-fun e!3347669 () Bool)

(declare-fun e!3347674 () Bool)

(assert (=> b!5398987 (= e!3347669 e!3347674)))

(declare-fun e!3347670 () Bool)

(declare-fun call!386395 () Bool)

(assert (=> b!5398988 (= e!3347670 call!386395)))

(declare-fun b!5398989 () Bool)

(declare-fun e!3347672 () Bool)

(declare-fun call!386396 () Bool)

(assert (=> b!5398989 (= e!3347672 call!386396)))

(declare-fun e!3347675 () Bool)

(assert (=> b!5398990 (= e!3347675 call!386395)))

(declare-fun b!5398991 () Bool)

(assert (=> b!5398991 (= e!3347674 e!3347670)))

(declare-fun c!940991 () Bool)

(assert (=> b!5398991 (= c!940991 ((_ is Star!15161) lt!2200266))))

(declare-fun b!5398992 () Bool)

(declare-fun e!3347673 () Bool)

(assert (=> b!5398992 (= e!3347674 e!3347673)))

(declare-fun res!2294969 () Bool)

(assert (=> b!5398992 (= res!2294969 (matchRSpec!2264 (regOne!30835 lt!2200266) s!2326))))

(assert (=> b!5398992 (=> res!2294969 e!3347673)))

(declare-fun d!1724766 () Bool)

(declare-fun c!940989 () Bool)

(assert (=> d!1724766 (= c!940989 ((_ is EmptyExpr!15161) lt!2200266))))

(assert (=> d!1724766 (= (matchRSpec!2264 lt!2200266 s!2326) e!3347672)))

(declare-fun b!5398993 () Bool)

(declare-fun c!940990 () Bool)

(assert (=> b!5398993 (= c!940990 ((_ is ElementMatch!15161) lt!2200266))))

(declare-fun e!3347671 () Bool)

(assert (=> b!5398993 (= e!3347671 e!3347669)))

(declare-fun bm!386390 () Bool)

(assert (=> bm!386390 (= call!386395 (Exists!2342 (ite c!940991 lambda!280990 lambda!280991)))))

(declare-fun b!5398994 () Bool)

(assert (=> b!5398994 (= e!3347672 e!3347671)))

(declare-fun res!2294971 () Bool)

(assert (=> b!5398994 (= res!2294971 (not ((_ is EmptyLang!15161) lt!2200266)))))

(assert (=> b!5398994 (=> (not res!2294971) (not e!3347671))))

(declare-fun b!5398995 () Bool)

(declare-fun res!2294970 () Bool)

(assert (=> b!5398995 (=> res!2294970 e!3347675)))

(assert (=> b!5398995 (= res!2294970 call!386396)))

(assert (=> b!5398995 (= e!3347670 e!3347675)))

(declare-fun b!5398996 () Bool)

(assert (=> b!5398996 (= e!3347673 (matchRSpec!2264 (regTwo!30835 lt!2200266) s!2326))))

(declare-fun bm!386391 () Bool)

(assert (=> bm!386391 (= call!386396 (isEmpty!33653 s!2326))))

(declare-fun b!5398997 () Bool)

(assert (=> b!5398997 (= e!3347669 (= s!2326 (Cons!61659 (c!940711 lt!2200266) Nil!61659)))))

(assert (= (and d!1724766 c!940989) b!5398989))

(assert (= (and d!1724766 (not c!940989)) b!5398994))

(assert (= (and b!5398994 res!2294971) b!5398993))

(assert (= (and b!5398993 c!940990) b!5398997))

(assert (= (and b!5398993 (not c!940990)) b!5398987))

(assert (= (and b!5398987 c!940988) b!5398992))

(assert (= (and b!5398987 (not c!940988)) b!5398991))

(assert (= (and b!5398992 (not res!2294969)) b!5398996))

(assert (= (and b!5398991 c!940991) b!5398995))

(assert (= (and b!5398991 (not c!940991)) b!5398988))

(assert (= (and b!5398995 (not res!2294970)) b!5398990))

(assert (= (or b!5398990 b!5398988) bm!386390))

(assert (= (or b!5398989 b!5398995) bm!386391))

(declare-fun m!6423766 () Bool)

(assert (=> b!5398992 m!6423766))

(declare-fun m!6423768 () Bool)

(assert (=> bm!386390 m!6423768))

(declare-fun m!6423770 () Bool)

(assert (=> b!5398996 m!6423770))

(assert (=> bm!386391 m!6423464))

(assert (=> b!5397973 d!1724766))

(declare-fun d!1724768 () Bool)

(assert (=> d!1724768 (= (matchR!7346 lt!2200266 s!2326) (matchRSpec!2264 lt!2200266 s!2326))))

(declare-fun lt!2200466 () Unit!154166)

(assert (=> d!1724768 (= lt!2200466 (choose!40659 lt!2200266 s!2326))))

(assert (=> d!1724768 (validRegex!6897 lt!2200266)))

(assert (=> d!1724768 (= (mainMatchTheorem!2264 lt!2200266 s!2326) lt!2200466)))

(declare-fun bs!1248106 () Bool)

(assert (= bs!1248106 d!1724768))

(assert (=> bs!1248106 m!6422804))

(assert (=> bs!1248106 m!6422806))

(declare-fun m!6423772 () Bool)

(assert (=> bs!1248106 m!6423772))

(assert (=> bs!1248106 m!6422762))

(assert (=> b!5397973 d!1724768))

(declare-fun d!1724770 () Bool)

(assert (=> d!1724770 (= (isEmpty!33650 (t!375005 (exprs!5045 (h!68108 zl!343)))) ((_ is Nil!61658) (t!375005 (exprs!5045 (h!68108 zl!343)))))))

(assert (=> b!5397992 d!1724770))

(assert (=> b!5397972 d!1724682))

(declare-fun d!1724772 () Bool)

(declare-fun lt!2200467 () Regex!15161)

(assert (=> d!1724772 (validRegex!6897 lt!2200467)))

(assert (=> d!1724772 (= lt!2200467 (generalisedUnion!1090 (unfocusZipperList!603 zl!343)))))

(assert (=> d!1724772 (= (unfocusZipper!903 zl!343) lt!2200467)))

(declare-fun bs!1248107 () Bool)

(assert (= bs!1248107 d!1724772))

(declare-fun m!6423774 () Bool)

(assert (=> bs!1248107 m!6423774))

(assert (=> bs!1248107 m!6422738))

(assert (=> bs!1248107 m!6422738))

(assert (=> bs!1248107 m!6422740))

(assert (=> b!5397971 d!1724772))

(declare-fun b!5399009 () Bool)

(declare-fun e!3347678 () Bool)

(declare-fun tp!1494034 () Bool)

(declare-fun tp!1494030 () Bool)

(assert (=> b!5399009 (= e!3347678 (and tp!1494034 tp!1494030))))

(declare-fun b!5399010 () Bool)

(declare-fun tp!1494033 () Bool)

(assert (=> b!5399010 (= e!3347678 tp!1494033)))

(declare-fun b!5399011 () Bool)

(declare-fun tp!1494031 () Bool)

(declare-fun tp!1494032 () Bool)

(assert (=> b!5399011 (= e!3347678 (and tp!1494031 tp!1494032))))

(assert (=> b!5398006 (= tp!1493953 e!3347678)))

(declare-fun b!5399008 () Bool)

(assert (=> b!5399008 (= e!3347678 tp_is_empty!39575)))

(assert (= (and b!5398006 ((_ is ElementMatch!15161) (reg!15490 r!7292))) b!5399008))

(assert (= (and b!5398006 ((_ is Concat!24006) (reg!15490 r!7292))) b!5399009))

(assert (= (and b!5398006 ((_ is Star!15161) (reg!15490 r!7292))) b!5399010))

(assert (= (and b!5398006 ((_ is Union!15161) (reg!15490 r!7292))) b!5399011))

(declare-fun condSetEmpty!35123 () Bool)

(assert (=> setNonEmpty!35117 (= condSetEmpty!35123 (= setRest!35117 ((as const (Array Context!9090 Bool)) false)))))

(declare-fun setRes!35123 () Bool)

(assert (=> setNonEmpty!35117 (= tp!1493957 setRes!35123)))

(declare-fun setIsEmpty!35123 () Bool)

(assert (=> setIsEmpty!35123 setRes!35123))

(declare-fun setElem!35123 () Context!9090)

(declare-fun tp!1494040 () Bool)

(declare-fun e!3347681 () Bool)

(declare-fun setNonEmpty!35123 () Bool)

(assert (=> setNonEmpty!35123 (= setRes!35123 (and tp!1494040 (inv!81149 setElem!35123) e!3347681))))

(declare-fun setRest!35123 () (InoxSet Context!9090))

(assert (=> setNonEmpty!35123 (= setRest!35117 ((_ map or) (store ((as const (Array Context!9090 Bool)) false) setElem!35123 true) setRest!35123))))

(declare-fun b!5399016 () Bool)

(declare-fun tp!1494039 () Bool)

(assert (=> b!5399016 (= e!3347681 tp!1494039)))

(assert (= (and setNonEmpty!35117 condSetEmpty!35123) setIsEmpty!35123))

(assert (= (and setNonEmpty!35117 (not condSetEmpty!35123)) setNonEmpty!35123))

(assert (= setNonEmpty!35123 b!5399016))

(declare-fun m!6423776 () Bool)

(assert (=> setNonEmpty!35123 m!6423776))

(declare-fun b!5399021 () Bool)

(declare-fun e!3347684 () Bool)

(declare-fun tp!1494045 () Bool)

(declare-fun tp!1494046 () Bool)

(assert (=> b!5399021 (= e!3347684 (and tp!1494045 tp!1494046))))

(assert (=> b!5397994 (= tp!1493958 e!3347684)))

(assert (= (and b!5397994 ((_ is Cons!61658) (exprs!5045 setElem!35117))) b!5399021))

(declare-fun b!5399023 () Bool)

(declare-fun e!3347685 () Bool)

(declare-fun tp!1494051 () Bool)

(declare-fun tp!1494047 () Bool)

(assert (=> b!5399023 (= e!3347685 (and tp!1494051 tp!1494047))))

(declare-fun b!5399024 () Bool)

(declare-fun tp!1494050 () Bool)

(assert (=> b!5399024 (= e!3347685 tp!1494050)))

(declare-fun b!5399025 () Bool)

(declare-fun tp!1494048 () Bool)

(declare-fun tp!1494049 () Bool)

(assert (=> b!5399025 (= e!3347685 (and tp!1494048 tp!1494049))))

(assert (=> b!5397988 (= tp!1493959 e!3347685)))

(declare-fun b!5399022 () Bool)

(assert (=> b!5399022 (= e!3347685 tp_is_empty!39575)))

(assert (= (and b!5397988 ((_ is ElementMatch!15161) (regOne!30835 r!7292))) b!5399022))

(assert (= (and b!5397988 ((_ is Concat!24006) (regOne!30835 r!7292))) b!5399023))

(assert (= (and b!5397988 ((_ is Star!15161) (regOne!30835 r!7292))) b!5399024))

(assert (= (and b!5397988 ((_ is Union!15161) (regOne!30835 r!7292))) b!5399025))

(declare-fun b!5399027 () Bool)

(declare-fun e!3347686 () Bool)

(declare-fun tp!1494056 () Bool)

(declare-fun tp!1494052 () Bool)

(assert (=> b!5399027 (= e!3347686 (and tp!1494056 tp!1494052))))

(declare-fun b!5399028 () Bool)

(declare-fun tp!1494055 () Bool)

(assert (=> b!5399028 (= e!3347686 tp!1494055)))

(declare-fun b!5399029 () Bool)

(declare-fun tp!1494053 () Bool)

(declare-fun tp!1494054 () Bool)

(assert (=> b!5399029 (= e!3347686 (and tp!1494053 tp!1494054))))

(assert (=> b!5397988 (= tp!1493956 e!3347686)))

(declare-fun b!5399026 () Bool)

(assert (=> b!5399026 (= e!3347686 tp_is_empty!39575)))

(assert (= (and b!5397988 ((_ is ElementMatch!15161) (regTwo!30835 r!7292))) b!5399026))

(assert (= (and b!5397988 ((_ is Concat!24006) (regTwo!30835 r!7292))) b!5399027))

(assert (= (and b!5397988 ((_ is Star!15161) (regTwo!30835 r!7292))) b!5399028))

(assert (= (and b!5397988 ((_ is Union!15161) (regTwo!30835 r!7292))) b!5399029))

(declare-fun b!5399037 () Bool)

(declare-fun e!3347692 () Bool)

(declare-fun tp!1494061 () Bool)

(assert (=> b!5399037 (= e!3347692 tp!1494061)))

(declare-fun e!3347691 () Bool)

(declare-fun tp!1494062 () Bool)

(declare-fun b!5399036 () Bool)

(assert (=> b!5399036 (= e!3347691 (and (inv!81149 (h!68108 (t!375007 zl!343))) e!3347692 tp!1494062))))

(assert (=> b!5397997 (= tp!1493960 e!3347691)))

(assert (= b!5399036 b!5399037))

(assert (= (and b!5397997 ((_ is Cons!61660) (t!375007 zl!343))) b!5399036))

(declare-fun m!6423778 () Bool)

(assert (=> b!5399036 m!6423778))

(declare-fun b!5399042 () Bool)

(declare-fun e!3347695 () Bool)

(declare-fun tp!1494065 () Bool)

(assert (=> b!5399042 (= e!3347695 (and tp_is_empty!39575 tp!1494065))))

(assert (=> b!5397967 (= tp!1493955 e!3347695)))

(assert (= (and b!5397967 ((_ is Cons!61659) (t!375006 s!2326))) b!5399042))

(declare-fun b!5399044 () Bool)

(declare-fun e!3347696 () Bool)

(declare-fun tp!1494070 () Bool)

(declare-fun tp!1494066 () Bool)

(assert (=> b!5399044 (= e!3347696 (and tp!1494070 tp!1494066))))

(declare-fun b!5399045 () Bool)

(declare-fun tp!1494069 () Bool)

(assert (=> b!5399045 (= e!3347696 tp!1494069)))

(declare-fun b!5399046 () Bool)

(declare-fun tp!1494067 () Bool)

(declare-fun tp!1494068 () Bool)

(assert (=> b!5399046 (= e!3347696 (and tp!1494067 tp!1494068))))

(assert (=> b!5397966 (= tp!1493952 e!3347696)))

(declare-fun b!5399043 () Bool)

(assert (=> b!5399043 (= e!3347696 tp_is_empty!39575)))

(assert (= (and b!5397966 ((_ is ElementMatch!15161) (regOne!30834 r!7292))) b!5399043))

(assert (= (and b!5397966 ((_ is Concat!24006) (regOne!30834 r!7292))) b!5399044))

(assert (= (and b!5397966 ((_ is Star!15161) (regOne!30834 r!7292))) b!5399045))

(assert (= (and b!5397966 ((_ is Union!15161) (regOne!30834 r!7292))) b!5399046))

(declare-fun b!5399048 () Bool)

(declare-fun e!3347697 () Bool)

(declare-fun tp!1494075 () Bool)

(declare-fun tp!1494071 () Bool)

(assert (=> b!5399048 (= e!3347697 (and tp!1494075 tp!1494071))))

(declare-fun b!5399049 () Bool)

(declare-fun tp!1494074 () Bool)

(assert (=> b!5399049 (= e!3347697 tp!1494074)))

(declare-fun b!5399050 () Bool)

(declare-fun tp!1494072 () Bool)

(declare-fun tp!1494073 () Bool)

(assert (=> b!5399050 (= e!3347697 (and tp!1494072 tp!1494073))))

(assert (=> b!5397966 (= tp!1493954 e!3347697)))

(declare-fun b!5399047 () Bool)

(assert (=> b!5399047 (= e!3347697 tp_is_empty!39575)))

(assert (= (and b!5397966 ((_ is ElementMatch!15161) (regTwo!30834 r!7292))) b!5399047))

(assert (= (and b!5397966 ((_ is Concat!24006) (regTwo!30834 r!7292))) b!5399048))

(assert (= (and b!5397966 ((_ is Star!15161) (regTwo!30834 r!7292))) b!5399049))

(assert (= (and b!5397966 ((_ is Union!15161) (regTwo!30834 r!7292))) b!5399050))

(declare-fun b!5399051 () Bool)

(declare-fun e!3347698 () Bool)

(declare-fun tp!1494076 () Bool)

(declare-fun tp!1494077 () Bool)

(assert (=> b!5399051 (= e!3347698 (and tp!1494076 tp!1494077))))

(assert (=> b!5397985 (= tp!1493961 e!3347698)))

(assert (= (and b!5397985 ((_ is Cons!61658) (exprs!5045 (h!68108 zl!343)))) b!5399051))

(declare-fun b_lambda!206419 () Bool)

(assert (= b_lambda!206413 (or b!5398003 b_lambda!206419)))

(declare-fun bs!1248108 () Bool)

(declare-fun d!1724774 () Bool)

(assert (= bs!1248108 (and d!1724774 b!5398003)))

(assert (=> bs!1248108 (= (dynLambda!24300 lambda!280907 (h!68108 zl!343)) (derivationStepZipperUp!533 (h!68108 zl!343) (h!68107 s!2326)))))

(assert (=> bs!1248108 m!6422834))

(assert (=> d!1724684 d!1724774))

(declare-fun b_lambda!206421 () Bool)

(assert (= b_lambda!206415 (or b!5398003 b_lambda!206421)))

(declare-fun bs!1248109 () Bool)

(declare-fun d!1724776 () Bool)

(assert (= bs!1248109 (and d!1724776 b!5398003)))

(assert (=> bs!1248109 (= (dynLambda!24300 lambda!280907 lt!2200261) (derivationStepZipperUp!533 lt!2200261 (h!68107 s!2326)))))

(assert (=> bs!1248109 m!6422798))

(assert (=> d!1724716 d!1724776))

(declare-fun b_lambda!206423 () Bool)

(assert (= b_lambda!206411 (or b!5398003 b_lambda!206423)))

(declare-fun bs!1248110 () Bool)

(declare-fun d!1724778 () Bool)

(assert (= bs!1248110 (and d!1724778 b!5398003)))

(assert (=> bs!1248110 (= (dynLambda!24300 lambda!280907 lt!2200260) (derivationStepZipperUp!533 lt!2200260 (h!68107 s!2326)))))

(assert (=> bs!1248110 m!6422858))

(assert (=> d!1724678 d!1724778))

(declare-fun b_lambda!206425 () Bool)

(assert (= b_lambda!206393 (or b!5397998 b_lambda!206425)))

(declare-fun bs!1248111 () Bool)

(declare-fun d!1724780 () Bool)

(assert (= bs!1248111 (and d!1724780 b!5397998)))

(declare-fun lt!2200468 () Unit!154166)

(assert (=> bs!1248111 (= lt!2200468 (lemmaConcatPreservesForall!186 (exprs!5045 lt!2200261) lt!2200242 lambda!280909))))

(assert (=> bs!1248111 (= (dynLambda!24299 lambda!280908 lt!2200261) (Context!9091 (++!13495 (exprs!5045 lt!2200261) lt!2200242)))))

(declare-fun m!6423780 () Bool)

(assert (=> bs!1248111 m!6423780))

(declare-fun m!6423782 () Bool)

(assert (=> bs!1248111 m!6423782))

(assert (=> d!1724542 d!1724780))

(declare-fun b_lambda!206427 () Bool)

(assert (= b_lambda!206417 (or b!5398003 b_lambda!206427)))

(declare-fun bs!1248112 () Bool)

(declare-fun d!1724782 () Bool)

(assert (= bs!1248112 (and d!1724782 b!5398003)))

(assert (=> bs!1248112 (= (dynLambda!24300 lambda!280907 lt!2200273) (derivationStepZipperUp!533 lt!2200273 (h!68107 s!2326)))))

(assert (=> bs!1248112 m!6422790))

(assert (=> d!1724720 d!1724782))

(check-sat (not b!5398909) (not d!1724544) (not b_lambda!206421) (not bs!1248108) (not b!5399010) (not b!5398962) (not b!5398971) (not d!1724772) (not b!5398464) (not d!1724738) (not b!5398892) (not d!1724742) (not b!5398936) (not b!5398662) (not b!5398974) (not d!1724580) (not b!5398784) (not b!5398465) (not b!5398347) (not bm!386391) (not b!5398788) (not d!1724680) (not b!5399046) (not bm!386373) (not b!5399009) (not b!5398905) (not bm!386365) (not b!5398338) (not b!5399051) (not d!1724678) (not d!1724716) (not b!5398908) (not d!1724762) (not d!1724748) (not b!5398348) (not b!5398875) (not b!5398966) (not bm!386351) (not b!5398652) (not d!1724654) (not bm!386382) (not b!5398935) (not b!5398848) (not b!5398977) (not d!1724576) (not d!1724608) (not b!5398704) (not bm!386356) (not b!5398659) (not b!5398691) (not d!1724704) (not b!5398471) (not bs!1248110) (not b!5398964) (not bs!1248111) (not b!5398271) (not bm!386353) (not b!5398920) (not b!5398657) (not d!1724562) (not d!1724530) (not b!5398931) (not bm!386380) (not b!5398930) (not b!5399042) (not b!5398837) (not b!5398468) (not d!1724734) (not d!1724746) (not b!5398923) (not d!1724582) (not bm!386384) (not b!5398801) (not b!5398836) (not bs!1248109) (not b_lambda!206423) (not b!5399048) (not b!5398880) (not d!1724758) (not d!1724660) (not d!1724664) (not b!5399027) (not bm!386362) (not b_lambda!206427) (not b!5398185) (not b!5398208) (not b!5399037) (not b!5398204) (not b!5398597) (not d!1724662) (not b!5398829) (not b!5398804) (not d!1724764) (not bm!386368) (not setNonEmpty!35123) (not b!5399011) (not d!1724760) (not d!1724542) (not d!1724560) (not d!1724698) (not b!5398898) (not b!5398207) (not b!5398891) (not b!5398888) (not d!1724756) (not d!1724726) (not d!1724652) (not b!5398879) (not d!1724730) (not d!1724686) (not b!5399028) (not b!5398919) (not bm!386369) (not b!5398746) (not b!5398927) (not d!1724754) (not d!1724740) (not b!5398463) (not b!5398272) (not b!5399044) (not d!1724606) (not bm!386388) (not b_lambda!206419) (not b!5398958) (not b!5398776) (not b!5398895) (not b!5399016) (not bm!386372) (not b_lambda!206425) (not b!5399036) (not bm!386389) (not d!1724540) (not d!1724564) (not b!5398344) (not b!5399049) (not b!5398466) (not d!1724708) (not d!1724736) (not d!1724720) (not b!5398906) (not d!1724526) (not b!5398933) (not b!5398795) (not b!5398965) (not b!5398963) (not b!5398342) (not bm!386385) (not bm!386352) (not b!5398777) (not d!1724684) (not b!5398835) (not b!5398654) (not b!5398337) (not b!5398806) (not b!5398700) (not b!5398831) tp_is_empty!39575 (not bm!386361) (not d!1724718) (not d!1724532) (not d!1724524) (not bm!386383) (not b!5398934) (not b!5398981) (not b!5399025) (not d!1724658) (not b!5398345) (not d!1724694) (not b!5398996) (not d!1724702) (not b!5399024) (not b!5399050) (not b!5398984) (not b!5399029) (not b!5398203) (not b!5399021) (not b!5398343) (not b!5398653) (not d!1724722) (not d!1724768) (not bm!386336) (not b!5398902) (not b!5398832) (not bm!386337) (not b!5398645) (not b!5398917) (not b!5399045) (not b!5398787) (not b!5398894) (not b!5398992) (not b!5398341) (not d!1724724) (not b!5398598) (not bm!386390) (not d!1724752) (not bs!1248112) (not b!5398205) (not b!5398206) (not b!5398648) (not b!5398742) (not b!5398959) (not d!1724682) (not b!5398809) (not d!1724570) (not b!5398780) (not d!1724744) (not b!5398847) (not bm!386387) (not b!5398697) (not b!5398884) (not b!5398881) (not b!5398973) (not bm!386335) (not b!5399023) (not bm!386367) (not d!1724714) (not b!5398985))
(check-sat)

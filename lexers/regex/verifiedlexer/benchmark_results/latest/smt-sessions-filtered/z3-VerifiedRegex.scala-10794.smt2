; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!553686 () Bool)

(assert start!553686)

(declare-fun b!5237241 () Bool)

(assert (=> b!5237241 true))

(assert (=> b!5237241 true))

(declare-fun lambda!263288 () Int)

(declare-fun lambda!263287 () Int)

(assert (=> b!5237241 (not (= lambda!263288 lambda!263287))))

(assert (=> b!5237241 true))

(assert (=> b!5237241 true))

(declare-fun b!5237260 () Bool)

(assert (=> b!5237260 true))

(declare-fun b!5237234 () Bool)

(declare-fun e!3258912 () Bool)

(declare-fun tp_is_empty!38923 () Bool)

(declare-fun tp!1467014 () Bool)

(assert (=> b!5237234 (= e!3258912 (and tp_is_empty!38923 tp!1467014))))

(declare-fun b!5237235 () Bool)

(declare-fun e!3258908 () Bool)

(declare-fun e!3258923 () Bool)

(assert (=> b!5237235 (= e!3258908 (not e!3258923))))

(declare-fun res!2222980 () Bool)

(assert (=> b!5237235 (=> res!2222980 e!3258923)))

(declare-datatypes ((C!29940 0))(
  ( (C!29941 (val!24672 Int)) )
))
(declare-datatypes ((Regex!14835 0))(
  ( (ElementMatch!14835 (c!904915 C!29940)) (Concat!23680 (regOne!30182 Regex!14835) (regTwo!30182 Regex!14835)) (EmptyExpr!14835) (Star!14835 (reg!15164 Regex!14835)) (EmptyLang!14835) (Union!14835 (regOne!30183 Regex!14835) (regTwo!30183 Regex!14835)) )
))
(declare-datatypes ((List!60804 0))(
  ( (Nil!60680) (Cons!60680 (h!67128 Regex!14835) (t!373985 List!60804)) )
))
(declare-datatypes ((Context!8438 0))(
  ( (Context!8439 (exprs!4719 List!60804)) )
))
(declare-datatypes ((List!60805 0))(
  ( (Nil!60681) (Cons!60681 (h!67129 Context!8438) (t!373986 List!60805)) )
))
(declare-fun zl!343 () List!60805)

(get-info :version)

(assert (=> b!5237235 (= res!2222980 (not ((_ is Cons!60681) zl!343)))))

(declare-fun lt!2147231 () Bool)

(declare-fun r!7292 () Regex!14835)

(declare-datatypes ((List!60806 0))(
  ( (Nil!60682) (Cons!60682 (h!67130 C!29940) (t!373987 List!60806)) )
))
(declare-fun s!2326 () List!60806)

(declare-fun matchRSpec!1938 (Regex!14835 List!60806) Bool)

(assert (=> b!5237235 (= lt!2147231 (matchRSpec!1938 r!7292 s!2326))))

(declare-fun matchR!7020 (Regex!14835 List!60806) Bool)

(assert (=> b!5237235 (= lt!2147231 (matchR!7020 r!7292 s!2326))))

(declare-datatypes ((Unit!152694 0))(
  ( (Unit!152695) )
))
(declare-fun lt!2147234 () Unit!152694)

(declare-fun mainMatchTheorem!1938 (Regex!14835 List!60806) Unit!152694)

(assert (=> b!5237235 (= lt!2147234 (mainMatchTheorem!1938 r!7292 s!2326))))

(declare-fun b!5237236 () Bool)

(declare-fun e!3258904 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2147226 () (InoxSet Context!8438))

(declare-fun matchZipper!1079 ((InoxSet Context!8438) List!60806) Bool)

(assert (=> b!5237236 (= e!3258904 (not (matchZipper!1079 lt!2147226 (t!373987 s!2326))))))

(declare-fun b!5237237 () Bool)

(declare-fun e!3258902 () Bool)

(assert (=> b!5237237 (= e!3258902 true)))

(declare-fun lt!2147263 () Bool)

(declare-fun lt!2147232 () Regex!14835)

(assert (=> b!5237237 (= lt!2147263 (matchRSpec!1938 lt!2147232 s!2326))))

(declare-fun lt!2147237 () Unit!152694)

(assert (=> b!5237237 (= lt!2147237 (mainMatchTheorem!1938 lt!2147232 s!2326))))

(declare-fun lt!2147241 () Regex!14835)

(declare-fun lt!2147258 () (InoxSet Context!8438))

(assert (=> b!5237237 (= (matchR!7020 lt!2147241 s!2326) (matchZipper!1079 lt!2147258 s!2326))))

(declare-fun lt!2147236 () Unit!152694)

(declare-fun lt!2147257 () List!60805)

(declare-fun theoremZipperRegexEquiv!269 ((InoxSet Context!8438) List!60805 Regex!14835 List!60806) Unit!152694)

(assert (=> b!5237237 (= lt!2147236 (theoremZipperRegexEquiv!269 lt!2147258 lt!2147257 lt!2147241 s!2326))))

(declare-fun lt!2147238 () List!60804)

(declare-fun generalisedConcat!504 (List!60804) Regex!14835)

(assert (=> b!5237237 (= lt!2147241 (generalisedConcat!504 lt!2147238))))

(declare-fun lt!2147245 () Bool)

(assert (=> b!5237237 (= lt!2147263 lt!2147245)))

(assert (=> b!5237237 (= lt!2147263 (matchR!7020 lt!2147232 s!2326))))

(declare-fun lt!2147242 () List!60805)

(declare-fun lt!2147262 () Unit!152694)

(declare-fun lt!2147255 () (InoxSet Context!8438))

(assert (=> b!5237237 (= lt!2147262 (theoremZipperRegexEquiv!269 lt!2147255 lt!2147242 lt!2147232 s!2326))))

(declare-fun lt!2147250 () List!60804)

(assert (=> b!5237237 (= lt!2147232 (generalisedConcat!504 lt!2147250))))

(declare-fun b!5237238 () Bool)

(declare-fun e!3258910 () Bool)

(declare-fun lt!2147235 () (InoxSet Context!8438))

(assert (=> b!5237238 (= e!3258910 (matchZipper!1079 lt!2147235 (t!373987 s!2326)))))

(declare-fun b!5237239 () Bool)

(declare-fun res!2222976 () Bool)

(declare-fun e!3258909 () Bool)

(assert (=> b!5237239 (=> (not res!2222976) (not e!3258909))))

(declare-fun z!1189 () (InoxSet Context!8438))

(declare-fun toList!8619 ((InoxSet Context!8438)) List!60805)

(assert (=> b!5237239 (= res!2222976 (= (toList!8619 z!1189) zl!343))))

(declare-fun b!5237240 () Bool)

(declare-fun e!3258903 () Unit!152694)

(declare-fun Unit!152696 () Unit!152694)

(assert (=> b!5237240 (= e!3258903 Unit!152696)))

(declare-fun e!3258901 () Bool)

(assert (=> b!5237241 (= e!3258923 e!3258901)))

(declare-fun res!2222965 () Bool)

(assert (=> b!5237241 (=> res!2222965 e!3258901)))

(declare-fun lt!2147254 () Bool)

(assert (=> b!5237241 (= res!2222965 (or (not (= lt!2147231 lt!2147254)) ((_ is Nil!60682) s!2326)))))

(declare-fun Exists!2016 (Int) Bool)

(assert (=> b!5237241 (= (Exists!2016 lambda!263287) (Exists!2016 lambda!263288))))

(declare-fun lt!2147243 () Unit!152694)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!670 (Regex!14835 Regex!14835 List!60806) Unit!152694)

(assert (=> b!5237241 (= lt!2147243 (lemmaExistCutMatchRandMatchRSpecEquivalent!670 (regOne!30182 r!7292) (regTwo!30182 r!7292) s!2326))))

(assert (=> b!5237241 (= lt!2147254 (Exists!2016 lambda!263287))))

(declare-datatypes ((tuple2!64068 0))(
  ( (tuple2!64069 (_1!35337 List!60806) (_2!35337 List!60806)) )
))
(declare-datatypes ((Option!14946 0))(
  ( (None!14945) (Some!14945 (v!50974 tuple2!64068)) )
))
(declare-fun isDefined!11649 (Option!14946) Bool)

(declare-fun findConcatSeparation!1360 (Regex!14835 Regex!14835 List!60806 List!60806 List!60806) Option!14946)

(assert (=> b!5237241 (= lt!2147254 (isDefined!11649 (findConcatSeparation!1360 (regOne!30182 r!7292) (regTwo!30182 r!7292) Nil!60682 s!2326 s!2326)))))

(declare-fun lt!2147240 () Unit!152694)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1124 (Regex!14835 Regex!14835 List!60806) Unit!152694)

(assert (=> b!5237241 (= lt!2147240 (lemmaFindConcatSeparationEquivalentToExists!1124 (regOne!30182 r!7292) (regTwo!30182 r!7292) s!2326))))

(declare-fun b!5237242 () Bool)

(declare-fun e!3258920 () Bool)

(declare-fun tp!1467021 () Bool)

(assert (=> b!5237242 (= e!3258920 tp!1467021)))

(declare-fun b!5237243 () Bool)

(declare-fun e!3258924 () Bool)

(assert (=> b!5237243 (= e!3258924 (matchZipper!1079 lt!2147226 (t!373987 s!2326)))))

(declare-fun b!5237244 () Bool)

(declare-fun e!3258922 () Bool)

(declare-fun e!3258917 () Bool)

(assert (=> b!5237244 (= e!3258922 e!3258917)))

(declare-fun res!2222974 () Bool)

(assert (=> b!5237244 (=> res!2222974 e!3258917)))

(assert (=> b!5237244 (= res!2222974 e!3258904)))

(declare-fun res!2222978 () Bool)

(assert (=> b!5237244 (=> (not res!2222978) (not e!3258904))))

(declare-fun lt!2147252 () (InoxSet Context!8438))

(declare-fun lt!2147229 () Bool)

(assert (=> b!5237244 (= res!2222978 (not (= (matchZipper!1079 lt!2147252 (t!373987 s!2326)) lt!2147229)))))

(declare-fun lt!2147225 () (InoxSet Context!8438))

(assert (=> b!5237244 (= (matchZipper!1079 lt!2147225 (t!373987 s!2326)) e!3258924)))

(declare-fun res!2222964 () Bool)

(assert (=> b!5237244 (=> res!2222964 e!3258924)))

(assert (=> b!5237244 (= res!2222964 lt!2147229)))

(declare-fun lt!2147244 () (InoxSet Context!8438))

(assert (=> b!5237244 (= lt!2147229 (matchZipper!1079 lt!2147244 (t!373987 s!2326)))))

(declare-fun lt!2147230 () Unit!152694)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!72 ((InoxSet Context!8438) (InoxSet Context!8438) List!60806) Unit!152694)

(assert (=> b!5237244 (= lt!2147230 (lemmaZipperConcatMatchesSameAsBothZippers!72 lt!2147244 lt!2147226 (t!373987 s!2326)))))

(declare-fun b!5237245 () Bool)

(declare-fun res!2222967 () Bool)

(declare-fun e!3258914 () Bool)

(assert (=> b!5237245 (=> res!2222967 e!3258914)))

(declare-fun lt!2147224 () Regex!14835)

(assert (=> b!5237245 (= res!2222967 (or (not (= lt!2147224 r!7292)) (not (= (exprs!4719 (h!67129 zl!343)) (Cons!60680 (regOne!30182 r!7292) (t!373985 (exprs!4719 (h!67129 zl!343))))))))))

(declare-fun b!5237246 () Bool)

(declare-fun res!2222969 () Bool)

(assert (=> b!5237246 (=> res!2222969 e!3258923)))

(declare-fun isEmpty!32607 (List!60805) Bool)

(assert (=> b!5237246 (= res!2222969 (not (isEmpty!32607 (t!373986 zl!343))))))

(declare-fun b!5237247 () Bool)

(declare-fun res!2222973 () Bool)

(assert (=> b!5237247 (=> res!2222973 e!3258923)))

(assert (=> b!5237247 (= res!2222973 (not ((_ is Cons!60680) (exprs!4719 (h!67129 zl!343)))))))

(declare-fun res!2222971 () Bool)

(assert (=> start!553686 (=> (not res!2222971) (not e!3258909))))

(declare-fun validRegex!6571 (Regex!14835) Bool)

(assert (=> start!553686 (= res!2222971 (validRegex!6571 r!7292))))

(assert (=> start!553686 e!3258909))

(declare-fun e!3258919 () Bool)

(assert (=> start!553686 e!3258919))

(declare-fun condSetEmpty!33389 () Bool)

(assert (=> start!553686 (= condSetEmpty!33389 (= z!1189 ((as const (Array Context!8438 Bool)) false)))))

(declare-fun setRes!33389 () Bool)

(assert (=> start!553686 setRes!33389))

(declare-fun e!3258916 () Bool)

(assert (=> start!553686 e!3258916))

(assert (=> start!553686 e!3258912))

(declare-fun b!5237248 () Bool)

(declare-fun e!3258913 () Bool)

(assert (=> b!5237248 (= e!3258913 (matchZipper!1079 lt!2147235 (t!373987 s!2326)))))

(declare-fun setElem!33389 () Context!8438)

(declare-fun setNonEmpty!33389 () Bool)

(declare-fun tp!1467019 () Bool)

(declare-fun inv!80334 (Context!8438) Bool)

(assert (=> setNonEmpty!33389 (= setRes!33389 (and tp!1467019 (inv!80334 setElem!33389) e!3258920))))

(declare-fun setRest!33389 () (InoxSet Context!8438))

(assert (=> setNonEmpty!33389 (= z!1189 ((_ map or) (store ((as const (Array Context!8438 Bool)) false) setElem!33389 true) setRest!33389))))

(declare-fun b!5237249 () Bool)

(assert (=> b!5237249 (= e!3258919 tp_is_empty!38923)))

(declare-fun b!5237250 () Bool)

(declare-fun res!2222962 () Bool)

(assert (=> b!5237250 (=> res!2222962 e!3258923)))

(declare-fun generalisedUnion!764 (List!60804) Regex!14835)

(declare-fun unfocusZipperList!277 (List!60805) List!60804)

(assert (=> b!5237250 (= res!2222962 (not (= r!7292 (generalisedUnion!764 (unfocusZipperList!277 zl!343)))))))

(declare-fun b!5237251 () Bool)

(declare-fun e!3258905 () Bool)

(declare-fun tp!1467012 () Bool)

(assert (=> b!5237251 (= e!3258916 (and (inv!80334 (h!67129 zl!343)) e!3258905 tp!1467012))))

(declare-fun b!5237252 () Bool)

(declare-fun e!3258921 () Bool)

(assert (=> b!5237252 (= e!3258921 (matchZipper!1079 lt!2147258 s!2326))))

(declare-fun b!5237253 () Bool)

(declare-fun e!3258907 () Bool)

(assert (=> b!5237253 (= e!3258914 e!3258907)))

(declare-fun res!2222966 () Bool)

(assert (=> b!5237253 (=> res!2222966 e!3258907)))

(declare-fun lt!2147264 () Int)

(declare-fun lt!2147260 () Int)

(assert (=> b!5237253 (= res!2222966 (>= lt!2147264 lt!2147260))))

(declare-fun zipperDepthTotal!16 (List!60805) Int)

(assert (=> b!5237253 (= lt!2147260 (zipperDepthTotal!16 zl!343))))

(assert (=> b!5237253 (= lt!2147264 (zipperDepthTotal!16 lt!2147242))))

(declare-fun lt!2147246 () Context!8438)

(assert (=> b!5237253 (= lt!2147242 (Cons!60681 lt!2147246 Nil!60681))))

(declare-fun b!5237254 () Bool)

(declare-fun e!3258918 () Unit!152694)

(declare-fun Unit!152697 () Unit!152694)

(assert (=> b!5237254 (= e!3258918 Unit!152697)))

(declare-fun b!5237255 () Bool)

(declare-fun res!2222977 () Bool)

(assert (=> b!5237255 (=> res!2222977 e!3258923)))

(assert (=> b!5237255 (= res!2222977 (not (= r!7292 (generalisedConcat!504 (exprs!4719 (h!67129 zl!343))))))))

(declare-fun b!5237256 () Bool)

(declare-fun e!3258915 () Bool)

(assert (=> b!5237256 (= e!3258915 e!3258922)))

(declare-fun res!2222981 () Bool)

(assert (=> b!5237256 (=> res!2222981 e!3258922)))

(assert (=> b!5237256 (= res!2222981 (not (= lt!2147252 lt!2147225)))))

(assert (=> b!5237256 (= lt!2147225 ((_ map or) lt!2147244 lt!2147226))))

(declare-fun lt!2147228 () Context!8438)

(declare-fun derivationStepZipperDown!283 (Regex!14835 Context!8438 C!29940) (InoxSet Context!8438))

(assert (=> b!5237256 (= lt!2147226 (derivationStepZipperDown!283 (regTwo!30183 (regOne!30182 r!7292)) lt!2147228 (h!67130 s!2326)))))

(assert (=> b!5237256 (= lt!2147244 (derivationStepZipperDown!283 (regOne!30183 (regOne!30182 r!7292)) lt!2147228 (h!67130 s!2326)))))

(declare-fun b!5237257 () Bool)

(declare-fun tp!1467017 () Bool)

(declare-fun tp!1467015 () Bool)

(assert (=> b!5237257 (= e!3258919 (and tp!1467017 tp!1467015))))

(declare-fun b!5237258 () Bool)

(declare-fun Unit!152698 () Unit!152694)

(assert (=> b!5237258 (= e!3258903 Unit!152698)))

(declare-fun lt!2147259 () Unit!152694)

(assert (=> b!5237258 (= lt!2147259 (lemmaZipperConcatMatchesSameAsBothZippers!72 lt!2147244 lt!2147235 (t!373987 s!2326)))))

(declare-fun res!2222960 () Bool)

(assert (=> b!5237258 (= res!2222960 lt!2147229)))

(assert (=> b!5237258 (=> res!2222960 e!3258910)))

(assert (=> b!5237258 (= (matchZipper!1079 ((_ map or) lt!2147244 lt!2147235) (t!373987 s!2326)) e!3258910)))

(declare-fun b!5237259 () Bool)

(assert (=> b!5237259 (= e!3258909 e!3258908)))

(declare-fun res!2222970 () Bool)

(assert (=> b!5237259 (=> (not res!2222970) (not e!3258908))))

(assert (=> b!5237259 (= res!2222970 (= r!7292 lt!2147224))))

(declare-fun unfocusZipper!577 (List!60805) Regex!14835)

(assert (=> b!5237259 (= lt!2147224 (unfocusZipper!577 zl!343))))

(assert (=> b!5237260 (= e!3258901 e!3258915)))

(declare-fun res!2222975 () Bool)

(assert (=> b!5237260 (=> res!2222975 e!3258915)))

(assert (=> b!5237260 (= res!2222975 (or (and ((_ is ElementMatch!14835) (regOne!30182 r!7292)) (= (c!904915 (regOne!30182 r!7292)) (h!67130 s!2326))) (not ((_ is Union!14835) (regOne!30182 r!7292)))))))

(declare-fun lt!2147253 () Unit!152694)

(declare-fun e!3258906 () Unit!152694)

(assert (=> b!5237260 (= lt!2147253 e!3258906)))

(declare-fun c!904913 () Bool)

(declare-fun nullable!5004 (Regex!14835) Bool)

(assert (=> b!5237260 (= c!904913 (nullable!5004 (h!67128 (exprs!4719 (h!67129 zl!343)))))))

(declare-fun lambda!263289 () Int)

(declare-fun flatMap!562 ((InoxSet Context!8438) Int) (InoxSet Context!8438))

(declare-fun derivationStepZipperUp!207 (Context!8438 C!29940) (InoxSet Context!8438))

(assert (=> b!5237260 (= (flatMap!562 z!1189 lambda!263289) (derivationStepZipperUp!207 (h!67129 zl!343) (h!67130 s!2326)))))

(declare-fun lt!2147248 () Unit!152694)

(declare-fun lemmaFlatMapOnSingletonSet!94 ((InoxSet Context!8438) Context!8438 Int) Unit!152694)

(assert (=> b!5237260 (= lt!2147248 (lemmaFlatMapOnSingletonSet!94 z!1189 (h!67129 zl!343) lambda!263289))))

(assert (=> b!5237260 (= lt!2147235 (derivationStepZipperUp!207 lt!2147228 (h!67130 s!2326)))))

(assert (=> b!5237260 (= lt!2147252 (derivationStepZipperDown!283 (h!67128 (exprs!4719 (h!67129 zl!343))) lt!2147228 (h!67130 s!2326)))))

(assert (=> b!5237260 (= lt!2147228 (Context!8439 (t!373985 (exprs!4719 (h!67129 zl!343)))))))

(declare-fun lt!2147233 () (InoxSet Context!8438))

(assert (=> b!5237260 (= lt!2147233 (derivationStepZipperUp!207 (Context!8439 (Cons!60680 (h!67128 (exprs!4719 (h!67129 zl!343))) (t!373985 (exprs!4719 (h!67129 zl!343))))) (h!67130 s!2326)))))

(declare-fun b!5237261 () Bool)

(declare-fun Unit!152699 () Unit!152694)

(assert (=> b!5237261 (= e!3258918 Unit!152699)))

(declare-fun lt!2147261 () Unit!152694)

(assert (=> b!5237261 (= lt!2147261 (lemmaZipperConcatMatchesSameAsBothZippers!72 lt!2147226 lt!2147235 (t!373987 s!2326)))))

(declare-fun res!2222968 () Bool)

(assert (=> b!5237261 (= res!2222968 (matchZipper!1079 lt!2147226 (t!373987 s!2326)))))

(declare-fun e!3258911 () Bool)

(assert (=> b!5237261 (=> res!2222968 e!3258911)))

(assert (=> b!5237261 (= (matchZipper!1079 ((_ map or) lt!2147226 lt!2147235) (t!373987 s!2326)) e!3258911)))

(declare-fun b!5237262 () Bool)

(assert (=> b!5237262 (= e!3258911 (matchZipper!1079 lt!2147235 (t!373987 s!2326)))))

(declare-fun b!5237263 () Bool)

(declare-fun tp!1467016 () Bool)

(declare-fun tp!1467020 () Bool)

(assert (=> b!5237263 (= e!3258919 (and tp!1467016 tp!1467020))))

(declare-fun b!5237264 () Bool)

(declare-fun res!2222979 () Bool)

(assert (=> b!5237264 (=> res!2222979 e!3258901)))

(declare-fun isEmpty!32608 (List!60804) Bool)

(assert (=> b!5237264 (= res!2222979 (isEmpty!32608 (t!373985 (exprs!4719 (h!67129 zl!343)))))))

(declare-fun b!5237265 () Bool)

(assert (=> b!5237265 (= e!3258907 e!3258902)))

(declare-fun res!2222972 () Bool)

(assert (=> b!5237265 (=> res!2222972 e!3258902)))

(assert (=> b!5237265 (= res!2222972 (>= (zipperDepthTotal!16 lt!2147257) lt!2147260))))

(declare-fun lt!2147265 () Context!8438)

(assert (=> b!5237265 (= lt!2147257 (Cons!60681 lt!2147265 Nil!60681))))

(declare-fun setIsEmpty!33389 () Bool)

(assert (=> setIsEmpty!33389 setRes!33389))

(declare-fun b!5237266 () Bool)

(declare-fun Unit!152700 () Unit!152694)

(assert (=> b!5237266 (= e!3258906 Unit!152700)))

(declare-fun b!5237267 () Bool)

(declare-fun tp!1467013 () Bool)

(assert (=> b!5237267 (= e!3258919 tp!1467013)))

(declare-fun b!5237268 () Bool)

(assert (=> b!5237268 (= e!3258917 e!3258914)))

(declare-fun res!2222959 () Bool)

(assert (=> b!5237268 (=> res!2222959 e!3258914)))

(assert (=> b!5237268 (= res!2222959 (not (= (matchZipper!1079 z!1189 s!2326) e!3258921)))))

(declare-fun res!2222961 () Bool)

(assert (=> b!5237268 (=> res!2222961 e!3258921)))

(assert (=> b!5237268 (= res!2222961 lt!2147245)))

(assert (=> b!5237268 (= lt!2147245 (matchZipper!1079 lt!2147255 s!2326))))

(declare-fun lt!2147247 () Unit!152694)

(assert (=> b!5237268 (= lt!2147247 e!3258918)))

(declare-fun c!904912 () Bool)

(assert (=> b!5237268 (= c!904912 (nullable!5004 (regTwo!30183 (regOne!30182 r!7292))))))

(assert (=> b!5237268 (= (flatMap!562 lt!2147258 lambda!263289) (derivationStepZipperUp!207 lt!2147265 (h!67130 s!2326)))))

(declare-fun lt!2147249 () Unit!152694)

(assert (=> b!5237268 (= lt!2147249 (lemmaFlatMapOnSingletonSet!94 lt!2147258 lt!2147265 lambda!263289))))

(declare-fun lt!2147239 () (InoxSet Context!8438))

(assert (=> b!5237268 (= lt!2147239 (derivationStepZipperUp!207 lt!2147265 (h!67130 s!2326)))))

(declare-fun lt!2147251 () Unit!152694)

(assert (=> b!5237268 (= lt!2147251 e!3258903)))

(declare-fun c!904914 () Bool)

(assert (=> b!5237268 (= c!904914 (nullable!5004 (regOne!30183 (regOne!30182 r!7292))))))

(assert (=> b!5237268 (= (flatMap!562 lt!2147255 lambda!263289) (derivationStepZipperUp!207 lt!2147246 (h!67130 s!2326)))))

(declare-fun lt!2147256 () Unit!152694)

(assert (=> b!5237268 (= lt!2147256 (lemmaFlatMapOnSingletonSet!94 lt!2147255 lt!2147246 lambda!263289))))

(declare-fun lt!2147266 () (InoxSet Context!8438))

(assert (=> b!5237268 (= lt!2147266 (derivationStepZipperUp!207 lt!2147246 (h!67130 s!2326)))))

(assert (=> b!5237268 (= lt!2147258 (store ((as const (Array Context!8438 Bool)) false) lt!2147265 true))))

(assert (=> b!5237268 (= lt!2147265 (Context!8439 lt!2147238))))

(assert (=> b!5237268 (= lt!2147238 (Cons!60680 (regTwo!30183 (regOne!30182 r!7292)) (t!373985 (exprs!4719 (h!67129 zl!343)))))))

(assert (=> b!5237268 (= lt!2147255 (store ((as const (Array Context!8438 Bool)) false) lt!2147246 true))))

(assert (=> b!5237268 (= lt!2147246 (Context!8439 lt!2147250))))

(assert (=> b!5237268 (= lt!2147250 (Cons!60680 (regOne!30183 (regOne!30182 r!7292)) (t!373985 (exprs!4719 (h!67129 zl!343)))))))

(declare-fun b!5237269 () Bool)

(declare-fun res!2222958 () Bool)

(assert (=> b!5237269 (=> res!2222958 e!3258923)))

(assert (=> b!5237269 (= res!2222958 (or ((_ is EmptyExpr!14835) r!7292) ((_ is EmptyLang!14835) r!7292) ((_ is ElementMatch!14835) r!7292) ((_ is Union!14835) r!7292) (not ((_ is Concat!23680) r!7292))))))

(declare-fun b!5237270 () Bool)

(declare-fun Unit!152701 () Unit!152694)

(assert (=> b!5237270 (= e!3258906 Unit!152701)))

(declare-fun lt!2147227 () Unit!152694)

(assert (=> b!5237270 (= lt!2147227 (lemmaZipperConcatMatchesSameAsBothZippers!72 lt!2147252 lt!2147235 (t!373987 s!2326)))))

(declare-fun res!2222963 () Bool)

(assert (=> b!5237270 (= res!2222963 (matchZipper!1079 lt!2147252 (t!373987 s!2326)))))

(assert (=> b!5237270 (=> res!2222963 e!3258913)))

(assert (=> b!5237270 (= (matchZipper!1079 ((_ map or) lt!2147252 lt!2147235) (t!373987 s!2326)) e!3258913)))

(declare-fun b!5237271 () Bool)

(declare-fun tp!1467018 () Bool)

(assert (=> b!5237271 (= e!3258905 tp!1467018)))

(assert (= (and start!553686 res!2222971) b!5237239))

(assert (= (and b!5237239 res!2222976) b!5237259))

(assert (= (and b!5237259 res!2222970) b!5237235))

(assert (= (and b!5237235 (not res!2222980)) b!5237246))

(assert (= (and b!5237246 (not res!2222969)) b!5237255))

(assert (= (and b!5237255 (not res!2222977)) b!5237247))

(assert (= (and b!5237247 (not res!2222973)) b!5237250))

(assert (= (and b!5237250 (not res!2222962)) b!5237269))

(assert (= (and b!5237269 (not res!2222958)) b!5237241))

(assert (= (and b!5237241 (not res!2222965)) b!5237264))

(assert (= (and b!5237264 (not res!2222979)) b!5237260))

(assert (= (and b!5237260 c!904913) b!5237270))

(assert (= (and b!5237260 (not c!904913)) b!5237266))

(assert (= (and b!5237270 (not res!2222963)) b!5237248))

(assert (= (and b!5237260 (not res!2222975)) b!5237256))

(assert (= (and b!5237256 (not res!2222981)) b!5237244))

(assert (= (and b!5237244 (not res!2222964)) b!5237243))

(assert (= (and b!5237244 res!2222978) b!5237236))

(assert (= (and b!5237244 (not res!2222974)) b!5237268))

(assert (= (and b!5237268 c!904914) b!5237258))

(assert (= (and b!5237268 (not c!904914)) b!5237240))

(assert (= (and b!5237258 (not res!2222960)) b!5237238))

(assert (= (and b!5237268 c!904912) b!5237261))

(assert (= (and b!5237268 (not c!904912)) b!5237254))

(assert (= (and b!5237261 (not res!2222968)) b!5237262))

(assert (= (and b!5237268 (not res!2222961)) b!5237252))

(assert (= (and b!5237268 (not res!2222959)) b!5237245))

(assert (= (and b!5237245 (not res!2222967)) b!5237253))

(assert (= (and b!5237253 (not res!2222966)) b!5237265))

(assert (= (and b!5237265 (not res!2222972)) b!5237237))

(assert (= (and start!553686 ((_ is ElementMatch!14835) r!7292)) b!5237249))

(assert (= (and start!553686 ((_ is Concat!23680) r!7292)) b!5237257))

(assert (= (and start!553686 ((_ is Star!14835) r!7292)) b!5237267))

(assert (= (and start!553686 ((_ is Union!14835) r!7292)) b!5237263))

(assert (= (and start!553686 condSetEmpty!33389) setIsEmpty!33389))

(assert (= (and start!553686 (not condSetEmpty!33389)) setNonEmpty!33389))

(assert (= setNonEmpty!33389 b!5237242))

(assert (= b!5237251 b!5237271))

(assert (= (and start!553686 ((_ is Cons!60681) zl!343)) b!5237251))

(assert (= (and start!553686 ((_ is Cons!60682) s!2326)) b!5237234))

(declare-fun m!6282288 () Bool)

(assert (=> b!5237246 m!6282288))

(declare-fun m!6282290 () Bool)

(assert (=> b!5237243 m!6282290))

(declare-fun m!6282292 () Bool)

(assert (=> b!5237259 m!6282292))

(declare-fun m!6282294 () Bool)

(assert (=> b!5237256 m!6282294))

(declare-fun m!6282296 () Bool)

(assert (=> b!5237256 m!6282296))

(declare-fun m!6282298 () Bool)

(assert (=> b!5237261 m!6282298))

(assert (=> b!5237261 m!6282290))

(declare-fun m!6282300 () Bool)

(assert (=> b!5237261 m!6282300))

(declare-fun m!6282302 () Bool)

(assert (=> b!5237251 m!6282302))

(declare-fun m!6282304 () Bool)

(assert (=> b!5237248 m!6282304))

(declare-fun m!6282306 () Bool)

(assert (=> b!5237252 m!6282306))

(declare-fun m!6282308 () Bool)

(assert (=> b!5237250 m!6282308))

(assert (=> b!5237250 m!6282308))

(declare-fun m!6282310 () Bool)

(assert (=> b!5237250 m!6282310))

(declare-fun m!6282312 () Bool)

(assert (=> b!5237258 m!6282312))

(declare-fun m!6282314 () Bool)

(assert (=> b!5237258 m!6282314))

(declare-fun m!6282316 () Bool)

(assert (=> b!5237253 m!6282316))

(declare-fun m!6282318 () Bool)

(assert (=> b!5237253 m!6282318))

(declare-fun m!6282320 () Bool)

(assert (=> b!5237260 m!6282320))

(declare-fun m!6282322 () Bool)

(assert (=> b!5237260 m!6282322))

(declare-fun m!6282324 () Bool)

(assert (=> b!5237260 m!6282324))

(declare-fun m!6282326 () Bool)

(assert (=> b!5237260 m!6282326))

(declare-fun m!6282328 () Bool)

(assert (=> b!5237260 m!6282328))

(declare-fun m!6282330 () Bool)

(assert (=> b!5237260 m!6282330))

(declare-fun m!6282332 () Bool)

(assert (=> b!5237260 m!6282332))

(declare-fun m!6282334 () Bool)

(assert (=> setNonEmpty!33389 m!6282334))

(declare-fun m!6282336 () Bool)

(assert (=> start!553686 m!6282336))

(declare-fun m!6282338 () Bool)

(assert (=> b!5237235 m!6282338))

(declare-fun m!6282340 () Bool)

(assert (=> b!5237235 m!6282340))

(declare-fun m!6282342 () Bool)

(assert (=> b!5237235 m!6282342))

(assert (=> b!5237238 m!6282304))

(declare-fun m!6282344 () Bool)

(assert (=> b!5237264 m!6282344))

(declare-fun m!6282346 () Bool)

(assert (=> b!5237241 m!6282346))

(assert (=> b!5237241 m!6282346))

(declare-fun m!6282348 () Bool)

(assert (=> b!5237241 m!6282348))

(declare-fun m!6282350 () Bool)

(assert (=> b!5237241 m!6282350))

(declare-fun m!6282352 () Bool)

(assert (=> b!5237241 m!6282352))

(declare-fun m!6282354 () Bool)

(assert (=> b!5237241 m!6282354))

(assert (=> b!5237241 m!6282350))

(declare-fun m!6282356 () Bool)

(assert (=> b!5237241 m!6282356))

(declare-fun m!6282358 () Bool)

(assert (=> b!5237265 m!6282358))

(assert (=> b!5237236 m!6282290))

(declare-fun m!6282360 () Bool)

(assert (=> b!5237239 m!6282360))

(declare-fun m!6282362 () Bool)

(assert (=> b!5237268 m!6282362))

(declare-fun m!6282364 () Bool)

(assert (=> b!5237268 m!6282364))

(declare-fun m!6282366 () Bool)

(assert (=> b!5237268 m!6282366))

(declare-fun m!6282368 () Bool)

(assert (=> b!5237268 m!6282368))

(declare-fun m!6282370 () Bool)

(assert (=> b!5237268 m!6282370))

(declare-fun m!6282372 () Bool)

(assert (=> b!5237268 m!6282372))

(declare-fun m!6282374 () Bool)

(assert (=> b!5237268 m!6282374))

(declare-fun m!6282376 () Bool)

(assert (=> b!5237268 m!6282376))

(declare-fun m!6282378 () Bool)

(assert (=> b!5237268 m!6282378))

(declare-fun m!6282380 () Bool)

(assert (=> b!5237268 m!6282380))

(declare-fun m!6282382 () Bool)

(assert (=> b!5237268 m!6282382))

(declare-fun m!6282384 () Bool)

(assert (=> b!5237268 m!6282384))

(declare-fun m!6282386 () Bool)

(assert (=> b!5237237 m!6282386))

(declare-fun m!6282388 () Bool)

(assert (=> b!5237237 m!6282388))

(declare-fun m!6282390 () Bool)

(assert (=> b!5237237 m!6282390))

(declare-fun m!6282392 () Bool)

(assert (=> b!5237237 m!6282392))

(declare-fun m!6282394 () Bool)

(assert (=> b!5237237 m!6282394))

(declare-fun m!6282396 () Bool)

(assert (=> b!5237237 m!6282396))

(declare-fun m!6282398 () Bool)

(assert (=> b!5237237 m!6282398))

(assert (=> b!5237237 m!6282306))

(declare-fun m!6282400 () Bool)

(assert (=> b!5237237 m!6282400))

(declare-fun m!6282402 () Bool)

(assert (=> b!5237255 m!6282402))

(declare-fun m!6282404 () Bool)

(assert (=> b!5237270 m!6282404))

(declare-fun m!6282406 () Bool)

(assert (=> b!5237270 m!6282406))

(declare-fun m!6282408 () Bool)

(assert (=> b!5237270 m!6282408))

(assert (=> b!5237262 m!6282304))

(assert (=> b!5237244 m!6282406))

(declare-fun m!6282410 () Bool)

(assert (=> b!5237244 m!6282410))

(declare-fun m!6282412 () Bool)

(assert (=> b!5237244 m!6282412))

(declare-fun m!6282414 () Bool)

(assert (=> b!5237244 m!6282414))

(check-sat (not b!5237251) (not b!5237256) (not b!5237260) (not b!5237271) (not b!5237236) (not b!5237250) tp_is_empty!38923 (not b!5237257) (not b!5237252) (not b!5237265) (not b!5237268) (not b!5237258) (not start!553686) (not b!5237246) (not setNonEmpty!33389) (not b!5237263) (not b!5237259) (not b!5237270) (not b!5237235) (not b!5237238) (not b!5237241) (not b!5237264) (not b!5237243) (not b!5237234) (not b!5237242) (not b!5237248) (not b!5237267) (not b!5237237) (not b!5237255) (not b!5237253) (not b!5237261) (not b!5237239) (not b!5237244) (not b!5237262))
(check-sat)

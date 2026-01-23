; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!658828 () Bool)

(assert start!658828)

(declare-fun b!6806054 () Bool)

(assert (=> b!6806054 true))

(assert (=> b!6806054 true))

(declare-fun lambda!384159 () Int)

(declare-fun lambda!384158 () Int)

(assert (=> b!6806054 (not (= lambda!384159 lambda!384158))))

(assert (=> b!6806054 true))

(assert (=> b!6806054 true))

(declare-fun lambda!384160 () Int)

(assert (=> b!6806054 (not (= lambda!384160 lambda!384158))))

(assert (=> b!6806054 (not (= lambda!384160 lambda!384159))))

(assert (=> b!6806054 true))

(assert (=> b!6806054 true))

(declare-fun b!6806060 () Bool)

(assert (=> b!6806060 true))

(declare-fun b!6806063 () Bool)

(assert (=> b!6806063 true))

(declare-fun b!6806043 () Bool)

(declare-fun e!4107100 () Bool)

(declare-fun lt!2449234 () Bool)

(assert (=> b!6806043 (= e!4107100 lt!2449234)))

(declare-fun b!6806044 () Bool)

(declare-fun e!4107098 () Bool)

(declare-fun e!4107106 () Bool)

(assert (=> b!6806044 (= e!4107098 e!4107106)))

(declare-fun res!2781277 () Bool)

(assert (=> b!6806044 (=> (not res!2781277) (not e!4107106))))

(declare-datatypes ((C!33524 0))(
  ( (C!33525 (val!26464 Int)) )
))
(declare-datatypes ((Regex!16627 0))(
  ( (ElementMatch!16627 (c!1265821 C!33524)) (Concat!25472 (regOne!33766 Regex!16627) (regTwo!33766 Regex!16627)) (EmptyExpr!16627) (Star!16627 (reg!16956 Regex!16627)) (EmptyLang!16627) (Union!16627 (regOne!33767 Regex!16627) (regTwo!33767 Regex!16627)) )
))
(declare-fun r!7292 () Regex!16627)

(declare-fun lt!2449245 () Regex!16627)

(assert (=> b!6806044 (= res!2781277 (= r!7292 lt!2449245))))

(declare-datatypes ((List!66180 0))(
  ( (Nil!66056) (Cons!66056 (h!72504 Regex!16627) (t!379913 List!66180)) )
))
(declare-datatypes ((Context!12022 0))(
  ( (Context!12023 (exprs!6511 List!66180)) )
))
(declare-datatypes ((List!66181 0))(
  ( (Nil!66057) (Cons!66057 (h!72505 Context!12022) (t!379914 List!66181)) )
))
(declare-fun zl!343 () List!66181)

(declare-fun unfocusZipper!2369 (List!66181) Regex!16627)

(assert (=> b!6806044 (= lt!2449245 (unfocusZipper!2369 zl!343))))

(declare-fun b!6806045 () Bool)

(declare-fun e!4107097 () Bool)

(declare-fun tp_is_empty!42507 () Bool)

(declare-fun tp!1862985 () Bool)

(assert (=> b!6806045 (= e!4107097 (and tp_is_empty!42507 tp!1862985))))

(declare-fun b!6806046 () Bool)

(declare-fun tp!1862979 () Bool)

(declare-fun e!4107108 () Bool)

(declare-fun e!4107103 () Bool)

(declare-fun inv!84814 (Context!12022) Bool)

(assert (=> b!6806046 (= e!4107108 (and (inv!84814 (h!72505 zl!343)) e!4107103 tp!1862979))))

(declare-fun b!6806047 () Bool)

(declare-fun e!4107092 () Bool)

(declare-fun tp!1862986 () Bool)

(assert (=> b!6806047 (= e!4107092 tp!1862986)))

(declare-fun b!6806048 () Bool)

(declare-fun e!4107096 () Bool)

(declare-fun tp!1862983 () Bool)

(declare-fun tp!1862980 () Bool)

(assert (=> b!6806048 (= e!4107096 (and tp!1862983 tp!1862980))))

(declare-fun b!6806049 () Bool)

(declare-fun res!2781281 () Bool)

(declare-fun e!4107107 () Bool)

(assert (=> b!6806049 (=> res!2781281 e!4107107)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2449265 () (InoxSet Context!12022))

(declare-datatypes ((List!66182 0))(
  ( (Nil!66058) (Cons!66058 (h!72506 C!33524) (t!379915 List!66182)) )
))
(declare-datatypes ((tuple2!67204 0))(
  ( (tuple2!67205 (_1!36905 List!66182) (_2!36905 List!66182)) )
))
(declare-fun lt!2449248 () tuple2!67204)

(declare-fun matchZipper!2613 ((InoxSet Context!12022) List!66182) Bool)

(assert (=> b!6806049 (= res!2781281 (not (matchZipper!2613 lt!2449265 (_2!36905 lt!2449248))))))

(declare-fun b!6806050 () Bool)

(declare-fun e!4107105 () Bool)

(declare-fun e!4107104 () Bool)

(assert (=> b!6806050 (= e!4107105 e!4107104)))

(declare-fun res!2781278 () Bool)

(assert (=> b!6806050 (=> res!2781278 e!4107104)))

(declare-fun lt!2449232 () Context!12022)

(declare-fun lt!2449249 () Regex!16627)

(assert (=> b!6806050 (= res!2781278 (not (= (unfocusZipper!2369 (Cons!66057 lt!2449232 Nil!66057)) lt!2449249)))))

(assert (=> b!6806050 (= lt!2449249 (Concat!25472 (reg!16956 r!7292) r!7292))))

(declare-fun b!6806051 () Bool)

(declare-fun res!2781270 () Bool)

(declare-fun e!4107093 () Bool)

(assert (=> b!6806051 (=> res!2781270 e!4107093)))

(declare-fun lt!2449241 () Context!12022)

(assert (=> b!6806051 (= res!2781270 (not (= (unfocusZipper!2369 (Cons!66057 lt!2449241 Nil!66057)) (reg!16956 r!7292))))))

(declare-fun b!6806052 () Bool)

(declare-fun e!4107091 () Bool)

(declare-fun e!4107101 () Bool)

(assert (=> b!6806052 (= e!4107091 e!4107101)))

(declare-fun res!2781280 () Bool)

(assert (=> b!6806052 (=> res!2781280 e!4107101)))

(declare-fun lt!2449259 () (InoxSet Context!12022))

(declare-fun lt!2449264 () (InoxSet Context!12022))

(assert (=> b!6806052 (= res!2781280 (not (= lt!2449259 lt!2449264)))))

(declare-fun s!2326 () List!66182)

(declare-fun derivationStepZipperDown!1855 (Regex!16627 Context!12022 C!33524) (InoxSet Context!12022))

(assert (=> b!6806052 (= lt!2449264 (derivationStepZipperDown!1855 r!7292 (Context!12023 Nil!66056) (h!72506 s!2326)))))

(declare-fun derivationStepZipperUp!1781 (Context!12022 C!33524) (InoxSet Context!12022))

(assert (=> b!6806052 (= lt!2449259 (derivationStepZipperUp!1781 (Context!12023 (Cons!66056 r!7292 Nil!66056)) (h!72506 s!2326)))))

(declare-fun lt!2449263 () (InoxSet Context!12022))

(declare-fun z!1189 () (InoxSet Context!12022))

(declare-fun derivationStepZipper!2571 ((InoxSet Context!12022) C!33524) (InoxSet Context!12022))

(assert (=> b!6806052 (= lt!2449263 (derivationStepZipper!2571 z!1189 (h!72506 s!2326)))))

(declare-fun b!6806053 () Bool)

(declare-fun res!2781272 () Bool)

(assert (=> b!6806053 (=> res!2781272 e!4107105)))

(assert (=> b!6806053 (= res!2781272 (or (not (= lt!2449245 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun e!4107095 () Bool)

(assert (=> b!6806054 (= e!4107095 e!4107091)))

(declare-fun res!2781292 () Bool)

(assert (=> b!6806054 (=> res!2781292 e!4107091)))

(declare-fun lt!2449250 () Bool)

(assert (=> b!6806054 (= res!2781292 (not (= lt!2449250 e!4107100)))))

(declare-fun res!2781290 () Bool)

(assert (=> b!6806054 (=> res!2781290 e!4107100)))

(declare-fun isEmpty!38441 (List!66182) Bool)

(assert (=> b!6806054 (= res!2781290 (isEmpty!38441 s!2326))))

(declare-fun Exists!3695 (Int) Bool)

(assert (=> b!6806054 (= (Exists!3695 lambda!384158) (Exists!3695 lambda!384160))))

(declare-datatypes ((Unit!159945 0))(
  ( (Unit!159946) )
))
(declare-fun lt!2449237 () Unit!159945)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2222 (Regex!16627 Regex!16627 List!66182) Unit!159945)

(assert (=> b!6806054 (= lt!2449237 (lemmaExistCutMatchRandMatchRSpecEquivalent!2222 (reg!16956 r!7292) r!7292 s!2326))))

(assert (=> b!6806054 (= (Exists!3695 lambda!384158) (Exists!3695 lambda!384159))))

(declare-fun lt!2449254 () Unit!159945)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!786 (Regex!16627 List!66182) Unit!159945)

(assert (=> b!6806054 (= lt!2449254 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!786 (reg!16956 r!7292) s!2326))))

(assert (=> b!6806054 (= lt!2449234 (Exists!3695 lambda!384158))))

(declare-datatypes ((Option!16514 0))(
  ( (None!16513) (Some!16513 (v!52719 tuple2!67204)) )
))
(declare-fun isDefined!13217 (Option!16514) Bool)

(declare-fun findConcatSeparation!2928 (Regex!16627 Regex!16627 List!66182 List!66182 List!66182) Option!16514)

(assert (=> b!6806054 (= lt!2449234 (isDefined!13217 (findConcatSeparation!2928 (reg!16956 r!7292) r!7292 Nil!66058 s!2326 s!2326)))))

(declare-fun lt!2449266 () Unit!159945)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2692 (Regex!16627 Regex!16627 List!66182) Unit!159945)

(assert (=> b!6806054 (= lt!2449266 (lemmaFindConcatSeparationEquivalentToExists!2692 (reg!16956 r!7292) r!7292 s!2326))))

(declare-fun b!6806055 () Bool)

(declare-fun res!2781275 () Bool)

(declare-fun e!4107102 () Bool)

(assert (=> b!6806055 (=> res!2781275 e!4107102)))

(assert (=> b!6806055 (= res!2781275 (not (matchZipper!2613 z!1189 s!2326)))))

(declare-fun b!6806056 () Bool)

(declare-fun res!2781274 () Bool)

(assert (=> b!6806056 (=> res!2781274 e!4107093)))

(declare-fun lt!2449242 () Context!12022)

(assert (=> b!6806056 (= res!2781274 (not (= (unfocusZipper!2369 (Cons!66057 lt!2449242 Nil!66057)) r!7292)))))

(declare-fun b!6806057 () Bool)

(declare-fun tp!1862981 () Bool)

(declare-fun tp!1862982 () Bool)

(assert (=> b!6806057 (= e!4107096 (and tp!1862981 tp!1862982))))

(declare-fun b!6806058 () Bool)

(assert (=> b!6806058 (= e!4107093 e!4107102)))

(declare-fun res!2781293 () Bool)

(assert (=> b!6806058 (=> res!2781293 e!4107102)))

(declare-fun lt!2449240 () Bool)

(assert (=> b!6806058 (= res!2781293 lt!2449240)))

(declare-fun matchRSpec!3728 (Regex!16627 List!66182) Bool)

(assert (=> b!6806058 (= lt!2449240 (matchRSpec!3728 lt!2449249 s!2326))))

(declare-fun matchR!8810 (Regex!16627 List!66182) Bool)

(assert (=> b!6806058 (= lt!2449240 (matchR!8810 lt!2449249 s!2326))))

(declare-fun lt!2449235 () Unit!159945)

(declare-fun mainMatchTheorem!3728 (Regex!16627 List!66182) Unit!159945)

(assert (=> b!6806058 (= lt!2449235 (mainMatchTheorem!3728 lt!2449249 s!2326))))

(declare-fun b!6806059 () Bool)

(declare-fun res!2781273 () Bool)

(assert (=> b!6806059 (=> res!2781273 e!4107095)))

(declare-fun generalisedUnion!2471 (List!66180) Regex!16627)

(declare-fun unfocusZipperList!2048 (List!66181) List!66180)

(assert (=> b!6806059 (= res!2781273 (not (= r!7292 (generalisedUnion!2471 (unfocusZipperList!2048 zl!343)))))))

(declare-fun e!4107094 () Bool)

(assert (=> b!6806060 (= e!4107101 e!4107094)))

(declare-fun res!2781276 () Bool)

(assert (=> b!6806060 (=> res!2781276 e!4107094)))

(assert (=> b!6806060 (= res!2781276 (not (= lt!2449263 lt!2449264)))))

(declare-fun lambda!384161 () Int)

(declare-fun flatMap!2108 ((InoxSet Context!12022) Int) (InoxSet Context!12022))

(assert (=> b!6806060 (= (flatMap!2108 z!1189 lambda!384161) (derivationStepZipperUp!1781 (h!72505 zl!343) (h!72506 s!2326)))))

(declare-fun lt!2449246 () Unit!159945)

(declare-fun lemmaFlatMapOnSingletonSet!1634 ((InoxSet Context!12022) Context!12022 Int) Unit!159945)

(assert (=> b!6806060 (= lt!2449246 (lemmaFlatMapOnSingletonSet!1634 z!1189 (h!72505 zl!343) lambda!384161))))

(declare-fun b!6806061 () Bool)

(declare-fun res!2781282 () Bool)

(assert (=> b!6806061 (=> res!2781282 e!4107095)))

(declare-fun generalisedConcat!2224 (List!66180) Regex!16627)

(assert (=> b!6806061 (= res!2781282 (not (= r!7292 (generalisedConcat!2224 (exprs!6511 (h!72505 zl!343))))))))

(declare-fun b!6806062 () Bool)

(declare-fun res!2781287 () Bool)

(assert (=> b!6806062 (=> res!2781287 e!4107095)))

(get-info :version)

(assert (=> b!6806062 (= res!2781287 (not ((_ is Cons!66056) (exprs!6511 (h!72505 zl!343)))))))

(declare-fun e!4107099 () Bool)

(assert (=> b!6806063 (= e!4107102 e!4107099)))

(declare-fun res!2781271 () Bool)

(assert (=> b!6806063 (=> res!2781271 e!4107099)))

(declare-fun lt!2449256 () (InoxSet Context!12022))

(declare-fun lt!2449247 () (InoxSet Context!12022))

(declare-fun appendTo!232 ((InoxSet Context!12022) Context!12022) (InoxSet Context!12022))

(assert (=> b!6806063 (= res!2781271 (not (= (appendTo!232 lt!2449256 lt!2449242) lt!2449247)))))

(declare-fun lt!2449262 () List!66180)

(declare-fun lt!2449260 () List!66180)

(declare-fun lambda!384162 () Int)

(declare-fun map!15101 ((InoxSet Context!12022) Int) (InoxSet Context!12022))

(declare-fun ++!14800 (List!66180 List!66180) List!66180)

(assert (=> b!6806063 (= (map!15101 lt!2449256 lambda!384162) (store ((as const (Array Context!12022 Bool)) false) (Context!12023 (++!14800 lt!2449262 lt!2449260)) true))))

(declare-fun lambda!384163 () Int)

(declare-fun lt!2449251 () Unit!159945)

(declare-fun lemmaConcatPreservesForall!456 (List!66180 List!66180 Int) Unit!159945)

(assert (=> b!6806063 (= lt!2449251 (lemmaConcatPreservesForall!456 lt!2449262 lt!2449260 lambda!384163))))

(declare-fun lt!2449258 () Unit!159945)

(declare-fun lemmaMapOnSingletonSet!262 ((InoxSet Context!12022) Context!12022 Int) Unit!159945)

(assert (=> b!6806063 (= lt!2449258 (lemmaMapOnSingletonSet!262 lt!2449256 lt!2449241 lambda!384162))))

(declare-fun b!6806064 () Bool)

(declare-fun tp!1862987 () Bool)

(assert (=> b!6806064 (= e!4107096 tp!1862987)))

(declare-fun b!6806065 () Bool)

(declare-fun res!2781289 () Bool)

(assert (=> b!6806065 (=> res!2781289 e!4107095)))

(declare-fun isEmpty!38442 (List!66181) Bool)

(assert (=> b!6806065 (= res!2781289 (not (isEmpty!38442 (t!379914 zl!343))))))

(declare-fun b!6806066 () Bool)

(assert (=> b!6806066 (= e!4107104 e!4107093)))

(declare-fun res!2781295 () Bool)

(assert (=> b!6806066 (=> res!2781295 e!4107093)))

(assert (=> b!6806066 (= res!2781295 (not (= lt!2449263 (derivationStepZipper!2571 lt!2449265 (h!72506 s!2326)))))))

(assert (=> b!6806066 (= (flatMap!2108 lt!2449265 lambda!384161) (derivationStepZipperUp!1781 lt!2449242 (h!72506 s!2326)))))

(declare-fun lt!2449253 () Unit!159945)

(assert (=> b!6806066 (= lt!2449253 (lemmaFlatMapOnSingletonSet!1634 lt!2449265 lt!2449242 lambda!384161))))

(assert (=> b!6806066 (= (flatMap!2108 lt!2449256 lambda!384161) (derivationStepZipperUp!1781 lt!2449241 (h!72506 s!2326)))))

(declare-fun lt!2449233 () Unit!159945)

(assert (=> b!6806066 (= lt!2449233 (lemmaFlatMapOnSingletonSet!1634 lt!2449256 lt!2449241 lambda!384161))))

(declare-fun lt!2449231 () (InoxSet Context!12022))

(assert (=> b!6806066 (= lt!2449231 (derivationStepZipperUp!1781 lt!2449242 (h!72506 s!2326)))))

(declare-fun lt!2449243 () (InoxSet Context!12022))

(assert (=> b!6806066 (= lt!2449243 (derivationStepZipperUp!1781 lt!2449241 (h!72506 s!2326)))))

(assert (=> b!6806066 (= lt!2449265 (store ((as const (Array Context!12022 Bool)) false) lt!2449242 true))))

(assert (=> b!6806066 (= lt!2449256 (store ((as const (Array Context!12022 Bool)) false) lt!2449241 true))))

(assert (=> b!6806066 (= lt!2449241 (Context!12023 lt!2449262))))

(assert (=> b!6806066 (= lt!2449262 (Cons!66056 (reg!16956 r!7292) Nil!66056))))

(declare-fun b!6806067 () Bool)

(declare-fun res!2781296 () Bool)

(assert (=> b!6806067 (=> res!2781296 e!4107107)))

(assert (=> b!6806067 (= res!2781296 (not (matchZipper!2613 lt!2449256 (_1!36905 lt!2449248))))))

(declare-fun b!6806068 () Bool)

(assert (=> b!6806068 (= e!4107106 (not e!4107095))))

(declare-fun res!2781294 () Bool)

(assert (=> b!6806068 (=> res!2781294 e!4107095)))

(assert (=> b!6806068 (= res!2781294 (not ((_ is Cons!66057) zl!343)))))

(assert (=> b!6806068 (= lt!2449250 (matchRSpec!3728 r!7292 s!2326))))

(assert (=> b!6806068 (= lt!2449250 (matchR!8810 r!7292 s!2326))))

(declare-fun lt!2449239 () Unit!159945)

(assert (=> b!6806068 (= lt!2449239 (mainMatchTheorem!3728 r!7292 s!2326))))

(declare-fun setElem!46677 () Context!12022)

(declare-fun setNonEmpty!46677 () Bool)

(declare-fun setRes!46677 () Bool)

(declare-fun tp!1862984 () Bool)

(assert (=> setNonEmpty!46677 (= setRes!46677 (and tp!1862984 (inv!84814 setElem!46677) e!4107092))))

(declare-fun setRest!46677 () (InoxSet Context!12022))

(assert (=> setNonEmpty!46677 (= z!1189 ((_ map or) (store ((as const (Array Context!12022 Bool)) false) setElem!46677 true) setRest!46677))))

(declare-fun b!6806069 () Bool)

(assert (=> b!6806069 (= e!4107096 tp_is_empty!42507)))

(declare-fun b!6806070 () Bool)

(declare-fun validRegex!8363 (Regex!16627) Bool)

(assert (=> b!6806070 (= e!4107107 (validRegex!8363 (reg!16956 r!7292)))))

(declare-fun lt!2449255 () List!66182)

(assert (=> b!6806070 (matchZipper!2613 (store ((as const (Array Context!12022 Bool)) false) (Context!12023 (++!14800 lt!2449262 lt!2449260)) true) lt!2449255)))

(declare-fun lt!2449252 () Unit!159945)

(assert (=> b!6806070 (= lt!2449252 (lemmaConcatPreservesForall!456 lt!2449262 lt!2449260 lambda!384163))))

(declare-fun lt!2449238 () Unit!159945)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!250 (Context!12022 Context!12022 List!66182 List!66182) Unit!159945)

(assert (=> b!6806070 (= lt!2449238 (lemmaConcatenateContextMatchesConcatOfStrings!250 lt!2449241 lt!2449242 (_1!36905 lt!2449248) (_2!36905 lt!2449248)))))

(declare-fun b!6806071 () Bool)

(declare-fun res!2781284 () Bool)

(assert (=> b!6806071 (=> (not res!2781284) (not e!4107098))))

(declare-fun toList!10411 ((InoxSet Context!12022)) List!66181)

(assert (=> b!6806071 (= res!2781284 (= (toList!10411 z!1189) zl!343))))

(declare-fun setIsEmpty!46677 () Bool)

(assert (=> setIsEmpty!46677 setRes!46677))

(declare-fun res!2781279 () Bool)

(assert (=> start!658828 (=> (not res!2781279) (not e!4107098))))

(assert (=> start!658828 (= res!2781279 (validRegex!8363 r!7292))))

(assert (=> start!658828 e!4107098))

(assert (=> start!658828 e!4107096))

(declare-fun condSetEmpty!46677 () Bool)

(assert (=> start!658828 (= condSetEmpty!46677 (= z!1189 ((as const (Array Context!12022 Bool)) false)))))

(assert (=> start!658828 setRes!46677))

(assert (=> start!658828 e!4107108))

(assert (=> start!658828 e!4107097))

(declare-fun b!6806072 () Bool)

(assert (=> b!6806072 (= e!4107094 e!4107105)))

(declare-fun res!2781283 () Bool)

(assert (=> b!6806072 (=> res!2781283 e!4107105)))

(assert (=> b!6806072 (= res!2781283 (not (= lt!2449263 (derivationStepZipperDown!1855 (reg!16956 r!7292) lt!2449242 (h!72506 s!2326)))))))

(assert (=> b!6806072 (= lt!2449242 (Context!12023 lt!2449260))))

(assert (=> b!6806072 (= (flatMap!2108 lt!2449247 lambda!384161) (derivationStepZipperUp!1781 lt!2449232 (h!72506 s!2326)))))

(declare-fun lt!2449257 () Unit!159945)

(assert (=> b!6806072 (= lt!2449257 (lemmaFlatMapOnSingletonSet!1634 lt!2449247 lt!2449232 lambda!384161))))

(declare-fun lt!2449236 () (InoxSet Context!12022))

(assert (=> b!6806072 (= lt!2449236 (derivationStepZipperUp!1781 lt!2449232 (h!72506 s!2326)))))

(assert (=> b!6806072 (= lt!2449247 (store ((as const (Array Context!12022 Bool)) false) lt!2449232 true))))

(assert (=> b!6806072 (= lt!2449232 (Context!12023 (Cons!66056 (reg!16956 r!7292) lt!2449260)))))

(assert (=> b!6806072 (= lt!2449260 (Cons!66056 r!7292 Nil!66056))))

(declare-fun b!6806073 () Bool)

(assert (=> b!6806073 (= e!4107099 e!4107107)))

(declare-fun res!2781285 () Bool)

(assert (=> b!6806073 (=> res!2781285 e!4107107)))

(assert (=> b!6806073 (= res!2781285 (not (= s!2326 lt!2449255)))))

(declare-fun ++!14801 (List!66182 List!66182) List!66182)

(assert (=> b!6806073 (= lt!2449255 (++!14801 (_1!36905 lt!2449248) (_2!36905 lt!2449248)))))

(declare-fun lt!2449244 () Option!16514)

(declare-fun get!23010 (Option!16514) tuple2!67204)

(assert (=> b!6806073 (= lt!2449248 (get!23010 lt!2449244))))

(assert (=> b!6806073 (isDefined!13217 lt!2449244)))

(declare-fun findConcatSeparationZippers!236 ((InoxSet Context!12022) (InoxSet Context!12022) List!66182 List!66182 List!66182) Option!16514)

(assert (=> b!6806073 (= lt!2449244 (findConcatSeparationZippers!236 lt!2449256 lt!2449265 Nil!66058 s!2326 s!2326))))

(declare-fun lt!2449261 () Unit!159945)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!236 ((InoxSet Context!12022) Context!12022 List!66182) Unit!159945)

(assert (=> b!6806073 (= lt!2449261 (lemmaConcatZipperMatchesStringThenFindConcatDefined!236 lt!2449256 lt!2449242 s!2326))))

(declare-fun b!6806074 () Bool)

(declare-fun res!2781291 () Bool)

(assert (=> b!6806074 (=> res!2781291 e!4107105)))

(assert (=> b!6806074 (= res!2781291 (not (= (matchZipper!2613 lt!2449247 s!2326) (matchZipper!2613 (derivationStepZipper!2571 lt!2449247 (h!72506 s!2326)) (t!379915 s!2326)))))))

(declare-fun b!6806075 () Bool)

(declare-fun res!2781286 () Bool)

(assert (=> b!6806075 (=> res!2781286 e!4107095)))

(assert (=> b!6806075 (= res!2781286 (or ((_ is EmptyExpr!16627) r!7292) ((_ is EmptyLang!16627) r!7292) ((_ is ElementMatch!16627) r!7292) ((_ is Union!16627) r!7292) ((_ is Concat!25472) r!7292)))))

(declare-fun b!6806076 () Bool)

(declare-fun tp!1862978 () Bool)

(assert (=> b!6806076 (= e!4107103 tp!1862978)))

(declare-fun b!6806077 () Bool)

(declare-fun res!2781288 () Bool)

(assert (=> b!6806077 (=> res!2781288 e!4107091)))

(assert (=> b!6806077 (= res!2781288 ((_ is Nil!66058) s!2326))))

(assert (= (and start!658828 res!2781279) b!6806071))

(assert (= (and b!6806071 res!2781284) b!6806044))

(assert (= (and b!6806044 res!2781277) b!6806068))

(assert (= (and b!6806068 (not res!2781294)) b!6806065))

(assert (= (and b!6806065 (not res!2781289)) b!6806061))

(assert (= (and b!6806061 (not res!2781282)) b!6806062))

(assert (= (and b!6806062 (not res!2781287)) b!6806059))

(assert (= (and b!6806059 (not res!2781273)) b!6806075))

(assert (= (and b!6806075 (not res!2781286)) b!6806054))

(assert (= (and b!6806054 (not res!2781290)) b!6806043))

(assert (= (and b!6806054 (not res!2781292)) b!6806077))

(assert (= (and b!6806077 (not res!2781288)) b!6806052))

(assert (= (and b!6806052 (not res!2781280)) b!6806060))

(assert (= (and b!6806060 (not res!2781276)) b!6806072))

(assert (= (and b!6806072 (not res!2781283)) b!6806074))

(assert (= (and b!6806074 (not res!2781291)) b!6806053))

(assert (= (and b!6806053 (not res!2781272)) b!6806050))

(assert (= (and b!6806050 (not res!2781278)) b!6806066))

(assert (= (and b!6806066 (not res!2781295)) b!6806051))

(assert (= (and b!6806051 (not res!2781270)) b!6806056))

(assert (= (and b!6806056 (not res!2781274)) b!6806058))

(assert (= (and b!6806058 (not res!2781293)) b!6806055))

(assert (= (and b!6806055 (not res!2781275)) b!6806063))

(assert (= (and b!6806063 (not res!2781271)) b!6806073))

(assert (= (and b!6806073 (not res!2781285)) b!6806067))

(assert (= (and b!6806067 (not res!2781296)) b!6806049))

(assert (= (and b!6806049 (not res!2781281)) b!6806070))

(assert (= (and start!658828 ((_ is ElementMatch!16627) r!7292)) b!6806069))

(assert (= (and start!658828 ((_ is Concat!25472) r!7292)) b!6806048))

(assert (= (and start!658828 ((_ is Star!16627) r!7292)) b!6806064))

(assert (= (and start!658828 ((_ is Union!16627) r!7292)) b!6806057))

(assert (= (and start!658828 condSetEmpty!46677) setIsEmpty!46677))

(assert (= (and start!658828 (not condSetEmpty!46677)) setNonEmpty!46677))

(assert (= setNonEmpty!46677 b!6806047))

(assert (= b!6806046 b!6806076))

(assert (= (and start!658828 ((_ is Cons!66057) zl!343)) b!6806046))

(assert (= (and start!658828 ((_ is Cons!66058) s!2326)) b!6806045))

(declare-fun m!7552126 () Bool)

(assert (=> b!6806058 m!7552126))

(declare-fun m!7552128 () Bool)

(assert (=> b!6806058 m!7552128))

(declare-fun m!7552130 () Bool)

(assert (=> b!6806058 m!7552130))

(declare-fun m!7552132 () Bool)

(assert (=> b!6806052 m!7552132))

(declare-fun m!7552134 () Bool)

(assert (=> b!6806052 m!7552134))

(declare-fun m!7552136 () Bool)

(assert (=> b!6806052 m!7552136))

(declare-fun m!7552138 () Bool)

(assert (=> b!6806056 m!7552138))

(declare-fun m!7552140 () Bool)

(assert (=> b!6806063 m!7552140))

(declare-fun m!7552142 () Bool)

(assert (=> b!6806063 m!7552142))

(declare-fun m!7552144 () Bool)

(assert (=> b!6806063 m!7552144))

(declare-fun m!7552146 () Bool)

(assert (=> b!6806063 m!7552146))

(declare-fun m!7552148 () Bool)

(assert (=> b!6806063 m!7552148))

(declare-fun m!7552150 () Bool)

(assert (=> b!6806063 m!7552150))

(assert (=> b!6806070 m!7552140))

(assert (=> b!6806070 m!7552142))

(declare-fun m!7552152 () Bool)

(assert (=> b!6806070 m!7552152))

(assert (=> b!6806070 m!7552150))

(declare-fun m!7552154 () Bool)

(assert (=> b!6806070 m!7552154))

(assert (=> b!6806070 m!7552140))

(declare-fun m!7552156 () Bool)

(assert (=> b!6806070 m!7552156))

(declare-fun m!7552158 () Bool)

(assert (=> b!6806046 m!7552158))

(declare-fun m!7552160 () Bool)

(assert (=> b!6806066 m!7552160))

(declare-fun m!7552162 () Bool)

(assert (=> b!6806066 m!7552162))

(declare-fun m!7552164 () Bool)

(assert (=> b!6806066 m!7552164))

(declare-fun m!7552166 () Bool)

(assert (=> b!6806066 m!7552166))

(declare-fun m!7552168 () Bool)

(assert (=> b!6806066 m!7552168))

(declare-fun m!7552170 () Bool)

(assert (=> b!6806066 m!7552170))

(declare-fun m!7552172 () Bool)

(assert (=> b!6806066 m!7552172))

(declare-fun m!7552174 () Bool)

(assert (=> b!6806066 m!7552174))

(declare-fun m!7552176 () Bool)

(assert (=> b!6806066 m!7552176))

(declare-fun m!7552178 () Bool)

(assert (=> b!6806071 m!7552178))

(declare-fun m!7552180 () Bool)

(assert (=> b!6806050 m!7552180))

(declare-fun m!7552182 () Bool)

(assert (=> b!6806051 m!7552182))

(declare-fun m!7552184 () Bool)

(assert (=> b!6806049 m!7552184))

(declare-fun m!7552186 () Bool)

(assert (=> b!6806072 m!7552186))

(declare-fun m!7552188 () Bool)

(assert (=> b!6806072 m!7552188))

(declare-fun m!7552190 () Bool)

(assert (=> b!6806072 m!7552190))

(declare-fun m!7552192 () Bool)

(assert (=> b!6806072 m!7552192))

(declare-fun m!7552194 () Bool)

(assert (=> b!6806072 m!7552194))

(declare-fun m!7552196 () Bool)

(assert (=> b!6806061 m!7552196))

(declare-fun m!7552198 () Bool)

(assert (=> start!658828 m!7552198))

(declare-fun m!7552200 () Bool)

(assert (=> b!6806073 m!7552200))

(declare-fun m!7552202 () Bool)

(assert (=> b!6806073 m!7552202))

(declare-fun m!7552204 () Bool)

(assert (=> b!6806073 m!7552204))

(declare-fun m!7552206 () Bool)

(assert (=> b!6806073 m!7552206))

(declare-fun m!7552208 () Bool)

(assert (=> b!6806073 m!7552208))

(declare-fun m!7552210 () Bool)

(assert (=> b!6806074 m!7552210))

(declare-fun m!7552212 () Bool)

(assert (=> b!6806074 m!7552212))

(assert (=> b!6806074 m!7552212))

(declare-fun m!7552214 () Bool)

(assert (=> b!6806074 m!7552214))

(declare-fun m!7552216 () Bool)

(assert (=> b!6806044 m!7552216))

(declare-fun m!7552218 () Bool)

(assert (=> b!6806067 m!7552218))

(declare-fun m!7552220 () Bool)

(assert (=> b!6806055 m!7552220))

(declare-fun m!7552222 () Bool)

(assert (=> b!6806068 m!7552222))

(declare-fun m!7552224 () Bool)

(assert (=> b!6806068 m!7552224))

(declare-fun m!7552226 () Bool)

(assert (=> b!6806068 m!7552226))

(declare-fun m!7552228 () Bool)

(assert (=> b!6806059 m!7552228))

(assert (=> b!6806059 m!7552228))

(declare-fun m!7552230 () Bool)

(assert (=> b!6806059 m!7552230))

(declare-fun m!7552232 () Bool)

(assert (=> b!6806065 m!7552232))

(declare-fun m!7552234 () Bool)

(assert (=> b!6806054 m!7552234))

(declare-fun m!7552236 () Bool)

(assert (=> b!6806054 m!7552236))

(declare-fun m!7552238 () Bool)

(assert (=> b!6806054 m!7552238))

(declare-fun m!7552240 () Bool)

(assert (=> b!6806054 m!7552240))

(declare-fun m!7552242 () Bool)

(assert (=> b!6806054 m!7552242))

(declare-fun m!7552244 () Bool)

(assert (=> b!6806054 m!7552244))

(assert (=> b!6806054 m!7552236))

(assert (=> b!6806054 m!7552244))

(declare-fun m!7552246 () Bool)

(assert (=> b!6806054 m!7552246))

(declare-fun m!7552248 () Bool)

(assert (=> b!6806054 m!7552248))

(declare-fun m!7552250 () Bool)

(assert (=> b!6806054 m!7552250))

(assert (=> b!6806054 m!7552236))

(declare-fun m!7552252 () Bool)

(assert (=> b!6806060 m!7552252))

(declare-fun m!7552254 () Bool)

(assert (=> b!6806060 m!7552254))

(declare-fun m!7552256 () Bool)

(assert (=> b!6806060 m!7552256))

(declare-fun m!7552258 () Bool)

(assert (=> setNonEmpty!46677 m!7552258))

(check-sat (not b!6806063) (not b!6806047) (not b!6806049) (not b!6806048) (not b!6806057) (not start!658828) (not b!6806051) (not b!6806044) (not b!6806058) (not b!6806073) (not b!6806045) (not b!6806046) (not b!6806056) tp_is_empty!42507 (not b!6806054) (not b!6806071) (not b!6806060) (not b!6806064) (not b!6806061) (not b!6806068) (not b!6806076) (not b!6806059) (not b!6806050) (not b!6806074) (not b!6806070) (not b!6806072) (not b!6806065) (not setNonEmpty!46677) (not b!6806067) (not b!6806055) (not b!6806052) (not b!6806066))
(check-sat)
(get-model)

(declare-fun d!2138725 () Bool)

(declare-fun lt!2449274 () Regex!16627)

(assert (=> d!2138725 (validRegex!8363 lt!2449274)))

(assert (=> d!2138725 (= lt!2449274 (generalisedUnion!2471 (unfocusZipperList!2048 (Cons!66057 lt!2449232 Nil!66057))))))

(assert (=> d!2138725 (= (unfocusZipper!2369 (Cons!66057 lt!2449232 Nil!66057)) lt!2449274)))

(declare-fun bs!1814244 () Bool)

(assert (= bs!1814244 d!2138725))

(declare-fun m!7552300 () Bool)

(assert (=> bs!1814244 m!7552300))

(declare-fun m!7552302 () Bool)

(assert (=> bs!1814244 m!7552302))

(assert (=> bs!1814244 m!7552302))

(declare-fun m!7552304 () Bool)

(assert (=> bs!1814244 m!7552304))

(assert (=> b!6806050 d!2138725))

(declare-fun b!6806160 () Bool)

(declare-fun e!4107150 () List!66180)

(assert (=> b!6806160 (= e!4107150 (Cons!66056 (h!72504 lt!2449262) (++!14800 (t!379913 lt!2449262) lt!2449260)))))

(declare-fun b!6806159 () Bool)

(assert (=> b!6806159 (= e!4107150 lt!2449260)))

(declare-fun lt!2449284 () List!66180)

(declare-fun e!4107149 () Bool)

(declare-fun b!6806162 () Bool)

(assert (=> b!6806162 (= e!4107149 (or (not (= lt!2449260 Nil!66056)) (= lt!2449284 lt!2449262)))))

(declare-fun d!2138727 () Bool)

(assert (=> d!2138727 e!4107149))

(declare-fun res!2781313 () Bool)

(assert (=> d!2138727 (=> (not res!2781313) (not e!4107149))))

(declare-fun content!12915 (List!66180) (InoxSet Regex!16627))

(assert (=> d!2138727 (= res!2781313 (= (content!12915 lt!2449284) ((_ map or) (content!12915 lt!2449262) (content!12915 lt!2449260))))))

(assert (=> d!2138727 (= lt!2449284 e!4107150)))

(declare-fun c!1265853 () Bool)

(assert (=> d!2138727 (= c!1265853 ((_ is Nil!66056) lt!2449262))))

(assert (=> d!2138727 (= (++!14800 lt!2449262 lt!2449260) lt!2449284)))

(declare-fun b!6806161 () Bool)

(declare-fun res!2781312 () Bool)

(assert (=> b!6806161 (=> (not res!2781312) (not e!4107149))))

(declare-fun size!40677 (List!66180) Int)

(assert (=> b!6806161 (= res!2781312 (= (size!40677 lt!2449284) (+ (size!40677 lt!2449262) (size!40677 lt!2449260))))))

(assert (= (and d!2138727 c!1265853) b!6806159))

(assert (= (and d!2138727 (not c!1265853)) b!6806160))

(assert (= (and d!2138727 res!2781313) b!6806161))

(assert (= (and b!6806161 res!2781312) b!6806162))

(declare-fun m!7552340 () Bool)

(assert (=> b!6806160 m!7552340))

(declare-fun m!7552342 () Bool)

(assert (=> d!2138727 m!7552342))

(declare-fun m!7552344 () Bool)

(assert (=> d!2138727 m!7552344))

(declare-fun m!7552346 () Bool)

(assert (=> d!2138727 m!7552346))

(declare-fun m!7552348 () Bool)

(assert (=> b!6806161 m!7552348))

(declare-fun m!7552350 () Bool)

(assert (=> b!6806161 m!7552350))

(declare-fun m!7552352 () Bool)

(assert (=> b!6806161 m!7552352))

(assert (=> b!6806070 d!2138727))

(declare-fun d!2138743 () Bool)

(declare-fun forall!15819 (List!66180 Int) Bool)

(assert (=> d!2138743 (forall!15819 (++!14800 lt!2449262 lt!2449260) lambda!384163)))

(declare-fun lt!2449290 () Unit!159945)

(declare-fun choose!50765 (List!66180 List!66180 Int) Unit!159945)

(assert (=> d!2138743 (= lt!2449290 (choose!50765 lt!2449262 lt!2449260 lambda!384163))))

(assert (=> d!2138743 (forall!15819 lt!2449262 lambda!384163)))

(assert (=> d!2138743 (= (lemmaConcatPreservesForall!456 lt!2449262 lt!2449260 lambda!384163) lt!2449290)))

(declare-fun bs!1814250 () Bool)

(assert (= bs!1814250 d!2138743))

(assert (=> bs!1814250 m!7552150))

(assert (=> bs!1814250 m!7552150))

(declare-fun m!7552368 () Bool)

(assert (=> bs!1814250 m!7552368))

(declare-fun m!7552370 () Bool)

(assert (=> bs!1814250 m!7552370))

(declare-fun m!7552372 () Bool)

(assert (=> bs!1814250 m!7552372))

(assert (=> b!6806070 d!2138743))

(declare-fun b!6806221 () Bool)

(declare-fun e!4107186 () Bool)

(declare-fun e!4107189 () Bool)

(assert (=> b!6806221 (= e!4107186 e!4107189)))

(declare-fun res!2781337 () Bool)

(assert (=> b!6806221 (=> (not res!2781337) (not e!4107189))))

(declare-fun call!618554 () Bool)

(assert (=> b!6806221 (= res!2781337 call!618554)))

(declare-fun d!2138747 () Bool)

(declare-fun res!2781336 () Bool)

(declare-fun e!4107191 () Bool)

(assert (=> d!2138747 (=> res!2781336 e!4107191)))

(assert (=> d!2138747 (= res!2781336 ((_ is ElementMatch!16627) (reg!16956 r!7292)))))

(assert (=> d!2138747 (= (validRegex!8363 (reg!16956 r!7292)) e!4107191)))

(declare-fun bm!618547 () Bool)

(declare-fun call!618552 () Bool)

(assert (=> bm!618547 (= call!618554 call!618552)))

(declare-fun b!6806222 () Bool)

(declare-fun res!2781335 () Bool)

(assert (=> b!6806222 (=> res!2781335 e!4107186)))

(assert (=> b!6806222 (= res!2781335 (not ((_ is Concat!25472) (reg!16956 r!7292))))))

(declare-fun e!4107190 () Bool)

(assert (=> b!6806222 (= e!4107190 e!4107186)))

(declare-fun bm!618548 () Bool)

(declare-fun call!618553 () Bool)

(declare-fun c!1265874 () Bool)

(assert (=> bm!618548 (= call!618553 (validRegex!8363 (ite c!1265874 (regTwo!33767 (reg!16956 r!7292)) (regTwo!33766 (reg!16956 r!7292)))))))

(declare-fun b!6806223 () Bool)

(declare-fun e!4107192 () Bool)

(assert (=> b!6806223 (= e!4107192 call!618552)))

(declare-fun b!6806224 () Bool)

(declare-fun e!4107188 () Bool)

(assert (=> b!6806224 (= e!4107191 e!4107188)))

(declare-fun c!1265873 () Bool)

(assert (=> b!6806224 (= c!1265873 ((_ is Star!16627) (reg!16956 r!7292)))))

(declare-fun b!6806225 () Bool)

(declare-fun e!4107187 () Bool)

(assert (=> b!6806225 (= e!4107187 call!618553)))

(declare-fun b!6806226 () Bool)

(declare-fun res!2781338 () Bool)

(assert (=> b!6806226 (=> (not res!2781338) (not e!4107187))))

(assert (=> b!6806226 (= res!2781338 call!618554)))

(assert (=> b!6806226 (= e!4107190 e!4107187)))

(declare-fun b!6806227 () Bool)

(assert (=> b!6806227 (= e!4107188 e!4107190)))

(assert (=> b!6806227 (= c!1265874 ((_ is Union!16627) (reg!16956 r!7292)))))

(declare-fun b!6806228 () Bool)

(assert (=> b!6806228 (= e!4107188 e!4107192)))

(declare-fun res!2781334 () Bool)

(declare-fun nullable!6606 (Regex!16627) Bool)

(assert (=> b!6806228 (= res!2781334 (not (nullable!6606 (reg!16956 (reg!16956 r!7292)))))))

(assert (=> b!6806228 (=> (not res!2781334) (not e!4107192))))

(declare-fun bm!618549 () Bool)

(assert (=> bm!618549 (= call!618552 (validRegex!8363 (ite c!1265873 (reg!16956 (reg!16956 r!7292)) (ite c!1265874 (regOne!33767 (reg!16956 r!7292)) (regOne!33766 (reg!16956 r!7292))))))))

(declare-fun b!6806229 () Bool)

(assert (=> b!6806229 (= e!4107189 call!618553)))

(assert (= (and d!2138747 (not res!2781336)) b!6806224))

(assert (= (and b!6806224 c!1265873) b!6806228))

(assert (= (and b!6806224 (not c!1265873)) b!6806227))

(assert (= (and b!6806228 res!2781334) b!6806223))

(assert (= (and b!6806227 c!1265874) b!6806226))

(assert (= (and b!6806227 (not c!1265874)) b!6806222))

(assert (= (and b!6806226 res!2781338) b!6806225))

(assert (= (and b!6806222 (not res!2781335)) b!6806221))

(assert (= (and b!6806221 res!2781337) b!6806229))

(assert (= (or b!6806225 b!6806229) bm!618548))

(assert (= (or b!6806226 b!6806221) bm!618547))

(assert (= (or b!6806223 bm!618547) bm!618549))

(declare-fun m!7552388 () Bool)

(assert (=> bm!618548 m!7552388))

(declare-fun m!7552390 () Bool)

(assert (=> b!6806228 m!7552390))

(declare-fun m!7552392 () Bool)

(assert (=> bm!618549 m!7552392))

(assert (=> b!6806070 d!2138747))

(declare-fun bs!1814257 () Bool)

(declare-fun d!2138753 () Bool)

(assert (= bs!1814257 (and d!2138753 b!6806063)))

(declare-fun lambda!384182 () Int)

(assert (=> bs!1814257 (= lambda!384182 lambda!384163)))

(assert (=> d!2138753 (matchZipper!2613 (store ((as const (Array Context!12022 Bool)) false) (Context!12023 (++!14800 (exprs!6511 lt!2449241) (exprs!6511 lt!2449242))) true) (++!14801 (_1!36905 lt!2449248) (_2!36905 lt!2449248)))))

(declare-fun lt!2449301 () Unit!159945)

(assert (=> d!2138753 (= lt!2449301 (lemmaConcatPreservesForall!456 (exprs!6511 lt!2449241) (exprs!6511 lt!2449242) lambda!384182))))

(declare-fun lt!2449300 () Unit!159945)

(declare-fun choose!50766 (Context!12022 Context!12022 List!66182 List!66182) Unit!159945)

(assert (=> d!2138753 (= lt!2449300 (choose!50766 lt!2449241 lt!2449242 (_1!36905 lt!2449248) (_2!36905 lt!2449248)))))

(assert (=> d!2138753 (matchZipper!2613 (store ((as const (Array Context!12022 Bool)) false) lt!2449241 true) (_1!36905 lt!2449248))))

(assert (=> d!2138753 (= (lemmaConcatenateContextMatchesConcatOfStrings!250 lt!2449241 lt!2449242 (_1!36905 lt!2449248) (_2!36905 lt!2449248)) lt!2449300)))

(declare-fun bs!1814258 () Bool)

(assert (= bs!1814258 d!2138753))

(declare-fun m!7552432 () Bool)

(assert (=> bs!1814258 m!7552432))

(declare-fun m!7552434 () Bool)

(assert (=> bs!1814258 m!7552434))

(assert (=> bs!1814258 m!7552432))

(assert (=> bs!1814258 m!7552204))

(declare-fun m!7552436 () Bool)

(assert (=> bs!1814258 m!7552436))

(assert (=> bs!1814258 m!7552204))

(declare-fun m!7552438 () Bool)

(assert (=> bs!1814258 m!7552438))

(assert (=> bs!1814258 m!7552168))

(assert (=> bs!1814258 m!7552168))

(declare-fun m!7552440 () Bool)

(assert (=> bs!1814258 m!7552440))

(declare-fun m!7552442 () Bool)

(assert (=> bs!1814258 m!7552442))

(assert (=> b!6806070 d!2138753))

(declare-fun d!2138763 () Bool)

(declare-fun c!1265900 () Bool)

(assert (=> d!2138763 (= c!1265900 (isEmpty!38441 lt!2449255))))

(declare-fun e!4107235 () Bool)

(assert (=> d!2138763 (= (matchZipper!2613 (store ((as const (Array Context!12022 Bool)) false) (Context!12023 (++!14800 lt!2449262 lt!2449260)) true) lt!2449255) e!4107235)))

(declare-fun b!6806303 () Bool)

(declare-fun nullableZipper!2334 ((InoxSet Context!12022)) Bool)

(assert (=> b!6806303 (= e!4107235 (nullableZipper!2334 (store ((as const (Array Context!12022 Bool)) false) (Context!12023 (++!14800 lt!2449262 lt!2449260)) true)))))

(declare-fun b!6806304 () Bool)

(declare-fun head!13665 (List!66182) C!33524)

(declare-fun tail!12750 (List!66182) List!66182)

(assert (=> b!6806304 (= e!4107235 (matchZipper!2613 (derivationStepZipper!2571 (store ((as const (Array Context!12022 Bool)) false) (Context!12023 (++!14800 lt!2449262 lt!2449260)) true) (head!13665 lt!2449255)) (tail!12750 lt!2449255)))))

(assert (= (and d!2138763 c!1265900) b!6806303))

(assert (= (and d!2138763 (not c!1265900)) b!6806304))

(declare-fun m!7552450 () Bool)

(assert (=> d!2138763 m!7552450))

(assert (=> b!6806303 m!7552140))

(declare-fun m!7552452 () Bool)

(assert (=> b!6806303 m!7552452))

(declare-fun m!7552454 () Bool)

(assert (=> b!6806304 m!7552454))

(assert (=> b!6806304 m!7552140))

(assert (=> b!6806304 m!7552454))

(declare-fun m!7552456 () Bool)

(assert (=> b!6806304 m!7552456))

(declare-fun m!7552458 () Bool)

(assert (=> b!6806304 m!7552458))

(assert (=> b!6806304 m!7552456))

(assert (=> b!6806304 m!7552458))

(declare-fun m!7552460 () Bool)

(assert (=> b!6806304 m!7552460))

(assert (=> b!6806070 d!2138763))

(declare-fun d!2138767 () Bool)

(declare-fun e!4107240 () Bool)

(assert (=> d!2138767 e!4107240))

(declare-fun res!2781364 () Bool)

(assert (=> d!2138767 (=> (not res!2781364) (not e!4107240))))

(declare-fun lt!2449306 () List!66181)

(declare-fun noDuplicate!2411 (List!66181) Bool)

(assert (=> d!2138767 (= res!2781364 (noDuplicate!2411 lt!2449306))))

(declare-fun choose!50768 ((InoxSet Context!12022)) List!66181)

(assert (=> d!2138767 (= lt!2449306 (choose!50768 z!1189))))

(assert (=> d!2138767 (= (toList!10411 z!1189) lt!2449306)))

(declare-fun b!6806311 () Bool)

(declare-fun content!12916 (List!66181) (InoxSet Context!12022))

(assert (=> b!6806311 (= e!4107240 (= (content!12916 lt!2449306) z!1189))))

(assert (= (and d!2138767 res!2781364) b!6806311))

(declare-fun m!7552462 () Bool)

(assert (=> d!2138767 m!7552462))

(declare-fun m!7552464 () Bool)

(assert (=> d!2138767 m!7552464))

(declare-fun m!7552466 () Bool)

(assert (=> b!6806311 m!7552466))

(assert (=> b!6806071 d!2138767))

(declare-fun d!2138769 () Bool)

(declare-fun lt!2449307 () Regex!16627)

(assert (=> d!2138769 (validRegex!8363 lt!2449307)))

(assert (=> d!2138769 (= lt!2449307 (generalisedUnion!2471 (unfocusZipperList!2048 (Cons!66057 lt!2449241 Nil!66057))))))

(assert (=> d!2138769 (= (unfocusZipper!2369 (Cons!66057 lt!2449241 Nil!66057)) lt!2449307)))

(declare-fun bs!1814262 () Bool)

(assert (= bs!1814262 d!2138769))

(declare-fun m!7552468 () Bool)

(assert (=> bs!1814262 m!7552468))

(declare-fun m!7552470 () Bool)

(assert (=> bs!1814262 m!7552470))

(assert (=> bs!1814262 m!7552470))

(declare-fun m!7552472 () Bool)

(assert (=> bs!1814262 m!7552472))

(assert (=> b!6806051 d!2138769))

(declare-fun b!6806403 () Bool)

(declare-fun e!4107298 () (InoxSet Context!12022))

(declare-fun e!4107299 () (InoxSet Context!12022))

(assert (=> b!6806403 (= e!4107298 e!4107299)))

(declare-fun c!1265928 () Bool)

(assert (=> b!6806403 (= c!1265928 ((_ is Union!16627) r!7292))))

(declare-fun b!6806404 () Bool)

(assert (=> b!6806404 (= e!4107298 (store ((as const (Array Context!12022 Bool)) false) (Context!12023 Nil!66056) true))))

(declare-fun bm!618587 () Bool)

(declare-fun call!618593 () List!66180)

(declare-fun call!618595 () List!66180)

(assert (=> bm!618587 (= call!618593 call!618595)))

(declare-fun b!6806405 () Bool)

(declare-fun c!1265932 () Bool)

(declare-fun e!4107297 () Bool)

(assert (=> b!6806405 (= c!1265932 e!4107297)))

(declare-fun res!2781406 () Bool)

(assert (=> b!6806405 (=> (not res!2781406) (not e!4107297))))

(assert (=> b!6806405 (= res!2781406 ((_ is Concat!25472) r!7292))))

(declare-fun e!4107300 () (InoxSet Context!12022))

(assert (=> b!6806405 (= e!4107299 e!4107300)))

(declare-fun bm!618588 () Bool)

(declare-fun call!618592 () (InoxSet Context!12022))

(declare-fun c!1265931 () Bool)

(assert (=> bm!618588 (= call!618592 (derivationStepZipperDown!1855 (ite c!1265928 (regOne!33767 r!7292) (ite c!1265932 (regTwo!33766 r!7292) (ite c!1265931 (regOne!33766 r!7292) (reg!16956 r!7292)))) (ite (or c!1265928 c!1265932) (Context!12023 Nil!66056) (Context!12023 call!618593)) (h!72506 s!2326)))))

(declare-fun b!6806407 () Bool)

(declare-fun call!618597 () (InoxSet Context!12022))

(declare-fun call!618594 () (InoxSet Context!12022))

(assert (=> b!6806407 (= e!4107300 ((_ map or) call!618597 call!618594))))

(declare-fun b!6806408 () Bool)

(declare-fun e!4107296 () (InoxSet Context!12022))

(assert (=> b!6806408 (= e!4107296 ((as const (Array Context!12022 Bool)) false))))

(declare-fun bm!618589 () Bool)

(declare-fun call!618596 () (InoxSet Context!12022))

(assert (=> bm!618589 (= call!618596 call!618594)))

(declare-fun b!6806409 () Bool)

(declare-fun c!1265929 () Bool)

(assert (=> b!6806409 (= c!1265929 ((_ is Star!16627) r!7292))))

(declare-fun e!4107295 () (InoxSet Context!12022))

(assert (=> b!6806409 (= e!4107295 e!4107296)))

(declare-fun b!6806410 () Bool)

(assert (=> b!6806410 (= e!4107295 call!618596)))

(declare-fun b!6806411 () Bool)

(assert (=> b!6806411 (= e!4107299 ((_ map or) call!618592 call!618597))))

(declare-fun b!6806412 () Bool)

(assert (=> b!6806412 (= e!4107300 e!4107295)))

(assert (=> b!6806412 (= c!1265931 ((_ is Concat!25472) r!7292))))

(declare-fun bm!618590 () Bool)

(assert (=> bm!618590 (= call!618597 (derivationStepZipperDown!1855 (ite c!1265928 (regTwo!33767 r!7292) (regOne!33766 r!7292)) (ite c!1265928 (Context!12023 Nil!66056) (Context!12023 call!618595)) (h!72506 s!2326)))))

(declare-fun b!6806413 () Bool)

(assert (=> b!6806413 (= e!4107296 call!618596)))

(declare-fun b!6806406 () Bool)

(assert (=> b!6806406 (= e!4107297 (nullable!6606 (regOne!33766 r!7292)))))

(declare-fun d!2138771 () Bool)

(declare-fun c!1265930 () Bool)

(assert (=> d!2138771 (= c!1265930 (and ((_ is ElementMatch!16627) r!7292) (= (c!1265821 r!7292) (h!72506 s!2326))))))

(assert (=> d!2138771 (= (derivationStepZipperDown!1855 r!7292 (Context!12023 Nil!66056) (h!72506 s!2326)) e!4107298)))

(declare-fun bm!618591 () Bool)

(assert (=> bm!618591 (= call!618594 call!618592)))

(declare-fun bm!618592 () Bool)

(declare-fun $colon$colon!2436 (List!66180 Regex!16627) List!66180)

(assert (=> bm!618592 (= call!618595 ($colon$colon!2436 (exprs!6511 (Context!12023 Nil!66056)) (ite (or c!1265932 c!1265931) (regTwo!33766 r!7292) r!7292)))))

(assert (= (and d!2138771 c!1265930) b!6806404))

(assert (= (and d!2138771 (not c!1265930)) b!6806403))

(assert (= (and b!6806403 c!1265928) b!6806411))

(assert (= (and b!6806403 (not c!1265928)) b!6806405))

(assert (= (and b!6806405 res!2781406) b!6806406))

(assert (= (and b!6806405 c!1265932) b!6806407))

(assert (= (and b!6806405 (not c!1265932)) b!6806412))

(assert (= (and b!6806412 c!1265931) b!6806410))

(assert (= (and b!6806412 (not c!1265931)) b!6806409))

(assert (= (and b!6806409 c!1265929) b!6806413))

(assert (= (and b!6806409 (not c!1265929)) b!6806408))

(assert (= (or b!6806410 b!6806413) bm!618587))

(assert (= (or b!6806410 b!6806413) bm!618589))

(assert (= (or b!6806407 bm!618587) bm!618592))

(assert (= (or b!6806407 bm!618589) bm!618591))

(assert (= (or b!6806411 b!6806407) bm!618590))

(assert (= (or b!6806411 bm!618591) bm!618588))

(declare-fun m!7552530 () Bool)

(assert (=> bm!618588 m!7552530))

(declare-fun m!7552532 () Bool)

(assert (=> b!6806404 m!7552532))

(declare-fun m!7552534 () Bool)

(assert (=> bm!618592 m!7552534))

(declare-fun m!7552536 () Bool)

(assert (=> b!6806406 m!7552536))

(declare-fun m!7552538 () Bool)

(assert (=> bm!618590 m!7552538))

(assert (=> b!6806052 d!2138771))

(declare-fun b!6806437 () Bool)

(declare-fun e!4107313 () (InoxSet Context!12022))

(assert (=> b!6806437 (= e!4107313 ((as const (Array Context!12022 Bool)) false))))

(declare-fun b!6806438 () Bool)

(declare-fun call!618600 () (InoxSet Context!12022))

(assert (=> b!6806438 (= e!4107313 call!618600)))

(declare-fun bm!618595 () Bool)

(assert (=> bm!618595 (= call!618600 (derivationStepZipperDown!1855 (h!72504 (exprs!6511 (Context!12023 (Cons!66056 r!7292 Nil!66056)))) (Context!12023 (t!379913 (exprs!6511 (Context!12023 (Cons!66056 r!7292 Nil!66056))))) (h!72506 s!2326)))))

(declare-fun b!6806439 () Bool)

(declare-fun e!4107314 () Bool)

(assert (=> b!6806439 (= e!4107314 (nullable!6606 (h!72504 (exprs!6511 (Context!12023 (Cons!66056 r!7292 Nil!66056))))))))

(declare-fun b!6806440 () Bool)

(declare-fun e!4107315 () (InoxSet Context!12022))

(assert (=> b!6806440 (= e!4107315 ((_ map or) call!618600 (derivationStepZipperUp!1781 (Context!12023 (t!379913 (exprs!6511 (Context!12023 (Cons!66056 r!7292 Nil!66056))))) (h!72506 s!2326))))))

(declare-fun d!2138791 () Bool)

(declare-fun c!1265941 () Bool)

(assert (=> d!2138791 (= c!1265941 e!4107314)))

(declare-fun res!2781415 () Bool)

(assert (=> d!2138791 (=> (not res!2781415) (not e!4107314))))

(assert (=> d!2138791 (= res!2781415 ((_ is Cons!66056) (exprs!6511 (Context!12023 (Cons!66056 r!7292 Nil!66056)))))))

(assert (=> d!2138791 (= (derivationStepZipperUp!1781 (Context!12023 (Cons!66056 r!7292 Nil!66056)) (h!72506 s!2326)) e!4107315)))

(declare-fun b!6806436 () Bool)

(assert (=> b!6806436 (= e!4107315 e!4107313)))

(declare-fun c!1265940 () Bool)

(assert (=> b!6806436 (= c!1265940 ((_ is Cons!66056) (exprs!6511 (Context!12023 (Cons!66056 r!7292 Nil!66056)))))))

(assert (= (and d!2138791 res!2781415) b!6806439))

(assert (= (and d!2138791 c!1265941) b!6806440))

(assert (= (and d!2138791 (not c!1265941)) b!6806436))

(assert (= (and b!6806436 c!1265940) b!6806438))

(assert (= (and b!6806436 (not c!1265940)) b!6806437))

(assert (= (or b!6806440 b!6806438) bm!618595))

(declare-fun m!7552556 () Bool)

(assert (=> bm!618595 m!7552556))

(declare-fun m!7552558 () Bool)

(assert (=> b!6806439 m!7552558))

(declare-fun m!7552560 () Bool)

(assert (=> b!6806440 m!7552560))

(assert (=> b!6806052 d!2138791))

(declare-fun bs!1814275 () Bool)

(declare-fun d!2138797 () Bool)

(assert (= bs!1814275 (and d!2138797 b!6806060)))

(declare-fun lambda!384191 () Int)

(assert (=> bs!1814275 (= lambda!384191 lambda!384161)))

(assert (=> d!2138797 true))

(assert (=> d!2138797 (= (derivationStepZipper!2571 z!1189 (h!72506 s!2326)) (flatMap!2108 z!1189 lambda!384191))))

(declare-fun bs!1814276 () Bool)

(assert (= bs!1814276 d!2138797))

(declare-fun m!7552570 () Bool)

(assert (=> bs!1814276 m!7552570))

(assert (=> b!6806052 d!2138797))

(declare-fun b!6806443 () Bool)

(declare-fun e!4107319 () (InoxSet Context!12022))

(declare-fun e!4107320 () (InoxSet Context!12022))

(assert (=> b!6806443 (= e!4107319 e!4107320)))

(declare-fun c!1265944 () Bool)

(assert (=> b!6806443 (= c!1265944 ((_ is Union!16627) (reg!16956 r!7292)))))

(declare-fun b!6806444 () Bool)

(assert (=> b!6806444 (= e!4107319 (store ((as const (Array Context!12022 Bool)) false) lt!2449242 true))))

(declare-fun bm!618596 () Bool)

(declare-fun call!618602 () List!66180)

(declare-fun call!618604 () List!66180)

(assert (=> bm!618596 (= call!618602 call!618604)))

(declare-fun b!6806445 () Bool)

(declare-fun c!1265948 () Bool)

(declare-fun e!4107318 () Bool)

(assert (=> b!6806445 (= c!1265948 e!4107318)))

(declare-fun res!2781416 () Bool)

(assert (=> b!6806445 (=> (not res!2781416) (not e!4107318))))

(assert (=> b!6806445 (= res!2781416 ((_ is Concat!25472) (reg!16956 r!7292)))))

(declare-fun e!4107321 () (InoxSet Context!12022))

(assert (=> b!6806445 (= e!4107320 e!4107321)))

(declare-fun bm!618597 () Bool)

(declare-fun c!1265947 () Bool)

(declare-fun call!618601 () (InoxSet Context!12022))

(assert (=> bm!618597 (= call!618601 (derivationStepZipperDown!1855 (ite c!1265944 (regOne!33767 (reg!16956 r!7292)) (ite c!1265948 (regTwo!33766 (reg!16956 r!7292)) (ite c!1265947 (regOne!33766 (reg!16956 r!7292)) (reg!16956 (reg!16956 r!7292))))) (ite (or c!1265944 c!1265948) lt!2449242 (Context!12023 call!618602)) (h!72506 s!2326)))))

(declare-fun b!6806447 () Bool)

(declare-fun call!618606 () (InoxSet Context!12022))

(declare-fun call!618603 () (InoxSet Context!12022))

(assert (=> b!6806447 (= e!4107321 ((_ map or) call!618606 call!618603))))

(declare-fun b!6806448 () Bool)

(declare-fun e!4107317 () (InoxSet Context!12022))

(assert (=> b!6806448 (= e!4107317 ((as const (Array Context!12022 Bool)) false))))

(declare-fun bm!618598 () Bool)

(declare-fun call!618605 () (InoxSet Context!12022))

(assert (=> bm!618598 (= call!618605 call!618603)))

(declare-fun b!6806449 () Bool)

(declare-fun c!1265945 () Bool)

(assert (=> b!6806449 (= c!1265945 ((_ is Star!16627) (reg!16956 r!7292)))))

(declare-fun e!4107316 () (InoxSet Context!12022))

(assert (=> b!6806449 (= e!4107316 e!4107317)))

(declare-fun b!6806450 () Bool)

(assert (=> b!6806450 (= e!4107316 call!618605)))

(declare-fun b!6806451 () Bool)

(assert (=> b!6806451 (= e!4107320 ((_ map or) call!618601 call!618606))))

(declare-fun b!6806452 () Bool)

(assert (=> b!6806452 (= e!4107321 e!4107316)))

(assert (=> b!6806452 (= c!1265947 ((_ is Concat!25472) (reg!16956 r!7292)))))

(declare-fun bm!618599 () Bool)

(assert (=> bm!618599 (= call!618606 (derivationStepZipperDown!1855 (ite c!1265944 (regTwo!33767 (reg!16956 r!7292)) (regOne!33766 (reg!16956 r!7292))) (ite c!1265944 lt!2449242 (Context!12023 call!618604)) (h!72506 s!2326)))))

(declare-fun b!6806453 () Bool)

(assert (=> b!6806453 (= e!4107317 call!618605)))

(declare-fun b!6806446 () Bool)

(assert (=> b!6806446 (= e!4107318 (nullable!6606 (regOne!33766 (reg!16956 r!7292))))))

(declare-fun d!2138801 () Bool)

(declare-fun c!1265946 () Bool)

(assert (=> d!2138801 (= c!1265946 (and ((_ is ElementMatch!16627) (reg!16956 r!7292)) (= (c!1265821 (reg!16956 r!7292)) (h!72506 s!2326))))))

(assert (=> d!2138801 (= (derivationStepZipperDown!1855 (reg!16956 r!7292) lt!2449242 (h!72506 s!2326)) e!4107319)))

(declare-fun bm!618600 () Bool)

(assert (=> bm!618600 (= call!618603 call!618601)))

(declare-fun bm!618601 () Bool)

(assert (=> bm!618601 (= call!618604 ($colon$colon!2436 (exprs!6511 lt!2449242) (ite (or c!1265948 c!1265947) (regTwo!33766 (reg!16956 r!7292)) (reg!16956 r!7292))))))

(assert (= (and d!2138801 c!1265946) b!6806444))

(assert (= (and d!2138801 (not c!1265946)) b!6806443))

(assert (= (and b!6806443 c!1265944) b!6806451))

(assert (= (and b!6806443 (not c!1265944)) b!6806445))

(assert (= (and b!6806445 res!2781416) b!6806446))

(assert (= (and b!6806445 c!1265948) b!6806447))

(assert (= (and b!6806445 (not c!1265948)) b!6806452))

(assert (= (and b!6806452 c!1265947) b!6806450))

(assert (= (and b!6806452 (not c!1265947)) b!6806449))

(assert (= (and b!6806449 c!1265945) b!6806453))

(assert (= (and b!6806449 (not c!1265945)) b!6806448))

(assert (= (or b!6806450 b!6806453) bm!618596))

(assert (= (or b!6806450 b!6806453) bm!618598))

(assert (= (or b!6806447 bm!618596) bm!618601))

(assert (= (or b!6806447 bm!618598) bm!618600))

(assert (= (or b!6806451 b!6806447) bm!618599))

(assert (= (or b!6806451 bm!618600) bm!618597))

(declare-fun m!7552572 () Bool)

(assert (=> bm!618597 m!7552572))

(assert (=> b!6806444 m!7552170))

(declare-fun m!7552574 () Bool)

(assert (=> bm!618601 m!7552574))

(declare-fun m!7552576 () Bool)

(assert (=> b!6806446 m!7552576))

(declare-fun m!7552578 () Bool)

(assert (=> bm!618599 m!7552578))

(assert (=> b!6806072 d!2138801))

(declare-fun d!2138803 () Bool)

(declare-fun choose!50770 ((InoxSet Context!12022) Int) (InoxSet Context!12022))

(assert (=> d!2138803 (= (flatMap!2108 lt!2449247 lambda!384161) (choose!50770 lt!2449247 lambda!384161))))

(declare-fun bs!1814277 () Bool)

(assert (= bs!1814277 d!2138803))

(declare-fun m!7552580 () Bool)

(assert (=> bs!1814277 m!7552580))

(assert (=> b!6806072 d!2138803))

(declare-fun b!6806455 () Bool)

(declare-fun e!4107322 () (InoxSet Context!12022))

(assert (=> b!6806455 (= e!4107322 ((as const (Array Context!12022 Bool)) false))))

(declare-fun b!6806456 () Bool)

(declare-fun call!618607 () (InoxSet Context!12022))

(assert (=> b!6806456 (= e!4107322 call!618607)))

(declare-fun bm!618602 () Bool)

(assert (=> bm!618602 (= call!618607 (derivationStepZipperDown!1855 (h!72504 (exprs!6511 lt!2449232)) (Context!12023 (t!379913 (exprs!6511 lt!2449232))) (h!72506 s!2326)))))

(declare-fun b!6806457 () Bool)

(declare-fun e!4107323 () Bool)

(assert (=> b!6806457 (= e!4107323 (nullable!6606 (h!72504 (exprs!6511 lt!2449232))))))

(declare-fun b!6806458 () Bool)

(declare-fun e!4107324 () (InoxSet Context!12022))

(assert (=> b!6806458 (= e!4107324 ((_ map or) call!618607 (derivationStepZipperUp!1781 (Context!12023 (t!379913 (exprs!6511 lt!2449232))) (h!72506 s!2326))))))

(declare-fun d!2138805 () Bool)

(declare-fun c!1265950 () Bool)

(assert (=> d!2138805 (= c!1265950 e!4107323)))

(declare-fun res!2781417 () Bool)

(assert (=> d!2138805 (=> (not res!2781417) (not e!4107323))))

(assert (=> d!2138805 (= res!2781417 ((_ is Cons!66056) (exprs!6511 lt!2449232)))))

(assert (=> d!2138805 (= (derivationStepZipperUp!1781 lt!2449232 (h!72506 s!2326)) e!4107324)))

(declare-fun b!6806454 () Bool)

(assert (=> b!6806454 (= e!4107324 e!4107322)))

(declare-fun c!1265949 () Bool)

(assert (=> b!6806454 (= c!1265949 ((_ is Cons!66056) (exprs!6511 lt!2449232)))))

(assert (= (and d!2138805 res!2781417) b!6806457))

(assert (= (and d!2138805 c!1265950) b!6806458))

(assert (= (and d!2138805 (not c!1265950)) b!6806454))

(assert (= (and b!6806454 c!1265949) b!6806456))

(assert (= (and b!6806454 (not c!1265949)) b!6806455))

(assert (= (or b!6806458 b!6806456) bm!618602))

(declare-fun m!7552582 () Bool)

(assert (=> bm!618602 m!7552582))

(declare-fun m!7552584 () Bool)

(assert (=> b!6806457 m!7552584))

(declare-fun m!7552586 () Bool)

(assert (=> b!6806458 m!7552586))

(assert (=> b!6806072 d!2138805))

(declare-fun d!2138807 () Bool)

(declare-fun dynLambda!26387 (Int Context!12022) (InoxSet Context!12022))

(assert (=> d!2138807 (= (flatMap!2108 lt!2449247 lambda!384161) (dynLambda!26387 lambda!384161 lt!2449232))))

(declare-fun lt!2449324 () Unit!159945)

(declare-fun choose!50771 ((InoxSet Context!12022) Context!12022 Int) Unit!159945)

(assert (=> d!2138807 (= lt!2449324 (choose!50771 lt!2449247 lt!2449232 lambda!384161))))

(assert (=> d!2138807 (= lt!2449247 (store ((as const (Array Context!12022 Bool)) false) lt!2449232 true))))

(assert (=> d!2138807 (= (lemmaFlatMapOnSingletonSet!1634 lt!2449247 lt!2449232 lambda!384161) lt!2449324)))

(declare-fun b_lambda!256597 () Bool)

(assert (=> (not b_lambda!256597) (not d!2138807)))

(declare-fun bs!1814278 () Bool)

(assert (= bs!1814278 d!2138807))

(assert (=> bs!1814278 m!7552186))

(declare-fun m!7552588 () Bool)

(assert (=> bs!1814278 m!7552588))

(declare-fun m!7552590 () Bool)

(assert (=> bs!1814278 m!7552590))

(assert (=> bs!1814278 m!7552194))

(assert (=> b!6806072 d!2138807))

(declare-fun d!2138809 () Bool)

(declare-fun isEmpty!38445 (Option!16514) Bool)

(assert (=> d!2138809 (= (isDefined!13217 (findConcatSeparation!2928 (reg!16956 r!7292) r!7292 Nil!66058 s!2326 s!2326)) (not (isEmpty!38445 (findConcatSeparation!2928 (reg!16956 r!7292) r!7292 Nil!66058 s!2326 s!2326))))))

(declare-fun bs!1814279 () Bool)

(assert (= bs!1814279 d!2138809))

(assert (=> bs!1814279 m!7552244))

(declare-fun m!7552592 () Bool)

(assert (=> bs!1814279 m!7552592))

(assert (=> b!6806054 d!2138809))

(declare-fun bs!1814283 () Bool)

(declare-fun d!2138811 () Bool)

(assert (= bs!1814283 (and d!2138811 b!6806054)))

(declare-fun lambda!384196 () Int)

(assert (=> bs!1814283 (= (= (Star!16627 (reg!16956 r!7292)) r!7292) (= lambda!384196 lambda!384158))))

(assert (=> bs!1814283 (not (= lambda!384196 lambda!384159))))

(assert (=> bs!1814283 (not (= lambda!384196 lambda!384160))))

(assert (=> d!2138811 true))

(assert (=> d!2138811 true))

(declare-fun lambda!384197 () Int)

(assert (=> bs!1814283 (not (= lambda!384197 lambda!384158))))

(assert (=> bs!1814283 (= (= (Star!16627 (reg!16956 r!7292)) r!7292) (= lambda!384197 lambda!384159))))

(assert (=> bs!1814283 (not (= lambda!384197 lambda!384160))))

(declare-fun bs!1814284 () Bool)

(assert (= bs!1814284 d!2138811))

(assert (=> bs!1814284 (not (= lambda!384197 lambda!384196))))

(assert (=> d!2138811 true))

(assert (=> d!2138811 true))

(assert (=> d!2138811 (= (Exists!3695 lambda!384196) (Exists!3695 lambda!384197))))

(declare-fun lt!2449340 () Unit!159945)

(declare-fun choose!50774 (Regex!16627 List!66182) Unit!159945)

(assert (=> d!2138811 (= lt!2449340 (choose!50774 (reg!16956 r!7292) s!2326))))

(assert (=> d!2138811 (validRegex!8363 (reg!16956 r!7292))))

(assert (=> d!2138811 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!786 (reg!16956 r!7292) s!2326) lt!2449340)))

(declare-fun m!7552634 () Bool)

(assert (=> bs!1814284 m!7552634))

(declare-fun m!7552636 () Bool)

(assert (=> bs!1814284 m!7552636))

(declare-fun m!7552638 () Bool)

(assert (=> bs!1814284 m!7552638))

(assert (=> bs!1814284 m!7552154))

(assert (=> b!6806054 d!2138811))

(declare-fun d!2138827 () Bool)

(declare-fun choose!50775 (Int) Bool)

(assert (=> d!2138827 (= (Exists!3695 lambda!384159) (choose!50775 lambda!384159))))

(declare-fun bs!1814285 () Bool)

(assert (= bs!1814285 d!2138827))

(declare-fun m!7552640 () Bool)

(assert (=> bs!1814285 m!7552640))

(assert (=> b!6806054 d!2138827))

(declare-fun d!2138829 () Bool)

(assert (=> d!2138829 (= (Exists!3695 lambda!384158) (choose!50775 lambda!384158))))

(declare-fun bs!1814286 () Bool)

(assert (= bs!1814286 d!2138829))

(declare-fun m!7552642 () Bool)

(assert (=> bs!1814286 m!7552642))

(assert (=> b!6806054 d!2138829))

(declare-fun d!2138831 () Bool)

(assert (=> d!2138831 (= (isEmpty!38441 s!2326) ((_ is Nil!66058) s!2326))))

(assert (=> b!6806054 d!2138831))

(declare-fun d!2138833 () Bool)

(assert (=> d!2138833 (= (Exists!3695 lambda!384160) (choose!50775 lambda!384160))))

(declare-fun bs!1814287 () Bool)

(assert (= bs!1814287 d!2138833))

(declare-fun m!7552644 () Bool)

(assert (=> bs!1814287 m!7552644))

(assert (=> b!6806054 d!2138833))

(declare-fun bs!1814292 () Bool)

(declare-fun d!2138835 () Bool)

(assert (= bs!1814292 (and d!2138835 d!2138811)))

(declare-fun lambda!384208 () Int)

(assert (=> bs!1814292 (= (= r!7292 (Star!16627 (reg!16956 r!7292))) (= lambda!384208 lambda!384196))))

(declare-fun bs!1814293 () Bool)

(assert (= bs!1814293 (and d!2138835 b!6806054)))

(assert (=> bs!1814293 (= lambda!384208 lambda!384158)))

(assert (=> bs!1814293 (not (= lambda!384208 lambda!384160))))

(assert (=> bs!1814292 (not (= lambda!384208 lambda!384197))))

(assert (=> bs!1814293 (not (= lambda!384208 lambda!384159))))

(assert (=> d!2138835 true))

(assert (=> d!2138835 true))

(assert (=> d!2138835 true))

(declare-fun lambda!384209 () Int)

(assert (=> bs!1814292 (not (= lambda!384209 lambda!384196))))

(declare-fun bs!1814294 () Bool)

(assert (= bs!1814294 d!2138835))

(assert (=> bs!1814294 (not (= lambda!384209 lambda!384208))))

(assert (=> bs!1814293 (not (= lambda!384209 lambda!384158))))

(assert (=> bs!1814293 (= lambda!384209 lambda!384160)))

(assert (=> bs!1814292 (not (= lambda!384209 lambda!384197))))

(assert (=> bs!1814293 (not (= lambda!384209 lambda!384159))))

(assert (=> d!2138835 true))

(assert (=> d!2138835 true))

(assert (=> d!2138835 true))

(assert (=> d!2138835 (= (Exists!3695 lambda!384208) (Exists!3695 lambda!384209))))

(declare-fun lt!2449346 () Unit!159945)

(declare-fun choose!50777 (Regex!16627 Regex!16627 List!66182) Unit!159945)

(assert (=> d!2138835 (= lt!2449346 (choose!50777 (reg!16956 r!7292) r!7292 s!2326))))

(assert (=> d!2138835 (validRegex!8363 (reg!16956 r!7292))))

(assert (=> d!2138835 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2222 (reg!16956 r!7292) r!7292 s!2326) lt!2449346)))

(declare-fun m!7552652 () Bool)

(assert (=> bs!1814294 m!7552652))

(declare-fun m!7552654 () Bool)

(assert (=> bs!1814294 m!7552654))

(declare-fun m!7552656 () Bool)

(assert (=> bs!1814294 m!7552656))

(assert (=> bs!1814294 m!7552154))

(assert (=> b!6806054 d!2138835))

(declare-fun b!6806543 () Bool)

(declare-fun lt!2449358 () Unit!159945)

(declare-fun lt!2449357 () Unit!159945)

(assert (=> b!6806543 (= lt!2449358 lt!2449357)))

(assert (=> b!6806543 (= (++!14801 (++!14801 Nil!66058 (Cons!66058 (h!72506 s!2326) Nil!66058)) (t!379915 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2748 (List!66182 C!33524 List!66182 List!66182) Unit!159945)

(assert (=> b!6806543 (= lt!2449357 (lemmaMoveElementToOtherListKeepsConcatEq!2748 Nil!66058 (h!72506 s!2326) (t!379915 s!2326) s!2326))))

(declare-fun e!4107369 () Option!16514)

(assert (=> b!6806543 (= e!4107369 (findConcatSeparation!2928 (reg!16956 r!7292) r!7292 (++!14801 Nil!66058 (Cons!66058 (h!72506 s!2326) Nil!66058)) (t!379915 s!2326) s!2326))))

(declare-fun b!6806544 () Bool)

(declare-fun e!4107370 () Bool)

(declare-fun lt!2449356 () Option!16514)

(assert (=> b!6806544 (= e!4107370 (not (isDefined!13217 lt!2449356)))))

(declare-fun d!2138839 () Bool)

(assert (=> d!2138839 e!4107370))

(declare-fun res!2781484 () Bool)

(assert (=> d!2138839 (=> res!2781484 e!4107370)))

(declare-fun e!4107372 () Bool)

(assert (=> d!2138839 (= res!2781484 e!4107372)))

(declare-fun res!2781482 () Bool)

(assert (=> d!2138839 (=> (not res!2781482) (not e!4107372))))

(assert (=> d!2138839 (= res!2781482 (isDefined!13217 lt!2449356))))

(declare-fun e!4107373 () Option!16514)

(assert (=> d!2138839 (= lt!2449356 e!4107373)))

(declare-fun c!1265962 () Bool)

(declare-fun e!4107371 () Bool)

(assert (=> d!2138839 (= c!1265962 e!4107371)))

(declare-fun res!2781483 () Bool)

(assert (=> d!2138839 (=> (not res!2781483) (not e!4107371))))

(assert (=> d!2138839 (= res!2781483 (matchR!8810 (reg!16956 r!7292) Nil!66058))))

(assert (=> d!2138839 (validRegex!8363 (reg!16956 r!7292))))

(assert (=> d!2138839 (= (findConcatSeparation!2928 (reg!16956 r!7292) r!7292 Nil!66058 s!2326 s!2326) lt!2449356)))

(declare-fun b!6806545 () Bool)

(assert (=> b!6806545 (= e!4107371 (matchR!8810 r!7292 s!2326))))

(declare-fun b!6806546 () Bool)

(assert (=> b!6806546 (= e!4107373 (Some!16513 (tuple2!67205 Nil!66058 s!2326)))))

(declare-fun b!6806547 () Bool)

(assert (=> b!6806547 (= e!4107372 (= (++!14801 (_1!36905 (get!23010 lt!2449356)) (_2!36905 (get!23010 lt!2449356))) s!2326))))

(declare-fun b!6806548 () Bool)

(assert (=> b!6806548 (= e!4107373 e!4107369)))

(declare-fun c!1265961 () Bool)

(assert (=> b!6806548 (= c!1265961 ((_ is Nil!66058) s!2326))))

(declare-fun b!6806549 () Bool)

(declare-fun res!2781485 () Bool)

(assert (=> b!6806549 (=> (not res!2781485) (not e!4107372))))

(assert (=> b!6806549 (= res!2781485 (matchR!8810 r!7292 (_2!36905 (get!23010 lt!2449356))))))

(declare-fun b!6806550 () Bool)

(declare-fun res!2781486 () Bool)

(assert (=> b!6806550 (=> (not res!2781486) (not e!4107372))))

(assert (=> b!6806550 (= res!2781486 (matchR!8810 (reg!16956 r!7292) (_1!36905 (get!23010 lt!2449356))))))

(declare-fun b!6806551 () Bool)

(assert (=> b!6806551 (= e!4107369 None!16513)))

(assert (= (and d!2138839 res!2781483) b!6806545))

(assert (= (and d!2138839 c!1265962) b!6806546))

(assert (= (and d!2138839 (not c!1265962)) b!6806548))

(assert (= (and b!6806548 c!1265961) b!6806551))

(assert (= (and b!6806548 (not c!1265961)) b!6806543))

(assert (= (and d!2138839 res!2781482) b!6806550))

(assert (= (and b!6806550 res!2781486) b!6806549))

(assert (= (and b!6806549 res!2781485) b!6806547))

(assert (= (and d!2138839 (not res!2781484)) b!6806544))

(declare-fun m!7552668 () Bool)

(assert (=> b!6806547 m!7552668))

(declare-fun m!7552670 () Bool)

(assert (=> b!6806547 m!7552670))

(declare-fun m!7552672 () Bool)

(assert (=> b!6806543 m!7552672))

(assert (=> b!6806543 m!7552672))

(declare-fun m!7552674 () Bool)

(assert (=> b!6806543 m!7552674))

(declare-fun m!7552676 () Bool)

(assert (=> b!6806543 m!7552676))

(assert (=> b!6806543 m!7552672))

(declare-fun m!7552678 () Bool)

(assert (=> b!6806543 m!7552678))

(declare-fun m!7552680 () Bool)

(assert (=> b!6806544 m!7552680))

(assert (=> b!6806545 m!7552224))

(assert (=> b!6806549 m!7552668))

(declare-fun m!7552682 () Bool)

(assert (=> b!6806549 m!7552682))

(assert (=> d!2138839 m!7552680))

(declare-fun m!7552684 () Bool)

(assert (=> d!2138839 m!7552684))

(assert (=> d!2138839 m!7552154))

(assert (=> b!6806550 m!7552668))

(declare-fun m!7552686 () Bool)

(assert (=> b!6806550 m!7552686))

(assert (=> b!6806054 d!2138839))

(declare-fun bs!1814302 () Bool)

(declare-fun d!2138849 () Bool)

(assert (= bs!1814302 (and d!2138849 d!2138811)))

(declare-fun lambda!384218 () Int)

(assert (=> bs!1814302 (= (= r!7292 (Star!16627 (reg!16956 r!7292))) (= lambda!384218 lambda!384196))))

(declare-fun bs!1814303 () Bool)

(assert (= bs!1814303 (and d!2138849 d!2138835)))

(assert (=> bs!1814303 (= lambda!384218 lambda!384208)))

(declare-fun bs!1814304 () Bool)

(assert (= bs!1814304 (and d!2138849 b!6806054)))

(assert (=> bs!1814304 (= lambda!384218 lambda!384158)))

(assert (=> bs!1814304 (not (= lambda!384218 lambda!384160))))

(assert (=> bs!1814302 (not (= lambda!384218 lambda!384197))))

(assert (=> bs!1814304 (not (= lambda!384218 lambda!384159))))

(assert (=> bs!1814303 (not (= lambda!384218 lambda!384209))))

(assert (=> d!2138849 true))

(assert (=> d!2138849 true))

(assert (=> d!2138849 true))

(assert (=> d!2138849 (= (isDefined!13217 (findConcatSeparation!2928 (reg!16956 r!7292) r!7292 Nil!66058 s!2326 s!2326)) (Exists!3695 lambda!384218))))

(declare-fun lt!2449367 () Unit!159945)

(declare-fun choose!50779 (Regex!16627 Regex!16627 List!66182) Unit!159945)

(assert (=> d!2138849 (= lt!2449367 (choose!50779 (reg!16956 r!7292) r!7292 s!2326))))

(assert (=> d!2138849 (validRegex!8363 (reg!16956 r!7292))))

(assert (=> d!2138849 (= (lemmaFindConcatSeparationEquivalentToExists!2692 (reg!16956 r!7292) r!7292 s!2326) lt!2449367)))

(declare-fun bs!1814305 () Bool)

(assert (= bs!1814305 d!2138849))

(declare-fun m!7552698 () Bool)

(assert (=> bs!1814305 m!7552698))

(assert (=> bs!1814305 m!7552244))

(assert (=> bs!1814305 m!7552244))

(assert (=> bs!1814305 m!7552246))

(assert (=> bs!1814305 m!7552154))

(declare-fun m!7552704 () Bool)

(assert (=> bs!1814305 m!7552704))

(assert (=> b!6806054 d!2138849))

(declare-fun b!6806606 () Bool)

(declare-fun e!4107405 () Bool)

(declare-fun lt!2449387 () Option!16514)

(assert (=> b!6806606 (= e!4107405 (= (++!14801 (_1!36905 (get!23010 lt!2449387)) (_2!36905 (get!23010 lt!2449387))) s!2326))))

(declare-fun b!6806607 () Bool)

(declare-fun e!4107406 () Option!16514)

(assert (=> b!6806607 (= e!4107406 None!16513)))

(declare-fun b!6806608 () Bool)

(declare-fun e!4107404 () Option!16514)

(assert (=> b!6806608 (= e!4107404 e!4107406)))

(declare-fun c!1265973 () Bool)

(assert (=> b!6806608 (= c!1265973 ((_ is Nil!66058) s!2326))))

(declare-fun b!6806609 () Bool)

(assert (=> b!6806609 (= e!4107404 (Some!16513 (tuple2!67205 Nil!66058 s!2326)))))

(declare-fun b!6806610 () Bool)

(declare-fun lt!2449386 () Unit!159945)

(declare-fun lt!2449385 () Unit!159945)

(assert (=> b!6806610 (= lt!2449386 lt!2449385)))

(assert (=> b!6806610 (= (++!14801 (++!14801 Nil!66058 (Cons!66058 (h!72506 s!2326) Nil!66058)) (t!379915 s!2326)) s!2326)))

(assert (=> b!6806610 (= lt!2449385 (lemmaMoveElementToOtherListKeepsConcatEq!2748 Nil!66058 (h!72506 s!2326) (t!379915 s!2326) s!2326))))

(assert (=> b!6806610 (= e!4107406 (findConcatSeparationZippers!236 lt!2449256 lt!2449265 (++!14801 Nil!66058 (Cons!66058 (h!72506 s!2326) Nil!66058)) (t!379915 s!2326) s!2326))))

(declare-fun b!6806611 () Bool)

(declare-fun e!4107407 () Bool)

(assert (=> b!6806611 (= e!4107407 (not (isDefined!13217 lt!2449387)))))

(declare-fun b!6806605 () Bool)

(declare-fun e!4107403 () Bool)

(assert (=> b!6806605 (= e!4107403 (matchZipper!2613 lt!2449265 s!2326))))

(declare-fun d!2138853 () Bool)

(assert (=> d!2138853 e!4107407))

(declare-fun res!2781520 () Bool)

(assert (=> d!2138853 (=> res!2781520 e!4107407)))

(assert (=> d!2138853 (= res!2781520 e!4107405)))

(declare-fun res!2781524 () Bool)

(assert (=> d!2138853 (=> (not res!2781524) (not e!4107405))))

(assert (=> d!2138853 (= res!2781524 (isDefined!13217 lt!2449387))))

(assert (=> d!2138853 (= lt!2449387 e!4107404)))

(declare-fun c!1265974 () Bool)

(assert (=> d!2138853 (= c!1265974 e!4107403)))

(declare-fun res!2781521 () Bool)

(assert (=> d!2138853 (=> (not res!2781521) (not e!4107403))))

(assert (=> d!2138853 (= res!2781521 (matchZipper!2613 lt!2449256 Nil!66058))))

(assert (=> d!2138853 (= (++!14801 Nil!66058 s!2326) s!2326)))

(assert (=> d!2138853 (= (findConcatSeparationZippers!236 lt!2449256 lt!2449265 Nil!66058 s!2326 s!2326) lt!2449387)))

(declare-fun b!6806612 () Bool)

(declare-fun res!2781523 () Bool)

(assert (=> b!6806612 (=> (not res!2781523) (not e!4107405))))

(assert (=> b!6806612 (= res!2781523 (matchZipper!2613 lt!2449256 (_1!36905 (get!23010 lt!2449387))))))

(declare-fun b!6806613 () Bool)

(declare-fun res!2781522 () Bool)

(assert (=> b!6806613 (=> (not res!2781522) (not e!4107405))))

(assert (=> b!6806613 (= res!2781522 (matchZipper!2613 lt!2449265 (_2!36905 (get!23010 lt!2449387))))))

(assert (= (and d!2138853 res!2781521) b!6806605))

(assert (= (and d!2138853 c!1265974) b!6806609))

(assert (= (and d!2138853 (not c!1265974)) b!6806608))

(assert (= (and b!6806608 c!1265973) b!6806607))

(assert (= (and b!6806608 (not c!1265973)) b!6806610))

(assert (= (and d!2138853 res!2781524) b!6806612))

(assert (= (and b!6806612 res!2781523) b!6806613))

(assert (= (and b!6806613 res!2781522) b!6806606))

(assert (= (and d!2138853 (not res!2781520)) b!6806611))

(declare-fun m!7552712 () Bool)

(assert (=> d!2138853 m!7552712))

(declare-fun m!7552714 () Bool)

(assert (=> d!2138853 m!7552714))

(declare-fun m!7552716 () Bool)

(assert (=> d!2138853 m!7552716))

(declare-fun m!7552718 () Bool)

(assert (=> b!6806606 m!7552718))

(declare-fun m!7552720 () Bool)

(assert (=> b!6806606 m!7552720))

(declare-fun m!7552722 () Bool)

(assert (=> b!6806605 m!7552722))

(assert (=> b!6806611 m!7552712))

(assert (=> b!6806610 m!7552672))

(assert (=> b!6806610 m!7552672))

(assert (=> b!6806610 m!7552674))

(assert (=> b!6806610 m!7552676))

(assert (=> b!6806610 m!7552672))

(declare-fun m!7552724 () Bool)

(assert (=> b!6806610 m!7552724))

(assert (=> b!6806612 m!7552718))

(declare-fun m!7552726 () Bool)

(assert (=> b!6806612 m!7552726))

(assert (=> b!6806613 m!7552718))

(declare-fun m!7552728 () Bool)

(assert (=> b!6806613 m!7552728))

(assert (=> b!6806073 d!2138853))

(declare-fun d!2138859 () Bool)

(assert (=> d!2138859 (isDefined!13217 (findConcatSeparationZippers!236 lt!2449256 (store ((as const (Array Context!12022 Bool)) false) lt!2449242 true) Nil!66058 s!2326 s!2326))))

(declare-fun lt!2449392 () Unit!159945)

(declare-fun choose!50782 ((InoxSet Context!12022) Context!12022 List!66182) Unit!159945)

(assert (=> d!2138859 (= lt!2449392 (choose!50782 lt!2449256 lt!2449242 s!2326))))

(assert (=> d!2138859 (matchZipper!2613 (appendTo!232 lt!2449256 lt!2449242) s!2326)))

(assert (=> d!2138859 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!236 lt!2449256 lt!2449242 s!2326) lt!2449392)))

(declare-fun bs!1814318 () Bool)

(assert (= bs!1814318 d!2138859))

(assert (=> bs!1814318 m!7552144))

(declare-fun m!7552760 () Bool)

(assert (=> bs!1814318 m!7552760))

(declare-fun m!7552762 () Bool)

(assert (=> bs!1814318 m!7552762))

(assert (=> bs!1814318 m!7552170))

(declare-fun m!7552764 () Bool)

(assert (=> bs!1814318 m!7552764))

(assert (=> bs!1814318 m!7552170))

(assert (=> bs!1814318 m!7552764))

(declare-fun m!7552766 () Bool)

(assert (=> bs!1814318 m!7552766))

(assert (=> bs!1814318 m!7552144))

(assert (=> b!6806073 d!2138859))

(declare-fun d!2138867 () Bool)

(assert (=> d!2138867 (= (isDefined!13217 lt!2449244) (not (isEmpty!38445 lt!2449244)))))

(declare-fun bs!1814319 () Bool)

(assert (= bs!1814319 d!2138867))

(declare-fun m!7552768 () Bool)

(assert (=> bs!1814319 m!7552768))

(assert (=> b!6806073 d!2138867))

(declare-fun b!6806664 () Bool)

(declare-fun e!4107438 () List!66182)

(assert (=> b!6806664 (= e!4107438 (Cons!66058 (h!72506 (_1!36905 lt!2449248)) (++!14801 (t!379915 (_1!36905 lt!2449248)) (_2!36905 lt!2449248))))))

(declare-fun b!6806663 () Bool)

(assert (=> b!6806663 (= e!4107438 (_2!36905 lt!2449248))))

(declare-fun b!6806666 () Bool)

(declare-fun e!4107439 () Bool)

(declare-fun lt!2449398 () List!66182)

(assert (=> b!6806666 (= e!4107439 (or (not (= (_2!36905 lt!2449248) Nil!66058)) (= lt!2449398 (_1!36905 lt!2449248))))))

(declare-fun d!2138869 () Bool)

(assert (=> d!2138869 e!4107439))

(declare-fun res!2781540 () Bool)

(assert (=> d!2138869 (=> (not res!2781540) (not e!4107439))))

(declare-fun content!12919 (List!66182) (InoxSet C!33524))

(assert (=> d!2138869 (= res!2781540 (= (content!12919 lt!2449398) ((_ map or) (content!12919 (_1!36905 lt!2449248)) (content!12919 (_2!36905 lt!2449248)))))))

(assert (=> d!2138869 (= lt!2449398 e!4107438)))

(declare-fun c!1265992 () Bool)

(assert (=> d!2138869 (= c!1265992 ((_ is Nil!66058) (_1!36905 lt!2449248)))))

(assert (=> d!2138869 (= (++!14801 (_1!36905 lt!2449248) (_2!36905 lt!2449248)) lt!2449398)))

(declare-fun b!6806665 () Bool)

(declare-fun res!2781541 () Bool)

(assert (=> b!6806665 (=> (not res!2781541) (not e!4107439))))

(declare-fun size!40679 (List!66182) Int)

(assert (=> b!6806665 (= res!2781541 (= (size!40679 lt!2449398) (+ (size!40679 (_1!36905 lt!2449248)) (size!40679 (_2!36905 lt!2449248)))))))

(assert (= (and d!2138869 c!1265992) b!6806663))

(assert (= (and d!2138869 (not c!1265992)) b!6806664))

(assert (= (and d!2138869 res!2781540) b!6806665))

(assert (= (and b!6806665 res!2781541) b!6806666))

(declare-fun m!7552790 () Bool)

(assert (=> b!6806664 m!7552790))

(declare-fun m!7552792 () Bool)

(assert (=> d!2138869 m!7552792))

(declare-fun m!7552794 () Bool)

(assert (=> d!2138869 m!7552794))

(declare-fun m!7552796 () Bool)

(assert (=> d!2138869 m!7552796))

(declare-fun m!7552798 () Bool)

(assert (=> b!6806665 m!7552798))

(declare-fun m!7552800 () Bool)

(assert (=> b!6806665 m!7552800))

(declare-fun m!7552802 () Bool)

(assert (=> b!6806665 m!7552802))

(assert (=> b!6806073 d!2138869))

(declare-fun d!2138873 () Bool)

(assert (=> d!2138873 (= (get!23010 lt!2449244) (v!52719 lt!2449244))))

(assert (=> b!6806073 d!2138873))

(declare-fun d!2138875 () Bool)

(declare-fun c!1265993 () Bool)

(assert (=> d!2138875 (= c!1265993 (isEmpty!38441 s!2326))))

(declare-fun e!4107440 () Bool)

(assert (=> d!2138875 (= (matchZipper!2613 lt!2449247 s!2326) e!4107440)))

(declare-fun b!6806667 () Bool)

(assert (=> b!6806667 (= e!4107440 (nullableZipper!2334 lt!2449247))))

(declare-fun b!6806668 () Bool)

(assert (=> b!6806668 (= e!4107440 (matchZipper!2613 (derivationStepZipper!2571 lt!2449247 (head!13665 s!2326)) (tail!12750 s!2326)))))

(assert (= (and d!2138875 c!1265993) b!6806667))

(assert (= (and d!2138875 (not c!1265993)) b!6806668))

(assert (=> d!2138875 m!7552238))

(declare-fun m!7552804 () Bool)

(assert (=> b!6806667 m!7552804))

(declare-fun m!7552806 () Bool)

(assert (=> b!6806668 m!7552806))

(assert (=> b!6806668 m!7552806))

(declare-fun m!7552808 () Bool)

(assert (=> b!6806668 m!7552808))

(declare-fun m!7552810 () Bool)

(assert (=> b!6806668 m!7552810))

(assert (=> b!6806668 m!7552808))

(assert (=> b!6806668 m!7552810))

(declare-fun m!7552812 () Bool)

(assert (=> b!6806668 m!7552812))

(assert (=> b!6806074 d!2138875))

(declare-fun d!2138877 () Bool)

(declare-fun c!1265994 () Bool)

(assert (=> d!2138877 (= c!1265994 (isEmpty!38441 (t!379915 s!2326)))))

(declare-fun e!4107441 () Bool)

(assert (=> d!2138877 (= (matchZipper!2613 (derivationStepZipper!2571 lt!2449247 (h!72506 s!2326)) (t!379915 s!2326)) e!4107441)))

(declare-fun b!6806669 () Bool)

(assert (=> b!6806669 (= e!4107441 (nullableZipper!2334 (derivationStepZipper!2571 lt!2449247 (h!72506 s!2326))))))

(declare-fun b!6806670 () Bool)

(assert (=> b!6806670 (= e!4107441 (matchZipper!2613 (derivationStepZipper!2571 (derivationStepZipper!2571 lt!2449247 (h!72506 s!2326)) (head!13665 (t!379915 s!2326))) (tail!12750 (t!379915 s!2326))))))

(assert (= (and d!2138877 c!1265994) b!6806669))

(assert (= (and d!2138877 (not c!1265994)) b!6806670))

(declare-fun m!7552814 () Bool)

(assert (=> d!2138877 m!7552814))

(assert (=> b!6806669 m!7552212))

(declare-fun m!7552816 () Bool)

(assert (=> b!6806669 m!7552816))

(declare-fun m!7552818 () Bool)

(assert (=> b!6806670 m!7552818))

(assert (=> b!6806670 m!7552212))

(assert (=> b!6806670 m!7552818))

(declare-fun m!7552820 () Bool)

(assert (=> b!6806670 m!7552820))

(declare-fun m!7552822 () Bool)

(assert (=> b!6806670 m!7552822))

(assert (=> b!6806670 m!7552820))

(assert (=> b!6806670 m!7552822))

(declare-fun m!7552824 () Bool)

(assert (=> b!6806670 m!7552824))

(assert (=> b!6806074 d!2138877))

(declare-fun bs!1814325 () Bool)

(declare-fun d!2138879 () Bool)

(assert (= bs!1814325 (and d!2138879 b!6806060)))

(declare-fun lambda!384228 () Int)

(assert (=> bs!1814325 (= lambda!384228 lambda!384161)))

(declare-fun bs!1814326 () Bool)

(assert (= bs!1814326 (and d!2138879 d!2138797)))

(assert (=> bs!1814326 (= lambda!384228 lambda!384191)))

(assert (=> d!2138879 true))

(assert (=> d!2138879 (= (derivationStepZipper!2571 lt!2449247 (h!72506 s!2326)) (flatMap!2108 lt!2449247 lambda!384228))))

(declare-fun bs!1814327 () Bool)

(assert (= bs!1814327 d!2138879))

(declare-fun m!7552826 () Bool)

(assert (=> bs!1814327 m!7552826))

(assert (=> b!6806074 d!2138879))

(declare-fun d!2138881 () Bool)

(declare-fun c!1265997 () Bool)

(assert (=> d!2138881 (= c!1265997 (isEmpty!38441 s!2326))))

(declare-fun e!4107444 () Bool)

(assert (=> d!2138881 (= (matchZipper!2613 z!1189 s!2326) e!4107444)))

(declare-fun b!6806675 () Bool)

(assert (=> b!6806675 (= e!4107444 (nullableZipper!2334 z!1189))))

(declare-fun b!6806676 () Bool)

(assert (=> b!6806676 (= e!4107444 (matchZipper!2613 (derivationStepZipper!2571 z!1189 (head!13665 s!2326)) (tail!12750 s!2326)))))

(assert (= (and d!2138881 c!1265997) b!6806675))

(assert (= (and d!2138881 (not c!1265997)) b!6806676))

(assert (=> d!2138881 m!7552238))

(declare-fun m!7552828 () Bool)

(assert (=> b!6806675 m!7552828))

(assert (=> b!6806676 m!7552806))

(assert (=> b!6806676 m!7552806))

(declare-fun m!7552830 () Bool)

(assert (=> b!6806676 m!7552830))

(assert (=> b!6806676 m!7552810))

(assert (=> b!6806676 m!7552830))

(assert (=> b!6806676 m!7552810))

(declare-fun m!7552832 () Bool)

(assert (=> b!6806676 m!7552832))

(assert (=> b!6806055 d!2138881))

(declare-fun d!2138883 () Bool)

(declare-fun lt!2449401 () Regex!16627)

(assert (=> d!2138883 (validRegex!8363 lt!2449401)))

(assert (=> d!2138883 (= lt!2449401 (generalisedUnion!2471 (unfocusZipperList!2048 (Cons!66057 lt!2449242 Nil!66057))))))

(assert (=> d!2138883 (= (unfocusZipper!2369 (Cons!66057 lt!2449242 Nil!66057)) lt!2449401)))

(declare-fun bs!1814328 () Bool)

(assert (= bs!1814328 d!2138883))

(declare-fun m!7552834 () Bool)

(assert (=> bs!1814328 m!7552834))

(declare-fun m!7552836 () Bool)

(assert (=> bs!1814328 m!7552836))

(assert (=> bs!1814328 m!7552836))

(declare-fun m!7552838 () Bool)

(assert (=> bs!1814328 m!7552838))

(assert (=> b!6806056 d!2138883))

(declare-fun bs!1814358 () Bool)

(declare-fun b!6806804 () Bool)

(assert (= bs!1814358 (and b!6806804 d!2138811)))

(declare-fun lambda!384239 () Int)

(assert (=> bs!1814358 (not (= lambda!384239 lambda!384196))))

(declare-fun bs!1814359 () Bool)

(assert (= bs!1814359 (and b!6806804 d!2138835)))

(assert (=> bs!1814359 (not (= lambda!384239 lambda!384208))))

(declare-fun bs!1814360 () Bool)

(assert (= bs!1814360 (and b!6806804 b!6806054)))

(assert (=> bs!1814360 (not (= lambda!384239 lambda!384158))))

(assert (=> bs!1814360 (not (= lambda!384239 lambda!384160))))

(assert (=> bs!1814358 (= (and (= (reg!16956 lt!2449249) (reg!16956 r!7292)) (= lt!2449249 (Star!16627 (reg!16956 r!7292)))) (= lambda!384239 lambda!384197))))

(assert (=> bs!1814360 (= (and (= (reg!16956 lt!2449249) (reg!16956 r!7292)) (= lt!2449249 r!7292)) (= lambda!384239 lambda!384159))))

(declare-fun bs!1814361 () Bool)

(assert (= bs!1814361 (and b!6806804 d!2138849)))

(assert (=> bs!1814361 (not (= lambda!384239 lambda!384218))))

(assert (=> bs!1814359 (not (= lambda!384239 lambda!384209))))

(assert (=> b!6806804 true))

(assert (=> b!6806804 true))

(declare-fun bs!1814362 () Bool)

(declare-fun b!6806799 () Bool)

(assert (= bs!1814362 (and b!6806799 b!6806804)))

(declare-fun lambda!384240 () Int)

(assert (=> bs!1814362 (not (= lambda!384240 lambda!384239))))

(declare-fun bs!1814363 () Bool)

(assert (= bs!1814363 (and b!6806799 d!2138811)))

(assert (=> bs!1814363 (not (= lambda!384240 lambda!384196))))

(declare-fun bs!1814364 () Bool)

(assert (= bs!1814364 (and b!6806799 d!2138835)))

(assert (=> bs!1814364 (not (= lambda!384240 lambda!384208))))

(declare-fun bs!1814365 () Bool)

(assert (= bs!1814365 (and b!6806799 b!6806054)))

(assert (=> bs!1814365 (not (= lambda!384240 lambda!384158))))

(assert (=> bs!1814365 (= (and (= (regOne!33766 lt!2449249) (reg!16956 r!7292)) (= (regTwo!33766 lt!2449249) r!7292)) (= lambda!384240 lambda!384160))))

(assert (=> bs!1814363 (not (= lambda!384240 lambda!384197))))

(assert (=> bs!1814365 (not (= lambda!384240 lambda!384159))))

(declare-fun bs!1814366 () Bool)

(assert (= bs!1814366 (and b!6806799 d!2138849)))

(assert (=> bs!1814366 (not (= lambda!384240 lambda!384218))))

(assert (=> bs!1814364 (= (and (= (regOne!33766 lt!2449249) (reg!16956 r!7292)) (= (regTwo!33766 lt!2449249) r!7292)) (= lambda!384240 lambda!384209))))

(assert (=> b!6806799 true))

(assert (=> b!6806799 true))

(declare-fun b!6806794 () Bool)

(declare-fun e!4107508 () Bool)

(assert (=> b!6806794 (= e!4107508 (matchRSpec!3728 (regTwo!33767 lt!2449249) s!2326))))

(declare-fun call!618618 () Bool)

(declare-fun bm!618613 () Bool)

(declare-fun c!1266018 () Bool)

(assert (=> bm!618613 (= call!618618 (Exists!3695 (ite c!1266018 lambda!384239 lambda!384240)))))

(declare-fun b!6806796 () Bool)

(declare-fun e!4107504 () Bool)

(declare-fun e!4107509 () Bool)

(assert (=> b!6806796 (= e!4107504 e!4107509)))

(assert (=> b!6806796 (= c!1266018 ((_ is Star!16627) lt!2449249))))

(declare-fun b!6806797 () Bool)

(declare-fun e!4107505 () Bool)

(assert (=> b!6806797 (= e!4107505 (= s!2326 (Cons!66058 (c!1265821 lt!2449249) Nil!66058)))))

(declare-fun b!6806798 () Bool)

(assert (=> b!6806798 (= e!4107504 e!4107508)))

(declare-fun res!2781569 () Bool)

(assert (=> b!6806798 (= res!2781569 (matchRSpec!3728 (regOne!33767 lt!2449249) s!2326))))

(assert (=> b!6806798 (=> res!2781569 e!4107508)))

(assert (=> b!6806799 (= e!4107509 call!618618)))

(declare-fun b!6806800 () Bool)

(declare-fun res!2781570 () Bool)

(declare-fun e!4107506 () Bool)

(assert (=> b!6806800 (=> res!2781570 e!4107506)))

(declare-fun call!618619 () Bool)

(assert (=> b!6806800 (= res!2781570 call!618619)))

(assert (=> b!6806800 (= e!4107509 e!4107506)))

(declare-fun b!6806795 () Bool)

(declare-fun c!1266016 () Bool)

(assert (=> b!6806795 (= c!1266016 ((_ is ElementMatch!16627) lt!2449249))))

(declare-fun e!4107507 () Bool)

(assert (=> b!6806795 (= e!4107507 e!4107505)))

(declare-fun d!2138885 () Bool)

(declare-fun c!1266019 () Bool)

(assert (=> d!2138885 (= c!1266019 ((_ is EmptyExpr!16627) lt!2449249))))

(declare-fun e!4107503 () Bool)

(assert (=> d!2138885 (= (matchRSpec!3728 lt!2449249 s!2326) e!4107503)))

(declare-fun b!6806801 () Bool)

(assert (=> b!6806801 (= e!4107503 e!4107507)))

(declare-fun res!2781571 () Bool)

(assert (=> b!6806801 (= res!2781571 (not ((_ is EmptyLang!16627) lt!2449249)))))

(assert (=> b!6806801 (=> (not res!2781571) (not e!4107507))))

(declare-fun b!6806802 () Bool)

(assert (=> b!6806802 (= e!4107503 call!618619)))

(declare-fun b!6806803 () Bool)

(declare-fun c!1266017 () Bool)

(assert (=> b!6806803 (= c!1266017 ((_ is Union!16627) lt!2449249))))

(assert (=> b!6806803 (= e!4107505 e!4107504)))

(declare-fun bm!618614 () Bool)

(assert (=> bm!618614 (= call!618619 (isEmpty!38441 s!2326))))

(assert (=> b!6806804 (= e!4107506 call!618618)))

(assert (= (and d!2138885 c!1266019) b!6806802))

(assert (= (and d!2138885 (not c!1266019)) b!6806801))

(assert (= (and b!6806801 res!2781571) b!6806795))

(assert (= (and b!6806795 c!1266016) b!6806797))

(assert (= (and b!6806795 (not c!1266016)) b!6806803))

(assert (= (and b!6806803 c!1266017) b!6806798))

(assert (= (and b!6806803 (not c!1266017)) b!6806796))

(assert (= (and b!6806798 (not res!2781569)) b!6806794))

(assert (= (and b!6806796 c!1266018) b!6806800))

(assert (= (and b!6806796 (not c!1266018)) b!6806799))

(assert (= (and b!6806800 (not res!2781570)) b!6806804))

(assert (= (or b!6806804 b!6806799) bm!618613))

(assert (= (or b!6806802 b!6806800) bm!618614))

(declare-fun m!7552886 () Bool)

(assert (=> b!6806794 m!7552886))

(declare-fun m!7552888 () Bool)

(assert (=> bm!618613 m!7552888))

(declare-fun m!7552890 () Bool)

(assert (=> b!6806798 m!7552890))

(assert (=> bm!618614 m!7552238))

(assert (=> b!6806058 d!2138885))

(declare-fun b!6806833 () Bool)

(declare-fun e!4107524 () Bool)

(declare-fun derivativeStep!5291 (Regex!16627 C!33524) Regex!16627)

(assert (=> b!6806833 (= e!4107524 (matchR!8810 (derivativeStep!5291 lt!2449249 (head!13665 s!2326)) (tail!12750 s!2326)))))

(declare-fun b!6806834 () Bool)

(declare-fun e!4107526 () Bool)

(declare-fun e!4107525 () Bool)

(assert (=> b!6806834 (= e!4107526 e!4107525)))

(declare-fun res!2781592 () Bool)

(assert (=> b!6806834 (=> res!2781592 e!4107525)))

(declare-fun call!618622 () Bool)

(assert (=> b!6806834 (= res!2781592 call!618622)))

(declare-fun b!6806835 () Bool)

(declare-fun res!2781589 () Bool)

(declare-fun e!4107528 () Bool)

(assert (=> b!6806835 (=> (not res!2781589) (not e!4107528))))

(assert (=> b!6806835 (= res!2781589 (isEmpty!38441 (tail!12750 s!2326)))))

(declare-fun d!2138909 () Bool)

(declare-fun e!4107527 () Bool)

(assert (=> d!2138909 e!4107527))

(declare-fun c!1266027 () Bool)

(assert (=> d!2138909 (= c!1266027 ((_ is EmptyExpr!16627) lt!2449249))))

(declare-fun lt!2449408 () Bool)

(assert (=> d!2138909 (= lt!2449408 e!4107524)))

(declare-fun c!1266028 () Bool)

(assert (=> d!2138909 (= c!1266028 (isEmpty!38441 s!2326))))

(assert (=> d!2138909 (validRegex!8363 lt!2449249)))

(assert (=> d!2138909 (= (matchR!8810 lt!2449249 s!2326) lt!2449408)))

(declare-fun b!6806836 () Bool)

(declare-fun res!2781594 () Bool)

(declare-fun e!4107529 () Bool)

(assert (=> b!6806836 (=> res!2781594 e!4107529)))

(assert (=> b!6806836 (= res!2781594 (not ((_ is ElementMatch!16627) lt!2449249)))))

(declare-fun e!4107530 () Bool)

(assert (=> b!6806836 (= e!4107530 e!4107529)))

(declare-fun b!6806837 () Bool)

(declare-fun res!2781595 () Bool)

(assert (=> b!6806837 (=> (not res!2781595) (not e!4107528))))

(assert (=> b!6806837 (= res!2781595 (not call!618622))))

(declare-fun b!6806838 () Bool)

(declare-fun res!2781591 () Bool)

(assert (=> b!6806838 (=> res!2781591 e!4107525)))

(assert (=> b!6806838 (= res!2781591 (not (isEmpty!38441 (tail!12750 s!2326))))))

(declare-fun b!6806839 () Bool)

(assert (=> b!6806839 (= e!4107527 e!4107530)))

(declare-fun c!1266026 () Bool)

(assert (=> b!6806839 (= c!1266026 ((_ is EmptyLang!16627) lt!2449249))))

(declare-fun b!6806840 () Bool)

(assert (=> b!6806840 (= e!4107528 (= (head!13665 s!2326) (c!1265821 lt!2449249)))))

(declare-fun b!6806841 () Bool)

(assert (=> b!6806841 (= e!4107527 (= lt!2449408 call!618622))))

(declare-fun b!6806842 () Bool)

(assert (=> b!6806842 (= e!4107530 (not lt!2449408))))

(declare-fun b!6806843 () Bool)

(assert (=> b!6806843 (= e!4107529 e!4107526)))

(declare-fun res!2781590 () Bool)

(assert (=> b!6806843 (=> (not res!2781590) (not e!4107526))))

(assert (=> b!6806843 (= res!2781590 (not lt!2449408))))

(declare-fun b!6806844 () Bool)

(declare-fun res!2781588 () Bool)

(assert (=> b!6806844 (=> res!2781588 e!4107529)))

(assert (=> b!6806844 (= res!2781588 e!4107528)))

(declare-fun res!2781593 () Bool)

(assert (=> b!6806844 (=> (not res!2781593) (not e!4107528))))

(assert (=> b!6806844 (= res!2781593 lt!2449408)))

(declare-fun b!6806845 () Bool)

(assert (=> b!6806845 (= e!4107525 (not (= (head!13665 s!2326) (c!1265821 lt!2449249))))))

(declare-fun bm!618617 () Bool)

(assert (=> bm!618617 (= call!618622 (isEmpty!38441 s!2326))))

(declare-fun b!6806846 () Bool)

(assert (=> b!6806846 (= e!4107524 (nullable!6606 lt!2449249))))

(assert (= (and d!2138909 c!1266028) b!6806846))

(assert (= (and d!2138909 (not c!1266028)) b!6806833))

(assert (= (and d!2138909 c!1266027) b!6806841))

(assert (= (and d!2138909 (not c!1266027)) b!6806839))

(assert (= (and b!6806839 c!1266026) b!6806842))

(assert (= (and b!6806839 (not c!1266026)) b!6806836))

(assert (= (and b!6806836 (not res!2781594)) b!6806844))

(assert (= (and b!6806844 res!2781593) b!6806837))

(assert (= (and b!6806837 res!2781595) b!6806835))

(assert (= (and b!6806835 res!2781589) b!6806840))

(assert (= (and b!6806844 (not res!2781588)) b!6806843))

(assert (= (and b!6806843 res!2781590) b!6806834))

(assert (= (and b!6806834 (not res!2781592)) b!6806838))

(assert (= (and b!6806838 (not res!2781591)) b!6806845))

(assert (= (or b!6806841 b!6806834 b!6806837) bm!618617))

(assert (=> b!6806840 m!7552806))

(assert (=> b!6806833 m!7552806))

(assert (=> b!6806833 m!7552806))

(declare-fun m!7552892 () Bool)

(assert (=> b!6806833 m!7552892))

(assert (=> b!6806833 m!7552810))

(assert (=> b!6806833 m!7552892))

(assert (=> b!6806833 m!7552810))

(declare-fun m!7552894 () Bool)

(assert (=> b!6806833 m!7552894))

(declare-fun m!7552896 () Bool)

(assert (=> b!6806846 m!7552896))

(assert (=> b!6806835 m!7552810))

(assert (=> b!6806835 m!7552810))

(declare-fun m!7552898 () Bool)

(assert (=> b!6806835 m!7552898))

(assert (=> d!2138909 m!7552238))

(declare-fun m!7552900 () Bool)

(assert (=> d!2138909 m!7552900))

(assert (=> b!6806838 m!7552810))

(assert (=> b!6806838 m!7552810))

(assert (=> b!6806838 m!7552898))

(assert (=> bm!618617 m!7552238))

(assert (=> b!6806845 m!7552806))

(assert (=> b!6806058 d!2138909))

(declare-fun d!2138911 () Bool)

(assert (=> d!2138911 (= (matchR!8810 lt!2449249 s!2326) (matchRSpec!3728 lt!2449249 s!2326))))

(declare-fun lt!2449411 () Unit!159945)

(declare-fun choose!50783 (Regex!16627 List!66182) Unit!159945)

(assert (=> d!2138911 (= lt!2449411 (choose!50783 lt!2449249 s!2326))))

(assert (=> d!2138911 (validRegex!8363 lt!2449249)))

(assert (=> d!2138911 (= (mainMatchTheorem!3728 lt!2449249 s!2326) lt!2449411)))

(declare-fun bs!1814367 () Bool)

(assert (= bs!1814367 d!2138911))

(assert (=> bs!1814367 m!7552128))

(assert (=> bs!1814367 m!7552126))

(declare-fun m!7552902 () Bool)

(assert (=> bs!1814367 m!7552902))

(assert (=> bs!1814367 m!7552900))

(assert (=> b!6806058 d!2138911))

(declare-fun bs!1814368 () Bool)

(declare-fun d!2138913 () Bool)

(assert (= bs!1814368 (and d!2138913 b!6806063)))

(declare-fun lambda!384243 () Int)

(assert (=> bs!1814368 (= lambda!384243 lambda!384163)))

(declare-fun bs!1814369 () Bool)

(assert (= bs!1814369 (and d!2138913 d!2138753)))

(assert (=> bs!1814369 (= lambda!384243 lambda!384182)))

(declare-fun b!6806867 () Bool)

(declare-fun e!4107544 () Bool)

(declare-fun lt!2449414 () Regex!16627)

(declare-fun isEmptyLang!1993 (Regex!16627) Bool)

(assert (=> b!6806867 (= e!4107544 (isEmptyLang!1993 lt!2449414))))

(declare-fun b!6806868 () Bool)

(declare-fun e!4107548 () Bool)

(declare-fun isUnion!1423 (Regex!16627) Bool)

(assert (=> b!6806868 (= e!4107548 (isUnion!1423 lt!2449414))))

(declare-fun b!6806869 () Bool)

(declare-fun e!4107546 () Regex!16627)

(assert (=> b!6806869 (= e!4107546 (Union!16627 (h!72504 (unfocusZipperList!2048 zl!343)) (generalisedUnion!2471 (t!379913 (unfocusZipperList!2048 zl!343)))))))

(declare-fun b!6806870 () Bool)

(declare-fun e!4107545 () Regex!16627)

(assert (=> b!6806870 (= e!4107545 (h!72504 (unfocusZipperList!2048 zl!343)))))

(declare-fun b!6806871 () Bool)

(assert (=> b!6806871 (= e!4107546 EmptyLang!16627)))

(declare-fun e!4107547 () Bool)

(assert (=> d!2138913 e!4107547))

(declare-fun res!2781600 () Bool)

(assert (=> d!2138913 (=> (not res!2781600) (not e!4107547))))

(assert (=> d!2138913 (= res!2781600 (validRegex!8363 lt!2449414))))

(assert (=> d!2138913 (= lt!2449414 e!4107545)))

(declare-fun c!1266038 () Bool)

(declare-fun e!4107543 () Bool)

(assert (=> d!2138913 (= c!1266038 e!4107543)))

(declare-fun res!2781601 () Bool)

(assert (=> d!2138913 (=> (not res!2781601) (not e!4107543))))

(assert (=> d!2138913 (= res!2781601 ((_ is Cons!66056) (unfocusZipperList!2048 zl!343)))))

(assert (=> d!2138913 (forall!15819 (unfocusZipperList!2048 zl!343) lambda!384243)))

(assert (=> d!2138913 (= (generalisedUnion!2471 (unfocusZipperList!2048 zl!343)) lt!2449414)))

(declare-fun b!6806872 () Bool)

(assert (=> b!6806872 (= e!4107544 e!4107548)))

(declare-fun c!1266040 () Bool)

(declare-fun isEmpty!38446 (List!66180) Bool)

(declare-fun tail!12751 (List!66180) List!66180)

(assert (=> b!6806872 (= c!1266040 (isEmpty!38446 (tail!12751 (unfocusZipperList!2048 zl!343))))))

(declare-fun b!6806873 () Bool)

(assert (=> b!6806873 (= e!4107547 e!4107544)))

(declare-fun c!1266039 () Bool)

(assert (=> b!6806873 (= c!1266039 (isEmpty!38446 (unfocusZipperList!2048 zl!343)))))

(declare-fun b!6806874 () Bool)

(assert (=> b!6806874 (= e!4107545 e!4107546)))

(declare-fun c!1266037 () Bool)

(assert (=> b!6806874 (= c!1266037 ((_ is Cons!66056) (unfocusZipperList!2048 zl!343)))))

(declare-fun b!6806875 () Bool)

(declare-fun head!13666 (List!66180) Regex!16627)

(assert (=> b!6806875 (= e!4107548 (= lt!2449414 (head!13666 (unfocusZipperList!2048 zl!343))))))

(declare-fun b!6806876 () Bool)

(assert (=> b!6806876 (= e!4107543 (isEmpty!38446 (t!379913 (unfocusZipperList!2048 zl!343))))))

(assert (= (and d!2138913 res!2781601) b!6806876))

(assert (= (and d!2138913 c!1266038) b!6806870))

(assert (= (and d!2138913 (not c!1266038)) b!6806874))

(assert (= (and b!6806874 c!1266037) b!6806869))

(assert (= (and b!6806874 (not c!1266037)) b!6806871))

(assert (= (and d!2138913 res!2781600) b!6806873))

(assert (= (and b!6806873 c!1266039) b!6806867))

(assert (= (and b!6806873 (not c!1266039)) b!6806872))

(assert (= (and b!6806872 c!1266040) b!6806875))

(assert (= (and b!6806872 (not c!1266040)) b!6806868))

(declare-fun m!7552904 () Bool)

(assert (=> d!2138913 m!7552904))

(assert (=> d!2138913 m!7552228))

(declare-fun m!7552906 () Bool)

(assert (=> d!2138913 m!7552906))

(assert (=> b!6806875 m!7552228))

(declare-fun m!7552908 () Bool)

(assert (=> b!6806875 m!7552908))

(declare-fun m!7552910 () Bool)

(assert (=> b!6806867 m!7552910))

(declare-fun m!7552912 () Bool)

(assert (=> b!6806876 m!7552912))

(assert (=> b!6806873 m!7552228))

(declare-fun m!7552914 () Bool)

(assert (=> b!6806873 m!7552914))

(assert (=> b!6806872 m!7552228))

(declare-fun m!7552916 () Bool)

(assert (=> b!6806872 m!7552916))

(assert (=> b!6806872 m!7552916))

(declare-fun m!7552918 () Bool)

(assert (=> b!6806872 m!7552918))

(declare-fun m!7552920 () Bool)

(assert (=> b!6806868 m!7552920))

(declare-fun m!7552922 () Bool)

(assert (=> b!6806869 m!7552922))

(assert (=> b!6806059 d!2138913))

(declare-fun bs!1814370 () Bool)

(declare-fun d!2138915 () Bool)

(assert (= bs!1814370 (and d!2138915 b!6806063)))

(declare-fun lambda!384246 () Int)

(assert (=> bs!1814370 (= lambda!384246 lambda!384163)))

(declare-fun bs!1814371 () Bool)

(assert (= bs!1814371 (and d!2138915 d!2138753)))

(assert (=> bs!1814371 (= lambda!384246 lambda!384182)))

(declare-fun bs!1814372 () Bool)

(assert (= bs!1814372 (and d!2138915 d!2138913)))

(assert (=> bs!1814372 (= lambda!384246 lambda!384243)))

(declare-fun lt!2449417 () List!66180)

(assert (=> d!2138915 (forall!15819 lt!2449417 lambda!384246)))

(declare-fun e!4107551 () List!66180)

(assert (=> d!2138915 (= lt!2449417 e!4107551)))

(declare-fun c!1266043 () Bool)

(assert (=> d!2138915 (= c!1266043 ((_ is Cons!66057) zl!343))))

(assert (=> d!2138915 (= (unfocusZipperList!2048 zl!343) lt!2449417)))

(declare-fun b!6806881 () Bool)

(assert (=> b!6806881 (= e!4107551 (Cons!66056 (generalisedConcat!2224 (exprs!6511 (h!72505 zl!343))) (unfocusZipperList!2048 (t!379914 zl!343))))))

(declare-fun b!6806882 () Bool)

(assert (=> b!6806882 (= e!4107551 Nil!66056)))

(assert (= (and d!2138915 c!1266043) b!6806881))

(assert (= (and d!2138915 (not c!1266043)) b!6806882))

(declare-fun m!7552924 () Bool)

(assert (=> d!2138915 m!7552924))

(assert (=> b!6806881 m!7552196))

(declare-fun m!7552926 () Bool)

(assert (=> b!6806881 m!7552926))

(assert (=> b!6806059 d!2138915))

(declare-fun d!2138917 () Bool)

(assert (=> d!2138917 (= (flatMap!2108 z!1189 lambda!384161) (choose!50770 z!1189 lambda!384161))))

(declare-fun bs!1814373 () Bool)

(assert (= bs!1814373 d!2138917))

(declare-fun m!7552928 () Bool)

(assert (=> bs!1814373 m!7552928))

(assert (=> b!6806060 d!2138917))

(declare-fun b!6806884 () Bool)

(declare-fun e!4107552 () (InoxSet Context!12022))

(assert (=> b!6806884 (= e!4107552 ((as const (Array Context!12022 Bool)) false))))

(declare-fun b!6806885 () Bool)

(declare-fun call!618623 () (InoxSet Context!12022))

(assert (=> b!6806885 (= e!4107552 call!618623)))

(declare-fun bm!618618 () Bool)

(assert (=> bm!618618 (= call!618623 (derivationStepZipperDown!1855 (h!72504 (exprs!6511 (h!72505 zl!343))) (Context!12023 (t!379913 (exprs!6511 (h!72505 zl!343)))) (h!72506 s!2326)))))

(declare-fun b!6806886 () Bool)

(declare-fun e!4107553 () Bool)

(assert (=> b!6806886 (= e!4107553 (nullable!6606 (h!72504 (exprs!6511 (h!72505 zl!343)))))))

(declare-fun b!6806887 () Bool)

(declare-fun e!4107554 () (InoxSet Context!12022))

(assert (=> b!6806887 (= e!4107554 ((_ map or) call!618623 (derivationStepZipperUp!1781 (Context!12023 (t!379913 (exprs!6511 (h!72505 zl!343)))) (h!72506 s!2326))))))

(declare-fun d!2138919 () Bool)

(declare-fun c!1266045 () Bool)

(assert (=> d!2138919 (= c!1266045 e!4107553)))

(declare-fun res!2781602 () Bool)

(assert (=> d!2138919 (=> (not res!2781602) (not e!4107553))))

(assert (=> d!2138919 (= res!2781602 ((_ is Cons!66056) (exprs!6511 (h!72505 zl!343))))))

(assert (=> d!2138919 (= (derivationStepZipperUp!1781 (h!72505 zl!343) (h!72506 s!2326)) e!4107554)))

(declare-fun b!6806883 () Bool)

(assert (=> b!6806883 (= e!4107554 e!4107552)))

(declare-fun c!1266044 () Bool)

(assert (=> b!6806883 (= c!1266044 ((_ is Cons!66056) (exprs!6511 (h!72505 zl!343))))))

(assert (= (and d!2138919 res!2781602) b!6806886))

(assert (= (and d!2138919 c!1266045) b!6806887))

(assert (= (and d!2138919 (not c!1266045)) b!6806883))

(assert (= (and b!6806883 c!1266044) b!6806885))

(assert (= (and b!6806883 (not c!1266044)) b!6806884))

(assert (= (or b!6806887 b!6806885) bm!618618))

(declare-fun m!7552930 () Bool)

(assert (=> bm!618618 m!7552930))

(declare-fun m!7552932 () Bool)

(assert (=> b!6806886 m!7552932))

(declare-fun m!7552934 () Bool)

(assert (=> b!6806887 m!7552934))

(assert (=> b!6806060 d!2138919))

(declare-fun d!2138921 () Bool)

(assert (=> d!2138921 (= (flatMap!2108 z!1189 lambda!384161) (dynLambda!26387 lambda!384161 (h!72505 zl!343)))))

(declare-fun lt!2449418 () Unit!159945)

(assert (=> d!2138921 (= lt!2449418 (choose!50771 z!1189 (h!72505 zl!343) lambda!384161))))

(assert (=> d!2138921 (= z!1189 (store ((as const (Array Context!12022 Bool)) false) (h!72505 zl!343) true))))

(assert (=> d!2138921 (= (lemmaFlatMapOnSingletonSet!1634 z!1189 (h!72505 zl!343) lambda!384161) lt!2449418)))

(declare-fun b_lambda!256609 () Bool)

(assert (=> (not b_lambda!256609) (not d!2138921)))

(declare-fun bs!1814374 () Bool)

(assert (= bs!1814374 d!2138921))

(assert (=> bs!1814374 m!7552252))

(declare-fun m!7552936 () Bool)

(assert (=> bs!1814374 m!7552936))

(declare-fun m!7552938 () Bool)

(assert (=> bs!1814374 m!7552938))

(declare-fun m!7552940 () Bool)

(assert (=> bs!1814374 m!7552940))

(assert (=> b!6806060 d!2138921))

(declare-fun bs!1814375 () Bool)

(declare-fun d!2138923 () Bool)

(assert (= bs!1814375 (and d!2138923 b!6806063)))

(declare-fun lambda!384249 () Int)

(assert (=> bs!1814375 (= lambda!384249 lambda!384163)))

(declare-fun bs!1814376 () Bool)

(assert (= bs!1814376 (and d!2138923 d!2138753)))

(assert (=> bs!1814376 (= lambda!384249 lambda!384182)))

(declare-fun bs!1814377 () Bool)

(assert (= bs!1814377 (and d!2138923 d!2138913)))

(assert (=> bs!1814377 (= lambda!384249 lambda!384243)))

(declare-fun bs!1814378 () Bool)

(assert (= bs!1814378 (and d!2138923 d!2138915)))

(assert (=> bs!1814378 (= lambda!384249 lambda!384246)))

(declare-fun b!6806908 () Bool)

(declare-fun e!4107571 () Regex!16627)

(assert (=> b!6806908 (= e!4107571 (Concat!25472 (h!72504 (exprs!6511 (h!72505 zl!343))) (generalisedConcat!2224 (t!379913 (exprs!6511 (h!72505 zl!343))))))))

(declare-fun b!6806909 () Bool)

(declare-fun e!4107572 () Regex!16627)

(assert (=> b!6806909 (= e!4107572 (h!72504 (exprs!6511 (h!72505 zl!343))))))

(declare-fun b!6806910 () Bool)

(declare-fun e!4107570 () Bool)

(declare-fun e!4107569 () Bool)

(assert (=> b!6806910 (= e!4107570 e!4107569)))

(declare-fun c!1266056 () Bool)

(assert (=> b!6806910 (= c!1266056 (isEmpty!38446 (exprs!6511 (h!72505 zl!343))))))

(declare-fun b!6806911 () Bool)

(declare-fun e!4107568 () Bool)

(declare-fun lt!2449421 () Regex!16627)

(assert (=> b!6806911 (= e!4107568 (= lt!2449421 (head!13666 (exprs!6511 (h!72505 zl!343)))))))

(declare-fun b!6806912 () Bool)

(declare-fun isConcat!1508 (Regex!16627) Bool)

(assert (=> b!6806912 (= e!4107568 (isConcat!1508 lt!2449421))))

(declare-fun b!6806913 () Bool)

(assert (=> b!6806913 (= e!4107569 e!4107568)))

(declare-fun c!1266054 () Bool)

(assert (=> b!6806913 (= c!1266054 (isEmpty!38446 (tail!12751 (exprs!6511 (h!72505 zl!343)))))))

(assert (=> d!2138923 e!4107570))

(declare-fun res!2781608 () Bool)

(assert (=> d!2138923 (=> (not res!2781608) (not e!4107570))))

(assert (=> d!2138923 (= res!2781608 (validRegex!8363 lt!2449421))))

(assert (=> d!2138923 (= lt!2449421 e!4107572)))

(declare-fun c!1266055 () Bool)

(declare-fun e!4107567 () Bool)

(assert (=> d!2138923 (= c!1266055 e!4107567)))

(declare-fun res!2781607 () Bool)

(assert (=> d!2138923 (=> (not res!2781607) (not e!4107567))))

(assert (=> d!2138923 (= res!2781607 ((_ is Cons!66056) (exprs!6511 (h!72505 zl!343))))))

(assert (=> d!2138923 (forall!15819 (exprs!6511 (h!72505 zl!343)) lambda!384249)))

(assert (=> d!2138923 (= (generalisedConcat!2224 (exprs!6511 (h!72505 zl!343))) lt!2449421)))

(declare-fun b!6806914 () Bool)

(assert (=> b!6806914 (= e!4107572 e!4107571)))

(declare-fun c!1266057 () Bool)

(assert (=> b!6806914 (= c!1266057 ((_ is Cons!66056) (exprs!6511 (h!72505 zl!343))))))

(declare-fun b!6806915 () Bool)

(declare-fun isEmptyExpr!1985 (Regex!16627) Bool)

(assert (=> b!6806915 (= e!4107569 (isEmptyExpr!1985 lt!2449421))))

(declare-fun b!6806916 () Bool)

(assert (=> b!6806916 (= e!4107571 EmptyExpr!16627)))

(declare-fun b!6806917 () Bool)

(assert (=> b!6806917 (= e!4107567 (isEmpty!38446 (t!379913 (exprs!6511 (h!72505 zl!343)))))))

(assert (= (and d!2138923 res!2781607) b!6806917))

(assert (= (and d!2138923 c!1266055) b!6806909))

(assert (= (and d!2138923 (not c!1266055)) b!6806914))

(assert (= (and b!6806914 c!1266057) b!6806908))

(assert (= (and b!6806914 (not c!1266057)) b!6806916))

(assert (= (and d!2138923 res!2781608) b!6806910))

(assert (= (and b!6806910 c!1266056) b!6806915))

(assert (= (and b!6806910 (not c!1266056)) b!6806913))

(assert (= (and b!6806913 c!1266054) b!6806911))

(assert (= (and b!6806913 (not c!1266054)) b!6806912))

(declare-fun m!7552942 () Bool)

(assert (=> b!6806910 m!7552942))

(declare-fun m!7552944 () Bool)

(assert (=> b!6806912 m!7552944))

(declare-fun m!7552946 () Bool)

(assert (=> b!6806911 m!7552946))

(declare-fun m!7552948 () Bool)

(assert (=> b!6806908 m!7552948))

(declare-fun m!7552950 () Bool)

(assert (=> b!6806917 m!7552950))

(declare-fun m!7552952 () Bool)

(assert (=> d!2138923 m!7552952))

(declare-fun m!7552954 () Bool)

(assert (=> d!2138923 m!7552954))

(declare-fun m!7552956 () Bool)

(assert (=> b!6806915 m!7552956))

(declare-fun m!7552958 () Bool)

(assert (=> b!6806913 m!7552958))

(assert (=> b!6806913 m!7552958))

(declare-fun m!7552960 () Bool)

(assert (=> b!6806913 m!7552960))

(assert (=> b!6806061 d!2138923))

(declare-fun d!2138925 () Bool)

(declare-fun dynLambda!26388 (Int Context!12022) Context!12022)

(assert (=> d!2138925 (= (map!15101 lt!2449256 lambda!384162) (store ((as const (Array Context!12022 Bool)) false) (dynLambda!26388 lambda!384162 lt!2449241) true))))

(declare-fun lt!2449424 () Unit!159945)

(declare-fun choose!50784 ((InoxSet Context!12022) Context!12022 Int) Unit!159945)

(assert (=> d!2138925 (= lt!2449424 (choose!50784 lt!2449256 lt!2449241 lambda!384162))))

(assert (=> d!2138925 (= lt!2449256 (store ((as const (Array Context!12022 Bool)) false) lt!2449241 true))))

(assert (=> d!2138925 (= (lemmaMapOnSingletonSet!262 lt!2449256 lt!2449241 lambda!384162) lt!2449424)))

(declare-fun b_lambda!256611 () Bool)

(assert (=> (not b_lambda!256611) (not d!2138925)))

(declare-fun bs!1814379 () Bool)

(assert (= bs!1814379 d!2138925))

(assert (=> bs!1814379 m!7552168))

(declare-fun m!7552962 () Bool)

(assert (=> bs!1814379 m!7552962))

(assert (=> bs!1814379 m!7552148))

(declare-fun m!7552964 () Bool)

(assert (=> bs!1814379 m!7552964))

(assert (=> bs!1814379 m!7552964))

(declare-fun m!7552966 () Bool)

(assert (=> bs!1814379 m!7552966))

(assert (=> b!6806063 d!2138925))

(assert (=> b!6806063 d!2138727))

(declare-fun d!2138927 () Bool)

(declare-fun choose!50785 ((InoxSet Context!12022) Int) (InoxSet Context!12022))

(assert (=> d!2138927 (= (map!15101 lt!2449256 lambda!384162) (choose!50785 lt!2449256 lambda!384162))))

(declare-fun bs!1814380 () Bool)

(assert (= bs!1814380 d!2138927))

(declare-fun m!7552968 () Bool)

(assert (=> bs!1814380 m!7552968))

(assert (=> b!6806063 d!2138927))

(assert (=> b!6806063 d!2138743))

(declare-fun bs!1814381 () Bool)

(declare-fun d!2138929 () Bool)

(assert (= bs!1814381 (and d!2138929 b!6806063)))

(declare-fun lambda!384254 () Int)

(assert (=> bs!1814381 (= (= (exprs!6511 lt!2449242) lt!2449260) (= lambda!384254 lambda!384162))))

(assert (=> d!2138929 true))

(assert (=> d!2138929 (= (appendTo!232 lt!2449256 lt!2449242) (map!15101 lt!2449256 lambda!384254))))

(declare-fun bs!1814382 () Bool)

(assert (= bs!1814382 d!2138929))

(declare-fun m!7552970 () Bool)

(assert (=> bs!1814382 m!7552970))

(assert (=> b!6806063 d!2138929))

(declare-fun d!2138931 () Bool)

(declare-fun lt!2449427 () Regex!16627)

(assert (=> d!2138931 (validRegex!8363 lt!2449427)))

(assert (=> d!2138931 (= lt!2449427 (generalisedUnion!2471 (unfocusZipperList!2048 zl!343)))))

(assert (=> d!2138931 (= (unfocusZipper!2369 zl!343) lt!2449427)))

(declare-fun bs!1814383 () Bool)

(assert (= bs!1814383 d!2138931))

(declare-fun m!7552972 () Bool)

(assert (=> bs!1814383 m!7552972))

(assert (=> bs!1814383 m!7552228))

(assert (=> bs!1814383 m!7552228))

(assert (=> bs!1814383 m!7552230))

(assert (=> b!6806044 d!2138931))

(declare-fun d!2138933 () Bool)

(assert (=> d!2138933 (= (isEmpty!38442 (t!379914 zl!343)) ((_ is Nil!66057) (t!379914 zl!343)))))

(assert (=> b!6806065 d!2138933))

(declare-fun b!6806921 () Bool)

(declare-fun e!4107573 () (InoxSet Context!12022))

(assert (=> b!6806921 (= e!4107573 ((as const (Array Context!12022 Bool)) false))))

(declare-fun b!6806922 () Bool)

(declare-fun call!618624 () (InoxSet Context!12022))

(assert (=> b!6806922 (= e!4107573 call!618624)))

(declare-fun bm!618619 () Bool)

(assert (=> bm!618619 (= call!618624 (derivationStepZipperDown!1855 (h!72504 (exprs!6511 lt!2449241)) (Context!12023 (t!379913 (exprs!6511 lt!2449241))) (h!72506 s!2326)))))

(declare-fun b!6806923 () Bool)

(declare-fun e!4107574 () Bool)

(assert (=> b!6806923 (= e!4107574 (nullable!6606 (h!72504 (exprs!6511 lt!2449241))))))

(declare-fun b!6806924 () Bool)

(declare-fun e!4107575 () (InoxSet Context!12022))

(assert (=> b!6806924 (= e!4107575 ((_ map or) call!618624 (derivationStepZipperUp!1781 (Context!12023 (t!379913 (exprs!6511 lt!2449241))) (h!72506 s!2326))))))

(declare-fun d!2138935 () Bool)

(declare-fun c!1266060 () Bool)

(assert (=> d!2138935 (= c!1266060 e!4107574)))

(declare-fun res!2781609 () Bool)

(assert (=> d!2138935 (=> (not res!2781609) (not e!4107574))))

(assert (=> d!2138935 (= res!2781609 ((_ is Cons!66056) (exprs!6511 lt!2449241)))))

(assert (=> d!2138935 (= (derivationStepZipperUp!1781 lt!2449241 (h!72506 s!2326)) e!4107575)))

(declare-fun b!6806920 () Bool)

(assert (=> b!6806920 (= e!4107575 e!4107573)))

(declare-fun c!1266059 () Bool)

(assert (=> b!6806920 (= c!1266059 ((_ is Cons!66056) (exprs!6511 lt!2449241)))))

(assert (= (and d!2138935 res!2781609) b!6806923))

(assert (= (and d!2138935 c!1266060) b!6806924))

(assert (= (and d!2138935 (not c!1266060)) b!6806920))

(assert (= (and b!6806920 c!1266059) b!6806922))

(assert (= (and b!6806920 (not c!1266059)) b!6806921))

(assert (= (or b!6806924 b!6806922) bm!618619))

(declare-fun m!7552974 () Bool)

(assert (=> bm!618619 m!7552974))

(declare-fun m!7552976 () Bool)

(assert (=> b!6806923 m!7552976))

(declare-fun m!7552978 () Bool)

(assert (=> b!6806924 m!7552978))

(assert (=> b!6806066 d!2138935))

(declare-fun d!2138937 () Bool)

(assert (=> d!2138937 (= (flatMap!2108 lt!2449265 lambda!384161) (choose!50770 lt!2449265 lambda!384161))))

(declare-fun bs!1814384 () Bool)

(assert (= bs!1814384 d!2138937))

(declare-fun m!7552980 () Bool)

(assert (=> bs!1814384 m!7552980))

(assert (=> b!6806066 d!2138937))

(declare-fun d!2138939 () Bool)

(assert (=> d!2138939 (= (flatMap!2108 lt!2449256 lambda!384161) (choose!50770 lt!2449256 lambda!384161))))

(declare-fun bs!1814385 () Bool)

(assert (= bs!1814385 d!2138939))

(declare-fun m!7552982 () Bool)

(assert (=> bs!1814385 m!7552982))

(assert (=> b!6806066 d!2138939))

(declare-fun d!2138941 () Bool)

(assert (=> d!2138941 (= (flatMap!2108 lt!2449265 lambda!384161) (dynLambda!26387 lambda!384161 lt!2449242))))

(declare-fun lt!2449428 () Unit!159945)

(assert (=> d!2138941 (= lt!2449428 (choose!50771 lt!2449265 lt!2449242 lambda!384161))))

(assert (=> d!2138941 (= lt!2449265 (store ((as const (Array Context!12022 Bool)) false) lt!2449242 true))))

(assert (=> d!2138941 (= (lemmaFlatMapOnSingletonSet!1634 lt!2449265 lt!2449242 lambda!384161) lt!2449428)))

(declare-fun b_lambda!256613 () Bool)

(assert (=> (not b_lambda!256613) (not d!2138941)))

(declare-fun bs!1814386 () Bool)

(assert (= bs!1814386 d!2138941))

(assert (=> bs!1814386 m!7552176))

(declare-fun m!7552984 () Bool)

(assert (=> bs!1814386 m!7552984))

(declare-fun m!7552986 () Bool)

(assert (=> bs!1814386 m!7552986))

(assert (=> bs!1814386 m!7552170))

(assert (=> b!6806066 d!2138941))

(declare-fun d!2138943 () Bool)

(assert (=> d!2138943 (= (flatMap!2108 lt!2449256 lambda!384161) (dynLambda!26387 lambda!384161 lt!2449241))))

(declare-fun lt!2449429 () Unit!159945)

(assert (=> d!2138943 (= lt!2449429 (choose!50771 lt!2449256 lt!2449241 lambda!384161))))

(assert (=> d!2138943 (= lt!2449256 (store ((as const (Array Context!12022 Bool)) false) lt!2449241 true))))

(assert (=> d!2138943 (= (lemmaFlatMapOnSingletonSet!1634 lt!2449256 lt!2449241 lambda!384161) lt!2449429)))

(declare-fun b_lambda!256615 () Bool)

(assert (=> (not b_lambda!256615) (not d!2138943)))

(declare-fun bs!1814387 () Bool)

(assert (= bs!1814387 d!2138943))

(assert (=> bs!1814387 m!7552172))

(declare-fun m!7552988 () Bool)

(assert (=> bs!1814387 m!7552988))

(declare-fun m!7552990 () Bool)

(assert (=> bs!1814387 m!7552990))

(assert (=> bs!1814387 m!7552168))

(assert (=> b!6806066 d!2138943))

(declare-fun bs!1814388 () Bool)

(declare-fun d!2138945 () Bool)

(assert (= bs!1814388 (and d!2138945 b!6806060)))

(declare-fun lambda!384255 () Int)

(assert (=> bs!1814388 (= lambda!384255 lambda!384161)))

(declare-fun bs!1814389 () Bool)

(assert (= bs!1814389 (and d!2138945 d!2138797)))

(assert (=> bs!1814389 (= lambda!384255 lambda!384191)))

(declare-fun bs!1814390 () Bool)

(assert (= bs!1814390 (and d!2138945 d!2138879)))

(assert (=> bs!1814390 (= lambda!384255 lambda!384228)))

(assert (=> d!2138945 true))

(assert (=> d!2138945 (= (derivationStepZipper!2571 lt!2449265 (h!72506 s!2326)) (flatMap!2108 lt!2449265 lambda!384255))))

(declare-fun bs!1814391 () Bool)

(assert (= bs!1814391 d!2138945))

(declare-fun m!7552992 () Bool)

(assert (=> bs!1814391 m!7552992))

(assert (=> b!6806066 d!2138945))

(declare-fun b!6806926 () Bool)

(declare-fun e!4107576 () (InoxSet Context!12022))

(assert (=> b!6806926 (= e!4107576 ((as const (Array Context!12022 Bool)) false))))

(declare-fun b!6806927 () Bool)

(declare-fun call!618625 () (InoxSet Context!12022))

(assert (=> b!6806927 (= e!4107576 call!618625)))

(declare-fun bm!618620 () Bool)

(assert (=> bm!618620 (= call!618625 (derivationStepZipperDown!1855 (h!72504 (exprs!6511 lt!2449242)) (Context!12023 (t!379913 (exprs!6511 lt!2449242))) (h!72506 s!2326)))))

(declare-fun b!6806928 () Bool)

(declare-fun e!4107577 () Bool)

(assert (=> b!6806928 (= e!4107577 (nullable!6606 (h!72504 (exprs!6511 lt!2449242))))))

(declare-fun e!4107578 () (InoxSet Context!12022))

(declare-fun b!6806929 () Bool)

(assert (=> b!6806929 (= e!4107578 ((_ map or) call!618625 (derivationStepZipperUp!1781 (Context!12023 (t!379913 (exprs!6511 lt!2449242))) (h!72506 s!2326))))))

(declare-fun d!2138947 () Bool)

(declare-fun c!1266062 () Bool)

(assert (=> d!2138947 (= c!1266062 e!4107577)))

(declare-fun res!2781610 () Bool)

(assert (=> d!2138947 (=> (not res!2781610) (not e!4107577))))

(assert (=> d!2138947 (= res!2781610 ((_ is Cons!66056) (exprs!6511 lt!2449242)))))

(assert (=> d!2138947 (= (derivationStepZipperUp!1781 lt!2449242 (h!72506 s!2326)) e!4107578)))

(declare-fun b!6806925 () Bool)

(assert (=> b!6806925 (= e!4107578 e!4107576)))

(declare-fun c!1266061 () Bool)

(assert (=> b!6806925 (= c!1266061 ((_ is Cons!66056) (exprs!6511 lt!2449242)))))

(assert (= (and d!2138947 res!2781610) b!6806928))

(assert (= (and d!2138947 c!1266062) b!6806929))

(assert (= (and d!2138947 (not c!1266062)) b!6806925))

(assert (= (and b!6806925 c!1266061) b!6806927))

(assert (= (and b!6806925 (not c!1266061)) b!6806926))

(assert (= (or b!6806929 b!6806927) bm!618620))

(declare-fun m!7552994 () Bool)

(assert (=> bm!618620 m!7552994))

(declare-fun m!7552996 () Bool)

(assert (=> b!6806928 m!7552996))

(declare-fun m!7552998 () Bool)

(assert (=> b!6806929 m!7552998))

(assert (=> b!6806066 d!2138947))

(declare-fun b!6806930 () Bool)

(declare-fun e!4107579 () Bool)

(declare-fun e!4107582 () Bool)

(assert (=> b!6806930 (= e!4107579 e!4107582)))

(declare-fun res!2781614 () Bool)

(assert (=> b!6806930 (=> (not res!2781614) (not e!4107582))))

(declare-fun call!618628 () Bool)

(assert (=> b!6806930 (= res!2781614 call!618628)))

(declare-fun d!2138949 () Bool)

(declare-fun res!2781613 () Bool)

(declare-fun e!4107584 () Bool)

(assert (=> d!2138949 (=> res!2781613 e!4107584)))

(assert (=> d!2138949 (= res!2781613 ((_ is ElementMatch!16627) r!7292))))

(assert (=> d!2138949 (= (validRegex!8363 r!7292) e!4107584)))

(declare-fun bm!618621 () Bool)

(declare-fun call!618626 () Bool)

(assert (=> bm!618621 (= call!618628 call!618626)))

(declare-fun b!6806931 () Bool)

(declare-fun res!2781612 () Bool)

(assert (=> b!6806931 (=> res!2781612 e!4107579)))

(assert (=> b!6806931 (= res!2781612 (not ((_ is Concat!25472) r!7292)))))

(declare-fun e!4107583 () Bool)

(assert (=> b!6806931 (= e!4107583 e!4107579)))

(declare-fun bm!618622 () Bool)

(declare-fun call!618627 () Bool)

(declare-fun c!1266064 () Bool)

(assert (=> bm!618622 (= call!618627 (validRegex!8363 (ite c!1266064 (regTwo!33767 r!7292) (regTwo!33766 r!7292))))))

(declare-fun b!6806932 () Bool)

(declare-fun e!4107585 () Bool)

(assert (=> b!6806932 (= e!4107585 call!618626)))

(declare-fun b!6806933 () Bool)

(declare-fun e!4107581 () Bool)

(assert (=> b!6806933 (= e!4107584 e!4107581)))

(declare-fun c!1266063 () Bool)

(assert (=> b!6806933 (= c!1266063 ((_ is Star!16627) r!7292))))

(declare-fun b!6806934 () Bool)

(declare-fun e!4107580 () Bool)

(assert (=> b!6806934 (= e!4107580 call!618627)))

(declare-fun b!6806935 () Bool)

(declare-fun res!2781615 () Bool)

(assert (=> b!6806935 (=> (not res!2781615) (not e!4107580))))

(assert (=> b!6806935 (= res!2781615 call!618628)))

(assert (=> b!6806935 (= e!4107583 e!4107580)))

(declare-fun b!6806936 () Bool)

(assert (=> b!6806936 (= e!4107581 e!4107583)))

(assert (=> b!6806936 (= c!1266064 ((_ is Union!16627) r!7292))))

(declare-fun b!6806937 () Bool)

(assert (=> b!6806937 (= e!4107581 e!4107585)))

(declare-fun res!2781611 () Bool)

(assert (=> b!6806937 (= res!2781611 (not (nullable!6606 (reg!16956 r!7292))))))

(assert (=> b!6806937 (=> (not res!2781611) (not e!4107585))))

(declare-fun bm!618623 () Bool)

(assert (=> bm!618623 (= call!618626 (validRegex!8363 (ite c!1266063 (reg!16956 r!7292) (ite c!1266064 (regOne!33767 r!7292) (regOne!33766 r!7292)))))))

(declare-fun b!6806938 () Bool)

(assert (=> b!6806938 (= e!4107582 call!618627)))

(assert (= (and d!2138949 (not res!2781613)) b!6806933))

(assert (= (and b!6806933 c!1266063) b!6806937))

(assert (= (and b!6806933 (not c!1266063)) b!6806936))

(assert (= (and b!6806937 res!2781611) b!6806932))

(assert (= (and b!6806936 c!1266064) b!6806935))

(assert (= (and b!6806936 (not c!1266064)) b!6806931))

(assert (= (and b!6806935 res!2781615) b!6806934))

(assert (= (and b!6806931 (not res!2781612)) b!6806930))

(assert (= (and b!6806930 res!2781614) b!6806938))

(assert (= (or b!6806934 b!6806938) bm!618622))

(assert (= (or b!6806935 b!6806930) bm!618621))

(assert (= (or b!6806932 bm!618621) bm!618623))

(declare-fun m!7553000 () Bool)

(assert (=> bm!618622 m!7553000))

(declare-fun m!7553002 () Bool)

(assert (=> b!6806937 m!7553002))

(declare-fun m!7553004 () Bool)

(assert (=> bm!618623 m!7553004))

(assert (=> start!658828 d!2138949))

(declare-fun bs!1814392 () Bool)

(declare-fun d!2138951 () Bool)

(assert (= bs!1814392 (and d!2138951 d!2138923)))

(declare-fun lambda!384258 () Int)

(assert (=> bs!1814392 (= lambda!384258 lambda!384249)))

(declare-fun bs!1814393 () Bool)

(assert (= bs!1814393 (and d!2138951 d!2138915)))

(assert (=> bs!1814393 (= lambda!384258 lambda!384246)))

(declare-fun bs!1814394 () Bool)

(assert (= bs!1814394 (and d!2138951 b!6806063)))

(assert (=> bs!1814394 (= lambda!384258 lambda!384163)))

(declare-fun bs!1814395 () Bool)

(assert (= bs!1814395 (and d!2138951 d!2138913)))

(assert (=> bs!1814395 (= lambda!384258 lambda!384243)))

(declare-fun bs!1814396 () Bool)

(assert (= bs!1814396 (and d!2138951 d!2138753)))

(assert (=> bs!1814396 (= lambda!384258 lambda!384182)))

(assert (=> d!2138951 (= (inv!84814 (h!72505 zl!343)) (forall!15819 (exprs!6511 (h!72505 zl!343)) lambda!384258))))

(declare-fun bs!1814397 () Bool)

(assert (= bs!1814397 d!2138951))

(declare-fun m!7553006 () Bool)

(assert (=> bs!1814397 m!7553006))

(assert (=> b!6806046 d!2138951))

(declare-fun d!2138953 () Bool)

(declare-fun c!1266065 () Bool)

(assert (=> d!2138953 (= c!1266065 (isEmpty!38441 (_1!36905 lt!2449248)))))

(declare-fun e!4107586 () Bool)

(assert (=> d!2138953 (= (matchZipper!2613 lt!2449256 (_1!36905 lt!2449248)) e!4107586)))

(declare-fun b!6806939 () Bool)

(assert (=> b!6806939 (= e!4107586 (nullableZipper!2334 lt!2449256))))

(declare-fun b!6806940 () Bool)

(assert (=> b!6806940 (= e!4107586 (matchZipper!2613 (derivationStepZipper!2571 lt!2449256 (head!13665 (_1!36905 lt!2449248))) (tail!12750 (_1!36905 lt!2449248))))))

(assert (= (and d!2138953 c!1266065) b!6806939))

(assert (= (and d!2138953 (not c!1266065)) b!6806940))

(declare-fun m!7553008 () Bool)

(assert (=> d!2138953 m!7553008))

(declare-fun m!7553010 () Bool)

(assert (=> b!6806939 m!7553010))

(declare-fun m!7553012 () Bool)

(assert (=> b!6806940 m!7553012))

(assert (=> b!6806940 m!7553012))

(declare-fun m!7553014 () Bool)

(assert (=> b!6806940 m!7553014))

(declare-fun m!7553016 () Bool)

(assert (=> b!6806940 m!7553016))

(assert (=> b!6806940 m!7553014))

(assert (=> b!6806940 m!7553016))

(declare-fun m!7553018 () Bool)

(assert (=> b!6806940 m!7553018))

(assert (=> b!6806067 d!2138953))

(declare-fun bs!1814398 () Bool)

(declare-fun b!6806951 () Bool)

(assert (= bs!1814398 (and b!6806951 b!6806804)))

(declare-fun lambda!384259 () Int)

(assert (=> bs!1814398 (= (and (= (reg!16956 r!7292) (reg!16956 lt!2449249)) (= r!7292 lt!2449249)) (= lambda!384259 lambda!384239))))

(declare-fun bs!1814399 () Bool)

(assert (= bs!1814399 (and b!6806951 d!2138811)))

(assert (=> bs!1814399 (not (= lambda!384259 lambda!384196))))

(declare-fun bs!1814400 () Bool)

(assert (= bs!1814400 (and b!6806951 d!2138835)))

(assert (=> bs!1814400 (not (= lambda!384259 lambda!384208))))

(declare-fun bs!1814401 () Bool)

(assert (= bs!1814401 (and b!6806951 b!6806054)))

(assert (=> bs!1814401 (not (= lambda!384259 lambda!384158))))

(assert (=> bs!1814401 (not (= lambda!384259 lambda!384160))))

(declare-fun bs!1814402 () Bool)

(assert (= bs!1814402 (and b!6806951 b!6806799)))

(assert (=> bs!1814402 (not (= lambda!384259 lambda!384240))))

(assert (=> bs!1814399 (= (= r!7292 (Star!16627 (reg!16956 r!7292))) (= lambda!384259 lambda!384197))))

(assert (=> bs!1814401 (= lambda!384259 lambda!384159)))

(declare-fun bs!1814403 () Bool)

(assert (= bs!1814403 (and b!6806951 d!2138849)))

(assert (=> bs!1814403 (not (= lambda!384259 lambda!384218))))

(assert (=> bs!1814400 (not (= lambda!384259 lambda!384209))))

(assert (=> b!6806951 true))

(assert (=> b!6806951 true))

(declare-fun bs!1814404 () Bool)

(declare-fun b!6806946 () Bool)

(assert (= bs!1814404 (and b!6806946 b!6806951)))

(declare-fun lambda!384260 () Int)

(assert (=> bs!1814404 (not (= lambda!384260 lambda!384259))))

(declare-fun bs!1814405 () Bool)

(assert (= bs!1814405 (and b!6806946 b!6806804)))

(assert (=> bs!1814405 (not (= lambda!384260 lambda!384239))))

(declare-fun bs!1814406 () Bool)

(assert (= bs!1814406 (and b!6806946 d!2138811)))

(assert (=> bs!1814406 (not (= lambda!384260 lambda!384196))))

(declare-fun bs!1814407 () Bool)

(assert (= bs!1814407 (and b!6806946 d!2138835)))

(assert (=> bs!1814407 (not (= lambda!384260 lambda!384208))))

(declare-fun bs!1814408 () Bool)

(assert (= bs!1814408 (and b!6806946 b!6806054)))

(assert (=> bs!1814408 (not (= lambda!384260 lambda!384158))))

(assert (=> bs!1814408 (= (and (= (regOne!33766 r!7292) (reg!16956 r!7292)) (= (regTwo!33766 r!7292) r!7292)) (= lambda!384260 lambda!384160))))

(declare-fun bs!1814409 () Bool)

(assert (= bs!1814409 (and b!6806946 b!6806799)))

(assert (=> bs!1814409 (= (and (= (regOne!33766 r!7292) (regOne!33766 lt!2449249)) (= (regTwo!33766 r!7292) (regTwo!33766 lt!2449249))) (= lambda!384260 lambda!384240))))

(assert (=> bs!1814406 (not (= lambda!384260 lambda!384197))))

(assert (=> bs!1814408 (not (= lambda!384260 lambda!384159))))

(declare-fun bs!1814410 () Bool)

(assert (= bs!1814410 (and b!6806946 d!2138849)))

(assert (=> bs!1814410 (not (= lambda!384260 lambda!384218))))

(assert (=> bs!1814407 (= (and (= (regOne!33766 r!7292) (reg!16956 r!7292)) (= (regTwo!33766 r!7292) r!7292)) (= lambda!384260 lambda!384209))))

(assert (=> b!6806946 true))

(assert (=> b!6806946 true))

(declare-fun b!6806941 () Bool)

(declare-fun e!4107592 () Bool)

(assert (=> b!6806941 (= e!4107592 (matchRSpec!3728 (regTwo!33767 r!7292) s!2326))))

(declare-fun c!1266068 () Bool)

(declare-fun call!618629 () Bool)

(declare-fun bm!618624 () Bool)

(assert (=> bm!618624 (= call!618629 (Exists!3695 (ite c!1266068 lambda!384259 lambda!384260)))))

(declare-fun b!6806943 () Bool)

(declare-fun e!4107588 () Bool)

(declare-fun e!4107593 () Bool)

(assert (=> b!6806943 (= e!4107588 e!4107593)))

(assert (=> b!6806943 (= c!1266068 ((_ is Star!16627) r!7292))))

(declare-fun b!6806944 () Bool)

(declare-fun e!4107589 () Bool)

(assert (=> b!6806944 (= e!4107589 (= s!2326 (Cons!66058 (c!1265821 r!7292) Nil!66058)))))

(declare-fun b!6806945 () Bool)

(assert (=> b!6806945 (= e!4107588 e!4107592)))

(declare-fun res!2781616 () Bool)

(assert (=> b!6806945 (= res!2781616 (matchRSpec!3728 (regOne!33767 r!7292) s!2326))))

(assert (=> b!6806945 (=> res!2781616 e!4107592)))

(assert (=> b!6806946 (= e!4107593 call!618629)))

(declare-fun b!6806947 () Bool)

(declare-fun res!2781617 () Bool)

(declare-fun e!4107590 () Bool)

(assert (=> b!6806947 (=> res!2781617 e!4107590)))

(declare-fun call!618630 () Bool)

(assert (=> b!6806947 (= res!2781617 call!618630)))

(assert (=> b!6806947 (= e!4107593 e!4107590)))

(declare-fun b!6806942 () Bool)

(declare-fun c!1266066 () Bool)

(assert (=> b!6806942 (= c!1266066 ((_ is ElementMatch!16627) r!7292))))

(declare-fun e!4107591 () Bool)

(assert (=> b!6806942 (= e!4107591 e!4107589)))

(declare-fun d!2138955 () Bool)

(declare-fun c!1266069 () Bool)

(assert (=> d!2138955 (= c!1266069 ((_ is EmptyExpr!16627) r!7292))))

(declare-fun e!4107587 () Bool)

(assert (=> d!2138955 (= (matchRSpec!3728 r!7292 s!2326) e!4107587)))

(declare-fun b!6806948 () Bool)

(assert (=> b!6806948 (= e!4107587 e!4107591)))

(declare-fun res!2781618 () Bool)

(assert (=> b!6806948 (= res!2781618 (not ((_ is EmptyLang!16627) r!7292)))))

(assert (=> b!6806948 (=> (not res!2781618) (not e!4107591))))

(declare-fun b!6806949 () Bool)

(assert (=> b!6806949 (= e!4107587 call!618630)))

(declare-fun b!6806950 () Bool)

(declare-fun c!1266067 () Bool)

(assert (=> b!6806950 (= c!1266067 ((_ is Union!16627) r!7292))))

(assert (=> b!6806950 (= e!4107589 e!4107588)))

(declare-fun bm!618625 () Bool)

(assert (=> bm!618625 (= call!618630 (isEmpty!38441 s!2326))))

(assert (=> b!6806951 (= e!4107590 call!618629)))

(assert (= (and d!2138955 c!1266069) b!6806949))

(assert (= (and d!2138955 (not c!1266069)) b!6806948))

(assert (= (and b!6806948 res!2781618) b!6806942))

(assert (= (and b!6806942 c!1266066) b!6806944))

(assert (= (and b!6806942 (not c!1266066)) b!6806950))

(assert (= (and b!6806950 c!1266067) b!6806945))

(assert (= (and b!6806950 (not c!1266067)) b!6806943))

(assert (= (and b!6806945 (not res!2781616)) b!6806941))

(assert (= (and b!6806943 c!1266068) b!6806947))

(assert (= (and b!6806943 (not c!1266068)) b!6806946))

(assert (= (and b!6806947 (not res!2781617)) b!6806951))

(assert (= (or b!6806951 b!6806946) bm!618624))

(assert (= (or b!6806949 b!6806947) bm!618625))

(declare-fun m!7553020 () Bool)

(assert (=> b!6806941 m!7553020))

(declare-fun m!7553022 () Bool)

(assert (=> bm!618624 m!7553022))

(declare-fun m!7553024 () Bool)

(assert (=> b!6806945 m!7553024))

(assert (=> bm!618625 m!7552238))

(assert (=> b!6806068 d!2138955))

(declare-fun b!6806952 () Bool)

(declare-fun e!4107594 () Bool)

(assert (=> b!6806952 (= e!4107594 (matchR!8810 (derivativeStep!5291 r!7292 (head!13665 s!2326)) (tail!12750 s!2326)))))

(declare-fun b!6806953 () Bool)

(declare-fun e!4107596 () Bool)

(declare-fun e!4107595 () Bool)

(assert (=> b!6806953 (= e!4107596 e!4107595)))

(declare-fun res!2781623 () Bool)

(assert (=> b!6806953 (=> res!2781623 e!4107595)))

(declare-fun call!618631 () Bool)

(assert (=> b!6806953 (= res!2781623 call!618631)))

(declare-fun b!6806954 () Bool)

(declare-fun res!2781620 () Bool)

(declare-fun e!4107598 () Bool)

(assert (=> b!6806954 (=> (not res!2781620) (not e!4107598))))

(assert (=> b!6806954 (= res!2781620 (isEmpty!38441 (tail!12750 s!2326)))))

(declare-fun d!2138957 () Bool)

(declare-fun e!4107597 () Bool)

(assert (=> d!2138957 e!4107597))

(declare-fun c!1266071 () Bool)

(assert (=> d!2138957 (= c!1266071 ((_ is EmptyExpr!16627) r!7292))))

(declare-fun lt!2449430 () Bool)

(assert (=> d!2138957 (= lt!2449430 e!4107594)))

(declare-fun c!1266072 () Bool)

(assert (=> d!2138957 (= c!1266072 (isEmpty!38441 s!2326))))

(assert (=> d!2138957 (validRegex!8363 r!7292)))

(assert (=> d!2138957 (= (matchR!8810 r!7292 s!2326) lt!2449430)))

(declare-fun b!6806955 () Bool)

(declare-fun res!2781625 () Bool)

(declare-fun e!4107599 () Bool)

(assert (=> b!6806955 (=> res!2781625 e!4107599)))

(assert (=> b!6806955 (= res!2781625 (not ((_ is ElementMatch!16627) r!7292)))))

(declare-fun e!4107600 () Bool)

(assert (=> b!6806955 (= e!4107600 e!4107599)))

(declare-fun b!6806956 () Bool)

(declare-fun res!2781626 () Bool)

(assert (=> b!6806956 (=> (not res!2781626) (not e!4107598))))

(assert (=> b!6806956 (= res!2781626 (not call!618631))))

(declare-fun b!6806957 () Bool)

(declare-fun res!2781622 () Bool)

(assert (=> b!6806957 (=> res!2781622 e!4107595)))

(assert (=> b!6806957 (= res!2781622 (not (isEmpty!38441 (tail!12750 s!2326))))))

(declare-fun b!6806958 () Bool)

(assert (=> b!6806958 (= e!4107597 e!4107600)))

(declare-fun c!1266070 () Bool)

(assert (=> b!6806958 (= c!1266070 ((_ is EmptyLang!16627) r!7292))))

(declare-fun b!6806959 () Bool)

(assert (=> b!6806959 (= e!4107598 (= (head!13665 s!2326) (c!1265821 r!7292)))))

(declare-fun b!6806960 () Bool)

(assert (=> b!6806960 (= e!4107597 (= lt!2449430 call!618631))))

(declare-fun b!6806961 () Bool)

(assert (=> b!6806961 (= e!4107600 (not lt!2449430))))

(declare-fun b!6806962 () Bool)

(assert (=> b!6806962 (= e!4107599 e!4107596)))

(declare-fun res!2781621 () Bool)

(assert (=> b!6806962 (=> (not res!2781621) (not e!4107596))))

(assert (=> b!6806962 (= res!2781621 (not lt!2449430))))

(declare-fun b!6806963 () Bool)

(declare-fun res!2781619 () Bool)

(assert (=> b!6806963 (=> res!2781619 e!4107599)))

(assert (=> b!6806963 (= res!2781619 e!4107598)))

(declare-fun res!2781624 () Bool)

(assert (=> b!6806963 (=> (not res!2781624) (not e!4107598))))

(assert (=> b!6806963 (= res!2781624 lt!2449430)))

(declare-fun b!6806964 () Bool)

(assert (=> b!6806964 (= e!4107595 (not (= (head!13665 s!2326) (c!1265821 r!7292))))))

(declare-fun bm!618626 () Bool)

(assert (=> bm!618626 (= call!618631 (isEmpty!38441 s!2326))))

(declare-fun b!6806965 () Bool)

(assert (=> b!6806965 (= e!4107594 (nullable!6606 r!7292))))

(assert (= (and d!2138957 c!1266072) b!6806965))

(assert (= (and d!2138957 (not c!1266072)) b!6806952))

(assert (= (and d!2138957 c!1266071) b!6806960))

(assert (= (and d!2138957 (not c!1266071)) b!6806958))

(assert (= (and b!6806958 c!1266070) b!6806961))

(assert (= (and b!6806958 (not c!1266070)) b!6806955))

(assert (= (and b!6806955 (not res!2781625)) b!6806963))

(assert (= (and b!6806963 res!2781624) b!6806956))

(assert (= (and b!6806956 res!2781626) b!6806954))

(assert (= (and b!6806954 res!2781620) b!6806959))

(assert (= (and b!6806963 (not res!2781619)) b!6806962))

(assert (= (and b!6806962 res!2781621) b!6806953))

(assert (= (and b!6806953 (not res!2781623)) b!6806957))

(assert (= (and b!6806957 (not res!2781622)) b!6806964))

(assert (= (or b!6806960 b!6806953 b!6806956) bm!618626))

(assert (=> b!6806959 m!7552806))

(assert (=> b!6806952 m!7552806))

(assert (=> b!6806952 m!7552806))

(declare-fun m!7553026 () Bool)

(assert (=> b!6806952 m!7553026))

(assert (=> b!6806952 m!7552810))

(assert (=> b!6806952 m!7553026))

(assert (=> b!6806952 m!7552810))

(declare-fun m!7553028 () Bool)

(assert (=> b!6806952 m!7553028))

(declare-fun m!7553030 () Bool)

(assert (=> b!6806965 m!7553030))

(assert (=> b!6806954 m!7552810))

(assert (=> b!6806954 m!7552810))

(assert (=> b!6806954 m!7552898))

(assert (=> d!2138957 m!7552238))

(assert (=> d!2138957 m!7552198))

(assert (=> b!6806957 m!7552810))

(assert (=> b!6806957 m!7552810))

(assert (=> b!6806957 m!7552898))

(assert (=> bm!618626 m!7552238))

(assert (=> b!6806964 m!7552806))

(assert (=> b!6806068 d!2138957))

(declare-fun d!2138959 () Bool)

(assert (=> d!2138959 (= (matchR!8810 r!7292 s!2326) (matchRSpec!3728 r!7292 s!2326))))

(declare-fun lt!2449431 () Unit!159945)

(assert (=> d!2138959 (= lt!2449431 (choose!50783 r!7292 s!2326))))

(assert (=> d!2138959 (validRegex!8363 r!7292)))

(assert (=> d!2138959 (= (mainMatchTheorem!3728 r!7292 s!2326) lt!2449431)))

(declare-fun bs!1814411 () Bool)

(assert (= bs!1814411 d!2138959))

(assert (=> bs!1814411 m!7552224))

(assert (=> bs!1814411 m!7552222))

(declare-fun m!7553032 () Bool)

(assert (=> bs!1814411 m!7553032))

(assert (=> bs!1814411 m!7552198))

(assert (=> b!6806068 d!2138959))

(declare-fun bs!1814412 () Bool)

(declare-fun d!2138961 () Bool)

(assert (= bs!1814412 (and d!2138961 d!2138915)))

(declare-fun lambda!384261 () Int)

(assert (=> bs!1814412 (= lambda!384261 lambda!384246)))

(declare-fun bs!1814413 () Bool)

(assert (= bs!1814413 (and d!2138961 b!6806063)))

(assert (=> bs!1814413 (= lambda!384261 lambda!384163)))

(declare-fun bs!1814414 () Bool)

(assert (= bs!1814414 (and d!2138961 d!2138913)))

(assert (=> bs!1814414 (= lambda!384261 lambda!384243)))

(declare-fun bs!1814415 () Bool)

(assert (= bs!1814415 (and d!2138961 d!2138753)))

(assert (=> bs!1814415 (= lambda!384261 lambda!384182)))

(declare-fun bs!1814416 () Bool)

(assert (= bs!1814416 (and d!2138961 d!2138923)))

(assert (=> bs!1814416 (= lambda!384261 lambda!384249)))

(declare-fun bs!1814417 () Bool)

(assert (= bs!1814417 (and d!2138961 d!2138951)))

(assert (=> bs!1814417 (= lambda!384261 lambda!384258)))

(assert (=> d!2138961 (= (inv!84814 setElem!46677) (forall!15819 (exprs!6511 setElem!46677) lambda!384261))))

(declare-fun bs!1814418 () Bool)

(assert (= bs!1814418 d!2138961))

(declare-fun m!7553034 () Bool)

(assert (=> bs!1814418 m!7553034))

(assert (=> setNonEmpty!46677 d!2138961))

(declare-fun d!2138963 () Bool)

(declare-fun c!1266073 () Bool)

(assert (=> d!2138963 (= c!1266073 (isEmpty!38441 (_2!36905 lt!2449248)))))

(declare-fun e!4107601 () Bool)

(assert (=> d!2138963 (= (matchZipper!2613 lt!2449265 (_2!36905 lt!2449248)) e!4107601)))

(declare-fun b!6806966 () Bool)

(assert (=> b!6806966 (= e!4107601 (nullableZipper!2334 lt!2449265))))

(declare-fun b!6806967 () Bool)

(assert (=> b!6806967 (= e!4107601 (matchZipper!2613 (derivationStepZipper!2571 lt!2449265 (head!13665 (_2!36905 lt!2449248))) (tail!12750 (_2!36905 lt!2449248))))))

(assert (= (and d!2138963 c!1266073) b!6806966))

(assert (= (and d!2138963 (not c!1266073)) b!6806967))

(declare-fun m!7553036 () Bool)

(assert (=> d!2138963 m!7553036))

(declare-fun m!7553038 () Bool)

(assert (=> b!6806966 m!7553038))

(declare-fun m!7553040 () Bool)

(assert (=> b!6806967 m!7553040))

(assert (=> b!6806967 m!7553040))

(declare-fun m!7553042 () Bool)

(assert (=> b!6806967 m!7553042))

(declare-fun m!7553044 () Bool)

(assert (=> b!6806967 m!7553044))

(assert (=> b!6806967 m!7553042))

(assert (=> b!6806967 m!7553044))

(declare-fun m!7553046 () Bool)

(assert (=> b!6806967 m!7553046))

(assert (=> b!6806049 d!2138963))

(declare-fun b!6806972 () Bool)

(declare-fun e!4107604 () Bool)

(declare-fun tp!1863048 () Bool)

(assert (=> b!6806972 (= e!4107604 (and tp_is_empty!42507 tp!1863048))))

(assert (=> b!6806045 (= tp!1862985 e!4107604)))

(assert (= (and b!6806045 ((_ is Cons!66058) (t!379915 s!2326))) b!6806972))

(declare-fun b!6806980 () Bool)

(declare-fun e!4107610 () Bool)

(declare-fun tp!1863053 () Bool)

(assert (=> b!6806980 (= e!4107610 tp!1863053)))

(declare-fun e!4107609 () Bool)

(declare-fun b!6806979 () Bool)

(declare-fun tp!1863054 () Bool)

(assert (=> b!6806979 (= e!4107609 (and (inv!84814 (h!72505 (t!379914 zl!343))) e!4107610 tp!1863054))))

(assert (=> b!6806046 (= tp!1862979 e!4107609)))

(assert (= b!6806979 b!6806980))

(assert (= (and b!6806046 ((_ is Cons!66057) (t!379914 zl!343))) b!6806979))

(declare-fun m!7553048 () Bool)

(assert (=> b!6806979 m!7553048))

(declare-fun b!6806985 () Bool)

(declare-fun e!4107613 () Bool)

(declare-fun tp!1863059 () Bool)

(declare-fun tp!1863060 () Bool)

(assert (=> b!6806985 (= e!4107613 (and tp!1863059 tp!1863060))))

(assert (=> b!6806076 (= tp!1862978 e!4107613)))

(assert (= (and b!6806076 ((_ is Cons!66056) (exprs!6511 (h!72505 zl!343)))) b!6806985))

(declare-fun b!6806996 () Bool)

(declare-fun e!4107616 () Bool)

(assert (=> b!6806996 (= e!4107616 tp_is_empty!42507)))

(assert (=> b!6806057 (= tp!1862981 e!4107616)))

(declare-fun b!6806997 () Bool)

(declare-fun tp!1863073 () Bool)

(declare-fun tp!1863072 () Bool)

(assert (=> b!6806997 (= e!4107616 (and tp!1863073 tp!1863072))))

(declare-fun b!6806998 () Bool)

(declare-fun tp!1863071 () Bool)

(assert (=> b!6806998 (= e!4107616 tp!1863071)))

(declare-fun b!6806999 () Bool)

(declare-fun tp!1863075 () Bool)

(declare-fun tp!1863074 () Bool)

(assert (=> b!6806999 (= e!4107616 (and tp!1863075 tp!1863074))))

(assert (= (and b!6806057 ((_ is ElementMatch!16627) (regOne!33767 r!7292))) b!6806996))

(assert (= (and b!6806057 ((_ is Concat!25472) (regOne!33767 r!7292))) b!6806997))

(assert (= (and b!6806057 ((_ is Star!16627) (regOne!33767 r!7292))) b!6806998))

(assert (= (and b!6806057 ((_ is Union!16627) (regOne!33767 r!7292))) b!6806999))

(declare-fun b!6807000 () Bool)

(declare-fun e!4107617 () Bool)

(assert (=> b!6807000 (= e!4107617 tp_is_empty!42507)))

(assert (=> b!6806057 (= tp!1862982 e!4107617)))

(declare-fun b!6807001 () Bool)

(declare-fun tp!1863078 () Bool)

(declare-fun tp!1863077 () Bool)

(assert (=> b!6807001 (= e!4107617 (and tp!1863078 tp!1863077))))

(declare-fun b!6807002 () Bool)

(declare-fun tp!1863076 () Bool)

(assert (=> b!6807002 (= e!4107617 tp!1863076)))

(declare-fun b!6807003 () Bool)

(declare-fun tp!1863080 () Bool)

(declare-fun tp!1863079 () Bool)

(assert (=> b!6807003 (= e!4107617 (and tp!1863080 tp!1863079))))

(assert (= (and b!6806057 ((_ is ElementMatch!16627) (regTwo!33767 r!7292))) b!6807000))

(assert (= (and b!6806057 ((_ is Concat!25472) (regTwo!33767 r!7292))) b!6807001))

(assert (= (and b!6806057 ((_ is Star!16627) (regTwo!33767 r!7292))) b!6807002))

(assert (= (and b!6806057 ((_ is Union!16627) (regTwo!33767 r!7292))) b!6807003))

(declare-fun b!6807004 () Bool)

(declare-fun e!4107618 () Bool)

(declare-fun tp!1863081 () Bool)

(declare-fun tp!1863082 () Bool)

(assert (=> b!6807004 (= e!4107618 (and tp!1863081 tp!1863082))))

(assert (=> b!6806047 (= tp!1862986 e!4107618)))

(assert (= (and b!6806047 ((_ is Cons!66056) (exprs!6511 setElem!46677))) b!6807004))

(declare-fun b!6807005 () Bool)

(declare-fun e!4107619 () Bool)

(assert (=> b!6807005 (= e!4107619 tp_is_empty!42507)))

(assert (=> b!6806064 (= tp!1862987 e!4107619)))

(declare-fun b!6807006 () Bool)

(declare-fun tp!1863085 () Bool)

(declare-fun tp!1863084 () Bool)

(assert (=> b!6807006 (= e!4107619 (and tp!1863085 tp!1863084))))

(declare-fun b!6807007 () Bool)

(declare-fun tp!1863083 () Bool)

(assert (=> b!6807007 (= e!4107619 tp!1863083)))

(declare-fun b!6807008 () Bool)

(declare-fun tp!1863087 () Bool)

(declare-fun tp!1863086 () Bool)

(assert (=> b!6807008 (= e!4107619 (and tp!1863087 tp!1863086))))

(assert (= (and b!6806064 ((_ is ElementMatch!16627) (reg!16956 r!7292))) b!6807005))

(assert (= (and b!6806064 ((_ is Concat!25472) (reg!16956 r!7292))) b!6807006))

(assert (= (and b!6806064 ((_ is Star!16627) (reg!16956 r!7292))) b!6807007))

(assert (= (and b!6806064 ((_ is Union!16627) (reg!16956 r!7292))) b!6807008))

(declare-fun b!6807009 () Bool)

(declare-fun e!4107620 () Bool)

(assert (=> b!6807009 (= e!4107620 tp_is_empty!42507)))

(assert (=> b!6806048 (= tp!1862983 e!4107620)))

(declare-fun b!6807010 () Bool)

(declare-fun tp!1863090 () Bool)

(declare-fun tp!1863089 () Bool)

(assert (=> b!6807010 (= e!4107620 (and tp!1863090 tp!1863089))))

(declare-fun b!6807011 () Bool)

(declare-fun tp!1863088 () Bool)

(assert (=> b!6807011 (= e!4107620 tp!1863088)))

(declare-fun b!6807012 () Bool)

(declare-fun tp!1863092 () Bool)

(declare-fun tp!1863091 () Bool)

(assert (=> b!6807012 (= e!4107620 (and tp!1863092 tp!1863091))))

(assert (= (and b!6806048 ((_ is ElementMatch!16627) (regOne!33766 r!7292))) b!6807009))

(assert (= (and b!6806048 ((_ is Concat!25472) (regOne!33766 r!7292))) b!6807010))

(assert (= (and b!6806048 ((_ is Star!16627) (regOne!33766 r!7292))) b!6807011))

(assert (= (and b!6806048 ((_ is Union!16627) (regOne!33766 r!7292))) b!6807012))

(declare-fun b!6807013 () Bool)

(declare-fun e!4107621 () Bool)

(assert (=> b!6807013 (= e!4107621 tp_is_empty!42507)))

(assert (=> b!6806048 (= tp!1862980 e!4107621)))

(declare-fun b!6807014 () Bool)

(declare-fun tp!1863095 () Bool)

(declare-fun tp!1863094 () Bool)

(assert (=> b!6807014 (= e!4107621 (and tp!1863095 tp!1863094))))

(declare-fun b!6807015 () Bool)

(declare-fun tp!1863093 () Bool)

(assert (=> b!6807015 (= e!4107621 tp!1863093)))

(declare-fun b!6807016 () Bool)

(declare-fun tp!1863097 () Bool)

(declare-fun tp!1863096 () Bool)

(assert (=> b!6807016 (= e!4107621 (and tp!1863097 tp!1863096))))

(assert (= (and b!6806048 ((_ is ElementMatch!16627) (regTwo!33766 r!7292))) b!6807013))

(assert (= (and b!6806048 ((_ is Concat!25472) (regTwo!33766 r!7292))) b!6807014))

(assert (= (and b!6806048 ((_ is Star!16627) (regTwo!33766 r!7292))) b!6807015))

(assert (= (and b!6806048 ((_ is Union!16627) (regTwo!33766 r!7292))) b!6807016))

(declare-fun condSetEmpty!46683 () Bool)

(assert (=> setNonEmpty!46677 (= condSetEmpty!46683 (= setRest!46677 ((as const (Array Context!12022 Bool)) false)))))

(declare-fun setRes!46683 () Bool)

(assert (=> setNonEmpty!46677 (= tp!1862984 setRes!46683)))

(declare-fun setIsEmpty!46683 () Bool)

(assert (=> setIsEmpty!46683 setRes!46683))

(declare-fun tp!1863103 () Bool)

(declare-fun setElem!46683 () Context!12022)

(declare-fun e!4107624 () Bool)

(declare-fun setNonEmpty!46683 () Bool)

(assert (=> setNonEmpty!46683 (= setRes!46683 (and tp!1863103 (inv!84814 setElem!46683) e!4107624))))

(declare-fun setRest!46683 () (InoxSet Context!12022))

(assert (=> setNonEmpty!46683 (= setRest!46677 ((_ map or) (store ((as const (Array Context!12022 Bool)) false) setElem!46683 true) setRest!46683))))

(declare-fun b!6807021 () Bool)

(declare-fun tp!1863102 () Bool)

(assert (=> b!6807021 (= e!4107624 tp!1863102)))

(assert (= (and setNonEmpty!46677 condSetEmpty!46683) setIsEmpty!46683))

(assert (= (and setNonEmpty!46677 (not condSetEmpty!46683)) setNonEmpty!46683))

(assert (= setNonEmpty!46683 b!6807021))

(declare-fun m!7553050 () Bool)

(assert (=> setNonEmpty!46683 m!7553050))

(declare-fun b_lambda!256617 () Bool)

(assert (= b_lambda!256609 (or b!6806060 b_lambda!256617)))

(declare-fun bs!1814419 () Bool)

(declare-fun d!2138965 () Bool)

(assert (= bs!1814419 (and d!2138965 b!6806060)))

(assert (=> bs!1814419 (= (dynLambda!26387 lambda!384161 (h!72505 zl!343)) (derivationStepZipperUp!1781 (h!72505 zl!343) (h!72506 s!2326)))))

(assert (=> bs!1814419 m!7552254))

(assert (=> d!2138921 d!2138965))

(declare-fun b_lambda!256619 () Bool)

(assert (= b_lambda!256613 (or b!6806060 b_lambda!256619)))

(declare-fun bs!1814420 () Bool)

(declare-fun d!2138967 () Bool)

(assert (= bs!1814420 (and d!2138967 b!6806060)))

(assert (=> bs!1814420 (= (dynLambda!26387 lambda!384161 lt!2449242) (derivationStepZipperUp!1781 lt!2449242 (h!72506 s!2326)))))

(assert (=> bs!1814420 m!7552162))

(assert (=> d!2138941 d!2138967))

(declare-fun b_lambda!256621 () Bool)

(assert (= b_lambda!256615 (or b!6806060 b_lambda!256621)))

(declare-fun bs!1814421 () Bool)

(declare-fun d!2138969 () Bool)

(assert (= bs!1814421 (and d!2138969 b!6806060)))

(assert (=> bs!1814421 (= (dynLambda!26387 lambda!384161 lt!2449241) (derivationStepZipperUp!1781 lt!2449241 (h!72506 s!2326)))))

(assert (=> bs!1814421 m!7552160))

(assert (=> d!2138943 d!2138969))

(declare-fun b_lambda!256623 () Bool)

(assert (= b_lambda!256611 (or b!6806063 b_lambda!256623)))

(declare-fun bs!1814422 () Bool)

(declare-fun d!2138971 () Bool)

(assert (= bs!1814422 (and d!2138971 b!6806063)))

(declare-fun lt!2449432 () Unit!159945)

(assert (=> bs!1814422 (= lt!2449432 (lemmaConcatPreservesForall!456 (exprs!6511 lt!2449241) lt!2449260 lambda!384163))))

(assert (=> bs!1814422 (= (dynLambda!26388 lambda!384162 lt!2449241) (Context!12023 (++!14800 (exprs!6511 lt!2449241) lt!2449260)))))

(declare-fun m!7553052 () Bool)

(assert (=> bs!1814422 m!7553052))

(declare-fun m!7553054 () Bool)

(assert (=> bs!1814422 m!7553054))

(assert (=> d!2138925 d!2138971))

(declare-fun b_lambda!256625 () Bool)

(assert (= b_lambda!256597 (or b!6806060 b_lambda!256625)))

(declare-fun bs!1814423 () Bool)

(declare-fun d!2138973 () Bool)

(assert (= bs!1814423 (and d!2138973 b!6806060)))

(assert (=> bs!1814423 (= (dynLambda!26387 lambda!384161 lt!2449232) (derivationStepZipperUp!1781 lt!2449232 (h!72506 s!2326)))))

(assert (=> bs!1814423 m!7552190))

(assert (=> d!2138807 d!2138973))

(check-sat (not bm!618625) (not setNonEmpty!46683) (not bm!618595) (not d!2138921) (not b_lambda!256621) (not d!2138769) (not d!2138951) (not bm!618548) (not b!6806923) (not b!6806868) (not b!6806964) (not b!6806869) (not bm!618549) (not b!6806670) (not b!6806840) (not b!6806875) (not d!2138917) (not bm!618599) (not d!2138927) (not bm!618597) (not d!2138953) (not b!6806794) (not d!2138743) (not d!2138963) (not d!2138763) (not b!6806965) (not b!6807012) (not bm!618614) (not b!6806446) (not d!2138881) (not b!6806457) (not b!6806867) (not bm!618624) (not b!6806845) (not b!6807003) (not bs!1814419) (not b!6806939) (not bs!1814421) (not d!2138929) (not b!6806798) (not b!6806161) (not d!2138811) (not b!6806838) (not d!2138753) (not d!2138941) (not d!2138833) (not b!6806924) (not d!2138875) (not b!6806908) (not d!2138939) (not d!2138867) (not bm!618613) (not d!2138957) (not b!6806985) (not b!6806611) (not d!2138859) (not d!2138869) (not b!6806952) (not b!6806999) (not d!2138767) (not d!2138883) (not d!2138829) (not b!6806911) (not b_lambda!256623) (not d!2138879) (not b!6806957) (not b!6807001) (not d!2138849) (not d!2138931) (not bm!618618) (not b!6807011) (not b!6806917) (not d!2138925) (not b!6806998) (not b!6806967) (not d!2138959) (not b_lambda!256619) (not d!2138909) (not b!6806545) (not b!6806945) (not d!2138809) (not d!2138945) (not b!6806979) (not b!6806881) (not d!2138915) (not bm!618623) (not b!6806954) (not b!6806160) (not d!2138807) (not b!6806873) (not b!6806549) (not bs!1814420) (not bm!618601) (not bm!618620) (not b!6806605) (not b!6806928) (not b!6806665) (not b!6806311) (not b!6807006) (not b!6807008) (not d!2138803) (not b!6806940) (not b!6806612) (not b!6806606) (not b!6806959) (not b!6806440) (not b!6806913) (not b!6806997) (not d!2138913) (not d!2138835) (not b!6806458) (not d!2138727) (not b!6806613) (not b!6807007) (not b!6807014) (not b!6806543) (not b!6806872) (not b!6806835) (not b!6806547) (not d!2138797) (not d!2138877) (not b!6806929) (not b!6806876) (not bs!1814422) (not b!6806676) (not b!6807002) (not d!2138911) (not bm!618602) (not b!6806544) (not b!6806972) (not bm!618617) (not bm!618590) (not d!2138961) (not b_lambda!256625) (not b!6806228) (not b!6806664) (not bm!618588) (not b!6806550) (not d!2138839) (not b!6806667) (not d!2138937) (not b!6806887) (not b!6807004) (not b!6806941) (not b!6806406) (not b!6807021) (not b!6806304) (not b!6806846) (not d!2138725) (not b!6806915) (not bm!618592) (not d!2138943) (not b!6806910) (not b!6806675) (not b!6806439) (not bs!1814423) (not b!6806303) (not b!6806668) (not d!2138827) (not b!6806966) (not b!6807015) (not d!2138923) (not b!6806886) (not b!6806937) (not b!6806669) (not b!6806610) tp_is_empty!42507 (not bm!618626) (not b!6806980) (not b!6806912) (not bm!618619) (not b!6807016) (not b!6807010) (not bm!618622) (not b_lambda!256617) (not b!6806833) (not d!2138853))
(check-sat)

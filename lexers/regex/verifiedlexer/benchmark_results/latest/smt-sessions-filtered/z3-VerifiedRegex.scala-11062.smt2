; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573398 () Bool)

(assert start!573398)

(declare-fun b!5482208 () Bool)

(assert (=> b!5482208 true))

(assert (=> b!5482208 true))

(declare-fun lambda!292717 () Int)

(declare-fun lambda!292716 () Int)

(assert (=> b!5482208 (not (= lambda!292717 lambda!292716))))

(assert (=> b!5482208 true))

(assert (=> b!5482208 true))

(declare-fun lambda!292718 () Int)

(assert (=> b!5482208 (not (= lambda!292718 lambda!292716))))

(assert (=> b!5482208 (not (= lambda!292718 lambda!292717))))

(assert (=> b!5482208 true))

(assert (=> b!5482208 true))

(declare-fun b!5482212 () Bool)

(assert (=> b!5482212 true))

(declare-fun b!5482210 () Bool)

(assert (=> b!5482210 true))

(declare-fun b!5482191 () Bool)

(declare-fun res!2337277 () Bool)

(declare-fun e!3392775 () Bool)

(assert (=> b!5482191 (=> res!2337277 e!3392775)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31012 0))(
  ( (C!31013 (val!25208 Int)) )
))
(declare-datatypes ((Regex!15371 0))(
  ( (ElementMatch!15371 (c!957909 C!31012)) (Concat!24216 (regOne!31254 Regex!15371) (regTwo!31254 Regex!15371)) (EmptyExpr!15371) (Star!15371 (reg!15700 Regex!15371)) (EmptyLang!15371) (Union!15371 (regOne!31255 Regex!15371) (regTwo!31255 Regex!15371)) )
))
(declare-datatypes ((List!62412 0))(
  ( (Nil!62288) (Cons!62288 (h!68736 Regex!15371) (t!375643 List!62412)) )
))
(declare-datatypes ((Context!9510 0))(
  ( (Context!9511 (exprs!5255 List!62412)) )
))
(declare-fun lt!2238992 () (InoxSet Context!9510))

(declare-datatypes ((List!62413 0))(
  ( (Nil!62289) (Cons!62289 (h!68737 C!31012) (t!375644 List!62413)) )
))
(declare-datatypes ((tuple2!65136 0))(
  ( (tuple2!65137 (_1!35871 List!62413) (_2!35871 List!62413)) )
))
(declare-fun lt!2239012 () tuple2!65136)

(declare-fun matchZipper!1589 ((InoxSet Context!9510) List!62413) Bool)

(assert (=> b!5482191 (= res!2337277 (not (matchZipper!1589 lt!2238992 (_2!35871 lt!2239012))))))

(declare-fun b!5482192 () Bool)

(declare-fun e!3392782 () Bool)

(declare-fun tp!1506508 () Bool)

(declare-fun tp!1506504 () Bool)

(assert (=> b!5482192 (= e!3392782 (and tp!1506508 tp!1506504))))

(declare-fun b!5482193 () Bool)

(declare-fun res!2337298 () Bool)

(declare-fun e!3392788 () Bool)

(assert (=> b!5482193 (=> res!2337298 e!3392788)))

(declare-fun s!2326 () List!62413)

(get-info :version)

(assert (=> b!5482193 (= res!2337298 ((_ is Nil!62289) s!2326))))

(declare-fun setElem!36063 () Context!9510)

(declare-fun tp!1506507 () Bool)

(declare-fun setNonEmpty!36063 () Bool)

(declare-fun setRes!36063 () Bool)

(declare-fun e!3392785 () Bool)

(declare-fun inv!81674 (Context!9510) Bool)

(assert (=> setNonEmpty!36063 (= setRes!36063 (and tp!1506507 (inv!81674 setElem!36063) e!3392785))))

(declare-fun z!1189 () (InoxSet Context!9510))

(declare-fun setRest!36063 () (InoxSet Context!9510))

(assert (=> setNonEmpty!36063 (= z!1189 ((_ map or) (store ((as const (Array Context!9510 Bool)) false) setElem!36063 true) setRest!36063))))

(declare-fun b!5482194 () Bool)

(declare-fun res!2337285 () Bool)

(declare-fun e!3392780 () Bool)

(assert (=> b!5482194 (=> res!2337285 e!3392780)))

(declare-fun lt!2239009 () Context!9510)

(declare-fun r!7292 () Regex!15371)

(declare-datatypes ((List!62414 0))(
  ( (Nil!62290) (Cons!62290 (h!68738 Context!9510) (t!375645 List!62414)) )
))
(declare-fun unfocusZipper!1113 (List!62414) Regex!15371)

(assert (=> b!5482194 (= res!2337285 (not (= (unfocusZipper!1113 (Cons!62290 lt!2239009 Nil!62290)) r!7292)))))

(declare-fun b!5482195 () Bool)

(declare-fun e!3392776 () Bool)

(declare-fun tp!1506506 () Bool)

(assert (=> b!5482195 (= e!3392776 tp!1506506)))

(declare-fun b!5482196 () Bool)

(declare-fun res!2337288 () Bool)

(declare-fun e!3392789 () Bool)

(assert (=> b!5482196 (=> res!2337288 e!3392789)))

(declare-fun zl!343 () List!62414)

(declare-fun isEmpty!34238 (List!62414) Bool)

(assert (=> b!5482196 (= res!2337288 (not (isEmpty!34238 (t!375645 zl!343))))))

(declare-fun b!5482197 () Bool)

(declare-fun e!3392786 () Bool)

(assert (=> b!5482197 (= e!3392786 (not e!3392789))))

(declare-fun res!2337299 () Bool)

(assert (=> b!5482197 (=> res!2337299 e!3392789)))

(assert (=> b!5482197 (= res!2337299 (not ((_ is Cons!62290) zl!343)))))

(declare-fun lt!2239019 () Bool)

(declare-fun matchRSpec!2474 (Regex!15371 List!62413) Bool)

(assert (=> b!5482197 (= lt!2239019 (matchRSpec!2474 r!7292 s!2326))))

(declare-fun matchR!7556 (Regex!15371 List!62413) Bool)

(assert (=> b!5482197 (= lt!2239019 (matchR!7556 r!7292 s!2326))))

(declare-datatypes ((Unit!155192 0))(
  ( (Unit!155193) )
))
(declare-fun lt!2239006 () Unit!155192)

(declare-fun mainMatchTheorem!2474 (Regex!15371 List!62413) Unit!155192)

(assert (=> b!5482197 (= lt!2239006 (mainMatchTheorem!2474 r!7292 s!2326))))

(declare-fun b!5482199 () Bool)

(declare-fun res!2337301 () Bool)

(declare-fun e!3392790 () Bool)

(assert (=> b!5482199 (=> res!2337301 e!3392790)))

(declare-fun lt!2238994 () Regex!15371)

(assert (=> b!5482199 (= res!2337301 (or (not (= lt!2238994 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5482200 () Bool)

(declare-fun e!3392787 () Bool)

(assert (=> b!5482200 (= e!3392790 e!3392787)))

(declare-fun res!2337278 () Bool)

(assert (=> b!5482200 (=> res!2337278 e!3392787)))

(declare-fun lt!2238995 () Context!9510)

(declare-fun lt!2239001 () Regex!15371)

(assert (=> b!5482200 (= res!2337278 (not (= (unfocusZipper!1113 (Cons!62290 lt!2238995 Nil!62290)) lt!2239001)))))

(assert (=> b!5482200 (= lt!2239001 (Concat!24216 (reg!15700 r!7292) r!7292))))

(declare-fun b!5482201 () Bool)

(declare-fun res!2337282 () Bool)

(assert (=> b!5482201 (=> res!2337282 e!3392789)))

(declare-fun generalisedUnion!1300 (List!62412) Regex!15371)

(declare-fun unfocusZipperList!813 (List!62414) List!62412)

(assert (=> b!5482201 (= res!2337282 (not (= r!7292 (generalisedUnion!1300 (unfocusZipperList!813 zl!343)))))))

(declare-fun b!5482202 () Bool)

(declare-fun e!3392774 () Bool)

(declare-fun lt!2239024 () Bool)

(assert (=> b!5482202 (= e!3392774 lt!2239024)))

(declare-fun setIsEmpty!36063 () Bool)

(assert (=> setIsEmpty!36063 setRes!36063))

(declare-fun b!5482203 () Bool)

(declare-fun e!3392779 () Bool)

(assert (=> b!5482203 (= e!3392780 e!3392779)))

(declare-fun res!2337294 () Bool)

(assert (=> b!5482203 (=> res!2337294 e!3392779)))

(declare-fun lt!2238997 () Bool)

(assert (=> b!5482203 (= res!2337294 lt!2238997)))

(assert (=> b!5482203 (= lt!2238997 (matchRSpec!2474 lt!2239001 s!2326))))

(assert (=> b!5482203 (= lt!2238997 (matchR!7556 lt!2239001 s!2326))))

(declare-fun lt!2239000 () Unit!155192)

(assert (=> b!5482203 (= lt!2239000 (mainMatchTheorem!2474 lt!2239001 s!2326))))

(declare-fun b!5482204 () Bool)

(declare-fun e!3392781 () Bool)

(assert (=> b!5482204 (= e!3392788 e!3392781)))

(declare-fun res!2337296 () Bool)

(assert (=> b!5482204 (=> res!2337296 e!3392781)))

(declare-fun lt!2239015 () (InoxSet Context!9510))

(declare-fun lt!2239020 () (InoxSet Context!9510))

(assert (=> b!5482204 (= res!2337296 (not (= lt!2239015 lt!2239020)))))

(declare-fun derivationStepZipperDown!797 (Regex!15371 Context!9510 C!31012) (InoxSet Context!9510))

(assert (=> b!5482204 (= lt!2239020 (derivationStepZipperDown!797 r!7292 (Context!9511 Nil!62288) (h!68737 s!2326)))))

(declare-fun derivationStepZipperUp!723 (Context!9510 C!31012) (InoxSet Context!9510))

(assert (=> b!5482204 (= lt!2239015 (derivationStepZipperUp!723 (Context!9511 (Cons!62288 r!7292 Nil!62288)) (h!68737 s!2326)))))

(declare-fun lt!2239025 () (InoxSet Context!9510))

(declare-fun derivationStepZipper!1566 ((InoxSet Context!9510) C!31012) (InoxSet Context!9510))

(assert (=> b!5482204 (= lt!2239025 (derivationStepZipper!1566 z!1189 (h!68737 s!2326)))))

(declare-fun e!3392777 () Bool)

(declare-fun tp!1506510 () Bool)

(declare-fun b!5482205 () Bool)

(assert (=> b!5482205 (= e!3392777 (and (inv!81674 (h!68738 zl!343)) e!3392776 tp!1506510))))

(declare-fun b!5482206 () Bool)

(declare-fun e!3392784 () Bool)

(assert (=> b!5482206 (= e!3392775 e!3392784)))

(declare-fun res!2337281 () Bool)

(assert (=> b!5482206 (=> res!2337281 e!3392784)))

(declare-fun validRegex!7107 (Regex!15371) Bool)

(assert (=> b!5482206 (= res!2337281 (not (validRegex!7107 (reg!15700 r!7292))))))

(declare-fun lt!2239013 () List!62412)

(declare-fun lt!2238996 () List!62412)

(declare-fun lt!2239023 () List!62413)

(declare-fun ++!13715 (List!62412 List!62412) List!62412)

(assert (=> b!5482206 (matchZipper!1589 (store ((as const (Array Context!9510 Bool)) false) (Context!9511 (++!13715 lt!2239013 lt!2238996)) true) lt!2239023)))

(declare-fun lt!2239026 () Unit!155192)

(declare-fun lambda!292721 () Int)

(declare-fun lemmaConcatPreservesForall!272 (List!62412 List!62412 Int) Unit!155192)

(assert (=> b!5482206 (= lt!2239026 (lemmaConcatPreservesForall!272 lt!2239013 lt!2238996 lambda!292721))))

(declare-fun lt!2239008 () Unit!155192)

(declare-fun lt!2239016 () Context!9510)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!112 (Context!9510 Context!9510 List!62413 List!62413) Unit!155192)

(assert (=> b!5482206 (= lt!2239008 (lemmaConcatenateContextMatchesConcatOfStrings!112 lt!2239016 lt!2239009 (_1!35871 lt!2239012) (_2!35871 lt!2239012)))))

(declare-fun b!5482207 () Bool)

(declare-fun tp!1506502 () Bool)

(declare-fun tp!1506511 () Bool)

(assert (=> b!5482207 (= e!3392782 (and tp!1506502 tp!1506511))))

(assert (=> b!5482208 (= e!3392789 e!3392788)))

(declare-fun res!2337289 () Bool)

(assert (=> b!5482208 (=> res!2337289 e!3392788)))

(assert (=> b!5482208 (= res!2337289 (not (= lt!2239019 e!3392774)))))

(declare-fun res!2337275 () Bool)

(assert (=> b!5482208 (=> res!2337275 e!3392774)))

(declare-fun isEmpty!34239 (List!62413) Bool)

(assert (=> b!5482208 (= res!2337275 (isEmpty!34239 s!2326))))

(declare-fun Exists!2550 (Int) Bool)

(assert (=> b!5482208 (= (Exists!2550 lambda!292716) (Exists!2550 lambda!292718))))

(declare-fun lt!2238998 () Unit!155192)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1200 (Regex!15371 Regex!15371 List!62413) Unit!155192)

(assert (=> b!5482208 (= lt!2238998 (lemmaExistCutMatchRandMatchRSpecEquivalent!1200 (reg!15700 r!7292) r!7292 s!2326))))

(assert (=> b!5482208 (= (Exists!2550 lambda!292716) (Exists!2550 lambda!292717))))

(declare-fun lt!2239003 () Unit!155192)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!524 (Regex!15371 List!62413) Unit!155192)

(assert (=> b!5482208 (= lt!2239003 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!524 (reg!15700 r!7292) s!2326))))

(assert (=> b!5482208 (= lt!2239024 (Exists!2550 lambda!292716))))

(declare-datatypes ((Option!15480 0))(
  ( (None!15479) (Some!15479 (v!51508 tuple2!65136)) )
))
(declare-fun isDefined!12183 (Option!15480) Bool)

(declare-fun findConcatSeparation!1894 (Regex!15371 Regex!15371 List!62413 List!62413 List!62413) Option!15480)

(assert (=> b!5482208 (= lt!2239024 (isDefined!12183 (findConcatSeparation!1894 (reg!15700 r!7292) r!7292 Nil!62289 s!2326 s!2326)))))

(declare-fun lt!2239022 () Unit!155192)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1658 (Regex!15371 Regex!15371 List!62413) Unit!155192)

(assert (=> b!5482208 (= lt!2239022 (lemmaFindConcatSeparationEquivalentToExists!1658 (reg!15700 r!7292) r!7292 s!2326))))

(declare-fun b!5482209 () Bool)

(declare-fun tp_is_empty!39995 () Bool)

(assert (=> b!5482209 (= e!3392782 tp_is_empty!39995)))

(declare-fun e!3392783 () Bool)

(assert (=> b!5482210 (= e!3392779 e!3392783)))

(declare-fun res!2337297 () Bool)

(assert (=> b!5482210 (=> res!2337297 e!3392783)))

(declare-fun lt!2239018 () (InoxSet Context!9510))

(declare-fun lt!2239007 () (InoxSet Context!9510))

(declare-fun appendTo!90 ((InoxSet Context!9510) Context!9510) (InoxSet Context!9510))

(assert (=> b!5482210 (= res!2337297 (not (= (appendTo!90 lt!2239007 lt!2239009) lt!2239018)))))

(declare-fun lambda!292720 () Int)

(declare-fun map!14313 ((InoxSet Context!9510) Int) (InoxSet Context!9510))

(assert (=> b!5482210 (= (map!14313 lt!2239007 lambda!292720) (store ((as const (Array Context!9510 Bool)) false) (Context!9511 (++!13715 lt!2239013 lt!2238996)) true))))

(declare-fun lt!2239027 () Unit!155192)

(assert (=> b!5482210 (= lt!2239027 (lemmaConcatPreservesForall!272 lt!2239013 lt!2238996 lambda!292721))))

(declare-fun lt!2239004 () Unit!155192)

(declare-fun lemmaMapOnSingletonSet!102 ((InoxSet Context!9510) Context!9510 Int) Unit!155192)

(assert (=> b!5482210 (= lt!2239004 (lemmaMapOnSingletonSet!102 lt!2239007 lt!2239016 lambda!292720))))

(declare-fun b!5482211 () Bool)

(declare-fun tp!1506503 () Bool)

(assert (=> b!5482211 (= e!3392782 tp!1506503)))

(declare-fun e!3392791 () Bool)

(assert (=> b!5482212 (= e!3392781 e!3392791)))

(declare-fun res!2337293 () Bool)

(assert (=> b!5482212 (=> res!2337293 e!3392791)))

(assert (=> b!5482212 (= res!2337293 (not (= lt!2239025 lt!2239020)))))

(declare-fun lambda!292719 () Int)

(declare-fun flatMap!1074 ((InoxSet Context!9510) Int) (InoxSet Context!9510))

(assert (=> b!5482212 (= (flatMap!1074 z!1189 lambda!292719) (derivationStepZipperUp!723 (h!68738 zl!343) (h!68737 s!2326)))))

(declare-fun lt!2239011 () Unit!155192)

(declare-fun lemmaFlatMapOnSingletonSet!606 ((InoxSet Context!9510) Context!9510 Int) Unit!155192)

(assert (=> b!5482212 (= lt!2239011 (lemmaFlatMapOnSingletonSet!606 z!1189 (h!68738 zl!343) lambda!292719))))

(declare-fun b!5482213 () Bool)

(declare-fun res!2337290 () Bool)

(declare-fun e!3392778 () Bool)

(assert (=> b!5482213 (=> (not res!2337290) (not e!3392778))))

(declare-fun toList!9155 ((InoxSet Context!9510)) List!62414)

(assert (=> b!5482213 (= res!2337290 (= (toList!9155 z!1189) zl!343))))

(declare-fun b!5482214 () Bool)

(declare-fun res!2337276 () Bool)

(assert (=> b!5482214 (=> res!2337276 e!3392780)))

(assert (=> b!5482214 (= res!2337276 (not (= (unfocusZipper!1113 (Cons!62290 lt!2239016 Nil!62290)) (reg!15700 r!7292))))))

(declare-fun b!5482215 () Bool)

(declare-fun res!2337300 () Bool)

(assert (=> b!5482215 (=> res!2337300 e!3392775)))

(assert (=> b!5482215 (= res!2337300 (not (matchZipper!1589 lt!2239007 (_1!35871 lt!2239012))))))

(declare-fun b!5482216 () Bool)

(assert (=> b!5482216 (= e!3392783 e!3392775)))

(declare-fun res!2337287 () Bool)

(assert (=> b!5482216 (=> res!2337287 e!3392775)))

(assert (=> b!5482216 (= res!2337287 (not (= s!2326 lt!2239023)))))

(declare-fun ++!13716 (List!62413 List!62413) List!62413)

(assert (=> b!5482216 (= lt!2239023 (++!13716 (_1!35871 lt!2239012) (_2!35871 lt!2239012)))))

(declare-fun lt!2239002 () Option!15480)

(declare-fun get!21481 (Option!15480) tuple2!65136)

(assert (=> b!5482216 (= lt!2239012 (get!21481 lt!2239002))))

(assert (=> b!5482216 (isDefined!12183 lt!2239002)))

(declare-fun findConcatSeparationZippers!98 ((InoxSet Context!9510) (InoxSet Context!9510) List!62413 List!62413 List!62413) Option!15480)

(assert (=> b!5482216 (= lt!2239002 (findConcatSeparationZippers!98 lt!2239007 lt!2238992 Nil!62289 s!2326 s!2326))))

(declare-fun lt!2239005 () Unit!155192)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!98 ((InoxSet Context!9510) Context!9510 List!62413) Unit!155192)

(assert (=> b!5482216 (= lt!2239005 (lemmaConcatZipperMatchesStringThenFindConcatDefined!98 lt!2239007 lt!2239009 s!2326))))

(declare-fun b!5482198 () Bool)

(assert (=> b!5482198 (= e!3392791 e!3392790)))

(declare-fun res!2337292 () Bool)

(assert (=> b!5482198 (=> res!2337292 e!3392790)))

(assert (=> b!5482198 (= res!2337292 (not (= lt!2239025 (derivationStepZipperDown!797 (reg!15700 r!7292) lt!2239009 (h!68737 s!2326)))))))

(assert (=> b!5482198 (= lt!2239009 (Context!9511 lt!2238996))))

(assert (=> b!5482198 (= (flatMap!1074 lt!2239018 lambda!292719) (derivationStepZipperUp!723 lt!2238995 (h!68737 s!2326)))))

(declare-fun lt!2239021 () Unit!155192)

(assert (=> b!5482198 (= lt!2239021 (lemmaFlatMapOnSingletonSet!606 lt!2239018 lt!2238995 lambda!292719))))

(declare-fun lt!2239017 () (InoxSet Context!9510))

(assert (=> b!5482198 (= lt!2239017 (derivationStepZipperUp!723 lt!2238995 (h!68737 s!2326)))))

(assert (=> b!5482198 (= lt!2239018 (store ((as const (Array Context!9510 Bool)) false) lt!2238995 true))))

(assert (=> b!5482198 (= lt!2238995 (Context!9511 (Cons!62288 (reg!15700 r!7292) lt!2238996)))))

(assert (=> b!5482198 (= lt!2238996 (Cons!62288 r!7292 Nil!62288))))

(declare-fun res!2337284 () Bool)

(assert (=> start!573398 (=> (not res!2337284) (not e!3392778))))

(assert (=> start!573398 (= res!2337284 (validRegex!7107 r!7292))))

(assert (=> start!573398 e!3392778))

(assert (=> start!573398 e!3392782))

(declare-fun condSetEmpty!36063 () Bool)

(assert (=> start!573398 (= condSetEmpty!36063 (= z!1189 ((as const (Array Context!9510 Bool)) false)))))

(assert (=> start!573398 setRes!36063))

(assert (=> start!573398 e!3392777))

(declare-fun e!3392792 () Bool)

(assert (=> start!573398 e!3392792))

(declare-fun b!5482217 () Bool)

(assert (=> b!5482217 (= e!3392784 true)))

(declare-fun lt!2238993 () List!62414)

(assert (=> b!5482217 (= lt!2238993 (toList!9155 lt!2239007))))

(declare-fun b!5482218 () Bool)

(declare-fun res!2337295 () Bool)

(assert (=> b!5482218 (=> res!2337295 e!3392789)))

(assert (=> b!5482218 (= res!2337295 (or ((_ is EmptyExpr!15371) r!7292) ((_ is EmptyLang!15371) r!7292) ((_ is ElementMatch!15371) r!7292) ((_ is Union!15371) r!7292) ((_ is Concat!24216) r!7292)))))

(declare-fun b!5482219 () Bool)

(declare-fun res!2337279 () Bool)

(assert (=> b!5482219 (=> res!2337279 e!3392789)))

(assert (=> b!5482219 (= res!2337279 (not ((_ is Cons!62288) (exprs!5255 (h!68738 zl!343)))))))

(declare-fun b!5482220 () Bool)

(declare-fun tp!1506505 () Bool)

(assert (=> b!5482220 (= e!3392785 tp!1506505)))

(declare-fun b!5482221 () Bool)

(assert (=> b!5482221 (= e!3392787 e!3392780)))

(declare-fun res!2337291 () Bool)

(assert (=> b!5482221 (=> res!2337291 e!3392780)))

(assert (=> b!5482221 (= res!2337291 (not (= lt!2239025 (derivationStepZipper!1566 lt!2238992 (h!68737 s!2326)))))))

(assert (=> b!5482221 (= (flatMap!1074 lt!2238992 lambda!292719) (derivationStepZipperUp!723 lt!2239009 (h!68737 s!2326)))))

(declare-fun lt!2239010 () Unit!155192)

(assert (=> b!5482221 (= lt!2239010 (lemmaFlatMapOnSingletonSet!606 lt!2238992 lt!2239009 lambda!292719))))

(assert (=> b!5482221 (= (flatMap!1074 lt!2239007 lambda!292719) (derivationStepZipperUp!723 lt!2239016 (h!68737 s!2326)))))

(declare-fun lt!2239014 () Unit!155192)

(assert (=> b!5482221 (= lt!2239014 (lemmaFlatMapOnSingletonSet!606 lt!2239007 lt!2239016 lambda!292719))))

(declare-fun lt!2238991 () (InoxSet Context!9510))

(assert (=> b!5482221 (= lt!2238991 (derivationStepZipperUp!723 lt!2239009 (h!68737 s!2326)))))

(declare-fun lt!2238999 () (InoxSet Context!9510))

(assert (=> b!5482221 (= lt!2238999 (derivationStepZipperUp!723 lt!2239016 (h!68737 s!2326)))))

(assert (=> b!5482221 (= lt!2238992 (store ((as const (Array Context!9510 Bool)) false) lt!2239009 true))))

(assert (=> b!5482221 (= lt!2239007 (store ((as const (Array Context!9510 Bool)) false) lt!2239016 true))))

(assert (=> b!5482221 (= lt!2239016 (Context!9511 lt!2239013))))

(assert (=> b!5482221 (= lt!2239013 (Cons!62288 (reg!15700 r!7292) Nil!62288))))

(declare-fun b!5482222 () Bool)

(declare-fun res!2337286 () Bool)

(assert (=> b!5482222 (=> res!2337286 e!3392790)))

(assert (=> b!5482222 (= res!2337286 (not (= (matchZipper!1589 lt!2239018 s!2326) (matchZipper!1589 (derivationStepZipper!1566 lt!2239018 (h!68737 s!2326)) (t!375644 s!2326)))))))

(declare-fun b!5482223 () Bool)

(assert (=> b!5482223 (= e!3392778 e!3392786)))

(declare-fun res!2337302 () Bool)

(assert (=> b!5482223 (=> (not res!2337302) (not e!3392786))))

(assert (=> b!5482223 (= res!2337302 (= r!7292 lt!2238994))))

(assert (=> b!5482223 (= lt!2238994 (unfocusZipper!1113 zl!343))))

(declare-fun b!5482224 () Bool)

(declare-fun res!2337283 () Bool)

(assert (=> b!5482224 (=> res!2337283 e!3392779)))

(assert (=> b!5482224 (= res!2337283 (not (matchZipper!1589 z!1189 s!2326)))))

(declare-fun b!5482225 () Bool)

(declare-fun tp!1506509 () Bool)

(assert (=> b!5482225 (= e!3392792 (and tp_is_empty!39995 tp!1506509))))

(declare-fun b!5482226 () Bool)

(declare-fun res!2337280 () Bool)

(assert (=> b!5482226 (=> res!2337280 e!3392789)))

(declare-fun generalisedConcat!1040 (List!62412) Regex!15371)

(assert (=> b!5482226 (= res!2337280 (not (= r!7292 (generalisedConcat!1040 (exprs!5255 (h!68738 zl!343))))))))

(assert (= (and start!573398 res!2337284) b!5482213))

(assert (= (and b!5482213 res!2337290) b!5482223))

(assert (= (and b!5482223 res!2337302) b!5482197))

(assert (= (and b!5482197 (not res!2337299)) b!5482196))

(assert (= (and b!5482196 (not res!2337288)) b!5482226))

(assert (= (and b!5482226 (not res!2337280)) b!5482219))

(assert (= (and b!5482219 (not res!2337279)) b!5482201))

(assert (= (and b!5482201 (not res!2337282)) b!5482218))

(assert (= (and b!5482218 (not res!2337295)) b!5482208))

(assert (= (and b!5482208 (not res!2337275)) b!5482202))

(assert (= (and b!5482208 (not res!2337289)) b!5482193))

(assert (= (and b!5482193 (not res!2337298)) b!5482204))

(assert (= (and b!5482204 (not res!2337296)) b!5482212))

(assert (= (and b!5482212 (not res!2337293)) b!5482198))

(assert (= (and b!5482198 (not res!2337292)) b!5482222))

(assert (= (and b!5482222 (not res!2337286)) b!5482199))

(assert (= (and b!5482199 (not res!2337301)) b!5482200))

(assert (= (and b!5482200 (not res!2337278)) b!5482221))

(assert (= (and b!5482221 (not res!2337291)) b!5482214))

(assert (= (and b!5482214 (not res!2337276)) b!5482194))

(assert (= (and b!5482194 (not res!2337285)) b!5482203))

(assert (= (and b!5482203 (not res!2337294)) b!5482224))

(assert (= (and b!5482224 (not res!2337283)) b!5482210))

(assert (= (and b!5482210 (not res!2337297)) b!5482216))

(assert (= (and b!5482216 (not res!2337287)) b!5482215))

(assert (= (and b!5482215 (not res!2337300)) b!5482191))

(assert (= (and b!5482191 (not res!2337277)) b!5482206))

(assert (= (and b!5482206 (not res!2337281)) b!5482217))

(assert (= (and start!573398 ((_ is ElementMatch!15371) r!7292)) b!5482209))

(assert (= (and start!573398 ((_ is Concat!24216) r!7292)) b!5482207))

(assert (= (and start!573398 ((_ is Star!15371) r!7292)) b!5482211))

(assert (= (and start!573398 ((_ is Union!15371) r!7292)) b!5482192))

(assert (= (and start!573398 condSetEmpty!36063) setIsEmpty!36063))

(assert (= (and start!573398 (not condSetEmpty!36063)) setNonEmpty!36063))

(assert (= setNonEmpty!36063 b!5482220))

(assert (= b!5482205 b!5482195))

(assert (= (and start!573398 ((_ is Cons!62290) zl!343)) b!5482205))

(assert (= (and start!573398 ((_ is Cons!62289) s!2326)) b!5482225))

(declare-fun m!6497784 () Bool)

(assert (=> b!5482212 m!6497784))

(declare-fun m!6497786 () Bool)

(assert (=> b!5482212 m!6497786))

(declare-fun m!6497788 () Bool)

(assert (=> b!5482212 m!6497788))

(declare-fun m!6497790 () Bool)

(assert (=> b!5482222 m!6497790))

(declare-fun m!6497792 () Bool)

(assert (=> b!5482222 m!6497792))

(assert (=> b!5482222 m!6497792))

(declare-fun m!6497794 () Bool)

(assert (=> b!5482222 m!6497794))

(declare-fun m!6497796 () Bool)

(assert (=> b!5482210 m!6497796))

(declare-fun m!6497798 () Bool)

(assert (=> b!5482210 m!6497798))

(declare-fun m!6497800 () Bool)

(assert (=> b!5482210 m!6497800))

(declare-fun m!6497802 () Bool)

(assert (=> b!5482210 m!6497802))

(declare-fun m!6497804 () Bool)

(assert (=> b!5482210 m!6497804))

(declare-fun m!6497806 () Bool)

(assert (=> b!5482210 m!6497806))

(declare-fun m!6497808 () Bool)

(assert (=> setNonEmpty!36063 m!6497808))

(assert (=> b!5482206 m!6497796))

(assert (=> b!5482206 m!6497800))

(assert (=> b!5482206 m!6497806))

(declare-fun m!6497810 () Bool)

(assert (=> b!5482206 m!6497810))

(declare-fun m!6497812 () Bool)

(assert (=> b!5482206 m!6497812))

(declare-fun m!6497814 () Bool)

(assert (=> b!5482206 m!6497814))

(assert (=> b!5482206 m!6497806))

(declare-fun m!6497816 () Bool)

(assert (=> b!5482221 m!6497816))

(declare-fun m!6497818 () Bool)

(assert (=> b!5482221 m!6497818))

(declare-fun m!6497820 () Bool)

(assert (=> b!5482221 m!6497820))

(declare-fun m!6497822 () Bool)

(assert (=> b!5482221 m!6497822))

(declare-fun m!6497824 () Bool)

(assert (=> b!5482221 m!6497824))

(declare-fun m!6497826 () Bool)

(assert (=> b!5482221 m!6497826))

(declare-fun m!6497828 () Bool)

(assert (=> b!5482221 m!6497828))

(declare-fun m!6497830 () Bool)

(assert (=> b!5482221 m!6497830))

(declare-fun m!6497832 () Bool)

(assert (=> b!5482221 m!6497832))

(declare-fun m!6497834 () Bool)

(assert (=> b!5482198 m!6497834))

(declare-fun m!6497836 () Bool)

(assert (=> b!5482198 m!6497836))

(declare-fun m!6497838 () Bool)

(assert (=> b!5482198 m!6497838))

(declare-fun m!6497840 () Bool)

(assert (=> b!5482198 m!6497840))

(declare-fun m!6497842 () Bool)

(assert (=> b!5482198 m!6497842))

(declare-fun m!6497844 () Bool)

(assert (=> b!5482196 m!6497844))

(declare-fun m!6497846 () Bool)

(assert (=> b!5482226 m!6497846))

(declare-fun m!6497848 () Bool)

(assert (=> b!5482205 m!6497848))

(declare-fun m!6497850 () Bool)

(assert (=> b!5482217 m!6497850))

(declare-fun m!6497852 () Bool)

(assert (=> b!5482214 m!6497852))

(declare-fun m!6497854 () Bool)

(assert (=> b!5482197 m!6497854))

(declare-fun m!6497856 () Bool)

(assert (=> b!5482197 m!6497856))

(declare-fun m!6497858 () Bool)

(assert (=> b!5482197 m!6497858))

(declare-fun m!6497860 () Bool)

(assert (=> start!573398 m!6497860))

(declare-fun m!6497862 () Bool)

(assert (=> b!5482200 m!6497862))

(declare-fun m!6497864 () Bool)

(assert (=> b!5482213 m!6497864))

(declare-fun m!6497866 () Bool)

(assert (=> b!5482194 m!6497866))

(declare-fun m!6497868 () Bool)

(assert (=> b!5482223 m!6497868))

(declare-fun m!6497870 () Bool)

(assert (=> b!5482216 m!6497870))

(declare-fun m!6497872 () Bool)

(assert (=> b!5482216 m!6497872))

(declare-fun m!6497874 () Bool)

(assert (=> b!5482216 m!6497874))

(declare-fun m!6497876 () Bool)

(assert (=> b!5482216 m!6497876))

(declare-fun m!6497878 () Bool)

(assert (=> b!5482216 m!6497878))

(declare-fun m!6497880 () Bool)

(assert (=> b!5482224 m!6497880))

(declare-fun m!6497882 () Bool)

(assert (=> b!5482215 m!6497882))

(declare-fun m!6497884 () Bool)

(assert (=> b!5482208 m!6497884))

(declare-fun m!6497886 () Bool)

(assert (=> b!5482208 m!6497886))

(declare-fun m!6497888 () Bool)

(assert (=> b!5482208 m!6497888))

(declare-fun m!6497890 () Bool)

(assert (=> b!5482208 m!6497890))

(assert (=> b!5482208 m!6497886))

(declare-fun m!6497892 () Bool)

(assert (=> b!5482208 m!6497892))

(declare-fun m!6497894 () Bool)

(assert (=> b!5482208 m!6497894))

(declare-fun m!6497896 () Bool)

(assert (=> b!5482208 m!6497896))

(assert (=> b!5482208 m!6497886))

(declare-fun m!6497898 () Bool)

(assert (=> b!5482208 m!6497898))

(assert (=> b!5482208 m!6497892))

(declare-fun m!6497900 () Bool)

(assert (=> b!5482208 m!6497900))

(declare-fun m!6497902 () Bool)

(assert (=> b!5482204 m!6497902))

(declare-fun m!6497904 () Bool)

(assert (=> b!5482204 m!6497904))

(declare-fun m!6497906 () Bool)

(assert (=> b!5482204 m!6497906))

(declare-fun m!6497908 () Bool)

(assert (=> b!5482201 m!6497908))

(assert (=> b!5482201 m!6497908))

(declare-fun m!6497910 () Bool)

(assert (=> b!5482201 m!6497910))

(declare-fun m!6497912 () Bool)

(assert (=> b!5482203 m!6497912))

(declare-fun m!6497914 () Bool)

(assert (=> b!5482203 m!6497914))

(declare-fun m!6497916 () Bool)

(assert (=> b!5482203 m!6497916))

(declare-fun m!6497918 () Bool)

(assert (=> b!5482191 m!6497918))

(check-sat (not b!5482206) (not b!5482204) (not b!5482198) (not b!5482192) (not b!5482196) (not b!5482226) (not b!5482210) (not b!5482213) (not b!5482215) (not b!5482191) (not b!5482207) (not b!5482203) (not b!5482208) (not b!5482211) (not b!5482214) (not b!5482216) (not b!5482222) (not b!5482195) (not b!5482217) (not b!5482205) (not b!5482201) (not start!573398) (not b!5482221) (not b!5482223) tp_is_empty!39995 (not b!5482200) (not b!5482224) (not b!5482225) (not b!5482197) (not b!5482194) (not b!5482212) (not b!5482220) (not setNonEmpty!36063))
(check-sat)

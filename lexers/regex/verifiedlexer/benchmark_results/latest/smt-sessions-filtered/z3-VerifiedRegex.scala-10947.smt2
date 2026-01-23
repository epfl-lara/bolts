; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566690 () Bool)

(assert start!566690)

(declare-fun b!5393091 () Bool)

(assert (=> b!5393091 true))

(assert (=> b!5393091 true))

(declare-fun lambda!280226 () Int)

(declare-fun lambda!280225 () Int)

(assert (=> b!5393091 (not (= lambda!280226 lambda!280225))))

(assert (=> b!5393091 true))

(assert (=> b!5393091 true))

(declare-fun b!5393081 () Bool)

(assert (=> b!5393081 true))

(declare-fun b!5393068 () Bool)

(declare-fun e!3344480 () Bool)

(declare-fun e!3344483 () Bool)

(assert (=> b!5393068 (= e!3344480 e!3344483)))

(declare-fun res!2291691 () Bool)

(assert (=> b!5393068 (=> res!2291691 e!3344483)))

(declare-fun lt!2197248 () Bool)

(assert (=> b!5393068 (= res!2291691 lt!2197248)))

(declare-datatypes ((C!30552 0))(
  ( (C!30553 (val!24978 Int)) )
))
(declare-datatypes ((Regex!15141 0))(
  ( (ElementMatch!15141 (c!939885 C!30552)) (Concat!23986 (regOne!30794 Regex!15141) (regTwo!30794 Regex!15141)) (EmptyExpr!15141) (Star!15141 (reg!15470 Regex!15141)) (EmptyLang!15141) (Union!15141 (regOne!30795 Regex!15141) (regTwo!30795 Regex!15141)) )
))
(declare-fun lt!2197260 () Regex!15141)

(declare-datatypes ((List!61722 0))(
  ( (Nil!61598) (Cons!61598 (h!68046 C!30552) (t!374945 List!61722)) )
))
(declare-fun s!2326 () List!61722)

(declare-fun matchR!7326 (Regex!15141 List!61722) Bool)

(declare-fun matchRSpec!2244 (Regex!15141 List!61722) Bool)

(assert (=> b!5393068 (= (matchR!7326 lt!2197260 s!2326) (matchRSpec!2244 lt!2197260 s!2326))))

(declare-datatypes ((Unit!154086 0))(
  ( (Unit!154087) )
))
(declare-fun lt!2197264 () Unit!154086)

(declare-fun mainMatchTheorem!2244 (Regex!15141 List!61722) Unit!154086)

(assert (=> b!5393068 (= lt!2197264 (mainMatchTheorem!2244 lt!2197260 s!2326))))

(declare-fun b!5393069 () Bool)

(declare-fun e!3344470 () Bool)

(declare-fun e!3344479 () Bool)

(assert (=> b!5393069 (= e!3344470 e!3344479)))

(declare-fun res!2291697 () Bool)

(assert (=> b!5393069 (=> res!2291697 e!3344479)))

(declare-fun r!7292 () Regex!15141)

(declare-fun lt!2197262 () Regex!15141)

(assert (=> b!5393069 (= res!2291697 (not (= r!7292 lt!2197262)))))

(declare-fun lt!2197242 () Regex!15141)

(assert (=> b!5393069 (= lt!2197262 (Concat!23986 lt!2197242 (regTwo!30794 r!7292)))))

(declare-fun b!5393070 () Bool)

(declare-fun res!2291692 () Bool)

(declare-fun e!3344467 () Bool)

(assert (=> b!5393070 (=> res!2291692 e!3344467)))

(declare-datatypes ((List!61723 0))(
  ( (Nil!61599) (Cons!61599 (h!68047 Regex!15141) (t!374946 List!61723)) )
))
(declare-datatypes ((Context!9050 0))(
  ( (Context!9051 (exprs!5025 List!61723)) )
))
(declare-datatypes ((List!61724 0))(
  ( (Nil!61600) (Cons!61600 (h!68048 Context!9050) (t!374947 List!61724)) )
))
(declare-fun zl!343 () List!61724)

(declare-fun isEmpty!33601 (List!61724) Bool)

(assert (=> b!5393070 (= res!2291692 (not (isEmpty!33601 (t!374947 zl!343))))))

(declare-fun b!5393071 () Bool)

(declare-fun res!2291701 () Bool)

(assert (=> b!5393071 (=> res!2291701 e!3344467)))

(declare-fun generalisedUnion!1070 (List!61723) Regex!15141)

(declare-fun unfocusZipperList!583 (List!61724) List!61723)

(assert (=> b!5393071 (= res!2291701 (not (= r!7292 (generalisedUnion!1070 (unfocusZipperList!583 zl!343)))))))

(declare-fun b!5393072 () Bool)

(declare-fun e!3344474 () Bool)

(declare-fun e!3344471 () Bool)

(assert (=> b!5393072 (= e!3344474 e!3344471)))

(declare-fun res!2291703 () Bool)

(assert (=> b!5393072 (=> res!2291703 e!3344471)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2197256 () (InoxSet Context!9050))

(declare-fun lt!2197251 () (InoxSet Context!9050))

(assert (=> b!5393072 (= res!2291703 (not (= lt!2197256 lt!2197251)))))

(declare-fun lt!2197236 () Context!9050)

(declare-fun derivationStepZipperDown!589 (Regex!15141 Context!9050 C!30552) (InoxSet Context!9050))

(assert (=> b!5393072 (= lt!2197251 (derivationStepZipperDown!589 (reg!15470 (regOne!30794 r!7292)) lt!2197236 (h!68046 s!2326)))))

(declare-fun lt!2197234 () List!61723)

(assert (=> b!5393072 (= lt!2197236 (Context!9051 lt!2197234))))

(assert (=> b!5393072 (= lt!2197234 (Cons!61599 lt!2197242 (t!374946 (exprs!5025 (h!68048 zl!343)))))))

(assert (=> b!5393072 (= lt!2197242 (Star!15141 (reg!15470 (regOne!30794 r!7292))))))

(declare-fun e!3344472 () Bool)

(declare-fun tp!1493122 () Bool)

(declare-fun b!5393074 () Bool)

(declare-fun e!3344468 () Bool)

(declare-fun inv!81099 (Context!9050) Bool)

(assert (=> b!5393074 (= e!3344472 (and (inv!81099 (h!68048 zl!343)) e!3344468 tp!1493122))))

(declare-fun b!5393075 () Bool)

(declare-fun e!3344478 () Bool)

(declare-fun tp!1493128 () Bool)

(assert (=> b!5393075 (= e!3344478 tp!1493128)))

(declare-fun b!5393076 () Bool)

(declare-fun e!3344482 () Bool)

(declare-fun e!3344473 () Bool)

(assert (=> b!5393076 (= e!3344482 e!3344473)))

(declare-fun res!2291693 () Bool)

(assert (=> b!5393076 (=> (not res!2291693) (not e!3344473))))

(declare-fun lt!2197252 () Regex!15141)

(assert (=> b!5393076 (= res!2291693 (= r!7292 lt!2197252))))

(declare-fun unfocusZipper!883 (List!61724) Regex!15141)

(assert (=> b!5393076 (= lt!2197252 (unfocusZipper!883 zl!343))))

(declare-fun setIsEmpty!35045 () Bool)

(declare-fun setRes!35045 () Bool)

(assert (=> setIsEmpty!35045 setRes!35045))

(declare-fun b!5393077 () Bool)

(declare-fun res!2291708 () Bool)

(assert (=> b!5393077 (=> res!2291708 e!3344480)))

(assert (=> b!5393077 (= res!2291708 (not (= (unfocusZipper!883 (Cons!61600 lt!2197236 Nil!61600)) lt!2197262)))))

(declare-fun b!5393078 () Bool)

(declare-fun e!3344481 () Bool)

(declare-fun lt!2197259 () (InoxSet Context!9050))

(declare-fun matchZipper!1385 ((InoxSet Context!9050) List!61722) Bool)

(assert (=> b!5393078 (= e!3344481 (matchZipper!1385 lt!2197259 (t!374945 s!2326)))))

(declare-fun b!5393079 () Bool)

(declare-fun res!2291709 () Bool)

(assert (=> b!5393079 (=> res!2291709 e!3344470)))

(declare-fun lt!2197250 () (InoxSet Context!9050))

(declare-fun lt!2197235 () (InoxSet Context!9050))

(assert (=> b!5393079 (= res!2291709 (not (= (matchZipper!1385 lt!2197235 s!2326) (matchZipper!1385 lt!2197250 (t!374945 s!2326)))))))

(declare-fun b!5393080 () Bool)

(declare-fun e!3344486 () Unit!154086)

(declare-fun Unit!154088 () Unit!154086)

(assert (=> b!5393080 (= e!3344486 Unit!154088)))

(declare-fun lt!2197233 () Unit!154086)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!378 ((InoxSet Context!9050) (InoxSet Context!9050) List!61722) Unit!154086)

(assert (=> b!5393080 (= lt!2197233 (lemmaZipperConcatMatchesSameAsBothZippers!378 lt!2197256 lt!2197259 (t!374945 s!2326)))))

(declare-fun res!2291702 () Bool)

(assert (=> b!5393080 (= res!2291702 (matchZipper!1385 lt!2197256 (t!374945 s!2326)))))

(assert (=> b!5393080 (=> res!2291702 e!3344481)))

(assert (=> b!5393080 (= (matchZipper!1385 ((_ map or) lt!2197256 lt!2197259) (t!374945 s!2326)) e!3344481)))

(declare-fun e!3344485 () Bool)

(assert (=> b!5393081 (= e!3344485 e!3344474)))

(declare-fun res!2291706 () Bool)

(assert (=> b!5393081 (=> res!2291706 e!3344474)))

(get-info :version)

(assert (=> b!5393081 (= res!2291706 (or (and ((_ is ElementMatch!15141) (regOne!30794 r!7292)) (= (c!939885 (regOne!30794 r!7292)) (h!68046 s!2326))) ((_ is Union!15141) (regOne!30794 r!7292))))))

(declare-fun lt!2197244 () Unit!154086)

(assert (=> b!5393081 (= lt!2197244 e!3344486)))

(declare-fun c!939884 () Bool)

(declare-fun lt!2197249 () Bool)

(assert (=> b!5393081 (= c!939884 lt!2197249)))

(declare-fun nullable!5310 (Regex!15141) Bool)

(assert (=> b!5393081 (= lt!2197249 (nullable!5310 (h!68047 (exprs!5025 (h!68048 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9050))

(declare-fun lambda!280227 () Int)

(declare-fun flatMap!868 ((InoxSet Context!9050) Int) (InoxSet Context!9050))

(declare-fun derivationStepZipperUp!513 (Context!9050 C!30552) (InoxSet Context!9050))

(assert (=> b!5393081 (= (flatMap!868 z!1189 lambda!280227) (derivationStepZipperUp!513 (h!68048 zl!343) (h!68046 s!2326)))))

(declare-fun lt!2197231 () Unit!154086)

(declare-fun lemmaFlatMapOnSingletonSet!400 ((InoxSet Context!9050) Context!9050 Int) Unit!154086)

(assert (=> b!5393081 (= lt!2197231 (lemmaFlatMapOnSingletonSet!400 z!1189 (h!68048 zl!343) lambda!280227))))

(declare-fun lt!2197239 () Context!9050)

(assert (=> b!5393081 (= lt!2197259 (derivationStepZipperUp!513 lt!2197239 (h!68046 s!2326)))))

(assert (=> b!5393081 (= lt!2197256 (derivationStepZipperDown!589 (h!68047 (exprs!5025 (h!68048 zl!343))) lt!2197239 (h!68046 s!2326)))))

(assert (=> b!5393081 (= lt!2197239 (Context!9051 (t!374946 (exprs!5025 (h!68048 zl!343)))))))

(declare-fun lt!2197246 () (InoxSet Context!9050))

(assert (=> b!5393081 (= lt!2197246 (derivationStepZipperUp!513 (Context!9051 (Cons!61599 (h!68047 (exprs!5025 (h!68048 zl!343))) (t!374946 (exprs!5025 (h!68048 zl!343))))) (h!68046 s!2326)))))

(declare-fun b!5393082 () Bool)

(declare-fun res!2291704 () Bool)

(assert (=> b!5393082 (=> res!2291704 e!3344483)))

(assert (=> b!5393082 (= res!2291704 (not (matchZipper!1385 z!1189 s!2326)))))

(declare-fun b!5393083 () Bool)

(declare-fun tp!1493124 () Bool)

(assert (=> b!5393083 (= e!3344468 tp!1493124)))

(declare-fun b!5393084 () Bool)

(declare-fun res!2291694 () Bool)

(assert (=> b!5393084 (=> res!2291694 e!3344474)))

(assert (=> b!5393084 (= res!2291694 (or ((_ is Concat!23986) (regOne!30794 r!7292)) (not ((_ is Star!15141) (regOne!30794 r!7292)))))))

(declare-fun b!5393085 () Bool)

(declare-fun res!2291683 () Bool)

(assert (=> b!5393085 (=> res!2291683 e!3344474)))

(declare-fun e!3344484 () Bool)

(assert (=> b!5393085 (= res!2291683 e!3344484)))

(declare-fun res!2291688 () Bool)

(assert (=> b!5393085 (=> (not res!2291688) (not e!3344484))))

(assert (=> b!5393085 (= res!2291688 ((_ is Concat!23986) (regOne!30794 r!7292)))))

(declare-fun b!5393086 () Bool)

(declare-fun res!2291686 () Bool)

(assert (=> b!5393086 (=> (not res!2291686) (not e!3344482))))

(declare-fun toList!8925 ((InoxSet Context!9050)) List!61724)

(assert (=> b!5393086 (= res!2291686 (= (toList!8925 z!1189) zl!343))))

(declare-fun b!5393087 () Bool)

(assert (=> b!5393087 (= e!3344471 e!3344470)))

(declare-fun res!2291690 () Bool)

(assert (=> b!5393087 (=> res!2291690 e!3344470)))

(assert (=> b!5393087 (= res!2291690 (not (= lt!2197250 lt!2197251)))))

(declare-fun lt!2197253 () Context!9050)

(assert (=> b!5393087 (= (flatMap!868 lt!2197235 lambda!280227) (derivationStepZipperUp!513 lt!2197253 (h!68046 s!2326)))))

(declare-fun lt!2197257 () Unit!154086)

(assert (=> b!5393087 (= lt!2197257 (lemmaFlatMapOnSingletonSet!400 lt!2197235 lt!2197253 lambda!280227))))

(declare-fun lt!2197232 () (InoxSet Context!9050))

(assert (=> b!5393087 (= lt!2197232 (derivationStepZipperUp!513 lt!2197253 (h!68046 s!2326)))))

(declare-fun derivationStepZipper!1380 ((InoxSet Context!9050) C!30552) (InoxSet Context!9050))

(assert (=> b!5393087 (= lt!2197250 (derivationStepZipper!1380 lt!2197235 (h!68046 s!2326)))))

(assert (=> b!5393087 (= lt!2197235 (store ((as const (Array Context!9050 Bool)) false) lt!2197253 true))))

(assert (=> b!5393087 (= lt!2197253 (Context!9051 (Cons!61599 (reg!15470 (regOne!30794 r!7292)) lt!2197234)))))

(declare-fun b!5393088 () Bool)

(declare-fun e!3344469 () Bool)

(declare-fun tp_is_empty!39535 () Bool)

(declare-fun tp!1493127 () Bool)

(assert (=> b!5393088 (= e!3344469 (and tp_is_empty!39535 tp!1493127))))

(declare-fun res!2291698 () Bool)

(assert (=> start!566690 (=> (not res!2291698) (not e!3344482))))

(declare-fun validRegex!6877 (Regex!15141) Bool)

(assert (=> start!566690 (= res!2291698 (validRegex!6877 r!7292))))

(assert (=> start!566690 e!3344482))

(assert (=> start!566690 e!3344478))

(declare-fun condSetEmpty!35045 () Bool)

(assert (=> start!566690 (= condSetEmpty!35045 (= z!1189 ((as const (Array Context!9050 Bool)) false)))))

(assert (=> start!566690 setRes!35045))

(assert (=> start!566690 e!3344472))

(assert (=> start!566690 e!3344469))

(declare-fun b!5393073 () Bool)

(declare-fun e!3344475 () Bool)

(assert (=> b!5393073 (= e!3344479 e!3344475)))

(declare-fun res!2291696 () Bool)

(assert (=> b!5393073 (=> res!2291696 e!3344475)))

(assert (=> b!5393073 (= res!2291696 (not (= (unfocusZipper!883 (Cons!61600 lt!2197253 Nil!61600)) lt!2197260)))))

(assert (=> b!5393073 (= lt!2197260 (Concat!23986 (reg!15470 (regOne!30794 r!7292)) lt!2197262))))

(declare-fun b!5393089 () Bool)

(declare-fun res!2291707 () Bool)

(assert (=> b!5393089 (=> res!2291707 e!3344470)))

(assert (=> b!5393089 (= res!2291707 (not (= lt!2197252 r!7292)))))

(declare-fun b!5393090 () Bool)

(declare-fun res!2291684 () Bool)

(assert (=> b!5393090 (=> res!2291684 e!3344485)))

(declare-fun isEmpty!33602 (List!61723) Bool)

(assert (=> b!5393090 (= res!2291684 (isEmpty!33602 (t!374946 (exprs!5025 (h!68048 zl!343)))))))

(assert (=> b!5393091 (= e!3344467 e!3344485)))

(declare-fun res!2291700 () Bool)

(assert (=> b!5393091 (=> res!2291700 e!3344485)))

(declare-fun lt!2197245 () Bool)

(assert (=> b!5393091 (= res!2291700 (or (not (= lt!2197248 lt!2197245)) ((_ is Nil!61598) s!2326)))))

(declare-fun Exists!2322 (Int) Bool)

(assert (=> b!5393091 (= (Exists!2322 lambda!280225) (Exists!2322 lambda!280226))))

(declare-fun lt!2197258 () Unit!154086)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!976 (Regex!15141 Regex!15141 List!61722) Unit!154086)

(assert (=> b!5393091 (= lt!2197258 (lemmaExistCutMatchRandMatchRSpecEquivalent!976 (regOne!30794 r!7292) (regTwo!30794 r!7292) s!2326))))

(assert (=> b!5393091 (= lt!2197245 (Exists!2322 lambda!280225))))

(declare-datatypes ((tuple2!64680 0))(
  ( (tuple2!64681 (_1!35643 List!61722) (_2!35643 List!61722)) )
))
(declare-datatypes ((Option!15252 0))(
  ( (None!15251) (Some!15251 (v!51280 tuple2!64680)) )
))
(declare-fun isDefined!11955 (Option!15252) Bool)

(declare-fun findConcatSeparation!1666 (Regex!15141 Regex!15141 List!61722 List!61722 List!61722) Option!15252)

(assert (=> b!5393091 (= lt!2197245 (isDefined!11955 (findConcatSeparation!1666 (regOne!30794 r!7292) (regTwo!30794 r!7292) Nil!61598 s!2326 s!2326)))))

(declare-fun lt!2197241 () Unit!154086)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1430 (Regex!15141 Regex!15141 List!61722) Unit!154086)

(assert (=> b!5393091 (= lt!2197241 (lemmaFindConcatSeparationEquivalentToExists!1430 (regOne!30794 r!7292) (regTwo!30794 r!7292) s!2326))))

(declare-fun b!5393092 () Bool)

(declare-fun res!2291687 () Bool)

(assert (=> b!5393092 (=> res!2291687 e!3344483)))

(assert (=> b!5393092 (= res!2291687 (not lt!2197249))))

(declare-fun b!5393093 () Bool)

(declare-fun res!2291705 () Bool)

(assert (=> b!5393093 (=> res!2291705 e!3344467)))

(assert (=> b!5393093 (= res!2291705 (not ((_ is Cons!61599) (exprs!5025 (h!68048 zl!343)))))))

(declare-fun b!5393094 () Bool)

(assert (=> b!5393094 (= e!3344475 e!3344480)))

(declare-fun res!2291689 () Bool)

(assert (=> b!5393094 (=> res!2291689 e!3344480)))

(declare-fun lt!2197240 () Context!9050)

(assert (=> b!5393094 (= res!2291689 (not (= (unfocusZipper!883 (Cons!61600 lt!2197240 Nil!61600)) (reg!15470 (regOne!30794 r!7292)))))))

(declare-fun lt!2197238 () (InoxSet Context!9050))

(assert (=> b!5393094 (= (flatMap!868 lt!2197238 lambda!280227) (derivationStepZipperUp!513 lt!2197236 (h!68046 s!2326)))))

(declare-fun lt!2197254 () Unit!154086)

(assert (=> b!5393094 (= lt!2197254 (lemmaFlatMapOnSingletonSet!400 lt!2197238 lt!2197236 lambda!280227))))

(declare-fun lt!2197237 () (InoxSet Context!9050))

(assert (=> b!5393094 (= (flatMap!868 lt!2197237 lambda!280227) (derivationStepZipperUp!513 lt!2197240 (h!68046 s!2326)))))

(declare-fun lt!2197261 () Unit!154086)

(assert (=> b!5393094 (= lt!2197261 (lemmaFlatMapOnSingletonSet!400 lt!2197237 lt!2197240 lambda!280227))))

(declare-fun lt!2197247 () (InoxSet Context!9050))

(assert (=> b!5393094 (= lt!2197247 (derivationStepZipperUp!513 lt!2197236 (h!68046 s!2326)))))

(declare-fun lt!2197255 () (InoxSet Context!9050))

(assert (=> b!5393094 (= lt!2197255 (derivationStepZipperUp!513 lt!2197240 (h!68046 s!2326)))))

(assert (=> b!5393094 (= lt!2197238 (store ((as const (Array Context!9050 Bool)) false) lt!2197236 true))))

(assert (=> b!5393094 (= lt!2197237 (store ((as const (Array Context!9050 Bool)) false) lt!2197240 true))))

(assert (=> b!5393094 (= lt!2197240 (Context!9051 (Cons!61599 (reg!15470 (regOne!30794 r!7292)) Nil!61599)))))

(declare-fun b!5393095 () Bool)

(declare-fun tp!1493126 () Bool)

(declare-fun tp!1493129 () Bool)

(assert (=> b!5393095 (= e!3344478 (and tp!1493126 tp!1493129))))

(declare-fun b!5393096 () Bool)

(declare-fun res!2291682 () Bool)

(assert (=> b!5393096 (=> res!2291682 e!3344467)))

(declare-fun generalisedConcat!810 (List!61723) Regex!15141)

(assert (=> b!5393096 (= res!2291682 (not (= r!7292 (generalisedConcat!810 (exprs!5025 (h!68048 zl!343))))))))

(declare-fun b!5393097 () Bool)

(declare-fun e!3344477 () Bool)

(declare-fun tp!1493120 () Bool)

(assert (=> b!5393097 (= e!3344477 tp!1493120)))

(declare-fun b!5393098 () Bool)

(assert (=> b!5393098 (= e!3344484 (nullable!5310 (regOne!30794 (regOne!30794 r!7292))))))

(declare-fun b!5393099 () Bool)

(assert (=> b!5393099 (= e!3344478 tp_is_empty!39535)))

(declare-fun b!5393100 () Bool)

(declare-fun res!2291699 () Bool)

(assert (=> b!5393100 (=> res!2291699 e!3344467)))

(assert (=> b!5393100 (= res!2291699 (or ((_ is EmptyExpr!15141) r!7292) ((_ is EmptyLang!15141) r!7292) ((_ is ElementMatch!15141) r!7292) ((_ is Union!15141) r!7292) (not ((_ is Concat!23986) r!7292))))))

(declare-fun tp!1493121 () Bool)

(declare-fun setNonEmpty!35045 () Bool)

(declare-fun setElem!35045 () Context!9050)

(assert (=> setNonEmpty!35045 (= setRes!35045 (and tp!1493121 (inv!81099 setElem!35045) e!3344477))))

(declare-fun setRest!35045 () (InoxSet Context!9050))

(assert (=> setNonEmpty!35045 (= z!1189 ((_ map or) (store ((as const (Array Context!9050 Bool)) false) setElem!35045 true) setRest!35045))))

(declare-fun b!5393101 () Bool)

(declare-fun tp!1493125 () Bool)

(declare-fun tp!1493123 () Bool)

(assert (=> b!5393101 (= e!3344478 (and tp!1493125 tp!1493123))))

(declare-fun b!5393102 () Bool)

(assert (=> b!5393102 (= e!3344473 (not e!3344467))))

(declare-fun res!2291695 () Bool)

(assert (=> b!5393102 (=> res!2291695 e!3344467)))

(assert (=> b!5393102 (= res!2291695 (not ((_ is Cons!61600) zl!343)))))

(assert (=> b!5393102 (= lt!2197248 (matchRSpec!2244 r!7292 s!2326))))

(assert (=> b!5393102 (= lt!2197248 (matchR!7326 r!7292 s!2326))))

(declare-fun lt!2197243 () Unit!154086)

(assert (=> b!5393102 (= lt!2197243 (mainMatchTheorem!2244 r!7292 s!2326))))

(declare-fun b!5393103 () Bool)

(declare-fun Unit!154089 () Unit!154086)

(assert (=> b!5393103 (= e!3344486 Unit!154089)))

(declare-fun b!5393104 () Bool)

(assert (=> b!5393104 (= e!3344483 true)))

(declare-fun lt!2197263 () Bool)

(declare-fun e!3344476 () Bool)

(assert (=> b!5393104 (= lt!2197263 e!3344476)))

(declare-fun res!2291685 () Bool)

(assert (=> b!5393104 (=> res!2291685 e!3344476)))

(assert (=> b!5393104 (= res!2291685 (matchZipper!1385 lt!2197256 (t!374945 s!2326)))))

(declare-fun b!5393105 () Bool)

(assert (=> b!5393105 (= e!3344476 (matchZipper!1385 lt!2197259 (t!374945 s!2326)))))

(assert (= (and start!566690 res!2291698) b!5393086))

(assert (= (and b!5393086 res!2291686) b!5393076))

(assert (= (and b!5393076 res!2291693) b!5393102))

(assert (= (and b!5393102 (not res!2291695)) b!5393070))

(assert (= (and b!5393070 (not res!2291692)) b!5393096))

(assert (= (and b!5393096 (not res!2291682)) b!5393093))

(assert (= (and b!5393093 (not res!2291705)) b!5393071))

(assert (= (and b!5393071 (not res!2291701)) b!5393100))

(assert (= (and b!5393100 (not res!2291699)) b!5393091))

(assert (= (and b!5393091 (not res!2291700)) b!5393090))

(assert (= (and b!5393090 (not res!2291684)) b!5393081))

(assert (= (and b!5393081 c!939884) b!5393080))

(assert (= (and b!5393081 (not c!939884)) b!5393103))

(assert (= (and b!5393080 (not res!2291702)) b!5393078))

(assert (= (and b!5393081 (not res!2291706)) b!5393085))

(assert (= (and b!5393085 res!2291688) b!5393098))

(assert (= (and b!5393085 (not res!2291683)) b!5393084))

(assert (= (and b!5393084 (not res!2291694)) b!5393072))

(assert (= (and b!5393072 (not res!2291703)) b!5393087))

(assert (= (and b!5393087 (not res!2291690)) b!5393079))

(assert (= (and b!5393079 (not res!2291709)) b!5393089))

(assert (= (and b!5393089 (not res!2291707)) b!5393069))

(assert (= (and b!5393069 (not res!2291697)) b!5393073))

(assert (= (and b!5393073 (not res!2291696)) b!5393094))

(assert (= (and b!5393094 (not res!2291689)) b!5393077))

(assert (= (and b!5393077 (not res!2291708)) b!5393068))

(assert (= (and b!5393068 (not res!2291691)) b!5393082))

(assert (= (and b!5393082 (not res!2291704)) b!5393092))

(assert (= (and b!5393092 (not res!2291687)) b!5393104))

(assert (= (and b!5393104 (not res!2291685)) b!5393105))

(assert (= (and start!566690 ((_ is ElementMatch!15141) r!7292)) b!5393099))

(assert (= (and start!566690 ((_ is Concat!23986) r!7292)) b!5393101))

(assert (= (and start!566690 ((_ is Star!15141) r!7292)) b!5393075))

(assert (= (and start!566690 ((_ is Union!15141) r!7292)) b!5393095))

(assert (= (and start!566690 condSetEmpty!35045) setIsEmpty!35045))

(assert (= (and start!566690 (not condSetEmpty!35045)) setNonEmpty!35045))

(assert (= setNonEmpty!35045 b!5393097))

(assert (= b!5393074 b!5393083))

(assert (= (and start!566690 ((_ is Cons!61600) zl!343)) b!5393074))

(assert (= (and start!566690 ((_ is Cons!61598) s!2326)) b!5393088))

(declare-fun m!6418388 () Bool)

(assert (=> b!5393082 m!6418388))

(declare-fun m!6418390 () Bool)

(assert (=> b!5393073 m!6418390))

(declare-fun m!6418392 () Bool)

(assert (=> b!5393076 m!6418392))

(declare-fun m!6418394 () Bool)

(assert (=> b!5393077 m!6418394))

(declare-fun m!6418396 () Bool)

(assert (=> b!5393079 m!6418396))

(declare-fun m!6418398 () Bool)

(assert (=> b!5393079 m!6418398))

(declare-fun m!6418400 () Bool)

(assert (=> b!5393072 m!6418400))

(declare-fun m!6418402 () Bool)

(assert (=> b!5393091 m!6418402))

(declare-fun m!6418404 () Bool)

(assert (=> b!5393091 m!6418404))

(declare-fun m!6418406 () Bool)

(assert (=> b!5393091 m!6418406))

(declare-fun m!6418408 () Bool)

(assert (=> b!5393091 m!6418408))

(assert (=> b!5393091 m!6418402))

(declare-fun m!6418410 () Bool)

(assert (=> b!5393091 m!6418410))

(assert (=> b!5393091 m!6418404))

(declare-fun m!6418412 () Bool)

(assert (=> b!5393091 m!6418412))

(declare-fun m!6418414 () Bool)

(assert (=> b!5393098 m!6418414))

(declare-fun m!6418416 () Bool)

(assert (=> b!5393090 m!6418416))

(declare-fun m!6418418 () Bool)

(assert (=> b!5393087 m!6418418))

(declare-fun m!6418420 () Bool)

(assert (=> b!5393087 m!6418420))

(declare-fun m!6418422 () Bool)

(assert (=> b!5393087 m!6418422))

(declare-fun m!6418424 () Bool)

(assert (=> b!5393087 m!6418424))

(declare-fun m!6418426 () Bool)

(assert (=> b!5393087 m!6418426))

(declare-fun m!6418428 () Bool)

(assert (=> b!5393071 m!6418428))

(assert (=> b!5393071 m!6418428))

(declare-fun m!6418430 () Bool)

(assert (=> b!5393071 m!6418430))

(declare-fun m!6418432 () Bool)

(assert (=> b!5393074 m!6418432))

(declare-fun m!6418434 () Bool)

(assert (=> b!5393081 m!6418434))

(declare-fun m!6418436 () Bool)

(assert (=> b!5393081 m!6418436))

(declare-fun m!6418438 () Bool)

(assert (=> b!5393081 m!6418438))

(declare-fun m!6418440 () Bool)

(assert (=> b!5393081 m!6418440))

(declare-fun m!6418442 () Bool)

(assert (=> b!5393081 m!6418442))

(declare-fun m!6418444 () Bool)

(assert (=> b!5393081 m!6418444))

(declare-fun m!6418446 () Bool)

(assert (=> b!5393081 m!6418446))

(declare-fun m!6418448 () Bool)

(assert (=> b!5393068 m!6418448))

(declare-fun m!6418450 () Bool)

(assert (=> b!5393068 m!6418450))

(declare-fun m!6418452 () Bool)

(assert (=> b!5393068 m!6418452))

(declare-fun m!6418454 () Bool)

(assert (=> b!5393086 m!6418454))

(declare-fun m!6418456 () Bool)

(assert (=> b!5393080 m!6418456))

(declare-fun m!6418458 () Bool)

(assert (=> b!5393080 m!6418458))

(declare-fun m!6418460 () Bool)

(assert (=> b!5393080 m!6418460))

(declare-fun m!6418462 () Bool)

(assert (=> b!5393096 m!6418462))

(declare-fun m!6418464 () Bool)

(assert (=> b!5393094 m!6418464))

(declare-fun m!6418466 () Bool)

(assert (=> b!5393094 m!6418466))

(declare-fun m!6418468 () Bool)

(assert (=> b!5393094 m!6418468))

(declare-fun m!6418470 () Bool)

(assert (=> b!5393094 m!6418470))

(declare-fun m!6418472 () Bool)

(assert (=> b!5393094 m!6418472))

(declare-fun m!6418474 () Bool)

(assert (=> b!5393094 m!6418474))

(declare-fun m!6418476 () Bool)

(assert (=> b!5393094 m!6418476))

(declare-fun m!6418478 () Bool)

(assert (=> b!5393094 m!6418478))

(declare-fun m!6418480 () Bool)

(assert (=> b!5393094 m!6418480))

(declare-fun m!6418482 () Bool)

(assert (=> b!5393078 m!6418482))

(declare-fun m!6418484 () Bool)

(assert (=> start!566690 m!6418484))

(declare-fun m!6418486 () Bool)

(assert (=> b!5393102 m!6418486))

(declare-fun m!6418488 () Bool)

(assert (=> b!5393102 m!6418488))

(declare-fun m!6418490 () Bool)

(assert (=> b!5393102 m!6418490))

(assert (=> b!5393105 m!6418482))

(declare-fun m!6418492 () Bool)

(assert (=> setNonEmpty!35045 m!6418492))

(assert (=> b!5393104 m!6418458))

(declare-fun m!6418494 () Bool)

(assert (=> b!5393070 m!6418494))

(check-sat (not b!5393094) (not b!5393086) (not b!5393079) (not b!5393090) (not b!5393097) (not b!5393072) (not b!5393078) (not b!5393088) (not b!5393083) (not b!5393101) (not b!5393074) (not b!5393098) (not b!5393070) tp_is_empty!39535 (not b!5393068) (not b!5393104) (not b!5393077) (not b!5393080) (not b!5393075) (not b!5393082) (not b!5393096) (not b!5393105) (not b!5393076) (not b!5393073) (not b!5393081) (not setNonEmpty!35045) (not b!5393087) (not b!5393091) (not b!5393102) (not b!5393071) (not b!5393095) (not start!566690))
(check-sat)

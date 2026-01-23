; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573254 () Bool)

(assert start!573254)

(declare-fun b!5480263 () Bool)

(assert (=> b!5480263 true))

(assert (=> b!5480263 true))

(declare-fun lambda!292381 () Int)

(declare-fun lambda!292380 () Int)

(assert (=> b!5480263 (not (= lambda!292381 lambda!292380))))

(assert (=> b!5480263 true))

(assert (=> b!5480263 true))

(declare-fun lambda!292382 () Int)

(assert (=> b!5480263 (not (= lambda!292382 lambda!292380))))

(assert (=> b!5480263 (not (= lambda!292382 lambda!292381))))

(assert (=> b!5480263 true))

(assert (=> b!5480263 true))

(declare-fun b!5480265 () Bool)

(assert (=> b!5480265 true))

(declare-fun b!5480270 () Bool)

(assert (=> b!5480270 true))

(declare-fun b!5480245 () Bool)

(declare-fun res!2336194 () Bool)

(declare-fun e!3391787 () Bool)

(assert (=> b!5480245 (=> (not res!2336194) (not e!3391787))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30996 0))(
  ( (C!30997 (val!25200 Int)) )
))
(declare-datatypes ((Regex!15363 0))(
  ( (ElementMatch!15363 (c!957571 C!30996)) (Concat!24208 (regOne!31238 Regex!15363) (regTwo!31238 Regex!15363)) (EmptyExpr!15363) (Star!15363 (reg!15692 Regex!15363)) (EmptyLang!15363) (Union!15363 (regOne!31239 Regex!15363) (regTwo!31239 Regex!15363)) )
))
(declare-datatypes ((List!62388 0))(
  ( (Nil!62264) (Cons!62264 (h!68712 Regex!15363) (t!375619 List!62388)) )
))
(declare-datatypes ((Context!9494 0))(
  ( (Context!9495 (exprs!5247 List!62388)) )
))
(declare-fun z!1189 () (InoxSet Context!9494))

(declare-datatypes ((List!62389 0))(
  ( (Nil!62265) (Cons!62265 (h!68713 Context!9494) (t!375620 List!62389)) )
))
(declare-fun zl!343 () List!62389)

(declare-fun toList!9147 ((InoxSet Context!9494)) List!62389)

(assert (=> b!5480245 (= res!2336194 (= (toList!9147 z!1189) zl!343))))

(declare-fun b!5480246 () Bool)

(declare-fun e!3391779 () Bool)

(declare-fun tp!1506147 () Bool)

(declare-fun e!3391783 () Bool)

(declare-fun inv!81654 (Context!9494) Bool)

(assert (=> b!5480246 (= e!3391779 (and (inv!81654 (h!68713 zl!343)) e!3391783 tp!1506147))))

(declare-fun b!5480247 () Bool)

(declare-fun tp!1506154 () Bool)

(assert (=> b!5480247 (= e!3391783 tp!1506154)))

(declare-fun b!5480248 () Bool)

(declare-fun e!3391780 () Bool)

(declare-fun e!3391775 () Bool)

(assert (=> b!5480248 (= e!3391780 e!3391775)))

(declare-fun res!2336193 () Bool)

(assert (=> b!5480248 (=> res!2336193 e!3391775)))

(declare-fun lt!2238071 () (InoxSet Context!9494))

(declare-fun r!7292 () Regex!15363)

(declare-datatypes ((List!62390 0))(
  ( (Nil!62266) (Cons!62266 (h!68714 C!30996) (t!375621 List!62390)) )
))
(declare-fun s!2326 () List!62390)

(declare-fun lt!2238060 () Context!9494)

(declare-fun derivationStepZipperDown!789 (Regex!15363 Context!9494 C!30996) (InoxSet Context!9494))

(assert (=> b!5480248 (= res!2336193 (not (= lt!2238071 (derivationStepZipperDown!789 (reg!15692 r!7292) lt!2238060 (h!68714 s!2326)))))))

(declare-fun lt!2238066 () List!62388)

(assert (=> b!5480248 (= lt!2238060 (Context!9495 lt!2238066))))

(declare-fun lt!2238076 () (InoxSet Context!9494))

(declare-fun lt!2238069 () Context!9494)

(declare-fun lambda!292383 () Int)

(declare-fun flatMap!1066 ((InoxSet Context!9494) Int) (InoxSet Context!9494))

(declare-fun derivationStepZipperUp!715 (Context!9494 C!30996) (InoxSet Context!9494))

(assert (=> b!5480248 (= (flatMap!1066 lt!2238076 lambda!292383) (derivationStepZipperUp!715 lt!2238069 (h!68714 s!2326)))))

(declare-datatypes ((Unit!155176 0))(
  ( (Unit!155177) )
))
(declare-fun lt!2238075 () Unit!155176)

(declare-fun lemmaFlatMapOnSingletonSet!598 ((InoxSet Context!9494) Context!9494 Int) Unit!155176)

(assert (=> b!5480248 (= lt!2238075 (lemmaFlatMapOnSingletonSet!598 lt!2238076 lt!2238069 lambda!292383))))

(declare-fun lt!2238061 () (InoxSet Context!9494))

(assert (=> b!5480248 (= lt!2238061 (derivationStepZipperUp!715 lt!2238069 (h!68714 s!2326)))))

(assert (=> b!5480248 (= lt!2238076 (store ((as const (Array Context!9494 Bool)) false) lt!2238069 true))))

(assert (=> b!5480248 (= lt!2238069 (Context!9495 (Cons!62264 (reg!15692 r!7292) lt!2238066)))))

(assert (=> b!5480248 (= lt!2238066 (Cons!62264 r!7292 Nil!62264))))

(declare-fun b!5480249 () Bool)

(declare-fun res!2336171 () Bool)

(declare-fun e!3391781 () Bool)

(assert (=> b!5480249 (=> res!2336171 e!3391781)))

(declare-fun matchZipper!1581 ((InoxSet Context!9494) List!62390) Bool)

(assert (=> b!5480249 (= res!2336171 (not (matchZipper!1581 z!1189 s!2326)))))

(declare-fun setElem!36033 () Context!9494)

(declare-fun setRes!36033 () Bool)

(declare-fun setNonEmpty!36033 () Bool)

(declare-fun e!3391790 () Bool)

(declare-fun tp!1506153 () Bool)

(assert (=> setNonEmpty!36033 (= setRes!36033 (and tp!1506153 (inv!81654 setElem!36033) e!3391790))))

(declare-fun setRest!36033 () (InoxSet Context!9494))

(assert (=> setNonEmpty!36033 (= z!1189 ((_ map or) (store ((as const (Array Context!9494 Bool)) false) setElem!36033 true) setRest!36033))))

(declare-fun b!5480250 () Bool)

(declare-fun res!2336177 () Bool)

(declare-fun e!3391788 () Bool)

(assert (=> b!5480250 (=> res!2336177 e!3391788)))

(declare-fun unfocusZipper!1105 (List!62389) Regex!15363)

(assert (=> b!5480250 (= res!2336177 (not (= (unfocusZipper!1105 (Cons!62265 lt!2238060 Nil!62265)) r!7292)))))

(declare-fun b!5480251 () Bool)

(declare-fun res!2336184 () Bool)

(declare-fun e!3391785 () Bool)

(assert (=> b!5480251 (=> res!2336184 e!3391785)))

(get-info :version)

(assert (=> b!5480251 (= res!2336184 (not ((_ is Cons!62264) (exprs!5247 (h!68713 zl!343)))))))

(declare-fun b!5480253 () Bool)

(declare-fun tp!1506146 () Bool)

(assert (=> b!5480253 (= e!3391790 tp!1506146)))

(declare-fun b!5480254 () Bool)

(declare-fun res!2336178 () Bool)

(assert (=> b!5480254 (=> res!2336178 e!3391775)))

(declare-fun lt!2238049 () Regex!15363)

(assert (=> b!5480254 (= res!2336178 (or (not (= lt!2238049 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5480255 () Bool)

(declare-fun e!3391786 () Bool)

(assert (=> b!5480255 (= e!3391786 true)))

(declare-fun lt!2238068 () Bool)

(declare-fun lt!2238074 () (InoxSet Context!9494))

(assert (=> b!5480255 (= lt!2238068 (matchZipper!1581 lt!2238074 s!2326))))

(declare-fun b!5480256 () Bool)

(declare-fun res!2336180 () Bool)

(assert (=> b!5480256 (=> res!2336180 e!3391785)))

(declare-fun generalisedUnion!1292 (List!62388) Regex!15363)

(declare-fun unfocusZipperList!805 (List!62389) List!62388)

(assert (=> b!5480256 (= res!2336180 (not (= r!7292 (generalisedUnion!1292 (unfocusZipperList!805 zl!343)))))))

(declare-fun b!5480257 () Bool)

(declare-fun res!2336189 () Bool)

(declare-fun e!3391789 () Bool)

(assert (=> b!5480257 (=> res!2336189 e!3391789)))

(assert (=> b!5480257 (= res!2336189 ((_ is Nil!62266) s!2326))))

(declare-fun b!5480258 () Bool)

(declare-fun e!3391774 () Bool)

(assert (=> b!5480258 (= e!3391789 e!3391774)))

(declare-fun res!2336183 () Bool)

(assert (=> b!5480258 (=> res!2336183 e!3391774)))

(declare-fun lt!2238067 () (InoxSet Context!9494))

(declare-fun lt!2238047 () (InoxSet Context!9494))

(assert (=> b!5480258 (= res!2336183 (not (= lt!2238067 lt!2238047)))))

(assert (=> b!5480258 (= lt!2238047 (derivationStepZipperDown!789 r!7292 (Context!9495 Nil!62264) (h!68714 s!2326)))))

(assert (=> b!5480258 (= lt!2238067 (derivationStepZipperUp!715 (Context!9495 (Cons!62264 r!7292 Nil!62264)) (h!68714 s!2326)))))

(declare-fun derivationStepZipper!1558 ((InoxSet Context!9494) C!30996) (InoxSet Context!9494))

(assert (=> b!5480258 (= lt!2238071 (derivationStepZipper!1558 z!1189 (h!68714 s!2326)))))

(declare-fun b!5480259 () Bool)

(declare-fun e!3391784 () Bool)

(declare-fun tp!1506155 () Bool)

(declare-fun tp!1506149 () Bool)

(assert (=> b!5480259 (= e!3391784 (and tp!1506155 tp!1506149))))

(declare-fun b!5480260 () Bool)

(declare-fun res!2336175 () Bool)

(assert (=> b!5480260 (=> res!2336175 e!3391788)))

(declare-fun lt!2238073 () Context!9494)

(assert (=> b!5480260 (= res!2336175 (not (= (unfocusZipper!1105 (Cons!62265 lt!2238073 Nil!62265)) (reg!15692 r!7292))))))

(declare-fun b!5480261 () Bool)

(declare-fun tp!1506152 () Bool)

(assert (=> b!5480261 (= e!3391784 tp!1506152)))

(declare-fun b!5480262 () Bool)

(declare-fun e!3391776 () Bool)

(assert (=> b!5480262 (= e!3391787 e!3391776)))

(declare-fun res!2336174 () Bool)

(assert (=> b!5480262 (=> (not res!2336174) (not e!3391776))))

(assert (=> b!5480262 (= res!2336174 (= r!7292 lt!2238049))))

(assert (=> b!5480262 (= lt!2238049 (unfocusZipper!1105 zl!343))))

(assert (=> b!5480263 (= e!3391785 e!3391789)))

(declare-fun res!2336186 () Bool)

(assert (=> b!5480263 (=> res!2336186 e!3391789)))

(declare-fun lt!2238065 () Bool)

(declare-fun e!3391782 () Bool)

(assert (=> b!5480263 (= res!2336186 (not (= lt!2238065 e!3391782)))))

(declare-fun res!2336192 () Bool)

(assert (=> b!5480263 (=> res!2336192 e!3391782)))

(declare-fun isEmpty!34218 (List!62390) Bool)

(assert (=> b!5480263 (= res!2336192 (isEmpty!34218 s!2326))))

(declare-fun Exists!2542 (Int) Bool)

(assert (=> b!5480263 (= (Exists!2542 lambda!292380) (Exists!2542 lambda!292382))))

(declare-fun lt!2238057 () Unit!155176)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1192 (Regex!15363 Regex!15363 List!62390) Unit!155176)

(assert (=> b!5480263 (= lt!2238057 (lemmaExistCutMatchRandMatchRSpecEquivalent!1192 (reg!15692 r!7292) r!7292 s!2326))))

(assert (=> b!5480263 (= (Exists!2542 lambda!292380) (Exists!2542 lambda!292381))))

(declare-fun lt!2238053 () Unit!155176)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!516 (Regex!15363 List!62390) Unit!155176)

(assert (=> b!5480263 (= lt!2238053 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!516 (reg!15692 r!7292) s!2326))))

(declare-fun lt!2238052 () Bool)

(assert (=> b!5480263 (= lt!2238052 (Exists!2542 lambda!292380))))

(declare-datatypes ((tuple2!65120 0))(
  ( (tuple2!65121 (_1!35863 List!62390) (_2!35863 List!62390)) )
))
(declare-datatypes ((Option!15472 0))(
  ( (None!15471) (Some!15471 (v!51500 tuple2!65120)) )
))
(declare-fun isDefined!12175 (Option!15472) Bool)

(declare-fun findConcatSeparation!1886 (Regex!15363 Regex!15363 List!62390 List!62390 List!62390) Option!15472)

(assert (=> b!5480263 (= lt!2238052 (isDefined!12175 (findConcatSeparation!1886 (reg!15692 r!7292) r!7292 Nil!62266 s!2326 s!2326)))))

(declare-fun lt!2238070 () Unit!155176)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1650 (Regex!15363 Regex!15363 List!62390) Unit!155176)

(assert (=> b!5480263 (= lt!2238070 (lemmaFindConcatSeparationEquivalentToExists!1650 (reg!15692 r!7292) r!7292 s!2326))))

(declare-fun setIsEmpty!36033 () Bool)

(assert (=> setIsEmpty!36033 setRes!36033))

(declare-fun b!5480264 () Bool)

(declare-fun e!3391777 () Bool)

(declare-fun tp_is_empty!39979 () Bool)

(declare-fun tp!1506150 () Bool)

(assert (=> b!5480264 (= e!3391777 (and tp_is_empty!39979 tp!1506150))))

(assert (=> b!5480265 (= e!3391774 e!3391780)))

(declare-fun res!2336172 () Bool)

(assert (=> b!5480265 (=> res!2336172 e!3391780)))

(assert (=> b!5480265 (= res!2336172 (not (= lt!2238071 lt!2238047)))))

(assert (=> b!5480265 (= (flatMap!1066 z!1189 lambda!292383) (derivationStepZipperUp!715 (h!68713 zl!343) (h!68714 s!2326)))))

(declare-fun lt!2238056 () Unit!155176)

(assert (=> b!5480265 (= lt!2238056 (lemmaFlatMapOnSingletonSet!598 z!1189 (h!68713 zl!343) lambda!292383))))

(declare-fun b!5480266 () Bool)

(assert (=> b!5480266 (= e!3391776 (not e!3391785))))

(declare-fun res!2336176 () Bool)

(assert (=> b!5480266 (=> res!2336176 e!3391785)))

(assert (=> b!5480266 (= res!2336176 (not ((_ is Cons!62265) zl!343)))))

(declare-fun matchRSpec!2466 (Regex!15363 List!62390) Bool)

(assert (=> b!5480266 (= lt!2238065 (matchRSpec!2466 r!7292 s!2326))))

(declare-fun matchR!7548 (Regex!15363 List!62390) Bool)

(assert (=> b!5480266 (= lt!2238065 (matchR!7548 r!7292 s!2326))))

(declare-fun lt!2238064 () Unit!155176)

(declare-fun mainMatchTheorem!2466 (Regex!15363 List!62390) Unit!155176)

(assert (=> b!5480266 (= lt!2238064 (mainMatchTheorem!2466 r!7292 s!2326))))

(declare-fun b!5480267 () Bool)

(declare-fun e!3391778 () Bool)

(assert (=> b!5480267 (= e!3391778 e!3391788)))

(declare-fun res!2336173 () Bool)

(assert (=> b!5480267 (=> res!2336173 e!3391788)))

(declare-fun lt!2238062 () (InoxSet Context!9494))

(assert (=> b!5480267 (= res!2336173 (not (= lt!2238071 (derivationStepZipper!1558 lt!2238062 (h!68714 s!2326)))))))

(assert (=> b!5480267 (= (flatMap!1066 lt!2238062 lambda!292383) (derivationStepZipperUp!715 lt!2238060 (h!68714 s!2326)))))

(declare-fun lt!2238054 () Unit!155176)

(assert (=> b!5480267 (= lt!2238054 (lemmaFlatMapOnSingletonSet!598 lt!2238062 lt!2238060 lambda!292383))))

(declare-fun lt!2238072 () (InoxSet Context!9494))

(assert (=> b!5480267 (= (flatMap!1066 lt!2238072 lambda!292383) (derivationStepZipperUp!715 lt!2238073 (h!68714 s!2326)))))

(declare-fun lt!2238050 () Unit!155176)

(assert (=> b!5480267 (= lt!2238050 (lemmaFlatMapOnSingletonSet!598 lt!2238072 lt!2238073 lambda!292383))))

(declare-fun lt!2238055 () (InoxSet Context!9494))

(assert (=> b!5480267 (= lt!2238055 (derivationStepZipperUp!715 lt!2238060 (h!68714 s!2326)))))

(declare-fun lt!2238063 () (InoxSet Context!9494))

(assert (=> b!5480267 (= lt!2238063 (derivationStepZipperUp!715 lt!2238073 (h!68714 s!2326)))))

(assert (=> b!5480267 (= lt!2238062 (store ((as const (Array Context!9494 Bool)) false) lt!2238060 true))))

(assert (=> b!5480267 (= lt!2238072 (store ((as const (Array Context!9494 Bool)) false) lt!2238073 true))))

(assert (=> b!5480267 (= lt!2238073 (Context!9495 (Cons!62264 (reg!15692 r!7292) Nil!62264)))))

(declare-fun b!5480268 () Bool)

(declare-fun res!2336182 () Bool)

(assert (=> b!5480268 (=> res!2336182 e!3391775)))

(assert (=> b!5480268 (= res!2336182 (not (= (matchZipper!1581 lt!2238076 s!2326) (matchZipper!1581 (derivationStepZipper!1558 lt!2238076 (h!68714 s!2326)) (t!375621 s!2326)))))))

(declare-fun b!5480269 () Bool)

(assert (=> b!5480269 (= e!3391782 lt!2238052)))

(assert (=> b!5480270 (= e!3391781 e!3391786)))

(declare-fun res!2336179 () Bool)

(assert (=> b!5480270 (=> res!2336179 e!3391786)))

(assert (=> b!5480270 (= res!2336179 (not (= lt!2238074 lt!2238076)))))

(declare-fun appendTo!82 ((InoxSet Context!9494) Context!9494) (InoxSet Context!9494))

(assert (=> b!5480270 (= lt!2238074 (appendTo!82 lt!2238072 lt!2238060))))

(declare-fun lambda!292384 () Int)

(declare-fun map!14301 ((InoxSet Context!9494) Int) (InoxSet Context!9494))

(declare-fun ++!13702 (List!62388 List!62388) List!62388)

(assert (=> b!5480270 (= (map!14301 lt!2238072 lambda!292384) (store ((as const (Array Context!9494 Bool)) false) (Context!9495 (++!13702 (Cons!62264 (reg!15692 r!7292) Nil!62264) lt!2238066)) true))))

(declare-fun lambda!292385 () Int)

(declare-fun lt!2238059 () Unit!155176)

(declare-fun lemmaConcatPreservesForall!264 (List!62388 List!62388 Int) Unit!155176)

(assert (=> b!5480270 (= lt!2238059 (lemmaConcatPreservesForall!264 (Cons!62264 (reg!15692 r!7292) Nil!62264) lt!2238066 lambda!292385))))

(declare-fun lt!2238058 () Unit!155176)

(declare-fun lemmaMapOnSingletonSet!94 ((InoxSet Context!9494) Context!9494 Int) Unit!155176)

(assert (=> b!5480270 (= lt!2238058 (lemmaMapOnSingletonSet!94 lt!2238072 lt!2238073 lambda!292384))))

(declare-fun b!5480271 () Bool)

(declare-fun res!2336190 () Bool)

(assert (=> b!5480271 (=> res!2336190 e!3391785)))

(assert (=> b!5480271 (= res!2336190 (or ((_ is EmptyExpr!15363) r!7292) ((_ is EmptyLang!15363) r!7292) ((_ is ElementMatch!15363) r!7292) ((_ is Union!15363) r!7292) ((_ is Concat!24208) r!7292)))))

(declare-fun b!5480272 () Bool)

(assert (=> b!5480272 (= e!3391788 e!3391781)))

(declare-fun res!2336181 () Bool)

(assert (=> b!5480272 (=> res!2336181 e!3391781)))

(declare-fun lt!2238051 () Bool)

(assert (=> b!5480272 (= res!2336181 lt!2238051)))

(declare-fun lt!2238077 () Regex!15363)

(assert (=> b!5480272 (= lt!2238051 (matchRSpec!2466 lt!2238077 s!2326))))

(assert (=> b!5480272 (= lt!2238051 (matchR!7548 lt!2238077 s!2326))))

(declare-fun lt!2238048 () Unit!155176)

(assert (=> b!5480272 (= lt!2238048 (mainMatchTheorem!2466 lt!2238077 s!2326))))

(declare-fun res!2336188 () Bool)

(assert (=> start!573254 (=> (not res!2336188) (not e!3391787))))

(declare-fun validRegex!7099 (Regex!15363) Bool)

(assert (=> start!573254 (= res!2336188 (validRegex!7099 r!7292))))

(assert (=> start!573254 e!3391787))

(assert (=> start!573254 e!3391784))

(declare-fun condSetEmpty!36033 () Bool)

(assert (=> start!573254 (= condSetEmpty!36033 (= z!1189 ((as const (Array Context!9494 Bool)) false)))))

(assert (=> start!573254 setRes!36033))

(assert (=> start!573254 e!3391779))

(assert (=> start!573254 e!3391777))

(declare-fun b!5480252 () Bool)

(declare-fun res!2336187 () Bool)

(assert (=> b!5480252 (=> res!2336187 e!3391785)))

(declare-fun generalisedConcat!1032 (List!62388) Regex!15363)

(assert (=> b!5480252 (= res!2336187 (not (= r!7292 (generalisedConcat!1032 (exprs!5247 (h!68713 zl!343))))))))

(declare-fun b!5480273 () Bool)

(assert (=> b!5480273 (= e!3391784 tp_is_empty!39979)))

(declare-fun b!5480274 () Bool)

(assert (=> b!5480274 (= e!3391775 e!3391778)))

(declare-fun res!2336185 () Bool)

(assert (=> b!5480274 (=> res!2336185 e!3391778)))

(assert (=> b!5480274 (= res!2336185 (not (= (unfocusZipper!1105 (Cons!62265 lt!2238069 Nil!62265)) lt!2238077)))))

(assert (=> b!5480274 (= lt!2238077 (Concat!24208 (reg!15692 r!7292) r!7292))))

(declare-fun b!5480275 () Bool)

(declare-fun res!2336191 () Bool)

(assert (=> b!5480275 (=> res!2336191 e!3391785)))

(declare-fun isEmpty!34219 (List!62389) Bool)

(assert (=> b!5480275 (= res!2336191 (not (isEmpty!34219 (t!375620 zl!343))))))

(declare-fun b!5480276 () Bool)

(declare-fun tp!1506148 () Bool)

(declare-fun tp!1506151 () Bool)

(assert (=> b!5480276 (= e!3391784 (and tp!1506148 tp!1506151))))

(assert (= (and start!573254 res!2336188) b!5480245))

(assert (= (and b!5480245 res!2336194) b!5480262))

(assert (= (and b!5480262 res!2336174) b!5480266))

(assert (= (and b!5480266 (not res!2336176)) b!5480275))

(assert (= (and b!5480275 (not res!2336191)) b!5480252))

(assert (= (and b!5480252 (not res!2336187)) b!5480251))

(assert (= (and b!5480251 (not res!2336184)) b!5480256))

(assert (= (and b!5480256 (not res!2336180)) b!5480271))

(assert (= (and b!5480271 (not res!2336190)) b!5480263))

(assert (= (and b!5480263 (not res!2336192)) b!5480269))

(assert (= (and b!5480263 (not res!2336186)) b!5480257))

(assert (= (and b!5480257 (not res!2336189)) b!5480258))

(assert (= (and b!5480258 (not res!2336183)) b!5480265))

(assert (= (and b!5480265 (not res!2336172)) b!5480248))

(assert (= (and b!5480248 (not res!2336193)) b!5480268))

(assert (= (and b!5480268 (not res!2336182)) b!5480254))

(assert (= (and b!5480254 (not res!2336178)) b!5480274))

(assert (= (and b!5480274 (not res!2336185)) b!5480267))

(assert (= (and b!5480267 (not res!2336173)) b!5480260))

(assert (= (and b!5480260 (not res!2336175)) b!5480250))

(assert (= (and b!5480250 (not res!2336177)) b!5480272))

(assert (= (and b!5480272 (not res!2336181)) b!5480249))

(assert (= (and b!5480249 (not res!2336171)) b!5480270))

(assert (= (and b!5480270 (not res!2336179)) b!5480255))

(assert (= (and start!573254 ((_ is ElementMatch!15363) r!7292)) b!5480273))

(assert (= (and start!573254 ((_ is Concat!24208) r!7292)) b!5480259))

(assert (= (and start!573254 ((_ is Star!15363) r!7292)) b!5480261))

(assert (= (and start!573254 ((_ is Union!15363) r!7292)) b!5480276))

(assert (= (and start!573254 condSetEmpty!36033) setIsEmpty!36033))

(assert (= (and start!573254 (not condSetEmpty!36033)) setNonEmpty!36033))

(assert (= setNonEmpty!36033 b!5480253))

(assert (= b!5480246 b!5480247))

(assert (= (and start!573254 ((_ is Cons!62265) zl!343)) b!5480246))

(assert (= (and start!573254 ((_ is Cons!62266) s!2326)) b!5480264))

(declare-fun m!6496104 () Bool)

(assert (=> b!5480248 m!6496104))

(declare-fun m!6496106 () Bool)

(assert (=> b!5480248 m!6496106))

(declare-fun m!6496108 () Bool)

(assert (=> b!5480248 m!6496108))

(declare-fun m!6496110 () Bool)

(assert (=> b!5480248 m!6496110))

(declare-fun m!6496112 () Bool)

(assert (=> b!5480248 m!6496112))

(declare-fun m!6496114 () Bool)

(assert (=> start!573254 m!6496114))

(declare-fun m!6496116 () Bool)

(assert (=> b!5480260 m!6496116))

(declare-fun m!6496118 () Bool)

(assert (=> b!5480266 m!6496118))

(declare-fun m!6496120 () Bool)

(assert (=> b!5480266 m!6496120))

(declare-fun m!6496122 () Bool)

(assert (=> b!5480266 m!6496122))

(declare-fun m!6496124 () Bool)

(assert (=> b!5480263 m!6496124))

(declare-fun m!6496126 () Bool)

(assert (=> b!5480263 m!6496126))

(assert (=> b!5480263 m!6496124))

(declare-fun m!6496128 () Bool)

(assert (=> b!5480263 m!6496128))

(declare-fun m!6496130 () Bool)

(assert (=> b!5480263 m!6496130))

(declare-fun m!6496132 () Bool)

(assert (=> b!5480263 m!6496132))

(assert (=> b!5480263 m!6496124))

(assert (=> b!5480263 m!6496130))

(declare-fun m!6496134 () Bool)

(assert (=> b!5480263 m!6496134))

(declare-fun m!6496136 () Bool)

(assert (=> b!5480263 m!6496136))

(declare-fun m!6496138 () Bool)

(assert (=> b!5480263 m!6496138))

(declare-fun m!6496140 () Bool)

(assert (=> b!5480263 m!6496140))

(declare-fun m!6496142 () Bool)

(assert (=> b!5480270 m!6496142))

(declare-fun m!6496144 () Bool)

(assert (=> b!5480270 m!6496144))

(declare-fun m!6496146 () Bool)

(assert (=> b!5480270 m!6496146))

(declare-fun m!6496148 () Bool)

(assert (=> b!5480270 m!6496148))

(declare-fun m!6496150 () Bool)

(assert (=> b!5480270 m!6496150))

(declare-fun m!6496152 () Bool)

(assert (=> b!5480270 m!6496152))

(declare-fun m!6496154 () Bool)

(assert (=> b!5480267 m!6496154))

(declare-fun m!6496156 () Bool)

(assert (=> b!5480267 m!6496156))

(declare-fun m!6496158 () Bool)

(assert (=> b!5480267 m!6496158))

(declare-fun m!6496160 () Bool)

(assert (=> b!5480267 m!6496160))

(declare-fun m!6496162 () Bool)

(assert (=> b!5480267 m!6496162))

(declare-fun m!6496164 () Bool)

(assert (=> b!5480267 m!6496164))

(declare-fun m!6496166 () Bool)

(assert (=> b!5480267 m!6496166))

(declare-fun m!6496168 () Bool)

(assert (=> b!5480267 m!6496168))

(declare-fun m!6496170 () Bool)

(assert (=> b!5480267 m!6496170))

(declare-fun m!6496172 () Bool)

(assert (=> b!5480249 m!6496172))

(declare-fun m!6496174 () Bool)

(assert (=> b!5480272 m!6496174))

(declare-fun m!6496176 () Bool)

(assert (=> b!5480272 m!6496176))

(declare-fun m!6496178 () Bool)

(assert (=> b!5480272 m!6496178))

(declare-fun m!6496180 () Bool)

(assert (=> b!5480250 m!6496180))

(declare-fun m!6496182 () Bool)

(assert (=> b!5480255 m!6496182))

(declare-fun m!6496184 () Bool)

(assert (=> b!5480246 m!6496184))

(declare-fun m!6496186 () Bool)

(assert (=> b!5480275 m!6496186))

(declare-fun m!6496188 () Bool)

(assert (=> b!5480274 m!6496188))

(declare-fun m!6496190 () Bool)

(assert (=> b!5480256 m!6496190))

(assert (=> b!5480256 m!6496190))

(declare-fun m!6496192 () Bool)

(assert (=> b!5480256 m!6496192))

(declare-fun m!6496194 () Bool)

(assert (=> b!5480252 m!6496194))

(declare-fun m!6496196 () Bool)

(assert (=> setNonEmpty!36033 m!6496196))

(declare-fun m!6496198 () Bool)

(assert (=> b!5480245 m!6496198))

(declare-fun m!6496200 () Bool)

(assert (=> b!5480258 m!6496200))

(declare-fun m!6496202 () Bool)

(assert (=> b!5480258 m!6496202))

(declare-fun m!6496204 () Bool)

(assert (=> b!5480258 m!6496204))

(declare-fun m!6496206 () Bool)

(assert (=> b!5480268 m!6496206))

(declare-fun m!6496208 () Bool)

(assert (=> b!5480268 m!6496208))

(assert (=> b!5480268 m!6496208))

(declare-fun m!6496210 () Bool)

(assert (=> b!5480268 m!6496210))

(declare-fun m!6496212 () Bool)

(assert (=> b!5480265 m!6496212))

(declare-fun m!6496214 () Bool)

(assert (=> b!5480265 m!6496214))

(declare-fun m!6496216 () Bool)

(assert (=> b!5480265 m!6496216))

(declare-fun m!6496218 () Bool)

(assert (=> b!5480262 m!6496218))

(check-sat (not b!5480259) (not b!5480261) (not b!5480252) (not b!5480267) (not b!5480276) (not b!5480258) (not b!5480263) (not b!5480250) (not b!5480265) tp_is_empty!39979 (not b!5480249) (not b!5480255) (not b!5480260) (not b!5480274) (not b!5480262) (not b!5480253) (not b!5480246) (not b!5480245) (not start!573254) (not b!5480272) (not b!5480248) (not b!5480256) (not b!5480247) (not b!5480264) (not b!5480266) (not b!5480275) (not setNonEmpty!36033) (not b!5480268) (not b!5480270))
(check-sat)

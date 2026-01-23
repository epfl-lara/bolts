; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!585512 () Bool)

(assert start!585512)

(declare-fun b!5670241 () Bool)

(assert (=> b!5670241 true))

(assert (=> b!5670241 true))

(declare-fun lambda!305096 () Int)

(declare-fun lambda!305095 () Int)

(assert (=> b!5670241 (not (= lambda!305096 lambda!305095))))

(assert (=> b!5670241 true))

(assert (=> b!5670241 true))

(declare-fun b!5670246 () Bool)

(assert (=> b!5670246 true))

(declare-fun bs!1320946 () Bool)

(declare-fun b!5670249 () Bool)

(assert (= bs!1320946 (and b!5670249 b!5670241)))

(declare-datatypes ((C!31584 0))(
  ( (C!31585 (val!25494 Int)) )
))
(declare-datatypes ((Regex!15657 0))(
  ( (ElementMatch!15657 (c!997231 C!31584)) (Concat!24502 (regOne!31826 Regex!15657) (regTwo!31826 Regex!15657)) (EmptyExpr!15657) (Star!15657 (reg!15986 Regex!15657)) (EmptyLang!15657) (Union!15657 (regOne!31827 Regex!15657) (regTwo!31827 Regex!15657)) )
))
(declare-fun r!7292 () Regex!15657)

(declare-fun lt!2268120 () Regex!15657)

(declare-fun lambda!305098 () Int)

(assert (=> bs!1320946 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305098 lambda!305095))))

(assert (=> bs!1320946 (not (= lambda!305098 lambda!305096))))

(assert (=> b!5670249 true))

(assert (=> b!5670249 true))

(assert (=> b!5670249 true))

(declare-fun lambda!305099 () Int)

(assert (=> bs!1320946 (not (= lambda!305099 lambda!305095))))

(assert (=> bs!1320946 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305099 lambda!305096))))

(assert (=> b!5670249 (not (= lambda!305099 lambda!305098))))

(assert (=> b!5670249 true))

(assert (=> b!5670249 true))

(assert (=> b!5670249 true))

(declare-fun lambda!305100 () Int)

(declare-fun lt!2268129 () Regex!15657)

(assert (=> bs!1320946 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305100 lambda!305095))))

(assert (=> bs!1320946 (not (= lambda!305100 lambda!305096))))

(assert (=> b!5670249 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305100 lambda!305098))))

(assert (=> b!5670249 (not (= lambda!305100 lambda!305099))))

(assert (=> b!5670249 true))

(assert (=> b!5670249 true))

(assert (=> b!5670249 true))

(declare-fun lambda!305101 () Int)

(assert (=> bs!1320946 (not (= lambda!305101 lambda!305095))))

(assert (=> b!5670249 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305101 lambda!305099))))

(assert (=> b!5670249 (not (= lambda!305101 lambda!305098))))

(assert (=> b!5670249 (not (= lambda!305101 lambda!305100))))

(assert (=> bs!1320946 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305101 lambda!305096))))

(assert (=> b!5670249 true))

(assert (=> b!5670249 true))

(assert (=> b!5670249 true))

(declare-fun setIsEmpty!37895 () Bool)

(declare-fun setRes!37895 () Bool)

(assert (=> setIsEmpty!37895 setRes!37895))

(declare-fun b!5670238 () Bool)

(declare-fun e!3490602 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63270 0))(
  ( (Nil!63146) (Cons!63146 (h!69594 Regex!15657) (t!376576 List!63270)) )
))
(declare-datatypes ((Context!10082 0))(
  ( (Context!10083 (exprs!5541 List!63270)) )
))
(declare-fun lt!2268136 () (InoxSet Context!10082))

(declare-datatypes ((List!63271 0))(
  ( (Nil!63147) (Cons!63147 (h!69595 C!31584) (t!376577 List!63271)) )
))
(declare-fun s!2326 () List!63271)

(declare-fun matchZipper!1795 ((InoxSet Context!10082) List!63271) Bool)

(assert (=> b!5670238 (= e!3490602 (matchZipper!1795 lt!2268136 (t!376577 s!2326)))))

(declare-fun b!5670239 () Bool)

(declare-fun res!2396167 () Bool)

(declare-fun e!3490601 () Bool)

(assert (=> b!5670239 (=> (not res!2396167) (not e!3490601))))

(declare-datatypes ((List!63272 0))(
  ( (Nil!63148) (Cons!63148 (h!69596 Context!10082) (t!376578 List!63272)) )
))
(declare-fun zl!343 () List!63272)

(declare-fun unfocusZipper!1399 (List!63272) Regex!15657)

(assert (=> b!5670239 (= res!2396167 (= r!7292 (unfocusZipper!1399 zl!343)))))

(declare-fun b!5670240 () Bool)

(declare-fun res!2396164 () Bool)

(declare-fun e!3490614 () Bool)

(assert (=> b!5670240 (=> res!2396164 e!3490614)))

(declare-fun isEmpty!34997 (List!63272) Bool)

(assert (=> b!5670240 (= res!2396164 (not (isEmpty!34997 (t!376578 zl!343))))))

(declare-fun e!3490605 () Bool)

(assert (=> b!5670241 (= e!3490614 e!3490605)))

(declare-fun res!2396176 () Bool)

(assert (=> b!5670241 (=> res!2396176 e!3490605)))

(declare-fun lt!2268131 () Bool)

(declare-fun lt!2268125 () Bool)

(get-info :version)

(assert (=> b!5670241 (= res!2396176 (or (not (= lt!2268125 lt!2268131)) ((_ is Nil!63147) s!2326)))))

(declare-fun Exists!2757 (Int) Bool)

(assert (=> b!5670241 (= (Exists!2757 lambda!305095) (Exists!2757 lambda!305096))))

(declare-datatypes ((Unit!156160 0))(
  ( (Unit!156161) )
))
(declare-fun lt!2268138 () Unit!156160)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1386 (Regex!15657 Regex!15657 List!63271) Unit!156160)

(assert (=> b!5670241 (= lt!2268138 (lemmaExistCutMatchRandMatchRSpecEquivalent!1386 (regOne!31826 r!7292) (regTwo!31826 r!7292) s!2326))))

(assert (=> b!5670241 (= lt!2268131 (Exists!2757 lambda!305095))))

(declare-datatypes ((tuple2!65508 0))(
  ( (tuple2!65509 (_1!36057 List!63271) (_2!36057 List!63271)) )
))
(declare-datatypes ((Option!15666 0))(
  ( (None!15665) (Some!15665 (v!51714 tuple2!65508)) )
))
(declare-fun isDefined!12369 (Option!15666) Bool)

(declare-fun findConcatSeparation!2080 (Regex!15657 Regex!15657 List!63271 List!63271 List!63271) Option!15666)

(assert (=> b!5670241 (= lt!2268131 (isDefined!12369 (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) Nil!63147 s!2326 s!2326)))))

(declare-fun lt!2268122 () Unit!156160)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1844 (Regex!15657 Regex!15657 List!63271) Unit!156160)

(assert (=> b!5670241 (= lt!2268122 (lemmaFindConcatSeparationEquivalentToExists!1844 (regOne!31826 r!7292) (regTwo!31826 r!7292) s!2326))))

(declare-fun b!5670242 () Bool)

(declare-fun res!2396160 () Bool)

(assert (=> b!5670242 (=> res!2396160 e!3490614)))

(assert (=> b!5670242 (= res!2396160 (or ((_ is EmptyExpr!15657) r!7292) ((_ is EmptyLang!15657) r!7292) ((_ is ElementMatch!15657) r!7292) ((_ is Union!15657) r!7292) (not ((_ is Concat!24502) r!7292))))))

(declare-fun b!5670243 () Bool)

(declare-fun e!3490600 () Bool)

(declare-fun tp!1573070 () Bool)

(declare-fun tp!1573071 () Bool)

(assert (=> b!5670243 (= e!3490600 (and tp!1573070 tp!1573071))))

(declare-fun b!5670244 () Bool)

(declare-fun e!3490608 () Bool)

(declare-fun tp!1573072 () Bool)

(assert (=> b!5670244 (= e!3490608 tp!1573072)))

(declare-fun b!5670245 () Bool)

(declare-fun e!3490604 () Bool)

(declare-fun tp!1573073 () Bool)

(assert (=> b!5670245 (= e!3490604 tp!1573073)))

(declare-fun e!3490603 () Bool)

(assert (=> b!5670246 (= e!3490605 e!3490603)))

(declare-fun res!2396178 () Bool)

(assert (=> b!5670246 (=> res!2396178 e!3490603)))

(assert (=> b!5670246 (= res!2396178 (or (and ((_ is ElementMatch!15657) (regOne!31826 r!7292)) (= (c!997231 (regOne!31826 r!7292)) (h!69595 s!2326))) ((_ is Union!15657) (regOne!31826 r!7292))))))

(declare-fun lt!2268126 () Unit!156160)

(declare-fun e!3490613 () Unit!156160)

(assert (=> b!5670246 (= lt!2268126 e!3490613)))

(declare-fun c!997230 () Bool)

(declare-fun nullable!5689 (Regex!15657) Bool)

(assert (=> b!5670246 (= c!997230 (nullable!5689 (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10082))

(declare-fun lambda!305097 () Int)

(declare-fun flatMap!1270 ((InoxSet Context!10082) Int) (InoxSet Context!10082))

(declare-fun derivationStepZipperUp!925 (Context!10082 C!31584) (InoxSet Context!10082))

(assert (=> b!5670246 (= (flatMap!1270 z!1189 lambda!305097) (derivationStepZipperUp!925 (h!69596 zl!343) (h!69595 s!2326)))))

(declare-fun lt!2268124 () Unit!156160)

(declare-fun lemmaFlatMapOnSingletonSet!802 ((InoxSet Context!10082) Context!10082 Int) Unit!156160)

(assert (=> b!5670246 (= lt!2268124 (lemmaFlatMapOnSingletonSet!802 z!1189 (h!69596 zl!343) lambda!305097))))

(declare-fun lt!2268148 () Context!10082)

(assert (=> b!5670246 (= lt!2268136 (derivationStepZipperUp!925 lt!2268148 (h!69595 s!2326)))))

(declare-fun lt!2268133 () (InoxSet Context!10082))

(declare-fun derivationStepZipperDown!999 (Regex!15657 Context!10082 C!31584) (InoxSet Context!10082))

(assert (=> b!5670246 (= lt!2268133 (derivationStepZipperDown!999 (h!69594 (exprs!5541 (h!69596 zl!343))) lt!2268148 (h!69595 s!2326)))))

(assert (=> b!5670246 (= lt!2268148 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun lt!2268147 () (InoxSet Context!10082))

(assert (=> b!5670246 (= lt!2268147 (derivationStepZipperUp!925 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))) (h!69595 s!2326)))))

(declare-fun b!5670247 () Bool)

(declare-fun res!2396183 () Bool)

(declare-fun e!3490607 () Bool)

(assert (=> b!5670247 (=> res!2396183 e!3490607)))

(declare-fun lt!2268119 () Context!10082)

(declare-fun contextDepthTotal!232 (Context!10082) Int)

(assert (=> b!5670247 (= res!2396183 (>= (contextDepthTotal!232 lt!2268119) (contextDepthTotal!232 (h!69596 zl!343))))))

(declare-fun b!5670248 () Bool)

(declare-fun tp_is_empty!40567 () Bool)

(assert (=> b!5670248 (= e!3490600 tp_is_empty!40567)))

(declare-fun lt!2268146 () Bool)

(declare-fun e!3490599 () Bool)

(assert (=> b!5670249 (= e!3490599 (= (matchZipper!1795 z!1189 s!2326) lt!2268146))))

(assert (=> b!5670249 (= (Exists!2757 lambda!305100) (Exists!2757 lambda!305101))))

(declare-fun lt!2268128 () Unit!156160)

(assert (=> b!5670249 (= lt!2268128 (lemmaExistCutMatchRandMatchRSpecEquivalent!1386 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 s!2326))))

(assert (=> b!5670249 (= (isDefined!12369 (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 Nil!63147 s!2326 s!2326)) (Exists!2757 lambda!305100))))

(declare-fun lt!2268135 () Unit!156160)

(assert (=> b!5670249 (= lt!2268135 (lemmaFindConcatSeparationEquivalentToExists!1844 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 s!2326))))

(declare-fun generalisedConcat!1272 (List!63270) Regex!15657)

(assert (=> b!5670249 (= lt!2268129 (generalisedConcat!1272 (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun matchR!7842 (Regex!15657 List!63271) Bool)

(declare-fun matchRSpec!2760 (Regex!15657 List!63271) Bool)

(assert (=> b!5670249 (= (matchR!7842 lt!2268120 s!2326) (matchRSpec!2760 lt!2268120 s!2326))))

(declare-fun lt!2268139 () Unit!156160)

(declare-fun mainMatchTheorem!2760 (Regex!15657 List!63271) Unit!156160)

(assert (=> b!5670249 (= lt!2268139 (mainMatchTheorem!2760 lt!2268120 s!2326))))

(assert (=> b!5670249 (= (Exists!2757 lambda!305098) (Exists!2757 lambda!305099))))

(declare-fun lt!2268132 () Unit!156160)

(assert (=> b!5670249 (= lt!2268132 (lemmaExistCutMatchRandMatchRSpecEquivalent!1386 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 s!2326))))

(assert (=> b!5670249 (= (isDefined!12369 (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 Nil!63147 s!2326 s!2326)) (Exists!2757 lambda!305098))))

(declare-fun lt!2268140 () Unit!156160)

(assert (=> b!5670249 (= lt!2268140 (lemmaFindConcatSeparationEquivalentToExists!1844 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 s!2326))))

(declare-fun lt!2268152 () List!63270)

(assert (=> b!5670249 (= lt!2268120 (generalisedConcat!1272 lt!2268152))))

(declare-fun lt!2268123 () Bool)

(declare-fun lt!2268141 () Regex!15657)

(assert (=> b!5670249 (= lt!2268123 (matchRSpec!2760 lt!2268141 s!2326))))

(declare-fun lt!2268134 () Unit!156160)

(assert (=> b!5670249 (= lt!2268134 (mainMatchTheorem!2760 lt!2268141 s!2326))))

(assert (=> b!5670249 (= lt!2268123 lt!2268146)))

(declare-fun lt!2268137 () (InoxSet Context!10082))

(assert (=> b!5670249 (= lt!2268146 (matchZipper!1795 lt!2268137 s!2326))))

(assert (=> b!5670249 (= lt!2268123 (matchR!7842 lt!2268141 s!2326))))

(declare-fun lt!2268149 () Unit!156160)

(declare-fun lt!2268150 () List!63272)

(declare-fun theoremZipperRegexEquiv!637 ((InoxSet Context!10082) List!63272 Regex!15657 List!63271) Unit!156160)

(assert (=> b!5670249 (= lt!2268149 (theoremZipperRegexEquiv!637 lt!2268137 lt!2268150 lt!2268141 s!2326))))

(declare-fun lt!2268127 () List!63270)

(assert (=> b!5670249 (= lt!2268141 (generalisedConcat!1272 lt!2268127))))

(declare-fun b!5670250 () Bool)

(declare-fun res!2396172 () Bool)

(assert (=> b!5670250 (=> res!2396172 e!3490603)))

(assert (=> b!5670250 (= res!2396172 (not ((_ is Concat!24502) (regOne!31826 r!7292))))))

(declare-fun b!5670251 () Bool)

(declare-fun tp!1573074 () Bool)

(assert (=> b!5670251 (= e!3490600 tp!1573074)))

(declare-fun b!5670252 () Bool)

(declare-fun res!2396168 () Bool)

(assert (=> b!5670252 (=> res!2396168 e!3490605)))

(declare-fun isEmpty!34998 (List!63270) Bool)

(assert (=> b!5670252 (= res!2396168 (isEmpty!34998 (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5670253 () Bool)

(declare-fun e!3490609 () Bool)

(declare-fun e!3490610 () Bool)

(assert (=> b!5670253 (= e!3490609 e!3490610)))

(declare-fun res!2396171 () Bool)

(assert (=> b!5670253 (=> res!2396171 e!3490610)))

(declare-fun lt!2268121 () (InoxSet Context!10082))

(declare-fun lt!2268145 () Bool)

(assert (=> b!5670253 (= res!2396171 (not (= lt!2268145 (matchZipper!1795 lt!2268121 (t!376577 s!2326)))))))

(assert (=> b!5670253 (= lt!2268145 (matchZipper!1795 lt!2268133 (t!376577 s!2326)))))

(declare-fun setElem!37895 () Context!10082)

(declare-fun setNonEmpty!37895 () Bool)

(declare-fun tp!1573069 () Bool)

(declare-fun inv!82389 (Context!10082) Bool)

(assert (=> setNonEmpty!37895 (= setRes!37895 (and tp!1573069 (inv!82389 setElem!37895) e!3490608))))

(declare-fun setRest!37895 () (InoxSet Context!10082))

(assert (=> setNonEmpty!37895 (= z!1189 ((_ map or) (store ((as const (Array Context!10082 Bool)) false) setElem!37895 true) setRest!37895))))

(declare-fun b!5670254 () Bool)

(declare-fun res!2396177 () Bool)

(assert (=> b!5670254 (=> res!2396177 e!3490607)))

(assert (=> b!5670254 (= res!2396177 (not (= (exprs!5541 (h!69596 zl!343)) (Cons!63146 (Concat!24502 (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5670255 () Bool)

(declare-fun e!3490612 () Bool)

(declare-fun tp!1573077 () Bool)

(assert (=> b!5670255 (= e!3490612 (and tp_is_empty!40567 tp!1573077))))

(declare-fun b!5670256 () Bool)

(declare-fun res!2396169 () Bool)

(assert (=> b!5670256 (=> res!2396169 e!3490614)))

(assert (=> b!5670256 (= res!2396169 (not ((_ is Cons!63146) (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5670257 () Bool)

(declare-fun e!3490606 () Bool)

(assert (=> b!5670257 (= e!3490606 (nullable!5689 (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun b!5670258 () Bool)

(declare-fun res!2396173 () Bool)

(assert (=> b!5670258 (=> (not res!2396173) (not e!3490601))))

(declare-fun toList!9441 ((InoxSet Context!10082)) List!63272)

(assert (=> b!5670258 (= res!2396173 (= (toList!9441 z!1189) zl!343))))

(declare-fun b!5670259 () Bool)

(declare-fun res!2396170 () Bool)

(assert (=> b!5670259 (=> res!2396170 e!3490614)))

(declare-fun generalisedUnion!1520 (List!63270) Regex!15657)

(declare-fun unfocusZipperList!1085 (List!63272) List!63270)

(assert (=> b!5670259 (= res!2396170 (not (= r!7292 (generalisedUnion!1520 (unfocusZipperList!1085 zl!343)))))))

(declare-fun b!5670260 () Bool)

(assert (=> b!5670260 (= e!3490610 e!3490607)))

(declare-fun res!2396174 () Bool)

(assert (=> b!5670260 (=> res!2396174 e!3490607)))

(declare-fun lt!2268130 () (InoxSet Context!10082))

(assert (=> b!5670260 (= res!2396174 (not (= lt!2268130 lt!2268121)))))

(assert (=> b!5670260 (= (flatMap!1270 lt!2268137 lambda!305097) (derivationStepZipperUp!925 lt!2268119 (h!69595 s!2326)))))

(declare-fun lt!2268144 () Unit!156160)

(assert (=> b!5670260 (= lt!2268144 (lemmaFlatMapOnSingletonSet!802 lt!2268137 lt!2268119 lambda!305097))))

(declare-fun lt!2268143 () (InoxSet Context!10082))

(assert (=> b!5670260 (= lt!2268143 (derivationStepZipperUp!925 lt!2268119 (h!69595 s!2326)))))

(declare-fun derivationStepZipper!1742 ((InoxSet Context!10082) C!31584) (InoxSet Context!10082))

(assert (=> b!5670260 (= lt!2268130 (derivationStepZipper!1742 lt!2268137 (h!69595 s!2326)))))

(assert (=> b!5670260 (= lt!2268137 (store ((as const (Array Context!10082 Bool)) false) lt!2268119 true))))

(assert (=> b!5670260 (= lt!2268119 (Context!10083 lt!2268127))))

(assert (=> b!5670260 (= lt!2268127 (Cons!63146 (regOne!31826 (regOne!31826 r!7292)) lt!2268152))))

(declare-fun b!5670261 () Bool)

(declare-fun res!2396175 () Bool)

(assert (=> b!5670261 (=> res!2396175 e!3490607)))

(assert (=> b!5670261 (= res!2396175 (not (= lt!2268145 (matchZipper!1795 lt!2268130 (t!376577 s!2326)))))))

(declare-fun b!5670262 () Bool)

(declare-fun Unit!156162 () Unit!156160)

(assert (=> b!5670262 (= e!3490613 Unit!156162)))

(declare-fun b!5670263 () Bool)

(declare-fun Unit!156163 () Unit!156160)

(assert (=> b!5670263 (= e!3490613 Unit!156163)))

(declare-fun lt!2268151 () Unit!156160)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!682 ((InoxSet Context!10082) (InoxSet Context!10082) List!63271) Unit!156160)

(assert (=> b!5670263 (= lt!2268151 (lemmaZipperConcatMatchesSameAsBothZippers!682 lt!2268133 lt!2268136 (t!376577 s!2326)))))

(declare-fun res!2396161 () Bool)

(assert (=> b!5670263 (= res!2396161 (matchZipper!1795 lt!2268133 (t!376577 s!2326)))))

(assert (=> b!5670263 (=> res!2396161 e!3490602)))

(assert (=> b!5670263 (= (matchZipper!1795 ((_ map or) lt!2268133 lt!2268136) (t!376577 s!2326)) e!3490602)))

(declare-fun b!5670264 () Bool)

(declare-fun res!2396165 () Bool)

(assert (=> b!5670264 (=> res!2396165 e!3490599)))

(declare-fun zipperDepth!220 (List!63272) Int)

(assert (=> b!5670264 (= res!2396165 (> (zipperDepth!220 lt!2268150) (zipperDepth!220 zl!343)))))

(declare-fun b!5670265 () Bool)

(declare-fun tp!1573075 () Bool)

(declare-fun tp!1573078 () Bool)

(assert (=> b!5670265 (= e!3490600 (and tp!1573075 tp!1573078))))

(declare-fun res!2396181 () Bool)

(assert (=> start!585512 (=> (not res!2396181) (not e!3490601))))

(declare-fun validRegex!7393 (Regex!15657) Bool)

(assert (=> start!585512 (= res!2396181 (validRegex!7393 r!7292))))

(assert (=> start!585512 e!3490601))

(assert (=> start!585512 e!3490600))

(declare-fun condSetEmpty!37895 () Bool)

(assert (=> start!585512 (= condSetEmpty!37895 (= z!1189 ((as const (Array Context!10082 Bool)) false)))))

(assert (=> start!585512 setRes!37895))

(declare-fun e!3490611 () Bool)

(assert (=> start!585512 e!3490611))

(assert (=> start!585512 e!3490612))

(declare-fun b!5670266 () Bool)

(declare-fun res!2396179 () Bool)

(assert (=> b!5670266 (=> res!2396179 e!3490603)))

(assert (=> b!5670266 (= res!2396179 e!3490606)))

(declare-fun res!2396163 () Bool)

(assert (=> b!5670266 (=> (not res!2396163) (not e!3490606))))

(assert (=> b!5670266 (= res!2396163 ((_ is Concat!24502) (regOne!31826 r!7292)))))

(declare-fun tp!1573076 () Bool)

(declare-fun b!5670267 () Bool)

(assert (=> b!5670267 (= e!3490611 (and (inv!82389 (h!69596 zl!343)) e!3490604 tp!1573076))))

(declare-fun b!5670268 () Bool)

(assert (=> b!5670268 (= e!3490601 (not e!3490614))))

(declare-fun res!2396182 () Bool)

(assert (=> b!5670268 (=> res!2396182 e!3490614)))

(assert (=> b!5670268 (= res!2396182 (not ((_ is Cons!63148) zl!343)))))

(assert (=> b!5670268 (= lt!2268125 (matchRSpec!2760 r!7292 s!2326))))

(assert (=> b!5670268 (= lt!2268125 (matchR!7842 r!7292 s!2326))))

(declare-fun lt!2268142 () Unit!156160)

(assert (=> b!5670268 (= lt!2268142 (mainMatchTheorem!2760 r!7292 s!2326))))

(declare-fun b!5670269 () Bool)

(assert (=> b!5670269 (= e!3490607 e!3490599)))

(declare-fun res!2396166 () Bool)

(assert (=> b!5670269 (=> res!2396166 e!3490599)))

(declare-fun zipperDepthTotal!254 (List!63272) Int)

(assert (=> b!5670269 (= res!2396166 (>= (zipperDepthTotal!254 lt!2268150) (zipperDepthTotal!254 zl!343)))))

(assert (=> b!5670269 (= lt!2268150 (Cons!63148 lt!2268119 Nil!63148))))

(declare-fun b!5670270 () Bool)

(declare-fun res!2396162 () Bool)

(assert (=> b!5670270 (=> res!2396162 e!3490614)))

(assert (=> b!5670270 (= res!2396162 (not (= r!7292 (generalisedConcat!1272 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5670271 () Bool)

(assert (=> b!5670271 (= e!3490603 e!3490609)))

(declare-fun res!2396180 () Bool)

(assert (=> b!5670271 (=> res!2396180 e!3490609)))

(assert (=> b!5670271 (= res!2396180 (not (= lt!2268133 lt!2268121)))))

(assert (=> b!5670271 (= lt!2268121 (derivationStepZipperDown!999 (regOne!31826 (regOne!31826 r!7292)) (Context!10083 lt!2268152) (h!69595 s!2326)))))

(assert (=> b!5670271 (= lt!2268152 (Cons!63146 (regTwo!31826 (regOne!31826 r!7292)) (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(assert (= (and start!585512 res!2396181) b!5670258))

(assert (= (and b!5670258 res!2396173) b!5670239))

(assert (= (and b!5670239 res!2396167) b!5670268))

(assert (= (and b!5670268 (not res!2396182)) b!5670240))

(assert (= (and b!5670240 (not res!2396164)) b!5670270))

(assert (= (and b!5670270 (not res!2396162)) b!5670256))

(assert (= (and b!5670256 (not res!2396169)) b!5670259))

(assert (= (and b!5670259 (not res!2396170)) b!5670242))

(assert (= (and b!5670242 (not res!2396160)) b!5670241))

(assert (= (and b!5670241 (not res!2396176)) b!5670252))

(assert (= (and b!5670252 (not res!2396168)) b!5670246))

(assert (= (and b!5670246 c!997230) b!5670263))

(assert (= (and b!5670246 (not c!997230)) b!5670262))

(assert (= (and b!5670263 (not res!2396161)) b!5670238))

(assert (= (and b!5670246 (not res!2396178)) b!5670266))

(assert (= (and b!5670266 res!2396163) b!5670257))

(assert (= (and b!5670266 (not res!2396179)) b!5670250))

(assert (= (and b!5670250 (not res!2396172)) b!5670271))

(assert (= (and b!5670271 (not res!2396180)) b!5670253))

(assert (= (and b!5670253 (not res!2396171)) b!5670260))

(assert (= (and b!5670260 (not res!2396174)) b!5670261))

(assert (= (and b!5670261 (not res!2396175)) b!5670254))

(assert (= (and b!5670254 (not res!2396177)) b!5670247))

(assert (= (and b!5670247 (not res!2396183)) b!5670269))

(assert (= (and b!5670269 (not res!2396166)) b!5670264))

(assert (= (and b!5670264 (not res!2396165)) b!5670249))

(assert (= (and start!585512 ((_ is ElementMatch!15657) r!7292)) b!5670248))

(assert (= (and start!585512 ((_ is Concat!24502) r!7292)) b!5670243))

(assert (= (and start!585512 ((_ is Star!15657) r!7292)) b!5670251))

(assert (= (and start!585512 ((_ is Union!15657) r!7292)) b!5670265))

(assert (= (and start!585512 condSetEmpty!37895) setIsEmpty!37895))

(assert (= (and start!585512 (not condSetEmpty!37895)) setNonEmpty!37895))

(assert (= setNonEmpty!37895 b!5670244))

(assert (= b!5670267 b!5670245))

(assert (= (and start!585512 ((_ is Cons!63148) zl!343)) b!5670267))

(assert (= (and start!585512 ((_ is Cons!63147) s!2326)) b!5670255))

(declare-fun m!6631432 () Bool)

(assert (=> b!5670263 m!6631432))

(declare-fun m!6631434 () Bool)

(assert (=> b!5670263 m!6631434))

(declare-fun m!6631436 () Bool)

(assert (=> b!5670263 m!6631436))

(declare-fun m!6631438 () Bool)

(assert (=> b!5670240 m!6631438))

(declare-fun m!6631440 () Bool)

(assert (=> b!5670253 m!6631440))

(assert (=> b!5670253 m!6631434))

(declare-fun m!6631442 () Bool)

(assert (=> b!5670271 m!6631442))

(declare-fun m!6631444 () Bool)

(assert (=> b!5670246 m!6631444))

(declare-fun m!6631446 () Bool)

(assert (=> b!5670246 m!6631446))

(declare-fun m!6631448 () Bool)

(assert (=> b!5670246 m!6631448))

(declare-fun m!6631450 () Bool)

(assert (=> b!5670246 m!6631450))

(declare-fun m!6631452 () Bool)

(assert (=> b!5670246 m!6631452))

(declare-fun m!6631454 () Bool)

(assert (=> b!5670246 m!6631454))

(declare-fun m!6631456 () Bool)

(assert (=> b!5670246 m!6631456))

(declare-fun m!6631458 () Bool)

(assert (=> b!5670252 m!6631458))

(declare-fun m!6631460 () Bool)

(assert (=> b!5670238 m!6631460))

(declare-fun m!6631462 () Bool)

(assert (=> b!5670270 m!6631462))

(declare-fun m!6631464 () Bool)

(assert (=> b!5670264 m!6631464))

(declare-fun m!6631466 () Bool)

(assert (=> b!5670264 m!6631466))

(declare-fun m!6631468 () Bool)

(assert (=> start!585512 m!6631468))

(declare-fun m!6631470 () Bool)

(assert (=> b!5670267 m!6631470))

(declare-fun m!6631472 () Bool)

(assert (=> b!5670247 m!6631472))

(declare-fun m!6631474 () Bool)

(assert (=> b!5670247 m!6631474))

(declare-fun m!6631476 () Bool)

(assert (=> b!5670261 m!6631476))

(declare-fun m!6631478 () Bool)

(assert (=> setNonEmpty!37895 m!6631478))

(declare-fun m!6631480 () Bool)

(assert (=> b!5670241 m!6631480))

(declare-fun m!6631482 () Bool)

(assert (=> b!5670241 m!6631482))

(declare-fun m!6631484 () Bool)

(assert (=> b!5670241 m!6631484))

(declare-fun m!6631486 () Bool)

(assert (=> b!5670241 m!6631486))

(declare-fun m!6631488 () Bool)

(assert (=> b!5670241 m!6631488))

(assert (=> b!5670241 m!6631486))

(assert (=> b!5670241 m!6631482))

(declare-fun m!6631490 () Bool)

(assert (=> b!5670241 m!6631490))

(declare-fun m!6631492 () Bool)

(assert (=> b!5670257 m!6631492))

(declare-fun m!6631494 () Bool)

(assert (=> b!5670258 m!6631494))

(declare-fun m!6631496 () Bool)

(assert (=> b!5670269 m!6631496))

(declare-fun m!6631498 () Bool)

(assert (=> b!5670269 m!6631498))

(declare-fun m!6631500 () Bool)

(assert (=> b!5670260 m!6631500))

(declare-fun m!6631502 () Bool)

(assert (=> b!5670260 m!6631502))

(declare-fun m!6631504 () Bool)

(assert (=> b!5670260 m!6631504))

(declare-fun m!6631506 () Bool)

(assert (=> b!5670260 m!6631506))

(declare-fun m!6631508 () Bool)

(assert (=> b!5670260 m!6631508))

(declare-fun m!6631510 () Bool)

(assert (=> b!5670259 m!6631510))

(assert (=> b!5670259 m!6631510))

(declare-fun m!6631512 () Bool)

(assert (=> b!5670259 m!6631512))

(declare-fun m!6631514 () Bool)

(assert (=> b!5670268 m!6631514))

(declare-fun m!6631516 () Bool)

(assert (=> b!5670268 m!6631516))

(declare-fun m!6631518 () Bool)

(assert (=> b!5670268 m!6631518))

(declare-fun m!6631520 () Bool)

(assert (=> b!5670249 m!6631520))

(declare-fun m!6631522 () Bool)

(assert (=> b!5670249 m!6631522))

(declare-fun m!6631524 () Bool)

(assert (=> b!5670249 m!6631524))

(declare-fun m!6631526 () Bool)

(assert (=> b!5670249 m!6631526))

(declare-fun m!6631528 () Bool)

(assert (=> b!5670249 m!6631528))

(declare-fun m!6631530 () Bool)

(assert (=> b!5670249 m!6631530))

(declare-fun m!6631532 () Bool)

(assert (=> b!5670249 m!6631532))

(assert (=> b!5670249 m!6631524))

(assert (=> b!5670249 m!6631522))

(declare-fun m!6631534 () Bool)

(assert (=> b!5670249 m!6631534))

(declare-fun m!6631536 () Bool)

(assert (=> b!5670249 m!6631536))

(declare-fun m!6631538 () Bool)

(assert (=> b!5670249 m!6631538))

(declare-fun m!6631540 () Bool)

(assert (=> b!5670249 m!6631540))

(declare-fun m!6631542 () Bool)

(assert (=> b!5670249 m!6631542))

(assert (=> b!5670249 m!6631536))

(declare-fun m!6631544 () Bool)

(assert (=> b!5670249 m!6631544))

(declare-fun m!6631546 () Bool)

(assert (=> b!5670249 m!6631546))

(declare-fun m!6631548 () Bool)

(assert (=> b!5670249 m!6631548))

(declare-fun m!6631550 () Bool)

(assert (=> b!5670249 m!6631550))

(declare-fun m!6631552 () Bool)

(assert (=> b!5670249 m!6631552))

(declare-fun m!6631554 () Bool)

(assert (=> b!5670249 m!6631554))

(declare-fun m!6631556 () Bool)

(assert (=> b!5670249 m!6631556))

(assert (=> b!5670249 m!6631554))

(declare-fun m!6631558 () Bool)

(assert (=> b!5670249 m!6631558))

(declare-fun m!6631560 () Bool)

(assert (=> b!5670249 m!6631560))

(declare-fun m!6631562 () Bool)

(assert (=> b!5670249 m!6631562))

(declare-fun m!6631564 () Bool)

(assert (=> b!5670249 m!6631564))

(declare-fun m!6631566 () Bool)

(assert (=> b!5670249 m!6631566))

(declare-fun m!6631568 () Bool)

(assert (=> b!5670239 m!6631568))

(check-sat (not b!5670258) (not b!5670253) (not b!5670269) (not b!5670261) (not b!5670260) (not b!5670238) (not b!5670268) (not b!5670240) (not b!5670247) (not b!5670243) (not b!5670244) (not b!5670271) (not b!5670251) (not b!5670241) (not b!5670246) (not b!5670267) (not b!5670239) (not b!5670259) (not b!5670245) (not b!5670270) (not b!5670257) (not b!5670265) (not start!585512) (not setNonEmpty!37895) (not b!5670252) (not b!5670255) (not b!5670249) tp_is_empty!40567 (not b!5670263) (not b!5670264))
(check-sat)
(get-model)

(declare-fun b!5670284 () Bool)

(assert (=> b!5670284 true))

(declare-fun bs!1320947 () Bool)

(declare-fun b!5670286 () Bool)

(assert (= bs!1320947 (and b!5670286 b!5670284)))

(declare-fun lt!2268162 () Int)

(declare-fun lt!2268161 () Int)

(declare-fun lambda!305110 () Int)

(declare-fun lambda!305109 () Int)

(assert (=> bs!1320947 (= (= lt!2268161 lt!2268162) (= lambda!305110 lambda!305109))))

(assert (=> b!5670286 true))

(declare-fun d!1789992 () Bool)

(declare-fun e!3490619 () Bool)

(assert (=> d!1789992 e!3490619))

(declare-fun res!2396186 () Bool)

(assert (=> d!1789992 (=> (not res!2396186) (not e!3490619))))

(assert (=> d!1789992 (= res!2396186 (>= lt!2268161 0))))

(declare-fun e!3490620 () Int)

(assert (=> d!1789992 (= lt!2268161 e!3490620)))

(declare-fun c!997240 () Bool)

(assert (=> d!1789992 (= c!997240 ((_ is Cons!63148) lt!2268150))))

(assert (=> d!1789992 (= (zipperDepth!220 lt!2268150) lt!2268161)))

(assert (=> b!5670284 (= e!3490620 lt!2268162)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!124 (Context!10082) Int)

(assert (=> b!5670284 (= lt!2268162 (maxBigInt!0 (contextDepth!124 (h!69596 lt!2268150)) (zipperDepth!220 (t!376578 lt!2268150))))))

(declare-fun lambda!305108 () Int)

(declare-fun lt!2268163 () Unit!156160)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!114 (List!63272 Int Int Int) Unit!156160)

(assert (=> b!5670284 (= lt!2268163 (lemmaForallContextDepthBiggerThanTransitive!114 (t!376578 lt!2268150) lt!2268162 (zipperDepth!220 (t!376578 lt!2268150)) lambda!305108))))

(declare-fun forall!14809 (List!63272 Int) Bool)

(assert (=> b!5670284 (forall!14809 (t!376578 lt!2268150) lambda!305109)))

(declare-fun lt!2268164 () Unit!156160)

(assert (=> b!5670284 (= lt!2268164 lt!2268163)))

(declare-fun b!5670285 () Bool)

(assert (=> b!5670285 (= e!3490620 0)))

(assert (=> b!5670286 (= e!3490619 (forall!14809 lt!2268150 lambda!305110))))

(assert (= (and d!1789992 c!997240) b!5670284))

(assert (= (and d!1789992 (not c!997240)) b!5670285))

(assert (= (and d!1789992 res!2396186) b!5670286))

(declare-fun m!6631570 () Bool)

(assert (=> b!5670284 m!6631570))

(declare-fun m!6631572 () Bool)

(assert (=> b!5670284 m!6631572))

(assert (=> b!5670284 m!6631570))

(assert (=> b!5670284 m!6631572))

(declare-fun m!6631574 () Bool)

(assert (=> b!5670284 m!6631574))

(declare-fun m!6631576 () Bool)

(assert (=> b!5670284 m!6631576))

(assert (=> b!5670284 m!6631572))

(declare-fun m!6631578 () Bool)

(assert (=> b!5670284 m!6631578))

(declare-fun m!6631580 () Bool)

(assert (=> b!5670286 m!6631580))

(assert (=> b!5670264 d!1789992))

(declare-fun bs!1320948 () Bool)

(declare-fun b!5670289 () Bool)

(assert (= bs!1320948 (and b!5670289 b!5670284)))

(declare-fun lambda!305111 () Int)

(assert (=> bs!1320948 (= lambda!305111 lambda!305108)))

(declare-fun lambda!305112 () Int)

(declare-fun lt!2268166 () Int)

(assert (=> bs!1320948 (= (= lt!2268166 lt!2268162) (= lambda!305112 lambda!305109))))

(declare-fun bs!1320949 () Bool)

(assert (= bs!1320949 (and b!5670289 b!5670286)))

(assert (=> bs!1320949 (= (= lt!2268166 lt!2268161) (= lambda!305112 lambda!305110))))

(assert (=> b!5670289 true))

(declare-fun bs!1320950 () Bool)

(declare-fun b!5670291 () Bool)

(assert (= bs!1320950 (and b!5670291 b!5670284)))

(declare-fun lambda!305113 () Int)

(declare-fun lt!2268165 () Int)

(assert (=> bs!1320950 (= (= lt!2268165 lt!2268162) (= lambda!305113 lambda!305109))))

(declare-fun bs!1320951 () Bool)

(assert (= bs!1320951 (and b!5670291 b!5670286)))

(assert (=> bs!1320951 (= (= lt!2268165 lt!2268161) (= lambda!305113 lambda!305110))))

(declare-fun bs!1320952 () Bool)

(assert (= bs!1320952 (and b!5670291 b!5670289)))

(assert (=> bs!1320952 (= (= lt!2268165 lt!2268166) (= lambda!305113 lambda!305112))))

(assert (=> b!5670291 true))

(declare-fun d!1789998 () Bool)

(declare-fun e!3490621 () Bool)

(assert (=> d!1789998 e!3490621))

(declare-fun res!2396187 () Bool)

(assert (=> d!1789998 (=> (not res!2396187) (not e!3490621))))

(assert (=> d!1789998 (= res!2396187 (>= lt!2268165 0))))

(declare-fun e!3490622 () Int)

(assert (=> d!1789998 (= lt!2268165 e!3490622)))

(declare-fun c!997241 () Bool)

(assert (=> d!1789998 (= c!997241 ((_ is Cons!63148) zl!343))))

(assert (=> d!1789998 (= (zipperDepth!220 zl!343) lt!2268165)))

(assert (=> b!5670289 (= e!3490622 lt!2268166)))

(assert (=> b!5670289 (= lt!2268166 (maxBigInt!0 (contextDepth!124 (h!69596 zl!343)) (zipperDepth!220 (t!376578 zl!343))))))

(declare-fun lt!2268167 () Unit!156160)

(assert (=> b!5670289 (= lt!2268167 (lemmaForallContextDepthBiggerThanTransitive!114 (t!376578 zl!343) lt!2268166 (zipperDepth!220 (t!376578 zl!343)) lambda!305111))))

(assert (=> b!5670289 (forall!14809 (t!376578 zl!343) lambda!305112)))

(declare-fun lt!2268168 () Unit!156160)

(assert (=> b!5670289 (= lt!2268168 lt!2268167)))

(declare-fun b!5670290 () Bool)

(assert (=> b!5670290 (= e!3490622 0)))

(assert (=> b!5670291 (= e!3490621 (forall!14809 zl!343 lambda!305113))))

(assert (= (and d!1789998 c!997241) b!5670289))

(assert (= (and d!1789998 (not c!997241)) b!5670290))

(assert (= (and d!1789998 res!2396187) b!5670291))

(declare-fun m!6631582 () Bool)

(assert (=> b!5670289 m!6631582))

(declare-fun m!6631584 () Bool)

(assert (=> b!5670289 m!6631584))

(assert (=> b!5670289 m!6631582))

(assert (=> b!5670289 m!6631584))

(declare-fun m!6631586 () Bool)

(assert (=> b!5670289 m!6631586))

(declare-fun m!6631588 () Bool)

(assert (=> b!5670289 m!6631588))

(assert (=> b!5670289 m!6631584))

(declare-fun m!6631590 () Bool)

(assert (=> b!5670289 m!6631590))

(declare-fun m!6631592 () Bool)

(assert (=> b!5670291 m!6631592))

(assert (=> b!5670264 d!1789998))

(declare-fun d!1790000 () Bool)

(declare-fun e!3490633 () Bool)

(assert (=> d!1790000 (= (matchZipper!1795 ((_ map or) lt!2268133 lt!2268136) (t!376577 s!2326)) e!3490633)))

(declare-fun res!2396194 () Bool)

(assert (=> d!1790000 (=> res!2396194 e!3490633)))

(assert (=> d!1790000 (= res!2396194 (matchZipper!1795 lt!2268133 (t!376577 s!2326)))))

(declare-fun lt!2268187 () Unit!156160)

(declare-fun choose!42892 ((InoxSet Context!10082) (InoxSet Context!10082) List!63271) Unit!156160)

(assert (=> d!1790000 (= lt!2268187 (choose!42892 lt!2268133 lt!2268136 (t!376577 s!2326)))))

(assert (=> d!1790000 (= (lemmaZipperConcatMatchesSameAsBothZippers!682 lt!2268133 lt!2268136 (t!376577 s!2326)) lt!2268187)))

(declare-fun b!5670308 () Bool)

(assert (=> b!5670308 (= e!3490633 (matchZipper!1795 lt!2268136 (t!376577 s!2326)))))

(assert (= (and d!1790000 (not res!2396194)) b!5670308))

(assert (=> d!1790000 m!6631436))

(assert (=> d!1790000 m!6631434))

(declare-fun m!6631618 () Bool)

(assert (=> d!1790000 m!6631618))

(assert (=> b!5670308 m!6631460))

(assert (=> b!5670263 d!1790000))

(declare-fun d!1790006 () Bool)

(declare-fun c!997266 () Bool)

(declare-fun isEmpty!35001 (List!63271) Bool)

(assert (=> d!1790006 (= c!997266 (isEmpty!35001 (t!376577 s!2326)))))

(declare-fun e!3490654 () Bool)

(assert (=> d!1790006 (= (matchZipper!1795 lt!2268133 (t!376577 s!2326)) e!3490654)))

(declare-fun b!5670343 () Bool)

(declare-fun nullableZipper!1629 ((InoxSet Context!10082)) Bool)

(assert (=> b!5670343 (= e!3490654 (nullableZipper!1629 lt!2268133))))

(declare-fun b!5670344 () Bool)

(declare-fun head!12038 (List!63271) C!31584)

(declare-fun tail!11133 (List!63271) List!63271)

(assert (=> b!5670344 (= e!3490654 (matchZipper!1795 (derivationStepZipper!1742 lt!2268133 (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))))))

(assert (= (and d!1790006 c!997266) b!5670343))

(assert (= (and d!1790006 (not c!997266)) b!5670344))

(declare-fun m!6631642 () Bool)

(assert (=> d!1790006 m!6631642))

(declare-fun m!6631644 () Bool)

(assert (=> b!5670343 m!6631644))

(declare-fun m!6631646 () Bool)

(assert (=> b!5670344 m!6631646))

(assert (=> b!5670344 m!6631646))

(declare-fun m!6631648 () Bool)

(assert (=> b!5670344 m!6631648))

(declare-fun m!6631650 () Bool)

(assert (=> b!5670344 m!6631650))

(assert (=> b!5670344 m!6631648))

(assert (=> b!5670344 m!6631650))

(declare-fun m!6631652 () Bool)

(assert (=> b!5670344 m!6631652))

(assert (=> b!5670263 d!1790006))

(declare-fun d!1790012 () Bool)

(declare-fun c!997267 () Bool)

(assert (=> d!1790012 (= c!997267 (isEmpty!35001 (t!376577 s!2326)))))

(declare-fun e!3490655 () Bool)

(assert (=> d!1790012 (= (matchZipper!1795 ((_ map or) lt!2268133 lt!2268136) (t!376577 s!2326)) e!3490655)))

(declare-fun b!5670345 () Bool)

(assert (=> b!5670345 (= e!3490655 (nullableZipper!1629 ((_ map or) lt!2268133 lt!2268136)))))

(declare-fun b!5670346 () Bool)

(assert (=> b!5670346 (= e!3490655 (matchZipper!1795 (derivationStepZipper!1742 ((_ map or) lt!2268133 lt!2268136) (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))))))

(assert (= (and d!1790012 c!997267) b!5670345))

(assert (= (and d!1790012 (not c!997267)) b!5670346))

(assert (=> d!1790012 m!6631642))

(declare-fun m!6631654 () Bool)

(assert (=> b!5670345 m!6631654))

(assert (=> b!5670346 m!6631646))

(assert (=> b!5670346 m!6631646))

(declare-fun m!6631656 () Bool)

(assert (=> b!5670346 m!6631656))

(assert (=> b!5670346 m!6631650))

(assert (=> b!5670346 m!6631656))

(assert (=> b!5670346 m!6631650))

(declare-fun m!6631658 () Bool)

(assert (=> b!5670346 m!6631658))

(assert (=> b!5670263 d!1790012))

(declare-fun d!1790014 () Bool)

(declare-fun c!997268 () Bool)

(assert (=> d!1790014 (= c!997268 (isEmpty!35001 (t!376577 s!2326)))))

(declare-fun e!3490656 () Bool)

(assert (=> d!1790014 (= (matchZipper!1795 lt!2268130 (t!376577 s!2326)) e!3490656)))

(declare-fun b!5670347 () Bool)

(assert (=> b!5670347 (= e!3490656 (nullableZipper!1629 lt!2268130))))

(declare-fun b!5670348 () Bool)

(assert (=> b!5670348 (= e!3490656 (matchZipper!1795 (derivationStepZipper!1742 lt!2268130 (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))))))

(assert (= (and d!1790014 c!997268) b!5670347))

(assert (= (and d!1790014 (not c!997268)) b!5670348))

(assert (=> d!1790014 m!6631642))

(declare-fun m!6631660 () Bool)

(assert (=> b!5670347 m!6631660))

(assert (=> b!5670348 m!6631646))

(assert (=> b!5670348 m!6631646))

(declare-fun m!6631662 () Bool)

(assert (=> b!5670348 m!6631662))

(assert (=> b!5670348 m!6631650))

(assert (=> b!5670348 m!6631662))

(assert (=> b!5670348 m!6631650))

(declare-fun m!6631664 () Bool)

(assert (=> b!5670348 m!6631664))

(assert (=> b!5670261 d!1790014))

(declare-fun b!5670421 () Bool)

(declare-fun res!2396237 () Bool)

(declare-fun e!3490699 () Bool)

(assert (=> b!5670421 (=> (not res!2396237) (not e!3490699))))

(declare-fun lt!2268207 () Option!15666)

(declare-fun get!21758 (Option!15666) tuple2!65508)

(assert (=> b!5670421 (= res!2396237 (matchR!7842 (regTwo!31826 r!7292) (_2!36057 (get!21758 lt!2268207))))))

(declare-fun b!5670422 () Bool)

(declare-fun e!3490698 () Option!15666)

(declare-fun e!3490697 () Option!15666)

(assert (=> b!5670422 (= e!3490698 e!3490697)))

(declare-fun c!997288 () Bool)

(assert (=> b!5670422 (= c!997288 ((_ is Nil!63147) s!2326))))

(declare-fun b!5670423 () Bool)

(assert (=> b!5670423 (= e!3490697 None!15665)))

(declare-fun b!5670424 () Bool)

(declare-fun e!3490695 () Bool)

(assert (=> b!5670424 (= e!3490695 (matchR!7842 (regTwo!31826 r!7292) s!2326))))

(declare-fun b!5670425 () Bool)

(declare-fun ++!13862 (List!63271 List!63271) List!63271)

(assert (=> b!5670425 (= e!3490699 (= (++!13862 (_1!36057 (get!21758 lt!2268207)) (_2!36057 (get!21758 lt!2268207))) s!2326))))

(declare-fun d!1790016 () Bool)

(declare-fun e!3490696 () Bool)

(assert (=> d!1790016 e!3490696))

(declare-fun res!2396241 () Bool)

(assert (=> d!1790016 (=> res!2396241 e!3490696)))

(assert (=> d!1790016 (= res!2396241 e!3490699)))

(declare-fun res!2396238 () Bool)

(assert (=> d!1790016 (=> (not res!2396238) (not e!3490699))))

(assert (=> d!1790016 (= res!2396238 (isDefined!12369 lt!2268207))))

(assert (=> d!1790016 (= lt!2268207 e!3490698)))

(declare-fun c!997287 () Bool)

(assert (=> d!1790016 (= c!997287 e!3490695)))

(declare-fun res!2396240 () Bool)

(assert (=> d!1790016 (=> (not res!2396240) (not e!3490695))))

(assert (=> d!1790016 (= res!2396240 (matchR!7842 (regOne!31826 r!7292) Nil!63147))))

(assert (=> d!1790016 (validRegex!7393 (regOne!31826 r!7292))))

(assert (=> d!1790016 (= (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) Nil!63147 s!2326 s!2326) lt!2268207)))

(declare-fun b!5670426 () Bool)

(assert (=> b!5670426 (= e!3490696 (not (isDefined!12369 lt!2268207)))))

(declare-fun b!5670427 () Bool)

(assert (=> b!5670427 (= e!3490698 (Some!15665 (tuple2!65509 Nil!63147 s!2326)))))

(declare-fun b!5670428 () Bool)

(declare-fun res!2396239 () Bool)

(assert (=> b!5670428 (=> (not res!2396239) (not e!3490699))))

(assert (=> b!5670428 (= res!2396239 (matchR!7842 (regOne!31826 r!7292) (_1!36057 (get!21758 lt!2268207))))))

(declare-fun b!5670429 () Bool)

(declare-fun lt!2268208 () Unit!156160)

(declare-fun lt!2268206 () Unit!156160)

(assert (=> b!5670429 (= lt!2268208 lt!2268206)))

(assert (=> b!5670429 (= (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2031 (List!63271 C!31584 List!63271 List!63271) Unit!156160)

(assert (=> b!5670429 (= lt!2268206 (lemmaMoveElementToOtherListKeepsConcatEq!2031 Nil!63147 (h!69595 s!2326) (t!376577 s!2326) s!2326))))

(assert (=> b!5670429 (= e!3490697 (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326) s!2326))))

(assert (= (and d!1790016 res!2396240) b!5670424))

(assert (= (and d!1790016 c!997287) b!5670427))

(assert (= (and d!1790016 (not c!997287)) b!5670422))

(assert (= (and b!5670422 c!997288) b!5670423))

(assert (= (and b!5670422 (not c!997288)) b!5670429))

(assert (= (and d!1790016 res!2396238) b!5670428))

(assert (= (and b!5670428 res!2396239) b!5670421))

(assert (= (and b!5670421 res!2396237) b!5670425))

(assert (= (and d!1790016 (not res!2396241)) b!5670426))

(declare-fun m!6631716 () Bool)

(assert (=> b!5670429 m!6631716))

(assert (=> b!5670429 m!6631716))

(declare-fun m!6631718 () Bool)

(assert (=> b!5670429 m!6631718))

(declare-fun m!6631720 () Bool)

(assert (=> b!5670429 m!6631720))

(assert (=> b!5670429 m!6631716))

(declare-fun m!6631722 () Bool)

(assert (=> b!5670429 m!6631722))

(declare-fun m!6631724 () Bool)

(assert (=> b!5670421 m!6631724))

(declare-fun m!6631726 () Bool)

(assert (=> b!5670421 m!6631726))

(assert (=> b!5670425 m!6631724))

(declare-fun m!6631728 () Bool)

(assert (=> b!5670425 m!6631728))

(declare-fun m!6631730 () Bool)

(assert (=> d!1790016 m!6631730))

(declare-fun m!6631732 () Bool)

(assert (=> d!1790016 m!6631732))

(declare-fun m!6631734 () Bool)

(assert (=> d!1790016 m!6631734))

(assert (=> b!5670426 m!6631730))

(assert (=> b!5670428 m!6631724))

(declare-fun m!6631736 () Bool)

(assert (=> b!5670428 m!6631736))

(declare-fun m!6631738 () Bool)

(assert (=> b!5670424 m!6631738))

(assert (=> b!5670241 d!1790016))

(declare-fun d!1790030 () Bool)

(declare-fun choose!42894 (Int) Bool)

(assert (=> d!1790030 (= (Exists!2757 lambda!305096) (choose!42894 lambda!305096))))

(declare-fun bs!1320966 () Bool)

(assert (= bs!1320966 d!1790030))

(declare-fun m!6631750 () Bool)

(assert (=> bs!1320966 m!6631750))

(assert (=> b!5670241 d!1790030))

(declare-fun bs!1320968 () Bool)

(declare-fun d!1790034 () Bool)

(assert (= bs!1320968 (and d!1790034 b!5670249)))

(declare-fun lambda!305143 () Int)

(assert (=> bs!1320968 (not (= lambda!305143 lambda!305101))))

(declare-fun bs!1320970 () Bool)

(assert (= bs!1320970 (and d!1790034 b!5670241)))

(assert (=> bs!1320970 (= lambda!305143 lambda!305095)))

(assert (=> bs!1320968 (not (= lambda!305143 lambda!305099))))

(assert (=> bs!1320968 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305143 lambda!305098))))

(assert (=> bs!1320968 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305143 lambda!305100))))

(assert (=> bs!1320970 (not (= lambda!305143 lambda!305096))))

(assert (=> d!1790034 true))

(assert (=> d!1790034 true))

(assert (=> d!1790034 true))

(assert (=> d!1790034 (= (isDefined!12369 (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) Nil!63147 s!2326 s!2326)) (Exists!2757 lambda!305143))))

(declare-fun lt!2268212 () Unit!156160)

(declare-fun choose!42895 (Regex!15657 Regex!15657 List!63271) Unit!156160)

(assert (=> d!1790034 (= lt!2268212 (choose!42895 (regOne!31826 r!7292) (regTwo!31826 r!7292) s!2326))))

(assert (=> d!1790034 (validRegex!7393 (regOne!31826 r!7292))))

(assert (=> d!1790034 (= (lemmaFindConcatSeparationEquivalentToExists!1844 (regOne!31826 r!7292) (regTwo!31826 r!7292) s!2326) lt!2268212)))

(declare-fun bs!1320975 () Bool)

(assert (= bs!1320975 d!1790034))

(declare-fun m!6631752 () Bool)

(assert (=> bs!1320975 m!6631752))

(assert (=> bs!1320975 m!6631482))

(assert (=> bs!1320975 m!6631484))

(assert (=> bs!1320975 m!6631734))

(declare-fun m!6631754 () Bool)

(assert (=> bs!1320975 m!6631754))

(assert (=> bs!1320975 m!6631482))

(assert (=> b!5670241 d!1790034))

(declare-fun d!1790036 () Bool)

(assert (=> d!1790036 (= (Exists!2757 lambda!305095) (choose!42894 lambda!305095))))

(declare-fun bs!1320977 () Bool)

(assert (= bs!1320977 d!1790036))

(declare-fun m!6631756 () Bool)

(assert (=> bs!1320977 m!6631756))

(assert (=> b!5670241 d!1790036))

(declare-fun bs!1320998 () Bool)

(declare-fun d!1790038 () Bool)

(assert (= bs!1320998 (and d!1790038 b!5670249)))

(declare-fun lambda!305155 () Int)

(assert (=> bs!1320998 (not (= lambda!305155 lambda!305101))))

(declare-fun bs!1320999 () Bool)

(assert (= bs!1320999 (and d!1790038 d!1790034)))

(assert (=> bs!1320999 (= lambda!305155 lambda!305143)))

(declare-fun bs!1321002 () Bool)

(assert (= bs!1321002 (and d!1790038 b!5670241)))

(assert (=> bs!1321002 (= lambda!305155 lambda!305095)))

(assert (=> bs!1320998 (not (= lambda!305155 lambda!305099))))

(assert (=> bs!1320998 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305155 lambda!305098))))

(assert (=> bs!1320998 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305155 lambda!305100))))

(assert (=> bs!1321002 (not (= lambda!305155 lambda!305096))))

(assert (=> d!1790038 true))

(assert (=> d!1790038 true))

(assert (=> d!1790038 true))

(declare-fun lambda!305156 () Int)

(assert (=> bs!1320998 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305156 lambda!305101))))

(assert (=> bs!1320999 (not (= lambda!305156 lambda!305143))))

(assert (=> bs!1321002 (not (= lambda!305156 lambda!305095))))

(assert (=> bs!1320998 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305156 lambda!305099))))

(assert (=> bs!1320998 (not (= lambda!305156 lambda!305098))))

(assert (=> bs!1320998 (not (= lambda!305156 lambda!305100))))

(declare-fun bs!1321006 () Bool)

(assert (= bs!1321006 d!1790038))

(assert (=> bs!1321006 (not (= lambda!305156 lambda!305155))))

(assert (=> bs!1321002 (= lambda!305156 lambda!305096)))

(assert (=> d!1790038 true))

(assert (=> d!1790038 true))

(assert (=> d!1790038 true))

(assert (=> d!1790038 (= (Exists!2757 lambda!305155) (Exists!2757 lambda!305156))))

(declare-fun lt!2268223 () Unit!156160)

(declare-fun choose!42896 (Regex!15657 Regex!15657 List!63271) Unit!156160)

(assert (=> d!1790038 (= lt!2268223 (choose!42896 (regOne!31826 r!7292) (regTwo!31826 r!7292) s!2326))))

(assert (=> d!1790038 (validRegex!7393 (regOne!31826 r!7292))))

(assert (=> d!1790038 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1386 (regOne!31826 r!7292) (regTwo!31826 r!7292) s!2326) lt!2268223)))

(declare-fun m!6631800 () Bool)

(assert (=> bs!1321006 m!6631800))

(declare-fun m!6631802 () Bool)

(assert (=> bs!1321006 m!6631802))

(declare-fun m!6631804 () Bool)

(assert (=> bs!1321006 m!6631804))

(assert (=> bs!1321006 m!6631734))

(assert (=> b!5670241 d!1790038))

(declare-fun d!1790054 () Bool)

(declare-fun isEmpty!35002 (Option!15666) Bool)

(assert (=> d!1790054 (= (isDefined!12369 (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) Nil!63147 s!2326 s!2326)) (not (isEmpty!35002 (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) Nil!63147 s!2326 s!2326))))))

(declare-fun bs!1321008 () Bool)

(assert (= bs!1321008 d!1790054))

(assert (=> bs!1321008 m!6631482))

(declare-fun m!6631810 () Bool)

(assert (=> bs!1321008 m!6631810))

(assert (=> b!5670241 d!1790054))

(declare-fun d!1790056 () Bool)

(assert (=> d!1790056 (= (isEmpty!34997 (t!376578 zl!343)) ((_ is Nil!63148) (t!376578 zl!343)))))

(assert (=> b!5670240 d!1790056))

(declare-fun d!1790060 () Bool)

(declare-fun lt!2268227 () Int)

(assert (=> d!1790060 (>= lt!2268227 0)))

(declare-fun e!3490748 () Int)

(assert (=> d!1790060 (= lt!2268227 e!3490748)))

(declare-fun c!997310 () Bool)

(assert (=> d!1790060 (= c!997310 ((_ is Cons!63148) lt!2268150))))

(assert (=> d!1790060 (= (zipperDepthTotal!254 lt!2268150) lt!2268227)))

(declare-fun b!5670517 () Bool)

(assert (=> b!5670517 (= e!3490748 (+ (contextDepthTotal!232 (h!69596 lt!2268150)) (zipperDepthTotal!254 (t!376578 lt!2268150))))))

(declare-fun b!5670518 () Bool)

(assert (=> b!5670518 (= e!3490748 0)))

(assert (= (and d!1790060 c!997310) b!5670517))

(assert (= (and d!1790060 (not c!997310)) b!5670518))

(declare-fun m!6631814 () Bool)

(assert (=> b!5670517 m!6631814))

(declare-fun m!6631816 () Bool)

(assert (=> b!5670517 m!6631816))

(assert (=> b!5670269 d!1790060))

(declare-fun d!1790062 () Bool)

(declare-fun lt!2268228 () Int)

(assert (=> d!1790062 (>= lt!2268228 0)))

(declare-fun e!3490749 () Int)

(assert (=> d!1790062 (= lt!2268228 e!3490749)))

(declare-fun c!997311 () Bool)

(assert (=> d!1790062 (= c!997311 ((_ is Cons!63148) zl!343))))

(assert (=> d!1790062 (= (zipperDepthTotal!254 zl!343) lt!2268228)))

(declare-fun b!5670519 () Bool)

(assert (=> b!5670519 (= e!3490749 (+ (contextDepthTotal!232 (h!69596 zl!343)) (zipperDepthTotal!254 (t!376578 zl!343))))))

(declare-fun b!5670520 () Bool)

(assert (=> b!5670520 (= e!3490749 0)))

(assert (= (and d!1790062 c!997311) b!5670519))

(assert (= (and d!1790062 (not c!997311)) b!5670520))

(assert (=> b!5670519 m!6631474))

(declare-fun m!6631818 () Bool)

(assert (=> b!5670519 m!6631818))

(assert (=> b!5670269 d!1790062))

(declare-fun d!1790064 () Bool)

(assert (=> d!1790064 (= (matchR!7842 lt!2268141 s!2326) (matchRSpec!2760 lt!2268141 s!2326))))

(declare-fun lt!2268231 () Unit!156160)

(declare-fun choose!42897 (Regex!15657 List!63271) Unit!156160)

(assert (=> d!1790064 (= lt!2268231 (choose!42897 lt!2268141 s!2326))))

(assert (=> d!1790064 (validRegex!7393 lt!2268141)))

(assert (=> d!1790064 (= (mainMatchTheorem!2760 lt!2268141 s!2326) lt!2268231)))

(declare-fun bs!1321009 () Bool)

(assert (= bs!1321009 d!1790064))

(assert (=> bs!1321009 m!6631520))

(assert (=> bs!1321009 m!6631532))

(declare-fun m!6631820 () Bool)

(assert (=> bs!1321009 m!6631820))

(declare-fun m!6631822 () Bool)

(assert (=> bs!1321009 m!6631822))

(assert (=> b!5670249 d!1790064))

(declare-fun d!1790066 () Bool)

(assert (=> d!1790066 (= (matchR!7842 lt!2268120 s!2326) (matchRSpec!2760 lt!2268120 s!2326))))

(declare-fun lt!2268232 () Unit!156160)

(assert (=> d!1790066 (= lt!2268232 (choose!42897 lt!2268120 s!2326))))

(assert (=> d!1790066 (validRegex!7393 lt!2268120)))

(assert (=> d!1790066 (= (mainMatchTheorem!2760 lt!2268120 s!2326) lt!2268232)))

(declare-fun bs!1321010 () Bool)

(assert (= bs!1321010 d!1790066))

(assert (=> bs!1321010 m!6631534))

(assert (=> bs!1321010 m!6631558))

(declare-fun m!6631824 () Bool)

(assert (=> bs!1321010 m!6631824))

(declare-fun m!6631826 () Bool)

(assert (=> bs!1321010 m!6631826))

(assert (=> b!5670249 d!1790066))

(declare-fun b!5670585 () Bool)

(declare-fun res!2396323 () Bool)

(declare-fun e!3490788 () Bool)

(assert (=> b!5670585 (=> (not res!2396323) (not e!3490788))))

(declare-fun call!430080 () Bool)

(assert (=> b!5670585 (= res!2396323 (not call!430080))))

(declare-fun b!5670586 () Bool)

(declare-fun e!3490786 () Bool)

(declare-fun e!3490787 () Bool)

(assert (=> b!5670586 (= e!3490786 e!3490787)))

(declare-fun c!997326 () Bool)

(assert (=> b!5670586 (= c!997326 ((_ is EmptyLang!15657) lt!2268120))))

(declare-fun b!5670587 () Bool)

(declare-fun e!3490784 () Bool)

(declare-fun derivativeStep!4482 (Regex!15657 C!31584) Regex!15657)

(assert (=> b!5670587 (= e!3490784 (matchR!7842 (derivativeStep!4482 lt!2268120 (head!12038 s!2326)) (tail!11133 s!2326)))))

(declare-fun b!5670588 () Bool)

(assert (=> b!5670588 (= e!3490784 (nullable!5689 lt!2268120))))

(declare-fun bm!430075 () Bool)

(assert (=> bm!430075 (= call!430080 (isEmpty!35001 s!2326))))

(declare-fun b!5670589 () Bool)

(declare-fun res!2396324 () Bool)

(assert (=> b!5670589 (=> (not res!2396324) (not e!3490788))))

(assert (=> b!5670589 (= res!2396324 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun b!5670590 () Bool)

(declare-fun e!3490789 () Bool)

(declare-fun e!3490785 () Bool)

(assert (=> b!5670590 (= e!3490789 e!3490785)))

(declare-fun res!2396328 () Bool)

(assert (=> b!5670590 (=> (not res!2396328) (not e!3490785))))

(declare-fun lt!2268247 () Bool)

(assert (=> b!5670590 (= res!2396328 (not lt!2268247))))

(declare-fun b!5670591 () Bool)

(declare-fun e!3490790 () Bool)

(assert (=> b!5670591 (= e!3490785 e!3490790)))

(declare-fun res!2396326 () Bool)

(assert (=> b!5670591 (=> res!2396326 e!3490790)))

(assert (=> b!5670591 (= res!2396326 call!430080)))

(declare-fun d!1790068 () Bool)

(assert (=> d!1790068 e!3490786))

(declare-fun c!997327 () Bool)

(assert (=> d!1790068 (= c!997327 ((_ is EmptyExpr!15657) lt!2268120))))

(assert (=> d!1790068 (= lt!2268247 e!3490784)))

(declare-fun c!997328 () Bool)

(assert (=> d!1790068 (= c!997328 (isEmpty!35001 s!2326))))

(assert (=> d!1790068 (validRegex!7393 lt!2268120)))

(assert (=> d!1790068 (= (matchR!7842 lt!2268120 s!2326) lt!2268247)))

(declare-fun b!5670592 () Bool)

(assert (=> b!5670592 (= e!3490790 (not (= (head!12038 s!2326) (c!997231 lt!2268120))))))

(declare-fun b!5670593 () Bool)

(declare-fun res!2396325 () Bool)

(assert (=> b!5670593 (=> res!2396325 e!3490789)))

(assert (=> b!5670593 (= res!2396325 e!3490788)))

(declare-fun res!2396327 () Bool)

(assert (=> b!5670593 (=> (not res!2396327) (not e!3490788))))

(assert (=> b!5670593 (= res!2396327 lt!2268247)))

(declare-fun b!5670594 () Bool)

(assert (=> b!5670594 (= e!3490787 (not lt!2268247))))

(declare-fun b!5670595 () Bool)

(assert (=> b!5670595 (= e!3490786 (= lt!2268247 call!430080))))

(declare-fun b!5670596 () Bool)

(declare-fun res!2396330 () Bool)

(assert (=> b!5670596 (=> res!2396330 e!3490790)))

(assert (=> b!5670596 (= res!2396330 (not (isEmpty!35001 (tail!11133 s!2326))))))

(declare-fun b!5670597 () Bool)

(assert (=> b!5670597 (= e!3490788 (= (head!12038 s!2326) (c!997231 lt!2268120)))))

(declare-fun b!5670598 () Bool)

(declare-fun res!2396329 () Bool)

(assert (=> b!5670598 (=> res!2396329 e!3490789)))

(assert (=> b!5670598 (= res!2396329 (not ((_ is ElementMatch!15657) lt!2268120)))))

(assert (=> b!5670598 (= e!3490787 e!3490789)))

(assert (= (and d!1790068 c!997328) b!5670588))

(assert (= (and d!1790068 (not c!997328)) b!5670587))

(assert (= (and d!1790068 c!997327) b!5670595))

(assert (= (and d!1790068 (not c!997327)) b!5670586))

(assert (= (and b!5670586 c!997326) b!5670594))

(assert (= (and b!5670586 (not c!997326)) b!5670598))

(assert (= (and b!5670598 (not res!2396329)) b!5670593))

(assert (= (and b!5670593 res!2396327) b!5670585))

(assert (= (and b!5670585 res!2396323) b!5670589))

(assert (= (and b!5670589 res!2396324) b!5670597))

(assert (= (and b!5670593 (not res!2396325)) b!5670590))

(assert (= (and b!5670590 res!2396328) b!5670591))

(assert (= (and b!5670591 (not res!2396326)) b!5670596))

(assert (= (and b!5670596 (not res!2396330)) b!5670592))

(assert (= (or b!5670595 b!5670585 b!5670591) bm!430075))

(declare-fun m!6631868 () Bool)

(assert (=> b!5670589 m!6631868))

(assert (=> b!5670589 m!6631868))

(declare-fun m!6631870 () Bool)

(assert (=> b!5670589 m!6631870))

(assert (=> b!5670596 m!6631868))

(assert (=> b!5670596 m!6631868))

(assert (=> b!5670596 m!6631870))

(declare-fun m!6631874 () Bool)

(assert (=> d!1790068 m!6631874))

(assert (=> d!1790068 m!6631826))

(declare-fun m!6631876 () Bool)

(assert (=> b!5670597 m!6631876))

(assert (=> b!5670587 m!6631876))

(assert (=> b!5670587 m!6631876))

(declare-fun m!6631878 () Bool)

(assert (=> b!5670587 m!6631878))

(assert (=> b!5670587 m!6631868))

(assert (=> b!5670587 m!6631878))

(assert (=> b!5670587 m!6631868))

(declare-fun m!6631880 () Bool)

(assert (=> b!5670587 m!6631880))

(declare-fun m!6631882 () Bool)

(assert (=> b!5670588 m!6631882))

(assert (=> b!5670592 m!6631876))

(assert (=> bm!430075 m!6631874))

(assert (=> b!5670249 d!1790068))

(declare-fun bs!1321014 () Bool)

(declare-fun d!1790080 () Bool)

(assert (= bs!1321014 (and d!1790080 b!5670249)))

(declare-fun lambda!305158 () Int)

(assert (=> bs!1321014 (not (= lambda!305158 lambda!305101))))

(declare-fun bs!1321016 () Bool)

(assert (= bs!1321016 (and d!1790080 d!1790038)))

(assert (=> bs!1321016 (not (= lambda!305158 lambda!305156))))

(declare-fun bs!1321018 () Bool)

(assert (= bs!1321018 (and d!1790080 d!1790034)))

(assert (=> bs!1321018 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305158 lambda!305143))))

(declare-fun bs!1321019 () Bool)

(assert (= bs!1321019 (and d!1790080 b!5670241)))

(assert (=> bs!1321019 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305158 lambda!305095))))

(assert (=> bs!1321014 (not (= lambda!305158 lambda!305099))))

(assert (=> bs!1321014 (= lambda!305158 lambda!305098)))

(assert (=> bs!1321014 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305158 lambda!305100))))

(assert (=> bs!1321016 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305158 lambda!305155))))

(assert (=> bs!1321019 (not (= lambda!305158 lambda!305096))))

(assert (=> d!1790080 true))

(assert (=> d!1790080 true))

(assert (=> d!1790080 true))

(declare-fun lambda!305160 () Int)

(assert (=> bs!1321014 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305160 lambda!305101))))

(assert (=> bs!1321016 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305160 lambda!305156))))

(assert (=> bs!1321018 (not (= lambda!305160 lambda!305143))))

(assert (=> bs!1321019 (not (= lambda!305160 lambda!305095))))

(assert (=> bs!1321014 (= lambda!305160 lambda!305099)))

(assert (=> bs!1321014 (not (= lambda!305160 lambda!305098))))

(assert (=> bs!1321014 (not (= lambda!305160 lambda!305100))))

(assert (=> bs!1321016 (not (= lambda!305160 lambda!305155))))

(assert (=> bs!1321019 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305160 lambda!305096))))

(declare-fun bs!1321028 () Bool)

(assert (= bs!1321028 d!1790080))

(assert (=> bs!1321028 (not (= lambda!305160 lambda!305158))))

(assert (=> d!1790080 true))

(assert (=> d!1790080 true))

(assert (=> d!1790080 true))

(assert (=> d!1790080 (= (Exists!2757 lambda!305158) (Exists!2757 lambda!305160))))

(declare-fun lt!2268249 () Unit!156160)

(assert (=> d!1790080 (= lt!2268249 (choose!42896 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 s!2326))))

(assert (=> d!1790080 (validRegex!7393 (regOne!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790080 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1386 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 s!2326) lt!2268249)))

(declare-fun m!6631884 () Bool)

(assert (=> bs!1321028 m!6631884))

(declare-fun m!6631886 () Bool)

(assert (=> bs!1321028 m!6631886))

(declare-fun m!6631888 () Bool)

(assert (=> bs!1321028 m!6631888))

(declare-fun m!6631890 () Bool)

(assert (=> bs!1321028 m!6631890))

(assert (=> b!5670249 d!1790080))

(declare-fun d!1790082 () Bool)

(declare-fun c!997333 () Bool)

(assert (=> d!1790082 (= c!997333 (isEmpty!35001 s!2326))))

(declare-fun e!3490798 () Bool)

(assert (=> d!1790082 (= (matchZipper!1795 z!1189 s!2326) e!3490798)))

(declare-fun b!5670610 () Bool)

(assert (=> b!5670610 (= e!3490798 (nullableZipper!1629 z!1189))))

(declare-fun b!5670611 () Bool)

(assert (=> b!5670611 (= e!3490798 (matchZipper!1795 (derivationStepZipper!1742 z!1189 (head!12038 s!2326)) (tail!11133 s!2326)))))

(assert (= (and d!1790082 c!997333) b!5670610))

(assert (= (and d!1790082 (not c!997333)) b!5670611))

(assert (=> d!1790082 m!6631874))

(declare-fun m!6631892 () Bool)

(assert (=> b!5670610 m!6631892))

(assert (=> b!5670611 m!6631876))

(assert (=> b!5670611 m!6631876))

(declare-fun m!6631894 () Bool)

(assert (=> b!5670611 m!6631894))

(assert (=> b!5670611 m!6631868))

(assert (=> b!5670611 m!6631894))

(assert (=> b!5670611 m!6631868))

(declare-fun m!6631896 () Bool)

(assert (=> b!5670611 m!6631896))

(assert (=> b!5670249 d!1790082))

(declare-fun b!5670612 () Bool)

(declare-fun res!2396334 () Bool)

(declare-fun e!3490803 () Bool)

(assert (=> b!5670612 (=> (not res!2396334) (not e!3490803))))

(declare-fun lt!2268251 () Option!15666)

(assert (=> b!5670612 (= res!2396334 (matchR!7842 lt!2268129 (_2!36057 (get!21758 lt!2268251))))))

(declare-fun b!5670613 () Bool)

(declare-fun e!3490802 () Option!15666)

(declare-fun e!3490801 () Option!15666)

(assert (=> b!5670613 (= e!3490802 e!3490801)))

(declare-fun c!997335 () Bool)

(assert (=> b!5670613 (= c!997335 ((_ is Nil!63147) s!2326))))

(declare-fun b!5670614 () Bool)

(assert (=> b!5670614 (= e!3490801 None!15665)))

(declare-fun b!5670615 () Bool)

(declare-fun e!3490799 () Bool)

(assert (=> b!5670615 (= e!3490799 (matchR!7842 lt!2268129 s!2326))))

(declare-fun b!5670616 () Bool)

(assert (=> b!5670616 (= e!3490803 (= (++!13862 (_1!36057 (get!21758 lt!2268251)) (_2!36057 (get!21758 lt!2268251))) s!2326))))

(declare-fun d!1790084 () Bool)

(declare-fun e!3490800 () Bool)

(assert (=> d!1790084 e!3490800))

(declare-fun res!2396338 () Bool)

(assert (=> d!1790084 (=> res!2396338 e!3490800)))

(assert (=> d!1790084 (= res!2396338 e!3490803)))

(declare-fun res!2396335 () Bool)

(assert (=> d!1790084 (=> (not res!2396335) (not e!3490803))))

(assert (=> d!1790084 (= res!2396335 (isDefined!12369 lt!2268251))))

(assert (=> d!1790084 (= lt!2268251 e!3490802)))

(declare-fun c!997334 () Bool)

(assert (=> d!1790084 (= c!997334 e!3490799)))

(declare-fun res!2396337 () Bool)

(assert (=> d!1790084 (=> (not res!2396337) (not e!3490799))))

(assert (=> d!1790084 (= res!2396337 (matchR!7842 (regTwo!31826 (regOne!31826 r!7292)) Nil!63147))))

(assert (=> d!1790084 (validRegex!7393 (regTwo!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790084 (= (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 Nil!63147 s!2326 s!2326) lt!2268251)))

(declare-fun b!5670617 () Bool)

(assert (=> b!5670617 (= e!3490800 (not (isDefined!12369 lt!2268251)))))

(declare-fun b!5670618 () Bool)

(assert (=> b!5670618 (= e!3490802 (Some!15665 (tuple2!65509 Nil!63147 s!2326)))))

(declare-fun b!5670619 () Bool)

(declare-fun res!2396336 () Bool)

(assert (=> b!5670619 (=> (not res!2396336) (not e!3490803))))

(assert (=> b!5670619 (= res!2396336 (matchR!7842 (regTwo!31826 (regOne!31826 r!7292)) (_1!36057 (get!21758 lt!2268251))))))

(declare-fun b!5670620 () Bool)

(declare-fun lt!2268252 () Unit!156160)

(declare-fun lt!2268250 () Unit!156160)

(assert (=> b!5670620 (= lt!2268252 lt!2268250)))

(assert (=> b!5670620 (= (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326)) s!2326)))

(assert (=> b!5670620 (= lt!2268250 (lemmaMoveElementToOtherListKeepsConcatEq!2031 Nil!63147 (h!69595 s!2326) (t!376577 s!2326) s!2326))))

(assert (=> b!5670620 (= e!3490801 (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326) s!2326))))

(assert (= (and d!1790084 res!2396337) b!5670615))

(assert (= (and d!1790084 c!997334) b!5670618))

(assert (= (and d!1790084 (not c!997334)) b!5670613))

(assert (= (and b!5670613 c!997335) b!5670614))

(assert (= (and b!5670613 (not c!997335)) b!5670620))

(assert (= (and d!1790084 res!2396335) b!5670619))

(assert (= (and b!5670619 res!2396336) b!5670612))

(assert (= (and b!5670612 res!2396334) b!5670616))

(assert (= (and d!1790084 (not res!2396338)) b!5670617))

(assert (=> b!5670620 m!6631716))

(assert (=> b!5670620 m!6631716))

(assert (=> b!5670620 m!6631718))

(assert (=> b!5670620 m!6631720))

(assert (=> b!5670620 m!6631716))

(declare-fun m!6631904 () Bool)

(assert (=> b!5670620 m!6631904))

(declare-fun m!6631906 () Bool)

(assert (=> b!5670612 m!6631906))

(declare-fun m!6631908 () Bool)

(assert (=> b!5670612 m!6631908))

(assert (=> b!5670616 m!6631906))

(declare-fun m!6631910 () Bool)

(assert (=> b!5670616 m!6631910))

(declare-fun m!6631912 () Bool)

(assert (=> d!1790084 m!6631912))

(declare-fun m!6631914 () Bool)

(assert (=> d!1790084 m!6631914))

(declare-fun m!6631916 () Bool)

(assert (=> d!1790084 m!6631916))

(assert (=> b!5670617 m!6631912))

(assert (=> b!5670619 m!6631906))

(declare-fun m!6631918 () Bool)

(assert (=> b!5670619 m!6631918))

(declare-fun m!6631920 () Bool)

(assert (=> b!5670615 m!6631920))

(assert (=> b!5670249 d!1790084))

(declare-fun d!1790088 () Bool)

(assert (=> d!1790088 (= (Exists!2757 lambda!305100) (choose!42894 lambda!305100))))

(declare-fun bs!1321036 () Bool)

(assert (= bs!1321036 d!1790088))

(declare-fun m!6631922 () Bool)

(assert (=> bs!1321036 m!6631922))

(assert (=> b!5670249 d!1790088))

(declare-fun d!1790090 () Bool)

(assert (=> d!1790090 (= (Exists!2757 lambda!305101) (choose!42894 lambda!305101))))

(declare-fun bs!1321037 () Bool)

(assert (= bs!1321037 d!1790090))

(declare-fun m!6631924 () Bool)

(assert (=> bs!1321037 m!6631924))

(assert (=> b!5670249 d!1790090))

(declare-fun d!1790092 () Bool)

(declare-fun c!997339 () Bool)

(assert (=> d!1790092 (= c!997339 (isEmpty!35001 s!2326))))

(declare-fun e!3490811 () Bool)

(assert (=> d!1790092 (= (matchZipper!1795 lt!2268137 s!2326) e!3490811)))

(declare-fun b!5670635 () Bool)

(assert (=> b!5670635 (= e!3490811 (nullableZipper!1629 lt!2268137))))

(declare-fun b!5670636 () Bool)

(assert (=> b!5670636 (= e!3490811 (matchZipper!1795 (derivationStepZipper!1742 lt!2268137 (head!12038 s!2326)) (tail!11133 s!2326)))))

(assert (= (and d!1790092 c!997339) b!5670635))

(assert (= (and d!1790092 (not c!997339)) b!5670636))

(assert (=> d!1790092 m!6631874))

(declare-fun m!6631926 () Bool)

(assert (=> b!5670635 m!6631926))

(assert (=> b!5670636 m!6631876))

(assert (=> b!5670636 m!6631876))

(declare-fun m!6631928 () Bool)

(assert (=> b!5670636 m!6631928))

(assert (=> b!5670636 m!6631868))

(assert (=> b!5670636 m!6631928))

(assert (=> b!5670636 m!6631868))

(declare-fun m!6631932 () Bool)

(assert (=> b!5670636 m!6631932))

(assert (=> b!5670249 d!1790092))

(declare-fun bs!1321038 () Bool)

(declare-fun d!1790094 () Bool)

(assert (= bs!1321038 (and d!1790094 b!5670249)))

(declare-fun lambda!305162 () Int)

(assert (=> bs!1321038 (not (= lambda!305162 lambda!305101))))

(declare-fun bs!1321039 () Bool)

(assert (= bs!1321039 (and d!1790094 d!1790038)))

(assert (=> bs!1321039 (not (= lambda!305162 lambda!305156))))

(declare-fun bs!1321040 () Bool)

(assert (= bs!1321040 (and d!1790094 d!1790034)))

(assert (=> bs!1321040 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305162 lambda!305143))))

(declare-fun bs!1321041 () Bool)

(assert (= bs!1321041 (and d!1790094 b!5670241)))

(assert (=> bs!1321041 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305162 lambda!305095))))

(assert (=> bs!1321038 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305162 lambda!305098))))

(assert (=> bs!1321038 (= lambda!305162 lambda!305100)))

(assert (=> bs!1321039 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305162 lambda!305155))))

(assert (=> bs!1321038 (not (= lambda!305162 lambda!305099))))

(declare-fun bs!1321042 () Bool)

(assert (= bs!1321042 (and d!1790094 d!1790080)))

(assert (=> bs!1321042 (not (= lambda!305162 lambda!305160))))

(assert (=> bs!1321041 (not (= lambda!305162 lambda!305096))))

(assert (=> bs!1321042 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305162 lambda!305158))))

(assert (=> d!1790094 true))

(assert (=> d!1790094 true))

(assert (=> d!1790094 true))

(assert (=> d!1790094 (= (isDefined!12369 (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 Nil!63147 s!2326 s!2326)) (Exists!2757 lambda!305162))))

(declare-fun lt!2268254 () Unit!156160)

(assert (=> d!1790094 (= lt!2268254 (choose!42895 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 s!2326))))

(assert (=> d!1790094 (validRegex!7393 (regTwo!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790094 (= (lemmaFindConcatSeparationEquivalentToExists!1844 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 s!2326) lt!2268254)))

(declare-fun bs!1321043 () Bool)

(assert (= bs!1321043 d!1790094))

(declare-fun m!6631938 () Bool)

(assert (=> bs!1321043 m!6631938))

(assert (=> bs!1321043 m!6631524))

(assert (=> bs!1321043 m!6631526))

(assert (=> bs!1321043 m!6631916))

(declare-fun m!6631940 () Bool)

(assert (=> bs!1321043 m!6631940))

(assert (=> bs!1321043 m!6631524))

(assert (=> b!5670249 d!1790094))

(declare-fun bs!1321044 () Bool)

(declare-fun d!1790100 () Bool)

(assert (= bs!1321044 (and d!1790100 b!5670249)))

(declare-fun lambda!305163 () Int)

(assert (=> bs!1321044 (not (= lambda!305163 lambda!305101))))

(declare-fun bs!1321045 () Bool)

(assert (= bs!1321045 (and d!1790100 d!1790038)))

(assert (=> bs!1321045 (not (= lambda!305163 lambda!305156))))

(declare-fun bs!1321046 () Bool)

(assert (= bs!1321046 (and d!1790100 d!1790094)))

(assert (=> bs!1321046 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305163 lambda!305162))))

(declare-fun bs!1321047 () Bool)

(assert (= bs!1321047 (and d!1790100 d!1790034)))

(assert (=> bs!1321047 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305163 lambda!305143))))

(declare-fun bs!1321048 () Bool)

(assert (= bs!1321048 (and d!1790100 b!5670241)))

(assert (=> bs!1321048 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305163 lambda!305095))))

(assert (=> bs!1321044 (= lambda!305163 lambda!305098)))

(assert (=> bs!1321044 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305163 lambda!305100))))

(assert (=> bs!1321045 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305163 lambda!305155))))

(assert (=> bs!1321044 (not (= lambda!305163 lambda!305099))))

(declare-fun bs!1321049 () Bool)

(assert (= bs!1321049 (and d!1790100 d!1790080)))

(assert (=> bs!1321049 (not (= lambda!305163 lambda!305160))))

(assert (=> bs!1321048 (not (= lambda!305163 lambda!305096))))

(assert (=> bs!1321049 (= lambda!305163 lambda!305158)))

(assert (=> d!1790100 true))

(assert (=> d!1790100 true))

(assert (=> d!1790100 true))

(assert (=> d!1790100 (= (isDefined!12369 (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 Nil!63147 s!2326 s!2326)) (Exists!2757 lambda!305163))))

(declare-fun lt!2268255 () Unit!156160)

(assert (=> d!1790100 (= lt!2268255 (choose!42895 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 s!2326))))

(assert (=> d!1790100 (validRegex!7393 (regOne!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790100 (= (lemmaFindConcatSeparationEquivalentToExists!1844 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 s!2326) lt!2268255)))

(declare-fun bs!1321050 () Bool)

(assert (= bs!1321050 d!1790100))

(declare-fun m!6631942 () Bool)

(assert (=> bs!1321050 m!6631942))

(assert (=> bs!1321050 m!6631536))

(assert (=> bs!1321050 m!6631544))

(assert (=> bs!1321050 m!6631890))

(declare-fun m!6631944 () Bool)

(assert (=> bs!1321050 m!6631944))

(assert (=> bs!1321050 m!6631536))

(assert (=> b!5670249 d!1790100))

(declare-fun bs!1321089 () Bool)

(declare-fun b!5670698 () Bool)

(assert (= bs!1321089 (and b!5670698 b!5670249)))

(declare-fun lambda!305172 () Int)

(assert (=> bs!1321089 (not (= lambda!305172 lambda!305101))))

(declare-fun bs!1321090 () Bool)

(assert (= bs!1321090 (and b!5670698 d!1790038)))

(assert (=> bs!1321090 (not (= lambda!305172 lambda!305156))))

(declare-fun bs!1321091 () Bool)

(assert (= bs!1321091 (and b!5670698 d!1790100)))

(assert (=> bs!1321091 (not (= lambda!305172 lambda!305163))))

(declare-fun bs!1321092 () Bool)

(assert (= bs!1321092 (and b!5670698 d!1790094)))

(assert (=> bs!1321092 (not (= lambda!305172 lambda!305162))))

(declare-fun bs!1321094 () Bool)

(assert (= bs!1321094 (and b!5670698 d!1790034)))

(assert (=> bs!1321094 (not (= lambda!305172 lambda!305143))))

(declare-fun bs!1321096 () Bool)

(assert (= bs!1321096 (and b!5670698 b!5670241)))

(assert (=> bs!1321096 (not (= lambda!305172 lambda!305095))))

(assert (=> bs!1321089 (not (= lambda!305172 lambda!305098))))

(assert (=> bs!1321089 (not (= lambda!305172 lambda!305100))))

(assert (=> bs!1321090 (not (= lambda!305172 lambda!305155))))

(assert (=> bs!1321089 (not (= lambda!305172 lambda!305099))))

(declare-fun bs!1321101 () Bool)

(assert (= bs!1321101 (and b!5670698 d!1790080)))

(assert (=> bs!1321101 (not (= lambda!305172 lambda!305160))))

(assert (=> bs!1321096 (not (= lambda!305172 lambda!305096))))

(assert (=> bs!1321101 (not (= lambda!305172 lambda!305158))))

(assert (=> b!5670698 true))

(assert (=> b!5670698 true))

(declare-fun bs!1321108 () Bool)

(declare-fun b!5670704 () Bool)

(assert (= bs!1321108 (and b!5670704 b!5670698)))

(declare-fun lambda!305174 () Int)

(assert (=> bs!1321108 (not (= lambda!305174 lambda!305172))))

(declare-fun bs!1321109 () Bool)

(assert (= bs!1321109 (and b!5670704 b!5670249)))

(assert (=> bs!1321109 (= (and (= (regOne!31826 lt!2268141) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 lt!2268141) lt!2268129)) (= lambda!305174 lambda!305101))))

(declare-fun bs!1321110 () Bool)

(assert (= bs!1321110 (and b!5670704 d!1790038)))

(assert (=> bs!1321110 (= (and (= (regOne!31826 lt!2268141) (regOne!31826 r!7292)) (= (regTwo!31826 lt!2268141) (regTwo!31826 r!7292))) (= lambda!305174 lambda!305156))))

(declare-fun bs!1321111 () Bool)

(assert (= bs!1321111 (and b!5670704 d!1790100)))

(assert (=> bs!1321111 (not (= lambda!305174 lambda!305163))))

(declare-fun bs!1321113 () Bool)

(assert (= bs!1321113 (and b!5670704 d!1790094)))

(assert (=> bs!1321113 (not (= lambda!305174 lambda!305162))))

(declare-fun bs!1321114 () Bool)

(assert (= bs!1321114 (and b!5670704 d!1790034)))

(assert (=> bs!1321114 (not (= lambda!305174 lambda!305143))))

(declare-fun bs!1321115 () Bool)

(assert (= bs!1321115 (and b!5670704 b!5670241)))

(assert (=> bs!1321115 (not (= lambda!305174 lambda!305095))))

(assert (=> bs!1321109 (not (= lambda!305174 lambda!305098))))

(assert (=> bs!1321109 (not (= lambda!305174 lambda!305100))))

(assert (=> bs!1321110 (not (= lambda!305174 lambda!305155))))

(assert (=> bs!1321109 (= (and (= (regOne!31826 lt!2268141) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 lt!2268141) lt!2268120)) (= lambda!305174 lambda!305099))))

(declare-fun bs!1321116 () Bool)

(assert (= bs!1321116 (and b!5670704 d!1790080)))

(assert (=> bs!1321116 (= (and (= (regOne!31826 lt!2268141) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 lt!2268141) lt!2268120)) (= lambda!305174 lambda!305160))))

(assert (=> bs!1321115 (= (and (= (regOne!31826 lt!2268141) (regOne!31826 r!7292)) (= (regTwo!31826 lt!2268141) (regTwo!31826 r!7292))) (= lambda!305174 lambda!305096))))

(assert (=> bs!1321116 (not (= lambda!305174 lambda!305158))))

(assert (=> b!5670704 true))

(assert (=> b!5670704 true))

(declare-fun e!3490848 () Bool)

(declare-fun call!430090 () Bool)

(assert (=> b!5670698 (= e!3490848 call!430090)))

(declare-fun b!5670699 () Bool)

(declare-fun e!3490849 () Bool)

(declare-fun e!3490852 () Bool)

(assert (=> b!5670699 (= e!3490849 e!3490852)))

(declare-fun res!2396376 () Bool)

(assert (=> b!5670699 (= res!2396376 (not ((_ is EmptyLang!15657) lt!2268141)))))

(assert (=> b!5670699 (=> (not res!2396376) (not e!3490852))))

(declare-fun b!5670700 () Bool)

(declare-fun e!3490851 () Bool)

(assert (=> b!5670700 (= e!3490851 (matchRSpec!2760 (regTwo!31827 lt!2268141) s!2326))))

(declare-fun b!5670701 () Bool)

(declare-fun c!997358 () Bool)

(assert (=> b!5670701 (= c!997358 ((_ is ElementMatch!15657) lt!2268141))))

(declare-fun e!3490850 () Bool)

(assert (=> b!5670701 (= e!3490852 e!3490850)))

(declare-fun b!5670702 () Bool)

(declare-fun e!3490853 () Bool)

(declare-fun e!3490854 () Bool)

(assert (=> b!5670702 (= e!3490853 e!3490854)))

(declare-fun c!997357 () Bool)

(assert (=> b!5670702 (= c!997357 ((_ is Star!15657) lt!2268141))))

(assert (=> b!5670704 (= e!3490854 call!430090)))

(declare-fun b!5670705 () Bool)

(declare-fun call!430091 () Bool)

(assert (=> b!5670705 (= e!3490849 call!430091)))

(declare-fun bm!430085 () Bool)

(assert (=> bm!430085 (= call!430091 (isEmpty!35001 s!2326))))

(declare-fun b!5670706 () Bool)

(declare-fun c!997360 () Bool)

(assert (=> b!5670706 (= c!997360 ((_ is Union!15657) lt!2268141))))

(assert (=> b!5670706 (= e!3490850 e!3490853)))

(declare-fun bm!430086 () Bool)

(assert (=> bm!430086 (= call!430090 (Exists!2757 (ite c!997357 lambda!305172 lambda!305174)))))

(declare-fun d!1790102 () Bool)

(declare-fun c!997359 () Bool)

(assert (=> d!1790102 (= c!997359 ((_ is EmptyExpr!15657) lt!2268141))))

(assert (=> d!1790102 (= (matchRSpec!2760 lt!2268141 s!2326) e!3490849)))

(declare-fun b!5670703 () Bool)

(declare-fun res!2396374 () Bool)

(assert (=> b!5670703 (=> res!2396374 e!3490848)))

(assert (=> b!5670703 (= res!2396374 call!430091)))

(assert (=> b!5670703 (= e!3490854 e!3490848)))

(declare-fun b!5670707 () Bool)

(assert (=> b!5670707 (= e!3490850 (= s!2326 (Cons!63147 (c!997231 lt!2268141) Nil!63147)))))

(declare-fun b!5670708 () Bool)

(assert (=> b!5670708 (= e!3490853 e!3490851)))

(declare-fun res!2396375 () Bool)

(assert (=> b!5670708 (= res!2396375 (matchRSpec!2760 (regOne!31827 lt!2268141) s!2326))))

(assert (=> b!5670708 (=> res!2396375 e!3490851)))

(assert (= (and d!1790102 c!997359) b!5670705))

(assert (= (and d!1790102 (not c!997359)) b!5670699))

(assert (= (and b!5670699 res!2396376) b!5670701))

(assert (= (and b!5670701 c!997358) b!5670707))

(assert (= (and b!5670701 (not c!997358)) b!5670706))

(assert (= (and b!5670706 c!997360) b!5670708))

(assert (= (and b!5670706 (not c!997360)) b!5670702))

(assert (= (and b!5670708 (not res!2396375)) b!5670700))

(assert (= (and b!5670702 c!997357) b!5670703))

(assert (= (and b!5670702 (not c!997357)) b!5670704))

(assert (= (and b!5670703 (not res!2396374)) b!5670698))

(assert (= (or b!5670698 b!5670704) bm!430086))

(assert (= (or b!5670705 b!5670703) bm!430085))

(declare-fun m!6632012 () Bool)

(assert (=> b!5670700 m!6632012))

(assert (=> bm!430085 m!6631874))

(declare-fun m!6632014 () Bool)

(assert (=> bm!430086 m!6632014))

(declare-fun m!6632016 () Bool)

(assert (=> b!5670708 m!6632016))

(assert (=> b!5670249 d!1790102))

(declare-fun bs!1321118 () Bool)

(declare-fun d!1790126 () Bool)

(assert (= bs!1321118 (and d!1790126 b!5670698)))

(declare-fun lambda!305175 () Int)

(assert (=> bs!1321118 (not (= lambda!305175 lambda!305172))))

(declare-fun bs!1321119 () Bool)

(assert (= bs!1321119 (and d!1790126 b!5670249)))

(assert (=> bs!1321119 (not (= lambda!305175 lambda!305101))))

(declare-fun bs!1321120 () Bool)

(assert (= bs!1321120 (and d!1790126 d!1790038)))

(assert (=> bs!1321120 (not (= lambda!305175 lambda!305156))))

(declare-fun bs!1321121 () Bool)

(assert (= bs!1321121 (and d!1790126 d!1790100)))

(assert (=> bs!1321121 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305175 lambda!305163))))

(declare-fun bs!1321123 () Bool)

(assert (= bs!1321123 (and d!1790126 d!1790094)))

(assert (=> bs!1321123 (= lambda!305175 lambda!305162)))

(declare-fun bs!1321124 () Bool)

(assert (= bs!1321124 (and d!1790126 d!1790034)))

(assert (=> bs!1321124 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305175 lambda!305143))))

(declare-fun bs!1321125 () Bool)

(assert (= bs!1321125 (and d!1790126 b!5670241)))

(assert (=> bs!1321125 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305175 lambda!305095))))

(assert (=> bs!1321119 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305175 lambda!305098))))

(assert (=> bs!1321120 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305175 lambda!305155))))

(assert (=> bs!1321119 (not (= lambda!305175 lambda!305099))))

(declare-fun bs!1321126 () Bool)

(assert (= bs!1321126 (and d!1790126 d!1790080)))

(assert (=> bs!1321126 (not (= lambda!305175 lambda!305160))))

(assert (=> bs!1321119 (= lambda!305175 lambda!305100)))

(declare-fun bs!1321127 () Bool)

(assert (= bs!1321127 (and d!1790126 b!5670704)))

(assert (=> bs!1321127 (not (= lambda!305175 lambda!305174))))

(assert (=> bs!1321125 (not (= lambda!305175 lambda!305096))))

(assert (=> bs!1321126 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305175 lambda!305158))))

(assert (=> d!1790126 true))

(assert (=> d!1790126 true))

(assert (=> d!1790126 true))

(declare-fun lambda!305176 () Int)

(assert (=> bs!1321118 (not (= lambda!305176 lambda!305172))))

(assert (=> bs!1321120 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305176 lambda!305156))))

(assert (=> bs!1321121 (not (= lambda!305176 lambda!305163))))

(assert (=> bs!1321123 (not (= lambda!305176 lambda!305162))))

(assert (=> bs!1321124 (not (= lambda!305176 lambda!305143))))

(assert (=> bs!1321125 (not (= lambda!305176 lambda!305095))))

(assert (=> bs!1321119 (not (= lambda!305176 lambda!305098))))

(assert (=> bs!1321120 (not (= lambda!305176 lambda!305155))))

(declare-fun bs!1321129 () Bool)

(assert (= bs!1321129 d!1790126))

(assert (=> bs!1321129 (not (= lambda!305176 lambda!305175))))

(assert (=> bs!1321119 (= lambda!305176 lambda!305101)))

(assert (=> bs!1321119 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305176 lambda!305099))))

(assert (=> bs!1321126 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305176 lambda!305160))))

(assert (=> bs!1321119 (not (= lambda!305176 lambda!305100))))

(assert (=> bs!1321127 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 lt!2268141)) (= lt!2268129 (regTwo!31826 lt!2268141))) (= lambda!305176 lambda!305174))))

(assert (=> bs!1321125 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305176 lambda!305096))))

(assert (=> bs!1321126 (not (= lambda!305176 lambda!305158))))

(assert (=> d!1790126 true))

(assert (=> d!1790126 true))

(assert (=> d!1790126 true))

(assert (=> d!1790126 (= (Exists!2757 lambda!305175) (Exists!2757 lambda!305176))))

(declare-fun lt!2268265 () Unit!156160)

(assert (=> d!1790126 (= lt!2268265 (choose!42896 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 s!2326))))

(assert (=> d!1790126 (validRegex!7393 (regTwo!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790126 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1386 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 s!2326) lt!2268265)))

(declare-fun m!6632050 () Bool)

(assert (=> bs!1321129 m!6632050))

(declare-fun m!6632052 () Bool)

(assert (=> bs!1321129 m!6632052))

(declare-fun m!6632056 () Bool)

(assert (=> bs!1321129 m!6632056))

(assert (=> bs!1321129 m!6631916))

(assert (=> b!5670249 d!1790126))

(declare-fun b!5670778 () Bool)

(declare-fun e!3490895 () Bool)

(declare-fun lt!2268277 () Regex!15657)

(declare-fun head!12039 (List!63270) Regex!15657)

(assert (=> b!5670778 (= e!3490895 (= lt!2268277 (head!12039 lt!2268152)))))

(declare-fun b!5670779 () Bool)

(declare-fun e!3490899 () Regex!15657)

(assert (=> b!5670779 (= e!3490899 (Concat!24502 (h!69594 lt!2268152) (generalisedConcat!1272 (t!376576 lt!2268152))))))

(declare-fun b!5670780 () Bool)

(declare-fun isConcat!710 (Regex!15657) Bool)

(assert (=> b!5670780 (= e!3490895 (isConcat!710 lt!2268277))))

(declare-fun b!5670781 () Bool)

(declare-fun e!3490894 () Bool)

(assert (=> b!5670781 (= e!3490894 e!3490895)))

(declare-fun c!997387 () Bool)

(declare-fun tail!11134 (List!63270) List!63270)

(assert (=> b!5670781 (= c!997387 (isEmpty!34998 (tail!11134 lt!2268152)))))

(declare-fun b!5670782 () Bool)

(declare-fun e!3490896 () Bool)

(assert (=> b!5670782 (= e!3490896 (isEmpty!34998 (t!376576 lt!2268152)))))

(declare-fun b!5670784 () Bool)

(declare-fun e!3490897 () Bool)

(assert (=> b!5670784 (= e!3490897 e!3490894)))

(declare-fun c!997390 () Bool)

(assert (=> b!5670784 (= c!997390 (isEmpty!34998 lt!2268152))))

(declare-fun b!5670785 () Bool)

(declare-fun isEmptyExpr!1187 (Regex!15657) Bool)

(assert (=> b!5670785 (= e!3490894 (isEmptyExpr!1187 lt!2268277))))

(declare-fun b!5670786 () Bool)

(assert (=> b!5670786 (= e!3490899 EmptyExpr!15657)))

(declare-fun b!5670787 () Bool)

(declare-fun e!3490898 () Regex!15657)

(assert (=> b!5670787 (= e!3490898 e!3490899)))

(declare-fun c!997388 () Bool)

(assert (=> b!5670787 (= c!997388 ((_ is Cons!63146) lt!2268152))))

(declare-fun d!1790140 () Bool)

(assert (=> d!1790140 e!3490897))

(declare-fun res!2396395 () Bool)

(assert (=> d!1790140 (=> (not res!2396395) (not e!3490897))))

(assert (=> d!1790140 (= res!2396395 (validRegex!7393 lt!2268277))))

(assert (=> d!1790140 (= lt!2268277 e!3490898)))

(declare-fun c!997389 () Bool)

(assert (=> d!1790140 (= c!997389 e!3490896)))

(declare-fun res!2396394 () Bool)

(assert (=> d!1790140 (=> (not res!2396394) (not e!3490896))))

(assert (=> d!1790140 (= res!2396394 ((_ is Cons!63146) lt!2268152))))

(declare-fun lambda!305180 () Int)

(declare-fun forall!14810 (List!63270 Int) Bool)

(assert (=> d!1790140 (forall!14810 lt!2268152 lambda!305180)))

(assert (=> d!1790140 (= (generalisedConcat!1272 lt!2268152) lt!2268277)))

(declare-fun b!5670783 () Bool)

(assert (=> b!5670783 (= e!3490898 (h!69594 lt!2268152))))

(assert (= (and d!1790140 res!2396394) b!5670782))

(assert (= (and d!1790140 c!997389) b!5670783))

(assert (= (and d!1790140 (not c!997389)) b!5670787))

(assert (= (and b!5670787 c!997388) b!5670779))

(assert (= (and b!5670787 (not c!997388)) b!5670786))

(assert (= (and d!1790140 res!2396395) b!5670784))

(assert (= (and b!5670784 c!997390) b!5670785))

(assert (= (and b!5670784 (not c!997390)) b!5670781))

(assert (= (and b!5670781 c!997387) b!5670778))

(assert (= (and b!5670781 (not c!997387)) b!5670780))

(declare-fun m!6632078 () Bool)

(assert (=> b!5670779 m!6632078))

(declare-fun m!6632080 () Bool)

(assert (=> b!5670785 m!6632080))

(declare-fun m!6632082 () Bool)

(assert (=> b!5670784 m!6632082))

(declare-fun m!6632084 () Bool)

(assert (=> b!5670781 m!6632084))

(assert (=> b!5670781 m!6632084))

(declare-fun m!6632086 () Bool)

(assert (=> b!5670781 m!6632086))

(declare-fun m!6632088 () Bool)

(assert (=> b!5670778 m!6632088))

(declare-fun m!6632090 () Bool)

(assert (=> b!5670780 m!6632090))

(declare-fun m!6632092 () Bool)

(assert (=> b!5670782 m!6632092))

(declare-fun m!6632094 () Bool)

(assert (=> d!1790140 m!6632094))

(declare-fun m!6632096 () Bool)

(assert (=> d!1790140 m!6632096))

(assert (=> b!5670249 d!1790140))

(declare-fun d!1790154 () Bool)

(assert (=> d!1790154 (= (Exists!2757 lambda!305099) (choose!42894 lambda!305099))))

(declare-fun bs!1321135 () Bool)

(assert (= bs!1321135 d!1790154))

(declare-fun m!6632098 () Bool)

(assert (=> bs!1321135 m!6632098))

(assert (=> b!5670249 d!1790154))

(declare-fun bs!1321136 () Bool)

(declare-fun d!1790156 () Bool)

(assert (= bs!1321136 (and d!1790156 d!1790140)))

(declare-fun lambda!305181 () Int)

(assert (=> bs!1321136 (= lambda!305181 lambda!305180)))

(declare-fun b!5670793 () Bool)

(declare-fun e!3490904 () Bool)

(declare-fun lt!2268278 () Regex!15657)

(assert (=> b!5670793 (= e!3490904 (= lt!2268278 (head!12039 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5670794 () Bool)

(declare-fun e!3490908 () Regex!15657)

(assert (=> b!5670794 (= e!3490908 (Concat!24502 (h!69594 (t!376576 (exprs!5541 (h!69596 zl!343)))) (generalisedConcat!1272 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5670795 () Bool)

(assert (=> b!5670795 (= e!3490904 (isConcat!710 lt!2268278))))

(declare-fun b!5670796 () Bool)

(declare-fun e!3490903 () Bool)

(assert (=> b!5670796 (= e!3490903 e!3490904)))

(declare-fun c!997393 () Bool)

(assert (=> b!5670796 (= c!997393 (isEmpty!34998 (tail!11134 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5670797 () Bool)

(declare-fun e!3490905 () Bool)

(assert (=> b!5670797 (= e!3490905 (isEmpty!34998 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5670799 () Bool)

(declare-fun e!3490906 () Bool)

(assert (=> b!5670799 (= e!3490906 e!3490903)))

(declare-fun c!997396 () Bool)

(assert (=> b!5670799 (= c!997396 (isEmpty!34998 (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5670800 () Bool)

(assert (=> b!5670800 (= e!3490903 (isEmptyExpr!1187 lt!2268278))))

(declare-fun b!5670801 () Bool)

(assert (=> b!5670801 (= e!3490908 EmptyExpr!15657)))

(declare-fun b!5670802 () Bool)

(declare-fun e!3490907 () Regex!15657)

(assert (=> b!5670802 (= e!3490907 e!3490908)))

(declare-fun c!997394 () Bool)

(assert (=> b!5670802 (= c!997394 ((_ is Cons!63146) (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> d!1790156 e!3490906))

(declare-fun res!2396398 () Bool)

(assert (=> d!1790156 (=> (not res!2396398) (not e!3490906))))

(assert (=> d!1790156 (= res!2396398 (validRegex!7393 lt!2268278))))

(assert (=> d!1790156 (= lt!2268278 e!3490907)))

(declare-fun c!997395 () Bool)

(assert (=> d!1790156 (= c!997395 e!3490905)))

(declare-fun res!2396397 () Bool)

(assert (=> d!1790156 (=> (not res!2396397) (not e!3490905))))

(assert (=> d!1790156 (= res!2396397 ((_ is Cons!63146) (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> d!1790156 (forall!14810 (t!376576 (exprs!5541 (h!69596 zl!343))) lambda!305181)))

(assert (=> d!1790156 (= (generalisedConcat!1272 (t!376576 (exprs!5541 (h!69596 zl!343)))) lt!2268278)))

(declare-fun b!5670798 () Bool)

(assert (=> b!5670798 (= e!3490907 (h!69594 (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(assert (= (and d!1790156 res!2396397) b!5670797))

(assert (= (and d!1790156 c!997395) b!5670798))

(assert (= (and d!1790156 (not c!997395)) b!5670802))

(assert (= (and b!5670802 c!997394) b!5670794))

(assert (= (and b!5670802 (not c!997394)) b!5670801))

(assert (= (and d!1790156 res!2396398) b!5670799))

(assert (= (and b!5670799 c!997396) b!5670800))

(assert (= (and b!5670799 (not c!997396)) b!5670796))

(assert (= (and b!5670796 c!997393) b!5670793))

(assert (= (and b!5670796 (not c!997393)) b!5670795))

(declare-fun m!6632100 () Bool)

(assert (=> b!5670794 m!6632100))

(declare-fun m!6632102 () Bool)

(assert (=> b!5670800 m!6632102))

(assert (=> b!5670799 m!6631458))

(declare-fun m!6632104 () Bool)

(assert (=> b!5670796 m!6632104))

(assert (=> b!5670796 m!6632104))

(declare-fun m!6632106 () Bool)

(assert (=> b!5670796 m!6632106))

(declare-fun m!6632108 () Bool)

(assert (=> b!5670793 m!6632108))

(declare-fun m!6632110 () Bool)

(assert (=> b!5670795 m!6632110))

(declare-fun m!6632112 () Bool)

(assert (=> b!5670797 m!6632112))

(declare-fun m!6632114 () Bool)

(assert (=> d!1790156 m!6632114))

(declare-fun m!6632116 () Bool)

(assert (=> d!1790156 m!6632116))

(assert (=> b!5670249 d!1790156))

(declare-fun d!1790158 () Bool)

(assert (=> d!1790158 (= (isDefined!12369 (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 Nil!63147 s!2326 s!2326)) (not (isEmpty!35002 (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 Nil!63147 s!2326 s!2326))))))

(declare-fun bs!1321137 () Bool)

(assert (= bs!1321137 d!1790158))

(assert (=> bs!1321137 m!6631536))

(declare-fun m!6632118 () Bool)

(assert (=> bs!1321137 m!6632118))

(assert (=> b!5670249 d!1790158))

(declare-fun b!5670803 () Bool)

(declare-fun res!2396399 () Bool)

(declare-fun e!3490913 () Bool)

(assert (=> b!5670803 (=> (not res!2396399) (not e!3490913))))

(declare-fun call!430097 () Bool)

(assert (=> b!5670803 (= res!2396399 (not call!430097))))

(declare-fun b!5670804 () Bool)

(declare-fun e!3490911 () Bool)

(declare-fun e!3490912 () Bool)

(assert (=> b!5670804 (= e!3490911 e!3490912)))

(declare-fun c!997397 () Bool)

(assert (=> b!5670804 (= c!997397 ((_ is EmptyLang!15657) lt!2268141))))

(declare-fun b!5670805 () Bool)

(declare-fun e!3490909 () Bool)

(assert (=> b!5670805 (= e!3490909 (matchR!7842 (derivativeStep!4482 lt!2268141 (head!12038 s!2326)) (tail!11133 s!2326)))))

(declare-fun b!5670806 () Bool)

(assert (=> b!5670806 (= e!3490909 (nullable!5689 lt!2268141))))

(declare-fun bm!430092 () Bool)

(assert (=> bm!430092 (= call!430097 (isEmpty!35001 s!2326))))

(declare-fun b!5670807 () Bool)

(declare-fun res!2396400 () Bool)

(assert (=> b!5670807 (=> (not res!2396400) (not e!3490913))))

(assert (=> b!5670807 (= res!2396400 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun b!5670808 () Bool)

(declare-fun e!3490914 () Bool)

(declare-fun e!3490910 () Bool)

(assert (=> b!5670808 (= e!3490914 e!3490910)))

(declare-fun res!2396404 () Bool)

(assert (=> b!5670808 (=> (not res!2396404) (not e!3490910))))

(declare-fun lt!2268279 () Bool)

(assert (=> b!5670808 (= res!2396404 (not lt!2268279))))

(declare-fun b!5670809 () Bool)

(declare-fun e!3490915 () Bool)

(assert (=> b!5670809 (= e!3490910 e!3490915)))

(declare-fun res!2396402 () Bool)

(assert (=> b!5670809 (=> res!2396402 e!3490915)))

(assert (=> b!5670809 (= res!2396402 call!430097)))

(declare-fun d!1790160 () Bool)

(assert (=> d!1790160 e!3490911))

(declare-fun c!997398 () Bool)

(assert (=> d!1790160 (= c!997398 ((_ is EmptyExpr!15657) lt!2268141))))

(assert (=> d!1790160 (= lt!2268279 e!3490909)))

(declare-fun c!997399 () Bool)

(assert (=> d!1790160 (= c!997399 (isEmpty!35001 s!2326))))

(assert (=> d!1790160 (validRegex!7393 lt!2268141)))

(assert (=> d!1790160 (= (matchR!7842 lt!2268141 s!2326) lt!2268279)))

(declare-fun b!5670810 () Bool)

(assert (=> b!5670810 (= e!3490915 (not (= (head!12038 s!2326) (c!997231 lt!2268141))))))

(declare-fun b!5670811 () Bool)

(declare-fun res!2396401 () Bool)

(assert (=> b!5670811 (=> res!2396401 e!3490914)))

(assert (=> b!5670811 (= res!2396401 e!3490913)))

(declare-fun res!2396403 () Bool)

(assert (=> b!5670811 (=> (not res!2396403) (not e!3490913))))

(assert (=> b!5670811 (= res!2396403 lt!2268279)))

(declare-fun b!5670812 () Bool)

(assert (=> b!5670812 (= e!3490912 (not lt!2268279))))

(declare-fun b!5670813 () Bool)

(assert (=> b!5670813 (= e!3490911 (= lt!2268279 call!430097))))

(declare-fun b!5670814 () Bool)

(declare-fun res!2396406 () Bool)

(assert (=> b!5670814 (=> res!2396406 e!3490915)))

(assert (=> b!5670814 (= res!2396406 (not (isEmpty!35001 (tail!11133 s!2326))))))

(declare-fun b!5670815 () Bool)

(assert (=> b!5670815 (= e!3490913 (= (head!12038 s!2326) (c!997231 lt!2268141)))))

(declare-fun b!5670816 () Bool)

(declare-fun res!2396405 () Bool)

(assert (=> b!5670816 (=> res!2396405 e!3490914)))

(assert (=> b!5670816 (= res!2396405 (not ((_ is ElementMatch!15657) lt!2268141)))))

(assert (=> b!5670816 (= e!3490912 e!3490914)))

(assert (= (and d!1790160 c!997399) b!5670806))

(assert (= (and d!1790160 (not c!997399)) b!5670805))

(assert (= (and d!1790160 c!997398) b!5670813))

(assert (= (and d!1790160 (not c!997398)) b!5670804))

(assert (= (and b!5670804 c!997397) b!5670812))

(assert (= (and b!5670804 (not c!997397)) b!5670816))

(assert (= (and b!5670816 (not res!2396405)) b!5670811))

(assert (= (and b!5670811 res!2396403) b!5670803))

(assert (= (and b!5670803 res!2396399) b!5670807))

(assert (= (and b!5670807 res!2396400) b!5670815))

(assert (= (and b!5670811 (not res!2396401)) b!5670808))

(assert (= (and b!5670808 res!2396404) b!5670809))

(assert (= (and b!5670809 (not res!2396402)) b!5670814))

(assert (= (and b!5670814 (not res!2396406)) b!5670810))

(assert (= (or b!5670813 b!5670803 b!5670809) bm!430092))

(assert (=> b!5670807 m!6631868))

(assert (=> b!5670807 m!6631868))

(assert (=> b!5670807 m!6631870))

(assert (=> b!5670814 m!6631868))

(assert (=> b!5670814 m!6631868))

(assert (=> b!5670814 m!6631870))

(assert (=> d!1790160 m!6631874))

(assert (=> d!1790160 m!6631822))

(assert (=> b!5670815 m!6631876))

(assert (=> b!5670805 m!6631876))

(assert (=> b!5670805 m!6631876))

(declare-fun m!6632120 () Bool)

(assert (=> b!5670805 m!6632120))

(assert (=> b!5670805 m!6631868))

(assert (=> b!5670805 m!6632120))

(assert (=> b!5670805 m!6631868))

(declare-fun m!6632122 () Bool)

(assert (=> b!5670805 m!6632122))

(declare-fun m!6632124 () Bool)

(assert (=> b!5670806 m!6632124))

(assert (=> b!5670810 m!6631876))

(assert (=> bm!430092 m!6631874))

(assert (=> b!5670249 d!1790160))

(declare-fun d!1790162 () Bool)

(assert (=> d!1790162 (= (isDefined!12369 (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 Nil!63147 s!2326 s!2326)) (not (isEmpty!35002 (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 Nil!63147 s!2326 s!2326))))))

(declare-fun bs!1321138 () Bool)

(assert (= bs!1321138 d!1790162))

(assert (=> bs!1321138 m!6631524))

(declare-fun m!6632126 () Bool)

(assert (=> bs!1321138 m!6632126))

(assert (=> b!5670249 d!1790162))

(declare-fun d!1790164 () Bool)

(assert (=> d!1790164 (= (Exists!2757 lambda!305098) (choose!42894 lambda!305098))))

(declare-fun bs!1321139 () Bool)

(assert (= bs!1321139 d!1790164))

(declare-fun m!6632128 () Bool)

(assert (=> bs!1321139 m!6632128))

(assert (=> b!5670249 d!1790164))

(declare-fun d!1790166 () Bool)

(assert (=> d!1790166 (= (matchR!7842 lt!2268141 s!2326) (matchZipper!1795 lt!2268137 s!2326))))

(declare-fun lt!2268282 () Unit!156160)

(declare-fun choose!42901 ((InoxSet Context!10082) List!63272 Regex!15657 List!63271) Unit!156160)

(assert (=> d!1790166 (= lt!2268282 (choose!42901 lt!2268137 lt!2268150 lt!2268141 s!2326))))

(assert (=> d!1790166 (validRegex!7393 lt!2268141)))

(assert (=> d!1790166 (= (theoremZipperRegexEquiv!637 lt!2268137 lt!2268150 lt!2268141 s!2326) lt!2268282)))

(declare-fun bs!1321140 () Bool)

(assert (= bs!1321140 d!1790166))

(assert (=> bs!1321140 m!6631520))

(assert (=> bs!1321140 m!6631530))

(declare-fun m!6632130 () Bool)

(assert (=> bs!1321140 m!6632130))

(assert (=> bs!1321140 m!6631822))

(assert (=> b!5670249 d!1790166))

(declare-fun bs!1321141 () Bool)

(declare-fun b!5670839 () Bool)

(assert (= bs!1321141 (and b!5670839 d!1790126)))

(declare-fun lambda!305182 () Int)

(assert (=> bs!1321141 (not (= lambda!305182 lambda!305176))))

(declare-fun bs!1321142 () Bool)

(assert (= bs!1321142 (and b!5670839 b!5670698)))

(assert (=> bs!1321142 (= (and (= (reg!15986 lt!2268120) (reg!15986 lt!2268141)) (= lt!2268120 lt!2268141)) (= lambda!305182 lambda!305172))))

(declare-fun bs!1321143 () Bool)

(assert (= bs!1321143 (and b!5670839 d!1790038)))

(assert (=> bs!1321143 (not (= lambda!305182 lambda!305156))))

(declare-fun bs!1321144 () Bool)

(assert (= bs!1321144 (and b!5670839 d!1790100)))

(assert (=> bs!1321144 (not (= lambda!305182 lambda!305163))))

(declare-fun bs!1321145 () Bool)

(assert (= bs!1321145 (and b!5670839 d!1790094)))

(assert (=> bs!1321145 (not (= lambda!305182 lambda!305162))))

(declare-fun bs!1321146 () Bool)

(assert (= bs!1321146 (and b!5670839 d!1790034)))

(assert (=> bs!1321146 (not (= lambda!305182 lambda!305143))))

(declare-fun bs!1321147 () Bool)

(assert (= bs!1321147 (and b!5670839 b!5670241)))

(assert (=> bs!1321147 (not (= lambda!305182 lambda!305095))))

(declare-fun bs!1321148 () Bool)

(assert (= bs!1321148 (and b!5670839 b!5670249)))

(assert (=> bs!1321148 (not (= lambda!305182 lambda!305098))))

(assert (=> bs!1321143 (not (= lambda!305182 lambda!305155))))

(assert (=> bs!1321141 (not (= lambda!305182 lambda!305175))))

(assert (=> bs!1321148 (not (= lambda!305182 lambda!305101))))

(assert (=> bs!1321148 (not (= lambda!305182 lambda!305099))))

(declare-fun bs!1321149 () Bool)

(assert (= bs!1321149 (and b!5670839 d!1790080)))

(assert (=> bs!1321149 (not (= lambda!305182 lambda!305160))))

(assert (=> bs!1321148 (not (= lambda!305182 lambda!305100))))

(declare-fun bs!1321150 () Bool)

(assert (= bs!1321150 (and b!5670839 b!5670704)))

(assert (=> bs!1321150 (not (= lambda!305182 lambda!305174))))

(assert (=> bs!1321147 (not (= lambda!305182 lambda!305096))))

(assert (=> bs!1321149 (not (= lambda!305182 lambda!305158))))

(assert (=> b!5670839 true))

(assert (=> b!5670839 true))

(declare-fun bs!1321151 () Bool)

(declare-fun b!5670845 () Bool)

(assert (= bs!1321151 (and b!5670845 d!1790126)))

(declare-fun lambda!305183 () Int)

(assert (=> bs!1321151 (= (and (= (regOne!31826 lt!2268120) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 lt!2268120) lt!2268129)) (= lambda!305183 lambda!305176))))

(declare-fun bs!1321152 () Bool)

(assert (= bs!1321152 (and b!5670845 b!5670698)))

(assert (=> bs!1321152 (not (= lambda!305183 lambda!305172))))

(declare-fun bs!1321153 () Bool)

(assert (= bs!1321153 (and b!5670845 b!5670839)))

(assert (=> bs!1321153 (not (= lambda!305183 lambda!305182))))

(declare-fun bs!1321154 () Bool)

(assert (= bs!1321154 (and b!5670845 d!1790038)))

(assert (=> bs!1321154 (= (and (= (regOne!31826 lt!2268120) (regOne!31826 r!7292)) (= (regTwo!31826 lt!2268120) (regTwo!31826 r!7292))) (= lambda!305183 lambda!305156))))

(declare-fun bs!1321155 () Bool)

(assert (= bs!1321155 (and b!5670845 d!1790100)))

(assert (=> bs!1321155 (not (= lambda!305183 lambda!305163))))

(declare-fun bs!1321156 () Bool)

(assert (= bs!1321156 (and b!5670845 d!1790094)))

(assert (=> bs!1321156 (not (= lambda!305183 lambda!305162))))

(declare-fun bs!1321157 () Bool)

(assert (= bs!1321157 (and b!5670845 d!1790034)))

(assert (=> bs!1321157 (not (= lambda!305183 lambda!305143))))

(declare-fun bs!1321158 () Bool)

(assert (= bs!1321158 (and b!5670845 b!5670241)))

(assert (=> bs!1321158 (not (= lambda!305183 lambda!305095))))

(declare-fun bs!1321159 () Bool)

(assert (= bs!1321159 (and b!5670845 b!5670249)))

(assert (=> bs!1321159 (not (= lambda!305183 lambda!305098))))

(assert (=> bs!1321154 (not (= lambda!305183 lambda!305155))))

(assert (=> bs!1321151 (not (= lambda!305183 lambda!305175))))

(assert (=> bs!1321159 (= (and (= (regOne!31826 lt!2268120) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 lt!2268120) lt!2268129)) (= lambda!305183 lambda!305101))))

(assert (=> bs!1321159 (= (and (= (regOne!31826 lt!2268120) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 lt!2268120) lt!2268120)) (= lambda!305183 lambda!305099))))

(declare-fun bs!1321160 () Bool)

(assert (= bs!1321160 (and b!5670845 d!1790080)))

(assert (=> bs!1321160 (= (and (= (regOne!31826 lt!2268120) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 lt!2268120) lt!2268120)) (= lambda!305183 lambda!305160))))

(assert (=> bs!1321159 (not (= lambda!305183 lambda!305100))))

(declare-fun bs!1321161 () Bool)

(assert (= bs!1321161 (and b!5670845 b!5670704)))

(assert (=> bs!1321161 (= (and (= (regOne!31826 lt!2268120) (regOne!31826 lt!2268141)) (= (regTwo!31826 lt!2268120) (regTwo!31826 lt!2268141))) (= lambda!305183 lambda!305174))))

(assert (=> bs!1321158 (= (and (= (regOne!31826 lt!2268120) (regOne!31826 r!7292)) (= (regTwo!31826 lt!2268120) (regTwo!31826 r!7292))) (= lambda!305183 lambda!305096))))

(assert (=> bs!1321160 (not (= lambda!305183 lambda!305158))))

(assert (=> b!5670845 true))

(assert (=> b!5670845 true))

(declare-fun e!3490928 () Bool)

(declare-fun call!430110 () Bool)

(assert (=> b!5670839 (= e!3490928 call!430110)))

(declare-fun b!5670840 () Bool)

(declare-fun e!3490929 () Bool)

(declare-fun e!3490932 () Bool)

(assert (=> b!5670840 (= e!3490929 e!3490932)))

(declare-fun res!2396411 () Bool)

(assert (=> b!5670840 (= res!2396411 (not ((_ is EmptyLang!15657) lt!2268120)))))

(assert (=> b!5670840 (=> (not res!2396411) (not e!3490932))))

(declare-fun b!5670841 () Bool)

(declare-fun e!3490931 () Bool)

(assert (=> b!5670841 (= e!3490931 (matchRSpec!2760 (regTwo!31827 lt!2268120) s!2326))))

(declare-fun b!5670842 () Bool)

(declare-fun c!997411 () Bool)

(assert (=> b!5670842 (= c!997411 ((_ is ElementMatch!15657) lt!2268120))))

(declare-fun e!3490930 () Bool)

(assert (=> b!5670842 (= e!3490932 e!3490930)))

(declare-fun b!5670843 () Bool)

(declare-fun e!3490933 () Bool)

(declare-fun e!3490934 () Bool)

(assert (=> b!5670843 (= e!3490933 e!3490934)))

(declare-fun c!997410 () Bool)

(assert (=> b!5670843 (= c!997410 ((_ is Star!15657) lt!2268120))))

(assert (=> b!5670845 (= e!3490934 call!430110)))

(declare-fun b!5670846 () Bool)

(declare-fun call!430111 () Bool)

(assert (=> b!5670846 (= e!3490929 call!430111)))

(declare-fun bm!430105 () Bool)

(assert (=> bm!430105 (= call!430111 (isEmpty!35001 s!2326))))

(declare-fun b!5670847 () Bool)

(declare-fun c!997413 () Bool)

(assert (=> b!5670847 (= c!997413 ((_ is Union!15657) lt!2268120))))

(assert (=> b!5670847 (= e!3490930 e!3490933)))

(declare-fun bm!430106 () Bool)

(assert (=> bm!430106 (= call!430110 (Exists!2757 (ite c!997410 lambda!305182 lambda!305183)))))

(declare-fun d!1790168 () Bool)

(declare-fun c!997412 () Bool)

(assert (=> d!1790168 (= c!997412 ((_ is EmptyExpr!15657) lt!2268120))))

(assert (=> d!1790168 (= (matchRSpec!2760 lt!2268120 s!2326) e!3490929)))

(declare-fun b!5670844 () Bool)

(declare-fun res!2396409 () Bool)

(assert (=> b!5670844 (=> res!2396409 e!3490928)))

(assert (=> b!5670844 (= res!2396409 call!430111)))

(assert (=> b!5670844 (= e!3490934 e!3490928)))

(declare-fun b!5670848 () Bool)

(assert (=> b!5670848 (= e!3490930 (= s!2326 (Cons!63147 (c!997231 lt!2268120) Nil!63147)))))

(declare-fun b!5670849 () Bool)

(assert (=> b!5670849 (= e!3490933 e!3490931)))

(declare-fun res!2396410 () Bool)

(assert (=> b!5670849 (= res!2396410 (matchRSpec!2760 (regOne!31827 lt!2268120) s!2326))))

(assert (=> b!5670849 (=> res!2396410 e!3490931)))

(assert (= (and d!1790168 c!997412) b!5670846))

(assert (= (and d!1790168 (not c!997412)) b!5670840))

(assert (= (and b!5670840 res!2396411) b!5670842))

(assert (= (and b!5670842 c!997411) b!5670848))

(assert (= (and b!5670842 (not c!997411)) b!5670847))

(assert (= (and b!5670847 c!997413) b!5670849))

(assert (= (and b!5670847 (not c!997413)) b!5670843))

(assert (= (and b!5670849 (not res!2396410)) b!5670841))

(assert (= (and b!5670843 c!997410) b!5670844))

(assert (= (and b!5670843 (not c!997410)) b!5670845))

(assert (= (and b!5670844 (not res!2396409)) b!5670839))

(assert (= (or b!5670839 b!5670845) bm!430106))

(assert (= (or b!5670846 b!5670844) bm!430105))

(declare-fun m!6632148 () Bool)

(assert (=> b!5670841 m!6632148))

(assert (=> bm!430105 m!6631874))

(declare-fun m!6632150 () Bool)

(assert (=> bm!430106 m!6632150))

(declare-fun m!6632152 () Bool)

(assert (=> b!5670849 m!6632152))

(assert (=> b!5670249 d!1790168))

(declare-fun bs!1321162 () Bool)

(declare-fun d!1790174 () Bool)

(assert (= bs!1321162 (and d!1790174 d!1790140)))

(declare-fun lambda!305184 () Int)

(assert (=> bs!1321162 (= lambda!305184 lambda!305180)))

(declare-fun bs!1321163 () Bool)

(assert (= bs!1321163 (and d!1790174 d!1790156)))

(assert (=> bs!1321163 (= lambda!305184 lambda!305181)))

(declare-fun b!5670866 () Bool)

(declare-fun e!3490945 () Bool)

(declare-fun lt!2268285 () Regex!15657)

(assert (=> b!5670866 (= e!3490945 (= lt!2268285 (head!12039 lt!2268127)))))

(declare-fun b!5670867 () Bool)

(declare-fun e!3490949 () Regex!15657)

(assert (=> b!5670867 (= e!3490949 (Concat!24502 (h!69594 lt!2268127) (generalisedConcat!1272 (t!376576 lt!2268127))))))

(declare-fun b!5670868 () Bool)

(assert (=> b!5670868 (= e!3490945 (isConcat!710 lt!2268285))))

(declare-fun b!5670869 () Bool)

(declare-fun e!3490944 () Bool)

(assert (=> b!5670869 (= e!3490944 e!3490945)))

(declare-fun c!997421 () Bool)

(assert (=> b!5670869 (= c!997421 (isEmpty!34998 (tail!11134 lt!2268127)))))

(declare-fun b!5670870 () Bool)

(declare-fun e!3490946 () Bool)

(assert (=> b!5670870 (= e!3490946 (isEmpty!34998 (t!376576 lt!2268127)))))

(declare-fun b!5670872 () Bool)

(declare-fun e!3490947 () Bool)

(assert (=> b!5670872 (= e!3490947 e!3490944)))

(declare-fun c!997424 () Bool)

(assert (=> b!5670872 (= c!997424 (isEmpty!34998 lt!2268127))))

(declare-fun b!5670873 () Bool)

(assert (=> b!5670873 (= e!3490944 (isEmptyExpr!1187 lt!2268285))))

(declare-fun b!5670874 () Bool)

(assert (=> b!5670874 (= e!3490949 EmptyExpr!15657)))

(declare-fun b!5670875 () Bool)

(declare-fun e!3490948 () Regex!15657)

(assert (=> b!5670875 (= e!3490948 e!3490949)))

(declare-fun c!997422 () Bool)

(assert (=> b!5670875 (= c!997422 ((_ is Cons!63146) lt!2268127))))

(assert (=> d!1790174 e!3490947))

(declare-fun res!2396415 () Bool)

(assert (=> d!1790174 (=> (not res!2396415) (not e!3490947))))

(assert (=> d!1790174 (= res!2396415 (validRegex!7393 lt!2268285))))

(assert (=> d!1790174 (= lt!2268285 e!3490948)))

(declare-fun c!997423 () Bool)

(assert (=> d!1790174 (= c!997423 e!3490946)))

(declare-fun res!2396414 () Bool)

(assert (=> d!1790174 (=> (not res!2396414) (not e!3490946))))

(assert (=> d!1790174 (= res!2396414 ((_ is Cons!63146) lt!2268127))))

(assert (=> d!1790174 (forall!14810 lt!2268127 lambda!305184)))

(assert (=> d!1790174 (= (generalisedConcat!1272 lt!2268127) lt!2268285)))

(declare-fun b!5670871 () Bool)

(assert (=> b!5670871 (= e!3490948 (h!69594 lt!2268127))))

(assert (= (and d!1790174 res!2396414) b!5670870))

(assert (= (and d!1790174 c!997423) b!5670871))

(assert (= (and d!1790174 (not c!997423)) b!5670875))

(assert (= (and b!5670875 c!997422) b!5670867))

(assert (= (and b!5670875 (not c!997422)) b!5670874))

(assert (= (and d!1790174 res!2396415) b!5670872))

(assert (= (and b!5670872 c!997424) b!5670873))

(assert (= (and b!5670872 (not c!997424)) b!5670869))

(assert (= (and b!5670869 c!997421) b!5670866))

(assert (= (and b!5670869 (not c!997421)) b!5670868))

(declare-fun m!6632156 () Bool)

(assert (=> b!5670867 m!6632156))

(declare-fun m!6632160 () Bool)

(assert (=> b!5670873 m!6632160))

(declare-fun m!6632162 () Bool)

(assert (=> b!5670872 m!6632162))

(declare-fun m!6632166 () Bool)

(assert (=> b!5670869 m!6632166))

(assert (=> b!5670869 m!6632166))

(declare-fun m!6632168 () Bool)

(assert (=> b!5670869 m!6632168))

(declare-fun m!6632170 () Bool)

(assert (=> b!5670866 m!6632170))

(declare-fun m!6632172 () Bool)

(assert (=> b!5670868 m!6632172))

(declare-fun m!6632174 () Bool)

(assert (=> b!5670870 m!6632174))

(declare-fun m!6632176 () Bool)

(assert (=> d!1790174 m!6632176))

(declare-fun m!6632178 () Bool)

(assert (=> d!1790174 m!6632178))

(assert (=> b!5670249 d!1790174))

(declare-fun b!5670876 () Bool)

(declare-fun res!2396416 () Bool)

(declare-fun e!3490954 () Bool)

(assert (=> b!5670876 (=> (not res!2396416) (not e!3490954))))

(declare-fun lt!2268288 () Option!15666)

(assert (=> b!5670876 (= res!2396416 (matchR!7842 lt!2268120 (_2!36057 (get!21758 lt!2268288))))))

(declare-fun b!5670877 () Bool)

(declare-fun e!3490953 () Option!15666)

(declare-fun e!3490952 () Option!15666)

(assert (=> b!5670877 (= e!3490953 e!3490952)))

(declare-fun c!997426 () Bool)

(assert (=> b!5670877 (= c!997426 ((_ is Nil!63147) s!2326))))

(declare-fun b!5670878 () Bool)

(assert (=> b!5670878 (= e!3490952 None!15665)))

(declare-fun b!5670879 () Bool)

(declare-fun e!3490950 () Bool)

(assert (=> b!5670879 (= e!3490950 (matchR!7842 lt!2268120 s!2326))))

(declare-fun b!5670880 () Bool)

(assert (=> b!5670880 (= e!3490954 (= (++!13862 (_1!36057 (get!21758 lt!2268288)) (_2!36057 (get!21758 lt!2268288))) s!2326))))

(declare-fun d!1790178 () Bool)

(declare-fun e!3490951 () Bool)

(assert (=> d!1790178 e!3490951))

(declare-fun res!2396420 () Bool)

(assert (=> d!1790178 (=> res!2396420 e!3490951)))

(assert (=> d!1790178 (= res!2396420 e!3490954)))

(declare-fun res!2396417 () Bool)

(assert (=> d!1790178 (=> (not res!2396417) (not e!3490954))))

(assert (=> d!1790178 (= res!2396417 (isDefined!12369 lt!2268288))))

(assert (=> d!1790178 (= lt!2268288 e!3490953)))

(declare-fun c!997425 () Bool)

(assert (=> d!1790178 (= c!997425 e!3490950)))

(declare-fun res!2396419 () Bool)

(assert (=> d!1790178 (=> (not res!2396419) (not e!3490950))))

(assert (=> d!1790178 (= res!2396419 (matchR!7842 (regOne!31826 (regOne!31826 r!7292)) Nil!63147))))

(assert (=> d!1790178 (validRegex!7393 (regOne!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790178 (= (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 Nil!63147 s!2326 s!2326) lt!2268288)))

(declare-fun b!5670881 () Bool)

(assert (=> b!5670881 (= e!3490951 (not (isDefined!12369 lt!2268288)))))

(declare-fun b!5670882 () Bool)

(assert (=> b!5670882 (= e!3490953 (Some!15665 (tuple2!65509 Nil!63147 s!2326)))))

(declare-fun b!5670883 () Bool)

(declare-fun res!2396418 () Bool)

(assert (=> b!5670883 (=> (not res!2396418) (not e!3490954))))

(assert (=> b!5670883 (= res!2396418 (matchR!7842 (regOne!31826 (regOne!31826 r!7292)) (_1!36057 (get!21758 lt!2268288))))))

(declare-fun b!5670884 () Bool)

(declare-fun lt!2268289 () Unit!156160)

(declare-fun lt!2268287 () Unit!156160)

(assert (=> b!5670884 (= lt!2268289 lt!2268287)))

(assert (=> b!5670884 (= (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326)) s!2326)))

(assert (=> b!5670884 (= lt!2268287 (lemmaMoveElementToOtherListKeepsConcatEq!2031 Nil!63147 (h!69595 s!2326) (t!376577 s!2326) s!2326))))

(assert (=> b!5670884 (= e!3490952 (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326) s!2326))))

(assert (= (and d!1790178 res!2396419) b!5670879))

(assert (= (and d!1790178 c!997425) b!5670882))

(assert (= (and d!1790178 (not c!997425)) b!5670877))

(assert (= (and b!5670877 c!997426) b!5670878))

(assert (= (and b!5670877 (not c!997426)) b!5670884))

(assert (= (and d!1790178 res!2396417) b!5670883))

(assert (= (and b!5670883 res!2396418) b!5670876))

(assert (= (and b!5670876 res!2396416) b!5670880))

(assert (= (and d!1790178 (not res!2396420)) b!5670881))

(assert (=> b!5670884 m!6631716))

(assert (=> b!5670884 m!6631716))

(assert (=> b!5670884 m!6631718))

(assert (=> b!5670884 m!6631720))

(assert (=> b!5670884 m!6631716))

(declare-fun m!6632180 () Bool)

(assert (=> b!5670884 m!6632180))

(declare-fun m!6632182 () Bool)

(assert (=> b!5670876 m!6632182))

(declare-fun m!6632184 () Bool)

(assert (=> b!5670876 m!6632184))

(assert (=> b!5670880 m!6632182))

(declare-fun m!6632186 () Bool)

(assert (=> b!5670880 m!6632186))

(declare-fun m!6632188 () Bool)

(assert (=> d!1790178 m!6632188))

(declare-fun m!6632190 () Bool)

(assert (=> d!1790178 m!6632190))

(assert (=> d!1790178 m!6631890))

(assert (=> b!5670881 m!6632188))

(assert (=> b!5670883 m!6632182))

(declare-fun m!6632192 () Bool)

(assert (=> b!5670883 m!6632192))

(assert (=> b!5670879 m!6631534))

(assert (=> b!5670249 d!1790178))

(declare-fun bs!1321165 () Bool)

(declare-fun d!1790180 () Bool)

(assert (= bs!1321165 (and d!1790180 d!1790140)))

(declare-fun lambda!305185 () Int)

(assert (=> bs!1321165 (= lambda!305185 lambda!305180)))

(declare-fun bs!1321166 () Bool)

(assert (= bs!1321166 (and d!1790180 d!1790156)))

(assert (=> bs!1321166 (= lambda!305185 lambda!305181)))

(declare-fun bs!1321167 () Bool)

(assert (= bs!1321167 (and d!1790180 d!1790174)))

(assert (=> bs!1321167 (= lambda!305185 lambda!305184)))

(declare-fun b!5670889 () Bool)

(declare-fun e!3490958 () Bool)

(declare-fun lt!2268290 () Regex!15657)

(assert (=> b!5670889 (= e!3490958 (= lt!2268290 (head!12039 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5670890 () Bool)

(declare-fun e!3490962 () Regex!15657)

(assert (=> b!5670890 (= e!3490962 (Concat!24502 (h!69594 (exprs!5541 (h!69596 zl!343))) (generalisedConcat!1272 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5670891 () Bool)

(assert (=> b!5670891 (= e!3490958 (isConcat!710 lt!2268290))))

(declare-fun b!5670892 () Bool)

(declare-fun e!3490957 () Bool)

(assert (=> b!5670892 (= e!3490957 e!3490958)))

(declare-fun c!997427 () Bool)

(assert (=> b!5670892 (= c!997427 (isEmpty!34998 (tail!11134 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5670893 () Bool)

(declare-fun e!3490959 () Bool)

(assert (=> b!5670893 (= e!3490959 (isEmpty!34998 (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5670895 () Bool)

(declare-fun e!3490960 () Bool)

(assert (=> b!5670895 (= e!3490960 e!3490957)))

(declare-fun c!997430 () Bool)

(assert (=> b!5670895 (= c!997430 (isEmpty!34998 (exprs!5541 (h!69596 zl!343))))))

(declare-fun b!5670896 () Bool)

(assert (=> b!5670896 (= e!3490957 (isEmptyExpr!1187 lt!2268290))))

(declare-fun b!5670897 () Bool)

(assert (=> b!5670897 (= e!3490962 EmptyExpr!15657)))

(declare-fun b!5670898 () Bool)

(declare-fun e!3490961 () Regex!15657)

(assert (=> b!5670898 (= e!3490961 e!3490962)))

(declare-fun c!997428 () Bool)

(assert (=> b!5670898 (= c!997428 ((_ is Cons!63146) (exprs!5541 (h!69596 zl!343))))))

(assert (=> d!1790180 e!3490960))

(declare-fun res!2396424 () Bool)

(assert (=> d!1790180 (=> (not res!2396424) (not e!3490960))))

(assert (=> d!1790180 (= res!2396424 (validRegex!7393 lt!2268290))))

(assert (=> d!1790180 (= lt!2268290 e!3490961)))

(declare-fun c!997429 () Bool)

(assert (=> d!1790180 (= c!997429 e!3490959)))

(declare-fun res!2396423 () Bool)

(assert (=> d!1790180 (=> (not res!2396423) (not e!3490959))))

(assert (=> d!1790180 (= res!2396423 ((_ is Cons!63146) (exprs!5541 (h!69596 zl!343))))))

(assert (=> d!1790180 (forall!14810 (exprs!5541 (h!69596 zl!343)) lambda!305185)))

(assert (=> d!1790180 (= (generalisedConcat!1272 (exprs!5541 (h!69596 zl!343))) lt!2268290)))

(declare-fun b!5670894 () Bool)

(assert (=> b!5670894 (= e!3490961 (h!69594 (exprs!5541 (h!69596 zl!343))))))

(assert (= (and d!1790180 res!2396423) b!5670893))

(assert (= (and d!1790180 c!997429) b!5670894))

(assert (= (and d!1790180 (not c!997429)) b!5670898))

(assert (= (and b!5670898 c!997428) b!5670890))

(assert (= (and b!5670898 (not c!997428)) b!5670897))

(assert (= (and d!1790180 res!2396424) b!5670895))

(assert (= (and b!5670895 c!997430) b!5670896))

(assert (= (and b!5670895 (not c!997430)) b!5670892))

(assert (= (and b!5670892 c!997427) b!5670889))

(assert (= (and b!5670892 (not c!997427)) b!5670891))

(assert (=> b!5670890 m!6631562))

(declare-fun m!6632194 () Bool)

(assert (=> b!5670896 m!6632194))

(declare-fun m!6632196 () Bool)

(assert (=> b!5670895 m!6632196))

(declare-fun m!6632198 () Bool)

(assert (=> b!5670892 m!6632198))

(assert (=> b!5670892 m!6632198))

(declare-fun m!6632200 () Bool)

(assert (=> b!5670892 m!6632200))

(declare-fun m!6632202 () Bool)

(assert (=> b!5670889 m!6632202))

(declare-fun m!6632204 () Bool)

(assert (=> b!5670891 m!6632204))

(assert (=> b!5670893 m!6631458))

(declare-fun m!6632206 () Bool)

(assert (=> d!1790180 m!6632206))

(declare-fun m!6632208 () Bool)

(assert (=> d!1790180 m!6632208))

(assert (=> b!5670270 d!1790180))

(declare-fun d!1790182 () Bool)

(declare-fun nullableFct!1774 (Regex!15657) Bool)

(assert (=> d!1790182 (= (nullable!5689 (h!69594 (exprs!5541 (h!69596 zl!343)))) (nullableFct!1774 (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun bs!1321168 () Bool)

(assert (= bs!1321168 d!1790182))

(declare-fun m!6632210 () Bool)

(assert (=> bs!1321168 m!6632210))

(assert (=> b!5670246 d!1790182))

(declare-fun d!1790184 () Bool)

(declare-fun c!997442 () Bool)

(declare-fun e!3490990 () Bool)

(assert (=> d!1790184 (= c!997442 e!3490990)))

(declare-fun res!2396440 () Bool)

(assert (=> d!1790184 (=> (not res!2396440) (not e!3490990))))

(assert (=> d!1790184 (= res!2396440 ((_ is Cons!63146) (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))))

(declare-fun e!3490989 () (InoxSet Context!10082))

(assert (=> d!1790184 (= (derivationStepZipperUp!925 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))) (h!69595 s!2326)) e!3490989)))

(declare-fun b!5670932 () Bool)

(declare-fun e!3490988 () (InoxSet Context!10082))

(assert (=> b!5670932 (= e!3490989 e!3490988)))

(declare-fun c!997441 () Bool)

(assert (=> b!5670932 (= c!997441 ((_ is Cons!63146) (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))))

(declare-fun b!5670933 () Bool)

(assert (=> b!5670933 (= e!3490988 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430125 () Bool)

(declare-fun call!430130 () (InoxSet Context!10082))

(assert (=> bm!430125 (= call!430130 (derivationStepZipperDown!999 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))) (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (h!69595 s!2326)))))

(declare-fun b!5670934 () Bool)

(assert (=> b!5670934 (= e!3490990 (nullable!5689 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))))

(declare-fun b!5670935 () Bool)

(assert (=> b!5670935 (= e!3490989 ((_ map or) call!430130 (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (h!69595 s!2326))))))

(declare-fun b!5670936 () Bool)

(assert (=> b!5670936 (= e!3490988 call!430130)))

(assert (= (and d!1790184 res!2396440) b!5670934))

(assert (= (and d!1790184 c!997442) b!5670935))

(assert (= (and d!1790184 (not c!997442)) b!5670932))

(assert (= (and b!5670932 c!997441) b!5670936))

(assert (= (and b!5670932 (not c!997441)) b!5670933))

(assert (= (or b!5670935 b!5670936) bm!430125))

(declare-fun m!6632220 () Bool)

(assert (=> bm!430125 m!6632220))

(declare-fun m!6632222 () Bool)

(assert (=> b!5670934 m!6632222))

(declare-fun m!6632224 () Bool)

(assert (=> b!5670935 m!6632224))

(assert (=> b!5670246 d!1790184))

(declare-fun d!1790190 () Bool)

(declare-fun choose!42903 ((InoxSet Context!10082) Int) (InoxSet Context!10082))

(assert (=> d!1790190 (= (flatMap!1270 z!1189 lambda!305097) (choose!42903 z!1189 lambda!305097))))

(declare-fun bs!1321174 () Bool)

(assert (= bs!1321174 d!1790190))

(declare-fun m!6632226 () Bool)

(assert (=> bs!1321174 m!6632226))

(assert (=> b!5670246 d!1790190))

(declare-fun d!1790192 () Bool)

(declare-fun dynLambda!24711 (Int Context!10082) (InoxSet Context!10082))

(assert (=> d!1790192 (= (flatMap!1270 z!1189 lambda!305097) (dynLambda!24711 lambda!305097 (h!69596 zl!343)))))

(declare-fun lt!2268293 () Unit!156160)

(declare-fun choose!42904 ((InoxSet Context!10082) Context!10082 Int) Unit!156160)

(assert (=> d!1790192 (= lt!2268293 (choose!42904 z!1189 (h!69596 zl!343) lambda!305097))))

(assert (=> d!1790192 (= z!1189 (store ((as const (Array Context!10082 Bool)) false) (h!69596 zl!343) true))))

(assert (=> d!1790192 (= (lemmaFlatMapOnSingletonSet!802 z!1189 (h!69596 zl!343) lambda!305097) lt!2268293)))

(declare-fun b_lambda!214497 () Bool)

(assert (=> (not b_lambda!214497) (not d!1790192)))

(declare-fun bs!1321175 () Bool)

(assert (= bs!1321175 d!1790192))

(assert (=> bs!1321175 m!6631450))

(declare-fun m!6632228 () Bool)

(assert (=> bs!1321175 m!6632228))

(declare-fun m!6632230 () Bool)

(assert (=> bs!1321175 m!6632230))

(declare-fun m!6632232 () Bool)

(assert (=> bs!1321175 m!6632232))

(assert (=> b!5670246 d!1790192))

(declare-fun d!1790194 () Bool)

(declare-fun c!997444 () Bool)

(declare-fun e!3490993 () Bool)

(assert (=> d!1790194 (= c!997444 e!3490993)))

(declare-fun res!2396441 () Bool)

(assert (=> d!1790194 (=> (not res!2396441) (not e!3490993))))

(assert (=> d!1790194 (= res!2396441 ((_ is Cons!63146) (exprs!5541 (h!69596 zl!343))))))

(declare-fun e!3490992 () (InoxSet Context!10082))

(assert (=> d!1790194 (= (derivationStepZipperUp!925 (h!69596 zl!343) (h!69595 s!2326)) e!3490992)))

(declare-fun b!5670937 () Bool)

(declare-fun e!3490991 () (InoxSet Context!10082))

(assert (=> b!5670937 (= e!3490992 e!3490991)))

(declare-fun c!997443 () Bool)

(assert (=> b!5670937 (= c!997443 ((_ is Cons!63146) (exprs!5541 (h!69596 zl!343))))))

(declare-fun b!5670938 () Bool)

(assert (=> b!5670938 (= e!3490991 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430126 () Bool)

(declare-fun call!430131 () (InoxSet Context!10082))

(assert (=> bm!430126 (= call!430131 (derivationStepZipperDown!999 (h!69594 (exprs!5541 (h!69596 zl!343))) (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))) (h!69595 s!2326)))))

(declare-fun b!5670939 () Bool)

(assert (=> b!5670939 (= e!3490993 (nullable!5689 (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5670940 () Bool)

(assert (=> b!5670940 (= e!3490992 ((_ map or) call!430131 (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))) (h!69595 s!2326))))))

(declare-fun b!5670941 () Bool)

(assert (=> b!5670941 (= e!3490991 call!430131)))

(assert (= (and d!1790194 res!2396441) b!5670939))

(assert (= (and d!1790194 c!997444) b!5670940))

(assert (= (and d!1790194 (not c!997444)) b!5670937))

(assert (= (and b!5670937 c!997443) b!5670941))

(assert (= (and b!5670937 (not c!997443)) b!5670938))

(assert (= (or b!5670940 b!5670941) bm!430126))

(declare-fun m!6632234 () Bool)

(assert (=> bm!430126 m!6632234))

(assert (=> b!5670939 m!6631452))

(declare-fun m!6632236 () Bool)

(assert (=> b!5670940 m!6632236))

(assert (=> b!5670246 d!1790194))

(declare-fun b!5671002 () Bool)

(declare-fun e!3491030 () (InoxSet Context!10082))

(assert (=> b!5671002 (= e!3491030 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430139 () Bool)

(declare-fun call!430149 () (InoxSet Context!10082))

(declare-fun call!430148 () (InoxSet Context!10082))

(assert (=> bm!430139 (= call!430149 call!430148)))

(declare-fun b!5671003 () Bool)

(declare-fun e!3491034 () Bool)

(assert (=> b!5671003 (= e!3491034 (nullable!5689 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun bm!430140 () Bool)

(declare-fun call!430145 () (InoxSet Context!10082))

(assert (=> bm!430140 (= call!430145 call!430149)))

(declare-fun b!5671004 () Bool)

(assert (=> b!5671004 (= e!3491030 call!430145)))

(declare-fun b!5671005 () Bool)

(declare-fun e!3491032 () (InoxSet Context!10082))

(declare-fun call!430146 () (InoxSet Context!10082))

(assert (=> b!5671005 (= e!3491032 ((_ map or) call!430146 call!430149))))

(declare-fun b!5671006 () Bool)

(declare-fun e!3491029 () (InoxSet Context!10082))

(assert (=> b!5671006 (= e!3491029 (store ((as const (Array Context!10082 Bool)) false) lt!2268148 true))))

(declare-fun d!1790196 () Bool)

(declare-fun c!997473 () Bool)

(assert (=> d!1790196 (= c!997473 (and ((_ is ElementMatch!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))) (= (c!997231 (h!69594 (exprs!5541 (h!69596 zl!343)))) (h!69595 s!2326))))))

(assert (=> d!1790196 (= (derivationStepZipperDown!999 (h!69594 (exprs!5541 (h!69596 zl!343))) lt!2268148 (h!69595 s!2326)) e!3491029)))

(declare-fun b!5671007 () Bool)

(declare-fun e!3491031 () (InoxSet Context!10082))

(assert (=> b!5671007 (= e!3491031 call!430145)))

(declare-fun b!5671008 () Bool)

(declare-fun c!997474 () Bool)

(assert (=> b!5671008 (= c!997474 ((_ is Star!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> b!5671008 (= e!3491031 e!3491030)))

(declare-fun bm!430141 () Bool)

(declare-fun call!430147 () List!63270)

(declare-fun call!430144 () List!63270)

(assert (=> bm!430141 (= call!430147 call!430144)))

(declare-fun c!997471 () Bool)

(declare-fun bm!430142 () Bool)

(assert (=> bm!430142 (= call!430146 (derivationStepZipperDown!999 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))) (ite c!997471 lt!2268148 (Context!10083 call!430144)) (h!69595 s!2326)))))

(declare-fun b!5671009 () Bool)

(declare-fun c!997472 () Bool)

(assert (=> b!5671009 (= c!997472 e!3491034)))

(declare-fun res!2396452 () Bool)

(assert (=> b!5671009 (=> (not res!2396452) (not e!3491034))))

(assert (=> b!5671009 (= res!2396452 ((_ is Concat!24502) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun e!3491033 () (InoxSet Context!10082))

(assert (=> b!5671009 (= e!3491033 e!3491032)))

(declare-fun b!5671010 () Bool)

(assert (=> b!5671010 (= e!3491032 e!3491031)))

(declare-fun c!997470 () Bool)

(assert (=> b!5671010 (= c!997470 ((_ is Concat!24502) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5671011 () Bool)

(assert (=> b!5671011 (= e!3491033 ((_ map or) call!430146 call!430148))))

(declare-fun bm!430143 () Bool)

(assert (=> bm!430143 (= call!430148 (derivationStepZipperDown!999 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343))))))) (ite (or c!997471 c!997472) lt!2268148 (Context!10083 call!430147)) (h!69595 s!2326)))))

(declare-fun bm!430144 () Bool)

(declare-fun $colon$colon!1695 (List!63270 Regex!15657) List!63270)

(assert (=> bm!430144 (= call!430144 ($colon$colon!1695 (exprs!5541 lt!2268148) (ite (or c!997472 c!997470) (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (h!69594 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5671012 () Bool)

(assert (=> b!5671012 (= e!3491029 e!3491033)))

(assert (=> b!5671012 (= c!997471 ((_ is Union!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(assert (= (and d!1790196 c!997473) b!5671006))

(assert (= (and d!1790196 (not c!997473)) b!5671012))

(assert (= (and b!5671012 c!997471) b!5671011))

(assert (= (and b!5671012 (not c!997471)) b!5671009))

(assert (= (and b!5671009 res!2396452) b!5671003))

(assert (= (and b!5671009 c!997472) b!5671005))

(assert (= (and b!5671009 (not c!997472)) b!5671010))

(assert (= (and b!5671010 c!997470) b!5671007))

(assert (= (and b!5671010 (not c!997470)) b!5671008))

(assert (= (and b!5671008 c!997474) b!5671004))

(assert (= (and b!5671008 (not c!997474)) b!5671002))

(assert (= (or b!5671007 b!5671004) bm!430141))

(assert (= (or b!5671007 b!5671004) bm!430140))

(assert (= (or b!5671005 bm!430141) bm!430144))

(assert (= (or b!5671005 bm!430140) bm!430139))

(assert (= (or b!5671011 bm!430139) bm!430143))

(assert (= (or b!5671011 b!5671005) bm!430142))

(declare-fun m!6632274 () Bool)

(assert (=> bm!430143 m!6632274))

(declare-fun m!6632276 () Bool)

(assert (=> bm!430142 m!6632276))

(declare-fun m!6632278 () Bool)

(assert (=> b!5671003 m!6632278))

(declare-fun m!6632280 () Bool)

(assert (=> bm!430144 m!6632280))

(declare-fun m!6632282 () Bool)

(assert (=> b!5671006 m!6632282))

(assert (=> b!5670246 d!1790196))

(declare-fun d!1790206 () Bool)

(declare-fun c!997482 () Bool)

(declare-fun e!3491045 () Bool)

(assert (=> d!1790206 (= c!997482 e!3491045)))

(declare-fun res!2396455 () Bool)

(assert (=> d!1790206 (=> (not res!2396455) (not e!3491045))))

(assert (=> d!1790206 (= res!2396455 ((_ is Cons!63146) (exprs!5541 lt!2268148)))))

(declare-fun e!3491044 () (InoxSet Context!10082))

(assert (=> d!1790206 (= (derivationStepZipperUp!925 lt!2268148 (h!69595 s!2326)) e!3491044)))

(declare-fun b!5671027 () Bool)

(declare-fun e!3491043 () (InoxSet Context!10082))

(assert (=> b!5671027 (= e!3491044 e!3491043)))

(declare-fun c!997481 () Bool)

(assert (=> b!5671027 (= c!997481 ((_ is Cons!63146) (exprs!5541 lt!2268148)))))

(declare-fun b!5671028 () Bool)

(assert (=> b!5671028 (= e!3491043 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430151 () Bool)

(declare-fun call!430156 () (InoxSet Context!10082))

(assert (=> bm!430151 (= call!430156 (derivationStepZipperDown!999 (h!69594 (exprs!5541 lt!2268148)) (Context!10083 (t!376576 (exprs!5541 lt!2268148))) (h!69595 s!2326)))))

(declare-fun b!5671029 () Bool)

(assert (=> b!5671029 (= e!3491045 (nullable!5689 (h!69594 (exprs!5541 lt!2268148))))))

(declare-fun b!5671030 () Bool)

(assert (=> b!5671030 (= e!3491044 ((_ map or) call!430156 (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 lt!2268148))) (h!69595 s!2326))))))

(declare-fun b!5671031 () Bool)

(assert (=> b!5671031 (= e!3491043 call!430156)))

(assert (= (and d!1790206 res!2396455) b!5671029))

(assert (= (and d!1790206 c!997482) b!5671030))

(assert (= (and d!1790206 (not c!997482)) b!5671027))

(assert (= (and b!5671027 c!997481) b!5671031))

(assert (= (and b!5671027 (not c!997481)) b!5671028))

(assert (= (or b!5671030 b!5671031) bm!430151))

(declare-fun m!6632284 () Bool)

(assert (=> bm!430151 m!6632284))

(declare-fun m!6632286 () Bool)

(assert (=> b!5671029 m!6632286))

(declare-fun m!6632288 () Bool)

(assert (=> b!5671030 m!6632288))

(assert (=> b!5670246 d!1790206))

(declare-fun bs!1321187 () Bool)

(declare-fun b!5671032 () Bool)

(assert (= bs!1321187 (and b!5671032 d!1790126)))

(declare-fun lambda!305195 () Int)

(assert (=> bs!1321187 (not (= lambda!305195 lambda!305176))))

(declare-fun bs!1321188 () Bool)

(assert (= bs!1321188 (and b!5671032 b!5670698)))

(assert (=> bs!1321188 (= (and (= (reg!15986 r!7292) (reg!15986 lt!2268141)) (= r!7292 lt!2268141)) (= lambda!305195 lambda!305172))))

(declare-fun bs!1321189 () Bool)

(assert (= bs!1321189 (and b!5671032 b!5670839)))

(assert (=> bs!1321189 (= (and (= (reg!15986 r!7292) (reg!15986 lt!2268120)) (= r!7292 lt!2268120)) (= lambda!305195 lambda!305182))))

(declare-fun bs!1321190 () Bool)

(assert (= bs!1321190 (and b!5671032 d!1790038)))

(assert (=> bs!1321190 (not (= lambda!305195 lambda!305156))))

(declare-fun bs!1321191 () Bool)

(assert (= bs!1321191 (and b!5671032 d!1790100)))

(assert (=> bs!1321191 (not (= lambda!305195 lambda!305163))))

(declare-fun bs!1321192 () Bool)

(assert (= bs!1321192 (and b!5671032 d!1790094)))

(assert (=> bs!1321192 (not (= lambda!305195 lambda!305162))))

(declare-fun bs!1321193 () Bool)

(assert (= bs!1321193 (and b!5671032 d!1790034)))

(assert (=> bs!1321193 (not (= lambda!305195 lambda!305143))))

(declare-fun bs!1321194 () Bool)

(assert (= bs!1321194 (and b!5671032 b!5670241)))

(assert (=> bs!1321194 (not (= lambda!305195 lambda!305095))))

(declare-fun bs!1321195 () Bool)

(assert (= bs!1321195 (and b!5671032 b!5670845)))

(assert (=> bs!1321195 (not (= lambda!305195 lambda!305183))))

(declare-fun bs!1321196 () Bool)

(assert (= bs!1321196 (and b!5671032 b!5670249)))

(assert (=> bs!1321196 (not (= lambda!305195 lambda!305098))))

(assert (=> bs!1321190 (not (= lambda!305195 lambda!305155))))

(assert (=> bs!1321187 (not (= lambda!305195 lambda!305175))))

(assert (=> bs!1321196 (not (= lambda!305195 lambda!305101))))

(assert (=> bs!1321196 (not (= lambda!305195 lambda!305099))))

(declare-fun bs!1321197 () Bool)

(assert (= bs!1321197 (and b!5671032 d!1790080)))

(assert (=> bs!1321197 (not (= lambda!305195 lambda!305160))))

(assert (=> bs!1321196 (not (= lambda!305195 lambda!305100))))

(declare-fun bs!1321198 () Bool)

(assert (= bs!1321198 (and b!5671032 b!5670704)))

(assert (=> bs!1321198 (not (= lambda!305195 lambda!305174))))

(assert (=> bs!1321194 (not (= lambda!305195 lambda!305096))))

(assert (=> bs!1321197 (not (= lambda!305195 lambda!305158))))

(assert (=> b!5671032 true))

(assert (=> b!5671032 true))

(declare-fun bs!1321199 () Bool)

(declare-fun b!5671038 () Bool)

(assert (= bs!1321199 (and b!5671038 d!1790126)))

(declare-fun lambda!305196 () Int)

(assert (=> bs!1321199 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305196 lambda!305176))))

(declare-fun bs!1321200 () Bool)

(assert (= bs!1321200 (and b!5671038 b!5670698)))

(assert (=> bs!1321200 (not (= lambda!305196 lambda!305172))))

(declare-fun bs!1321201 () Bool)

(assert (= bs!1321201 (and b!5671038 b!5670839)))

(assert (=> bs!1321201 (not (= lambda!305196 lambda!305182))))

(declare-fun bs!1321202 () Bool)

(assert (= bs!1321202 (and b!5671038 d!1790038)))

(assert (=> bs!1321202 (= lambda!305196 lambda!305156)))

(declare-fun bs!1321203 () Bool)

(assert (= bs!1321203 (and b!5671038 d!1790100)))

(assert (=> bs!1321203 (not (= lambda!305196 lambda!305163))))

(declare-fun bs!1321204 () Bool)

(assert (= bs!1321204 (and b!5671038 d!1790094)))

(assert (=> bs!1321204 (not (= lambda!305196 lambda!305162))))

(declare-fun bs!1321205 () Bool)

(assert (= bs!1321205 (and b!5671038 d!1790034)))

(assert (=> bs!1321205 (not (= lambda!305196 lambda!305143))))

(declare-fun bs!1321207 () Bool)

(assert (= bs!1321207 (and b!5671038 b!5670241)))

(assert (=> bs!1321207 (not (= lambda!305196 lambda!305095))))

(declare-fun bs!1321209 () Bool)

(assert (= bs!1321209 (and b!5671038 b!5670845)))

(assert (=> bs!1321209 (= (and (= (regOne!31826 r!7292) (regOne!31826 lt!2268120)) (= (regTwo!31826 r!7292) (regTwo!31826 lt!2268120))) (= lambda!305196 lambda!305183))))

(declare-fun bs!1321212 () Bool)

(assert (= bs!1321212 (and b!5671038 b!5670249)))

(assert (=> bs!1321212 (not (= lambda!305196 lambda!305098))))

(declare-fun bs!1321215 () Bool)

(assert (= bs!1321215 (and b!5671038 b!5671032)))

(assert (=> bs!1321215 (not (= lambda!305196 lambda!305195))))

(assert (=> bs!1321202 (not (= lambda!305196 lambda!305155))))

(assert (=> bs!1321199 (not (= lambda!305196 lambda!305175))))

(assert (=> bs!1321212 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305196 lambda!305101))))

(assert (=> bs!1321212 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305196 lambda!305099))))

(declare-fun bs!1321219 () Bool)

(assert (= bs!1321219 (and b!5671038 d!1790080)))

(assert (=> bs!1321219 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305196 lambda!305160))))

(assert (=> bs!1321212 (not (= lambda!305196 lambda!305100))))

(declare-fun bs!1321220 () Bool)

(assert (= bs!1321220 (and b!5671038 b!5670704)))

(assert (=> bs!1321220 (= (and (= (regOne!31826 r!7292) (regOne!31826 lt!2268141)) (= (regTwo!31826 r!7292) (regTwo!31826 lt!2268141))) (= lambda!305196 lambda!305174))))

(assert (=> bs!1321207 (= lambda!305196 lambda!305096)))

(assert (=> bs!1321219 (not (= lambda!305196 lambda!305158))))

(assert (=> b!5671038 true))

(assert (=> b!5671038 true))

(declare-fun e!3491046 () Bool)

(declare-fun call!430157 () Bool)

(assert (=> b!5671032 (= e!3491046 call!430157)))

(declare-fun b!5671033 () Bool)

(declare-fun e!3491047 () Bool)

(declare-fun e!3491050 () Bool)

(assert (=> b!5671033 (= e!3491047 e!3491050)))

(declare-fun res!2396458 () Bool)

(assert (=> b!5671033 (= res!2396458 (not ((_ is EmptyLang!15657) r!7292)))))

(assert (=> b!5671033 (=> (not res!2396458) (not e!3491050))))

(declare-fun b!5671034 () Bool)

(declare-fun e!3491049 () Bool)

(assert (=> b!5671034 (= e!3491049 (matchRSpec!2760 (regTwo!31827 r!7292) s!2326))))

(declare-fun b!5671035 () Bool)

(declare-fun c!997484 () Bool)

(assert (=> b!5671035 (= c!997484 ((_ is ElementMatch!15657) r!7292))))

(declare-fun e!3491048 () Bool)

(assert (=> b!5671035 (= e!3491050 e!3491048)))

(declare-fun b!5671036 () Bool)

(declare-fun e!3491051 () Bool)

(declare-fun e!3491052 () Bool)

(assert (=> b!5671036 (= e!3491051 e!3491052)))

(declare-fun c!997483 () Bool)

(assert (=> b!5671036 (= c!997483 ((_ is Star!15657) r!7292))))

(assert (=> b!5671038 (= e!3491052 call!430157)))

(declare-fun b!5671039 () Bool)

(declare-fun call!430158 () Bool)

(assert (=> b!5671039 (= e!3491047 call!430158)))

(declare-fun bm!430152 () Bool)

(assert (=> bm!430152 (= call!430158 (isEmpty!35001 s!2326))))

(declare-fun b!5671040 () Bool)

(declare-fun c!997486 () Bool)

(assert (=> b!5671040 (= c!997486 ((_ is Union!15657) r!7292))))

(assert (=> b!5671040 (= e!3491048 e!3491051)))

(declare-fun bm!430153 () Bool)

(assert (=> bm!430153 (= call!430157 (Exists!2757 (ite c!997483 lambda!305195 lambda!305196)))))

(declare-fun d!1790208 () Bool)

(declare-fun c!997485 () Bool)

(assert (=> d!1790208 (= c!997485 ((_ is EmptyExpr!15657) r!7292))))

(assert (=> d!1790208 (= (matchRSpec!2760 r!7292 s!2326) e!3491047)))

(declare-fun b!5671037 () Bool)

(declare-fun res!2396456 () Bool)

(assert (=> b!5671037 (=> res!2396456 e!3491046)))

(assert (=> b!5671037 (= res!2396456 call!430158)))

(assert (=> b!5671037 (= e!3491052 e!3491046)))

(declare-fun b!5671041 () Bool)

(assert (=> b!5671041 (= e!3491048 (= s!2326 (Cons!63147 (c!997231 r!7292) Nil!63147)))))

(declare-fun b!5671042 () Bool)

(assert (=> b!5671042 (= e!3491051 e!3491049)))

(declare-fun res!2396457 () Bool)

(assert (=> b!5671042 (= res!2396457 (matchRSpec!2760 (regOne!31827 r!7292) s!2326))))

(assert (=> b!5671042 (=> res!2396457 e!3491049)))

(assert (= (and d!1790208 c!997485) b!5671039))

(assert (= (and d!1790208 (not c!997485)) b!5671033))

(assert (= (and b!5671033 res!2396458) b!5671035))

(assert (= (and b!5671035 c!997484) b!5671041))

(assert (= (and b!5671035 (not c!997484)) b!5671040))

(assert (= (and b!5671040 c!997486) b!5671042))

(assert (= (and b!5671040 (not c!997486)) b!5671036))

(assert (= (and b!5671042 (not res!2396457)) b!5671034))

(assert (= (and b!5671036 c!997483) b!5671037))

(assert (= (and b!5671036 (not c!997483)) b!5671038))

(assert (= (and b!5671037 (not res!2396456)) b!5671032))

(assert (= (or b!5671032 b!5671038) bm!430153))

(assert (= (or b!5671039 b!5671037) bm!430152))

(declare-fun m!6632322 () Bool)

(assert (=> b!5671034 m!6632322))

(assert (=> bm!430152 m!6631874))

(declare-fun m!6632324 () Bool)

(assert (=> bm!430153 m!6632324))

(declare-fun m!6632326 () Bool)

(assert (=> b!5671042 m!6632326))

(assert (=> b!5670268 d!1790208))

(declare-fun b!5671056 () Bool)

(declare-fun res!2396460 () Bool)

(declare-fun e!3491064 () Bool)

(assert (=> b!5671056 (=> (not res!2396460) (not e!3491064))))

(declare-fun call!430160 () Bool)

(assert (=> b!5671056 (= res!2396460 (not call!430160))))

(declare-fun b!5671057 () Bool)

(declare-fun e!3491062 () Bool)

(declare-fun e!3491063 () Bool)

(assert (=> b!5671057 (= e!3491062 e!3491063)))

(declare-fun c!997494 () Bool)

(assert (=> b!5671057 (= c!997494 ((_ is EmptyLang!15657) r!7292))))

(declare-fun b!5671058 () Bool)

(declare-fun e!3491060 () Bool)

(assert (=> b!5671058 (= e!3491060 (matchR!7842 (derivativeStep!4482 r!7292 (head!12038 s!2326)) (tail!11133 s!2326)))))

(declare-fun b!5671059 () Bool)

(assert (=> b!5671059 (= e!3491060 (nullable!5689 r!7292))))

(declare-fun bm!430155 () Bool)

(assert (=> bm!430155 (= call!430160 (isEmpty!35001 s!2326))))

(declare-fun b!5671060 () Bool)

(declare-fun res!2396461 () Bool)

(assert (=> b!5671060 (=> (not res!2396461) (not e!3491064))))

(assert (=> b!5671060 (= res!2396461 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun b!5671061 () Bool)

(declare-fun e!3491065 () Bool)

(declare-fun e!3491061 () Bool)

(assert (=> b!5671061 (= e!3491065 e!3491061)))

(declare-fun res!2396465 () Bool)

(assert (=> b!5671061 (=> (not res!2396465) (not e!3491061))))

(declare-fun lt!2268308 () Bool)

(assert (=> b!5671061 (= res!2396465 (not lt!2268308))))

(declare-fun b!5671062 () Bool)

(declare-fun e!3491066 () Bool)

(assert (=> b!5671062 (= e!3491061 e!3491066)))

(declare-fun res!2396463 () Bool)

(assert (=> b!5671062 (=> res!2396463 e!3491066)))

(assert (=> b!5671062 (= res!2396463 call!430160)))

(declare-fun d!1790224 () Bool)

(assert (=> d!1790224 e!3491062))

(declare-fun c!997495 () Bool)

(assert (=> d!1790224 (= c!997495 ((_ is EmptyExpr!15657) r!7292))))

(assert (=> d!1790224 (= lt!2268308 e!3491060)))

(declare-fun c!997496 () Bool)

(assert (=> d!1790224 (= c!997496 (isEmpty!35001 s!2326))))

(assert (=> d!1790224 (validRegex!7393 r!7292)))

(assert (=> d!1790224 (= (matchR!7842 r!7292 s!2326) lt!2268308)))

(declare-fun b!5671063 () Bool)

(assert (=> b!5671063 (= e!3491066 (not (= (head!12038 s!2326) (c!997231 r!7292))))))

(declare-fun b!5671064 () Bool)

(declare-fun res!2396462 () Bool)

(assert (=> b!5671064 (=> res!2396462 e!3491065)))

(assert (=> b!5671064 (= res!2396462 e!3491064)))

(declare-fun res!2396464 () Bool)

(assert (=> b!5671064 (=> (not res!2396464) (not e!3491064))))

(assert (=> b!5671064 (= res!2396464 lt!2268308)))

(declare-fun b!5671065 () Bool)

(assert (=> b!5671065 (= e!3491063 (not lt!2268308))))

(declare-fun b!5671066 () Bool)

(assert (=> b!5671066 (= e!3491062 (= lt!2268308 call!430160))))

(declare-fun b!5671067 () Bool)

(declare-fun res!2396467 () Bool)

(assert (=> b!5671067 (=> res!2396467 e!3491066)))

(assert (=> b!5671067 (= res!2396467 (not (isEmpty!35001 (tail!11133 s!2326))))))

(declare-fun b!5671068 () Bool)

(assert (=> b!5671068 (= e!3491064 (= (head!12038 s!2326) (c!997231 r!7292)))))

(declare-fun b!5671069 () Bool)

(declare-fun res!2396466 () Bool)

(assert (=> b!5671069 (=> res!2396466 e!3491065)))

(assert (=> b!5671069 (= res!2396466 (not ((_ is ElementMatch!15657) r!7292)))))

(assert (=> b!5671069 (= e!3491063 e!3491065)))

(assert (= (and d!1790224 c!997496) b!5671059))

(assert (= (and d!1790224 (not c!997496)) b!5671058))

(assert (= (and d!1790224 c!997495) b!5671066))

(assert (= (and d!1790224 (not c!997495)) b!5671057))

(assert (= (and b!5671057 c!997494) b!5671065))

(assert (= (and b!5671057 (not c!997494)) b!5671069))

(assert (= (and b!5671069 (not res!2396466)) b!5671064))

(assert (= (and b!5671064 res!2396464) b!5671056))

(assert (= (and b!5671056 res!2396460) b!5671060))

(assert (= (and b!5671060 res!2396461) b!5671068))

(assert (= (and b!5671064 (not res!2396462)) b!5671061))

(assert (= (and b!5671061 res!2396465) b!5671062))

(assert (= (and b!5671062 (not res!2396463)) b!5671067))

(assert (= (and b!5671067 (not res!2396467)) b!5671063))

(assert (= (or b!5671066 b!5671056 b!5671062) bm!430155))

(assert (=> b!5671060 m!6631868))

(assert (=> b!5671060 m!6631868))

(assert (=> b!5671060 m!6631870))

(assert (=> b!5671067 m!6631868))

(assert (=> b!5671067 m!6631868))

(assert (=> b!5671067 m!6631870))

(assert (=> d!1790224 m!6631874))

(assert (=> d!1790224 m!6631468))

(assert (=> b!5671068 m!6631876))

(assert (=> b!5671058 m!6631876))

(assert (=> b!5671058 m!6631876))

(declare-fun m!6632328 () Bool)

(assert (=> b!5671058 m!6632328))

(assert (=> b!5671058 m!6631868))

(assert (=> b!5671058 m!6632328))

(assert (=> b!5671058 m!6631868))

(declare-fun m!6632330 () Bool)

(assert (=> b!5671058 m!6632330))

(declare-fun m!6632332 () Bool)

(assert (=> b!5671059 m!6632332))

(assert (=> b!5671063 m!6631876))

(assert (=> bm!430155 m!6631874))

(assert (=> b!5670268 d!1790224))

(declare-fun d!1790226 () Bool)

(assert (=> d!1790226 (= (matchR!7842 r!7292 s!2326) (matchRSpec!2760 r!7292 s!2326))))

(declare-fun lt!2268309 () Unit!156160)

(assert (=> d!1790226 (= lt!2268309 (choose!42897 r!7292 s!2326))))

(assert (=> d!1790226 (validRegex!7393 r!7292)))

(assert (=> d!1790226 (= (mainMatchTheorem!2760 r!7292 s!2326) lt!2268309)))

(declare-fun bs!1321222 () Bool)

(assert (= bs!1321222 d!1790226))

(assert (=> bs!1321222 m!6631516))

(assert (=> bs!1321222 m!6631514))

(declare-fun m!6632334 () Bool)

(assert (=> bs!1321222 m!6632334))

(assert (=> bs!1321222 m!6631468))

(assert (=> b!5670268 d!1790226))

(declare-fun bs!1321225 () Bool)

(declare-fun d!1790228 () Bool)

(assert (= bs!1321225 (and d!1790228 d!1790140)))

(declare-fun lambda!305203 () Int)

(assert (=> bs!1321225 (= lambda!305203 lambda!305180)))

(declare-fun bs!1321226 () Bool)

(assert (= bs!1321226 (and d!1790228 d!1790156)))

(assert (=> bs!1321226 (= lambda!305203 lambda!305181)))

(declare-fun bs!1321227 () Bool)

(assert (= bs!1321227 (and d!1790228 d!1790174)))

(assert (=> bs!1321227 (= lambda!305203 lambda!305184)))

(declare-fun bs!1321228 () Bool)

(assert (= bs!1321228 (and d!1790228 d!1790180)))

(assert (=> bs!1321228 (= lambda!305203 lambda!305185)))

(assert (=> d!1790228 (= (inv!82389 (h!69596 zl!343)) (forall!14810 (exprs!5541 (h!69596 zl!343)) lambda!305203))))

(declare-fun bs!1321229 () Bool)

(assert (= bs!1321229 d!1790228))

(declare-fun m!6632338 () Bool)

(assert (=> bs!1321229 m!6632338))

(assert (=> b!5670267 d!1790228))

(declare-fun d!1790230 () Bool)

(declare-fun lt!2268312 () Int)

(assert (=> d!1790230 (>= lt!2268312 0)))

(declare-fun e!3491092 () Int)

(assert (=> d!1790230 (= lt!2268312 e!3491092)))

(declare-fun c!997502 () Bool)

(assert (=> d!1790230 (= c!997502 ((_ is Cons!63146) (exprs!5541 lt!2268119)))))

(assert (=> d!1790230 (= (contextDepthTotal!232 lt!2268119) lt!2268312)))

(declare-fun b!5671130 () Bool)

(declare-fun regexDepthTotal!104 (Regex!15657) Int)

(assert (=> b!5671130 (= e!3491092 (+ (regexDepthTotal!104 (h!69594 (exprs!5541 lt!2268119))) (contextDepthTotal!232 (Context!10083 (t!376576 (exprs!5541 lt!2268119))))))))

(declare-fun b!5671131 () Bool)

(assert (=> b!5671131 (= e!3491092 1)))

(assert (= (and d!1790230 c!997502) b!5671130))

(assert (= (and d!1790230 (not c!997502)) b!5671131))

(declare-fun m!6632344 () Bool)

(assert (=> b!5671130 m!6632344))

(declare-fun m!6632346 () Bool)

(assert (=> b!5671130 m!6632346))

(assert (=> b!5670247 d!1790230))

(declare-fun d!1790233 () Bool)

(declare-fun lt!2268313 () Int)

(assert (=> d!1790233 (>= lt!2268313 0)))

(declare-fun e!3491093 () Int)

(assert (=> d!1790233 (= lt!2268313 e!3491093)))

(declare-fun c!997503 () Bool)

(assert (=> d!1790233 (= c!997503 ((_ is Cons!63146) (exprs!5541 (h!69596 zl!343))))))

(assert (=> d!1790233 (= (contextDepthTotal!232 (h!69596 zl!343)) lt!2268313)))

(declare-fun b!5671132 () Bool)

(assert (=> b!5671132 (= e!3491093 (+ (regexDepthTotal!104 (h!69594 (exprs!5541 (h!69596 zl!343)))) (contextDepthTotal!232 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5671133 () Bool)

(assert (=> b!5671133 (= e!3491093 1)))

(assert (= (and d!1790233 c!997503) b!5671132))

(assert (= (and d!1790233 (not c!997503)) b!5671133))

(declare-fun m!6632348 () Bool)

(assert (=> b!5671132 m!6632348))

(declare-fun m!6632350 () Bool)

(assert (=> b!5671132 m!6632350))

(assert (=> b!5670247 d!1790233))

(declare-fun bs!1321232 () Bool)

(declare-fun d!1790238 () Bool)

(assert (= bs!1321232 (and d!1790238 d!1790156)))

(declare-fun lambda!305204 () Int)

(assert (=> bs!1321232 (= lambda!305204 lambda!305181)))

(declare-fun bs!1321233 () Bool)

(assert (= bs!1321233 (and d!1790238 d!1790174)))

(assert (=> bs!1321233 (= lambda!305204 lambda!305184)))

(declare-fun bs!1321234 () Bool)

(assert (= bs!1321234 (and d!1790238 d!1790180)))

(assert (=> bs!1321234 (= lambda!305204 lambda!305185)))

(declare-fun bs!1321235 () Bool)

(assert (= bs!1321235 (and d!1790238 d!1790140)))

(assert (=> bs!1321235 (= lambda!305204 lambda!305180)))

(declare-fun bs!1321236 () Bool)

(assert (= bs!1321236 (and d!1790238 d!1790228)))

(assert (=> bs!1321236 (= lambda!305204 lambda!305203)))

(assert (=> d!1790238 (= (inv!82389 setElem!37895) (forall!14810 (exprs!5541 setElem!37895) lambda!305204))))

(declare-fun bs!1321237 () Bool)

(assert (= bs!1321237 d!1790238))

(declare-fun m!6632352 () Bool)

(assert (=> bs!1321237 m!6632352))

(assert (=> setNonEmpty!37895 d!1790238))

(declare-fun b!5671134 () Bool)

(declare-fun e!3491095 () (InoxSet Context!10082))

(assert (=> b!5671134 (= e!3491095 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430156 () Bool)

(declare-fun call!430166 () (InoxSet Context!10082))

(declare-fun call!430165 () (InoxSet Context!10082))

(assert (=> bm!430156 (= call!430166 call!430165)))

(declare-fun b!5671135 () Bool)

(declare-fun e!3491099 () Bool)

(assert (=> b!5671135 (= e!3491099 (nullable!5689 (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))))))

(declare-fun bm!430157 () Bool)

(declare-fun call!430162 () (InoxSet Context!10082))

(assert (=> bm!430157 (= call!430162 call!430166)))

(declare-fun b!5671136 () Bool)

(assert (=> b!5671136 (= e!3491095 call!430162)))

(declare-fun b!5671137 () Bool)

(declare-fun e!3491097 () (InoxSet Context!10082))

(declare-fun call!430163 () (InoxSet Context!10082))

(assert (=> b!5671137 (= e!3491097 ((_ map or) call!430163 call!430166))))

(declare-fun b!5671138 () Bool)

(declare-fun e!3491094 () (InoxSet Context!10082))

(assert (=> b!5671138 (= e!3491094 (store ((as const (Array Context!10082 Bool)) false) (Context!10083 lt!2268152) true))))

(declare-fun d!1790240 () Bool)

(declare-fun c!997507 () Bool)

(assert (=> d!1790240 (= c!997507 (and ((_ is ElementMatch!15657) (regOne!31826 (regOne!31826 r!7292))) (= (c!997231 (regOne!31826 (regOne!31826 r!7292))) (h!69595 s!2326))))))

(assert (=> d!1790240 (= (derivationStepZipperDown!999 (regOne!31826 (regOne!31826 r!7292)) (Context!10083 lt!2268152) (h!69595 s!2326)) e!3491094)))

(declare-fun b!5671139 () Bool)

(declare-fun e!3491096 () (InoxSet Context!10082))

(assert (=> b!5671139 (= e!3491096 call!430162)))

(declare-fun b!5671140 () Bool)

(declare-fun c!997508 () Bool)

(assert (=> b!5671140 (= c!997508 ((_ is Star!15657) (regOne!31826 (regOne!31826 r!7292))))))

(assert (=> b!5671140 (= e!3491096 e!3491095)))

(declare-fun bm!430158 () Bool)

(declare-fun call!430164 () List!63270)

(declare-fun call!430161 () List!63270)

(assert (=> bm!430158 (= call!430164 call!430161)))

(declare-fun bm!430159 () Bool)

(declare-fun c!997505 () Bool)

(assert (=> bm!430159 (= call!430163 (derivationStepZipperDown!999 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))) (ite c!997505 (Context!10083 lt!2268152) (Context!10083 call!430161)) (h!69595 s!2326)))))

(declare-fun b!5671141 () Bool)

(declare-fun c!997506 () Bool)

(assert (=> b!5671141 (= c!997506 e!3491099)))

(declare-fun res!2396468 () Bool)

(assert (=> b!5671141 (=> (not res!2396468) (not e!3491099))))

(assert (=> b!5671141 (= res!2396468 ((_ is Concat!24502) (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun e!3491098 () (InoxSet Context!10082))

(assert (=> b!5671141 (= e!3491098 e!3491097)))

(declare-fun b!5671142 () Bool)

(assert (=> b!5671142 (= e!3491097 e!3491096)))

(declare-fun c!997504 () Bool)

(assert (=> b!5671142 (= c!997504 ((_ is Concat!24502) (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671143 () Bool)

(assert (=> b!5671143 (= e!3491098 ((_ map or) call!430163 call!430165))))

(declare-fun bm!430160 () Bool)

(assert (=> bm!430160 (= call!430165 (derivationStepZipperDown!999 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292)))))) (ite (or c!997505 c!997506) (Context!10083 lt!2268152) (Context!10083 call!430164)) (h!69595 s!2326)))))

(declare-fun bm!430161 () Bool)

(assert (=> bm!430161 (= call!430161 ($colon$colon!1695 (exprs!5541 (Context!10083 lt!2268152)) (ite (or c!997506 c!997504) (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 r!7292)))))))

(declare-fun b!5671144 () Bool)

(assert (=> b!5671144 (= e!3491094 e!3491098)))

(assert (=> b!5671144 (= c!997505 ((_ is Union!15657) (regOne!31826 (regOne!31826 r!7292))))))

(assert (= (and d!1790240 c!997507) b!5671138))

(assert (= (and d!1790240 (not c!997507)) b!5671144))

(assert (= (and b!5671144 c!997505) b!5671143))

(assert (= (and b!5671144 (not c!997505)) b!5671141))

(assert (= (and b!5671141 res!2396468) b!5671135))

(assert (= (and b!5671141 c!997506) b!5671137))

(assert (= (and b!5671141 (not c!997506)) b!5671142))

(assert (= (and b!5671142 c!997504) b!5671139))

(assert (= (and b!5671142 (not c!997504)) b!5671140))

(assert (= (and b!5671140 c!997508) b!5671136))

(assert (= (and b!5671140 (not c!997508)) b!5671134))

(assert (= (or b!5671139 b!5671136) bm!430158))

(assert (= (or b!5671139 b!5671136) bm!430157))

(assert (= (or b!5671137 bm!430158) bm!430161))

(assert (= (or b!5671137 bm!430157) bm!430156))

(assert (= (or b!5671143 bm!430156) bm!430160))

(assert (= (or b!5671143 b!5671137) bm!430159))

(declare-fun m!6632354 () Bool)

(assert (=> bm!430160 m!6632354))

(declare-fun m!6632356 () Bool)

(assert (=> bm!430159 m!6632356))

(declare-fun m!6632358 () Bool)

(assert (=> b!5671135 m!6632358))

(declare-fun m!6632360 () Bool)

(assert (=> bm!430161 m!6632360))

(declare-fun m!6632362 () Bool)

(assert (=> b!5671138 m!6632362))

(assert (=> b!5670271 d!1790240))

(declare-fun d!1790242 () Bool)

(declare-fun c!997509 () Bool)

(assert (=> d!1790242 (= c!997509 (isEmpty!35001 (t!376577 s!2326)))))

(declare-fun e!3491100 () Bool)

(assert (=> d!1790242 (= (matchZipper!1795 lt!2268121 (t!376577 s!2326)) e!3491100)))

(declare-fun b!5671145 () Bool)

(assert (=> b!5671145 (= e!3491100 (nullableZipper!1629 lt!2268121))))

(declare-fun b!5671146 () Bool)

(assert (=> b!5671146 (= e!3491100 (matchZipper!1795 (derivationStepZipper!1742 lt!2268121 (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))))))

(assert (= (and d!1790242 c!997509) b!5671145))

(assert (= (and d!1790242 (not c!997509)) b!5671146))

(assert (=> d!1790242 m!6631642))

(declare-fun m!6632364 () Bool)

(assert (=> b!5671145 m!6632364))

(assert (=> b!5671146 m!6631646))

(assert (=> b!5671146 m!6631646))

(declare-fun m!6632366 () Bool)

(assert (=> b!5671146 m!6632366))

(assert (=> b!5671146 m!6631650))

(assert (=> b!5671146 m!6632366))

(assert (=> b!5671146 m!6631650))

(declare-fun m!6632368 () Bool)

(assert (=> b!5671146 m!6632368))

(assert (=> b!5670253 d!1790242))

(assert (=> b!5670253 d!1790006))

(declare-fun d!1790244 () Bool)

(assert (=> d!1790244 (= (isEmpty!34998 (t!376576 (exprs!5541 (h!69596 zl!343)))) ((_ is Nil!63146) (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> b!5670252 d!1790244))

(declare-fun d!1790246 () Bool)

(declare-fun c!997510 () Bool)

(assert (=> d!1790246 (= c!997510 (isEmpty!35001 (t!376577 s!2326)))))

(declare-fun e!3491101 () Bool)

(assert (=> d!1790246 (= (matchZipper!1795 lt!2268136 (t!376577 s!2326)) e!3491101)))

(declare-fun b!5671147 () Bool)

(assert (=> b!5671147 (= e!3491101 (nullableZipper!1629 lt!2268136))))

(declare-fun b!5671148 () Bool)

(assert (=> b!5671148 (= e!3491101 (matchZipper!1795 (derivationStepZipper!1742 lt!2268136 (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))))))

(assert (= (and d!1790246 c!997510) b!5671147))

(assert (= (and d!1790246 (not c!997510)) b!5671148))

(assert (=> d!1790246 m!6631642))

(declare-fun m!6632370 () Bool)

(assert (=> b!5671147 m!6632370))

(assert (=> b!5671148 m!6631646))

(assert (=> b!5671148 m!6631646))

(declare-fun m!6632372 () Bool)

(assert (=> b!5671148 m!6632372))

(assert (=> b!5671148 m!6631650))

(assert (=> b!5671148 m!6632372))

(assert (=> b!5671148 m!6631650))

(declare-fun m!6632374 () Bool)

(assert (=> b!5671148 m!6632374))

(assert (=> b!5670238 d!1790246))

(declare-fun d!1790248 () Bool)

(declare-fun e!3491104 () Bool)

(assert (=> d!1790248 e!3491104))

(declare-fun res!2396471 () Bool)

(assert (=> d!1790248 (=> (not res!2396471) (not e!3491104))))

(declare-fun lt!2268316 () List!63272)

(declare-fun noDuplicate!1608 (List!63272) Bool)

(assert (=> d!1790248 (= res!2396471 (noDuplicate!1608 lt!2268316))))

(declare-fun choose!42905 ((InoxSet Context!10082)) List!63272)

(assert (=> d!1790248 (= lt!2268316 (choose!42905 z!1189))))

(assert (=> d!1790248 (= (toList!9441 z!1189) lt!2268316)))

(declare-fun b!5671151 () Bool)

(declare-fun content!11433 (List!63272) (InoxSet Context!10082))

(assert (=> b!5671151 (= e!3491104 (= (content!11433 lt!2268316) z!1189))))

(assert (= (and d!1790248 res!2396471) b!5671151))

(declare-fun m!6632376 () Bool)

(assert (=> d!1790248 m!6632376))

(declare-fun m!6632378 () Bool)

(assert (=> d!1790248 m!6632378))

(declare-fun m!6632380 () Bool)

(assert (=> b!5671151 m!6632380))

(assert (=> b!5670258 d!1790248))

(declare-fun d!1790250 () Bool)

(assert (=> d!1790250 (= (flatMap!1270 lt!2268137 lambda!305097) (choose!42903 lt!2268137 lambda!305097))))

(declare-fun bs!1321238 () Bool)

(assert (= bs!1321238 d!1790250))

(declare-fun m!6632382 () Bool)

(assert (=> bs!1321238 m!6632382))

(assert (=> b!5670260 d!1790250))

(declare-fun d!1790252 () Bool)

(declare-fun c!997512 () Bool)

(declare-fun e!3491107 () Bool)

(assert (=> d!1790252 (= c!997512 e!3491107)))

(declare-fun res!2396472 () Bool)

(assert (=> d!1790252 (=> (not res!2396472) (not e!3491107))))

(assert (=> d!1790252 (= res!2396472 ((_ is Cons!63146) (exprs!5541 lt!2268119)))))

(declare-fun e!3491106 () (InoxSet Context!10082))

(assert (=> d!1790252 (= (derivationStepZipperUp!925 lt!2268119 (h!69595 s!2326)) e!3491106)))

(declare-fun b!5671152 () Bool)

(declare-fun e!3491105 () (InoxSet Context!10082))

(assert (=> b!5671152 (= e!3491106 e!3491105)))

(declare-fun c!997511 () Bool)

(assert (=> b!5671152 (= c!997511 ((_ is Cons!63146) (exprs!5541 lt!2268119)))))

(declare-fun b!5671153 () Bool)

(assert (=> b!5671153 (= e!3491105 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430162 () Bool)

(declare-fun call!430167 () (InoxSet Context!10082))

(assert (=> bm!430162 (= call!430167 (derivationStepZipperDown!999 (h!69594 (exprs!5541 lt!2268119)) (Context!10083 (t!376576 (exprs!5541 lt!2268119))) (h!69595 s!2326)))))

(declare-fun b!5671154 () Bool)

(assert (=> b!5671154 (= e!3491107 (nullable!5689 (h!69594 (exprs!5541 lt!2268119))))))

(declare-fun b!5671155 () Bool)

(assert (=> b!5671155 (= e!3491106 ((_ map or) call!430167 (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 lt!2268119))) (h!69595 s!2326))))))

(declare-fun b!5671156 () Bool)

(assert (=> b!5671156 (= e!3491105 call!430167)))

(assert (= (and d!1790252 res!2396472) b!5671154))

(assert (= (and d!1790252 c!997512) b!5671155))

(assert (= (and d!1790252 (not c!997512)) b!5671152))

(assert (= (and b!5671152 c!997511) b!5671156))

(assert (= (and b!5671152 (not c!997511)) b!5671153))

(assert (= (or b!5671155 b!5671156) bm!430162))

(declare-fun m!6632384 () Bool)

(assert (=> bm!430162 m!6632384))

(declare-fun m!6632386 () Bool)

(assert (=> b!5671154 m!6632386))

(declare-fun m!6632388 () Bool)

(assert (=> b!5671155 m!6632388))

(assert (=> b!5670260 d!1790252))

(declare-fun d!1790254 () Bool)

(assert (=> d!1790254 (= (flatMap!1270 lt!2268137 lambda!305097) (dynLambda!24711 lambda!305097 lt!2268119))))

(declare-fun lt!2268317 () Unit!156160)

(assert (=> d!1790254 (= lt!2268317 (choose!42904 lt!2268137 lt!2268119 lambda!305097))))

(assert (=> d!1790254 (= lt!2268137 (store ((as const (Array Context!10082 Bool)) false) lt!2268119 true))))

(assert (=> d!1790254 (= (lemmaFlatMapOnSingletonSet!802 lt!2268137 lt!2268119 lambda!305097) lt!2268317)))

(declare-fun b_lambda!214505 () Bool)

(assert (=> (not b_lambda!214505) (not d!1790254)))

(declare-fun bs!1321239 () Bool)

(assert (= bs!1321239 d!1790254))

(assert (=> bs!1321239 m!6631504))

(declare-fun m!6632390 () Bool)

(assert (=> bs!1321239 m!6632390))

(declare-fun m!6632392 () Bool)

(assert (=> bs!1321239 m!6632392))

(assert (=> bs!1321239 m!6631506))

(assert (=> b!5670260 d!1790254))

(declare-fun bs!1321240 () Bool)

(declare-fun d!1790256 () Bool)

(assert (= bs!1321240 (and d!1790256 b!5670246)))

(declare-fun lambda!305207 () Int)

(assert (=> bs!1321240 (= lambda!305207 lambda!305097)))

(assert (=> d!1790256 true))

(assert (=> d!1790256 (= (derivationStepZipper!1742 lt!2268137 (h!69595 s!2326)) (flatMap!1270 lt!2268137 lambda!305207))))

(declare-fun bs!1321241 () Bool)

(assert (= bs!1321241 d!1790256))

(declare-fun m!6632394 () Bool)

(assert (=> bs!1321241 m!6632394))

(assert (=> b!5670260 d!1790256))

(declare-fun bs!1321242 () Bool)

(declare-fun d!1790258 () Bool)

(assert (= bs!1321242 (and d!1790258 d!1790156)))

(declare-fun lambda!305210 () Int)

(assert (=> bs!1321242 (= lambda!305210 lambda!305181)))

(declare-fun bs!1321243 () Bool)

(assert (= bs!1321243 (and d!1790258 d!1790174)))

(assert (=> bs!1321243 (= lambda!305210 lambda!305184)))

(declare-fun bs!1321244 () Bool)

(assert (= bs!1321244 (and d!1790258 d!1790140)))

(assert (=> bs!1321244 (= lambda!305210 lambda!305180)))

(declare-fun bs!1321245 () Bool)

(assert (= bs!1321245 (and d!1790258 d!1790228)))

(assert (=> bs!1321245 (= lambda!305210 lambda!305203)))

(declare-fun bs!1321246 () Bool)

(assert (= bs!1321246 (and d!1790258 d!1790180)))

(assert (=> bs!1321246 (= lambda!305210 lambda!305185)))

(declare-fun bs!1321247 () Bool)

(assert (= bs!1321247 (and d!1790258 d!1790238)))

(assert (=> bs!1321247 (= lambda!305210 lambda!305204)))

(declare-fun e!3491120 () Bool)

(assert (=> d!1790258 e!3491120))

(declare-fun res!2396477 () Bool)

(assert (=> d!1790258 (=> (not res!2396477) (not e!3491120))))

(declare-fun lt!2268320 () Regex!15657)

(assert (=> d!1790258 (= res!2396477 (validRegex!7393 lt!2268320))))

(declare-fun e!3491121 () Regex!15657)

(assert (=> d!1790258 (= lt!2268320 e!3491121)))

(declare-fun c!997526 () Bool)

(declare-fun e!3491122 () Bool)

(assert (=> d!1790258 (= c!997526 e!3491122)))

(declare-fun res!2396478 () Bool)

(assert (=> d!1790258 (=> (not res!2396478) (not e!3491122))))

(assert (=> d!1790258 (= res!2396478 ((_ is Cons!63146) (unfocusZipperList!1085 zl!343)))))

(assert (=> d!1790258 (forall!14810 (unfocusZipperList!1085 zl!343) lambda!305210)))

(assert (=> d!1790258 (= (generalisedUnion!1520 (unfocusZipperList!1085 zl!343)) lt!2268320)))

(declare-fun b!5671179 () Bool)

(declare-fun e!3491125 () Regex!15657)

(assert (=> b!5671179 (= e!3491125 EmptyLang!15657)))

(declare-fun b!5671180 () Bool)

(assert (=> b!5671180 (= e!3491121 (h!69594 (unfocusZipperList!1085 zl!343)))))

(declare-fun b!5671181 () Bool)

(declare-fun e!3491124 () Bool)

(assert (=> b!5671181 (= e!3491124 (= lt!2268320 (head!12039 (unfocusZipperList!1085 zl!343))))))

(declare-fun b!5671182 () Bool)

(assert (=> b!5671182 (= e!3491125 (Union!15657 (h!69594 (unfocusZipperList!1085 zl!343)) (generalisedUnion!1520 (t!376576 (unfocusZipperList!1085 zl!343)))))))

(declare-fun b!5671183 () Bool)

(declare-fun isUnion!627 (Regex!15657) Bool)

(assert (=> b!5671183 (= e!3491124 (isUnion!627 lt!2268320))))

(declare-fun b!5671184 () Bool)

(assert (=> b!5671184 (= e!3491121 e!3491125)))

(declare-fun c!997523 () Bool)

(assert (=> b!5671184 (= c!997523 ((_ is Cons!63146) (unfocusZipperList!1085 zl!343)))))

(declare-fun b!5671185 () Bool)

(declare-fun e!3491123 () Bool)

(declare-fun isEmptyLang!1197 (Regex!15657) Bool)

(assert (=> b!5671185 (= e!3491123 (isEmptyLang!1197 lt!2268320))))

(declare-fun b!5671186 () Bool)

(assert (=> b!5671186 (= e!3491120 e!3491123)))

(declare-fun c!997524 () Bool)

(assert (=> b!5671186 (= c!997524 (isEmpty!34998 (unfocusZipperList!1085 zl!343)))))

(declare-fun b!5671187 () Bool)

(assert (=> b!5671187 (= e!3491123 e!3491124)))

(declare-fun c!997525 () Bool)

(assert (=> b!5671187 (= c!997525 (isEmpty!34998 (tail!11134 (unfocusZipperList!1085 zl!343))))))

(declare-fun b!5671188 () Bool)

(assert (=> b!5671188 (= e!3491122 (isEmpty!34998 (t!376576 (unfocusZipperList!1085 zl!343))))))

(assert (= (and d!1790258 res!2396478) b!5671188))

(assert (= (and d!1790258 c!997526) b!5671180))

(assert (= (and d!1790258 (not c!997526)) b!5671184))

(assert (= (and b!5671184 c!997523) b!5671182))

(assert (= (and b!5671184 (not c!997523)) b!5671179))

(assert (= (and d!1790258 res!2396477) b!5671186))

(assert (= (and b!5671186 c!997524) b!5671185))

(assert (= (and b!5671186 (not c!997524)) b!5671187))

(assert (= (and b!5671187 c!997525) b!5671181))

(assert (= (and b!5671187 (not c!997525)) b!5671183))

(assert (=> b!5671186 m!6631510))

(declare-fun m!6632396 () Bool)

(assert (=> b!5671186 m!6632396))

(declare-fun m!6632398 () Bool)

(assert (=> b!5671182 m!6632398))

(declare-fun m!6632400 () Bool)

(assert (=> b!5671185 m!6632400))

(declare-fun m!6632402 () Bool)

(assert (=> b!5671183 m!6632402))

(declare-fun m!6632404 () Bool)

(assert (=> d!1790258 m!6632404))

(assert (=> d!1790258 m!6631510))

(declare-fun m!6632406 () Bool)

(assert (=> d!1790258 m!6632406))

(assert (=> b!5671181 m!6631510))

(declare-fun m!6632408 () Bool)

(assert (=> b!5671181 m!6632408))

(declare-fun m!6632410 () Bool)

(assert (=> b!5671188 m!6632410))

(assert (=> b!5671187 m!6631510))

(declare-fun m!6632412 () Bool)

(assert (=> b!5671187 m!6632412))

(assert (=> b!5671187 m!6632412))

(declare-fun m!6632414 () Bool)

(assert (=> b!5671187 m!6632414))

(assert (=> b!5670259 d!1790258))

(declare-fun bs!1321248 () Bool)

(declare-fun d!1790260 () Bool)

(assert (= bs!1321248 (and d!1790260 d!1790156)))

(declare-fun lambda!305213 () Int)

(assert (=> bs!1321248 (= lambda!305213 lambda!305181)))

(declare-fun bs!1321249 () Bool)

(assert (= bs!1321249 (and d!1790260 d!1790174)))

(assert (=> bs!1321249 (= lambda!305213 lambda!305184)))

(declare-fun bs!1321250 () Bool)

(assert (= bs!1321250 (and d!1790260 d!1790258)))

(assert (=> bs!1321250 (= lambda!305213 lambda!305210)))

(declare-fun bs!1321251 () Bool)

(assert (= bs!1321251 (and d!1790260 d!1790140)))

(assert (=> bs!1321251 (= lambda!305213 lambda!305180)))

(declare-fun bs!1321252 () Bool)

(assert (= bs!1321252 (and d!1790260 d!1790228)))

(assert (=> bs!1321252 (= lambda!305213 lambda!305203)))

(declare-fun bs!1321253 () Bool)

(assert (= bs!1321253 (and d!1790260 d!1790180)))

(assert (=> bs!1321253 (= lambda!305213 lambda!305185)))

(declare-fun bs!1321254 () Bool)

(assert (= bs!1321254 (and d!1790260 d!1790238)))

(assert (=> bs!1321254 (= lambda!305213 lambda!305204)))

(declare-fun lt!2268323 () List!63270)

(assert (=> d!1790260 (forall!14810 lt!2268323 lambda!305213)))

(declare-fun e!3491128 () List!63270)

(assert (=> d!1790260 (= lt!2268323 e!3491128)))

(declare-fun c!997529 () Bool)

(assert (=> d!1790260 (= c!997529 ((_ is Cons!63148) zl!343))))

(assert (=> d!1790260 (= (unfocusZipperList!1085 zl!343) lt!2268323)))

(declare-fun b!5671193 () Bool)

(assert (=> b!5671193 (= e!3491128 (Cons!63146 (generalisedConcat!1272 (exprs!5541 (h!69596 zl!343))) (unfocusZipperList!1085 (t!376578 zl!343))))))

(declare-fun b!5671194 () Bool)

(assert (=> b!5671194 (= e!3491128 Nil!63146)))

(assert (= (and d!1790260 c!997529) b!5671193))

(assert (= (and d!1790260 (not c!997529)) b!5671194))

(declare-fun m!6632416 () Bool)

(assert (=> d!1790260 m!6632416))

(assert (=> b!5671193 m!6631462))

(declare-fun m!6632418 () Bool)

(assert (=> b!5671193 m!6632418))

(assert (=> b!5670259 d!1790260))

(declare-fun d!1790262 () Bool)

(declare-fun lt!2268326 () Regex!15657)

(assert (=> d!1790262 (validRegex!7393 lt!2268326)))

(assert (=> d!1790262 (= lt!2268326 (generalisedUnion!1520 (unfocusZipperList!1085 zl!343)))))

(assert (=> d!1790262 (= (unfocusZipper!1399 zl!343) lt!2268326)))

(declare-fun bs!1321255 () Bool)

(assert (= bs!1321255 d!1790262))

(declare-fun m!6632420 () Bool)

(assert (=> bs!1321255 m!6632420))

(assert (=> bs!1321255 m!6631510))

(assert (=> bs!1321255 m!6631510))

(assert (=> bs!1321255 m!6631512))

(assert (=> b!5670239 d!1790262))

(declare-fun b!5671213 () Bool)

(declare-fun e!3491149 () Bool)

(declare-fun e!3491146 () Bool)

(assert (=> b!5671213 (= e!3491149 e!3491146)))

(declare-fun res!2396489 () Bool)

(assert (=> b!5671213 (= res!2396489 (not (nullable!5689 (reg!15986 r!7292))))))

(assert (=> b!5671213 (=> (not res!2396489) (not e!3491146))))

(declare-fun b!5671214 () Bool)

(declare-fun e!3491145 () Bool)

(declare-fun call!430174 () Bool)

(assert (=> b!5671214 (= e!3491145 call!430174)))

(declare-fun bm!430169 () Bool)

(declare-fun c!997535 () Bool)

(assert (=> bm!430169 (= call!430174 (validRegex!7393 (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))))))

(declare-fun bm!430170 () Bool)

(declare-fun call!430176 () Bool)

(declare-fun call!430175 () Bool)

(assert (=> bm!430170 (= call!430176 call!430175)))

(declare-fun d!1790264 () Bool)

(declare-fun res!2396493 () Bool)

(declare-fun e!3491148 () Bool)

(assert (=> d!1790264 (=> res!2396493 e!3491148)))

(assert (=> d!1790264 (= res!2396493 ((_ is ElementMatch!15657) r!7292))))

(assert (=> d!1790264 (= (validRegex!7393 r!7292) e!3491148)))

(declare-fun b!5671215 () Bool)

(declare-fun res!2396490 () Bool)

(declare-fun e!3491147 () Bool)

(assert (=> b!5671215 (=> (not res!2396490) (not e!3491147))))

(assert (=> b!5671215 (= res!2396490 call!430176)))

(declare-fun e!3491143 () Bool)

(assert (=> b!5671215 (= e!3491143 e!3491147)))

(declare-fun b!5671216 () Bool)

(declare-fun res!2396492 () Bool)

(declare-fun e!3491144 () Bool)

(assert (=> b!5671216 (=> res!2396492 e!3491144)))

(assert (=> b!5671216 (= res!2396492 (not ((_ is Concat!24502) r!7292)))))

(assert (=> b!5671216 (= e!3491143 e!3491144)))

(declare-fun b!5671217 () Bool)

(assert (=> b!5671217 (= e!3491149 e!3491143)))

(assert (=> b!5671217 (= c!997535 ((_ is Union!15657) r!7292))))

(declare-fun b!5671218 () Bool)

(assert (=> b!5671218 (= e!3491146 call!430175)))

(declare-fun b!5671219 () Bool)

(assert (=> b!5671219 (= e!3491148 e!3491149)))

(declare-fun c!997534 () Bool)

(assert (=> b!5671219 (= c!997534 ((_ is Star!15657) r!7292))))

(declare-fun b!5671220 () Bool)

(assert (=> b!5671220 (= e!3491144 e!3491145)))

(declare-fun res!2396491 () Bool)

(assert (=> b!5671220 (=> (not res!2396491) (not e!3491145))))

(assert (=> b!5671220 (= res!2396491 call!430176)))

(declare-fun b!5671221 () Bool)

(assert (=> b!5671221 (= e!3491147 call!430174)))

(declare-fun bm!430171 () Bool)

(assert (=> bm!430171 (= call!430175 (validRegex!7393 (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))))))

(assert (= (and d!1790264 (not res!2396493)) b!5671219))

(assert (= (and b!5671219 c!997534) b!5671213))

(assert (= (and b!5671219 (not c!997534)) b!5671217))

(assert (= (and b!5671213 res!2396489) b!5671218))

(assert (= (and b!5671217 c!997535) b!5671215))

(assert (= (and b!5671217 (not c!997535)) b!5671216))

(assert (= (and b!5671215 res!2396490) b!5671221))

(assert (= (and b!5671216 (not res!2396492)) b!5671220))

(assert (= (and b!5671220 res!2396491) b!5671214))

(assert (= (or b!5671221 b!5671214) bm!430169))

(assert (= (or b!5671215 b!5671220) bm!430170))

(assert (= (or b!5671218 bm!430170) bm!430171))

(declare-fun m!6632422 () Bool)

(assert (=> b!5671213 m!6632422))

(declare-fun m!6632424 () Bool)

(assert (=> bm!430169 m!6632424))

(declare-fun m!6632426 () Bool)

(assert (=> bm!430171 m!6632426))

(assert (=> start!585512 d!1790264))

(declare-fun d!1790266 () Bool)

(assert (=> d!1790266 (= (nullable!5689 (regOne!31826 (regOne!31826 r!7292))) (nullableFct!1774 (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun bs!1321256 () Bool)

(assert (= bs!1321256 d!1790266))

(declare-fun m!6632428 () Bool)

(assert (=> bs!1321256 m!6632428))

(assert (=> b!5670257 d!1790266))

(declare-fun condSetEmpty!37901 () Bool)

(assert (=> setNonEmpty!37895 (= condSetEmpty!37901 (= setRest!37895 ((as const (Array Context!10082 Bool)) false)))))

(declare-fun setRes!37901 () Bool)

(assert (=> setNonEmpty!37895 (= tp!1573069 setRes!37901)))

(declare-fun setIsEmpty!37901 () Bool)

(assert (=> setIsEmpty!37901 setRes!37901))

(declare-fun tp!1573142 () Bool)

(declare-fun e!3491152 () Bool)

(declare-fun setElem!37901 () Context!10082)

(declare-fun setNonEmpty!37901 () Bool)

(assert (=> setNonEmpty!37901 (= setRes!37901 (and tp!1573142 (inv!82389 setElem!37901) e!3491152))))

(declare-fun setRest!37901 () (InoxSet Context!10082))

(assert (=> setNonEmpty!37901 (= setRest!37895 ((_ map or) (store ((as const (Array Context!10082 Bool)) false) setElem!37901 true) setRest!37901))))

(declare-fun b!5671226 () Bool)

(declare-fun tp!1573141 () Bool)

(assert (=> b!5671226 (= e!3491152 tp!1573141)))

(assert (= (and setNonEmpty!37895 condSetEmpty!37901) setIsEmpty!37901))

(assert (= (and setNonEmpty!37895 (not condSetEmpty!37901)) setNonEmpty!37901))

(assert (= setNonEmpty!37901 b!5671226))

(declare-fun m!6632430 () Bool)

(assert (=> setNonEmpty!37901 m!6632430))

(declare-fun b!5671237 () Bool)

(declare-fun e!3491155 () Bool)

(assert (=> b!5671237 (= e!3491155 tp_is_empty!40567)))

(assert (=> b!5670243 (= tp!1573070 e!3491155)))

(declare-fun b!5671239 () Bool)

(declare-fun tp!1573154 () Bool)

(assert (=> b!5671239 (= e!3491155 tp!1573154)))

(declare-fun b!5671240 () Bool)

(declare-fun tp!1573153 () Bool)

(declare-fun tp!1573156 () Bool)

(assert (=> b!5671240 (= e!3491155 (and tp!1573153 tp!1573156))))

(declare-fun b!5671238 () Bool)

(declare-fun tp!1573155 () Bool)

(declare-fun tp!1573157 () Bool)

(assert (=> b!5671238 (= e!3491155 (and tp!1573155 tp!1573157))))

(assert (= (and b!5670243 ((_ is ElementMatch!15657) (regOne!31826 r!7292))) b!5671237))

(assert (= (and b!5670243 ((_ is Concat!24502) (regOne!31826 r!7292))) b!5671238))

(assert (= (and b!5670243 ((_ is Star!15657) (regOne!31826 r!7292))) b!5671239))

(assert (= (and b!5670243 ((_ is Union!15657) (regOne!31826 r!7292))) b!5671240))

(declare-fun b!5671241 () Bool)

(declare-fun e!3491156 () Bool)

(assert (=> b!5671241 (= e!3491156 tp_is_empty!40567)))

(assert (=> b!5670243 (= tp!1573071 e!3491156)))

(declare-fun b!5671243 () Bool)

(declare-fun tp!1573159 () Bool)

(assert (=> b!5671243 (= e!3491156 tp!1573159)))

(declare-fun b!5671244 () Bool)

(declare-fun tp!1573158 () Bool)

(declare-fun tp!1573161 () Bool)

(assert (=> b!5671244 (= e!3491156 (and tp!1573158 tp!1573161))))

(declare-fun b!5671242 () Bool)

(declare-fun tp!1573160 () Bool)

(declare-fun tp!1573162 () Bool)

(assert (=> b!5671242 (= e!3491156 (and tp!1573160 tp!1573162))))

(assert (= (and b!5670243 ((_ is ElementMatch!15657) (regTwo!31826 r!7292))) b!5671241))

(assert (= (and b!5670243 ((_ is Concat!24502) (regTwo!31826 r!7292))) b!5671242))

(assert (= (and b!5670243 ((_ is Star!15657) (regTwo!31826 r!7292))) b!5671243))

(assert (= (and b!5670243 ((_ is Union!15657) (regTwo!31826 r!7292))) b!5671244))

(declare-fun b!5671245 () Bool)

(declare-fun e!3491157 () Bool)

(assert (=> b!5671245 (= e!3491157 tp_is_empty!40567)))

(assert (=> b!5670265 (= tp!1573075 e!3491157)))

(declare-fun b!5671247 () Bool)

(declare-fun tp!1573164 () Bool)

(assert (=> b!5671247 (= e!3491157 tp!1573164)))

(declare-fun b!5671248 () Bool)

(declare-fun tp!1573163 () Bool)

(declare-fun tp!1573166 () Bool)

(assert (=> b!5671248 (= e!3491157 (and tp!1573163 tp!1573166))))

(declare-fun b!5671246 () Bool)

(declare-fun tp!1573165 () Bool)

(declare-fun tp!1573167 () Bool)

(assert (=> b!5671246 (= e!3491157 (and tp!1573165 tp!1573167))))

(assert (= (and b!5670265 ((_ is ElementMatch!15657) (regOne!31827 r!7292))) b!5671245))

(assert (= (and b!5670265 ((_ is Concat!24502) (regOne!31827 r!7292))) b!5671246))

(assert (= (and b!5670265 ((_ is Star!15657) (regOne!31827 r!7292))) b!5671247))

(assert (= (and b!5670265 ((_ is Union!15657) (regOne!31827 r!7292))) b!5671248))

(declare-fun b!5671249 () Bool)

(declare-fun e!3491158 () Bool)

(assert (=> b!5671249 (= e!3491158 tp_is_empty!40567)))

(assert (=> b!5670265 (= tp!1573078 e!3491158)))

(declare-fun b!5671251 () Bool)

(declare-fun tp!1573169 () Bool)

(assert (=> b!5671251 (= e!3491158 tp!1573169)))

(declare-fun b!5671252 () Bool)

(declare-fun tp!1573168 () Bool)

(declare-fun tp!1573171 () Bool)

(assert (=> b!5671252 (= e!3491158 (and tp!1573168 tp!1573171))))

(declare-fun b!5671250 () Bool)

(declare-fun tp!1573170 () Bool)

(declare-fun tp!1573172 () Bool)

(assert (=> b!5671250 (= e!3491158 (and tp!1573170 tp!1573172))))

(assert (= (and b!5670265 ((_ is ElementMatch!15657) (regTwo!31827 r!7292))) b!5671249))

(assert (= (and b!5670265 ((_ is Concat!24502) (regTwo!31827 r!7292))) b!5671250))

(assert (= (and b!5670265 ((_ is Star!15657) (regTwo!31827 r!7292))) b!5671251))

(assert (= (and b!5670265 ((_ is Union!15657) (regTwo!31827 r!7292))) b!5671252))

(declare-fun b!5671257 () Bool)

(declare-fun e!3491161 () Bool)

(declare-fun tp!1573177 () Bool)

(declare-fun tp!1573178 () Bool)

(assert (=> b!5671257 (= e!3491161 (and tp!1573177 tp!1573178))))

(assert (=> b!5670245 (= tp!1573073 e!3491161)))

(assert (= (and b!5670245 ((_ is Cons!63146) (exprs!5541 (h!69596 zl!343)))) b!5671257))

(declare-fun b!5671258 () Bool)

(declare-fun e!3491162 () Bool)

(declare-fun tp!1573179 () Bool)

(declare-fun tp!1573180 () Bool)

(assert (=> b!5671258 (= e!3491162 (and tp!1573179 tp!1573180))))

(assert (=> b!5670244 (= tp!1573072 e!3491162)))

(assert (= (and b!5670244 ((_ is Cons!63146) (exprs!5541 setElem!37895))) b!5671258))

(declare-fun b!5671263 () Bool)

(declare-fun e!3491165 () Bool)

(declare-fun tp!1573183 () Bool)

(assert (=> b!5671263 (= e!3491165 (and tp_is_empty!40567 tp!1573183))))

(assert (=> b!5670255 (= tp!1573077 e!3491165)))

(assert (= (and b!5670255 ((_ is Cons!63147) (t!376577 s!2326))) b!5671263))

(declare-fun b!5671264 () Bool)

(declare-fun e!3491166 () Bool)

(assert (=> b!5671264 (= e!3491166 tp_is_empty!40567)))

(assert (=> b!5670251 (= tp!1573074 e!3491166)))

(declare-fun b!5671266 () Bool)

(declare-fun tp!1573185 () Bool)

(assert (=> b!5671266 (= e!3491166 tp!1573185)))

(declare-fun b!5671267 () Bool)

(declare-fun tp!1573184 () Bool)

(declare-fun tp!1573187 () Bool)

(assert (=> b!5671267 (= e!3491166 (and tp!1573184 tp!1573187))))

(declare-fun b!5671265 () Bool)

(declare-fun tp!1573186 () Bool)

(declare-fun tp!1573188 () Bool)

(assert (=> b!5671265 (= e!3491166 (and tp!1573186 tp!1573188))))

(assert (= (and b!5670251 ((_ is ElementMatch!15657) (reg!15986 r!7292))) b!5671264))

(assert (= (and b!5670251 ((_ is Concat!24502) (reg!15986 r!7292))) b!5671265))

(assert (= (and b!5670251 ((_ is Star!15657) (reg!15986 r!7292))) b!5671266))

(assert (= (and b!5670251 ((_ is Union!15657) (reg!15986 r!7292))) b!5671267))

(declare-fun b!5671275 () Bool)

(declare-fun e!3491172 () Bool)

(declare-fun tp!1573193 () Bool)

(assert (=> b!5671275 (= e!3491172 tp!1573193)))

(declare-fun e!3491171 () Bool)

(declare-fun tp!1573194 () Bool)

(declare-fun b!5671274 () Bool)

(assert (=> b!5671274 (= e!3491171 (and (inv!82389 (h!69596 (t!376578 zl!343))) e!3491172 tp!1573194))))

(assert (=> b!5670267 (= tp!1573076 e!3491171)))

(assert (= b!5671274 b!5671275))

(assert (= (and b!5670267 ((_ is Cons!63148) (t!376578 zl!343))) b!5671274))

(declare-fun m!6632432 () Bool)

(assert (=> b!5671274 m!6632432))

(declare-fun b_lambda!214507 () Bool)

(assert (= b_lambda!214505 (or b!5670246 b_lambda!214507)))

(declare-fun bs!1321257 () Bool)

(declare-fun d!1790268 () Bool)

(assert (= bs!1321257 (and d!1790268 b!5670246)))

(assert (=> bs!1321257 (= (dynLambda!24711 lambda!305097 lt!2268119) (derivationStepZipperUp!925 lt!2268119 (h!69595 s!2326)))))

(assert (=> bs!1321257 m!6631502))

(assert (=> d!1790254 d!1790268))

(declare-fun b_lambda!214509 () Bool)

(assert (= b_lambda!214497 (or b!5670246 b_lambda!214509)))

(declare-fun bs!1321258 () Bool)

(declare-fun d!1790270 () Bool)

(assert (= bs!1321258 (and d!1790270 b!5670246)))

(assert (=> bs!1321258 (= (dynLambda!24711 lambda!305097 (h!69596 zl!343)) (derivationStepZipperUp!925 (h!69596 zl!343) (h!69595 s!2326)))))

(assert (=> bs!1321258 m!6631446))

(assert (=> d!1790192 d!1790270))

(check-sat (not b!5670587) (not d!1790226) (not bm!430155) (not d!1790066) (not d!1790258) (not d!1790014) (not b!5670425) (not d!1790174) (not b!5670343) (not d!1790164) (not b!5670890) (not d!1790094) (not d!1790064) (not bm!430160) (not b!5671059) (not d!1790154) (not d!1790088) (not b!5670784) (not d!1790054) (not bm!430162) (not b!5670935) (not b!5670617) (not bm!430125) (not b!5671239) (not d!1790030) (not b!5670883) (not b!5670800) (not b!5670893) (not b!5671067) (not b!5670286) (not b!5671058) (not b!5670799) (not d!1790254) (not bm!430153) (not b!5671181) (not b!5670939) (not d!1790038) (not b!5670421) (not b!5670780) (not b!5670429) (not b!5671183) (not b!5670612) (not bm!430169) (not b!5670615) (not d!1790162) (not b!5670782) (not b!5670344) (not b!5670889) (not b!5670597) (not b!5670588) (not b!5670870) (not b!5670592) (not bm!430085) (not bm!430171) (not b!5671238) (not b!5671151) (not b!5670794) (not bm!430086) (not b!5671243) (not bm!430106) (not b!5671275) (not b!5671060) (not b!5671154) (not d!1790192) (not b!5670891) (not b!5671187) (not d!1790000) (not d!1790262) (not b!5670793) (not b!5670940) (not d!1790034) (not b!5670884) (not b!5670892) (not bm!430105) (not b!5671188) (not b!5670781) (not d!1790100) (not d!1790242) (not d!1790250) (not b!5671186) (not bm!430142) (not d!1790256) (not b!5671267) (not bs!1321257) (not b!5670611) (not d!1790090) (not b!5670289) (not b!5671029) (not b!5671251) (not d!1790126) (not d!1790190) (not b!5670517) (not b!5671258) (not b!5670636) (not b!5671063) (not d!1790012) (not b!5670815) (not b!5671250) (not b!5671263) (not b!5671155) (not d!1790006) (not d!1790156) (not b!5671147) (not b!5670596) (not d!1790260) (not b!5670896) (not b!5671246) (not d!1790248) (not d!1790068) (not b!5670610) (not b!5670589) (not d!1790092) (not b!5671240) (not b!5671185) (not b!5670879) (not b!5670284) (not b!5671132) (not b!5670869) (not b!5671003) (not b!5670849) (not b!5670635) (not b!5670934) (not b!5671244) (not b!5671265) (not b!5670620) (not d!1790180) (not b!5670348) (not b!5670308) (not b!5670708) (not bm!430092) (not d!1790016) (not b!5670807) (not setNonEmpty!37901) (not b!5670346) (not d!1790166) (not b!5671248) (not b!5670872) (not b!5670428) (not b!5670347) (not bm!430152) (not d!1790246) (not b!5671182) (not d!1790266) (not b!5671252) (not b!5671266) (not b!5670795) (not b!5670876) (not b!5670880) (not b!5670700) (not b_lambda!214507) (not bm!430126) (not d!1790080) (not bm!430075) (not b!5671257) (not d!1790140) (not d!1790178) (not bs!1321258) (not b!5670519) (not b!5670779) (not d!1790182) (not b!5670866) (not b!5671274) (not b!5671145) (not b!5670881) (not d!1790036) (not b!5670616) (not b!5670868) (not b!5671146) tp_is_empty!40567 (not b!5670424) (not b!5671030) (not d!1790160) (not d!1790084) (not b!5670805) (not b!5670426) (not b!5670867) (not bm!430143) (not b!5671042) (not b!5671148) (not b!5671213) (not bm!430159) (not b!5670797) (not b!5670291) (not b!5670345) (not bm!430161) (not b!5671034) (not b!5671226) (not b!5671242) (not b!5671135) (not b!5670778) (not d!1790158) (not b!5671068) (not b!5670814) (not d!1790238) (not b!5670895) (not b!5670841) (not d!1790224) (not b!5671193) (not b!5671247) (not d!1790082) (not bm!430151) (not b!5670619) (not b!5670873) (not b!5670806) (not b!5670796) (not b!5671130) (not bm!430144) (not b!5670785) (not d!1790228) (not b_lambda!214509) (not b!5670810))
(check-sat)
(get-model)

(declare-fun d!1790272 () Bool)

(assert (=> d!1790272 true))

(assert (=> d!1790272 true))

(declare-fun res!2396496 () Bool)

(assert (=> d!1790272 (= (choose!42894 lambda!305095) res!2396496)))

(assert (=> d!1790036 d!1790272))

(declare-fun d!1790274 () Bool)

(assert (=> d!1790274 (= (isDefined!12369 lt!2268207) (not (isEmpty!35002 lt!2268207)))))

(declare-fun bs!1321259 () Bool)

(assert (= bs!1321259 d!1790274))

(declare-fun m!6632434 () Bool)

(assert (=> bs!1321259 m!6632434))

(assert (=> b!5670426 d!1790274))

(declare-fun d!1790276 () Bool)

(assert (=> d!1790276 (= (isEmpty!35001 (tail!11133 s!2326)) ((_ is Nil!63147) (tail!11133 s!2326)))))

(assert (=> b!5670589 d!1790276))

(declare-fun d!1790278 () Bool)

(assert (=> d!1790278 (= (tail!11133 s!2326) (t!376577 s!2326))))

(assert (=> b!5670589 d!1790278))

(assert (=> d!1790066 d!1790068))

(assert (=> d!1790066 d!1790168))

(declare-fun d!1790280 () Bool)

(assert (=> d!1790280 (= (matchR!7842 lt!2268120 s!2326) (matchRSpec!2760 lt!2268120 s!2326))))

(assert (=> d!1790280 true))

(declare-fun _$88!3956 () Unit!156160)

(assert (=> d!1790280 (= (choose!42897 lt!2268120 s!2326) _$88!3956)))

(declare-fun bs!1321260 () Bool)

(assert (= bs!1321260 d!1790280))

(assert (=> bs!1321260 m!6631534))

(assert (=> bs!1321260 m!6631558))

(assert (=> d!1790066 d!1790280))

(declare-fun b!5671276 () Bool)

(declare-fun e!3491179 () Bool)

(declare-fun e!3491176 () Bool)

(assert (=> b!5671276 (= e!3491179 e!3491176)))

(declare-fun res!2396497 () Bool)

(assert (=> b!5671276 (= res!2396497 (not (nullable!5689 (reg!15986 lt!2268120))))))

(assert (=> b!5671276 (=> (not res!2396497) (not e!3491176))))

(declare-fun b!5671277 () Bool)

(declare-fun e!3491175 () Bool)

(declare-fun call!430177 () Bool)

(assert (=> b!5671277 (= e!3491175 call!430177)))

(declare-fun bm!430172 () Bool)

(declare-fun c!997537 () Bool)

(assert (=> bm!430172 (= call!430177 (validRegex!7393 (ite c!997537 (regTwo!31827 lt!2268120) (regTwo!31826 lt!2268120))))))

(declare-fun bm!430173 () Bool)

(declare-fun call!430179 () Bool)

(declare-fun call!430178 () Bool)

(assert (=> bm!430173 (= call!430179 call!430178)))

(declare-fun d!1790282 () Bool)

(declare-fun res!2396501 () Bool)

(declare-fun e!3491178 () Bool)

(assert (=> d!1790282 (=> res!2396501 e!3491178)))

(assert (=> d!1790282 (= res!2396501 ((_ is ElementMatch!15657) lt!2268120))))

(assert (=> d!1790282 (= (validRegex!7393 lt!2268120) e!3491178)))

(declare-fun b!5671278 () Bool)

(declare-fun res!2396498 () Bool)

(declare-fun e!3491177 () Bool)

(assert (=> b!5671278 (=> (not res!2396498) (not e!3491177))))

(assert (=> b!5671278 (= res!2396498 call!430179)))

(declare-fun e!3491173 () Bool)

(assert (=> b!5671278 (= e!3491173 e!3491177)))

(declare-fun b!5671279 () Bool)

(declare-fun res!2396500 () Bool)

(declare-fun e!3491174 () Bool)

(assert (=> b!5671279 (=> res!2396500 e!3491174)))

(assert (=> b!5671279 (= res!2396500 (not ((_ is Concat!24502) lt!2268120)))))

(assert (=> b!5671279 (= e!3491173 e!3491174)))

(declare-fun b!5671280 () Bool)

(assert (=> b!5671280 (= e!3491179 e!3491173)))

(assert (=> b!5671280 (= c!997537 ((_ is Union!15657) lt!2268120))))

(declare-fun b!5671281 () Bool)

(assert (=> b!5671281 (= e!3491176 call!430178)))

(declare-fun b!5671282 () Bool)

(assert (=> b!5671282 (= e!3491178 e!3491179)))

(declare-fun c!997536 () Bool)

(assert (=> b!5671282 (= c!997536 ((_ is Star!15657) lt!2268120))))

(declare-fun b!5671283 () Bool)

(assert (=> b!5671283 (= e!3491174 e!3491175)))

(declare-fun res!2396499 () Bool)

(assert (=> b!5671283 (=> (not res!2396499) (not e!3491175))))

(assert (=> b!5671283 (= res!2396499 call!430179)))

(declare-fun b!5671284 () Bool)

(assert (=> b!5671284 (= e!3491177 call!430177)))

(declare-fun bm!430174 () Bool)

(assert (=> bm!430174 (= call!430178 (validRegex!7393 (ite c!997536 (reg!15986 lt!2268120) (ite c!997537 (regOne!31827 lt!2268120) (regOne!31826 lt!2268120)))))))

(assert (= (and d!1790282 (not res!2396501)) b!5671282))

(assert (= (and b!5671282 c!997536) b!5671276))

(assert (= (and b!5671282 (not c!997536)) b!5671280))

(assert (= (and b!5671276 res!2396497) b!5671281))

(assert (= (and b!5671280 c!997537) b!5671278))

(assert (= (and b!5671280 (not c!997537)) b!5671279))

(assert (= (and b!5671278 res!2396498) b!5671284))

(assert (= (and b!5671279 (not res!2396500)) b!5671283))

(assert (= (and b!5671283 res!2396499) b!5671277))

(assert (= (or b!5671284 b!5671277) bm!430172))

(assert (= (or b!5671278 b!5671283) bm!430173))

(assert (= (or b!5671281 bm!430173) bm!430174))

(declare-fun m!6632436 () Bool)

(assert (=> b!5671276 m!6632436))

(declare-fun m!6632438 () Bool)

(assert (=> bm!430172 m!6632438))

(declare-fun m!6632440 () Bool)

(assert (=> bm!430174 m!6632440))

(assert (=> d!1790066 d!1790282))

(declare-fun d!1790284 () Bool)

(assert (=> d!1790284 (= (Exists!2757 (ite c!997483 lambda!305195 lambda!305196)) (choose!42894 (ite c!997483 lambda!305195 lambda!305196)))))

(declare-fun bs!1321261 () Bool)

(assert (= bs!1321261 d!1790284))

(declare-fun m!6632442 () Bool)

(assert (=> bs!1321261 m!6632442))

(assert (=> bm!430153 d!1790284))

(declare-fun bs!1321262 () Bool)

(declare-fun d!1790286 () Bool)

(assert (= bs!1321262 (and d!1790286 b!5670284)))

(declare-fun lambda!305216 () Int)

(assert (=> bs!1321262 (not (= lambda!305216 lambda!305109))))

(declare-fun bs!1321263 () Bool)

(assert (= bs!1321263 (and d!1790286 b!5670286)))

(assert (=> bs!1321263 (not (= lambda!305216 lambda!305110))))

(declare-fun bs!1321264 () Bool)

(assert (= bs!1321264 (and d!1790286 b!5670289)))

(assert (=> bs!1321264 (not (= lambda!305216 lambda!305112))))

(declare-fun bs!1321265 () Bool)

(assert (= bs!1321265 (and d!1790286 b!5670291)))

(assert (=> bs!1321265 (not (= lambda!305216 lambda!305113))))

(declare-fun exists!2203 ((InoxSet Context!10082) Int) Bool)

(assert (=> d!1790286 (= (nullableZipper!1629 lt!2268137) (exists!2203 lt!2268137 lambda!305216))))

(declare-fun bs!1321266 () Bool)

(assert (= bs!1321266 d!1790286))

(declare-fun m!6632444 () Bool)

(assert (=> bs!1321266 m!6632444))

(assert (=> b!5670635 d!1790286))

(declare-fun d!1790288 () Bool)

(assert (=> d!1790288 (= (isEmptyExpr!1187 lt!2268277) ((_ is EmptyExpr!15657) lt!2268277))))

(assert (=> b!5670785 d!1790288))

(declare-fun d!1790290 () Bool)

(assert (=> d!1790290 (= (Exists!2757 lambda!305175) (choose!42894 lambda!305175))))

(declare-fun bs!1321267 () Bool)

(assert (= bs!1321267 d!1790290))

(declare-fun m!6632446 () Bool)

(assert (=> bs!1321267 m!6632446))

(assert (=> d!1790126 d!1790290))

(declare-fun d!1790292 () Bool)

(assert (=> d!1790292 (= (Exists!2757 lambda!305176) (choose!42894 lambda!305176))))

(declare-fun bs!1321268 () Bool)

(assert (= bs!1321268 d!1790292))

(declare-fun m!6632448 () Bool)

(assert (=> bs!1321268 m!6632448))

(assert (=> d!1790126 d!1790292))

(declare-fun bs!1321269 () Bool)

(declare-fun d!1790294 () Bool)

(assert (= bs!1321269 (and d!1790294 d!1790126)))

(declare-fun lambda!305221 () Int)

(assert (=> bs!1321269 (not (= lambda!305221 lambda!305176))))

(declare-fun bs!1321270 () Bool)

(assert (= bs!1321270 (and d!1790294 b!5670698)))

(assert (=> bs!1321270 (not (= lambda!305221 lambda!305172))))

(declare-fun bs!1321271 () Bool)

(assert (= bs!1321271 (and d!1790294 b!5670839)))

(assert (=> bs!1321271 (not (= lambda!305221 lambda!305182))))

(declare-fun bs!1321272 () Bool)

(assert (= bs!1321272 (and d!1790294 b!5671038)))

(assert (=> bs!1321272 (not (= lambda!305221 lambda!305196))))

(declare-fun bs!1321273 () Bool)

(assert (= bs!1321273 (and d!1790294 d!1790038)))

(assert (=> bs!1321273 (not (= lambda!305221 lambda!305156))))

(declare-fun bs!1321274 () Bool)

(assert (= bs!1321274 (and d!1790294 d!1790100)))

(assert (=> bs!1321274 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305221 lambda!305163))))

(declare-fun bs!1321275 () Bool)

(assert (= bs!1321275 (and d!1790294 d!1790094)))

(assert (=> bs!1321275 (= lambda!305221 lambda!305162)))

(declare-fun bs!1321276 () Bool)

(assert (= bs!1321276 (and d!1790294 d!1790034)))

(assert (=> bs!1321276 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305221 lambda!305143))))

(declare-fun bs!1321277 () Bool)

(assert (= bs!1321277 (and d!1790294 b!5670241)))

(assert (=> bs!1321277 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305221 lambda!305095))))

(declare-fun bs!1321278 () Bool)

(assert (= bs!1321278 (and d!1790294 b!5670845)))

(assert (=> bs!1321278 (not (= lambda!305221 lambda!305183))))

(declare-fun bs!1321279 () Bool)

(assert (= bs!1321279 (and d!1790294 b!5670249)))

(assert (=> bs!1321279 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305221 lambda!305098))))

(declare-fun bs!1321280 () Bool)

(assert (= bs!1321280 (and d!1790294 b!5671032)))

(assert (=> bs!1321280 (not (= lambda!305221 lambda!305195))))

(assert (=> bs!1321273 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305221 lambda!305155))))

(assert (=> bs!1321269 (= lambda!305221 lambda!305175)))

(assert (=> bs!1321279 (not (= lambda!305221 lambda!305101))))

(assert (=> bs!1321279 (not (= lambda!305221 lambda!305099))))

(declare-fun bs!1321281 () Bool)

(assert (= bs!1321281 (and d!1790294 d!1790080)))

(assert (=> bs!1321281 (not (= lambda!305221 lambda!305160))))

(assert (=> bs!1321279 (= lambda!305221 lambda!305100)))

(declare-fun bs!1321282 () Bool)

(assert (= bs!1321282 (and d!1790294 b!5670704)))

(assert (=> bs!1321282 (not (= lambda!305221 lambda!305174))))

(assert (=> bs!1321277 (not (= lambda!305221 lambda!305096))))

(assert (=> bs!1321281 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305221 lambda!305158))))

(assert (=> d!1790294 true))

(assert (=> d!1790294 true))

(assert (=> d!1790294 true))

(declare-fun lambda!305222 () Int)

(assert (=> bs!1321269 (= lambda!305222 lambda!305176)))

(assert (=> bs!1321270 (not (= lambda!305222 lambda!305172))))

(assert (=> bs!1321271 (not (= lambda!305222 lambda!305182))))

(assert (=> bs!1321272 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305222 lambda!305196))))

(assert (=> bs!1321273 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305222 lambda!305156))))

(assert (=> bs!1321274 (not (= lambda!305222 lambda!305163))))

(assert (=> bs!1321275 (not (= lambda!305222 lambda!305162))))

(assert (=> bs!1321276 (not (= lambda!305222 lambda!305143))))

(assert (=> bs!1321277 (not (= lambda!305222 lambda!305095))))

(assert (=> bs!1321278 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 lt!2268120)) (= lt!2268129 (regTwo!31826 lt!2268120))) (= lambda!305222 lambda!305183))))

(assert (=> bs!1321279 (not (= lambda!305222 lambda!305098))))

(assert (=> bs!1321280 (not (= lambda!305222 lambda!305195))))

(assert (=> bs!1321273 (not (= lambda!305222 lambda!305155))))

(declare-fun bs!1321283 () Bool)

(assert (= bs!1321283 d!1790294))

(assert (=> bs!1321283 (not (= lambda!305222 lambda!305221))))

(assert (=> bs!1321269 (not (= lambda!305222 lambda!305175))))

(assert (=> bs!1321279 (= lambda!305222 lambda!305101)))

(assert (=> bs!1321279 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305222 lambda!305099))))

(assert (=> bs!1321281 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305222 lambda!305160))))

(assert (=> bs!1321279 (not (= lambda!305222 lambda!305100))))

(assert (=> bs!1321282 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 lt!2268141)) (= lt!2268129 (regTwo!31826 lt!2268141))) (= lambda!305222 lambda!305174))))

(assert (=> bs!1321277 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305222 lambda!305096))))

(assert (=> bs!1321281 (not (= lambda!305222 lambda!305158))))

(assert (=> d!1790294 true))

(assert (=> d!1790294 true))

(assert (=> d!1790294 true))

(assert (=> d!1790294 (= (Exists!2757 lambda!305221) (Exists!2757 lambda!305222))))

(assert (=> d!1790294 true))

(declare-fun _$90!1410 () Unit!156160)

(assert (=> d!1790294 (= (choose!42896 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 s!2326) _$90!1410)))

(declare-fun m!6632450 () Bool)

(assert (=> bs!1321283 m!6632450))

(declare-fun m!6632452 () Bool)

(assert (=> bs!1321283 m!6632452))

(assert (=> d!1790126 d!1790294))

(declare-fun b!5671293 () Bool)

(declare-fun e!3491190 () Bool)

(declare-fun e!3491187 () Bool)

(assert (=> b!5671293 (= e!3491190 e!3491187)))

(declare-fun res!2396510 () Bool)

(assert (=> b!5671293 (= res!2396510 (not (nullable!5689 (reg!15986 (regTwo!31826 (regOne!31826 r!7292))))))))

(assert (=> b!5671293 (=> (not res!2396510) (not e!3491187))))

(declare-fun b!5671294 () Bool)

(declare-fun e!3491186 () Bool)

(declare-fun call!430180 () Bool)

(assert (=> b!5671294 (= e!3491186 call!430180)))

(declare-fun bm!430175 () Bool)

(declare-fun c!997541 () Bool)

(assert (=> bm!430175 (= call!430180 (validRegex!7393 (ite c!997541 (regTwo!31827 (regTwo!31826 (regOne!31826 r!7292))) (regTwo!31826 (regTwo!31826 (regOne!31826 r!7292))))))))

(declare-fun bm!430176 () Bool)

(declare-fun call!430182 () Bool)

(declare-fun call!430181 () Bool)

(assert (=> bm!430176 (= call!430182 call!430181)))

(declare-fun d!1790296 () Bool)

(declare-fun res!2396514 () Bool)

(declare-fun e!3491189 () Bool)

(assert (=> d!1790296 (=> res!2396514 e!3491189)))

(assert (=> d!1790296 (= res!2396514 ((_ is ElementMatch!15657) (regTwo!31826 (regOne!31826 r!7292))))))

(assert (=> d!1790296 (= (validRegex!7393 (regTwo!31826 (regOne!31826 r!7292))) e!3491189)))

(declare-fun b!5671295 () Bool)

(declare-fun res!2396511 () Bool)

(declare-fun e!3491188 () Bool)

(assert (=> b!5671295 (=> (not res!2396511) (not e!3491188))))

(assert (=> b!5671295 (= res!2396511 call!430182)))

(declare-fun e!3491184 () Bool)

(assert (=> b!5671295 (= e!3491184 e!3491188)))

(declare-fun b!5671296 () Bool)

(declare-fun res!2396513 () Bool)

(declare-fun e!3491185 () Bool)

(assert (=> b!5671296 (=> res!2396513 e!3491185)))

(assert (=> b!5671296 (= res!2396513 (not ((_ is Concat!24502) (regTwo!31826 (regOne!31826 r!7292)))))))

(assert (=> b!5671296 (= e!3491184 e!3491185)))

(declare-fun b!5671297 () Bool)

(assert (=> b!5671297 (= e!3491190 e!3491184)))

(assert (=> b!5671297 (= c!997541 ((_ is Union!15657) (regTwo!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671298 () Bool)

(assert (=> b!5671298 (= e!3491187 call!430181)))

(declare-fun b!5671299 () Bool)

(assert (=> b!5671299 (= e!3491189 e!3491190)))

(declare-fun c!997540 () Bool)

(assert (=> b!5671299 (= c!997540 ((_ is Star!15657) (regTwo!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671300 () Bool)

(assert (=> b!5671300 (= e!3491185 e!3491186)))

(declare-fun res!2396512 () Bool)

(assert (=> b!5671300 (=> (not res!2396512) (not e!3491186))))

(assert (=> b!5671300 (= res!2396512 call!430182)))

(declare-fun b!5671301 () Bool)

(assert (=> b!5671301 (= e!3491188 call!430180)))

(declare-fun bm!430177 () Bool)

(assert (=> bm!430177 (= call!430181 (validRegex!7393 (ite c!997540 (reg!15986 (regTwo!31826 (regOne!31826 r!7292))) (ite c!997541 (regOne!31827 (regTwo!31826 (regOne!31826 r!7292))) (regOne!31826 (regTwo!31826 (regOne!31826 r!7292)))))))))

(assert (= (and d!1790296 (not res!2396514)) b!5671299))

(assert (= (and b!5671299 c!997540) b!5671293))

(assert (= (and b!5671299 (not c!997540)) b!5671297))

(assert (= (and b!5671293 res!2396510) b!5671298))

(assert (= (and b!5671297 c!997541) b!5671295))

(assert (= (and b!5671297 (not c!997541)) b!5671296))

(assert (= (and b!5671295 res!2396511) b!5671301))

(assert (= (and b!5671296 (not res!2396513)) b!5671300))

(assert (= (and b!5671300 res!2396512) b!5671294))

(assert (= (or b!5671301 b!5671294) bm!430175))

(assert (= (or b!5671295 b!5671300) bm!430176))

(assert (= (or b!5671298 bm!430176) bm!430177))

(declare-fun m!6632454 () Bool)

(assert (=> b!5671293 m!6632454))

(declare-fun m!6632456 () Bool)

(assert (=> bm!430175 m!6632456))

(declare-fun m!6632458 () Bool)

(assert (=> bm!430177 m!6632458))

(assert (=> d!1790126 d!1790296))

(declare-fun d!1790298 () Bool)

(declare-fun res!2396519 () Bool)

(declare-fun e!3491195 () Bool)

(assert (=> d!1790298 (=> res!2396519 e!3491195)))

(assert (=> d!1790298 (= res!2396519 ((_ is Nil!63148) zl!343))))

(assert (=> d!1790298 (= (forall!14809 zl!343 lambda!305113) e!3491195)))

(declare-fun b!5671306 () Bool)

(declare-fun e!3491196 () Bool)

(assert (=> b!5671306 (= e!3491195 e!3491196)))

(declare-fun res!2396520 () Bool)

(assert (=> b!5671306 (=> (not res!2396520) (not e!3491196))))

(declare-fun dynLambda!24713 (Int Context!10082) Bool)

(assert (=> b!5671306 (= res!2396520 (dynLambda!24713 lambda!305113 (h!69596 zl!343)))))

(declare-fun b!5671307 () Bool)

(assert (=> b!5671307 (= e!3491196 (forall!14809 (t!376578 zl!343) lambda!305113))))

(assert (= (and d!1790298 (not res!2396519)) b!5671306))

(assert (= (and b!5671306 res!2396520) b!5671307))

(declare-fun b_lambda!214511 () Bool)

(assert (=> (not b_lambda!214511) (not b!5671306)))

(declare-fun m!6632460 () Bool)

(assert (=> b!5671306 m!6632460))

(declare-fun m!6632462 () Bool)

(assert (=> b!5671307 m!6632462))

(assert (=> b!5670291 d!1790298))

(declare-fun d!1790300 () Bool)

(declare-fun c!997543 () Bool)

(declare-fun e!3491199 () Bool)

(assert (=> d!1790300 (= c!997543 e!3491199)))

(declare-fun res!2396521 () Bool)

(assert (=> d!1790300 (=> (not res!2396521) (not e!3491199))))

(assert (=> d!1790300 (= res!2396521 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun e!3491198 () (InoxSet Context!10082))

(assert (=> d!1790300 (= (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))) (h!69595 s!2326)) e!3491198)))

(declare-fun b!5671308 () Bool)

(declare-fun e!3491197 () (InoxSet Context!10082))

(assert (=> b!5671308 (= e!3491198 e!3491197)))

(declare-fun c!997542 () Bool)

(assert (=> b!5671308 (= c!997542 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5671309 () Bool)

(assert (=> b!5671309 (= e!3491197 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430178 () Bool)

(declare-fun call!430183 () (InoxSet Context!10082))

(assert (=> bm!430178 (= call!430183 (derivationStepZipperDown!999 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))))) (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343))))))) (h!69595 s!2326)))))

(declare-fun b!5671310 () Bool)

(assert (=> b!5671310 (= e!3491199 (nullable!5689 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343))))))))))

(declare-fun b!5671311 () Bool)

(assert (=> b!5671311 (= e!3491198 ((_ map or) call!430183 (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343))))))) (h!69595 s!2326))))))

(declare-fun b!5671312 () Bool)

(assert (=> b!5671312 (= e!3491197 call!430183)))

(assert (= (and d!1790300 res!2396521) b!5671310))

(assert (= (and d!1790300 c!997543) b!5671311))

(assert (= (and d!1790300 (not c!997543)) b!5671308))

(assert (= (and b!5671308 c!997542) b!5671312))

(assert (= (and b!5671308 (not c!997542)) b!5671309))

(assert (= (or b!5671311 b!5671312) bm!430178))

(declare-fun m!6632464 () Bool)

(assert (=> bm!430178 m!6632464))

(declare-fun m!6632466 () Bool)

(assert (=> b!5671310 m!6632466))

(declare-fun m!6632468 () Bool)

(assert (=> b!5671311 m!6632468))

(assert (=> b!5670940 d!1790300))

(declare-fun d!1790302 () Bool)

(declare-fun c!997544 () Bool)

(assert (=> d!1790302 (= c!997544 (isEmpty!35001 (tail!11133 (t!376577 s!2326))))))

(declare-fun e!3491200 () Bool)

(assert (=> d!1790302 (= (matchZipper!1795 (derivationStepZipper!1742 lt!2268130 (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))) e!3491200)))

(declare-fun b!5671313 () Bool)

(assert (=> b!5671313 (= e!3491200 (nullableZipper!1629 (derivationStepZipper!1742 lt!2268130 (head!12038 (t!376577 s!2326)))))))

(declare-fun b!5671314 () Bool)

(assert (=> b!5671314 (= e!3491200 (matchZipper!1795 (derivationStepZipper!1742 (derivationStepZipper!1742 lt!2268130 (head!12038 (t!376577 s!2326))) (head!12038 (tail!11133 (t!376577 s!2326)))) (tail!11133 (tail!11133 (t!376577 s!2326)))))))

(assert (= (and d!1790302 c!997544) b!5671313))

(assert (= (and d!1790302 (not c!997544)) b!5671314))

(assert (=> d!1790302 m!6631650))

(declare-fun m!6632470 () Bool)

(assert (=> d!1790302 m!6632470))

(assert (=> b!5671313 m!6631662))

(declare-fun m!6632472 () Bool)

(assert (=> b!5671313 m!6632472))

(assert (=> b!5671314 m!6631650))

(declare-fun m!6632474 () Bool)

(assert (=> b!5671314 m!6632474))

(assert (=> b!5671314 m!6631662))

(assert (=> b!5671314 m!6632474))

(declare-fun m!6632476 () Bool)

(assert (=> b!5671314 m!6632476))

(assert (=> b!5671314 m!6631650))

(declare-fun m!6632478 () Bool)

(assert (=> b!5671314 m!6632478))

(assert (=> b!5671314 m!6632476))

(assert (=> b!5671314 m!6632478))

(declare-fun m!6632480 () Bool)

(assert (=> b!5671314 m!6632480))

(assert (=> b!5670348 d!1790302))

(declare-fun bs!1321284 () Bool)

(declare-fun d!1790304 () Bool)

(assert (= bs!1321284 (and d!1790304 b!5670246)))

(declare-fun lambda!305223 () Int)

(assert (=> bs!1321284 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305223 lambda!305097))))

(declare-fun bs!1321285 () Bool)

(assert (= bs!1321285 (and d!1790304 d!1790256)))

(assert (=> bs!1321285 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305223 lambda!305207))))

(assert (=> d!1790304 true))

(assert (=> d!1790304 (= (derivationStepZipper!1742 lt!2268130 (head!12038 (t!376577 s!2326))) (flatMap!1270 lt!2268130 lambda!305223))))

(declare-fun bs!1321286 () Bool)

(assert (= bs!1321286 d!1790304))

(declare-fun m!6632482 () Bool)

(assert (=> bs!1321286 m!6632482))

(assert (=> b!5670348 d!1790304))

(declare-fun d!1790306 () Bool)

(assert (=> d!1790306 (= (head!12038 (t!376577 s!2326)) (h!69595 (t!376577 s!2326)))))

(assert (=> b!5670348 d!1790306))

(declare-fun d!1790308 () Bool)

(assert (=> d!1790308 (= (tail!11133 (t!376577 s!2326)) (t!376577 (t!376577 s!2326)))))

(assert (=> b!5670348 d!1790308))

(assert (=> d!1790034 d!1790016))

(declare-fun d!1790310 () Bool)

(assert (=> d!1790310 (= (Exists!2757 lambda!305143) (choose!42894 lambda!305143))))

(declare-fun bs!1321287 () Bool)

(assert (= bs!1321287 d!1790310))

(declare-fun m!6632484 () Bool)

(assert (=> bs!1321287 m!6632484))

(assert (=> d!1790034 d!1790310))

(declare-fun b!5671315 () Bool)

(declare-fun e!3491207 () Bool)

(declare-fun e!3491204 () Bool)

(assert (=> b!5671315 (= e!3491207 e!3491204)))

(declare-fun res!2396522 () Bool)

(assert (=> b!5671315 (= res!2396522 (not (nullable!5689 (reg!15986 (regOne!31826 r!7292)))))))

(assert (=> b!5671315 (=> (not res!2396522) (not e!3491204))))

(declare-fun b!5671316 () Bool)

(declare-fun e!3491203 () Bool)

(declare-fun call!430184 () Bool)

(assert (=> b!5671316 (= e!3491203 call!430184)))

(declare-fun bm!430179 () Bool)

(declare-fun c!997546 () Bool)

(assert (=> bm!430179 (= call!430184 (validRegex!7393 (ite c!997546 (regTwo!31827 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292)))))))

(declare-fun bm!430180 () Bool)

(declare-fun call!430186 () Bool)

(declare-fun call!430185 () Bool)

(assert (=> bm!430180 (= call!430186 call!430185)))

(declare-fun d!1790312 () Bool)

(declare-fun res!2396526 () Bool)

(declare-fun e!3491206 () Bool)

(assert (=> d!1790312 (=> res!2396526 e!3491206)))

(assert (=> d!1790312 (= res!2396526 ((_ is ElementMatch!15657) (regOne!31826 r!7292)))))

(assert (=> d!1790312 (= (validRegex!7393 (regOne!31826 r!7292)) e!3491206)))

(declare-fun b!5671317 () Bool)

(declare-fun res!2396523 () Bool)

(declare-fun e!3491205 () Bool)

(assert (=> b!5671317 (=> (not res!2396523) (not e!3491205))))

(assert (=> b!5671317 (= res!2396523 call!430186)))

(declare-fun e!3491201 () Bool)

(assert (=> b!5671317 (= e!3491201 e!3491205)))

(declare-fun b!5671318 () Bool)

(declare-fun res!2396525 () Bool)

(declare-fun e!3491202 () Bool)

(assert (=> b!5671318 (=> res!2396525 e!3491202)))

(assert (=> b!5671318 (= res!2396525 (not ((_ is Concat!24502) (regOne!31826 r!7292))))))

(assert (=> b!5671318 (= e!3491201 e!3491202)))

(declare-fun b!5671319 () Bool)

(assert (=> b!5671319 (= e!3491207 e!3491201)))

(assert (=> b!5671319 (= c!997546 ((_ is Union!15657) (regOne!31826 r!7292)))))

(declare-fun b!5671320 () Bool)

(assert (=> b!5671320 (= e!3491204 call!430185)))

(declare-fun b!5671321 () Bool)

(assert (=> b!5671321 (= e!3491206 e!3491207)))

(declare-fun c!997545 () Bool)

(assert (=> b!5671321 (= c!997545 ((_ is Star!15657) (regOne!31826 r!7292)))))

(declare-fun b!5671322 () Bool)

(assert (=> b!5671322 (= e!3491202 e!3491203)))

(declare-fun res!2396524 () Bool)

(assert (=> b!5671322 (=> (not res!2396524) (not e!3491203))))

(assert (=> b!5671322 (= res!2396524 call!430186)))

(declare-fun b!5671323 () Bool)

(assert (=> b!5671323 (= e!3491205 call!430184)))

(declare-fun bm!430181 () Bool)

(assert (=> bm!430181 (= call!430185 (validRegex!7393 (ite c!997545 (reg!15986 (regOne!31826 r!7292)) (ite c!997546 (regOne!31827 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))))))))

(assert (= (and d!1790312 (not res!2396526)) b!5671321))

(assert (= (and b!5671321 c!997545) b!5671315))

(assert (= (and b!5671321 (not c!997545)) b!5671319))

(assert (= (and b!5671315 res!2396522) b!5671320))

(assert (= (and b!5671319 c!997546) b!5671317))

(assert (= (and b!5671319 (not c!997546)) b!5671318))

(assert (= (and b!5671317 res!2396523) b!5671323))

(assert (= (and b!5671318 (not res!2396525)) b!5671322))

(assert (= (and b!5671322 res!2396524) b!5671316))

(assert (= (or b!5671323 b!5671316) bm!430179))

(assert (= (or b!5671317 b!5671322) bm!430180))

(assert (= (or b!5671320 bm!430180) bm!430181))

(declare-fun m!6632486 () Bool)

(assert (=> b!5671315 m!6632486))

(declare-fun m!6632488 () Bool)

(assert (=> bm!430179 m!6632488))

(declare-fun m!6632490 () Bool)

(assert (=> bm!430181 m!6632490))

(assert (=> d!1790034 d!1790312))

(assert (=> d!1790034 d!1790054))

(declare-fun bs!1321288 () Bool)

(declare-fun d!1790314 () Bool)

(assert (= bs!1321288 (and d!1790314 d!1790126)))

(declare-fun lambda!305226 () Int)

(assert (=> bs!1321288 (not (= lambda!305226 lambda!305176))))

(declare-fun bs!1321289 () Bool)

(assert (= bs!1321289 (and d!1790314 b!5670698)))

(assert (=> bs!1321289 (not (= lambda!305226 lambda!305172))))

(declare-fun bs!1321290 () Bool)

(assert (= bs!1321290 (and d!1790314 b!5670839)))

(assert (=> bs!1321290 (not (= lambda!305226 lambda!305182))))

(declare-fun bs!1321291 () Bool)

(assert (= bs!1321291 (and d!1790314 d!1790038)))

(assert (=> bs!1321291 (not (= lambda!305226 lambda!305156))))

(declare-fun bs!1321292 () Bool)

(assert (= bs!1321292 (and d!1790314 d!1790100)))

(assert (=> bs!1321292 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305226 lambda!305163))))

(declare-fun bs!1321293 () Bool)

(assert (= bs!1321293 (and d!1790314 d!1790094)))

(assert (=> bs!1321293 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305226 lambda!305162))))

(declare-fun bs!1321294 () Bool)

(assert (= bs!1321294 (and d!1790314 d!1790034)))

(assert (=> bs!1321294 (= lambda!305226 lambda!305143)))

(declare-fun bs!1321295 () Bool)

(assert (= bs!1321295 (and d!1790314 b!5670241)))

(assert (=> bs!1321295 (= lambda!305226 lambda!305095)))

(declare-fun bs!1321296 () Bool)

(assert (= bs!1321296 (and d!1790314 b!5670845)))

(assert (=> bs!1321296 (not (= lambda!305226 lambda!305183))))

(declare-fun bs!1321297 () Bool)

(assert (= bs!1321297 (and d!1790314 b!5670249)))

(assert (=> bs!1321297 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305226 lambda!305098))))

(declare-fun bs!1321298 () Bool)

(assert (= bs!1321298 (and d!1790314 b!5671032)))

(assert (=> bs!1321298 (not (= lambda!305226 lambda!305195))))

(assert (=> bs!1321291 (= lambda!305226 lambda!305155)))

(declare-fun bs!1321299 () Bool)

(assert (= bs!1321299 (and d!1790314 d!1790294)))

(assert (=> bs!1321299 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305226 lambda!305221))))

(assert (=> bs!1321288 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305226 lambda!305175))))

(assert (=> bs!1321297 (not (= lambda!305226 lambda!305101))))

(assert (=> bs!1321299 (not (= lambda!305226 lambda!305222))))

(declare-fun bs!1321300 () Bool)

(assert (= bs!1321300 (and d!1790314 b!5671038)))

(assert (=> bs!1321300 (not (= lambda!305226 lambda!305196))))

(assert (=> bs!1321297 (not (= lambda!305226 lambda!305099))))

(declare-fun bs!1321301 () Bool)

(assert (= bs!1321301 (and d!1790314 d!1790080)))

(assert (=> bs!1321301 (not (= lambda!305226 lambda!305160))))

(assert (=> bs!1321297 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305226 lambda!305100))))

(declare-fun bs!1321302 () Bool)

(assert (= bs!1321302 (and d!1790314 b!5670704)))

(assert (=> bs!1321302 (not (= lambda!305226 lambda!305174))))

(assert (=> bs!1321295 (not (= lambda!305226 lambda!305096))))

(assert (=> bs!1321301 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305226 lambda!305158))))

(assert (=> d!1790314 true))

(assert (=> d!1790314 true))

(assert (=> d!1790314 true))

(assert (=> d!1790314 (= (isDefined!12369 (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) Nil!63147 s!2326 s!2326)) (Exists!2757 lambda!305226))))

(assert (=> d!1790314 true))

(declare-fun _$89!1786 () Unit!156160)

(assert (=> d!1790314 (= (choose!42895 (regOne!31826 r!7292) (regTwo!31826 r!7292) s!2326) _$89!1786)))

(declare-fun bs!1321303 () Bool)

(assert (= bs!1321303 d!1790314))

(assert (=> bs!1321303 m!6631482))

(assert (=> bs!1321303 m!6631482))

(assert (=> bs!1321303 m!6631484))

(declare-fun m!6632492 () Bool)

(assert (=> bs!1321303 m!6632492))

(assert (=> d!1790034 d!1790314))

(declare-fun d!1790316 () Bool)

(assert (=> d!1790316 (= (isEmpty!34998 (tail!11134 (exprs!5541 (h!69596 zl!343)))) ((_ is Nil!63146) (tail!11134 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> b!5670892 d!1790316))

(declare-fun d!1790318 () Bool)

(assert (=> d!1790318 (= (tail!11134 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))

(assert (=> b!5670892 d!1790318))

(declare-fun d!1790320 () Bool)

(assert (=> d!1790320 (= (isEmptyExpr!1187 lt!2268290) ((_ is EmptyExpr!15657) lt!2268290))))

(assert (=> b!5670896 d!1790320))

(declare-fun d!1790322 () Bool)

(assert (=> d!1790322 (= (isEmpty!34998 (t!376576 (unfocusZipperList!1085 zl!343))) ((_ is Nil!63146) (t!376576 (unfocusZipperList!1085 zl!343))))))

(assert (=> b!5671188 d!1790322))

(assert (=> d!1790016 d!1790274))

(declare-fun b!5671328 () Bool)

(declare-fun res!2396531 () Bool)

(declare-fun e!3491214 () Bool)

(assert (=> b!5671328 (=> (not res!2396531) (not e!3491214))))

(declare-fun call!430187 () Bool)

(assert (=> b!5671328 (= res!2396531 (not call!430187))))

(declare-fun b!5671329 () Bool)

(declare-fun e!3491212 () Bool)

(declare-fun e!3491213 () Bool)

(assert (=> b!5671329 (= e!3491212 e!3491213)))

(declare-fun c!997547 () Bool)

(assert (=> b!5671329 (= c!997547 ((_ is EmptyLang!15657) (regOne!31826 r!7292)))))

(declare-fun b!5671330 () Bool)

(declare-fun e!3491210 () Bool)

(assert (=> b!5671330 (= e!3491210 (matchR!7842 (derivativeStep!4482 (regOne!31826 r!7292) (head!12038 Nil!63147)) (tail!11133 Nil!63147)))))

(declare-fun b!5671331 () Bool)

(assert (=> b!5671331 (= e!3491210 (nullable!5689 (regOne!31826 r!7292)))))

(declare-fun bm!430182 () Bool)

(assert (=> bm!430182 (= call!430187 (isEmpty!35001 Nil!63147))))

(declare-fun b!5671332 () Bool)

(declare-fun res!2396532 () Bool)

(assert (=> b!5671332 (=> (not res!2396532) (not e!3491214))))

(assert (=> b!5671332 (= res!2396532 (isEmpty!35001 (tail!11133 Nil!63147)))))

(declare-fun b!5671333 () Bool)

(declare-fun e!3491215 () Bool)

(declare-fun e!3491211 () Bool)

(assert (=> b!5671333 (= e!3491215 e!3491211)))

(declare-fun res!2396536 () Bool)

(assert (=> b!5671333 (=> (not res!2396536) (not e!3491211))))

(declare-fun lt!2268327 () Bool)

(assert (=> b!5671333 (= res!2396536 (not lt!2268327))))

(declare-fun b!5671334 () Bool)

(declare-fun e!3491216 () Bool)

(assert (=> b!5671334 (= e!3491211 e!3491216)))

(declare-fun res!2396534 () Bool)

(assert (=> b!5671334 (=> res!2396534 e!3491216)))

(assert (=> b!5671334 (= res!2396534 call!430187)))

(declare-fun d!1790324 () Bool)

(assert (=> d!1790324 e!3491212))

(declare-fun c!997548 () Bool)

(assert (=> d!1790324 (= c!997548 ((_ is EmptyExpr!15657) (regOne!31826 r!7292)))))

(assert (=> d!1790324 (= lt!2268327 e!3491210)))

(declare-fun c!997549 () Bool)

(assert (=> d!1790324 (= c!997549 (isEmpty!35001 Nil!63147))))

(assert (=> d!1790324 (validRegex!7393 (regOne!31826 r!7292))))

(assert (=> d!1790324 (= (matchR!7842 (regOne!31826 r!7292) Nil!63147) lt!2268327)))

(declare-fun b!5671335 () Bool)

(assert (=> b!5671335 (= e!3491216 (not (= (head!12038 Nil!63147) (c!997231 (regOne!31826 r!7292)))))))

(declare-fun b!5671336 () Bool)

(declare-fun res!2396533 () Bool)

(assert (=> b!5671336 (=> res!2396533 e!3491215)))

(assert (=> b!5671336 (= res!2396533 e!3491214)))

(declare-fun res!2396535 () Bool)

(assert (=> b!5671336 (=> (not res!2396535) (not e!3491214))))

(assert (=> b!5671336 (= res!2396535 lt!2268327)))

(declare-fun b!5671337 () Bool)

(assert (=> b!5671337 (= e!3491213 (not lt!2268327))))

(declare-fun b!5671338 () Bool)

(assert (=> b!5671338 (= e!3491212 (= lt!2268327 call!430187))))

(declare-fun b!5671339 () Bool)

(declare-fun res!2396538 () Bool)

(assert (=> b!5671339 (=> res!2396538 e!3491216)))

(assert (=> b!5671339 (= res!2396538 (not (isEmpty!35001 (tail!11133 Nil!63147))))))

(declare-fun b!5671340 () Bool)

(assert (=> b!5671340 (= e!3491214 (= (head!12038 Nil!63147) (c!997231 (regOne!31826 r!7292))))))

(declare-fun b!5671341 () Bool)

(declare-fun res!2396537 () Bool)

(assert (=> b!5671341 (=> res!2396537 e!3491215)))

(assert (=> b!5671341 (= res!2396537 (not ((_ is ElementMatch!15657) (regOne!31826 r!7292))))))

(assert (=> b!5671341 (= e!3491213 e!3491215)))

(assert (= (and d!1790324 c!997549) b!5671331))

(assert (= (and d!1790324 (not c!997549)) b!5671330))

(assert (= (and d!1790324 c!997548) b!5671338))

(assert (= (and d!1790324 (not c!997548)) b!5671329))

(assert (= (and b!5671329 c!997547) b!5671337))

(assert (= (and b!5671329 (not c!997547)) b!5671341))

(assert (= (and b!5671341 (not res!2396537)) b!5671336))

(assert (= (and b!5671336 res!2396535) b!5671328))

(assert (= (and b!5671328 res!2396531) b!5671332))

(assert (= (and b!5671332 res!2396532) b!5671340))

(assert (= (and b!5671336 (not res!2396533)) b!5671333))

(assert (= (and b!5671333 res!2396536) b!5671334))

(assert (= (and b!5671334 (not res!2396534)) b!5671339))

(assert (= (and b!5671339 (not res!2396538)) b!5671335))

(assert (= (or b!5671338 b!5671328 b!5671334) bm!430182))

(declare-fun m!6632494 () Bool)

(assert (=> b!5671332 m!6632494))

(assert (=> b!5671332 m!6632494))

(declare-fun m!6632496 () Bool)

(assert (=> b!5671332 m!6632496))

(assert (=> b!5671339 m!6632494))

(assert (=> b!5671339 m!6632494))

(assert (=> b!5671339 m!6632496))

(declare-fun m!6632498 () Bool)

(assert (=> d!1790324 m!6632498))

(assert (=> d!1790324 m!6631734))

(declare-fun m!6632500 () Bool)

(assert (=> b!5671340 m!6632500))

(assert (=> b!5671330 m!6632500))

(assert (=> b!5671330 m!6632500))

(declare-fun m!6632502 () Bool)

(assert (=> b!5671330 m!6632502))

(assert (=> b!5671330 m!6632494))

(assert (=> b!5671330 m!6632502))

(assert (=> b!5671330 m!6632494))

(declare-fun m!6632504 () Bool)

(assert (=> b!5671330 m!6632504))

(declare-fun m!6632506 () Bool)

(assert (=> b!5671331 m!6632506))

(assert (=> b!5671335 m!6632500))

(assert (=> bm!430182 m!6632498))

(assert (=> d!1790016 d!1790324))

(assert (=> d!1790016 d!1790312))

(declare-fun d!1790326 () Bool)

(assert (=> d!1790326 (= (isDefined!12369 lt!2268251) (not (isEmpty!35002 lt!2268251)))))

(declare-fun bs!1321304 () Bool)

(assert (= bs!1321304 d!1790326))

(declare-fun m!6632508 () Bool)

(assert (=> bs!1321304 m!6632508))

(assert (=> d!1790084 d!1790326))

(declare-fun b!5671342 () Bool)

(declare-fun res!2396539 () Bool)

(declare-fun e!3491221 () Bool)

(assert (=> b!5671342 (=> (not res!2396539) (not e!3491221))))

(declare-fun call!430188 () Bool)

(assert (=> b!5671342 (= res!2396539 (not call!430188))))

(declare-fun b!5671343 () Bool)

(declare-fun e!3491219 () Bool)

(declare-fun e!3491220 () Bool)

(assert (=> b!5671343 (= e!3491219 e!3491220)))

(declare-fun c!997550 () Bool)

(assert (=> b!5671343 (= c!997550 ((_ is EmptyLang!15657) (regTwo!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671344 () Bool)

(declare-fun e!3491217 () Bool)

(assert (=> b!5671344 (= e!3491217 (matchR!7842 (derivativeStep!4482 (regTwo!31826 (regOne!31826 r!7292)) (head!12038 Nil!63147)) (tail!11133 Nil!63147)))))

(declare-fun b!5671345 () Bool)

(assert (=> b!5671345 (= e!3491217 (nullable!5689 (regTwo!31826 (regOne!31826 r!7292))))))

(declare-fun bm!430183 () Bool)

(assert (=> bm!430183 (= call!430188 (isEmpty!35001 Nil!63147))))

(declare-fun b!5671346 () Bool)

(declare-fun res!2396540 () Bool)

(assert (=> b!5671346 (=> (not res!2396540) (not e!3491221))))

(assert (=> b!5671346 (= res!2396540 (isEmpty!35001 (tail!11133 Nil!63147)))))

(declare-fun b!5671347 () Bool)

(declare-fun e!3491222 () Bool)

(declare-fun e!3491218 () Bool)

(assert (=> b!5671347 (= e!3491222 e!3491218)))

(declare-fun res!2396544 () Bool)

(assert (=> b!5671347 (=> (not res!2396544) (not e!3491218))))

(declare-fun lt!2268328 () Bool)

(assert (=> b!5671347 (= res!2396544 (not lt!2268328))))

(declare-fun b!5671348 () Bool)

(declare-fun e!3491223 () Bool)

(assert (=> b!5671348 (= e!3491218 e!3491223)))

(declare-fun res!2396542 () Bool)

(assert (=> b!5671348 (=> res!2396542 e!3491223)))

(assert (=> b!5671348 (= res!2396542 call!430188)))

(declare-fun d!1790328 () Bool)

(assert (=> d!1790328 e!3491219))

(declare-fun c!997551 () Bool)

(assert (=> d!1790328 (= c!997551 ((_ is EmptyExpr!15657) (regTwo!31826 (regOne!31826 r!7292))))))

(assert (=> d!1790328 (= lt!2268328 e!3491217)))

(declare-fun c!997552 () Bool)

(assert (=> d!1790328 (= c!997552 (isEmpty!35001 Nil!63147))))

(assert (=> d!1790328 (validRegex!7393 (regTwo!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790328 (= (matchR!7842 (regTwo!31826 (regOne!31826 r!7292)) Nil!63147) lt!2268328)))

(declare-fun b!5671349 () Bool)

(assert (=> b!5671349 (= e!3491223 (not (= (head!12038 Nil!63147) (c!997231 (regTwo!31826 (regOne!31826 r!7292))))))))

(declare-fun b!5671350 () Bool)

(declare-fun res!2396541 () Bool)

(assert (=> b!5671350 (=> res!2396541 e!3491222)))

(assert (=> b!5671350 (= res!2396541 e!3491221)))

(declare-fun res!2396543 () Bool)

(assert (=> b!5671350 (=> (not res!2396543) (not e!3491221))))

(assert (=> b!5671350 (= res!2396543 lt!2268328)))

(declare-fun b!5671351 () Bool)

(assert (=> b!5671351 (= e!3491220 (not lt!2268328))))

(declare-fun b!5671352 () Bool)

(assert (=> b!5671352 (= e!3491219 (= lt!2268328 call!430188))))

(declare-fun b!5671353 () Bool)

(declare-fun res!2396546 () Bool)

(assert (=> b!5671353 (=> res!2396546 e!3491223)))

(assert (=> b!5671353 (= res!2396546 (not (isEmpty!35001 (tail!11133 Nil!63147))))))

(declare-fun b!5671354 () Bool)

(assert (=> b!5671354 (= e!3491221 (= (head!12038 Nil!63147) (c!997231 (regTwo!31826 (regOne!31826 r!7292)))))))

(declare-fun b!5671355 () Bool)

(declare-fun res!2396545 () Bool)

(assert (=> b!5671355 (=> res!2396545 e!3491222)))

(assert (=> b!5671355 (= res!2396545 (not ((_ is ElementMatch!15657) (regTwo!31826 (regOne!31826 r!7292)))))))

(assert (=> b!5671355 (= e!3491220 e!3491222)))

(assert (= (and d!1790328 c!997552) b!5671345))

(assert (= (and d!1790328 (not c!997552)) b!5671344))

(assert (= (and d!1790328 c!997551) b!5671352))

(assert (= (and d!1790328 (not c!997551)) b!5671343))

(assert (= (and b!5671343 c!997550) b!5671351))

(assert (= (and b!5671343 (not c!997550)) b!5671355))

(assert (= (and b!5671355 (not res!2396545)) b!5671350))

(assert (= (and b!5671350 res!2396543) b!5671342))

(assert (= (and b!5671342 res!2396539) b!5671346))

(assert (= (and b!5671346 res!2396540) b!5671354))

(assert (= (and b!5671350 (not res!2396541)) b!5671347))

(assert (= (and b!5671347 res!2396544) b!5671348))

(assert (= (and b!5671348 (not res!2396542)) b!5671353))

(assert (= (and b!5671353 (not res!2396546)) b!5671349))

(assert (= (or b!5671352 b!5671342 b!5671348) bm!430183))

(assert (=> b!5671346 m!6632494))

(assert (=> b!5671346 m!6632494))

(assert (=> b!5671346 m!6632496))

(assert (=> b!5671353 m!6632494))

(assert (=> b!5671353 m!6632494))

(assert (=> b!5671353 m!6632496))

(assert (=> d!1790328 m!6632498))

(assert (=> d!1790328 m!6631916))

(assert (=> b!5671354 m!6632500))

(assert (=> b!5671344 m!6632500))

(assert (=> b!5671344 m!6632500))

(declare-fun m!6632510 () Bool)

(assert (=> b!5671344 m!6632510))

(assert (=> b!5671344 m!6632494))

(assert (=> b!5671344 m!6632510))

(assert (=> b!5671344 m!6632494))

(declare-fun m!6632512 () Bool)

(assert (=> b!5671344 m!6632512))

(declare-fun m!6632514 () Bool)

(assert (=> b!5671345 m!6632514))

(assert (=> b!5671349 m!6632500))

(assert (=> bm!430183 m!6632498))

(assert (=> d!1790084 d!1790328))

(assert (=> d!1790084 d!1790296))

(declare-fun bs!1321305 () Bool)

(declare-fun d!1790330 () Bool)

(assert (= bs!1321305 (and d!1790330 b!5670284)))

(declare-fun lambda!305227 () Int)

(assert (=> bs!1321305 (not (= lambda!305227 lambda!305109))))

(declare-fun bs!1321306 () Bool)

(assert (= bs!1321306 (and d!1790330 d!1790286)))

(assert (=> bs!1321306 (= lambda!305227 lambda!305216)))

(declare-fun bs!1321307 () Bool)

(assert (= bs!1321307 (and d!1790330 b!5670286)))

(assert (=> bs!1321307 (not (= lambda!305227 lambda!305110))))

(declare-fun bs!1321308 () Bool)

(assert (= bs!1321308 (and d!1790330 b!5670291)))

(assert (=> bs!1321308 (not (= lambda!305227 lambda!305113))))

(declare-fun bs!1321309 () Bool)

(assert (= bs!1321309 (and d!1790330 b!5670289)))

(assert (=> bs!1321309 (not (= lambda!305227 lambda!305112))))

(assert (=> d!1790330 (= (nullableZipper!1629 ((_ map or) lt!2268133 lt!2268136)) (exists!2203 ((_ map or) lt!2268133 lt!2268136) lambda!305227))))

(declare-fun bs!1321310 () Bool)

(assert (= bs!1321310 d!1790330))

(declare-fun m!6632516 () Bool)

(assert (=> bs!1321310 m!6632516))

(assert (=> b!5670345 d!1790330))

(assert (=> b!5670617 d!1790326))

(declare-fun b!5671356 () Bool)

(declare-fun e!3491225 () (InoxSet Context!10082))

(assert (=> b!5671356 (= e!3491225 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430184 () Bool)

(declare-fun call!430194 () (InoxSet Context!10082))

(declare-fun call!430193 () (InoxSet Context!10082))

(assert (=> bm!430184 (= call!430194 call!430193)))

(declare-fun b!5671357 () Bool)

(declare-fun e!3491229 () Bool)

(assert (=> b!5671357 (= e!3491229 (nullable!5689 (regOne!31826 (h!69594 (exprs!5541 lt!2268148)))))))

(declare-fun bm!430185 () Bool)

(declare-fun call!430190 () (InoxSet Context!10082))

(assert (=> bm!430185 (= call!430190 call!430194)))

(declare-fun b!5671358 () Bool)

(assert (=> b!5671358 (= e!3491225 call!430190)))

(declare-fun b!5671359 () Bool)

(declare-fun e!3491227 () (InoxSet Context!10082))

(declare-fun call!430191 () (InoxSet Context!10082))

(assert (=> b!5671359 (= e!3491227 ((_ map or) call!430191 call!430194))))

(declare-fun b!5671360 () Bool)

(declare-fun e!3491224 () (InoxSet Context!10082))

(assert (=> b!5671360 (= e!3491224 (store ((as const (Array Context!10082 Bool)) false) (Context!10083 (t!376576 (exprs!5541 lt!2268148))) true))))

(declare-fun d!1790332 () Bool)

(declare-fun c!997556 () Bool)

(assert (=> d!1790332 (= c!997556 (and ((_ is ElementMatch!15657) (h!69594 (exprs!5541 lt!2268148))) (= (c!997231 (h!69594 (exprs!5541 lt!2268148))) (h!69595 s!2326))))))

(assert (=> d!1790332 (= (derivationStepZipperDown!999 (h!69594 (exprs!5541 lt!2268148)) (Context!10083 (t!376576 (exprs!5541 lt!2268148))) (h!69595 s!2326)) e!3491224)))

(declare-fun b!5671361 () Bool)

(declare-fun e!3491226 () (InoxSet Context!10082))

(assert (=> b!5671361 (= e!3491226 call!430190)))

(declare-fun b!5671362 () Bool)

(declare-fun c!997557 () Bool)

(assert (=> b!5671362 (= c!997557 ((_ is Star!15657) (h!69594 (exprs!5541 lt!2268148))))))

(assert (=> b!5671362 (= e!3491226 e!3491225)))

(declare-fun bm!430186 () Bool)

(declare-fun call!430192 () List!63270)

(declare-fun call!430189 () List!63270)

(assert (=> bm!430186 (= call!430192 call!430189)))

(declare-fun bm!430187 () Bool)

(declare-fun c!997554 () Bool)

(assert (=> bm!430187 (= call!430191 (derivationStepZipperDown!999 (ite c!997554 (regOne!31827 (h!69594 (exprs!5541 lt!2268148))) (regOne!31826 (h!69594 (exprs!5541 lt!2268148)))) (ite c!997554 (Context!10083 (t!376576 (exprs!5541 lt!2268148))) (Context!10083 call!430189)) (h!69595 s!2326)))))

(declare-fun b!5671363 () Bool)

(declare-fun c!997555 () Bool)

(assert (=> b!5671363 (= c!997555 e!3491229)))

(declare-fun res!2396547 () Bool)

(assert (=> b!5671363 (=> (not res!2396547) (not e!3491229))))

(assert (=> b!5671363 (= res!2396547 ((_ is Concat!24502) (h!69594 (exprs!5541 lt!2268148))))))

(declare-fun e!3491228 () (InoxSet Context!10082))

(assert (=> b!5671363 (= e!3491228 e!3491227)))

(declare-fun b!5671364 () Bool)

(assert (=> b!5671364 (= e!3491227 e!3491226)))

(declare-fun c!997553 () Bool)

(assert (=> b!5671364 (= c!997553 ((_ is Concat!24502) (h!69594 (exprs!5541 lt!2268148))))))

(declare-fun b!5671365 () Bool)

(assert (=> b!5671365 (= e!3491228 ((_ map or) call!430191 call!430193))))

(declare-fun bm!430188 () Bool)

(assert (=> bm!430188 (= call!430193 (derivationStepZipperDown!999 (ite c!997554 (regTwo!31827 (h!69594 (exprs!5541 lt!2268148))) (ite c!997555 (regTwo!31826 (h!69594 (exprs!5541 lt!2268148))) (ite c!997553 (regOne!31826 (h!69594 (exprs!5541 lt!2268148))) (reg!15986 (h!69594 (exprs!5541 lt!2268148)))))) (ite (or c!997554 c!997555) (Context!10083 (t!376576 (exprs!5541 lt!2268148))) (Context!10083 call!430192)) (h!69595 s!2326)))))

(declare-fun bm!430189 () Bool)

(assert (=> bm!430189 (= call!430189 ($colon$colon!1695 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268148)))) (ite (or c!997555 c!997553) (regTwo!31826 (h!69594 (exprs!5541 lt!2268148))) (h!69594 (exprs!5541 lt!2268148)))))))

(declare-fun b!5671366 () Bool)

(assert (=> b!5671366 (= e!3491224 e!3491228)))

(assert (=> b!5671366 (= c!997554 ((_ is Union!15657) (h!69594 (exprs!5541 lt!2268148))))))

(assert (= (and d!1790332 c!997556) b!5671360))

(assert (= (and d!1790332 (not c!997556)) b!5671366))

(assert (= (and b!5671366 c!997554) b!5671365))

(assert (= (and b!5671366 (not c!997554)) b!5671363))

(assert (= (and b!5671363 res!2396547) b!5671357))

(assert (= (and b!5671363 c!997555) b!5671359))

(assert (= (and b!5671363 (not c!997555)) b!5671364))

(assert (= (and b!5671364 c!997553) b!5671361))

(assert (= (and b!5671364 (not c!997553)) b!5671362))

(assert (= (and b!5671362 c!997557) b!5671358))

(assert (= (and b!5671362 (not c!997557)) b!5671356))

(assert (= (or b!5671361 b!5671358) bm!430186))

(assert (= (or b!5671361 b!5671358) bm!430185))

(assert (= (or b!5671359 bm!430186) bm!430189))

(assert (= (or b!5671359 bm!430185) bm!430184))

(assert (= (or b!5671365 bm!430184) bm!430188))

(assert (= (or b!5671365 b!5671359) bm!430187))

(declare-fun m!6632518 () Bool)

(assert (=> bm!430188 m!6632518))

(declare-fun m!6632520 () Bool)

(assert (=> bm!430187 m!6632520))

(declare-fun m!6632522 () Bool)

(assert (=> b!5671357 m!6632522))

(declare-fun m!6632524 () Bool)

(assert (=> bm!430189 m!6632524))

(declare-fun m!6632526 () Bool)

(assert (=> b!5671360 m!6632526))

(assert (=> bm!430151 d!1790332))

(declare-fun d!1790334 () Bool)

(assert (=> d!1790334 true))

(assert (=> d!1790334 true))

(declare-fun res!2396548 () Bool)

(assert (=> d!1790334 (= (choose!42894 lambda!305098) res!2396548)))

(assert (=> d!1790164 d!1790334))

(declare-fun d!1790336 () Bool)

(assert (=> d!1790336 (= (isEmpty!35001 (t!376577 s!2326)) ((_ is Nil!63147) (t!376577 s!2326)))))

(assert (=> d!1790246 d!1790336))

(declare-fun d!1790338 () Bool)

(declare-fun c!997558 () Bool)

(assert (=> d!1790338 (= c!997558 (isEmpty!35001 (tail!11133 (t!376577 s!2326))))))

(declare-fun e!3491230 () Bool)

(assert (=> d!1790338 (= (matchZipper!1795 (derivationStepZipper!1742 lt!2268136 (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))) e!3491230)))

(declare-fun b!5671367 () Bool)

(assert (=> b!5671367 (= e!3491230 (nullableZipper!1629 (derivationStepZipper!1742 lt!2268136 (head!12038 (t!376577 s!2326)))))))

(declare-fun b!5671368 () Bool)

(assert (=> b!5671368 (= e!3491230 (matchZipper!1795 (derivationStepZipper!1742 (derivationStepZipper!1742 lt!2268136 (head!12038 (t!376577 s!2326))) (head!12038 (tail!11133 (t!376577 s!2326)))) (tail!11133 (tail!11133 (t!376577 s!2326)))))))

(assert (= (and d!1790338 c!997558) b!5671367))

(assert (= (and d!1790338 (not c!997558)) b!5671368))

(assert (=> d!1790338 m!6631650))

(assert (=> d!1790338 m!6632470))

(assert (=> b!5671367 m!6632372))

(declare-fun m!6632528 () Bool)

(assert (=> b!5671367 m!6632528))

(assert (=> b!5671368 m!6631650))

(assert (=> b!5671368 m!6632474))

(assert (=> b!5671368 m!6632372))

(assert (=> b!5671368 m!6632474))

(declare-fun m!6632530 () Bool)

(assert (=> b!5671368 m!6632530))

(assert (=> b!5671368 m!6631650))

(assert (=> b!5671368 m!6632478))

(assert (=> b!5671368 m!6632530))

(assert (=> b!5671368 m!6632478))

(declare-fun m!6632532 () Bool)

(assert (=> b!5671368 m!6632532))

(assert (=> b!5671148 d!1790338))

(declare-fun bs!1321311 () Bool)

(declare-fun d!1790340 () Bool)

(assert (= bs!1321311 (and d!1790340 b!5670246)))

(declare-fun lambda!305228 () Int)

(assert (=> bs!1321311 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305228 lambda!305097))))

(declare-fun bs!1321312 () Bool)

(assert (= bs!1321312 (and d!1790340 d!1790256)))

(assert (=> bs!1321312 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305228 lambda!305207))))

(declare-fun bs!1321313 () Bool)

(assert (= bs!1321313 (and d!1790340 d!1790304)))

(assert (=> bs!1321313 (= lambda!305228 lambda!305223)))

(assert (=> d!1790340 true))

(assert (=> d!1790340 (= (derivationStepZipper!1742 lt!2268136 (head!12038 (t!376577 s!2326))) (flatMap!1270 lt!2268136 lambda!305228))))

(declare-fun bs!1321314 () Bool)

(assert (= bs!1321314 d!1790340))

(declare-fun m!6632534 () Bool)

(assert (=> bs!1321314 m!6632534))

(assert (=> b!5671148 d!1790340))

(assert (=> b!5671148 d!1790306))

(assert (=> b!5671148 d!1790308))

(declare-fun b!5671369 () Bool)

(declare-fun res!2396549 () Bool)

(declare-fun e!3491235 () Bool)

(assert (=> b!5671369 (=> (not res!2396549) (not e!3491235))))

(declare-fun call!430195 () Bool)

(assert (=> b!5671369 (= res!2396549 (not call!430195))))

(declare-fun b!5671370 () Bool)

(declare-fun e!3491233 () Bool)

(declare-fun e!3491234 () Bool)

(assert (=> b!5671370 (= e!3491233 e!3491234)))

(declare-fun c!997559 () Bool)

(assert (=> b!5671370 (= c!997559 ((_ is EmptyLang!15657) (derivativeStep!4482 lt!2268141 (head!12038 s!2326))))))

(declare-fun b!5671371 () Bool)

(declare-fun e!3491231 () Bool)

(assert (=> b!5671371 (= e!3491231 (matchR!7842 (derivativeStep!4482 (derivativeStep!4482 lt!2268141 (head!12038 s!2326)) (head!12038 (tail!11133 s!2326))) (tail!11133 (tail!11133 s!2326))))))

(declare-fun b!5671372 () Bool)

(assert (=> b!5671372 (= e!3491231 (nullable!5689 (derivativeStep!4482 lt!2268141 (head!12038 s!2326))))))

(declare-fun bm!430190 () Bool)

(assert (=> bm!430190 (= call!430195 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun b!5671373 () Bool)

(declare-fun res!2396550 () Bool)

(assert (=> b!5671373 (=> (not res!2396550) (not e!3491235))))

(assert (=> b!5671373 (= res!2396550 (isEmpty!35001 (tail!11133 (tail!11133 s!2326))))))

(declare-fun b!5671374 () Bool)

(declare-fun e!3491236 () Bool)

(declare-fun e!3491232 () Bool)

(assert (=> b!5671374 (= e!3491236 e!3491232)))

(declare-fun res!2396554 () Bool)

(assert (=> b!5671374 (=> (not res!2396554) (not e!3491232))))

(declare-fun lt!2268329 () Bool)

(assert (=> b!5671374 (= res!2396554 (not lt!2268329))))

(declare-fun b!5671375 () Bool)

(declare-fun e!3491237 () Bool)

(assert (=> b!5671375 (= e!3491232 e!3491237)))

(declare-fun res!2396552 () Bool)

(assert (=> b!5671375 (=> res!2396552 e!3491237)))

(assert (=> b!5671375 (= res!2396552 call!430195)))

(declare-fun d!1790342 () Bool)

(assert (=> d!1790342 e!3491233))

(declare-fun c!997560 () Bool)

(assert (=> d!1790342 (= c!997560 ((_ is EmptyExpr!15657) (derivativeStep!4482 lt!2268141 (head!12038 s!2326))))))

(assert (=> d!1790342 (= lt!2268329 e!3491231)))

(declare-fun c!997561 () Bool)

(assert (=> d!1790342 (= c!997561 (isEmpty!35001 (tail!11133 s!2326)))))

(assert (=> d!1790342 (validRegex!7393 (derivativeStep!4482 lt!2268141 (head!12038 s!2326)))))

(assert (=> d!1790342 (= (matchR!7842 (derivativeStep!4482 lt!2268141 (head!12038 s!2326)) (tail!11133 s!2326)) lt!2268329)))

(declare-fun b!5671376 () Bool)

(assert (=> b!5671376 (= e!3491237 (not (= (head!12038 (tail!11133 s!2326)) (c!997231 (derivativeStep!4482 lt!2268141 (head!12038 s!2326))))))))

(declare-fun b!5671377 () Bool)

(declare-fun res!2396551 () Bool)

(assert (=> b!5671377 (=> res!2396551 e!3491236)))

(assert (=> b!5671377 (= res!2396551 e!3491235)))

(declare-fun res!2396553 () Bool)

(assert (=> b!5671377 (=> (not res!2396553) (not e!3491235))))

(assert (=> b!5671377 (= res!2396553 lt!2268329)))

(declare-fun b!5671378 () Bool)

(assert (=> b!5671378 (= e!3491234 (not lt!2268329))))

(declare-fun b!5671379 () Bool)

(assert (=> b!5671379 (= e!3491233 (= lt!2268329 call!430195))))

(declare-fun b!5671380 () Bool)

(declare-fun res!2396556 () Bool)

(assert (=> b!5671380 (=> res!2396556 e!3491237)))

(assert (=> b!5671380 (= res!2396556 (not (isEmpty!35001 (tail!11133 (tail!11133 s!2326)))))))

(declare-fun b!5671381 () Bool)

(assert (=> b!5671381 (= e!3491235 (= (head!12038 (tail!11133 s!2326)) (c!997231 (derivativeStep!4482 lt!2268141 (head!12038 s!2326)))))))

(declare-fun b!5671382 () Bool)

(declare-fun res!2396555 () Bool)

(assert (=> b!5671382 (=> res!2396555 e!3491236)))

(assert (=> b!5671382 (= res!2396555 (not ((_ is ElementMatch!15657) (derivativeStep!4482 lt!2268141 (head!12038 s!2326)))))))

(assert (=> b!5671382 (= e!3491234 e!3491236)))

(assert (= (and d!1790342 c!997561) b!5671372))

(assert (= (and d!1790342 (not c!997561)) b!5671371))

(assert (= (and d!1790342 c!997560) b!5671379))

(assert (= (and d!1790342 (not c!997560)) b!5671370))

(assert (= (and b!5671370 c!997559) b!5671378))

(assert (= (and b!5671370 (not c!997559)) b!5671382))

(assert (= (and b!5671382 (not res!2396555)) b!5671377))

(assert (= (and b!5671377 res!2396553) b!5671369))

(assert (= (and b!5671369 res!2396549) b!5671373))

(assert (= (and b!5671373 res!2396550) b!5671381))

(assert (= (and b!5671377 (not res!2396551)) b!5671374))

(assert (= (and b!5671374 res!2396554) b!5671375))

(assert (= (and b!5671375 (not res!2396552)) b!5671380))

(assert (= (and b!5671380 (not res!2396556)) b!5671376))

(assert (= (or b!5671379 b!5671369 b!5671375) bm!430190))

(assert (=> b!5671373 m!6631868))

(declare-fun m!6632536 () Bool)

(assert (=> b!5671373 m!6632536))

(assert (=> b!5671373 m!6632536))

(declare-fun m!6632538 () Bool)

(assert (=> b!5671373 m!6632538))

(assert (=> b!5671380 m!6631868))

(assert (=> b!5671380 m!6632536))

(assert (=> b!5671380 m!6632536))

(assert (=> b!5671380 m!6632538))

(assert (=> d!1790342 m!6631868))

(assert (=> d!1790342 m!6631870))

(assert (=> d!1790342 m!6632120))

(declare-fun m!6632540 () Bool)

(assert (=> d!1790342 m!6632540))

(assert (=> b!5671381 m!6631868))

(declare-fun m!6632542 () Bool)

(assert (=> b!5671381 m!6632542))

(assert (=> b!5671371 m!6631868))

(assert (=> b!5671371 m!6632542))

(assert (=> b!5671371 m!6632120))

(assert (=> b!5671371 m!6632542))

(declare-fun m!6632544 () Bool)

(assert (=> b!5671371 m!6632544))

(assert (=> b!5671371 m!6631868))

(assert (=> b!5671371 m!6632536))

(assert (=> b!5671371 m!6632544))

(assert (=> b!5671371 m!6632536))

(declare-fun m!6632546 () Bool)

(assert (=> b!5671371 m!6632546))

(assert (=> b!5671372 m!6632120))

(declare-fun m!6632548 () Bool)

(assert (=> b!5671372 m!6632548))

(assert (=> b!5671376 m!6631868))

(assert (=> b!5671376 m!6632542))

(assert (=> bm!430190 m!6631868))

(assert (=> bm!430190 m!6631870))

(assert (=> b!5670805 d!1790342))

(declare-fun call!430206 () Regex!15657)

(declare-fun c!997572 () Bool)

(declare-fun bm!430199 () Bool)

(declare-fun c!997576 () Bool)

(declare-fun c!997573 () Bool)

(assert (=> bm!430199 (= call!430206 (derivativeStep!4482 (ite c!997573 (regTwo!31827 lt!2268141) (ite c!997572 (reg!15986 lt!2268141) (ite c!997576 (regTwo!31826 lt!2268141) (regOne!31826 lt!2268141)))) (head!12038 s!2326)))))

(declare-fun b!5671403 () Bool)

(assert (=> b!5671403 (= c!997573 ((_ is Union!15657) lt!2268141))))

(declare-fun e!3491251 () Regex!15657)

(declare-fun e!3491249 () Regex!15657)

(assert (=> b!5671403 (= e!3491251 e!3491249)))

(declare-fun b!5671404 () Bool)

(declare-fun e!3491252 () Regex!15657)

(declare-fun call!430204 () Regex!15657)

(assert (=> b!5671404 (= e!3491252 (Concat!24502 call!430204 lt!2268141))))

(declare-fun b!5671405 () Bool)

(assert (=> b!5671405 (= e!3491249 e!3491252)))

(assert (=> b!5671405 (= c!997572 ((_ is Star!15657) lt!2268141))))

(declare-fun b!5671406 () Bool)

(declare-fun e!3491250 () Regex!15657)

(declare-fun call!430207 () Regex!15657)

(assert (=> b!5671406 (= e!3491250 (Union!15657 (Concat!24502 call!430207 (regTwo!31826 lt!2268141)) EmptyLang!15657))))

(declare-fun b!5671407 () Bool)

(assert (=> b!5671407 (= e!3491251 (ite (= (head!12038 s!2326) (c!997231 lt!2268141)) EmptyExpr!15657 EmptyLang!15657))))

(declare-fun bm!430200 () Bool)

(declare-fun call!430205 () Regex!15657)

(assert (=> bm!430200 (= call!430205 (derivativeStep!4482 (ite c!997573 (regOne!31827 lt!2268141) (regOne!31826 lt!2268141)) (head!12038 s!2326)))))

(declare-fun b!5671408 () Bool)

(declare-fun e!3491248 () Regex!15657)

(assert (=> b!5671408 (= e!3491248 e!3491251)))

(declare-fun c!997574 () Bool)

(assert (=> b!5671408 (= c!997574 ((_ is ElementMatch!15657) lt!2268141))))

(declare-fun d!1790344 () Bool)

(declare-fun lt!2268332 () Regex!15657)

(assert (=> d!1790344 (validRegex!7393 lt!2268332)))

(assert (=> d!1790344 (= lt!2268332 e!3491248)))

(declare-fun c!997575 () Bool)

(assert (=> d!1790344 (= c!997575 (or ((_ is EmptyExpr!15657) lt!2268141) ((_ is EmptyLang!15657) lt!2268141)))))

(assert (=> d!1790344 (validRegex!7393 lt!2268141)))

(assert (=> d!1790344 (= (derivativeStep!4482 lt!2268141 (head!12038 s!2326)) lt!2268332)))

(declare-fun b!5671409 () Bool)

(assert (=> b!5671409 (= c!997576 (nullable!5689 (regOne!31826 lt!2268141)))))

(assert (=> b!5671409 (= e!3491252 e!3491250)))

(declare-fun bm!430201 () Bool)

(assert (=> bm!430201 (= call!430207 call!430204)))

(declare-fun b!5671410 () Bool)

(assert (=> b!5671410 (= e!3491248 EmptyLang!15657)))

(declare-fun b!5671411 () Bool)

(assert (=> b!5671411 (= e!3491250 (Union!15657 (Concat!24502 call!430205 (regTwo!31826 lt!2268141)) call!430207))))

(declare-fun bm!430202 () Bool)

(assert (=> bm!430202 (= call!430204 call!430206)))

(declare-fun b!5671412 () Bool)

(assert (=> b!5671412 (= e!3491249 (Union!15657 call!430205 call!430206))))

(assert (= (and d!1790344 c!997575) b!5671410))

(assert (= (and d!1790344 (not c!997575)) b!5671408))

(assert (= (and b!5671408 c!997574) b!5671407))

(assert (= (and b!5671408 (not c!997574)) b!5671403))

(assert (= (and b!5671403 c!997573) b!5671412))

(assert (= (and b!5671403 (not c!997573)) b!5671405))

(assert (= (and b!5671405 c!997572) b!5671404))

(assert (= (and b!5671405 (not c!997572)) b!5671409))

(assert (= (and b!5671409 c!997576) b!5671411))

(assert (= (and b!5671409 (not c!997576)) b!5671406))

(assert (= (or b!5671411 b!5671406) bm!430201))

(assert (= (or b!5671404 bm!430201) bm!430202))

(assert (= (or b!5671412 bm!430202) bm!430199))

(assert (= (or b!5671412 b!5671411) bm!430200))

(assert (=> bm!430199 m!6631876))

(declare-fun m!6632550 () Bool)

(assert (=> bm!430199 m!6632550))

(assert (=> bm!430200 m!6631876))

(declare-fun m!6632552 () Bool)

(assert (=> bm!430200 m!6632552))

(declare-fun m!6632554 () Bool)

(assert (=> d!1790344 m!6632554))

(assert (=> d!1790344 m!6631822))

(declare-fun m!6632556 () Bool)

(assert (=> b!5671409 m!6632556))

(assert (=> b!5670805 d!1790344))

(declare-fun d!1790346 () Bool)

(assert (=> d!1790346 (= (head!12038 s!2326) (h!69595 s!2326))))

(assert (=> b!5670805 d!1790346))

(assert (=> b!5670805 d!1790278))

(assert (=> d!1790242 d!1790336))

(declare-fun b!5671413 () Bool)

(declare-fun e!3491259 () Bool)

(declare-fun e!3491256 () Bool)

(assert (=> b!5671413 (= e!3491259 e!3491256)))

(declare-fun res!2396557 () Bool)

(assert (=> b!5671413 (= res!2396557 (not (nullable!5689 (reg!15986 lt!2268326))))))

(assert (=> b!5671413 (=> (not res!2396557) (not e!3491256))))

(declare-fun b!5671414 () Bool)

(declare-fun e!3491255 () Bool)

(declare-fun call!430208 () Bool)

(assert (=> b!5671414 (= e!3491255 call!430208)))

(declare-fun bm!430203 () Bool)

(declare-fun c!997578 () Bool)

(assert (=> bm!430203 (= call!430208 (validRegex!7393 (ite c!997578 (regTwo!31827 lt!2268326) (regTwo!31826 lt!2268326))))))

(declare-fun bm!430204 () Bool)

(declare-fun call!430210 () Bool)

(declare-fun call!430209 () Bool)

(assert (=> bm!430204 (= call!430210 call!430209)))

(declare-fun d!1790348 () Bool)

(declare-fun res!2396561 () Bool)

(declare-fun e!3491258 () Bool)

(assert (=> d!1790348 (=> res!2396561 e!3491258)))

(assert (=> d!1790348 (= res!2396561 ((_ is ElementMatch!15657) lt!2268326))))

(assert (=> d!1790348 (= (validRegex!7393 lt!2268326) e!3491258)))

(declare-fun b!5671415 () Bool)

(declare-fun res!2396558 () Bool)

(declare-fun e!3491257 () Bool)

(assert (=> b!5671415 (=> (not res!2396558) (not e!3491257))))

(assert (=> b!5671415 (= res!2396558 call!430210)))

(declare-fun e!3491253 () Bool)

(assert (=> b!5671415 (= e!3491253 e!3491257)))

(declare-fun b!5671416 () Bool)

(declare-fun res!2396560 () Bool)

(declare-fun e!3491254 () Bool)

(assert (=> b!5671416 (=> res!2396560 e!3491254)))

(assert (=> b!5671416 (= res!2396560 (not ((_ is Concat!24502) lt!2268326)))))

(assert (=> b!5671416 (= e!3491253 e!3491254)))

(declare-fun b!5671417 () Bool)

(assert (=> b!5671417 (= e!3491259 e!3491253)))

(assert (=> b!5671417 (= c!997578 ((_ is Union!15657) lt!2268326))))

(declare-fun b!5671418 () Bool)

(assert (=> b!5671418 (= e!3491256 call!430209)))

(declare-fun b!5671419 () Bool)

(assert (=> b!5671419 (= e!3491258 e!3491259)))

(declare-fun c!997577 () Bool)

(assert (=> b!5671419 (= c!997577 ((_ is Star!15657) lt!2268326))))

(declare-fun b!5671420 () Bool)

(assert (=> b!5671420 (= e!3491254 e!3491255)))

(declare-fun res!2396559 () Bool)

(assert (=> b!5671420 (=> (not res!2396559) (not e!3491255))))

(assert (=> b!5671420 (= res!2396559 call!430210)))

(declare-fun b!5671421 () Bool)

(assert (=> b!5671421 (= e!3491257 call!430208)))

(declare-fun bm!430205 () Bool)

(assert (=> bm!430205 (= call!430209 (validRegex!7393 (ite c!997577 (reg!15986 lt!2268326) (ite c!997578 (regOne!31827 lt!2268326) (regOne!31826 lt!2268326)))))))

(assert (= (and d!1790348 (not res!2396561)) b!5671419))

(assert (= (and b!5671419 c!997577) b!5671413))

(assert (= (and b!5671419 (not c!997577)) b!5671417))

(assert (= (and b!5671413 res!2396557) b!5671418))

(assert (= (and b!5671417 c!997578) b!5671415))

(assert (= (and b!5671417 (not c!997578)) b!5671416))

(assert (= (and b!5671415 res!2396558) b!5671421))

(assert (= (and b!5671416 (not res!2396560)) b!5671420))

(assert (= (and b!5671420 res!2396559) b!5671414))

(assert (= (or b!5671421 b!5671414) bm!430203))

(assert (= (or b!5671415 b!5671420) bm!430204))

(assert (= (or b!5671418 bm!430204) bm!430205))

(declare-fun m!6632558 () Bool)

(assert (=> b!5671413 m!6632558))

(declare-fun m!6632560 () Bool)

(assert (=> bm!430203 m!6632560))

(declare-fun m!6632562 () Bool)

(assert (=> bm!430205 m!6632562))

(assert (=> d!1790262 d!1790348))

(assert (=> d!1790262 d!1790258))

(assert (=> d!1790262 d!1790260))

(declare-fun d!1790350 () Bool)

(declare-fun res!2396562 () Bool)

(declare-fun e!3491260 () Bool)

(assert (=> d!1790350 (=> res!2396562 e!3491260)))

(assert (=> d!1790350 (= res!2396562 ((_ is Nil!63148) (t!376578 lt!2268150)))))

(assert (=> d!1790350 (= (forall!14809 (t!376578 lt!2268150) lambda!305109) e!3491260)))

(declare-fun b!5671422 () Bool)

(declare-fun e!3491261 () Bool)

(assert (=> b!5671422 (= e!3491260 e!3491261)))

(declare-fun res!2396563 () Bool)

(assert (=> b!5671422 (=> (not res!2396563) (not e!3491261))))

(assert (=> b!5671422 (= res!2396563 (dynLambda!24713 lambda!305109 (h!69596 (t!376578 lt!2268150))))))

(declare-fun b!5671423 () Bool)

(assert (=> b!5671423 (= e!3491261 (forall!14809 (t!376578 (t!376578 lt!2268150)) lambda!305109))))

(assert (= (and d!1790350 (not res!2396562)) b!5671422))

(assert (= (and b!5671422 res!2396563) b!5671423))

(declare-fun b_lambda!214513 () Bool)

(assert (=> (not b_lambda!214513) (not b!5671422)))

(declare-fun m!6632564 () Bool)

(assert (=> b!5671422 m!6632564))

(declare-fun m!6632566 () Bool)

(assert (=> b!5671423 m!6632566))

(assert (=> b!5670284 d!1790350))

(declare-fun d!1790352 () Bool)

(assert (=> d!1790352 (= (maxBigInt!0 (contextDepth!124 (h!69596 lt!2268150)) (zipperDepth!220 (t!376578 lt!2268150))) (ite (>= (contextDepth!124 (h!69596 lt!2268150)) (zipperDepth!220 (t!376578 lt!2268150))) (contextDepth!124 (h!69596 lt!2268150)) (zipperDepth!220 (t!376578 lt!2268150))))))

(assert (=> b!5670284 d!1790352))

(declare-fun bs!1321315 () Bool)

(declare-fun b!5671425 () Bool)

(assert (= bs!1321315 (and b!5671425 b!5670284)))

(declare-fun lambda!305229 () Int)

(assert (=> bs!1321315 (= lambda!305229 lambda!305108)))

(declare-fun bs!1321316 () Bool)

(assert (= bs!1321316 (and b!5671425 b!5670289)))

(assert (=> bs!1321316 (= lambda!305229 lambda!305111)))

(declare-fun lambda!305230 () Int)

(declare-fun lt!2268334 () Int)

(assert (=> bs!1321315 (= (= lt!2268334 lt!2268162) (= lambda!305230 lambda!305109))))

(declare-fun bs!1321317 () Bool)

(assert (= bs!1321317 (and b!5671425 d!1790330)))

(assert (=> bs!1321317 (not (= lambda!305230 lambda!305227))))

(declare-fun bs!1321318 () Bool)

(assert (= bs!1321318 (and b!5671425 d!1790286)))

(assert (=> bs!1321318 (not (= lambda!305230 lambda!305216))))

(declare-fun bs!1321319 () Bool)

(assert (= bs!1321319 (and b!5671425 b!5670286)))

(assert (=> bs!1321319 (= (= lt!2268334 lt!2268161) (= lambda!305230 lambda!305110))))

(declare-fun bs!1321320 () Bool)

(assert (= bs!1321320 (and b!5671425 b!5670291)))

(assert (=> bs!1321320 (= (= lt!2268334 lt!2268165) (= lambda!305230 lambda!305113))))

(assert (=> bs!1321316 (= (= lt!2268334 lt!2268166) (= lambda!305230 lambda!305112))))

(assert (=> b!5671425 true))

(declare-fun bs!1321321 () Bool)

(declare-fun b!5671427 () Bool)

(assert (= bs!1321321 (and b!5671427 b!5670284)))

(declare-fun lt!2268333 () Int)

(declare-fun lambda!305231 () Int)

(assert (=> bs!1321321 (= (= lt!2268333 lt!2268162) (= lambda!305231 lambda!305109))))

(declare-fun bs!1321322 () Bool)

(assert (= bs!1321322 (and b!5671427 d!1790330)))

(assert (=> bs!1321322 (not (= lambda!305231 lambda!305227))))

(declare-fun bs!1321323 () Bool)

(assert (= bs!1321323 (and b!5671427 b!5671425)))

(assert (=> bs!1321323 (= (= lt!2268333 lt!2268334) (= lambda!305231 lambda!305230))))

(declare-fun bs!1321324 () Bool)

(assert (= bs!1321324 (and b!5671427 d!1790286)))

(assert (=> bs!1321324 (not (= lambda!305231 lambda!305216))))

(declare-fun bs!1321325 () Bool)

(assert (= bs!1321325 (and b!5671427 b!5670286)))

(assert (=> bs!1321325 (= (= lt!2268333 lt!2268161) (= lambda!305231 lambda!305110))))

(declare-fun bs!1321326 () Bool)

(assert (= bs!1321326 (and b!5671427 b!5670291)))

(assert (=> bs!1321326 (= (= lt!2268333 lt!2268165) (= lambda!305231 lambda!305113))))

(declare-fun bs!1321327 () Bool)

(assert (= bs!1321327 (and b!5671427 b!5670289)))

(assert (=> bs!1321327 (= (= lt!2268333 lt!2268166) (= lambda!305231 lambda!305112))))

(assert (=> b!5671427 true))

(declare-fun d!1790354 () Bool)

(declare-fun e!3491262 () Bool)

(assert (=> d!1790354 e!3491262))

(declare-fun res!2396564 () Bool)

(assert (=> d!1790354 (=> (not res!2396564) (not e!3491262))))

(assert (=> d!1790354 (= res!2396564 (>= lt!2268333 0))))

(declare-fun e!3491263 () Int)

(assert (=> d!1790354 (= lt!2268333 e!3491263)))

(declare-fun c!997579 () Bool)

(assert (=> d!1790354 (= c!997579 ((_ is Cons!63148) (t!376578 lt!2268150)))))

(assert (=> d!1790354 (= (zipperDepth!220 (t!376578 lt!2268150)) lt!2268333)))

(assert (=> b!5671425 (= e!3491263 lt!2268334)))

(assert (=> b!5671425 (= lt!2268334 (maxBigInt!0 (contextDepth!124 (h!69596 (t!376578 lt!2268150))) (zipperDepth!220 (t!376578 (t!376578 lt!2268150)))))))

(declare-fun lt!2268335 () Unit!156160)

(assert (=> b!5671425 (= lt!2268335 (lemmaForallContextDepthBiggerThanTransitive!114 (t!376578 (t!376578 lt!2268150)) lt!2268334 (zipperDepth!220 (t!376578 (t!376578 lt!2268150))) lambda!305229))))

(assert (=> b!5671425 (forall!14809 (t!376578 (t!376578 lt!2268150)) lambda!305230)))

(declare-fun lt!2268336 () Unit!156160)

(assert (=> b!5671425 (= lt!2268336 lt!2268335)))

(declare-fun b!5671426 () Bool)

(assert (=> b!5671426 (= e!3491263 0)))

(assert (=> b!5671427 (= e!3491262 (forall!14809 (t!376578 lt!2268150) lambda!305231))))

(assert (= (and d!1790354 c!997579) b!5671425))

(assert (= (and d!1790354 (not c!997579)) b!5671426))

(assert (= (and d!1790354 res!2396564) b!5671427))

(declare-fun m!6632568 () Bool)

(assert (=> b!5671425 m!6632568))

(declare-fun m!6632570 () Bool)

(assert (=> b!5671425 m!6632570))

(assert (=> b!5671425 m!6632568))

(assert (=> b!5671425 m!6632570))

(declare-fun m!6632572 () Bool)

(assert (=> b!5671425 m!6632572))

(declare-fun m!6632574 () Bool)

(assert (=> b!5671425 m!6632574))

(assert (=> b!5671425 m!6632570))

(declare-fun m!6632576 () Bool)

(assert (=> b!5671425 m!6632576))

(declare-fun m!6632578 () Bool)

(assert (=> b!5671427 m!6632578))

(assert (=> b!5670284 d!1790354))

(declare-fun bs!1321328 () Bool)

(declare-fun d!1790356 () Bool)

(assert (= bs!1321328 (and d!1790356 d!1790330)))

(declare-fun lambda!305234 () Int)

(assert (=> bs!1321328 (not (= lambda!305234 lambda!305227))))

(declare-fun bs!1321329 () Bool)

(assert (= bs!1321329 (and d!1790356 b!5671425)))

(assert (=> bs!1321329 (not (= lambda!305234 lambda!305230))))

(declare-fun bs!1321330 () Bool)

(assert (= bs!1321330 (and d!1790356 d!1790286)))

(assert (=> bs!1321330 (not (= lambda!305234 lambda!305216))))

(declare-fun bs!1321331 () Bool)

(assert (= bs!1321331 (and d!1790356 b!5670286)))

(assert (=> bs!1321331 (not (= lambda!305234 lambda!305110))))

(declare-fun bs!1321332 () Bool)

(assert (= bs!1321332 (and d!1790356 b!5670291)))

(assert (=> bs!1321332 (not (= lambda!305234 lambda!305113))))

(declare-fun bs!1321333 () Bool)

(assert (= bs!1321333 (and d!1790356 b!5670289)))

(assert (=> bs!1321333 (not (= lambda!305234 lambda!305112))))

(declare-fun bs!1321334 () Bool)

(assert (= bs!1321334 (and d!1790356 b!5670284)))

(assert (=> bs!1321334 (not (= lambda!305234 lambda!305109))))

(declare-fun bs!1321335 () Bool)

(assert (= bs!1321335 (and d!1790356 b!5671427)))

(assert (=> bs!1321335 (not (= lambda!305234 lambda!305231))))

(assert (=> d!1790356 true))

(assert (=> d!1790356 true))

(declare-fun order!27177 () Int)

(declare-fun order!27179 () Int)

(declare-fun dynLambda!24714 (Int Int) Int)

(declare-fun dynLambda!24715 (Int Int) Int)

(assert (=> d!1790356 (< (dynLambda!24714 order!27177 lambda!305108) (dynLambda!24715 order!27179 lambda!305234))))

(assert (=> d!1790356 (forall!14809 (t!376578 lt!2268150) lambda!305234)))

(declare-fun lt!2268339 () Unit!156160)

(declare-fun choose!42909 (List!63272 Int Int Int) Unit!156160)

(assert (=> d!1790356 (= lt!2268339 (choose!42909 (t!376578 lt!2268150) lt!2268162 (zipperDepth!220 (t!376578 lt!2268150)) lambda!305108))))

(assert (=> d!1790356 (>= lt!2268162 (zipperDepth!220 (t!376578 lt!2268150)))))

(assert (=> d!1790356 (= (lemmaForallContextDepthBiggerThanTransitive!114 (t!376578 lt!2268150) lt!2268162 (zipperDepth!220 (t!376578 lt!2268150)) lambda!305108) lt!2268339)))

(declare-fun bs!1321336 () Bool)

(assert (= bs!1321336 d!1790356))

(declare-fun m!6632580 () Bool)

(assert (=> bs!1321336 m!6632580))

(assert (=> bs!1321336 m!6631572))

(declare-fun m!6632582 () Bool)

(assert (=> bs!1321336 m!6632582))

(assert (=> b!5670284 d!1790356))

(declare-fun bs!1321337 () Bool)

(declare-fun b!5671437 () Bool)

(assert (= bs!1321337 (and b!5671437 d!1790156)))

(declare-fun lambda!305239 () Int)

(assert (=> bs!1321337 (not (= lambda!305239 lambda!305181))))

(declare-fun bs!1321338 () Bool)

(assert (= bs!1321338 (and b!5671437 d!1790174)))

(assert (=> bs!1321338 (not (= lambda!305239 lambda!305184))))

(declare-fun bs!1321339 () Bool)

(assert (= bs!1321339 (and b!5671437 d!1790258)))

(assert (=> bs!1321339 (not (= lambda!305239 lambda!305210))))

(declare-fun bs!1321340 () Bool)

(assert (= bs!1321340 (and b!5671437 d!1790140)))

(assert (=> bs!1321340 (not (= lambda!305239 lambda!305180))))

(declare-fun bs!1321341 () Bool)

(assert (= bs!1321341 (and b!5671437 d!1790228)))

(assert (=> bs!1321341 (not (= lambda!305239 lambda!305203))))

(declare-fun bs!1321342 () Bool)

(assert (= bs!1321342 (and b!5671437 d!1790260)))

(assert (=> bs!1321342 (not (= lambda!305239 lambda!305213))))

(declare-fun bs!1321343 () Bool)

(assert (= bs!1321343 (and b!5671437 d!1790180)))

(assert (=> bs!1321343 (not (= lambda!305239 lambda!305185))))

(declare-fun bs!1321344 () Bool)

(assert (= bs!1321344 (and b!5671437 d!1790238)))

(assert (=> bs!1321344 (not (= lambda!305239 lambda!305204))))

(assert (=> b!5671437 true))

(declare-fun bs!1321345 () Bool)

(declare-fun b!5671439 () Bool)

(assert (= bs!1321345 (and b!5671439 d!1790156)))

(declare-fun lambda!305240 () Int)

(assert (=> bs!1321345 (not (= lambda!305240 lambda!305181))))

(declare-fun bs!1321346 () Bool)

(assert (= bs!1321346 (and b!5671439 d!1790174)))

(assert (=> bs!1321346 (not (= lambda!305240 lambda!305184))))

(declare-fun bs!1321347 () Bool)

(assert (= bs!1321347 (and b!5671439 d!1790258)))

(assert (=> bs!1321347 (not (= lambda!305240 lambda!305210))))

(declare-fun bs!1321348 () Bool)

(assert (= bs!1321348 (and b!5671439 d!1790140)))

(assert (=> bs!1321348 (not (= lambda!305240 lambda!305180))))

(declare-fun bs!1321349 () Bool)

(assert (= bs!1321349 (and b!5671439 d!1790228)))

(assert (=> bs!1321349 (not (= lambda!305240 lambda!305203))))

(declare-fun bs!1321350 () Bool)

(assert (= bs!1321350 (and b!5671439 d!1790260)))

(assert (=> bs!1321350 (not (= lambda!305240 lambda!305213))))

(declare-fun bs!1321351 () Bool)

(assert (= bs!1321351 (and b!5671439 d!1790180)))

(assert (=> bs!1321351 (not (= lambda!305240 lambda!305185))))

(declare-fun bs!1321352 () Bool)

(assert (= bs!1321352 (and b!5671439 b!5671437)))

(declare-fun lt!2268351 () Int)

(declare-fun lt!2268348 () Int)

(assert (=> bs!1321352 (= (= lt!2268348 lt!2268351) (= lambda!305240 lambda!305239))))

(declare-fun bs!1321353 () Bool)

(assert (= bs!1321353 (and b!5671439 d!1790238)))

(assert (=> bs!1321353 (not (= lambda!305240 lambda!305204))))

(assert (=> b!5671439 true))

(declare-fun d!1790358 () Bool)

(declare-fun e!3491269 () Bool)

(assert (=> d!1790358 e!3491269))

(declare-fun res!2396567 () Bool)

(assert (=> d!1790358 (=> (not res!2396567) (not e!3491269))))

(assert (=> d!1790358 (= res!2396567 (>= lt!2268348 0))))

(declare-fun e!3491268 () Int)

(assert (=> d!1790358 (= lt!2268348 e!3491268)))

(declare-fun c!997585 () Bool)

(assert (=> d!1790358 (= c!997585 ((_ is Cons!63146) (exprs!5541 (h!69596 lt!2268150))))))

(assert (=> d!1790358 (= (contextDepth!124 (h!69596 lt!2268150)) lt!2268348)))

(assert (=> b!5671437 (= e!3491268 lt!2268351)))

(declare-fun regexDepth!226 (Regex!15657) Int)

(assert (=> b!5671437 (= lt!2268351 (maxBigInt!0 (regexDepth!226 (h!69594 (exprs!5541 (h!69596 lt!2268150)))) (contextDepth!124 (Context!10083 (t!376576 (exprs!5541 (h!69596 lt!2268150)))))))))

(declare-fun lt!2268349 () Unit!156160)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!29 (List!63270 Int Int) Unit!156160)

(assert (=> b!5671437 (= lt!2268349 (lemmaForallRegexDepthBiggerThanTransitive!29 (t!376576 (exprs!5541 (h!69596 lt!2268150))) lt!2268351 (contextDepth!124 (Context!10083 (t!376576 (exprs!5541 (h!69596 lt!2268150)))))))))

(assert (=> b!5671437 (forall!14810 (t!376576 (exprs!5541 (h!69596 lt!2268150))) lambda!305239)))

(declare-fun lt!2268350 () Unit!156160)

(assert (=> b!5671437 (= lt!2268350 lt!2268349)))

(declare-fun b!5671438 () Bool)

(assert (=> b!5671438 (= e!3491268 0)))

(assert (=> b!5671439 (= e!3491269 (forall!14810 (exprs!5541 (h!69596 lt!2268150)) lambda!305240))))

(assert (= (and d!1790358 c!997585) b!5671437))

(assert (= (and d!1790358 (not c!997585)) b!5671438))

(assert (= (and d!1790358 res!2396567) b!5671439))

(declare-fun m!6632584 () Bool)

(assert (=> b!5671437 m!6632584))

(declare-fun m!6632586 () Bool)

(assert (=> b!5671437 m!6632586))

(declare-fun m!6632588 () Bool)

(assert (=> b!5671437 m!6632588))

(declare-fun m!6632590 () Bool)

(assert (=> b!5671437 m!6632590))

(assert (=> b!5671437 m!6632584))

(declare-fun m!6632592 () Bool)

(assert (=> b!5671437 m!6632592))

(assert (=> b!5671437 m!6632590))

(assert (=> b!5671437 m!6632584))

(declare-fun m!6632594 () Bool)

(assert (=> b!5671439 m!6632594))

(assert (=> b!5670284 d!1790358))

(declare-fun b!5671442 () Bool)

(declare-fun e!3491276 () Bool)

(declare-fun e!3491273 () Bool)

(assert (=> b!5671442 (= e!3491276 e!3491273)))

(declare-fun res!2396568 () Bool)

(assert (=> b!5671442 (= res!2396568 (not (nullable!5689 (reg!15986 lt!2268277))))))

(assert (=> b!5671442 (=> (not res!2396568) (not e!3491273))))

(declare-fun b!5671443 () Bool)

(declare-fun e!3491272 () Bool)

(declare-fun call!430211 () Bool)

(assert (=> b!5671443 (= e!3491272 call!430211)))

(declare-fun bm!430206 () Bool)

(declare-fun c!997587 () Bool)

(assert (=> bm!430206 (= call!430211 (validRegex!7393 (ite c!997587 (regTwo!31827 lt!2268277) (regTwo!31826 lt!2268277))))))

(declare-fun bm!430207 () Bool)

(declare-fun call!430213 () Bool)

(declare-fun call!430212 () Bool)

(assert (=> bm!430207 (= call!430213 call!430212)))

(declare-fun d!1790360 () Bool)

(declare-fun res!2396572 () Bool)

(declare-fun e!3491275 () Bool)

(assert (=> d!1790360 (=> res!2396572 e!3491275)))

(assert (=> d!1790360 (= res!2396572 ((_ is ElementMatch!15657) lt!2268277))))

(assert (=> d!1790360 (= (validRegex!7393 lt!2268277) e!3491275)))

(declare-fun b!5671444 () Bool)

(declare-fun res!2396569 () Bool)

(declare-fun e!3491274 () Bool)

(assert (=> b!5671444 (=> (not res!2396569) (not e!3491274))))

(assert (=> b!5671444 (= res!2396569 call!430213)))

(declare-fun e!3491270 () Bool)

(assert (=> b!5671444 (= e!3491270 e!3491274)))

(declare-fun b!5671445 () Bool)

(declare-fun res!2396571 () Bool)

(declare-fun e!3491271 () Bool)

(assert (=> b!5671445 (=> res!2396571 e!3491271)))

(assert (=> b!5671445 (= res!2396571 (not ((_ is Concat!24502) lt!2268277)))))

(assert (=> b!5671445 (= e!3491270 e!3491271)))

(declare-fun b!5671446 () Bool)

(assert (=> b!5671446 (= e!3491276 e!3491270)))

(assert (=> b!5671446 (= c!997587 ((_ is Union!15657) lt!2268277))))

(declare-fun b!5671447 () Bool)

(assert (=> b!5671447 (= e!3491273 call!430212)))

(declare-fun b!5671448 () Bool)

(assert (=> b!5671448 (= e!3491275 e!3491276)))

(declare-fun c!997586 () Bool)

(assert (=> b!5671448 (= c!997586 ((_ is Star!15657) lt!2268277))))

(declare-fun b!5671449 () Bool)

(assert (=> b!5671449 (= e!3491271 e!3491272)))

(declare-fun res!2396570 () Bool)

(assert (=> b!5671449 (=> (not res!2396570) (not e!3491272))))

(assert (=> b!5671449 (= res!2396570 call!430213)))

(declare-fun b!5671450 () Bool)

(assert (=> b!5671450 (= e!3491274 call!430211)))

(declare-fun bm!430208 () Bool)

(assert (=> bm!430208 (= call!430212 (validRegex!7393 (ite c!997586 (reg!15986 lt!2268277) (ite c!997587 (regOne!31827 lt!2268277) (regOne!31826 lt!2268277)))))))

(assert (= (and d!1790360 (not res!2396572)) b!5671448))

(assert (= (and b!5671448 c!997586) b!5671442))

(assert (= (and b!5671448 (not c!997586)) b!5671446))

(assert (= (and b!5671442 res!2396568) b!5671447))

(assert (= (and b!5671446 c!997587) b!5671444))

(assert (= (and b!5671446 (not c!997587)) b!5671445))

(assert (= (and b!5671444 res!2396569) b!5671450))

(assert (= (and b!5671445 (not res!2396571)) b!5671449))

(assert (= (and b!5671449 res!2396570) b!5671443))

(assert (= (or b!5671450 b!5671443) bm!430206))

(assert (= (or b!5671444 b!5671449) bm!430207))

(assert (= (or b!5671447 bm!430207) bm!430208))

(declare-fun m!6632596 () Bool)

(assert (=> b!5671442 m!6632596))

(declare-fun m!6632598 () Bool)

(assert (=> bm!430206 m!6632598))

(declare-fun m!6632600 () Bool)

(assert (=> bm!430208 m!6632600))

(assert (=> d!1790140 d!1790360))

(declare-fun d!1790362 () Bool)

(declare-fun res!2396577 () Bool)

(declare-fun e!3491281 () Bool)

(assert (=> d!1790362 (=> res!2396577 e!3491281)))

(assert (=> d!1790362 (= res!2396577 ((_ is Nil!63146) lt!2268152))))

(assert (=> d!1790362 (= (forall!14810 lt!2268152 lambda!305180) e!3491281)))

(declare-fun b!5671455 () Bool)

(declare-fun e!3491282 () Bool)

(assert (=> b!5671455 (= e!3491281 e!3491282)))

(declare-fun res!2396578 () Bool)

(assert (=> b!5671455 (=> (not res!2396578) (not e!3491282))))

(declare-fun dynLambda!24716 (Int Regex!15657) Bool)

(assert (=> b!5671455 (= res!2396578 (dynLambda!24716 lambda!305180 (h!69594 lt!2268152)))))

(declare-fun b!5671456 () Bool)

(assert (=> b!5671456 (= e!3491282 (forall!14810 (t!376576 lt!2268152) lambda!305180))))

(assert (= (and d!1790362 (not res!2396577)) b!5671455))

(assert (= (and b!5671455 res!2396578) b!5671456))

(declare-fun b_lambda!214515 () Bool)

(assert (=> (not b_lambda!214515) (not b!5671455)))

(declare-fun m!6632602 () Bool)

(assert (=> b!5671455 m!6632602))

(declare-fun m!6632604 () Bool)

(assert (=> b!5671456 m!6632604))

(assert (=> d!1790140 d!1790362))

(declare-fun d!1790364 () Bool)

(declare-fun c!997589 () Bool)

(declare-fun e!3491285 () Bool)

(assert (=> d!1790364 (= c!997589 e!3491285)))

(declare-fun res!2396579 () Bool)

(assert (=> d!1790364 (=> (not res!2396579) (not e!3491285))))

(assert (=> d!1790364 (= res!2396579 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))))))

(declare-fun e!3491284 () (InoxSet Context!10082))

(assert (=> d!1790364 (= (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (h!69595 s!2326)) e!3491284)))

(declare-fun b!5671457 () Bool)

(declare-fun e!3491283 () (InoxSet Context!10082))

(assert (=> b!5671457 (= e!3491284 e!3491283)))

(declare-fun c!997588 () Bool)

(assert (=> b!5671457 (= c!997588 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))))))

(declare-fun b!5671458 () Bool)

(assert (=> b!5671458 (= e!3491283 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430209 () Bool)

(declare-fun call!430214 () (InoxSet Context!10082))

(assert (=> bm!430209 (= call!430214 (derivationStepZipperDown!999 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))) (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))))) (h!69595 s!2326)))))

(declare-fun b!5671459 () Bool)

(assert (=> b!5671459 (= e!3491285 (nullable!5689 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))))))))

(declare-fun b!5671460 () Bool)

(assert (=> b!5671460 (= e!3491284 ((_ map or) call!430214 (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))))) (h!69595 s!2326))))))

(declare-fun b!5671461 () Bool)

(assert (=> b!5671461 (= e!3491283 call!430214)))

(assert (= (and d!1790364 res!2396579) b!5671459))

(assert (= (and d!1790364 c!997589) b!5671460))

(assert (= (and d!1790364 (not c!997589)) b!5671457))

(assert (= (and b!5671457 c!997588) b!5671461))

(assert (= (and b!5671457 (not c!997588)) b!5671458))

(assert (= (or b!5671460 b!5671461) bm!430209))

(declare-fun m!6632606 () Bool)

(assert (=> bm!430209 m!6632606))

(declare-fun m!6632608 () Bool)

(assert (=> b!5671459 m!6632608))

(declare-fun m!6632610 () Bool)

(assert (=> b!5671460 m!6632610))

(assert (=> b!5670935 d!1790364))

(assert (=> d!1790166 d!1790160))

(assert (=> d!1790166 d!1790092))

(declare-fun d!1790366 () Bool)

(assert (=> d!1790366 (= (matchR!7842 lt!2268141 s!2326) (matchZipper!1795 lt!2268137 s!2326))))

(assert (=> d!1790366 true))

(declare-fun _$44!1433 () Unit!156160)

(assert (=> d!1790366 (= (choose!42901 lt!2268137 lt!2268150 lt!2268141 s!2326) _$44!1433)))

(declare-fun bs!1321354 () Bool)

(assert (= bs!1321354 d!1790366))

(assert (=> bs!1321354 m!6631520))

(assert (=> bs!1321354 m!6631530))

(assert (=> d!1790166 d!1790366))

(declare-fun b!5671462 () Bool)

(declare-fun e!3491292 () Bool)

(declare-fun e!3491289 () Bool)

(assert (=> b!5671462 (= e!3491292 e!3491289)))

(declare-fun res!2396580 () Bool)

(assert (=> b!5671462 (= res!2396580 (not (nullable!5689 (reg!15986 lt!2268141))))))

(assert (=> b!5671462 (=> (not res!2396580) (not e!3491289))))

(declare-fun b!5671463 () Bool)

(declare-fun e!3491288 () Bool)

(declare-fun call!430215 () Bool)

(assert (=> b!5671463 (= e!3491288 call!430215)))

(declare-fun bm!430210 () Bool)

(declare-fun c!997591 () Bool)

(assert (=> bm!430210 (= call!430215 (validRegex!7393 (ite c!997591 (regTwo!31827 lt!2268141) (regTwo!31826 lt!2268141))))))

(declare-fun bm!430211 () Bool)

(declare-fun call!430217 () Bool)

(declare-fun call!430216 () Bool)

(assert (=> bm!430211 (= call!430217 call!430216)))

(declare-fun d!1790368 () Bool)

(declare-fun res!2396584 () Bool)

(declare-fun e!3491291 () Bool)

(assert (=> d!1790368 (=> res!2396584 e!3491291)))

(assert (=> d!1790368 (= res!2396584 ((_ is ElementMatch!15657) lt!2268141))))

(assert (=> d!1790368 (= (validRegex!7393 lt!2268141) e!3491291)))

(declare-fun b!5671464 () Bool)

(declare-fun res!2396581 () Bool)

(declare-fun e!3491290 () Bool)

(assert (=> b!5671464 (=> (not res!2396581) (not e!3491290))))

(assert (=> b!5671464 (= res!2396581 call!430217)))

(declare-fun e!3491286 () Bool)

(assert (=> b!5671464 (= e!3491286 e!3491290)))

(declare-fun b!5671465 () Bool)

(declare-fun res!2396583 () Bool)

(declare-fun e!3491287 () Bool)

(assert (=> b!5671465 (=> res!2396583 e!3491287)))

(assert (=> b!5671465 (= res!2396583 (not ((_ is Concat!24502) lt!2268141)))))

(assert (=> b!5671465 (= e!3491286 e!3491287)))

(declare-fun b!5671466 () Bool)

(assert (=> b!5671466 (= e!3491292 e!3491286)))

(assert (=> b!5671466 (= c!997591 ((_ is Union!15657) lt!2268141))))

(declare-fun b!5671467 () Bool)

(assert (=> b!5671467 (= e!3491289 call!430216)))

(declare-fun b!5671468 () Bool)

(assert (=> b!5671468 (= e!3491291 e!3491292)))

(declare-fun c!997590 () Bool)

(assert (=> b!5671468 (= c!997590 ((_ is Star!15657) lt!2268141))))

(declare-fun b!5671469 () Bool)

(assert (=> b!5671469 (= e!3491287 e!3491288)))

(declare-fun res!2396582 () Bool)

(assert (=> b!5671469 (=> (not res!2396582) (not e!3491288))))

(assert (=> b!5671469 (= res!2396582 call!430217)))

(declare-fun b!5671470 () Bool)

(assert (=> b!5671470 (= e!3491290 call!430215)))

(declare-fun bm!430212 () Bool)

(assert (=> bm!430212 (= call!430216 (validRegex!7393 (ite c!997590 (reg!15986 lt!2268141) (ite c!997591 (regOne!31827 lt!2268141) (regOne!31826 lt!2268141)))))))

(assert (= (and d!1790368 (not res!2396584)) b!5671468))

(assert (= (and b!5671468 c!997590) b!5671462))

(assert (= (and b!5671468 (not c!997590)) b!5671466))

(assert (= (and b!5671462 res!2396580) b!5671467))

(assert (= (and b!5671466 c!997591) b!5671464))

(assert (= (and b!5671466 (not c!997591)) b!5671465))

(assert (= (and b!5671464 res!2396581) b!5671470))

(assert (= (and b!5671465 (not res!2396583)) b!5671469))

(assert (= (and b!5671469 res!2396582) b!5671463))

(assert (= (or b!5671470 b!5671463) bm!430210))

(assert (= (or b!5671464 b!5671469) bm!430211))

(assert (= (or b!5671467 bm!430211) bm!430212))

(declare-fun m!6632612 () Bool)

(assert (=> b!5671462 m!6632612))

(declare-fun m!6632614 () Bool)

(assert (=> bm!430210 m!6632614))

(declare-fun m!6632616 () Bool)

(assert (=> bm!430212 m!6632616))

(assert (=> d!1790166 d!1790368))

(declare-fun bs!1321355 () Bool)

(declare-fun b!5671471 () Bool)

(assert (= bs!1321355 (and b!5671471 d!1790126)))

(declare-fun lambda!305241 () Int)

(assert (=> bs!1321355 (not (= lambda!305241 lambda!305176))))

(declare-fun bs!1321356 () Bool)

(assert (= bs!1321356 (and b!5671471 b!5670698)))

(assert (=> bs!1321356 (= (and (= (reg!15986 (regTwo!31827 r!7292)) (reg!15986 lt!2268141)) (= (regTwo!31827 r!7292) lt!2268141)) (= lambda!305241 lambda!305172))))

(declare-fun bs!1321357 () Bool)

(assert (= bs!1321357 (and b!5671471 b!5670839)))

(assert (=> bs!1321357 (= (and (= (reg!15986 (regTwo!31827 r!7292)) (reg!15986 lt!2268120)) (= (regTwo!31827 r!7292) lt!2268120)) (= lambda!305241 lambda!305182))))

(declare-fun bs!1321358 () Bool)

(assert (= bs!1321358 (and b!5671471 d!1790038)))

(assert (=> bs!1321358 (not (= lambda!305241 lambda!305156))))

(declare-fun bs!1321359 () Bool)

(assert (= bs!1321359 (and b!5671471 d!1790100)))

(assert (=> bs!1321359 (not (= lambda!305241 lambda!305163))))

(declare-fun bs!1321360 () Bool)

(assert (= bs!1321360 (and b!5671471 d!1790094)))

(assert (=> bs!1321360 (not (= lambda!305241 lambda!305162))))

(declare-fun bs!1321361 () Bool)

(assert (= bs!1321361 (and b!5671471 b!5670241)))

(assert (=> bs!1321361 (not (= lambda!305241 lambda!305095))))

(declare-fun bs!1321362 () Bool)

(assert (= bs!1321362 (and b!5671471 b!5670845)))

(assert (=> bs!1321362 (not (= lambda!305241 lambda!305183))))

(declare-fun bs!1321363 () Bool)

(assert (= bs!1321363 (and b!5671471 b!5670249)))

(assert (=> bs!1321363 (not (= lambda!305241 lambda!305098))))

(declare-fun bs!1321364 () Bool)

(assert (= bs!1321364 (and b!5671471 b!5671032)))

(assert (=> bs!1321364 (= (and (= (reg!15986 (regTwo!31827 r!7292)) (reg!15986 r!7292)) (= (regTwo!31827 r!7292) r!7292)) (= lambda!305241 lambda!305195))))

(assert (=> bs!1321358 (not (= lambda!305241 lambda!305155))))

(declare-fun bs!1321365 () Bool)

(assert (= bs!1321365 (and b!5671471 d!1790294)))

(assert (=> bs!1321365 (not (= lambda!305241 lambda!305221))))

(assert (=> bs!1321355 (not (= lambda!305241 lambda!305175))))

(assert (=> bs!1321363 (not (= lambda!305241 lambda!305101))))

(assert (=> bs!1321365 (not (= lambda!305241 lambda!305222))))

(declare-fun bs!1321366 () Bool)

(assert (= bs!1321366 (and b!5671471 b!5671038)))

(assert (=> bs!1321366 (not (= lambda!305241 lambda!305196))))

(declare-fun bs!1321367 () Bool)

(assert (= bs!1321367 (and b!5671471 d!1790314)))

(assert (=> bs!1321367 (not (= lambda!305241 lambda!305226))))

(declare-fun bs!1321368 () Bool)

(assert (= bs!1321368 (and b!5671471 d!1790034)))

(assert (=> bs!1321368 (not (= lambda!305241 lambda!305143))))

(assert (=> bs!1321363 (not (= lambda!305241 lambda!305099))))

(declare-fun bs!1321369 () Bool)

(assert (= bs!1321369 (and b!5671471 d!1790080)))

(assert (=> bs!1321369 (not (= lambda!305241 lambda!305160))))

(assert (=> bs!1321363 (not (= lambda!305241 lambda!305100))))

(declare-fun bs!1321370 () Bool)

(assert (= bs!1321370 (and b!5671471 b!5670704)))

(assert (=> bs!1321370 (not (= lambda!305241 lambda!305174))))

(assert (=> bs!1321361 (not (= lambda!305241 lambda!305096))))

(assert (=> bs!1321369 (not (= lambda!305241 lambda!305158))))

(assert (=> b!5671471 true))

(assert (=> b!5671471 true))

(declare-fun bs!1321371 () Bool)

(declare-fun b!5671477 () Bool)

(assert (= bs!1321371 (and b!5671477 d!1790126)))

(declare-fun lambda!305242 () Int)

(assert (=> bs!1321371 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 r!7292)) lt!2268129)) (= lambda!305242 lambda!305176))))

(declare-fun bs!1321372 () Bool)

(assert (= bs!1321372 (and b!5671477 b!5670698)))

(assert (=> bs!1321372 (not (= lambda!305242 lambda!305172))))

(declare-fun bs!1321373 () Bool)

(assert (= bs!1321373 (and b!5671477 b!5670839)))

(assert (=> bs!1321373 (not (= lambda!305242 lambda!305182))))

(declare-fun bs!1321374 () Bool)

(assert (= bs!1321374 (and b!5671477 d!1790038)))

(assert (=> bs!1321374 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 r!7292)) (regTwo!31826 r!7292))) (= lambda!305242 lambda!305156))))

(declare-fun bs!1321375 () Bool)

(assert (= bs!1321375 (and b!5671477 d!1790100)))

(assert (=> bs!1321375 (not (= lambda!305242 lambda!305163))))

(declare-fun bs!1321376 () Bool)

(assert (= bs!1321376 (and b!5671477 d!1790094)))

(assert (=> bs!1321376 (not (= lambda!305242 lambda!305162))))

(declare-fun bs!1321377 () Bool)

(assert (= bs!1321377 (and b!5671477 b!5670241)))

(assert (=> bs!1321377 (not (= lambda!305242 lambda!305095))))

(declare-fun bs!1321378 () Bool)

(assert (= bs!1321378 (and b!5671477 b!5670845)))

(assert (=> bs!1321378 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regOne!31826 lt!2268120)) (= (regTwo!31826 (regTwo!31827 r!7292)) (regTwo!31826 lt!2268120))) (= lambda!305242 lambda!305183))))

(declare-fun bs!1321379 () Bool)

(assert (= bs!1321379 (and b!5671477 b!5671471)))

(assert (=> bs!1321379 (not (= lambda!305242 lambda!305241))))

(declare-fun bs!1321380 () Bool)

(assert (= bs!1321380 (and b!5671477 b!5670249)))

(assert (=> bs!1321380 (not (= lambda!305242 lambda!305098))))

(declare-fun bs!1321381 () Bool)

(assert (= bs!1321381 (and b!5671477 b!5671032)))

(assert (=> bs!1321381 (not (= lambda!305242 lambda!305195))))

(assert (=> bs!1321374 (not (= lambda!305242 lambda!305155))))

(declare-fun bs!1321382 () Bool)

(assert (= bs!1321382 (and b!5671477 d!1790294)))

(assert (=> bs!1321382 (not (= lambda!305242 lambda!305221))))

(assert (=> bs!1321371 (not (= lambda!305242 lambda!305175))))

(assert (=> bs!1321380 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 r!7292)) lt!2268129)) (= lambda!305242 lambda!305101))))

(assert (=> bs!1321382 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 r!7292)) lt!2268129)) (= lambda!305242 lambda!305222))))

(declare-fun bs!1321383 () Bool)

(assert (= bs!1321383 (and b!5671477 b!5671038)))

(assert (=> bs!1321383 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 r!7292)) (regTwo!31826 r!7292))) (= lambda!305242 lambda!305196))))

(declare-fun bs!1321384 () Bool)

(assert (= bs!1321384 (and b!5671477 d!1790314)))

(assert (=> bs!1321384 (not (= lambda!305242 lambda!305226))))

(declare-fun bs!1321385 () Bool)

(assert (= bs!1321385 (and b!5671477 d!1790034)))

(assert (=> bs!1321385 (not (= lambda!305242 lambda!305143))))

(assert (=> bs!1321380 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 r!7292)) lt!2268120)) (= lambda!305242 lambda!305099))))

(declare-fun bs!1321386 () Bool)

(assert (= bs!1321386 (and b!5671477 d!1790080)))

(assert (=> bs!1321386 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 r!7292)) lt!2268120)) (= lambda!305242 lambda!305160))))

(assert (=> bs!1321380 (not (= lambda!305242 lambda!305100))))

(declare-fun bs!1321387 () Bool)

(assert (= bs!1321387 (and b!5671477 b!5670704)))

(assert (=> bs!1321387 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regOne!31826 lt!2268141)) (= (regTwo!31826 (regTwo!31827 r!7292)) (regTwo!31826 lt!2268141))) (= lambda!305242 lambda!305174))))

(assert (=> bs!1321377 (= (and (= (regOne!31826 (regTwo!31827 r!7292)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 r!7292)) (regTwo!31826 r!7292))) (= lambda!305242 lambda!305096))))

(assert (=> bs!1321386 (not (= lambda!305242 lambda!305158))))

(assert (=> b!5671477 true))

(assert (=> b!5671477 true))

(declare-fun e!3491293 () Bool)

(declare-fun call!430218 () Bool)

(assert (=> b!5671471 (= e!3491293 call!430218)))

(declare-fun b!5671472 () Bool)

(declare-fun e!3491294 () Bool)

(declare-fun e!3491297 () Bool)

(assert (=> b!5671472 (= e!3491294 e!3491297)))

(declare-fun res!2396587 () Bool)

(assert (=> b!5671472 (= res!2396587 (not ((_ is EmptyLang!15657) (regTwo!31827 r!7292))))))

(assert (=> b!5671472 (=> (not res!2396587) (not e!3491297))))

(declare-fun b!5671473 () Bool)

(declare-fun e!3491296 () Bool)

(assert (=> b!5671473 (= e!3491296 (matchRSpec!2760 (regTwo!31827 (regTwo!31827 r!7292)) s!2326))))

(declare-fun b!5671474 () Bool)

(declare-fun c!997593 () Bool)

(assert (=> b!5671474 (= c!997593 ((_ is ElementMatch!15657) (regTwo!31827 r!7292)))))

(declare-fun e!3491295 () Bool)

(assert (=> b!5671474 (= e!3491297 e!3491295)))

(declare-fun b!5671475 () Bool)

(declare-fun e!3491298 () Bool)

(declare-fun e!3491299 () Bool)

(assert (=> b!5671475 (= e!3491298 e!3491299)))

(declare-fun c!997592 () Bool)

(assert (=> b!5671475 (= c!997592 ((_ is Star!15657) (regTwo!31827 r!7292)))))

(assert (=> b!5671477 (= e!3491299 call!430218)))

(declare-fun b!5671478 () Bool)

(declare-fun call!430219 () Bool)

(assert (=> b!5671478 (= e!3491294 call!430219)))

(declare-fun bm!430213 () Bool)

(assert (=> bm!430213 (= call!430219 (isEmpty!35001 s!2326))))

(declare-fun b!5671479 () Bool)

(declare-fun c!997595 () Bool)

(assert (=> b!5671479 (= c!997595 ((_ is Union!15657) (regTwo!31827 r!7292)))))

(assert (=> b!5671479 (= e!3491295 e!3491298)))

(declare-fun bm!430214 () Bool)

(assert (=> bm!430214 (= call!430218 (Exists!2757 (ite c!997592 lambda!305241 lambda!305242)))))

(declare-fun d!1790370 () Bool)

(declare-fun c!997594 () Bool)

(assert (=> d!1790370 (= c!997594 ((_ is EmptyExpr!15657) (regTwo!31827 r!7292)))))

(assert (=> d!1790370 (= (matchRSpec!2760 (regTwo!31827 r!7292) s!2326) e!3491294)))

(declare-fun b!5671476 () Bool)

(declare-fun res!2396585 () Bool)

(assert (=> b!5671476 (=> res!2396585 e!3491293)))

(assert (=> b!5671476 (= res!2396585 call!430219)))

(assert (=> b!5671476 (= e!3491299 e!3491293)))

(declare-fun b!5671480 () Bool)

(assert (=> b!5671480 (= e!3491295 (= s!2326 (Cons!63147 (c!997231 (regTwo!31827 r!7292)) Nil!63147)))))

(declare-fun b!5671481 () Bool)

(assert (=> b!5671481 (= e!3491298 e!3491296)))

(declare-fun res!2396586 () Bool)

(assert (=> b!5671481 (= res!2396586 (matchRSpec!2760 (regOne!31827 (regTwo!31827 r!7292)) s!2326))))

(assert (=> b!5671481 (=> res!2396586 e!3491296)))

(assert (= (and d!1790370 c!997594) b!5671478))

(assert (= (and d!1790370 (not c!997594)) b!5671472))

(assert (= (and b!5671472 res!2396587) b!5671474))

(assert (= (and b!5671474 c!997593) b!5671480))

(assert (= (and b!5671474 (not c!997593)) b!5671479))

(assert (= (and b!5671479 c!997595) b!5671481))

(assert (= (and b!5671479 (not c!997595)) b!5671475))

(assert (= (and b!5671481 (not res!2396586)) b!5671473))

(assert (= (and b!5671475 c!997592) b!5671476))

(assert (= (and b!5671475 (not c!997592)) b!5671477))

(assert (= (and b!5671476 (not res!2396585)) b!5671471))

(assert (= (or b!5671471 b!5671477) bm!430214))

(assert (= (or b!5671478 b!5671476) bm!430213))

(declare-fun m!6632618 () Bool)

(assert (=> b!5671473 m!6632618))

(assert (=> bm!430213 m!6631874))

(declare-fun m!6632620 () Bool)

(assert (=> bm!430214 m!6632620))

(declare-fun m!6632622 () Bool)

(assert (=> b!5671481 m!6632622))

(assert (=> b!5671034 d!1790370))

(declare-fun bs!1321388 () Bool)

(declare-fun d!1790372 () Bool)

(assert (= bs!1321388 (and d!1790372 d!1790156)))

(declare-fun lambda!305243 () Int)

(assert (=> bs!1321388 (= lambda!305243 lambda!305181)))

(declare-fun bs!1321389 () Bool)

(assert (= bs!1321389 (and d!1790372 d!1790174)))

(assert (=> bs!1321389 (= lambda!305243 lambda!305184)))

(declare-fun bs!1321390 () Bool)

(assert (= bs!1321390 (and d!1790372 d!1790140)))

(assert (=> bs!1321390 (= lambda!305243 lambda!305180)))

(declare-fun bs!1321391 () Bool)

(assert (= bs!1321391 (and d!1790372 d!1790228)))

(assert (=> bs!1321391 (= lambda!305243 lambda!305203)))

(declare-fun bs!1321392 () Bool)

(assert (= bs!1321392 (and d!1790372 d!1790260)))

(assert (=> bs!1321392 (= lambda!305243 lambda!305213)))

(declare-fun bs!1321393 () Bool)

(assert (= bs!1321393 (and d!1790372 b!5671439)))

(assert (=> bs!1321393 (not (= lambda!305243 lambda!305240))))

(declare-fun bs!1321394 () Bool)

(assert (= bs!1321394 (and d!1790372 d!1790258)))

(assert (=> bs!1321394 (= lambda!305243 lambda!305210)))

(declare-fun bs!1321395 () Bool)

(assert (= bs!1321395 (and d!1790372 d!1790180)))

(assert (=> bs!1321395 (= lambda!305243 lambda!305185)))

(declare-fun bs!1321396 () Bool)

(assert (= bs!1321396 (and d!1790372 b!5671437)))

(assert (=> bs!1321396 (not (= lambda!305243 lambda!305239))))

(declare-fun bs!1321397 () Bool)

(assert (= bs!1321397 (and d!1790372 d!1790238)))

(assert (=> bs!1321397 (= lambda!305243 lambda!305204)))

(declare-fun b!5671482 () Bool)

(declare-fun e!3491301 () Bool)

(declare-fun lt!2268352 () Regex!15657)

(assert (=> b!5671482 (= e!3491301 (= lt!2268352 (head!12039 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5671483 () Bool)

(declare-fun e!3491305 () Regex!15657)

(assert (=> b!5671483 (= e!3491305 (Concat!24502 (h!69594 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))) (generalisedConcat!1272 (t!376576 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))))))))

(declare-fun b!5671484 () Bool)

(assert (=> b!5671484 (= e!3491301 (isConcat!710 lt!2268352))))

(declare-fun b!5671485 () Bool)

(declare-fun e!3491300 () Bool)

(assert (=> b!5671485 (= e!3491300 e!3491301)))

(declare-fun c!997596 () Bool)

(assert (=> b!5671485 (= c!997596 (isEmpty!34998 (tail!11134 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5671486 () Bool)

(declare-fun e!3491302 () Bool)

(assert (=> b!5671486 (= e!3491302 (isEmpty!34998 (t!376576 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5671488 () Bool)

(declare-fun e!3491303 () Bool)

(assert (=> b!5671488 (= e!3491303 e!3491300)))

(declare-fun c!997599 () Bool)

(assert (=> b!5671488 (= c!997599 (isEmpty!34998 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5671489 () Bool)

(assert (=> b!5671489 (= e!3491300 (isEmptyExpr!1187 lt!2268352))))

(declare-fun b!5671490 () Bool)

(assert (=> b!5671490 (= e!3491305 EmptyExpr!15657)))

(declare-fun b!5671491 () Bool)

(declare-fun e!3491304 () Regex!15657)

(assert (=> b!5671491 (= e!3491304 e!3491305)))

(declare-fun c!997597 () Bool)

(assert (=> b!5671491 (= c!997597 ((_ is Cons!63146) (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(assert (=> d!1790372 e!3491303))

(declare-fun res!2396589 () Bool)

(assert (=> d!1790372 (=> (not res!2396589) (not e!3491303))))

(assert (=> d!1790372 (= res!2396589 (validRegex!7393 lt!2268352))))

(assert (=> d!1790372 (= lt!2268352 e!3491304)))

(declare-fun c!997598 () Bool)

(assert (=> d!1790372 (= c!997598 e!3491302)))

(declare-fun res!2396588 () Bool)

(assert (=> d!1790372 (=> (not res!2396588) (not e!3491302))))

(assert (=> d!1790372 (= res!2396588 ((_ is Cons!63146) (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(assert (=> d!1790372 (forall!14810 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343)))) lambda!305243)))

(assert (=> d!1790372 (= (generalisedConcat!1272 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))) lt!2268352)))

(declare-fun b!5671487 () Bool)

(assert (=> b!5671487 (= e!3491304 (h!69594 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(assert (= (and d!1790372 res!2396588) b!5671486))

(assert (= (and d!1790372 c!997598) b!5671487))

(assert (= (and d!1790372 (not c!997598)) b!5671491))

(assert (= (and b!5671491 c!997597) b!5671483))

(assert (= (and b!5671491 (not c!997597)) b!5671490))

(assert (= (and d!1790372 res!2396589) b!5671488))

(assert (= (and b!5671488 c!997599) b!5671489))

(assert (= (and b!5671488 (not c!997599)) b!5671485))

(assert (= (and b!5671485 c!997596) b!5671482))

(assert (= (and b!5671485 (not c!997596)) b!5671484))

(declare-fun m!6632624 () Bool)

(assert (=> b!5671483 m!6632624))

(declare-fun m!6632626 () Bool)

(assert (=> b!5671489 m!6632626))

(assert (=> b!5671488 m!6632112))

(declare-fun m!6632628 () Bool)

(assert (=> b!5671485 m!6632628))

(assert (=> b!5671485 m!6632628))

(declare-fun m!6632630 () Bool)

(assert (=> b!5671485 m!6632630))

(declare-fun m!6632632 () Bool)

(assert (=> b!5671482 m!6632632))

(declare-fun m!6632634 () Bool)

(assert (=> b!5671484 m!6632634))

(declare-fun m!6632636 () Bool)

(assert (=> b!5671486 m!6632636))

(declare-fun m!6632638 () Bool)

(assert (=> d!1790372 m!6632638))

(declare-fun m!6632640 () Bool)

(assert (=> d!1790372 m!6632640))

(assert (=> b!5670794 d!1790372))

(declare-fun d!1790374 () Bool)

(assert (=> d!1790374 (= (flatMap!1270 lt!2268137 lambda!305207) (choose!42903 lt!2268137 lambda!305207))))

(declare-fun bs!1321398 () Bool)

(assert (= bs!1321398 d!1790374))

(declare-fun m!6632642 () Bool)

(assert (=> bs!1321398 m!6632642))

(assert (=> d!1790256 d!1790374))

(declare-fun d!1790376 () Bool)

(assert (=> d!1790376 (= (nullable!5689 (h!69594 (exprs!5541 lt!2268119))) (nullableFct!1774 (h!69594 (exprs!5541 lt!2268119))))))

(declare-fun bs!1321399 () Bool)

(assert (= bs!1321399 d!1790376))

(declare-fun m!6632644 () Bool)

(assert (=> bs!1321399 m!6632644))

(assert (=> b!5671154 d!1790376))

(declare-fun d!1790378 () Bool)

(assert (=> d!1790378 (= (nullable!5689 (reg!15986 r!7292)) (nullableFct!1774 (reg!15986 r!7292)))))

(declare-fun bs!1321400 () Bool)

(assert (= bs!1321400 d!1790378))

(declare-fun m!6632646 () Bool)

(assert (=> bs!1321400 m!6632646))

(assert (=> b!5671213 d!1790378))

(assert (=> d!1790226 d!1790224))

(assert (=> d!1790226 d!1790208))

(declare-fun d!1790380 () Bool)

(assert (=> d!1790380 (= (matchR!7842 r!7292 s!2326) (matchRSpec!2760 r!7292 s!2326))))

(assert (=> d!1790380 true))

(declare-fun _$88!3957 () Unit!156160)

(assert (=> d!1790380 (= (choose!42897 r!7292 s!2326) _$88!3957)))

(declare-fun bs!1321401 () Bool)

(assert (= bs!1321401 d!1790380))

(assert (=> bs!1321401 m!6631516))

(assert (=> bs!1321401 m!6631514))

(assert (=> d!1790226 d!1790380))

(assert (=> d!1790226 d!1790264))

(declare-fun d!1790382 () Bool)

(assert (=> d!1790382 (= (isEmpty!34998 (tail!11134 lt!2268152)) ((_ is Nil!63146) (tail!11134 lt!2268152)))))

(assert (=> b!5670781 d!1790382))

(declare-fun d!1790384 () Bool)

(assert (=> d!1790384 (= (tail!11134 lt!2268152) (t!376576 lt!2268152))))

(assert (=> b!5670781 d!1790384))

(declare-fun d!1790386 () Bool)

(declare-fun res!2396590 () Bool)

(declare-fun e!3491306 () Bool)

(assert (=> d!1790386 (=> res!2396590 e!3491306)))

(assert (=> d!1790386 (= res!2396590 ((_ is Nil!63146) (exprs!5541 setElem!37895)))))

(assert (=> d!1790386 (= (forall!14810 (exprs!5541 setElem!37895) lambda!305204) e!3491306)))

(declare-fun b!5671492 () Bool)

(declare-fun e!3491307 () Bool)

(assert (=> b!5671492 (= e!3491306 e!3491307)))

(declare-fun res!2396591 () Bool)

(assert (=> b!5671492 (=> (not res!2396591) (not e!3491307))))

(assert (=> b!5671492 (= res!2396591 (dynLambda!24716 lambda!305204 (h!69594 (exprs!5541 setElem!37895))))))

(declare-fun b!5671493 () Bool)

(assert (=> b!5671493 (= e!3491307 (forall!14810 (t!376576 (exprs!5541 setElem!37895)) lambda!305204))))

(assert (= (and d!1790386 (not res!2396590)) b!5671492))

(assert (= (and b!5671492 res!2396591) b!5671493))

(declare-fun b_lambda!214517 () Bool)

(assert (=> (not b_lambda!214517) (not b!5671492)))

(declare-fun m!6632648 () Bool)

(assert (=> b!5671492 m!6632648))

(declare-fun m!6632650 () Bool)

(assert (=> b!5671493 m!6632650))

(assert (=> d!1790238 d!1790386))

(declare-fun d!1790388 () Bool)

(assert (=> d!1790388 (= (Exists!2757 lambda!305162) (choose!42894 lambda!305162))))

(declare-fun bs!1321402 () Bool)

(assert (= bs!1321402 d!1790388))

(declare-fun m!6632652 () Bool)

(assert (=> bs!1321402 m!6632652))

(assert (=> d!1790094 d!1790388))

(assert (=> d!1790094 d!1790084))

(assert (=> d!1790094 d!1790296))

(assert (=> d!1790094 d!1790162))

(declare-fun bs!1321403 () Bool)

(declare-fun d!1790390 () Bool)

(assert (= bs!1321403 (and d!1790390 d!1790126)))

(declare-fun lambda!305244 () Int)

(assert (=> bs!1321403 (not (= lambda!305244 lambda!305176))))

(declare-fun bs!1321404 () Bool)

(assert (= bs!1321404 (and d!1790390 b!5670698)))

(assert (=> bs!1321404 (not (= lambda!305244 lambda!305172))))

(declare-fun bs!1321405 () Bool)

(assert (= bs!1321405 (and d!1790390 b!5670839)))

(assert (=> bs!1321405 (not (= lambda!305244 lambda!305182))))

(declare-fun bs!1321406 () Bool)

(assert (= bs!1321406 (and d!1790390 d!1790038)))

(assert (=> bs!1321406 (not (= lambda!305244 lambda!305156))))

(declare-fun bs!1321407 () Bool)

(assert (= bs!1321407 (and d!1790390 d!1790100)))

(assert (=> bs!1321407 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305244 lambda!305163))))

(declare-fun bs!1321408 () Bool)

(assert (= bs!1321408 (and d!1790390 d!1790094)))

(assert (=> bs!1321408 (= lambda!305244 lambda!305162)))

(declare-fun bs!1321409 () Bool)

(assert (= bs!1321409 (and d!1790390 b!5670845)))

(assert (=> bs!1321409 (not (= lambda!305244 lambda!305183))))

(declare-fun bs!1321410 () Bool)

(assert (= bs!1321410 (and d!1790390 b!5671471)))

(assert (=> bs!1321410 (not (= lambda!305244 lambda!305241))))

(declare-fun bs!1321411 () Bool)

(assert (= bs!1321411 (and d!1790390 b!5670249)))

(assert (=> bs!1321411 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305244 lambda!305098))))

(declare-fun bs!1321412 () Bool)

(assert (= bs!1321412 (and d!1790390 b!5671032)))

(assert (=> bs!1321412 (not (= lambda!305244 lambda!305195))))

(assert (=> bs!1321406 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305244 lambda!305155))))

(declare-fun bs!1321413 () Bool)

(assert (= bs!1321413 (and d!1790390 d!1790294)))

(assert (=> bs!1321413 (= lambda!305244 lambda!305221)))

(assert (=> bs!1321403 (= lambda!305244 lambda!305175)))

(assert (=> bs!1321411 (not (= lambda!305244 lambda!305101))))

(assert (=> bs!1321413 (not (= lambda!305244 lambda!305222))))

(declare-fun bs!1321414 () Bool)

(assert (= bs!1321414 (and d!1790390 b!5671038)))

(assert (=> bs!1321414 (not (= lambda!305244 lambda!305196))))

(declare-fun bs!1321415 () Bool)

(assert (= bs!1321415 (and d!1790390 d!1790314)))

(assert (=> bs!1321415 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305244 lambda!305226))))

(declare-fun bs!1321416 () Bool)

(assert (= bs!1321416 (and d!1790390 d!1790034)))

(assert (=> bs!1321416 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305244 lambda!305143))))

(declare-fun bs!1321417 () Bool)

(assert (= bs!1321417 (and d!1790390 b!5670241)))

(assert (=> bs!1321417 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268129 (regTwo!31826 r!7292))) (= lambda!305244 lambda!305095))))

(declare-fun bs!1321418 () Bool)

(assert (= bs!1321418 (and d!1790390 b!5671477)))

(assert (=> bs!1321418 (not (= lambda!305244 lambda!305242))))

(assert (=> bs!1321411 (not (= lambda!305244 lambda!305099))))

(declare-fun bs!1321419 () Bool)

(assert (= bs!1321419 (and d!1790390 d!1790080)))

(assert (=> bs!1321419 (not (= lambda!305244 lambda!305160))))

(assert (=> bs!1321411 (= lambda!305244 lambda!305100)))

(declare-fun bs!1321420 () Bool)

(assert (= bs!1321420 (and d!1790390 b!5670704)))

(assert (=> bs!1321420 (not (= lambda!305244 lambda!305174))))

(assert (=> bs!1321417 (not (= lambda!305244 lambda!305096))))

(assert (=> bs!1321419 (= (and (= (regTwo!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= lt!2268129 lt!2268120)) (= lambda!305244 lambda!305158))))

(assert (=> d!1790390 true))

(assert (=> d!1790390 true))

(assert (=> d!1790390 true))

(assert (=> d!1790390 (= (isDefined!12369 (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 Nil!63147 s!2326 s!2326)) (Exists!2757 lambda!305244))))

(assert (=> d!1790390 true))

(declare-fun _$89!1787 () Unit!156160)

(assert (=> d!1790390 (= (choose!42895 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 s!2326) _$89!1787)))

(declare-fun bs!1321421 () Bool)

(assert (= bs!1321421 d!1790390))

(assert (=> bs!1321421 m!6631524))

(assert (=> bs!1321421 m!6631524))

(assert (=> bs!1321421 m!6631526))

(declare-fun m!6632654 () Bool)

(assert (=> bs!1321421 m!6632654))

(assert (=> d!1790094 d!1790390))

(declare-fun d!1790392 () Bool)

(assert (=> d!1790392 true))

(assert (=> d!1790392 true))

(declare-fun res!2396592 () Bool)

(assert (=> d!1790392 (= (choose!42894 lambda!305101) res!2396592)))

(assert (=> d!1790090 d!1790392))

(assert (=> d!1790014 d!1790336))

(declare-fun bs!1321422 () Bool)

(declare-fun d!1790394 () Bool)

(assert (= bs!1321422 (and d!1790394 d!1790156)))

(declare-fun lambda!305245 () Int)

(assert (=> bs!1321422 (= lambda!305245 lambda!305181)))

(declare-fun bs!1321423 () Bool)

(assert (= bs!1321423 (and d!1790394 d!1790174)))

(assert (=> bs!1321423 (= lambda!305245 lambda!305184)))

(declare-fun bs!1321424 () Bool)

(assert (= bs!1321424 (and d!1790394 d!1790140)))

(assert (=> bs!1321424 (= lambda!305245 lambda!305180)))

(declare-fun bs!1321425 () Bool)

(assert (= bs!1321425 (and d!1790394 d!1790228)))

(assert (=> bs!1321425 (= lambda!305245 lambda!305203)))

(declare-fun bs!1321426 () Bool)

(assert (= bs!1321426 (and d!1790394 d!1790372)))

(assert (=> bs!1321426 (= lambda!305245 lambda!305243)))

(declare-fun bs!1321427 () Bool)

(assert (= bs!1321427 (and d!1790394 d!1790260)))

(assert (=> bs!1321427 (= lambda!305245 lambda!305213)))

(declare-fun bs!1321428 () Bool)

(assert (= bs!1321428 (and d!1790394 b!5671439)))

(assert (=> bs!1321428 (not (= lambda!305245 lambda!305240))))

(declare-fun bs!1321429 () Bool)

(assert (= bs!1321429 (and d!1790394 d!1790258)))

(assert (=> bs!1321429 (= lambda!305245 lambda!305210)))

(declare-fun bs!1321430 () Bool)

(assert (= bs!1321430 (and d!1790394 d!1790180)))

(assert (=> bs!1321430 (= lambda!305245 lambda!305185)))

(declare-fun bs!1321431 () Bool)

(assert (= bs!1321431 (and d!1790394 b!5671437)))

(assert (=> bs!1321431 (not (= lambda!305245 lambda!305239))))

(declare-fun bs!1321432 () Bool)

(assert (= bs!1321432 (and d!1790394 d!1790238)))

(assert (=> bs!1321432 (= lambda!305245 lambda!305204)))

(declare-fun b!5671494 () Bool)

(declare-fun e!3491309 () Bool)

(declare-fun lt!2268353 () Regex!15657)

(assert (=> b!5671494 (= e!3491309 (= lt!2268353 (head!12039 (t!376576 lt!2268127))))))

(declare-fun b!5671495 () Bool)

(declare-fun e!3491313 () Regex!15657)

(assert (=> b!5671495 (= e!3491313 (Concat!24502 (h!69594 (t!376576 lt!2268127)) (generalisedConcat!1272 (t!376576 (t!376576 lt!2268127)))))))

(declare-fun b!5671496 () Bool)

(assert (=> b!5671496 (= e!3491309 (isConcat!710 lt!2268353))))

(declare-fun b!5671497 () Bool)

(declare-fun e!3491308 () Bool)

(assert (=> b!5671497 (= e!3491308 e!3491309)))

(declare-fun c!997600 () Bool)

(assert (=> b!5671497 (= c!997600 (isEmpty!34998 (tail!11134 (t!376576 lt!2268127))))))

(declare-fun b!5671498 () Bool)

(declare-fun e!3491310 () Bool)

(assert (=> b!5671498 (= e!3491310 (isEmpty!34998 (t!376576 (t!376576 lt!2268127))))))

(declare-fun b!5671500 () Bool)

(declare-fun e!3491311 () Bool)

(assert (=> b!5671500 (= e!3491311 e!3491308)))

(declare-fun c!997603 () Bool)

(assert (=> b!5671500 (= c!997603 (isEmpty!34998 (t!376576 lt!2268127)))))

(declare-fun b!5671501 () Bool)

(assert (=> b!5671501 (= e!3491308 (isEmptyExpr!1187 lt!2268353))))

(declare-fun b!5671502 () Bool)

(assert (=> b!5671502 (= e!3491313 EmptyExpr!15657)))

(declare-fun b!5671503 () Bool)

(declare-fun e!3491312 () Regex!15657)

(assert (=> b!5671503 (= e!3491312 e!3491313)))

(declare-fun c!997601 () Bool)

(assert (=> b!5671503 (= c!997601 ((_ is Cons!63146) (t!376576 lt!2268127)))))

(assert (=> d!1790394 e!3491311))

(declare-fun res!2396594 () Bool)

(assert (=> d!1790394 (=> (not res!2396594) (not e!3491311))))

(assert (=> d!1790394 (= res!2396594 (validRegex!7393 lt!2268353))))

(assert (=> d!1790394 (= lt!2268353 e!3491312)))

(declare-fun c!997602 () Bool)

(assert (=> d!1790394 (= c!997602 e!3491310)))

(declare-fun res!2396593 () Bool)

(assert (=> d!1790394 (=> (not res!2396593) (not e!3491310))))

(assert (=> d!1790394 (= res!2396593 ((_ is Cons!63146) (t!376576 lt!2268127)))))

(assert (=> d!1790394 (forall!14810 (t!376576 lt!2268127) lambda!305245)))

(assert (=> d!1790394 (= (generalisedConcat!1272 (t!376576 lt!2268127)) lt!2268353)))

(declare-fun b!5671499 () Bool)

(assert (=> b!5671499 (= e!3491312 (h!69594 (t!376576 lt!2268127)))))

(assert (= (and d!1790394 res!2396593) b!5671498))

(assert (= (and d!1790394 c!997602) b!5671499))

(assert (= (and d!1790394 (not c!997602)) b!5671503))

(assert (= (and b!5671503 c!997601) b!5671495))

(assert (= (and b!5671503 (not c!997601)) b!5671502))

(assert (= (and d!1790394 res!2396594) b!5671500))

(assert (= (and b!5671500 c!997603) b!5671501))

(assert (= (and b!5671500 (not c!997603)) b!5671497))

(assert (= (and b!5671497 c!997600) b!5671494))

(assert (= (and b!5671497 (not c!997600)) b!5671496))

(declare-fun m!6632656 () Bool)

(assert (=> b!5671495 m!6632656))

(declare-fun m!6632658 () Bool)

(assert (=> b!5671501 m!6632658))

(assert (=> b!5671500 m!6632174))

(declare-fun m!6632660 () Bool)

(assert (=> b!5671497 m!6632660))

(assert (=> b!5671497 m!6632660))

(declare-fun m!6632662 () Bool)

(assert (=> b!5671497 m!6632662))

(declare-fun m!6632664 () Bool)

(assert (=> b!5671494 m!6632664))

(declare-fun m!6632666 () Bool)

(assert (=> b!5671496 m!6632666))

(declare-fun m!6632668 () Bool)

(assert (=> b!5671498 m!6632668))

(declare-fun m!6632670 () Bool)

(assert (=> d!1790394 m!6632670))

(declare-fun m!6632672 () Bool)

(assert (=> d!1790394 m!6632672))

(assert (=> b!5670867 d!1790394))

(declare-fun d!1790396 () Bool)

(assert (=> d!1790396 true))

(assert (=> d!1790396 true))

(declare-fun res!2396595 () Bool)

(assert (=> d!1790396 (= (choose!42894 lambda!305096) res!2396595)))

(assert (=> d!1790030 d!1790396))

(declare-fun d!1790398 () Bool)

(assert (=> d!1790398 (= (isEmpty!34998 lt!2268127) ((_ is Nil!63146) lt!2268127))))

(assert (=> b!5670872 d!1790398))

(declare-fun b!5671504 () Bool)

(declare-fun res!2396596 () Bool)

(declare-fun e!3491318 () Bool)

(assert (=> b!5671504 (=> (not res!2396596) (not e!3491318))))

(declare-fun call!430220 () Bool)

(assert (=> b!5671504 (= res!2396596 (not call!430220))))

(declare-fun b!5671505 () Bool)

(declare-fun e!3491316 () Bool)

(declare-fun e!3491317 () Bool)

(assert (=> b!5671505 (= e!3491316 e!3491317)))

(declare-fun c!997604 () Bool)

(assert (=> b!5671505 (= c!997604 ((_ is EmptyLang!15657) (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671506 () Bool)

(declare-fun e!3491314 () Bool)

(assert (=> b!5671506 (= e!3491314 (matchR!7842 (derivativeStep!4482 (regOne!31826 (regOne!31826 r!7292)) (head!12038 (_1!36057 (get!21758 lt!2268288)))) (tail!11133 (_1!36057 (get!21758 lt!2268288)))))))

(declare-fun b!5671507 () Bool)

(assert (=> b!5671507 (= e!3491314 (nullable!5689 (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun bm!430215 () Bool)

(assert (=> bm!430215 (= call!430220 (isEmpty!35001 (_1!36057 (get!21758 lt!2268288))))))

(declare-fun b!5671508 () Bool)

(declare-fun res!2396597 () Bool)

(assert (=> b!5671508 (=> (not res!2396597) (not e!3491318))))

(assert (=> b!5671508 (= res!2396597 (isEmpty!35001 (tail!11133 (_1!36057 (get!21758 lt!2268288)))))))

(declare-fun b!5671509 () Bool)

(declare-fun e!3491319 () Bool)

(declare-fun e!3491315 () Bool)

(assert (=> b!5671509 (= e!3491319 e!3491315)))

(declare-fun res!2396601 () Bool)

(assert (=> b!5671509 (=> (not res!2396601) (not e!3491315))))

(declare-fun lt!2268354 () Bool)

(assert (=> b!5671509 (= res!2396601 (not lt!2268354))))

(declare-fun b!5671510 () Bool)

(declare-fun e!3491320 () Bool)

(assert (=> b!5671510 (= e!3491315 e!3491320)))

(declare-fun res!2396599 () Bool)

(assert (=> b!5671510 (=> res!2396599 e!3491320)))

(assert (=> b!5671510 (= res!2396599 call!430220)))

(declare-fun d!1790400 () Bool)

(assert (=> d!1790400 e!3491316))

(declare-fun c!997605 () Bool)

(assert (=> d!1790400 (= c!997605 ((_ is EmptyExpr!15657) (regOne!31826 (regOne!31826 r!7292))))))

(assert (=> d!1790400 (= lt!2268354 e!3491314)))

(declare-fun c!997606 () Bool)

(assert (=> d!1790400 (= c!997606 (isEmpty!35001 (_1!36057 (get!21758 lt!2268288))))))

(assert (=> d!1790400 (validRegex!7393 (regOne!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790400 (= (matchR!7842 (regOne!31826 (regOne!31826 r!7292)) (_1!36057 (get!21758 lt!2268288))) lt!2268354)))

(declare-fun b!5671511 () Bool)

(assert (=> b!5671511 (= e!3491320 (not (= (head!12038 (_1!36057 (get!21758 lt!2268288))) (c!997231 (regOne!31826 (regOne!31826 r!7292))))))))

(declare-fun b!5671512 () Bool)

(declare-fun res!2396598 () Bool)

(assert (=> b!5671512 (=> res!2396598 e!3491319)))

(assert (=> b!5671512 (= res!2396598 e!3491318)))

(declare-fun res!2396600 () Bool)

(assert (=> b!5671512 (=> (not res!2396600) (not e!3491318))))

(assert (=> b!5671512 (= res!2396600 lt!2268354)))

(declare-fun b!5671513 () Bool)

(assert (=> b!5671513 (= e!3491317 (not lt!2268354))))

(declare-fun b!5671514 () Bool)

(assert (=> b!5671514 (= e!3491316 (= lt!2268354 call!430220))))

(declare-fun b!5671515 () Bool)

(declare-fun res!2396603 () Bool)

(assert (=> b!5671515 (=> res!2396603 e!3491320)))

(assert (=> b!5671515 (= res!2396603 (not (isEmpty!35001 (tail!11133 (_1!36057 (get!21758 lt!2268288))))))))

(declare-fun b!5671516 () Bool)

(assert (=> b!5671516 (= e!3491318 (= (head!12038 (_1!36057 (get!21758 lt!2268288))) (c!997231 (regOne!31826 (regOne!31826 r!7292)))))))

(declare-fun b!5671517 () Bool)

(declare-fun res!2396602 () Bool)

(assert (=> b!5671517 (=> res!2396602 e!3491319)))

(assert (=> b!5671517 (= res!2396602 (not ((_ is ElementMatch!15657) (regOne!31826 (regOne!31826 r!7292)))))))

(assert (=> b!5671517 (= e!3491317 e!3491319)))

(assert (= (and d!1790400 c!997606) b!5671507))

(assert (= (and d!1790400 (not c!997606)) b!5671506))

(assert (= (and d!1790400 c!997605) b!5671514))

(assert (= (and d!1790400 (not c!997605)) b!5671505))

(assert (= (and b!5671505 c!997604) b!5671513))

(assert (= (and b!5671505 (not c!997604)) b!5671517))

(assert (= (and b!5671517 (not res!2396602)) b!5671512))

(assert (= (and b!5671512 res!2396600) b!5671504))

(assert (= (and b!5671504 res!2396596) b!5671508))

(assert (= (and b!5671508 res!2396597) b!5671516))

(assert (= (and b!5671512 (not res!2396598)) b!5671509))

(assert (= (and b!5671509 res!2396601) b!5671510))

(assert (= (and b!5671510 (not res!2396599)) b!5671515))

(assert (= (and b!5671515 (not res!2396603)) b!5671511))

(assert (= (or b!5671514 b!5671504 b!5671510) bm!430215))

(declare-fun m!6632674 () Bool)

(assert (=> b!5671508 m!6632674))

(assert (=> b!5671508 m!6632674))

(declare-fun m!6632676 () Bool)

(assert (=> b!5671508 m!6632676))

(assert (=> b!5671515 m!6632674))

(assert (=> b!5671515 m!6632674))

(assert (=> b!5671515 m!6632676))

(declare-fun m!6632678 () Bool)

(assert (=> d!1790400 m!6632678))

(assert (=> d!1790400 m!6631890))

(declare-fun m!6632680 () Bool)

(assert (=> b!5671516 m!6632680))

(assert (=> b!5671506 m!6632680))

(assert (=> b!5671506 m!6632680))

(declare-fun m!6632682 () Bool)

(assert (=> b!5671506 m!6632682))

(assert (=> b!5671506 m!6632674))

(assert (=> b!5671506 m!6632682))

(assert (=> b!5671506 m!6632674))

(declare-fun m!6632684 () Bool)

(assert (=> b!5671506 m!6632684))

(assert (=> b!5671507 m!6631492))

(assert (=> b!5671511 m!6632680))

(assert (=> bm!430215 m!6632678))

(assert (=> b!5670883 d!1790400))

(declare-fun d!1790402 () Bool)

(assert (=> d!1790402 (= (get!21758 lt!2268288) (v!51714 lt!2268288))))

(assert (=> b!5670883 d!1790402))

(declare-fun d!1790404 () Bool)

(declare-fun c!997607 () Bool)

(assert (=> d!1790404 (= c!997607 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun e!3491321 () Bool)

(assert (=> d!1790404 (= (matchZipper!1795 (derivationStepZipper!1742 lt!2268137 (head!12038 s!2326)) (tail!11133 s!2326)) e!3491321)))

(declare-fun b!5671518 () Bool)

(assert (=> b!5671518 (= e!3491321 (nullableZipper!1629 (derivationStepZipper!1742 lt!2268137 (head!12038 s!2326))))))

(declare-fun b!5671519 () Bool)

(assert (=> b!5671519 (= e!3491321 (matchZipper!1795 (derivationStepZipper!1742 (derivationStepZipper!1742 lt!2268137 (head!12038 s!2326)) (head!12038 (tail!11133 s!2326))) (tail!11133 (tail!11133 s!2326))))))

(assert (= (and d!1790404 c!997607) b!5671518))

(assert (= (and d!1790404 (not c!997607)) b!5671519))

(assert (=> d!1790404 m!6631868))

(assert (=> d!1790404 m!6631870))

(assert (=> b!5671518 m!6631928))

(declare-fun m!6632686 () Bool)

(assert (=> b!5671518 m!6632686))

(assert (=> b!5671519 m!6631868))

(assert (=> b!5671519 m!6632542))

(assert (=> b!5671519 m!6631928))

(assert (=> b!5671519 m!6632542))

(declare-fun m!6632688 () Bool)

(assert (=> b!5671519 m!6632688))

(assert (=> b!5671519 m!6631868))

(assert (=> b!5671519 m!6632536))

(assert (=> b!5671519 m!6632688))

(assert (=> b!5671519 m!6632536))

(declare-fun m!6632690 () Bool)

(assert (=> b!5671519 m!6632690))

(assert (=> b!5670636 d!1790404))

(declare-fun bs!1321433 () Bool)

(declare-fun d!1790406 () Bool)

(assert (= bs!1321433 (and d!1790406 b!5670246)))

(declare-fun lambda!305246 () Int)

(assert (=> bs!1321433 (= (= (head!12038 s!2326) (h!69595 s!2326)) (= lambda!305246 lambda!305097))))

(declare-fun bs!1321434 () Bool)

(assert (= bs!1321434 (and d!1790406 d!1790256)))

(assert (=> bs!1321434 (= (= (head!12038 s!2326) (h!69595 s!2326)) (= lambda!305246 lambda!305207))))

(declare-fun bs!1321435 () Bool)

(assert (= bs!1321435 (and d!1790406 d!1790304)))

(assert (=> bs!1321435 (= (= (head!12038 s!2326) (head!12038 (t!376577 s!2326))) (= lambda!305246 lambda!305223))))

(declare-fun bs!1321436 () Bool)

(assert (= bs!1321436 (and d!1790406 d!1790340)))

(assert (=> bs!1321436 (= (= (head!12038 s!2326) (head!12038 (t!376577 s!2326))) (= lambda!305246 lambda!305228))))

(assert (=> d!1790406 true))

(assert (=> d!1790406 (= (derivationStepZipper!1742 lt!2268137 (head!12038 s!2326)) (flatMap!1270 lt!2268137 lambda!305246))))

(declare-fun bs!1321437 () Bool)

(assert (= bs!1321437 d!1790406))

(declare-fun m!6632692 () Bool)

(assert (=> bs!1321437 m!6632692))

(assert (=> b!5670636 d!1790406))

(assert (=> b!5670636 d!1790346))

(assert (=> b!5670636 d!1790278))

(declare-fun d!1790408 () Bool)

(assert (=> d!1790408 (= (head!12039 (exprs!5541 (h!69596 zl!343))) (h!69594 (exprs!5541 (h!69596 zl!343))))))

(assert (=> b!5670889 d!1790408))

(declare-fun d!1790410 () Bool)

(assert (=> d!1790410 (= (isEmpty!35001 s!2326) ((_ is Nil!63147) s!2326))))

(assert (=> bm!430105 d!1790410))

(declare-fun d!1790412 () Bool)

(assert (=> d!1790412 (= (head!12039 (unfocusZipperList!1085 zl!343)) (h!69594 (unfocusZipperList!1085 zl!343)))))

(assert (=> b!5671181 d!1790412))

(declare-fun b!5671520 () Bool)

(declare-fun e!3491323 () (InoxSet Context!10082))

(assert (=> b!5671520 (= e!3491323 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430216 () Bool)

(declare-fun call!430226 () (InoxSet Context!10082))

(declare-fun call!430225 () (InoxSet Context!10082))

(assert (=> bm!430216 (= call!430226 call!430225)))

(declare-fun b!5671521 () Bool)

(declare-fun e!3491327 () Bool)

(assert (=> b!5671521 (= e!3491327 (nullable!5689 (regOne!31826 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))))))))

(declare-fun bm!430217 () Bool)

(declare-fun call!430222 () (InoxSet Context!10082))

(assert (=> bm!430217 (= call!430222 call!430226)))

(declare-fun b!5671522 () Bool)

(assert (=> b!5671522 (= e!3491323 call!430222)))

(declare-fun b!5671523 () Bool)

(declare-fun e!3491325 () (InoxSet Context!10082))

(declare-fun call!430223 () (InoxSet Context!10082))

(assert (=> b!5671523 (= e!3491325 ((_ map or) call!430223 call!430226))))

(declare-fun e!3491322 () (InoxSet Context!10082))

(declare-fun b!5671524 () Bool)

(assert (=> b!5671524 (= e!3491322 (store ((as const (Array Context!10082 Bool)) false) (ite c!997471 lt!2268148 (Context!10083 call!430144)) true))))

(declare-fun c!997611 () Bool)

(declare-fun d!1790414 () Bool)

(assert (=> d!1790414 (= c!997611 (and ((_ is ElementMatch!15657) (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))) (= (c!997231 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))) (h!69595 s!2326))))))

(assert (=> d!1790414 (= (derivationStepZipperDown!999 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))) (ite c!997471 lt!2268148 (Context!10083 call!430144)) (h!69595 s!2326)) e!3491322)))

(declare-fun b!5671525 () Bool)

(declare-fun e!3491324 () (InoxSet Context!10082))

(assert (=> b!5671525 (= e!3491324 call!430222)))

(declare-fun b!5671526 () Bool)

(declare-fun c!997612 () Bool)

(assert (=> b!5671526 (= c!997612 ((_ is Star!15657) (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))

(assert (=> b!5671526 (= e!3491324 e!3491323)))

(declare-fun bm!430218 () Bool)

(declare-fun call!430224 () List!63270)

(declare-fun call!430221 () List!63270)

(assert (=> bm!430218 (= call!430224 call!430221)))

(declare-fun c!997609 () Bool)

(declare-fun bm!430219 () Bool)

(assert (=> bm!430219 (= call!430223 (derivationStepZipperDown!999 (ite c!997609 (regOne!31827 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))) (regOne!31826 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))))) (ite c!997609 (ite c!997471 lt!2268148 (Context!10083 call!430144)) (Context!10083 call!430221)) (h!69595 s!2326)))))

(declare-fun b!5671527 () Bool)

(declare-fun c!997610 () Bool)

(assert (=> b!5671527 (= c!997610 e!3491327)))

(declare-fun res!2396604 () Bool)

(assert (=> b!5671527 (=> (not res!2396604) (not e!3491327))))

(assert (=> b!5671527 (= res!2396604 ((_ is Concat!24502) (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun e!3491326 () (InoxSet Context!10082))

(assert (=> b!5671527 (= e!3491326 e!3491325)))

(declare-fun b!5671528 () Bool)

(assert (=> b!5671528 (= e!3491325 e!3491324)))

(declare-fun c!997608 () Bool)

(assert (=> b!5671528 (= c!997608 ((_ is Concat!24502) (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5671529 () Bool)

(assert (=> b!5671529 (= e!3491326 ((_ map or) call!430223 call!430225))))

(declare-fun bm!430220 () Bool)

(assert (=> bm!430220 (= call!430225 (derivationStepZipperDown!999 (ite c!997609 (regTwo!31827 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))) (ite c!997610 (regTwo!31826 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))) (ite c!997608 (regOne!31826 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))) (reg!15986 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))))))) (ite (or c!997609 c!997610) (ite c!997471 lt!2268148 (Context!10083 call!430144)) (Context!10083 call!430224)) (h!69595 s!2326)))))

(declare-fun bm!430221 () Bool)

(assert (=> bm!430221 (= call!430221 ($colon$colon!1695 (exprs!5541 (ite c!997471 lt!2268148 (Context!10083 call!430144))) (ite (or c!997610 c!997608) (regTwo!31826 (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))) (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))))))))

(declare-fun b!5671530 () Bool)

(assert (=> b!5671530 (= e!3491322 e!3491326)))

(assert (=> b!5671530 (= c!997609 ((_ is Union!15657) (ite c!997471 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))

(assert (= (and d!1790414 c!997611) b!5671524))

(assert (= (and d!1790414 (not c!997611)) b!5671530))

(assert (= (and b!5671530 c!997609) b!5671529))

(assert (= (and b!5671530 (not c!997609)) b!5671527))

(assert (= (and b!5671527 res!2396604) b!5671521))

(assert (= (and b!5671527 c!997610) b!5671523))

(assert (= (and b!5671527 (not c!997610)) b!5671528))

(assert (= (and b!5671528 c!997608) b!5671525))

(assert (= (and b!5671528 (not c!997608)) b!5671526))

(assert (= (and b!5671526 c!997612) b!5671522))

(assert (= (and b!5671526 (not c!997612)) b!5671520))

(assert (= (or b!5671525 b!5671522) bm!430218))

(assert (= (or b!5671525 b!5671522) bm!430217))

(assert (= (or b!5671523 bm!430218) bm!430221))

(assert (= (or b!5671523 bm!430217) bm!430216))

(assert (= (or b!5671529 bm!430216) bm!430220))

(assert (= (or b!5671529 b!5671523) bm!430219))

(declare-fun m!6632694 () Bool)

(assert (=> bm!430220 m!6632694))

(declare-fun m!6632696 () Bool)

(assert (=> bm!430219 m!6632696))

(declare-fun m!6632698 () Bool)

(assert (=> b!5671521 m!6632698))

(declare-fun m!6632700 () Bool)

(assert (=> bm!430221 m!6632700))

(declare-fun m!6632702 () Bool)

(assert (=> b!5671524 m!6632702))

(assert (=> bm!430142 d!1790414))

(declare-fun b!5671531 () Bool)

(declare-fun res!2396605 () Bool)

(declare-fun e!3491332 () Bool)

(assert (=> b!5671531 (=> (not res!2396605) (not e!3491332))))

(declare-fun call!430227 () Bool)

(assert (=> b!5671531 (= res!2396605 (not call!430227))))

(declare-fun b!5671532 () Bool)

(declare-fun e!3491330 () Bool)

(declare-fun e!3491331 () Bool)

(assert (=> b!5671532 (= e!3491330 e!3491331)))

(declare-fun c!997613 () Bool)

(assert (=> b!5671532 (= c!997613 ((_ is EmptyLang!15657) (derivativeStep!4482 lt!2268120 (head!12038 s!2326))))))

(declare-fun b!5671533 () Bool)

(declare-fun e!3491328 () Bool)

(assert (=> b!5671533 (= e!3491328 (matchR!7842 (derivativeStep!4482 (derivativeStep!4482 lt!2268120 (head!12038 s!2326)) (head!12038 (tail!11133 s!2326))) (tail!11133 (tail!11133 s!2326))))))

(declare-fun b!5671534 () Bool)

(assert (=> b!5671534 (= e!3491328 (nullable!5689 (derivativeStep!4482 lt!2268120 (head!12038 s!2326))))))

(declare-fun bm!430222 () Bool)

(assert (=> bm!430222 (= call!430227 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun b!5671535 () Bool)

(declare-fun res!2396606 () Bool)

(assert (=> b!5671535 (=> (not res!2396606) (not e!3491332))))

(assert (=> b!5671535 (= res!2396606 (isEmpty!35001 (tail!11133 (tail!11133 s!2326))))))

(declare-fun b!5671536 () Bool)

(declare-fun e!3491333 () Bool)

(declare-fun e!3491329 () Bool)

(assert (=> b!5671536 (= e!3491333 e!3491329)))

(declare-fun res!2396610 () Bool)

(assert (=> b!5671536 (=> (not res!2396610) (not e!3491329))))

(declare-fun lt!2268355 () Bool)

(assert (=> b!5671536 (= res!2396610 (not lt!2268355))))

(declare-fun b!5671537 () Bool)

(declare-fun e!3491334 () Bool)

(assert (=> b!5671537 (= e!3491329 e!3491334)))

(declare-fun res!2396608 () Bool)

(assert (=> b!5671537 (=> res!2396608 e!3491334)))

(assert (=> b!5671537 (= res!2396608 call!430227)))

(declare-fun d!1790416 () Bool)

(assert (=> d!1790416 e!3491330))

(declare-fun c!997614 () Bool)

(assert (=> d!1790416 (= c!997614 ((_ is EmptyExpr!15657) (derivativeStep!4482 lt!2268120 (head!12038 s!2326))))))

(assert (=> d!1790416 (= lt!2268355 e!3491328)))

(declare-fun c!997615 () Bool)

(assert (=> d!1790416 (= c!997615 (isEmpty!35001 (tail!11133 s!2326)))))

(assert (=> d!1790416 (validRegex!7393 (derivativeStep!4482 lt!2268120 (head!12038 s!2326)))))

(assert (=> d!1790416 (= (matchR!7842 (derivativeStep!4482 lt!2268120 (head!12038 s!2326)) (tail!11133 s!2326)) lt!2268355)))

(declare-fun b!5671538 () Bool)

(assert (=> b!5671538 (= e!3491334 (not (= (head!12038 (tail!11133 s!2326)) (c!997231 (derivativeStep!4482 lt!2268120 (head!12038 s!2326))))))))

(declare-fun b!5671539 () Bool)

(declare-fun res!2396607 () Bool)

(assert (=> b!5671539 (=> res!2396607 e!3491333)))

(assert (=> b!5671539 (= res!2396607 e!3491332)))

(declare-fun res!2396609 () Bool)

(assert (=> b!5671539 (=> (not res!2396609) (not e!3491332))))

(assert (=> b!5671539 (= res!2396609 lt!2268355)))

(declare-fun b!5671540 () Bool)

(assert (=> b!5671540 (= e!3491331 (not lt!2268355))))

(declare-fun b!5671541 () Bool)

(assert (=> b!5671541 (= e!3491330 (= lt!2268355 call!430227))))

(declare-fun b!5671542 () Bool)

(declare-fun res!2396612 () Bool)

(assert (=> b!5671542 (=> res!2396612 e!3491334)))

(assert (=> b!5671542 (= res!2396612 (not (isEmpty!35001 (tail!11133 (tail!11133 s!2326)))))))

(declare-fun b!5671543 () Bool)

(assert (=> b!5671543 (= e!3491332 (= (head!12038 (tail!11133 s!2326)) (c!997231 (derivativeStep!4482 lt!2268120 (head!12038 s!2326)))))))

(declare-fun b!5671544 () Bool)

(declare-fun res!2396611 () Bool)

(assert (=> b!5671544 (=> res!2396611 e!3491333)))

(assert (=> b!5671544 (= res!2396611 (not ((_ is ElementMatch!15657) (derivativeStep!4482 lt!2268120 (head!12038 s!2326)))))))

(assert (=> b!5671544 (= e!3491331 e!3491333)))

(assert (= (and d!1790416 c!997615) b!5671534))

(assert (= (and d!1790416 (not c!997615)) b!5671533))

(assert (= (and d!1790416 c!997614) b!5671541))

(assert (= (and d!1790416 (not c!997614)) b!5671532))

(assert (= (and b!5671532 c!997613) b!5671540))

(assert (= (and b!5671532 (not c!997613)) b!5671544))

(assert (= (and b!5671544 (not res!2396611)) b!5671539))

(assert (= (and b!5671539 res!2396609) b!5671531))

(assert (= (and b!5671531 res!2396605) b!5671535))

(assert (= (and b!5671535 res!2396606) b!5671543))

(assert (= (and b!5671539 (not res!2396607)) b!5671536))

(assert (= (and b!5671536 res!2396610) b!5671537))

(assert (= (and b!5671537 (not res!2396608)) b!5671542))

(assert (= (and b!5671542 (not res!2396612)) b!5671538))

(assert (= (or b!5671541 b!5671531 b!5671537) bm!430222))

(assert (=> b!5671535 m!6631868))

(assert (=> b!5671535 m!6632536))

(assert (=> b!5671535 m!6632536))

(assert (=> b!5671535 m!6632538))

(assert (=> b!5671542 m!6631868))

(assert (=> b!5671542 m!6632536))

(assert (=> b!5671542 m!6632536))

(assert (=> b!5671542 m!6632538))

(assert (=> d!1790416 m!6631868))

(assert (=> d!1790416 m!6631870))

(assert (=> d!1790416 m!6631878))

(declare-fun m!6632704 () Bool)

(assert (=> d!1790416 m!6632704))

(assert (=> b!5671543 m!6631868))

(assert (=> b!5671543 m!6632542))

(assert (=> b!5671533 m!6631868))

(assert (=> b!5671533 m!6632542))

(assert (=> b!5671533 m!6631878))

(assert (=> b!5671533 m!6632542))

(declare-fun m!6632706 () Bool)

(assert (=> b!5671533 m!6632706))

(assert (=> b!5671533 m!6631868))

(assert (=> b!5671533 m!6632536))

(assert (=> b!5671533 m!6632706))

(assert (=> b!5671533 m!6632536))

(declare-fun m!6632708 () Bool)

(assert (=> b!5671533 m!6632708))

(assert (=> b!5671534 m!6631878))

(declare-fun m!6632710 () Bool)

(assert (=> b!5671534 m!6632710))

(assert (=> b!5671538 m!6631868))

(assert (=> b!5671538 m!6632542))

(assert (=> bm!430222 m!6631868))

(assert (=> bm!430222 m!6631870))

(assert (=> b!5670587 d!1790416))

(declare-fun c!997620 () Bool)

(declare-fun call!430230 () Regex!15657)

(declare-fun bm!430223 () Bool)

(declare-fun c!997616 () Bool)

(declare-fun c!997617 () Bool)

(assert (=> bm!430223 (= call!430230 (derivativeStep!4482 (ite c!997617 (regTwo!31827 lt!2268120) (ite c!997616 (reg!15986 lt!2268120) (ite c!997620 (regTwo!31826 lt!2268120) (regOne!31826 lt!2268120)))) (head!12038 s!2326)))))

(declare-fun b!5671545 () Bool)

(assert (=> b!5671545 (= c!997617 ((_ is Union!15657) lt!2268120))))

(declare-fun e!3491338 () Regex!15657)

(declare-fun e!3491336 () Regex!15657)

(assert (=> b!5671545 (= e!3491338 e!3491336)))

(declare-fun b!5671546 () Bool)

(declare-fun e!3491339 () Regex!15657)

(declare-fun call!430228 () Regex!15657)

(assert (=> b!5671546 (= e!3491339 (Concat!24502 call!430228 lt!2268120))))

(declare-fun b!5671547 () Bool)

(assert (=> b!5671547 (= e!3491336 e!3491339)))

(assert (=> b!5671547 (= c!997616 ((_ is Star!15657) lt!2268120))))

(declare-fun b!5671548 () Bool)

(declare-fun e!3491337 () Regex!15657)

(declare-fun call!430231 () Regex!15657)

(assert (=> b!5671548 (= e!3491337 (Union!15657 (Concat!24502 call!430231 (regTwo!31826 lt!2268120)) EmptyLang!15657))))

(declare-fun b!5671549 () Bool)

(assert (=> b!5671549 (= e!3491338 (ite (= (head!12038 s!2326) (c!997231 lt!2268120)) EmptyExpr!15657 EmptyLang!15657))))

(declare-fun call!430229 () Regex!15657)

(declare-fun bm!430224 () Bool)

(assert (=> bm!430224 (= call!430229 (derivativeStep!4482 (ite c!997617 (regOne!31827 lt!2268120) (regOne!31826 lt!2268120)) (head!12038 s!2326)))))

(declare-fun b!5671550 () Bool)

(declare-fun e!3491335 () Regex!15657)

(assert (=> b!5671550 (= e!3491335 e!3491338)))

(declare-fun c!997618 () Bool)

(assert (=> b!5671550 (= c!997618 ((_ is ElementMatch!15657) lt!2268120))))

(declare-fun d!1790418 () Bool)

(declare-fun lt!2268356 () Regex!15657)

(assert (=> d!1790418 (validRegex!7393 lt!2268356)))

(assert (=> d!1790418 (= lt!2268356 e!3491335)))

(declare-fun c!997619 () Bool)

(assert (=> d!1790418 (= c!997619 (or ((_ is EmptyExpr!15657) lt!2268120) ((_ is EmptyLang!15657) lt!2268120)))))

(assert (=> d!1790418 (validRegex!7393 lt!2268120)))

(assert (=> d!1790418 (= (derivativeStep!4482 lt!2268120 (head!12038 s!2326)) lt!2268356)))

(declare-fun b!5671551 () Bool)

(assert (=> b!5671551 (= c!997620 (nullable!5689 (regOne!31826 lt!2268120)))))

(assert (=> b!5671551 (= e!3491339 e!3491337)))

(declare-fun bm!430225 () Bool)

(assert (=> bm!430225 (= call!430231 call!430228)))

(declare-fun b!5671552 () Bool)

(assert (=> b!5671552 (= e!3491335 EmptyLang!15657)))

(declare-fun b!5671553 () Bool)

(assert (=> b!5671553 (= e!3491337 (Union!15657 (Concat!24502 call!430229 (regTwo!31826 lt!2268120)) call!430231))))

(declare-fun bm!430226 () Bool)

(assert (=> bm!430226 (= call!430228 call!430230)))

(declare-fun b!5671554 () Bool)

(assert (=> b!5671554 (= e!3491336 (Union!15657 call!430229 call!430230))))

(assert (= (and d!1790418 c!997619) b!5671552))

(assert (= (and d!1790418 (not c!997619)) b!5671550))

(assert (= (and b!5671550 c!997618) b!5671549))

(assert (= (and b!5671550 (not c!997618)) b!5671545))

(assert (= (and b!5671545 c!997617) b!5671554))

(assert (= (and b!5671545 (not c!997617)) b!5671547))

(assert (= (and b!5671547 c!997616) b!5671546))

(assert (= (and b!5671547 (not c!997616)) b!5671551))

(assert (= (and b!5671551 c!997620) b!5671553))

(assert (= (and b!5671551 (not c!997620)) b!5671548))

(assert (= (or b!5671553 b!5671548) bm!430225))

(assert (= (or b!5671546 bm!430225) bm!430226))

(assert (= (or b!5671554 bm!430226) bm!430223))

(assert (= (or b!5671554 b!5671553) bm!430224))

(assert (=> bm!430223 m!6631876))

(declare-fun m!6632712 () Bool)

(assert (=> bm!430223 m!6632712))

(assert (=> bm!430224 m!6631876))

(declare-fun m!6632714 () Bool)

(assert (=> bm!430224 m!6632714))

(declare-fun m!6632716 () Bool)

(assert (=> d!1790418 m!6632716))

(assert (=> d!1790418 m!6631826))

(declare-fun m!6632718 () Bool)

(assert (=> b!5671551 m!6632718))

(assert (=> b!5670587 d!1790418))

(assert (=> b!5670587 d!1790346))

(assert (=> b!5670587 d!1790278))

(assert (=> d!1790092 d!1790410))

(assert (=> b!5670893 d!1790244))

(declare-fun d!1790420 () Bool)

(assert (=> d!1790420 (= (isEmpty!34998 (t!376576 lt!2268152)) ((_ is Nil!63146) (t!376576 lt!2268152)))))

(assert (=> b!5670782 d!1790420))

(declare-fun bs!1321438 () Bool)

(declare-fun b!5671555 () Bool)

(assert (= bs!1321438 (and b!5671555 d!1790126)))

(declare-fun lambda!305247 () Int)

(assert (=> bs!1321438 (not (= lambda!305247 lambda!305176))))

(declare-fun bs!1321439 () Bool)

(assert (= bs!1321439 (and b!5671555 b!5670698)))

(assert (=> bs!1321439 (= (and (= (reg!15986 (regOne!31827 lt!2268120)) (reg!15986 lt!2268141)) (= (regOne!31827 lt!2268120) lt!2268141)) (= lambda!305247 lambda!305172))))

(declare-fun bs!1321440 () Bool)

(assert (= bs!1321440 (and b!5671555 b!5670839)))

(assert (=> bs!1321440 (= (and (= (reg!15986 (regOne!31827 lt!2268120)) (reg!15986 lt!2268120)) (= (regOne!31827 lt!2268120) lt!2268120)) (= lambda!305247 lambda!305182))))

(declare-fun bs!1321441 () Bool)

(assert (= bs!1321441 (and b!5671555 d!1790038)))

(assert (=> bs!1321441 (not (= lambda!305247 lambda!305156))))

(declare-fun bs!1321442 () Bool)

(assert (= bs!1321442 (and b!5671555 d!1790390)))

(assert (=> bs!1321442 (not (= lambda!305247 lambda!305244))))

(declare-fun bs!1321443 () Bool)

(assert (= bs!1321443 (and b!5671555 d!1790100)))

(assert (=> bs!1321443 (not (= lambda!305247 lambda!305163))))

(declare-fun bs!1321444 () Bool)

(assert (= bs!1321444 (and b!5671555 d!1790094)))

(assert (=> bs!1321444 (not (= lambda!305247 lambda!305162))))

(declare-fun bs!1321445 () Bool)

(assert (= bs!1321445 (and b!5671555 b!5670845)))

(assert (=> bs!1321445 (not (= lambda!305247 lambda!305183))))

(declare-fun bs!1321446 () Bool)

(assert (= bs!1321446 (and b!5671555 b!5671471)))

(assert (=> bs!1321446 (= (and (= (reg!15986 (regOne!31827 lt!2268120)) (reg!15986 (regTwo!31827 r!7292))) (= (regOne!31827 lt!2268120) (regTwo!31827 r!7292))) (= lambda!305247 lambda!305241))))

(declare-fun bs!1321447 () Bool)

(assert (= bs!1321447 (and b!5671555 b!5670249)))

(assert (=> bs!1321447 (not (= lambda!305247 lambda!305098))))

(declare-fun bs!1321448 () Bool)

(assert (= bs!1321448 (and b!5671555 b!5671032)))

(assert (=> bs!1321448 (= (and (= (reg!15986 (regOne!31827 lt!2268120)) (reg!15986 r!7292)) (= (regOne!31827 lt!2268120) r!7292)) (= lambda!305247 lambda!305195))))

(assert (=> bs!1321441 (not (= lambda!305247 lambda!305155))))

(declare-fun bs!1321449 () Bool)

(assert (= bs!1321449 (and b!5671555 d!1790294)))

(assert (=> bs!1321449 (not (= lambda!305247 lambda!305221))))

(assert (=> bs!1321438 (not (= lambda!305247 lambda!305175))))

(assert (=> bs!1321447 (not (= lambda!305247 lambda!305101))))

(assert (=> bs!1321449 (not (= lambda!305247 lambda!305222))))

(declare-fun bs!1321450 () Bool)

(assert (= bs!1321450 (and b!5671555 b!5671038)))

(assert (=> bs!1321450 (not (= lambda!305247 lambda!305196))))

(declare-fun bs!1321451 () Bool)

(assert (= bs!1321451 (and b!5671555 d!1790314)))

(assert (=> bs!1321451 (not (= lambda!305247 lambda!305226))))

(declare-fun bs!1321452 () Bool)

(assert (= bs!1321452 (and b!5671555 d!1790034)))

(assert (=> bs!1321452 (not (= lambda!305247 lambda!305143))))

(declare-fun bs!1321453 () Bool)

(assert (= bs!1321453 (and b!5671555 b!5670241)))

(assert (=> bs!1321453 (not (= lambda!305247 lambda!305095))))

(declare-fun bs!1321454 () Bool)

(assert (= bs!1321454 (and b!5671555 b!5671477)))

(assert (=> bs!1321454 (not (= lambda!305247 lambda!305242))))

(assert (=> bs!1321447 (not (= lambda!305247 lambda!305099))))

(declare-fun bs!1321455 () Bool)

(assert (= bs!1321455 (and b!5671555 d!1790080)))

(assert (=> bs!1321455 (not (= lambda!305247 lambda!305160))))

(assert (=> bs!1321447 (not (= lambda!305247 lambda!305100))))

(declare-fun bs!1321456 () Bool)

(assert (= bs!1321456 (and b!5671555 b!5670704)))

(assert (=> bs!1321456 (not (= lambda!305247 lambda!305174))))

(assert (=> bs!1321453 (not (= lambda!305247 lambda!305096))))

(assert (=> bs!1321455 (not (= lambda!305247 lambda!305158))))

(assert (=> b!5671555 true))

(assert (=> b!5671555 true))

(declare-fun bs!1321457 () Bool)

(declare-fun b!5671561 () Bool)

(assert (= bs!1321457 (and b!5671561 d!1790126)))

(declare-fun lambda!305248 () Int)

(assert (=> bs!1321457 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268120)) lt!2268129)) (= lambda!305248 lambda!305176))))

(declare-fun bs!1321458 () Bool)

(assert (= bs!1321458 (and b!5671561 b!5670698)))

(assert (=> bs!1321458 (not (= lambda!305248 lambda!305172))))

(declare-fun bs!1321459 () Bool)

(assert (= bs!1321459 (and b!5671561 b!5670839)))

(assert (=> bs!1321459 (not (= lambda!305248 lambda!305182))))

(declare-fun bs!1321460 () Bool)

(assert (= bs!1321460 (and b!5671561 d!1790038)))

(assert (=> bs!1321460 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 lt!2268120)) (regTwo!31826 r!7292))) (= lambda!305248 lambda!305156))))

(declare-fun bs!1321461 () Bool)

(assert (= bs!1321461 (and b!5671561 d!1790390)))

(assert (=> bs!1321461 (not (= lambda!305248 lambda!305244))))

(declare-fun bs!1321462 () Bool)

(assert (= bs!1321462 (and b!5671561 d!1790100)))

(assert (=> bs!1321462 (not (= lambda!305248 lambda!305163))))

(declare-fun bs!1321463 () Bool)

(assert (= bs!1321463 (and b!5671561 d!1790094)))

(assert (=> bs!1321463 (not (= lambda!305248 lambda!305162))))

(declare-fun bs!1321464 () Bool)

(assert (= bs!1321464 (and b!5671561 b!5670845)))

(assert (=> bs!1321464 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regOne!31826 lt!2268120)) (= (regTwo!31826 (regOne!31827 lt!2268120)) (regTwo!31826 lt!2268120))) (= lambda!305248 lambda!305183))))

(declare-fun bs!1321465 () Bool)

(assert (= bs!1321465 (and b!5671561 b!5671555)))

(assert (=> bs!1321465 (not (= lambda!305248 lambda!305247))))

(declare-fun bs!1321466 () Bool)

(assert (= bs!1321466 (and b!5671561 b!5671471)))

(assert (=> bs!1321466 (not (= lambda!305248 lambda!305241))))

(declare-fun bs!1321467 () Bool)

(assert (= bs!1321467 (and b!5671561 b!5670249)))

(assert (=> bs!1321467 (not (= lambda!305248 lambda!305098))))

(declare-fun bs!1321468 () Bool)

(assert (= bs!1321468 (and b!5671561 b!5671032)))

(assert (=> bs!1321468 (not (= lambda!305248 lambda!305195))))

(assert (=> bs!1321460 (not (= lambda!305248 lambda!305155))))

(declare-fun bs!1321469 () Bool)

(assert (= bs!1321469 (and b!5671561 d!1790294)))

(assert (=> bs!1321469 (not (= lambda!305248 lambda!305221))))

(assert (=> bs!1321457 (not (= lambda!305248 lambda!305175))))

(assert (=> bs!1321467 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268120)) lt!2268129)) (= lambda!305248 lambda!305101))))

(assert (=> bs!1321469 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268120)) lt!2268129)) (= lambda!305248 lambda!305222))))

(declare-fun bs!1321470 () Bool)

(assert (= bs!1321470 (and b!5671561 b!5671038)))

(assert (=> bs!1321470 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 lt!2268120)) (regTwo!31826 r!7292))) (= lambda!305248 lambda!305196))))

(declare-fun bs!1321471 () Bool)

(assert (= bs!1321471 (and b!5671561 d!1790314)))

(assert (=> bs!1321471 (not (= lambda!305248 lambda!305226))))

(declare-fun bs!1321472 () Bool)

(assert (= bs!1321472 (and b!5671561 d!1790034)))

(assert (=> bs!1321472 (not (= lambda!305248 lambda!305143))))

(declare-fun bs!1321473 () Bool)

(assert (= bs!1321473 (and b!5671561 b!5670241)))

(assert (=> bs!1321473 (not (= lambda!305248 lambda!305095))))

(declare-fun bs!1321474 () Bool)

(assert (= bs!1321474 (and b!5671561 b!5671477)))

(assert (=> bs!1321474 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regOne!31826 (regTwo!31827 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268120)) (regTwo!31826 (regTwo!31827 r!7292)))) (= lambda!305248 lambda!305242))))

(assert (=> bs!1321467 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268120)) lt!2268120)) (= lambda!305248 lambda!305099))))

(declare-fun bs!1321475 () Bool)

(assert (= bs!1321475 (and b!5671561 d!1790080)))

(assert (=> bs!1321475 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268120)) lt!2268120)) (= lambda!305248 lambda!305160))))

(assert (=> bs!1321467 (not (= lambda!305248 lambda!305100))))

(declare-fun bs!1321476 () Bool)

(assert (= bs!1321476 (and b!5671561 b!5670704)))

(assert (=> bs!1321476 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regOne!31826 lt!2268141)) (= (regTwo!31826 (regOne!31827 lt!2268120)) (regTwo!31826 lt!2268141))) (= lambda!305248 lambda!305174))))

(assert (=> bs!1321473 (= (and (= (regOne!31826 (regOne!31827 lt!2268120)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 lt!2268120)) (regTwo!31826 r!7292))) (= lambda!305248 lambda!305096))))

(assert (=> bs!1321475 (not (= lambda!305248 lambda!305158))))

(assert (=> b!5671561 true))

(assert (=> b!5671561 true))

(declare-fun e!3491340 () Bool)

(declare-fun call!430232 () Bool)

(assert (=> b!5671555 (= e!3491340 call!430232)))

(declare-fun b!5671556 () Bool)

(declare-fun e!3491341 () Bool)

(declare-fun e!3491344 () Bool)

(assert (=> b!5671556 (= e!3491341 e!3491344)))

(declare-fun res!2396615 () Bool)

(assert (=> b!5671556 (= res!2396615 (not ((_ is EmptyLang!15657) (regOne!31827 lt!2268120))))))

(assert (=> b!5671556 (=> (not res!2396615) (not e!3491344))))

(declare-fun b!5671557 () Bool)

(declare-fun e!3491343 () Bool)

(assert (=> b!5671557 (= e!3491343 (matchRSpec!2760 (regTwo!31827 (regOne!31827 lt!2268120)) s!2326))))

(declare-fun b!5671558 () Bool)

(declare-fun c!997622 () Bool)

(assert (=> b!5671558 (= c!997622 ((_ is ElementMatch!15657) (regOne!31827 lt!2268120)))))

(declare-fun e!3491342 () Bool)

(assert (=> b!5671558 (= e!3491344 e!3491342)))

(declare-fun b!5671559 () Bool)

(declare-fun e!3491345 () Bool)

(declare-fun e!3491346 () Bool)

(assert (=> b!5671559 (= e!3491345 e!3491346)))

(declare-fun c!997621 () Bool)

(assert (=> b!5671559 (= c!997621 ((_ is Star!15657) (regOne!31827 lt!2268120)))))

(assert (=> b!5671561 (= e!3491346 call!430232)))

(declare-fun b!5671562 () Bool)

(declare-fun call!430233 () Bool)

(assert (=> b!5671562 (= e!3491341 call!430233)))

(declare-fun bm!430227 () Bool)

(assert (=> bm!430227 (= call!430233 (isEmpty!35001 s!2326))))

(declare-fun b!5671563 () Bool)

(declare-fun c!997624 () Bool)

(assert (=> b!5671563 (= c!997624 ((_ is Union!15657) (regOne!31827 lt!2268120)))))

(assert (=> b!5671563 (= e!3491342 e!3491345)))

(declare-fun bm!430228 () Bool)

(assert (=> bm!430228 (= call!430232 (Exists!2757 (ite c!997621 lambda!305247 lambda!305248)))))

(declare-fun d!1790422 () Bool)

(declare-fun c!997623 () Bool)

(assert (=> d!1790422 (= c!997623 ((_ is EmptyExpr!15657) (regOne!31827 lt!2268120)))))

(assert (=> d!1790422 (= (matchRSpec!2760 (regOne!31827 lt!2268120) s!2326) e!3491341)))

(declare-fun b!5671560 () Bool)

(declare-fun res!2396613 () Bool)

(assert (=> b!5671560 (=> res!2396613 e!3491340)))

(assert (=> b!5671560 (= res!2396613 call!430233)))

(assert (=> b!5671560 (= e!3491346 e!3491340)))

(declare-fun b!5671564 () Bool)

(assert (=> b!5671564 (= e!3491342 (= s!2326 (Cons!63147 (c!997231 (regOne!31827 lt!2268120)) Nil!63147)))))

(declare-fun b!5671565 () Bool)

(assert (=> b!5671565 (= e!3491345 e!3491343)))

(declare-fun res!2396614 () Bool)

(assert (=> b!5671565 (= res!2396614 (matchRSpec!2760 (regOne!31827 (regOne!31827 lt!2268120)) s!2326))))

(assert (=> b!5671565 (=> res!2396614 e!3491343)))

(assert (= (and d!1790422 c!997623) b!5671562))

(assert (= (and d!1790422 (not c!997623)) b!5671556))

(assert (= (and b!5671556 res!2396615) b!5671558))

(assert (= (and b!5671558 c!997622) b!5671564))

(assert (= (and b!5671558 (not c!997622)) b!5671563))

(assert (= (and b!5671563 c!997624) b!5671565))

(assert (= (and b!5671563 (not c!997624)) b!5671559))

(assert (= (and b!5671565 (not res!2396614)) b!5671557))

(assert (= (and b!5671559 c!997621) b!5671560))

(assert (= (and b!5671559 (not c!997621)) b!5671561))

(assert (= (and b!5671560 (not res!2396613)) b!5671555))

(assert (= (or b!5671555 b!5671561) bm!430228))

(assert (= (or b!5671562 b!5671560) bm!430227))

(declare-fun m!6632720 () Bool)

(assert (=> b!5671557 m!6632720))

(assert (=> bm!430227 m!6631874))

(declare-fun m!6632722 () Bool)

(assert (=> bm!430228 m!6632722))

(declare-fun m!6632724 () Bool)

(assert (=> b!5671565 m!6632724))

(assert (=> b!5670849 d!1790422))

(declare-fun d!1790424 () Bool)

(assert (=> d!1790424 (= (isEmptyLang!1197 lt!2268320) ((_ is EmptyLang!15657) lt!2268320))))

(assert (=> b!5671185 d!1790424))

(declare-fun bs!1321477 () Bool)

(declare-fun d!1790426 () Bool)

(assert (= bs!1321477 (and d!1790426 d!1790156)))

(declare-fun lambda!305249 () Int)

(assert (=> bs!1321477 (= lambda!305249 lambda!305181)))

(declare-fun bs!1321478 () Bool)

(assert (= bs!1321478 (and d!1790426 d!1790174)))

(assert (=> bs!1321478 (= lambda!305249 lambda!305184)))

(declare-fun bs!1321479 () Bool)

(assert (= bs!1321479 (and d!1790426 d!1790140)))

(assert (=> bs!1321479 (= lambda!305249 lambda!305180)))

(declare-fun bs!1321480 () Bool)

(assert (= bs!1321480 (and d!1790426 d!1790394)))

(assert (=> bs!1321480 (= lambda!305249 lambda!305245)))

(declare-fun bs!1321481 () Bool)

(assert (= bs!1321481 (and d!1790426 d!1790228)))

(assert (=> bs!1321481 (= lambda!305249 lambda!305203)))

(declare-fun bs!1321482 () Bool)

(assert (= bs!1321482 (and d!1790426 d!1790372)))

(assert (=> bs!1321482 (= lambda!305249 lambda!305243)))

(declare-fun bs!1321483 () Bool)

(assert (= bs!1321483 (and d!1790426 d!1790260)))

(assert (=> bs!1321483 (= lambda!305249 lambda!305213)))

(declare-fun bs!1321484 () Bool)

(assert (= bs!1321484 (and d!1790426 b!5671439)))

(assert (=> bs!1321484 (not (= lambda!305249 lambda!305240))))

(declare-fun bs!1321485 () Bool)

(assert (= bs!1321485 (and d!1790426 d!1790258)))

(assert (=> bs!1321485 (= lambda!305249 lambda!305210)))

(declare-fun bs!1321486 () Bool)

(assert (= bs!1321486 (and d!1790426 d!1790180)))

(assert (=> bs!1321486 (= lambda!305249 lambda!305185)))

(declare-fun bs!1321487 () Bool)

(assert (= bs!1321487 (and d!1790426 b!5671437)))

(assert (=> bs!1321487 (not (= lambda!305249 lambda!305239))))

(declare-fun bs!1321488 () Bool)

(assert (= bs!1321488 (and d!1790426 d!1790238)))

(assert (=> bs!1321488 (= lambda!305249 lambda!305204)))

(assert (=> d!1790426 (= (inv!82389 (h!69596 (t!376578 zl!343))) (forall!14810 (exprs!5541 (h!69596 (t!376578 zl!343))) lambda!305249))))

(declare-fun bs!1321489 () Bool)

(assert (= bs!1321489 d!1790426))

(declare-fun m!6632726 () Bool)

(assert (=> bs!1321489 m!6632726))

(assert (=> b!5671274 d!1790426))

(declare-fun bs!1321490 () Bool)

(declare-fun b!5671566 () Bool)

(assert (= bs!1321490 (and b!5671566 d!1790126)))

(declare-fun lambda!305250 () Int)

(assert (=> bs!1321490 (not (= lambda!305250 lambda!305176))))

(declare-fun bs!1321491 () Bool)

(assert (= bs!1321491 (and b!5671566 b!5670698)))

(assert (=> bs!1321491 (= (and (= (reg!15986 (regOne!31827 lt!2268141)) (reg!15986 lt!2268141)) (= (regOne!31827 lt!2268141) lt!2268141)) (= lambda!305250 lambda!305172))))

(declare-fun bs!1321492 () Bool)

(assert (= bs!1321492 (and b!5671566 b!5670839)))

(assert (=> bs!1321492 (= (and (= (reg!15986 (regOne!31827 lt!2268141)) (reg!15986 lt!2268120)) (= (regOne!31827 lt!2268141) lt!2268120)) (= lambda!305250 lambda!305182))))

(declare-fun bs!1321493 () Bool)

(assert (= bs!1321493 (and b!5671566 d!1790038)))

(assert (=> bs!1321493 (not (= lambda!305250 lambda!305156))))

(declare-fun bs!1321494 () Bool)

(assert (= bs!1321494 (and b!5671566 d!1790390)))

(assert (=> bs!1321494 (not (= lambda!305250 lambda!305244))))

(declare-fun bs!1321495 () Bool)

(assert (= bs!1321495 (and b!5671566 d!1790100)))

(assert (=> bs!1321495 (not (= lambda!305250 lambda!305163))))

(declare-fun bs!1321496 () Bool)

(assert (= bs!1321496 (and b!5671566 d!1790094)))

(assert (=> bs!1321496 (not (= lambda!305250 lambda!305162))))

(declare-fun bs!1321497 () Bool)

(assert (= bs!1321497 (and b!5671566 b!5670845)))

(assert (=> bs!1321497 (not (= lambda!305250 lambda!305183))))

(declare-fun bs!1321498 () Bool)

(assert (= bs!1321498 (and b!5671566 b!5671555)))

(assert (=> bs!1321498 (= (and (= (reg!15986 (regOne!31827 lt!2268141)) (reg!15986 (regOne!31827 lt!2268120))) (= (regOne!31827 lt!2268141) (regOne!31827 lt!2268120))) (= lambda!305250 lambda!305247))))

(declare-fun bs!1321499 () Bool)

(assert (= bs!1321499 (and b!5671566 b!5671471)))

(assert (=> bs!1321499 (= (and (= (reg!15986 (regOne!31827 lt!2268141)) (reg!15986 (regTwo!31827 r!7292))) (= (regOne!31827 lt!2268141) (regTwo!31827 r!7292))) (= lambda!305250 lambda!305241))))

(declare-fun bs!1321500 () Bool)

(assert (= bs!1321500 (and b!5671566 b!5670249)))

(assert (=> bs!1321500 (not (= lambda!305250 lambda!305098))))

(declare-fun bs!1321501 () Bool)

(assert (= bs!1321501 (and b!5671566 b!5671032)))

(assert (=> bs!1321501 (= (and (= (reg!15986 (regOne!31827 lt!2268141)) (reg!15986 r!7292)) (= (regOne!31827 lt!2268141) r!7292)) (= lambda!305250 lambda!305195))))

(assert (=> bs!1321493 (not (= lambda!305250 lambda!305155))))

(declare-fun bs!1321502 () Bool)

(assert (= bs!1321502 (and b!5671566 d!1790294)))

(assert (=> bs!1321502 (not (= lambda!305250 lambda!305221))))

(assert (=> bs!1321490 (not (= lambda!305250 lambda!305175))))

(assert (=> bs!1321500 (not (= lambda!305250 lambda!305101))))

(assert (=> bs!1321502 (not (= lambda!305250 lambda!305222))))

(declare-fun bs!1321503 () Bool)

(assert (= bs!1321503 (and b!5671566 b!5671038)))

(assert (=> bs!1321503 (not (= lambda!305250 lambda!305196))))

(declare-fun bs!1321504 () Bool)

(assert (= bs!1321504 (and b!5671566 b!5671561)))

(assert (=> bs!1321504 (not (= lambda!305250 lambda!305248))))

(declare-fun bs!1321505 () Bool)

(assert (= bs!1321505 (and b!5671566 d!1790314)))

(assert (=> bs!1321505 (not (= lambda!305250 lambda!305226))))

(declare-fun bs!1321506 () Bool)

(assert (= bs!1321506 (and b!5671566 d!1790034)))

(assert (=> bs!1321506 (not (= lambda!305250 lambda!305143))))

(declare-fun bs!1321507 () Bool)

(assert (= bs!1321507 (and b!5671566 b!5670241)))

(assert (=> bs!1321507 (not (= lambda!305250 lambda!305095))))

(declare-fun bs!1321508 () Bool)

(assert (= bs!1321508 (and b!5671566 b!5671477)))

(assert (=> bs!1321508 (not (= lambda!305250 lambda!305242))))

(assert (=> bs!1321500 (not (= lambda!305250 lambda!305099))))

(declare-fun bs!1321509 () Bool)

(assert (= bs!1321509 (and b!5671566 d!1790080)))

(assert (=> bs!1321509 (not (= lambda!305250 lambda!305160))))

(assert (=> bs!1321500 (not (= lambda!305250 lambda!305100))))

(declare-fun bs!1321510 () Bool)

(assert (= bs!1321510 (and b!5671566 b!5670704)))

(assert (=> bs!1321510 (not (= lambda!305250 lambda!305174))))

(assert (=> bs!1321507 (not (= lambda!305250 lambda!305096))))

(assert (=> bs!1321509 (not (= lambda!305250 lambda!305158))))

(assert (=> b!5671566 true))

(assert (=> b!5671566 true))

(declare-fun bs!1321511 () Bool)

(declare-fun b!5671572 () Bool)

(assert (= bs!1321511 (and b!5671572 d!1790126)))

(declare-fun lambda!305251 () Int)

(assert (=> bs!1321511 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268141)) lt!2268129)) (= lambda!305251 lambda!305176))))

(declare-fun bs!1321512 () Bool)

(assert (= bs!1321512 (and b!5671572 b!5670698)))

(assert (=> bs!1321512 (not (= lambda!305251 lambda!305172))))

(declare-fun bs!1321513 () Bool)

(assert (= bs!1321513 (and b!5671572 b!5670839)))

(assert (=> bs!1321513 (not (= lambda!305251 lambda!305182))))

(declare-fun bs!1321514 () Bool)

(assert (= bs!1321514 (and b!5671572 d!1790038)))

(assert (=> bs!1321514 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 lt!2268141)) (regTwo!31826 r!7292))) (= lambda!305251 lambda!305156))))

(declare-fun bs!1321515 () Bool)

(assert (= bs!1321515 (and b!5671572 d!1790390)))

(assert (=> bs!1321515 (not (= lambda!305251 lambda!305244))))

(declare-fun bs!1321516 () Bool)

(assert (= bs!1321516 (and b!5671572 d!1790100)))

(assert (=> bs!1321516 (not (= lambda!305251 lambda!305163))))

(declare-fun bs!1321517 () Bool)

(assert (= bs!1321517 (and b!5671572 d!1790094)))

(assert (=> bs!1321517 (not (= lambda!305251 lambda!305162))))

(declare-fun bs!1321518 () Bool)

(assert (= bs!1321518 (and b!5671572 b!5670845)))

(assert (=> bs!1321518 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 lt!2268120)) (= (regTwo!31826 (regOne!31827 lt!2268141)) (regTwo!31826 lt!2268120))) (= lambda!305251 lambda!305183))))

(declare-fun bs!1321519 () Bool)

(assert (= bs!1321519 (and b!5671572 b!5671555)))

(assert (=> bs!1321519 (not (= lambda!305251 lambda!305247))))

(declare-fun bs!1321520 () Bool)

(assert (= bs!1321520 (and b!5671572 b!5671471)))

(assert (=> bs!1321520 (not (= lambda!305251 lambda!305241))))

(declare-fun bs!1321521 () Bool)

(assert (= bs!1321521 (and b!5671572 b!5670249)))

(assert (=> bs!1321521 (not (= lambda!305251 lambda!305098))))

(declare-fun bs!1321522 () Bool)

(assert (= bs!1321522 (and b!5671572 b!5671032)))

(assert (=> bs!1321522 (not (= lambda!305251 lambda!305195))))

(assert (=> bs!1321514 (not (= lambda!305251 lambda!305155))))

(declare-fun bs!1321523 () Bool)

(assert (= bs!1321523 (and b!5671572 b!5671566)))

(assert (=> bs!1321523 (not (= lambda!305251 lambda!305250))))

(declare-fun bs!1321524 () Bool)

(assert (= bs!1321524 (and b!5671572 d!1790294)))

(assert (=> bs!1321524 (not (= lambda!305251 lambda!305221))))

(assert (=> bs!1321511 (not (= lambda!305251 lambda!305175))))

(assert (=> bs!1321521 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268141)) lt!2268129)) (= lambda!305251 lambda!305101))))

(assert (=> bs!1321524 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268141)) lt!2268129)) (= lambda!305251 lambda!305222))))

(declare-fun bs!1321525 () Bool)

(assert (= bs!1321525 (and b!5671572 b!5671038)))

(assert (=> bs!1321525 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 lt!2268141)) (regTwo!31826 r!7292))) (= lambda!305251 lambda!305196))))

(declare-fun bs!1321526 () Bool)

(assert (= bs!1321526 (and b!5671572 b!5671561)))

(assert (=> bs!1321526 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 (regOne!31827 lt!2268120))) (= (regTwo!31826 (regOne!31827 lt!2268141)) (regTwo!31826 (regOne!31827 lt!2268120)))) (= lambda!305251 lambda!305248))))

(declare-fun bs!1321527 () Bool)

(assert (= bs!1321527 (and b!5671572 d!1790314)))

(assert (=> bs!1321527 (not (= lambda!305251 lambda!305226))))

(declare-fun bs!1321528 () Bool)

(assert (= bs!1321528 (and b!5671572 d!1790034)))

(assert (=> bs!1321528 (not (= lambda!305251 lambda!305143))))

(declare-fun bs!1321529 () Bool)

(assert (= bs!1321529 (and b!5671572 b!5670241)))

(assert (=> bs!1321529 (not (= lambda!305251 lambda!305095))))

(declare-fun bs!1321530 () Bool)

(assert (= bs!1321530 (and b!5671572 b!5671477)))

(assert (=> bs!1321530 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 (regTwo!31827 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268141)) (regTwo!31826 (regTwo!31827 r!7292)))) (= lambda!305251 lambda!305242))))

(assert (=> bs!1321521 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268141)) lt!2268120)) (= lambda!305251 lambda!305099))))

(declare-fun bs!1321531 () Bool)

(assert (= bs!1321531 (and b!5671572 d!1790080)))

(assert (=> bs!1321531 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 lt!2268141)) lt!2268120)) (= lambda!305251 lambda!305160))))

(assert (=> bs!1321521 (not (= lambda!305251 lambda!305100))))

(declare-fun bs!1321532 () Bool)

(assert (= bs!1321532 (and b!5671572 b!5670704)))

(assert (=> bs!1321532 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 lt!2268141)) (= (regTwo!31826 (regOne!31827 lt!2268141)) (regTwo!31826 lt!2268141))) (= lambda!305251 lambda!305174))))

(assert (=> bs!1321529 (= (and (= (regOne!31826 (regOne!31827 lt!2268141)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 lt!2268141)) (regTwo!31826 r!7292))) (= lambda!305251 lambda!305096))))

(assert (=> bs!1321531 (not (= lambda!305251 lambda!305158))))

(assert (=> b!5671572 true))

(assert (=> b!5671572 true))

(declare-fun e!3491347 () Bool)

(declare-fun call!430234 () Bool)

(assert (=> b!5671566 (= e!3491347 call!430234)))

(declare-fun b!5671567 () Bool)

(declare-fun e!3491348 () Bool)

(declare-fun e!3491351 () Bool)

(assert (=> b!5671567 (= e!3491348 e!3491351)))

(declare-fun res!2396618 () Bool)

(assert (=> b!5671567 (= res!2396618 (not ((_ is EmptyLang!15657) (regOne!31827 lt!2268141))))))

(assert (=> b!5671567 (=> (not res!2396618) (not e!3491351))))

(declare-fun b!5671568 () Bool)

(declare-fun e!3491350 () Bool)

(assert (=> b!5671568 (= e!3491350 (matchRSpec!2760 (regTwo!31827 (regOne!31827 lt!2268141)) s!2326))))

(declare-fun b!5671569 () Bool)

(declare-fun c!997626 () Bool)

(assert (=> b!5671569 (= c!997626 ((_ is ElementMatch!15657) (regOne!31827 lt!2268141)))))

(declare-fun e!3491349 () Bool)

(assert (=> b!5671569 (= e!3491351 e!3491349)))

(declare-fun b!5671570 () Bool)

(declare-fun e!3491352 () Bool)

(declare-fun e!3491353 () Bool)

(assert (=> b!5671570 (= e!3491352 e!3491353)))

(declare-fun c!997625 () Bool)

(assert (=> b!5671570 (= c!997625 ((_ is Star!15657) (regOne!31827 lt!2268141)))))

(assert (=> b!5671572 (= e!3491353 call!430234)))

(declare-fun b!5671573 () Bool)

(declare-fun call!430235 () Bool)

(assert (=> b!5671573 (= e!3491348 call!430235)))

(declare-fun bm!430229 () Bool)

(assert (=> bm!430229 (= call!430235 (isEmpty!35001 s!2326))))

(declare-fun b!5671574 () Bool)

(declare-fun c!997628 () Bool)

(assert (=> b!5671574 (= c!997628 ((_ is Union!15657) (regOne!31827 lt!2268141)))))

(assert (=> b!5671574 (= e!3491349 e!3491352)))

(declare-fun bm!430230 () Bool)

(assert (=> bm!430230 (= call!430234 (Exists!2757 (ite c!997625 lambda!305250 lambda!305251)))))

(declare-fun d!1790428 () Bool)

(declare-fun c!997627 () Bool)

(assert (=> d!1790428 (= c!997627 ((_ is EmptyExpr!15657) (regOne!31827 lt!2268141)))))

(assert (=> d!1790428 (= (matchRSpec!2760 (regOne!31827 lt!2268141) s!2326) e!3491348)))

(declare-fun b!5671571 () Bool)

(declare-fun res!2396616 () Bool)

(assert (=> b!5671571 (=> res!2396616 e!3491347)))

(assert (=> b!5671571 (= res!2396616 call!430235)))

(assert (=> b!5671571 (= e!3491353 e!3491347)))

(declare-fun b!5671575 () Bool)

(assert (=> b!5671575 (= e!3491349 (= s!2326 (Cons!63147 (c!997231 (regOne!31827 lt!2268141)) Nil!63147)))))

(declare-fun b!5671576 () Bool)

(assert (=> b!5671576 (= e!3491352 e!3491350)))

(declare-fun res!2396617 () Bool)

(assert (=> b!5671576 (= res!2396617 (matchRSpec!2760 (regOne!31827 (regOne!31827 lt!2268141)) s!2326))))

(assert (=> b!5671576 (=> res!2396617 e!3491350)))

(assert (= (and d!1790428 c!997627) b!5671573))

(assert (= (and d!1790428 (not c!997627)) b!5671567))

(assert (= (and b!5671567 res!2396618) b!5671569))

(assert (= (and b!5671569 c!997626) b!5671575))

(assert (= (and b!5671569 (not c!997626)) b!5671574))

(assert (= (and b!5671574 c!997628) b!5671576))

(assert (= (and b!5671574 (not c!997628)) b!5671570))

(assert (= (and b!5671576 (not res!2396617)) b!5671568))

(assert (= (and b!5671570 c!997625) b!5671571))

(assert (= (and b!5671570 (not c!997625)) b!5671572))

(assert (= (and b!5671571 (not res!2396616)) b!5671566))

(assert (= (or b!5671566 b!5671572) bm!430230))

(assert (= (or b!5671573 b!5671571) bm!430229))

(declare-fun m!6632728 () Bool)

(assert (=> b!5671568 m!6632728))

(assert (=> bm!430229 m!6631874))

(declare-fun m!6632730 () Bool)

(assert (=> bm!430230 m!6632730))

(declare-fun m!6632732 () Bool)

(assert (=> b!5671576 m!6632732))

(assert (=> b!5670708 d!1790428))

(declare-fun d!1790430 () Bool)

(assert (=> d!1790430 (= (nullable!5689 (h!69594 (exprs!5541 lt!2268148))) (nullableFct!1774 (h!69594 (exprs!5541 lt!2268148))))))

(declare-fun bs!1321533 () Bool)

(assert (= bs!1321533 d!1790430))

(declare-fun m!6632734 () Bool)

(assert (=> bs!1321533 m!6632734))

(assert (=> b!5671029 d!1790430))

(declare-fun d!1790432 () Bool)

(declare-fun c!997629 () Bool)

(assert (=> d!1790432 (= c!997629 (isEmpty!35001 (tail!11133 (t!376577 s!2326))))))

(declare-fun e!3491354 () Bool)

(assert (=> d!1790432 (= (matchZipper!1795 (derivationStepZipper!1742 ((_ map or) lt!2268133 lt!2268136) (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))) e!3491354)))

(declare-fun b!5671577 () Bool)

(assert (=> b!5671577 (= e!3491354 (nullableZipper!1629 (derivationStepZipper!1742 ((_ map or) lt!2268133 lt!2268136) (head!12038 (t!376577 s!2326)))))))

(declare-fun b!5671578 () Bool)

(assert (=> b!5671578 (= e!3491354 (matchZipper!1795 (derivationStepZipper!1742 (derivationStepZipper!1742 ((_ map or) lt!2268133 lt!2268136) (head!12038 (t!376577 s!2326))) (head!12038 (tail!11133 (t!376577 s!2326)))) (tail!11133 (tail!11133 (t!376577 s!2326)))))))

(assert (= (and d!1790432 c!997629) b!5671577))

(assert (= (and d!1790432 (not c!997629)) b!5671578))

(assert (=> d!1790432 m!6631650))

(assert (=> d!1790432 m!6632470))

(assert (=> b!5671577 m!6631656))

(declare-fun m!6632736 () Bool)

(assert (=> b!5671577 m!6632736))

(assert (=> b!5671578 m!6631650))

(assert (=> b!5671578 m!6632474))

(assert (=> b!5671578 m!6631656))

(assert (=> b!5671578 m!6632474))

(declare-fun m!6632738 () Bool)

(assert (=> b!5671578 m!6632738))

(assert (=> b!5671578 m!6631650))

(assert (=> b!5671578 m!6632478))

(assert (=> b!5671578 m!6632738))

(assert (=> b!5671578 m!6632478))

(declare-fun m!6632740 () Bool)

(assert (=> b!5671578 m!6632740))

(assert (=> b!5670346 d!1790432))

(declare-fun bs!1321534 () Bool)

(declare-fun d!1790434 () Bool)

(assert (= bs!1321534 (and d!1790434 d!1790406)))

(declare-fun lambda!305252 () Int)

(assert (=> bs!1321534 (= (= (head!12038 (t!376577 s!2326)) (head!12038 s!2326)) (= lambda!305252 lambda!305246))))

(declare-fun bs!1321535 () Bool)

(assert (= bs!1321535 (and d!1790434 d!1790340)))

(assert (=> bs!1321535 (= lambda!305252 lambda!305228)))

(declare-fun bs!1321536 () Bool)

(assert (= bs!1321536 (and d!1790434 b!5670246)))

(assert (=> bs!1321536 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305252 lambda!305097))))

(declare-fun bs!1321537 () Bool)

(assert (= bs!1321537 (and d!1790434 d!1790256)))

(assert (=> bs!1321537 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305252 lambda!305207))))

(declare-fun bs!1321538 () Bool)

(assert (= bs!1321538 (and d!1790434 d!1790304)))

(assert (=> bs!1321538 (= lambda!305252 lambda!305223)))

(assert (=> d!1790434 true))

(assert (=> d!1790434 (= (derivationStepZipper!1742 ((_ map or) lt!2268133 lt!2268136) (head!12038 (t!376577 s!2326))) (flatMap!1270 ((_ map or) lt!2268133 lt!2268136) lambda!305252))))

(declare-fun bs!1321539 () Bool)

(assert (= bs!1321539 d!1790434))

(declare-fun m!6632742 () Bool)

(assert (=> bs!1321539 m!6632742))

(assert (=> b!5670346 d!1790434))

(assert (=> b!5670346 d!1790306))

(assert (=> b!5670346 d!1790308))

(assert (=> d!1790012 d!1790336))

(assert (=> d!1790000 d!1790012))

(assert (=> d!1790000 d!1790006))

(declare-fun e!3491357 () Bool)

(declare-fun d!1790436 () Bool)

(assert (=> d!1790436 (= (matchZipper!1795 ((_ map or) lt!2268133 lt!2268136) (t!376577 s!2326)) e!3491357)))

(declare-fun res!2396621 () Bool)

(assert (=> d!1790436 (=> res!2396621 e!3491357)))

(assert (=> d!1790436 (= res!2396621 (matchZipper!1795 lt!2268133 (t!376577 s!2326)))))

(assert (=> d!1790436 true))

(declare-fun _$48!1302 () Unit!156160)

(assert (=> d!1790436 (= (choose!42892 lt!2268133 lt!2268136 (t!376577 s!2326)) _$48!1302)))

(declare-fun b!5671581 () Bool)

(assert (=> b!5671581 (= e!3491357 (matchZipper!1795 lt!2268136 (t!376577 s!2326)))))

(assert (= (and d!1790436 (not res!2396621)) b!5671581))

(assert (=> d!1790436 m!6631436))

(assert (=> d!1790436 m!6631434))

(assert (=> b!5671581 m!6631460))

(assert (=> d!1790000 d!1790436))

(declare-fun d!1790438 () Bool)

(assert (=> d!1790438 (= (nullable!5689 lt!2268141) (nullableFct!1774 lt!2268141))))

(declare-fun bs!1321540 () Bool)

(assert (= bs!1321540 d!1790438))

(declare-fun m!6632744 () Bool)

(assert (=> bs!1321540 m!6632744))

(assert (=> b!5670806 d!1790438))

(declare-fun b!5671582 () Bool)

(declare-fun e!3491359 () (InoxSet Context!10082))

(assert (=> b!5671582 (= e!3491359 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430231 () Bool)

(declare-fun call!430241 () (InoxSet Context!10082))

(declare-fun call!430240 () (InoxSet Context!10082))

(assert (=> bm!430231 (= call!430241 call!430240)))

(declare-fun e!3491363 () Bool)

(declare-fun b!5671583 () Bool)

(assert (=> b!5671583 (= e!3491363 (nullable!5689 (regOne!31826 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343))))))))))))

(declare-fun bm!430232 () Bool)

(declare-fun call!430237 () (InoxSet Context!10082))

(assert (=> bm!430232 (= call!430237 call!430241)))

(declare-fun b!5671584 () Bool)

(assert (=> b!5671584 (= e!3491359 call!430237)))

(declare-fun b!5671585 () Bool)

(declare-fun e!3491361 () (InoxSet Context!10082))

(declare-fun call!430238 () (InoxSet Context!10082))

(assert (=> b!5671585 (= e!3491361 ((_ map or) call!430238 call!430241))))

(declare-fun e!3491358 () (InoxSet Context!10082))

(declare-fun b!5671586 () Bool)

(assert (=> b!5671586 (= e!3491358 (store ((as const (Array Context!10082 Bool)) false) (ite (or c!997471 c!997472) lt!2268148 (Context!10083 call!430147)) true))))

(declare-fun c!997633 () Bool)

(declare-fun d!1790440 () Bool)

(assert (=> d!1790440 (= c!997633 (and ((_ is ElementMatch!15657) (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))) (= (c!997231 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))) (h!69595 s!2326))))))

(assert (=> d!1790440 (= (derivationStepZipperDown!999 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343))))))) (ite (or c!997471 c!997472) lt!2268148 (Context!10083 call!430147)) (h!69595 s!2326)) e!3491358)))

(declare-fun b!5671587 () Bool)

(declare-fun e!3491360 () (InoxSet Context!10082))

(assert (=> b!5671587 (= e!3491360 call!430237)))

(declare-fun b!5671588 () Bool)

(declare-fun c!997634 () Bool)

(assert (=> b!5671588 (= c!997634 ((_ is Star!15657) (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))))

(assert (=> b!5671588 (= e!3491360 e!3491359)))

(declare-fun bm!430233 () Bool)

(declare-fun call!430239 () List!63270)

(declare-fun call!430236 () List!63270)

(assert (=> bm!430233 (= call!430239 call!430236)))

(declare-fun c!997631 () Bool)

(declare-fun bm!430234 () Bool)

(assert (=> bm!430234 (= call!430238 (derivationStepZipperDown!999 (ite c!997631 (regOne!31827 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))) (regOne!31826 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343))))))))) (ite c!997631 (ite (or c!997471 c!997472) lt!2268148 (Context!10083 call!430147)) (Context!10083 call!430236)) (h!69595 s!2326)))))

(declare-fun b!5671589 () Bool)

(declare-fun c!997632 () Bool)

(assert (=> b!5671589 (= c!997632 e!3491363)))

(declare-fun res!2396622 () Bool)

(assert (=> b!5671589 (=> (not res!2396622) (not e!3491363))))

(assert (=> b!5671589 (= res!2396622 ((_ is Concat!24502) (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))))

(declare-fun e!3491362 () (InoxSet Context!10082))

(assert (=> b!5671589 (= e!3491362 e!3491361)))

(declare-fun b!5671590 () Bool)

(assert (=> b!5671590 (= e!3491361 e!3491360)))

(declare-fun c!997630 () Bool)

(assert (=> b!5671590 (= c!997630 ((_ is Concat!24502) (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))))

(declare-fun b!5671591 () Bool)

(assert (=> b!5671591 (= e!3491362 ((_ map or) call!430238 call!430240))))

(declare-fun bm!430235 () Bool)

(assert (=> bm!430235 (= call!430240 (derivationStepZipperDown!999 (ite c!997631 (regTwo!31827 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))) (ite c!997632 (regTwo!31826 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))) (ite c!997630 (regOne!31826 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))) (reg!15986 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343))))))))))) (ite (or c!997631 c!997632) (ite (or c!997471 c!997472) lt!2268148 (Context!10083 call!430147)) (Context!10083 call!430239)) (h!69595 s!2326)))))

(declare-fun bm!430236 () Bool)

(assert (=> bm!430236 (= call!430236 ($colon$colon!1695 (exprs!5541 (ite (or c!997471 c!997472) lt!2268148 (Context!10083 call!430147))) (ite (or c!997632 c!997630) (regTwo!31826 (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))) (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343))))))))))))

(declare-fun b!5671592 () Bool)

(assert (=> b!5671592 (= e!3491358 e!3491362)))

(assert (=> b!5671592 (= c!997631 ((_ is Union!15657) (ite c!997471 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997472 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997470 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))))

(assert (= (and d!1790440 c!997633) b!5671586))

(assert (= (and d!1790440 (not c!997633)) b!5671592))

(assert (= (and b!5671592 c!997631) b!5671591))

(assert (= (and b!5671592 (not c!997631)) b!5671589))

(assert (= (and b!5671589 res!2396622) b!5671583))

(assert (= (and b!5671589 c!997632) b!5671585))

(assert (= (and b!5671589 (not c!997632)) b!5671590))

(assert (= (and b!5671590 c!997630) b!5671587))

(assert (= (and b!5671590 (not c!997630)) b!5671588))

(assert (= (and b!5671588 c!997634) b!5671584))

(assert (= (and b!5671588 (not c!997634)) b!5671582))

(assert (= (or b!5671587 b!5671584) bm!430233))

(assert (= (or b!5671587 b!5671584) bm!430232))

(assert (= (or b!5671585 bm!430233) bm!430236))

(assert (= (or b!5671585 bm!430232) bm!430231))

(assert (= (or b!5671591 bm!430231) bm!430235))

(assert (= (or b!5671591 b!5671585) bm!430234))

(declare-fun m!6632746 () Bool)

(assert (=> bm!430235 m!6632746))

(declare-fun m!6632748 () Bool)

(assert (=> bm!430234 m!6632748))

(declare-fun m!6632750 () Bool)

(assert (=> b!5671583 m!6632750))

(declare-fun m!6632752 () Bool)

(assert (=> bm!430236 m!6632752))

(declare-fun m!6632754 () Bool)

(assert (=> b!5671586 m!6632754))

(assert (=> bm!430143 d!1790440))

(declare-fun b!5671593 () Bool)

(declare-fun res!2396623 () Bool)

(declare-fun e!3491368 () Bool)

(assert (=> b!5671593 (=> (not res!2396623) (not e!3491368))))

(declare-fun call!430242 () Bool)

(assert (=> b!5671593 (= res!2396623 (not call!430242))))

(declare-fun b!5671594 () Bool)

(declare-fun e!3491366 () Bool)

(declare-fun e!3491367 () Bool)

(assert (=> b!5671594 (= e!3491366 e!3491367)))

(declare-fun c!997635 () Bool)

(assert (=> b!5671594 (= c!997635 ((_ is EmptyLang!15657) (derivativeStep!4482 r!7292 (head!12038 s!2326))))))

(declare-fun b!5671595 () Bool)

(declare-fun e!3491364 () Bool)

(assert (=> b!5671595 (= e!3491364 (matchR!7842 (derivativeStep!4482 (derivativeStep!4482 r!7292 (head!12038 s!2326)) (head!12038 (tail!11133 s!2326))) (tail!11133 (tail!11133 s!2326))))))

(declare-fun b!5671596 () Bool)

(assert (=> b!5671596 (= e!3491364 (nullable!5689 (derivativeStep!4482 r!7292 (head!12038 s!2326))))))

(declare-fun bm!430237 () Bool)

(assert (=> bm!430237 (= call!430242 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun b!5671597 () Bool)

(declare-fun res!2396624 () Bool)

(assert (=> b!5671597 (=> (not res!2396624) (not e!3491368))))

(assert (=> b!5671597 (= res!2396624 (isEmpty!35001 (tail!11133 (tail!11133 s!2326))))))

(declare-fun b!5671598 () Bool)

(declare-fun e!3491369 () Bool)

(declare-fun e!3491365 () Bool)

(assert (=> b!5671598 (= e!3491369 e!3491365)))

(declare-fun res!2396628 () Bool)

(assert (=> b!5671598 (=> (not res!2396628) (not e!3491365))))

(declare-fun lt!2268357 () Bool)

(assert (=> b!5671598 (= res!2396628 (not lt!2268357))))

(declare-fun b!5671599 () Bool)

(declare-fun e!3491370 () Bool)

(assert (=> b!5671599 (= e!3491365 e!3491370)))

(declare-fun res!2396626 () Bool)

(assert (=> b!5671599 (=> res!2396626 e!3491370)))

(assert (=> b!5671599 (= res!2396626 call!430242)))

(declare-fun d!1790442 () Bool)

(assert (=> d!1790442 e!3491366))

(declare-fun c!997636 () Bool)

(assert (=> d!1790442 (= c!997636 ((_ is EmptyExpr!15657) (derivativeStep!4482 r!7292 (head!12038 s!2326))))))

(assert (=> d!1790442 (= lt!2268357 e!3491364)))

(declare-fun c!997637 () Bool)

(assert (=> d!1790442 (= c!997637 (isEmpty!35001 (tail!11133 s!2326)))))

(assert (=> d!1790442 (validRegex!7393 (derivativeStep!4482 r!7292 (head!12038 s!2326)))))

(assert (=> d!1790442 (= (matchR!7842 (derivativeStep!4482 r!7292 (head!12038 s!2326)) (tail!11133 s!2326)) lt!2268357)))

(declare-fun b!5671600 () Bool)

(assert (=> b!5671600 (= e!3491370 (not (= (head!12038 (tail!11133 s!2326)) (c!997231 (derivativeStep!4482 r!7292 (head!12038 s!2326))))))))

(declare-fun b!5671601 () Bool)

(declare-fun res!2396625 () Bool)

(assert (=> b!5671601 (=> res!2396625 e!3491369)))

(assert (=> b!5671601 (= res!2396625 e!3491368)))

(declare-fun res!2396627 () Bool)

(assert (=> b!5671601 (=> (not res!2396627) (not e!3491368))))

(assert (=> b!5671601 (= res!2396627 lt!2268357)))

(declare-fun b!5671602 () Bool)

(assert (=> b!5671602 (= e!3491367 (not lt!2268357))))

(declare-fun b!5671603 () Bool)

(assert (=> b!5671603 (= e!3491366 (= lt!2268357 call!430242))))

(declare-fun b!5671604 () Bool)

(declare-fun res!2396630 () Bool)

(assert (=> b!5671604 (=> res!2396630 e!3491370)))

(assert (=> b!5671604 (= res!2396630 (not (isEmpty!35001 (tail!11133 (tail!11133 s!2326)))))))

(declare-fun b!5671605 () Bool)

(assert (=> b!5671605 (= e!3491368 (= (head!12038 (tail!11133 s!2326)) (c!997231 (derivativeStep!4482 r!7292 (head!12038 s!2326)))))))

(declare-fun b!5671606 () Bool)

(declare-fun res!2396629 () Bool)

(assert (=> b!5671606 (=> res!2396629 e!3491369)))

(assert (=> b!5671606 (= res!2396629 (not ((_ is ElementMatch!15657) (derivativeStep!4482 r!7292 (head!12038 s!2326)))))))

(assert (=> b!5671606 (= e!3491367 e!3491369)))

(assert (= (and d!1790442 c!997637) b!5671596))

(assert (= (and d!1790442 (not c!997637)) b!5671595))

(assert (= (and d!1790442 c!997636) b!5671603))

(assert (= (and d!1790442 (not c!997636)) b!5671594))

(assert (= (and b!5671594 c!997635) b!5671602))

(assert (= (and b!5671594 (not c!997635)) b!5671606))

(assert (= (and b!5671606 (not res!2396629)) b!5671601))

(assert (= (and b!5671601 res!2396627) b!5671593))

(assert (= (and b!5671593 res!2396623) b!5671597))

(assert (= (and b!5671597 res!2396624) b!5671605))

(assert (= (and b!5671601 (not res!2396625)) b!5671598))

(assert (= (and b!5671598 res!2396628) b!5671599))

(assert (= (and b!5671599 (not res!2396626)) b!5671604))

(assert (= (and b!5671604 (not res!2396630)) b!5671600))

(assert (= (or b!5671603 b!5671593 b!5671599) bm!430237))

(assert (=> b!5671597 m!6631868))

(assert (=> b!5671597 m!6632536))

(assert (=> b!5671597 m!6632536))

(assert (=> b!5671597 m!6632538))

(assert (=> b!5671604 m!6631868))

(assert (=> b!5671604 m!6632536))

(assert (=> b!5671604 m!6632536))

(assert (=> b!5671604 m!6632538))

(assert (=> d!1790442 m!6631868))

(assert (=> d!1790442 m!6631870))

(assert (=> d!1790442 m!6632328))

(declare-fun m!6632756 () Bool)

(assert (=> d!1790442 m!6632756))

(assert (=> b!5671605 m!6631868))

(assert (=> b!5671605 m!6632542))

(assert (=> b!5671595 m!6631868))

(assert (=> b!5671595 m!6632542))

(assert (=> b!5671595 m!6632328))

(assert (=> b!5671595 m!6632542))

(declare-fun m!6632758 () Bool)

(assert (=> b!5671595 m!6632758))

(assert (=> b!5671595 m!6631868))

(assert (=> b!5671595 m!6632536))

(assert (=> b!5671595 m!6632758))

(assert (=> b!5671595 m!6632536))

(declare-fun m!6632760 () Bool)

(assert (=> b!5671595 m!6632760))

(assert (=> b!5671596 m!6632328))

(declare-fun m!6632762 () Bool)

(assert (=> b!5671596 m!6632762))

(assert (=> b!5671600 m!6631868))

(assert (=> b!5671600 m!6632542))

(assert (=> bm!430237 m!6631868))

(assert (=> bm!430237 m!6631870))

(assert (=> b!5671058 d!1790442))

(declare-fun bm!430238 () Bool)

(declare-fun c!997639 () Bool)

(declare-fun c!997642 () Bool)

(declare-fun call!430245 () Regex!15657)

(declare-fun c!997638 () Bool)

(assert (=> bm!430238 (= call!430245 (derivativeStep!4482 (ite c!997639 (regTwo!31827 r!7292) (ite c!997638 (reg!15986 r!7292) (ite c!997642 (regTwo!31826 r!7292) (regOne!31826 r!7292)))) (head!12038 s!2326)))))

(declare-fun b!5671607 () Bool)

(assert (=> b!5671607 (= c!997639 ((_ is Union!15657) r!7292))))

(declare-fun e!3491374 () Regex!15657)

(declare-fun e!3491372 () Regex!15657)

(assert (=> b!5671607 (= e!3491374 e!3491372)))

(declare-fun b!5671608 () Bool)

(declare-fun e!3491375 () Regex!15657)

(declare-fun call!430243 () Regex!15657)

(assert (=> b!5671608 (= e!3491375 (Concat!24502 call!430243 r!7292))))

(declare-fun b!5671609 () Bool)

(assert (=> b!5671609 (= e!3491372 e!3491375)))

(assert (=> b!5671609 (= c!997638 ((_ is Star!15657) r!7292))))

(declare-fun b!5671610 () Bool)

(declare-fun e!3491373 () Regex!15657)

(declare-fun call!430246 () Regex!15657)

(assert (=> b!5671610 (= e!3491373 (Union!15657 (Concat!24502 call!430246 (regTwo!31826 r!7292)) EmptyLang!15657))))

(declare-fun b!5671611 () Bool)

(assert (=> b!5671611 (= e!3491374 (ite (= (head!12038 s!2326) (c!997231 r!7292)) EmptyExpr!15657 EmptyLang!15657))))

(declare-fun bm!430239 () Bool)

(declare-fun call!430244 () Regex!15657)

(assert (=> bm!430239 (= call!430244 (derivativeStep!4482 (ite c!997639 (regOne!31827 r!7292) (regOne!31826 r!7292)) (head!12038 s!2326)))))

(declare-fun b!5671612 () Bool)

(declare-fun e!3491371 () Regex!15657)

(assert (=> b!5671612 (= e!3491371 e!3491374)))

(declare-fun c!997640 () Bool)

(assert (=> b!5671612 (= c!997640 ((_ is ElementMatch!15657) r!7292))))

(declare-fun d!1790444 () Bool)

(declare-fun lt!2268358 () Regex!15657)

(assert (=> d!1790444 (validRegex!7393 lt!2268358)))

(assert (=> d!1790444 (= lt!2268358 e!3491371)))

(declare-fun c!997641 () Bool)

(assert (=> d!1790444 (= c!997641 (or ((_ is EmptyExpr!15657) r!7292) ((_ is EmptyLang!15657) r!7292)))))

(assert (=> d!1790444 (validRegex!7393 r!7292)))

(assert (=> d!1790444 (= (derivativeStep!4482 r!7292 (head!12038 s!2326)) lt!2268358)))

(declare-fun b!5671613 () Bool)

(assert (=> b!5671613 (= c!997642 (nullable!5689 (regOne!31826 r!7292)))))

(assert (=> b!5671613 (= e!3491375 e!3491373)))

(declare-fun bm!430240 () Bool)

(assert (=> bm!430240 (= call!430246 call!430243)))

(declare-fun b!5671614 () Bool)

(assert (=> b!5671614 (= e!3491371 EmptyLang!15657)))

(declare-fun b!5671615 () Bool)

(assert (=> b!5671615 (= e!3491373 (Union!15657 (Concat!24502 call!430244 (regTwo!31826 r!7292)) call!430246))))

(declare-fun bm!430241 () Bool)

(assert (=> bm!430241 (= call!430243 call!430245)))

(declare-fun b!5671616 () Bool)

(assert (=> b!5671616 (= e!3491372 (Union!15657 call!430244 call!430245))))

(assert (= (and d!1790444 c!997641) b!5671614))

(assert (= (and d!1790444 (not c!997641)) b!5671612))

(assert (= (and b!5671612 c!997640) b!5671611))

(assert (= (and b!5671612 (not c!997640)) b!5671607))

(assert (= (and b!5671607 c!997639) b!5671616))

(assert (= (and b!5671607 (not c!997639)) b!5671609))

(assert (= (and b!5671609 c!997638) b!5671608))

(assert (= (and b!5671609 (not c!997638)) b!5671613))

(assert (= (and b!5671613 c!997642) b!5671615))

(assert (= (and b!5671613 (not c!997642)) b!5671610))

(assert (= (or b!5671615 b!5671610) bm!430240))

(assert (= (or b!5671608 bm!430240) bm!430241))

(assert (= (or b!5671616 bm!430241) bm!430238))

(assert (= (or b!5671616 b!5671615) bm!430239))

(assert (=> bm!430238 m!6631876))

(declare-fun m!6632764 () Bool)

(assert (=> bm!430238 m!6632764))

(assert (=> bm!430239 m!6631876))

(declare-fun m!6632766 () Bool)

(assert (=> bm!430239 m!6632766))

(declare-fun m!6632768 () Bool)

(assert (=> d!1790444 m!6632768))

(assert (=> d!1790444 m!6631468))

(assert (=> b!5671613 m!6632506))

(assert (=> b!5671058 d!1790444))

(assert (=> b!5671058 d!1790346))

(assert (=> b!5671058 d!1790278))

(declare-fun d!1790446 () Bool)

(declare-fun res!2396631 () Bool)

(declare-fun e!3491376 () Bool)

(assert (=> d!1790446 (=> res!2396631 e!3491376)))

(assert (=> d!1790446 (= res!2396631 ((_ is Nil!63146) (exprs!5541 (h!69596 zl!343))))))

(assert (=> d!1790446 (= (forall!14810 (exprs!5541 (h!69596 zl!343)) lambda!305203) e!3491376)))

(declare-fun b!5671617 () Bool)

(declare-fun e!3491377 () Bool)

(assert (=> b!5671617 (= e!3491376 e!3491377)))

(declare-fun res!2396632 () Bool)

(assert (=> b!5671617 (=> (not res!2396632) (not e!3491377))))

(assert (=> b!5671617 (= res!2396632 (dynLambda!24716 lambda!305203 (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5671618 () Bool)

(assert (=> b!5671618 (= e!3491377 (forall!14810 (t!376576 (exprs!5541 (h!69596 zl!343))) lambda!305203))))

(assert (= (and d!1790446 (not res!2396631)) b!5671617))

(assert (= (and b!5671617 res!2396632) b!5671618))

(declare-fun b_lambda!214519 () Bool)

(assert (=> (not b_lambda!214519) (not b!5671617)))

(declare-fun m!6632770 () Bool)

(assert (=> b!5671617 m!6632770))

(declare-fun m!6632772 () Bool)

(assert (=> b!5671618 m!6632772))

(assert (=> d!1790228 d!1790446))

(declare-fun d!1790448 () Bool)

(declare-fun c!997645 () Bool)

(assert (=> d!1790448 (= c!997645 ((_ is Nil!63148) lt!2268316))))

(declare-fun e!3491380 () (InoxSet Context!10082))

(assert (=> d!1790448 (= (content!11433 lt!2268316) e!3491380)))

(declare-fun b!5671623 () Bool)

(assert (=> b!5671623 (= e!3491380 ((as const (Array Context!10082 Bool)) false))))

(declare-fun b!5671624 () Bool)

(assert (=> b!5671624 (= e!3491380 ((_ map or) (store ((as const (Array Context!10082 Bool)) false) (h!69596 lt!2268316) true) (content!11433 (t!376578 lt!2268316))))))

(assert (= (and d!1790448 c!997645) b!5671623))

(assert (= (and d!1790448 (not c!997645)) b!5671624))

(declare-fun m!6632774 () Bool)

(assert (=> b!5671624 m!6632774))

(declare-fun m!6632776 () Bool)

(assert (=> b!5671624 m!6632776))

(assert (=> b!5671151 d!1790448))

(assert (=> d!1790082 d!1790410))

(assert (=> b!5670814 d!1790276))

(assert (=> b!5670814 d!1790278))

(declare-fun d!1790450 () Bool)

(declare-fun c!997647 () Bool)

(declare-fun e!3491383 () Bool)

(assert (=> d!1790450 (= c!997647 e!3491383)))

(declare-fun res!2396633 () Bool)

(assert (=> d!1790450 (=> (not res!2396633) (not e!3491383))))

(assert (=> d!1790450 (= res!2396633 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119))))))))

(declare-fun e!3491382 () (InoxSet Context!10082))

(assert (=> d!1790450 (= (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 lt!2268119))) (h!69595 s!2326)) e!3491382)))

(declare-fun b!5671625 () Bool)

(declare-fun e!3491381 () (InoxSet Context!10082))

(assert (=> b!5671625 (= e!3491382 e!3491381)))

(declare-fun c!997646 () Bool)

(assert (=> b!5671625 (= c!997646 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119))))))))

(declare-fun b!5671626 () Bool)

(assert (=> b!5671626 (= e!3491381 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430242 () Bool)

(declare-fun call!430247 () (InoxSet Context!10082))

(assert (=> bm!430242 (= call!430247 (derivationStepZipperDown!999 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119))))) (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119)))))) (h!69595 s!2326)))))

(declare-fun b!5671627 () Bool)

(assert (=> b!5671627 (= e!3491383 (nullable!5689 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119)))))))))

(declare-fun b!5671628 () Bool)

(assert (=> b!5671628 (= e!3491382 ((_ map or) call!430247 (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119)))))) (h!69595 s!2326))))))

(declare-fun b!5671629 () Bool)

(assert (=> b!5671629 (= e!3491381 call!430247)))

(assert (= (and d!1790450 res!2396633) b!5671627))

(assert (= (and d!1790450 c!997647) b!5671628))

(assert (= (and d!1790450 (not c!997647)) b!5671625))

(assert (= (and b!5671625 c!997646) b!5671629))

(assert (= (and b!5671625 (not c!997646)) b!5671626))

(assert (= (or b!5671628 b!5671629) bm!430242))

(declare-fun m!6632778 () Bool)

(assert (=> bm!430242 m!6632778))

(declare-fun m!6632780 () Bool)

(assert (=> b!5671627 m!6632780))

(declare-fun m!6632782 () Bool)

(assert (=> b!5671628 m!6632782))

(assert (=> b!5671155 d!1790450))

(declare-fun b!5671630 () Bool)

(declare-fun res!2396634 () Bool)

(declare-fun e!3491388 () Bool)

(assert (=> b!5671630 (=> (not res!2396634) (not e!3491388))))

(declare-fun call!430248 () Bool)

(assert (=> b!5671630 (= res!2396634 (not call!430248))))

(declare-fun b!5671631 () Bool)

(declare-fun e!3491386 () Bool)

(declare-fun e!3491387 () Bool)

(assert (=> b!5671631 (= e!3491386 e!3491387)))

(declare-fun c!997648 () Bool)

(assert (=> b!5671631 (= c!997648 ((_ is EmptyLang!15657) (regTwo!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671632 () Bool)

(declare-fun e!3491384 () Bool)

(assert (=> b!5671632 (= e!3491384 (matchR!7842 (derivativeStep!4482 (regTwo!31826 (regOne!31826 r!7292)) (head!12038 (_1!36057 (get!21758 lt!2268251)))) (tail!11133 (_1!36057 (get!21758 lt!2268251)))))))

(declare-fun b!5671633 () Bool)

(assert (=> b!5671633 (= e!3491384 (nullable!5689 (regTwo!31826 (regOne!31826 r!7292))))))

(declare-fun bm!430243 () Bool)

(assert (=> bm!430243 (= call!430248 (isEmpty!35001 (_1!36057 (get!21758 lt!2268251))))))

(declare-fun b!5671634 () Bool)

(declare-fun res!2396635 () Bool)

(assert (=> b!5671634 (=> (not res!2396635) (not e!3491388))))

(assert (=> b!5671634 (= res!2396635 (isEmpty!35001 (tail!11133 (_1!36057 (get!21758 lt!2268251)))))))

(declare-fun b!5671635 () Bool)

(declare-fun e!3491389 () Bool)

(declare-fun e!3491385 () Bool)

(assert (=> b!5671635 (= e!3491389 e!3491385)))

(declare-fun res!2396639 () Bool)

(assert (=> b!5671635 (=> (not res!2396639) (not e!3491385))))

(declare-fun lt!2268359 () Bool)

(assert (=> b!5671635 (= res!2396639 (not lt!2268359))))

(declare-fun b!5671636 () Bool)

(declare-fun e!3491390 () Bool)

(assert (=> b!5671636 (= e!3491385 e!3491390)))

(declare-fun res!2396637 () Bool)

(assert (=> b!5671636 (=> res!2396637 e!3491390)))

(assert (=> b!5671636 (= res!2396637 call!430248)))

(declare-fun d!1790452 () Bool)

(assert (=> d!1790452 e!3491386))

(declare-fun c!997649 () Bool)

(assert (=> d!1790452 (= c!997649 ((_ is EmptyExpr!15657) (regTwo!31826 (regOne!31826 r!7292))))))

(assert (=> d!1790452 (= lt!2268359 e!3491384)))

(declare-fun c!997650 () Bool)

(assert (=> d!1790452 (= c!997650 (isEmpty!35001 (_1!36057 (get!21758 lt!2268251))))))

(assert (=> d!1790452 (validRegex!7393 (regTwo!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790452 (= (matchR!7842 (regTwo!31826 (regOne!31826 r!7292)) (_1!36057 (get!21758 lt!2268251))) lt!2268359)))

(declare-fun b!5671637 () Bool)

(assert (=> b!5671637 (= e!3491390 (not (= (head!12038 (_1!36057 (get!21758 lt!2268251))) (c!997231 (regTwo!31826 (regOne!31826 r!7292))))))))

(declare-fun b!5671638 () Bool)

(declare-fun res!2396636 () Bool)

(assert (=> b!5671638 (=> res!2396636 e!3491389)))

(assert (=> b!5671638 (= res!2396636 e!3491388)))

(declare-fun res!2396638 () Bool)

(assert (=> b!5671638 (=> (not res!2396638) (not e!3491388))))

(assert (=> b!5671638 (= res!2396638 lt!2268359)))

(declare-fun b!5671639 () Bool)

(assert (=> b!5671639 (= e!3491387 (not lt!2268359))))

(declare-fun b!5671640 () Bool)

(assert (=> b!5671640 (= e!3491386 (= lt!2268359 call!430248))))

(declare-fun b!5671641 () Bool)

(declare-fun res!2396641 () Bool)

(assert (=> b!5671641 (=> res!2396641 e!3491390)))

(assert (=> b!5671641 (= res!2396641 (not (isEmpty!35001 (tail!11133 (_1!36057 (get!21758 lt!2268251))))))))

(declare-fun b!5671642 () Bool)

(assert (=> b!5671642 (= e!3491388 (= (head!12038 (_1!36057 (get!21758 lt!2268251))) (c!997231 (regTwo!31826 (regOne!31826 r!7292)))))))

(declare-fun b!5671643 () Bool)

(declare-fun res!2396640 () Bool)

(assert (=> b!5671643 (=> res!2396640 e!3491389)))

(assert (=> b!5671643 (= res!2396640 (not ((_ is ElementMatch!15657) (regTwo!31826 (regOne!31826 r!7292)))))))

(assert (=> b!5671643 (= e!3491387 e!3491389)))

(assert (= (and d!1790452 c!997650) b!5671633))

(assert (= (and d!1790452 (not c!997650)) b!5671632))

(assert (= (and d!1790452 c!997649) b!5671640))

(assert (= (and d!1790452 (not c!997649)) b!5671631))

(assert (= (and b!5671631 c!997648) b!5671639))

(assert (= (and b!5671631 (not c!997648)) b!5671643))

(assert (= (and b!5671643 (not res!2396640)) b!5671638))

(assert (= (and b!5671638 res!2396638) b!5671630))

(assert (= (and b!5671630 res!2396634) b!5671634))

(assert (= (and b!5671634 res!2396635) b!5671642))

(assert (= (and b!5671638 (not res!2396636)) b!5671635))

(assert (= (and b!5671635 res!2396639) b!5671636))

(assert (= (and b!5671636 (not res!2396637)) b!5671641))

(assert (= (and b!5671641 (not res!2396641)) b!5671637))

(assert (= (or b!5671640 b!5671630 b!5671636) bm!430243))

(declare-fun m!6632784 () Bool)

(assert (=> b!5671634 m!6632784))

(assert (=> b!5671634 m!6632784))

(declare-fun m!6632786 () Bool)

(assert (=> b!5671634 m!6632786))

(assert (=> b!5671641 m!6632784))

(assert (=> b!5671641 m!6632784))

(assert (=> b!5671641 m!6632786))

(declare-fun m!6632788 () Bool)

(assert (=> d!1790452 m!6632788))

(assert (=> d!1790452 m!6631916))

(declare-fun m!6632790 () Bool)

(assert (=> b!5671642 m!6632790))

(assert (=> b!5671632 m!6632790))

(assert (=> b!5671632 m!6632790))

(declare-fun m!6632792 () Bool)

(assert (=> b!5671632 m!6632792))

(assert (=> b!5671632 m!6632784))

(assert (=> b!5671632 m!6632792))

(assert (=> b!5671632 m!6632784))

(declare-fun m!6632794 () Bool)

(assert (=> b!5671632 m!6632794))

(assert (=> b!5671633 m!6632514))

(assert (=> b!5671637 m!6632790))

(assert (=> bm!430243 m!6632788))

(assert (=> b!5670619 d!1790452))

(declare-fun d!1790454 () Bool)

(assert (=> d!1790454 (= (get!21758 lt!2268251) (v!51714 lt!2268251))))

(assert (=> b!5670619 d!1790454))

(assert (=> bs!1321258 d!1790194))

(assert (=> b!5670810 d!1790346))

(declare-fun d!1790456 () Bool)

(assert (=> d!1790456 (= (isConcat!710 lt!2268278) ((_ is Concat!24502) lt!2268278))))

(assert (=> b!5670795 d!1790456))

(declare-fun d!1790458 () Bool)

(assert (=> d!1790458 true))

(assert (=> d!1790458 true))

(declare-fun res!2396642 () Bool)

(assert (=> d!1790458 (= (choose!42894 lambda!305099) res!2396642)))

(assert (=> d!1790154 d!1790458))

(declare-fun d!1790460 () Bool)

(assert (=> d!1790460 (= (nullable!5689 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))) (nullableFct!1774 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun bs!1321541 () Bool)

(assert (= bs!1321541 d!1790460))

(declare-fun m!6632796 () Bool)

(assert (=> bs!1321541 m!6632796))

(assert (=> b!5671003 d!1790460))

(declare-fun bs!1321542 () Bool)

(declare-fun d!1790462 () Bool)

(assert (= bs!1321542 (and d!1790462 d!1790330)))

(declare-fun lambda!305253 () Int)

(assert (=> bs!1321542 (= lambda!305253 lambda!305227)))

(declare-fun bs!1321543 () Bool)

(assert (= bs!1321543 (and d!1790462 b!5671425)))

(assert (=> bs!1321543 (not (= lambda!305253 lambda!305230))))

(declare-fun bs!1321544 () Bool)

(assert (= bs!1321544 (and d!1790462 d!1790286)))

(assert (=> bs!1321544 (= lambda!305253 lambda!305216)))

(declare-fun bs!1321545 () Bool)

(assert (= bs!1321545 (and d!1790462 b!5670286)))

(assert (=> bs!1321545 (not (= lambda!305253 lambda!305110))))

(declare-fun bs!1321546 () Bool)

(assert (= bs!1321546 (and d!1790462 b!5670291)))

(assert (=> bs!1321546 (not (= lambda!305253 lambda!305113))))

(declare-fun bs!1321547 () Bool)

(assert (= bs!1321547 (and d!1790462 b!5670289)))

(assert (=> bs!1321547 (not (= lambda!305253 lambda!305112))))

(declare-fun bs!1321548 () Bool)

(assert (= bs!1321548 (and d!1790462 b!5670284)))

(assert (=> bs!1321548 (not (= lambda!305253 lambda!305109))))

(declare-fun bs!1321549 () Bool)

(assert (= bs!1321549 (and d!1790462 b!5671427)))

(assert (=> bs!1321549 (not (= lambda!305253 lambda!305231))))

(declare-fun bs!1321550 () Bool)

(assert (= bs!1321550 (and d!1790462 d!1790356)))

(assert (=> bs!1321550 (not (= lambda!305253 lambda!305234))))

(assert (=> d!1790462 (= (nullableZipper!1629 z!1189) (exists!2203 z!1189 lambda!305253))))

(declare-fun bs!1321551 () Bool)

(assert (= bs!1321551 d!1790462))

(declare-fun m!6632798 () Bool)

(assert (=> bs!1321551 m!6632798))

(assert (=> b!5670610 d!1790462))

(assert (=> bm!430085 d!1790410))

(assert (=> b!5671193 d!1790180))

(declare-fun bs!1321552 () Bool)

(declare-fun d!1790464 () Bool)

(assert (= bs!1321552 (and d!1790464 d!1790156)))

(declare-fun lambda!305254 () Int)

(assert (=> bs!1321552 (= lambda!305254 lambda!305181)))

(declare-fun bs!1321553 () Bool)

(assert (= bs!1321553 (and d!1790464 d!1790174)))

(assert (=> bs!1321553 (= lambda!305254 lambda!305184)))

(declare-fun bs!1321554 () Bool)

(assert (= bs!1321554 (and d!1790464 d!1790426)))

(assert (=> bs!1321554 (= lambda!305254 lambda!305249)))

(declare-fun bs!1321555 () Bool)

(assert (= bs!1321555 (and d!1790464 d!1790140)))

(assert (=> bs!1321555 (= lambda!305254 lambda!305180)))

(declare-fun bs!1321556 () Bool)

(assert (= bs!1321556 (and d!1790464 d!1790394)))

(assert (=> bs!1321556 (= lambda!305254 lambda!305245)))

(declare-fun bs!1321557 () Bool)

(assert (= bs!1321557 (and d!1790464 d!1790228)))

(assert (=> bs!1321557 (= lambda!305254 lambda!305203)))

(declare-fun bs!1321558 () Bool)

(assert (= bs!1321558 (and d!1790464 d!1790372)))

(assert (=> bs!1321558 (= lambda!305254 lambda!305243)))

(declare-fun bs!1321559 () Bool)

(assert (= bs!1321559 (and d!1790464 d!1790260)))

(assert (=> bs!1321559 (= lambda!305254 lambda!305213)))

(declare-fun bs!1321560 () Bool)

(assert (= bs!1321560 (and d!1790464 b!5671439)))

(assert (=> bs!1321560 (not (= lambda!305254 lambda!305240))))

(declare-fun bs!1321561 () Bool)

(assert (= bs!1321561 (and d!1790464 d!1790258)))

(assert (=> bs!1321561 (= lambda!305254 lambda!305210)))

(declare-fun bs!1321562 () Bool)

(assert (= bs!1321562 (and d!1790464 d!1790180)))

(assert (=> bs!1321562 (= lambda!305254 lambda!305185)))

(declare-fun bs!1321563 () Bool)

(assert (= bs!1321563 (and d!1790464 b!5671437)))

(assert (=> bs!1321563 (not (= lambda!305254 lambda!305239))))

(declare-fun bs!1321564 () Bool)

(assert (= bs!1321564 (and d!1790464 d!1790238)))

(assert (=> bs!1321564 (= lambda!305254 lambda!305204)))

(declare-fun lt!2268360 () List!63270)

(assert (=> d!1790464 (forall!14810 lt!2268360 lambda!305254)))

(declare-fun e!3491391 () List!63270)

(assert (=> d!1790464 (= lt!2268360 e!3491391)))

(declare-fun c!997651 () Bool)

(assert (=> d!1790464 (= c!997651 ((_ is Cons!63148) (t!376578 zl!343)))))

(assert (=> d!1790464 (= (unfocusZipperList!1085 (t!376578 zl!343)) lt!2268360)))

(declare-fun b!5671644 () Bool)

(assert (=> b!5671644 (= e!3491391 (Cons!63146 (generalisedConcat!1272 (exprs!5541 (h!69596 (t!376578 zl!343)))) (unfocusZipperList!1085 (t!376578 (t!376578 zl!343)))))))

(declare-fun b!5671645 () Bool)

(assert (=> b!5671645 (= e!3491391 Nil!63146)))

(assert (= (and d!1790464 c!997651) b!5671644))

(assert (= (and d!1790464 (not c!997651)) b!5671645))

(declare-fun m!6632800 () Bool)

(assert (=> d!1790464 m!6632800))

(declare-fun m!6632802 () Bool)

(assert (=> b!5671644 m!6632802))

(declare-fun m!6632804 () Bool)

(assert (=> b!5671644 m!6632804))

(assert (=> b!5671193 d!1790464))

(declare-fun d!1790466 () Bool)

(assert (=> d!1790466 (= (isEmpty!35002 (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 Nil!63147 s!2326 s!2326)) (not ((_ is Some!15665) (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 Nil!63147 s!2326 s!2326))))))

(assert (=> d!1790158 d!1790466))

(assert (=> b!5670799 d!1790244))

(declare-fun d!1790468 () Bool)

(assert (=> d!1790468 (= (isConcat!710 lt!2268285) ((_ is Concat!24502) lt!2268285))))

(assert (=> b!5670868 d!1790468))

(declare-fun d!1790470 () Bool)

(assert (=> d!1790470 true))

(declare-fun setRes!37904 () Bool)

(assert (=> d!1790470 setRes!37904))

(declare-fun condSetEmpty!37904 () Bool)

(declare-fun res!2396645 () (InoxSet Context!10082))

(assert (=> d!1790470 (= condSetEmpty!37904 (= res!2396645 ((as const (Array Context!10082 Bool)) false)))))

(assert (=> d!1790470 (= (choose!42903 lt!2268137 lambda!305097) res!2396645)))

(declare-fun setIsEmpty!37904 () Bool)

(assert (=> setIsEmpty!37904 setRes!37904))

(declare-fun setNonEmpty!37904 () Bool)

(declare-fun tp!1573199 () Bool)

(declare-fun setElem!37904 () Context!10082)

(declare-fun e!3491394 () Bool)

(assert (=> setNonEmpty!37904 (= setRes!37904 (and tp!1573199 (inv!82389 setElem!37904) e!3491394))))

(declare-fun setRest!37904 () (InoxSet Context!10082))

(assert (=> setNonEmpty!37904 (= res!2396645 ((_ map or) (store ((as const (Array Context!10082 Bool)) false) setElem!37904 true) setRest!37904))))

(declare-fun b!5671648 () Bool)

(declare-fun tp!1573200 () Bool)

(assert (=> b!5671648 (= e!3491394 tp!1573200)))

(assert (= (and d!1790470 condSetEmpty!37904) setIsEmpty!37904))

(assert (= (and d!1790470 (not condSetEmpty!37904)) setNonEmpty!37904))

(assert (= setNonEmpty!37904 b!5671648))

(declare-fun m!6632806 () Bool)

(assert (=> setNonEmpty!37904 m!6632806))

(assert (=> d!1790250 d!1790470))

(declare-fun d!1790472 () Bool)

(assert (=> d!1790472 (= (head!12039 lt!2268152) (h!69594 lt!2268152))))

(assert (=> b!5670778 d!1790472))

(assert (=> b!5670879 d!1790068))

(declare-fun d!1790474 () Bool)

(declare-fun e!3491399 () Bool)

(assert (=> d!1790474 e!3491399))

(declare-fun res!2396651 () Bool)

(assert (=> d!1790474 (=> (not res!2396651) (not e!3491399))))

(declare-fun lt!2268363 () List!63271)

(declare-fun content!11435 (List!63271) (InoxSet C!31584))

(assert (=> d!1790474 (= res!2396651 (= (content!11435 lt!2268363) ((_ map or) (content!11435 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147))) (content!11435 (t!376577 s!2326)))))))

(declare-fun e!3491400 () List!63271)

(assert (=> d!1790474 (= lt!2268363 e!3491400)))

(declare-fun c!997654 () Bool)

(assert (=> d!1790474 (= c!997654 ((_ is Nil!63147) (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147))))))

(assert (=> d!1790474 (= (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326)) lt!2268363)))

(declare-fun b!5671658 () Bool)

(assert (=> b!5671658 (= e!3491400 (Cons!63147 (h!69595 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147))) (++!13862 (t!376577 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147))) (t!376577 s!2326))))))

(declare-fun b!5671657 () Bool)

(assert (=> b!5671657 (= e!3491400 (t!376577 s!2326))))

(declare-fun b!5671659 () Bool)

(declare-fun res!2396650 () Bool)

(assert (=> b!5671659 (=> (not res!2396650) (not e!3491399))))

(declare-fun size!39992 (List!63271) Int)

(assert (=> b!5671659 (= res!2396650 (= (size!39992 lt!2268363) (+ (size!39992 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147))) (size!39992 (t!376577 s!2326)))))))

(declare-fun b!5671660 () Bool)

(assert (=> b!5671660 (= e!3491399 (or (not (= (t!376577 s!2326) Nil!63147)) (= lt!2268363 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)))))))

(assert (= (and d!1790474 c!997654) b!5671657))

(assert (= (and d!1790474 (not c!997654)) b!5671658))

(assert (= (and d!1790474 res!2396651) b!5671659))

(assert (= (and b!5671659 res!2396650) b!5671660))

(declare-fun m!6632808 () Bool)

(assert (=> d!1790474 m!6632808))

(assert (=> d!1790474 m!6631716))

(declare-fun m!6632810 () Bool)

(assert (=> d!1790474 m!6632810))

(declare-fun m!6632812 () Bool)

(assert (=> d!1790474 m!6632812))

(declare-fun m!6632814 () Bool)

(assert (=> b!5671658 m!6632814))

(declare-fun m!6632816 () Bool)

(assert (=> b!5671659 m!6632816))

(assert (=> b!5671659 m!6631716))

(declare-fun m!6632818 () Bool)

(assert (=> b!5671659 m!6632818))

(declare-fun m!6632820 () Bool)

(assert (=> b!5671659 m!6632820))

(assert (=> b!5670884 d!1790474))

(declare-fun d!1790476 () Bool)

(declare-fun e!3491401 () Bool)

(assert (=> d!1790476 e!3491401))

(declare-fun res!2396653 () Bool)

(assert (=> d!1790476 (=> (not res!2396653) (not e!3491401))))

(declare-fun lt!2268364 () List!63271)

(assert (=> d!1790476 (= res!2396653 (= (content!11435 lt!2268364) ((_ map or) (content!11435 Nil!63147) (content!11435 (Cons!63147 (h!69595 s!2326) Nil!63147)))))))

(declare-fun e!3491402 () List!63271)

(assert (=> d!1790476 (= lt!2268364 e!3491402)))

(declare-fun c!997655 () Bool)

(assert (=> d!1790476 (= c!997655 ((_ is Nil!63147) Nil!63147))))

(assert (=> d!1790476 (= (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) lt!2268364)))

(declare-fun b!5671662 () Bool)

(assert (=> b!5671662 (= e!3491402 (Cons!63147 (h!69595 Nil!63147) (++!13862 (t!376577 Nil!63147) (Cons!63147 (h!69595 s!2326) Nil!63147))))))

(declare-fun b!5671661 () Bool)

(assert (=> b!5671661 (= e!3491402 (Cons!63147 (h!69595 s!2326) Nil!63147))))

(declare-fun b!5671663 () Bool)

(declare-fun res!2396652 () Bool)

(assert (=> b!5671663 (=> (not res!2396652) (not e!3491401))))

(assert (=> b!5671663 (= res!2396652 (= (size!39992 lt!2268364) (+ (size!39992 Nil!63147) (size!39992 (Cons!63147 (h!69595 s!2326) Nil!63147)))))))

(declare-fun b!5671664 () Bool)

(assert (=> b!5671664 (= e!3491401 (or (not (= (Cons!63147 (h!69595 s!2326) Nil!63147) Nil!63147)) (= lt!2268364 Nil!63147)))))

(assert (= (and d!1790476 c!997655) b!5671661))

(assert (= (and d!1790476 (not c!997655)) b!5671662))

(assert (= (and d!1790476 res!2396653) b!5671663))

(assert (= (and b!5671663 res!2396652) b!5671664))

(declare-fun m!6632822 () Bool)

(assert (=> d!1790476 m!6632822))

(declare-fun m!6632824 () Bool)

(assert (=> d!1790476 m!6632824))

(declare-fun m!6632826 () Bool)

(assert (=> d!1790476 m!6632826))

(declare-fun m!6632828 () Bool)

(assert (=> b!5671662 m!6632828))

(declare-fun m!6632830 () Bool)

(assert (=> b!5671663 m!6632830))

(declare-fun m!6632832 () Bool)

(assert (=> b!5671663 m!6632832))

(declare-fun m!6632834 () Bool)

(assert (=> b!5671663 m!6632834))

(assert (=> b!5670884 d!1790476))

(declare-fun d!1790478 () Bool)

(assert (=> d!1790478 (= (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326)) s!2326)))

(declare-fun lt!2268367 () Unit!156160)

(declare-fun choose!42910 (List!63271 C!31584 List!63271 List!63271) Unit!156160)

(assert (=> d!1790478 (= lt!2268367 (choose!42910 Nil!63147 (h!69595 s!2326) (t!376577 s!2326) s!2326))))

(assert (=> d!1790478 (= (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) (t!376577 s!2326))) s!2326)))

(assert (=> d!1790478 (= (lemmaMoveElementToOtherListKeepsConcatEq!2031 Nil!63147 (h!69595 s!2326) (t!376577 s!2326) s!2326) lt!2268367)))

(declare-fun bs!1321565 () Bool)

(assert (= bs!1321565 d!1790478))

(assert (=> bs!1321565 m!6631716))

(assert (=> bs!1321565 m!6631716))

(assert (=> bs!1321565 m!6631718))

(declare-fun m!6632836 () Bool)

(assert (=> bs!1321565 m!6632836))

(declare-fun m!6632838 () Bool)

(assert (=> bs!1321565 m!6632838))

(assert (=> b!5670884 d!1790478))

(declare-fun b!5671665 () Bool)

(declare-fun res!2396654 () Bool)

(declare-fun e!3491407 () Bool)

(assert (=> b!5671665 (=> (not res!2396654) (not e!3491407))))

(declare-fun lt!2268369 () Option!15666)

(assert (=> b!5671665 (= res!2396654 (matchR!7842 lt!2268120 (_2!36057 (get!21758 lt!2268369))))))

(declare-fun b!5671666 () Bool)

(declare-fun e!3491406 () Option!15666)

(declare-fun e!3491405 () Option!15666)

(assert (=> b!5671666 (= e!3491406 e!3491405)))

(declare-fun c!997657 () Bool)

(assert (=> b!5671666 (= c!997657 ((_ is Nil!63147) (t!376577 s!2326)))))

(declare-fun b!5671667 () Bool)

(assert (=> b!5671667 (= e!3491405 None!15665)))

(declare-fun b!5671668 () Bool)

(declare-fun e!3491403 () Bool)

(assert (=> b!5671668 (= e!3491403 (matchR!7842 lt!2268120 (t!376577 s!2326)))))

(declare-fun b!5671669 () Bool)

(assert (=> b!5671669 (= e!3491407 (= (++!13862 (_1!36057 (get!21758 lt!2268369)) (_2!36057 (get!21758 lt!2268369))) s!2326))))

(declare-fun d!1790480 () Bool)

(declare-fun e!3491404 () Bool)

(assert (=> d!1790480 e!3491404))

(declare-fun res!2396658 () Bool)

(assert (=> d!1790480 (=> res!2396658 e!3491404)))

(assert (=> d!1790480 (= res!2396658 e!3491407)))

(declare-fun res!2396655 () Bool)

(assert (=> d!1790480 (=> (not res!2396655) (not e!3491407))))

(assert (=> d!1790480 (= res!2396655 (isDefined!12369 lt!2268369))))

(assert (=> d!1790480 (= lt!2268369 e!3491406)))

(declare-fun c!997656 () Bool)

(assert (=> d!1790480 (= c!997656 e!3491403)))

(declare-fun res!2396657 () Bool)

(assert (=> d!1790480 (=> (not res!2396657) (not e!3491403))))

(assert (=> d!1790480 (= res!2396657 (matchR!7842 (regOne!31826 (regOne!31826 r!7292)) (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147))))))

(assert (=> d!1790480 (validRegex!7393 (regOne!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790480 (= (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326) s!2326) lt!2268369)))

(declare-fun b!5671670 () Bool)

(assert (=> b!5671670 (= e!3491404 (not (isDefined!12369 lt!2268369)))))

(declare-fun b!5671671 () Bool)

(assert (=> b!5671671 (= e!3491406 (Some!15665 (tuple2!65509 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326))))))

(declare-fun b!5671672 () Bool)

(declare-fun res!2396656 () Bool)

(assert (=> b!5671672 (=> (not res!2396656) (not e!3491407))))

(assert (=> b!5671672 (= res!2396656 (matchR!7842 (regOne!31826 (regOne!31826 r!7292)) (_1!36057 (get!21758 lt!2268369))))))

(declare-fun b!5671673 () Bool)

(declare-fun lt!2268370 () Unit!156160)

(declare-fun lt!2268368 () Unit!156160)

(assert (=> b!5671673 (= lt!2268370 lt!2268368)))

(assert (=> b!5671673 (= (++!13862 (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (Cons!63147 (h!69595 (t!376577 s!2326)) Nil!63147)) (t!376577 (t!376577 s!2326))) s!2326)))

(assert (=> b!5671673 (= lt!2268368 (lemmaMoveElementToOtherListKeepsConcatEq!2031 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (h!69595 (t!376577 s!2326)) (t!376577 (t!376577 s!2326)) s!2326))))

(assert (=> b!5671673 (= e!3491405 (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (Cons!63147 (h!69595 (t!376577 s!2326)) Nil!63147)) (t!376577 (t!376577 s!2326)) s!2326))))

(assert (= (and d!1790480 res!2396657) b!5671668))

(assert (= (and d!1790480 c!997656) b!5671671))

(assert (= (and d!1790480 (not c!997656)) b!5671666))

(assert (= (and b!5671666 c!997657) b!5671667))

(assert (= (and b!5671666 (not c!997657)) b!5671673))

(assert (= (and d!1790480 res!2396655) b!5671672))

(assert (= (and b!5671672 res!2396656) b!5671665))

(assert (= (and b!5671665 res!2396654) b!5671669))

(assert (= (and d!1790480 (not res!2396658)) b!5671670))

(assert (=> b!5671673 m!6631716))

(declare-fun m!6632840 () Bool)

(assert (=> b!5671673 m!6632840))

(assert (=> b!5671673 m!6632840))

(declare-fun m!6632842 () Bool)

(assert (=> b!5671673 m!6632842))

(assert (=> b!5671673 m!6631716))

(declare-fun m!6632844 () Bool)

(assert (=> b!5671673 m!6632844))

(assert (=> b!5671673 m!6632840))

(declare-fun m!6632846 () Bool)

(assert (=> b!5671673 m!6632846))

(declare-fun m!6632848 () Bool)

(assert (=> b!5671665 m!6632848))

(declare-fun m!6632850 () Bool)

(assert (=> b!5671665 m!6632850))

(assert (=> b!5671669 m!6632848))

(declare-fun m!6632852 () Bool)

(assert (=> b!5671669 m!6632852))

(declare-fun m!6632854 () Bool)

(assert (=> d!1790480 m!6632854))

(assert (=> d!1790480 m!6631716))

(declare-fun m!6632856 () Bool)

(assert (=> d!1790480 m!6632856))

(assert (=> d!1790480 m!6631890))

(assert (=> b!5671670 m!6632854))

(assert (=> b!5671672 m!6632848))

(declare-fun m!6632858 () Bool)

(assert (=> b!5671672 m!6632858))

(declare-fun m!6632860 () Bool)

(assert (=> b!5671668 m!6632860))

(assert (=> b!5670884 d!1790480))

(declare-fun d!1790482 () Bool)

(assert (=> d!1790482 (= (Exists!2757 lambda!305158) (choose!42894 lambda!305158))))

(declare-fun bs!1321566 () Bool)

(assert (= bs!1321566 d!1790482))

(declare-fun m!6632862 () Bool)

(assert (=> bs!1321566 m!6632862))

(assert (=> d!1790080 d!1790482))

(declare-fun d!1790484 () Bool)

(assert (=> d!1790484 (= (Exists!2757 lambda!305160) (choose!42894 lambda!305160))))

(declare-fun bs!1321567 () Bool)

(assert (= bs!1321567 d!1790484))

(declare-fun m!6632864 () Bool)

(assert (=> bs!1321567 m!6632864))

(assert (=> d!1790080 d!1790484))

(declare-fun bs!1321568 () Bool)

(declare-fun d!1790486 () Bool)

(assert (= bs!1321568 (and d!1790486 d!1790126)))

(declare-fun lambda!305255 () Int)

(assert (=> bs!1321568 (not (= lambda!305255 lambda!305176))))

(declare-fun bs!1321569 () Bool)

(assert (= bs!1321569 (and d!1790486 b!5670698)))

(assert (=> bs!1321569 (not (= lambda!305255 lambda!305172))))

(declare-fun bs!1321570 () Bool)

(assert (= bs!1321570 (and d!1790486 b!5670839)))

(assert (=> bs!1321570 (not (= lambda!305255 lambda!305182))))

(declare-fun bs!1321571 () Bool)

(assert (= bs!1321571 (and d!1790486 d!1790038)))

(assert (=> bs!1321571 (not (= lambda!305255 lambda!305156))))

(declare-fun bs!1321572 () Bool)

(assert (= bs!1321572 (and d!1790486 d!1790390)))

(assert (=> bs!1321572 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305255 lambda!305244))))

(declare-fun bs!1321573 () Bool)

(assert (= bs!1321573 (and d!1790486 d!1790100)))

(assert (=> bs!1321573 (= lambda!305255 lambda!305163)))

(declare-fun bs!1321574 () Bool)

(assert (= bs!1321574 (and d!1790486 d!1790094)))

(assert (=> bs!1321574 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305255 lambda!305162))))

(declare-fun bs!1321575 () Bool)

(assert (= bs!1321575 (and d!1790486 b!5670845)))

(assert (=> bs!1321575 (not (= lambda!305255 lambda!305183))))

(declare-fun bs!1321576 () Bool)

(assert (= bs!1321576 (and d!1790486 b!5671555)))

(assert (=> bs!1321576 (not (= lambda!305255 lambda!305247))))

(declare-fun bs!1321577 () Bool)

(assert (= bs!1321577 (and d!1790486 b!5671572)))

(assert (=> bs!1321577 (not (= lambda!305255 lambda!305251))))

(declare-fun bs!1321578 () Bool)

(assert (= bs!1321578 (and d!1790486 b!5671471)))

(assert (=> bs!1321578 (not (= lambda!305255 lambda!305241))))

(declare-fun bs!1321579 () Bool)

(assert (= bs!1321579 (and d!1790486 b!5670249)))

(assert (=> bs!1321579 (= lambda!305255 lambda!305098)))

(declare-fun bs!1321580 () Bool)

(assert (= bs!1321580 (and d!1790486 b!5671032)))

(assert (=> bs!1321580 (not (= lambda!305255 lambda!305195))))

(assert (=> bs!1321571 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305255 lambda!305155))))

(declare-fun bs!1321581 () Bool)

(assert (= bs!1321581 (and d!1790486 b!5671566)))

(assert (=> bs!1321581 (not (= lambda!305255 lambda!305250))))

(declare-fun bs!1321582 () Bool)

(assert (= bs!1321582 (and d!1790486 d!1790294)))

(assert (=> bs!1321582 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305255 lambda!305221))))

(assert (=> bs!1321568 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305255 lambda!305175))))

(assert (=> bs!1321579 (not (= lambda!305255 lambda!305101))))

(assert (=> bs!1321582 (not (= lambda!305255 lambda!305222))))

(declare-fun bs!1321583 () Bool)

(assert (= bs!1321583 (and d!1790486 b!5671038)))

(assert (=> bs!1321583 (not (= lambda!305255 lambda!305196))))

(declare-fun bs!1321584 () Bool)

(assert (= bs!1321584 (and d!1790486 b!5671561)))

(assert (=> bs!1321584 (not (= lambda!305255 lambda!305248))))

(declare-fun bs!1321585 () Bool)

(assert (= bs!1321585 (and d!1790486 d!1790314)))

(assert (=> bs!1321585 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305255 lambda!305226))))

(declare-fun bs!1321586 () Bool)

(assert (= bs!1321586 (and d!1790486 d!1790034)))

(assert (=> bs!1321586 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305255 lambda!305143))))

(declare-fun bs!1321587 () Bool)

(assert (= bs!1321587 (and d!1790486 b!5670241)))

(assert (=> bs!1321587 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305255 lambda!305095))))

(declare-fun bs!1321588 () Bool)

(assert (= bs!1321588 (and d!1790486 b!5671477)))

(assert (=> bs!1321588 (not (= lambda!305255 lambda!305242))))

(assert (=> bs!1321579 (not (= lambda!305255 lambda!305099))))

(declare-fun bs!1321589 () Bool)

(assert (= bs!1321589 (and d!1790486 d!1790080)))

(assert (=> bs!1321589 (not (= lambda!305255 lambda!305160))))

(assert (=> bs!1321579 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305255 lambda!305100))))

(declare-fun bs!1321590 () Bool)

(assert (= bs!1321590 (and d!1790486 b!5670704)))

(assert (=> bs!1321590 (not (= lambda!305255 lambda!305174))))

(assert (=> bs!1321587 (not (= lambda!305255 lambda!305096))))

(assert (=> bs!1321589 (= lambda!305255 lambda!305158)))

(assert (=> d!1790486 true))

(assert (=> d!1790486 true))

(assert (=> d!1790486 true))

(declare-fun lambda!305256 () Int)

(assert (=> bs!1321568 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305256 lambda!305176))))

(assert (=> bs!1321569 (not (= lambda!305256 lambda!305172))))

(assert (=> bs!1321570 (not (= lambda!305256 lambda!305182))))

(assert (=> bs!1321571 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305256 lambda!305156))))

(assert (=> bs!1321572 (not (= lambda!305256 lambda!305244))))

(assert (=> bs!1321574 (not (= lambda!305256 lambda!305162))))

(assert (=> bs!1321575 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 lt!2268120)) (= lt!2268120 (regTwo!31826 lt!2268120))) (= lambda!305256 lambda!305183))))

(assert (=> bs!1321576 (not (= lambda!305256 lambda!305247))))

(assert (=> bs!1321577 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31827 lt!2268141))) (= lt!2268120 (regTwo!31826 (regOne!31827 lt!2268141)))) (= lambda!305256 lambda!305251))))

(assert (=> bs!1321578 (not (= lambda!305256 lambda!305241))))

(assert (=> bs!1321579 (not (= lambda!305256 lambda!305098))))

(assert (=> bs!1321580 (not (= lambda!305256 lambda!305195))))

(assert (=> bs!1321571 (not (= lambda!305256 lambda!305155))))

(assert (=> bs!1321581 (not (= lambda!305256 lambda!305250))))

(assert (=> bs!1321582 (not (= lambda!305256 lambda!305221))))

(assert (=> bs!1321568 (not (= lambda!305256 lambda!305175))))

(assert (=> bs!1321579 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305256 lambda!305101))))

(assert (=> bs!1321582 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305256 lambda!305222))))

(assert (=> bs!1321583 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305256 lambda!305196))))

(declare-fun bs!1321591 () Bool)

(assert (= bs!1321591 d!1790486))

(assert (=> bs!1321591 (not (= lambda!305256 lambda!305255))))

(assert (=> bs!1321573 (not (= lambda!305256 lambda!305163))))

(assert (=> bs!1321584 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 (regOne!31827 lt!2268120))) (= lt!2268120 (regTwo!31826 (regOne!31827 lt!2268120)))) (= lambda!305256 lambda!305248))))

(assert (=> bs!1321585 (not (= lambda!305256 lambda!305226))))

(assert (=> bs!1321586 (not (= lambda!305256 lambda!305143))))

(assert (=> bs!1321587 (not (= lambda!305256 lambda!305095))))

(assert (=> bs!1321588 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 (regTwo!31827 r!7292))) (= lt!2268120 (regTwo!31826 (regTwo!31827 r!7292)))) (= lambda!305256 lambda!305242))))

(assert (=> bs!1321579 (= lambda!305256 lambda!305099)))

(assert (=> bs!1321589 (= lambda!305256 lambda!305160)))

(assert (=> bs!1321579 (not (= lambda!305256 lambda!305100))))

(assert (=> bs!1321590 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 lt!2268141)) (= lt!2268120 (regTwo!31826 lt!2268141))) (= lambda!305256 lambda!305174))))

(assert (=> bs!1321587 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305256 lambda!305096))))

(assert (=> bs!1321589 (not (= lambda!305256 lambda!305158))))

(assert (=> d!1790486 true))

(assert (=> d!1790486 true))

(assert (=> d!1790486 true))

(assert (=> d!1790486 (= (Exists!2757 lambda!305255) (Exists!2757 lambda!305256))))

(assert (=> d!1790486 true))

(declare-fun _$90!1411 () Unit!156160)

(assert (=> d!1790486 (= (choose!42896 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 s!2326) _$90!1411)))

(declare-fun m!6632866 () Bool)

(assert (=> bs!1321591 m!6632866))

(declare-fun m!6632868 () Bool)

(assert (=> bs!1321591 m!6632868))

(assert (=> d!1790080 d!1790486))

(declare-fun b!5671674 () Bool)

(declare-fun e!3491414 () Bool)

(declare-fun e!3491411 () Bool)

(assert (=> b!5671674 (= e!3491414 e!3491411)))

(declare-fun res!2396659 () Bool)

(assert (=> b!5671674 (= res!2396659 (not (nullable!5689 (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))))

(assert (=> b!5671674 (=> (not res!2396659) (not e!3491411))))

(declare-fun b!5671675 () Bool)

(declare-fun e!3491410 () Bool)

(declare-fun call!430249 () Bool)

(assert (=> b!5671675 (= e!3491410 call!430249)))

(declare-fun bm!430244 () Bool)

(declare-fun c!997659 () Bool)

(assert (=> bm!430244 (= call!430249 (validRegex!7393 (ite c!997659 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))))))))

(declare-fun bm!430245 () Bool)

(declare-fun call!430251 () Bool)

(declare-fun call!430250 () Bool)

(assert (=> bm!430245 (= call!430251 call!430250)))

(declare-fun d!1790488 () Bool)

(declare-fun res!2396663 () Bool)

(declare-fun e!3491413 () Bool)

(assert (=> d!1790488 (=> res!2396663 e!3491413)))

(assert (=> d!1790488 (= res!2396663 ((_ is ElementMatch!15657) (regOne!31826 (regOne!31826 r!7292))))))

(assert (=> d!1790488 (= (validRegex!7393 (regOne!31826 (regOne!31826 r!7292))) e!3491413)))

(declare-fun b!5671676 () Bool)

(declare-fun res!2396660 () Bool)

(declare-fun e!3491412 () Bool)

(assert (=> b!5671676 (=> (not res!2396660) (not e!3491412))))

(assert (=> b!5671676 (= res!2396660 call!430251)))

(declare-fun e!3491408 () Bool)

(assert (=> b!5671676 (= e!3491408 e!3491412)))

(declare-fun b!5671677 () Bool)

(declare-fun res!2396662 () Bool)

(declare-fun e!3491409 () Bool)

(assert (=> b!5671677 (=> res!2396662 e!3491409)))

(assert (=> b!5671677 (= res!2396662 (not ((_ is Concat!24502) (regOne!31826 (regOne!31826 r!7292)))))))

(assert (=> b!5671677 (= e!3491408 e!3491409)))

(declare-fun b!5671678 () Bool)

(assert (=> b!5671678 (= e!3491414 e!3491408)))

(assert (=> b!5671678 (= c!997659 ((_ is Union!15657) (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671679 () Bool)

(assert (=> b!5671679 (= e!3491411 call!430250)))

(declare-fun b!5671680 () Bool)

(assert (=> b!5671680 (= e!3491413 e!3491414)))

(declare-fun c!997658 () Bool)

(assert (=> b!5671680 (= c!997658 ((_ is Star!15657) (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671681 () Bool)

(assert (=> b!5671681 (= e!3491409 e!3491410)))

(declare-fun res!2396661 () Bool)

(assert (=> b!5671681 (=> (not res!2396661) (not e!3491410))))

(assert (=> b!5671681 (= res!2396661 call!430251)))

(declare-fun b!5671682 () Bool)

(assert (=> b!5671682 (= e!3491412 call!430249)))

(declare-fun bm!430246 () Bool)

(assert (=> bm!430246 (= call!430250 (validRegex!7393 (ite c!997658 (reg!15986 (regOne!31826 (regOne!31826 r!7292))) (ite c!997659 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))))))))

(assert (= (and d!1790488 (not res!2396663)) b!5671680))

(assert (= (and b!5671680 c!997658) b!5671674))

(assert (= (and b!5671680 (not c!997658)) b!5671678))

(assert (= (and b!5671674 res!2396659) b!5671679))

(assert (= (and b!5671678 c!997659) b!5671676))

(assert (= (and b!5671678 (not c!997659)) b!5671677))

(assert (= (and b!5671676 res!2396660) b!5671682))

(assert (= (and b!5671677 (not res!2396662)) b!5671681))

(assert (= (and b!5671681 res!2396661) b!5671675))

(assert (= (or b!5671682 b!5671675) bm!430244))

(assert (= (or b!5671676 b!5671681) bm!430245))

(assert (= (or b!5671679 bm!430245) bm!430246))

(declare-fun m!6632870 () Bool)

(assert (=> b!5671674 m!6632870))

(declare-fun m!6632872 () Bool)

(assert (=> bm!430244 m!6632872))

(declare-fun m!6632874 () Bool)

(assert (=> bm!430246 m!6632874))

(assert (=> d!1790080 d!1790488))

(assert (=> b!5670890 d!1790156))

(declare-fun bs!1321592 () Bool)

(declare-fun d!1790490 () Bool)

(assert (= bs!1321592 (and d!1790490 d!1790464)))

(declare-fun lambda!305257 () Int)

(assert (=> bs!1321592 (= lambda!305257 lambda!305254)))

(declare-fun bs!1321593 () Bool)

(assert (= bs!1321593 (and d!1790490 d!1790156)))

(assert (=> bs!1321593 (= lambda!305257 lambda!305181)))

(declare-fun bs!1321594 () Bool)

(assert (= bs!1321594 (and d!1790490 d!1790174)))

(assert (=> bs!1321594 (= lambda!305257 lambda!305184)))

(declare-fun bs!1321595 () Bool)

(assert (= bs!1321595 (and d!1790490 d!1790426)))

(assert (=> bs!1321595 (= lambda!305257 lambda!305249)))

(declare-fun bs!1321596 () Bool)

(assert (= bs!1321596 (and d!1790490 d!1790140)))

(assert (=> bs!1321596 (= lambda!305257 lambda!305180)))

(declare-fun bs!1321597 () Bool)

(assert (= bs!1321597 (and d!1790490 d!1790394)))

(assert (=> bs!1321597 (= lambda!305257 lambda!305245)))

(declare-fun bs!1321598 () Bool)

(assert (= bs!1321598 (and d!1790490 d!1790228)))

(assert (=> bs!1321598 (= lambda!305257 lambda!305203)))

(declare-fun bs!1321599 () Bool)

(assert (= bs!1321599 (and d!1790490 d!1790372)))

(assert (=> bs!1321599 (= lambda!305257 lambda!305243)))

(declare-fun bs!1321600 () Bool)

(assert (= bs!1321600 (and d!1790490 d!1790260)))

(assert (=> bs!1321600 (= lambda!305257 lambda!305213)))

(declare-fun bs!1321601 () Bool)

(assert (= bs!1321601 (and d!1790490 b!5671439)))

(assert (=> bs!1321601 (not (= lambda!305257 lambda!305240))))

(declare-fun bs!1321602 () Bool)

(assert (= bs!1321602 (and d!1790490 d!1790258)))

(assert (=> bs!1321602 (= lambda!305257 lambda!305210)))

(declare-fun bs!1321603 () Bool)

(assert (= bs!1321603 (and d!1790490 d!1790180)))

(assert (=> bs!1321603 (= lambda!305257 lambda!305185)))

(declare-fun bs!1321604 () Bool)

(assert (= bs!1321604 (and d!1790490 b!5671437)))

(assert (=> bs!1321604 (not (= lambda!305257 lambda!305239))))

(declare-fun bs!1321605 () Bool)

(assert (= bs!1321605 (and d!1790490 d!1790238)))

(assert (=> bs!1321605 (= lambda!305257 lambda!305204)))

(declare-fun e!3491415 () Bool)

(assert (=> d!1790490 e!3491415))

(declare-fun res!2396664 () Bool)

(assert (=> d!1790490 (=> (not res!2396664) (not e!3491415))))

(declare-fun lt!2268371 () Regex!15657)

(assert (=> d!1790490 (= res!2396664 (validRegex!7393 lt!2268371))))

(declare-fun e!3491416 () Regex!15657)

(assert (=> d!1790490 (= lt!2268371 e!3491416)))

(declare-fun c!997663 () Bool)

(declare-fun e!3491417 () Bool)

(assert (=> d!1790490 (= c!997663 e!3491417)))

(declare-fun res!2396665 () Bool)

(assert (=> d!1790490 (=> (not res!2396665) (not e!3491417))))

(assert (=> d!1790490 (= res!2396665 ((_ is Cons!63146) (t!376576 (unfocusZipperList!1085 zl!343))))))

(assert (=> d!1790490 (forall!14810 (t!376576 (unfocusZipperList!1085 zl!343)) lambda!305257)))

(assert (=> d!1790490 (= (generalisedUnion!1520 (t!376576 (unfocusZipperList!1085 zl!343))) lt!2268371)))

(declare-fun b!5671683 () Bool)

(declare-fun e!3491420 () Regex!15657)

(assert (=> b!5671683 (= e!3491420 EmptyLang!15657)))

(declare-fun b!5671684 () Bool)

(assert (=> b!5671684 (= e!3491416 (h!69594 (t!376576 (unfocusZipperList!1085 zl!343))))))

(declare-fun b!5671685 () Bool)

(declare-fun e!3491419 () Bool)

(assert (=> b!5671685 (= e!3491419 (= lt!2268371 (head!12039 (t!376576 (unfocusZipperList!1085 zl!343)))))))

(declare-fun b!5671686 () Bool)

(assert (=> b!5671686 (= e!3491420 (Union!15657 (h!69594 (t!376576 (unfocusZipperList!1085 zl!343))) (generalisedUnion!1520 (t!376576 (t!376576 (unfocusZipperList!1085 zl!343))))))))

(declare-fun b!5671687 () Bool)

(assert (=> b!5671687 (= e!3491419 (isUnion!627 lt!2268371))))

(declare-fun b!5671688 () Bool)

(assert (=> b!5671688 (= e!3491416 e!3491420)))

(declare-fun c!997660 () Bool)

(assert (=> b!5671688 (= c!997660 ((_ is Cons!63146) (t!376576 (unfocusZipperList!1085 zl!343))))))

(declare-fun b!5671689 () Bool)

(declare-fun e!3491418 () Bool)

(assert (=> b!5671689 (= e!3491418 (isEmptyLang!1197 lt!2268371))))

(declare-fun b!5671690 () Bool)

(assert (=> b!5671690 (= e!3491415 e!3491418)))

(declare-fun c!997661 () Bool)

(assert (=> b!5671690 (= c!997661 (isEmpty!34998 (t!376576 (unfocusZipperList!1085 zl!343))))))

(declare-fun b!5671691 () Bool)

(assert (=> b!5671691 (= e!3491418 e!3491419)))

(declare-fun c!997662 () Bool)

(assert (=> b!5671691 (= c!997662 (isEmpty!34998 (tail!11134 (t!376576 (unfocusZipperList!1085 zl!343)))))))

(declare-fun b!5671692 () Bool)

(assert (=> b!5671692 (= e!3491417 (isEmpty!34998 (t!376576 (t!376576 (unfocusZipperList!1085 zl!343)))))))

(assert (= (and d!1790490 res!2396665) b!5671692))

(assert (= (and d!1790490 c!997663) b!5671684))

(assert (= (and d!1790490 (not c!997663)) b!5671688))

(assert (= (and b!5671688 c!997660) b!5671686))

(assert (= (and b!5671688 (not c!997660)) b!5671683))

(assert (= (and d!1790490 res!2396664) b!5671690))

(assert (= (and b!5671690 c!997661) b!5671689))

(assert (= (and b!5671690 (not c!997661)) b!5671691))

(assert (= (and b!5671691 c!997662) b!5671685))

(assert (= (and b!5671691 (not c!997662)) b!5671687))

(assert (=> b!5671690 m!6632410))

(declare-fun m!6632876 () Bool)

(assert (=> b!5671686 m!6632876))

(declare-fun m!6632878 () Bool)

(assert (=> b!5671689 m!6632878))

(declare-fun m!6632880 () Bool)

(assert (=> b!5671687 m!6632880))

(declare-fun m!6632882 () Bool)

(assert (=> d!1790490 m!6632882))

(declare-fun m!6632884 () Bool)

(assert (=> d!1790490 m!6632884))

(declare-fun m!6632886 () Bool)

(assert (=> b!5671685 m!6632886))

(declare-fun m!6632888 () Bool)

(assert (=> b!5671692 m!6632888))

(declare-fun m!6632890 () Bool)

(assert (=> b!5671691 m!6632890))

(assert (=> b!5671691 m!6632890))

(declare-fun m!6632892 () Bool)

(assert (=> b!5671691 m!6632892))

(assert (=> b!5671182 d!1790490))

(declare-fun bs!1321606 () Bool)

(declare-fun d!1790492 () Bool)

(assert (= bs!1321606 (and d!1790492 d!1790330)))

(declare-fun lambda!305258 () Int)

(assert (=> bs!1321606 (not (= lambda!305258 lambda!305227))))

(declare-fun bs!1321607 () Bool)

(assert (= bs!1321607 (and d!1790492 b!5671425)))

(assert (=> bs!1321607 (not (= lambda!305258 lambda!305230))))

(declare-fun bs!1321608 () Bool)

(assert (= bs!1321608 (and d!1790492 d!1790286)))

(assert (=> bs!1321608 (not (= lambda!305258 lambda!305216))))

(declare-fun bs!1321609 () Bool)

(assert (= bs!1321609 (and d!1790492 b!5670286)))

(assert (=> bs!1321609 (not (= lambda!305258 lambda!305110))))

(declare-fun bs!1321610 () Bool)

(assert (= bs!1321610 (and d!1790492 b!5670291)))

(assert (=> bs!1321610 (not (= lambda!305258 lambda!305113))))

(declare-fun bs!1321611 () Bool)

(assert (= bs!1321611 (and d!1790492 b!5670289)))

(assert (=> bs!1321611 (not (= lambda!305258 lambda!305112))))

(declare-fun bs!1321612 () Bool)

(assert (= bs!1321612 (and d!1790492 d!1790462)))

(assert (=> bs!1321612 (not (= lambda!305258 lambda!305253))))

(declare-fun bs!1321613 () Bool)

(assert (= bs!1321613 (and d!1790492 b!5670284)))

(assert (=> bs!1321613 (not (= lambda!305258 lambda!305109))))

(declare-fun bs!1321614 () Bool)

(assert (= bs!1321614 (and d!1790492 b!5671427)))

(assert (=> bs!1321614 (not (= lambda!305258 lambda!305231))))

(declare-fun bs!1321615 () Bool)

(assert (= bs!1321615 (and d!1790492 d!1790356)))

(assert (=> bs!1321615 (= (and (= lt!2268166 lt!2268162) (= lambda!305111 lambda!305108)) (= lambda!305258 lambda!305234))))

(assert (=> d!1790492 true))

(assert (=> d!1790492 true))

(assert (=> d!1790492 (< (dynLambda!24714 order!27177 lambda!305111) (dynLambda!24715 order!27179 lambda!305258))))

(assert (=> d!1790492 (forall!14809 (t!376578 zl!343) lambda!305258)))

(declare-fun lt!2268372 () Unit!156160)

(assert (=> d!1790492 (= lt!2268372 (choose!42909 (t!376578 zl!343) lt!2268166 (zipperDepth!220 (t!376578 zl!343)) lambda!305111))))

(assert (=> d!1790492 (>= lt!2268166 (zipperDepth!220 (t!376578 zl!343)))))

(assert (=> d!1790492 (= (lemmaForallContextDepthBiggerThanTransitive!114 (t!376578 zl!343) lt!2268166 (zipperDepth!220 (t!376578 zl!343)) lambda!305111) lt!2268372)))

(declare-fun bs!1321616 () Bool)

(assert (= bs!1321616 d!1790492))

(declare-fun m!6632894 () Bool)

(assert (=> bs!1321616 m!6632894))

(assert (=> bs!1321616 m!6631584))

(declare-fun m!6632896 () Bool)

(assert (=> bs!1321616 m!6632896))

(assert (=> b!5670289 d!1790492))

(declare-fun bs!1321617 () Bool)

(declare-fun b!5671693 () Bool)

(assert (= bs!1321617 (and b!5671693 d!1790464)))

(declare-fun lambda!305259 () Int)

(assert (=> bs!1321617 (not (= lambda!305259 lambda!305254))))

(declare-fun bs!1321618 () Bool)

(assert (= bs!1321618 (and b!5671693 d!1790156)))

(assert (=> bs!1321618 (not (= lambda!305259 lambda!305181))))

(declare-fun bs!1321619 () Bool)

(assert (= bs!1321619 (and b!5671693 d!1790174)))

(assert (=> bs!1321619 (not (= lambda!305259 lambda!305184))))

(declare-fun bs!1321620 () Bool)

(assert (= bs!1321620 (and b!5671693 d!1790426)))

(assert (=> bs!1321620 (not (= lambda!305259 lambda!305249))))

(declare-fun bs!1321621 () Bool)

(assert (= bs!1321621 (and b!5671693 d!1790140)))

(assert (=> bs!1321621 (not (= lambda!305259 lambda!305180))))

(declare-fun bs!1321622 () Bool)

(assert (= bs!1321622 (and b!5671693 d!1790394)))

(assert (=> bs!1321622 (not (= lambda!305259 lambda!305245))))

(declare-fun bs!1321623 () Bool)

(assert (= bs!1321623 (and b!5671693 d!1790372)))

(assert (=> bs!1321623 (not (= lambda!305259 lambda!305243))))

(declare-fun bs!1321624 () Bool)

(assert (= bs!1321624 (and b!5671693 d!1790260)))

(assert (=> bs!1321624 (not (= lambda!305259 lambda!305213))))

(declare-fun bs!1321625 () Bool)

(assert (= bs!1321625 (and b!5671693 b!5671439)))

(declare-fun lt!2268376 () Int)

(assert (=> bs!1321625 (= (= lt!2268376 lt!2268348) (= lambda!305259 lambda!305240))))

(declare-fun bs!1321626 () Bool)

(assert (= bs!1321626 (and b!5671693 d!1790258)))

(assert (=> bs!1321626 (not (= lambda!305259 lambda!305210))))

(declare-fun bs!1321627 () Bool)

(assert (= bs!1321627 (and b!5671693 d!1790180)))

(assert (=> bs!1321627 (not (= lambda!305259 lambda!305185))))

(declare-fun bs!1321628 () Bool)

(assert (= bs!1321628 (and b!5671693 b!5671437)))

(assert (=> bs!1321628 (= (= lt!2268376 lt!2268351) (= lambda!305259 lambda!305239))))

(declare-fun bs!1321629 () Bool)

(assert (= bs!1321629 (and b!5671693 d!1790238)))

(assert (=> bs!1321629 (not (= lambda!305259 lambda!305204))))

(declare-fun bs!1321630 () Bool)

(assert (= bs!1321630 (and b!5671693 d!1790228)))

(assert (=> bs!1321630 (not (= lambda!305259 lambda!305203))))

(declare-fun bs!1321631 () Bool)

(assert (= bs!1321631 (and b!5671693 d!1790490)))

(assert (=> bs!1321631 (not (= lambda!305259 lambda!305257))))

(assert (=> b!5671693 true))

(declare-fun bs!1321632 () Bool)

(declare-fun b!5671695 () Bool)

(assert (= bs!1321632 (and b!5671695 d!1790464)))

(declare-fun lambda!305260 () Int)

(assert (=> bs!1321632 (not (= lambda!305260 lambda!305254))))

(declare-fun bs!1321633 () Bool)

(assert (= bs!1321633 (and b!5671695 d!1790156)))

(assert (=> bs!1321633 (not (= lambda!305260 lambda!305181))))

(declare-fun bs!1321634 () Bool)

(assert (= bs!1321634 (and b!5671695 d!1790174)))

(assert (=> bs!1321634 (not (= lambda!305260 lambda!305184))))

(declare-fun bs!1321635 () Bool)

(assert (= bs!1321635 (and b!5671695 d!1790426)))

(assert (=> bs!1321635 (not (= lambda!305260 lambda!305249))))

(declare-fun bs!1321636 () Bool)

(assert (= bs!1321636 (and b!5671695 d!1790394)))

(assert (=> bs!1321636 (not (= lambda!305260 lambda!305245))))

(declare-fun bs!1321637 () Bool)

(assert (= bs!1321637 (and b!5671695 d!1790372)))

(assert (=> bs!1321637 (not (= lambda!305260 lambda!305243))))

(declare-fun bs!1321638 () Bool)

(assert (= bs!1321638 (and b!5671695 d!1790260)))

(assert (=> bs!1321638 (not (= lambda!305260 lambda!305213))))

(declare-fun bs!1321639 () Bool)

(assert (= bs!1321639 (and b!5671695 b!5671439)))

(declare-fun lt!2268373 () Int)

(assert (=> bs!1321639 (= (= lt!2268373 lt!2268348) (= lambda!305260 lambda!305240))))

(declare-fun bs!1321640 () Bool)

(assert (= bs!1321640 (and b!5671695 d!1790258)))

(assert (=> bs!1321640 (not (= lambda!305260 lambda!305210))))

(declare-fun bs!1321641 () Bool)

(assert (= bs!1321641 (and b!5671695 d!1790180)))

(assert (=> bs!1321641 (not (= lambda!305260 lambda!305185))))

(declare-fun bs!1321642 () Bool)

(assert (= bs!1321642 (and b!5671695 b!5671437)))

(assert (=> bs!1321642 (= (= lt!2268373 lt!2268351) (= lambda!305260 lambda!305239))))

(declare-fun bs!1321643 () Bool)

(assert (= bs!1321643 (and b!5671695 d!1790238)))

(assert (=> bs!1321643 (not (= lambda!305260 lambda!305204))))

(declare-fun bs!1321644 () Bool)

(assert (= bs!1321644 (and b!5671695 b!5671693)))

(assert (=> bs!1321644 (= (= lt!2268373 lt!2268376) (= lambda!305260 lambda!305259))))

(declare-fun bs!1321645 () Bool)

(assert (= bs!1321645 (and b!5671695 d!1790140)))

(assert (=> bs!1321645 (not (= lambda!305260 lambda!305180))))

(declare-fun bs!1321646 () Bool)

(assert (= bs!1321646 (and b!5671695 d!1790228)))

(assert (=> bs!1321646 (not (= lambda!305260 lambda!305203))))

(declare-fun bs!1321647 () Bool)

(assert (= bs!1321647 (and b!5671695 d!1790490)))

(assert (=> bs!1321647 (not (= lambda!305260 lambda!305257))))

(assert (=> b!5671695 true))

(declare-fun d!1790494 () Bool)

(declare-fun e!3491422 () Bool)

(assert (=> d!1790494 e!3491422))

(declare-fun res!2396666 () Bool)

(assert (=> d!1790494 (=> (not res!2396666) (not e!3491422))))

(assert (=> d!1790494 (= res!2396666 (>= lt!2268373 0))))

(declare-fun e!3491421 () Int)

(assert (=> d!1790494 (= lt!2268373 e!3491421)))

(declare-fun c!997664 () Bool)

(assert (=> d!1790494 (= c!997664 ((_ is Cons!63146) (exprs!5541 (h!69596 zl!343))))))

(assert (=> d!1790494 (= (contextDepth!124 (h!69596 zl!343)) lt!2268373)))

(assert (=> b!5671693 (= e!3491421 lt!2268376)))

(assert (=> b!5671693 (= lt!2268376 (maxBigInt!0 (regexDepth!226 (h!69594 (exprs!5541 (h!69596 zl!343)))) (contextDepth!124 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun lt!2268374 () Unit!156160)

(assert (=> b!5671693 (= lt!2268374 (lemmaForallRegexDepthBiggerThanTransitive!29 (t!376576 (exprs!5541 (h!69596 zl!343))) lt!2268376 (contextDepth!124 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(assert (=> b!5671693 (forall!14810 (t!376576 (exprs!5541 (h!69596 zl!343))) lambda!305259)))

(declare-fun lt!2268375 () Unit!156160)

(assert (=> b!5671693 (= lt!2268375 lt!2268374)))

(declare-fun b!5671694 () Bool)

(assert (=> b!5671694 (= e!3491421 0)))

(assert (=> b!5671695 (= e!3491422 (forall!14810 (exprs!5541 (h!69596 zl!343)) lambda!305260))))

(assert (= (and d!1790494 c!997664) b!5671693))

(assert (= (and d!1790494 (not c!997664)) b!5671694))

(assert (= (and d!1790494 res!2396666) b!5671695))

(declare-fun m!6632898 () Bool)

(assert (=> b!5671693 m!6632898))

(declare-fun m!6632900 () Bool)

(assert (=> b!5671693 m!6632900))

(declare-fun m!6632902 () Bool)

(assert (=> b!5671693 m!6632902))

(declare-fun m!6632904 () Bool)

(assert (=> b!5671693 m!6632904))

(assert (=> b!5671693 m!6632898))

(declare-fun m!6632906 () Bool)

(assert (=> b!5671693 m!6632906))

(assert (=> b!5671693 m!6632904))

(assert (=> b!5671693 m!6632898))

(declare-fun m!6632908 () Bool)

(assert (=> b!5671695 m!6632908))

(assert (=> b!5670289 d!1790494))

(declare-fun bs!1321648 () Bool)

(declare-fun b!5671696 () Bool)

(assert (= bs!1321648 (and b!5671696 b!5670284)))

(declare-fun lambda!305261 () Int)

(assert (=> bs!1321648 (= lambda!305261 lambda!305108)))

(declare-fun bs!1321649 () Bool)

(assert (= bs!1321649 (and b!5671696 b!5670289)))

(assert (=> bs!1321649 (= lambda!305261 lambda!305111)))

(declare-fun bs!1321650 () Bool)

(assert (= bs!1321650 (and b!5671696 b!5671425)))

(assert (=> bs!1321650 (= lambda!305261 lambda!305229)))

(declare-fun bs!1321651 () Bool)

(assert (= bs!1321651 (and b!5671696 d!1790330)))

(declare-fun lambda!305262 () Int)

(assert (=> bs!1321651 (not (= lambda!305262 lambda!305227))))

(declare-fun lt!2268378 () Int)

(assert (=> bs!1321650 (= (= lt!2268378 lt!2268334) (= lambda!305262 lambda!305230))))

(declare-fun bs!1321652 () Bool)

(assert (= bs!1321652 (and b!5671696 d!1790286)))

(assert (=> bs!1321652 (not (= lambda!305262 lambda!305216))))

(declare-fun bs!1321653 () Bool)

(assert (= bs!1321653 (and b!5671696 b!5670286)))

(assert (=> bs!1321653 (= (= lt!2268378 lt!2268161) (= lambda!305262 lambda!305110))))

(declare-fun bs!1321654 () Bool)

(assert (= bs!1321654 (and b!5671696 b!5670291)))

(assert (=> bs!1321654 (= (= lt!2268378 lt!2268165) (= lambda!305262 lambda!305113))))

(declare-fun bs!1321655 () Bool)

(assert (= bs!1321655 (and b!5671696 d!1790492)))

(assert (=> bs!1321655 (not (= lambda!305262 lambda!305258))))

(assert (=> bs!1321649 (= (= lt!2268378 lt!2268166) (= lambda!305262 lambda!305112))))

(declare-fun bs!1321656 () Bool)

(assert (= bs!1321656 (and b!5671696 d!1790462)))

(assert (=> bs!1321656 (not (= lambda!305262 lambda!305253))))

(assert (=> bs!1321648 (= (= lt!2268378 lt!2268162) (= lambda!305262 lambda!305109))))

(declare-fun bs!1321657 () Bool)

(assert (= bs!1321657 (and b!5671696 b!5671427)))

(assert (=> bs!1321657 (= (= lt!2268378 lt!2268333) (= lambda!305262 lambda!305231))))

(declare-fun bs!1321658 () Bool)

(assert (= bs!1321658 (and b!5671696 d!1790356)))

(assert (=> bs!1321658 (not (= lambda!305262 lambda!305234))))

(assert (=> b!5671696 true))

(declare-fun bs!1321659 () Bool)

(declare-fun b!5671698 () Bool)

(assert (= bs!1321659 (and b!5671698 d!1790330)))

(declare-fun lambda!305263 () Int)

(assert (=> bs!1321659 (not (= lambda!305263 lambda!305227))))

(declare-fun bs!1321660 () Bool)

(assert (= bs!1321660 (and b!5671698 b!5671425)))

(declare-fun lt!2268377 () Int)

(assert (=> bs!1321660 (= (= lt!2268377 lt!2268334) (= lambda!305263 lambda!305230))))

(declare-fun bs!1321661 () Bool)

(assert (= bs!1321661 (and b!5671698 d!1790286)))

(assert (=> bs!1321661 (not (= lambda!305263 lambda!305216))))

(declare-fun bs!1321662 () Bool)

(assert (= bs!1321662 (and b!5671698 b!5670286)))

(assert (=> bs!1321662 (= (= lt!2268377 lt!2268161) (= lambda!305263 lambda!305110))))

(declare-fun bs!1321663 () Bool)

(assert (= bs!1321663 (and b!5671698 b!5670291)))

(assert (=> bs!1321663 (= (= lt!2268377 lt!2268165) (= lambda!305263 lambda!305113))))

(declare-fun bs!1321664 () Bool)

(assert (= bs!1321664 (and b!5671698 b!5671696)))

(assert (=> bs!1321664 (= (= lt!2268377 lt!2268378) (= lambda!305263 lambda!305262))))

(declare-fun bs!1321665 () Bool)

(assert (= bs!1321665 (and b!5671698 d!1790492)))

(assert (=> bs!1321665 (not (= lambda!305263 lambda!305258))))

(declare-fun bs!1321666 () Bool)

(assert (= bs!1321666 (and b!5671698 b!5670289)))

(assert (=> bs!1321666 (= (= lt!2268377 lt!2268166) (= lambda!305263 lambda!305112))))

(declare-fun bs!1321667 () Bool)

(assert (= bs!1321667 (and b!5671698 d!1790462)))

(assert (=> bs!1321667 (not (= lambda!305263 lambda!305253))))

(declare-fun bs!1321668 () Bool)

(assert (= bs!1321668 (and b!5671698 b!5670284)))

(assert (=> bs!1321668 (= (= lt!2268377 lt!2268162) (= lambda!305263 lambda!305109))))

(declare-fun bs!1321669 () Bool)

(assert (= bs!1321669 (and b!5671698 b!5671427)))

(assert (=> bs!1321669 (= (= lt!2268377 lt!2268333) (= lambda!305263 lambda!305231))))

(declare-fun bs!1321670 () Bool)

(assert (= bs!1321670 (and b!5671698 d!1790356)))

(assert (=> bs!1321670 (not (= lambda!305263 lambda!305234))))

(assert (=> b!5671698 true))

(declare-fun d!1790496 () Bool)

(declare-fun e!3491423 () Bool)

(assert (=> d!1790496 e!3491423))

(declare-fun res!2396667 () Bool)

(assert (=> d!1790496 (=> (not res!2396667) (not e!3491423))))

(assert (=> d!1790496 (= res!2396667 (>= lt!2268377 0))))

(declare-fun e!3491424 () Int)

(assert (=> d!1790496 (= lt!2268377 e!3491424)))

(declare-fun c!997665 () Bool)

(assert (=> d!1790496 (= c!997665 ((_ is Cons!63148) (t!376578 zl!343)))))

(assert (=> d!1790496 (= (zipperDepth!220 (t!376578 zl!343)) lt!2268377)))

(assert (=> b!5671696 (= e!3491424 lt!2268378)))

(assert (=> b!5671696 (= lt!2268378 (maxBigInt!0 (contextDepth!124 (h!69596 (t!376578 zl!343))) (zipperDepth!220 (t!376578 (t!376578 zl!343)))))))

(declare-fun lt!2268379 () Unit!156160)

(assert (=> b!5671696 (= lt!2268379 (lemmaForallContextDepthBiggerThanTransitive!114 (t!376578 (t!376578 zl!343)) lt!2268378 (zipperDepth!220 (t!376578 (t!376578 zl!343))) lambda!305261))))

(assert (=> b!5671696 (forall!14809 (t!376578 (t!376578 zl!343)) lambda!305262)))

(declare-fun lt!2268380 () Unit!156160)

(assert (=> b!5671696 (= lt!2268380 lt!2268379)))

(declare-fun b!5671697 () Bool)

(assert (=> b!5671697 (= e!3491424 0)))

(assert (=> b!5671698 (= e!3491423 (forall!14809 (t!376578 zl!343) lambda!305263))))

(assert (= (and d!1790496 c!997665) b!5671696))

(assert (= (and d!1790496 (not c!997665)) b!5671697))

(assert (= (and d!1790496 res!2396667) b!5671698))

(declare-fun m!6632910 () Bool)

(assert (=> b!5671696 m!6632910))

(declare-fun m!6632912 () Bool)

(assert (=> b!5671696 m!6632912))

(assert (=> b!5671696 m!6632910))

(assert (=> b!5671696 m!6632912))

(declare-fun m!6632914 () Bool)

(assert (=> b!5671696 m!6632914))

(declare-fun m!6632916 () Bool)

(assert (=> b!5671696 m!6632916))

(assert (=> b!5671696 m!6632912))

(declare-fun m!6632918 () Bool)

(assert (=> b!5671696 m!6632918))

(declare-fun m!6632920 () Bool)

(assert (=> b!5671698 m!6632920))

(assert (=> b!5670289 d!1790496))

(declare-fun d!1790498 () Bool)

(assert (=> d!1790498 (= (maxBigInt!0 (contextDepth!124 (h!69596 zl!343)) (zipperDepth!220 (t!376578 zl!343))) (ite (>= (contextDepth!124 (h!69596 zl!343)) (zipperDepth!220 (t!376578 zl!343))) (contextDepth!124 (h!69596 zl!343)) (zipperDepth!220 (t!376578 zl!343))))))

(assert (=> b!5670289 d!1790498))

(declare-fun d!1790500 () Bool)

(declare-fun res!2396668 () Bool)

(declare-fun e!3491425 () Bool)

(assert (=> d!1790500 (=> res!2396668 e!3491425)))

(assert (=> d!1790500 (= res!2396668 ((_ is Nil!63148) (t!376578 zl!343)))))

(assert (=> d!1790500 (= (forall!14809 (t!376578 zl!343) lambda!305112) e!3491425)))

(declare-fun b!5671699 () Bool)

(declare-fun e!3491426 () Bool)

(assert (=> b!5671699 (= e!3491425 e!3491426)))

(declare-fun res!2396669 () Bool)

(assert (=> b!5671699 (=> (not res!2396669) (not e!3491426))))

(assert (=> b!5671699 (= res!2396669 (dynLambda!24713 lambda!305112 (h!69596 (t!376578 zl!343))))))

(declare-fun b!5671700 () Bool)

(assert (=> b!5671700 (= e!3491426 (forall!14809 (t!376578 (t!376578 zl!343)) lambda!305112))))

(assert (= (and d!1790500 (not res!2396668)) b!5671699))

(assert (= (and b!5671699 res!2396669) b!5671700))

(declare-fun b_lambda!214521 () Bool)

(assert (=> (not b_lambda!214521) (not b!5671699)))

(declare-fun m!6632922 () Bool)

(assert (=> b!5671699 m!6632922))

(declare-fun m!6632924 () Bool)

(assert (=> b!5671700 m!6632924))

(assert (=> b!5670289 d!1790500))

(assert (=> d!1790160 d!1790410))

(assert (=> d!1790160 d!1790368))

(declare-fun b!5671701 () Bool)

(declare-fun res!2396670 () Bool)

(declare-fun e!3491431 () Bool)

(assert (=> b!5671701 (=> (not res!2396670) (not e!3491431))))

(declare-fun call!430252 () Bool)

(assert (=> b!5671701 (= res!2396670 (not call!430252))))

(declare-fun b!5671702 () Bool)

(declare-fun e!3491429 () Bool)

(declare-fun e!3491430 () Bool)

(assert (=> b!5671702 (= e!3491429 e!3491430)))

(declare-fun c!997666 () Bool)

(assert (=> b!5671702 (= c!997666 ((_ is EmptyLang!15657) (regOne!31826 r!7292)))))

(declare-fun b!5671703 () Bool)

(declare-fun e!3491427 () Bool)

(assert (=> b!5671703 (= e!3491427 (matchR!7842 (derivativeStep!4482 (regOne!31826 r!7292) (head!12038 (_1!36057 (get!21758 lt!2268207)))) (tail!11133 (_1!36057 (get!21758 lt!2268207)))))))

(declare-fun b!5671704 () Bool)

(assert (=> b!5671704 (= e!3491427 (nullable!5689 (regOne!31826 r!7292)))))

(declare-fun bm!430247 () Bool)

(assert (=> bm!430247 (= call!430252 (isEmpty!35001 (_1!36057 (get!21758 lt!2268207))))))

(declare-fun b!5671705 () Bool)

(declare-fun res!2396671 () Bool)

(assert (=> b!5671705 (=> (not res!2396671) (not e!3491431))))

(assert (=> b!5671705 (= res!2396671 (isEmpty!35001 (tail!11133 (_1!36057 (get!21758 lt!2268207)))))))

(declare-fun b!5671706 () Bool)

(declare-fun e!3491432 () Bool)

(declare-fun e!3491428 () Bool)

(assert (=> b!5671706 (= e!3491432 e!3491428)))

(declare-fun res!2396675 () Bool)

(assert (=> b!5671706 (=> (not res!2396675) (not e!3491428))))

(declare-fun lt!2268381 () Bool)

(assert (=> b!5671706 (= res!2396675 (not lt!2268381))))

(declare-fun b!5671707 () Bool)

(declare-fun e!3491433 () Bool)

(assert (=> b!5671707 (= e!3491428 e!3491433)))

(declare-fun res!2396673 () Bool)

(assert (=> b!5671707 (=> res!2396673 e!3491433)))

(assert (=> b!5671707 (= res!2396673 call!430252)))

(declare-fun d!1790502 () Bool)

(assert (=> d!1790502 e!3491429))

(declare-fun c!997667 () Bool)

(assert (=> d!1790502 (= c!997667 ((_ is EmptyExpr!15657) (regOne!31826 r!7292)))))

(assert (=> d!1790502 (= lt!2268381 e!3491427)))

(declare-fun c!997668 () Bool)

(assert (=> d!1790502 (= c!997668 (isEmpty!35001 (_1!36057 (get!21758 lt!2268207))))))

(assert (=> d!1790502 (validRegex!7393 (regOne!31826 r!7292))))

(assert (=> d!1790502 (= (matchR!7842 (regOne!31826 r!7292) (_1!36057 (get!21758 lt!2268207))) lt!2268381)))

(declare-fun b!5671708 () Bool)

(assert (=> b!5671708 (= e!3491433 (not (= (head!12038 (_1!36057 (get!21758 lt!2268207))) (c!997231 (regOne!31826 r!7292)))))))

(declare-fun b!5671709 () Bool)

(declare-fun res!2396672 () Bool)

(assert (=> b!5671709 (=> res!2396672 e!3491432)))

(assert (=> b!5671709 (= res!2396672 e!3491431)))

(declare-fun res!2396674 () Bool)

(assert (=> b!5671709 (=> (not res!2396674) (not e!3491431))))

(assert (=> b!5671709 (= res!2396674 lt!2268381)))

(declare-fun b!5671710 () Bool)

(assert (=> b!5671710 (= e!3491430 (not lt!2268381))))

(declare-fun b!5671711 () Bool)

(assert (=> b!5671711 (= e!3491429 (= lt!2268381 call!430252))))

(declare-fun b!5671712 () Bool)

(declare-fun res!2396677 () Bool)

(assert (=> b!5671712 (=> res!2396677 e!3491433)))

(assert (=> b!5671712 (= res!2396677 (not (isEmpty!35001 (tail!11133 (_1!36057 (get!21758 lt!2268207))))))))

(declare-fun b!5671713 () Bool)

(assert (=> b!5671713 (= e!3491431 (= (head!12038 (_1!36057 (get!21758 lt!2268207))) (c!997231 (regOne!31826 r!7292))))))

(declare-fun b!5671714 () Bool)

(declare-fun res!2396676 () Bool)

(assert (=> b!5671714 (=> res!2396676 e!3491432)))

(assert (=> b!5671714 (= res!2396676 (not ((_ is ElementMatch!15657) (regOne!31826 r!7292))))))

(assert (=> b!5671714 (= e!3491430 e!3491432)))

(assert (= (and d!1790502 c!997668) b!5671704))

(assert (= (and d!1790502 (not c!997668)) b!5671703))

(assert (= (and d!1790502 c!997667) b!5671711))

(assert (= (and d!1790502 (not c!997667)) b!5671702))

(assert (= (and b!5671702 c!997666) b!5671710))

(assert (= (and b!5671702 (not c!997666)) b!5671714))

(assert (= (and b!5671714 (not res!2396676)) b!5671709))

(assert (= (and b!5671709 res!2396674) b!5671701))

(assert (= (and b!5671701 res!2396670) b!5671705))

(assert (= (and b!5671705 res!2396671) b!5671713))

(assert (= (and b!5671709 (not res!2396672)) b!5671706))

(assert (= (and b!5671706 res!2396675) b!5671707))

(assert (= (and b!5671707 (not res!2396673)) b!5671712))

(assert (= (and b!5671712 (not res!2396677)) b!5671708))

(assert (= (or b!5671711 b!5671701 b!5671707) bm!430247))

(declare-fun m!6632926 () Bool)

(assert (=> b!5671705 m!6632926))

(assert (=> b!5671705 m!6632926))

(declare-fun m!6632928 () Bool)

(assert (=> b!5671705 m!6632928))

(assert (=> b!5671712 m!6632926))

(assert (=> b!5671712 m!6632926))

(assert (=> b!5671712 m!6632928))

(declare-fun m!6632930 () Bool)

(assert (=> d!1790502 m!6632930))

(assert (=> d!1790502 m!6631734))

(declare-fun m!6632932 () Bool)

(assert (=> b!5671713 m!6632932))

(assert (=> b!5671703 m!6632932))

(assert (=> b!5671703 m!6632932))

(declare-fun m!6632934 () Bool)

(assert (=> b!5671703 m!6632934))

(assert (=> b!5671703 m!6632926))

(assert (=> b!5671703 m!6632934))

(assert (=> b!5671703 m!6632926))

(declare-fun m!6632936 () Bool)

(assert (=> b!5671703 m!6632936))

(assert (=> b!5671704 m!6632506))

(assert (=> b!5671708 m!6632932))

(assert (=> bm!430247 m!6632930))

(assert (=> b!5670428 d!1790502))

(declare-fun d!1790504 () Bool)

(assert (=> d!1790504 (= (get!21758 lt!2268207) (v!51714 lt!2268207))))

(assert (=> b!5670428 d!1790504))

(assert (=> b!5670519 d!1790233))

(declare-fun d!1790506 () Bool)

(declare-fun lt!2268382 () Int)

(assert (=> d!1790506 (>= lt!2268382 0)))

(declare-fun e!3491434 () Int)

(assert (=> d!1790506 (= lt!2268382 e!3491434)))

(declare-fun c!997669 () Bool)

(assert (=> d!1790506 (= c!997669 ((_ is Cons!63148) (t!376578 zl!343)))))

(assert (=> d!1790506 (= (zipperDepthTotal!254 (t!376578 zl!343)) lt!2268382)))

(declare-fun b!5671715 () Bool)

(assert (=> b!5671715 (= e!3491434 (+ (contextDepthTotal!232 (h!69596 (t!376578 zl!343))) (zipperDepthTotal!254 (t!376578 (t!376578 zl!343)))))))

(declare-fun b!5671716 () Bool)

(assert (=> b!5671716 (= e!3491434 0)))

(assert (= (and d!1790506 c!997669) b!5671715))

(assert (= (and d!1790506 (not c!997669)) b!5671716))

(declare-fun m!6632938 () Bool)

(assert (=> b!5671715 m!6632938))

(declare-fun m!6632940 () Bool)

(assert (=> b!5671715 m!6632940))

(assert (=> b!5670519 d!1790506))

(assert (=> bm!430152 d!1790410))

(declare-fun b!5671717 () Bool)

(declare-fun res!2396678 () Bool)

(declare-fun e!3491439 () Bool)

(assert (=> b!5671717 (=> (not res!2396678) (not e!3491439))))

(declare-fun call!430253 () Bool)

(assert (=> b!5671717 (= res!2396678 (not call!430253))))

(declare-fun b!5671718 () Bool)

(declare-fun e!3491437 () Bool)

(declare-fun e!3491438 () Bool)

(assert (=> b!5671718 (= e!3491437 e!3491438)))

(declare-fun c!997670 () Bool)

(assert (=> b!5671718 (= c!997670 ((_ is EmptyLang!15657) (regTwo!31826 r!7292)))))

(declare-fun b!5671719 () Bool)

(declare-fun e!3491435 () Bool)

(assert (=> b!5671719 (= e!3491435 (matchR!7842 (derivativeStep!4482 (regTwo!31826 r!7292) (head!12038 s!2326)) (tail!11133 s!2326)))))

(declare-fun b!5671720 () Bool)

(assert (=> b!5671720 (= e!3491435 (nullable!5689 (regTwo!31826 r!7292)))))

(declare-fun bm!430248 () Bool)

(assert (=> bm!430248 (= call!430253 (isEmpty!35001 s!2326))))

(declare-fun b!5671721 () Bool)

(declare-fun res!2396679 () Bool)

(assert (=> b!5671721 (=> (not res!2396679) (not e!3491439))))

(assert (=> b!5671721 (= res!2396679 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun b!5671722 () Bool)

(declare-fun e!3491440 () Bool)

(declare-fun e!3491436 () Bool)

(assert (=> b!5671722 (= e!3491440 e!3491436)))

(declare-fun res!2396683 () Bool)

(assert (=> b!5671722 (=> (not res!2396683) (not e!3491436))))

(declare-fun lt!2268383 () Bool)

(assert (=> b!5671722 (= res!2396683 (not lt!2268383))))

(declare-fun b!5671723 () Bool)

(declare-fun e!3491441 () Bool)

(assert (=> b!5671723 (= e!3491436 e!3491441)))

(declare-fun res!2396681 () Bool)

(assert (=> b!5671723 (=> res!2396681 e!3491441)))

(assert (=> b!5671723 (= res!2396681 call!430253)))

(declare-fun d!1790508 () Bool)

(assert (=> d!1790508 e!3491437))

(declare-fun c!997671 () Bool)

(assert (=> d!1790508 (= c!997671 ((_ is EmptyExpr!15657) (regTwo!31826 r!7292)))))

(assert (=> d!1790508 (= lt!2268383 e!3491435)))

(declare-fun c!997672 () Bool)

(assert (=> d!1790508 (= c!997672 (isEmpty!35001 s!2326))))

(assert (=> d!1790508 (validRegex!7393 (regTwo!31826 r!7292))))

(assert (=> d!1790508 (= (matchR!7842 (regTwo!31826 r!7292) s!2326) lt!2268383)))

(declare-fun b!5671724 () Bool)

(assert (=> b!5671724 (= e!3491441 (not (= (head!12038 s!2326) (c!997231 (regTwo!31826 r!7292)))))))

(declare-fun b!5671725 () Bool)

(declare-fun res!2396680 () Bool)

(assert (=> b!5671725 (=> res!2396680 e!3491440)))

(assert (=> b!5671725 (= res!2396680 e!3491439)))

(declare-fun res!2396682 () Bool)

(assert (=> b!5671725 (=> (not res!2396682) (not e!3491439))))

(assert (=> b!5671725 (= res!2396682 lt!2268383)))

(declare-fun b!5671726 () Bool)

(assert (=> b!5671726 (= e!3491438 (not lt!2268383))))

(declare-fun b!5671727 () Bool)

(assert (=> b!5671727 (= e!3491437 (= lt!2268383 call!430253))))

(declare-fun b!5671728 () Bool)

(declare-fun res!2396685 () Bool)

(assert (=> b!5671728 (=> res!2396685 e!3491441)))

(assert (=> b!5671728 (= res!2396685 (not (isEmpty!35001 (tail!11133 s!2326))))))

(declare-fun b!5671729 () Bool)

(assert (=> b!5671729 (= e!3491439 (= (head!12038 s!2326) (c!997231 (regTwo!31826 r!7292))))))

(declare-fun b!5671730 () Bool)

(declare-fun res!2396684 () Bool)

(assert (=> b!5671730 (=> res!2396684 e!3491440)))

(assert (=> b!5671730 (= res!2396684 (not ((_ is ElementMatch!15657) (regTwo!31826 r!7292))))))

(assert (=> b!5671730 (= e!3491438 e!3491440)))

(assert (= (and d!1790508 c!997672) b!5671720))

(assert (= (and d!1790508 (not c!997672)) b!5671719))

(assert (= (and d!1790508 c!997671) b!5671727))

(assert (= (and d!1790508 (not c!997671)) b!5671718))

(assert (= (and b!5671718 c!997670) b!5671726))

(assert (= (and b!5671718 (not c!997670)) b!5671730))

(assert (= (and b!5671730 (not res!2396684)) b!5671725))

(assert (= (and b!5671725 res!2396682) b!5671717))

(assert (= (and b!5671717 res!2396678) b!5671721))

(assert (= (and b!5671721 res!2396679) b!5671729))

(assert (= (and b!5671725 (not res!2396680)) b!5671722))

(assert (= (and b!5671722 res!2396683) b!5671723))

(assert (= (and b!5671723 (not res!2396681)) b!5671728))

(assert (= (and b!5671728 (not res!2396685)) b!5671724))

(assert (= (or b!5671727 b!5671717 b!5671723) bm!430248))

(assert (=> b!5671721 m!6631868))

(assert (=> b!5671721 m!6631868))

(assert (=> b!5671721 m!6631870))

(assert (=> b!5671728 m!6631868))

(assert (=> b!5671728 m!6631868))

(assert (=> b!5671728 m!6631870))

(assert (=> d!1790508 m!6631874))

(declare-fun m!6632942 () Bool)

(assert (=> d!1790508 m!6632942))

(assert (=> b!5671729 m!6631876))

(assert (=> b!5671719 m!6631876))

(assert (=> b!5671719 m!6631876))

(declare-fun m!6632944 () Bool)

(assert (=> b!5671719 m!6632944))

(assert (=> b!5671719 m!6631868))

(assert (=> b!5671719 m!6632944))

(assert (=> b!5671719 m!6631868))

(declare-fun m!6632946 () Bool)

(assert (=> b!5671719 m!6632946))

(declare-fun m!6632948 () Bool)

(assert (=> b!5671720 m!6632948))

(assert (=> b!5671724 m!6631876))

(assert (=> bm!430248 m!6631874))

(assert (=> b!5670424 d!1790508))

(declare-fun d!1790510 () Bool)

(assert (=> d!1790510 (= (nullable!5689 lt!2268120) (nullableFct!1774 lt!2268120))))

(declare-fun bs!1321671 () Bool)

(assert (= bs!1321671 d!1790510))

(declare-fun m!6632950 () Bool)

(assert (=> bs!1321671 m!6632950))

(assert (=> b!5670588 d!1790510))

(declare-fun bs!1321672 () Bool)

(declare-fun b!5671731 () Bool)

(assert (= bs!1321672 (and b!5671731 d!1790126)))

(declare-fun lambda!305264 () Int)

(assert (=> bs!1321672 (not (= lambda!305264 lambda!305176))))

(declare-fun bs!1321673 () Bool)

(assert (= bs!1321673 (and b!5671731 d!1790486)))

(assert (=> bs!1321673 (not (= lambda!305264 lambda!305256))))

(declare-fun bs!1321674 () Bool)

(assert (= bs!1321674 (and b!5671731 b!5670698)))

(assert (=> bs!1321674 (= (and (= (reg!15986 (regOne!31827 r!7292)) (reg!15986 lt!2268141)) (= (regOne!31827 r!7292) lt!2268141)) (= lambda!305264 lambda!305172))))

(declare-fun bs!1321675 () Bool)

(assert (= bs!1321675 (and b!5671731 b!5670839)))

(assert (=> bs!1321675 (= (and (= (reg!15986 (regOne!31827 r!7292)) (reg!15986 lt!2268120)) (= (regOne!31827 r!7292) lt!2268120)) (= lambda!305264 lambda!305182))))

(declare-fun bs!1321676 () Bool)

(assert (= bs!1321676 (and b!5671731 d!1790038)))

(assert (=> bs!1321676 (not (= lambda!305264 lambda!305156))))

(declare-fun bs!1321677 () Bool)

(assert (= bs!1321677 (and b!5671731 d!1790390)))

(assert (=> bs!1321677 (not (= lambda!305264 lambda!305244))))

(declare-fun bs!1321678 () Bool)

(assert (= bs!1321678 (and b!5671731 d!1790094)))

(assert (=> bs!1321678 (not (= lambda!305264 lambda!305162))))

(declare-fun bs!1321679 () Bool)

(assert (= bs!1321679 (and b!5671731 b!5670845)))

(assert (=> bs!1321679 (not (= lambda!305264 lambda!305183))))

(declare-fun bs!1321680 () Bool)

(assert (= bs!1321680 (and b!5671731 b!5671555)))

(assert (=> bs!1321680 (= (and (= (reg!15986 (regOne!31827 r!7292)) (reg!15986 (regOne!31827 lt!2268120))) (= (regOne!31827 r!7292) (regOne!31827 lt!2268120))) (= lambda!305264 lambda!305247))))

(declare-fun bs!1321681 () Bool)

(assert (= bs!1321681 (and b!5671731 b!5671572)))

(assert (=> bs!1321681 (not (= lambda!305264 lambda!305251))))

(declare-fun bs!1321682 () Bool)

(assert (= bs!1321682 (and b!5671731 b!5671471)))

(assert (=> bs!1321682 (= (and (= (reg!15986 (regOne!31827 r!7292)) (reg!15986 (regTwo!31827 r!7292))) (= (regOne!31827 r!7292) (regTwo!31827 r!7292))) (= lambda!305264 lambda!305241))))

(declare-fun bs!1321683 () Bool)

(assert (= bs!1321683 (and b!5671731 b!5670249)))

(assert (=> bs!1321683 (not (= lambda!305264 lambda!305098))))

(declare-fun bs!1321684 () Bool)

(assert (= bs!1321684 (and b!5671731 b!5671032)))

(assert (=> bs!1321684 (= (and (= (reg!15986 (regOne!31827 r!7292)) (reg!15986 r!7292)) (= (regOne!31827 r!7292) r!7292)) (= lambda!305264 lambda!305195))))

(assert (=> bs!1321676 (not (= lambda!305264 lambda!305155))))

(declare-fun bs!1321685 () Bool)

(assert (= bs!1321685 (and b!5671731 b!5671566)))

(assert (=> bs!1321685 (= (and (= (reg!15986 (regOne!31827 r!7292)) (reg!15986 (regOne!31827 lt!2268141))) (= (regOne!31827 r!7292) (regOne!31827 lt!2268141))) (= lambda!305264 lambda!305250))))

(declare-fun bs!1321686 () Bool)

(assert (= bs!1321686 (and b!5671731 d!1790294)))

(assert (=> bs!1321686 (not (= lambda!305264 lambda!305221))))

(assert (=> bs!1321672 (not (= lambda!305264 lambda!305175))))

(assert (=> bs!1321683 (not (= lambda!305264 lambda!305101))))

(assert (=> bs!1321686 (not (= lambda!305264 lambda!305222))))

(declare-fun bs!1321687 () Bool)

(assert (= bs!1321687 (and b!5671731 b!5671038)))

(assert (=> bs!1321687 (not (= lambda!305264 lambda!305196))))

(assert (=> bs!1321673 (not (= lambda!305264 lambda!305255))))

(declare-fun bs!1321688 () Bool)

(assert (= bs!1321688 (and b!5671731 d!1790100)))

(assert (=> bs!1321688 (not (= lambda!305264 lambda!305163))))

(declare-fun bs!1321689 () Bool)

(assert (= bs!1321689 (and b!5671731 b!5671561)))

(assert (=> bs!1321689 (not (= lambda!305264 lambda!305248))))

(declare-fun bs!1321690 () Bool)

(assert (= bs!1321690 (and b!5671731 d!1790314)))

(assert (=> bs!1321690 (not (= lambda!305264 lambda!305226))))

(declare-fun bs!1321691 () Bool)

(assert (= bs!1321691 (and b!5671731 d!1790034)))

(assert (=> bs!1321691 (not (= lambda!305264 lambda!305143))))

(declare-fun bs!1321692 () Bool)

(assert (= bs!1321692 (and b!5671731 b!5670241)))

(assert (=> bs!1321692 (not (= lambda!305264 lambda!305095))))

(declare-fun bs!1321693 () Bool)

(assert (= bs!1321693 (and b!5671731 b!5671477)))

(assert (=> bs!1321693 (not (= lambda!305264 lambda!305242))))

(assert (=> bs!1321683 (not (= lambda!305264 lambda!305099))))

(declare-fun bs!1321694 () Bool)

(assert (= bs!1321694 (and b!5671731 d!1790080)))

(assert (=> bs!1321694 (not (= lambda!305264 lambda!305160))))

(assert (=> bs!1321683 (not (= lambda!305264 lambda!305100))))

(declare-fun bs!1321695 () Bool)

(assert (= bs!1321695 (and b!5671731 b!5670704)))

(assert (=> bs!1321695 (not (= lambda!305264 lambda!305174))))

(assert (=> bs!1321692 (not (= lambda!305264 lambda!305096))))

(assert (=> bs!1321694 (not (= lambda!305264 lambda!305158))))

(assert (=> b!5671731 true))

(assert (=> b!5671731 true))

(declare-fun bs!1321696 () Bool)

(declare-fun b!5671737 () Bool)

(assert (= bs!1321696 (and b!5671737 d!1790126)))

(declare-fun lambda!305265 () Int)

(assert (=> bs!1321696 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 r!7292)) lt!2268129)) (= lambda!305265 lambda!305176))))

(declare-fun bs!1321697 () Bool)

(assert (= bs!1321697 (and b!5671737 d!1790486)))

(assert (=> bs!1321697 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 r!7292)) lt!2268120)) (= lambda!305265 lambda!305256))))

(declare-fun bs!1321698 () Bool)

(assert (= bs!1321698 (and b!5671737 b!5670698)))

(assert (=> bs!1321698 (not (= lambda!305265 lambda!305172))))

(declare-fun bs!1321699 () Bool)

(assert (= bs!1321699 (and b!5671737 b!5670839)))

(assert (=> bs!1321699 (not (= lambda!305265 lambda!305182))))

(declare-fun bs!1321700 () Bool)

(assert (= bs!1321700 (and b!5671737 d!1790390)))

(assert (=> bs!1321700 (not (= lambda!305265 lambda!305244))))

(declare-fun bs!1321701 () Bool)

(assert (= bs!1321701 (and b!5671737 d!1790094)))

(assert (=> bs!1321701 (not (= lambda!305265 lambda!305162))))

(declare-fun bs!1321702 () Bool)

(assert (= bs!1321702 (and b!5671737 b!5670845)))

(assert (=> bs!1321702 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 lt!2268120)) (= (regTwo!31826 (regOne!31827 r!7292)) (regTwo!31826 lt!2268120))) (= lambda!305265 lambda!305183))))

(declare-fun bs!1321703 () Bool)

(assert (= bs!1321703 (and b!5671737 b!5671555)))

(assert (=> bs!1321703 (not (= lambda!305265 lambda!305247))))

(declare-fun bs!1321704 () Bool)

(assert (= bs!1321704 (and b!5671737 b!5671572)))

(assert (=> bs!1321704 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 (regOne!31827 lt!2268141))) (= (regTwo!31826 (regOne!31827 r!7292)) (regTwo!31826 (regOne!31827 lt!2268141)))) (= lambda!305265 lambda!305251))))

(declare-fun bs!1321705 () Bool)

(assert (= bs!1321705 (and b!5671737 b!5671471)))

(assert (=> bs!1321705 (not (= lambda!305265 lambda!305241))))

(declare-fun bs!1321706 () Bool)

(assert (= bs!1321706 (and b!5671737 b!5670249)))

(assert (=> bs!1321706 (not (= lambda!305265 lambda!305098))))

(declare-fun bs!1321707 () Bool)

(assert (= bs!1321707 (and b!5671737 b!5671032)))

(assert (=> bs!1321707 (not (= lambda!305265 lambda!305195))))

(declare-fun bs!1321708 () Bool)

(assert (= bs!1321708 (and b!5671737 d!1790038)))

(assert (=> bs!1321708 (not (= lambda!305265 lambda!305155))))

(declare-fun bs!1321709 () Bool)

(assert (= bs!1321709 (and b!5671737 b!5671566)))

(assert (=> bs!1321709 (not (= lambda!305265 lambda!305250))))

(declare-fun bs!1321710 () Bool)

(assert (= bs!1321710 (and b!5671737 d!1790294)))

(assert (=> bs!1321710 (not (= lambda!305265 lambda!305221))))

(assert (=> bs!1321696 (not (= lambda!305265 lambda!305175))))

(assert (=> bs!1321706 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 r!7292)) lt!2268129)) (= lambda!305265 lambda!305101))))

(assert (=> bs!1321710 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 r!7292)) lt!2268129)) (= lambda!305265 lambda!305222))))

(declare-fun bs!1321711 () Bool)

(assert (= bs!1321711 (and b!5671737 b!5671038)))

(assert (=> bs!1321711 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 r!7292)) (regTwo!31826 r!7292))) (= lambda!305265 lambda!305196))))

(assert (=> bs!1321708 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 r!7292)) (regTwo!31826 r!7292))) (= lambda!305265 lambda!305156))))

(declare-fun bs!1321712 () Bool)

(assert (= bs!1321712 (and b!5671737 b!5671731)))

(assert (=> bs!1321712 (not (= lambda!305265 lambda!305264))))

(assert (=> bs!1321697 (not (= lambda!305265 lambda!305255))))

(declare-fun bs!1321713 () Bool)

(assert (= bs!1321713 (and b!5671737 d!1790100)))

(assert (=> bs!1321713 (not (= lambda!305265 lambda!305163))))

(declare-fun bs!1321714 () Bool)

(assert (= bs!1321714 (and b!5671737 b!5671561)))

(assert (=> bs!1321714 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 (regOne!31827 lt!2268120))) (= (regTwo!31826 (regOne!31827 r!7292)) (regTwo!31826 (regOne!31827 lt!2268120)))) (= lambda!305265 lambda!305248))))

(declare-fun bs!1321715 () Bool)

(assert (= bs!1321715 (and b!5671737 d!1790314)))

(assert (=> bs!1321715 (not (= lambda!305265 lambda!305226))))

(declare-fun bs!1321716 () Bool)

(assert (= bs!1321716 (and b!5671737 d!1790034)))

(assert (=> bs!1321716 (not (= lambda!305265 lambda!305143))))

(declare-fun bs!1321717 () Bool)

(assert (= bs!1321717 (and b!5671737 b!5670241)))

(assert (=> bs!1321717 (not (= lambda!305265 lambda!305095))))

(declare-fun bs!1321718 () Bool)

(assert (= bs!1321718 (and b!5671737 b!5671477)))

(assert (=> bs!1321718 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 (regTwo!31827 r!7292))) (= (regTwo!31826 (regOne!31827 r!7292)) (regTwo!31826 (regTwo!31827 r!7292)))) (= lambda!305265 lambda!305242))))

(assert (=> bs!1321706 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 r!7292)) lt!2268120)) (= lambda!305265 lambda!305099))))

(declare-fun bs!1321719 () Bool)

(assert (= bs!1321719 (and b!5671737 d!1790080)))

(assert (=> bs!1321719 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regOne!31827 r!7292)) lt!2268120)) (= lambda!305265 lambda!305160))))

(assert (=> bs!1321706 (not (= lambda!305265 lambda!305100))))

(declare-fun bs!1321720 () Bool)

(assert (= bs!1321720 (and b!5671737 b!5670704)))

(assert (=> bs!1321720 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 lt!2268141)) (= (regTwo!31826 (regOne!31827 r!7292)) (regTwo!31826 lt!2268141))) (= lambda!305265 lambda!305174))))

(assert (=> bs!1321717 (= (and (= (regOne!31826 (regOne!31827 r!7292)) (regOne!31826 r!7292)) (= (regTwo!31826 (regOne!31827 r!7292)) (regTwo!31826 r!7292))) (= lambda!305265 lambda!305096))))

(assert (=> bs!1321719 (not (= lambda!305265 lambda!305158))))

(assert (=> b!5671737 true))

(assert (=> b!5671737 true))

(declare-fun e!3491442 () Bool)

(declare-fun call!430254 () Bool)

(assert (=> b!5671731 (= e!3491442 call!430254)))

(declare-fun b!5671732 () Bool)

(declare-fun e!3491443 () Bool)

(declare-fun e!3491446 () Bool)

(assert (=> b!5671732 (= e!3491443 e!3491446)))

(declare-fun res!2396688 () Bool)

(assert (=> b!5671732 (= res!2396688 (not ((_ is EmptyLang!15657) (regOne!31827 r!7292))))))

(assert (=> b!5671732 (=> (not res!2396688) (not e!3491446))))

(declare-fun b!5671733 () Bool)

(declare-fun e!3491445 () Bool)

(assert (=> b!5671733 (= e!3491445 (matchRSpec!2760 (regTwo!31827 (regOne!31827 r!7292)) s!2326))))

(declare-fun b!5671734 () Bool)

(declare-fun c!997674 () Bool)

(assert (=> b!5671734 (= c!997674 ((_ is ElementMatch!15657) (regOne!31827 r!7292)))))

(declare-fun e!3491444 () Bool)

(assert (=> b!5671734 (= e!3491446 e!3491444)))

(declare-fun b!5671735 () Bool)

(declare-fun e!3491447 () Bool)

(declare-fun e!3491448 () Bool)

(assert (=> b!5671735 (= e!3491447 e!3491448)))

(declare-fun c!997673 () Bool)

(assert (=> b!5671735 (= c!997673 ((_ is Star!15657) (regOne!31827 r!7292)))))

(assert (=> b!5671737 (= e!3491448 call!430254)))

(declare-fun b!5671738 () Bool)

(declare-fun call!430255 () Bool)

(assert (=> b!5671738 (= e!3491443 call!430255)))

(declare-fun bm!430249 () Bool)

(assert (=> bm!430249 (= call!430255 (isEmpty!35001 s!2326))))

(declare-fun b!5671739 () Bool)

(declare-fun c!997676 () Bool)

(assert (=> b!5671739 (= c!997676 ((_ is Union!15657) (regOne!31827 r!7292)))))

(assert (=> b!5671739 (= e!3491444 e!3491447)))

(declare-fun bm!430250 () Bool)

(assert (=> bm!430250 (= call!430254 (Exists!2757 (ite c!997673 lambda!305264 lambda!305265)))))

(declare-fun d!1790512 () Bool)

(declare-fun c!997675 () Bool)

(assert (=> d!1790512 (= c!997675 ((_ is EmptyExpr!15657) (regOne!31827 r!7292)))))

(assert (=> d!1790512 (= (matchRSpec!2760 (regOne!31827 r!7292) s!2326) e!3491443)))

(declare-fun b!5671736 () Bool)

(declare-fun res!2396686 () Bool)

(assert (=> b!5671736 (=> res!2396686 e!3491442)))

(assert (=> b!5671736 (= res!2396686 call!430255)))

(assert (=> b!5671736 (= e!3491448 e!3491442)))

(declare-fun b!5671740 () Bool)

(assert (=> b!5671740 (= e!3491444 (= s!2326 (Cons!63147 (c!997231 (regOne!31827 r!7292)) Nil!63147)))))

(declare-fun b!5671741 () Bool)

(assert (=> b!5671741 (= e!3491447 e!3491445)))

(declare-fun res!2396687 () Bool)

(assert (=> b!5671741 (= res!2396687 (matchRSpec!2760 (regOne!31827 (regOne!31827 r!7292)) s!2326))))

(assert (=> b!5671741 (=> res!2396687 e!3491445)))

(assert (= (and d!1790512 c!997675) b!5671738))

(assert (= (and d!1790512 (not c!997675)) b!5671732))

(assert (= (and b!5671732 res!2396688) b!5671734))

(assert (= (and b!5671734 c!997674) b!5671740))

(assert (= (and b!5671734 (not c!997674)) b!5671739))

(assert (= (and b!5671739 c!997676) b!5671741))

(assert (= (and b!5671739 (not c!997676)) b!5671735))

(assert (= (and b!5671741 (not res!2396687)) b!5671733))

(assert (= (and b!5671735 c!997673) b!5671736))

(assert (= (and b!5671735 (not c!997673)) b!5671737))

(assert (= (and b!5671736 (not res!2396686)) b!5671731))

(assert (= (or b!5671731 b!5671737) bm!430250))

(assert (= (or b!5671738 b!5671736) bm!430249))

(declare-fun m!6632952 () Bool)

(assert (=> b!5671733 m!6632952))

(assert (=> bm!430249 m!6631874))

(declare-fun m!6632954 () Bool)

(assert (=> bm!430250 m!6632954))

(declare-fun m!6632956 () Bool)

(assert (=> b!5671741 m!6632956))

(assert (=> b!5671042 d!1790512))

(declare-fun b!5671742 () Bool)

(declare-fun e!3491455 () Bool)

(declare-fun e!3491452 () Bool)

(assert (=> b!5671742 (= e!3491455 e!3491452)))

(declare-fun res!2396689 () Bool)

(assert (=> b!5671742 (= res!2396689 (not (nullable!5689 (reg!15986 lt!2268285))))))

(assert (=> b!5671742 (=> (not res!2396689) (not e!3491452))))

(declare-fun b!5671743 () Bool)

(declare-fun e!3491451 () Bool)

(declare-fun call!430256 () Bool)

(assert (=> b!5671743 (= e!3491451 call!430256)))

(declare-fun bm!430251 () Bool)

(declare-fun c!997678 () Bool)

(assert (=> bm!430251 (= call!430256 (validRegex!7393 (ite c!997678 (regTwo!31827 lt!2268285) (regTwo!31826 lt!2268285))))))

(declare-fun bm!430252 () Bool)

(declare-fun call!430258 () Bool)

(declare-fun call!430257 () Bool)

(assert (=> bm!430252 (= call!430258 call!430257)))

(declare-fun d!1790514 () Bool)

(declare-fun res!2396693 () Bool)

(declare-fun e!3491454 () Bool)

(assert (=> d!1790514 (=> res!2396693 e!3491454)))

(assert (=> d!1790514 (= res!2396693 ((_ is ElementMatch!15657) lt!2268285))))

(assert (=> d!1790514 (= (validRegex!7393 lt!2268285) e!3491454)))

(declare-fun b!5671744 () Bool)

(declare-fun res!2396690 () Bool)

(declare-fun e!3491453 () Bool)

(assert (=> b!5671744 (=> (not res!2396690) (not e!3491453))))

(assert (=> b!5671744 (= res!2396690 call!430258)))

(declare-fun e!3491449 () Bool)

(assert (=> b!5671744 (= e!3491449 e!3491453)))

(declare-fun b!5671745 () Bool)

(declare-fun res!2396692 () Bool)

(declare-fun e!3491450 () Bool)

(assert (=> b!5671745 (=> res!2396692 e!3491450)))

(assert (=> b!5671745 (= res!2396692 (not ((_ is Concat!24502) lt!2268285)))))

(assert (=> b!5671745 (= e!3491449 e!3491450)))

(declare-fun b!5671746 () Bool)

(assert (=> b!5671746 (= e!3491455 e!3491449)))

(assert (=> b!5671746 (= c!997678 ((_ is Union!15657) lt!2268285))))

(declare-fun b!5671747 () Bool)

(assert (=> b!5671747 (= e!3491452 call!430257)))

(declare-fun b!5671748 () Bool)

(assert (=> b!5671748 (= e!3491454 e!3491455)))

(declare-fun c!997677 () Bool)

(assert (=> b!5671748 (= c!997677 ((_ is Star!15657) lt!2268285))))

(declare-fun b!5671749 () Bool)

(assert (=> b!5671749 (= e!3491450 e!3491451)))

(declare-fun res!2396691 () Bool)

(assert (=> b!5671749 (=> (not res!2396691) (not e!3491451))))

(assert (=> b!5671749 (= res!2396691 call!430258)))

(declare-fun b!5671750 () Bool)

(assert (=> b!5671750 (= e!3491453 call!430256)))

(declare-fun bm!430253 () Bool)

(assert (=> bm!430253 (= call!430257 (validRegex!7393 (ite c!997677 (reg!15986 lt!2268285) (ite c!997678 (regOne!31827 lt!2268285) (regOne!31826 lt!2268285)))))))

(assert (= (and d!1790514 (not res!2396693)) b!5671748))

(assert (= (and b!5671748 c!997677) b!5671742))

(assert (= (and b!5671748 (not c!997677)) b!5671746))

(assert (= (and b!5671742 res!2396689) b!5671747))

(assert (= (and b!5671746 c!997678) b!5671744))

(assert (= (and b!5671746 (not c!997678)) b!5671745))

(assert (= (and b!5671744 res!2396690) b!5671750))

(assert (= (and b!5671745 (not res!2396692)) b!5671749))

(assert (= (and b!5671749 res!2396691) b!5671743))

(assert (= (or b!5671750 b!5671743) bm!430251))

(assert (= (or b!5671744 b!5671749) bm!430252))

(assert (= (or b!5671747 bm!430252) bm!430253))

(declare-fun m!6632958 () Bool)

(assert (=> b!5671742 m!6632958))

(declare-fun m!6632960 () Bool)

(assert (=> bm!430251 m!6632960))

(declare-fun m!6632962 () Bool)

(assert (=> bm!430253 m!6632962))

(assert (=> d!1790174 d!1790514))

(declare-fun d!1790516 () Bool)

(declare-fun res!2396694 () Bool)

(declare-fun e!3491456 () Bool)

(assert (=> d!1790516 (=> res!2396694 e!3491456)))

(assert (=> d!1790516 (= res!2396694 ((_ is Nil!63146) lt!2268127))))

(assert (=> d!1790516 (= (forall!14810 lt!2268127 lambda!305184) e!3491456)))

(declare-fun b!5671751 () Bool)

(declare-fun e!3491457 () Bool)

(assert (=> b!5671751 (= e!3491456 e!3491457)))

(declare-fun res!2396695 () Bool)

(assert (=> b!5671751 (=> (not res!2396695) (not e!3491457))))

(assert (=> b!5671751 (= res!2396695 (dynLambda!24716 lambda!305184 (h!69594 lt!2268127)))))

(declare-fun b!5671752 () Bool)

(assert (=> b!5671752 (= e!3491457 (forall!14810 (t!376576 lt!2268127) lambda!305184))))

(assert (= (and d!1790516 (not res!2396694)) b!5671751))

(assert (= (and b!5671751 res!2396695) b!5671752))

(declare-fun b_lambda!214523 () Bool)

(assert (=> (not b_lambda!214523) (not b!5671751)))

(declare-fun m!6632964 () Bool)

(assert (=> b!5671751 m!6632964))

(declare-fun m!6632966 () Bool)

(assert (=> b!5671752 m!6632966))

(assert (=> d!1790174 d!1790516))

(declare-fun d!1790518 () Bool)

(assert (=> d!1790518 (= (isEmptyExpr!1187 lt!2268285) ((_ is EmptyExpr!15657) lt!2268285))))

(assert (=> b!5670873 d!1790518))

(declare-fun d!1790520 () Bool)

(assert (=> d!1790520 true))

(declare-fun setRes!37905 () Bool)

(assert (=> d!1790520 setRes!37905))

(declare-fun condSetEmpty!37905 () Bool)

(declare-fun res!2396696 () (InoxSet Context!10082))

(assert (=> d!1790520 (= condSetEmpty!37905 (= res!2396696 ((as const (Array Context!10082 Bool)) false)))))

(assert (=> d!1790520 (= (choose!42903 z!1189 lambda!305097) res!2396696)))

(declare-fun setIsEmpty!37905 () Bool)

(assert (=> setIsEmpty!37905 setRes!37905))

(declare-fun e!3491458 () Bool)

(declare-fun setNonEmpty!37905 () Bool)

(declare-fun tp!1573201 () Bool)

(declare-fun setElem!37905 () Context!10082)

(assert (=> setNonEmpty!37905 (= setRes!37905 (and tp!1573201 (inv!82389 setElem!37905) e!3491458))))

(declare-fun setRest!37905 () (InoxSet Context!10082))

(assert (=> setNonEmpty!37905 (= res!2396696 ((_ map or) (store ((as const (Array Context!10082 Bool)) false) setElem!37905 true) setRest!37905))))

(declare-fun b!5671753 () Bool)

(declare-fun tp!1573202 () Bool)

(assert (=> b!5671753 (= e!3491458 tp!1573202)))

(assert (= (and d!1790520 condSetEmpty!37905) setIsEmpty!37905))

(assert (= (and d!1790520 (not condSetEmpty!37905)) setNonEmpty!37905))

(assert (= setNonEmpty!37905 b!5671753))

(declare-fun m!6632968 () Bool)

(assert (=> setNonEmpty!37905 m!6632968))

(assert (=> d!1790190 d!1790520))

(assert (=> d!1790254 d!1790250))

(declare-fun d!1790522 () Bool)

(assert (=> d!1790522 (= (flatMap!1270 lt!2268137 lambda!305097) (dynLambda!24711 lambda!305097 lt!2268119))))

(assert (=> d!1790522 true))

(declare-fun _$13!2314 () Unit!156160)

(assert (=> d!1790522 (= (choose!42904 lt!2268137 lt!2268119 lambda!305097) _$13!2314)))

(declare-fun b_lambda!214525 () Bool)

(assert (=> (not b_lambda!214525) (not d!1790522)))

(declare-fun bs!1321721 () Bool)

(assert (= bs!1321721 d!1790522))

(assert (=> bs!1321721 m!6631504))

(assert (=> bs!1321721 m!6632390))

(assert (=> d!1790254 d!1790522))

(declare-fun d!1790524 () Bool)

(assert (=> d!1790524 (= (Exists!2757 lambda!305155) (choose!42894 lambda!305155))))

(declare-fun bs!1321722 () Bool)

(assert (= bs!1321722 d!1790524))

(declare-fun m!6632970 () Bool)

(assert (=> bs!1321722 m!6632970))

(assert (=> d!1790038 d!1790524))

(declare-fun d!1790526 () Bool)

(assert (=> d!1790526 (= (Exists!2757 lambda!305156) (choose!42894 lambda!305156))))

(declare-fun bs!1321723 () Bool)

(assert (= bs!1321723 d!1790526))

(declare-fun m!6632972 () Bool)

(assert (=> bs!1321723 m!6632972))

(assert (=> d!1790038 d!1790526))

(declare-fun bs!1321724 () Bool)

(declare-fun d!1790528 () Bool)

(assert (= bs!1321724 (and d!1790528 d!1790126)))

(declare-fun lambda!305266 () Int)

(assert (=> bs!1321724 (not (= lambda!305266 lambda!305176))))

(declare-fun bs!1321725 () Bool)

(assert (= bs!1321725 (and d!1790528 d!1790486)))

(assert (=> bs!1321725 (not (= lambda!305266 lambda!305256))))

(declare-fun bs!1321726 () Bool)

(assert (= bs!1321726 (and d!1790528 b!5670698)))

(assert (=> bs!1321726 (not (= lambda!305266 lambda!305172))))

(declare-fun bs!1321727 () Bool)

(assert (= bs!1321727 (and d!1790528 b!5670839)))

(assert (=> bs!1321727 (not (= lambda!305266 lambda!305182))))

(declare-fun bs!1321728 () Bool)

(assert (= bs!1321728 (and d!1790528 d!1790390)))

(assert (=> bs!1321728 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305266 lambda!305244))))

(declare-fun bs!1321729 () Bool)

(assert (= bs!1321729 (and d!1790528 d!1790094)))

(assert (=> bs!1321729 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305266 lambda!305162))))

(declare-fun bs!1321730 () Bool)

(assert (= bs!1321730 (and d!1790528 b!5670845)))

(assert (=> bs!1321730 (not (= lambda!305266 lambda!305183))))

(declare-fun bs!1321731 () Bool)

(assert (= bs!1321731 (and d!1790528 b!5671555)))

(assert (=> bs!1321731 (not (= lambda!305266 lambda!305247))))

(declare-fun bs!1321732 () Bool)

(assert (= bs!1321732 (and d!1790528 b!5671471)))

(assert (=> bs!1321732 (not (= lambda!305266 lambda!305241))))

(declare-fun bs!1321733 () Bool)

(assert (= bs!1321733 (and d!1790528 b!5670249)))

(assert (=> bs!1321733 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305266 lambda!305098))))

(declare-fun bs!1321734 () Bool)

(assert (= bs!1321734 (and d!1790528 b!5671032)))

(assert (=> bs!1321734 (not (= lambda!305266 lambda!305195))))

(declare-fun bs!1321735 () Bool)

(assert (= bs!1321735 (and d!1790528 d!1790038)))

(assert (=> bs!1321735 (= lambda!305266 lambda!305155)))

(declare-fun bs!1321736 () Bool)

(assert (= bs!1321736 (and d!1790528 b!5671566)))

(assert (=> bs!1321736 (not (= lambda!305266 lambda!305250))))

(declare-fun bs!1321737 () Bool)

(assert (= bs!1321737 (and d!1790528 d!1790294)))

(assert (=> bs!1321737 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305266 lambda!305221))))

(assert (=> bs!1321724 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305266 lambda!305175))))

(assert (=> bs!1321733 (not (= lambda!305266 lambda!305101))))

(assert (=> bs!1321737 (not (= lambda!305266 lambda!305222))))

(declare-fun bs!1321738 () Bool)

(assert (= bs!1321738 (and d!1790528 b!5671038)))

(assert (=> bs!1321738 (not (= lambda!305266 lambda!305196))))

(assert (=> bs!1321735 (not (= lambda!305266 lambda!305156))))

(declare-fun bs!1321739 () Bool)

(assert (= bs!1321739 (and d!1790528 b!5671731)))

(assert (=> bs!1321739 (not (= lambda!305266 lambda!305264))))

(assert (=> bs!1321725 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305266 lambda!305255))))

(declare-fun bs!1321740 () Bool)

(assert (= bs!1321740 (and d!1790528 d!1790100)))

(assert (=> bs!1321740 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305266 lambda!305163))))

(declare-fun bs!1321741 () Bool)

(assert (= bs!1321741 (and d!1790528 b!5671561)))

(assert (=> bs!1321741 (not (= lambda!305266 lambda!305248))))

(declare-fun bs!1321742 () Bool)

(assert (= bs!1321742 (and d!1790528 d!1790314)))

(assert (=> bs!1321742 (= lambda!305266 lambda!305226)))

(declare-fun bs!1321743 () Bool)

(assert (= bs!1321743 (and d!1790528 d!1790034)))

(assert (=> bs!1321743 (= lambda!305266 lambda!305143)))

(declare-fun bs!1321744 () Bool)

(assert (= bs!1321744 (and d!1790528 b!5670241)))

(assert (=> bs!1321744 (= lambda!305266 lambda!305095)))

(declare-fun bs!1321745 () Bool)

(assert (= bs!1321745 (and d!1790528 b!5671477)))

(assert (=> bs!1321745 (not (= lambda!305266 lambda!305242))))

(declare-fun bs!1321746 () Bool)

(assert (= bs!1321746 (and d!1790528 b!5671737)))

(assert (=> bs!1321746 (not (= lambda!305266 lambda!305265))))

(declare-fun bs!1321747 () Bool)

(assert (= bs!1321747 (and d!1790528 b!5671572)))

(assert (=> bs!1321747 (not (= lambda!305266 lambda!305251))))

(assert (=> bs!1321733 (not (= lambda!305266 lambda!305099))))

(declare-fun bs!1321748 () Bool)

(assert (= bs!1321748 (and d!1790528 d!1790080)))

(assert (=> bs!1321748 (not (= lambda!305266 lambda!305160))))

(assert (=> bs!1321733 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305266 lambda!305100))))

(declare-fun bs!1321749 () Bool)

(assert (= bs!1321749 (and d!1790528 b!5670704)))

(assert (=> bs!1321749 (not (= lambda!305266 lambda!305174))))

(assert (=> bs!1321744 (not (= lambda!305266 lambda!305096))))

(assert (=> bs!1321748 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305266 lambda!305158))))

(assert (=> d!1790528 true))

(assert (=> d!1790528 true))

(assert (=> d!1790528 true))

(declare-fun lambda!305267 () Int)

(assert (=> bs!1321724 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305267 lambda!305176))))

(assert (=> bs!1321725 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305267 lambda!305256))))

(assert (=> bs!1321726 (not (= lambda!305267 lambda!305172))))

(assert (=> bs!1321727 (not (= lambda!305267 lambda!305182))))

(assert (=> bs!1321728 (not (= lambda!305267 lambda!305244))))

(assert (=> bs!1321729 (not (= lambda!305267 lambda!305162))))

(assert (=> bs!1321730 (= (and (= (regOne!31826 r!7292) (regOne!31826 lt!2268120)) (= (regTwo!31826 r!7292) (regTwo!31826 lt!2268120))) (= lambda!305267 lambda!305183))))

(assert (=> bs!1321731 (not (= lambda!305267 lambda!305247))))

(assert (=> bs!1321732 (not (= lambda!305267 lambda!305241))))

(assert (=> bs!1321733 (not (= lambda!305267 lambda!305098))))

(assert (=> bs!1321734 (not (= lambda!305267 lambda!305195))))

(assert (=> bs!1321736 (not (= lambda!305267 lambda!305250))))

(assert (=> bs!1321737 (not (= lambda!305267 lambda!305221))))

(assert (=> bs!1321724 (not (= lambda!305267 lambda!305175))))

(assert (=> bs!1321733 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305267 lambda!305101))))

(assert (=> bs!1321737 (= (and (= (regOne!31826 r!7292) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268129)) (= lambda!305267 lambda!305222))))

(assert (=> bs!1321738 (= lambda!305267 lambda!305196)))

(assert (=> bs!1321735 (= lambda!305267 lambda!305156)))

(assert (=> bs!1321739 (not (= lambda!305267 lambda!305264))))

(assert (=> bs!1321725 (not (= lambda!305267 lambda!305255))))

(assert (=> bs!1321740 (not (= lambda!305267 lambda!305163))))

(assert (=> bs!1321741 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31827 lt!2268120))) (= (regTwo!31826 r!7292) (regTwo!31826 (regOne!31827 lt!2268120)))) (= lambda!305267 lambda!305248))))

(assert (=> bs!1321742 (not (= lambda!305267 lambda!305226))))

(assert (=> bs!1321743 (not (= lambda!305267 lambda!305143))))

(assert (=> bs!1321744 (not (= lambda!305267 lambda!305095))))

(assert (=> bs!1321745 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regTwo!31827 r!7292))) (= (regTwo!31826 r!7292) (regTwo!31826 (regTwo!31827 r!7292)))) (= lambda!305267 lambda!305242))))

(assert (=> bs!1321746 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31827 r!7292))) (= (regTwo!31826 r!7292) (regTwo!31826 (regOne!31827 r!7292)))) (= lambda!305267 lambda!305265))))

(assert (=> bs!1321747 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31827 lt!2268141))) (= (regTwo!31826 r!7292) (regTwo!31826 (regOne!31827 lt!2268141)))) (= lambda!305267 lambda!305251))))

(assert (=> bs!1321733 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305267 lambda!305099))))

(assert (=> bs!1321748 (= (and (= (regOne!31826 r!7292) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 r!7292) lt!2268120)) (= lambda!305267 lambda!305160))))

(assert (=> bs!1321733 (not (= lambda!305267 lambda!305100))))

(assert (=> bs!1321749 (= (and (= (regOne!31826 r!7292) (regOne!31826 lt!2268141)) (= (regTwo!31826 r!7292) (regTwo!31826 lt!2268141))) (= lambda!305267 lambda!305174))))

(assert (=> bs!1321735 (not (= lambda!305267 lambda!305155))))

(declare-fun bs!1321750 () Bool)

(assert (= bs!1321750 d!1790528))

(assert (=> bs!1321750 (not (= lambda!305267 lambda!305266))))

(assert (=> bs!1321744 (= lambda!305267 lambda!305096)))

(assert (=> bs!1321748 (not (= lambda!305267 lambda!305158))))

(assert (=> d!1790528 true))

(assert (=> d!1790528 true))

(assert (=> d!1790528 true))

(assert (=> d!1790528 (= (Exists!2757 lambda!305266) (Exists!2757 lambda!305267))))

(assert (=> d!1790528 true))

(declare-fun _$90!1412 () Unit!156160)

(assert (=> d!1790528 (= (choose!42896 (regOne!31826 r!7292) (regTwo!31826 r!7292) s!2326) _$90!1412)))

(declare-fun m!6632974 () Bool)

(assert (=> bs!1321750 m!6632974))

(declare-fun m!6632976 () Bool)

(assert (=> bs!1321750 m!6632976))

(assert (=> d!1790038 d!1790528))

(assert (=> d!1790038 d!1790312))

(declare-fun b!5671754 () Bool)

(declare-fun e!3491460 () (InoxSet Context!10082))

(assert (=> b!5671754 (= e!3491460 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430254 () Bool)

(declare-fun call!430264 () (InoxSet Context!10082))

(declare-fun call!430263 () (InoxSet Context!10082))

(assert (=> bm!430254 (= call!430264 call!430263)))

(declare-fun b!5671755 () Bool)

(declare-fun e!3491464 () Bool)

(assert (=> b!5671755 (= e!3491464 (nullable!5689 (regOne!31826 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))))))

(declare-fun bm!430255 () Bool)

(declare-fun call!430260 () (InoxSet Context!10082))

(assert (=> bm!430255 (= call!430260 call!430264)))

(declare-fun b!5671756 () Bool)

(assert (=> b!5671756 (= e!3491460 call!430260)))

(declare-fun b!5671757 () Bool)

(declare-fun e!3491462 () (InoxSet Context!10082))

(declare-fun call!430261 () (InoxSet Context!10082))

(assert (=> b!5671757 (= e!3491462 ((_ map or) call!430261 call!430264))))

(declare-fun b!5671758 () Bool)

(declare-fun e!3491459 () (InoxSet Context!10082))

(assert (=> b!5671758 (= e!3491459 (store ((as const (Array Context!10082 Bool)) false) (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) true))))

(declare-fun d!1790530 () Bool)

(declare-fun c!997682 () Bool)

(assert (=> d!1790530 (= c!997682 (and ((_ is ElementMatch!15657) (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (= (c!997231 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (h!69595 s!2326))))))

(assert (=> d!1790530 (= (derivationStepZipperDown!999 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))) (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (h!69595 s!2326)) e!3491459)))

(declare-fun b!5671759 () Bool)

(declare-fun e!3491461 () (InoxSet Context!10082))

(assert (=> b!5671759 (= e!3491461 call!430260)))

(declare-fun b!5671760 () Bool)

(declare-fun c!997683 () Bool)

(assert (=> b!5671760 (= c!997683 ((_ is Star!15657) (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))))

(assert (=> b!5671760 (= e!3491461 e!3491460)))

(declare-fun bm!430256 () Bool)

(declare-fun call!430262 () List!63270)

(declare-fun call!430259 () List!63270)

(assert (=> bm!430256 (= call!430262 call!430259)))

(declare-fun bm!430257 () Bool)

(declare-fun c!997680 () Bool)

(assert (=> bm!430257 (= call!430261 (derivationStepZipperDown!999 (ite c!997680 (regOne!31827 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (regOne!31826 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))) (ite c!997680 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (Context!10083 call!430259)) (h!69595 s!2326)))))

(declare-fun b!5671761 () Bool)

(declare-fun c!997681 () Bool)

(assert (=> b!5671761 (= c!997681 e!3491464)))

(declare-fun res!2396697 () Bool)

(assert (=> b!5671761 (=> (not res!2396697) (not e!3491464))))

(assert (=> b!5671761 (= res!2396697 ((_ is Concat!24502) (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))))

(declare-fun e!3491463 () (InoxSet Context!10082))

(assert (=> b!5671761 (= e!3491463 e!3491462)))

(declare-fun b!5671762 () Bool)

(assert (=> b!5671762 (= e!3491462 e!3491461)))

(declare-fun c!997679 () Bool)

(assert (=> b!5671762 (= c!997679 ((_ is Concat!24502) (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))))

(declare-fun b!5671763 () Bool)

(assert (=> b!5671763 (= e!3491463 ((_ map or) call!430261 call!430263))))

(declare-fun bm!430258 () Bool)

(assert (=> bm!430258 (= call!430263 (derivationStepZipperDown!999 (ite c!997680 (regTwo!31827 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (ite c!997681 (regTwo!31826 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (ite c!997679 (regOne!31826 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (reg!15986 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))))) (ite (or c!997680 c!997681) (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (Context!10083 call!430262)) (h!69595 s!2326)))))

(declare-fun bm!430259 () Bool)

(assert (=> bm!430259 (= call!430259 ($colon$colon!1695 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))) (ite (or c!997681 c!997679) (regTwo!31826 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343))))))))))))

(declare-fun b!5671764 () Bool)

(assert (=> b!5671764 (= e!3491459 e!3491463)))

(assert (=> b!5671764 (= c!997680 ((_ is Union!15657) (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))))

(assert (= (and d!1790530 c!997682) b!5671758))

(assert (= (and d!1790530 (not c!997682)) b!5671764))

(assert (= (and b!5671764 c!997680) b!5671763))

(assert (= (and b!5671764 (not c!997680)) b!5671761))

(assert (= (and b!5671761 res!2396697) b!5671755))

(assert (= (and b!5671761 c!997681) b!5671757))

(assert (= (and b!5671761 (not c!997681)) b!5671762))

(assert (= (and b!5671762 c!997679) b!5671759))

(assert (= (and b!5671762 (not c!997679)) b!5671760))

(assert (= (and b!5671760 c!997683) b!5671756))

(assert (= (and b!5671760 (not c!997683)) b!5671754))

(assert (= (or b!5671759 b!5671756) bm!430256))

(assert (= (or b!5671759 b!5671756) bm!430255))

(assert (= (or b!5671757 bm!430256) bm!430259))

(assert (= (or b!5671757 bm!430255) bm!430254))

(assert (= (or b!5671763 bm!430254) bm!430258))

(assert (= (or b!5671763 b!5671757) bm!430257))

(declare-fun m!6632978 () Bool)

(assert (=> bm!430258 m!6632978))

(declare-fun m!6632980 () Bool)

(assert (=> bm!430257 m!6632980))

(declare-fun m!6632982 () Bool)

(assert (=> b!5671755 m!6632982))

(declare-fun m!6632984 () Bool)

(assert (=> bm!430259 m!6632984))

(declare-fun m!6632986 () Bool)

(assert (=> b!5671758 m!6632986))

(assert (=> bm!430125 d!1790530))

(declare-fun b!5671765 () Bool)

(declare-fun e!3491471 () Bool)

(declare-fun e!3491468 () Bool)

(assert (=> b!5671765 (= e!3491471 e!3491468)))

(declare-fun res!2396698 () Bool)

(assert (=> b!5671765 (= res!2396698 (not (nullable!5689 (reg!15986 lt!2268290))))))

(assert (=> b!5671765 (=> (not res!2396698) (not e!3491468))))

(declare-fun b!5671766 () Bool)

(declare-fun e!3491467 () Bool)

(declare-fun call!430265 () Bool)

(assert (=> b!5671766 (= e!3491467 call!430265)))

(declare-fun bm!430260 () Bool)

(declare-fun c!997685 () Bool)

(assert (=> bm!430260 (= call!430265 (validRegex!7393 (ite c!997685 (regTwo!31827 lt!2268290) (regTwo!31826 lt!2268290))))))

(declare-fun bm!430261 () Bool)

(declare-fun call!430267 () Bool)

(declare-fun call!430266 () Bool)

(assert (=> bm!430261 (= call!430267 call!430266)))

(declare-fun d!1790532 () Bool)

(declare-fun res!2396702 () Bool)

(declare-fun e!3491470 () Bool)

(assert (=> d!1790532 (=> res!2396702 e!3491470)))

(assert (=> d!1790532 (= res!2396702 ((_ is ElementMatch!15657) lt!2268290))))

(assert (=> d!1790532 (= (validRegex!7393 lt!2268290) e!3491470)))

(declare-fun b!5671767 () Bool)

(declare-fun res!2396699 () Bool)

(declare-fun e!3491469 () Bool)

(assert (=> b!5671767 (=> (not res!2396699) (not e!3491469))))

(assert (=> b!5671767 (= res!2396699 call!430267)))

(declare-fun e!3491465 () Bool)

(assert (=> b!5671767 (= e!3491465 e!3491469)))

(declare-fun b!5671768 () Bool)

(declare-fun res!2396701 () Bool)

(declare-fun e!3491466 () Bool)

(assert (=> b!5671768 (=> res!2396701 e!3491466)))

(assert (=> b!5671768 (= res!2396701 (not ((_ is Concat!24502) lt!2268290)))))

(assert (=> b!5671768 (= e!3491465 e!3491466)))

(declare-fun b!5671769 () Bool)

(assert (=> b!5671769 (= e!3491471 e!3491465)))

(assert (=> b!5671769 (= c!997685 ((_ is Union!15657) lt!2268290))))

(declare-fun b!5671770 () Bool)

(assert (=> b!5671770 (= e!3491468 call!430266)))

(declare-fun b!5671771 () Bool)

(assert (=> b!5671771 (= e!3491470 e!3491471)))

(declare-fun c!997684 () Bool)

(assert (=> b!5671771 (= c!997684 ((_ is Star!15657) lt!2268290))))

(declare-fun b!5671772 () Bool)

(assert (=> b!5671772 (= e!3491466 e!3491467)))

(declare-fun res!2396700 () Bool)

(assert (=> b!5671772 (=> (not res!2396700) (not e!3491467))))

(assert (=> b!5671772 (= res!2396700 call!430267)))

(declare-fun b!5671773 () Bool)

(assert (=> b!5671773 (= e!3491469 call!430265)))

(declare-fun bm!430262 () Bool)

(assert (=> bm!430262 (= call!430266 (validRegex!7393 (ite c!997684 (reg!15986 lt!2268290) (ite c!997685 (regOne!31827 lt!2268290) (regOne!31826 lt!2268290)))))))

(assert (= (and d!1790532 (not res!2396702)) b!5671771))

(assert (= (and b!5671771 c!997684) b!5671765))

(assert (= (and b!5671771 (not c!997684)) b!5671769))

(assert (= (and b!5671765 res!2396698) b!5671770))

(assert (= (and b!5671769 c!997685) b!5671767))

(assert (= (and b!5671769 (not c!997685)) b!5671768))

(assert (= (and b!5671767 res!2396699) b!5671773))

(assert (= (and b!5671768 (not res!2396701)) b!5671772))

(assert (= (and b!5671772 res!2396700) b!5671766))

(assert (= (or b!5671773 b!5671766) bm!430260))

(assert (= (or b!5671767 b!5671772) bm!430261))

(assert (= (or b!5671770 bm!430261) bm!430262))

(declare-fun m!6632988 () Bool)

(assert (=> b!5671765 m!6632988))

(declare-fun m!6632990 () Bool)

(assert (=> bm!430260 m!6632990))

(declare-fun m!6632992 () Bool)

(assert (=> bm!430262 m!6632992))

(assert (=> d!1790180 d!1790532))

(declare-fun d!1790534 () Bool)

(declare-fun res!2396703 () Bool)

(declare-fun e!3491472 () Bool)

(assert (=> d!1790534 (=> res!2396703 e!3491472)))

(assert (=> d!1790534 (= res!2396703 ((_ is Nil!63146) (exprs!5541 (h!69596 zl!343))))))

(assert (=> d!1790534 (= (forall!14810 (exprs!5541 (h!69596 zl!343)) lambda!305185) e!3491472)))

(declare-fun b!5671774 () Bool)

(declare-fun e!3491473 () Bool)

(assert (=> b!5671774 (= e!3491472 e!3491473)))

(declare-fun res!2396704 () Bool)

(assert (=> b!5671774 (=> (not res!2396704) (not e!3491473))))

(assert (=> b!5671774 (= res!2396704 (dynLambda!24716 lambda!305185 (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5671775 () Bool)

(assert (=> b!5671775 (= e!3491473 (forall!14810 (t!376576 (exprs!5541 (h!69596 zl!343))) lambda!305185))))

(assert (= (and d!1790534 (not res!2396703)) b!5671774))

(assert (= (and b!5671774 res!2396704) b!5671775))

(declare-fun b_lambda!214527 () Bool)

(assert (=> (not b_lambda!214527) (not b!5671774)))

(declare-fun m!6632994 () Bool)

(assert (=> b!5671774 m!6632994))

(declare-fun m!6632996 () Bool)

(assert (=> b!5671775 m!6632996))

(assert (=> d!1790180 d!1790534))

(declare-fun d!1790536 () Bool)

(assert (=> d!1790536 (= (isEmpty!34998 (unfocusZipperList!1085 zl!343)) ((_ is Nil!63146) (unfocusZipperList!1085 zl!343)))))

(assert (=> b!5671186 d!1790536))

(declare-fun d!1790538 () Bool)

(assert (=> d!1790538 (= ($colon$colon!1695 (exprs!5541 lt!2268148) (ite (or c!997472 c!997470) (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (h!69594 (exprs!5541 (h!69596 zl!343))))) (Cons!63146 (ite (or c!997472 c!997470) (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (h!69594 (exprs!5541 (h!69596 zl!343)))) (exprs!5541 lt!2268148)))))

(assert (=> bm!430144 d!1790538))

(declare-fun d!1790540 () Bool)

(assert (=> d!1790540 (= (nullable!5689 r!7292) (nullableFct!1774 r!7292))))

(declare-fun bs!1321751 () Bool)

(assert (= bs!1321751 d!1790540))

(declare-fun m!6632998 () Bool)

(assert (=> bs!1321751 m!6632998))

(assert (=> b!5671059 d!1790540))

(declare-fun b!5671792 () Bool)

(declare-fun e!3491484 () Int)

(declare-fun call!430275 () Int)

(declare-fun call!430276 () Int)

(assert (=> b!5671792 (= e!3491484 (+ 1 call!430275 call!430276))))

(declare-fun b!5671793 () Bool)

(declare-fun e!3491483 () Int)

(assert (=> b!5671793 (= e!3491483 1)))

(declare-fun bm!430269 () Bool)

(declare-fun c!997695 () Bool)

(assert (=> bm!430269 (= call!430275 (regexDepthTotal!104 (ite c!997695 (regOne!31827 (h!69594 (exprs!5541 lt!2268119))) (regOne!31826 (h!69594 (exprs!5541 lt!2268119))))))))

(declare-fun c!997697 () Bool)

(declare-fun call!430274 () Int)

(declare-fun bm!430270 () Bool)

(assert (=> bm!430270 (= call!430274 (regexDepthTotal!104 (ite c!997697 (reg!15986 (h!69594 (exprs!5541 lt!2268119))) (ite c!997695 (regTwo!31827 (h!69594 (exprs!5541 lt!2268119))) (regTwo!31826 (h!69594 (exprs!5541 lt!2268119)))))))))

(declare-fun bm!430271 () Bool)

(assert (=> bm!430271 (= call!430276 call!430274)))

(declare-fun b!5671794 () Bool)

(declare-fun e!3491482 () Int)

(assert (=> b!5671794 (= e!3491482 (+ 1 call!430274))))

(declare-fun d!1790542 () Bool)

(declare-fun lt!2268386 () Int)

(assert (=> d!1790542 (> lt!2268386 0)))

(assert (=> d!1790542 (= lt!2268386 e!3491483)))

(declare-fun c!997696 () Bool)

(assert (=> d!1790542 (= c!997696 ((_ is ElementMatch!15657) (h!69594 (exprs!5541 lt!2268119))))))

(assert (=> d!1790542 (= (regexDepthTotal!104 (h!69594 (exprs!5541 lt!2268119))) lt!2268386)))

(declare-fun b!5671795 () Bool)

(assert (=> b!5671795 (= e!3491483 e!3491482)))

(assert (=> b!5671795 (= c!997697 ((_ is Star!15657) (h!69594 (exprs!5541 lt!2268119))))))

(declare-fun b!5671796 () Bool)

(declare-fun e!3491485 () Int)

(assert (=> b!5671796 (= e!3491485 e!3491484)))

(declare-fun c!997694 () Bool)

(assert (=> b!5671796 (= c!997694 ((_ is Concat!24502) (h!69594 (exprs!5541 lt!2268119))))))

(declare-fun b!5671797 () Bool)

(assert (=> b!5671797 (= e!3491484 1)))

(declare-fun b!5671798 () Bool)

(assert (=> b!5671798 (= e!3491485 (+ 1 call!430275 call!430276))))

(declare-fun b!5671799 () Bool)

(assert (=> b!5671799 (= c!997695 ((_ is Union!15657) (h!69594 (exprs!5541 lt!2268119))))))

(assert (=> b!5671799 (= e!3491482 e!3491485)))

(assert (= (and d!1790542 c!997696) b!5671793))

(assert (= (and d!1790542 (not c!997696)) b!5671795))

(assert (= (and b!5671795 c!997697) b!5671794))

(assert (= (and b!5671795 (not c!997697)) b!5671799))

(assert (= (and b!5671799 c!997695) b!5671798))

(assert (= (and b!5671799 (not c!997695)) b!5671796))

(assert (= (and b!5671796 c!997694) b!5671792))

(assert (= (and b!5671796 (not c!997694)) b!5671797))

(assert (= (or b!5671798 b!5671792) bm!430271))

(assert (= (or b!5671798 b!5671792) bm!430269))

(assert (= (or b!5671794 bm!430271) bm!430270))

(declare-fun m!6633000 () Bool)

(assert (=> bm!430269 m!6633000))

(declare-fun m!6633002 () Bool)

(assert (=> bm!430270 m!6633002))

(assert (=> b!5671130 d!1790542))

(declare-fun d!1790544 () Bool)

(declare-fun lt!2268387 () Int)

(assert (=> d!1790544 (>= lt!2268387 0)))

(declare-fun e!3491486 () Int)

(assert (=> d!1790544 (= lt!2268387 e!3491486)))

(declare-fun c!997698 () Bool)

(assert (=> d!1790544 (= c!997698 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119))))))))

(assert (=> d!1790544 (= (contextDepthTotal!232 (Context!10083 (t!376576 (exprs!5541 lt!2268119)))) lt!2268387)))

(declare-fun b!5671800 () Bool)

(assert (=> b!5671800 (= e!3491486 (+ (regexDepthTotal!104 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119)))))) (contextDepthTotal!232 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119)))))))))))

(declare-fun b!5671801 () Bool)

(assert (=> b!5671801 (= e!3491486 1)))

(assert (= (and d!1790544 c!997698) b!5671800))

(assert (= (and d!1790544 (not c!997698)) b!5671801))

(declare-fun m!6633004 () Bool)

(assert (=> b!5671800 m!6633004))

(declare-fun m!6633006 () Bool)

(assert (=> b!5671800 m!6633006))

(assert (=> b!5671130 d!1790544))

(declare-fun d!1790546 () Bool)

(declare-fun res!2396705 () Bool)

(declare-fun e!3491487 () Bool)

(assert (=> d!1790546 (=> res!2396705 e!3491487)))

(assert (=> d!1790546 (= res!2396705 ((_ is Nil!63148) lt!2268150))))

(assert (=> d!1790546 (= (forall!14809 lt!2268150 lambda!305110) e!3491487)))

(declare-fun b!5671802 () Bool)

(declare-fun e!3491488 () Bool)

(assert (=> b!5671802 (= e!3491487 e!3491488)))

(declare-fun res!2396706 () Bool)

(assert (=> b!5671802 (=> (not res!2396706) (not e!3491488))))

(assert (=> b!5671802 (= res!2396706 (dynLambda!24713 lambda!305110 (h!69596 lt!2268150)))))

(declare-fun b!5671803 () Bool)

(assert (=> b!5671803 (= e!3491488 (forall!14809 (t!376578 lt!2268150) lambda!305110))))

(assert (= (and d!1790546 (not res!2396705)) b!5671802))

(assert (= (and b!5671802 res!2396706) b!5671803))

(declare-fun b_lambda!214529 () Bool)

(assert (=> (not b_lambda!214529) (not b!5671802)))

(declare-fun m!6633008 () Bool)

(assert (=> b!5671802 m!6633008))

(declare-fun m!6633010 () Bool)

(assert (=> b!5671803 m!6633010))

(assert (=> b!5670286 d!1790546))

(declare-fun b!5671804 () Bool)

(declare-fun res!2396707 () Bool)

(declare-fun e!3491493 () Bool)

(assert (=> b!5671804 (=> (not res!2396707) (not e!3491493))))

(declare-fun call!430277 () Bool)

(assert (=> b!5671804 (= res!2396707 (not call!430277))))

(declare-fun b!5671805 () Bool)

(declare-fun e!3491491 () Bool)

(declare-fun e!3491492 () Bool)

(assert (=> b!5671805 (= e!3491491 e!3491492)))

(declare-fun c!997699 () Bool)

(assert (=> b!5671805 (= c!997699 ((_ is EmptyLang!15657) lt!2268129))))

(declare-fun b!5671806 () Bool)

(declare-fun e!3491489 () Bool)

(assert (=> b!5671806 (= e!3491489 (matchR!7842 (derivativeStep!4482 lt!2268129 (head!12038 s!2326)) (tail!11133 s!2326)))))

(declare-fun b!5671807 () Bool)

(assert (=> b!5671807 (= e!3491489 (nullable!5689 lt!2268129))))

(declare-fun bm!430272 () Bool)

(assert (=> bm!430272 (= call!430277 (isEmpty!35001 s!2326))))

(declare-fun b!5671808 () Bool)

(declare-fun res!2396708 () Bool)

(assert (=> b!5671808 (=> (not res!2396708) (not e!3491493))))

(assert (=> b!5671808 (= res!2396708 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun b!5671809 () Bool)

(declare-fun e!3491494 () Bool)

(declare-fun e!3491490 () Bool)

(assert (=> b!5671809 (= e!3491494 e!3491490)))

(declare-fun res!2396712 () Bool)

(assert (=> b!5671809 (=> (not res!2396712) (not e!3491490))))

(declare-fun lt!2268388 () Bool)

(assert (=> b!5671809 (= res!2396712 (not lt!2268388))))

(declare-fun b!5671810 () Bool)

(declare-fun e!3491495 () Bool)

(assert (=> b!5671810 (= e!3491490 e!3491495)))

(declare-fun res!2396710 () Bool)

(assert (=> b!5671810 (=> res!2396710 e!3491495)))

(assert (=> b!5671810 (= res!2396710 call!430277)))

(declare-fun d!1790548 () Bool)

(assert (=> d!1790548 e!3491491))

(declare-fun c!997700 () Bool)

(assert (=> d!1790548 (= c!997700 ((_ is EmptyExpr!15657) lt!2268129))))

(assert (=> d!1790548 (= lt!2268388 e!3491489)))

(declare-fun c!997701 () Bool)

(assert (=> d!1790548 (= c!997701 (isEmpty!35001 s!2326))))

(assert (=> d!1790548 (validRegex!7393 lt!2268129)))

(assert (=> d!1790548 (= (matchR!7842 lt!2268129 s!2326) lt!2268388)))

(declare-fun b!5671811 () Bool)

(assert (=> b!5671811 (= e!3491495 (not (= (head!12038 s!2326) (c!997231 lt!2268129))))))

(declare-fun b!5671812 () Bool)

(declare-fun res!2396709 () Bool)

(assert (=> b!5671812 (=> res!2396709 e!3491494)))

(assert (=> b!5671812 (= res!2396709 e!3491493)))

(declare-fun res!2396711 () Bool)

(assert (=> b!5671812 (=> (not res!2396711) (not e!3491493))))

(assert (=> b!5671812 (= res!2396711 lt!2268388)))

(declare-fun b!5671813 () Bool)

(assert (=> b!5671813 (= e!3491492 (not lt!2268388))))

(declare-fun b!5671814 () Bool)

(assert (=> b!5671814 (= e!3491491 (= lt!2268388 call!430277))))

(declare-fun b!5671815 () Bool)

(declare-fun res!2396714 () Bool)

(assert (=> b!5671815 (=> res!2396714 e!3491495)))

(assert (=> b!5671815 (= res!2396714 (not (isEmpty!35001 (tail!11133 s!2326))))))

(declare-fun b!5671816 () Bool)

(assert (=> b!5671816 (= e!3491493 (= (head!12038 s!2326) (c!997231 lt!2268129)))))

(declare-fun b!5671817 () Bool)

(declare-fun res!2396713 () Bool)

(assert (=> b!5671817 (=> res!2396713 e!3491494)))

(assert (=> b!5671817 (= res!2396713 (not ((_ is ElementMatch!15657) lt!2268129)))))

(assert (=> b!5671817 (= e!3491492 e!3491494)))

(assert (= (and d!1790548 c!997701) b!5671807))

(assert (= (and d!1790548 (not c!997701)) b!5671806))

(assert (= (and d!1790548 c!997700) b!5671814))

(assert (= (and d!1790548 (not c!997700)) b!5671805))

(assert (= (and b!5671805 c!997699) b!5671813))

(assert (= (and b!5671805 (not c!997699)) b!5671817))

(assert (= (and b!5671817 (not res!2396713)) b!5671812))

(assert (= (and b!5671812 res!2396711) b!5671804))

(assert (= (and b!5671804 res!2396707) b!5671808))

(assert (= (and b!5671808 res!2396708) b!5671816))

(assert (= (and b!5671812 (not res!2396709)) b!5671809))

(assert (= (and b!5671809 res!2396712) b!5671810))

(assert (= (and b!5671810 (not res!2396710)) b!5671815))

(assert (= (and b!5671815 (not res!2396714)) b!5671811))

(assert (= (or b!5671814 b!5671804 b!5671810) bm!430272))

(assert (=> b!5671808 m!6631868))

(assert (=> b!5671808 m!6631868))

(assert (=> b!5671808 m!6631870))

(assert (=> b!5671815 m!6631868))

(assert (=> b!5671815 m!6631868))

(assert (=> b!5671815 m!6631870))

(assert (=> d!1790548 m!6631874))

(declare-fun m!6633012 () Bool)

(assert (=> d!1790548 m!6633012))

(assert (=> b!5671816 m!6631876))

(assert (=> b!5671806 m!6631876))

(assert (=> b!5671806 m!6631876))

(declare-fun m!6633014 () Bool)

(assert (=> b!5671806 m!6633014))

(assert (=> b!5671806 m!6631868))

(assert (=> b!5671806 m!6633014))

(assert (=> b!5671806 m!6631868))

(declare-fun m!6633016 () Bool)

(assert (=> b!5671806 m!6633016))

(declare-fun m!6633018 () Bool)

(assert (=> b!5671807 m!6633018))

(assert (=> b!5671811 m!6631876))

(assert (=> bm!430272 m!6631874))

(assert (=> b!5670615 d!1790548))

(declare-fun d!1790550 () Bool)

(declare-fun c!997703 () Bool)

(declare-fun e!3491498 () Bool)

(assert (=> d!1790550 (= c!997703 e!3491498)))

(declare-fun res!2396715 () Bool)

(assert (=> d!1790550 (=> (not res!2396715) (not e!3491498))))

(assert (=> d!1790550 (= res!2396715 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268148))))))))

(declare-fun e!3491497 () (InoxSet Context!10082))

(assert (=> d!1790550 (= (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 lt!2268148))) (h!69595 s!2326)) e!3491497)))

(declare-fun b!5671818 () Bool)

(declare-fun e!3491496 () (InoxSet Context!10082))

(assert (=> b!5671818 (= e!3491497 e!3491496)))

(declare-fun c!997702 () Bool)

(assert (=> b!5671818 (= c!997702 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268148))))))))

(declare-fun b!5671819 () Bool)

(assert (=> b!5671819 (= e!3491496 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430273 () Bool)

(declare-fun call!430278 () (InoxSet Context!10082))

(assert (=> bm!430273 (= call!430278 (derivationStepZipperDown!999 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268148))))) (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268148)))))) (h!69595 s!2326)))))

(declare-fun b!5671820 () Bool)

(assert (=> b!5671820 (= e!3491498 (nullable!5689 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268148)))))))))

(declare-fun b!5671821 () Bool)

(assert (=> b!5671821 (= e!3491497 ((_ map or) call!430278 (derivationStepZipperUp!925 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268148)))))) (h!69595 s!2326))))))

(declare-fun b!5671822 () Bool)

(assert (=> b!5671822 (= e!3491496 call!430278)))

(assert (= (and d!1790550 res!2396715) b!5671820))

(assert (= (and d!1790550 c!997703) b!5671821))

(assert (= (and d!1790550 (not c!997703)) b!5671818))

(assert (= (and b!5671818 c!997702) b!5671822))

(assert (= (and b!5671818 (not c!997702)) b!5671819))

(assert (= (or b!5671821 b!5671822) bm!430273))

(declare-fun m!6633020 () Bool)

(assert (=> bm!430273 m!6633020))

(declare-fun m!6633022 () Bool)

(assert (=> b!5671820 m!6633022))

(declare-fun m!6633024 () Bool)

(assert (=> b!5671821 m!6633024))

(assert (=> b!5671030 d!1790550))

(assert (=> bm!430092 d!1790410))

(assert (=> bs!1321257 d!1790252))

(declare-fun d!1790552 () Bool)

(assert (=> d!1790552 (= (isEmpty!34998 (tail!11134 (t!376576 (exprs!5541 (h!69596 zl!343))))) ((_ is Nil!63146) (tail!11134 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(assert (=> b!5670796 d!1790552))

(declare-fun d!1790554 () Bool)

(assert (=> d!1790554 (= (tail!11134 (t!376576 (exprs!5541 (h!69596 zl!343)))) (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> b!5670796 d!1790554))

(assert (=> d!1790006 d!1790336))

(assert (=> d!1790192 d!1790190))

(declare-fun d!1790556 () Bool)

(assert (=> d!1790556 (= (flatMap!1270 z!1189 lambda!305097) (dynLambda!24711 lambda!305097 (h!69596 zl!343)))))

(assert (=> d!1790556 true))

(declare-fun _$13!2315 () Unit!156160)

(assert (=> d!1790556 (= (choose!42904 z!1189 (h!69596 zl!343) lambda!305097) _$13!2315)))

(declare-fun b_lambda!214531 () Bool)

(assert (=> (not b_lambda!214531) (not d!1790556)))

(declare-fun bs!1321752 () Bool)

(assert (= bs!1321752 d!1790556))

(assert (=> bs!1321752 m!6631450))

(assert (=> bs!1321752 m!6632228))

(assert (=> d!1790192 d!1790556))

(assert (=> bm!430155 d!1790410))

(declare-fun b!5671823 () Bool)

(declare-fun res!2396716 () Bool)

(declare-fun e!3491503 () Bool)

(assert (=> b!5671823 (=> (not res!2396716) (not e!3491503))))

(declare-fun call!430279 () Bool)

(assert (=> b!5671823 (= res!2396716 (not call!430279))))

(declare-fun b!5671824 () Bool)

(declare-fun e!3491501 () Bool)

(declare-fun e!3491502 () Bool)

(assert (=> b!5671824 (= e!3491501 e!3491502)))

(declare-fun c!997704 () Bool)

(assert (=> b!5671824 (= c!997704 ((_ is EmptyLang!15657) lt!2268120))))

(declare-fun b!5671825 () Bool)

(declare-fun e!3491499 () Bool)

(assert (=> b!5671825 (= e!3491499 (matchR!7842 (derivativeStep!4482 lt!2268120 (head!12038 (_2!36057 (get!21758 lt!2268288)))) (tail!11133 (_2!36057 (get!21758 lt!2268288)))))))

(declare-fun b!5671826 () Bool)

(assert (=> b!5671826 (= e!3491499 (nullable!5689 lt!2268120))))

(declare-fun bm!430274 () Bool)

(assert (=> bm!430274 (= call!430279 (isEmpty!35001 (_2!36057 (get!21758 lt!2268288))))))

(declare-fun b!5671827 () Bool)

(declare-fun res!2396717 () Bool)

(assert (=> b!5671827 (=> (not res!2396717) (not e!3491503))))

(assert (=> b!5671827 (= res!2396717 (isEmpty!35001 (tail!11133 (_2!36057 (get!21758 lt!2268288)))))))

(declare-fun b!5671828 () Bool)

(declare-fun e!3491504 () Bool)

(declare-fun e!3491500 () Bool)

(assert (=> b!5671828 (= e!3491504 e!3491500)))

(declare-fun res!2396721 () Bool)

(assert (=> b!5671828 (=> (not res!2396721) (not e!3491500))))

(declare-fun lt!2268389 () Bool)

(assert (=> b!5671828 (= res!2396721 (not lt!2268389))))

(declare-fun b!5671829 () Bool)

(declare-fun e!3491505 () Bool)

(assert (=> b!5671829 (= e!3491500 e!3491505)))

(declare-fun res!2396719 () Bool)

(assert (=> b!5671829 (=> res!2396719 e!3491505)))

(assert (=> b!5671829 (= res!2396719 call!430279)))

(declare-fun d!1790558 () Bool)

(assert (=> d!1790558 e!3491501))

(declare-fun c!997705 () Bool)

(assert (=> d!1790558 (= c!997705 ((_ is EmptyExpr!15657) lt!2268120))))

(assert (=> d!1790558 (= lt!2268389 e!3491499)))

(declare-fun c!997706 () Bool)

(assert (=> d!1790558 (= c!997706 (isEmpty!35001 (_2!36057 (get!21758 lt!2268288))))))

(assert (=> d!1790558 (validRegex!7393 lt!2268120)))

(assert (=> d!1790558 (= (matchR!7842 lt!2268120 (_2!36057 (get!21758 lt!2268288))) lt!2268389)))

(declare-fun b!5671830 () Bool)

(assert (=> b!5671830 (= e!3491505 (not (= (head!12038 (_2!36057 (get!21758 lt!2268288))) (c!997231 lt!2268120))))))

(declare-fun b!5671831 () Bool)

(declare-fun res!2396718 () Bool)

(assert (=> b!5671831 (=> res!2396718 e!3491504)))

(assert (=> b!5671831 (= res!2396718 e!3491503)))

(declare-fun res!2396720 () Bool)

(assert (=> b!5671831 (=> (not res!2396720) (not e!3491503))))

(assert (=> b!5671831 (= res!2396720 lt!2268389)))

(declare-fun b!5671832 () Bool)

(assert (=> b!5671832 (= e!3491502 (not lt!2268389))))

(declare-fun b!5671833 () Bool)

(assert (=> b!5671833 (= e!3491501 (= lt!2268389 call!430279))))

(declare-fun b!5671834 () Bool)

(declare-fun res!2396723 () Bool)

(assert (=> b!5671834 (=> res!2396723 e!3491505)))

(assert (=> b!5671834 (= res!2396723 (not (isEmpty!35001 (tail!11133 (_2!36057 (get!21758 lt!2268288))))))))

(declare-fun b!5671835 () Bool)

(assert (=> b!5671835 (= e!3491503 (= (head!12038 (_2!36057 (get!21758 lt!2268288))) (c!997231 lt!2268120)))))

(declare-fun b!5671836 () Bool)

(declare-fun res!2396722 () Bool)

(assert (=> b!5671836 (=> res!2396722 e!3491504)))

(assert (=> b!5671836 (= res!2396722 (not ((_ is ElementMatch!15657) lt!2268120)))))

(assert (=> b!5671836 (= e!3491502 e!3491504)))

(assert (= (and d!1790558 c!997706) b!5671826))

(assert (= (and d!1790558 (not c!997706)) b!5671825))

(assert (= (and d!1790558 c!997705) b!5671833))

(assert (= (and d!1790558 (not c!997705)) b!5671824))

(assert (= (and b!5671824 c!997704) b!5671832))

(assert (= (and b!5671824 (not c!997704)) b!5671836))

(assert (= (and b!5671836 (not res!2396722)) b!5671831))

(assert (= (and b!5671831 res!2396720) b!5671823))

(assert (= (and b!5671823 res!2396716) b!5671827))

(assert (= (and b!5671827 res!2396717) b!5671835))

(assert (= (and b!5671831 (not res!2396718)) b!5671828))

(assert (= (and b!5671828 res!2396721) b!5671829))

(assert (= (and b!5671829 (not res!2396719)) b!5671834))

(assert (= (and b!5671834 (not res!2396723)) b!5671830))

(assert (= (or b!5671833 b!5671823 b!5671829) bm!430274))

(declare-fun m!6633026 () Bool)

(assert (=> b!5671827 m!6633026))

(assert (=> b!5671827 m!6633026))

(declare-fun m!6633028 () Bool)

(assert (=> b!5671827 m!6633028))

(assert (=> b!5671834 m!6633026))

(assert (=> b!5671834 m!6633026))

(assert (=> b!5671834 m!6633028))

(declare-fun m!6633030 () Bool)

(assert (=> d!1790558 m!6633030))

(assert (=> d!1790558 m!6631826))

(declare-fun m!6633032 () Bool)

(assert (=> b!5671835 m!6633032))

(assert (=> b!5671825 m!6633032))

(assert (=> b!5671825 m!6633032))

(declare-fun m!6633034 () Bool)

(assert (=> b!5671825 m!6633034))

(assert (=> b!5671825 m!6633026))

(assert (=> b!5671825 m!6633034))

(assert (=> b!5671825 m!6633026))

(declare-fun m!6633036 () Bool)

(assert (=> b!5671825 m!6633036))

(assert (=> b!5671826 m!6631882))

(assert (=> b!5671830 m!6633032))

(assert (=> bm!430274 m!6633030))

(assert (=> b!5670876 d!1790558))

(assert (=> b!5670876 d!1790402))

(declare-fun bs!1321753 () Bool)

(declare-fun d!1790560 () Bool)

(assert (= bs!1321753 (and d!1790560 d!1790330)))

(declare-fun lambda!305268 () Int)

(assert (=> bs!1321753 (= lambda!305268 lambda!305227)))

(declare-fun bs!1321754 () Bool)

(assert (= bs!1321754 (and d!1790560 b!5671425)))

(assert (=> bs!1321754 (not (= lambda!305268 lambda!305230))))

(declare-fun bs!1321755 () Bool)

(assert (= bs!1321755 (and d!1790560 b!5671698)))

(assert (=> bs!1321755 (not (= lambda!305268 lambda!305263))))

(declare-fun bs!1321756 () Bool)

(assert (= bs!1321756 (and d!1790560 d!1790286)))

(assert (=> bs!1321756 (= lambda!305268 lambda!305216)))

(declare-fun bs!1321757 () Bool)

(assert (= bs!1321757 (and d!1790560 b!5670286)))

(assert (=> bs!1321757 (not (= lambda!305268 lambda!305110))))

(declare-fun bs!1321758 () Bool)

(assert (= bs!1321758 (and d!1790560 b!5670291)))

(assert (=> bs!1321758 (not (= lambda!305268 lambda!305113))))

(declare-fun bs!1321759 () Bool)

(assert (= bs!1321759 (and d!1790560 b!5671696)))

(assert (=> bs!1321759 (not (= lambda!305268 lambda!305262))))

(declare-fun bs!1321760 () Bool)

(assert (= bs!1321760 (and d!1790560 d!1790492)))

(assert (=> bs!1321760 (not (= lambda!305268 lambda!305258))))

(declare-fun bs!1321761 () Bool)

(assert (= bs!1321761 (and d!1790560 b!5670289)))

(assert (=> bs!1321761 (not (= lambda!305268 lambda!305112))))

(declare-fun bs!1321762 () Bool)

(assert (= bs!1321762 (and d!1790560 d!1790462)))

(assert (=> bs!1321762 (= lambda!305268 lambda!305253)))

(declare-fun bs!1321763 () Bool)

(assert (= bs!1321763 (and d!1790560 b!5670284)))

(assert (=> bs!1321763 (not (= lambda!305268 lambda!305109))))

(declare-fun bs!1321764 () Bool)

(assert (= bs!1321764 (and d!1790560 b!5671427)))

(assert (=> bs!1321764 (not (= lambda!305268 lambda!305231))))

(declare-fun bs!1321765 () Bool)

(assert (= bs!1321765 (and d!1790560 d!1790356)))

(assert (=> bs!1321765 (not (= lambda!305268 lambda!305234))))

(assert (=> d!1790560 (= (nullableZipper!1629 lt!2268133) (exists!2203 lt!2268133 lambda!305268))))

(declare-fun bs!1321766 () Bool)

(assert (= bs!1321766 d!1790560))

(declare-fun m!6633038 () Bool)

(assert (=> bs!1321766 m!6633038))

(assert (=> b!5670343 d!1790560))

(declare-fun b!5671851 () Bool)

(declare-fun e!3491518 () Bool)

(declare-fun e!3491522 () Bool)

(assert (=> b!5671851 (= e!3491518 e!3491522)))

(declare-fun res!2396736 () Bool)

(declare-fun call!430285 () Bool)

(assert (=> b!5671851 (= res!2396736 call!430285)))

(assert (=> b!5671851 (=> res!2396736 e!3491522)))

(declare-fun b!5671852 () Bool)

(declare-fun e!3491521 () Bool)

(assert (=> b!5671852 (= e!3491521 e!3491518)))

(declare-fun c!997709 () Bool)

(assert (=> b!5671852 (= c!997709 ((_ is Union!15657) (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun b!5671853 () Bool)

(declare-fun e!3491520 () Bool)

(declare-fun call!430284 () Bool)

(assert (=> b!5671853 (= e!3491520 call!430284)))

(declare-fun bm!430279 () Bool)

(assert (=> bm!430279 (= call!430285 (nullable!5689 (ite c!997709 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))))))

(declare-fun b!5671854 () Bool)

(declare-fun e!3491519 () Bool)

(declare-fun e!3491523 () Bool)

(assert (=> b!5671854 (= e!3491519 e!3491523)))

(declare-fun res!2396737 () Bool)

(assert (=> b!5671854 (=> (not res!2396737) (not e!3491523))))

(assert (=> b!5671854 (= res!2396737 (and (not ((_ is EmptyLang!15657) (regOne!31826 (regOne!31826 r!7292)))) (not ((_ is ElementMatch!15657) (regOne!31826 (regOne!31826 r!7292))))))))

(declare-fun b!5671855 () Bool)

(assert (=> b!5671855 (= e!3491518 e!3491520)))

(declare-fun res!2396734 () Bool)

(assert (=> b!5671855 (= res!2396734 call!430285)))

(assert (=> b!5671855 (=> (not res!2396734) (not e!3491520))))

(declare-fun d!1790562 () Bool)

(declare-fun res!2396738 () Bool)

(assert (=> d!1790562 (=> res!2396738 e!3491519)))

(assert (=> d!1790562 (= res!2396738 ((_ is EmptyExpr!15657) (regOne!31826 (regOne!31826 r!7292))))))

(assert (=> d!1790562 (= (nullableFct!1774 (regOne!31826 (regOne!31826 r!7292))) e!3491519)))

(declare-fun b!5671856 () Bool)

(assert (=> b!5671856 (= e!3491522 call!430284)))

(declare-fun b!5671857 () Bool)

(assert (=> b!5671857 (= e!3491523 e!3491521)))

(declare-fun res!2396735 () Bool)

(assert (=> b!5671857 (=> res!2396735 e!3491521)))

(assert (=> b!5671857 (= res!2396735 ((_ is Star!15657) (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun bm!430280 () Bool)

(assert (=> bm!430280 (= call!430284 (nullable!5689 (ite c!997709 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))))))))

(assert (= (and d!1790562 (not res!2396738)) b!5671854))

(assert (= (and b!5671854 res!2396737) b!5671857))

(assert (= (and b!5671857 (not res!2396735)) b!5671852))

(assert (= (and b!5671852 c!997709) b!5671851))

(assert (= (and b!5671852 (not c!997709)) b!5671855))

(assert (= (and b!5671851 (not res!2396736)) b!5671856))

(assert (= (and b!5671855 res!2396734) b!5671853))

(assert (= (or b!5671856 b!5671853) bm!430280))

(assert (= (or b!5671851 b!5671855) bm!430279))

(declare-fun m!6633040 () Bool)

(assert (=> bm!430279 m!6633040))

(declare-fun m!6633042 () Bool)

(assert (=> bm!430280 m!6633042))

(assert (=> d!1790266 d!1790562))

(assert (=> b!5670620 d!1790474))

(assert (=> b!5670620 d!1790476))

(assert (=> b!5670620 d!1790478))

(declare-fun b!5671858 () Bool)

(declare-fun res!2396739 () Bool)

(declare-fun e!3491528 () Bool)

(assert (=> b!5671858 (=> (not res!2396739) (not e!3491528))))

(declare-fun lt!2268391 () Option!15666)

(assert (=> b!5671858 (= res!2396739 (matchR!7842 lt!2268129 (_2!36057 (get!21758 lt!2268391))))))

(declare-fun b!5671859 () Bool)

(declare-fun e!3491527 () Option!15666)

(declare-fun e!3491526 () Option!15666)

(assert (=> b!5671859 (= e!3491527 e!3491526)))

(declare-fun c!997711 () Bool)

(assert (=> b!5671859 (= c!997711 ((_ is Nil!63147) (t!376577 s!2326)))))

(declare-fun b!5671860 () Bool)

(assert (=> b!5671860 (= e!3491526 None!15665)))

(declare-fun b!5671861 () Bool)

(declare-fun e!3491524 () Bool)

(assert (=> b!5671861 (= e!3491524 (matchR!7842 lt!2268129 (t!376577 s!2326)))))

(declare-fun b!5671862 () Bool)

(assert (=> b!5671862 (= e!3491528 (= (++!13862 (_1!36057 (get!21758 lt!2268391)) (_2!36057 (get!21758 lt!2268391))) s!2326))))

(declare-fun d!1790564 () Bool)

(declare-fun e!3491525 () Bool)

(assert (=> d!1790564 e!3491525))

(declare-fun res!2396743 () Bool)

(assert (=> d!1790564 (=> res!2396743 e!3491525)))

(assert (=> d!1790564 (= res!2396743 e!3491528)))

(declare-fun res!2396740 () Bool)

(assert (=> d!1790564 (=> (not res!2396740) (not e!3491528))))

(assert (=> d!1790564 (= res!2396740 (isDefined!12369 lt!2268391))))

(assert (=> d!1790564 (= lt!2268391 e!3491527)))

(declare-fun c!997710 () Bool)

(assert (=> d!1790564 (= c!997710 e!3491524)))

(declare-fun res!2396742 () Bool)

(assert (=> d!1790564 (=> (not res!2396742) (not e!3491524))))

(assert (=> d!1790564 (= res!2396742 (matchR!7842 (regTwo!31826 (regOne!31826 r!7292)) (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147))))))

(assert (=> d!1790564 (validRegex!7393 (regTwo!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790564 (= (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326) s!2326) lt!2268391)))

(declare-fun b!5671863 () Bool)

(assert (=> b!5671863 (= e!3491525 (not (isDefined!12369 lt!2268391)))))

(declare-fun b!5671864 () Bool)

(assert (=> b!5671864 (= e!3491527 (Some!15665 (tuple2!65509 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326))))))

(declare-fun b!5671865 () Bool)

(declare-fun res!2396741 () Bool)

(assert (=> b!5671865 (=> (not res!2396741) (not e!3491528))))

(assert (=> b!5671865 (= res!2396741 (matchR!7842 (regTwo!31826 (regOne!31826 r!7292)) (_1!36057 (get!21758 lt!2268391))))))

(declare-fun b!5671866 () Bool)

(declare-fun lt!2268392 () Unit!156160)

(declare-fun lt!2268390 () Unit!156160)

(assert (=> b!5671866 (= lt!2268392 lt!2268390)))

(assert (=> b!5671866 (= (++!13862 (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (Cons!63147 (h!69595 (t!376577 s!2326)) Nil!63147)) (t!376577 (t!376577 s!2326))) s!2326)))

(assert (=> b!5671866 (= lt!2268390 (lemmaMoveElementToOtherListKeepsConcatEq!2031 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (h!69595 (t!376577 s!2326)) (t!376577 (t!376577 s!2326)) s!2326))))

(assert (=> b!5671866 (= e!3491526 (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (Cons!63147 (h!69595 (t!376577 s!2326)) Nil!63147)) (t!376577 (t!376577 s!2326)) s!2326))))

(assert (= (and d!1790564 res!2396742) b!5671861))

(assert (= (and d!1790564 c!997710) b!5671864))

(assert (= (and d!1790564 (not c!997710)) b!5671859))

(assert (= (and b!5671859 c!997711) b!5671860))

(assert (= (and b!5671859 (not c!997711)) b!5671866))

(assert (= (and d!1790564 res!2396740) b!5671865))

(assert (= (and b!5671865 res!2396741) b!5671858))

(assert (= (and b!5671858 res!2396739) b!5671862))

(assert (= (and d!1790564 (not res!2396743)) b!5671863))

(assert (=> b!5671866 m!6631716))

(assert (=> b!5671866 m!6632840))

(assert (=> b!5671866 m!6632840))

(assert (=> b!5671866 m!6632842))

(assert (=> b!5671866 m!6631716))

(assert (=> b!5671866 m!6632844))

(assert (=> b!5671866 m!6632840))

(declare-fun m!6633044 () Bool)

(assert (=> b!5671866 m!6633044))

(declare-fun m!6633046 () Bool)

(assert (=> b!5671858 m!6633046))

(declare-fun m!6633048 () Bool)

(assert (=> b!5671858 m!6633048))

(assert (=> b!5671862 m!6633046))

(declare-fun m!6633050 () Bool)

(assert (=> b!5671862 m!6633050))

(declare-fun m!6633052 () Bool)

(assert (=> d!1790564 m!6633052))

(assert (=> d!1790564 m!6631716))

(declare-fun m!6633054 () Bool)

(assert (=> d!1790564 m!6633054))

(assert (=> d!1790564 m!6631916))

(assert (=> b!5671863 m!6633052))

(assert (=> b!5671865 m!6633046))

(declare-fun m!6633056 () Bool)

(assert (=> b!5671865 m!6633056))

(declare-fun m!6633058 () Bool)

(assert (=> b!5671861 m!6633058))

(assert (=> b!5670620 d!1790564))

(assert (=> b!5671063 d!1790346))

(declare-fun b!5671867 () Bool)

(declare-fun e!3491529 () Bool)

(declare-fun e!3491533 () Bool)

(assert (=> b!5671867 (= e!3491529 e!3491533)))

(declare-fun res!2396746 () Bool)

(declare-fun call!430287 () Bool)

(assert (=> b!5671867 (= res!2396746 call!430287)))

(assert (=> b!5671867 (=> res!2396746 e!3491533)))

(declare-fun b!5671868 () Bool)

(declare-fun e!3491532 () Bool)

(assert (=> b!5671868 (= e!3491532 e!3491529)))

(declare-fun c!997712 () Bool)

(assert (=> b!5671868 (= c!997712 ((_ is Union!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5671869 () Bool)

(declare-fun e!3491531 () Bool)

(declare-fun call!430286 () Bool)

(assert (=> b!5671869 (= e!3491531 call!430286)))

(declare-fun bm!430281 () Bool)

(assert (=> bm!430281 (= call!430287 (nullable!5689 (ite c!997712 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5671870 () Bool)

(declare-fun e!3491530 () Bool)

(declare-fun e!3491534 () Bool)

(assert (=> b!5671870 (= e!3491530 e!3491534)))

(declare-fun res!2396747 () Bool)

(assert (=> b!5671870 (=> (not res!2396747) (not e!3491534))))

(assert (=> b!5671870 (= res!2396747 (and (not ((_ is EmptyLang!15657) (h!69594 (exprs!5541 (h!69596 zl!343))))) (not ((_ is ElementMatch!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun b!5671871 () Bool)

(assert (=> b!5671871 (= e!3491529 e!3491531)))

(declare-fun res!2396744 () Bool)

(assert (=> b!5671871 (= res!2396744 call!430287)))

(assert (=> b!5671871 (=> (not res!2396744) (not e!3491531))))

(declare-fun d!1790566 () Bool)

(declare-fun res!2396748 () Bool)

(assert (=> d!1790566 (=> res!2396748 e!3491530)))

(assert (=> d!1790566 (= res!2396748 ((_ is EmptyExpr!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> d!1790566 (= (nullableFct!1774 (h!69594 (exprs!5541 (h!69596 zl!343)))) e!3491530)))

(declare-fun b!5671872 () Bool)

(assert (=> b!5671872 (= e!3491533 call!430286)))

(declare-fun b!5671873 () Bool)

(assert (=> b!5671873 (= e!3491534 e!3491532)))

(declare-fun res!2396745 () Bool)

(assert (=> b!5671873 (=> res!2396745 e!3491532)))

(assert (=> b!5671873 (= res!2396745 ((_ is Star!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun bm!430282 () Bool)

(assert (=> bm!430282 (= call!430286 (nullable!5689 (ite c!997712 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))

(assert (= (and d!1790566 (not res!2396748)) b!5671870))

(assert (= (and b!5671870 res!2396747) b!5671873))

(assert (= (and b!5671873 (not res!2396745)) b!5671868))

(assert (= (and b!5671868 c!997712) b!5671867))

(assert (= (and b!5671868 (not c!997712)) b!5671871))

(assert (= (and b!5671867 (not res!2396746)) b!5671872))

(assert (= (and b!5671871 res!2396744) b!5671869))

(assert (= (or b!5671872 b!5671869) bm!430282))

(assert (= (or b!5671867 b!5671871) bm!430281))

(declare-fun m!6633060 () Bool)

(assert (=> bm!430281 m!6633060))

(declare-fun m!6633062 () Bool)

(assert (=> bm!430282 m!6633062))

(assert (=> d!1790182 d!1790566))

(declare-fun bs!1321767 () Bool)

(declare-fun d!1790568 () Bool)

(assert (= bs!1321767 (and d!1790568 d!1790330)))

(declare-fun lambda!305269 () Int)

(assert (=> bs!1321767 (= lambda!305269 lambda!305227)))

(declare-fun bs!1321768 () Bool)

(assert (= bs!1321768 (and d!1790568 b!5671425)))

(assert (=> bs!1321768 (not (= lambda!305269 lambda!305230))))

(declare-fun bs!1321769 () Bool)

(assert (= bs!1321769 (and d!1790568 b!5671698)))

(assert (=> bs!1321769 (not (= lambda!305269 lambda!305263))))

(declare-fun bs!1321770 () Bool)

(assert (= bs!1321770 (and d!1790568 d!1790286)))

(assert (=> bs!1321770 (= lambda!305269 lambda!305216)))

(declare-fun bs!1321771 () Bool)

(assert (= bs!1321771 (and d!1790568 b!5670286)))

(assert (=> bs!1321771 (not (= lambda!305269 lambda!305110))))

(declare-fun bs!1321772 () Bool)

(assert (= bs!1321772 (and d!1790568 b!5670291)))

(assert (=> bs!1321772 (not (= lambda!305269 lambda!305113))))

(declare-fun bs!1321773 () Bool)

(assert (= bs!1321773 (and d!1790568 d!1790560)))

(assert (=> bs!1321773 (= lambda!305269 lambda!305268)))

(declare-fun bs!1321774 () Bool)

(assert (= bs!1321774 (and d!1790568 b!5671696)))

(assert (=> bs!1321774 (not (= lambda!305269 lambda!305262))))

(declare-fun bs!1321775 () Bool)

(assert (= bs!1321775 (and d!1790568 d!1790492)))

(assert (=> bs!1321775 (not (= lambda!305269 lambda!305258))))

(declare-fun bs!1321776 () Bool)

(assert (= bs!1321776 (and d!1790568 b!5670289)))

(assert (=> bs!1321776 (not (= lambda!305269 lambda!305112))))

(declare-fun bs!1321777 () Bool)

(assert (= bs!1321777 (and d!1790568 d!1790462)))

(assert (=> bs!1321777 (= lambda!305269 lambda!305253)))

(declare-fun bs!1321778 () Bool)

(assert (= bs!1321778 (and d!1790568 b!5670284)))

(assert (=> bs!1321778 (not (= lambda!305269 lambda!305109))))

(declare-fun bs!1321779 () Bool)

(assert (= bs!1321779 (and d!1790568 b!5671427)))

(assert (=> bs!1321779 (not (= lambda!305269 lambda!305231))))

(declare-fun bs!1321780 () Bool)

(assert (= bs!1321780 (and d!1790568 d!1790356)))

(assert (=> bs!1321780 (not (= lambda!305269 lambda!305234))))

(assert (=> d!1790568 (= (nullableZipper!1629 lt!2268121) (exists!2203 lt!2268121 lambda!305269))))

(declare-fun bs!1321781 () Bool)

(assert (= bs!1321781 d!1790568))

(declare-fun m!6633064 () Bool)

(assert (=> bs!1321781 m!6633064))

(assert (=> b!5671145 d!1790568))

(declare-fun b!5671874 () Bool)

(declare-fun e!3491536 () (InoxSet Context!10082))

(assert (=> b!5671874 (= e!3491536 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430283 () Bool)

(declare-fun call!430293 () (InoxSet Context!10082))

(declare-fun call!430292 () (InoxSet Context!10082))

(assert (=> bm!430283 (= call!430293 call!430292)))

(declare-fun b!5671875 () Bool)

(declare-fun e!3491540 () Bool)

(assert (=> b!5671875 (= e!3491540 (nullable!5689 (regOne!31826 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))))))))

(declare-fun bm!430284 () Bool)

(declare-fun call!430289 () (InoxSet Context!10082))

(assert (=> bm!430284 (= call!430289 call!430293)))

(declare-fun b!5671876 () Bool)

(assert (=> b!5671876 (= e!3491536 call!430289)))

(declare-fun b!5671877 () Bool)

(declare-fun e!3491538 () (InoxSet Context!10082))

(declare-fun call!430290 () (InoxSet Context!10082))

(assert (=> b!5671877 (= e!3491538 ((_ map or) call!430290 call!430293))))

(declare-fun e!3491535 () (InoxSet Context!10082))

(declare-fun b!5671878 () Bool)

(assert (=> b!5671878 (= e!3491535 (store ((as const (Array Context!10082 Bool)) false) (ite c!997505 (Context!10083 lt!2268152) (Context!10083 call!430161)) true))))

(declare-fun c!997716 () Bool)

(declare-fun d!1790570 () Bool)

(assert (=> d!1790570 (= c!997716 (and ((_ is ElementMatch!15657) (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))) (= (c!997231 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))) (h!69595 s!2326))))))

(assert (=> d!1790570 (= (derivationStepZipperDown!999 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))) (ite c!997505 (Context!10083 lt!2268152) (Context!10083 call!430161)) (h!69595 s!2326)) e!3491535)))

(declare-fun b!5671879 () Bool)

(declare-fun e!3491537 () (InoxSet Context!10082))

(assert (=> b!5671879 (= e!3491537 call!430289)))

(declare-fun b!5671880 () Bool)

(declare-fun c!997717 () Bool)

(assert (=> b!5671880 (= c!997717 ((_ is Star!15657) (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))))))

(assert (=> b!5671880 (= e!3491537 e!3491536)))

(declare-fun bm!430285 () Bool)

(declare-fun call!430291 () List!63270)

(declare-fun call!430288 () List!63270)

(assert (=> bm!430285 (= call!430291 call!430288)))

(declare-fun c!997714 () Bool)

(declare-fun bm!430286 () Bool)

(assert (=> bm!430286 (= call!430290 (derivationStepZipperDown!999 (ite c!997714 (regOne!31827 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))) (regOne!31826 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))))) (ite c!997714 (ite c!997505 (Context!10083 lt!2268152) (Context!10083 call!430161)) (Context!10083 call!430288)) (h!69595 s!2326)))))

(declare-fun b!5671881 () Bool)

(declare-fun c!997715 () Bool)

(assert (=> b!5671881 (= c!997715 e!3491540)))

(declare-fun res!2396749 () Bool)

(assert (=> b!5671881 (=> (not res!2396749) (not e!3491540))))

(assert (=> b!5671881 (= res!2396749 ((_ is Concat!24502) (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))))))

(declare-fun e!3491539 () (InoxSet Context!10082))

(assert (=> b!5671881 (= e!3491539 e!3491538)))

(declare-fun b!5671882 () Bool)

(assert (=> b!5671882 (= e!3491538 e!3491537)))

(declare-fun c!997713 () Bool)

(assert (=> b!5671882 (= c!997713 ((_ is Concat!24502) (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))))))

(declare-fun b!5671883 () Bool)

(assert (=> b!5671883 (= e!3491539 ((_ map or) call!430290 call!430292))))

(declare-fun bm!430287 () Bool)

(assert (=> bm!430287 (= call!430292 (derivationStepZipperDown!999 (ite c!997714 (regTwo!31827 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))) (ite c!997715 (regTwo!31826 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))) (ite c!997713 (regOne!31826 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))) (reg!15986 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))))))) (ite (or c!997714 c!997715) (ite c!997505 (Context!10083 lt!2268152) (Context!10083 call!430161)) (Context!10083 call!430291)) (h!69595 s!2326)))))

(declare-fun bm!430288 () Bool)

(assert (=> bm!430288 (= call!430288 ($colon$colon!1695 (exprs!5541 (ite c!997505 (Context!10083 lt!2268152) (Context!10083 call!430161))) (ite (or c!997715 c!997713) (regTwo!31826 (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))) (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))))))))

(declare-fun b!5671884 () Bool)

(assert (=> b!5671884 (= e!3491535 e!3491539)))

(assert (=> b!5671884 (= c!997714 ((_ is Union!15657) (ite c!997505 (regOne!31827 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 (regOne!31826 r!7292))))))))

(assert (= (and d!1790570 c!997716) b!5671878))

(assert (= (and d!1790570 (not c!997716)) b!5671884))

(assert (= (and b!5671884 c!997714) b!5671883))

(assert (= (and b!5671884 (not c!997714)) b!5671881))

(assert (= (and b!5671881 res!2396749) b!5671875))

(assert (= (and b!5671881 c!997715) b!5671877))

(assert (= (and b!5671881 (not c!997715)) b!5671882))

(assert (= (and b!5671882 c!997713) b!5671879))

(assert (= (and b!5671882 (not c!997713)) b!5671880))

(assert (= (and b!5671880 c!997717) b!5671876))

(assert (= (and b!5671880 (not c!997717)) b!5671874))

(assert (= (or b!5671879 b!5671876) bm!430285))

(assert (= (or b!5671879 b!5671876) bm!430284))

(assert (= (or b!5671877 bm!430285) bm!430288))

(assert (= (or b!5671877 bm!430284) bm!430283))

(assert (= (or b!5671883 bm!430283) bm!430287))

(assert (= (or b!5671883 b!5671877) bm!430286))

(declare-fun m!6633066 () Bool)

(assert (=> bm!430287 m!6633066))

(declare-fun m!6633068 () Bool)

(assert (=> bm!430286 m!6633068))

(declare-fun m!6633070 () Bool)

(assert (=> b!5671875 m!6633070))

(declare-fun m!6633072 () Bool)

(assert (=> bm!430288 m!6633072))

(declare-fun m!6633074 () Bool)

(assert (=> b!5671878 m!6633074))

(assert (=> bm!430159 d!1790570))

(declare-fun bs!1321782 () Bool)

(declare-fun d!1790572 () Bool)

(assert (= bs!1321782 (and d!1790572 d!1790464)))

(declare-fun lambda!305270 () Int)

(assert (=> bs!1321782 (= lambda!305270 lambda!305254)))

(declare-fun bs!1321783 () Bool)

(assert (= bs!1321783 (and d!1790572 d!1790156)))

(assert (=> bs!1321783 (= lambda!305270 lambda!305181)))

(declare-fun bs!1321784 () Bool)

(assert (= bs!1321784 (and d!1790572 d!1790174)))

(assert (=> bs!1321784 (= lambda!305270 lambda!305184)))

(declare-fun bs!1321785 () Bool)

(assert (= bs!1321785 (and d!1790572 d!1790426)))

(assert (=> bs!1321785 (= lambda!305270 lambda!305249)))

(declare-fun bs!1321786 () Bool)

(assert (= bs!1321786 (and d!1790572 d!1790394)))

(assert (=> bs!1321786 (= lambda!305270 lambda!305245)))

(declare-fun bs!1321787 () Bool)

(assert (= bs!1321787 (and d!1790572 d!1790372)))

(assert (=> bs!1321787 (= lambda!305270 lambda!305243)))

(declare-fun bs!1321788 () Bool)

(assert (= bs!1321788 (and d!1790572 b!5671695)))

(assert (=> bs!1321788 (not (= lambda!305270 lambda!305260))))

(declare-fun bs!1321789 () Bool)

(assert (= bs!1321789 (and d!1790572 d!1790260)))

(assert (=> bs!1321789 (= lambda!305270 lambda!305213)))

(declare-fun bs!1321790 () Bool)

(assert (= bs!1321790 (and d!1790572 b!5671439)))

(assert (=> bs!1321790 (not (= lambda!305270 lambda!305240))))

(declare-fun bs!1321791 () Bool)

(assert (= bs!1321791 (and d!1790572 d!1790258)))

(assert (=> bs!1321791 (= lambda!305270 lambda!305210)))

(declare-fun bs!1321792 () Bool)

(assert (= bs!1321792 (and d!1790572 d!1790180)))

(assert (=> bs!1321792 (= lambda!305270 lambda!305185)))

(declare-fun bs!1321793 () Bool)

(assert (= bs!1321793 (and d!1790572 b!5671437)))

(assert (=> bs!1321793 (not (= lambda!305270 lambda!305239))))

(declare-fun bs!1321794 () Bool)

(assert (= bs!1321794 (and d!1790572 d!1790238)))

(assert (=> bs!1321794 (= lambda!305270 lambda!305204)))

(declare-fun bs!1321795 () Bool)

(assert (= bs!1321795 (and d!1790572 b!5671693)))

(assert (=> bs!1321795 (not (= lambda!305270 lambda!305259))))

(declare-fun bs!1321796 () Bool)

(assert (= bs!1321796 (and d!1790572 d!1790140)))

(assert (=> bs!1321796 (= lambda!305270 lambda!305180)))

(declare-fun bs!1321797 () Bool)

(assert (= bs!1321797 (and d!1790572 d!1790228)))

(assert (=> bs!1321797 (= lambda!305270 lambda!305203)))

(declare-fun bs!1321798 () Bool)

(assert (= bs!1321798 (and d!1790572 d!1790490)))

(assert (=> bs!1321798 (= lambda!305270 lambda!305257)))

(declare-fun b!5671885 () Bool)

(declare-fun e!3491542 () Bool)

(declare-fun lt!2268393 () Regex!15657)

(assert (=> b!5671885 (= e!3491542 (= lt!2268393 (head!12039 (t!376576 lt!2268152))))))

(declare-fun b!5671886 () Bool)

(declare-fun e!3491546 () Regex!15657)

(assert (=> b!5671886 (= e!3491546 (Concat!24502 (h!69594 (t!376576 lt!2268152)) (generalisedConcat!1272 (t!376576 (t!376576 lt!2268152)))))))

(declare-fun b!5671887 () Bool)

(assert (=> b!5671887 (= e!3491542 (isConcat!710 lt!2268393))))

(declare-fun b!5671888 () Bool)

(declare-fun e!3491541 () Bool)

(assert (=> b!5671888 (= e!3491541 e!3491542)))

(declare-fun c!997718 () Bool)

(assert (=> b!5671888 (= c!997718 (isEmpty!34998 (tail!11134 (t!376576 lt!2268152))))))

(declare-fun b!5671889 () Bool)

(declare-fun e!3491543 () Bool)

(assert (=> b!5671889 (= e!3491543 (isEmpty!34998 (t!376576 (t!376576 lt!2268152))))))

(declare-fun b!5671891 () Bool)

(declare-fun e!3491544 () Bool)

(assert (=> b!5671891 (= e!3491544 e!3491541)))

(declare-fun c!997721 () Bool)

(assert (=> b!5671891 (= c!997721 (isEmpty!34998 (t!376576 lt!2268152)))))

(declare-fun b!5671892 () Bool)

(assert (=> b!5671892 (= e!3491541 (isEmptyExpr!1187 lt!2268393))))

(declare-fun b!5671893 () Bool)

(assert (=> b!5671893 (= e!3491546 EmptyExpr!15657)))

(declare-fun b!5671894 () Bool)

(declare-fun e!3491545 () Regex!15657)

(assert (=> b!5671894 (= e!3491545 e!3491546)))

(declare-fun c!997719 () Bool)

(assert (=> b!5671894 (= c!997719 ((_ is Cons!63146) (t!376576 lt!2268152)))))

(assert (=> d!1790572 e!3491544))

(declare-fun res!2396751 () Bool)

(assert (=> d!1790572 (=> (not res!2396751) (not e!3491544))))

(assert (=> d!1790572 (= res!2396751 (validRegex!7393 lt!2268393))))

(assert (=> d!1790572 (= lt!2268393 e!3491545)))

(declare-fun c!997720 () Bool)

(assert (=> d!1790572 (= c!997720 e!3491543)))

(declare-fun res!2396750 () Bool)

(assert (=> d!1790572 (=> (not res!2396750) (not e!3491543))))

(assert (=> d!1790572 (= res!2396750 ((_ is Cons!63146) (t!376576 lt!2268152)))))

(assert (=> d!1790572 (forall!14810 (t!376576 lt!2268152) lambda!305270)))

(assert (=> d!1790572 (= (generalisedConcat!1272 (t!376576 lt!2268152)) lt!2268393)))

(declare-fun b!5671890 () Bool)

(assert (=> b!5671890 (= e!3491545 (h!69594 (t!376576 lt!2268152)))))

(assert (= (and d!1790572 res!2396750) b!5671889))

(assert (= (and d!1790572 c!997720) b!5671890))

(assert (= (and d!1790572 (not c!997720)) b!5671894))

(assert (= (and b!5671894 c!997719) b!5671886))

(assert (= (and b!5671894 (not c!997719)) b!5671893))

(assert (= (and d!1790572 res!2396751) b!5671891))

(assert (= (and b!5671891 c!997721) b!5671892))

(assert (= (and b!5671891 (not c!997721)) b!5671888))

(assert (= (and b!5671888 c!997718) b!5671885))

(assert (= (and b!5671888 (not c!997718)) b!5671887))

(declare-fun m!6633076 () Bool)

(assert (=> b!5671886 m!6633076))

(declare-fun m!6633078 () Bool)

(assert (=> b!5671892 m!6633078))

(assert (=> b!5671891 m!6632092))

(declare-fun m!6633080 () Bool)

(assert (=> b!5671888 m!6633080))

(assert (=> b!5671888 m!6633080))

(declare-fun m!6633082 () Bool)

(assert (=> b!5671888 m!6633082))

(declare-fun m!6633084 () Bool)

(assert (=> b!5671885 m!6633084))

(declare-fun m!6633086 () Bool)

(assert (=> b!5671887 m!6633086))

(declare-fun m!6633088 () Bool)

(assert (=> b!5671889 m!6633088))

(declare-fun m!6633090 () Bool)

(assert (=> d!1790572 m!6633090))

(declare-fun m!6633092 () Bool)

(assert (=> d!1790572 m!6633092))

(assert (=> b!5670779 d!1790572))

(declare-fun b!5671895 () Bool)

(declare-fun e!3491548 () (InoxSet Context!10082))

(assert (=> b!5671895 (= e!3491548 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430289 () Bool)

(declare-fun call!430299 () (InoxSet Context!10082))

(declare-fun call!430298 () (InoxSet Context!10082))

(assert (=> bm!430289 (= call!430299 call!430298)))

(declare-fun e!3491552 () Bool)

(declare-fun b!5671896 () Bool)

(assert (=> b!5671896 (= e!3491552 (nullable!5689 (regOne!31826 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292)))))))))))

(declare-fun bm!430290 () Bool)

(declare-fun call!430295 () (InoxSet Context!10082))

(assert (=> bm!430290 (= call!430295 call!430299)))

(declare-fun b!5671897 () Bool)

(assert (=> b!5671897 (= e!3491548 call!430295)))

(declare-fun b!5671898 () Bool)

(declare-fun e!3491550 () (InoxSet Context!10082))

(declare-fun call!430296 () (InoxSet Context!10082))

(assert (=> b!5671898 (= e!3491550 ((_ map or) call!430296 call!430299))))

(declare-fun b!5671899 () Bool)

(declare-fun e!3491547 () (InoxSet Context!10082))

(assert (=> b!5671899 (= e!3491547 (store ((as const (Array Context!10082 Bool)) false) (ite (or c!997505 c!997506) (Context!10083 lt!2268152) (Context!10083 call!430164)) true))))

(declare-fun c!997725 () Bool)

(declare-fun d!1790574 () Bool)

(assert (=> d!1790574 (= c!997725 (and ((_ is ElementMatch!15657) (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))) (= (c!997231 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))) (h!69595 s!2326))))))

(assert (=> d!1790574 (= (derivationStepZipperDown!999 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292)))))) (ite (or c!997505 c!997506) (Context!10083 lt!2268152) (Context!10083 call!430164)) (h!69595 s!2326)) e!3491547)))

(declare-fun b!5671900 () Bool)

(declare-fun e!3491549 () (InoxSet Context!10082))

(assert (=> b!5671900 (= e!3491549 call!430295)))

(declare-fun c!997726 () Bool)

(declare-fun b!5671901 () Bool)

(assert (=> b!5671901 (= c!997726 ((_ is Star!15657) (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))))))

(assert (=> b!5671901 (= e!3491549 e!3491548)))

(declare-fun bm!430291 () Bool)

(declare-fun call!430297 () List!63270)

(declare-fun call!430294 () List!63270)

(assert (=> bm!430291 (= call!430297 call!430294)))

(declare-fun bm!430292 () Bool)

(declare-fun c!997723 () Bool)

(assert (=> bm!430292 (= call!430296 (derivationStepZipperDown!999 (ite c!997723 (regOne!31827 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))) (regOne!31826 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292)))))))) (ite c!997723 (ite (or c!997505 c!997506) (Context!10083 lt!2268152) (Context!10083 call!430164)) (Context!10083 call!430294)) (h!69595 s!2326)))))

(declare-fun b!5671902 () Bool)

(declare-fun c!997724 () Bool)

(assert (=> b!5671902 (= c!997724 e!3491552)))

(declare-fun res!2396752 () Bool)

(assert (=> b!5671902 (=> (not res!2396752) (not e!3491552))))

(assert (=> b!5671902 (= res!2396752 ((_ is Concat!24502) (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))))))

(declare-fun e!3491551 () (InoxSet Context!10082))

(assert (=> b!5671902 (= e!3491551 e!3491550)))

(declare-fun b!5671903 () Bool)

(assert (=> b!5671903 (= e!3491550 e!3491549)))

(declare-fun c!997722 () Bool)

(assert (=> b!5671903 (= c!997722 ((_ is Concat!24502) (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))))))

(declare-fun b!5671904 () Bool)

(assert (=> b!5671904 (= e!3491551 ((_ map or) call!430296 call!430298))))

(declare-fun bm!430293 () Bool)

(assert (=> bm!430293 (= call!430298 (derivationStepZipperDown!999 (ite c!997723 (regTwo!31827 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))) (ite c!997724 (regTwo!31826 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))) (ite c!997722 (regOne!31826 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))) (reg!15986 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292)))))))))) (ite (or c!997723 c!997724) (ite (or c!997505 c!997506) (Context!10083 lt!2268152) (Context!10083 call!430164)) (Context!10083 call!430297)) (h!69595 s!2326)))))

(declare-fun bm!430294 () Bool)

(assert (=> bm!430294 (= call!430294 ($colon$colon!1695 (exprs!5541 (ite (or c!997505 c!997506) (Context!10083 lt!2268152) (Context!10083 call!430164))) (ite (or c!997724 c!997722) (regTwo!31826 (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))) (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292)))))))))))

(declare-fun b!5671905 () Bool)

(assert (=> b!5671905 (= e!3491547 e!3491551)))

(assert (=> b!5671905 (= c!997723 ((_ is Union!15657) (ite c!997505 (regTwo!31827 (regOne!31826 (regOne!31826 r!7292))) (ite c!997506 (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (ite c!997504 (regOne!31826 (regOne!31826 (regOne!31826 r!7292))) (reg!15986 (regOne!31826 (regOne!31826 r!7292))))))))))

(assert (= (and d!1790574 c!997725) b!5671899))

(assert (= (and d!1790574 (not c!997725)) b!5671905))

(assert (= (and b!5671905 c!997723) b!5671904))

(assert (= (and b!5671905 (not c!997723)) b!5671902))

(assert (= (and b!5671902 res!2396752) b!5671896))

(assert (= (and b!5671902 c!997724) b!5671898))

(assert (= (and b!5671902 (not c!997724)) b!5671903))

(assert (= (and b!5671903 c!997722) b!5671900))

(assert (= (and b!5671903 (not c!997722)) b!5671901))

(assert (= (and b!5671901 c!997726) b!5671897))

(assert (= (and b!5671901 (not c!997726)) b!5671895))

(assert (= (or b!5671900 b!5671897) bm!430291))

(assert (= (or b!5671900 b!5671897) bm!430290))

(assert (= (or b!5671898 bm!430291) bm!430294))

(assert (= (or b!5671898 bm!430290) bm!430289))

(assert (= (or b!5671904 bm!430289) bm!430293))

(assert (= (or b!5671904 b!5671898) bm!430292))

(declare-fun m!6633094 () Bool)

(assert (=> bm!430293 m!6633094))

(declare-fun m!6633096 () Bool)

(assert (=> bm!430292 m!6633096))

(declare-fun m!6633098 () Bool)

(assert (=> b!5671896 m!6633098))

(declare-fun m!6633100 () Bool)

(assert (=> bm!430294 m!6633100))

(declare-fun m!6633102 () Bool)

(assert (=> b!5671899 m!6633102))

(assert (=> bm!430160 d!1790574))

(declare-fun d!1790576 () Bool)

(declare-fun c!997727 () Bool)

(assert (=> d!1790576 (= c!997727 (isEmpty!35001 (tail!11133 s!2326)))))

(declare-fun e!3491553 () Bool)

(assert (=> d!1790576 (= (matchZipper!1795 (derivationStepZipper!1742 z!1189 (head!12038 s!2326)) (tail!11133 s!2326)) e!3491553)))

(declare-fun b!5671906 () Bool)

(assert (=> b!5671906 (= e!3491553 (nullableZipper!1629 (derivationStepZipper!1742 z!1189 (head!12038 s!2326))))))

(declare-fun b!5671907 () Bool)

(assert (=> b!5671907 (= e!3491553 (matchZipper!1795 (derivationStepZipper!1742 (derivationStepZipper!1742 z!1189 (head!12038 s!2326)) (head!12038 (tail!11133 s!2326))) (tail!11133 (tail!11133 s!2326))))))

(assert (= (and d!1790576 c!997727) b!5671906))

(assert (= (and d!1790576 (not c!997727)) b!5671907))

(assert (=> d!1790576 m!6631868))

(assert (=> d!1790576 m!6631870))

(assert (=> b!5671906 m!6631894))

(declare-fun m!6633104 () Bool)

(assert (=> b!5671906 m!6633104))

(assert (=> b!5671907 m!6631868))

(assert (=> b!5671907 m!6632542))

(assert (=> b!5671907 m!6631894))

(assert (=> b!5671907 m!6632542))

(declare-fun m!6633106 () Bool)

(assert (=> b!5671907 m!6633106))

(assert (=> b!5671907 m!6631868))

(assert (=> b!5671907 m!6632536))

(assert (=> b!5671907 m!6633106))

(assert (=> b!5671907 m!6632536))

(declare-fun m!6633108 () Bool)

(assert (=> b!5671907 m!6633108))

(assert (=> b!5670611 d!1790576))

(declare-fun bs!1321799 () Bool)

(declare-fun d!1790578 () Bool)

(assert (= bs!1321799 (and d!1790578 d!1790434)))

(declare-fun lambda!305271 () Int)

(assert (=> bs!1321799 (= (= (head!12038 s!2326) (head!12038 (t!376577 s!2326))) (= lambda!305271 lambda!305252))))

(declare-fun bs!1321800 () Bool)

(assert (= bs!1321800 (and d!1790578 d!1790406)))

(assert (=> bs!1321800 (= lambda!305271 lambda!305246)))

(declare-fun bs!1321801 () Bool)

(assert (= bs!1321801 (and d!1790578 d!1790340)))

(assert (=> bs!1321801 (= (= (head!12038 s!2326) (head!12038 (t!376577 s!2326))) (= lambda!305271 lambda!305228))))

(declare-fun bs!1321802 () Bool)

(assert (= bs!1321802 (and d!1790578 b!5670246)))

(assert (=> bs!1321802 (= (= (head!12038 s!2326) (h!69595 s!2326)) (= lambda!305271 lambda!305097))))

(declare-fun bs!1321803 () Bool)

(assert (= bs!1321803 (and d!1790578 d!1790256)))

(assert (=> bs!1321803 (= (= (head!12038 s!2326) (h!69595 s!2326)) (= lambda!305271 lambda!305207))))

(declare-fun bs!1321804 () Bool)

(assert (= bs!1321804 (and d!1790578 d!1790304)))

(assert (=> bs!1321804 (= (= (head!12038 s!2326) (head!12038 (t!376577 s!2326))) (= lambda!305271 lambda!305223))))

(assert (=> d!1790578 true))

(assert (=> d!1790578 (= (derivationStepZipper!1742 z!1189 (head!12038 s!2326)) (flatMap!1270 z!1189 lambda!305271))))

(declare-fun bs!1321805 () Bool)

(assert (= bs!1321805 d!1790578))

(declare-fun m!6633110 () Bool)

(assert (=> bs!1321805 m!6633110))

(assert (=> b!5670611 d!1790578))

(assert (=> b!5670611 d!1790346))

(assert (=> b!5670611 d!1790278))

(declare-fun d!1790580 () Bool)

(assert (=> d!1790580 (= (isEmpty!34998 (tail!11134 lt!2268127)) ((_ is Nil!63146) (tail!11134 lt!2268127)))))

(assert (=> b!5670869 d!1790580))

(declare-fun d!1790582 () Bool)

(assert (=> d!1790582 (= (tail!11134 lt!2268127) (t!376576 lt!2268127))))

(assert (=> b!5670869 d!1790582))

(assert (=> b!5670815 d!1790346))

(declare-fun b!5671908 () Bool)

(declare-fun e!3491560 () Bool)

(declare-fun e!3491557 () Bool)

(assert (=> b!5671908 (= e!3491560 e!3491557)))

(declare-fun res!2396753 () Bool)

(assert (=> b!5671908 (= res!2396753 (not (nullable!5689 (reg!15986 (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))))))))

(assert (=> b!5671908 (=> (not res!2396753) (not e!3491557))))

(declare-fun b!5671909 () Bool)

(declare-fun e!3491556 () Bool)

(declare-fun call!430300 () Bool)

(assert (=> b!5671909 (= e!3491556 call!430300)))

(declare-fun bm!430295 () Bool)

(declare-fun c!997729 () Bool)

(assert (=> bm!430295 (= call!430300 (validRegex!7393 (ite c!997729 (regTwo!31827 (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))) (regTwo!31826 (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))))))))

(declare-fun bm!430296 () Bool)

(declare-fun call!430302 () Bool)

(declare-fun call!430301 () Bool)

(assert (=> bm!430296 (= call!430302 call!430301)))

(declare-fun d!1790584 () Bool)

(declare-fun res!2396757 () Bool)

(declare-fun e!3491559 () Bool)

(assert (=> d!1790584 (=> res!2396757 e!3491559)))

(assert (=> d!1790584 (= res!2396757 ((_ is ElementMatch!15657) (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))))))

(assert (=> d!1790584 (= (validRegex!7393 (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))) e!3491559)))

(declare-fun b!5671910 () Bool)

(declare-fun res!2396754 () Bool)

(declare-fun e!3491558 () Bool)

(assert (=> b!5671910 (=> (not res!2396754) (not e!3491558))))

(assert (=> b!5671910 (= res!2396754 call!430302)))

(declare-fun e!3491554 () Bool)

(assert (=> b!5671910 (= e!3491554 e!3491558)))

(declare-fun b!5671911 () Bool)

(declare-fun res!2396756 () Bool)

(declare-fun e!3491555 () Bool)

(assert (=> b!5671911 (=> res!2396756 e!3491555)))

(assert (=> b!5671911 (= res!2396756 (not ((_ is Concat!24502) (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292)))))))

(assert (=> b!5671911 (= e!3491554 e!3491555)))

(declare-fun b!5671912 () Bool)

(assert (=> b!5671912 (= e!3491560 e!3491554)))

(assert (=> b!5671912 (= c!997729 ((_ is Union!15657) (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))))))

(declare-fun b!5671913 () Bool)

(assert (=> b!5671913 (= e!3491557 call!430301)))

(declare-fun b!5671914 () Bool)

(assert (=> b!5671914 (= e!3491559 e!3491560)))

(declare-fun c!997728 () Bool)

(assert (=> b!5671914 (= c!997728 ((_ is Star!15657) (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))))))

(declare-fun b!5671915 () Bool)

(assert (=> b!5671915 (= e!3491555 e!3491556)))

(declare-fun res!2396755 () Bool)

(assert (=> b!5671915 (=> (not res!2396755) (not e!3491556))))

(assert (=> b!5671915 (= res!2396755 call!430302)))

(declare-fun b!5671916 () Bool)

(assert (=> b!5671916 (= e!3491558 call!430300)))

(declare-fun bm!430297 () Bool)

(assert (=> bm!430297 (= call!430301 (validRegex!7393 (ite c!997728 (reg!15986 (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))) (ite c!997729 (regOne!31827 (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292))) (regOne!31826 (ite c!997535 (regTwo!31827 r!7292) (regTwo!31826 r!7292)))))))))

(assert (= (and d!1790584 (not res!2396757)) b!5671914))

(assert (= (and b!5671914 c!997728) b!5671908))

(assert (= (and b!5671914 (not c!997728)) b!5671912))

(assert (= (and b!5671908 res!2396753) b!5671913))

(assert (= (and b!5671912 c!997729) b!5671910))

(assert (= (and b!5671912 (not c!997729)) b!5671911))

(assert (= (and b!5671910 res!2396754) b!5671916))

(assert (= (and b!5671911 (not res!2396756)) b!5671915))

(assert (= (and b!5671915 res!2396755) b!5671909))

(assert (= (or b!5671916 b!5671909) bm!430295))

(assert (= (or b!5671910 b!5671915) bm!430296))

(assert (= (or b!5671913 bm!430296) bm!430297))

(declare-fun m!6633112 () Bool)

(assert (=> b!5671908 m!6633112))

(declare-fun m!6633114 () Bool)

(assert (=> bm!430295 m!6633114))

(declare-fun m!6633116 () Bool)

(assert (=> bm!430297 m!6633116))

(assert (=> bm!430169 d!1790584))

(declare-fun d!1790586 () Bool)

(declare-fun e!3491561 () Bool)

(assert (=> d!1790586 e!3491561))

(declare-fun res!2396759 () Bool)

(assert (=> d!1790586 (=> (not res!2396759) (not e!3491561))))

(declare-fun lt!2268394 () List!63271)

(assert (=> d!1790586 (= res!2396759 (= (content!11435 lt!2268394) ((_ map or) (content!11435 (_1!36057 (get!21758 lt!2268288))) (content!11435 (_2!36057 (get!21758 lt!2268288))))))))

(declare-fun e!3491562 () List!63271)

(assert (=> d!1790586 (= lt!2268394 e!3491562)))

(declare-fun c!997730 () Bool)

(assert (=> d!1790586 (= c!997730 ((_ is Nil!63147) (_1!36057 (get!21758 lt!2268288))))))

(assert (=> d!1790586 (= (++!13862 (_1!36057 (get!21758 lt!2268288)) (_2!36057 (get!21758 lt!2268288))) lt!2268394)))

(declare-fun b!5671918 () Bool)

(assert (=> b!5671918 (= e!3491562 (Cons!63147 (h!69595 (_1!36057 (get!21758 lt!2268288))) (++!13862 (t!376577 (_1!36057 (get!21758 lt!2268288))) (_2!36057 (get!21758 lt!2268288)))))))

(declare-fun b!5671917 () Bool)

(assert (=> b!5671917 (= e!3491562 (_2!36057 (get!21758 lt!2268288)))))

(declare-fun b!5671919 () Bool)

(declare-fun res!2396758 () Bool)

(assert (=> b!5671919 (=> (not res!2396758) (not e!3491561))))

(assert (=> b!5671919 (= res!2396758 (= (size!39992 lt!2268394) (+ (size!39992 (_1!36057 (get!21758 lt!2268288))) (size!39992 (_2!36057 (get!21758 lt!2268288))))))))

(declare-fun b!5671920 () Bool)

(assert (=> b!5671920 (= e!3491561 (or (not (= (_2!36057 (get!21758 lt!2268288)) Nil!63147)) (= lt!2268394 (_1!36057 (get!21758 lt!2268288)))))))

(assert (= (and d!1790586 c!997730) b!5671917))

(assert (= (and d!1790586 (not c!997730)) b!5671918))

(assert (= (and d!1790586 res!2396759) b!5671919))

(assert (= (and b!5671919 res!2396758) b!5671920))

(declare-fun m!6633118 () Bool)

(assert (=> d!1790586 m!6633118))

(declare-fun m!6633120 () Bool)

(assert (=> d!1790586 m!6633120))

(declare-fun m!6633122 () Bool)

(assert (=> d!1790586 m!6633122))

(declare-fun m!6633124 () Bool)

(assert (=> b!5671918 m!6633124))

(declare-fun m!6633126 () Bool)

(assert (=> b!5671919 m!6633126))

(declare-fun m!6633128 () Bool)

(assert (=> b!5671919 m!6633128))

(declare-fun m!6633130 () Bool)

(assert (=> b!5671919 m!6633130))

(assert (=> b!5670880 d!1790586))

(assert (=> b!5670880 d!1790402))

(declare-fun d!1790588 () Bool)

(assert (=> d!1790588 (= (isEmptyExpr!1187 lt!2268278) ((_ is EmptyExpr!15657) lt!2268278))))

(assert (=> b!5670800 d!1790588))

(declare-fun b!5671921 () Bool)

(declare-fun e!3491564 () (InoxSet Context!10082))

(assert (=> b!5671921 (= e!3491564 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430298 () Bool)

(declare-fun call!430308 () (InoxSet Context!10082))

(declare-fun call!430307 () (InoxSet Context!10082))

(assert (=> bm!430298 (= call!430308 call!430307)))

(declare-fun b!5671922 () Bool)

(declare-fun e!3491568 () Bool)

(assert (=> b!5671922 (= e!3491568 (nullable!5689 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun bm!430299 () Bool)

(declare-fun call!430304 () (InoxSet Context!10082))

(assert (=> bm!430299 (= call!430304 call!430308)))

(declare-fun b!5671923 () Bool)

(assert (=> b!5671923 (= e!3491564 call!430304)))

(declare-fun b!5671924 () Bool)

(declare-fun e!3491566 () (InoxSet Context!10082))

(declare-fun call!430305 () (InoxSet Context!10082))

(assert (=> b!5671924 (= e!3491566 ((_ map or) call!430305 call!430308))))

(declare-fun b!5671925 () Bool)

(declare-fun e!3491563 () (InoxSet Context!10082))

(assert (=> b!5671925 (= e!3491563 (store ((as const (Array Context!10082 Bool)) false) (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))) true))))

(declare-fun d!1790590 () Bool)

(declare-fun c!997734 () Bool)

(assert (=> d!1790590 (= c!997734 (and ((_ is ElementMatch!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))) (= (c!997231 (h!69594 (exprs!5541 (h!69596 zl!343)))) (h!69595 s!2326))))))

(assert (=> d!1790590 (= (derivationStepZipperDown!999 (h!69594 (exprs!5541 (h!69596 zl!343))) (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))) (h!69595 s!2326)) e!3491563)))

(declare-fun b!5671926 () Bool)

(declare-fun e!3491565 () (InoxSet Context!10082))

(assert (=> b!5671926 (= e!3491565 call!430304)))

(declare-fun b!5671927 () Bool)

(declare-fun c!997735 () Bool)

(assert (=> b!5671927 (= c!997735 ((_ is Star!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> b!5671927 (= e!3491565 e!3491564)))

(declare-fun bm!430300 () Bool)

(declare-fun call!430306 () List!63270)

(declare-fun call!430303 () List!63270)

(assert (=> bm!430300 (= call!430306 call!430303)))

(declare-fun bm!430301 () Bool)

(declare-fun c!997732 () Bool)

(assert (=> bm!430301 (= call!430305 (derivationStepZipperDown!999 (ite c!997732 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))) (ite c!997732 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))) (Context!10083 call!430303)) (h!69595 s!2326)))))

(declare-fun b!5671928 () Bool)

(declare-fun c!997733 () Bool)

(assert (=> b!5671928 (= c!997733 e!3491568)))

(declare-fun res!2396760 () Bool)

(assert (=> b!5671928 (=> (not res!2396760) (not e!3491568))))

(assert (=> b!5671928 (= res!2396760 ((_ is Concat!24502) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun e!3491567 () (InoxSet Context!10082))

(assert (=> b!5671928 (= e!3491567 e!3491566)))

(declare-fun b!5671929 () Bool)

(assert (=> b!5671929 (= e!3491566 e!3491565)))

(declare-fun c!997731 () Bool)

(assert (=> b!5671929 (= c!997731 ((_ is Concat!24502) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5671930 () Bool)

(assert (=> b!5671930 (= e!3491567 ((_ map or) call!430305 call!430307))))

(declare-fun bm!430302 () Bool)

(assert (=> bm!430302 (= call!430307 (derivationStepZipperDown!999 (ite c!997732 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997733 (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997731 (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343))))))) (ite (or c!997732 c!997733) (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))) (Context!10083 call!430306)) (h!69595 s!2326)))))

(declare-fun bm!430303 () Bool)

(assert (=> bm!430303 (= call!430303 ($colon$colon!1695 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343))))) (ite (or c!997733 c!997731) (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))) (h!69594 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5671931 () Bool)

(assert (=> b!5671931 (= e!3491563 e!3491567)))

(assert (=> b!5671931 (= c!997732 ((_ is Union!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(assert (= (and d!1790590 c!997734) b!5671925))

(assert (= (and d!1790590 (not c!997734)) b!5671931))

(assert (= (and b!5671931 c!997732) b!5671930))

(assert (= (and b!5671931 (not c!997732)) b!5671928))

(assert (= (and b!5671928 res!2396760) b!5671922))

(assert (= (and b!5671928 c!997733) b!5671924))

(assert (= (and b!5671928 (not c!997733)) b!5671929))

(assert (= (and b!5671929 c!997731) b!5671926))

(assert (= (and b!5671929 (not c!997731)) b!5671927))

(assert (= (and b!5671927 c!997735) b!5671923))

(assert (= (and b!5671927 (not c!997735)) b!5671921))

(assert (= (or b!5671926 b!5671923) bm!430300))

(assert (= (or b!5671926 b!5671923) bm!430299))

(assert (= (or b!5671924 bm!430300) bm!430303))

(assert (= (or b!5671924 bm!430299) bm!430298))

(assert (= (or b!5671930 bm!430298) bm!430302))

(assert (= (or b!5671930 b!5671924) bm!430301))

(declare-fun m!6633132 () Bool)

(assert (=> bm!430302 m!6633132))

(declare-fun m!6633134 () Bool)

(assert (=> bm!430301 m!6633134))

(assert (=> b!5671922 m!6632278))

(declare-fun m!6633136 () Bool)

(assert (=> bm!430303 m!6633136))

(declare-fun m!6633138 () Bool)

(assert (=> b!5671925 m!6633138))

(assert (=> bm!430126 d!1790590))

(declare-fun d!1790592 () Bool)

(assert (=> d!1790592 (= (Exists!2757 lambda!305163) (choose!42894 lambda!305163))))

(declare-fun bs!1321806 () Bool)

(assert (= bs!1321806 d!1790592))

(declare-fun m!6633140 () Bool)

(assert (=> bs!1321806 m!6633140))

(assert (=> d!1790100 d!1790592))

(assert (=> d!1790100 d!1790158))

(assert (=> d!1790100 d!1790488))

(declare-fun bs!1321807 () Bool)

(declare-fun d!1790594 () Bool)

(assert (= bs!1321807 (and d!1790594 d!1790126)))

(declare-fun lambda!305272 () Int)

(assert (=> bs!1321807 (not (= lambda!305272 lambda!305176))))

(declare-fun bs!1321808 () Bool)

(assert (= bs!1321808 (and d!1790594 b!5670698)))

(assert (=> bs!1321808 (not (= lambda!305272 lambda!305172))))

(declare-fun bs!1321809 () Bool)

(assert (= bs!1321809 (and d!1790594 b!5670839)))

(assert (=> bs!1321809 (not (= lambda!305272 lambda!305182))))

(declare-fun bs!1321810 () Bool)

(assert (= bs!1321810 (and d!1790594 d!1790390)))

(assert (=> bs!1321810 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305272 lambda!305244))))

(declare-fun bs!1321811 () Bool)

(assert (= bs!1321811 (and d!1790594 d!1790094)))

(assert (=> bs!1321811 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305272 lambda!305162))))

(declare-fun bs!1321812 () Bool)

(assert (= bs!1321812 (and d!1790594 b!5670845)))

(assert (=> bs!1321812 (not (= lambda!305272 lambda!305183))))

(declare-fun bs!1321813 () Bool)

(assert (= bs!1321813 (and d!1790594 b!5671555)))

(assert (=> bs!1321813 (not (= lambda!305272 lambda!305247))))

(declare-fun bs!1321814 () Bool)

(assert (= bs!1321814 (and d!1790594 b!5671471)))

(assert (=> bs!1321814 (not (= lambda!305272 lambda!305241))))

(declare-fun bs!1321815 () Bool)

(assert (= bs!1321815 (and d!1790594 b!5670249)))

(assert (=> bs!1321815 (= lambda!305272 lambda!305098)))

(declare-fun bs!1321816 () Bool)

(assert (= bs!1321816 (and d!1790594 b!5671032)))

(assert (=> bs!1321816 (not (= lambda!305272 lambda!305195))))

(declare-fun bs!1321817 () Bool)

(assert (= bs!1321817 (and d!1790594 b!5671566)))

(assert (=> bs!1321817 (not (= lambda!305272 lambda!305250))))

(declare-fun bs!1321818 () Bool)

(assert (= bs!1321818 (and d!1790594 d!1790486)))

(assert (=> bs!1321818 (not (= lambda!305272 lambda!305256))))

(declare-fun bs!1321819 () Bool)

(assert (= bs!1321819 (and d!1790594 d!1790528)))

(assert (=> bs!1321819 (not (= lambda!305272 lambda!305267))))

(declare-fun bs!1321820 () Bool)

(assert (= bs!1321820 (and d!1790594 d!1790294)))

(assert (=> bs!1321820 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305272 lambda!305221))))

(assert (=> bs!1321807 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305272 lambda!305175))))

(assert (=> bs!1321815 (not (= lambda!305272 lambda!305101))))

(assert (=> bs!1321820 (not (= lambda!305272 lambda!305222))))

(declare-fun bs!1321821 () Bool)

(assert (= bs!1321821 (and d!1790594 b!5671038)))

(assert (=> bs!1321821 (not (= lambda!305272 lambda!305196))))

(declare-fun bs!1321822 () Bool)

(assert (= bs!1321822 (and d!1790594 d!1790038)))

(assert (=> bs!1321822 (not (= lambda!305272 lambda!305156))))

(declare-fun bs!1321823 () Bool)

(assert (= bs!1321823 (and d!1790594 b!5671731)))

(assert (=> bs!1321823 (not (= lambda!305272 lambda!305264))))

(assert (=> bs!1321818 (= lambda!305272 lambda!305255)))

(declare-fun bs!1321824 () Bool)

(assert (= bs!1321824 (and d!1790594 d!1790100)))

(assert (=> bs!1321824 (= lambda!305272 lambda!305163)))

(declare-fun bs!1321825 () Bool)

(assert (= bs!1321825 (and d!1790594 b!5671561)))

(assert (=> bs!1321825 (not (= lambda!305272 lambda!305248))))

(declare-fun bs!1321826 () Bool)

(assert (= bs!1321826 (and d!1790594 d!1790314)))

(assert (=> bs!1321826 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305272 lambda!305226))))

(declare-fun bs!1321827 () Bool)

(assert (= bs!1321827 (and d!1790594 d!1790034)))

(assert (=> bs!1321827 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305272 lambda!305143))))

(declare-fun bs!1321828 () Bool)

(assert (= bs!1321828 (and d!1790594 b!5670241)))

(assert (=> bs!1321828 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305272 lambda!305095))))

(declare-fun bs!1321829 () Bool)

(assert (= bs!1321829 (and d!1790594 b!5671477)))

(assert (=> bs!1321829 (not (= lambda!305272 lambda!305242))))

(declare-fun bs!1321830 () Bool)

(assert (= bs!1321830 (and d!1790594 b!5671737)))

(assert (=> bs!1321830 (not (= lambda!305272 lambda!305265))))

(declare-fun bs!1321831 () Bool)

(assert (= bs!1321831 (and d!1790594 b!5671572)))

(assert (=> bs!1321831 (not (= lambda!305272 lambda!305251))))

(assert (=> bs!1321815 (not (= lambda!305272 lambda!305099))))

(declare-fun bs!1321832 () Bool)

(assert (= bs!1321832 (and d!1790594 d!1790080)))

(assert (=> bs!1321832 (not (= lambda!305272 lambda!305160))))

(assert (=> bs!1321815 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regTwo!31826 (regOne!31826 r!7292))) (= lt!2268120 lt!2268129)) (= lambda!305272 lambda!305100))))

(declare-fun bs!1321833 () Bool)

(assert (= bs!1321833 (and d!1790594 b!5670704)))

(assert (=> bs!1321833 (not (= lambda!305272 lambda!305174))))

(assert (=> bs!1321822 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305272 lambda!305155))))

(assert (=> bs!1321819 (= (and (= (regOne!31826 (regOne!31826 r!7292)) (regOne!31826 r!7292)) (= lt!2268120 (regTwo!31826 r!7292))) (= lambda!305272 lambda!305266))))

(assert (=> bs!1321828 (not (= lambda!305272 lambda!305096))))

(assert (=> bs!1321832 (= lambda!305272 lambda!305158)))

(assert (=> d!1790594 true))

(assert (=> d!1790594 true))

(assert (=> d!1790594 true))

(assert (=> d!1790594 (= (isDefined!12369 (findConcatSeparation!2080 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 Nil!63147 s!2326 s!2326)) (Exists!2757 lambda!305272))))

(assert (=> d!1790594 true))

(declare-fun _$89!1788 () Unit!156160)

(assert (=> d!1790594 (= (choose!42895 (regOne!31826 (regOne!31826 r!7292)) lt!2268120 s!2326) _$89!1788)))

(declare-fun bs!1321834 () Bool)

(assert (= bs!1321834 d!1790594))

(assert (=> bs!1321834 m!6631536))

(assert (=> bs!1321834 m!6631536))

(assert (=> bs!1321834 m!6631544))

(declare-fun m!6633142 () Bool)

(assert (=> bs!1321834 m!6633142))

(assert (=> d!1790100 d!1790594))

(assert (=> d!1790100 d!1790178))

(declare-fun b!5671932 () Bool)

(declare-fun e!3491575 () Bool)

(declare-fun e!3491572 () Bool)

(assert (=> b!5671932 (= e!3491575 e!3491572)))

(declare-fun res!2396761 () Bool)

(assert (=> b!5671932 (= res!2396761 (not (nullable!5689 (reg!15986 lt!2268278))))))

(assert (=> b!5671932 (=> (not res!2396761) (not e!3491572))))

(declare-fun b!5671933 () Bool)

(declare-fun e!3491571 () Bool)

(declare-fun call!430309 () Bool)

(assert (=> b!5671933 (= e!3491571 call!430309)))

(declare-fun bm!430304 () Bool)

(declare-fun c!997737 () Bool)

(assert (=> bm!430304 (= call!430309 (validRegex!7393 (ite c!997737 (regTwo!31827 lt!2268278) (regTwo!31826 lt!2268278))))))

(declare-fun bm!430305 () Bool)

(declare-fun call!430311 () Bool)

(declare-fun call!430310 () Bool)

(assert (=> bm!430305 (= call!430311 call!430310)))

(declare-fun d!1790596 () Bool)

(declare-fun res!2396765 () Bool)

(declare-fun e!3491574 () Bool)

(assert (=> d!1790596 (=> res!2396765 e!3491574)))

(assert (=> d!1790596 (= res!2396765 ((_ is ElementMatch!15657) lt!2268278))))

(assert (=> d!1790596 (= (validRegex!7393 lt!2268278) e!3491574)))

(declare-fun b!5671934 () Bool)

(declare-fun res!2396762 () Bool)

(declare-fun e!3491573 () Bool)

(assert (=> b!5671934 (=> (not res!2396762) (not e!3491573))))

(assert (=> b!5671934 (= res!2396762 call!430311)))

(declare-fun e!3491569 () Bool)

(assert (=> b!5671934 (= e!3491569 e!3491573)))

(declare-fun b!5671935 () Bool)

(declare-fun res!2396764 () Bool)

(declare-fun e!3491570 () Bool)

(assert (=> b!5671935 (=> res!2396764 e!3491570)))

(assert (=> b!5671935 (= res!2396764 (not ((_ is Concat!24502) lt!2268278)))))

(assert (=> b!5671935 (= e!3491569 e!3491570)))

(declare-fun b!5671936 () Bool)

(assert (=> b!5671936 (= e!3491575 e!3491569)))

(assert (=> b!5671936 (= c!997737 ((_ is Union!15657) lt!2268278))))

(declare-fun b!5671937 () Bool)

(assert (=> b!5671937 (= e!3491572 call!430310)))

(declare-fun b!5671938 () Bool)

(assert (=> b!5671938 (= e!3491574 e!3491575)))

(declare-fun c!997736 () Bool)

(assert (=> b!5671938 (= c!997736 ((_ is Star!15657) lt!2268278))))

(declare-fun b!5671939 () Bool)

(assert (=> b!5671939 (= e!3491570 e!3491571)))

(declare-fun res!2396763 () Bool)

(assert (=> b!5671939 (=> (not res!2396763) (not e!3491571))))

(assert (=> b!5671939 (= res!2396763 call!430311)))

(declare-fun b!5671940 () Bool)

(assert (=> b!5671940 (= e!3491573 call!430309)))

(declare-fun bm!430306 () Bool)

(assert (=> bm!430306 (= call!430310 (validRegex!7393 (ite c!997736 (reg!15986 lt!2268278) (ite c!997737 (regOne!31827 lt!2268278) (regOne!31826 lt!2268278)))))))

(assert (= (and d!1790596 (not res!2396765)) b!5671938))

(assert (= (and b!5671938 c!997736) b!5671932))

(assert (= (and b!5671938 (not c!997736)) b!5671936))

(assert (= (and b!5671932 res!2396761) b!5671937))

(assert (= (and b!5671936 c!997737) b!5671934))

(assert (= (and b!5671936 (not c!997737)) b!5671935))

(assert (= (and b!5671934 res!2396762) b!5671940))

(assert (= (and b!5671935 (not res!2396764)) b!5671939))

(assert (= (and b!5671939 res!2396763) b!5671933))

(assert (= (or b!5671940 b!5671933) bm!430304))

(assert (= (or b!5671934 b!5671939) bm!430305))

(assert (= (or b!5671937 bm!430305) bm!430306))

(declare-fun m!6633144 () Bool)

(assert (=> b!5671932 m!6633144))

(declare-fun m!6633146 () Bool)

(assert (=> bm!430304 m!6633146))

(declare-fun m!6633148 () Bool)

(assert (=> bm!430306 m!6633148))

(assert (=> d!1790156 d!1790596))

(declare-fun d!1790598 () Bool)

(declare-fun res!2396766 () Bool)

(declare-fun e!3491576 () Bool)

(assert (=> d!1790598 (=> res!2396766 e!3491576)))

(assert (=> d!1790598 (= res!2396766 ((_ is Nil!63146) (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> d!1790598 (= (forall!14810 (t!376576 (exprs!5541 (h!69596 zl!343))) lambda!305181) e!3491576)))

(declare-fun b!5671941 () Bool)

(declare-fun e!3491577 () Bool)

(assert (=> b!5671941 (= e!3491576 e!3491577)))

(declare-fun res!2396767 () Bool)

(assert (=> b!5671941 (=> (not res!2396767) (not e!3491577))))

(assert (=> b!5671941 (= res!2396767 (dynLambda!24716 lambda!305181 (h!69594 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun b!5671942 () Bool)

(assert (=> b!5671942 (= e!3491577 (forall!14810 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343)))) lambda!305181))))

(assert (= (and d!1790598 (not res!2396766)) b!5671941))

(assert (= (and b!5671941 res!2396767) b!5671942))

(declare-fun b_lambda!214533 () Bool)

(assert (=> (not b_lambda!214533) (not b!5671941)))

(declare-fun m!6633150 () Bool)

(assert (=> b!5671941 m!6633150))

(declare-fun m!6633152 () Bool)

(assert (=> b!5671942 m!6633152))

(assert (=> d!1790156 d!1790598))

(assert (=> b!5671067 d!1790276))

(assert (=> b!5671067 d!1790278))

(declare-fun d!1790600 () Bool)

(assert (=> d!1790600 (= (isEmpty!34998 lt!2268152) ((_ is Nil!63146) lt!2268152))))

(assert (=> b!5670784 d!1790600))

(declare-fun d!1790602 () Bool)

(assert (=> d!1790602 (= (Exists!2757 (ite c!997410 lambda!305182 lambda!305183)) (choose!42894 (ite c!997410 lambda!305182 lambda!305183)))))

(declare-fun bs!1321835 () Bool)

(assert (= bs!1321835 d!1790602))

(declare-fun m!6633154 () Bool)

(assert (=> bs!1321835 m!6633154))

(assert (=> bm!430106 d!1790602))

(declare-fun d!1790604 () Bool)

(assert (=> d!1790604 (= (isUnion!627 lt!2268320) ((_ is Union!15657) lt!2268320))))

(assert (=> b!5671183 d!1790604))

(declare-fun b!5671943 () Bool)

(declare-fun res!2396768 () Bool)

(declare-fun e!3491582 () Bool)

(assert (=> b!5671943 (=> (not res!2396768) (not e!3491582))))

(declare-fun call!430312 () Bool)

(assert (=> b!5671943 (= res!2396768 (not call!430312))))

(declare-fun b!5671944 () Bool)

(declare-fun e!3491580 () Bool)

(declare-fun e!3491581 () Bool)

(assert (=> b!5671944 (= e!3491580 e!3491581)))

(declare-fun c!997738 () Bool)

(assert (=> b!5671944 (= c!997738 ((_ is EmptyLang!15657) lt!2268129))))

(declare-fun b!5671945 () Bool)

(declare-fun e!3491578 () Bool)

(assert (=> b!5671945 (= e!3491578 (matchR!7842 (derivativeStep!4482 lt!2268129 (head!12038 (_2!36057 (get!21758 lt!2268251)))) (tail!11133 (_2!36057 (get!21758 lt!2268251)))))))

(declare-fun b!5671946 () Bool)

(assert (=> b!5671946 (= e!3491578 (nullable!5689 lt!2268129))))

(declare-fun bm!430307 () Bool)

(assert (=> bm!430307 (= call!430312 (isEmpty!35001 (_2!36057 (get!21758 lt!2268251))))))

(declare-fun b!5671947 () Bool)

(declare-fun res!2396769 () Bool)

(assert (=> b!5671947 (=> (not res!2396769) (not e!3491582))))

(assert (=> b!5671947 (= res!2396769 (isEmpty!35001 (tail!11133 (_2!36057 (get!21758 lt!2268251)))))))

(declare-fun b!5671948 () Bool)

(declare-fun e!3491583 () Bool)

(declare-fun e!3491579 () Bool)

(assert (=> b!5671948 (= e!3491583 e!3491579)))

(declare-fun res!2396773 () Bool)

(assert (=> b!5671948 (=> (not res!2396773) (not e!3491579))))

(declare-fun lt!2268395 () Bool)

(assert (=> b!5671948 (= res!2396773 (not lt!2268395))))

(declare-fun b!5671949 () Bool)

(declare-fun e!3491584 () Bool)

(assert (=> b!5671949 (= e!3491579 e!3491584)))

(declare-fun res!2396771 () Bool)

(assert (=> b!5671949 (=> res!2396771 e!3491584)))

(assert (=> b!5671949 (= res!2396771 call!430312)))

(declare-fun d!1790606 () Bool)

(assert (=> d!1790606 e!3491580))

(declare-fun c!997739 () Bool)

(assert (=> d!1790606 (= c!997739 ((_ is EmptyExpr!15657) lt!2268129))))

(assert (=> d!1790606 (= lt!2268395 e!3491578)))

(declare-fun c!997740 () Bool)

(assert (=> d!1790606 (= c!997740 (isEmpty!35001 (_2!36057 (get!21758 lt!2268251))))))

(assert (=> d!1790606 (validRegex!7393 lt!2268129)))

(assert (=> d!1790606 (= (matchR!7842 lt!2268129 (_2!36057 (get!21758 lt!2268251))) lt!2268395)))

(declare-fun b!5671950 () Bool)

(assert (=> b!5671950 (= e!3491584 (not (= (head!12038 (_2!36057 (get!21758 lt!2268251))) (c!997231 lt!2268129))))))

(declare-fun b!5671951 () Bool)

(declare-fun res!2396770 () Bool)

(assert (=> b!5671951 (=> res!2396770 e!3491583)))

(assert (=> b!5671951 (= res!2396770 e!3491582)))

(declare-fun res!2396772 () Bool)

(assert (=> b!5671951 (=> (not res!2396772) (not e!3491582))))

(assert (=> b!5671951 (= res!2396772 lt!2268395)))

(declare-fun b!5671952 () Bool)

(assert (=> b!5671952 (= e!3491581 (not lt!2268395))))

(declare-fun b!5671953 () Bool)

(assert (=> b!5671953 (= e!3491580 (= lt!2268395 call!430312))))

(declare-fun b!5671954 () Bool)

(declare-fun res!2396775 () Bool)

(assert (=> b!5671954 (=> res!2396775 e!3491584)))

(assert (=> b!5671954 (= res!2396775 (not (isEmpty!35001 (tail!11133 (_2!36057 (get!21758 lt!2268251))))))))

(declare-fun b!5671955 () Bool)

(assert (=> b!5671955 (= e!3491582 (= (head!12038 (_2!36057 (get!21758 lt!2268251))) (c!997231 lt!2268129)))))

(declare-fun b!5671956 () Bool)

(declare-fun res!2396774 () Bool)

(assert (=> b!5671956 (=> res!2396774 e!3491583)))

(assert (=> b!5671956 (= res!2396774 (not ((_ is ElementMatch!15657) lt!2268129)))))

(assert (=> b!5671956 (= e!3491581 e!3491583)))

(assert (= (and d!1790606 c!997740) b!5671946))

(assert (= (and d!1790606 (not c!997740)) b!5671945))

(assert (= (and d!1790606 c!997739) b!5671953))

(assert (= (and d!1790606 (not c!997739)) b!5671944))

(assert (= (and b!5671944 c!997738) b!5671952))

(assert (= (and b!5671944 (not c!997738)) b!5671956))

(assert (= (and b!5671956 (not res!2396774)) b!5671951))

(assert (= (and b!5671951 res!2396772) b!5671943))

(assert (= (and b!5671943 res!2396768) b!5671947))

(assert (= (and b!5671947 res!2396769) b!5671955))

(assert (= (and b!5671951 (not res!2396770)) b!5671948))

(assert (= (and b!5671948 res!2396773) b!5671949))

(assert (= (and b!5671949 (not res!2396771)) b!5671954))

(assert (= (and b!5671954 (not res!2396775)) b!5671950))

(assert (= (or b!5671953 b!5671943 b!5671949) bm!430307))

(declare-fun m!6633156 () Bool)

(assert (=> b!5671947 m!6633156))

(assert (=> b!5671947 m!6633156))

(declare-fun m!6633158 () Bool)

(assert (=> b!5671947 m!6633158))

(assert (=> b!5671954 m!6633156))

(assert (=> b!5671954 m!6633156))

(assert (=> b!5671954 m!6633158))

(declare-fun m!6633160 () Bool)

(assert (=> d!1790606 m!6633160))

(assert (=> d!1790606 m!6633012))

(declare-fun m!6633162 () Bool)

(assert (=> b!5671955 m!6633162))

(assert (=> b!5671945 m!6633162))

(assert (=> b!5671945 m!6633162))

(declare-fun m!6633164 () Bool)

(assert (=> b!5671945 m!6633164))

(assert (=> b!5671945 m!6633156))

(assert (=> b!5671945 m!6633164))

(assert (=> b!5671945 m!6633156))

(declare-fun m!6633166 () Bool)

(assert (=> b!5671945 m!6633166))

(assert (=> b!5671946 m!6633018))

(assert (=> b!5671950 m!6633162))

(assert (=> bm!430307 m!6633160))

(assert (=> b!5670612 d!1790606))

(assert (=> b!5670612 d!1790454))

(declare-fun d!1790608 () Bool)

(assert (=> d!1790608 (= (isEmpty!35002 (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 Nil!63147 s!2326 s!2326)) (not ((_ is Some!15665) (findConcatSeparation!2080 (regTwo!31826 (regOne!31826 r!7292)) lt!2268129 Nil!63147 s!2326 s!2326))))))

(assert (=> d!1790162 d!1790608))

(declare-fun d!1790610 () Bool)

(assert (=> d!1790610 (= (isEmpty!34998 (t!376576 lt!2268127)) ((_ is Nil!63146) (t!376576 lt!2268127)))))

(assert (=> b!5670870 d!1790610))

(declare-fun d!1790612 () Bool)

(assert (=> d!1790612 (= (Exists!2757 (ite c!997357 lambda!305172 lambda!305174)) (choose!42894 (ite c!997357 lambda!305172 lambda!305174)))))

(declare-fun bs!1321836 () Bool)

(assert (= bs!1321836 d!1790612))

(declare-fun m!6633168 () Bool)

(assert (=> bs!1321836 m!6633168))

(assert (=> bm!430086 d!1790612))

(declare-fun d!1790614 () Bool)

(declare-fun e!3491585 () Bool)

(assert (=> d!1790614 e!3491585))

(declare-fun res!2396777 () Bool)

(assert (=> d!1790614 (=> (not res!2396777) (not e!3491585))))

(declare-fun lt!2268396 () List!63271)

(assert (=> d!1790614 (= res!2396777 (= (content!11435 lt!2268396) ((_ map or) (content!11435 (_1!36057 (get!21758 lt!2268207))) (content!11435 (_2!36057 (get!21758 lt!2268207))))))))

(declare-fun e!3491586 () List!63271)

(assert (=> d!1790614 (= lt!2268396 e!3491586)))

(declare-fun c!997741 () Bool)

(assert (=> d!1790614 (= c!997741 ((_ is Nil!63147) (_1!36057 (get!21758 lt!2268207))))))

(assert (=> d!1790614 (= (++!13862 (_1!36057 (get!21758 lt!2268207)) (_2!36057 (get!21758 lt!2268207))) lt!2268396)))

(declare-fun b!5671958 () Bool)

(assert (=> b!5671958 (= e!3491586 (Cons!63147 (h!69595 (_1!36057 (get!21758 lt!2268207))) (++!13862 (t!376577 (_1!36057 (get!21758 lt!2268207))) (_2!36057 (get!21758 lt!2268207)))))))

(declare-fun b!5671957 () Bool)

(assert (=> b!5671957 (= e!3491586 (_2!36057 (get!21758 lt!2268207)))))

(declare-fun b!5671959 () Bool)

(declare-fun res!2396776 () Bool)

(assert (=> b!5671959 (=> (not res!2396776) (not e!3491585))))

(assert (=> b!5671959 (= res!2396776 (= (size!39992 lt!2268396) (+ (size!39992 (_1!36057 (get!21758 lt!2268207))) (size!39992 (_2!36057 (get!21758 lt!2268207))))))))

(declare-fun b!5671960 () Bool)

(assert (=> b!5671960 (= e!3491585 (or (not (= (_2!36057 (get!21758 lt!2268207)) Nil!63147)) (= lt!2268396 (_1!36057 (get!21758 lt!2268207)))))))

(assert (= (and d!1790614 c!997741) b!5671957))

(assert (= (and d!1790614 (not c!997741)) b!5671958))

(assert (= (and d!1790614 res!2396777) b!5671959))

(assert (= (and b!5671959 res!2396776) b!5671960))

(declare-fun m!6633170 () Bool)

(assert (=> d!1790614 m!6633170))

(declare-fun m!6633172 () Bool)

(assert (=> d!1790614 m!6633172))

(declare-fun m!6633174 () Bool)

(assert (=> d!1790614 m!6633174))

(declare-fun m!6633176 () Bool)

(assert (=> b!5671958 m!6633176))

(declare-fun m!6633178 () Bool)

(assert (=> b!5671959 m!6633178))

(declare-fun m!6633180 () Bool)

(assert (=> b!5671959 m!6633180))

(declare-fun m!6633182 () Bool)

(assert (=> b!5671959 m!6633182))

(assert (=> b!5670425 d!1790614))

(assert (=> b!5670425 d!1790504))

(assert (=> bm!430075 d!1790410))

(declare-fun d!1790616 () Bool)

(assert (=> d!1790616 (= (isConcat!710 lt!2268290) ((_ is Concat!24502) lt!2268290))))

(assert (=> b!5670891 d!1790616))

(declare-fun b!5671961 () Bool)

(declare-fun e!3491593 () Bool)

(declare-fun e!3491590 () Bool)

(assert (=> b!5671961 (= e!3491593 e!3491590)))

(declare-fun res!2396778 () Bool)

(assert (=> b!5671961 (= res!2396778 (not (nullable!5689 (reg!15986 (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))))))))

(assert (=> b!5671961 (=> (not res!2396778) (not e!3491590))))

(declare-fun b!5671962 () Bool)

(declare-fun e!3491589 () Bool)

(declare-fun call!430313 () Bool)

(assert (=> b!5671962 (= e!3491589 call!430313)))

(declare-fun c!997743 () Bool)

(declare-fun bm!430308 () Bool)

(assert (=> bm!430308 (= call!430313 (validRegex!7393 (ite c!997743 (regTwo!31827 (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))) (regTwo!31826 (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))))))))

(declare-fun bm!430309 () Bool)

(declare-fun call!430315 () Bool)

(declare-fun call!430314 () Bool)

(assert (=> bm!430309 (= call!430315 call!430314)))

(declare-fun d!1790618 () Bool)

(declare-fun res!2396782 () Bool)

(declare-fun e!3491592 () Bool)

(assert (=> d!1790618 (=> res!2396782 e!3491592)))

(assert (=> d!1790618 (= res!2396782 ((_ is ElementMatch!15657) (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))))))

(assert (=> d!1790618 (= (validRegex!7393 (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))) e!3491592)))

(declare-fun b!5671963 () Bool)

(declare-fun res!2396779 () Bool)

(declare-fun e!3491591 () Bool)

(assert (=> b!5671963 (=> (not res!2396779) (not e!3491591))))

(assert (=> b!5671963 (= res!2396779 call!430315)))

(declare-fun e!3491587 () Bool)

(assert (=> b!5671963 (= e!3491587 e!3491591)))

(declare-fun b!5671964 () Bool)

(declare-fun res!2396781 () Bool)

(declare-fun e!3491588 () Bool)

(assert (=> b!5671964 (=> res!2396781 e!3491588)))

(assert (=> b!5671964 (= res!2396781 (not ((_ is Concat!24502) (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292))))))))

(assert (=> b!5671964 (= e!3491587 e!3491588)))

(declare-fun b!5671965 () Bool)

(assert (=> b!5671965 (= e!3491593 e!3491587)))

(assert (=> b!5671965 (= c!997743 ((_ is Union!15657) (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))))))

(declare-fun b!5671966 () Bool)

(assert (=> b!5671966 (= e!3491590 call!430314)))

(declare-fun b!5671967 () Bool)

(assert (=> b!5671967 (= e!3491592 e!3491593)))

(declare-fun c!997742 () Bool)

(assert (=> b!5671967 (= c!997742 ((_ is Star!15657) (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))))))

(declare-fun b!5671968 () Bool)

(assert (=> b!5671968 (= e!3491588 e!3491589)))

(declare-fun res!2396780 () Bool)

(assert (=> b!5671968 (=> (not res!2396780) (not e!3491589))))

(assert (=> b!5671968 (= res!2396780 call!430315)))

(declare-fun b!5671969 () Bool)

(assert (=> b!5671969 (= e!3491591 call!430313)))

(declare-fun bm!430310 () Bool)

(assert (=> bm!430310 (= call!430314 (validRegex!7393 (ite c!997742 (reg!15986 (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))) (ite c!997743 (regOne!31827 (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292)))) (regOne!31826 (ite c!997534 (reg!15986 r!7292) (ite c!997535 (regOne!31827 r!7292) (regOne!31826 r!7292))))))))))

(assert (= (and d!1790618 (not res!2396782)) b!5671967))

(assert (= (and b!5671967 c!997742) b!5671961))

(assert (= (and b!5671967 (not c!997742)) b!5671965))

(assert (= (and b!5671961 res!2396778) b!5671966))

(assert (= (and b!5671965 c!997743) b!5671963))

(assert (= (and b!5671965 (not c!997743)) b!5671964))

(assert (= (and b!5671963 res!2396779) b!5671969))

(assert (= (and b!5671964 (not res!2396781)) b!5671968))

(assert (= (and b!5671968 res!2396780) b!5671962))

(assert (= (or b!5671969 b!5671962) bm!430308))

(assert (= (or b!5671963 b!5671968) bm!430309))

(assert (= (or b!5671966 bm!430309) bm!430310))

(declare-fun m!6633184 () Bool)

(assert (=> b!5671961 m!6633184))

(declare-fun m!6633186 () Bool)

(assert (=> bm!430308 m!6633186))

(declare-fun m!6633188 () Bool)

(assert (=> bm!430310 m!6633188))

(assert (=> bm!430171 d!1790618))

(assert (=> b!5670807 d!1790276))

(assert (=> b!5670807 d!1790278))

(assert (=> d!1790224 d!1790410))

(assert (=> d!1790224 d!1790264))

(declare-fun d!1790620 () Bool)

(assert (=> d!1790620 (= (isEmpty!34998 (exprs!5541 (h!69596 zl!343))) ((_ is Nil!63146) (exprs!5541 (h!69596 zl!343))))))

(assert (=> b!5670895 d!1790620))

(declare-fun d!1790622 () Bool)

(assert (=> d!1790622 (= (isEmpty!34998 (tail!11134 (unfocusZipperList!1085 zl!343))) ((_ is Nil!63146) (tail!11134 (unfocusZipperList!1085 zl!343))))))

(assert (=> b!5671187 d!1790622))

(declare-fun d!1790624 () Bool)

(assert (=> d!1790624 (= (tail!11134 (unfocusZipperList!1085 zl!343)) (t!376576 (unfocusZipperList!1085 zl!343)))))

(assert (=> b!5671187 d!1790624))

(declare-fun b!5671970 () Bool)

(declare-fun e!3491596 () Int)

(declare-fun call!430317 () Int)

(declare-fun call!430318 () Int)

(assert (=> b!5671970 (= e!3491596 (+ 1 call!430317 call!430318))))

(declare-fun b!5671971 () Bool)

(declare-fun e!3491595 () Int)

(assert (=> b!5671971 (= e!3491595 1)))

(declare-fun bm!430311 () Bool)

(declare-fun c!997745 () Bool)

(assert (=> bm!430311 (= call!430317 (regexDepthTotal!104 (ite c!997745 (regOne!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regOne!31826 (h!69594 (exprs!5541 (h!69596 zl!343)))))))))

(declare-fun call!430316 () Int)

(declare-fun bm!430312 () Bool)

(declare-fun c!997747 () Bool)

(assert (=> bm!430312 (= call!430316 (regexDepthTotal!104 (ite c!997747 (reg!15986 (h!69594 (exprs!5541 (h!69596 zl!343)))) (ite c!997745 (regTwo!31827 (h!69594 (exprs!5541 (h!69596 zl!343)))) (regTwo!31826 (h!69594 (exprs!5541 (h!69596 zl!343))))))))))

(declare-fun bm!430313 () Bool)

(assert (=> bm!430313 (= call!430318 call!430316)))

(declare-fun b!5671972 () Bool)

(declare-fun e!3491594 () Int)

(assert (=> b!5671972 (= e!3491594 (+ 1 call!430316))))

(declare-fun d!1790626 () Bool)

(declare-fun lt!2268397 () Int)

(assert (=> d!1790626 (> lt!2268397 0)))

(assert (=> d!1790626 (= lt!2268397 e!3491595)))

(declare-fun c!997746 () Bool)

(assert (=> d!1790626 (= c!997746 ((_ is ElementMatch!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> d!1790626 (= (regexDepthTotal!104 (h!69594 (exprs!5541 (h!69596 zl!343)))) lt!2268397)))

(declare-fun b!5671973 () Bool)

(assert (=> b!5671973 (= e!3491595 e!3491594)))

(assert (=> b!5671973 (= c!997747 ((_ is Star!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5671974 () Bool)

(declare-fun e!3491597 () Int)

(assert (=> b!5671974 (= e!3491597 e!3491596)))

(declare-fun c!997744 () Bool)

(assert (=> b!5671974 (= c!997744 ((_ is Concat!24502) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun b!5671975 () Bool)

(assert (=> b!5671975 (= e!3491596 1)))

(declare-fun b!5671976 () Bool)

(assert (=> b!5671976 (= e!3491597 (+ 1 call!430317 call!430318))))

(declare-fun b!5671977 () Bool)

(assert (=> b!5671977 (= c!997745 ((_ is Union!15657) (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> b!5671977 (= e!3491594 e!3491597)))

(assert (= (and d!1790626 c!997746) b!5671971))

(assert (= (and d!1790626 (not c!997746)) b!5671973))

(assert (= (and b!5671973 c!997747) b!5671972))

(assert (= (and b!5671973 (not c!997747)) b!5671977))

(assert (= (and b!5671977 c!997745) b!5671976))

(assert (= (and b!5671977 (not c!997745)) b!5671974))

(assert (= (and b!5671974 c!997744) b!5671970))

(assert (= (and b!5671974 (not c!997744)) b!5671975))

(assert (= (or b!5671976 b!5671970) bm!430313))

(assert (= (or b!5671976 b!5671970) bm!430311))

(assert (= (or b!5671972 bm!430313) bm!430312))

(declare-fun m!6633190 () Bool)

(assert (=> bm!430311 m!6633190))

(declare-fun m!6633192 () Bool)

(assert (=> bm!430312 m!6633192))

(assert (=> b!5671132 d!1790626))

(declare-fun d!1790628 () Bool)

(declare-fun lt!2268398 () Int)

(assert (=> d!1790628 (>= lt!2268398 0)))

(declare-fun e!3491598 () Int)

(assert (=> d!1790628 (= lt!2268398 e!3491598)))

(declare-fun c!997748 () Bool)

(assert (=> d!1790628 (= c!997748 ((_ is Cons!63146) (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343)))))))))

(assert (=> d!1790628 (= (contextDepthTotal!232 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343))))) lt!2268398)))

(declare-fun b!5671978 () Bool)

(assert (=> b!5671978 (= e!3491598 (+ (regexDepthTotal!104 (h!69594 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343))))))) (contextDepthTotal!232 (Context!10083 (t!376576 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 (h!69596 zl!343))))))))))))

(declare-fun b!5671979 () Bool)

(assert (=> b!5671979 (= e!3491598 1)))

(assert (= (and d!1790628 c!997748) b!5671978))

(assert (= (and d!1790628 (not c!997748)) b!5671979))

(declare-fun m!6633194 () Bool)

(assert (=> b!5671978 m!6633194))

(declare-fun m!6633196 () Bool)

(assert (=> b!5671978 m!6633196))

(assert (=> b!5671132 d!1790628))

(assert (=> b!5670308 d!1790246))

(assert (=> b!5670596 d!1790276))

(assert (=> b!5670596 d!1790278))

(assert (=> d!1790064 d!1790160))

(assert (=> d!1790064 d!1790102))

(declare-fun d!1790630 () Bool)

(assert (=> d!1790630 (= (matchR!7842 lt!2268141 s!2326) (matchRSpec!2760 lt!2268141 s!2326))))

(assert (=> d!1790630 true))

(declare-fun _$88!3958 () Unit!156160)

(assert (=> d!1790630 (= (choose!42897 lt!2268141 s!2326) _$88!3958)))

(declare-fun bs!1321837 () Bool)

(assert (= bs!1321837 d!1790630))

(assert (=> bs!1321837 m!6631520))

(assert (=> bs!1321837 m!6631532))

(assert (=> d!1790064 d!1790630))

(assert (=> d!1790064 d!1790368))

(declare-fun d!1790632 () Bool)

(assert (=> d!1790632 (= (nullable!5689 (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))) (nullableFct!1774 (regOne!31826 (regOne!31826 (regOne!31826 r!7292)))))))

(declare-fun bs!1321838 () Bool)

(assert (= bs!1321838 d!1790632))

(declare-fun m!6633198 () Bool)

(assert (=> bs!1321838 m!6633198))

(assert (=> b!5671135 d!1790632))

(assert (=> b!5670429 d!1790474))

(assert (=> b!5670429 d!1790476))

(assert (=> b!5670429 d!1790478))

(declare-fun b!5671980 () Bool)

(declare-fun res!2396783 () Bool)

(declare-fun e!3491603 () Bool)

(assert (=> b!5671980 (=> (not res!2396783) (not e!3491603))))

(declare-fun lt!2268400 () Option!15666)

(assert (=> b!5671980 (= res!2396783 (matchR!7842 (regTwo!31826 r!7292) (_2!36057 (get!21758 lt!2268400))))))

(declare-fun b!5671981 () Bool)

(declare-fun e!3491602 () Option!15666)

(declare-fun e!3491601 () Option!15666)

(assert (=> b!5671981 (= e!3491602 e!3491601)))

(declare-fun c!997750 () Bool)

(assert (=> b!5671981 (= c!997750 ((_ is Nil!63147) (t!376577 s!2326)))))

(declare-fun b!5671982 () Bool)

(assert (=> b!5671982 (= e!3491601 None!15665)))

(declare-fun b!5671983 () Bool)

(declare-fun e!3491599 () Bool)

(assert (=> b!5671983 (= e!3491599 (matchR!7842 (regTwo!31826 r!7292) (t!376577 s!2326)))))

(declare-fun b!5671984 () Bool)

(assert (=> b!5671984 (= e!3491603 (= (++!13862 (_1!36057 (get!21758 lt!2268400)) (_2!36057 (get!21758 lt!2268400))) s!2326))))

(declare-fun d!1790634 () Bool)

(declare-fun e!3491600 () Bool)

(assert (=> d!1790634 e!3491600))

(declare-fun res!2396787 () Bool)

(assert (=> d!1790634 (=> res!2396787 e!3491600)))

(assert (=> d!1790634 (= res!2396787 e!3491603)))

(declare-fun res!2396784 () Bool)

(assert (=> d!1790634 (=> (not res!2396784) (not e!3491603))))

(assert (=> d!1790634 (= res!2396784 (isDefined!12369 lt!2268400))))

(assert (=> d!1790634 (= lt!2268400 e!3491602)))

(declare-fun c!997749 () Bool)

(assert (=> d!1790634 (= c!997749 e!3491599)))

(declare-fun res!2396786 () Bool)

(assert (=> d!1790634 (=> (not res!2396786) (not e!3491599))))

(assert (=> d!1790634 (= res!2396786 (matchR!7842 (regOne!31826 r!7292) (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147))))))

(assert (=> d!1790634 (validRegex!7393 (regOne!31826 r!7292))))

(assert (=> d!1790634 (= (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326) s!2326) lt!2268400)))

(declare-fun b!5671985 () Bool)

(assert (=> b!5671985 (= e!3491600 (not (isDefined!12369 lt!2268400)))))

(declare-fun b!5671986 () Bool)

(assert (=> b!5671986 (= e!3491602 (Some!15665 (tuple2!65509 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (t!376577 s!2326))))))

(declare-fun b!5671987 () Bool)

(declare-fun res!2396785 () Bool)

(assert (=> b!5671987 (=> (not res!2396785) (not e!3491603))))

(assert (=> b!5671987 (= res!2396785 (matchR!7842 (regOne!31826 r!7292) (_1!36057 (get!21758 lt!2268400))))))

(declare-fun b!5671988 () Bool)

(declare-fun lt!2268401 () Unit!156160)

(declare-fun lt!2268399 () Unit!156160)

(assert (=> b!5671988 (= lt!2268401 lt!2268399)))

(assert (=> b!5671988 (= (++!13862 (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (Cons!63147 (h!69595 (t!376577 s!2326)) Nil!63147)) (t!376577 (t!376577 s!2326))) s!2326)))

(assert (=> b!5671988 (= lt!2268399 (lemmaMoveElementToOtherListKeepsConcatEq!2031 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (h!69595 (t!376577 s!2326)) (t!376577 (t!376577 s!2326)) s!2326))))

(assert (=> b!5671988 (= e!3491601 (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) (++!13862 (++!13862 Nil!63147 (Cons!63147 (h!69595 s!2326) Nil!63147)) (Cons!63147 (h!69595 (t!376577 s!2326)) Nil!63147)) (t!376577 (t!376577 s!2326)) s!2326))))

(assert (= (and d!1790634 res!2396786) b!5671983))

(assert (= (and d!1790634 c!997749) b!5671986))

(assert (= (and d!1790634 (not c!997749)) b!5671981))

(assert (= (and b!5671981 c!997750) b!5671982))

(assert (= (and b!5671981 (not c!997750)) b!5671988))

(assert (= (and d!1790634 res!2396784) b!5671987))

(assert (= (and b!5671987 res!2396785) b!5671980))

(assert (= (and b!5671980 res!2396783) b!5671984))

(assert (= (and d!1790634 (not res!2396787)) b!5671985))

(assert (=> b!5671988 m!6631716))

(assert (=> b!5671988 m!6632840))

(assert (=> b!5671988 m!6632840))

(assert (=> b!5671988 m!6632842))

(assert (=> b!5671988 m!6631716))

(assert (=> b!5671988 m!6632844))

(assert (=> b!5671988 m!6632840))

(declare-fun m!6633200 () Bool)

(assert (=> b!5671988 m!6633200))

(declare-fun m!6633202 () Bool)

(assert (=> b!5671980 m!6633202))

(declare-fun m!6633204 () Bool)

(assert (=> b!5671980 m!6633204))

(assert (=> b!5671984 m!6633202))

(declare-fun m!6633206 () Bool)

(assert (=> b!5671984 m!6633206))

(declare-fun m!6633208 () Bool)

(assert (=> d!1790634 m!6633208))

(assert (=> d!1790634 m!6631716))

(declare-fun m!6633210 () Bool)

(assert (=> d!1790634 m!6633210))

(assert (=> d!1790634 m!6631734))

(assert (=> b!5671985 m!6633208))

(assert (=> b!5671987 m!6633202))

(declare-fun m!6633212 () Bool)

(assert (=> b!5671987 m!6633212))

(declare-fun m!6633214 () Bool)

(assert (=> b!5671983 m!6633214))

(assert (=> b!5670429 d!1790634))

(assert (=> b!5670592 d!1790346))

(declare-fun bs!1321839 () Bool)

(declare-fun d!1790636 () Bool)

(assert (= bs!1321839 (and d!1790636 d!1790330)))

(declare-fun lambda!305273 () Int)

(assert (=> bs!1321839 (= lambda!305273 lambda!305227)))

(declare-fun bs!1321840 () Bool)

(assert (= bs!1321840 (and d!1790636 b!5671425)))

(assert (=> bs!1321840 (not (= lambda!305273 lambda!305230))))

(declare-fun bs!1321841 () Bool)

(assert (= bs!1321841 (and d!1790636 b!5671698)))

(assert (=> bs!1321841 (not (= lambda!305273 lambda!305263))))

(declare-fun bs!1321842 () Bool)

(assert (= bs!1321842 (and d!1790636 d!1790286)))

(assert (=> bs!1321842 (= lambda!305273 lambda!305216)))

(declare-fun bs!1321843 () Bool)

(assert (= bs!1321843 (and d!1790636 b!5670286)))

(assert (=> bs!1321843 (not (= lambda!305273 lambda!305110))))

(declare-fun bs!1321844 () Bool)

(assert (= bs!1321844 (and d!1790636 b!5670291)))

(assert (=> bs!1321844 (not (= lambda!305273 lambda!305113))))

(declare-fun bs!1321845 () Bool)

(assert (= bs!1321845 (and d!1790636 d!1790560)))

(assert (=> bs!1321845 (= lambda!305273 lambda!305268)))

(declare-fun bs!1321846 () Bool)

(assert (= bs!1321846 (and d!1790636 b!5671696)))

(assert (=> bs!1321846 (not (= lambda!305273 lambda!305262))))

(declare-fun bs!1321847 () Bool)

(assert (= bs!1321847 (and d!1790636 d!1790492)))

(assert (=> bs!1321847 (not (= lambda!305273 lambda!305258))))

(declare-fun bs!1321848 () Bool)

(assert (= bs!1321848 (and d!1790636 d!1790568)))

(assert (=> bs!1321848 (= lambda!305273 lambda!305269)))

(declare-fun bs!1321849 () Bool)

(assert (= bs!1321849 (and d!1790636 b!5670289)))

(assert (=> bs!1321849 (not (= lambda!305273 lambda!305112))))

(declare-fun bs!1321850 () Bool)

(assert (= bs!1321850 (and d!1790636 d!1790462)))

(assert (=> bs!1321850 (= lambda!305273 lambda!305253)))

(declare-fun bs!1321851 () Bool)

(assert (= bs!1321851 (and d!1790636 b!5670284)))

(assert (=> bs!1321851 (not (= lambda!305273 lambda!305109))))

(declare-fun bs!1321852 () Bool)

(assert (= bs!1321852 (and d!1790636 b!5671427)))

(assert (=> bs!1321852 (not (= lambda!305273 lambda!305231))))

(declare-fun bs!1321853 () Bool)

(assert (= bs!1321853 (and d!1790636 d!1790356)))

(assert (=> bs!1321853 (not (= lambda!305273 lambda!305234))))

(assert (=> d!1790636 (= (nullableZipper!1629 lt!2268136) (exists!2203 lt!2268136 lambda!305273))))

(declare-fun bs!1321854 () Bool)

(assert (= bs!1321854 d!1790636))

(declare-fun m!6633216 () Bool)

(assert (=> bs!1321854 m!6633216))

(assert (=> b!5671147 d!1790636))

(declare-fun d!1790638 () Bool)

(declare-fun e!3491604 () Bool)

(assert (=> d!1790638 e!3491604))

(declare-fun res!2396789 () Bool)

(assert (=> d!1790638 (=> (not res!2396789) (not e!3491604))))

(declare-fun lt!2268402 () List!63271)

(assert (=> d!1790638 (= res!2396789 (= (content!11435 lt!2268402) ((_ map or) (content!11435 (_1!36057 (get!21758 lt!2268251))) (content!11435 (_2!36057 (get!21758 lt!2268251))))))))

(declare-fun e!3491605 () List!63271)

(assert (=> d!1790638 (= lt!2268402 e!3491605)))

(declare-fun c!997751 () Bool)

(assert (=> d!1790638 (= c!997751 ((_ is Nil!63147) (_1!36057 (get!21758 lt!2268251))))))

(assert (=> d!1790638 (= (++!13862 (_1!36057 (get!21758 lt!2268251)) (_2!36057 (get!21758 lt!2268251))) lt!2268402)))

(declare-fun b!5671990 () Bool)

(assert (=> b!5671990 (= e!3491605 (Cons!63147 (h!69595 (_1!36057 (get!21758 lt!2268251))) (++!13862 (t!376577 (_1!36057 (get!21758 lt!2268251))) (_2!36057 (get!21758 lt!2268251)))))))

(declare-fun b!5671989 () Bool)

(assert (=> b!5671989 (= e!3491605 (_2!36057 (get!21758 lt!2268251)))))

(declare-fun b!5671991 () Bool)

(declare-fun res!2396788 () Bool)

(assert (=> b!5671991 (=> (not res!2396788) (not e!3491604))))

(assert (=> b!5671991 (= res!2396788 (= (size!39992 lt!2268402) (+ (size!39992 (_1!36057 (get!21758 lt!2268251))) (size!39992 (_2!36057 (get!21758 lt!2268251))))))))

(declare-fun b!5671992 () Bool)

(assert (=> b!5671992 (= e!3491604 (or (not (= (_2!36057 (get!21758 lt!2268251)) Nil!63147)) (= lt!2268402 (_1!36057 (get!21758 lt!2268251)))))))

(assert (= (and d!1790638 c!997751) b!5671989))

(assert (= (and d!1790638 (not c!997751)) b!5671990))

(assert (= (and d!1790638 res!2396789) b!5671991))

(assert (= (and b!5671991 res!2396788) b!5671992))

(declare-fun m!6633218 () Bool)

(assert (=> d!1790638 m!6633218))

(declare-fun m!6633220 () Bool)

(assert (=> d!1790638 m!6633220))

(declare-fun m!6633222 () Bool)

(assert (=> d!1790638 m!6633222))

(declare-fun m!6633224 () Bool)

(assert (=> b!5671990 m!6633224))

(declare-fun m!6633226 () Bool)

(assert (=> b!5671991 m!6633226))

(declare-fun m!6633228 () Bool)

(assert (=> b!5671991 m!6633228))

(declare-fun m!6633230 () Bool)

(assert (=> b!5671991 m!6633230))

(assert (=> b!5670616 d!1790638))

(assert (=> b!5670616 d!1790454))

(declare-fun d!1790640 () Bool)

(assert (=> d!1790640 (= (nullable!5689 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))) (nullableFct!1774 (h!69594 (exprs!5541 (Context!10083 (Cons!63146 (h!69594 (exprs!5541 (h!69596 zl!343))) (t!376576 (exprs!5541 (h!69596 zl!343)))))))))))

(declare-fun bs!1321855 () Bool)

(assert (= bs!1321855 d!1790640))

(declare-fun m!6633232 () Bool)

(assert (=> bs!1321855 m!6633232))

(assert (=> b!5670934 d!1790640))

(declare-fun bs!1321856 () Bool)

(declare-fun b!5671993 () Bool)

(assert (= bs!1321856 (and b!5671993 d!1790126)))

(declare-fun lambda!305274 () Int)

(assert (=> bs!1321856 (not (= lambda!305274 lambda!305176))))

(declare-fun bs!1321857 () Bool)

(assert (= bs!1321857 (and b!5671993 b!5670698)))

(assert (=> bs!1321857 (= (and (= (reg!15986 (regTwo!31827 lt!2268141)) (reg!15986 lt!2268141)) (= (regTwo!31827 lt!2268141) lt!2268141)) (= lambda!305274 lambda!305172))))

(declare-fun bs!1321858 () Bool)

(assert (= bs!1321858 (and b!5671993 b!5670839)))

(assert (=> bs!1321858 (= (and (= (reg!15986 (regTwo!31827 lt!2268141)) (reg!15986 lt!2268120)) (= (regTwo!31827 lt!2268141) lt!2268120)) (= lambda!305274 lambda!305182))))

(declare-fun bs!1321859 () Bool)

(assert (= bs!1321859 (and b!5671993 d!1790390)))

(assert (=> bs!1321859 (not (= lambda!305274 lambda!305244))))

(declare-fun bs!1321860 () Bool)

(assert (= bs!1321860 (and b!5671993 d!1790094)))

(assert (=> bs!1321860 (not (= lambda!305274 lambda!305162))))

(declare-fun bs!1321861 () Bool)

(assert (= bs!1321861 (and b!5671993 b!5670845)))

(assert (=> bs!1321861 (not (= lambda!305274 lambda!305183))))

(declare-fun bs!1321862 () Bool)

(assert (= bs!1321862 (and b!5671993 b!5671555)))

(assert (=> bs!1321862 (= (and (= (reg!15986 (regTwo!31827 lt!2268141)) (reg!15986 (regOne!31827 lt!2268120))) (= (regTwo!31827 lt!2268141) (regOne!31827 lt!2268120))) (= lambda!305274 lambda!305247))))

(declare-fun bs!1321863 () Bool)

(assert (= bs!1321863 (and b!5671993 b!5671471)))

(assert (=> bs!1321863 (= (and (= (reg!15986 (regTwo!31827 lt!2268141)) (reg!15986 (regTwo!31827 r!7292))) (= (regTwo!31827 lt!2268141) (regTwo!31827 r!7292))) (= lambda!305274 lambda!305241))))

(declare-fun bs!1321864 () Bool)

(assert (= bs!1321864 (and b!5671993 b!5670249)))

(assert (=> bs!1321864 (not (= lambda!305274 lambda!305098))))

(declare-fun bs!1321865 () Bool)

(assert (= bs!1321865 (and b!5671993 b!5671032)))

(assert (=> bs!1321865 (= (and (= (reg!15986 (regTwo!31827 lt!2268141)) (reg!15986 r!7292)) (= (regTwo!31827 lt!2268141) r!7292)) (= lambda!305274 lambda!305195))))

(declare-fun bs!1321866 () Bool)

(assert (= bs!1321866 (and b!5671993 b!5671566)))

(assert (=> bs!1321866 (= (and (= (reg!15986 (regTwo!31827 lt!2268141)) (reg!15986 (regOne!31827 lt!2268141))) (= (regTwo!31827 lt!2268141) (regOne!31827 lt!2268141))) (= lambda!305274 lambda!305250))))

(declare-fun bs!1321867 () Bool)

(assert (= bs!1321867 (and b!5671993 d!1790486)))

(assert (=> bs!1321867 (not (= lambda!305274 lambda!305256))))

(declare-fun bs!1321868 () Bool)

(assert (= bs!1321868 (and b!5671993 d!1790528)))

(assert (=> bs!1321868 (not (= lambda!305274 lambda!305267))))

(declare-fun bs!1321869 () Bool)

(assert (= bs!1321869 (and b!5671993 d!1790294)))

(assert (=> bs!1321869 (not (= lambda!305274 lambda!305221))))

(assert (=> bs!1321856 (not (= lambda!305274 lambda!305175))))

(assert (=> bs!1321864 (not (= lambda!305274 lambda!305101))))

(assert (=> bs!1321869 (not (= lambda!305274 lambda!305222))))

(declare-fun bs!1321870 () Bool)

(assert (= bs!1321870 (and b!5671993 b!5671038)))

(assert (=> bs!1321870 (not (= lambda!305274 lambda!305196))))

(declare-fun bs!1321871 () Bool)

(assert (= bs!1321871 (and b!5671993 d!1790038)))

(assert (=> bs!1321871 (not (= lambda!305274 lambda!305156))))

(declare-fun bs!1321872 () Bool)

(assert (= bs!1321872 (and b!5671993 b!5671731)))

(assert (=> bs!1321872 (= (and (= (reg!15986 (regTwo!31827 lt!2268141)) (reg!15986 (regOne!31827 r!7292))) (= (regTwo!31827 lt!2268141) (regOne!31827 r!7292))) (= lambda!305274 lambda!305264))))

(assert (=> bs!1321867 (not (= lambda!305274 lambda!305255))))

(declare-fun bs!1321873 () Bool)

(assert (= bs!1321873 (and b!5671993 d!1790100)))

(assert (=> bs!1321873 (not (= lambda!305274 lambda!305163))))

(declare-fun bs!1321874 () Bool)

(assert (= bs!1321874 (and b!5671993 d!1790594)))

(assert (=> bs!1321874 (not (= lambda!305274 lambda!305272))))

(declare-fun bs!1321875 () Bool)

(assert (= bs!1321875 (and b!5671993 b!5671561)))

(assert (=> bs!1321875 (not (= lambda!305274 lambda!305248))))

(declare-fun bs!1321876 () Bool)

(assert (= bs!1321876 (and b!5671993 d!1790314)))

(assert (=> bs!1321876 (not (= lambda!305274 lambda!305226))))

(declare-fun bs!1321877 () Bool)

(assert (= bs!1321877 (and b!5671993 d!1790034)))

(assert (=> bs!1321877 (not (= lambda!305274 lambda!305143))))

(declare-fun bs!1321878 () Bool)

(assert (= bs!1321878 (and b!5671993 b!5670241)))

(assert (=> bs!1321878 (not (= lambda!305274 lambda!305095))))

(declare-fun bs!1321879 () Bool)

(assert (= bs!1321879 (and b!5671993 b!5671477)))

(assert (=> bs!1321879 (not (= lambda!305274 lambda!305242))))

(declare-fun bs!1321880 () Bool)

(assert (= bs!1321880 (and b!5671993 b!5671737)))

(assert (=> bs!1321880 (not (= lambda!305274 lambda!305265))))

(declare-fun bs!1321881 () Bool)

(assert (= bs!1321881 (and b!5671993 b!5671572)))

(assert (=> bs!1321881 (not (= lambda!305274 lambda!305251))))

(assert (=> bs!1321864 (not (= lambda!305274 lambda!305099))))

(declare-fun bs!1321882 () Bool)

(assert (= bs!1321882 (and b!5671993 d!1790080)))

(assert (=> bs!1321882 (not (= lambda!305274 lambda!305160))))

(assert (=> bs!1321864 (not (= lambda!305274 lambda!305100))))

(declare-fun bs!1321883 () Bool)

(assert (= bs!1321883 (and b!5671993 b!5670704)))

(assert (=> bs!1321883 (not (= lambda!305274 lambda!305174))))

(assert (=> bs!1321871 (not (= lambda!305274 lambda!305155))))

(assert (=> bs!1321868 (not (= lambda!305274 lambda!305266))))

(assert (=> bs!1321878 (not (= lambda!305274 lambda!305096))))

(assert (=> bs!1321882 (not (= lambda!305274 lambda!305158))))

(assert (=> b!5671993 true))

(assert (=> b!5671993 true))

(declare-fun bs!1321884 () Bool)

(declare-fun b!5671999 () Bool)

(assert (= bs!1321884 (and b!5671999 d!1790126)))

(declare-fun lambda!305275 () Int)

(assert (=> bs!1321884 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) lt!2268129)) (= lambda!305275 lambda!305176))))

(declare-fun bs!1321885 () Bool)

(assert (= bs!1321885 (and b!5671999 b!5670698)))

(assert (=> bs!1321885 (not (= lambda!305275 lambda!305172))))

(declare-fun bs!1321886 () Bool)

(assert (= bs!1321886 (and b!5671999 b!5670839)))

(assert (=> bs!1321886 (not (= lambda!305275 lambda!305182))))

(declare-fun bs!1321887 () Bool)

(assert (= bs!1321887 (and b!5671999 d!1790390)))

(assert (=> bs!1321887 (not (= lambda!305275 lambda!305244))))

(declare-fun bs!1321888 () Bool)

(assert (= bs!1321888 (and b!5671999 d!1790094)))

(assert (=> bs!1321888 (not (= lambda!305275 lambda!305162))))

(declare-fun bs!1321889 () Bool)

(assert (= bs!1321889 (and b!5671999 b!5670845)))

(assert (=> bs!1321889 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 lt!2268120)) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 lt!2268120))) (= lambda!305275 lambda!305183))))

(declare-fun bs!1321890 () Bool)

(assert (= bs!1321890 (and b!5671999 b!5671555)))

(assert (=> bs!1321890 (not (= lambda!305275 lambda!305247))))

(declare-fun bs!1321891 () Bool)

(assert (= bs!1321891 (and b!5671999 b!5671471)))

(assert (=> bs!1321891 (not (= lambda!305275 lambda!305241))))

(declare-fun bs!1321892 () Bool)

(assert (= bs!1321892 (and b!5671999 b!5670249)))

(assert (=> bs!1321892 (not (= lambda!305275 lambda!305098))))

(declare-fun bs!1321893 () Bool)

(assert (= bs!1321893 (and b!5671999 b!5671032)))

(assert (=> bs!1321893 (not (= lambda!305275 lambda!305195))))

(declare-fun bs!1321894 () Bool)

(assert (= bs!1321894 (and b!5671999 d!1790486)))

(assert (=> bs!1321894 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) lt!2268120)) (= lambda!305275 lambda!305256))))

(declare-fun bs!1321895 () Bool)

(assert (= bs!1321895 (and b!5671999 d!1790528)))

(assert (=> bs!1321895 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 r!7292))) (= lambda!305275 lambda!305267))))

(declare-fun bs!1321896 () Bool)

(assert (= bs!1321896 (and b!5671999 d!1790294)))

(assert (=> bs!1321896 (not (= lambda!305275 lambda!305221))))

(assert (=> bs!1321884 (not (= lambda!305275 lambda!305175))))

(assert (=> bs!1321892 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) lt!2268129)) (= lambda!305275 lambda!305101))))

(assert (=> bs!1321896 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) lt!2268129)) (= lambda!305275 lambda!305222))))

(declare-fun bs!1321897 () Bool)

(assert (= bs!1321897 (and b!5671999 b!5671038)))

(assert (=> bs!1321897 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 r!7292))) (= lambda!305275 lambda!305196))))

(declare-fun bs!1321898 () Bool)

(assert (= bs!1321898 (and b!5671999 d!1790038)))

(assert (=> bs!1321898 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 r!7292))) (= lambda!305275 lambda!305156))))

(declare-fun bs!1321899 () Bool)

(assert (= bs!1321899 (and b!5671999 b!5671731)))

(assert (=> bs!1321899 (not (= lambda!305275 lambda!305264))))

(assert (=> bs!1321894 (not (= lambda!305275 lambda!305255))))

(declare-fun bs!1321900 () Bool)

(assert (= bs!1321900 (and b!5671999 d!1790100)))

(assert (=> bs!1321900 (not (= lambda!305275 lambda!305163))))

(declare-fun bs!1321901 () Bool)

(assert (= bs!1321901 (and b!5671999 d!1790594)))

(assert (=> bs!1321901 (not (= lambda!305275 lambda!305272))))

(declare-fun bs!1321902 () Bool)

(assert (= bs!1321902 (and b!5671999 b!5671561)))

(assert (=> bs!1321902 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 (regOne!31827 lt!2268120))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 (regOne!31827 lt!2268120)))) (= lambda!305275 lambda!305248))))

(declare-fun bs!1321903 () Bool)

(assert (= bs!1321903 (and b!5671999 d!1790314)))

(assert (=> bs!1321903 (not (= lambda!305275 lambda!305226))))

(declare-fun bs!1321904 () Bool)

(assert (= bs!1321904 (and b!5671999 d!1790034)))

(assert (=> bs!1321904 (not (= lambda!305275 lambda!305143))))

(declare-fun bs!1321905 () Bool)

(assert (= bs!1321905 (and b!5671999 b!5670241)))

(assert (=> bs!1321905 (not (= lambda!305275 lambda!305095))))

(declare-fun bs!1321906 () Bool)

(assert (= bs!1321906 (and b!5671999 b!5671477)))

(assert (=> bs!1321906 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 (regTwo!31827 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 (regTwo!31827 r!7292)))) (= lambda!305275 lambda!305242))))

(declare-fun bs!1321907 () Bool)

(assert (= bs!1321907 (and b!5671999 b!5671737)))

(assert (=> bs!1321907 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 (regOne!31827 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 (regOne!31827 r!7292)))) (= lambda!305275 lambda!305265))))

(declare-fun bs!1321908 () Bool)

(assert (= bs!1321908 (and b!5671999 b!5671572)))

(assert (=> bs!1321908 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 (regOne!31827 lt!2268141))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 (regOne!31827 lt!2268141)))) (= lambda!305275 lambda!305251))))

(assert (=> bs!1321892 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) lt!2268120)) (= lambda!305275 lambda!305099))))

(declare-fun bs!1321909 () Bool)

(assert (= bs!1321909 (and b!5671999 d!1790080)))

(assert (=> bs!1321909 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268141)) lt!2268120)) (= lambda!305275 lambda!305160))))

(assert (=> bs!1321892 (not (= lambda!305275 lambda!305100))))

(declare-fun bs!1321910 () Bool)

(assert (= bs!1321910 (and b!5671999 b!5670704)))

(assert (=> bs!1321910 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 lt!2268141)) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 lt!2268141))) (= lambda!305275 lambda!305174))))

(assert (=> bs!1321898 (not (= lambda!305275 lambda!305155))))

(assert (=> bs!1321895 (not (= lambda!305275 lambda!305266))))

(declare-fun bs!1321911 () Bool)

(assert (= bs!1321911 (and b!5671999 b!5671993)))

(assert (=> bs!1321911 (not (= lambda!305275 lambda!305274))))

(declare-fun bs!1321912 () Bool)

(assert (= bs!1321912 (and b!5671999 b!5671566)))

(assert (=> bs!1321912 (not (= lambda!305275 lambda!305250))))

(assert (=> bs!1321905 (= (and (= (regOne!31826 (regTwo!31827 lt!2268141)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 lt!2268141)) (regTwo!31826 r!7292))) (= lambda!305275 lambda!305096))))

(assert (=> bs!1321909 (not (= lambda!305275 lambda!305158))))

(assert (=> b!5671999 true))

(assert (=> b!5671999 true))

(declare-fun e!3491606 () Bool)

(declare-fun call!430319 () Bool)

(assert (=> b!5671993 (= e!3491606 call!430319)))

(declare-fun b!5671994 () Bool)

(declare-fun e!3491607 () Bool)

(declare-fun e!3491610 () Bool)

(assert (=> b!5671994 (= e!3491607 e!3491610)))

(declare-fun res!2396792 () Bool)

(assert (=> b!5671994 (= res!2396792 (not ((_ is EmptyLang!15657) (regTwo!31827 lt!2268141))))))

(assert (=> b!5671994 (=> (not res!2396792) (not e!3491610))))

(declare-fun b!5671995 () Bool)

(declare-fun e!3491609 () Bool)

(assert (=> b!5671995 (= e!3491609 (matchRSpec!2760 (regTwo!31827 (regTwo!31827 lt!2268141)) s!2326))))

(declare-fun b!5671996 () Bool)

(declare-fun c!997753 () Bool)

(assert (=> b!5671996 (= c!997753 ((_ is ElementMatch!15657) (regTwo!31827 lt!2268141)))))

(declare-fun e!3491608 () Bool)

(assert (=> b!5671996 (= e!3491610 e!3491608)))

(declare-fun b!5671997 () Bool)

(declare-fun e!3491611 () Bool)

(declare-fun e!3491612 () Bool)

(assert (=> b!5671997 (= e!3491611 e!3491612)))

(declare-fun c!997752 () Bool)

(assert (=> b!5671997 (= c!997752 ((_ is Star!15657) (regTwo!31827 lt!2268141)))))

(assert (=> b!5671999 (= e!3491612 call!430319)))

(declare-fun b!5672000 () Bool)

(declare-fun call!430320 () Bool)

(assert (=> b!5672000 (= e!3491607 call!430320)))

(declare-fun bm!430314 () Bool)

(assert (=> bm!430314 (= call!430320 (isEmpty!35001 s!2326))))

(declare-fun b!5672001 () Bool)

(declare-fun c!997755 () Bool)

(assert (=> b!5672001 (= c!997755 ((_ is Union!15657) (regTwo!31827 lt!2268141)))))

(assert (=> b!5672001 (= e!3491608 e!3491611)))

(declare-fun bm!430315 () Bool)

(assert (=> bm!430315 (= call!430319 (Exists!2757 (ite c!997752 lambda!305274 lambda!305275)))))

(declare-fun d!1790642 () Bool)

(declare-fun c!997754 () Bool)

(assert (=> d!1790642 (= c!997754 ((_ is EmptyExpr!15657) (regTwo!31827 lt!2268141)))))

(assert (=> d!1790642 (= (matchRSpec!2760 (regTwo!31827 lt!2268141) s!2326) e!3491607)))

(declare-fun b!5671998 () Bool)

(declare-fun res!2396790 () Bool)

(assert (=> b!5671998 (=> res!2396790 e!3491606)))

(assert (=> b!5671998 (= res!2396790 call!430320)))

(assert (=> b!5671998 (= e!3491612 e!3491606)))

(declare-fun b!5672002 () Bool)

(assert (=> b!5672002 (= e!3491608 (= s!2326 (Cons!63147 (c!997231 (regTwo!31827 lt!2268141)) Nil!63147)))))

(declare-fun b!5672003 () Bool)

(assert (=> b!5672003 (= e!3491611 e!3491609)))

(declare-fun res!2396791 () Bool)

(assert (=> b!5672003 (= res!2396791 (matchRSpec!2760 (regOne!31827 (regTwo!31827 lt!2268141)) s!2326))))

(assert (=> b!5672003 (=> res!2396791 e!3491609)))

(assert (= (and d!1790642 c!997754) b!5672000))

(assert (= (and d!1790642 (not c!997754)) b!5671994))

(assert (= (and b!5671994 res!2396792) b!5671996))

(assert (= (and b!5671996 c!997753) b!5672002))

(assert (= (and b!5671996 (not c!997753)) b!5672001))

(assert (= (and b!5672001 c!997755) b!5672003))

(assert (= (and b!5672001 (not c!997755)) b!5671997))

(assert (= (and b!5672003 (not res!2396791)) b!5671995))

(assert (= (and b!5671997 c!997752) b!5671998))

(assert (= (and b!5671997 (not c!997752)) b!5671999))

(assert (= (and b!5671998 (not res!2396790)) b!5671993))

(assert (= (or b!5671993 b!5671999) bm!430315))

(assert (= (or b!5672000 b!5671998) bm!430314))

(declare-fun m!6633234 () Bool)

(assert (=> b!5671995 m!6633234))

(assert (=> bm!430314 m!6631874))

(declare-fun m!6633236 () Bool)

(assert (=> bm!430315 m!6633236))

(declare-fun m!6633238 () Bool)

(assert (=> b!5672003 m!6633238))

(assert (=> b!5670700 d!1790642))

(declare-fun bs!1321913 () Bool)

(declare-fun d!1790644 () Bool)

(assert (= bs!1321913 (and d!1790644 d!1790464)))

(declare-fun lambda!305276 () Int)

(assert (=> bs!1321913 (= lambda!305276 lambda!305254)))

(declare-fun bs!1321914 () Bool)

(assert (= bs!1321914 (and d!1790644 d!1790156)))

(assert (=> bs!1321914 (= lambda!305276 lambda!305181)))

(declare-fun bs!1321915 () Bool)

(assert (= bs!1321915 (and d!1790644 d!1790174)))

(assert (=> bs!1321915 (= lambda!305276 lambda!305184)))

(declare-fun bs!1321916 () Bool)

(assert (= bs!1321916 (and d!1790644 d!1790426)))

(assert (=> bs!1321916 (= lambda!305276 lambda!305249)))

(declare-fun bs!1321917 () Bool)

(assert (= bs!1321917 (and d!1790644 d!1790372)))

(assert (=> bs!1321917 (= lambda!305276 lambda!305243)))

(declare-fun bs!1321918 () Bool)

(assert (= bs!1321918 (and d!1790644 b!5671695)))

(assert (=> bs!1321918 (not (= lambda!305276 lambda!305260))))

(declare-fun bs!1321919 () Bool)

(assert (= bs!1321919 (and d!1790644 d!1790260)))

(assert (=> bs!1321919 (= lambda!305276 lambda!305213)))

(declare-fun bs!1321920 () Bool)

(assert (= bs!1321920 (and d!1790644 b!5671439)))

(assert (=> bs!1321920 (not (= lambda!305276 lambda!305240))))

(declare-fun bs!1321921 () Bool)

(assert (= bs!1321921 (and d!1790644 d!1790258)))

(assert (=> bs!1321921 (= lambda!305276 lambda!305210)))

(declare-fun bs!1321922 () Bool)

(assert (= bs!1321922 (and d!1790644 d!1790180)))

(assert (=> bs!1321922 (= lambda!305276 lambda!305185)))

(declare-fun bs!1321923 () Bool)

(assert (= bs!1321923 (and d!1790644 b!5671437)))

(assert (=> bs!1321923 (not (= lambda!305276 lambda!305239))))

(declare-fun bs!1321924 () Bool)

(assert (= bs!1321924 (and d!1790644 d!1790238)))

(assert (=> bs!1321924 (= lambda!305276 lambda!305204)))

(declare-fun bs!1321925 () Bool)

(assert (= bs!1321925 (and d!1790644 b!5671693)))

(assert (=> bs!1321925 (not (= lambda!305276 lambda!305259))))

(declare-fun bs!1321926 () Bool)

(assert (= bs!1321926 (and d!1790644 d!1790140)))

(assert (=> bs!1321926 (= lambda!305276 lambda!305180)))

(declare-fun bs!1321927 () Bool)

(assert (= bs!1321927 (and d!1790644 d!1790394)))

(assert (=> bs!1321927 (= lambda!305276 lambda!305245)))

(declare-fun bs!1321928 () Bool)

(assert (= bs!1321928 (and d!1790644 d!1790572)))

(assert (=> bs!1321928 (= lambda!305276 lambda!305270)))

(declare-fun bs!1321929 () Bool)

(assert (= bs!1321929 (and d!1790644 d!1790228)))

(assert (=> bs!1321929 (= lambda!305276 lambda!305203)))

(declare-fun bs!1321930 () Bool)

(assert (= bs!1321930 (and d!1790644 d!1790490)))

(assert (=> bs!1321930 (= lambda!305276 lambda!305257)))

(assert (=> d!1790644 (= (inv!82389 setElem!37901) (forall!14810 (exprs!5541 setElem!37901) lambda!305276))))

(declare-fun bs!1321931 () Bool)

(assert (= bs!1321931 d!1790644))

(declare-fun m!6633240 () Bool)

(assert (=> bs!1321931 m!6633240))

(assert (=> setNonEmpty!37901 d!1790644))

(declare-fun d!1790646 () Bool)

(assert (=> d!1790646 (= (isEmpty!34998 (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))) ((_ is Nil!63146) (t!376576 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(assert (=> b!5670797 d!1790646))

(assert (=> b!5671060 d!1790276))

(assert (=> b!5671060 d!1790278))

(declare-fun d!1790648 () Bool)

(declare-fun lt!2268403 () Int)

(assert (=> d!1790648 (>= lt!2268403 0)))

(declare-fun e!3491613 () Int)

(assert (=> d!1790648 (= lt!2268403 e!3491613)))

(declare-fun c!997756 () Bool)

(assert (=> d!1790648 (= c!997756 ((_ is Cons!63146) (exprs!5541 (h!69596 lt!2268150))))))

(assert (=> d!1790648 (= (contextDepthTotal!232 (h!69596 lt!2268150)) lt!2268403)))

(declare-fun b!5672004 () Bool)

(assert (=> b!5672004 (= e!3491613 (+ (regexDepthTotal!104 (h!69594 (exprs!5541 (h!69596 lt!2268150)))) (contextDepthTotal!232 (Context!10083 (t!376576 (exprs!5541 (h!69596 lt!2268150)))))))))

(declare-fun b!5672005 () Bool)

(assert (=> b!5672005 (= e!3491613 1)))

(assert (= (and d!1790648 c!997756) b!5672004))

(assert (= (and d!1790648 (not c!997756)) b!5672005))

(declare-fun m!6633242 () Bool)

(assert (=> b!5672004 m!6633242))

(declare-fun m!6633244 () Bool)

(assert (=> b!5672004 m!6633244))

(assert (=> b!5670517 d!1790648))

(declare-fun d!1790650 () Bool)

(declare-fun lt!2268404 () Int)

(assert (=> d!1790650 (>= lt!2268404 0)))

(declare-fun e!3491614 () Int)

(assert (=> d!1790650 (= lt!2268404 e!3491614)))

(declare-fun c!997757 () Bool)

(assert (=> d!1790650 (= c!997757 ((_ is Cons!63148) (t!376578 lt!2268150)))))

(assert (=> d!1790650 (= (zipperDepthTotal!254 (t!376578 lt!2268150)) lt!2268404)))

(declare-fun b!5672006 () Bool)

(assert (=> b!5672006 (= e!3491614 (+ (contextDepthTotal!232 (h!69596 (t!376578 lt!2268150))) (zipperDepthTotal!254 (t!376578 (t!376578 lt!2268150)))))))

(declare-fun b!5672007 () Bool)

(assert (=> b!5672007 (= e!3491614 0)))

(assert (= (and d!1790650 c!997757) b!5672006))

(assert (= (and d!1790650 (not c!997757)) b!5672007))

(declare-fun m!6633246 () Bool)

(assert (=> b!5672006 m!6633246))

(declare-fun m!6633248 () Bool)

(assert (=> b!5672006 m!6633248))

(assert (=> b!5670517 d!1790650))

(assert (=> b!5670597 d!1790346))

(declare-fun d!1790652 () Bool)

(assert (=> d!1790652 (= (head!12039 (t!376576 (exprs!5541 (h!69596 zl!343)))) (h!69594 (t!376576 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> b!5670793 d!1790652))

(declare-fun bs!1321932 () Bool)

(declare-fun b!5672008 () Bool)

(assert (= bs!1321932 (and b!5672008 d!1790126)))

(declare-fun lambda!305277 () Int)

(assert (=> bs!1321932 (not (= lambda!305277 lambda!305176))))

(declare-fun bs!1321933 () Bool)

(assert (= bs!1321933 (and b!5672008 b!5670698)))

(assert (=> bs!1321933 (= (and (= (reg!15986 (regTwo!31827 lt!2268120)) (reg!15986 lt!2268141)) (= (regTwo!31827 lt!2268120) lt!2268141)) (= lambda!305277 lambda!305172))))

(declare-fun bs!1321934 () Bool)

(assert (= bs!1321934 (and b!5672008 b!5670839)))

(assert (=> bs!1321934 (= (and (= (reg!15986 (regTwo!31827 lt!2268120)) (reg!15986 lt!2268120)) (= (regTwo!31827 lt!2268120) lt!2268120)) (= lambda!305277 lambda!305182))))

(declare-fun bs!1321935 () Bool)

(assert (= bs!1321935 (and b!5672008 d!1790390)))

(assert (=> bs!1321935 (not (= lambda!305277 lambda!305244))))

(declare-fun bs!1321936 () Bool)

(assert (= bs!1321936 (and b!5672008 d!1790094)))

(assert (=> bs!1321936 (not (= lambda!305277 lambda!305162))))

(declare-fun bs!1321937 () Bool)

(assert (= bs!1321937 (and b!5672008 b!5670845)))

(assert (=> bs!1321937 (not (= lambda!305277 lambda!305183))))

(declare-fun bs!1321938 () Bool)

(assert (= bs!1321938 (and b!5672008 b!5671555)))

(assert (=> bs!1321938 (= (and (= (reg!15986 (regTwo!31827 lt!2268120)) (reg!15986 (regOne!31827 lt!2268120))) (= (regTwo!31827 lt!2268120) (regOne!31827 lt!2268120))) (= lambda!305277 lambda!305247))))

(declare-fun bs!1321939 () Bool)

(assert (= bs!1321939 (and b!5672008 b!5671471)))

(assert (=> bs!1321939 (= (and (= (reg!15986 (regTwo!31827 lt!2268120)) (reg!15986 (regTwo!31827 r!7292))) (= (regTwo!31827 lt!2268120) (regTwo!31827 r!7292))) (= lambda!305277 lambda!305241))))

(declare-fun bs!1321940 () Bool)

(assert (= bs!1321940 (and b!5672008 b!5670249)))

(assert (=> bs!1321940 (not (= lambda!305277 lambda!305098))))

(declare-fun bs!1321941 () Bool)

(assert (= bs!1321941 (and b!5672008 b!5671032)))

(assert (=> bs!1321941 (= (and (= (reg!15986 (regTwo!31827 lt!2268120)) (reg!15986 r!7292)) (= (regTwo!31827 lt!2268120) r!7292)) (= lambda!305277 lambda!305195))))

(declare-fun bs!1321942 () Bool)

(assert (= bs!1321942 (and b!5672008 d!1790486)))

(assert (=> bs!1321942 (not (= lambda!305277 lambda!305256))))

(declare-fun bs!1321943 () Bool)

(assert (= bs!1321943 (and b!5672008 d!1790528)))

(assert (=> bs!1321943 (not (= lambda!305277 lambda!305267))))

(declare-fun bs!1321944 () Bool)

(assert (= bs!1321944 (and b!5672008 d!1790294)))

(assert (=> bs!1321944 (not (= lambda!305277 lambda!305221))))

(assert (=> bs!1321932 (not (= lambda!305277 lambda!305175))))

(assert (=> bs!1321940 (not (= lambda!305277 lambda!305101))))

(assert (=> bs!1321944 (not (= lambda!305277 lambda!305222))))

(declare-fun bs!1321945 () Bool)

(assert (= bs!1321945 (and b!5672008 b!5671038)))

(assert (=> bs!1321945 (not (= lambda!305277 lambda!305196))))

(declare-fun bs!1321946 () Bool)

(assert (= bs!1321946 (and b!5672008 d!1790038)))

(assert (=> bs!1321946 (not (= lambda!305277 lambda!305156))))

(declare-fun bs!1321947 () Bool)

(assert (= bs!1321947 (and b!5672008 b!5671731)))

(assert (=> bs!1321947 (= (and (= (reg!15986 (regTwo!31827 lt!2268120)) (reg!15986 (regOne!31827 r!7292))) (= (regTwo!31827 lt!2268120) (regOne!31827 r!7292))) (= lambda!305277 lambda!305264))))

(assert (=> bs!1321942 (not (= lambda!305277 lambda!305255))))

(declare-fun bs!1321948 () Bool)

(assert (= bs!1321948 (and b!5672008 d!1790100)))

(assert (=> bs!1321948 (not (= lambda!305277 lambda!305163))))

(declare-fun bs!1321949 () Bool)

(assert (= bs!1321949 (and b!5672008 d!1790594)))

(assert (=> bs!1321949 (not (= lambda!305277 lambda!305272))))

(declare-fun bs!1321950 () Bool)

(assert (= bs!1321950 (and b!5672008 b!5671561)))

(assert (=> bs!1321950 (not (= lambda!305277 lambda!305248))))

(declare-fun bs!1321951 () Bool)

(assert (= bs!1321951 (and b!5672008 d!1790314)))

(assert (=> bs!1321951 (not (= lambda!305277 lambda!305226))))

(declare-fun bs!1321952 () Bool)

(assert (= bs!1321952 (and b!5672008 d!1790034)))

(assert (=> bs!1321952 (not (= lambda!305277 lambda!305143))))

(declare-fun bs!1321953 () Bool)

(assert (= bs!1321953 (and b!5672008 b!5670241)))

(assert (=> bs!1321953 (not (= lambda!305277 lambda!305095))))

(declare-fun bs!1321954 () Bool)

(assert (= bs!1321954 (and b!5672008 b!5671477)))

(assert (=> bs!1321954 (not (= lambda!305277 lambda!305242))))

(declare-fun bs!1321955 () Bool)

(assert (= bs!1321955 (and b!5672008 b!5671999)))

(assert (=> bs!1321955 (not (= lambda!305277 lambda!305275))))

(declare-fun bs!1321956 () Bool)

(assert (= bs!1321956 (and b!5672008 b!5671737)))

(assert (=> bs!1321956 (not (= lambda!305277 lambda!305265))))

(declare-fun bs!1321957 () Bool)

(assert (= bs!1321957 (and b!5672008 b!5671572)))

(assert (=> bs!1321957 (not (= lambda!305277 lambda!305251))))

(assert (=> bs!1321940 (not (= lambda!305277 lambda!305099))))

(declare-fun bs!1321958 () Bool)

(assert (= bs!1321958 (and b!5672008 d!1790080)))

(assert (=> bs!1321958 (not (= lambda!305277 lambda!305160))))

(assert (=> bs!1321940 (not (= lambda!305277 lambda!305100))))

(declare-fun bs!1321959 () Bool)

(assert (= bs!1321959 (and b!5672008 b!5670704)))

(assert (=> bs!1321959 (not (= lambda!305277 lambda!305174))))

(assert (=> bs!1321946 (not (= lambda!305277 lambda!305155))))

(assert (=> bs!1321943 (not (= lambda!305277 lambda!305266))))

(declare-fun bs!1321960 () Bool)

(assert (= bs!1321960 (and b!5672008 b!5671993)))

(assert (=> bs!1321960 (= (and (= (reg!15986 (regTwo!31827 lt!2268120)) (reg!15986 (regTwo!31827 lt!2268141))) (= (regTwo!31827 lt!2268120) (regTwo!31827 lt!2268141))) (= lambda!305277 lambda!305274))))

(declare-fun bs!1321961 () Bool)

(assert (= bs!1321961 (and b!5672008 b!5671566)))

(assert (=> bs!1321961 (= (and (= (reg!15986 (regTwo!31827 lt!2268120)) (reg!15986 (regOne!31827 lt!2268141))) (= (regTwo!31827 lt!2268120) (regOne!31827 lt!2268141))) (= lambda!305277 lambda!305250))))

(assert (=> bs!1321953 (not (= lambda!305277 lambda!305096))))

(assert (=> bs!1321958 (not (= lambda!305277 lambda!305158))))

(assert (=> b!5672008 true))

(assert (=> b!5672008 true))

(declare-fun bs!1321962 () Bool)

(declare-fun b!5672014 () Bool)

(assert (= bs!1321962 (and b!5672014 d!1790126)))

(declare-fun lambda!305278 () Int)

(assert (=> bs!1321962 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) lt!2268129)) (= lambda!305278 lambda!305176))))

(declare-fun bs!1321963 () Bool)

(assert (= bs!1321963 (and b!5672014 b!5670698)))

(assert (=> bs!1321963 (not (= lambda!305278 lambda!305172))))

(declare-fun bs!1321964 () Bool)

(assert (= bs!1321964 (and b!5672014 b!5670839)))

(assert (=> bs!1321964 (not (= lambda!305278 lambda!305182))))

(declare-fun bs!1321965 () Bool)

(assert (= bs!1321965 (and b!5672014 d!1790390)))

(assert (=> bs!1321965 (not (= lambda!305278 lambda!305244))))

(declare-fun bs!1321966 () Bool)

(assert (= bs!1321966 (and b!5672014 d!1790094)))

(assert (=> bs!1321966 (not (= lambda!305278 lambda!305162))))

(declare-fun bs!1321967 () Bool)

(assert (= bs!1321967 (and b!5672014 b!5670845)))

(assert (=> bs!1321967 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 lt!2268120)) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 lt!2268120))) (= lambda!305278 lambda!305183))))

(declare-fun bs!1321968 () Bool)

(assert (= bs!1321968 (and b!5672014 b!5671555)))

(assert (=> bs!1321968 (not (= lambda!305278 lambda!305247))))

(declare-fun bs!1321969 () Bool)

(assert (= bs!1321969 (and b!5672014 b!5671471)))

(assert (=> bs!1321969 (not (= lambda!305278 lambda!305241))))

(declare-fun bs!1321970 () Bool)

(assert (= bs!1321970 (and b!5672014 b!5670249)))

(assert (=> bs!1321970 (not (= lambda!305278 lambda!305098))))

(declare-fun bs!1321971 () Bool)

(assert (= bs!1321971 (and b!5672014 b!5671032)))

(assert (=> bs!1321971 (not (= lambda!305278 lambda!305195))))

(declare-fun bs!1321972 () Bool)

(assert (= bs!1321972 (and b!5672014 d!1790486)))

(assert (=> bs!1321972 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) lt!2268120)) (= lambda!305278 lambda!305256))))

(declare-fun bs!1321973 () Bool)

(assert (= bs!1321973 (and b!5672014 d!1790528)))

(assert (=> bs!1321973 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 r!7292))) (= lambda!305278 lambda!305267))))

(declare-fun bs!1321974 () Bool)

(assert (= bs!1321974 (and b!5672014 d!1790294)))

(assert (=> bs!1321974 (not (= lambda!305278 lambda!305221))))

(assert (=> bs!1321962 (not (= lambda!305278 lambda!305175))))

(assert (=> bs!1321970 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) lt!2268129)) (= lambda!305278 lambda!305101))))

(assert (=> bs!1321974 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) lt!2268129)) (= lambda!305278 lambda!305222))))

(declare-fun bs!1321975 () Bool)

(assert (= bs!1321975 (and b!5672014 b!5671038)))

(assert (=> bs!1321975 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 r!7292))) (= lambda!305278 lambda!305196))))

(declare-fun bs!1321976 () Bool)

(assert (= bs!1321976 (and b!5672014 d!1790038)))

(assert (=> bs!1321976 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 r!7292))) (= lambda!305278 lambda!305156))))

(declare-fun bs!1321977 () Bool)

(assert (= bs!1321977 (and b!5672014 b!5671731)))

(assert (=> bs!1321977 (not (= lambda!305278 lambda!305264))))

(assert (=> bs!1321972 (not (= lambda!305278 lambda!305255))))

(declare-fun bs!1321978 () Bool)

(assert (= bs!1321978 (and b!5672014 d!1790100)))

(assert (=> bs!1321978 (not (= lambda!305278 lambda!305163))))

(declare-fun bs!1321979 () Bool)

(assert (= bs!1321979 (and b!5672014 d!1790594)))

(assert (=> bs!1321979 (not (= lambda!305278 lambda!305272))))

(declare-fun bs!1321980 () Bool)

(assert (= bs!1321980 (and b!5672014 b!5671561)))

(assert (=> bs!1321980 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 (regOne!31827 lt!2268120))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 (regOne!31827 lt!2268120)))) (= lambda!305278 lambda!305248))))

(declare-fun bs!1321981 () Bool)

(assert (= bs!1321981 (and b!5672014 d!1790314)))

(assert (=> bs!1321981 (not (= lambda!305278 lambda!305226))))

(declare-fun bs!1321982 () Bool)

(assert (= bs!1321982 (and b!5672014 d!1790034)))

(assert (=> bs!1321982 (not (= lambda!305278 lambda!305143))))

(declare-fun bs!1321983 () Bool)

(assert (= bs!1321983 (and b!5672014 b!5670241)))

(assert (=> bs!1321983 (not (= lambda!305278 lambda!305095))))

(declare-fun bs!1321984 () Bool)

(assert (= bs!1321984 (and b!5672014 b!5671477)))

(assert (=> bs!1321984 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 (regTwo!31827 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 (regTwo!31827 r!7292)))) (= lambda!305278 lambda!305242))))

(declare-fun bs!1321985 () Bool)

(assert (= bs!1321985 (and b!5672014 b!5671999)))

(assert (=> bs!1321985 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 (regTwo!31827 lt!2268141))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 (regTwo!31827 lt!2268141)))) (= lambda!305278 lambda!305275))))

(declare-fun bs!1321986 () Bool)

(assert (= bs!1321986 (and b!5672014 b!5671737)))

(assert (=> bs!1321986 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 (regOne!31827 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 (regOne!31827 r!7292)))) (= lambda!305278 lambda!305265))))

(declare-fun bs!1321987 () Bool)

(assert (= bs!1321987 (and b!5672014 b!5671572)))

(assert (=> bs!1321987 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 (regOne!31827 lt!2268141))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 (regOne!31827 lt!2268141)))) (= lambda!305278 lambda!305251))))

(assert (=> bs!1321970 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) lt!2268120)) (= lambda!305278 lambda!305099))))

(declare-fun bs!1321988 () Bool)

(assert (= bs!1321988 (and b!5672014 d!1790080)))

(assert (=> bs!1321988 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 (regOne!31826 r!7292))) (= (regTwo!31826 (regTwo!31827 lt!2268120)) lt!2268120)) (= lambda!305278 lambda!305160))))

(assert (=> bs!1321970 (not (= lambda!305278 lambda!305100))))

(declare-fun bs!1321989 () Bool)

(assert (= bs!1321989 (and b!5672014 b!5670704)))

(assert (=> bs!1321989 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 lt!2268141)) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 lt!2268141))) (= lambda!305278 lambda!305174))))

(assert (=> bs!1321976 (not (= lambda!305278 lambda!305155))))

(assert (=> bs!1321973 (not (= lambda!305278 lambda!305266))))

(declare-fun bs!1321990 () Bool)

(assert (= bs!1321990 (and b!5672014 b!5671566)))

(assert (=> bs!1321990 (not (= lambda!305278 lambda!305250))))

(declare-fun bs!1321991 () Bool)

(assert (= bs!1321991 (and b!5672014 b!5672008)))

(assert (=> bs!1321991 (not (= lambda!305278 lambda!305277))))

(declare-fun bs!1321992 () Bool)

(assert (= bs!1321992 (and b!5672014 b!5671993)))

(assert (=> bs!1321992 (not (= lambda!305278 lambda!305274))))

(assert (=> bs!1321983 (= (and (= (regOne!31826 (regTwo!31827 lt!2268120)) (regOne!31826 r!7292)) (= (regTwo!31826 (regTwo!31827 lt!2268120)) (regTwo!31826 r!7292))) (= lambda!305278 lambda!305096))))

(assert (=> bs!1321988 (not (= lambda!305278 lambda!305158))))

(assert (=> b!5672014 true))

(assert (=> b!5672014 true))

(declare-fun e!3491615 () Bool)

(declare-fun call!430321 () Bool)

(assert (=> b!5672008 (= e!3491615 call!430321)))

(declare-fun b!5672009 () Bool)

(declare-fun e!3491616 () Bool)

(declare-fun e!3491619 () Bool)

(assert (=> b!5672009 (= e!3491616 e!3491619)))

(declare-fun res!2396795 () Bool)

(assert (=> b!5672009 (= res!2396795 (not ((_ is EmptyLang!15657) (regTwo!31827 lt!2268120))))))

(assert (=> b!5672009 (=> (not res!2396795) (not e!3491619))))

(declare-fun b!5672010 () Bool)

(declare-fun e!3491618 () Bool)

(assert (=> b!5672010 (= e!3491618 (matchRSpec!2760 (regTwo!31827 (regTwo!31827 lt!2268120)) s!2326))))

(declare-fun b!5672011 () Bool)

(declare-fun c!997759 () Bool)

(assert (=> b!5672011 (= c!997759 ((_ is ElementMatch!15657) (regTwo!31827 lt!2268120)))))

(declare-fun e!3491617 () Bool)

(assert (=> b!5672011 (= e!3491619 e!3491617)))

(declare-fun b!5672012 () Bool)

(declare-fun e!3491620 () Bool)

(declare-fun e!3491621 () Bool)

(assert (=> b!5672012 (= e!3491620 e!3491621)))

(declare-fun c!997758 () Bool)

(assert (=> b!5672012 (= c!997758 ((_ is Star!15657) (regTwo!31827 lt!2268120)))))

(assert (=> b!5672014 (= e!3491621 call!430321)))

(declare-fun b!5672015 () Bool)

(declare-fun call!430322 () Bool)

(assert (=> b!5672015 (= e!3491616 call!430322)))

(declare-fun bm!430316 () Bool)

(assert (=> bm!430316 (= call!430322 (isEmpty!35001 s!2326))))

(declare-fun b!5672016 () Bool)

(declare-fun c!997761 () Bool)

(assert (=> b!5672016 (= c!997761 ((_ is Union!15657) (regTwo!31827 lt!2268120)))))

(assert (=> b!5672016 (= e!3491617 e!3491620)))

(declare-fun bm!430317 () Bool)

(assert (=> bm!430317 (= call!430321 (Exists!2757 (ite c!997758 lambda!305277 lambda!305278)))))

(declare-fun d!1790654 () Bool)

(declare-fun c!997760 () Bool)

(assert (=> d!1790654 (= c!997760 ((_ is EmptyExpr!15657) (regTwo!31827 lt!2268120)))))

(assert (=> d!1790654 (= (matchRSpec!2760 (regTwo!31827 lt!2268120) s!2326) e!3491616)))

(declare-fun b!5672013 () Bool)

(declare-fun res!2396793 () Bool)

(assert (=> b!5672013 (=> res!2396793 e!3491615)))

(assert (=> b!5672013 (= res!2396793 call!430322)))

(assert (=> b!5672013 (= e!3491621 e!3491615)))

(declare-fun b!5672017 () Bool)

(assert (=> b!5672017 (= e!3491617 (= s!2326 (Cons!63147 (c!997231 (regTwo!31827 lt!2268120)) Nil!63147)))))

(declare-fun b!5672018 () Bool)

(assert (=> b!5672018 (= e!3491620 e!3491618)))

(declare-fun res!2396794 () Bool)

(assert (=> b!5672018 (= res!2396794 (matchRSpec!2760 (regOne!31827 (regTwo!31827 lt!2268120)) s!2326))))

(assert (=> b!5672018 (=> res!2396794 e!3491618)))

(assert (= (and d!1790654 c!997760) b!5672015))

(assert (= (and d!1790654 (not c!997760)) b!5672009))

(assert (= (and b!5672009 res!2396795) b!5672011))

(assert (= (and b!5672011 c!997759) b!5672017))

(assert (= (and b!5672011 (not c!997759)) b!5672016))

(assert (= (and b!5672016 c!997761) b!5672018))

(assert (= (and b!5672016 (not c!997761)) b!5672012))

(assert (= (and b!5672018 (not res!2396794)) b!5672010))

(assert (= (and b!5672012 c!997758) b!5672013))

(assert (= (and b!5672012 (not c!997758)) b!5672014))

(assert (= (and b!5672013 (not res!2396793)) b!5672008))

(assert (= (or b!5672008 b!5672014) bm!430317))

(assert (= (or b!5672015 b!5672013) bm!430316))

(declare-fun m!6633250 () Bool)

(assert (=> b!5672010 m!6633250))

(assert (=> bm!430316 m!6631874))

(declare-fun m!6633252 () Bool)

(assert (=> bm!430317 m!6633252))

(declare-fun m!6633254 () Bool)

(assert (=> b!5672018 m!6633254))

(assert (=> b!5670841 d!1790654))

(assert (=> d!1790068 d!1790410))

(assert (=> d!1790068 d!1790282))

(declare-fun d!1790656 () Bool)

(assert (=> d!1790656 true))

(assert (=> d!1790656 true))

(declare-fun res!2396796 () Bool)

(assert (=> d!1790656 (= (choose!42894 lambda!305100) res!2396796)))

(assert (=> d!1790088 d!1790656))

(declare-fun d!1790658 () Bool)

(declare-fun res!2396797 () Bool)

(declare-fun e!3491622 () Bool)

(assert (=> d!1790658 (=> res!2396797 e!3491622)))

(assert (=> d!1790658 (= res!2396797 ((_ is Nil!63146) lt!2268323))))

(assert (=> d!1790658 (= (forall!14810 lt!2268323 lambda!305213) e!3491622)))

(declare-fun b!5672019 () Bool)

(declare-fun e!3491623 () Bool)

(assert (=> b!5672019 (= e!3491622 e!3491623)))

(declare-fun res!2396798 () Bool)

(assert (=> b!5672019 (=> (not res!2396798) (not e!3491623))))

(assert (=> b!5672019 (= res!2396798 (dynLambda!24716 lambda!305213 (h!69594 lt!2268323)))))

(declare-fun b!5672020 () Bool)

(assert (=> b!5672020 (= e!3491623 (forall!14810 (t!376576 lt!2268323) lambda!305213))))

(assert (= (and d!1790658 (not res!2396797)) b!5672019))

(assert (= (and b!5672019 res!2396798) b!5672020))

(declare-fun b_lambda!214535 () Bool)

(assert (=> (not b_lambda!214535) (not b!5672019)))

(declare-fun m!6633256 () Bool)

(assert (=> b!5672019 m!6633256))

(declare-fun m!6633258 () Bool)

(assert (=> b!5672020 m!6633258))

(assert (=> d!1790260 d!1790658))

(declare-fun d!1790660 () Bool)

(declare-fun c!997762 () Bool)

(assert (=> d!1790660 (= c!997762 (isEmpty!35001 (tail!11133 (t!376577 s!2326))))))

(declare-fun e!3491624 () Bool)

(assert (=> d!1790660 (= (matchZipper!1795 (derivationStepZipper!1742 lt!2268133 (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))) e!3491624)))

(declare-fun b!5672021 () Bool)

(assert (=> b!5672021 (= e!3491624 (nullableZipper!1629 (derivationStepZipper!1742 lt!2268133 (head!12038 (t!376577 s!2326)))))))

(declare-fun b!5672022 () Bool)

(assert (=> b!5672022 (= e!3491624 (matchZipper!1795 (derivationStepZipper!1742 (derivationStepZipper!1742 lt!2268133 (head!12038 (t!376577 s!2326))) (head!12038 (tail!11133 (t!376577 s!2326)))) (tail!11133 (tail!11133 (t!376577 s!2326)))))))

(assert (= (and d!1790660 c!997762) b!5672021))

(assert (= (and d!1790660 (not c!997762)) b!5672022))

(assert (=> d!1790660 m!6631650))

(assert (=> d!1790660 m!6632470))

(assert (=> b!5672021 m!6631648))

(declare-fun m!6633260 () Bool)

(assert (=> b!5672021 m!6633260))

(assert (=> b!5672022 m!6631650))

(assert (=> b!5672022 m!6632474))

(assert (=> b!5672022 m!6631648))

(assert (=> b!5672022 m!6632474))

(declare-fun m!6633262 () Bool)

(assert (=> b!5672022 m!6633262))

(assert (=> b!5672022 m!6631650))

(assert (=> b!5672022 m!6632478))

(assert (=> b!5672022 m!6633262))

(assert (=> b!5672022 m!6632478))

(declare-fun m!6633264 () Bool)

(assert (=> b!5672022 m!6633264))

(assert (=> b!5670344 d!1790660))

(declare-fun bs!1321993 () Bool)

(declare-fun d!1790662 () Bool)

(assert (= bs!1321993 (and d!1790662 d!1790434)))

(declare-fun lambda!305279 () Int)

(assert (=> bs!1321993 (= lambda!305279 lambda!305252)))

(declare-fun bs!1321994 () Bool)

(assert (= bs!1321994 (and d!1790662 d!1790406)))

(assert (=> bs!1321994 (= (= (head!12038 (t!376577 s!2326)) (head!12038 s!2326)) (= lambda!305279 lambda!305246))))

(declare-fun bs!1321995 () Bool)

(assert (= bs!1321995 (and d!1790662 d!1790578)))

(assert (=> bs!1321995 (= (= (head!12038 (t!376577 s!2326)) (head!12038 s!2326)) (= lambda!305279 lambda!305271))))

(declare-fun bs!1321996 () Bool)

(assert (= bs!1321996 (and d!1790662 d!1790340)))

(assert (=> bs!1321996 (= lambda!305279 lambda!305228)))

(declare-fun bs!1321997 () Bool)

(assert (= bs!1321997 (and d!1790662 b!5670246)))

(assert (=> bs!1321997 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305279 lambda!305097))))

(declare-fun bs!1321998 () Bool)

(assert (= bs!1321998 (and d!1790662 d!1790256)))

(assert (=> bs!1321998 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305279 lambda!305207))))

(declare-fun bs!1321999 () Bool)

(assert (= bs!1321999 (and d!1790662 d!1790304)))

(assert (=> bs!1321999 (= lambda!305279 lambda!305223)))

(assert (=> d!1790662 true))

(assert (=> d!1790662 (= (derivationStepZipper!1742 lt!2268133 (head!12038 (t!376577 s!2326))) (flatMap!1270 lt!2268133 lambda!305279))))

(declare-fun bs!1322000 () Bool)

(assert (= bs!1322000 d!1790662))

(declare-fun m!6633266 () Bool)

(assert (=> bs!1322000 m!6633266))

(assert (=> b!5670344 d!1790662))

(assert (=> b!5670344 d!1790306))

(assert (=> b!5670344 d!1790308))

(declare-fun d!1790664 () Bool)

(declare-fun c!997763 () Bool)

(assert (=> d!1790664 (= c!997763 (isEmpty!35001 (tail!11133 (t!376577 s!2326))))))

(declare-fun e!3491625 () Bool)

(assert (=> d!1790664 (= (matchZipper!1795 (derivationStepZipper!1742 lt!2268121 (head!12038 (t!376577 s!2326))) (tail!11133 (t!376577 s!2326))) e!3491625)))

(declare-fun b!5672023 () Bool)

(assert (=> b!5672023 (= e!3491625 (nullableZipper!1629 (derivationStepZipper!1742 lt!2268121 (head!12038 (t!376577 s!2326)))))))

(declare-fun b!5672024 () Bool)

(assert (=> b!5672024 (= e!3491625 (matchZipper!1795 (derivationStepZipper!1742 (derivationStepZipper!1742 lt!2268121 (head!12038 (t!376577 s!2326))) (head!12038 (tail!11133 (t!376577 s!2326)))) (tail!11133 (tail!11133 (t!376577 s!2326)))))))

(assert (= (and d!1790664 c!997763) b!5672023))

(assert (= (and d!1790664 (not c!997763)) b!5672024))

(assert (=> d!1790664 m!6631650))

(assert (=> d!1790664 m!6632470))

(assert (=> b!5672023 m!6632366))

(declare-fun m!6633268 () Bool)

(assert (=> b!5672023 m!6633268))

(assert (=> b!5672024 m!6631650))

(assert (=> b!5672024 m!6632474))

(assert (=> b!5672024 m!6632366))

(assert (=> b!5672024 m!6632474))

(declare-fun m!6633270 () Bool)

(assert (=> b!5672024 m!6633270))

(assert (=> b!5672024 m!6631650))

(assert (=> b!5672024 m!6632478))

(assert (=> b!5672024 m!6633270))

(assert (=> b!5672024 m!6632478))

(declare-fun m!6633272 () Bool)

(assert (=> b!5672024 m!6633272))

(assert (=> b!5671146 d!1790664))

(declare-fun bs!1322001 () Bool)

(declare-fun d!1790666 () Bool)

(assert (= bs!1322001 (and d!1790666 d!1790406)))

(declare-fun lambda!305280 () Int)

(assert (=> bs!1322001 (= (= (head!12038 (t!376577 s!2326)) (head!12038 s!2326)) (= lambda!305280 lambda!305246))))

(declare-fun bs!1322002 () Bool)

(assert (= bs!1322002 (and d!1790666 d!1790578)))

(assert (=> bs!1322002 (= (= (head!12038 (t!376577 s!2326)) (head!12038 s!2326)) (= lambda!305280 lambda!305271))))

(declare-fun bs!1322003 () Bool)

(assert (= bs!1322003 (and d!1790666 d!1790340)))

(assert (=> bs!1322003 (= lambda!305280 lambda!305228)))

(declare-fun bs!1322004 () Bool)

(assert (= bs!1322004 (and d!1790666 b!5670246)))

(assert (=> bs!1322004 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305280 lambda!305097))))

(declare-fun bs!1322005 () Bool)

(assert (= bs!1322005 (and d!1790666 d!1790662)))

(assert (=> bs!1322005 (= lambda!305280 lambda!305279)))

(declare-fun bs!1322006 () Bool)

(assert (= bs!1322006 (and d!1790666 d!1790434)))

(assert (=> bs!1322006 (= lambda!305280 lambda!305252)))

(declare-fun bs!1322007 () Bool)

(assert (= bs!1322007 (and d!1790666 d!1790256)))

(assert (=> bs!1322007 (= (= (head!12038 (t!376577 s!2326)) (h!69595 s!2326)) (= lambda!305280 lambda!305207))))

(declare-fun bs!1322008 () Bool)

(assert (= bs!1322008 (and d!1790666 d!1790304)))

(assert (=> bs!1322008 (= lambda!305280 lambda!305223)))

(assert (=> d!1790666 true))

(assert (=> d!1790666 (= (derivationStepZipper!1742 lt!2268121 (head!12038 (t!376577 s!2326))) (flatMap!1270 lt!2268121 lambda!305280))))

(declare-fun bs!1322009 () Bool)

(assert (= bs!1322009 d!1790666))

(declare-fun m!6633274 () Bool)

(assert (=> bs!1322009 m!6633274))

(assert (=> b!5671146 d!1790666))

(assert (=> b!5671146 d!1790306))

(assert (=> b!5671146 d!1790308))

(declare-fun b!5672025 () Bool)

(declare-fun e!3491627 () (InoxSet Context!10082))

(assert (=> b!5672025 (= e!3491627 ((as const (Array Context!10082 Bool)) false))))

(declare-fun bm!430318 () Bool)

(declare-fun call!430328 () (InoxSet Context!10082))

(declare-fun call!430327 () (InoxSet Context!10082))

(assert (=> bm!430318 (= call!430328 call!430327)))

(declare-fun b!5672026 () Bool)

(declare-fun e!3491631 () Bool)

(assert (=> b!5672026 (= e!3491631 (nullable!5689 (regOne!31826 (h!69594 (exprs!5541 lt!2268119)))))))

(declare-fun bm!430319 () Bool)

(declare-fun call!430324 () (InoxSet Context!10082))

(assert (=> bm!430319 (= call!430324 call!430328)))

(declare-fun b!5672027 () Bool)

(assert (=> b!5672027 (= e!3491627 call!430324)))

(declare-fun b!5672028 () Bool)

(declare-fun e!3491629 () (InoxSet Context!10082))

(declare-fun call!430325 () (InoxSet Context!10082))

(assert (=> b!5672028 (= e!3491629 ((_ map or) call!430325 call!430328))))

(declare-fun b!5672029 () Bool)

(declare-fun e!3491626 () (InoxSet Context!10082))

(assert (=> b!5672029 (= e!3491626 (store ((as const (Array Context!10082 Bool)) false) (Context!10083 (t!376576 (exprs!5541 lt!2268119))) true))))

(declare-fun d!1790668 () Bool)

(declare-fun c!997767 () Bool)

(assert (=> d!1790668 (= c!997767 (and ((_ is ElementMatch!15657) (h!69594 (exprs!5541 lt!2268119))) (= (c!997231 (h!69594 (exprs!5541 lt!2268119))) (h!69595 s!2326))))))

(assert (=> d!1790668 (= (derivationStepZipperDown!999 (h!69594 (exprs!5541 lt!2268119)) (Context!10083 (t!376576 (exprs!5541 lt!2268119))) (h!69595 s!2326)) e!3491626)))

(declare-fun b!5672030 () Bool)

(declare-fun e!3491628 () (InoxSet Context!10082))

(assert (=> b!5672030 (= e!3491628 call!430324)))

(declare-fun b!5672031 () Bool)

(declare-fun c!997768 () Bool)

(assert (=> b!5672031 (= c!997768 ((_ is Star!15657) (h!69594 (exprs!5541 lt!2268119))))))

(assert (=> b!5672031 (= e!3491628 e!3491627)))

(declare-fun bm!430320 () Bool)

(declare-fun call!430326 () List!63270)

(declare-fun call!430323 () List!63270)

(assert (=> bm!430320 (= call!430326 call!430323)))

(declare-fun bm!430321 () Bool)

(declare-fun c!997765 () Bool)

(assert (=> bm!430321 (= call!430325 (derivationStepZipperDown!999 (ite c!997765 (regOne!31827 (h!69594 (exprs!5541 lt!2268119))) (regOne!31826 (h!69594 (exprs!5541 lt!2268119)))) (ite c!997765 (Context!10083 (t!376576 (exprs!5541 lt!2268119))) (Context!10083 call!430323)) (h!69595 s!2326)))))

(declare-fun b!5672032 () Bool)

(declare-fun c!997766 () Bool)

(assert (=> b!5672032 (= c!997766 e!3491631)))

(declare-fun res!2396799 () Bool)

(assert (=> b!5672032 (=> (not res!2396799) (not e!3491631))))

(assert (=> b!5672032 (= res!2396799 ((_ is Concat!24502) (h!69594 (exprs!5541 lt!2268119))))))

(declare-fun e!3491630 () (InoxSet Context!10082))

(assert (=> b!5672032 (= e!3491630 e!3491629)))

(declare-fun b!5672033 () Bool)

(assert (=> b!5672033 (= e!3491629 e!3491628)))

(declare-fun c!997764 () Bool)

(assert (=> b!5672033 (= c!997764 ((_ is Concat!24502) (h!69594 (exprs!5541 lt!2268119))))))

(declare-fun b!5672034 () Bool)

(assert (=> b!5672034 (= e!3491630 ((_ map or) call!430325 call!430327))))

(declare-fun bm!430322 () Bool)

(assert (=> bm!430322 (= call!430327 (derivationStepZipperDown!999 (ite c!997765 (regTwo!31827 (h!69594 (exprs!5541 lt!2268119))) (ite c!997766 (regTwo!31826 (h!69594 (exprs!5541 lt!2268119))) (ite c!997764 (regOne!31826 (h!69594 (exprs!5541 lt!2268119))) (reg!15986 (h!69594 (exprs!5541 lt!2268119)))))) (ite (or c!997765 c!997766) (Context!10083 (t!376576 (exprs!5541 lt!2268119))) (Context!10083 call!430326)) (h!69595 s!2326)))))

(declare-fun bm!430323 () Bool)

(assert (=> bm!430323 (= call!430323 ($colon$colon!1695 (exprs!5541 (Context!10083 (t!376576 (exprs!5541 lt!2268119)))) (ite (or c!997766 c!997764) (regTwo!31826 (h!69594 (exprs!5541 lt!2268119))) (h!69594 (exprs!5541 lt!2268119)))))))

(declare-fun b!5672035 () Bool)

(assert (=> b!5672035 (= e!3491626 e!3491630)))

(assert (=> b!5672035 (= c!997765 ((_ is Union!15657) (h!69594 (exprs!5541 lt!2268119))))))

(assert (= (and d!1790668 c!997767) b!5672029))

(assert (= (and d!1790668 (not c!997767)) b!5672035))

(assert (= (and b!5672035 c!997765) b!5672034))

(assert (= (and b!5672035 (not c!997765)) b!5672032))

(assert (= (and b!5672032 res!2396799) b!5672026))

(assert (= (and b!5672032 c!997766) b!5672028))

(assert (= (and b!5672032 (not c!997766)) b!5672033))

(assert (= (and b!5672033 c!997764) b!5672030))

(assert (= (and b!5672033 (not c!997764)) b!5672031))

(assert (= (and b!5672031 c!997768) b!5672027))

(assert (= (and b!5672031 (not c!997768)) b!5672025))

(assert (= (or b!5672030 b!5672027) bm!430320))

(assert (= (or b!5672030 b!5672027) bm!430319))

(assert (= (or b!5672028 bm!430320) bm!430323))

(assert (= (or b!5672028 bm!430319) bm!430318))

(assert (= (or b!5672034 bm!430318) bm!430322))

(assert (= (or b!5672034 b!5672028) bm!430321))

(declare-fun m!6633276 () Bool)

(assert (=> bm!430322 m!6633276))

(declare-fun m!6633278 () Bool)

(assert (=> bm!430321 m!6633278))

(declare-fun m!6633280 () Bool)

(assert (=> b!5672026 m!6633280))

(declare-fun m!6633282 () Bool)

(assert (=> bm!430323 m!6633282))

(declare-fun m!6633284 () Bool)

(assert (=> b!5672029 m!6633284))

(assert (=> bm!430162 d!1790668))

(declare-fun d!1790670 () Bool)

(declare-fun res!2396804 () Bool)

(declare-fun e!3491636 () Bool)

(assert (=> d!1790670 (=> res!2396804 e!3491636)))

(assert (=> d!1790670 (= res!2396804 ((_ is Nil!63148) lt!2268316))))

(assert (=> d!1790670 (= (noDuplicate!1608 lt!2268316) e!3491636)))

(declare-fun b!5672040 () Bool)

(declare-fun e!3491637 () Bool)

(assert (=> b!5672040 (= e!3491636 e!3491637)))

(declare-fun res!2396805 () Bool)

(assert (=> b!5672040 (=> (not res!2396805) (not e!3491637))))

(declare-fun contains!19839 (List!63272 Context!10082) Bool)

(assert (=> b!5672040 (= res!2396805 (not (contains!19839 (t!376578 lt!2268316) (h!69596 lt!2268316))))))

(declare-fun b!5672041 () Bool)

(assert (=> b!5672041 (= e!3491637 (noDuplicate!1608 (t!376578 lt!2268316)))))

(assert (= (and d!1790670 (not res!2396804)) b!5672040))

(assert (= (and b!5672040 res!2396805) b!5672041))

(declare-fun m!6633286 () Bool)

(assert (=> b!5672040 m!6633286))

(declare-fun m!6633288 () Bool)

(assert (=> b!5672041 m!6633288))

(assert (=> d!1790248 d!1790670))

(declare-fun d!1790672 () Bool)

(declare-fun e!3491645 () Bool)

(assert (=> d!1790672 e!3491645))

(declare-fun res!2396810 () Bool)

(assert (=> d!1790672 (=> (not res!2396810) (not e!3491645))))

(declare-fun res!2396811 () List!63272)

(assert (=> d!1790672 (= res!2396810 (noDuplicate!1608 res!2396811))))

(declare-fun e!3491644 () Bool)

(assert (=> d!1790672 e!3491644))

(assert (=> d!1790672 (= (choose!42905 z!1189) res!2396811)))

(declare-fun b!5672049 () Bool)

(declare-fun e!3491646 () Bool)

(declare-fun tp!1573207 () Bool)

(assert (=> b!5672049 (= e!3491646 tp!1573207)))

(declare-fun b!5672048 () Bool)

(declare-fun tp!1573208 () Bool)

(assert (=> b!5672048 (= e!3491644 (and (inv!82389 (h!69596 res!2396811)) e!3491646 tp!1573208))))

(declare-fun b!5672050 () Bool)

(assert (=> b!5672050 (= e!3491645 (= (content!11433 res!2396811) z!1189))))

(assert (= b!5672048 b!5672049))

(assert (= (and d!1790672 ((_ is Cons!63148) res!2396811)) b!5672048))

(assert (= (and d!1790672 res!2396810) b!5672050))

(declare-fun m!6633290 () Bool)

(assert (=> d!1790672 m!6633290))

(declare-fun m!6633292 () Bool)

(assert (=> b!5672048 m!6633292))

(declare-fun m!6633294 () Bool)

(assert (=> b!5672050 m!6633294))

(assert (=> d!1790248 d!1790672))

(declare-fun d!1790674 () Bool)

(assert (=> d!1790674 (= (head!12039 lt!2268127) (h!69594 lt!2268127))))

(assert (=> b!5670866 d!1790674))

(declare-fun b!5672051 () Bool)

(declare-fun res!2396812 () Bool)

(declare-fun e!3491651 () Bool)

(assert (=> b!5672051 (=> (not res!2396812) (not e!3491651))))

(declare-fun call!430329 () Bool)

(assert (=> b!5672051 (= res!2396812 (not call!430329))))

(declare-fun b!5672052 () Bool)

(declare-fun e!3491649 () Bool)

(declare-fun e!3491650 () Bool)

(assert (=> b!5672052 (= e!3491649 e!3491650)))

(declare-fun c!997769 () Bool)

(assert (=> b!5672052 (= c!997769 ((_ is EmptyLang!15657) (regTwo!31826 r!7292)))))

(declare-fun b!5672053 () Bool)

(declare-fun e!3491647 () Bool)

(assert (=> b!5672053 (= e!3491647 (matchR!7842 (derivativeStep!4482 (regTwo!31826 r!7292) (head!12038 (_2!36057 (get!21758 lt!2268207)))) (tail!11133 (_2!36057 (get!21758 lt!2268207)))))))

(declare-fun b!5672054 () Bool)

(assert (=> b!5672054 (= e!3491647 (nullable!5689 (regTwo!31826 r!7292)))))

(declare-fun bm!430324 () Bool)

(assert (=> bm!430324 (= call!430329 (isEmpty!35001 (_2!36057 (get!21758 lt!2268207))))))

(declare-fun b!5672055 () Bool)

(declare-fun res!2396813 () Bool)

(assert (=> b!5672055 (=> (not res!2396813) (not e!3491651))))

(assert (=> b!5672055 (= res!2396813 (isEmpty!35001 (tail!11133 (_2!36057 (get!21758 lt!2268207)))))))

(declare-fun b!5672056 () Bool)

(declare-fun e!3491652 () Bool)

(declare-fun e!3491648 () Bool)

(assert (=> b!5672056 (= e!3491652 e!3491648)))

(declare-fun res!2396817 () Bool)

(assert (=> b!5672056 (=> (not res!2396817) (not e!3491648))))

(declare-fun lt!2268405 () Bool)

(assert (=> b!5672056 (= res!2396817 (not lt!2268405))))

(declare-fun b!5672057 () Bool)

(declare-fun e!3491653 () Bool)

(assert (=> b!5672057 (= e!3491648 e!3491653)))

(declare-fun res!2396815 () Bool)

(assert (=> b!5672057 (=> res!2396815 e!3491653)))

(assert (=> b!5672057 (= res!2396815 call!430329)))

(declare-fun d!1790676 () Bool)

(assert (=> d!1790676 e!3491649))

(declare-fun c!997770 () Bool)

(assert (=> d!1790676 (= c!997770 ((_ is EmptyExpr!15657) (regTwo!31826 r!7292)))))

(assert (=> d!1790676 (= lt!2268405 e!3491647)))

(declare-fun c!997771 () Bool)

(assert (=> d!1790676 (= c!997771 (isEmpty!35001 (_2!36057 (get!21758 lt!2268207))))))

(assert (=> d!1790676 (validRegex!7393 (regTwo!31826 r!7292))))

(assert (=> d!1790676 (= (matchR!7842 (regTwo!31826 r!7292) (_2!36057 (get!21758 lt!2268207))) lt!2268405)))

(declare-fun b!5672058 () Bool)

(assert (=> b!5672058 (= e!3491653 (not (= (head!12038 (_2!36057 (get!21758 lt!2268207))) (c!997231 (regTwo!31826 r!7292)))))))

(declare-fun b!5672059 () Bool)

(declare-fun res!2396814 () Bool)

(assert (=> b!5672059 (=> res!2396814 e!3491652)))

(assert (=> b!5672059 (= res!2396814 e!3491651)))

(declare-fun res!2396816 () Bool)

(assert (=> b!5672059 (=> (not res!2396816) (not e!3491651))))

(assert (=> b!5672059 (= res!2396816 lt!2268405)))

(declare-fun b!5672060 () Bool)

(assert (=> b!5672060 (= e!3491650 (not lt!2268405))))

(declare-fun b!5672061 () Bool)

(assert (=> b!5672061 (= e!3491649 (= lt!2268405 call!430329))))

(declare-fun b!5672062 () Bool)

(declare-fun res!2396819 () Bool)

(assert (=> b!5672062 (=> res!2396819 e!3491653)))

(assert (=> b!5672062 (= res!2396819 (not (isEmpty!35001 (tail!11133 (_2!36057 (get!21758 lt!2268207))))))))

(declare-fun b!5672063 () Bool)

(assert (=> b!5672063 (= e!3491651 (= (head!12038 (_2!36057 (get!21758 lt!2268207))) (c!997231 (regTwo!31826 r!7292))))))

(declare-fun b!5672064 () Bool)

(declare-fun res!2396818 () Bool)

(assert (=> b!5672064 (=> res!2396818 e!3491652)))

(assert (=> b!5672064 (= res!2396818 (not ((_ is ElementMatch!15657) (regTwo!31826 r!7292))))))

(assert (=> b!5672064 (= e!3491650 e!3491652)))

(assert (= (and d!1790676 c!997771) b!5672054))

(assert (= (and d!1790676 (not c!997771)) b!5672053))

(assert (= (and d!1790676 c!997770) b!5672061))

(assert (= (and d!1790676 (not c!997770)) b!5672052))

(assert (= (and b!5672052 c!997769) b!5672060))

(assert (= (and b!5672052 (not c!997769)) b!5672064))

(assert (= (and b!5672064 (not res!2396818)) b!5672059))

(assert (= (and b!5672059 res!2396816) b!5672051))

(assert (= (and b!5672051 res!2396812) b!5672055))

(assert (= (and b!5672055 res!2396813) b!5672063))

(assert (= (and b!5672059 (not res!2396814)) b!5672056))

(assert (= (and b!5672056 res!2396817) b!5672057))

(assert (= (and b!5672057 (not res!2396815)) b!5672062))

(assert (= (and b!5672062 (not res!2396819)) b!5672058))

(assert (= (or b!5672061 b!5672051 b!5672057) bm!430324))

(declare-fun m!6633296 () Bool)

(assert (=> b!5672055 m!6633296))

(assert (=> b!5672055 m!6633296))

(declare-fun m!6633298 () Bool)

(assert (=> b!5672055 m!6633298))

(assert (=> b!5672062 m!6633296))

(assert (=> b!5672062 m!6633296))

(assert (=> b!5672062 m!6633298))

(declare-fun m!6633300 () Bool)

(assert (=> d!1790676 m!6633300))

(assert (=> d!1790676 m!6632942))

(declare-fun m!6633302 () Bool)

(assert (=> b!5672063 m!6633302))

(assert (=> b!5672053 m!6633302))

(assert (=> b!5672053 m!6633302))

(declare-fun m!6633304 () Bool)

(assert (=> b!5672053 m!6633304))

(assert (=> b!5672053 m!6633296))

(assert (=> b!5672053 m!6633304))

(assert (=> b!5672053 m!6633296))

(declare-fun m!6633306 () Bool)

(assert (=> b!5672053 m!6633306))

(assert (=> b!5672054 m!6632948))

(assert (=> b!5672058 m!6633302))

(assert (=> bm!430324 m!6633300))

(assert (=> b!5670421 d!1790676))

(assert (=> b!5670421 d!1790504))

(declare-fun d!1790678 () Bool)

(assert (=> d!1790678 (= (isConcat!710 lt!2268277) ((_ is Concat!24502) lt!2268277))))

(assert (=> b!5670780 d!1790678))

(declare-fun b!5672065 () Bool)

(declare-fun e!3491660 () Bool)

(declare-fun e!3491657 () Bool)

(assert (=> b!5672065 (= e!3491660 e!3491657)))

(declare-fun res!2396820 () Bool)

(assert (=> b!5672065 (= res!2396820 (not (nullable!5689 (reg!15986 lt!2268320))))))

(assert (=> b!5672065 (=> (not res!2396820) (not e!3491657))))

(declare-fun b!5672066 () Bool)

(declare-fun e!3491656 () Bool)

(declare-fun call!430330 () Bool)

(assert (=> b!5672066 (= e!3491656 call!430330)))

(declare-fun bm!430325 () Bool)

(declare-fun c!997773 () Bool)

(assert (=> bm!430325 (= call!430330 (validRegex!7393 (ite c!997773 (regTwo!31827 lt!2268320) (regTwo!31826 lt!2268320))))))

(declare-fun bm!430326 () Bool)

(declare-fun call!430332 () Bool)

(declare-fun call!430331 () Bool)

(assert (=> bm!430326 (= call!430332 call!430331)))

(declare-fun d!1790680 () Bool)

(declare-fun res!2396824 () Bool)

(declare-fun e!3491659 () Bool)

(assert (=> d!1790680 (=> res!2396824 e!3491659)))

(assert (=> d!1790680 (= res!2396824 ((_ is ElementMatch!15657) lt!2268320))))

(assert (=> d!1790680 (= (validRegex!7393 lt!2268320) e!3491659)))

(declare-fun b!5672067 () Bool)

(declare-fun res!2396821 () Bool)

(declare-fun e!3491658 () Bool)

(assert (=> b!5672067 (=> (not res!2396821) (not e!3491658))))

(assert (=> b!5672067 (= res!2396821 call!430332)))

(declare-fun e!3491654 () Bool)

(assert (=> b!5672067 (= e!3491654 e!3491658)))

(declare-fun b!5672068 () Bool)

(declare-fun res!2396823 () Bool)

(declare-fun e!3491655 () Bool)

(assert (=> b!5672068 (=> res!2396823 e!3491655)))

(assert (=> b!5672068 (= res!2396823 (not ((_ is Concat!24502) lt!2268320)))))

(assert (=> b!5672068 (= e!3491654 e!3491655)))

(declare-fun b!5672069 () Bool)

(assert (=> b!5672069 (= e!3491660 e!3491654)))

(assert (=> b!5672069 (= c!997773 ((_ is Union!15657) lt!2268320))))

(declare-fun b!5672070 () Bool)

(assert (=> b!5672070 (= e!3491657 call!430331)))

(declare-fun b!5672071 () Bool)

(assert (=> b!5672071 (= e!3491659 e!3491660)))

(declare-fun c!997772 () Bool)

(assert (=> b!5672071 (= c!997772 ((_ is Star!15657) lt!2268320))))

(declare-fun b!5672072 () Bool)

(assert (=> b!5672072 (= e!3491655 e!3491656)))

(declare-fun res!2396822 () Bool)

(assert (=> b!5672072 (=> (not res!2396822) (not e!3491656))))

(assert (=> b!5672072 (= res!2396822 call!430332)))

(declare-fun b!5672073 () Bool)

(assert (=> b!5672073 (= e!3491658 call!430330)))

(declare-fun bm!430327 () Bool)

(assert (=> bm!430327 (= call!430331 (validRegex!7393 (ite c!997772 (reg!15986 lt!2268320) (ite c!997773 (regOne!31827 lt!2268320) (regOne!31826 lt!2268320)))))))

(assert (= (and d!1790680 (not res!2396824)) b!5672071))

(assert (= (and b!5672071 c!997772) b!5672065))

(assert (= (and b!5672071 (not c!997772)) b!5672069))

(assert (= (and b!5672065 res!2396820) b!5672070))

(assert (= (and b!5672069 c!997773) b!5672067))

(assert (= (and b!5672069 (not c!997773)) b!5672068))

(assert (= (and b!5672067 res!2396821) b!5672073))

(assert (= (and b!5672068 (not res!2396823)) b!5672072))

(assert (= (and b!5672072 res!2396822) b!5672066))

(assert (= (or b!5672073 b!5672066) bm!430325))

(assert (= (or b!5672067 b!5672072) bm!430326))

(assert (= (or b!5672070 bm!430326) bm!430327))

(declare-fun m!6633308 () Bool)

(assert (=> b!5672065 m!6633308))

(declare-fun m!6633310 () Bool)

(assert (=> bm!430325 m!6633310))

(declare-fun m!6633312 () Bool)

(assert (=> bm!430327 m!6633312))

(assert (=> d!1790258 d!1790680))

(declare-fun d!1790682 () Bool)

(declare-fun res!2396825 () Bool)

(declare-fun e!3491661 () Bool)

(assert (=> d!1790682 (=> res!2396825 e!3491661)))

(assert (=> d!1790682 (= res!2396825 ((_ is Nil!63146) (unfocusZipperList!1085 zl!343)))))

(assert (=> d!1790682 (= (forall!14810 (unfocusZipperList!1085 zl!343) lambda!305210) e!3491661)))

(declare-fun b!5672074 () Bool)

(declare-fun e!3491662 () Bool)

(assert (=> b!5672074 (= e!3491661 e!3491662)))

(declare-fun res!2396826 () Bool)

(assert (=> b!5672074 (=> (not res!2396826) (not e!3491662))))

(assert (=> b!5672074 (= res!2396826 (dynLambda!24716 lambda!305210 (h!69594 (unfocusZipperList!1085 zl!343))))))

(declare-fun b!5672075 () Bool)

(assert (=> b!5672075 (= e!3491662 (forall!14810 (t!376576 (unfocusZipperList!1085 zl!343)) lambda!305210))))

(assert (= (and d!1790682 (not res!2396825)) b!5672074))

(assert (= (and b!5672074 res!2396826) b!5672075))

(declare-fun b_lambda!214537 () Bool)

(assert (=> (not b_lambda!214537) (not b!5672074)))

(declare-fun m!6633314 () Bool)

(assert (=> b!5672074 m!6633314))

(declare-fun m!6633316 () Bool)

(assert (=> b!5672075 m!6633316))

(assert (=> d!1790258 d!1790682))

(declare-fun d!1790684 () Bool)

(assert (=> d!1790684 (= (isEmpty!35002 (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) Nil!63147 s!2326 s!2326)) (not ((_ is Some!15665) (findConcatSeparation!2080 (regOne!31826 r!7292) (regTwo!31826 r!7292) Nil!63147 s!2326 s!2326))))))

(assert (=> d!1790054 d!1790684))

(declare-fun bs!1322010 () Bool)

(declare-fun d!1790686 () Bool)

(assert (= bs!1322010 (and d!1790686 d!1790330)))

(declare-fun lambda!305281 () Int)

(assert (=> bs!1322010 (= lambda!305281 lambda!305227)))

(declare-fun bs!1322011 () Bool)

(assert (= bs!1322011 (and d!1790686 b!5671425)))

(assert (=> bs!1322011 (not (= lambda!305281 lambda!305230))))

(declare-fun bs!1322012 () Bool)

(assert (= bs!1322012 (and d!1790686 b!5671698)))

(assert (=> bs!1322012 (not (= lambda!305281 lambda!305263))))

(declare-fun bs!1322013 () Bool)

(assert (= bs!1322013 (and d!1790686 d!1790636)))

(assert (=> bs!1322013 (= lambda!305281 lambda!305273)))

(declare-fun bs!1322014 () Bool)

(assert (= bs!1322014 (and d!1790686 d!1790286)))

(assert (=> bs!1322014 (= lambda!305281 lambda!305216)))

(declare-fun bs!1322015 () Bool)

(assert (= bs!1322015 (and d!1790686 b!5670286)))

(assert (=> bs!1322015 (not (= lambda!305281 lambda!305110))))

(declare-fun bs!1322016 () Bool)

(assert (= bs!1322016 (and d!1790686 b!5670291)))

(assert (=> bs!1322016 (not (= lambda!305281 lambda!305113))))

(declare-fun bs!1322017 () Bool)

(assert (= bs!1322017 (and d!1790686 d!1790560)))

(assert (=> bs!1322017 (= lambda!305281 lambda!305268)))

(declare-fun bs!1322018 () Bool)

(assert (= bs!1322018 (and d!1790686 b!5671696)))

(assert (=> bs!1322018 (not (= lambda!305281 lambda!305262))))

(declare-fun bs!1322019 () Bool)

(assert (= bs!1322019 (and d!1790686 d!1790492)))

(assert (=> bs!1322019 (not (= lambda!305281 lambda!305258))))

(declare-fun bs!1322020 () Bool)

(assert (= bs!1322020 (and d!1790686 d!1790568)))

(assert (=> bs!1322020 (= lambda!305281 lambda!305269)))

(declare-fun bs!1322021 () Bool)

(assert (= bs!1322021 (and d!1790686 b!5670289)))

(assert (=> bs!1322021 (not (= lambda!305281 lambda!305112))))

(declare-fun bs!1322022 () Bool)

(assert (= bs!1322022 (and d!1790686 d!1790462)))

(assert (=> bs!1322022 (= lambda!305281 lambda!305253)))

(declare-fun bs!1322023 () Bool)

(assert (= bs!1322023 (and d!1790686 b!5670284)))

(assert (=> bs!1322023 (not (= lambda!305281 lambda!305109))))

(declare-fun bs!1322024 () Bool)

(assert (= bs!1322024 (and d!1790686 b!5671427)))

(assert (=> bs!1322024 (not (= lambda!305281 lambda!305231))))

(declare-fun bs!1322025 () Bool)

(assert (= bs!1322025 (and d!1790686 d!1790356)))

(assert (=> bs!1322025 (not (= lambda!305281 lambda!305234))))

(assert (=> d!1790686 (= (nullableZipper!1629 lt!2268130) (exists!2203 lt!2268130 lambda!305281))))

(declare-fun bs!1322026 () Bool)

(assert (= bs!1322026 d!1790686))

(declare-fun m!6633318 () Bool)

(assert (=> bs!1322026 m!6633318))

(assert (=> b!5670347 d!1790686))

(declare-fun d!1790688 () Bool)

(assert (=> d!1790688 (= (isDefined!12369 lt!2268288) (not (isEmpty!35002 lt!2268288)))))

(declare-fun bs!1322027 () Bool)

(assert (= bs!1322027 d!1790688))

(declare-fun m!6633320 () Bool)

(assert (=> bs!1322027 m!6633320))

(assert (=> d!1790178 d!1790688))

(declare-fun b!5672076 () Bool)

(declare-fun res!2396827 () Bool)

(declare-fun e!3491667 () Bool)

(assert (=> b!5672076 (=> (not res!2396827) (not e!3491667))))

(declare-fun call!430333 () Bool)

(assert (=> b!5672076 (= res!2396827 (not call!430333))))

(declare-fun b!5672077 () Bool)

(declare-fun e!3491665 () Bool)

(declare-fun e!3491666 () Bool)

(assert (=> b!5672077 (= e!3491665 e!3491666)))

(declare-fun c!997774 () Bool)

(assert (=> b!5672077 (= c!997774 ((_ is EmptyLang!15657) (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun b!5672078 () Bool)

(declare-fun e!3491663 () Bool)

(assert (=> b!5672078 (= e!3491663 (matchR!7842 (derivativeStep!4482 (regOne!31826 (regOne!31826 r!7292)) (head!12038 Nil!63147)) (tail!11133 Nil!63147)))))

(declare-fun b!5672079 () Bool)

(assert (=> b!5672079 (= e!3491663 (nullable!5689 (regOne!31826 (regOne!31826 r!7292))))))

(declare-fun bm!430328 () Bool)

(assert (=> bm!430328 (= call!430333 (isEmpty!35001 Nil!63147))))

(declare-fun b!5672080 () Bool)

(declare-fun res!2396828 () Bool)

(assert (=> b!5672080 (=> (not res!2396828) (not e!3491667))))

(assert (=> b!5672080 (= res!2396828 (isEmpty!35001 (tail!11133 Nil!63147)))))

(declare-fun b!5672081 () Bool)

(declare-fun e!3491668 () Bool)

(declare-fun e!3491664 () Bool)

(assert (=> b!5672081 (= e!3491668 e!3491664)))

(declare-fun res!2396832 () Bool)

(assert (=> b!5672081 (=> (not res!2396832) (not e!3491664))))

(declare-fun lt!2268406 () Bool)

(assert (=> b!5672081 (= res!2396832 (not lt!2268406))))

(declare-fun b!5672082 () Bool)

(declare-fun e!3491669 () Bool)

(assert (=> b!5672082 (= e!3491664 e!3491669)))

(declare-fun res!2396830 () Bool)

(assert (=> b!5672082 (=> res!2396830 e!3491669)))

(assert (=> b!5672082 (= res!2396830 call!430333)))

(declare-fun d!1790690 () Bool)

(assert (=> d!1790690 e!3491665))

(declare-fun c!997775 () Bool)

(assert (=> d!1790690 (= c!997775 ((_ is EmptyExpr!15657) (regOne!31826 (regOne!31826 r!7292))))))

(assert (=> d!1790690 (= lt!2268406 e!3491663)))

(declare-fun c!997776 () Bool)

(assert (=> d!1790690 (= c!997776 (isEmpty!35001 Nil!63147))))

(assert (=> d!1790690 (validRegex!7393 (regOne!31826 (regOne!31826 r!7292)))))

(assert (=> d!1790690 (= (matchR!7842 (regOne!31826 (regOne!31826 r!7292)) Nil!63147) lt!2268406)))

(declare-fun b!5672083 () Bool)

(assert (=> b!5672083 (= e!3491669 (not (= (head!12038 Nil!63147) (c!997231 (regOne!31826 (regOne!31826 r!7292))))))))

(declare-fun b!5672084 () Bool)

(declare-fun res!2396829 () Bool)

(assert (=> b!5672084 (=> res!2396829 e!3491668)))

(assert (=> b!5672084 (= res!2396829 e!3491667)))

(declare-fun res!2396831 () Bool)

(assert (=> b!5672084 (=> (not res!2396831) (not e!3491667))))

(assert (=> b!5672084 (= res!2396831 lt!2268406)))

(declare-fun b!5672085 () Bool)

(assert (=> b!5672085 (= e!3491666 (not lt!2268406))))

(declare-fun b!5672086 () Bool)

(assert (=> b!5672086 (= e!3491665 (= lt!2268406 call!430333))))

(declare-fun b!5672087 () Bool)

(declare-fun res!2396834 () Bool)

(assert (=> b!5672087 (=> res!2396834 e!3491669)))

(assert (=> b!5672087 (= res!2396834 (not (isEmpty!35001 (tail!11133 Nil!63147))))))

(declare-fun b!5672088 () Bool)

(assert (=> b!5672088 (= e!3491667 (= (head!12038 Nil!63147) (c!997231 (regOne!31826 (regOne!31826 r!7292)))))))

(declare-fun b!5672089 () Bool)

(declare-fun res!2396833 () Bool)

(assert (=> b!5672089 (=> res!2396833 e!3491668)))

(assert (=> b!5672089 (= res!2396833 (not ((_ is ElementMatch!15657) (regOne!31826 (regOne!31826 r!7292)))))))

(assert (=> b!5672089 (= e!3491666 e!3491668)))

(assert (= (and d!1790690 c!997776) b!5672079))

(assert (= (and d!1790690 (not c!997776)) b!5672078))

(assert (= (and d!1790690 c!997775) b!5672086))

(assert (= (and d!1790690 (not c!997775)) b!5672077))

(assert (= (and b!5672077 c!997774) b!5672085))

(assert (= (and b!5672077 (not c!997774)) b!5672089))

(assert (= (and b!5672089 (not res!2396833)) b!5672084))

(assert (= (and b!5672084 res!2396831) b!5672076))

(assert (= (and b!5672076 res!2396827) b!5672080))

(assert (= (and b!5672080 res!2396828) b!5672088))

(assert (= (and b!5672084 (not res!2396829)) b!5672081))

(assert (= (and b!5672081 res!2396832) b!5672082))

(assert (= (and b!5672082 (not res!2396830)) b!5672087))

(assert (= (and b!5672087 (not res!2396834)) b!5672083))

(assert (= (or b!5672086 b!5672076 b!5672082) bm!430328))

(assert (=> b!5672080 m!6632494))

(assert (=> b!5672080 m!6632494))

(assert (=> b!5672080 m!6632496))

(assert (=> b!5672087 m!6632494))

(assert (=> b!5672087 m!6632494))

(assert (=> b!5672087 m!6632496))

(assert (=> d!1790690 m!6632498))

(assert (=> d!1790690 m!6631890))

(assert (=> b!5672088 m!6632500))

(assert (=> b!5672078 m!6632500))

(assert (=> b!5672078 m!6632500))

(declare-fun m!6633322 () Bool)

(assert (=> b!5672078 m!6633322))

(assert (=> b!5672078 m!6632494))

(assert (=> b!5672078 m!6633322))

(assert (=> b!5672078 m!6632494))

(declare-fun m!6633324 () Bool)

(assert (=> b!5672078 m!6633324))

(assert (=> b!5672079 m!6631492))

(assert (=> b!5672083 m!6632500))

(assert (=> bm!430328 m!6632498))

(assert (=> d!1790178 d!1790690))

(assert (=> d!1790178 d!1790488))

(assert (=> b!5670881 d!1790688))

(assert (=> b!5670939 d!1790182))

(assert (=> b!5671068 d!1790346))

(declare-fun d!1790692 () Bool)

(assert (=> d!1790692 (= ($colon$colon!1695 (exprs!5541 (Context!10083 lt!2268152)) (ite (or c!997506 c!997504) (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 r!7292)))) (Cons!63146 (ite (or c!997506 c!997504) (regTwo!31826 (regOne!31826 (regOne!31826 r!7292))) (regOne!31826 (regOne!31826 r!7292))) (exprs!5541 (Context!10083 lt!2268152))))))

(assert (=> bm!430161 d!1790692))

(declare-fun b!5672090 () Bool)

(declare-fun e!3491670 () Bool)

(assert (=> b!5672090 (= e!3491670 tp_is_empty!40567)))

(assert (=> b!5671267 (= tp!1573184 e!3491670)))

(declare-fun b!5672092 () Bool)

(declare-fun tp!1573210 () Bool)

(assert (=> b!5672092 (= e!3491670 tp!1573210)))

(declare-fun b!5672093 () Bool)

(declare-fun tp!1573209 () Bool)

(declare-fun tp!1573212 () Bool)

(assert (=> b!5672093 (= e!3491670 (and tp!1573209 tp!1573212))))

(declare-fun b!5672091 () Bool)

(declare-fun tp!1573211 () Bool)

(declare-fun tp!1573213 () Bool)

(assert (=> b!5672091 (= e!3491670 (and tp!1573211 tp!1573213))))

(assert (= (and b!5671267 ((_ is ElementMatch!15657) (regOne!31827 (reg!15986 r!7292)))) b!5672090))

(assert (= (and b!5671267 ((_ is Concat!24502) (regOne!31827 (reg!15986 r!7292)))) b!5672091))

(assert (= (and b!5671267 ((_ is Star!15657) (regOne!31827 (reg!15986 r!7292)))) b!5672092))

(assert (= (and b!5671267 ((_ is Union!15657) (regOne!31827 (reg!15986 r!7292)))) b!5672093))

(declare-fun b!5672094 () Bool)

(declare-fun e!3491671 () Bool)

(assert (=> b!5672094 (= e!3491671 tp_is_empty!40567)))

(assert (=> b!5671267 (= tp!1573187 e!3491671)))

(declare-fun b!5672096 () Bool)

(declare-fun tp!1573215 () Bool)

(assert (=> b!5672096 (= e!3491671 tp!1573215)))

(declare-fun b!5672097 () Bool)

(declare-fun tp!1573214 () Bool)

(declare-fun tp!1573217 () Bool)

(assert (=> b!5672097 (= e!3491671 (and tp!1573214 tp!1573217))))

(declare-fun b!5672095 () Bool)

(declare-fun tp!1573216 () Bool)

(declare-fun tp!1573218 () Bool)

(assert (=> b!5672095 (= e!3491671 (and tp!1573216 tp!1573218))))

(assert (= (and b!5671267 ((_ is ElementMatch!15657) (regTwo!31827 (reg!15986 r!7292)))) b!5672094))

(assert (= (and b!5671267 ((_ is Concat!24502) (regTwo!31827 (reg!15986 r!7292)))) b!5672095))

(assert (= (and b!5671267 ((_ is Star!15657) (regTwo!31827 (reg!15986 r!7292)))) b!5672096))

(assert (= (and b!5671267 ((_ is Union!15657) (regTwo!31827 (reg!15986 r!7292)))) b!5672097))

(declare-fun b!5672098 () Bool)

(declare-fun e!3491672 () Bool)

(assert (=> b!5672098 (= e!3491672 tp_is_empty!40567)))

(assert (=> b!5671266 (= tp!1573185 e!3491672)))

(declare-fun b!5672100 () Bool)

(declare-fun tp!1573220 () Bool)

(assert (=> b!5672100 (= e!3491672 tp!1573220)))

(declare-fun b!5672101 () Bool)

(declare-fun tp!1573219 () Bool)

(declare-fun tp!1573222 () Bool)

(assert (=> b!5672101 (= e!3491672 (and tp!1573219 tp!1573222))))

(declare-fun b!5672099 () Bool)

(declare-fun tp!1573221 () Bool)

(declare-fun tp!1573223 () Bool)

(assert (=> b!5672099 (= e!3491672 (and tp!1573221 tp!1573223))))

(assert (= (and b!5671266 ((_ is ElementMatch!15657) (reg!15986 (reg!15986 r!7292)))) b!5672098))

(assert (= (and b!5671266 ((_ is Concat!24502) (reg!15986 (reg!15986 r!7292)))) b!5672099))

(assert (= (and b!5671266 ((_ is Star!15657) (reg!15986 (reg!15986 r!7292)))) b!5672100))

(assert (= (and b!5671266 ((_ is Union!15657) (reg!15986 (reg!15986 r!7292)))) b!5672101))

(declare-fun b!5672102 () Bool)

(declare-fun e!3491673 () Bool)

(declare-fun tp!1573224 () Bool)

(declare-fun tp!1573225 () Bool)

(assert (=> b!5672102 (= e!3491673 (and tp!1573224 tp!1573225))))

(assert (=> b!5671275 (= tp!1573193 e!3491673)))

(assert (= (and b!5671275 ((_ is Cons!63146) (exprs!5541 (h!69596 (t!376578 zl!343))))) b!5672102))

(declare-fun b!5672104 () Bool)

(declare-fun e!3491675 () Bool)

(declare-fun tp!1573226 () Bool)

(assert (=> b!5672104 (= e!3491675 tp!1573226)))

(declare-fun e!3491674 () Bool)

(declare-fun tp!1573227 () Bool)

(declare-fun b!5672103 () Bool)

(assert (=> b!5672103 (= e!3491674 (and (inv!82389 (h!69596 (t!376578 (t!376578 zl!343)))) e!3491675 tp!1573227))))

(assert (=> b!5671274 (= tp!1573194 e!3491674)))

(assert (= b!5672103 b!5672104))

(assert (= (and b!5671274 ((_ is Cons!63148) (t!376578 (t!376578 zl!343)))) b!5672103))

(declare-fun m!6633326 () Bool)

(assert (=> b!5672103 m!6633326))

(declare-fun b!5672105 () Bool)

(declare-fun e!3491676 () Bool)

(assert (=> b!5672105 (= e!3491676 tp_is_empty!40567)))

(assert (=> b!5671239 (= tp!1573154 e!3491676)))

(declare-fun b!5672107 () Bool)

(declare-fun tp!1573229 () Bool)

(assert (=> b!5672107 (= e!3491676 tp!1573229)))

(declare-fun b!5672108 () Bool)

(declare-fun tp!1573228 () Bool)

(declare-fun tp!1573231 () Bool)

(assert (=> b!5672108 (= e!3491676 (and tp!1573228 tp!1573231))))

(declare-fun b!5672106 () Bool)

(declare-fun tp!1573230 () Bool)

(declare-fun tp!1573232 () Bool)

(assert (=> b!5672106 (= e!3491676 (and tp!1573230 tp!1573232))))

(assert (= (and b!5671239 ((_ is ElementMatch!15657) (reg!15986 (regOne!31826 r!7292)))) b!5672105))

(assert (= (and b!5671239 ((_ is Concat!24502) (reg!15986 (regOne!31826 r!7292)))) b!5672106))

(assert (= (and b!5671239 ((_ is Star!15657) (reg!15986 (regOne!31826 r!7292)))) b!5672107))

(assert (= (and b!5671239 ((_ is Union!15657) (reg!15986 (regOne!31826 r!7292)))) b!5672108))

(declare-fun b!5672109 () Bool)

(declare-fun e!3491677 () Bool)

(assert (=> b!5672109 (= e!3491677 tp_is_empty!40567)))

(assert (=> b!5671247 (= tp!1573164 e!3491677)))

(declare-fun b!5672111 () Bool)

(declare-fun tp!1573234 () Bool)

(assert (=> b!5672111 (= e!3491677 tp!1573234)))

(declare-fun b!5672112 () Bool)

(declare-fun tp!1573233 () Bool)

(declare-fun tp!1573236 () Bool)

(assert (=> b!5672112 (= e!3491677 (and tp!1573233 tp!1573236))))

(declare-fun b!5672110 () Bool)

(declare-fun tp!1573235 () Bool)

(declare-fun tp!1573237 () Bool)

(assert (=> b!5672110 (= e!3491677 (and tp!1573235 tp!1573237))))

(assert (= (and b!5671247 ((_ is ElementMatch!15657) (reg!15986 (regOne!31827 r!7292)))) b!5672109))

(assert (= (and b!5671247 ((_ is Concat!24502) (reg!15986 (regOne!31827 r!7292)))) b!5672110))

(assert (= (and b!5671247 ((_ is Star!15657) (reg!15986 (regOne!31827 r!7292)))) b!5672111))

(assert (= (and b!5671247 ((_ is Union!15657) (reg!15986 (regOne!31827 r!7292)))) b!5672112))

(declare-fun b!5672113 () Bool)

(declare-fun e!3491678 () Bool)

(assert (=> b!5672113 (= e!3491678 tp_is_empty!40567)))

(assert (=> b!5671246 (= tp!1573165 e!3491678)))

(declare-fun b!5672115 () Bool)

(declare-fun tp!1573239 () Bool)

(assert (=> b!5672115 (= e!3491678 tp!1573239)))

(declare-fun b!5672116 () Bool)

(declare-fun tp!1573238 () Bool)

(declare-fun tp!1573241 () Bool)

(assert (=> b!5672116 (= e!3491678 (and tp!1573238 tp!1573241))))

(declare-fun b!5672114 () Bool)

(declare-fun tp!1573240 () Bool)

(declare-fun tp!1573242 () Bool)

(assert (=> b!5672114 (= e!3491678 (and tp!1573240 tp!1573242))))

(assert (= (and b!5671246 ((_ is ElementMatch!15657) (regOne!31826 (regOne!31827 r!7292)))) b!5672113))

(assert (= (and b!5671246 ((_ is Concat!24502) (regOne!31826 (regOne!31827 r!7292)))) b!5672114))

(assert (= (and b!5671246 ((_ is Star!15657) (regOne!31826 (regOne!31827 r!7292)))) b!5672115))

(assert (= (and b!5671246 ((_ is Union!15657) (regOne!31826 (regOne!31827 r!7292)))) b!5672116))

(declare-fun b!5672117 () Bool)

(declare-fun e!3491679 () Bool)

(assert (=> b!5672117 (= e!3491679 tp_is_empty!40567)))

(assert (=> b!5671246 (= tp!1573167 e!3491679)))

(declare-fun b!5672119 () Bool)

(declare-fun tp!1573244 () Bool)

(assert (=> b!5672119 (= e!3491679 tp!1573244)))

(declare-fun b!5672120 () Bool)

(declare-fun tp!1573243 () Bool)

(declare-fun tp!1573246 () Bool)

(assert (=> b!5672120 (= e!3491679 (and tp!1573243 tp!1573246))))

(declare-fun b!5672118 () Bool)

(declare-fun tp!1573245 () Bool)

(declare-fun tp!1573247 () Bool)

(assert (=> b!5672118 (= e!3491679 (and tp!1573245 tp!1573247))))

(assert (= (and b!5671246 ((_ is ElementMatch!15657) (regTwo!31826 (regOne!31827 r!7292)))) b!5672117))

(assert (= (and b!5671246 ((_ is Concat!24502) (regTwo!31826 (regOne!31827 r!7292)))) b!5672118))

(assert (= (and b!5671246 ((_ is Star!15657) (regTwo!31826 (regOne!31827 r!7292)))) b!5672119))

(assert (= (and b!5671246 ((_ is Union!15657) (regTwo!31826 (regOne!31827 r!7292)))) b!5672120))

(declare-fun b!5672121 () Bool)

(declare-fun e!3491680 () Bool)

(assert (=> b!5672121 (= e!3491680 tp_is_empty!40567)))

(assert (=> b!5671238 (= tp!1573155 e!3491680)))

(declare-fun b!5672123 () Bool)

(declare-fun tp!1573249 () Bool)

(assert (=> b!5672123 (= e!3491680 tp!1573249)))

(declare-fun b!5672124 () Bool)

(declare-fun tp!1573248 () Bool)

(declare-fun tp!1573251 () Bool)

(assert (=> b!5672124 (= e!3491680 (and tp!1573248 tp!1573251))))

(declare-fun b!5672122 () Bool)

(declare-fun tp!1573250 () Bool)

(declare-fun tp!1573252 () Bool)

(assert (=> b!5672122 (= e!3491680 (and tp!1573250 tp!1573252))))

(assert (= (and b!5671238 ((_ is ElementMatch!15657) (regOne!31826 (regOne!31826 r!7292)))) b!5672121))

(assert (= (and b!5671238 ((_ is Concat!24502) (regOne!31826 (regOne!31826 r!7292)))) b!5672122))

(assert (= (and b!5671238 ((_ is Star!15657) (regOne!31826 (regOne!31826 r!7292)))) b!5672123))

(assert (= (and b!5671238 ((_ is Union!15657) (regOne!31826 (regOne!31826 r!7292)))) b!5672124))

(declare-fun b!5672125 () Bool)

(declare-fun e!3491681 () Bool)

(assert (=> b!5672125 (= e!3491681 tp_is_empty!40567)))

(assert (=> b!5671238 (= tp!1573157 e!3491681)))

(declare-fun b!5672127 () Bool)

(declare-fun tp!1573254 () Bool)

(assert (=> b!5672127 (= e!3491681 tp!1573254)))

(declare-fun b!5672128 () Bool)

(declare-fun tp!1573253 () Bool)

(declare-fun tp!1573256 () Bool)

(assert (=> b!5672128 (= e!3491681 (and tp!1573253 tp!1573256))))

(declare-fun b!5672126 () Bool)

(declare-fun tp!1573255 () Bool)

(declare-fun tp!1573257 () Bool)

(assert (=> b!5672126 (= e!3491681 (and tp!1573255 tp!1573257))))

(assert (= (and b!5671238 ((_ is ElementMatch!15657) (regTwo!31826 (regOne!31826 r!7292)))) b!5672125))

(assert (= (and b!5671238 ((_ is Concat!24502) (regTwo!31826 (regOne!31826 r!7292)))) b!5672126))

(assert (= (and b!5671238 ((_ is Star!15657) (regTwo!31826 (regOne!31826 r!7292)))) b!5672127))

(assert (= (and b!5671238 ((_ is Union!15657) (regTwo!31826 (regOne!31826 r!7292)))) b!5672128))

(declare-fun b!5672129 () Bool)

(declare-fun e!3491682 () Bool)

(assert (=> b!5672129 (= e!3491682 tp_is_empty!40567)))

(assert (=> b!5671248 (= tp!1573163 e!3491682)))

(declare-fun b!5672131 () Bool)

(declare-fun tp!1573259 () Bool)

(assert (=> b!5672131 (= e!3491682 tp!1573259)))

(declare-fun b!5672132 () Bool)

(declare-fun tp!1573258 () Bool)

(declare-fun tp!1573261 () Bool)

(assert (=> b!5672132 (= e!3491682 (and tp!1573258 tp!1573261))))

(declare-fun b!5672130 () Bool)

(declare-fun tp!1573260 () Bool)

(declare-fun tp!1573262 () Bool)

(assert (=> b!5672130 (= e!3491682 (and tp!1573260 tp!1573262))))

(assert (= (and b!5671248 ((_ is ElementMatch!15657) (regOne!31827 (regOne!31827 r!7292)))) b!5672129))

(assert (= (and b!5671248 ((_ is Concat!24502) (regOne!31827 (regOne!31827 r!7292)))) b!5672130))

(assert (= (and b!5671248 ((_ is Star!15657) (regOne!31827 (regOne!31827 r!7292)))) b!5672131))

(assert (= (and b!5671248 ((_ is Union!15657) (regOne!31827 (regOne!31827 r!7292)))) b!5672132))

(declare-fun b!5672133 () Bool)

(declare-fun e!3491683 () Bool)

(assert (=> b!5672133 (= e!3491683 tp_is_empty!40567)))

(assert (=> b!5671248 (= tp!1573166 e!3491683)))

(declare-fun b!5672135 () Bool)

(declare-fun tp!1573264 () Bool)

(assert (=> b!5672135 (= e!3491683 tp!1573264)))

(declare-fun b!5672136 () Bool)

(declare-fun tp!1573263 () Bool)

(declare-fun tp!1573266 () Bool)

(assert (=> b!5672136 (= e!3491683 (and tp!1573263 tp!1573266))))

(declare-fun b!5672134 () Bool)

(declare-fun tp!1573265 () Bool)

(declare-fun tp!1573267 () Bool)

(assert (=> b!5672134 (= e!3491683 (and tp!1573265 tp!1573267))))

(assert (= (and b!5671248 ((_ is ElementMatch!15657) (regTwo!31827 (regOne!31827 r!7292)))) b!5672133))

(assert (= (and b!5671248 ((_ is Concat!24502) (regTwo!31827 (regOne!31827 r!7292)))) b!5672134))

(assert (= (and b!5671248 ((_ is Star!15657) (regTwo!31827 (regOne!31827 r!7292)))) b!5672135))

(assert (= (and b!5671248 ((_ is Union!15657) (regTwo!31827 (regOne!31827 r!7292)))) b!5672136))

(declare-fun b!5672137 () Bool)

(declare-fun e!3491684 () Bool)

(assert (=> b!5672137 (= e!3491684 tp_is_empty!40567)))

(assert (=> b!5671240 (= tp!1573153 e!3491684)))

(declare-fun b!5672139 () Bool)

(declare-fun tp!1573269 () Bool)

(assert (=> b!5672139 (= e!3491684 tp!1573269)))

(declare-fun b!5672140 () Bool)

(declare-fun tp!1573268 () Bool)

(declare-fun tp!1573271 () Bool)

(assert (=> b!5672140 (= e!3491684 (and tp!1573268 tp!1573271))))

(declare-fun b!5672138 () Bool)

(declare-fun tp!1573270 () Bool)

(declare-fun tp!1573272 () Bool)

(assert (=> b!5672138 (= e!3491684 (and tp!1573270 tp!1573272))))

(assert (= (and b!5671240 ((_ is ElementMatch!15657) (regOne!31827 (regOne!31826 r!7292)))) b!5672137))

(assert (= (and b!5671240 ((_ is Concat!24502) (regOne!31827 (regOne!31826 r!7292)))) b!5672138))

(assert (= (and b!5671240 ((_ is Star!15657) (regOne!31827 (regOne!31826 r!7292)))) b!5672139))

(assert (= (and b!5671240 ((_ is Union!15657) (regOne!31827 (regOne!31826 r!7292)))) b!5672140))

(declare-fun b!5672141 () Bool)

(declare-fun e!3491685 () Bool)

(assert (=> b!5672141 (= e!3491685 tp_is_empty!40567)))

(assert (=> b!5671240 (= tp!1573156 e!3491685)))

(declare-fun b!5672143 () Bool)

(declare-fun tp!1573274 () Bool)

(assert (=> b!5672143 (= e!3491685 tp!1573274)))

(declare-fun b!5672144 () Bool)

(declare-fun tp!1573273 () Bool)

(declare-fun tp!1573276 () Bool)

(assert (=> b!5672144 (= e!3491685 (and tp!1573273 tp!1573276))))

(declare-fun b!5672142 () Bool)

(declare-fun tp!1573275 () Bool)

(declare-fun tp!1573277 () Bool)

(assert (=> b!5672142 (= e!3491685 (and tp!1573275 tp!1573277))))

(assert (= (and b!5671240 ((_ is ElementMatch!15657) (regTwo!31827 (regOne!31826 r!7292)))) b!5672141))

(assert (= (and b!5671240 ((_ is Concat!24502) (regTwo!31827 (regOne!31826 r!7292)))) b!5672142))

(assert (= (and b!5671240 ((_ is Star!15657) (regTwo!31827 (regOne!31826 r!7292)))) b!5672143))

(assert (= (and b!5671240 ((_ is Union!15657) (regTwo!31827 (regOne!31826 r!7292)))) b!5672144))

(declare-fun b!5672145 () Bool)

(declare-fun e!3491686 () Bool)

(declare-fun tp!1573278 () Bool)

(declare-fun tp!1573279 () Bool)

(assert (=> b!5672145 (= e!3491686 (and tp!1573278 tp!1573279))))

(assert (=> b!5671226 (= tp!1573141 e!3491686)))

(assert (= (and b!5671226 ((_ is Cons!63146) (exprs!5541 setElem!37901))) b!5672145))

(declare-fun condSetEmpty!37906 () Bool)

(assert (=> setNonEmpty!37901 (= condSetEmpty!37906 (= setRest!37901 ((as const (Array Context!10082 Bool)) false)))))

(declare-fun setRes!37906 () Bool)

(assert (=> setNonEmpty!37901 (= tp!1573142 setRes!37906)))

(declare-fun setIsEmpty!37906 () Bool)

(assert (=> setIsEmpty!37906 setRes!37906))

(declare-fun setNonEmpty!37906 () Bool)

(declare-fun e!3491687 () Bool)

(declare-fun tp!1573281 () Bool)

(declare-fun setElem!37906 () Context!10082)

(assert (=> setNonEmpty!37906 (= setRes!37906 (and tp!1573281 (inv!82389 setElem!37906) e!3491687))))

(declare-fun setRest!37906 () (InoxSet Context!10082))

(assert (=> setNonEmpty!37906 (= setRest!37901 ((_ map or) (store ((as const (Array Context!10082 Bool)) false) setElem!37906 true) setRest!37906))))

(declare-fun b!5672146 () Bool)

(declare-fun tp!1573280 () Bool)

(assert (=> b!5672146 (= e!3491687 tp!1573280)))

(assert (= (and setNonEmpty!37901 condSetEmpty!37906) setIsEmpty!37906))

(assert (= (and setNonEmpty!37901 (not condSetEmpty!37906)) setNonEmpty!37906))

(assert (= setNonEmpty!37906 b!5672146))

(declare-fun m!6633328 () Bool)

(assert (=> setNonEmpty!37906 m!6633328))

(declare-fun b!5672147 () Bool)

(declare-fun e!3491688 () Bool)

(declare-fun tp!1573282 () Bool)

(assert (=> b!5672147 (= e!3491688 (and tp_is_empty!40567 tp!1573282))))

(assert (=> b!5671263 (= tp!1573183 e!3491688)))

(assert (= (and b!5671263 ((_ is Cons!63147) (t!376577 (t!376577 s!2326)))) b!5672147))

(declare-fun b!5672148 () Bool)

(declare-fun e!3491689 () Bool)

(assert (=> b!5672148 (= e!3491689 tp_is_empty!40567)))

(assert (=> b!5671257 (= tp!1573177 e!3491689)))

(declare-fun b!5672150 () Bool)

(declare-fun tp!1573284 () Bool)

(assert (=> b!5672150 (= e!3491689 tp!1573284)))

(declare-fun b!5672151 () Bool)

(declare-fun tp!1573283 () Bool)

(declare-fun tp!1573286 () Bool)

(assert (=> b!5672151 (= e!3491689 (and tp!1573283 tp!1573286))))

(declare-fun b!5672149 () Bool)

(declare-fun tp!1573285 () Bool)

(declare-fun tp!1573287 () Bool)

(assert (=> b!5672149 (= e!3491689 (and tp!1573285 tp!1573287))))

(assert (= (and b!5671257 ((_ is ElementMatch!15657) (h!69594 (exprs!5541 (h!69596 zl!343))))) b!5672148))

(assert (= (and b!5671257 ((_ is Concat!24502) (h!69594 (exprs!5541 (h!69596 zl!343))))) b!5672149))

(assert (= (and b!5671257 ((_ is Star!15657) (h!69594 (exprs!5541 (h!69596 zl!343))))) b!5672150))

(assert (= (and b!5671257 ((_ is Union!15657) (h!69594 (exprs!5541 (h!69596 zl!343))))) b!5672151))

(declare-fun b!5672152 () Bool)

(declare-fun e!3491690 () Bool)

(declare-fun tp!1573288 () Bool)

(declare-fun tp!1573289 () Bool)

(assert (=> b!5672152 (= e!3491690 (and tp!1573288 tp!1573289))))

(assert (=> b!5671257 (= tp!1573178 e!3491690)))

(assert (= (and b!5671257 ((_ is Cons!63146) (t!376576 (exprs!5541 (h!69596 zl!343))))) b!5672152))

(declare-fun b!5672153 () Bool)

(declare-fun e!3491691 () Bool)

(assert (=> b!5672153 (= e!3491691 tp_is_empty!40567)))

(assert (=> b!5671252 (= tp!1573168 e!3491691)))

(declare-fun b!5672155 () Bool)

(declare-fun tp!1573291 () Bool)

(assert (=> b!5672155 (= e!3491691 tp!1573291)))

(declare-fun b!5672156 () Bool)

(declare-fun tp!1573290 () Bool)

(declare-fun tp!1573293 () Bool)

(assert (=> b!5672156 (= e!3491691 (and tp!1573290 tp!1573293))))

(declare-fun b!5672154 () Bool)

(declare-fun tp!1573292 () Bool)

(declare-fun tp!1573294 () Bool)

(assert (=> b!5672154 (= e!3491691 (and tp!1573292 tp!1573294))))

(assert (= (and b!5671252 ((_ is ElementMatch!15657) (regOne!31827 (regTwo!31827 r!7292)))) b!5672153))

(assert (= (and b!5671252 ((_ is Concat!24502) (regOne!31827 (regTwo!31827 r!7292)))) b!5672154))

(assert (= (and b!5671252 ((_ is Star!15657) (regOne!31827 (regTwo!31827 r!7292)))) b!5672155))

(assert (= (and b!5671252 ((_ is Union!15657) (regOne!31827 (regTwo!31827 r!7292)))) b!5672156))

(declare-fun b!5672157 () Bool)

(declare-fun e!3491692 () Bool)

(assert (=> b!5672157 (= e!3491692 tp_is_empty!40567)))

(assert (=> b!5671252 (= tp!1573171 e!3491692)))

(declare-fun b!5672159 () Bool)

(declare-fun tp!1573296 () Bool)

(assert (=> b!5672159 (= e!3491692 tp!1573296)))

(declare-fun b!5672160 () Bool)

(declare-fun tp!1573295 () Bool)

(declare-fun tp!1573298 () Bool)

(assert (=> b!5672160 (= e!3491692 (and tp!1573295 tp!1573298))))

(declare-fun b!5672158 () Bool)

(declare-fun tp!1573297 () Bool)

(declare-fun tp!1573299 () Bool)

(assert (=> b!5672158 (= e!3491692 (and tp!1573297 tp!1573299))))

(assert (= (and b!5671252 ((_ is ElementMatch!15657) (regTwo!31827 (regTwo!31827 r!7292)))) b!5672157))

(assert (= (and b!5671252 ((_ is Concat!24502) (regTwo!31827 (regTwo!31827 r!7292)))) b!5672158))

(assert (= (and b!5671252 ((_ is Star!15657) (regTwo!31827 (regTwo!31827 r!7292)))) b!5672159))

(assert (= (and b!5671252 ((_ is Union!15657) (regTwo!31827 (regTwo!31827 r!7292)))) b!5672160))

(declare-fun b!5672161 () Bool)

(declare-fun e!3491693 () Bool)

(assert (=> b!5672161 (= e!3491693 tp_is_empty!40567)))

(assert (=> b!5671243 (= tp!1573159 e!3491693)))

(declare-fun b!5672163 () Bool)

(declare-fun tp!1573301 () Bool)

(assert (=> b!5672163 (= e!3491693 tp!1573301)))

(declare-fun b!5672164 () Bool)

(declare-fun tp!1573300 () Bool)

(declare-fun tp!1573303 () Bool)

(assert (=> b!5672164 (= e!3491693 (and tp!1573300 tp!1573303))))

(declare-fun b!5672162 () Bool)

(declare-fun tp!1573302 () Bool)

(declare-fun tp!1573304 () Bool)

(assert (=> b!5672162 (= e!3491693 (and tp!1573302 tp!1573304))))

(assert (= (and b!5671243 ((_ is ElementMatch!15657) (reg!15986 (regTwo!31826 r!7292)))) b!5672161))

(assert (= (and b!5671243 ((_ is Concat!24502) (reg!15986 (regTwo!31826 r!7292)))) b!5672162))

(assert (= (and b!5671243 ((_ is Star!15657) (reg!15986 (regTwo!31826 r!7292)))) b!5672163))

(assert (= (and b!5671243 ((_ is Union!15657) (reg!15986 (regTwo!31826 r!7292)))) b!5672164))

(declare-fun b!5672165 () Bool)

(declare-fun e!3491694 () Bool)

(assert (=> b!5672165 (= e!3491694 tp_is_empty!40567)))

(assert (=> b!5671242 (= tp!1573160 e!3491694)))

(declare-fun b!5672167 () Bool)

(declare-fun tp!1573306 () Bool)

(assert (=> b!5672167 (= e!3491694 tp!1573306)))

(declare-fun b!5672168 () Bool)

(declare-fun tp!1573305 () Bool)

(declare-fun tp!1573308 () Bool)

(assert (=> b!5672168 (= e!3491694 (and tp!1573305 tp!1573308))))

(declare-fun b!5672166 () Bool)

(declare-fun tp!1573307 () Bool)

(declare-fun tp!1573309 () Bool)

(assert (=> b!5672166 (= e!3491694 (and tp!1573307 tp!1573309))))

(assert (= (and b!5671242 ((_ is ElementMatch!15657) (regOne!31826 (regTwo!31826 r!7292)))) b!5672165))

(assert (= (and b!5671242 ((_ is Concat!24502) (regOne!31826 (regTwo!31826 r!7292)))) b!5672166))

(assert (= (and b!5671242 ((_ is Star!15657) (regOne!31826 (regTwo!31826 r!7292)))) b!5672167))

(assert (= (and b!5671242 ((_ is Union!15657) (regOne!31826 (regTwo!31826 r!7292)))) b!5672168))

(declare-fun b!5672169 () Bool)

(declare-fun e!3491695 () Bool)

(assert (=> b!5672169 (= e!3491695 tp_is_empty!40567)))

(assert (=> b!5671242 (= tp!1573162 e!3491695)))

(declare-fun b!5672171 () Bool)

(declare-fun tp!1573311 () Bool)

(assert (=> b!5672171 (= e!3491695 tp!1573311)))

(declare-fun b!5672172 () Bool)

(declare-fun tp!1573310 () Bool)

(declare-fun tp!1573313 () Bool)

(assert (=> b!5672172 (= e!3491695 (and tp!1573310 tp!1573313))))

(declare-fun b!5672170 () Bool)

(declare-fun tp!1573312 () Bool)

(declare-fun tp!1573314 () Bool)

(assert (=> b!5672170 (= e!3491695 (and tp!1573312 tp!1573314))))

(assert (= (and b!5671242 ((_ is ElementMatch!15657) (regTwo!31826 (regTwo!31826 r!7292)))) b!5672169))

(assert (= (and b!5671242 ((_ is Concat!24502) (regTwo!31826 (regTwo!31826 r!7292)))) b!5672170))

(assert (= (and b!5671242 ((_ is Star!15657) (regTwo!31826 (regTwo!31826 r!7292)))) b!5672171))

(assert (= (and b!5671242 ((_ is Union!15657) (regTwo!31826 (regTwo!31826 r!7292)))) b!5672172))

(declare-fun b!5672173 () Bool)

(declare-fun e!3491696 () Bool)

(assert (=> b!5672173 (= e!3491696 tp_is_empty!40567)))

(assert (=> b!5671251 (= tp!1573169 e!3491696)))

(declare-fun b!5672175 () Bool)

(declare-fun tp!1573316 () Bool)

(assert (=> b!5672175 (= e!3491696 tp!1573316)))

(declare-fun b!5672176 () Bool)

(declare-fun tp!1573315 () Bool)

(declare-fun tp!1573318 () Bool)

(assert (=> b!5672176 (= e!3491696 (and tp!1573315 tp!1573318))))

(declare-fun b!5672174 () Bool)

(declare-fun tp!1573317 () Bool)

(declare-fun tp!1573319 () Bool)

(assert (=> b!5672174 (= e!3491696 (and tp!1573317 tp!1573319))))

(assert (= (and b!5671251 ((_ is ElementMatch!15657) (reg!15986 (regTwo!31827 r!7292)))) b!5672173))

(assert (= (and b!5671251 ((_ is Concat!24502) (reg!15986 (regTwo!31827 r!7292)))) b!5672174))

(assert (= (and b!5671251 ((_ is Star!15657) (reg!15986 (regTwo!31827 r!7292)))) b!5672175))

(assert (= (and b!5671251 ((_ is Union!15657) (reg!15986 (regTwo!31827 r!7292)))) b!5672176))

(declare-fun b!5672177 () Bool)

(declare-fun e!3491697 () Bool)

(assert (=> b!5672177 (= e!3491697 tp_is_empty!40567)))

(assert (=> b!5671250 (= tp!1573170 e!3491697)))

(declare-fun b!5672179 () Bool)

(declare-fun tp!1573321 () Bool)

(assert (=> b!5672179 (= e!3491697 tp!1573321)))

(declare-fun b!5672180 () Bool)

(declare-fun tp!1573320 () Bool)

(declare-fun tp!1573323 () Bool)

(assert (=> b!5672180 (= e!3491697 (and tp!1573320 tp!1573323))))

(declare-fun b!5672178 () Bool)

(declare-fun tp!1573322 () Bool)

(declare-fun tp!1573324 () Bool)

(assert (=> b!5672178 (= e!3491697 (and tp!1573322 tp!1573324))))

(assert (= (and b!5671250 ((_ is ElementMatch!15657) (regOne!31826 (regTwo!31827 r!7292)))) b!5672177))

(assert (= (and b!5671250 ((_ is Concat!24502) (regOne!31826 (regTwo!31827 r!7292)))) b!5672178))

(assert (= (and b!5671250 ((_ is Star!15657) (regOne!31826 (regTwo!31827 r!7292)))) b!5672179))

(assert (= (and b!5671250 ((_ is Union!15657) (regOne!31826 (regTwo!31827 r!7292)))) b!5672180))

(declare-fun b!5672181 () Bool)

(declare-fun e!3491698 () Bool)

(assert (=> b!5672181 (= e!3491698 tp_is_empty!40567)))

(assert (=> b!5671250 (= tp!1573172 e!3491698)))

(declare-fun b!5672183 () Bool)

(declare-fun tp!1573326 () Bool)

(assert (=> b!5672183 (= e!3491698 tp!1573326)))

(declare-fun b!5672184 () Bool)

(declare-fun tp!1573325 () Bool)

(declare-fun tp!1573328 () Bool)

(assert (=> b!5672184 (= e!3491698 (and tp!1573325 tp!1573328))))

(declare-fun b!5672182 () Bool)

(declare-fun tp!1573327 () Bool)

(declare-fun tp!1573329 () Bool)

(assert (=> b!5672182 (= e!3491698 (and tp!1573327 tp!1573329))))

(assert (= (and b!5671250 ((_ is ElementMatch!15657) (regTwo!31826 (regTwo!31827 r!7292)))) b!5672181))

(assert (= (and b!5671250 ((_ is Concat!24502) (regTwo!31826 (regTwo!31827 r!7292)))) b!5672182))

(assert (= (and b!5671250 ((_ is Star!15657) (regTwo!31826 (regTwo!31827 r!7292)))) b!5672183))

(assert (= (and b!5671250 ((_ is Union!15657) (regTwo!31826 (regTwo!31827 r!7292)))) b!5672184))

(declare-fun b!5672185 () Bool)

(declare-fun e!3491699 () Bool)

(assert (=> b!5672185 (= e!3491699 tp_is_empty!40567)))

(assert (=> b!5671265 (= tp!1573186 e!3491699)))

(declare-fun b!5672187 () Bool)

(declare-fun tp!1573331 () Bool)

(assert (=> b!5672187 (= e!3491699 tp!1573331)))

(declare-fun b!5672188 () Bool)

(declare-fun tp!1573330 () Bool)

(declare-fun tp!1573333 () Bool)

(assert (=> b!5672188 (= e!3491699 (and tp!1573330 tp!1573333))))

(declare-fun b!5672186 () Bool)

(declare-fun tp!1573332 () Bool)

(declare-fun tp!1573334 () Bool)

(assert (=> b!5672186 (= e!3491699 (and tp!1573332 tp!1573334))))

(assert (= (and b!5671265 ((_ is ElementMatch!15657) (regOne!31826 (reg!15986 r!7292)))) b!5672185))

(assert (= (and b!5671265 ((_ is Concat!24502) (regOne!31826 (reg!15986 r!7292)))) b!5672186))

(assert (= (and b!5671265 ((_ is Star!15657) (regOne!31826 (reg!15986 r!7292)))) b!5672187))

(assert (= (and b!5671265 ((_ is Union!15657) (regOne!31826 (reg!15986 r!7292)))) b!5672188))

(declare-fun b!5672189 () Bool)

(declare-fun e!3491700 () Bool)

(assert (=> b!5672189 (= e!3491700 tp_is_empty!40567)))

(assert (=> b!5671265 (= tp!1573188 e!3491700)))

(declare-fun b!5672191 () Bool)

(declare-fun tp!1573336 () Bool)

(assert (=> b!5672191 (= e!3491700 tp!1573336)))

(declare-fun b!5672192 () Bool)

(declare-fun tp!1573335 () Bool)

(declare-fun tp!1573338 () Bool)

(assert (=> b!5672192 (= e!3491700 (and tp!1573335 tp!1573338))))

(declare-fun b!5672190 () Bool)

(declare-fun tp!1573337 () Bool)

(declare-fun tp!1573339 () Bool)

(assert (=> b!5672190 (= e!3491700 (and tp!1573337 tp!1573339))))

(assert (= (and b!5671265 ((_ is ElementMatch!15657) (regTwo!31826 (reg!15986 r!7292)))) b!5672189))

(assert (= (and b!5671265 ((_ is Concat!24502) (regTwo!31826 (reg!15986 r!7292)))) b!5672190))

(assert (= (and b!5671265 ((_ is Star!15657) (regTwo!31826 (reg!15986 r!7292)))) b!5672191))

(assert (= (and b!5671265 ((_ is Union!15657) (regTwo!31826 (reg!15986 r!7292)))) b!5672192))

(declare-fun b!5672193 () Bool)

(declare-fun e!3491701 () Bool)

(assert (=> b!5672193 (= e!3491701 tp_is_empty!40567)))

(assert (=> b!5671244 (= tp!1573158 e!3491701)))

(declare-fun b!5672195 () Bool)

(declare-fun tp!1573341 () Bool)

(assert (=> b!5672195 (= e!3491701 tp!1573341)))

(declare-fun b!5672196 () Bool)

(declare-fun tp!1573340 () Bool)

(declare-fun tp!1573343 () Bool)

(assert (=> b!5672196 (= e!3491701 (and tp!1573340 tp!1573343))))

(declare-fun b!5672194 () Bool)

(declare-fun tp!1573342 () Bool)

(declare-fun tp!1573344 () Bool)

(assert (=> b!5672194 (= e!3491701 (and tp!1573342 tp!1573344))))

(assert (= (and b!5671244 ((_ is ElementMatch!15657) (regOne!31827 (regTwo!31826 r!7292)))) b!5672193))

(assert (= (and b!5671244 ((_ is Concat!24502) (regOne!31827 (regTwo!31826 r!7292)))) b!5672194))

(assert (= (and b!5671244 ((_ is Star!15657) (regOne!31827 (regTwo!31826 r!7292)))) b!5672195))

(assert (= (and b!5671244 ((_ is Union!15657) (regOne!31827 (regTwo!31826 r!7292)))) b!5672196))

(declare-fun b!5672197 () Bool)

(declare-fun e!3491702 () Bool)

(assert (=> b!5672197 (= e!3491702 tp_is_empty!40567)))

(assert (=> b!5671244 (= tp!1573161 e!3491702)))

(declare-fun b!5672199 () Bool)

(declare-fun tp!1573346 () Bool)

(assert (=> b!5672199 (= e!3491702 tp!1573346)))

(declare-fun b!5672200 () Bool)

(declare-fun tp!1573345 () Bool)

(declare-fun tp!1573348 () Bool)

(assert (=> b!5672200 (= e!3491702 (and tp!1573345 tp!1573348))))

(declare-fun b!5672198 () Bool)

(declare-fun tp!1573347 () Bool)

(declare-fun tp!1573349 () Bool)

(assert (=> b!5672198 (= e!3491702 (and tp!1573347 tp!1573349))))

(assert (= (and b!5671244 ((_ is ElementMatch!15657) (regTwo!31827 (regTwo!31826 r!7292)))) b!5672197))

(assert (= (and b!5671244 ((_ is Concat!24502) (regTwo!31827 (regTwo!31826 r!7292)))) b!5672198))

(assert (= (and b!5671244 ((_ is Star!15657) (regTwo!31827 (regTwo!31826 r!7292)))) b!5672199))

(assert (= (and b!5671244 ((_ is Union!15657) (regTwo!31827 (regTwo!31826 r!7292)))) b!5672200))

(declare-fun b!5672201 () Bool)

(declare-fun e!3491703 () Bool)

(assert (=> b!5672201 (= e!3491703 tp_is_empty!40567)))

(assert (=> b!5671258 (= tp!1573179 e!3491703)))

(declare-fun b!5672203 () Bool)

(declare-fun tp!1573351 () Bool)

(assert (=> b!5672203 (= e!3491703 tp!1573351)))

(declare-fun b!5672204 () Bool)

(declare-fun tp!1573350 () Bool)

(declare-fun tp!1573353 () Bool)

(assert (=> b!5672204 (= e!3491703 (and tp!1573350 tp!1573353))))

(declare-fun b!5672202 () Bool)

(declare-fun tp!1573352 () Bool)

(declare-fun tp!1573354 () Bool)

(assert (=> b!5672202 (= e!3491703 (and tp!1573352 tp!1573354))))

(assert (= (and b!5671258 ((_ is ElementMatch!15657) (h!69594 (exprs!5541 setElem!37895)))) b!5672201))

(assert (= (and b!5671258 ((_ is Concat!24502) (h!69594 (exprs!5541 setElem!37895)))) b!5672202))

(assert (= (and b!5671258 ((_ is Star!15657) (h!69594 (exprs!5541 setElem!37895)))) b!5672203))

(assert (= (and b!5671258 ((_ is Union!15657) (h!69594 (exprs!5541 setElem!37895)))) b!5672204))

(declare-fun b!5672205 () Bool)

(declare-fun e!3491704 () Bool)

(declare-fun tp!1573355 () Bool)

(declare-fun tp!1573356 () Bool)

(assert (=> b!5672205 (= e!3491704 (and tp!1573355 tp!1573356))))

(assert (=> b!5671258 (= tp!1573180 e!3491704)))

(assert (= (and b!5671258 ((_ is Cons!63146) (t!376576 (exprs!5541 setElem!37895)))) b!5672205))

(declare-fun b_lambda!214539 () Bool)

(assert (= b_lambda!214535 (or d!1790260 b_lambda!214539)))

(declare-fun bs!1322028 () Bool)

(declare-fun d!1790694 () Bool)

(assert (= bs!1322028 (and d!1790694 d!1790260)))

(assert (=> bs!1322028 (= (dynLambda!24716 lambda!305213 (h!69594 lt!2268323)) (validRegex!7393 (h!69594 lt!2268323)))))

(declare-fun m!6633330 () Bool)

(assert (=> bs!1322028 m!6633330))

(assert (=> b!5672019 d!1790694))

(declare-fun b_lambda!214541 () Bool)

(assert (= b_lambda!214529 (or b!5670286 b_lambda!214541)))

(declare-fun bs!1322029 () Bool)

(declare-fun d!1790696 () Bool)

(assert (= bs!1322029 (and d!1790696 b!5670286)))

(assert (=> bs!1322029 (= (dynLambda!24713 lambda!305110 (h!69596 lt!2268150)) (>= lt!2268161 (contextDepth!124 (h!69596 lt!2268150))))))

(assert (=> bs!1322029 m!6631570))

(assert (=> b!5671802 d!1790696))

(declare-fun b_lambda!214543 () Bool)

(assert (= b_lambda!214533 (or d!1790156 b_lambda!214543)))

(declare-fun bs!1322030 () Bool)

(declare-fun d!1790698 () Bool)

(assert (= bs!1322030 (and d!1790698 d!1790156)))

(assert (=> bs!1322030 (= (dynLambda!24716 lambda!305181 (h!69594 (t!376576 (exprs!5541 (h!69596 zl!343))))) (validRegex!7393 (h!69594 (t!376576 (exprs!5541 (h!69596 zl!343))))))))

(declare-fun m!6633332 () Bool)

(assert (=> bs!1322030 m!6633332))

(assert (=> b!5671941 d!1790698))

(declare-fun b_lambda!214545 () Bool)

(assert (= b_lambda!214531 (or b!5670246 b_lambda!214545)))

(assert (=> d!1790556 d!1790270))

(declare-fun b_lambda!214547 () Bool)

(assert (= b_lambda!214523 (or d!1790174 b_lambda!214547)))

(declare-fun bs!1322031 () Bool)

(declare-fun d!1790700 () Bool)

(assert (= bs!1322031 (and d!1790700 d!1790174)))

(assert (=> bs!1322031 (= (dynLambda!24716 lambda!305184 (h!69594 lt!2268127)) (validRegex!7393 (h!69594 lt!2268127)))))

(declare-fun m!6633334 () Bool)

(assert (=> bs!1322031 m!6633334))

(assert (=> b!5671751 d!1790700))

(declare-fun b_lambda!214549 () Bool)

(assert (= b_lambda!214515 (or d!1790140 b_lambda!214549)))

(declare-fun bs!1322032 () Bool)

(declare-fun d!1790702 () Bool)

(assert (= bs!1322032 (and d!1790702 d!1790140)))

(assert (=> bs!1322032 (= (dynLambda!24716 lambda!305180 (h!69594 lt!2268152)) (validRegex!7393 (h!69594 lt!2268152)))))

(declare-fun m!6633336 () Bool)

(assert (=> bs!1322032 m!6633336))

(assert (=> b!5671455 d!1790702))

(declare-fun b_lambda!214551 () Bool)

(assert (= b_lambda!214537 (or d!1790258 b_lambda!214551)))

(declare-fun bs!1322033 () Bool)

(declare-fun d!1790704 () Bool)

(assert (= bs!1322033 (and d!1790704 d!1790258)))

(assert (=> bs!1322033 (= (dynLambda!24716 lambda!305210 (h!69594 (unfocusZipperList!1085 zl!343))) (validRegex!7393 (h!69594 (unfocusZipperList!1085 zl!343))))))

(declare-fun m!6633338 () Bool)

(assert (=> bs!1322033 m!6633338))

(assert (=> b!5672074 d!1790704))

(declare-fun b_lambda!214553 () Bool)

(assert (= b_lambda!214511 (or b!5670291 b_lambda!214553)))

(declare-fun bs!1322034 () Bool)

(declare-fun d!1790706 () Bool)

(assert (= bs!1322034 (and d!1790706 b!5670291)))

(assert (=> bs!1322034 (= (dynLambda!24713 lambda!305113 (h!69596 zl!343)) (>= lt!2268165 (contextDepth!124 (h!69596 zl!343))))))

(assert (=> bs!1322034 m!6631582))

(assert (=> b!5671306 d!1790706))

(declare-fun b_lambda!214555 () Bool)

(assert (= b_lambda!214525 (or b!5670246 b_lambda!214555)))

(assert (=> d!1790522 d!1790268))

(declare-fun b_lambda!214557 () Bool)

(assert (= b_lambda!214521 (or b!5670289 b_lambda!214557)))

(declare-fun bs!1322035 () Bool)

(declare-fun d!1790708 () Bool)

(assert (= bs!1322035 (and d!1790708 b!5670289)))

(assert (=> bs!1322035 (= (dynLambda!24713 lambda!305112 (h!69596 (t!376578 zl!343))) (>= lt!2268166 (contextDepth!124 (h!69596 (t!376578 zl!343)))))))

(assert (=> bs!1322035 m!6632910))

(assert (=> b!5671699 d!1790708))

(declare-fun b_lambda!214559 () Bool)

(assert (= b_lambda!214519 (or d!1790228 b_lambda!214559)))

(declare-fun bs!1322036 () Bool)

(declare-fun d!1790710 () Bool)

(assert (= bs!1322036 (and d!1790710 d!1790228)))

(assert (=> bs!1322036 (= (dynLambda!24716 lambda!305203 (h!69594 (exprs!5541 (h!69596 zl!343)))) (validRegex!7393 (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(declare-fun m!6633340 () Bool)

(assert (=> bs!1322036 m!6633340))

(assert (=> b!5671617 d!1790710))

(declare-fun b_lambda!214561 () Bool)

(assert (= b_lambda!214527 (or d!1790180 b_lambda!214561)))

(declare-fun bs!1322037 () Bool)

(declare-fun d!1790712 () Bool)

(assert (= bs!1322037 (and d!1790712 d!1790180)))

(assert (=> bs!1322037 (= (dynLambda!24716 lambda!305185 (h!69594 (exprs!5541 (h!69596 zl!343)))) (validRegex!7393 (h!69594 (exprs!5541 (h!69596 zl!343)))))))

(assert (=> bs!1322037 m!6633340))

(assert (=> b!5671774 d!1790712))

(declare-fun b_lambda!214563 () Bool)

(assert (= b_lambda!214513 (or b!5670284 b_lambda!214563)))

(declare-fun bs!1322038 () Bool)

(declare-fun d!1790714 () Bool)

(assert (= bs!1322038 (and d!1790714 b!5670284)))

(assert (=> bs!1322038 (= (dynLambda!24713 lambda!305109 (h!69596 (t!376578 lt!2268150))) (>= lt!2268162 (contextDepth!124 (h!69596 (t!376578 lt!2268150)))))))

(assert (=> bs!1322038 m!6632568))

(assert (=> b!5671422 d!1790714))

(declare-fun b_lambda!214565 () Bool)

(assert (= b_lambda!214517 (or d!1790238 b_lambda!214565)))

(declare-fun bs!1322039 () Bool)

(declare-fun d!1790716 () Bool)

(assert (= bs!1322039 (and d!1790716 d!1790238)))

(assert (=> bs!1322039 (= (dynLambda!24716 lambda!305204 (h!69594 (exprs!5541 setElem!37895))) (validRegex!7393 (h!69594 (exprs!5541 setElem!37895))))))

(declare-fun m!6633342 () Bool)

(assert (=> bs!1322039 m!6633342))

(assert (=> b!5671492 d!1790716))

(check-sat (not b!5671409) (not b!5671624) (not d!1790672) (not bm!430304) (not b!5672172) (not b!5671866) (not bs!1322037) (not bm!430272) (not b!5671519) (not bm!430174) (not b!5671349) (not b!5671628) (not d!1790508) (not b_lambda!214553) (not b!5671668) (not b!5672108) (not b!5671521) (not b!5672099) (not bm!430302) (not bs!1322032) (not b!5671568) (not b!5671729) (not b!5671565) (not b_lambda!214563) (not b!5671978) (not b!5671613) (not d!1790330) (not d!1790526) (not d!1790688) (not b!5672135) (not b!5671618) (not b!5672195) (not b_lambda!214559) (not b!5671516) (not d!1790460) (not bm!430328) (not bm!430237) (not b!5671775) (not bm!430214) (not d!1790464) (not d!1790406) (not d!1790548) (not b!5671663) (not b!5671511) (not bm!430311) (not b_lambda!214561) (not bs!1322038) (not b!5671806) (not b!5671535) (not bm!430230) (not b!5671331) (not b!5671276) (not bm!430205) (not d!1790524) (not bm!430288) (not bm!430295) (not bm!430280) (not b!5671380) (not bm!430293) (not b!5672092) (not b!5671344) (not b!5672003) (not bm!430220) (not b!5671889) (not b!5672021) (not b!5672147) (not b!5672112) (not b!5671885) (not b!5672184) (not b!5672126) (not bm!430281) (not bm!430208) (not b!5671637) (not bm!430251) (not b!5671310) (not b!5671825) (not d!1790484) (not b!5671891) (not d!1790592) (not bm!430314) (not b!5671489) (not b!5671720) (not b!5672118) (not b!5672179) (not b!5671500) (not b!5671800) (not b!5672151) (not b!5672058) (not d!1790418) (not b!5672100) (not b!5671339) (not d!1790556) (not b!5671908) (not b!5671311) (not d!1790442) (not d!1790338) (not setNonEmpty!37905) (not d!1790510) (not d!1790366) (not b!5672180) (not b!5671557) (not b!5671459) (not b!5671862) (not b!5671658) (not b!5672111) (not b!5672136) (not bm!430199) (not d!1790310) (not b!5671703) (not d!1790452) (not b!5672080) (not d!1790462) (not bm!430250) (not b!5672093) (not b!5672023) (not b!5672187) (not bm!430323) (not d!1790568) (not bm!430321) (not d!1790438) (not b!5671543) (not bm!430177) (not b!5672124) (not b!5671533) (not b!5671314) (not b!5671674) (not d!1790404) (not b!5672158) (not bm!430317) (not bm!430242) (not b!5671689) (not b!5671493) (not d!1790490) (not b!5671922) (not d!1790640) (not d!1790434) (not b!5671518) (not d!1790630) (not b!5672175) (not b!5672004) (not b_lambda!214557) (not b!5671577) (not b!5672188) (not b!5671985) (not b!5671932) (not b!5671918) (not d!1790426) (not b!5672200) (not d!1790480) (not b!5671644) (not b!5671665) (not b!5671765) (not bm!430324) (not b!5671413) (not b!5671442) (not bm!430286) (not b!5671686) (not b!5671919) (not d!1790662) (not b!5671896) (not b!5672160) (not b!5672122) (not b!5671755) (not b!5671597) (not b!5672196) (not bm!430297) (not b!5671887) (not bm!430175) (not bm!430203) (not b!5671340) (not bm!430222) (not d!1790634) (not b!5671700) (not b!5671715) (not b!5671439) (not d!1790528) (not bm!430212) (not b!5672138) (not b!5671542) (not b!5671427) (not b!5671483) (not b!5672191) (not b!5671863) (not d!1790606) (not b!5672130) (not bm!430246) (not b!5671335) (not b!5671811) (not bs!1322035) (not b!5672053) (not b!5672149) (not b!5671983) (not b!5672170) (not d!1790572) (not b!5671551) (not bm!430260) (not b!5671669) (not b!5672050) (not b!5671507) (not d!1790390) (not b_lambda!214565) (not b!5672104) (not b!5671875) (not d!1790432) (not b!5671858) (not b!5672095) (not b!5672065) (not bm!430301) (not d!1790292) (not b!5671488) (not bm!430189) (not b!5672145) (not bm!430206) (not bs!1322036) (not b!5671576) (not b!5672205) (not b!5671627) (not b!5671691) (not bm!430182) (not b!5672049) (not d!1790340) (not bm!430236) (not b!5671534) (not b_lambda!214555) (not bm!430210) (not d!1790280) (not d!1790324) (not b!5672110) (not b!5671892) (not b!5671835) (not b!5672199) (not d!1790302) (not b!5672132) (not b!5672048) (not d!1790576) (not bm!430227) (not b!5672150) (not b!5671991) (not b!5671959) (not b!5671987) (not b!5671578) (not bm!430294) (not bm!430223) (not d!1790602) (not d!1790304) (not bm!430247) (not b!5672040) (not b!5671808) (not b!5671690) (not d!1790478) (not b!5671632) (not b!5672154) (not b!5671728) (not bm!430234) (not bm!430258) (not b!5671456) (not b!5671741) (not b!5672139) (not d!1790482) (not b!5672192) (not d!1790380) (not b!5671498) (not b!5672174) (not b!5672131) (not d!1790686) (not bm!430179) (not bm!430322) (not b!5671372) (not bm!430306) (not b!5671888) (not b!5671980) (not b!5671954) (not b!5672168) (not b!5672022) (not b!5671315) (not bm!430308) (not bm!430292) (not b!5671692) (not d!1790388) (not b!5671381) (not d!1790474) (not b!5671515) (not b!5671605) (not b!5671462) (not bm!430269) (not b!5671473) (not bm!430287) (not b!5672143) (not b!5671357) (not bm!430187) (not d!1790636) (not d!1790372) (not b!5672079) (not b!5672128) (not b!5671497) (not b!5671821) (not b!5672102) (not b!5671595) (not bm!430244) (not d!1790374) (not b!5672120) (not b!5672176) (not b!5671494) (not b!5671345) (not bm!430221) (not b!5672101) (not b_lambda!214547) (not b!5671815) (not bm!430178) (not b!5671495) (not b!5671990) (not bm!430270) (not b!5671437) (not d!1790638) (not d!1790586) (not b!5671583) (not b!5671719) (not b!5671950) (not bm!430183) (not b!5671995) (not b!5672142) (not b!5672204) (not b!5672190) (not b!5671712) (not b!5671484) (not b!5671634) (not d!1790560) (not bm!430303) (not b!5671581) (not b!5672146) (not b!5671705) (not b!5671604) (not b!5671346) (not bm!430209) (not b!5672096) (not d!1790558) (not b!5672144) (not b!5672107) (not b!5671641) (not b!5671752) (not d!1790486) (not bm!430316) (not b!5671313) (not bs!1322030) (not b!5671501) (not d!1790614) (not b!5671753) (not d!1790676) (not bm!430229) (not b!5671827) (not d!1790344) (not b!5671906) (not b!5672020) (not bm!430219) (not b!5672088) (not b!5672119) (not b!5671693) (not b!5671659) (not b!5672178) (not b!5671672) (not b!5671538) (not b!5671695) (not b!5672115) (not d!1790356) (not d!1790394) (not b!5671506) (not d!1790660) (not b_lambda!214549) (not b!5671713) (not b!5672041) (not b!5671481) (not b!5671988) (not b!5672075) (not b!5671816) (not b!5672083) (not bm!430312) (not b!5672159) (not b!5671330) (not b!5671642) (not d!1790430) (not b!5672063) (not bm!430262) (not b!5672006) (not b!5671633) (not b!5672091) (not d!1790290) (not b!5672183) (not bm!430249) (not b!5671353) (not d!1790274) (not b!5672106) (not b!5671955) (not b!5671861) (not bm!430235) (not d!1790522) (not b!5671984) (not b!5671945) (not bs!1322033) (not b_lambda!214539) (not b_lambda!214551) (not b!5671596) (not b!5671742) (not d!1790632) (not b_lambda!214507) (not b!5672127) (not b!5671648) (not b!5672164) (not bm!430172) (not b!5672116) (not b!5671508) (not b!5671704) (not d!1790492) (not d!1790400) (not b!5672087) (not b!5672114) (not bm!430259) (not b_lambda!214543) (not b!5671293) (not d!1790444) (not bs!1322034) (not b!5671826) (not b!5671721) (not bm!430190) (not b!5672026) (not b!5672182) (not d!1790376) (not d!1790286) (not d!1790612) (not b!5672186) (not b!5672171) (not bs!1322028) (not d!1790378) (not b!5672123) (not bs!1322039) (not b!5672202) (not b!5671673) (not d!1790326) (not b!5671600) (not b!5672134) (not bm!430310) (not d!1790294) (not b!5671460) (not bm!430200) (not b!5672103) (not d!1790540) (not b!5672198) (not b!5671958) (not b!5672203) (not d!1790644) (not b!5671425) (not b!5672162) (not b!5672194) (not b!5672163) (not b!5672018) (not b!5671724) (not b_lambda!214545) (not b!5671685) (not b!5671368) (not b!5671496) tp_is_empty!40567 (not b!5672054) (not b!5672156) (not b!5672055) (not b!5671696) (not b!5671371) (not bm!430239) (not d!1790436) (not bm!430257) (not bm!430181) (not bm!430327) (not b!5672062) (not bm!430274) (not bm!430228) (not bm!430279) (not b!5671733) (not b!5671907) (not b!5671803) (not b!5671670) (not bs!1322031) (not bm!430315) (not d!1790594) (not b!5672152) (not b!5671486) (not bm!430243) (not b!5672024) (not d!1790578) (not d!1790284) (not b!5671485) (not b!5671807) (not b!5671698) (not d!1790564) (not setNonEmpty!37904) (not bs!1322029) (not b!5672167) (not d!1790416) (not b!5672078) (not b!5671354) (not b!5672155) (not bm!430213) (not setNonEmpty!37906) (not d!1790664) (not b!5671708) (not bm!430325) (not b!5672140) (not bm!430282) (not bm!430307) (not b!5671834) (not b!5671947) (not b!5671820) (not b!5671367) (not b!5671376) (not bm!430238) (not b!5672010) (not d!1790666) (not d!1790314) (not b!5671373) (not b!5671332) (not b_lambda!214541) (not bm!430224) (not b!5672166) (not b!5671946) (not b!5671307) (not b!5671423) (not b!5671961) (not b!5671865) (not d!1790690) (not d!1790502) (not b!5672097) (not b!5671830) (not d!1790342) (not b!5671482) (not b!5671942) (not b_lambda!214509) (not b!5671687) (not bm!430253) (not bm!430273) (not d!1790476) (not bm!430248) (not b!5671662) (not bm!430215) (not bm!430188) (not d!1790328) (not b!5671886))
(check-sat)

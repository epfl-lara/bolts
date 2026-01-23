; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!586560 () Bool)

(assert start!586560)

(declare-fun b!5682180 () Bool)

(assert (=> b!5682180 true))

(assert (=> b!5682180 true))

(declare-fun lambda!306218 () Int)

(declare-fun lambda!306217 () Int)

(assert (=> b!5682180 (not (= lambda!306218 lambda!306217))))

(assert (=> b!5682180 true))

(assert (=> b!5682180 true))

(declare-fun b!5682185 () Bool)

(assert (=> b!5682185 true))

(declare-datatypes ((C!31628 0))(
  ( (C!31629 (val!25516 Int)) )
))
(declare-datatypes ((Regex!15679 0))(
  ( (ElementMatch!15679 (c!999873 C!31628)) (Concat!24524 (regOne!31870 Regex!15679) (regTwo!31870 Regex!15679)) (EmptyExpr!15679) (Star!15679 (reg!16008 Regex!15679)) (EmptyLang!15679) (Union!15679 (regOne!31871 Regex!15679) (regTwo!31871 Regex!15679)) )
))
(declare-fun r!7292 () Regex!15679)

(declare-fun b!5682171 () Bool)

(declare-fun e!3497057 () Bool)

(declare-fun lt!2270662 () Regex!15679)

(declare-fun lt!2270656 () Regex!15679)

(assert (=> b!5682171 (= e!3497057 (or (not (= lt!2270662 r!7292)) (= r!7292 (Concat!24524 lt!2270656 (regTwo!31870 r!7292)))))))

(declare-fun b!5682172 () Bool)

(declare-fun res!2401067 () Bool)

(declare-fun e!3497056 () Bool)

(assert (=> b!5682172 (=> (not res!2401067) (not e!3497056))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63336 0))(
  ( (Nil!63212) (Cons!63212 (h!69660 Regex!15679) (t!376650 List!63336)) )
))
(declare-datatypes ((Context!10126 0))(
  ( (Context!10127 (exprs!5563 List!63336)) )
))
(declare-fun z!1189 () (InoxSet Context!10126))

(declare-datatypes ((List!63337 0))(
  ( (Nil!63213) (Cons!63213 (h!69661 Context!10126) (t!376651 List!63337)) )
))
(declare-fun zl!343 () List!63337)

(declare-fun toList!9463 ((InoxSet Context!10126)) List!63337)

(assert (=> b!5682172 (= res!2401067 (= (toList!9463 z!1189) zl!343))))

(declare-fun res!2401065 () Bool)

(assert (=> start!586560 (=> (not res!2401065) (not e!3497056))))

(declare-fun validRegex!7415 (Regex!15679) Bool)

(assert (=> start!586560 (= res!2401065 (validRegex!7415 r!7292))))

(assert (=> start!586560 e!3497056))

(declare-fun e!3497048 () Bool)

(assert (=> start!586560 e!3497048))

(declare-fun condSetEmpty!38029 () Bool)

(assert (=> start!586560 (= condSetEmpty!38029 (= z!1189 ((as const (Array Context!10126 Bool)) false)))))

(declare-fun setRes!38029 () Bool)

(assert (=> start!586560 setRes!38029))

(declare-fun e!3497051 () Bool)

(assert (=> start!586560 e!3497051))

(declare-fun e!3497058 () Bool)

(assert (=> start!586560 e!3497058))

(declare-fun b!5682173 () Bool)

(declare-fun tp!1575610 () Bool)

(declare-fun tp!1575605 () Bool)

(assert (=> b!5682173 (= e!3497048 (and tp!1575610 tp!1575605))))

(declare-fun b!5682174 () Bool)

(declare-datatypes ((Unit!156248 0))(
  ( (Unit!156249) )
))
(declare-fun e!3497055 () Unit!156248)

(declare-fun Unit!156250 () Unit!156248)

(assert (=> b!5682174 (= e!3497055 Unit!156250)))

(declare-fun lt!2270673 () (InoxSet Context!10126))

(declare-fun lt!2270672 () Unit!156248)

(declare-fun lt!2270664 () (InoxSet Context!10126))

(declare-datatypes ((List!63338 0))(
  ( (Nil!63214) (Cons!63214 (h!69662 C!31628) (t!376652 List!63338)) )
))
(declare-fun s!2326 () List!63338)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!704 ((InoxSet Context!10126) (InoxSet Context!10126) List!63338) Unit!156248)

(assert (=> b!5682174 (= lt!2270672 (lemmaZipperConcatMatchesSameAsBothZippers!704 lt!2270664 lt!2270673 (t!376652 s!2326)))))

(declare-fun res!2401068 () Bool)

(declare-fun matchZipper!1817 ((InoxSet Context!10126) List!63338) Bool)

(assert (=> b!5682174 (= res!2401068 (matchZipper!1817 lt!2270664 (t!376652 s!2326)))))

(declare-fun e!3497054 () Bool)

(assert (=> b!5682174 (=> res!2401068 e!3497054)))

(assert (=> b!5682174 (= (matchZipper!1817 ((_ map or) lt!2270664 lt!2270673) (t!376652 s!2326)) e!3497054)))

(declare-fun b!5682175 () Bool)

(declare-fun e!3497049 () Bool)

(assert (=> b!5682175 (= e!3497049 e!3497057)))

(declare-fun res!2401059 () Bool)

(assert (=> b!5682175 (=> res!2401059 e!3497057)))

(declare-fun lt!2270663 () (InoxSet Context!10126))

(declare-fun lt!2270671 () (InoxSet Context!10126))

(assert (=> b!5682175 (= res!2401059 (not (= lt!2270663 lt!2270671)))))

(declare-fun lt!2270660 () (InoxSet Context!10126))

(declare-fun lambda!306219 () Int)

(declare-fun lt!2270659 () Context!10126)

(declare-fun flatMap!1292 ((InoxSet Context!10126) Int) (InoxSet Context!10126))

(declare-fun derivationStepZipperUp!947 (Context!10126 C!31628) (InoxSet Context!10126))

(assert (=> b!5682175 (= (flatMap!1292 lt!2270660 lambda!306219) (derivationStepZipperUp!947 lt!2270659 (h!69662 s!2326)))))

(declare-fun lt!2270669 () Unit!156248)

(declare-fun lemmaFlatMapOnSingletonSet!824 ((InoxSet Context!10126) Context!10126 Int) Unit!156248)

(assert (=> b!5682175 (= lt!2270669 (lemmaFlatMapOnSingletonSet!824 lt!2270660 lt!2270659 lambda!306219))))

(declare-fun lt!2270667 () (InoxSet Context!10126))

(assert (=> b!5682175 (= lt!2270667 (derivationStepZipperUp!947 lt!2270659 (h!69662 s!2326)))))

(declare-fun derivationStepZipper!1762 ((InoxSet Context!10126) C!31628) (InoxSet Context!10126))

(assert (=> b!5682175 (= lt!2270663 (derivationStepZipper!1762 lt!2270660 (h!69662 s!2326)))))

(assert (=> b!5682175 (= lt!2270660 (store ((as const (Array Context!10126 Bool)) false) lt!2270659 true))))

(declare-fun lt!2270661 () List!63336)

(assert (=> b!5682175 (= lt!2270659 (Context!10127 (Cons!63212 (reg!16008 (regOne!31870 r!7292)) lt!2270661)))))

(declare-fun b!5682176 () Bool)

(declare-fun res!2401054 () Bool)

(declare-fun e!3497060 () Bool)

(assert (=> b!5682176 (=> res!2401054 e!3497060)))

(get-info :version)

(assert (=> b!5682176 (= res!2401054 (not ((_ is Cons!63212) (exprs!5563 (h!69661 zl!343)))))))

(declare-fun b!5682177 () Bool)

(declare-fun tp!1575602 () Bool)

(declare-fun tp!1575608 () Bool)

(assert (=> b!5682177 (= e!3497048 (and tp!1575602 tp!1575608))))

(declare-fun b!5682178 () Bool)

(declare-fun res!2401055 () Bool)

(assert (=> b!5682178 (=> res!2401055 e!3497060)))

(declare-fun generalisedConcat!1294 (List!63336) Regex!15679)

(assert (=> b!5682178 (= res!2401055 (not (= r!7292 (generalisedConcat!1294 (exprs!5563 (h!69661 zl!343))))))))

(declare-fun b!5682179 () Bool)

(declare-fun res!2401063 () Bool)

(assert (=> b!5682179 (=> res!2401063 e!3497060)))

(declare-fun isEmpty!35061 (List!63337) Bool)

(assert (=> b!5682179 (= res!2401063 (not (isEmpty!35061 (t!376651 zl!343))))))

(declare-fun e!3497052 () Bool)

(assert (=> b!5682180 (= e!3497060 e!3497052)))

(declare-fun res!2401071 () Bool)

(assert (=> b!5682180 (=> res!2401071 e!3497052)))

(declare-fun lt!2270670 () Bool)

(declare-fun lt!2270665 () Bool)

(assert (=> b!5682180 (= res!2401071 (or (not (= lt!2270670 lt!2270665)) ((_ is Nil!63214) s!2326)))))

(declare-fun Exists!2779 (Int) Bool)

(assert (=> b!5682180 (= (Exists!2779 lambda!306217) (Exists!2779 lambda!306218))))

(declare-fun lt!2270668 () Unit!156248)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1408 (Regex!15679 Regex!15679 List!63338) Unit!156248)

(assert (=> b!5682180 (= lt!2270668 (lemmaExistCutMatchRandMatchRSpecEquivalent!1408 (regOne!31870 r!7292) (regTwo!31870 r!7292) s!2326))))

(assert (=> b!5682180 (= lt!2270665 (Exists!2779 lambda!306217))))

(declare-datatypes ((tuple2!65552 0))(
  ( (tuple2!65553 (_1!36079 List!63338) (_2!36079 List!63338)) )
))
(declare-datatypes ((Option!15688 0))(
  ( (None!15687) (Some!15687 (v!51736 tuple2!65552)) )
))
(declare-fun isDefined!12391 (Option!15688) Bool)

(declare-fun findConcatSeparation!2102 (Regex!15679 Regex!15679 List!63338 List!63338 List!63338) Option!15688)

(assert (=> b!5682180 (= lt!2270665 (isDefined!12391 (findConcatSeparation!2102 (regOne!31870 r!7292) (regTwo!31870 r!7292) Nil!63214 s!2326 s!2326)))))

(declare-fun lt!2270654 () Unit!156248)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1866 (Regex!15679 Regex!15679 List!63338) Unit!156248)

(assert (=> b!5682180 (= lt!2270654 (lemmaFindConcatSeparationEquivalentToExists!1866 (regOne!31870 r!7292) (regTwo!31870 r!7292) s!2326))))

(declare-fun tp!1575609 () Bool)

(declare-fun setElem!38029 () Context!10126)

(declare-fun e!3497050 () Bool)

(declare-fun setNonEmpty!38029 () Bool)

(declare-fun inv!82444 (Context!10126) Bool)

(assert (=> setNonEmpty!38029 (= setRes!38029 (and tp!1575609 (inv!82444 setElem!38029) e!3497050))))

(declare-fun setRest!38029 () (InoxSet Context!10126))

(assert (=> setNonEmpty!38029 (= z!1189 ((_ map or) (store ((as const (Array Context!10126 Bool)) false) setElem!38029 true) setRest!38029))))

(declare-fun b!5682181 () Bool)

(declare-fun tp_is_empty!40611 () Bool)

(declare-fun tp!1575606 () Bool)

(assert (=> b!5682181 (= e!3497058 (and tp_is_empty!40611 tp!1575606))))

(declare-fun b!5682182 () Bool)

(assert (=> b!5682182 (= e!3497048 tp_is_empty!40611)))

(declare-fun b!5682183 () Bool)

(declare-fun res!2401070 () Bool)

(assert (=> b!5682183 (=> res!2401070 e!3497060)))

(assert (=> b!5682183 (= res!2401070 (or ((_ is EmptyExpr!15679) r!7292) ((_ is EmptyLang!15679) r!7292) ((_ is ElementMatch!15679) r!7292) ((_ is Union!15679) r!7292) (not ((_ is Concat!24524) r!7292))))))

(declare-fun setIsEmpty!38029 () Bool)

(assert (=> setIsEmpty!38029 setRes!38029))

(declare-fun b!5682184 () Bool)

(declare-fun res!2401061 () Bool)

(declare-fun e!3497053 () Bool)

(assert (=> b!5682184 (=> res!2401061 e!3497053)))

(declare-fun e!3497059 () Bool)

(assert (=> b!5682184 (= res!2401061 e!3497059)))

(declare-fun res!2401062 () Bool)

(assert (=> b!5682184 (=> (not res!2401062) (not e!3497059))))

(assert (=> b!5682184 (= res!2401062 ((_ is Concat!24524) (regOne!31870 r!7292)))))

(assert (=> b!5682185 (= e!3497052 e!3497053)))

(declare-fun res!2401056 () Bool)

(assert (=> b!5682185 (=> res!2401056 e!3497053)))

(assert (=> b!5682185 (= res!2401056 (or (and ((_ is ElementMatch!15679) (regOne!31870 r!7292)) (= (c!999873 (regOne!31870 r!7292)) (h!69662 s!2326))) ((_ is Union!15679) (regOne!31870 r!7292))))))

(declare-fun lt!2270658 () Unit!156248)

(assert (=> b!5682185 (= lt!2270658 e!3497055)))

(declare-fun c!999872 () Bool)

(declare-fun nullable!5711 (Regex!15679) Bool)

(assert (=> b!5682185 (= c!999872 (nullable!5711 (h!69660 (exprs!5563 (h!69661 zl!343)))))))

(assert (=> b!5682185 (= (flatMap!1292 z!1189 lambda!306219) (derivationStepZipperUp!947 (h!69661 zl!343) (h!69662 s!2326)))))

(declare-fun lt!2270674 () Unit!156248)

(assert (=> b!5682185 (= lt!2270674 (lemmaFlatMapOnSingletonSet!824 z!1189 (h!69661 zl!343) lambda!306219))))

(declare-fun lt!2270666 () Context!10126)

(assert (=> b!5682185 (= lt!2270673 (derivationStepZipperUp!947 lt!2270666 (h!69662 s!2326)))))

(declare-fun derivationStepZipperDown!1021 (Regex!15679 Context!10126 C!31628) (InoxSet Context!10126))

(assert (=> b!5682185 (= lt!2270664 (derivationStepZipperDown!1021 (h!69660 (exprs!5563 (h!69661 zl!343))) lt!2270666 (h!69662 s!2326)))))

(assert (=> b!5682185 (= lt!2270666 (Context!10127 (t!376650 (exprs!5563 (h!69661 zl!343)))))))

(declare-fun lt!2270655 () (InoxSet Context!10126))

(assert (=> b!5682185 (= lt!2270655 (derivationStepZipperUp!947 (Context!10127 (Cons!63212 (h!69660 (exprs!5563 (h!69661 zl!343))) (t!376650 (exprs!5563 (h!69661 zl!343))))) (h!69662 s!2326)))))

(declare-fun b!5682186 () Bool)

(declare-fun res!2401069 () Bool)

(assert (=> b!5682186 (=> res!2401069 e!3497060)))

(declare-fun generalisedUnion!1542 (List!63336) Regex!15679)

(declare-fun unfocusZipperList!1107 (List!63337) List!63336)

(assert (=> b!5682186 (= res!2401069 (not (= r!7292 (generalisedUnion!1542 (unfocusZipperList!1107 zl!343)))))))

(declare-fun b!5682187 () Bool)

(assert (=> b!5682187 (= e!3497053 e!3497049)))

(declare-fun res!2401066 () Bool)

(assert (=> b!5682187 (=> res!2401066 e!3497049)))

(assert (=> b!5682187 (= res!2401066 (not (= lt!2270664 lt!2270671)))))

(assert (=> b!5682187 (= lt!2270671 (derivationStepZipperDown!1021 (reg!16008 (regOne!31870 r!7292)) (Context!10127 lt!2270661) (h!69662 s!2326)))))

(assert (=> b!5682187 (= lt!2270661 (Cons!63212 lt!2270656 (t!376650 (exprs!5563 (h!69661 zl!343)))))))

(assert (=> b!5682187 (= lt!2270656 (Star!15679 (reg!16008 (regOne!31870 r!7292))))))

(declare-fun e!3497046 () Bool)

(declare-fun tp!1575607 () Bool)

(declare-fun b!5682188 () Bool)

(assert (=> b!5682188 (= e!3497051 (and (inv!82444 (h!69661 zl!343)) e!3497046 tp!1575607))))

(declare-fun b!5682189 () Bool)

(declare-fun res!2401057 () Bool)

(assert (=> b!5682189 (=> res!2401057 e!3497057)))

(assert (=> b!5682189 (= res!2401057 (not (= (matchZipper!1817 lt!2270660 s!2326) (matchZipper!1817 lt!2270663 (t!376652 s!2326)))))))

(declare-fun b!5682190 () Bool)

(declare-fun e!3497047 () Bool)

(assert (=> b!5682190 (= e!3497056 e!3497047)))

(declare-fun res!2401060 () Bool)

(assert (=> b!5682190 (=> (not res!2401060) (not e!3497047))))

(assert (=> b!5682190 (= res!2401060 (= r!7292 lt!2270662))))

(declare-fun unfocusZipper!1421 (List!63337) Regex!15679)

(assert (=> b!5682190 (= lt!2270662 (unfocusZipper!1421 zl!343))))

(declare-fun b!5682191 () Bool)

(declare-fun tp!1575603 () Bool)

(assert (=> b!5682191 (= e!3497050 tp!1575603)))

(declare-fun b!5682192 () Bool)

(assert (=> b!5682192 (= e!3497059 (nullable!5711 (regOne!31870 (regOne!31870 r!7292))))))

(declare-fun b!5682193 () Bool)

(declare-fun res!2401053 () Bool)

(assert (=> b!5682193 (=> res!2401053 e!3497053)))

(assert (=> b!5682193 (= res!2401053 (or ((_ is Concat!24524) (regOne!31870 r!7292)) (not ((_ is Star!15679) (regOne!31870 r!7292)))))))

(declare-fun b!5682194 () Bool)

(declare-fun res!2401064 () Bool)

(assert (=> b!5682194 (=> res!2401064 e!3497052)))

(declare-fun isEmpty!35062 (List!63336) Bool)

(assert (=> b!5682194 (= res!2401064 (isEmpty!35062 (t!376650 (exprs!5563 (h!69661 zl!343)))))))

(declare-fun b!5682195 () Bool)

(declare-fun tp!1575604 () Bool)

(assert (=> b!5682195 (= e!3497048 tp!1575604)))

(declare-fun b!5682196 () Bool)

(assert (=> b!5682196 (= e!3497047 (not e!3497060))))

(declare-fun res!2401058 () Bool)

(assert (=> b!5682196 (=> res!2401058 e!3497060)))

(assert (=> b!5682196 (= res!2401058 (not ((_ is Cons!63213) zl!343)))))

(declare-fun matchRSpec!2782 (Regex!15679 List!63338) Bool)

(assert (=> b!5682196 (= lt!2270670 (matchRSpec!2782 r!7292 s!2326))))

(declare-fun matchR!7864 (Regex!15679 List!63338) Bool)

(assert (=> b!5682196 (= lt!2270670 (matchR!7864 r!7292 s!2326))))

(declare-fun lt!2270657 () Unit!156248)

(declare-fun mainMatchTheorem!2782 (Regex!15679 List!63338) Unit!156248)

(assert (=> b!5682196 (= lt!2270657 (mainMatchTheorem!2782 r!7292 s!2326))))

(declare-fun b!5682197 () Bool)

(declare-fun Unit!156251 () Unit!156248)

(assert (=> b!5682197 (= e!3497055 Unit!156251)))

(declare-fun b!5682198 () Bool)

(declare-fun tp!1575601 () Bool)

(assert (=> b!5682198 (= e!3497046 tp!1575601)))

(declare-fun b!5682199 () Bool)

(assert (=> b!5682199 (= e!3497054 (matchZipper!1817 lt!2270673 (t!376652 s!2326)))))

(assert (= (and start!586560 res!2401065) b!5682172))

(assert (= (and b!5682172 res!2401067) b!5682190))

(assert (= (and b!5682190 res!2401060) b!5682196))

(assert (= (and b!5682196 (not res!2401058)) b!5682179))

(assert (= (and b!5682179 (not res!2401063)) b!5682178))

(assert (= (and b!5682178 (not res!2401055)) b!5682176))

(assert (= (and b!5682176 (not res!2401054)) b!5682186))

(assert (= (and b!5682186 (not res!2401069)) b!5682183))

(assert (= (and b!5682183 (not res!2401070)) b!5682180))

(assert (= (and b!5682180 (not res!2401071)) b!5682194))

(assert (= (and b!5682194 (not res!2401064)) b!5682185))

(assert (= (and b!5682185 c!999872) b!5682174))

(assert (= (and b!5682185 (not c!999872)) b!5682197))

(assert (= (and b!5682174 (not res!2401068)) b!5682199))

(assert (= (and b!5682185 (not res!2401056)) b!5682184))

(assert (= (and b!5682184 res!2401062) b!5682192))

(assert (= (and b!5682184 (not res!2401061)) b!5682193))

(assert (= (and b!5682193 (not res!2401053)) b!5682187))

(assert (= (and b!5682187 (not res!2401066)) b!5682175))

(assert (= (and b!5682175 (not res!2401059)) b!5682189))

(assert (= (and b!5682189 (not res!2401057)) b!5682171))

(assert (= (and start!586560 ((_ is ElementMatch!15679) r!7292)) b!5682182))

(assert (= (and start!586560 ((_ is Concat!24524) r!7292)) b!5682173))

(assert (= (and start!586560 ((_ is Star!15679) r!7292)) b!5682195))

(assert (= (and start!586560 ((_ is Union!15679) r!7292)) b!5682177))

(assert (= (and start!586560 condSetEmpty!38029) setIsEmpty!38029))

(assert (= (and start!586560 (not condSetEmpty!38029)) setNonEmpty!38029))

(assert (= setNonEmpty!38029 b!5682191))

(assert (= b!5682188 b!5682198))

(assert (= (and start!586560 ((_ is Cons!63213) zl!343)) b!5682188))

(assert (= (and start!586560 ((_ is Cons!63214) s!2326)) b!5682181))

(declare-fun m!6641272 () Bool)

(assert (=> b!5682196 m!6641272))

(declare-fun m!6641274 () Bool)

(assert (=> b!5682196 m!6641274))

(declare-fun m!6641276 () Bool)

(assert (=> b!5682196 m!6641276))

(declare-fun m!6641278 () Bool)

(assert (=> b!5682194 m!6641278))

(declare-fun m!6641280 () Bool)

(assert (=> b!5682188 m!6641280))

(declare-fun m!6641282 () Bool)

(assert (=> start!586560 m!6641282))

(declare-fun m!6641284 () Bool)

(assert (=> b!5682172 m!6641284))

(declare-fun m!6641286 () Bool)

(assert (=> b!5682186 m!6641286))

(assert (=> b!5682186 m!6641286))

(declare-fun m!6641288 () Bool)

(assert (=> b!5682186 m!6641288))

(declare-fun m!6641290 () Bool)

(assert (=> b!5682185 m!6641290))

(declare-fun m!6641292 () Bool)

(assert (=> b!5682185 m!6641292))

(declare-fun m!6641294 () Bool)

(assert (=> b!5682185 m!6641294))

(declare-fun m!6641296 () Bool)

(assert (=> b!5682185 m!6641296))

(declare-fun m!6641298 () Bool)

(assert (=> b!5682185 m!6641298))

(declare-fun m!6641300 () Bool)

(assert (=> b!5682185 m!6641300))

(declare-fun m!6641302 () Bool)

(assert (=> b!5682185 m!6641302))

(declare-fun m!6641304 () Bool)

(assert (=> b!5682175 m!6641304))

(declare-fun m!6641306 () Bool)

(assert (=> b!5682175 m!6641306))

(declare-fun m!6641308 () Bool)

(assert (=> b!5682175 m!6641308))

(declare-fun m!6641310 () Bool)

(assert (=> b!5682175 m!6641310))

(declare-fun m!6641312 () Bool)

(assert (=> b!5682175 m!6641312))

(declare-fun m!6641314 () Bool)

(assert (=> b!5682192 m!6641314))

(declare-fun m!6641316 () Bool)

(assert (=> b!5682179 m!6641316))

(declare-fun m!6641318 () Bool)

(assert (=> b!5682178 m!6641318))

(declare-fun m!6641320 () Bool)

(assert (=> b!5682180 m!6641320))

(declare-fun m!6641322 () Bool)

(assert (=> b!5682180 m!6641322))

(declare-fun m!6641324 () Bool)

(assert (=> b!5682180 m!6641324))

(declare-fun m!6641326 () Bool)

(assert (=> b!5682180 m!6641326))

(declare-fun m!6641328 () Bool)

(assert (=> b!5682180 m!6641328))

(assert (=> b!5682180 m!6641320))

(assert (=> b!5682180 m!6641322))

(declare-fun m!6641330 () Bool)

(assert (=> b!5682180 m!6641330))

(declare-fun m!6641332 () Bool)

(assert (=> b!5682190 m!6641332))

(declare-fun m!6641334 () Bool)

(assert (=> b!5682174 m!6641334))

(declare-fun m!6641336 () Bool)

(assert (=> b!5682174 m!6641336))

(declare-fun m!6641338 () Bool)

(assert (=> b!5682174 m!6641338))

(declare-fun m!6641340 () Bool)

(assert (=> setNonEmpty!38029 m!6641340))

(declare-fun m!6641342 () Bool)

(assert (=> b!5682187 m!6641342))

(declare-fun m!6641344 () Bool)

(assert (=> b!5682199 m!6641344))

(declare-fun m!6641346 () Bool)

(assert (=> b!5682189 m!6641346))

(declare-fun m!6641348 () Bool)

(assert (=> b!5682189 m!6641348))

(check-sat (not start!586560) (not b!5682172) (not b!5682181) (not b!5682187) (not b!5682177) (not b!5682194) (not b!5682196) (not b!5682178) (not b!5682198) (not b!5682173) (not b!5682188) (not b!5682199) tp_is_empty!40611 (not b!5682195) (not b!5682191) (not b!5682190) (not b!5682179) (not b!5682186) (not b!5682174) (not b!5682175) (not b!5682185) (not setNonEmpty!38029) (not b!5682180) (not b!5682192) (not b!5682189))
(check-sat)

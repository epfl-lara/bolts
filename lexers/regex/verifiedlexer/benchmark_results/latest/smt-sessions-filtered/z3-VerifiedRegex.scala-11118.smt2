; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574918 () Bool)

(assert start!574918)

(declare-fun b!5505120 () Bool)

(assert (=> b!5505120 true))

(declare-fun b!5505115 () Bool)

(declare-fun e!3405034 () Bool)

(declare-fun e!3405031 () Bool)

(assert (=> b!5505115 (= e!3405034 e!3405031)))

(declare-fun res!2346109 () Bool)

(assert (=> b!5505115 (=> res!2346109 e!3405031)))

(declare-fun lt!2244179 () Bool)

(declare-fun lt!2244174 () Bool)

(assert (=> b!5505115 (= res!2346109 (not (= lt!2244179 lt!2244174)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31236 0))(
  ( (C!31237 (val!25320 Int)) )
))
(declare-datatypes ((Regex!15483 0))(
  ( (ElementMatch!15483 (c!961863 C!31236)) (Concat!24328 (regOne!31478 Regex!15483) (regTwo!31478 Regex!15483)) (EmptyExpr!15483) (Star!15483 (reg!15812 Regex!15483)) (EmptyLang!15483) (Union!15483 (regOne!31479 Regex!15483) (regTwo!31479 Regex!15483)) )
))
(declare-datatypes ((List!62748 0))(
  ( (Nil!62624) (Cons!62624 (h!69072 Regex!15483) (t!375989 List!62748)) )
))
(declare-datatypes ((Context!9734 0))(
  ( (Context!9735 (exprs!5367 List!62748)) )
))
(declare-fun lt!2244171 () (InoxSet Context!9734))

(declare-datatypes ((List!62749 0))(
  ( (Nil!62625) (Cons!62625 (h!69073 C!31236) (t!375990 List!62749)) )
))
(declare-fun s!2326 () List!62749)

(declare-fun matchZipper!1651 ((InoxSet Context!9734) List!62749) Bool)

(assert (=> b!5505115 (= lt!2244179 (matchZipper!1651 lt!2244171 s!2326))))

(declare-fun lt!2244160 () Context!9734)

(declare-fun lambda!294751 () Int)

(declare-fun lt!2244169 () (InoxSet Context!9734))

(declare-fun flatMap!1102 ((InoxSet Context!9734) Int) (InoxSet Context!9734))

(declare-fun derivationStepZipperUp!755 (Context!9734 C!31236) (InoxSet Context!9734))

(assert (=> b!5505115 (= (flatMap!1102 lt!2244169 lambda!294751) (derivationStepZipperUp!755 lt!2244160 (h!69073 s!2326)))))

(declare-datatypes ((Unit!155426 0))(
  ( (Unit!155427) )
))
(declare-fun lt!2244170 () Unit!155426)

(declare-fun lemmaFlatMapOnSingletonSet!634 ((InoxSet Context!9734) Context!9734 Int) Unit!155426)

(assert (=> b!5505115 (= lt!2244170 (lemmaFlatMapOnSingletonSet!634 lt!2244169 lt!2244160 lambda!294751))))

(declare-fun lt!2244165 () Context!9734)

(assert (=> b!5505115 (= (flatMap!1102 lt!2244171 lambda!294751) (derivationStepZipperUp!755 lt!2244165 (h!69073 s!2326)))))

(declare-fun lt!2244168 () Unit!155426)

(assert (=> b!5505115 (= lt!2244168 (lemmaFlatMapOnSingletonSet!634 lt!2244171 lt!2244165 lambda!294751))))

(declare-fun lt!2244173 () (InoxSet Context!9734))

(assert (=> b!5505115 (= lt!2244173 (derivationStepZipperUp!755 lt!2244160 (h!69073 s!2326)))))

(declare-fun lt!2244167 () (InoxSet Context!9734))

(assert (=> b!5505115 (= lt!2244167 (derivationStepZipperUp!755 lt!2244165 (h!69073 s!2326)))))

(assert (=> b!5505115 (= lt!2244169 (store ((as const (Array Context!9734 Bool)) false) lt!2244160 true))))

(declare-fun r!7292 () Regex!15483)

(assert (=> b!5505115 (= lt!2244160 (Context!9735 (Cons!62624 (regTwo!31479 r!7292) Nil!62624)))))

(assert (=> b!5505115 (= lt!2244171 (store ((as const (Array Context!9734 Bool)) false) lt!2244165 true))))

(assert (=> b!5505115 (= lt!2244165 (Context!9735 (Cons!62624 (regOne!31479 r!7292) Nil!62624)))))

(declare-fun b!5505116 () Bool)

(declare-fun e!3405030 () Bool)

(declare-fun tp!1514741 () Bool)

(declare-fun tp!1514744 () Bool)

(assert (=> b!5505116 (= e!3405030 (and tp!1514741 tp!1514744))))

(declare-fun res!2346110 () Bool)

(declare-fun e!3405029 () Bool)

(assert (=> start!574918 (=> (not res!2346110) (not e!3405029))))

(declare-fun validRegex!7219 (Regex!15483) Bool)

(assert (=> start!574918 (= res!2346110 (validRegex!7219 r!7292))))

(assert (=> start!574918 e!3405029))

(assert (=> start!574918 e!3405030))

(declare-fun condSetEmpty!36517 () Bool)

(declare-fun z!1189 () (InoxSet Context!9734))

(assert (=> start!574918 (= condSetEmpty!36517 (= z!1189 ((as const (Array Context!9734 Bool)) false)))))

(declare-fun setRes!36517 () Bool)

(assert (=> start!574918 setRes!36517))

(declare-fun e!3405022 () Bool)

(assert (=> start!574918 e!3405022))

(declare-fun e!3405035 () Bool)

(assert (=> start!574918 e!3405035))

(declare-fun lt!2244166 () Bool)

(declare-fun e!3405027 () Bool)

(declare-fun lt!2244176 () Bool)

(declare-fun b!5505117 () Bool)

(assert (=> b!5505117 (= e!3405027 (= (or lt!2244179 lt!2244176) lt!2244166))))

(declare-fun tp!1514743 () Bool)

(declare-fun setElem!36517 () Context!9734)

(declare-fun setNonEmpty!36517 () Bool)

(declare-fun e!3405033 () Bool)

(declare-fun inv!81954 (Context!9734) Bool)

(assert (=> setNonEmpty!36517 (= setRes!36517 (and tp!1514743 (inv!81954 setElem!36517) e!3405033))))

(declare-fun setRest!36517 () (InoxSet Context!9734))

(assert (=> setNonEmpty!36517 (= z!1189 ((_ map or) (store ((as const (Array Context!9734 Bool)) false) setElem!36517 true) setRest!36517))))

(declare-fun b!5505118 () Bool)

(declare-fun res!2346105 () Bool)

(declare-fun e!3405026 () Bool)

(assert (=> b!5505118 (=> res!2346105 e!3405026)))

(get-info :version)

(assert (=> b!5505118 (= res!2346105 (or ((_ is EmptyExpr!15483) r!7292) ((_ is EmptyLang!15483) r!7292) ((_ is ElementMatch!15483) r!7292) (not ((_ is Union!15483) r!7292))))))

(declare-fun b!5505119 () Bool)

(declare-fun e!3405036 () Bool)

(declare-fun lt!2244162 () (InoxSet Context!9734))

(assert (=> b!5505119 (= e!3405036 (matchZipper!1651 lt!2244162 (t!375990 s!2326)))))

(declare-fun e!3405028 () Bool)

(declare-fun e!3405023 () Bool)

(assert (=> b!5505120 (= e!3405028 e!3405023)))

(declare-fun res!2346115 () Bool)

(assert (=> b!5505120 (=> res!2346115 e!3405023)))

(declare-fun lt!2244178 () (InoxSet Context!9734))

(declare-fun derivationStepZipper!1594 ((InoxSet Context!9734) C!31236) (InoxSet Context!9734))

(assert (=> b!5505120 (= res!2346115 (not (= (derivationStepZipper!1594 z!1189 (h!69073 s!2326)) lt!2244178)))))

(declare-datatypes ((List!62750 0))(
  ( (Nil!62626) (Cons!62626 (h!69074 Context!9734) (t!375991 List!62750)) )
))
(declare-fun zl!343 () List!62750)

(assert (=> b!5505120 (= (flatMap!1102 z!1189 lambda!294751) (derivationStepZipperUp!755 (h!69074 zl!343) (h!69073 s!2326)))))

(declare-fun lt!2244183 () Unit!155426)

(assert (=> b!5505120 (= lt!2244183 (lemmaFlatMapOnSingletonSet!634 z!1189 (h!69074 zl!343) lambda!294751))))

(declare-fun b!5505121 () Bool)

(assert (=> b!5505121 (= e!3405029 (not e!3405026))))

(declare-fun res!2346103 () Bool)

(assert (=> b!5505121 (=> res!2346103 e!3405026)))

(assert (=> b!5505121 (= res!2346103 (not ((_ is Cons!62626) zl!343)))))

(declare-fun lt!2244156 () Bool)

(declare-fun matchRSpec!2586 (Regex!15483 List!62749) Bool)

(assert (=> b!5505121 (= lt!2244156 (matchRSpec!2586 r!7292 s!2326))))

(declare-fun matchR!7668 (Regex!15483 List!62749) Bool)

(assert (=> b!5505121 (= lt!2244156 (matchR!7668 r!7292 s!2326))))

(declare-fun lt!2244181 () Unit!155426)

(declare-fun mainMatchTheorem!2586 (Regex!15483 List!62749) Unit!155426)

(assert (=> b!5505121 (= lt!2244181 (mainMatchTheorem!2586 r!7292 s!2326))))

(declare-fun b!5505122 () Bool)

(declare-fun e!3405025 () Bool)

(assert (=> b!5505122 (= e!3405025 e!3405028)))

(declare-fun res!2346113 () Bool)

(assert (=> b!5505122 (=> res!2346113 e!3405028)))

(declare-fun lt!2244177 () (InoxSet Context!9734))

(assert (=> b!5505122 (= res!2346113 (not (= lt!2244177 lt!2244178)))))

(declare-fun lt!2244161 () (InoxSet Context!9734))

(assert (=> b!5505122 (= lt!2244178 ((_ map or) lt!2244161 lt!2244162))))

(declare-fun lt!2244159 () Context!9734)

(declare-fun derivationStepZipperDown!829 (Regex!15483 Context!9734 C!31236) (InoxSet Context!9734))

(assert (=> b!5505122 (= lt!2244162 (derivationStepZipperDown!829 (regTwo!31479 r!7292) lt!2244159 (h!69073 s!2326)))))

(assert (=> b!5505122 (= lt!2244161 (derivationStepZipperDown!829 (regOne!31479 r!7292) lt!2244159 (h!69073 s!2326)))))

(declare-fun b!5505123 () Bool)

(declare-fun tp_is_empty!40219 () Bool)

(assert (=> b!5505123 (= e!3405030 tp_is_empty!40219)))

(declare-fun b!5505124 () Bool)

(declare-fun e!3405024 () Bool)

(declare-fun tp!1514745 () Bool)

(assert (=> b!5505124 (= e!3405024 tp!1514745)))

(declare-fun b!5505125 () Bool)

(declare-fun tp!1514742 () Bool)

(assert (=> b!5505125 (= e!3405033 tp!1514742)))

(declare-fun b!5505126 () Bool)

(declare-fun e!3405032 () Bool)

(assert (=> b!5505126 (= e!3405032 e!3405034)))

(declare-fun res!2346104 () Bool)

(assert (=> b!5505126 (=> res!2346104 e!3405034)))

(declare-fun lt!2244175 () Bool)

(declare-fun lt!2244172 () Bool)

(assert (=> b!5505126 (= res!2346104 (or (not (= lt!2244172 lt!2244175)) (not (= lt!2244172 lt!2244166))))))

(assert (=> b!5505126 (= lt!2244175 lt!2244172)))

(assert (=> b!5505126 (= lt!2244172 e!3405036)))

(declare-fun res!2346119 () Bool)

(assert (=> b!5505126 (=> res!2346119 e!3405036)))

(assert (=> b!5505126 (= res!2346119 lt!2244174)))

(assert (=> b!5505126 (= lt!2244174 (matchZipper!1651 lt!2244161 (t!375990 s!2326)))))

(declare-fun lt!2244163 () Unit!155426)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!540 ((InoxSet Context!9734) (InoxSet Context!9734) List!62749) Unit!155426)

(assert (=> b!5505126 (= lt!2244163 (lemmaZipperConcatMatchesSameAsBothZippers!540 lt!2244161 lt!2244162 (t!375990 s!2326)))))

(declare-fun b!5505127 () Bool)

(declare-fun tp!1514746 () Bool)

(assert (=> b!5505127 (= e!3405022 (and (inv!81954 (h!69074 zl!343)) e!3405024 tp!1514746))))

(declare-fun b!5505128 () Bool)

(declare-fun res!2346118 () Bool)

(assert (=> b!5505128 (=> (not res!2346118) (not e!3405029))))

(declare-fun unfocusZipper!1225 (List!62750) Regex!15483)

(assert (=> b!5505128 (= res!2346118 (= r!7292 (unfocusZipper!1225 zl!343)))))

(declare-fun b!5505129 () Bool)

(assert (=> b!5505129 (= e!3405031 e!3405027)))

(declare-fun res!2346116 () Bool)

(assert (=> b!5505129 (=> res!2346116 e!3405027)))

(assert (=> b!5505129 (= res!2346116 (not (= lt!2244176 (matchZipper!1651 lt!2244162 (t!375990 s!2326)))))))

(assert (=> b!5505129 (= lt!2244176 (matchZipper!1651 lt!2244169 s!2326))))

(declare-fun b!5505130 () Bool)

(declare-fun tp!1514740 () Bool)

(assert (=> b!5505130 (= e!3405035 (and tp_is_empty!40219 tp!1514740))))

(declare-fun b!5505131 () Bool)

(declare-fun res!2346112 () Bool)

(assert (=> b!5505131 (=> res!2346112 e!3405026)))

(assert (=> b!5505131 (= res!2346112 (not ((_ is Cons!62624) (exprs!5367 (h!69074 zl!343)))))))

(declare-fun setIsEmpty!36517 () Bool)

(assert (=> setIsEmpty!36517 setRes!36517))

(declare-fun b!5505132 () Bool)

(declare-fun tp!1514747 () Bool)

(declare-fun tp!1514738 () Bool)

(assert (=> b!5505132 (= e!3405030 (and tp!1514747 tp!1514738))))

(declare-fun b!5505133 () Bool)

(declare-fun tp!1514739 () Bool)

(assert (=> b!5505133 (= e!3405030 tp!1514739)))

(declare-fun b!5505134 () Bool)

(assert (=> b!5505134 (= e!3405023 e!3405032)))

(declare-fun res!2346117 () Bool)

(assert (=> b!5505134 (=> res!2346117 e!3405032)))

(assert (=> b!5505134 (= res!2346117 (not (= lt!2244175 lt!2244166)))))

(assert (=> b!5505134 (= lt!2244166 (matchZipper!1651 z!1189 s!2326))))

(assert (=> b!5505134 (= lt!2244175 (matchZipper!1651 lt!2244178 (t!375990 s!2326)))))

(declare-fun b!5505135 () Bool)

(declare-fun res!2346106 () Bool)

(assert (=> b!5505135 (=> res!2346106 e!3405026)))

(declare-fun isEmpty!34407 (List!62750) Bool)

(assert (=> b!5505135 (= res!2346106 (not (isEmpty!34407 (t!375991 zl!343))))))

(declare-fun b!5505136 () Bool)

(declare-fun res!2346108 () Bool)

(assert (=> b!5505136 (=> res!2346108 e!3405026)))

(declare-fun generalisedConcat!1098 (List!62748) Regex!15483)

(assert (=> b!5505136 (= res!2346108 (not (= r!7292 (generalisedConcat!1098 (exprs!5367 (h!69074 zl!343))))))))

(declare-fun b!5505137 () Bool)

(declare-fun e!3405021 () Bool)

(assert (=> b!5505137 (= e!3405026 e!3405021)))

(declare-fun res!2346114 () Bool)

(assert (=> b!5505137 (=> res!2346114 e!3405021)))

(declare-fun lt!2244182 () Bool)

(declare-fun lt!2244180 () Bool)

(assert (=> b!5505137 (= res!2346114 (or (not (= lt!2244156 (or lt!2244180 lt!2244182))) ((_ is Nil!62625) s!2326)))))

(assert (=> b!5505137 (= lt!2244182 (matchRSpec!2586 (regTwo!31479 r!7292) s!2326))))

(assert (=> b!5505137 (= lt!2244182 (matchR!7668 (regTwo!31479 r!7292) s!2326))))

(declare-fun lt!2244164 () Unit!155426)

(assert (=> b!5505137 (= lt!2244164 (mainMatchTheorem!2586 (regTwo!31479 r!7292) s!2326))))

(assert (=> b!5505137 (= lt!2244180 (matchRSpec!2586 (regOne!31479 r!7292) s!2326))))

(assert (=> b!5505137 (= lt!2244180 (matchR!7668 (regOne!31479 r!7292) s!2326))))

(declare-fun lt!2244158 () Unit!155426)

(assert (=> b!5505137 (= lt!2244158 (mainMatchTheorem!2586 (regOne!31479 r!7292) s!2326))))

(declare-fun b!5505138 () Bool)

(declare-fun res!2346111 () Bool)

(assert (=> b!5505138 (=> (not res!2346111) (not e!3405029))))

(declare-fun toList!9267 ((InoxSet Context!9734)) List!62750)

(assert (=> b!5505138 (= res!2346111 (= (toList!9267 z!1189) zl!343))))

(declare-fun b!5505139 () Bool)

(declare-fun res!2346120 () Bool)

(assert (=> b!5505139 (=> res!2346120 e!3405026)))

(declare-fun generalisedUnion!1346 (List!62748) Regex!15483)

(declare-fun unfocusZipperList!911 (List!62750) List!62748)

(assert (=> b!5505139 (= res!2346120 (not (= r!7292 (generalisedUnion!1346 (unfocusZipperList!911 zl!343)))))))

(declare-fun b!5505140 () Bool)

(assert (=> b!5505140 (= e!3405021 e!3405025)))

(declare-fun res!2346107 () Bool)

(assert (=> b!5505140 (=> res!2346107 e!3405025)))

(declare-fun lt!2244157 () (InoxSet Context!9734))

(assert (=> b!5505140 (= res!2346107 (not (= lt!2244157 lt!2244177)))))

(assert (=> b!5505140 (= lt!2244177 (derivationStepZipperDown!829 r!7292 lt!2244159 (h!69073 s!2326)))))

(assert (=> b!5505140 (= lt!2244159 (Context!9735 Nil!62624))))

(assert (=> b!5505140 (= lt!2244157 (derivationStepZipperUp!755 (Context!9735 (Cons!62624 r!7292 Nil!62624)) (h!69073 s!2326)))))

(assert (= (and start!574918 res!2346110) b!5505138))

(assert (= (and b!5505138 res!2346111) b!5505128))

(assert (= (and b!5505128 res!2346118) b!5505121))

(assert (= (and b!5505121 (not res!2346103)) b!5505135))

(assert (= (and b!5505135 (not res!2346106)) b!5505136))

(assert (= (and b!5505136 (not res!2346108)) b!5505131))

(assert (= (and b!5505131 (not res!2346112)) b!5505139))

(assert (= (and b!5505139 (not res!2346120)) b!5505118))

(assert (= (and b!5505118 (not res!2346105)) b!5505137))

(assert (= (and b!5505137 (not res!2346114)) b!5505140))

(assert (= (and b!5505140 (not res!2346107)) b!5505122))

(assert (= (and b!5505122 (not res!2346113)) b!5505120))

(assert (= (and b!5505120 (not res!2346115)) b!5505134))

(assert (= (and b!5505134 (not res!2346117)) b!5505126))

(assert (= (and b!5505126 (not res!2346119)) b!5505119))

(assert (= (and b!5505126 (not res!2346104)) b!5505115))

(assert (= (and b!5505115 (not res!2346109)) b!5505129))

(assert (= (and b!5505129 (not res!2346116)) b!5505117))

(assert (= (and start!574918 ((_ is ElementMatch!15483) r!7292)) b!5505123))

(assert (= (and start!574918 ((_ is Concat!24328) r!7292)) b!5505132))

(assert (= (and start!574918 ((_ is Star!15483) r!7292)) b!5505133))

(assert (= (and start!574918 ((_ is Union!15483) r!7292)) b!5505116))

(assert (= (and start!574918 condSetEmpty!36517) setIsEmpty!36517))

(assert (= (and start!574918 (not condSetEmpty!36517)) setNonEmpty!36517))

(assert (= setNonEmpty!36517 b!5505125))

(assert (= b!5505127 b!5505124))

(assert (= (and start!574918 ((_ is Cons!62626) zl!343)) b!5505127))

(assert (= (and start!574918 ((_ is Cons!62625) s!2326)) b!5505130))

(declare-fun m!6512238 () Bool)

(assert (=> b!5505135 m!6512238))

(declare-fun m!6512240 () Bool)

(assert (=> b!5505137 m!6512240))

(declare-fun m!6512242 () Bool)

(assert (=> b!5505137 m!6512242))

(declare-fun m!6512244 () Bool)

(assert (=> b!5505137 m!6512244))

(declare-fun m!6512246 () Bool)

(assert (=> b!5505137 m!6512246))

(declare-fun m!6512248 () Bool)

(assert (=> b!5505137 m!6512248))

(declare-fun m!6512250 () Bool)

(assert (=> b!5505137 m!6512250))

(declare-fun m!6512252 () Bool)

(assert (=> b!5505129 m!6512252))

(declare-fun m!6512254 () Bool)

(assert (=> b!5505129 m!6512254))

(declare-fun m!6512256 () Bool)

(assert (=> setNonEmpty!36517 m!6512256))

(declare-fun m!6512258 () Bool)

(assert (=> start!574918 m!6512258))

(declare-fun m!6512260 () Bool)

(assert (=> b!5505140 m!6512260))

(declare-fun m!6512262 () Bool)

(assert (=> b!5505140 m!6512262))

(declare-fun m!6512264 () Bool)

(assert (=> b!5505120 m!6512264))

(declare-fun m!6512266 () Bool)

(assert (=> b!5505120 m!6512266))

(declare-fun m!6512268 () Bool)

(assert (=> b!5505120 m!6512268))

(declare-fun m!6512270 () Bool)

(assert (=> b!5505120 m!6512270))

(declare-fun m!6512272 () Bool)

(assert (=> b!5505138 m!6512272))

(declare-fun m!6512274 () Bool)

(assert (=> b!5505122 m!6512274))

(declare-fun m!6512276 () Bool)

(assert (=> b!5505122 m!6512276))

(declare-fun m!6512278 () Bool)

(assert (=> b!5505126 m!6512278))

(declare-fun m!6512280 () Bool)

(assert (=> b!5505126 m!6512280))

(declare-fun m!6512282 () Bool)

(assert (=> b!5505139 m!6512282))

(assert (=> b!5505139 m!6512282))

(declare-fun m!6512284 () Bool)

(assert (=> b!5505139 m!6512284))

(declare-fun m!6512286 () Bool)

(assert (=> b!5505136 m!6512286))

(declare-fun m!6512288 () Bool)

(assert (=> b!5505115 m!6512288))

(declare-fun m!6512290 () Bool)

(assert (=> b!5505115 m!6512290))

(declare-fun m!6512292 () Bool)

(assert (=> b!5505115 m!6512292))

(declare-fun m!6512294 () Bool)

(assert (=> b!5505115 m!6512294))

(declare-fun m!6512296 () Bool)

(assert (=> b!5505115 m!6512296))

(declare-fun m!6512298 () Bool)

(assert (=> b!5505115 m!6512298))

(declare-fun m!6512300 () Bool)

(assert (=> b!5505115 m!6512300))

(declare-fun m!6512302 () Bool)

(assert (=> b!5505115 m!6512302))

(declare-fun m!6512304 () Bool)

(assert (=> b!5505115 m!6512304))

(declare-fun m!6512306 () Bool)

(assert (=> b!5505134 m!6512306))

(declare-fun m!6512308 () Bool)

(assert (=> b!5505134 m!6512308))

(declare-fun m!6512310 () Bool)

(assert (=> b!5505128 m!6512310))

(assert (=> b!5505119 m!6512252))

(declare-fun m!6512312 () Bool)

(assert (=> b!5505121 m!6512312))

(declare-fun m!6512314 () Bool)

(assert (=> b!5505121 m!6512314))

(declare-fun m!6512316 () Bool)

(assert (=> b!5505121 m!6512316))

(declare-fun m!6512318 () Bool)

(assert (=> b!5505127 m!6512318))

(check-sat (not b!5505132) (not start!574918) (not b!5505115) (not b!5505122) (not b!5505128) (not b!5505135) (not b!5505139) (not b!5505127) (not b!5505120) (not b!5505129) tp_is_empty!40219 (not b!5505126) (not setNonEmpty!36517) (not b!5505121) (not b!5505125) (not b!5505134) (not b!5505119) (not b!5505138) (not b!5505133) (not b!5505116) (not b!5505140) (not b!5505137) (not b!5505130) (not b!5505136) (not b!5505124))
(check-sat)
